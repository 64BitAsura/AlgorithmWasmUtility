const loader = require("@assemblyscript/loader/umd");
const fetch = require("isomorphic-fetch");
const fs = require("fs");
const path = require("path");
const wasmPath = path.resolve(__dirname, './mst.wasm');
const buffer = fs.readFileSync(wasmPath);
test('',()=>{
  loader.instantiate(buffer).then(({exports})=>{
    console.log(exports);
  }).catch((error)=> console.log(error));
});