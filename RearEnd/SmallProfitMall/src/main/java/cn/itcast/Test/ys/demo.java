package cn.itcast.Test.ys;

import cn.itcast.util.compressPicture.PictureUtilOne;
import org.apache.ibatis.io.Resources;
import org.junit.jupiter.api.Test;

import java.io.IOException;
import java.io.InputStream;


public class demo {

    @Test
    public void  a() throws IOException {
        PictureUtilOne a =new PictureUtilOne();
   Resources.getResourceAsStream("temporaryFiles/Bjxu9RqIzP3Ee5QkFP6d1A.jpg").getClass().getResource("Bjxu9RqIzP3Ee5QkFP6d1A.jpg").getPath();
        System.out.println(in);
      a.pictureUtilOne(com_path,"D:");

    }

}

