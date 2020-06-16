import {createStore,applyMiddleware,compose} from "redux";
import reducer from './reducer'
import thunk from 'redux-thunk'
import {persistStore, persistReducer } from 'redux-persist';
// 存储在sessionStorage
import storage from 'redux-persist/lib/storage/session';
// 存储在localStorage
// import storage from 'redux-persist/lib/storage';
import autoMergeLevel2 from 'redux-persist/lib/stateReconciler/autoMergeLevel2';

//增强函数
const composeEnhancers = typeof window === 'object' && window.__REDUX_DEVTOOLS_EXTENSION_COMPOSE__ ? window.__REDUX_DEVTOOLS_EXTENSION_COMPOSE__({}) : compose;

const enhancer=composeEnhancers(applyMiddleware(thunk))

// redux-persist 刷新页面redux存储的全局数据就会被全部清空
const persistConfig = {
  key: 'root',
  storage: storage,
  stateReconciler: autoMergeLevel2 // 查看 'Merge Process' 部分的具体情况
};
//创建 myPersistReducer
const myPersistReducer = persistReducer(persistConfig, reducer)

const store = createStore(myPersistReducer,enhancer); // 创建数据存储仓库
//导出 persist
export const persistor = persistStore(store)
export default store;
