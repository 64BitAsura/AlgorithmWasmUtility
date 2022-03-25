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

export class MST{
  parent: i32;
  vertex: i32;
}

function Find(parent: StaticArray<i32>, vertex: i32): i32 {
  if(parent[vertex]==-1){
    return vertex;
  }
  return Find(parent, parent[vertex]);
}

function Union(parent: StaticArray<i32>, src: i32, dest: i32): void{
  parent[src] = dest;
}

function IsCyclic(parent: StaticArray<i32>, src: i32, dest: i32):bool {
  const x = Find(parent, src);
  const y = Find(parent, dest);
  if(x == y){
    return true;
  }
  Union(parent, x, y);
  return false;
}

export function mst(graph: i32[][]): MST[]{
  
  const edges = new Array<EDGE>();
  const parents = new StaticArray<i32>(graph.length).fill(-1);
  for(let u=0; u < graph.length; u++){
    for(let v=0; v< graph.length; v++){
      if(graph[u][v]< I32.MAX_VALUE){
       if(u !== v){ 
         edges.push({src:u, dest:v, weight: graph[u][v]});
       }else {
         edges.push({src:u, dest:v, weight: I32.MAX_VALUE});
       }
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
  while (mstEdgeCount < vertexSize-1){
    if(edges.length === 0){
      break;
    }
    const edge: EDGE = edges.shift();
  
    // step 2 check cyclic after adding edge, if so pop
    if(!IsCyclic(parent, edge.src, edge.dest)){
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