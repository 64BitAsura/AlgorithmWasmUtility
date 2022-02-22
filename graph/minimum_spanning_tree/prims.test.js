const loader = require("@assemblyscript/loader/umd");
const fetch = require("isomorphic-fetch");
const fs = require("fs");
const path = require("path");
const wasmPath = path.resolve(__dirname, './mst.wasm');
const buffer = fs.readFileSync(wasmPath);
test('',()=>{
  loader.instantiate(buffer).then(({exports})=>{
    const {__pin,__unpin,__newArray,__getArray, VERTEX_ID, EDGE_ID, mst, PARAMETER, ctod} = exports;
    const re = (__getArray(mst(__newArray(VERTEX_ID,[__newArray(EDGE_ID,[1000,1,8])
      ,__newArray(EDGE_ID,[12,1000,4]),__newArray(EDGE_ID,[1,1,1000])]))));
    console.log(re);
    console.log((__getArray(ctod(__newArray(PARAMETER, [7,7,7])))));
  }).catch((error)=> console.log(error));
});