// Declared `importObject` function
declare function consoleLog(arg0: string): void;

class EDGE {
  src: i32;
  dest: i32;
  weight: i32;
  ToString(): string{
    return this.src.toString() + " " + this.dest.toString() + " " + this.weight.toString();
  }
}

class GRAPH {
  adjacentList:Map<i32,Set<i32>>;
  constructor(){
    this.adjacentList = new Map<i32,Set<i32>>();
  }
  
  AddEdge(edge: EDGE): void{  
    let adjacentVertexes = this.GetAdjacentVertexes(edge.src);
    adjacentVertexes.add(edge.dest);
    this.adjacentList.set(edge.src, adjacentVertexes);
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
  
  ToString(): string{
    const keys =  this.adjacentList.keys();
    let result = "";
    for(let I=0; I< keys.length; I++){
      const key = keys[I];
      const peers = this.GetAdjacentVertexes(key);
      result = result + "parent "+ key.toString() + " children "+ peers.values().toString() + "\n";
    }
    return result;
  }
  
  IsCyclic(): bool {
    const visited = new Map<i32, bool>();
    const restack = new Map<i32, bool>();
    const vertexes = this.adjacentList.keys();
    for(let vertex=0; vertex<vertexes.length; vertex++){
       if( !visited.has(vertexes[vertex]) && this.CyclicUtil(vertexes[vertex], visited, restack)){
          return true;
        }
    }
    return false;
  }

  CyclicUtil(parent: i32, visited: Map<i32, bool>, restack: Map<i32, bool>): bool{
    
        // Mark the current node as visited and part of recursion stack
        visited.set(parent, true);
        restack.set(parent,true);
 
        // Recur for all the vertices adjacent to this vertex
        const peers = this.GetAdjacentVertexes(parent).values();
        for(let i=0; i< peers.length; i ++)
        {
          const peer = peers[i];
            if ( !visited.has(peer) && this.CyclicUtil(peer, visited, restack) ){
                return true;
            }
            else if (restack[*i])
                return true;
        }
 
    
    recStack[v] = false;  // remove the vertex from recursion stack
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
       if(u !== v){ 
         edges.push({src:u, dest:v, weight: graph[u][v]});
       }
       graph[v][u] = I32.MAX_VALUE;
      }
    }
  }
  
  
  // step 1 sort edges in non-decreasing order
  edges.sort((x:EDGE,y:EDGE)=> x.weight - y.weight);
  
  const mstSet = new Set<EDGE>();
  const subGraph = new GRAPH();
  
  const vertexSize = graph.length;
  
  let mstEdgeCount = 0;
  
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
      consoleLog(" edge removed "+ edge.ToString());
    } else {
      mstSet.add(edge);
      mstEdgeCount++;
    }
    
  }
  
  return mstSet.values()
         .map<MST>((edge: EDGE, _: i32, __: EDGE[]): MST=>({parent: edge.src, vertex: edge.dest}));
}

export const MST_ID = idof<MST[]>();
export const EDGE_ID = idof<i32[]>();
export const VERTEX_ID = idof<i32[][]>();