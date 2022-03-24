const loader = require("@assemblyscript/loader/umd");
const fs = require("fs");
const path = require("path");
const wasmPath = path.resolve(__dirname, './kruskals-debug.wasm');
const buffer = fs.readFileSync(wasmPath);
let wasm = {};
test('MST sanity',(done)=>{
  loader.instantiate(buffer,{
    index: {
      consoleLog: value => console.log(wasm.__getString(value))
    }
  }).then(({exports})=>{
    wasm = {...exports};
    const {__pin,__unpin,__newArray,__getArray, __getString, VERTEX_ID, EDGE_ID, MST_ID, MST, mst} = exports;
    const graph = __newArray(VERTEX_ID,[__newArray(EDGE_ID,[1000,30,10,20,40])
                                        ,__newArray(EDGE_ID,[30,1000,4,1,1])
                                        ,__newArray(EDGE_ID,[10,4,1000,2,9])
                                        ,__newArray(EDGE_ID,[2,1,20,1000,20])
                                        ,__newArray(EDGE_ID,[40,1,9,20,1000])]);
    const mstArrayBuff = (__getArray(mst(graph)));
    
    
    expect(mstArrayBuff.map((mstBuff)=> MST.wrap(__pin(mstBuff)))
           .map(({parent, vertex})=>({parent, vertex})))
      .toEqual(expect.arrayContaining([
      { parent: -1, vertex: 0 },
      { parent: 0, vertex: 1 },
      { parent: 0, vertex: 2 }
    ]));
    done();
  }).catch((error)=> {console.log(error); done(); });
});