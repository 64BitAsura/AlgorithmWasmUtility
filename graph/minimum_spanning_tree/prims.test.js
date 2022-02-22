const loader = require("@assemblyscript/loader/umd");
const fetch = require("isomorphic-fetch");
const fs = require("fs");
const path = require("path");
const wasmPath = path.resolve(__dirname, './mst.wasm');
const buffer = fs.readFileSync(wasmPath);
test('',()=>{
  loader.instantiate(buffer).then(({exports})=>{
    const {__pin,__unpin,__newArray,__getArray, VERTEX_ID, EDGE_ID, MST_ID, MST, mst} = exports;
    const re = (__getArray(mst(__newArray(VERTEX_ID,[__newArray(EDGE_ID,[1000,1,1])
      ,__newArray(EDGE_ID,[1,1000,4]),__newArray(EDGE_ID,[1,4,1000])]))));
    assertEqual(re.map((mstBuff)=> MST.wrap(__pin(mstBuff))).map(({parent, vertex})=>({parent, vertex})),[
      { parent: -1, vertex: 0 },
      { parent: 0, vertex: 1 },
      { parent: 0, vertex: 2 }
    ]);
  }).catch((error)=> console.log(error));
});