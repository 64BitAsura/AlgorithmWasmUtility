function findMinEdgeVertex(
  minimumWeightedEdgeByVertex: Int32Array,
  mst: Array<boolean>
): i32 {
  let minWeight = I32.MAX_VALUE;
  let minVertexIndex: i32=0;
  for(let vertexIndex=0; vertexIndex < mst.length; vertexIndex++){  
  const visited = mst[vertexIndex];
    const isLess = (minimumWeightedEdgeByVertex[vertexIndex] < minWeight);
    if (!visited && isLess) {
      minVertexIndex = vertexIndex;
      minWeight = minimumWeightedEdgeByVertex[vertexIndex];
    }
  }
  return minVertexIndex;
}

class MST{
  parent: i32;
  vertex: i32;
}
export function mst(graph: i32[][]): MST[] {
  const parent = new StaticArray<i32>(graph.length);
  const minimumWeightedEdgeByVertex = new Int32Array(graph.length).fill(
    I32.MAX_VALUE
  );
  const mst = new Array<boolean>(graph.length).fill(false);

  minimumWeightedEdgeByVertex[0] = 0;
  parent[0] = -1; // starting vertex can't have parent per say

  for (let i = 0; i < graph.length - 1; i++) {
    const minVertexIndex = findMinEdgeVertex(minimumWeightedEdgeByVertex, mst);
    mst[minVertexIndex] = true;
    for (let v = 0; v < graph.length; v++) {
      if (
        graph[minVertexIndex][v] &&
        mst[v] === false &&
        graph[minVertexIndex][v] < minimumWeightedEdgeByVertex[v]
      ) {
        parent[v] = minVertexIndex;
        minimumWeightedEdgeByVertex[v] = graph[minVertexIndex][v];
      }
    }
  }

  return parent.slice(0)
         .map<MST>((parentToVertex: i32, vertex: i32, parent: i32[]): MST=>({parent: parentToVertex, vertex}));
}


export const MST_ID = idof<MST[]>();
export const EDGE_ID = idof<i32[]>();
export const VERTEX_ID = idof<i32[][]>();

