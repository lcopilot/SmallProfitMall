import {Editor} from "react-draft-wysiwyg";
import React, {
  forwardRef,
  useEffect,
  useImperativeHandle,
  useState
} from "react";
import {EditorState, convertToRaw, ContentState} from 'draft-js';
import draftToHtml from 'draftjs-to-html';
import htmlToDraft from 'html-to-draftjs';
import * as Utils from "../../utils/utils";
import {message} from "antd";

// props子组件中需要接受ref
let ProductEditor = (props, ref) => {
  let {detailHtml} = props
  const [editorState, setEditorState] = useState(() => {
    if (detailHtml) { // 如果有值, 根据html格式字符串创建一个对应的编辑对象
      const contentBlock = htmlToDraft(detailHtml)
      const contentState = ContentState.createFromBlockArray(
          contentBlock.contentBlocks);
      const editorState = EditorState.createWithContent(contentState)
      return editorState;
    } else {
      return EditorState.createEmpty()
    }
  });

  // 此处注意useImperativeHandle方法的的第一个参数是目标元素的ref引用
  useImperativeHandle(ref, () => ({
    // getDetailHtml 就是暴露给父组件的方法
    getDetailHtml: () => {
      return draftToHtml(convertToRaw(editorState.getCurrentContent()))
    }
  }));

  const uploadImageCallBack = (file) => {
    const FILE_SIZE = file.size / 1024 / 1024;
    return new Promise(async (resolve, reject) => {
          if (FILE_SIZE > 20) {
            message.warn("请上传20MB以下的图片!")
            return reject(false)
          }
          if (file.type.split('/')[0] !== 'image') {
            message.warn("请选择图片");
            return reject(false)
          }
          const res = await Utils.fileUpload(file, true,()=>{},false);
          if (res) {
            resolve({data: {link: res}})
          } else {
            reject(false)
          }
        }
    )
  }

  return (
      <Editor
          editorState={editorState}
          editorClassName="add-product-introduction"
          onEditorStateChange={(editorState) => {
            setEditorState(editorState)
          }}
          localization={{
            locale: 'zh', //中文环境
          }}
          toolbar={{
            image: {
              uploadCallback: uploadImageCallBack,
              alt: {present: true, mandatory: false}
            },
          }}
      />
  )
}
ProductEditor = forwardRef(ProductEditor);
export default ProductEditor
