#[cfg(test)]
mod test {
use wasm_bindgen_test::*;
use crate::algorithm::WasmEdge;
use crate::algorithm::shortest_path_for_js;
#[wasm_bindgen_test]
fn pass() {
    let mut edges = Vec::new();
    edges.push(WasmEdge(0, 2, 10));
    edges.push(WasmEdge(0, 1, 1));
    edges.push(WasmEdge(1, 3, 2));
    edges.push(WasmEdge(2, 1, 1));
    edges.push(WasmEdge(2, 3, 3));
    edges.push(WasmEdge(2, 4, 1));
    edges.push(WasmEdge(3, 2, 7));
    edges.push(WasmEdge(3, 4, 2));
    edges.push(WasmEdge(4, 2, 1));
    edges.push(WasmEdge(5, 3, 1));

    let heuristics= js_sys::Function::new_no_args(&"return 2;");
    let js_path = shortest_path_for_js(serde_wasm_bindgen::to_value(&edges).ok().unwrap(), 
    serde_wasm_bindgen::to_value(&(0 as i32)).ok().unwrap(), 
    serde_wasm_bindgen::to_value(&( 2 as i32)).ok().unwrap(), &heuristics);
    let sp: Vec<i32> = js_path.unwrap().into_serde().unwrap();
    assert_eq!(vec![0,1,3,4,2], sp);

    let js_path = shortest_path_for_js(serde_wasm_bindgen::to_value(&edges).ok().unwrap(), 
    serde_wasm_bindgen::to_value(&(0 as i32)).ok().unwrap(), 
    serde_wasm_bindgen::to_value(&( 3 as i32)).ok().unwrap(), &heuristics);
    let sp: Vec<i32> = js_path.unwrap().into_serde().unwrap();
    assert_eq!(vec![0,1,3], sp);
}
}