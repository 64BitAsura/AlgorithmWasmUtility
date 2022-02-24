class EDGE {
  src: i32;
  dest: i32;
  weight: i32;
}

export function mst(graph: StaticArray<StaticArray<i32>>): i32[]{
  
  const edges = new Array<EDGE>();
  for(let u=0; u < graph.length; u++){
    for(let v=0; v< graph.length; v++){
      if(grap[u][v]< Int32.MAX_VALUE){
       edges.push({src:u, dest:v, weight: graph[u][v]});
       graph[v][u] = Int32.MAX_VALUE;
      }
    }
  }
  
  // step 1 sort edges in non-decreasing order
  edges.sort((x:EDGE,y:EDGE)=> x.weight - y.weight);
  
  const mstSet = new Set<EDGE>();
  
}