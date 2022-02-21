const loader = require("@assemblyscript/loader/umd");
const fetch = require("isomorphic-fetch");
test('',()=>{
  loader.instantiate(fetch("../mst.wasm")).then(({exports})=>{
    console.log(exports);
  }).catch((error)=> console.log(error));
});