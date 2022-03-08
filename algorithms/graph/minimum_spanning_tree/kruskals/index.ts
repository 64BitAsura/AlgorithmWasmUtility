class EDGE {
  src: i32;
  dest: i32;
  weight: i32;
}

class GRAPH {
  adjacentList = new Map<i32,i32>();
  
  AddEdge(edge: EDGE): void{  
    let adjacentVertexes = this.GetAdjacentVertexes(edge.src);
    adjacentVertexes.add(edge.dest);
    this.adjacentList[edge.src] = adjacentVertexes;
  }
 
  GetAdjacentVertexes(vertex: i32): Set<i32>{
    let adjacentVertexes = this.adjacentList[vertex];
    if(adjacentVertexes == null){
      adjacentVertexes = new Set<i32>();
    }
    return adjacentVertexes;
  }
  
  RemoveEdge(edge: EDGE): void{
    let adjacentVertexes = this.GetAdjacentVertexes(edge.src);
    adjacentVertexes.remove(edge.dest);
    this.adjacentList[edge.src] = adjacentVertexes;
  }
  
  IsCyclic(): bool {
    const visited = new Array<bool>(adjacentList.size).fill(false);
    for(let vertex=0; vertex<adjacentList.size; vertex++){
        
    }
  }

  CyclicUtil(parent: i32, visited: Array<bool>): bool{
    
  }
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
  edges.sort((x:EDGE,y:EDGE)=> y.weight - x.weight);
  
  const mstSet = new GRAPH();
  
  const vertexSize = graph.length;
  
  let mstEdgeCount = 0;
  const visited = new Array<bool>(vertexSize).fill(false);
  while (mstEdgeCount < vertexSize - 1){
    if(edges.size === 0){
      break;
    }
    
  }
  
}