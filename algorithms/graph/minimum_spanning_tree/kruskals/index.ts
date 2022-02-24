class EDGE {
  src: i32;
  dest: i32;
}

export function mst(graph: StaticArray<StaticArray<i32>>): i32[]{
  
  const edges = new Array<EDGE>();
  for(let u=0; u < graph.length; u++){
    for(let v=0; v< graph.length; v++){
      edges.push({src:u, dest:v, weight: graph[u][v]});
      graph[v][u] = Int32.MAX_VALUE;
    }
  }
  
  
}