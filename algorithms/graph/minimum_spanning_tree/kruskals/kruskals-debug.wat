(module
 (type $i32_i32_=>_none (func (param i32 i32)))
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (type $i32_i32_i32_=>_none (func (param i32 i32 i32)))
 (type $i32_i32_i32_=>_i32 (func (param i32 i32 i32) (result i32)))
 (type $i32_=>_none (func (param i32)))
 (type $none_=>_none (func))
 (type $i32_i32_i32_i32_=>_i32 (func (param i32 i32 i32 i32) (result i32)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $none_=>_i32 (func (result i32)))
 (type $i32_i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32 i32)))
 (type $i32_i32_i32_i32_i32_=>_i32 (func (param i32 i32 i32 i32 i32) (result i32)))
 (type $i32_i32_i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32 i32 i32)))
 (type $i32_i64_i32_=>_none (func (param i32 i64 i32)))
 (type $i64_i32_=>_i32 (func (param i64 i32) (result i32)))
 (type $i32_i64_i32_i32_=>_none (func (param i32 i64 i32 i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (import "index" "consoleLog" (func $algorithms/graph/minimum_spanning_tree/kruskals/index/consoleLog (param i32)))
 (global $algorithms/graph/minimum_spanning_tree/kruskals/index/MST_ID i32 (i32.const 4))
 (global $algorithms/graph/minimum_spanning_tree/kruskals/index/EDGE_ID i32 (i32.const 5))
 (global $algorithms/graph/minimum_spanning_tree/kruskals/index/VERTEX_ID i32 (i32.const 6))
 (global $~lib/rt/itcms/total (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/threshold (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/state (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/visitCount (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/pinSpace (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/iter (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/toSpace (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/white (mut i32) (i32.const 0))
 (global $~lib/shared/runtime/Runtime.Stub i32 (i32.const 0))
 (global $~lib/shared/runtime/Runtime.Minimal i32 (i32.const 1))
 (global $~lib/shared/runtime/Runtime.Incremental i32 (i32.const 2))
 (global $~lib/rt/itcms/fromSpace (mut i32) (i32.const 0))
 (global $~lib/rt/tlsf/ROOT (mut i32) (i32.const 0))
 (global $~lib/ASC_LOW_MEMORY_LIMIT i32 (i32.const 0))
 (global $~lib/ASC_SHRINK_LEVEL i32 (i32.const 0))
 (global $~lib/ASC_RUNTIME i32 (i32.const 2))
 (global $~lib/builtins/i32.MAX_VALUE i32 (i32.const 2147483647))
 (global $~lib/number/I32.MAX_VALUE i32 (i32.const 2147483647))
 (global $~argumentsLength (mut i32) (i32.const 0))
 (global $~lib/builtins/u32.MAX_VALUE i32 (i32.const -1))
 (global $algorithms/graph/minimum_spanning_tree/kruskals/index/MST i32 (i32.const 3))
 (global $~lib/rt/__rtti_base i32 (i32.const 2992))
 (global $~lib/memory/__data_end i32 (i32.const 3124))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 19508))
 (global $~lib/memory/__heap_base i32 (i32.const 19508))
 (memory $0 1)
 (data (i32.const 12) "<\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00(\00\00\00A\00l\00l\00o\00c\00a\00t\00i\00o\00n\00 \00t\00o\00o\00 \00l\00a\00r\00g\00e\00\00\00\00\00")
 (data (i32.const 76) "<\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00 \00\00\00~\00l\00i\00b\00/\00r\00t\00/\00i\00t\00c\00m\00s\00.\00t\00s\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 144) "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 176) "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 204) "<\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00$\00\00\00I\00n\00d\00e\00x\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e\00\00\00\00\00\00\00\00\00")
 (data (i32.const 268) ",\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\14\00\00\00~\00l\00i\00b\00/\00r\00t\00.\00t\00s\00\00\00\00\00\00\00\00\00")
 (data (i32.const 320) "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 348) "<\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00t\00l\00s\00f\00.\00t\00s\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 412) ",\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\1c\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00l\00e\00n\00g\00t\00h\00")
 (data (i32.const 460) ",\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\1a\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00.\00t\00s\00\00\00")
 (data (i32.const 508) "|\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00^\00\00\00E\00l\00e\00m\00e\00n\00t\00 \00t\00y\00p\00e\00 \00m\00u\00s\00t\00 \00b\00e\00 \00n\00u\00l\00l\00a\00b\00l\00e\00 \00i\00f\00 \00a\00r\00r\00a\00y\00 \00i\00s\00 \00h\00o\00l\00e\00y\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 636) "\1c\00\00\00\00\00\00\00\00\00\00\00\t\00\00\00\08\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 668) "<\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00&\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00b\00u\00f\00f\00e\00r\00.\00t\00s\00\00\00\00\00\00\00")
 (data (i32.const 732) ",\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\1c\00\00\00A\00r\00r\00a\00y\00 \00i\00s\00 \00e\00m\00p\00t\00y\00")
 (data (i32.const 780) "<\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00$\00\00\00K\00e\00y\00 \00d\00o\00e\00s\00 \00n\00o\00t\00 \00e\00x\00i\00s\00t\00\00\00\00\00\00\00\00\00")
 (data (i32.const 844) ",\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\16\00\00\00~\00l\00i\00b\00/\00m\00a\00p\00.\00t\00s\00\00\00\00\00\00\00")
 (data (i32.const 892) ",\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\18\00\00\00[\00o\00b\00j\00e\00c\00t\00 \00M\00a\00p\00]\00\00\00\00\00")
 (data (i32.const 940) ",\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\1c\00\00\00 \00e\00d\00g\00e\00 \00r\00e\00m\00o\00v\00e\00d\00 \00")
 (data (i32.const 988) "|\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00d\00\00\00t\00o\00S\00t\00r\00i\00n\00g\00(\00)\00 \00r\00a\00d\00i\00x\00 \00a\00r\00g\00u\00m\00e\00n\00t\00 \00m\00u\00s\00t\00 \00b\00e\00 \00b\00e\00t\00w\00e\00e\00n\00 \002\00 \00a\00n\00d\00 \003\006\00\00\00\00\00\00\00\00\00")
 (data (i32.const 1116) "<\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00&\00\00\00~\00l\00i\00b\00/\00u\00t\00i\00l\00/\00n\00u\00m\00b\00e\00r\00.\00t\00s\00\00\00\00\00\00\00")
 (data (i32.const 1180) "\1c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\02\00\00\000\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 1212) "0\000\000\001\000\002\000\003\000\004\000\005\000\006\000\007\000\008\000\009\001\000\001\001\001\002\001\003\001\004\001\005\001\006\001\007\001\008\001\009\002\000\002\001\002\002\002\003\002\004\002\005\002\006\002\007\002\008\002\009\003\000\003\001\003\002\003\003\003\004\003\005\003\006\003\007\003\008\003\009\004\000\004\001\004\002\004\003\004\004\004\005\004\006\004\007\004\008\004\009\005\000\005\001\005\002\005\003\005\004\005\005\005\006\005\007\005\008\005\009\006\000\006\001\006\002\006\003\006\004\006\005\006\006\006\007\006\008\006\009\007\000\007\001\007\002\007\003\007\004\007\005\007\006\007\007\007\008\007\009\008\000\008\001\008\002\008\003\008\004\008\005\008\006\008\007\008\008\008\009\009\000\009\001\009\002\009\003\009\004\009\005\009\006\009\007\009\008\009\009\00")
 (data (i32.const 1612) "\1c\04\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\04\00\000\000\000\001\000\002\000\003\000\004\000\005\000\006\000\007\000\008\000\009\000\00a\000\00b\000\00c\000\00d\000\00e\000\00f\001\000\001\001\001\002\001\003\001\004\001\005\001\006\001\007\001\008\001\009\001\00a\001\00b\001\00c\001\00d\001\00e\001\00f\002\000\002\001\002\002\002\003\002\004\002\005\002\006\002\007\002\008\002\009\002\00a\002\00b\002\00c\002\00d\002\00e\002\00f\003\000\003\001\003\002\003\003\003\004\003\005\003\006\003\007\003\008\003\009\003\00a\003\00b\003\00c\003\00d\003\00e\003\00f\004\000\004\001\004\002\004\003\004\004\004\005\004\006\004\007\004\008\004\009\004\00a\004\00b\004\00c\004\00d\004\00e\004\00f\005\000\005\001\005\002\005\003\005\004\005\005\005\006\005\007\005\008\005\009\005\00a\005\00b\005\00c\005\00d\005\00e\005\00f\006\000\006\001\006\002\006\003\006\004\006\005\006\006\006\007\006\008\006\009\006\00a\006\00b\006\00c\006\00d\006\00e\006\00f\007\000\007\001\007\002\007\003\007\004\007\005\007\006\007\007\007\008\007\009\007\00a\007\00b\007\00c\007\00d\007\00e\007\00f\008\000\008\001\008\002\008\003\008\004\008\005\008\006\008\007\008\008\008\009\008\00a\008\00b\008\00c\008\00d\008\00e\008\00f\009\000\009\001\009\002\009\003\009\004\009\005\009\006\009\007\009\008\009\009\009\00a\009\00b\009\00c\009\00d\009\00e\009\00f\00a\000\00a\001\00a\002\00a\003\00a\004\00a\005\00a\006\00a\007\00a\008\00a\009\00a\00a\00a\00b\00a\00c\00a\00d\00a\00e\00a\00f\00b\000\00b\001\00b\002\00b\003\00b\004\00b\005\00b\006\00b\007\00b\008\00b\009\00b\00a\00b\00b\00b\00c\00b\00d\00b\00e\00b\00f\00c\000\00c\001\00c\002\00c\003\00c\004\00c\005\00c\006\00c\007\00c\008\00c\009\00c\00a\00c\00b\00c\00c\00c\00d\00c\00e\00c\00f\00d\000\00d\001\00d\002\00d\003\00d\004\00d\005\00d\006\00d\007\00d\008\00d\009\00d\00a\00d\00b\00d\00c\00d\00d\00d\00e\00d\00f\00e\000\00e\001\00e\002\00e\003\00e\004\00e\005\00e\006\00e\007\00e\008\00e\009\00e\00a\00e\00b\00e\00c\00e\00d\00e\00e\00e\00f\00f\000\00f\001\00f\002\00f\003\00f\004\00f\005\00f\006\00f\007\00f\008\00f\009\00f\00a\00f\00b\00f\00c\00f\00d\00f\00e\00f\00f\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 2668) "\\\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00H\00\00\000\001\002\003\004\005\006\007\008\009\00a\00b\00c\00d\00e\00f\00g\00h\00i\00j\00k\00l\00m\00n\00o\00p\00q\00r\00s\00t\00u\00v\00w\00x\00y\00z\00\00\00\00\00")
 (data (i32.const 2764) "\1c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00 \00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 2796) "\1c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 2828) "\1c\00\00\00\00\00\00\00\00\00\00\00\0f\00\00\00\08\00\00\00\02\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 2860) "<\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00*\00\00\00O\00b\00j\00e\00c\00t\00 \00a\00l\00r\00e\00a\00d\00y\00 \00p\00i\00n\00n\00e\00d\00\00\00")
 (data (i32.const 2924) "<\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00(\00\00\00O\00b\00j\00e\00c\00t\00 \00i\00s\00 \00n\00o\00t\00 \00p\00i\00n\00n\00e\00d\00\00\00\00\00")
 (data (i32.const 2992) "\10\00\00\00 \00\00\00\00\00\00\00 \00\00\00\00\00\00\00\00\00\00\00\00\00\00\00 \00\00\00\00\00\00\00\02A\00\00\00\00\00\00\02\t\00\00\00\00\00\00\02A\00\00\00\00\00\00 \00\00\00\00\00\00\00\02A\00\00\00\00\00\00\00\00\00\00\00\00\00\00\08A\00\00\00\00\00\00\00\00\00\00\00\00\00\00\08\t\00\00\00\00\00\00\10A\12\00\00\00\00\00P\00\12\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (table $0 3 funcref)
 (elem $0 (i32.const 1) $algorithms/graph/minimum_spanning_tree/kruskals/index/mst~anonymous|0 $algorithms/graph/minimum_spanning_tree/kruskals/index/mst~anonymous|1)
 (export "MST" (global $algorithms/graph/minimum_spanning_tree/kruskals/index/MST))
 (export "MST_ID" (global $algorithms/graph/minimum_spanning_tree/kruskals/index/MST_ID))
 (export "EDGE_ID" (global $algorithms/graph/minimum_spanning_tree/kruskals/index/EDGE_ID))
 (export "VERTEX_ID" (global $algorithms/graph/minimum_spanning_tree/kruskals/index/VERTEX_ID))
 (export "__new" (func $~lib/rt/itcms/__new))
 (export "__pin" (func $~lib/rt/itcms/__pin))
 (export "__unpin" (func $~lib/rt/itcms/__unpin))
 (export "__collect" (func $~lib/rt/itcms/__collect))
 (export "__rtti_base" (global $~lib/rt/__rtti_base))
 (export "memory" (memory $0))
 (export "MST#get:parent" (func $export:algorithms/graph/minimum_spanning_tree/kruskals/index/MST#get:parent))
 (export "MST#set:parent" (func $export:algorithms/graph/minimum_spanning_tree/kruskals/index/MST#set:parent))
 (export "MST#get:vertex" (func $export:algorithms/graph/minimum_spanning_tree/kruskals/index/MST#get:vertex))
 (export "MST#set:vertex" (func $export:algorithms/graph/minimum_spanning_tree/kruskals/index/MST#set:vertex))
 (export "MST#constructor" (func $export:algorithms/graph/minimum_spanning_tree/kruskals/index/MST#constructor))
 (export "mst" (func $export:algorithms/graph/minimum_spanning_tree/kruskals/index/mst))
 (start $~start)
 (func $~lib/rt/itcms/Object#set:nextWithColor (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=4
 )
 (func $~lib/rt/itcms/Object#set:prev (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=8
 )
 (func $~lib/rt/itcms/initLazy (param $0 i32) (result i32)
  local.get $0
  local.get $0
  call $~lib/rt/itcms/Object#set:nextWithColor
  local.get $0
  local.get $0
  call $~lib/rt/itcms/Object#set:prev
  local.get $0
 )
 (func $~lib/rt/itcms/Object#get:next (param $0 i32) (result i32)
  local.get $0
  i32.load offset=4
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
 )
 (func $~lib/rt/itcms/Object#get:color (param $0 i32) (result i32)
  local.get $0
  i32.load offset=4
  i32.const 3
  i32.and
 )
 (func $~lib/rt/itcms/visitRoots (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  call $~lib/rt/__visit_globals
  global.get $~lib/rt/itcms/pinSpace
  local.set $1
  local.get $1
  call $~lib/rt/itcms/Object#get:next
  local.set $2
  loop $while-continue|0
   local.get $2
   local.get $1
   i32.ne
   local.set $3
   local.get $3
   if
    i32.const 1
    drop
    local.get $2
    call $~lib/rt/itcms/Object#get:color
    i32.const 3
    i32.eq
    i32.eqz
    if
     i32.const 0
     i32.const 96
     i32.const 159
     i32.const 16
     call $~lib/builtins/abort
     unreachable
    end
    local.get $2
    i32.const 20
    i32.add
    local.get $0
    call $~lib/rt/__visit_members
    local.get $2
    call $~lib/rt/itcms/Object#get:next
    local.set $2
    br $while-continue|0
   end
  end
 )
 (func $~lib/rt/itcms/Object#set:color (param $0 i32) (param $1 i32)
  local.get $0
  local.get $0
  i32.load offset=4
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  local.get $1
  i32.or
  call $~lib/rt/itcms/Object#set:nextWithColor
 )
 (func $~lib/rt/itcms/Object#set:next (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  local.get $0
  i32.load offset=4
  i32.const 3
  i32.and
  i32.or
  call $~lib/rt/itcms/Object#set:nextWithColor
 )
 (func $~lib/rt/itcms/Object#unlink (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  call $~lib/rt/itcms/Object#get:next
  local.set $1
  local.get $1
  i32.const 0
  i32.eq
  if
   i32.const 1
   drop
   local.get $0
   i32.load offset=8
   i32.const 0
   i32.eq
   if (result i32)
    local.get $0
    global.get $~lib/memory/__heap_base
    i32.lt_u
   else
    i32.const 0
   end
   i32.eqz
   if
    i32.const 0
    i32.const 96
    i32.const 127
    i32.const 18
    call $~lib/builtins/abort
    unreachable
   end
   return
  end
  local.get $0
  i32.load offset=8
  local.set $2
  i32.const 1
  drop
  local.get $2
  i32.eqz
  if
   i32.const 0
   i32.const 96
   i32.const 131
   i32.const 16
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  local.get $2
  call $~lib/rt/itcms/Object#set:prev
  local.get $2
  local.get $1
  call $~lib/rt/itcms/Object#set:next
 )
 (func $~lib/rt/__typeinfo (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/rt/__rtti_base
  local.set $1
  local.get $0
  local.get $1
  i32.load
  i32.gt_u
  if
   i32.const 224
   i32.const 288
   i32.const 22
   i32.const 28
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 4
  i32.add
  local.get $0
  i32.const 8
  i32.mul
  i32.add
  i32.load
 )
 (func $~lib/rt/itcms/Object#get:isPointerfree (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.load offset=12
  local.set $1
  local.get $1
  i32.const 1
  i32.le_u
  if (result i32)
   i32.const 1
  else
   local.get $1
   call $~lib/rt/__typeinfo
   i32.const 32
   i32.and
   i32.const 0
   i32.ne
  end
 )
 (func $~lib/rt/itcms/Object#linkTo (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  local.get $1
  i32.load offset=8
  local.set $3
  local.get $0
  local.get $1
  local.get $2
  i32.or
  call $~lib/rt/itcms/Object#set:nextWithColor
  local.get $0
  local.get $3
  call $~lib/rt/itcms/Object#set:prev
  local.get $3
  local.get $0
  call $~lib/rt/itcms/Object#set:next
  local.get $1
  local.get $0
  call $~lib/rt/itcms/Object#set:prev
 )
 (func $~lib/rt/itcms/Object#makeGray (param $0 i32)
  (local $1 i32)
  local.get $0
  global.get $~lib/rt/itcms/iter
  i32.eq
  if
   local.get $0
   i32.load offset=8
   local.tee $1
   i32.eqz
   if (result i32)
    i32.const 0
    i32.const 96
    i32.const 147
    i32.const 30
    call $~lib/builtins/abort
    unreachable
   else
    local.get $1
   end
   global.set $~lib/rt/itcms/iter
  end
  local.get $0
  call $~lib/rt/itcms/Object#unlink
  local.get $0
  global.get $~lib/rt/itcms/toSpace
  local.get $0
  call $~lib/rt/itcms/Object#get:isPointerfree
  if (result i32)
   global.get $~lib/rt/itcms/white
   i32.eqz
  else
   i32.const 2
  end
  call $~lib/rt/itcms/Object#linkTo
 )
 (func $~lib/rt/itcms/__visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  i32.eqz
  if
   return
  end
  local.get $0
  i32.const 20
  i32.sub
  local.set $2
  i32.const 0
  drop
  local.get $2
  call $~lib/rt/itcms/Object#get:color
  global.get $~lib/rt/itcms/white
  i32.eq
  if
   local.get $2
   call $~lib/rt/itcms/Object#makeGray
   global.get $~lib/rt/itcms/visitCount
   i32.const 1
   i32.add
   global.set $~lib/rt/itcms/visitCount
  end
 )
 (func $~lib/rt/itcms/visitStack (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  local.set $1
  loop $while-continue|0
   local.get $1
   global.get $~lib/memory/__heap_base
   i32.lt_u
   local.set $2
   local.get $2
   if
    local.get $1
    i32.load
    local.get $0
    call $~lib/rt/itcms/__visit
    local.get $1
    i32.const 4
    i32.add
    local.set $1
    br $while-continue|0
   end
  end
 )
 (func $~lib/rt/itcms/Object#get:size (param $0 i32) (result i32)
  i32.const 4
  local.get $0
  i32.load
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  i32.add
 )
 (func $~lib/rt/tlsf/Root#set:flMap (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store
 )
 (func $~lib/rt/common/BLOCK#set:mmInfo (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store
 )
 (func $~lib/rt/tlsf/Block#set:prev (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=4
 )
 (func $~lib/rt/tlsf/Block#set:next (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=8
 )
 (func $~lib/rt/tlsf/removeBlock (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  local.get $1
  i32.load
  local.set $2
  i32.const 1
  drop
  local.get $2
  i32.const 1
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 368
   i32.const 268
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  local.set $3
  i32.const 1
  drop
  local.get $3
  i32.const 12
  i32.ge_u
  i32.eqz
  if
   i32.const 0
   i32.const 368
   i32.const 270
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const 256
  i32.lt_u
  if
   i32.const 0
   local.set $4
   local.get $3
   i32.const 4
   i32.shr_u
   local.set $5
  else
   local.get $3
   local.tee $6
   i32.const 1073741820
   local.tee $7
   local.get $6
   local.get $7
   i32.lt_u
   select
   local.set $6
   i32.const 31
   local.get $6
   i32.clz
   i32.sub
   local.set $4
   local.get $6
   local.get $4
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 1
   i32.const 4
   i32.shl
   i32.xor
   local.set $5
   local.get $4
   i32.const 8
   i32.const 1
   i32.sub
   i32.sub
   local.set $4
  end
  i32.const 1
  drop
  local.get $4
  i32.const 23
  i32.lt_u
  if (result i32)
   local.get $5
   i32.const 16
   i32.lt_u
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 368
   i32.const 284
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.load offset=4
  local.set $8
  local.get $1
  i32.load offset=8
  local.set $9
  local.get $8
  if
   local.get $8
   local.get $9
   call $~lib/rt/tlsf/Block#set:next
  end
  local.get $9
  if
   local.get $9
   local.get $8
   call $~lib/rt/tlsf/Block#set:prev
  end
  local.get $1
  local.get $0
  local.set $10
  local.get $4
  local.set $6
  local.get $5
  local.set $7
  local.get $10
  local.get $6
  i32.const 4
  i32.shl
  local.get $7
  i32.add
  i32.const 2
  i32.shl
  i32.add
  i32.load offset=96
  i32.eq
  if
   local.get $0
   local.set $11
   local.get $4
   local.set $10
   local.get $5
   local.set $6
   local.get $9
   local.set $7
   local.get $11
   local.get $10
   i32.const 4
   i32.shl
   local.get $6
   i32.add
   i32.const 2
   i32.shl
   i32.add
   local.get $7
   i32.store offset=96
   local.get $9
   i32.eqz
   if
    local.get $0
    local.set $6
    local.get $4
    local.set $7
    local.get $6
    local.get $7
    i32.const 2
    i32.shl
    i32.add
    i32.load offset=4
    local.set $6
    local.get $0
    local.set $7
    local.get $4
    local.set $11
    local.get $6
    i32.const 1
    local.get $5
    i32.shl
    i32.const -1
    i32.xor
    i32.and
    local.tee $6
    local.set $10
    local.get $7
    local.get $11
    i32.const 2
    i32.shl
    i32.add
    local.get $10
    i32.store offset=4
    local.get $6
    i32.eqz
    if
     local.get $0
     local.get $0
     i32.load
     i32.const 1
     local.get $4
     i32.shl
     i32.const -1
     i32.xor
     i32.and
     call $~lib/rt/tlsf/Root#set:flMap
    end
   end
  end
 )
 (func $~lib/rt/tlsf/insertBlock (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  i32.const 1
  drop
  local.get $1
  i32.eqz
  if
   i32.const 0
   i32.const 368
   i32.const 201
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.load
  local.set $2
  i32.const 1
  drop
  local.get $2
  i32.const 1
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 368
   i32.const 203
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  local.set $3
  local.get $3
  i32.const 4
  i32.add
  local.get $3
  i32.load
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  i32.add
  local.set $4
  local.get $4
  i32.load
  local.set $5
  local.get $5
  i32.const 1
  i32.and
  if
   local.get $0
   local.get $4
   call $~lib/rt/tlsf/removeBlock
   local.get $1
   local.get $2
   i32.const 4
   i32.add
   local.get $5
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   i32.add
   local.tee $2
   call $~lib/rt/common/BLOCK#set:mmInfo
   local.get $1
   local.set $3
   local.get $3
   i32.const 4
   i32.add
   local.get $3
   i32.load
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   i32.add
   local.set $4
   local.get $4
   i32.load
   local.set $5
  end
  local.get $2
  i32.const 2
  i32.and
  if
   local.get $1
   local.set $3
   local.get $3
   i32.const 4
   i32.sub
   i32.load
   local.set $3
   local.get $3
   i32.load
   local.set $6
   i32.const 1
   drop
   local.get $6
   i32.const 1
   i32.and
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 221
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   local.get $3
   call $~lib/rt/tlsf/removeBlock
   local.get $3
   local.set $1
   local.get $1
   local.get $6
   i32.const 4
   i32.add
   local.get $2
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   i32.add
   local.tee $2
   call $~lib/rt/common/BLOCK#set:mmInfo
  end
  local.get $4
  local.get $5
  i32.const 2
  i32.or
  call $~lib/rt/common/BLOCK#set:mmInfo
  local.get $2
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  local.set $7
  i32.const 1
  drop
  local.get $7
  i32.const 12
  i32.ge_u
  i32.eqz
  if
   i32.const 0
   i32.const 368
   i32.const 233
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  drop
  local.get $1
  i32.const 4
  i32.add
  local.get $7
  i32.add
  local.get $4
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 368
   i32.const 234
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  i32.const 4
  i32.sub
  local.get $1
  i32.store
  local.get $7
  i32.const 256
  i32.lt_u
  if
   i32.const 0
   local.set $8
   local.get $7
   i32.const 4
   i32.shr_u
   local.set $9
  else
   local.get $7
   local.tee $3
   i32.const 1073741820
   local.tee $6
   local.get $3
   local.get $6
   i32.lt_u
   select
   local.set $3
   i32.const 31
   local.get $3
   i32.clz
   i32.sub
   local.set $8
   local.get $3
   local.get $8
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 1
   i32.const 4
   i32.shl
   i32.xor
   local.set $9
   local.get $8
   i32.const 8
   i32.const 1
   i32.sub
   i32.sub
   local.set $8
  end
  i32.const 1
  drop
  local.get $8
  i32.const 23
  i32.lt_u
  if (result i32)
   local.get $9
   i32.const 16
   i32.lt_u
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 368
   i32.const 251
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.set $10
  local.get $8
  local.set $3
  local.get $9
  local.set $6
  local.get $10
  local.get $3
  i32.const 4
  i32.shl
  local.get $6
  i32.add
  i32.const 2
  i32.shl
  i32.add
  i32.load offset=96
  local.set $11
  local.get $1
  i32.const 0
  call $~lib/rt/tlsf/Block#set:prev
  local.get $1
  local.get $11
  call $~lib/rt/tlsf/Block#set:next
  local.get $11
  if
   local.get $11
   local.get $1
   call $~lib/rt/tlsf/Block#set:prev
  end
  local.get $0
  local.set $12
  local.get $8
  local.set $10
  local.get $9
  local.set $3
  local.get $1
  local.set $6
  local.get $12
  local.get $10
  i32.const 4
  i32.shl
  local.get $3
  i32.add
  i32.const 2
  i32.shl
  i32.add
  local.get $6
  i32.store offset=96
  local.get $0
  local.get $0
  i32.load
  i32.const 1
  local.get $8
  i32.shl
  i32.or
  call $~lib/rt/tlsf/Root#set:flMap
  local.get $0
  local.set $13
  local.get $8
  local.set $12
  local.get $0
  local.set $3
  local.get $8
  local.set $6
  local.get $3
  local.get $6
  i32.const 2
  i32.shl
  i32.add
  i32.load offset=4
  i32.const 1
  local.get $9
  i32.shl
  i32.or
  local.set $10
  local.get $13
  local.get $12
  i32.const 2
  i32.shl
  i32.add
  local.get $10
  i32.store offset=4
 )
 (func $~lib/rt/tlsf/addMemory (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  i32.const 1
  drop
  local.get $1
  local.get $2
  i32.le_u
  i32.eqz
  if
   i32.const 0
   i32.const 368
   i32.const 377
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 4
  i32.add
  i32.const 15
  i32.add
  i32.const 15
  i32.const -1
  i32.xor
  i32.and
  i32.const 4
  i32.sub
  local.set $1
  local.get $2
  i32.const 15
  i32.const -1
  i32.xor
  i32.and
  local.set $2
  local.get $0
  local.set $3
  local.get $3
  i32.load offset=1568
  local.set $4
  i32.const 0
  local.set $5
  local.get $4
  if
   i32.const 1
   drop
   local.get $1
   local.get $4
   i32.const 4
   i32.add
   i32.ge_u
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 384
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
   local.get $1
   i32.const 16
   i32.sub
   local.get $4
   i32.eq
   if
    local.get $1
    i32.const 16
    i32.sub
    local.set $1
    local.get $4
    i32.load
    local.set $5
   else
    nop
   end
  else
   i32.const 1
   drop
   local.get $1
   local.get $0
   i32.const 1572
   i32.add
   i32.ge_u
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 397
    i32.const 5
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $2
  local.get $1
  i32.sub
  local.set $6
  local.get $6
  i32.const 4
  i32.const 12
  i32.add
  i32.const 4
  i32.add
  i32.lt_u
  if
   i32.const 0
   return
  end
  local.get $6
  i32.const 2
  i32.const 4
  i32.mul
  i32.sub
  local.set $7
  local.get $1
  local.set $8
  local.get $8
  local.get $7
  i32.const 1
  i32.or
  local.get $5
  i32.const 2
  i32.and
  i32.or
  call $~lib/rt/common/BLOCK#set:mmInfo
  local.get $8
  i32.const 0
  call $~lib/rt/tlsf/Block#set:prev
  local.get $8
  i32.const 0
  call $~lib/rt/tlsf/Block#set:next
  local.get $1
  i32.const 4
  i32.add
  local.get $7
  i32.add
  local.set $4
  local.get $4
  i32.const 0
  i32.const 2
  i32.or
  call $~lib/rt/common/BLOCK#set:mmInfo
  local.get $0
  local.set $9
  local.get $4
  local.set $3
  local.get $9
  local.get $3
  i32.store offset=1568
  local.get $0
  local.get $8
  call $~lib/rt/tlsf/insertBlock
  i32.const 1
 )
 (func $~lib/rt/tlsf/initialize
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  i32.const 0
  drop
  global.get $~lib/memory/__heap_base
  i32.const 15
  i32.add
  i32.const 15
  i32.const -1
  i32.xor
  i32.and
  local.set $0
  memory.size
  local.set $1
  local.get $0
  i32.const 1572
  i32.add
  i32.const 65535
  i32.add
  i32.const 65535
  i32.const -1
  i32.xor
  i32.and
  i32.const 16
  i32.shr_u
  local.set $2
  local.get $2
  local.get $1
  i32.gt_s
  if (result i32)
   local.get $2
   local.get $1
   i32.sub
   memory.grow
   i32.const 0
   i32.lt_s
  else
   i32.const 0
  end
  if
   unreachable
  end
  local.get $0
  local.set $3
  local.get $3
  i32.const 0
  call $~lib/rt/tlsf/Root#set:flMap
  local.get $3
  local.set $5
  i32.const 0
  local.set $4
  local.get $5
  local.get $4
  i32.store offset=1568
  i32.const 0
  local.set $5
  loop $for-loop|0
   local.get $5
   i32.const 23
   i32.lt_u
   local.set $4
   local.get $4
   if
    local.get $3
    local.set $8
    local.get $5
    local.set $7
    i32.const 0
    local.set $6
    local.get $8
    local.get $7
    i32.const 2
    i32.shl
    i32.add
    local.get $6
    i32.store offset=4
    i32.const 0
    local.set $8
    loop $for-loop|1
     local.get $8
     i32.const 16
     i32.lt_u
     local.set $7
     local.get $7
     if
      local.get $3
      local.set $11
      local.get $5
      local.set $10
      local.get $8
      local.set $9
      i32.const 0
      local.set $6
      local.get $11
      local.get $10
      i32.const 4
      i32.shl
      local.get $9
      i32.add
      i32.const 2
      i32.shl
      i32.add
      local.get $6
      i32.store offset=96
      local.get $8
      i32.const 1
      i32.add
      local.set $8
      br $for-loop|1
     end
    end
    local.get $5
    i32.const 1
    i32.add
    local.set $5
    br $for-loop|0
   end
  end
  local.get $0
  i32.const 1572
  i32.add
  local.set $12
  i32.const 0
  drop
  local.get $3
  local.get $12
  memory.size
  i32.const 16
  i32.shl
  call $~lib/rt/tlsf/addMemory
  drop
  local.get $3
  global.set $~lib/rt/tlsf/ROOT
 )
 (func $~lib/rt/tlsf/checkUsedBlock (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.const 4
  i32.sub
  local.set $1
  local.get $0
  i32.const 0
  i32.ne
  if (result i32)
   local.get $0
   i32.const 15
   i32.and
   i32.eqz
  else
   i32.const 0
  end
  if (result i32)
   local.get $1
   i32.load
   i32.const 1
   i32.and
   i32.eqz
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 368
   i32.const 559
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
 )
 (func $~lib/rt/tlsf/freeBlock (param $0 i32) (param $1 i32)
  i32.const 0
  drop
  local.get $1
  local.get $1
  i32.load
  i32.const 1
  i32.or
  call $~lib/rt/common/BLOCK#set:mmInfo
  local.get $0
  local.get $1
  call $~lib/rt/tlsf/insertBlock
 )
 (func $~lib/rt/tlsf/__free (param $0 i32)
  local.get $0
  global.get $~lib/memory/__heap_base
  i32.lt_u
  if
   return
  end
  global.get $~lib/rt/tlsf/ROOT
  i32.eqz
  if
   call $~lib/rt/tlsf/initialize
  end
  global.get $~lib/rt/tlsf/ROOT
  local.get $0
  call $~lib/rt/tlsf/checkUsedBlock
  call $~lib/rt/tlsf/freeBlock
 )
 (func $~lib/rt/itcms/free (param $0 i32)
  local.get $0
  global.get $~lib/memory/__heap_base
  i32.lt_u
  if
   local.get $0
   i32.const 0
   call $~lib/rt/itcms/Object#set:nextWithColor
   local.get $0
   i32.const 0
   call $~lib/rt/itcms/Object#set:prev
  else
   global.get $~lib/rt/itcms/total
   local.get $0
   call $~lib/rt/itcms/Object#get:size
   i32.sub
   global.set $~lib/rt/itcms/total
   i32.const 0
   drop
   local.get $0
   i32.const 4
   i32.add
   call $~lib/rt/tlsf/__free
  end
 )
 (func $~lib/rt/itcms/step (result i32)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  block $break|0
   block $case2|0
    block $case1|0
     block $case0|0
      global.get $~lib/rt/itcms/state
      local.set $1
      local.get $1
      i32.const 0
      i32.eq
      br_if $case0|0
      local.get $1
      i32.const 1
      i32.eq
      br_if $case1|0
      local.get $1
      i32.const 2
      i32.eq
      br_if $case2|0
      br $break|0
     end
     i32.const 1
     global.set $~lib/rt/itcms/state
     i32.const 0
     global.set $~lib/rt/itcms/visitCount
     i32.const 0
     call $~lib/rt/itcms/visitRoots
     global.get $~lib/rt/itcms/toSpace
     global.set $~lib/rt/itcms/iter
     global.get $~lib/rt/itcms/visitCount
     i32.const 1
     i32.mul
     return
    end
    global.get $~lib/rt/itcms/white
    i32.eqz
    local.set $1
    global.get $~lib/rt/itcms/iter
    call $~lib/rt/itcms/Object#get:next
    local.set $0
    loop $while-continue|1
     local.get $0
     global.get $~lib/rt/itcms/toSpace
     i32.ne
     local.set $2
     local.get $2
     if
      local.get $0
      global.set $~lib/rt/itcms/iter
      local.get $0
      call $~lib/rt/itcms/Object#get:color
      local.get $1
      i32.ne
      if
       local.get $0
       local.get $1
       call $~lib/rt/itcms/Object#set:color
       i32.const 0
       global.set $~lib/rt/itcms/visitCount
       local.get $0
       i32.const 20
       i32.add
       i32.const 0
       call $~lib/rt/__visit_members
       global.get $~lib/rt/itcms/visitCount
       i32.const 1
       i32.mul
       return
      end
      local.get $0
      call $~lib/rt/itcms/Object#get:next
      local.set $0
      br $while-continue|1
     end
    end
    i32.const 0
    global.set $~lib/rt/itcms/visitCount
    i32.const 0
    call $~lib/rt/itcms/visitRoots
    global.get $~lib/rt/itcms/iter
    call $~lib/rt/itcms/Object#get:next
    local.set $0
    local.get $0
    global.get $~lib/rt/itcms/toSpace
    i32.eq
    if
     i32.const 0
     call $~lib/rt/itcms/visitStack
     global.get $~lib/rt/itcms/iter
     call $~lib/rt/itcms/Object#get:next
     local.set $0
     loop $while-continue|2
      local.get $0
      global.get $~lib/rt/itcms/toSpace
      i32.ne
      local.set $2
      local.get $2
      if
       local.get $0
       call $~lib/rt/itcms/Object#get:color
       local.get $1
       i32.ne
       if
        local.get $0
        local.get $1
        call $~lib/rt/itcms/Object#set:color
        local.get $0
        i32.const 20
        i32.add
        i32.const 0
        call $~lib/rt/__visit_members
       end
       local.get $0
       call $~lib/rt/itcms/Object#get:next
       local.set $0
       br $while-continue|2
      end
     end
     global.get $~lib/rt/itcms/fromSpace
     local.set $2
     global.get $~lib/rt/itcms/toSpace
     global.set $~lib/rt/itcms/fromSpace
     local.get $2
     global.set $~lib/rt/itcms/toSpace
     local.get $1
     global.set $~lib/rt/itcms/white
     local.get $2
     call $~lib/rt/itcms/Object#get:next
     global.set $~lib/rt/itcms/iter
     i32.const 2
     global.set $~lib/rt/itcms/state
    end
    global.get $~lib/rt/itcms/visitCount
    i32.const 1
    i32.mul
    return
   end
   global.get $~lib/rt/itcms/iter
   local.set $0
   local.get $0
   global.get $~lib/rt/itcms/toSpace
   i32.ne
   if
    local.get $0
    call $~lib/rt/itcms/Object#get:next
    global.set $~lib/rt/itcms/iter
    i32.const 1
    drop
    local.get $0
    call $~lib/rt/itcms/Object#get:color
    global.get $~lib/rt/itcms/white
    i32.eqz
    i32.eq
    i32.eqz
    if
     i32.const 0
     i32.const 96
     i32.const 228
     i32.const 20
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    call $~lib/rt/itcms/free
    i32.const 10
    return
   end
   global.get $~lib/rt/itcms/toSpace
   global.get $~lib/rt/itcms/toSpace
   call $~lib/rt/itcms/Object#set:nextWithColor
   global.get $~lib/rt/itcms/toSpace
   global.get $~lib/rt/itcms/toSpace
   call $~lib/rt/itcms/Object#set:prev
   i32.const 0
   global.set $~lib/rt/itcms/state
   br $break|0
  end
  i32.const 0
 )
 (func $~lib/rt/itcms/interrupt
  (local $0 i32)
  i32.const 0
  drop
  i32.const 0
  drop
  i32.const 1024
  i32.const 200
  i32.mul
  i32.const 100
  i32.div_u
  local.set $0
  loop $do-loop|0
   local.get $0
   call $~lib/rt/itcms/step
   i32.sub
   local.set $0
   global.get $~lib/rt/itcms/state
   i32.const 0
   i32.eq
   if
    i32.const 0
    drop
    global.get $~lib/rt/itcms/total
    i64.extend_i32_u
    i32.const 200
    i64.extend_i32_u
    i64.mul
    i64.const 100
    i64.div_u
    i32.wrap_i64
    i32.const 1024
    i32.add
    global.set $~lib/rt/itcms/threshold
    i32.const 0
    drop
    return
   end
   local.get $0
   i32.const 0
   i32.gt_s
   br_if $do-loop|0
  end
  i32.const 0
  drop
  global.get $~lib/rt/itcms/total
  i32.const 1024
  global.get $~lib/rt/itcms/total
  global.get $~lib/rt/itcms/threshold
  i32.sub
  i32.const 1024
  i32.lt_u
  i32.mul
  i32.add
  global.set $~lib/rt/itcms/threshold
  i32.const 0
  drop
 )
 (func $~lib/rt/tlsf/computeSize (param $0 i32) (result i32)
  local.get $0
  i32.const 12
  i32.le_u
  if (result i32)
   i32.const 12
  else
   local.get $0
   i32.const 4
   i32.add
   i32.const 15
   i32.add
   i32.const 15
   i32.const -1
   i32.xor
   i32.and
   i32.const 4
   i32.sub
  end
 )
 (func $~lib/rt/tlsf/prepareSize (param $0 i32) (result i32)
  local.get $0
  i32.const 1073741820
  i32.gt_u
  if
   i32.const 32
   i32.const 368
   i32.const 458
   i32.const 29
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/tlsf/computeSize
 )
 (func $~lib/rt/tlsf/searchBlock (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  local.get $1
  i32.const 256
  i32.lt_u
  if
   i32.const 0
   local.set $2
   local.get $1
   i32.const 4
   i32.shr_u
   local.set $3
  else
   local.get $1
   i32.const 536870910
   i32.lt_u
   if (result i32)
    local.get $1
    i32.const 1
    i32.const 27
    local.get $1
    i32.clz
    i32.sub
    i32.shl
    i32.add
    i32.const 1
    i32.sub
   else
    local.get $1
   end
   local.set $4
   i32.const 31
   local.get $4
   i32.clz
   i32.sub
   local.set $2
   local.get $4
   local.get $2
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 1
   i32.const 4
   i32.shl
   i32.xor
   local.set $3
   local.get $2
   i32.const 8
   i32.const 1
   i32.sub
   i32.sub
   local.set $2
  end
  i32.const 1
  drop
  local.get $2
  i32.const 23
  i32.lt_u
  if (result i32)
   local.get $3
   i32.const 16
   i32.lt_u
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 368
   i32.const 330
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.set $5
  local.get $2
  local.set $4
  local.get $5
  local.get $4
  i32.const 2
  i32.shl
  i32.add
  i32.load offset=4
  i32.const 0
  i32.const -1
  i32.xor
  local.get $3
  i32.shl
  i32.and
  local.set $6
  i32.const 0
  local.set $7
  local.get $6
  i32.eqz
  if
   local.get $0
   i32.load
   i32.const 0
   i32.const -1
   i32.xor
   local.get $2
   i32.const 1
   i32.add
   i32.shl
   i32.and
   local.set $5
   local.get $5
   i32.eqz
   if
    i32.const 0
    local.set $7
   else
    local.get $5
    i32.ctz
    local.set $2
    local.get $0
    local.set $8
    local.get $2
    local.set $4
    local.get $8
    local.get $4
    i32.const 2
    i32.shl
    i32.add
    i32.load offset=4
    local.set $6
    i32.const 1
    drop
    local.get $6
    i32.eqz
    if
     i32.const 0
     i32.const 368
     i32.const 343
     i32.const 18
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.set $9
    local.get $2
    local.set $8
    local.get $6
    i32.ctz
    local.set $4
    local.get $9
    local.get $8
    i32.const 4
    i32.shl
    local.get $4
    i32.add
    i32.const 2
    i32.shl
    i32.add
    i32.load offset=96
    local.set $7
   end
  else
   local.get $0
   local.set $9
   local.get $2
   local.set $8
   local.get $6
   i32.ctz
   local.set $4
   local.get $9
   local.get $8
   i32.const 4
   i32.shl
   local.get $4
   i32.add
   i32.const 2
   i32.shl
   i32.add
   i32.load offset=96
   local.set $7
  end
  local.get $7
 )
 (func $~lib/rt/tlsf/growMemory (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  i32.const 0
  drop
  local.get $1
  i32.const 536870910
  i32.lt_u
  if
   local.get $1
   i32.const 1
   i32.const 27
   local.get $1
   i32.clz
   i32.sub
   i32.shl
   i32.const 1
   i32.sub
   i32.add
   local.set $1
  end
  memory.size
  local.set $2
  local.get $1
  i32.const 4
  local.get $2
  i32.const 16
  i32.shl
  i32.const 4
  i32.sub
  local.get $0
  local.set $3
  local.get $3
  i32.load offset=1568
  i32.ne
  i32.shl
  i32.add
  local.set $1
  local.get $1
  i32.const 65535
  i32.add
  i32.const 65535
  i32.const -1
  i32.xor
  i32.and
  i32.const 16
  i32.shr_u
  local.set $4
  local.get $2
  local.tee $3
  local.get $4
  local.tee $5
  local.get $3
  local.get $5
  i32.gt_s
  select
  local.set $6
  local.get $6
  memory.grow
  i32.const 0
  i32.lt_s
  if
   local.get $4
   memory.grow
   i32.const 0
   i32.lt_s
   if
    unreachable
   end
  end
  memory.size
  local.set $7
  local.get $0
  local.get $2
  i32.const 16
  i32.shl
  local.get $7
  i32.const 16
  i32.shl
  call $~lib/rt/tlsf/addMemory
  drop
 )
 (func $~lib/rt/tlsf/prepareBlock (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $1
  i32.load
  local.set $3
  i32.const 1
  drop
  local.get $2
  i32.const 4
  i32.add
  i32.const 15
  i32.and
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 368
   i32.const 357
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  local.get $2
  i32.sub
  local.set $4
  local.get $4
  i32.const 4
  i32.const 12
  i32.add
  i32.ge_u
  if
   local.get $1
   local.get $2
   local.get $3
   i32.const 2
   i32.and
   i32.or
   call $~lib/rt/common/BLOCK#set:mmInfo
   local.get $1
   i32.const 4
   i32.add
   local.get $2
   i32.add
   local.set $5
   local.get $5
   local.get $4
   i32.const 4
   i32.sub
   i32.const 1
   i32.or
   call $~lib/rt/common/BLOCK#set:mmInfo
   local.get $0
   local.get $5
   call $~lib/rt/tlsf/insertBlock
  else
   local.get $1
   local.get $3
   i32.const 1
   i32.const -1
   i32.xor
   i32.and
   call $~lib/rt/common/BLOCK#set:mmInfo
   local.get $1
   local.set $5
   local.get $5
   i32.const 4
   i32.add
   local.get $5
   i32.load
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   i32.add
   local.get $1
   local.set $5
   local.get $5
   i32.const 4
   i32.add
   local.get $5
   i32.load
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   i32.add
   i32.load
   i32.const 2
   i32.const -1
   i32.xor
   i32.and
   call $~lib/rt/common/BLOCK#set:mmInfo
  end
 )
 (func $~lib/rt/tlsf/allocateBlock (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  call $~lib/rt/tlsf/prepareSize
  local.set $2
  local.get $0
  local.get $2
  call $~lib/rt/tlsf/searchBlock
  local.set $3
  local.get $3
  i32.eqz
  if
   local.get $0
   local.get $2
   call $~lib/rt/tlsf/growMemory
   local.get $0
   local.get $2
   call $~lib/rt/tlsf/searchBlock
   local.set $3
   i32.const 1
   drop
   local.get $3
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 496
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
  end
  i32.const 1
  drop
  local.get $3
  i32.load
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  local.get $2
  i32.ge_u
  i32.eqz
  if
   i32.const 0
   i32.const 368
   i32.const 498
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $3
  call $~lib/rt/tlsf/removeBlock
  local.get $0
  local.get $3
  local.get $2
  call $~lib/rt/tlsf/prepareBlock
  i32.const 0
  drop
  local.get $3
 )
 (func $~lib/rt/tlsf/__alloc (param $0 i32) (result i32)
  global.get $~lib/rt/tlsf/ROOT
  i32.eqz
  if
   call $~lib/rt/tlsf/initialize
  end
  global.get $~lib/rt/tlsf/ROOT
  local.get $0
  call $~lib/rt/tlsf/allocateBlock
  i32.const 4
  i32.add
 )
 (func $~lib/rt/itcms/Object#set:rtId (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=12
 )
 (func $~lib/rt/itcms/Object#set:rtSize (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=16
 )
 (func $~lib/memory/memory.fill (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i64)
  (local $10 i32)
  block $~lib/util/memory/memset|inlined.0
   local.get $0
   local.set $5
   local.get $1
   local.set $4
   local.get $2
   local.set $3
   i32.const 0
   i32.const 1
   i32.gt_s
   drop
   local.get $3
   i32.eqz
   if
    br $~lib/util/memory/memset|inlined.0
   end
   local.get $5
   local.get $3
   i32.add
   local.set $6
   local.get $5
   local.get $4
   i32.store8
   local.get $6
   i32.const 1
   i32.sub
   local.get $4
   i32.store8
   local.get $3
   i32.const 2
   i32.le_u
   if
    br $~lib/util/memory/memset|inlined.0
   end
   local.get $5
   local.get $4
   i32.store8 offset=1
   local.get $5
   local.get $4
   i32.store8 offset=2
   local.get $6
   i32.const 2
   i32.sub
   local.get $4
   i32.store8
   local.get $6
   i32.const 3
   i32.sub
   local.get $4
   i32.store8
   local.get $3
   i32.const 6
   i32.le_u
   if
    br $~lib/util/memory/memset|inlined.0
   end
   local.get $5
   local.get $4
   i32.store8 offset=3
   local.get $6
   i32.const 4
   i32.sub
   local.get $4
   i32.store8
   local.get $3
   i32.const 8
   i32.le_u
   if
    br $~lib/util/memory/memset|inlined.0
   end
   i32.const 0
   local.get $5
   i32.sub
   i32.const 3
   i32.and
   local.set $7
   local.get $5
   local.get $7
   i32.add
   local.set $5
   local.get $3
   local.get $7
   i32.sub
   local.set $3
   local.get $3
   i32.const -4
   i32.and
   local.set $3
   i32.const -1
   i32.const 255
   i32.div_u
   local.get $4
   i32.const 255
   i32.and
   i32.mul
   local.set $8
   local.get $5
   local.get $3
   i32.add
   local.set $6
   local.get $5
   local.get $8
   i32.store
   local.get $6
   i32.const 4
   i32.sub
   local.get $8
   i32.store
   local.get $3
   i32.const 8
   i32.le_u
   if
    br $~lib/util/memory/memset|inlined.0
   end
   local.get $5
   local.get $8
   i32.store offset=4
   local.get $5
   local.get $8
   i32.store offset=8
   local.get $6
   i32.const 12
   i32.sub
   local.get $8
   i32.store
   local.get $6
   i32.const 8
   i32.sub
   local.get $8
   i32.store
   local.get $3
   i32.const 24
   i32.le_u
   if
    br $~lib/util/memory/memset|inlined.0
   end
   local.get $5
   local.get $8
   i32.store offset=12
   local.get $5
   local.get $8
   i32.store offset=16
   local.get $5
   local.get $8
   i32.store offset=20
   local.get $5
   local.get $8
   i32.store offset=24
   local.get $6
   i32.const 28
   i32.sub
   local.get $8
   i32.store
   local.get $6
   i32.const 24
   i32.sub
   local.get $8
   i32.store
   local.get $6
   i32.const 20
   i32.sub
   local.get $8
   i32.store
   local.get $6
   i32.const 16
   i32.sub
   local.get $8
   i32.store
   i32.const 24
   local.get $5
   i32.const 4
   i32.and
   i32.add
   local.set $7
   local.get $5
   local.get $7
   i32.add
   local.set $5
   local.get $3
   local.get $7
   i32.sub
   local.set $3
   local.get $8
   i64.extend_i32_u
   local.get $8
   i64.extend_i32_u
   i64.const 32
   i64.shl
   i64.or
   local.set $9
   loop $while-continue|0
    local.get $3
    i32.const 32
    i32.ge_u
    local.set $10
    local.get $10
    if
     local.get $5
     local.get $9
     i64.store
     local.get $5
     local.get $9
     i64.store offset=8
     local.get $5
     local.get $9
     i64.store offset=16
     local.get $5
     local.get $9
     i64.store offset=24
     local.get $3
     i32.const 32
     i32.sub
     local.set $3
     local.get $5
     i32.const 32
     i32.add
     local.set $5
     br $while-continue|0
    end
   end
  end
 )
 (func $~lib/rt/itcms/__new (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.const 1073741804
  i32.ge_u
  if
   i32.const 32
   i32.const 96
   i32.const 260
   i32.const 31
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/rt/itcms/total
  global.get $~lib/rt/itcms/threshold
  i32.ge_u
  if
   call $~lib/rt/itcms/interrupt
  end
  i32.const 16
  local.get $0
  i32.add
  call $~lib/rt/tlsf/__alloc
  i32.const 4
  i32.sub
  local.set $2
  local.get $2
  local.get $1
  call $~lib/rt/itcms/Object#set:rtId
  local.get $2
  local.get $0
  call $~lib/rt/itcms/Object#set:rtSize
  local.get $2
  global.get $~lib/rt/itcms/fromSpace
  global.get $~lib/rt/itcms/white
  call $~lib/rt/itcms/Object#linkTo
  global.get $~lib/rt/itcms/total
  local.get $2
  call $~lib/rt/itcms/Object#get:size
  i32.add
  global.set $~lib/rt/itcms/total
  local.get $2
  i32.const 20
  i32.add
  local.set $3
  local.get $3
  i32.const 0
  local.get $0
  call $~lib/memory/memory.fill
  local.get $3
 )
 (func $algorithms/graph/minimum_spanning_tree/kruskals/index/MST#set:parent (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store
 )
 (func $algorithms/graph/minimum_spanning_tree/kruskals/index/MST#set:vertex (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=4
 )
 (func $algorithms/graph/minimum_spanning_tree/kruskals/index/MST#get:parent (param $0 i32) (result i32)
  local.get $0
  i32.load
 )
 (func $algorithms/graph/minimum_spanning_tree/kruskals/index/MST#get:vertex (param $0 i32) (result i32)
  local.get $0
  i32.load offset=4
 )
 (func $~lib/rt/itcms/__link (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $1
  i32.eqz
  if
   return
  end
  i32.const 1
  drop
  local.get $0
  i32.eqz
  if
   i32.const 0
   i32.const 96
   i32.const 294
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 20
  i32.sub
  local.set $3
  local.get $3
  call $~lib/rt/itcms/Object#get:color
  global.get $~lib/rt/itcms/white
  i32.eq
  if
   local.get $0
   i32.const 20
   i32.sub
   local.set $4
   local.get $4
   call $~lib/rt/itcms/Object#get:color
   local.set $5
   local.get $5
   global.get $~lib/rt/itcms/white
   i32.eqz
   i32.eq
   if
    local.get $2
    if
     local.get $4
     call $~lib/rt/itcms/Object#makeGray
    else
     local.get $3
     call $~lib/rt/itcms/Object#makeGray
    end
   else
    local.get $5
    i32.const 3
    i32.eq
    if (result i32)
     global.get $~lib/rt/itcms/state
     i32.const 1
     i32.eq
    else
     i32.const 0
    end
    if
     local.get $3
     call $~lib/rt/itcms/Object#makeGray
    end
   end
  end
 )
 (func $~lib/array/Array<algorithms/graph/minimum_spanning_tree/kruskals/index/EDGE>#set:buffer (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/array/Array<algorithms/graph/minimum_spanning_tree/kruskals/index/EDGE>#set:dataStart (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=4
 )
 (func $~lib/array/Array<algorithms/graph/minimum_spanning_tree/kruskals/index/EDGE>#set:byteLength (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=8
 )
 (func $~lib/array/Array<algorithms/graph/minimum_spanning_tree/kruskals/index/EDGE>#set:length_ (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=12
 )
 (func $~lib/array/Array<~lib/array/Array<i32>>#get:length (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
 )
 (func $~lib/array/Array<i32>#__get (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 224
   i32.const 480
   i32.const 114
   i32.const 42
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
  local.set $2
  i32.const 0
  drop
  local.get $2
 )
 (func $algorithms/graph/minimum_spanning_tree/kruskals/index/EDGE#set:src (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store
 )
 (func $algorithms/graph/minimum_spanning_tree/kruskals/index/EDGE#set:dest (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=4
 )
 (func $algorithms/graph/minimum_spanning_tree/kruskals/index/EDGE#set:weight (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=8
 )
 (func $~lib/util/memory/memcpy (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  loop $while-continue|0
   local.get $2
   if (result i32)
    local.get $1
    i32.const 3
    i32.and
   else
    i32.const 0
   end
   local.set $5
   local.get $5
   if
    local.get $0
    local.tee $6
    i32.const 1
    i32.add
    local.set $0
    local.get $6
    local.get $1
    local.tee $6
    i32.const 1
    i32.add
    local.set $1
    local.get $6
    i32.load8_u
    i32.store8
    local.get $2
    i32.const 1
    i32.sub
    local.set $2
    br $while-continue|0
   end
  end
  local.get $0
  i32.const 3
  i32.and
  i32.const 0
  i32.eq
  if
   loop $while-continue|1
    local.get $2
    i32.const 16
    i32.ge_u
    local.set $5
    local.get $5
    if
     local.get $0
     local.get $1
     i32.load
     i32.store
     local.get $0
     i32.const 4
     i32.add
     local.get $1
     i32.const 4
     i32.add
     i32.load
     i32.store
     local.get $0
     i32.const 8
     i32.add
     local.get $1
     i32.const 8
     i32.add
     i32.load
     i32.store
     local.get $0
     i32.const 12
     i32.add
     local.get $1
     i32.const 12
     i32.add
     i32.load
     i32.store
     local.get $1
     i32.const 16
     i32.add
     local.set $1
     local.get $0
     i32.const 16
     i32.add
     local.set $0
     local.get $2
     i32.const 16
     i32.sub
     local.set $2
     br $while-continue|1
    end
   end
   local.get $2
   i32.const 8
   i32.and
   if
    local.get $0
    local.get $1
    i32.load
    i32.store
    local.get $0
    i32.const 4
    i32.add
    local.get $1
    i32.const 4
    i32.add
    i32.load
    i32.store
    local.get $0
    i32.const 8
    i32.add
    local.set $0
    local.get $1
    i32.const 8
    i32.add
    local.set $1
   end
   local.get $2
   i32.const 4
   i32.and
   if
    local.get $0
    local.get $1
    i32.load
    i32.store
    local.get $0
    i32.const 4
    i32.add
    local.set $0
    local.get $1
    i32.const 4
    i32.add
    local.set $1
   end
   local.get $2
   i32.const 2
   i32.and
   if
    local.get $0
    local.get $1
    i32.load16_u
    i32.store16
    local.get $0
    i32.const 2
    i32.add
    local.set $0
    local.get $1
    i32.const 2
    i32.add
    local.set $1
   end
   local.get $2
   i32.const 1
   i32.and
   if
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
    i32.load8_u
    i32.store8
   end
   return
  end
  local.get $2
  i32.const 32
  i32.ge_u
  if
   block $break|2
    block $case2|2
     block $case1|2
      block $case0|2
       local.get $0
       i32.const 3
       i32.and
       local.set $5
       local.get $5
       i32.const 1
       i32.eq
       br_if $case0|2
       local.get $5
       i32.const 2
       i32.eq
       br_if $case1|2
       local.get $5
       i32.const 3
       i32.eq
       br_if $case2|2
       br $break|2
      end
      local.get $1
      i32.load
      local.set $3
      local.get $0
      local.tee $5
      i32.const 1
      i32.add
      local.set $0
      local.get $5
      local.get $1
      local.tee $5
      i32.const 1
      i32.add
      local.set $1
      local.get $5
      i32.load8_u
      i32.store8
      local.get $0
      local.tee $5
      i32.const 1
      i32.add
      local.set $0
      local.get $5
      local.get $1
      local.tee $5
      i32.const 1
      i32.add
      local.set $1
      local.get $5
      i32.load8_u
      i32.store8
      local.get $0
      local.tee $5
      i32.const 1
      i32.add
      local.set $0
      local.get $5
      local.get $1
      local.tee $5
      i32.const 1
      i32.add
      local.set $1
      local.get $5
      i32.load8_u
      i32.store8
      local.get $2
      i32.const 3
      i32.sub
      local.set $2
      loop $while-continue|3
       local.get $2
       i32.const 17
       i32.ge_u
       local.set $5
       local.get $5
       if
        local.get $1
        i32.const 1
        i32.add
        i32.load
        local.set $4
        local.get $0
        local.get $3
        i32.const 24
        i32.shr_u
        local.get $4
        i32.const 8
        i32.shl
        i32.or
        i32.store
        local.get $1
        i32.const 5
        i32.add
        i32.load
        local.set $3
        local.get $0
        i32.const 4
        i32.add
        local.get $4
        i32.const 24
        i32.shr_u
        local.get $3
        i32.const 8
        i32.shl
        i32.or
        i32.store
        local.get $1
        i32.const 9
        i32.add
        i32.load
        local.set $4
        local.get $0
        i32.const 8
        i32.add
        local.get $3
        i32.const 24
        i32.shr_u
        local.get $4
        i32.const 8
        i32.shl
        i32.or
        i32.store
        local.get $1
        i32.const 13
        i32.add
        i32.load
        local.set $3
        local.get $0
        i32.const 12
        i32.add
        local.get $4
        i32.const 24
        i32.shr_u
        local.get $3
        i32.const 8
        i32.shl
        i32.or
        i32.store
        local.get $1
        i32.const 16
        i32.add
        local.set $1
        local.get $0
        i32.const 16
        i32.add
        local.set $0
        local.get $2
        i32.const 16
        i32.sub
        local.set $2
        br $while-continue|3
       end
      end
      br $break|2
     end
     local.get $1
     i32.load
     local.set $3
     local.get $0
     local.tee $5
     i32.const 1
     i32.add
     local.set $0
     local.get $5
     local.get $1
     local.tee $5
     i32.const 1
     i32.add
     local.set $1
     local.get $5
     i32.load8_u
     i32.store8
     local.get $0
     local.tee $5
     i32.const 1
     i32.add
     local.set $0
     local.get $5
     local.get $1
     local.tee $5
     i32.const 1
     i32.add
     local.set $1
     local.get $5
     i32.load8_u
     i32.store8
     local.get $2
     i32.const 2
     i32.sub
     local.set $2
     loop $while-continue|4
      local.get $2
      i32.const 18
      i32.ge_u
      local.set $5
      local.get $5
      if
       local.get $1
       i32.const 2
       i32.add
       i32.load
       local.set $4
       local.get $0
       local.get $3
       i32.const 16
       i32.shr_u
       local.get $4
       i32.const 16
       i32.shl
       i32.or
       i32.store
       local.get $1
       i32.const 6
       i32.add
       i32.load
       local.set $3
       local.get $0
       i32.const 4
       i32.add
       local.get $4
       i32.const 16
       i32.shr_u
       local.get $3
       i32.const 16
       i32.shl
       i32.or
       i32.store
       local.get $1
       i32.const 10
       i32.add
       i32.load
       local.set $4
       local.get $0
       i32.const 8
       i32.add
       local.get $3
       i32.const 16
       i32.shr_u
       local.get $4
       i32.const 16
       i32.shl
       i32.or
       i32.store
       local.get $1
       i32.const 14
       i32.add
       i32.load
       local.set $3
       local.get $0
       i32.const 12
       i32.add
       local.get $4
       i32.const 16
       i32.shr_u
       local.get $3
       i32.const 16
       i32.shl
       i32.or
       i32.store
       local.get $1
       i32.const 16
       i32.add
       local.set $1
       local.get $0
       i32.const 16
       i32.add
       local.set $0
       local.get $2
       i32.const 16
       i32.sub
       local.set $2
       br $while-continue|4
      end
     end
     br $break|2
    end
    local.get $1
    i32.load
    local.set $3
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
    i32.load8_u
    i32.store8
    local.get $2
    i32.const 1
    i32.sub
    local.set $2
    loop $while-continue|5
     local.get $2
     i32.const 19
     i32.ge_u
     local.set $5
     local.get $5
     if
      local.get $1
      i32.const 3
      i32.add
      i32.load
      local.set $4
      local.get $0
      local.get $3
      i32.const 8
      i32.shr_u
      local.get $4
      i32.const 24
      i32.shl
      i32.or
      i32.store
      local.get $1
      i32.const 7
      i32.add
      i32.load
      local.set $3
      local.get $0
      i32.const 4
      i32.add
      local.get $4
      i32.const 8
      i32.shr_u
      local.get $3
      i32.const 24
      i32.shl
      i32.or
      i32.store
      local.get $1
      i32.const 11
      i32.add
      i32.load
      local.set $4
      local.get $0
      i32.const 8
      i32.add
      local.get $3
      i32.const 8
      i32.shr_u
      local.get $4
      i32.const 24
      i32.shl
      i32.or
      i32.store
      local.get $1
      i32.const 15
      i32.add
      i32.load
      local.set $3
      local.get $0
      i32.const 12
      i32.add
      local.get $4
      i32.const 8
      i32.shr_u
      local.get $3
      i32.const 24
      i32.shl
      i32.or
      i32.store
      local.get $1
      i32.const 16
      i32.add
      local.set $1
      local.get $0
      i32.const 16
      i32.add
      local.set $0
      local.get $2
      i32.const 16
      i32.sub
      local.set $2
      br $while-continue|5
     end
    end
    br $break|2
   end
  end
  local.get $2
  i32.const 16
  i32.and
  if
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
  end
  local.get $2
  i32.const 8
  i32.and
  if
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
  end
  local.get $2
  i32.const 4
  i32.and
  if
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
  end
  local.get $2
  i32.const 2
  i32.and
  if
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
  end
  local.get $2
  i32.const 1
  i32.and
  if
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
  end
 )
 (func $~lib/memory/memory.copy (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  block $~lib/util/memory/memmove|inlined.0
   local.get $0
   local.set $5
   local.get $1
   local.set $4
   local.get $2
   local.set $3
   local.get $5
   local.get $4
   i32.eq
   if
    br $~lib/util/memory/memmove|inlined.0
   end
   i32.const 0
   i32.const 1
   i32.lt_s
   drop
   local.get $4
   local.get $5
   i32.sub
   local.get $3
   i32.sub
   i32.const 0
   local.get $3
   i32.const 1
   i32.shl
   i32.sub
   i32.le_u
   if
    local.get $5
    local.get $4
    local.get $3
    call $~lib/util/memory/memcpy
    br $~lib/util/memory/memmove|inlined.0
   end
   local.get $5
   local.get $4
   i32.lt_u
   if
    i32.const 0
    i32.const 2
    i32.lt_s
    drop
    local.get $4
    i32.const 7
    i32.and
    local.get $5
    i32.const 7
    i32.and
    i32.eq
    if
     loop $while-continue|0
      local.get $5
      i32.const 7
      i32.and
      local.set $6
      local.get $6
      if
       local.get $3
       i32.eqz
       if
        br $~lib/util/memory/memmove|inlined.0
       end
       local.get $3
       i32.const 1
       i32.sub
       local.set $3
       local.get $5
       local.tee $7
       i32.const 1
       i32.add
       local.set $5
       local.get $7
       local.get $4
       local.tee $7
       i32.const 1
       i32.add
       local.set $4
       local.get $7
       i32.load8_u
       i32.store8
       br $while-continue|0
      end
     end
     loop $while-continue|1
      local.get $3
      i32.const 8
      i32.ge_u
      local.set $6
      local.get $6
      if
       local.get $5
       local.get $4
       i64.load
       i64.store
       local.get $3
       i32.const 8
       i32.sub
       local.set $3
       local.get $5
       i32.const 8
       i32.add
       local.set $5
       local.get $4
       i32.const 8
       i32.add
       local.set $4
       br $while-continue|1
      end
     end
    end
    loop $while-continue|2
     local.get $3
     local.set $6
     local.get $6
     if
      local.get $5
      local.tee $7
      i32.const 1
      i32.add
      local.set $5
      local.get $7
      local.get $4
      local.tee $7
      i32.const 1
      i32.add
      local.set $4
      local.get $7
      i32.load8_u
      i32.store8
      local.get $3
      i32.const 1
      i32.sub
      local.set $3
      br $while-continue|2
     end
    end
   else
    i32.const 0
    i32.const 2
    i32.lt_s
    drop
    local.get $4
    i32.const 7
    i32.and
    local.get $5
    i32.const 7
    i32.and
    i32.eq
    if
     loop $while-continue|3
      local.get $5
      local.get $3
      i32.add
      i32.const 7
      i32.and
      local.set $6
      local.get $6
      if
       local.get $3
       i32.eqz
       if
        br $~lib/util/memory/memmove|inlined.0
       end
       local.get $5
       local.get $3
       i32.const 1
       i32.sub
       local.tee $3
       i32.add
       local.get $4
       local.get $3
       i32.add
       i32.load8_u
       i32.store8
       br $while-continue|3
      end
     end
     loop $while-continue|4
      local.get $3
      i32.const 8
      i32.ge_u
      local.set $6
      local.get $6
      if
       local.get $3
       i32.const 8
       i32.sub
       local.set $3
       local.get $5
       local.get $3
       i32.add
       local.get $4
       local.get $3
       i32.add
       i64.load
       i64.store
       br $while-continue|4
      end
     end
    end
    loop $while-continue|5
     local.get $3
     local.set $6
     local.get $6
     if
      local.get $5
      local.get $3
      i32.const 1
      i32.sub
      local.tee $3
      i32.add
      local.get $4
      local.get $3
      i32.add
      i32.load8_u
      i32.store8
      br $while-continue|5
     end
    end
   end
  end
 )
 (func $~lib/rt/itcms/__renew (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  i32.const 20
  i32.sub
  local.set $2
  local.get $1
  local.get $2
  i32.load
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  i32.const 16
  i32.sub
  i32.le_u
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/Object#set:rtSize
   local.get $0
   return
  end
  local.get $1
  local.get $2
  i32.load offset=12
  call $~lib/rt/itcms/__new
  local.set $3
  local.get $3
  local.get $0
  local.get $1
  local.tee $4
  local.get $2
  i32.load offset=16
  local.tee $5
  local.get $4
  local.get $5
  i32.lt_u
  select
  call $~lib/memory/memory.copy
  local.get $3
 )
 (func $~lib/array/ensureCapacity (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $0
  i32.load offset=8
  local.set $4
  local.get $1
  local.get $4
  local.get $2
  i32.shr_u
  i32.gt_u
  if
   local.get $1
   i32.const 1073741820
   local.get $2
   i32.shr_u
   i32.gt_u
   if
    i32.const 432
    i32.const 480
    i32.const 19
    i32.const 48
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   i32.load
   local.set $5
   local.get $1
   local.tee $6
   i32.const 8
   local.tee $7
   local.get $6
   local.get $7
   i32.gt_u
   select
   local.get $2
   i32.shl
   local.set $6
   local.get $3
   if
    local.get $4
    i32.const 1
    i32.shl
    local.tee $7
    i32.const 1073741820
    local.tee $8
    local.get $7
    local.get $8
    i32.lt_u
    select
    local.tee $8
    local.get $6
    local.tee $7
    local.get $8
    local.get $7
    i32.gt_u
    select
    local.set $6
   end
   local.get $5
   local.get $6
   call $~lib/rt/itcms/__renew
   local.set $8
   i32.const 2
   global.get $~lib/shared/runtime/Runtime.Incremental
   i32.ne
   drop
   local.get $8
   local.get $5
   i32.ne
   if
    local.get $0
    local.get $8
    i32.store
    local.get $0
    local.get $8
    i32.store offset=4
    local.get $0
    local.get $8
    i32.const 0
    call $~lib/rt/itcms/__link
   end
   local.get $0
   local.get $6
   i32.store offset=8
  end
 )
 (func $~lib/array/Array<algorithms/graph/minimum_spanning_tree/kruskals/index/EDGE>#push (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.load offset=12
  local.set $2
  local.get $2
  i32.const 1
  i32.add
  local.set $3
  local.get $0
  local.get $3
  i32.const 2
  i32.const 1
  call $~lib/array/ensureCapacity
  i32.const 1
  drop
  local.get $0
  i32.load offset=4
  local.get $2
  i32.const 2
  i32.shl
  i32.add
  local.get $1
  i32.store
  local.get $0
  local.get $1
  i32.const 1
  call $~lib/rt/itcms/__link
  local.get $0
  local.get $3
  call $~lib/array/Array<algorithms/graph/minimum_spanning_tree/kruskals/index/EDGE>#set:length_
  local.get $3
 )
 (func $~lib/array/Array<i32>#set:length_ (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=12
 )
 (func $~lib/array/Array<i32>#__uset (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  local.get $2
  i32.store
  i32.const 0
  drop
 )
 (func $~lib/array/Array<i32>#__set (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   local.get $1
   i32.const 0
   i32.lt_s
   if
    i32.const 224
    i32.const 480
    i32.const 130
    i32.const 22
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   local.get $1
   i32.const 1
   i32.add
   i32.const 2
   i32.const 1
   call $~lib/array/ensureCapacity
   local.get $0
   local.get $1
   i32.const 1
   i32.add
   call $~lib/array/Array<i32>#set:length_
  end
  local.get $0
  local.get $1
  local.get $2
  call $~lib/array/Array<i32>#__uset
 )
 (func $algorithms/graph/minimum_spanning_tree/kruskals/index/mst~anonymous|0 (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load offset=8
  local.get $1
  i32.load offset=8
  i32.sub
 )
 (func $~lib/util/sort/insertionSort<algorithms/graph/minimum_spanning_tree/kruskals/index/EDGE> (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  i32.const 0
  i32.const 1
  i32.ge_s
  drop
  local.get $2
  local.get $1
  i32.sub
  i32.const 1
  i32.add
  local.set $5
  local.get $1
  local.get $5
  i32.const 1
  i32.and
  local.get $3
  local.get $5
  local.get $3
  i32.sub
  i32.const 1
  i32.and
  i32.sub
  local.get $3
  i32.const 0
  i32.eq
  select
  i32.add
  local.set $6
  loop $for-loop|0
   local.get $6
   local.get $2
   i32.le_s
   local.set $7
   local.get $7
   if
    global.get $~lib/memory/__stack_pointer
    local.get $0
    local.get $6
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.tee $8
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $0
    local.get $6
    i32.const 2
    i32.shl
    i32.add
    i32.load offset=4
    local.tee $9
    i32.store offset=4
    local.get $9
    local.set $10
    local.get $8
    local.set $11
    local.get $8
    local.get $9
    i32.const 2
    global.set $~argumentsLength
    local.get $4
    i32.load
    call_indirect $0 (type $i32_i32_=>_i32)
    i32.const 0
    i32.le_s
    if
     local.get $8
     local.set $10
     local.get $9
     local.set $11
    end
    local.get $6
    i32.const 1
    i32.sub
    local.set $12
    block $while-break|1
     loop $while-continue|1
      local.get $12
      local.get $1
      i32.ge_s
      local.set $13
      local.get $13
      if
       global.get $~lib/memory/__stack_pointer
       local.get $0
       local.get $12
       i32.const 2
       i32.shl
       i32.add
       i32.load
       local.tee $8
       i32.store
       local.get $8
       local.get $11
       i32.const 2
       global.set $~argumentsLength
       local.get $4
       i32.load
       call_indirect $0 (type $i32_i32_=>_i32)
       i32.const 0
       i32.gt_s
       if
        local.get $0
        local.get $12
        i32.const 2
        i32.shl
        i32.add
        local.get $8
        i32.store offset=8
        local.get $12
        i32.const 1
        i32.sub
        local.set $12
       else
        br $while-break|1
       end
       br $while-continue|1
      end
     end
    end
    local.get $0
    local.get $12
    i32.const 2
    i32.shl
    i32.add
    local.get $11
    i32.store offset=8
    block $while-break|2
     loop $while-continue|2
      local.get $12
      local.get $1
      i32.ge_s
      local.set $13
      local.get $13
      if
       global.get $~lib/memory/__stack_pointer
       local.get $0
       local.get $12
       i32.const 2
       i32.shl
       i32.add
       i32.load
       local.tee $8
       i32.store
       local.get $8
       local.get $10
       i32.const 2
       global.set $~argumentsLength
       local.get $4
       i32.load
       call_indirect $0 (type $i32_i32_=>_i32)
       i32.const 0
       i32.gt_s
       if
        local.get $0
        local.get $12
        i32.const 2
        i32.shl
        i32.add
        local.get $8
        i32.store offset=4
        local.get $12
        i32.const 1
        i32.sub
        local.set $12
       else
        br $while-break|2
       end
       br $while-continue|2
      end
     end
    end
    local.get $0
    local.get $12
    i32.const 2
    i32.shl
    i32.add
    local.get $10
    i32.store offset=4
    local.get $6
    i32.const 2
    i32.add
    local.set $6
    br $for-loop|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/util/sort/nodePower (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (result i32)
  (local $5 i64)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i64)
  (local $10 i64)
  local.get $1
  local.get $0
  i32.sub
  i32.const 1
  i32.add
  i64.extend_i32_u
  local.set $5
  local.get $3
  local.get $0
  i32.const 1
  i32.shl
  i32.sub
  local.set $6
  local.get $2
  local.get $6
  i32.add
  local.set $7
  local.get $4
  local.get $6
  i32.add
  i32.const 1
  i32.add
  local.set $8
  local.get $7
  i64.extend_i32_u
  i64.const 30
  i64.shl
  local.get $5
  i64.div_u
  local.set $9
  local.get $8
  i64.extend_i32_u
  i64.const 30
  i64.shl
  local.get $5
  i64.div_u
  local.set $10
  local.get $9
  local.get $10
  i64.xor
  i32.wrap_i64
  i32.clz
 )
 (func $~lib/util/sort/mergeRuns<algorithms/graph/minimum_spanning_tree/kruskals/index/EDGE> (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (param $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $2
  i32.const 1
  i32.sub
  local.set $2
  local.get $3
  local.get $2
  i32.add
  local.set $8
  local.get $2
  i32.const 1
  i32.add
  local.set $6
  loop $for-loop|0
   local.get $6
   local.get $1
   i32.gt_s
   local.set $9
   local.get $9
   if
    local.get $4
    local.get $6
    i32.const 1
    i32.sub
    i32.const 2
    i32.shl
    i32.add
    local.get $0
    local.get $6
    i32.const 1
    i32.sub
    i32.const 2
    i32.shl
    i32.add
    i32.load
    i32.store
    local.get $6
    i32.const 1
    i32.sub
    local.set $6
    br $for-loop|0
   end
  end
  local.get $2
  local.set $7
  loop $for-loop|1
   local.get $7
   local.get $3
   i32.lt_s
   local.set $9
   local.get $9
   if
    local.get $4
    local.get $8
    local.get $7
    i32.sub
    i32.const 2
    i32.shl
    i32.add
    local.get $0
    local.get $7
    i32.const 2
    i32.shl
    i32.add
    i32.load offset=4
    i32.store
    local.get $7
    i32.const 1
    i32.add
    local.set $7
    br $for-loop|1
   end
  end
  local.get $1
  local.set $9
  loop $for-loop|2
   local.get $9
   local.get $3
   i32.le_s
   local.set $10
   local.get $10
   if
    global.get $~lib/memory/__stack_pointer
    local.get $4
    local.get $7
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.tee $11
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $4
    local.get $6
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.tee $12
    i32.store offset=4
    local.get $11
    local.get $12
    i32.const 2
    global.set $~argumentsLength
    local.get $5
    i32.load
    call_indirect $0 (type $i32_i32_=>_i32)
    i32.const 0
    i32.lt_s
    if
     local.get $0
     local.get $9
     i32.const 2
     i32.shl
     i32.add
     local.get $11
     i32.store
     local.get $7
     i32.const 1
     i32.sub
     local.set $7
    else
     local.get $0
     local.get $9
     i32.const 2
     i32.shl
     i32.add
     local.get $12
     i32.store
     local.get $6
     i32.const 1
     i32.add
     local.set $6
    end
    local.get $9
    i32.const 1
    i32.add
    local.set $9
    br $for-loop|2
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/util/sort/SORT<algorithms/graph/minimum_spanning_tree/kruskals/index/EDGE> (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 i32)
  (local $16 i32)
  (local $17 i32)
  (local $18 i32)
  (local $19 i32)
  (local $20 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  local.get $1
  i32.const 48
  i32.le_s
  if
   local.get $1
   i32.const 1
   i32.le_s
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 12
    i32.add
    global.set $~lib/memory/__stack_pointer
    return
   end
   i32.const 0
   i32.const 1
   i32.lt_s
   drop
   block $break|0
    block $case1|0
     block $case0|0
      local.get $1
      local.set $3
      local.get $3
      i32.const 3
      i32.eq
      br_if $case0|0
      local.get $3
      i32.const 2
      i32.eq
      br_if $case1|0
      br $break|0
     end
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.load
     local.tee $3
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.load offset=4
     local.tee $4
     i32.store offset=4
     local.get $3
     local.get $4
     i32.const 2
     global.set $~argumentsLength
     local.get $2
     i32.load
     call_indirect $0 (type $i32_i32_=>_i32)
     i32.const 0
     i32.gt_s
     local.set $5
     local.get $0
     local.get $4
     local.get $3
     local.get $5
     select
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.get $3
     local.get $4
     local.get $5
     select
     local.tee $3
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.load offset=8
     local.tee $4
     i32.store offset=4
     local.get $3
     local.get $4
     i32.const 2
     global.set $~argumentsLength
     local.get $2
     i32.load
     call_indirect $0 (type $i32_i32_=>_i32)
     i32.const 0
     i32.gt_s
     local.set $5
     local.get $0
     local.get $4
     local.get $3
     local.get $5
     select
     i32.store offset=4
     local.get $0
     local.get $3
     local.get $4
     local.get $5
     select
     i32.store offset=8
    end
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.load
    local.tee $5
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.load offset=4
    local.tee $4
    i32.store offset=4
    local.get $5
    local.get $4
    i32.const 2
    global.set $~argumentsLength
    local.get $2
    i32.load
    call_indirect $0 (type $i32_i32_=>_i32)
    i32.const 0
    i32.gt_s
    local.set $3
    local.get $0
    local.get $4
    local.get $5
    local.get $3
    select
    i32.store
    local.get $0
    local.get $5
    local.get $4
    local.get $3
    select
    i32.store offset=4
    global.get $~lib/memory/__stack_pointer
    i32.const 12
    i32.add
    global.set $~lib/memory/__stack_pointer
    return
   end
   local.get $0
   i32.const 0
   local.get $1
   i32.const 1
   i32.sub
   i32.const 0
   local.get $2
   call $~lib/util/sort/insertionSort<algorithms/graph/minimum_spanning_tree/kruskals/index/EDGE>
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  local.get $1
  local.set $5
  i32.const 31
  local.get $5
  i32.clz
  i32.sub
  i32.const 2
  i32.add
  local.set $6
  local.get $6
  i32.const 2
  i32.shl
  local.set $7
  local.get $7
  i32.const 1
  i32.shl
  call $~lib/rt/tlsf/__alloc
  local.set $8
  local.get $8
  local.get $7
  i32.add
  local.set $9
  i32.const 0
  local.set $5
  loop $for-loop|1
   local.get $5
   local.get $6
   i32.lt_u
   local.set $3
   local.get $3
   if
    local.get $8
    local.get $5
    i32.const 2
    i32.shl
    i32.add
    i32.const -1
    i32.store
    local.get $5
    i32.const 1
    i32.add
    local.set $5
    br $for-loop|1
   end
  end
  local.get $1
  i32.const 2
  i32.shl
  call $~lib/rt/tlsf/__alloc
  local.set $10
  local.get $1
  i32.const 1
  i32.sub
  local.set $11
  local.get $0
  i32.const 0
  local.get $11
  local.get $2
  call $~lib/util/sort/extendRunRight<algorithms/graph/minimum_spanning_tree/kruskals/index/EDGE>
  local.set $12
  local.get $12
  i32.const 1
  i32.add
  local.set $13
  local.get $13
  i32.const 32
  i32.lt_s
  if
   local.get $11
   local.tee $4
   i32.const 32
   i32.const 1
   i32.sub
   local.tee $5
   local.get $4
   local.get $5
   i32.lt_s
   select
   local.set $12
   local.get $0
   i32.const 0
   local.get $12
   local.get $13
   local.get $2
   call $~lib/util/sort/insertionSort<algorithms/graph/minimum_spanning_tree/kruskals/index/EDGE>
  end
  i32.const 0
  local.set $14
  i32.const 0
  local.set $15
  loop $while-continue|2
   local.get $12
   local.get $11
   i32.lt_s
   local.set $4
   local.get $4
   if
    local.get $12
    i32.const 1
    i32.add
    local.set $5
    local.get $0
    local.get $5
    local.get $11
    local.get $2
    call $~lib/util/sort/extendRunRight<algorithms/graph/minimum_spanning_tree/kruskals/index/EDGE>
    local.set $3
    local.get $3
    local.get $5
    i32.sub
    i32.const 1
    i32.add
    local.set $16
    local.get $16
    i32.const 32
    i32.lt_s
    if
     local.get $11
     local.tee $17
     local.get $5
     i32.const 32
     i32.add
     i32.const 1
     i32.sub
     local.tee $18
     local.get $17
     local.get $18
     i32.lt_s
     select
     local.set $3
     local.get $0
     local.get $5
     local.get $3
     local.get $16
     local.get $2
     call $~lib/util/sort/insertionSort<algorithms/graph/minimum_spanning_tree/kruskals/index/EDGE>
    end
    i32.const 0
    local.get $11
    local.get $15
    local.get $5
    local.get $3
    call $~lib/util/sort/nodePower
    local.set $17
    local.get $14
    local.set $18
    loop $for-loop|3
     local.get $18
     local.get $17
     i32.gt_u
     local.set $19
     local.get $19
     if
      local.get $8
      local.get $18
      i32.const 2
      i32.shl
      i32.add
      i32.load
      local.set $20
      local.get $20
      i32.const -1
      i32.ne
      if
       local.get $0
       local.get $20
       local.get $9
       local.get $18
       i32.const 2
       i32.shl
       i32.add
       i32.load
       i32.const 1
       i32.add
       local.get $12
       local.get $10
       local.get $2
       call $~lib/util/sort/mergeRuns<algorithms/graph/minimum_spanning_tree/kruskals/index/EDGE>
       local.get $20
       local.set $15
       local.get $8
       local.get $18
       i32.const 2
       i32.shl
       i32.add
       i32.const -1
       i32.store
      end
      local.get $18
      i32.const 1
      i32.sub
      local.set $18
      br $for-loop|3
     end
    end
    local.get $8
    local.get $17
    i32.const 2
    i32.shl
    i32.add
    local.get $15
    i32.store
    local.get $9
    local.get $17
    i32.const 2
    i32.shl
    i32.add
    local.get $12
    i32.store
    local.get $5
    local.set $15
    local.get $3
    local.set $12
    local.get $17
    local.set $14
    br $while-continue|2
   end
  end
  local.get $14
  local.set $4
  loop $for-loop|4
   local.get $4
   i32.const 0
   i32.ne
   local.set $18
   local.get $18
   if
    local.get $8
    local.get $4
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.set $19
    local.get $19
    i32.const -1
    i32.ne
    if
     local.get $0
     local.get $19
     local.get $9
     local.get $4
     i32.const 2
     i32.shl
     i32.add
     i32.load
     i32.const 1
     i32.add
     local.get $11
     local.get $10
     local.get $2
     call $~lib/util/sort/mergeRuns<algorithms/graph/minimum_spanning_tree/kruskals/index/EDGE>
    end
    local.get $4
    i32.const 1
    i32.sub
    local.set $4
    br $for-loop|4
   end
  end
  local.get $10
  call $~lib/rt/tlsf/__free
  local.get $8
  call $~lib/rt/tlsf/__free
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/array/Array<algorithms/graph/minimum_spanning_tree/kruskals/index/EDGE>#sort (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $0
  i32.load offset=12
  local.get $1
  call $~lib/util/sort/SORT<algorithms/graph/minimum_spanning_tree/kruskals/index/EDGE>
  local.get $0
 )
 (func $~lib/set/Set<algorithms/graph/minimum_spanning_tree/kruskals/index/EDGE>#set:buckets (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/set/Set<algorithms/graph/minimum_spanning_tree/kruskals/index/EDGE>#set:bucketsMask (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=4
 )
 (func $~lib/set/Set<algorithms/graph/minimum_spanning_tree/kruskals/index/EDGE>#set:entries (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=8
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/set/Set<algorithms/graph/minimum_spanning_tree/kruskals/index/EDGE>#set:entriesCapacity (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=12
 )
 (func $~lib/set/Set<algorithms/graph/minimum_spanning_tree/kruskals/index/EDGE>#set:entriesOffset (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=16
 )
 (func $~lib/set/Set<algorithms/graph/minimum_spanning_tree/kruskals/index/EDGE>#set:entriesCount (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=20
 )
 (func $~lib/map/Map<i32,~lib/set/Set<i32>>#set:buckets (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/map/Map<i32,~lib/set/Set<i32>>#set:bucketsMask (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=4
 )
 (func $~lib/map/Map<i32,~lib/set/Set<i32>>#set:entries (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=8
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/map/Map<i32,~lib/set/Set<i32>>#set:entriesCapacity (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=12
 )
 (func $~lib/map/Map<i32,~lib/set/Set<i32>>#set:entriesOffset (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=16
 )
 (func $~lib/map/Map<i32,~lib/set/Set<i32>>#set:entriesCount (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=20
 )
 (func $algorithms/graph/minimum_spanning_tree/kruskals/index/GRAPH#set:adjacentList (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/array/Array<algorithms/graph/minimum_spanning_tree/kruskals/index/EDGE>#get:length (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
 )
 (func $~lib/util/hash/HASH<i32> (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 0
  drop
  i32.const 0
  drop
  i32.const 0
  drop
  i32.const 4
  i32.const 4
  i32.le_u
  drop
  local.get $0
  local.set $2
  i32.const 4
  local.set $1
  i32.const 0
  i32.const 374761393
  i32.add
  local.get $1
  i32.add
  local.set $3
  local.get $3
  local.get $2
  i32.const -1028477379
  i32.mul
  i32.add
  local.set $3
  local.get $3
  i32.const 17
  i32.rotl
  i32.const 668265263
  i32.mul
  local.set $3
  local.get $3
  local.get $3
  i32.const 15
  i32.shr_u
  i32.xor
  local.set $3
  local.get $3
  i32.const -2048144777
  i32.mul
  local.set $3
  local.get $3
  local.get $3
  i32.const 13
  i32.shr_u
  i32.xor
  local.set $3
  local.get $3
  i32.const -1028477379
  i32.mul
  local.set $3
  local.get $3
  local.get $3
  i32.const 16
  i32.shr_u
  i32.xor
  local.set $3
  local.get $3
  return
 )
 (func $~lib/map/Map<i32,~lib/set/Set<i32>>#find (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  i32.load
  local.get $2
  local.get $0
  i32.load offset=4
  i32.and
  i32.const 4
  i32.mul
  i32.add
  i32.load
  local.set $3
  loop $while-continue|0
   local.get $3
   local.set $4
   local.get $4
   if
    local.get $3
    i32.load offset=8
    local.set $5
    local.get $5
    i32.const 1
    i32.and
    i32.eqz
    if (result i32)
     local.get $3
     i32.load
     local.get $1
     i32.eq
    else
     i32.const 0
    end
    if
     local.get $3
     return
    end
    local.get $5
    i32.const 1
    i32.const -1
    i32.xor
    i32.and
    local.set $3
    br $while-continue|0
   end
  end
  i32.const 0
 )
 (func $~lib/map/Map<i32,~lib/set/Set<i32>>#has (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  local.get $1
  call $~lib/util/hash/HASH<i32>
  call $~lib/map/Map<i32,~lib/set/Set<i32>>#find
  i32.const 0
  i32.ne
 )
 (func $~lib/map/Map<i32,~lib/set/Set<i32>>#get (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  local.get $1
  local.get $1
  call $~lib/util/hash/HASH<i32>
  call $~lib/map/Map<i32,~lib/set/Set<i32>>#find
  local.set $2
  local.get $2
  i32.eqz
  if
   i32.const 800
   i32.const 864
   i32.const 105
   i32.const 17
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.load offset=4
 )
 (func $~lib/set/Set<i32>#set:buckets (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/set/Set<i32>#set:bucketsMask (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=4
 )
 (func $~lib/set/Set<i32>#set:entries (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=8
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/set/Set<i32>#set:entriesCapacity (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=12
 )
 (func $~lib/set/Set<i32>#set:entriesOffset (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=16
 )
 (func $~lib/set/Set<i32>#set:entriesCount (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=20
 )
 (func $~lib/set/Set<i32>#find (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  i32.load
  local.get $2
  local.get $0
  i32.load offset=4
  i32.and
  i32.const 4
  i32.mul
  i32.add
  i32.load
  local.set $3
  loop $while-continue|0
   local.get $3
   local.set $4
   local.get $4
   if
    local.get $3
    i32.load offset=4
    local.set $5
    local.get $5
    i32.const 1
    i32.and
    i32.eqz
    if (result i32)
     local.get $3
     i32.load
     local.get $1
     i32.eq
    else
     i32.const 0
    end
    if
     local.get $3
     return
    end
    local.get $5
    i32.const 1
    i32.const -1
    i32.xor
    i32.and
    local.set $3
    br $while-continue|0
   end
  end
  i32.const 0
 )
 (func $~lib/set/SetEntry<i32>#set:key (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store
 )
 (func $~lib/set/SetEntry<i32>#set:taggedNext (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=4
 )
 (func $~lib/set/Set<i32>#rehash (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $1
  i32.const 1
  i32.add
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  local.get $2
  i32.const 4
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.tee $3
  i32.store
  local.get $2
  i32.const 8
  i32.mul
  i32.const 3
  i32.div_s
  local.set $4
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  local.get $4
  i32.const 8
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.tee $5
  i32.store offset=4
  local.get $0
  i32.load offset=8
  local.set $6
  local.get $6
  local.get $0
  i32.load offset=16
  i32.const 8
  i32.mul
  i32.add
  local.set $7
  local.get $5
  local.set $8
  loop $while-continue|0
   local.get $6
   local.get $7
   i32.ne
   local.set $9
   local.get $9
   if
    local.get $6
    local.set $10
    local.get $10
    i32.load offset=4
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $8
     local.set $11
     local.get $10
     i32.load
     local.set $12
     local.get $11
     local.get $12
     call $~lib/set/SetEntry<i32>#set:key
     local.get $12
     call $~lib/util/hash/HASH<i32>
     local.get $1
     i32.and
     local.set $13
     local.get $3
     local.get $13
     i32.const 4
     i32.mul
     i32.add
     local.set $14
     local.get $11
     local.get $14
     i32.load
     call $~lib/set/SetEntry<i32>#set:taggedNext
     local.get $14
     local.get $8
     i32.store
     local.get $8
     i32.const 8
     i32.add
     local.set $8
    end
    local.get $6
    i32.const 8
    i32.add
    local.set $6
    br $while-continue|0
   end
  end
  local.get $0
  local.get $3
  call $~lib/set/Set<i32>#set:buckets
  local.get $0
  local.get $1
  call $~lib/set/Set<i32>#set:bucketsMask
  local.get $0
  local.get $5
  call $~lib/set/Set<i32>#set:entries
  local.get $0
  local.get $4
  call $~lib/set/Set<i32>#set:entriesCapacity
  local.get $0
  local.get $0
  i32.load offset=20
  call $~lib/set/Set<i32>#set:entriesOffset
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/set/Set<i32>#add (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  call $~lib/util/hash/HASH<i32>
  local.set $2
  local.get $0
  local.get $1
  local.get $2
  call $~lib/set/Set<i32>#find
  local.set $3
  local.get $3
  i32.eqz
  if
   local.get $0
   i32.load offset=16
   local.get $0
   i32.load offset=12
   i32.eq
   if
    local.get $0
    local.get $0
    i32.load offset=20
    local.get $0
    i32.load offset=12
    i32.const 3
    i32.mul
    i32.const 4
    i32.div_s
    i32.lt_s
    if (result i32)
     local.get $0
     i32.load offset=4
    else
     local.get $0
     i32.load offset=4
     i32.const 1
     i32.shl
     i32.const 1
     i32.or
    end
    call $~lib/set/Set<i32>#rehash
   end
   local.get $0
   i32.load offset=8
   local.get $0
   local.get $0
   i32.load offset=16
   local.tee $4
   i32.const 1
   i32.add
   call $~lib/set/Set<i32>#set:entriesOffset
   local.get $4
   i32.const 8
   i32.mul
   i32.add
   local.set $3
   local.get $3
   local.get $1
   call $~lib/set/SetEntry<i32>#set:key
   i32.const 0
   drop
   local.get $0
   local.get $0
   i32.load offset=20
   i32.const 1
   i32.add
   call $~lib/set/Set<i32>#set:entriesCount
   local.get $0
   i32.load
   local.get $2
   local.get $0
   i32.load offset=4
   i32.and
   i32.const 4
   i32.mul
   i32.add
   local.set $4
   local.get $3
   local.get $4
   i32.load
   call $~lib/set/SetEntry<i32>#set:taggedNext
   local.get $4
   local.get $3
   i32.store
  end
  local.get $0
 )
 (func $~lib/map/MapEntry<i32,~lib/set/Set<i32>>#set:value (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=4
 )
 (func $~lib/map/MapEntry<i32,~lib/set/Set<i32>>#set:key (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store
 )
 (func $~lib/map/MapEntry<i32,~lib/set/Set<i32>>#set:taggedNext (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=8
 )
 (func $~lib/map/Map<i32,~lib/set/Set<i32>>#rehash (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $1
  i32.const 1
  i32.add
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  local.get $2
  i32.const 4
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.tee $3
  i32.store
  local.get $2
  i32.const 8
  i32.mul
  i32.const 3
  i32.div_s
  local.set $4
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  local.get $4
  i32.const 12
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.tee $5
  i32.store offset=4
  local.get $0
  i32.load offset=8
  local.set $6
  local.get $6
  local.get $0
  i32.load offset=16
  i32.const 12
  i32.mul
  i32.add
  local.set $7
  local.get $5
  local.set $8
  loop $while-continue|0
   local.get $6
   local.get $7
   i32.ne
   local.set $9
   local.get $9
   if
    local.get $6
    local.set $10
    local.get $10
    i32.load offset=8
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $8
     local.set $11
     local.get $10
     i32.load
     local.set $12
     local.get $11
     local.get $12
     call $~lib/map/MapEntry<i32,~lib/set/Set<i32>>#set:key
     local.get $11
     local.get $10
     i32.load offset=4
     call $~lib/map/MapEntry<i32,~lib/set/Set<i32>>#set:value
     local.get $12
     call $~lib/util/hash/HASH<i32>
     local.get $1
     i32.and
     local.set $13
     local.get $3
     local.get $13
     i32.const 4
     i32.mul
     i32.add
     local.set $14
     local.get $11
     local.get $14
     i32.load
     call $~lib/map/MapEntry<i32,~lib/set/Set<i32>>#set:taggedNext
     local.get $14
     local.get $8
     i32.store
     local.get $8
     i32.const 12
     i32.add
     local.set $8
    end
    local.get $6
    i32.const 12
    i32.add
    local.set $6
    br $while-continue|0
   end
  end
  local.get $0
  local.get $3
  call $~lib/map/Map<i32,~lib/set/Set<i32>>#set:buckets
  local.get $0
  local.get $1
  call $~lib/map/Map<i32,~lib/set/Set<i32>>#set:bucketsMask
  local.get $0
  local.get $5
  call $~lib/map/Map<i32,~lib/set/Set<i32>>#set:entries
  local.get $0
  local.get $4
  call $~lib/map/Map<i32,~lib/set/Set<i32>>#set:entriesCapacity
  local.get $0
  local.get $0
  i32.load offset=20
  call $~lib/map/Map<i32,~lib/set/Set<i32>>#set:entriesOffset
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/map/Map<i32,bool>#set:buckets (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/map/Map<i32,bool>#set:bucketsMask (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=4
 )
 (func $~lib/map/Map<i32,bool>#set:entries (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=8
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/map/Map<i32,bool>#set:entriesCapacity (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=12
 )
 (func $~lib/map/Map<i32,bool>#set:entriesOffset (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=16
 )
 (func $~lib/map/Map<i32,bool>#set:entriesCount (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=20
 )
 (func $~lib/array/Array<i32>#set:buffer (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/array/Array<i32>#set:dataStart (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=4
 )
 (func $~lib/array/Array<i32>#set:byteLength (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=8
 )
 (func $~lib/array/Array<i32>#set:length (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.const 2
  i32.const 0
  call $~lib/array/ensureCapacity
  local.get $0
  local.get $1
  call $~lib/array/Array<i32>#set:length_
 )
 (func $~lib/array/Array<i32>#get:length (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
 )
 (func $~lib/map/Map<i32,bool>#toString (param $0 i32) (result i32)
  i32.const 912
 )
 (func $~lib/map/Map<i32,bool>#find (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  i32.load
  local.get $2
  local.get $0
  i32.load offset=4
  i32.and
  i32.const 4
  i32.mul
  i32.add
  i32.load
  local.set $3
  loop $while-continue|0
   local.get $3
   local.set $4
   local.get $4
   if
    local.get $3
    i32.load offset=8
    local.set $5
    local.get $5
    i32.const 1
    i32.and
    i32.eqz
    if (result i32)
     local.get $3
     i32.load
     local.get $1
     i32.eq
    else
     i32.const 0
    end
    if
     local.get $3
     return
    end
    local.get $5
    i32.const 1
    i32.const -1
    i32.xor
    i32.and
    local.set $3
    br $while-continue|0
   end
  end
  i32.const 0
 )
 (func $~lib/map/Map<i32,bool>#has (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  local.get $1
  call $~lib/util/hash/HASH<i32>
  call $~lib/map/Map<i32,bool>#find
  i32.const 0
  i32.ne
 )
 (func $~lib/map/Map<i32,bool>#get (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  local.get $1
  local.get $1
  call $~lib/util/hash/HASH<i32>
  call $~lib/map/Map<i32,bool>#find
  local.set $2
  local.get $2
  i32.eqz
  if
   i32.const 800
   i32.const 864
   i32.const 105
   i32.const 17
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.load8_u offset=4
 )
 (func $~lib/map/MapEntry<i32,bool>#set:value (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store8 offset=4
 )
 (func $~lib/map/MapEntry<i32,bool>#set:key (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store
 )
 (func $~lib/map/MapEntry<i32,bool>#set:taggedNext (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=8
 )
 (func $~lib/map/Map<i32,bool>#rehash (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $1
  i32.const 1
  i32.add
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  local.get $2
  i32.const 4
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.tee $3
  i32.store
  local.get $2
  i32.const 8
  i32.mul
  i32.const 3
  i32.div_s
  local.set $4
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  local.get $4
  i32.const 12
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.tee $5
  i32.store offset=4
  local.get $0
  i32.load offset=8
  local.set $6
  local.get $6
  local.get $0
  i32.load offset=16
  i32.const 12
  i32.mul
  i32.add
  local.set $7
  local.get $5
  local.set $8
  loop $while-continue|0
   local.get $6
   local.get $7
   i32.ne
   local.set $9
   local.get $9
   if
    local.get $6
    local.set $10
    local.get $10
    i32.load offset=8
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $8
     local.set $11
     local.get $10
     i32.load
     local.set $12
     local.get $11
     local.get $12
     call $~lib/map/MapEntry<i32,bool>#set:key
     local.get $11
     local.get $10
     i32.load8_u offset=4
     call $~lib/map/MapEntry<i32,bool>#set:value
     local.get $12
     call $~lib/util/hash/HASH<i32>
     local.get $1
     i32.and
     local.set $13
     local.get $3
     local.get $13
     i32.const 4
     i32.mul
     i32.add
     local.set $14
     local.get $11
     local.get $14
     i32.load
     call $~lib/map/MapEntry<i32,bool>#set:taggedNext
     local.get $14
     local.get $8
     i32.store
     local.get $8
     i32.const 12
     i32.add
     local.set $8
    end
    local.get $6
    i32.const 12
    i32.add
    local.set $6
    br $while-continue|0
   end
  end
  local.get $0
  local.get $3
  call $~lib/map/Map<i32,bool>#set:buckets
  local.get $0
  local.get $1
  call $~lib/map/Map<i32,bool>#set:bucketsMask
  local.get $0
  local.get $5
  call $~lib/map/Map<i32,bool>#set:entries
  local.get $0
  local.get $4
  call $~lib/map/Map<i32,bool>#set:entriesCapacity
  local.get $0
  local.get $0
  i32.load offset=20
  call $~lib/map/Map<i32,bool>#set:entriesOffset
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/set/Set<i32>#delete (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  local.get $1
  local.get $1
  call $~lib/util/hash/HASH<i32>
  call $~lib/set/Set<i32>#find
  local.set $2
  local.get $2
  i32.eqz
  if
   i32.const 0
   return
  end
  local.get $2
  local.get $2
  i32.load offset=4
  i32.const 1
  i32.or
  call $~lib/set/SetEntry<i32>#set:taggedNext
  local.get $0
  local.get $0
  i32.load offset=20
  i32.const 1
  i32.sub
  call $~lib/set/Set<i32>#set:entriesCount
  local.get $0
  i32.load offset=4
  i32.const 1
  i32.shr_u
  local.set $3
  local.get $3
  i32.const 1
  i32.add
  i32.const 4
  local.tee $4
  local.get $0
  i32.load offset=20
  local.tee $5
  local.get $4
  local.get $5
  i32.gt_u
  select
  i32.ge_u
  if (result i32)
   local.get $0
   i32.load offset=20
   local.get $0
   i32.load offset=12
   i32.const 3
   i32.mul
   i32.const 4
   i32.div_s
   i32.lt_s
  else
   i32.const 0
  end
  if
   local.get $0
   local.get $3
   call $~lib/set/Set<i32>#rehash
  end
  i32.const 1
 )
 (func $~lib/util/number/decimalCount32 (param $0 i32) (result i32)
  local.get $0
  i32.const 100000
  i32.lt_u
  if
   local.get $0
   i32.const 100
   i32.lt_u
   if
    i32.const 1
    local.get $0
    i32.const 10
    i32.ge_u
    i32.add
    return
   else
    i32.const 3
    local.get $0
    i32.const 10000
    i32.ge_u
    i32.add
    local.get $0
    i32.const 1000
    i32.ge_u
    i32.add
    return
   end
   unreachable
  else
   local.get $0
   i32.const 10000000
   i32.lt_u
   if
    i32.const 6
    local.get $0
    i32.const 1000000
    i32.ge_u
    i32.add
    return
   else
    i32.const 8
    local.get $0
    i32.const 1000000000
    i32.ge_u
    i32.add
    local.get $0
    i32.const 100000000
    i32.ge_u
    i32.add
    return
   end
   unreachable
  end
  unreachable
 )
 (func $~lib/util/number/utoa32_dec_lut (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i64)
  (local $9 i64)
  (local $10 i32)
  (local $11 i32)
  loop $while-continue|0
   local.get $1
   i32.const 10000
   i32.ge_u
   local.set $3
   local.get $3
   if
    local.get $1
    i32.const 10000
    i32.div_u
    local.set $4
    local.get $1
    i32.const 10000
    i32.rem_u
    local.set $5
    local.get $4
    local.set $1
    local.get $5
    i32.const 100
    i32.div_u
    local.set $6
    local.get $5
    i32.const 100
    i32.rem_u
    local.set $7
    i32.const 1212
    local.get $6
    i32.const 2
    i32.shl
    i32.add
    i64.load32_u
    local.set $8
    i32.const 1212
    local.get $7
    i32.const 2
    i32.shl
    i32.add
    i64.load32_u
    local.set $9
    local.get $2
    i32.const 4
    i32.sub
    local.set $2
    local.get $0
    local.get $2
    i32.const 1
    i32.shl
    i32.add
    local.get $8
    local.get $9
    i64.const 32
    i64.shl
    i64.or
    i64.store
    br $while-continue|0
   end
  end
  local.get $1
  i32.const 100
  i32.ge_u
  if
   local.get $1
   i32.const 100
   i32.div_u
   local.set $3
   local.get $1
   i32.const 100
   i32.rem_u
   local.set $10
   local.get $3
   local.set $1
   local.get $2
   i32.const 2
   i32.sub
   local.set $2
   i32.const 1212
   local.get $10
   i32.const 2
   i32.shl
   i32.add
   i32.load
   local.set $11
   local.get $0
   local.get $2
   i32.const 1
   i32.shl
   i32.add
   local.get $11
   i32.store
  end
  local.get $1
  i32.const 10
  i32.ge_u
  if
   local.get $2
   i32.const 2
   i32.sub
   local.set $2
   i32.const 1212
   local.get $1
   i32.const 2
   i32.shl
   i32.add
   i32.load
   local.set $11
   local.get $0
   local.get $2
   i32.const 1
   i32.shl
   i32.add
   local.get $11
   i32.store
  else
   local.get $2
   i32.const 1
   i32.sub
   local.set $2
   i32.const 48
   local.get $1
   i32.add
   local.set $11
   local.get $0
   local.get $2
   i32.const 1
   i32.shl
   i32.add
   local.get $11
   i32.store16
  end
 )
 (func $~lib/util/number/utoa_hex_lut (param $0 i32) (param $1 i64) (param $2 i32)
  (local $3 i32)
  loop $while-continue|0
   local.get $2
   i32.const 2
   i32.ge_u
   local.set $3
   local.get $3
   if
    local.get $2
    i32.const 2
    i32.sub
    local.set $2
    local.get $0
    local.get $2
    i32.const 1
    i32.shl
    i32.add
    i32.const 1632
    local.get $1
    i32.wrap_i64
    i32.const 255
    i32.and
    i32.const 2
    i32.shl
    i32.add
    i32.load
    i32.store
    local.get $1
    i64.const 8
    i64.shr_u
    local.set $1
    br $while-continue|0
   end
  end
  local.get $2
  i32.const 1
  i32.and
  if
   local.get $0
   i32.const 1632
   local.get $1
   i32.wrap_i64
   i32.const 6
   i32.shl
   i32.add
   i32.load16_u
   i32.store16
  end
 )
 (func $~lib/util/number/ulog_base (param $0 i64) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i64)
  (local $4 i64)
  (local $5 i32)
  local.get $1
  local.set $2
  local.get $2
  i32.popcnt
  i32.const 1
  i32.eq
  if
   i32.const 63
   local.get $0
   i64.clz
   i32.wrap_i64
   i32.sub
   i32.const 31
   local.get $1
   i32.clz
   i32.sub
   i32.div_u
   i32.const 1
   i32.add
   return
  end
  local.get $1
  i64.extend_i32_s
  local.set $3
  local.get $3
  local.set $4
  i32.const 1
  local.set $5
  loop $while-continue|0
   local.get $0
   local.get $4
   i64.ge_u
   local.set $2
   local.get $2
   if
    local.get $0
    local.get $4
    i64.div_u
    local.set $0
    local.get $4
    local.get $4
    i64.mul
    local.set $4
    local.get $5
    i32.const 1
    i32.shl
    local.set $5
    br $while-continue|0
   end
  end
  loop $while-continue|1
   local.get $0
   i64.const 1
   i64.ge_u
   local.set $2
   local.get $2
   if
    local.get $0
    local.get $3
    i64.div_u
    local.set $0
    local.get $5
    i32.const 1
    i32.add
    local.set $5
    br $while-continue|1
   end
  end
  local.get $5
  i32.const 1
  i32.sub
 )
 (func $~lib/util/number/utoa64_any_core (param $0 i32) (param $1 i64) (param $2 i32) (param $3 i32)
  (local $4 i64)
  (local $5 i64)
  (local $6 i64)
  local.get $3
  i64.extend_i32_s
  local.set $4
  local.get $3
  local.get $3
  i32.const 1
  i32.sub
  i32.and
  i32.const 0
  i32.eq
  if
   local.get $3
   i32.ctz
   i32.const 7
   i32.and
   i64.extend_i32_s
   local.set $5
   local.get $4
   i64.const 1
   i64.sub
   local.set $6
   loop $do-loop|0
    local.get $2
    i32.const 1
    i32.sub
    local.set $2
    local.get $0
    local.get $2
    i32.const 1
    i32.shl
    i32.add
    i32.const 2688
    local.get $1
    local.get $6
    i64.and
    i32.wrap_i64
    i32.const 1
    i32.shl
    i32.add
    i32.load16_u
    i32.store16
    local.get $1
    local.get $5
    i64.shr_u
    local.set $1
    local.get $1
    i64.const 0
    i64.ne
    br_if $do-loop|0
   end
  else
   loop $do-loop|1
    local.get $2
    i32.const 1
    i32.sub
    local.set $2
    local.get $1
    local.get $4
    i64.div_u
    local.set $6
    local.get $0
    local.get $2
    i32.const 1
    i32.shl
    i32.add
    i32.const 2688
    local.get $1
    local.get $6
    local.get $4
    i64.mul
    i64.sub
    i32.wrap_i64
    i32.const 1
    i32.shl
    i32.add
    i32.load16_u
    i32.store16
    local.get $6
    local.set $1
    local.get $1
    i64.const 0
    i64.ne
    br_if $do-loop|1
   end
  end
 )
 (func $~lib/number/I32#toString (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  call $~lib/util/number/itoa32
 )
 (func $~lib/string/String#get:length (param $0 i32) (result i32)
  local.get $0
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.const 1
  i32.shr_u
 )
 (func $~lib/string/String.__concat (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  call $~lib/string/String#concat
 )
 (func $~lib/util/hash/HASH<algorithms/graph/minimum_spanning_tree/kruskals/index/EDGE> (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 0
  drop
  i32.const 1
  drop
  i32.const 4
  i32.const 4
  i32.eq
  drop
  local.get $0
  local.set $1
  i32.const 4
  local.set $2
  i32.const 0
  i32.const 374761393
  i32.add
  local.get $2
  i32.add
  local.set $3
  local.get $3
  local.get $1
  i32.const -1028477379
  i32.mul
  i32.add
  local.set $3
  local.get $3
  i32.const 17
  i32.rotl
  i32.const 668265263
  i32.mul
  local.set $3
  local.get $3
  local.get $3
  i32.const 15
  i32.shr_u
  i32.xor
  local.set $3
  local.get $3
  i32.const -2048144777
  i32.mul
  local.set $3
  local.get $3
  local.get $3
  i32.const 13
  i32.shr_u
  i32.xor
  local.set $3
  local.get $3
  i32.const -1028477379
  i32.mul
  local.set $3
  local.get $3
  local.get $3
  i32.const 16
  i32.shr_u
  i32.xor
  local.set $3
  local.get $3
  return
 )
 (func $~lib/set/Set<algorithms/graph/minimum_spanning_tree/kruskals/index/EDGE>#find (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  i32.load
  local.get $2
  local.get $0
  i32.load offset=4
  i32.and
  i32.const 4
  i32.mul
  i32.add
  i32.load
  local.set $3
  loop $while-continue|0
   local.get $3
   local.set $4
   local.get $4
   if
    local.get $3
    i32.load offset=4
    local.set $5
    local.get $5
    i32.const 1
    i32.and
    i32.eqz
    if (result i32)
     local.get $3
     i32.load
     local.get $1
     i32.eq
    else
     i32.const 0
    end
    if
     local.get $3
     return
    end
    local.get $5
    i32.const 1
    i32.const -1
    i32.xor
    i32.and
    local.set $3
    br $while-continue|0
   end
  end
  i32.const 0
 )
 (func $~lib/set/SetEntry<algorithms/graph/minimum_spanning_tree/kruskals/index/EDGE>#set:key (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store
 )
 (func $~lib/set/SetEntry<algorithms/graph/minimum_spanning_tree/kruskals/index/EDGE>#set:taggedNext (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=4
 )
 (func $~lib/set/Set<algorithms/graph/minimum_spanning_tree/kruskals/index/EDGE>#rehash (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  local.get $1
  i32.const 1
  i32.add
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  local.get $2
  i32.const 4
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.tee $3
  i32.store
  local.get $2
  i32.const 8
  i32.mul
  i32.const 3
  i32.div_s
  local.set $4
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  local.get $4
  i32.const 8
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.tee $5
  i32.store offset=4
  local.get $0
  i32.load offset=8
  local.set $6
  local.get $6
  local.get $0
  i32.load offset=16
  i32.const 8
  i32.mul
  i32.add
  local.set $7
  local.get $5
  local.set $8
  loop $while-continue|0
   local.get $6
   local.get $7
   i32.ne
   local.set $9
   local.get $9
   if
    local.get $6
    local.set $10
    local.get $10
    i32.load offset=4
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $8
     local.set $11
     global.get $~lib/memory/__stack_pointer
     local.get $10
     i32.load
     local.tee $12
     i32.store offset=8
     local.get $11
     local.get $12
     call $~lib/set/SetEntry<algorithms/graph/minimum_spanning_tree/kruskals/index/EDGE>#set:key
     local.get $12
     call $~lib/util/hash/HASH<algorithms/graph/minimum_spanning_tree/kruskals/index/EDGE>
     local.get $1
     i32.and
     local.set $13
     local.get $3
     local.get $13
     i32.const 4
     i32.mul
     i32.add
     local.set $14
     local.get $11
     local.get $14
     i32.load
     call $~lib/set/SetEntry<algorithms/graph/minimum_spanning_tree/kruskals/index/EDGE>#set:taggedNext
     local.get $14
     local.get $8
     i32.store
     local.get $8
     i32.const 8
     i32.add
     local.set $8
    end
    local.get $6
    i32.const 8
    i32.add
    local.set $6
    br $while-continue|0
   end
  end
  local.get $0
  local.get $3
  call $~lib/set/Set<algorithms/graph/minimum_spanning_tree/kruskals/index/EDGE>#set:buckets
  local.get $0
  local.get $1
  call $~lib/set/Set<algorithms/graph/minimum_spanning_tree/kruskals/index/EDGE>#set:bucketsMask
  local.get $0
  local.get $5
  call $~lib/set/Set<algorithms/graph/minimum_spanning_tree/kruskals/index/EDGE>#set:entries
  local.get $0
  local.get $4
  call $~lib/set/Set<algorithms/graph/minimum_spanning_tree/kruskals/index/EDGE>#set:entriesCapacity
  local.get $0
  local.get $0
  i32.load offset=20
  call $~lib/set/Set<algorithms/graph/minimum_spanning_tree/kruskals/index/EDGE>#set:entriesOffset
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/set/Set<algorithms/graph/minimum_spanning_tree/kruskals/index/EDGE>#add (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  call $~lib/util/hash/HASH<algorithms/graph/minimum_spanning_tree/kruskals/index/EDGE>
  local.set $2
  local.get $0
  local.get $1
  local.get $2
  call $~lib/set/Set<algorithms/graph/minimum_spanning_tree/kruskals/index/EDGE>#find
  local.set $3
  local.get $3
  i32.eqz
  if
   local.get $0
   i32.load offset=16
   local.get $0
   i32.load offset=12
   i32.eq
   if
    local.get $0
    local.get $0
    i32.load offset=20
    local.get $0
    i32.load offset=12
    i32.const 3
    i32.mul
    i32.const 4
    i32.div_s
    i32.lt_s
    if (result i32)
     local.get $0
     i32.load offset=4
    else
     local.get $0
     i32.load offset=4
     i32.const 1
     i32.shl
     i32.const 1
     i32.or
    end
    call $~lib/set/Set<algorithms/graph/minimum_spanning_tree/kruskals/index/EDGE>#rehash
   end
   local.get $0
   i32.load offset=8
   local.get $0
   local.get $0
   i32.load offset=16
   local.tee $4
   i32.const 1
   i32.add
   call $~lib/set/Set<algorithms/graph/minimum_spanning_tree/kruskals/index/EDGE>#set:entriesOffset
   local.get $4
   i32.const 8
   i32.mul
   i32.add
   local.set $3
   local.get $3
   local.get $1
   call $~lib/set/SetEntry<algorithms/graph/minimum_spanning_tree/kruskals/index/EDGE>#set:key
   i32.const 1
   drop
   local.get $0
   local.get $1
   i32.const 1
   call $~lib/rt/itcms/__link
   local.get $0
   local.get $0
   i32.load offset=20
   i32.const 1
   i32.add
   call $~lib/set/Set<algorithms/graph/minimum_spanning_tree/kruskals/index/EDGE>#set:entriesCount
   local.get $0
   i32.load
   local.get $2
   local.get $0
   i32.load offset=4
   i32.and
   i32.const 4
   i32.mul
   i32.add
   local.set $4
   local.get $3
   local.get $4
   i32.load
   call $~lib/set/SetEntry<algorithms/graph/minimum_spanning_tree/kruskals/index/EDGE>#set:taggedNext
   local.get $4
   local.get $3
   i32.store
  end
  local.get $0
 )
 (func $~lib/array/Array<algorithms/graph/minimum_spanning_tree/kruskals/index/EDGE>#__uset (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  local.get $2
  i32.store
  i32.const 1
  drop
  local.get $0
  local.get $2
  i32.const 1
  call $~lib/rt/itcms/__link
 )
 (func $~lib/array/Array<algorithms/graph/minimum_spanning_tree/kruskals/index/EDGE>#__set (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   local.get $1
   i32.const 0
   i32.lt_s
   if
    i32.const 224
    i32.const 480
    i32.const 130
    i32.const 22
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   local.get $1
   i32.const 1
   i32.add
   i32.const 2
   i32.const 1
   call $~lib/array/ensureCapacity
   local.get $0
   local.get $1
   i32.const 1
   i32.add
   call $~lib/array/Array<algorithms/graph/minimum_spanning_tree/kruskals/index/EDGE>#set:length_
  end
  local.get $0
  local.get $1
  local.get $2
  call $~lib/array/Array<algorithms/graph/minimum_spanning_tree/kruskals/index/EDGE>#__uset
 )
 (func $~lib/array/Array<algorithms/graph/minimum_spanning_tree/kruskals/index/EDGE>#set:length (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.const 2
  i32.const 0
  call $~lib/array/ensureCapacity
  local.get $0
  local.get $1
  call $~lib/array/Array<algorithms/graph/minimum_spanning_tree/kruskals/index/EDGE>#set:length_
 )
 (func $~lib/rt/__newBuffer (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $0
  local.get $1
  call $~lib/rt/itcms/__new
  local.set $3
  local.get $2
  if
   local.get $3
   local.get $2
   local.get $0
   call $~lib/memory/memory.copy
  end
  local.get $3
 )
 (func $~lib/rt/itcms/__pin (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  if
   local.get $0
   i32.const 20
   i32.sub
   local.set $1
   local.get $1
   call $~lib/rt/itcms/Object#get:color
   i32.const 3
   i32.eq
   if
    i32.const 2880
    i32.const 96
    i32.const 337
    i32.const 7
    call $~lib/builtins/abort
    unreachable
   end
   local.get $1
   call $~lib/rt/itcms/Object#unlink
   local.get $1
   global.get $~lib/rt/itcms/pinSpace
   i32.const 3
   call $~lib/rt/itcms/Object#linkTo
  end
  local.get $0
 )
 (func $~lib/rt/itcms/__unpin (param $0 i32)
  (local $1 i32)
  local.get $0
  i32.eqz
  if
   return
  end
  local.get $0
  i32.const 20
  i32.sub
  local.set $1
  local.get $1
  call $~lib/rt/itcms/Object#get:color
  i32.const 3
  i32.ne
  if
   i32.const 2944
   i32.const 96
   i32.const 351
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/rt/itcms/state
  i32.const 1
  i32.eq
  if
   local.get $1
   call $~lib/rt/itcms/Object#makeGray
  else
   local.get $1
   call $~lib/rt/itcms/Object#unlink
   local.get $1
   global.get $~lib/rt/itcms/fromSpace
   global.get $~lib/rt/itcms/white
   call $~lib/rt/itcms/Object#linkTo
  end
 )
 (func $~lib/rt/itcms/__collect
  (local $0 i32)
  i32.const 0
  drop
  global.get $~lib/rt/itcms/state
  i32.const 0
  i32.gt_s
  if
   loop $while-continue|0
    global.get $~lib/rt/itcms/state
    i32.const 0
    i32.ne
    local.set $0
    local.get $0
    if
     call $~lib/rt/itcms/step
     drop
     br $while-continue|0
    end
   end
  end
  call $~lib/rt/itcms/step
  drop
  loop $while-continue|1
   global.get $~lib/rt/itcms/state
   i32.const 0
   i32.ne
   local.set $0
   local.get $0
   if
    call $~lib/rt/itcms/step
    drop
    br $while-continue|1
   end
  end
  global.get $~lib/rt/itcms/total
  i64.extend_i32_u
  i32.const 200
  i64.extend_i32_u
  i64.mul
  i64.const 100
  i64.div_u
  i32.wrap_i64
  i32.const 1024
  i32.add
  global.set $~lib/rt/itcms/threshold
  i32.const 0
  drop
  i32.const 0
  drop
 )
 (func $~lib/rt/__visit_globals (param $0 i32)
  (local $1 i32)
  i32.const 224
  local.get $0
  call $~lib/rt/itcms/__visit
  i32.const 432
  local.get $0
  call $~lib/rt/itcms/__visit
  i32.const 752
  local.get $0
  call $~lib/rt/itcms/__visit
  i32.const 528
  local.get $0
  call $~lib/rt/itcms/__visit
  i32.const 800
  local.get $0
  call $~lib/rt/itcms/__visit
  i32.const 32
  local.get $0
  call $~lib/rt/itcms/__visit
  i32.const 2880
  local.get $0
  call $~lib/rt/itcms/__visit
  i32.const 2944
  local.get $0
  call $~lib/rt/itcms/__visit
  i32.const 1632
  local.get $0
  call $~lib/rt/itcms/__visit
  i32.const 2688
  local.get $0
  call $~lib/rt/itcms/__visit
 )
 (func $~lib/arraybuffer/ArrayBufferView~visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  i32.load
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
 )
 (func $~lib/array/Array<algorithms/graph/minimum_spanning_tree/kruskals/index/MST>#__visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  i32.const 1
  drop
  local.get $0
  i32.load offset=4
  local.set $2
  local.get $2
  local.get $0
  i32.load offset=12
  i32.const 2
  i32.shl
  i32.add
  local.set $3
  loop $while-continue|0
   local.get $2
   local.get $3
   i32.lt_u
   local.set $4
   local.get $4
   if
    local.get $2
    i32.load
    local.set $5
    local.get $5
    if
     local.get $5
     local.get $1
     call $~lib/rt/itcms/__visit
    end
    local.get $2
    i32.const 4
    i32.add
    local.set $2
    br $while-continue|0
   end
  end
  local.get $0
  i32.load
  local.get $1
  call $~lib/rt/itcms/__visit
 )
 (func $~lib/array/Array<algorithms/graph/minimum_spanning_tree/kruskals/index/MST>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/array/Array<algorithms/graph/minimum_spanning_tree/kruskals/index/MST>#__visit
 )
 (func $~lib/array/Array<i32>#__visit (param $0 i32) (param $1 i32)
  i32.const 0
  drop
  local.get $0
  i32.load
  local.get $1
  call $~lib/rt/itcms/__visit
 )
 (func $~lib/array/Array<i32>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/array/Array<i32>#__visit
 )
 (func $~lib/array/Array<~lib/array/Array<i32>>#__visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  i32.const 1
  drop
  local.get $0
  i32.load offset=4
  local.set $2
  local.get $2
  local.get $0
  i32.load offset=12
  i32.const 2
  i32.shl
  i32.add
  local.set $3
  loop $while-continue|0
   local.get $2
   local.get $3
   i32.lt_u
   local.set $4
   local.get $4
   if
    local.get $2
    i32.load
    local.set $5
    local.get $5
    if
     local.get $5
     local.get $1
     call $~lib/rt/itcms/__visit
    end
    local.get $2
    i32.const 4
    i32.add
    local.set $2
    br $while-continue|0
   end
  end
  local.get $0
  i32.load
  local.get $1
  call $~lib/rt/itcms/__visit
 )
 (func $~lib/array/Array<~lib/array/Array<i32>>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/array/Array<~lib/array/Array<i32>>#__visit
 )
 (func $~lib/array/Array<algorithms/graph/minimum_spanning_tree/kruskals/index/EDGE>#__visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  i32.const 1
  drop
  local.get $0
  i32.load offset=4
  local.set $2
  local.get $2
  local.get $0
  i32.load offset=12
  i32.const 2
  i32.shl
  i32.add
  local.set $3
  loop $while-continue|0
   local.get $2
   local.get $3
   i32.lt_u
   local.set $4
   local.get $4
   if
    local.get $2
    i32.load
    local.set $5
    local.get $5
    if
     local.get $5
     local.get $1
     call $~lib/rt/itcms/__visit
    end
    local.get $2
    i32.const 4
    i32.add
    local.set $2
    br $while-continue|0
   end
  end
  local.get $0
  i32.load
  local.get $1
  call $~lib/rt/itcms/__visit
 )
 (func $~lib/array/Array<algorithms/graph/minimum_spanning_tree/kruskals/index/EDGE>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/array/Array<algorithms/graph/minimum_spanning_tree/kruskals/index/EDGE>#__visit
 )
 (func $~lib/function/Function<%28algorithms/graph/minimum_spanning_tree/kruskals/index/EDGE%2Calgorithms/graph/minimum_spanning_tree/kruskals/index/EDGE%29=>i32>#__visit (param $0 i32) (param $1 i32)
  local.get $0
  i32.load offset=4
  local.get $1
  call $~lib/rt/itcms/__visit
 )
 (func $~lib/function/Function<%28algorithms/graph/minimum_spanning_tree/kruskals/index/EDGE%2Calgorithms/graph/minimum_spanning_tree/kruskals/index/EDGE%29=>i32>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/function/Function<%28algorithms/graph/minimum_spanning_tree/kruskals/index/EDGE%2Calgorithms/graph/minimum_spanning_tree/kruskals/index/EDGE%29=>i32>#__visit
 )
 (func $~lib/set/Set<algorithms/graph/minimum_spanning_tree/kruskals/index/EDGE>#__visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $0
  i32.load
  local.get $1
  call $~lib/rt/itcms/__visit
  local.get $0
  i32.load offset=8
  local.set $2
  i32.const 1
  drop
  local.get $2
  local.set $3
  local.get $3
  local.get $0
  i32.load offset=16
  i32.const 8
  i32.mul
  i32.add
  local.set $4
  loop $while-continue|0
   local.get $3
   local.get $4
   i32.lt_u
   local.set $5
   local.get $5
   if
    local.get $3
    local.set $6
    local.get $6
    i32.load offset=4
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $6
     i32.load
     local.set $7
     i32.const 0
     drop
     local.get $7
     local.get $1
     call $~lib/rt/itcms/__visit
    end
    local.get $3
    i32.const 8
    i32.add
    local.set $3
    br $while-continue|0
   end
  end
  local.get $2
  local.get $1
  call $~lib/rt/itcms/__visit
 )
 (func $~lib/set/Set<algorithms/graph/minimum_spanning_tree/kruskals/index/EDGE>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/set/Set<algorithms/graph/minimum_spanning_tree/kruskals/index/EDGE>#__visit
 )
 (func $algorithms/graph/minimum_spanning_tree/kruskals/index/GRAPH~visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  i32.load
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
 )
 (func $~lib/set/Set<i32>#__visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  i32.load
  local.get $1
  call $~lib/rt/itcms/__visit
  local.get $0
  i32.load offset=8
  local.set $2
  i32.const 0
  drop
  local.get $2
  local.get $1
  call $~lib/rt/itcms/__visit
 )
 (func $~lib/set/Set<i32>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/set/Set<i32>#__visit
 )
 (func $~lib/map/Map<i32,~lib/set/Set<i32>>#__visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $0
  i32.load
  local.get $1
  call $~lib/rt/itcms/__visit
  local.get $0
  i32.load offset=8
  local.set $2
  i32.const 1
  drop
  local.get $2
  local.set $3
  local.get $3
  local.get $0
  i32.load offset=16
  i32.const 12
  i32.mul
  i32.add
  local.set $4
  loop $while-continue|0
   local.get $3
   local.get $4
   i32.lt_u
   local.set $5
   local.get $5
   if
    local.get $3
    local.set $6
    local.get $6
    i32.load offset=8
    i32.const 1
    i32.and
    i32.eqz
    if
     i32.const 0
     drop
     i32.const 1
     drop
     local.get $6
     i32.load offset=4
     local.set $7
     i32.const 0
     drop
     local.get $7
     local.get $1
     call $~lib/rt/itcms/__visit
    end
    local.get $3
    i32.const 12
    i32.add
    local.set $3
    br $while-continue|0
   end
  end
  local.get $2
  local.get $1
  call $~lib/rt/itcms/__visit
 )
 (func $~lib/map/Map<i32,~lib/set/Set<i32>>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/map/Map<i32,~lib/set/Set<i32>>#__visit
 )
 (func $~lib/map/Map<i32,bool>#__visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  i32.load
  local.get $1
  call $~lib/rt/itcms/__visit
  local.get $0
  i32.load offset=8
  local.set $2
  i32.const 0
  drop
  local.get $2
  local.get $1
  call $~lib/rt/itcms/__visit
 )
 (func $~lib/map/Map<i32,bool>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/map/Map<i32,bool>#__visit
 )
 (func $~lib/function/Function<%28algorithms/graph/minimum_spanning_tree/kruskals/index/EDGE%2Ci32%2C~lib/array/Array<algorithms/graph/minimum_spanning_tree/kruskals/index/EDGE>%29=>algorithms/graph/minimum_spanning_tree/kruskals/index/MST>#__visit (param $0 i32) (param $1 i32)
  local.get $0
  i32.load offset=4
  local.get $1
  call $~lib/rt/itcms/__visit
 )
 (func $~lib/function/Function<%28algorithms/graph/minimum_spanning_tree/kruskals/index/EDGE%2Ci32%2C~lib/array/Array<algorithms/graph/minimum_spanning_tree/kruskals/index/EDGE>%29=>algorithms/graph/minimum_spanning_tree/kruskals/index/MST>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/function/Function<%28algorithms/graph/minimum_spanning_tree/kruskals/index/EDGE%2Ci32%2C~lib/array/Array<algorithms/graph/minimum_spanning_tree/kruskals/index/EDGE>%29=>algorithms/graph/minimum_spanning_tree/kruskals/index/MST>#__visit
 )
 (func $~lib/rt/__visit_members (param $0 i32) (param $1 i32)
  block $invalid
   block $~lib/function/Function<%28algorithms/graph/minimum_spanning_tree/kruskals/index/EDGE%2Ci32%2C~lib/array/Array<algorithms/graph/minimum_spanning_tree/kruskals/index/EDGE>%29=>algorithms/graph/minimum_spanning_tree/kruskals/index/MST>
    block $~lib/map/Map<i32,bool>
     block $~lib/map/Map<i32,~lib/set/Set<i32>>
      block $~lib/set/Set<i32>
       block $algorithms/graph/minimum_spanning_tree/kruskals/index/GRAPH
        block $~lib/set/Set<algorithms/graph/minimum_spanning_tree/kruskals/index/EDGE>
         block $~lib/function/Function<%28algorithms/graph/minimum_spanning_tree/kruskals/index/EDGE%2Calgorithms/graph/minimum_spanning_tree/kruskals/index/EDGE%29=>i32>
          block $~lib/array/Array<algorithms/graph/minimum_spanning_tree/kruskals/index/EDGE>
           block $algorithms/graph/minimum_spanning_tree/kruskals/index/EDGE
            block $~lib/array/Array<~lib/array/Array<i32>>
             block $~lib/array/Array<i32>
              block $~lib/array/Array<algorithms/graph/minimum_spanning_tree/kruskals/index/MST>
               block $algorithms/graph/minimum_spanning_tree/kruskals/index/MST
                block $~lib/arraybuffer/ArrayBufferView
                 block $~lib/string/String
                  block $~lib/arraybuffer/ArrayBuffer
                   local.get $0
                   i32.const 8
                   i32.sub
                   i32.load
                   br_table $~lib/arraybuffer/ArrayBuffer $~lib/string/String $~lib/arraybuffer/ArrayBufferView $algorithms/graph/minimum_spanning_tree/kruskals/index/MST $~lib/array/Array<algorithms/graph/minimum_spanning_tree/kruskals/index/MST> $~lib/array/Array<i32> $~lib/array/Array<~lib/array/Array<i32>> $algorithms/graph/minimum_spanning_tree/kruskals/index/EDGE $~lib/array/Array<algorithms/graph/minimum_spanning_tree/kruskals/index/EDGE> $~lib/function/Function<%28algorithms/graph/minimum_spanning_tree/kruskals/index/EDGE%2Calgorithms/graph/minimum_spanning_tree/kruskals/index/EDGE%29=>i32> $~lib/set/Set<algorithms/graph/minimum_spanning_tree/kruskals/index/EDGE> $algorithms/graph/minimum_spanning_tree/kruskals/index/GRAPH $~lib/set/Set<i32> $~lib/map/Map<i32,~lib/set/Set<i32>> $~lib/map/Map<i32,bool> $~lib/function/Function<%28algorithms/graph/minimum_spanning_tree/kruskals/index/EDGE%2Ci32%2C~lib/array/Array<algorithms/graph/minimum_spanning_tree/kruskals/index/EDGE>%29=>algorithms/graph/minimum_spanning_tree/kruskals/index/MST> $invalid
                  end
                  return
                 end
                 return
                end
                local.get $0
                local.get $1
                call $~lib/arraybuffer/ArrayBufferView~visit
                return
               end
               return
              end
              local.get $0
              local.get $1
              call $~lib/array/Array<algorithms/graph/minimum_spanning_tree/kruskals/index/MST>~visit
              return
             end
             local.get $0
             local.get $1
             call $~lib/array/Array<i32>~visit
             return
            end
            local.get $0
            local.get $1
            call $~lib/array/Array<~lib/array/Array<i32>>~visit
            return
           end
           return
          end
          local.get $0
          local.get $1
          call $~lib/array/Array<algorithms/graph/minimum_spanning_tree/kruskals/index/EDGE>~visit
          return
         end
         local.get $0
         local.get $1
         call $~lib/function/Function<%28algorithms/graph/minimum_spanning_tree/kruskals/index/EDGE%2Calgorithms/graph/minimum_spanning_tree/kruskals/index/EDGE%29=>i32>~visit
         return
        end
        local.get $0
        local.get $1
        call $~lib/set/Set<algorithms/graph/minimum_spanning_tree/kruskals/index/EDGE>~visit
        return
       end
       local.get $0
       local.get $1
       call $algorithms/graph/minimum_spanning_tree/kruskals/index/GRAPH~visit
       return
      end
      local.get $0
      local.get $1
      call $~lib/set/Set<i32>~visit
      return
     end
     local.get $0
     local.get $1
     call $~lib/map/Map<i32,~lib/set/Set<i32>>~visit
     return
    end
    local.get $0
    local.get $1
    call $~lib/map/Map<i32,bool>~visit
    return
   end
   local.get $0
   local.get $1
   call $~lib/function/Function<%28algorithms/graph/minimum_spanning_tree/kruskals/index/EDGE%2Ci32%2C~lib/array/Array<algorithms/graph/minimum_spanning_tree/kruskals/index/EDGE>%29=>algorithms/graph/minimum_spanning_tree/kruskals/index/MST>~visit
   return
  end
  unreachable
 )
 (func $~start
  memory.size
  i32.const 16
  i32.shl
  global.get $~lib/memory/__heap_base
  i32.sub
  i32.const 1
  i32.shr_u
  global.set $~lib/rt/itcms/threshold
  i32.const 144
  call $~lib/rt/itcms/initLazy
  global.set $~lib/rt/itcms/pinSpace
  i32.const 176
  call $~lib/rt/itcms/initLazy
  global.set $~lib/rt/itcms/toSpace
  i32.const 320
  call $~lib/rt/itcms/initLazy
  global.set $~lib/rt/itcms/fromSpace
 )
 (func $~stack_check
  global.get $~lib/memory/__stack_pointer
  global.get $~lib/memory/__data_end
  i32.lt_s
  if
   i32.const 19536
   i32.const 19584
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~lib/util/sort/extendRunRight<algorithms/graph/minimum_spanning_tree/kruskals/index/EDGE> (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  local.get $1
  local.get $2
  i32.eq
  if
   local.get $1
   local.set $8
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $8
   return
  end
  local.get $1
  local.set $4
  local.get $0
  local.get $4
  i32.const 2
  i32.shl
  i32.add
  i32.load
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store
  local.get $8
  local.get $0
  local.get $4
  i32.const 1
  i32.add
  local.tee $4
  i32.const 2
  i32.shl
  i32.add
  i32.load
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store offset=4
  local.get $8
  i32.const 2
  global.set $~argumentsLength
  local.get $3
  i32.load
  call_indirect $0 (type $i32_i32_=>_i32)
  i32.const 0
  i32.gt_s
  if
   loop $while-continue|0
    local.get $4
    local.get $2
    i32.lt_s
    if (result i32)
     local.get $0
     local.get $4
     i32.const 2
     i32.shl
     i32.add
     i32.load offset=4
     local.set $8
     global.get $~lib/memory/__stack_pointer
     local.get $8
     i32.store
     local.get $8
     local.get $0
     local.get $4
     i32.const 2
     i32.shl
     i32.add
     i32.load
     local.set $8
     global.get $~lib/memory/__stack_pointer
     local.get $8
     i32.store offset=4
     local.get $8
     i32.const 2
     global.set $~argumentsLength
     local.get $3
     i32.load
     call_indirect $0 (type $i32_i32_=>_i32)
     i32.const 31
     i32.shr_u
    else
     i32.const 0
    end
    local.set $5
    local.get $5
    if
     local.get $4
     i32.const 1
     i32.add
     local.set $4
     br $while-continue|0
    end
   end
   local.get $4
   local.set $5
   loop $while-continue|1
    local.get $1
    local.get $5
    i32.lt_s
    local.set $6
    local.get $6
    if
     global.get $~lib/memory/__stack_pointer
     local.get $0
     local.get $1
     i32.const 2
     i32.shl
     i32.add
     i32.load
     local.tee $7
     i32.store offset=8
     local.get $0
     local.get $1
     i32.const 2
     i32.shl
     i32.add
     local.get $0
     local.get $5
     i32.const 2
     i32.shl
     i32.add
     i32.load
     i32.store
     local.get $1
     i32.const 1
     i32.add
     local.set $1
     local.get $0
     local.get $5
     i32.const 2
     i32.shl
     i32.add
     local.get $7
     i32.store
     local.get $5
     i32.const 1
     i32.sub
     local.set $5
     br $while-continue|1
    end
   end
  else
   loop $while-continue|2
    local.get $4
    local.get $2
    i32.lt_s
    if (result i32)
     local.get $0
     local.get $4
     i32.const 2
     i32.shl
     i32.add
     i32.load offset=4
     local.set $8
     global.get $~lib/memory/__stack_pointer
     local.get $8
     i32.store
     local.get $8
     local.get $0
     local.get $4
     i32.const 2
     i32.shl
     i32.add
     i32.load
     local.set $8
     global.get $~lib/memory/__stack_pointer
     local.get $8
     i32.store offset=4
     local.get $8
     i32.const 2
     global.set $~argumentsLength
     local.get $3
     i32.load
     call_indirect $0 (type $i32_i32_=>_i32)
     i32.const 0
     i32.ge_s
    else
     i32.const 0
    end
    local.set $5
    local.get $5
    if
     local.get $4
     i32.const 1
     i32.add
     local.set $4
     br $while-continue|2
    end
   end
  end
  local.get $4
  local.set $8
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $8
 )
 (func $algorithms/graph/minimum_spanning_tree/kruskals/index/GRAPH#GetAdjacentVertexes (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $0
  i32.load
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  local.get $1
  call $~lib/map/Map<i32,~lib/set/Set<i32>>#has
  if
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load
   local.set $3
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store
   local.get $3
   local.get $1
   call $~lib/map/Map<i32,~lib/set/Set<i32>>#get
   local.tee $2
   i32.store offset=4
  else
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   call $~lib/set/Set<i32>#constructor
   local.tee $2
   i32.store offset=4
  end
  local.get $2
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
 (func $algorithms/graph/minimum_spanning_tree/kruskals/index/GRAPH#AddEdge (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $0
  local.get $1
  i32.load
  call $algorithms/graph/minimum_spanning_tree/kruskals/index/GRAPH#GetAdjacentVertexes
  local.tee $2
  i32.store
  local.get $2
  local.get $1
  i32.load offset=4
  call $~lib/set/Set<i32>#add
  drop
  local.get $0
  i32.load
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=4
  local.get $3
  local.get $1
  i32.load
  local.get $2
  call $~lib/map/Map<i32,~lib/set/Set<i32>>#set
  drop
  local.get $0
  i32.load
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=4
  local.get $3
  local.get $1
  i32.load offset=4
  local.get $0
  local.get $1
  i32.load offset=4
  call $algorithms/graph/minimum_spanning_tree/kruskals/index/GRAPH#GetAdjacentVertexes
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=8
  local.get $3
  call $~lib/map/Map<i32,~lib/set/Set<i32>>#set
  drop
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $algorithms/graph/minimum_spanning_tree/kruskals/index/GRAPH#CyclicUtil (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $3
  call $~lib/map/Map<i32,bool>#toString
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store
  local.get $8
  call $algorithms/graph/minimum_spanning_tree/kruskals/index/consoleLog
  local.get $3
  local.get $1
  call $~lib/map/Map<i32,bool>#has
  if (result i32)
   local.get $3
   local.get $1
   call $~lib/map/Map<i32,bool>#get
  else
   i32.const 0
  end
  if
   i32.const 1
   local.set $8
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $8
   return
  end
  local.get $2
  local.get $1
  call $~lib/map/Map<i32,bool>#has
  if
   i32.const 0
   local.set $8
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $8
   return
  end
  local.get $2
  local.get $1
  i32.const 1
  call $~lib/map/Map<i32,bool>#set
  drop
  local.get $3
  local.get $1
  i32.const 1
  call $~lib/map/Map<i32,bool>#set
  drop
  global.get $~lib/memory/__stack_pointer
  local.get $0
  local.get $1
  call $algorithms/graph/minimum_spanning_tree/kruskals/index/GRAPH#GetAdjacentVertexes
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store
  local.get $8
  call $~lib/set/Set<i32>#values
  local.tee $4
  i32.store offset=4
  i32.const 0
  local.set $5
  loop $for-loop|0
   local.get $5
   local.get $4
   call $~lib/array/Array<i32>#get:length
   i32.lt_s
   local.set $6
   local.get $6
   if
    local.get $4
    local.get $5
    call $~lib/array/Array<i32>#__get
    local.set $7
    local.get $0
    local.get $7
    local.get $2
    local.get $3
    call $algorithms/graph/minimum_spanning_tree/kruskals/index/GRAPH#CyclicUtil
    if
     i32.const 1
     local.set $8
     global.get $~lib/memory/__stack_pointer
     i32.const 8
     i32.add
     global.set $~lib/memory/__stack_pointer
     local.get $8
     return
    end
    local.get $5
    i32.const 1
    i32.add
    local.set $5
    br $for-loop|0
   end
  end
  local.get $3
  local.get $1
  i32.const 0
  call $~lib/map/Map<i32,bool>#set
  drop
  i32.const 0
  local.set $8
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $8
 )
 (func $algorithms/graph/minimum_spanning_tree/kruskals/index/GRAPH#IsCyclic (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  call $~lib/map/Map<i32,bool>#constructor
  local.tee $1
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  call $~lib/map/Map<i32,bool>#constructor
  local.tee $2
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=8
  local.get $7
  call $~lib/map/Map<i32,~lib/set/Set<i32>>#keys
  local.tee $3
  i32.store offset=12
  i32.const 0
  local.set $4
  loop $for-loop|0
   local.get $4
   local.get $3
   call $~lib/array/Array<i32>#get:length
   i32.lt_s
   local.set $5
   local.get $5
   if
    local.get $0
    local.get $3
    local.get $4
    call $~lib/array/Array<i32>#__get
    local.get $1
    local.get $2
    call $algorithms/graph/minimum_spanning_tree/kruskals/index/GRAPH#CyclicUtil
    local.set $6
    local.get $6
    if
     i32.const 1
     local.set $7
     global.get $~lib/memory/__stack_pointer
     i32.const 16
     i32.add
     global.set $~lib/memory/__stack_pointer
     local.get $7
     return
    end
    local.get $4
    i32.const 1
    i32.add
    local.set $4
    br $for-loop|0
   end
  end
  i32.const 0
  local.set $7
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $7
 )
 (func $algorithms/graph/minimum_spanning_tree/kruskals/index/GRAPH#RemoveEdge (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  local.get $1
  i32.load
  call $algorithms/graph/minimum_spanning_tree/kruskals/index/GRAPH#GetAdjacentVertexes
  local.tee $2
  i32.store
  local.get $2
  local.get $1
  i32.load offset=4
  call $~lib/set/Set<i32>#delete
  drop
  local.get $0
  i32.load
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=4
  local.get $3
  local.get $1
  i32.load
  local.get $2
  call $~lib/map/Map<i32,~lib/set/Set<i32>>#set
  drop
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $algorithms/graph/minimum_spanning_tree/kruskals/index/EDGE#ToString (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 32
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=16
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=24
  local.get $0
  i32.load
  i32.const 10
  call $~lib/number/I32#toString
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=24
  local.get $1
  i32.const 2784
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=28
  local.get $1
  call $~lib/string/String.__concat
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=16
  local.get $1
  local.get $0
  i32.load offset=4
  i32.const 10
  call $~lib/number/I32#toString
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=20
  local.get $1
  call $~lib/string/String.__concat
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=8
  local.get $1
  i32.const 2784
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=12
  local.get $1
  call $~lib/string/String.__concat
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 10
  call $~lib/number/I32#toString
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  call $~lib/string/String.__concat
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 32
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $~lib/set/Set<algorithms/graph/minimum_spanning_tree/kruskals/index/EDGE>#values (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $0
  i32.load offset=8
  local.set $1
  local.get $0
  i32.load offset=16
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  local.get $2
  call $~lib/array/Array<algorithms/graph/minimum_spanning_tree/kruskals/index/EDGE>#constructor
  local.tee $3
  i32.store
  i32.const 0
  local.set $4
  i32.const 0
  local.set $5
  loop $for-loop|0
   local.get $5
   local.get $2
   i32.lt_s
   local.set $6
   local.get $6
   if
    local.get $1
    local.get $5
    i32.const 8
    i32.mul
    i32.add
    local.set $7
    local.get $7
    i32.load offset=4
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $3
     local.get $4
     local.tee $8
     i32.const 1
     i32.add
     local.set $4
     local.get $8
     local.get $7
     i32.load
     local.set $9
     global.get $~lib/memory/__stack_pointer
     local.get $9
     i32.store offset=4
     local.get $9
     call $~lib/array/Array<algorithms/graph/minimum_spanning_tree/kruskals/index/EDGE>#__set
    end
    local.get $5
    i32.const 1
    i32.add
    local.set $5
    br $for-loop|0
   end
  end
  local.get $3
  local.get $4
  call $~lib/array/Array<algorithms/graph/minimum_spanning_tree/kruskals/index/EDGE>#set:length
  local.get $3
  local.set $9
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $9
 )
 (func $~lib/array/Array<algorithms/graph/minimum_spanning_tree/kruskals/index/EDGE>#map<algorithms/graph/minimum_spanning_tree/kruskals/index/MST> (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  local.get $0
  i32.load offset=12
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.const 2
  i32.const 4
  i32.const 0
  call $~lib/rt/__newArray
  local.tee $3
  i32.store
  local.get $3
  i32.load offset=4
  local.set $4
  i32.const 0
  local.set $5
  loop $for-loop|0
   local.get $5
   local.get $2
   local.tee $6
   local.get $0
   i32.load offset=12
   local.tee $7
   local.get $6
   local.get $7
   i32.lt_s
   select
   i32.lt_s
   local.set $6
   local.get $6
   if
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.load offset=4
    local.get $5
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.set $8
    global.get $~lib/memory/__stack_pointer
    local.get $8
    i32.store offset=4
    local.get $8
    local.get $5
    local.get $0
    i32.const 3
    global.set $~argumentsLength
    local.get $1
    i32.load
    call_indirect $0 (type $i32_i32_i32_=>_i32)
    local.tee $7
    i32.store offset=8
    local.get $4
    local.get $5
    i32.const 2
    i32.shl
    i32.add
    local.get $7
    i32.store
    i32.const 1
    drop
    local.get $3
    local.get $7
    i32.const 1
    call $~lib/rt/itcms/__link
    local.get $5
    i32.const 1
    i32.add
    local.set $5
    br $for-loop|0
   end
  end
  local.get $3
  local.set $8
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $8
 )
 (func $algorithms/graph/minimum_spanning_tree/kruskals/index/mst (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 32
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=16
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=24
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 0
  call $~lib/array/Array<algorithms/graph/minimum_spanning_tree/kruskals/index/EDGE>#constructor
  local.tee $1
  i32.store
  i32.const 0
  local.set $2
  loop $for-loop|0
   local.get $2
   local.get $0
   call $~lib/array/Array<~lib/array/Array<i32>>#get:length
   i32.lt_s
   local.set $3
   local.get $3
   if
    i32.const 0
    local.set $4
    loop $for-loop|1
     local.get $4
     local.get $0
     call $~lib/array/Array<~lib/array/Array<i32>>#get:length
     i32.lt_s
     local.set $5
     local.get $5
     if
      local.get $0
      local.get $2
      call $~lib/array/Array<~lib/array/Array<i32>>#__get
      local.set $9
      global.get $~lib/memory/__stack_pointer
      local.get $9
      i32.store offset=4
      local.get $9
      local.get $4
      call $~lib/array/Array<i32>#__get
      global.get $~lib/number/I32.MAX_VALUE
      i32.lt_s
      if
       local.get $2
       local.get $4
       i32.ne
       if
        local.get $1
        global.get $~lib/memory/__stack_pointer
        i32.const 0
        call $algorithms/graph/minimum_spanning_tree/kruskals/index/EDGE#constructor
        local.tee $6
        i32.store offset=12
        local.get $6
        local.get $2
        call $algorithms/graph/minimum_spanning_tree/kruskals/index/EDGE#set:src
        local.get $6
        local.get $4
        call $algorithms/graph/minimum_spanning_tree/kruskals/index/EDGE#set:dest
        local.get $6
        local.get $0
        local.get $2
        call $~lib/array/Array<~lib/array/Array<i32>>#__get
        local.set $9
        global.get $~lib/memory/__stack_pointer
        local.get $9
        i32.store offset=8
        local.get $9
        local.get $4
        call $~lib/array/Array<i32>#__get
        call $algorithms/graph/minimum_spanning_tree/kruskals/index/EDGE#set:weight
        local.get $6
        local.set $9
        global.get $~lib/memory/__stack_pointer
        local.get $9
        i32.store offset=8
        local.get $9
        call $~lib/array/Array<algorithms/graph/minimum_spanning_tree/kruskals/index/EDGE>#push
        drop
       end
       local.get $0
       local.get $4
       call $~lib/array/Array<~lib/array/Array<i32>>#__get
       local.set $9
       global.get $~lib/memory/__stack_pointer
       local.get $9
       i32.store offset=4
       local.get $9
       local.get $2
       global.get $~lib/number/I32.MAX_VALUE
       call $~lib/array/Array<i32>#__set
      end
      local.get $4
      i32.const 1
      i32.add
      local.set $4
      br $for-loop|1
     end
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
  local.get $1
  i32.const 656
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store offset=8
  local.get $9
  call $~lib/array/Array<algorithms/graph/minimum_spanning_tree/kruskals/index/EDGE>#sort
  drop
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  call $~lib/set/Set<algorithms/graph/minimum_spanning_tree/kruskals/index/EDGE>#constructor
  local.tee $2
  i32.store offset=16
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  call $algorithms/graph/minimum_spanning_tree/kruskals/index/GRAPH#constructor
  local.tee $3
  i32.store offset=20
  local.get $0
  call $~lib/array/Array<~lib/array/Array<i32>>#get:length
  local.set $4
  i32.const 0
  local.set $5
  block $while-break|2
   loop $while-continue|2
    local.get $5
    local.get $4
    i32.const 1
    i32.sub
    i32.lt_s
    local.set $7
    local.get $7
    if
     local.get $1
     call $~lib/array/Array<algorithms/graph/minimum_spanning_tree/kruskals/index/EDGE>#get:length
     i32.const 0
     i32.eq
     if
      br $while-break|2
     end
     global.get $~lib/memory/__stack_pointer
     local.get $1
     call $~lib/array/Array<algorithms/graph/minimum_spanning_tree/kruskals/index/EDGE>#shift
     local.tee $8
     i32.store offset=24
     local.get $3
     local.get $8
     call $algorithms/graph/minimum_spanning_tree/kruskals/index/GRAPH#AddEdge
     local.get $3
     call $algorithms/graph/minimum_spanning_tree/kruskals/index/GRAPH#IsCyclic
     if
      local.get $3
      local.get $8
      call $algorithms/graph/minimum_spanning_tree/kruskals/index/GRAPH#RemoveEdge
      i32.const 960
      local.set $9
      global.get $~lib/memory/__stack_pointer
      local.get $9
      i32.store offset=8
      local.get $9
      local.get $8
      call $algorithms/graph/minimum_spanning_tree/kruskals/index/EDGE#ToString
      local.set $9
      global.get $~lib/memory/__stack_pointer
      local.get $9
      i32.store offset=28
      local.get $9
      call $~lib/string/String.__concat
      local.set $9
      global.get $~lib/memory/__stack_pointer
      local.get $9
      i32.store offset=4
      local.get $9
      call $algorithms/graph/minimum_spanning_tree/kruskals/index/consoleLog
     else
      local.get $2
      local.get $8
      call $~lib/set/Set<algorithms/graph/minimum_spanning_tree/kruskals/index/EDGE>#add
      drop
      local.get $5
      i32.const 1
      i32.add
      local.set $5
     end
     br $while-continue|2
    end
   end
  end
  local.get $2
  call $~lib/set/Set<algorithms/graph/minimum_spanning_tree/kruskals/index/EDGE>#values
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store offset=4
  local.get $9
  i32.const 2848
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store offset=8
  local.get $9
  call $~lib/array/Array<algorithms/graph/minimum_spanning_tree/kruskals/index/EDGE>#map<algorithms/graph/minimum_spanning_tree/kruskals/index/MST>
  local.set $9
  global.get $~lib/memory/__stack_pointer
  i32.const 32
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $9
 )
 (func $algorithms/graph/minimum_spanning_tree/kruskals/index/MST#constructor (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $0
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.const 3
   call $~lib/rt/itcms/__new
   local.tee $0
   i32.store
  end
  local.get $0
  i32.const 0
  call $algorithms/graph/minimum_spanning_tree/kruskals/index/MST#set:parent
  local.get $0
  i32.const 0
  call $algorithms/graph/minimum_spanning_tree/kruskals/index/MST#set:vertex
  local.get $0
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $~lib/array/Array<algorithms/graph/minimum_spanning_tree/kruskals/index/EDGE>#constructor (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $0
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.const 8
   call $~lib/rt/itcms/__new
   local.tee $0
   i32.store
  end
  local.get $0
  i32.const 0
  call $~lib/array/Array<algorithms/graph/minimum_spanning_tree/kruskals/index/EDGE>#set:buffer
  local.get $0
  i32.const 0
  call $~lib/array/Array<algorithms/graph/minimum_spanning_tree/kruskals/index/EDGE>#set:dataStart
  local.get $0
  i32.const 0
  call $~lib/array/Array<algorithms/graph/minimum_spanning_tree/kruskals/index/EDGE>#set:byteLength
  local.get $0
  i32.const 0
  call $~lib/array/Array<algorithms/graph/minimum_spanning_tree/kruskals/index/EDGE>#set:length_
  local.get $1
  i32.const 1073741820
  i32.const 2
  i32.shr_u
  i32.gt_u
  if
   i32.const 432
   i32.const 480
   i32.const 70
   i32.const 60
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  local.tee $2
  i32.const 8
  local.tee $3
  local.get $2
  local.get $3
  i32.gt_u
  select
  i32.const 2
  i32.shl
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.const 0
  call $~lib/rt/itcms/__new
  local.tee $5
  i32.store offset=4
  i32.const 2
  global.get $~lib/shared/runtime/Runtime.Incremental
  i32.ne
  drop
  local.get $0
  local.get $5
  call $~lib/array/Array<algorithms/graph/minimum_spanning_tree/kruskals/index/EDGE>#set:buffer
  local.get $0
  local.get $5
  call $~lib/array/Array<algorithms/graph/minimum_spanning_tree/kruskals/index/EDGE>#set:dataStart
  local.get $0
  local.get $4
  call $~lib/array/Array<algorithms/graph/minimum_spanning_tree/kruskals/index/EDGE>#set:byteLength
  local.get $0
  local.get $1
  call $~lib/array/Array<algorithms/graph/minimum_spanning_tree/kruskals/index/EDGE>#set:length_
  local.get $0
  local.set $6
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $6
 )
 (func $~lib/array/Array<~lib/array/Array<i32>>#__get (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 224
   i32.const 480
   i32.const 114
   i32.const 42
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
  local.tee $2
  i32.store
  i32.const 1
  drop
  i32.const 0
  i32.eqz
  drop
  local.get $2
  i32.eqz
  if
   i32.const 528
   i32.const 480
   i32.const 118
   i32.const 40
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
 (func $algorithms/graph/minimum_spanning_tree/kruskals/index/EDGE#constructor (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $0
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.const 7
   call $~lib/rt/itcms/__new
   local.tee $0
   i32.store
  end
  local.get $0
  i32.const 0
  call $algorithms/graph/minimum_spanning_tree/kruskals/index/EDGE#set:src
  local.get $0
  i32.const 0
  call $algorithms/graph/minimum_spanning_tree/kruskals/index/EDGE#set:dest
  local.get $0
  i32.const 0
  call $algorithms/graph/minimum_spanning_tree/kruskals/index/EDGE#set:weight
  local.get $0
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $~lib/arraybuffer/ArrayBuffer#constructor (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $1
  i32.const 1073741820
  i32.gt_u
  if
   i32.const 432
   i32.const 688
   i32.const 52
   i32.const 43
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__new
  local.tee $2
  i32.store
  i32.const 2
  global.get $~lib/shared/runtime/Runtime.Incremental
  i32.ne
  drop
  local.get $2
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
 (func $~lib/set/Set<algorithms/graph/minimum_spanning_tree/kruskals/index/EDGE>#constructor (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $0
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 24
   i32.const 10
   call $~lib/rt/itcms/__new
   local.tee $0
   i32.store
  end
  local.get $0
  i32.const 0
  i32.const 4
  i32.const 4
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  call $~lib/set/Set<algorithms/graph/minimum_spanning_tree/kruskals/index/EDGE>#set:buckets
  local.get $0
  i32.const 4
  i32.const 1
  i32.sub
  call $~lib/set/Set<algorithms/graph/minimum_spanning_tree/kruskals/index/EDGE>#set:bucketsMask
  local.get $0
  i32.const 0
  i32.const 4
  i32.const 8
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  call $~lib/set/Set<algorithms/graph/minimum_spanning_tree/kruskals/index/EDGE>#set:entries
  local.get $0
  i32.const 4
  call $~lib/set/Set<algorithms/graph/minimum_spanning_tree/kruskals/index/EDGE>#set:entriesCapacity
  local.get $0
  i32.const 0
  call $~lib/set/Set<algorithms/graph/minimum_spanning_tree/kruskals/index/EDGE>#set:entriesOffset
  local.get $0
  i32.const 0
  call $~lib/set/Set<algorithms/graph/minimum_spanning_tree/kruskals/index/EDGE>#set:entriesCount
  local.get $0
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $~lib/map/Map<i32,~lib/set/Set<i32>>#constructor (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $0
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 24
   i32.const 13
   call $~lib/rt/itcms/__new
   local.tee $0
   i32.store
  end
  local.get $0
  i32.const 0
  i32.const 4
  i32.const 4
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  call $~lib/map/Map<i32,~lib/set/Set<i32>>#set:buckets
  local.get $0
  i32.const 4
  i32.const 1
  i32.sub
  call $~lib/map/Map<i32,~lib/set/Set<i32>>#set:bucketsMask
  local.get $0
  i32.const 0
  i32.const 4
  i32.const 12
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  call $~lib/map/Map<i32,~lib/set/Set<i32>>#set:entries
  local.get $0
  i32.const 4
  call $~lib/map/Map<i32,~lib/set/Set<i32>>#set:entriesCapacity
  local.get $0
  i32.const 0
  call $~lib/map/Map<i32,~lib/set/Set<i32>>#set:entriesOffset
  local.get $0
  i32.const 0
  call $~lib/map/Map<i32,~lib/set/Set<i32>>#set:entriesCount
  local.get $0
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $algorithms/graph/minimum_spanning_tree/kruskals/index/GRAPH#constructor (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $0
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.const 11
   call $~lib/rt/itcms/__new
   local.tee $0
   i32.store
  end
  local.get $0
  i32.const 0
  call $algorithms/graph/minimum_spanning_tree/kruskals/index/GRAPH#set:adjacentList
  local.get $0
  i32.const 0
  call $~lib/map/Map<i32,~lib/set/Set<i32>>#constructor
  call $algorithms/graph/minimum_spanning_tree/kruskals/index/GRAPH#set:adjacentList
  local.get $0
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $~lib/array/Array<algorithms/graph/minimum_spanning_tree/kruskals/index/EDGE>#shift (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $0
  i32.load offset=12
  local.set $1
  local.get $1
  i32.const 1
  i32.lt_s
  if
   i32.const 752
   i32.const 480
   i32.const 350
   i32.const 18
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.load
  local.tee $3
  i32.store
  local.get $1
  i32.const 1
  i32.sub
  local.set $4
  local.get $2
  local.get $2
  i32.const 4
  i32.add
  local.get $4
  i32.const 2
  i32.shl
  call $~lib/memory/memory.copy
  i32.const 1
  drop
  local.get $2
  local.get $4
  i32.const 2
  i32.shl
  i32.add
  i32.const 0
  i32.store
  local.get $0
  local.get $4
  call $~lib/array/Array<algorithms/graph/minimum_spanning_tree/kruskals/index/EDGE>#set:length_
  local.get $3
  local.set $5
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $5
 )
 (func $~lib/set/Set<i32>#constructor (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $0
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 24
   i32.const 12
   call $~lib/rt/itcms/__new
   local.tee $0
   i32.store
  end
  local.get $0
  i32.const 0
  i32.const 4
  i32.const 4
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  call $~lib/set/Set<i32>#set:buckets
  local.get $0
  i32.const 4
  i32.const 1
  i32.sub
  call $~lib/set/Set<i32>#set:bucketsMask
  local.get $0
  i32.const 0
  i32.const 4
  i32.const 8
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  call $~lib/set/Set<i32>#set:entries
  local.get $0
  i32.const 4
  call $~lib/set/Set<i32>#set:entriesCapacity
  local.get $0
  i32.const 0
  call $~lib/set/Set<i32>#set:entriesOffset
  local.get $0
  i32.const 0
  call $~lib/set/Set<i32>#set:entriesCount
  local.get $0
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $~lib/map/Map<i32,~lib/set/Set<i32>>#set (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $1
  call $~lib/util/hash/HASH<i32>
  local.set $3
  local.get $0
  local.get $1
  local.get $3
  call $~lib/map/Map<i32,~lib/set/Set<i32>>#find
  local.set $4
  local.get $4
  if
   local.get $4
   local.get $2
   call $~lib/map/MapEntry<i32,~lib/set/Set<i32>>#set:value
   i32.const 1
   drop
   local.get $0
   local.get $2
   i32.const 1
   call $~lib/rt/itcms/__link
  else
   local.get $0
   i32.load offset=16
   local.get $0
   i32.load offset=12
   i32.eq
   if
    local.get $0
    local.get $0
    i32.load offset=20
    local.get $0
    i32.load offset=12
    i32.const 3
    i32.mul
    i32.const 4
    i32.div_s
    i32.lt_s
    if (result i32)
     local.get $0
     i32.load offset=4
    else
     local.get $0
     i32.load offset=4
     i32.const 1
     i32.shl
     i32.const 1
     i32.or
    end
    call $~lib/map/Map<i32,~lib/set/Set<i32>>#rehash
   end
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load offset=8
   local.tee $5
   i32.store
   local.get $5
   local.get $0
   local.get $0
   i32.load offset=16
   local.tee $6
   i32.const 1
   i32.add
   call $~lib/map/Map<i32,~lib/set/Set<i32>>#set:entriesOffset
   local.get $6
   i32.const 12
   i32.mul
   i32.add
   local.set $4
   local.get $4
   local.get $1
   call $~lib/map/MapEntry<i32,~lib/set/Set<i32>>#set:key
   i32.const 0
   drop
   local.get $4
   local.get $2
   call $~lib/map/MapEntry<i32,~lib/set/Set<i32>>#set:value
   i32.const 1
   drop
   local.get $0
   local.get $2
   i32.const 1
   call $~lib/rt/itcms/__link
   local.get $0
   local.get $0
   i32.load offset=20
   i32.const 1
   i32.add
   call $~lib/map/Map<i32,~lib/set/Set<i32>>#set:entriesCount
   local.get $0
   i32.load
   local.get $3
   local.get $0
   i32.load offset=4
   i32.and
   i32.const 4
   i32.mul
   i32.add
   local.set $6
   local.get $4
   local.get $6
   i32.load
   call $~lib/map/MapEntry<i32,~lib/set/Set<i32>>#set:taggedNext
   local.get $6
   local.get $4
   i32.store
  end
  local.get $0
  local.set $7
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $7
 )
 (func $~lib/map/Map<i32,bool>#constructor (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $0
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 24
   i32.const 14
   call $~lib/rt/itcms/__new
   local.tee $0
   i32.store
  end
  local.get $0
  i32.const 0
  i32.const 4
  i32.const 4
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  call $~lib/map/Map<i32,bool>#set:buckets
  local.get $0
  i32.const 4
  i32.const 1
  i32.sub
  call $~lib/map/Map<i32,bool>#set:bucketsMask
  local.get $0
  i32.const 0
  i32.const 4
  i32.const 12
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  call $~lib/map/Map<i32,bool>#set:entries
  local.get $0
  i32.const 4
  call $~lib/map/Map<i32,bool>#set:entriesCapacity
  local.get $0
  i32.const 0
  call $~lib/map/Map<i32,bool>#set:entriesOffset
  local.get $0
  i32.const 0
  call $~lib/map/Map<i32,bool>#set:entriesCount
  local.get $0
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $~lib/array/Array<i32>#constructor (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $0
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.const 5
   call $~lib/rt/itcms/__new
   local.tee $0
   i32.store
  end
  local.get $0
  i32.const 0
  call $~lib/array/Array<i32>#set:buffer
  local.get $0
  i32.const 0
  call $~lib/array/Array<i32>#set:dataStart
  local.get $0
  i32.const 0
  call $~lib/array/Array<i32>#set:byteLength
  local.get $0
  i32.const 0
  call $~lib/array/Array<i32>#set:length_
  local.get $1
  i32.const 1073741820
  i32.const 2
  i32.shr_u
  i32.gt_u
  if
   i32.const 432
   i32.const 480
   i32.const 70
   i32.const 60
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  local.tee $2
  i32.const 8
  local.tee $3
  local.get $2
  local.get $3
  i32.gt_u
  select
  i32.const 2
  i32.shl
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.const 0
  call $~lib/rt/itcms/__new
  local.tee $5
  i32.store offset=4
  i32.const 2
  global.get $~lib/shared/runtime/Runtime.Incremental
  i32.ne
  drop
  local.get $0
  local.get $5
  call $~lib/array/Array<i32>#set:buffer
  local.get $0
  local.get $5
  call $~lib/array/Array<i32>#set:dataStart
  local.get $0
  local.get $4
  call $~lib/array/Array<i32>#set:byteLength
  local.get $0
  local.get $1
  call $~lib/array/Array<i32>#set:length_
  local.get $0
  local.set $6
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $6
 )
 (func $~lib/map/Map<i32,~lib/set/Set<i32>>#keys (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $0
  i32.load offset=8
  local.set $1
  local.get $0
  i32.load offset=16
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  local.get $2
  call $~lib/array/Array<i32>#constructor
  local.tee $3
  i32.store
  i32.const 0
  local.set $4
  i32.const 0
  local.set $5
  loop $for-loop|0
   local.get $5
   local.get $2
   i32.lt_s
   local.set $6
   local.get $6
   if
    local.get $1
    local.get $5
    i32.const 12
    i32.mul
    i32.add
    local.set $7
    local.get $7
    i32.load offset=8
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $3
     local.get $4
     local.tee $8
     i32.const 1
     i32.add
     local.set $4
     local.get $8
     local.get $7
     i32.load
     call $~lib/array/Array<i32>#__set
    end
    local.get $5
    i32.const 1
    i32.add
    local.set $5
    br $for-loop|0
   end
  end
  local.get $3
  local.get $4
  call $~lib/array/Array<i32>#set:length
  local.get $3
  local.set $9
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $9
 )
 (func $~lib/map/Map<i32,bool>#set (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $1
  call $~lib/util/hash/HASH<i32>
  local.set $3
  local.get $0
  local.get $1
  local.get $3
  call $~lib/map/Map<i32,bool>#find
  local.set $4
  local.get $4
  if
   local.get $4
   local.get $2
   call $~lib/map/MapEntry<i32,bool>#set:value
   i32.const 0
   drop
  else
   local.get $0
   i32.load offset=16
   local.get $0
   i32.load offset=12
   i32.eq
   if
    local.get $0
    local.get $0
    i32.load offset=20
    local.get $0
    i32.load offset=12
    i32.const 3
    i32.mul
    i32.const 4
    i32.div_s
    i32.lt_s
    if (result i32)
     local.get $0
     i32.load offset=4
    else
     local.get $0
     i32.load offset=4
     i32.const 1
     i32.shl
     i32.const 1
     i32.or
    end
    call $~lib/map/Map<i32,bool>#rehash
   end
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load offset=8
   local.tee $5
   i32.store
   local.get $5
   local.get $0
   local.get $0
   i32.load offset=16
   local.tee $6
   i32.const 1
   i32.add
   call $~lib/map/Map<i32,bool>#set:entriesOffset
   local.get $6
   i32.const 12
   i32.mul
   i32.add
   local.set $4
   local.get $4
   local.get $1
   call $~lib/map/MapEntry<i32,bool>#set:key
   i32.const 0
   drop
   local.get $4
   local.get $2
   call $~lib/map/MapEntry<i32,bool>#set:value
   i32.const 0
   drop
   local.get $0
   local.get $0
   i32.load offset=20
   i32.const 1
   i32.add
   call $~lib/map/Map<i32,bool>#set:entriesCount
   local.get $0
   i32.load
   local.get $3
   local.get $0
   i32.load offset=4
   i32.and
   i32.const 4
   i32.mul
   i32.add
   local.set $6
   local.get $4
   local.get $6
   i32.load
   call $~lib/map/MapEntry<i32,bool>#set:taggedNext
   local.get $6
   local.get $4
   i32.store
  end
  local.get $0
  local.set $7
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $7
 )
 (func $~lib/set/Set<i32>#values (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $0
  i32.load offset=8
  local.set $1
  local.get $0
  i32.load offset=16
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  local.get $2
  call $~lib/array/Array<i32>#constructor
  local.tee $3
  i32.store
  i32.const 0
  local.set $4
  i32.const 0
  local.set $5
  loop $for-loop|0
   local.get $5
   local.get $2
   i32.lt_s
   local.set $6
   local.get $6
   if
    local.get $1
    local.get $5
    i32.const 8
    i32.mul
    i32.add
    local.set $7
    local.get $7
    i32.load offset=4
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $3
     local.get $4
     local.tee $8
     i32.const 1
     i32.add
     local.set $4
     local.get $8
     local.get $7
     i32.load
     call $~lib/array/Array<i32>#__set
    end
    local.get $5
    i32.const 1
    i32.add
    local.set $5
    br $for-loop|0
   end
  end
  local.get $3
  local.get $4
  call $~lib/array/Array<i32>#set:length
  local.get $3
  local.set $9
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $9
 )
 (func $~lib/util/number/itoa32 (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $1
  i32.const 2
  i32.lt_s
  if (result i32)
   i32.const 1
  else
   local.get $1
   i32.const 36
   i32.gt_s
  end
  if
   i32.const 1008
   i32.const 1136
   i32.const 373
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.eqz
  if
   i32.const 1200
   local.set $8
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $8
   return
  end
  local.get $0
  i32.const 31
  i32.shr_u
  local.set $2
  local.get $2
  if
   i32.const 0
   local.get $0
   i32.sub
   local.set $0
  end
  local.get $1
  i32.const 10
  i32.eq
  if
   local.get $0
   call $~lib/util/number/decimalCount32
   local.get $2
   i32.add
   local.set $4
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.const 1
   i32.shl
   i32.const 1
   call $~lib/rt/itcms/__new
   local.tee $3
   i32.store
   local.get $3
   local.set $7
   local.get $0
   local.set $6
   local.get $4
   local.set $5
   i32.const 0
   i32.const 1
   i32.ge_s
   drop
   local.get $7
   local.get $6
   local.get $5
   call $~lib/util/number/utoa32_dec_lut
  else
   local.get $1
   i32.const 16
   i32.eq
   if
    i32.const 31
    local.get $0
    i32.clz
    i32.sub
    i32.const 2
    i32.shr_s
    i32.const 1
    i32.add
    local.get $2
    i32.add
    local.set $4
    global.get $~lib/memory/__stack_pointer
    local.get $4
    i32.const 1
    i32.shl
    i32.const 1
    call $~lib/rt/itcms/__new
    local.tee $3
    i32.store
    local.get $3
    local.set $7
    local.get $0
    local.set $6
    local.get $4
    local.set $5
    i32.const 0
    i32.const 1
    i32.ge_s
    drop
    local.get $7
    local.get $6
    i64.extend_i32_u
    local.get $5
    call $~lib/util/number/utoa_hex_lut
   else
    local.get $0
    local.set $4
    local.get $4
    i64.extend_i32_u
    local.get $1
    call $~lib/util/number/ulog_base
    local.get $2
    i32.add
    local.set $7
    global.get $~lib/memory/__stack_pointer
    local.get $7
    i32.const 1
    i32.shl
    i32.const 1
    call $~lib/rt/itcms/__new
    local.tee $3
    i32.store
    local.get $3
    local.get $4
    i64.extend_i32_u
    local.get $7
    local.get $1
    call $~lib/util/number/utoa64_any_core
   end
  end
  local.get $2
  if
   local.get $3
   i32.const 45
   i32.store16
  end
  local.get $3
  local.set $8
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $8
 )
 (func $~lib/string/String#concat (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $0
  call $~lib/string/String#get:length
  i32.const 1
  i32.shl
  local.set $2
  local.get $1
  call $~lib/string/String#get:length
  i32.const 1
  i32.shl
  local.set $3
  local.get $2
  local.get $3
  i32.add
  local.set $4
  local.get $4
  i32.const 0
  i32.eq
  if
   i32.const 2816
   local.set $6
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $6
   return
  end
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.const 1
  call $~lib/rt/itcms/__new
  local.tee $5
  i32.store
  local.get $5
  local.get $0
  local.get $2
  call $~lib/memory/memory.copy
  local.get $5
  local.get $2
  i32.add
  local.get $1
  local.get $3
  call $~lib/memory/memory.copy
  local.get $5
  local.set $6
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $6
 )
 (func $algorithms/graph/minimum_spanning_tree/kruskals/index/mst~anonymous|1 (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  call $algorithms/graph/minimum_spanning_tree/kruskals/index/MST#constructor
  local.tee $3
  i32.store
  local.get $3
  local.get $0
  i32.load
  call $algorithms/graph/minimum_spanning_tree/kruskals/index/MST#set:parent
  local.get $3
  local.get $0
  i32.load offset=4
  call $algorithms/graph/minimum_spanning_tree/kruskals/index/MST#set:vertex
  local.get $3
  local.set $4
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $4
 )
 (func $~lib/rt/__newArray (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $0
  local.get $1
  i32.shl
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.const 0
  local.get $3
  call $~lib/rt/__newBuffer
  local.tee $5
  i32.store
  i32.const 16
  local.get $2
  call $~lib/rt/itcms/__new
  local.set $6
  local.get $6
  local.get $5
  i32.store
  local.get $6
  local.get $5
  i32.const 0
  call $~lib/rt/itcms/__link
  local.get $6
  local.get $5
  i32.store offset=4
  local.get $6
  local.get $4
  i32.store offset=8
  local.get $6
  local.get $0
  i32.store offset=12
  local.get $6
  local.set $7
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $7
 )
 (func $export:algorithms/graph/minimum_spanning_tree/kruskals/index/MST#get:parent (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $algorithms/graph/minimum_spanning_tree/kruskals/index/MST#get:parent
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:algorithms/graph/minimum_spanning_tree/kruskals/index/MST#set:parent (param $0 i32) (param $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $1
  call $algorithms/graph/minimum_spanning_tree/kruskals/index/MST#set:parent
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:algorithms/graph/minimum_spanning_tree/kruskals/index/MST#get:vertex (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $algorithms/graph/minimum_spanning_tree/kruskals/index/MST#get:vertex
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:algorithms/graph/minimum_spanning_tree/kruskals/index/MST#set:vertex (param $0 i32) (param $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $1
  call $algorithms/graph/minimum_spanning_tree/kruskals/index/MST#set:vertex
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:algorithms/graph/minimum_spanning_tree/kruskals/index/MST#constructor (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $algorithms/graph/minimum_spanning_tree/kruskals/index/MST#constructor
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:algorithms/graph/minimum_spanning_tree/kruskals/index/mst (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $algorithms/graph/minimum_spanning_tree/kruskals/index/mst
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
)
