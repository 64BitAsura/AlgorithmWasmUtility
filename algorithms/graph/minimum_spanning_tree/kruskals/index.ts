// Declared `importObject` function
declare function consoleLog(arg0: i32): void;



class EDGE {
  src: i32;
  dest: i32;
  weight: i32;
}

class GRAPH {
  adjacentList:Map<i32,Set<i32>>;
  constructor(){
    this.adjacentList = new Map<i32,Set<i32>>();
  }
  
  AddEdge(edge: EDGE): void{  
    let adjacentVertexes = this.GetAdjacentVertexes(edge.src);
    consoleLog(edge.src);
    adjacentVertexes.add(edge.dest);
    this.adjacentList.set(edge.src, adjacentVertexes);
    this.adjacentList.set(edge.dest, this.GetAdjacentVertexes(edge.dest));
    consoleLog(edge.dest);
  }
 
  GetAdjacentVertexes(vertex: i32): Set<i32>{
    let adjacentVertexes: Set<i32>;
    if(this.adjacentList.has(vertex)){
     adjacentVertexes = this.adjacentList.get(vertex);
    } else {
      adjacentVertexes = new Set<i32>();
    }
    return adjacentVertexes;
  }
  
  RemoveEdge(edge: EDGE): void{
    let adjacentVertexes = this.GetAdjacentVertexes(edge.src);
    adjacentVertexes.delete(edge.dest);
    this.adjacentList.set(edge.src, adjacentVertexes);
  }
  
  IsCyclic(): bool {
    const visited = new Array<bool>(this.adjacentList.size).fill(false);
    const restack = new Array<bool>(this.adjacentList.size).fill(false);
    for(let vertex=0; vertex<this.adjacentList.size; vertex++){
        const cyclic = this.CyclicUtil(vertex, visited, restack);
        if(cyclic){
          return true;
        }
    }
    return false;
  }

  CyclicUtil(parent: i32, visited: Array<bool>, restack: Array<bool>): bool{
    consoleLog(this.adjacentList.size);
    consoleLog(parent);
    if(!visited[parent]){
      visited[parent] = true;
      const peers = this.GetAdjacentVertexes(parent);
      if(peers != null){
        for(let current =0; current < peers.size; current++){
          const currentVertex = peers[current];
          if(restack[currentVertex] || (!visited[currentVertex] && this.CyclicUtil(currentVertex, visited, restack))){
            return true
          }
        }
      }
    }
    restack[parent]=false;
    return false;
  }
}

export class MST{
  parent: i32;
  vertex: i32;
}

export function mst(graph: i32[][]): MST[]{
  
  const edges = new Array<EDGE>();
  for(let u=0; u < graph.length; u++){
    for(let v=0; v< graph.length; v++){
      if(graph[u][v]< I32.MAX_VALUE){
       edges.push({src:u, dest:v, weight: graph[u][v]});
       graph[v][u] = I32.MAX_VALUE;
      }
    }
  }
  
  // step 1 sort edges in non-decreasing order
  edges.sort((x:EDGE,y:EDGE)=> y.weight - x.weight);
  
  const mstSet = new StaticArray<i32>(graph.length);
  const subGraph = new GRAPH();
  
  const vertexSize = graph.length;
  
  let mstEdgeCount = 0;
  const visited = new Array<bool>(vertexSize).fill(false);
  //step 3 do step 2 until all edges exhausted
  while (mstEdgeCount < vertexSize - 1){
    if(edges.length === 0){
      break;
    }
    const edge: EDGE = edges.shift();
    subGraph.AddEdge(edge);
    // step 2 check cyclic after adding edge, if so pop
    if(subGraph.IsCyclic()){
      subGraph.RemoveEdge(edge);
    } else {
      mstSet[edge.src] = edge.dest;
    }
  }
  
  return mstSet.slice(0)
         .map<MST>((parent: i32, vertex: i32, _: i32[]): MST=>({parent, vertex}));
}

export const MST_ID = idof<MST[]>();
export const EDGE_ID = idof<i32[]>();
export const VERTEX_ID = idof<i32[][]>();