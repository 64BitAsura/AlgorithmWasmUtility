const loader = require("@assemblyscript/loader/umd");
const fs = require("fs");
const path = require("path");
const wasmPath = path.resolve(__dirname, './kruskals-debug.wasm');
const buffer = fs.readFileSync(wasmPath);

let instance = null;
let exports = null;

const hasBigInt64 = typeof BigUint64Array !== "undefined";
let mem, I8, U8, I16, U16, I32, U32, F32, F64, I64, U64;

const checkMem = () => {
    if (mem !== exports.memory.buffer) {
        mem = exports.memory.buffer;
        I8 = new Int8Array(mem);
        U8 = new Uint8Array(mem);
        I16 = new Int16Array(mem);
        U16 = new Uint16Array(mem);
        I32 = new Int32Array(mem);
        U32 = new Uint32Array(mem);
        if (hasBigInt64) {
            I64 = new BigInt64Array(mem);
            U64 = new BigUint64Array(mem);
        }
        F32 = new Float32Array(mem);
        F64 = new Float64Array(mem);
    }
}

const getString = (ptr) => {
    checkMem();
    const dataLength = U32[ptr >>> 2];
    let dataOffset = (ptr + 4) >>> 1;
    let dataRemain = dataLength;
    const parts = [];
    const chunkSize = 1024;
    while (dataRemain > chunkSize) {
        let last = U16[dataOffset + chunkSize - 1];
        let size = last >= 0xD800 && last < 0xDC00 ? chunkSize - 1 : chunkSize;
        let part = U16.subarray(dataOffset, dataOffset += size);
        parts.push(String.fromCharCode.apply(String, part));
        dataRemain -= size;
    }
    return parts.join("") + String.fromCharCode.apply(String, U16.subarray(dataOffset, dataOffset + dataRemain));
}

test('MST sanity',()=>{
  loader.instantiate(buffer,{
        console: {
            log(strPtr) {
                console.log(getString(strPtr))
            }
        }
    }).then(({exportss})=>{
    const {__pin,__unpin,__newArray,__getArray, VERTEX_ID, EDGE_ID, MST_ID, MST, mst} = exportss;
    const graph = __newArray(VERTEX_ID,[__newArray(EDGE_ID,[1000,1,1])
      ,__newArray(EDGE_ID,[1,1000,4]),__newArray(EDGE_ID,[1,4,1000])]);
    const mstArrayBuff = (__getArray(mst(graph)));
    
    
    expect(mstArrayBuff.map((mstBuff)=> MST.wrap(__pin(mstBuff)))
           .map(({parent, vertex})=>({parent, vertex})))
      .toEqual(expect.arrayContaining([
      { parent: -1, vertex: 0 },
      { parent: 0, vertex: 1 },
      { parent: 0, vertex: 2 }
    ]));
  }).catch((error)=> {console.log(error); throw error; });
});