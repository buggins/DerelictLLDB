//===-- lldb-defines.h ------------------------------------------*- C++ -*-===//
//
//                     The LLVM Compiler Infrastructure
//
// This file is distributed under the University of Illinois Open Source
// License. See LICENSE.TXT for details.
//
//===----------------------------------------------------------------------===//

// Translation from C++ to D by Vadim Lopatin
module derelict.lldb.lldb_defines;
import derelict.lldb.lldb_types;

//#if defined (_MSC_VER)
//    #if defined(EXPORT_LIBLLDB)
//        #define  LLDB_API __declspec(dllexport)
//    #elif defined(IMPORT_LIBLLDB)
//        #define  LLDB_API __declspec(dllimport)
//    #else
//        #define LLDB_API
//    #endif
//#else // defined (_MSC_VER)
//    #define LLDB_API
//#endif

immutable INT32_MAX = int.max; //2147483647

immutable UINT32_MAX = uint.max; //4294967295U

immutable UINT64_MAX = ulong.max; //18446744073709551615ULL

//----------------------------------------------------------------------
// LLDB version
//
// A build script phase can modify this version number if needed.
//----------------------------------------------------------------------
//#define LLDB_VERSION
//#define LLDB_REVISION
//#define LLDB_VERSION_STRING

//----------------------------------------------------------------------
// LLDB defines
//----------------------------------------------------------------------
immutable LLDB_GENERIC_ERROR = UINT32_MAX;

//----------------------------------------------------------------------
// Breakpoints
//----------------------------------------------------------------------
immutable LLDB_INVALID_BREAK_ID = 0;
immutable LLDB_DEFAULT_BREAK_SIZE = 0;
//#define LLDB_BREAK_ID_IS_VALID(bid)     ((bid) != (LLDB_INVALID_BREAK_ID))
bool LLDB_BREAK_ID_IS_VALID(break_id_t bid) { return ((bid) != (LLDB_INVALID_BREAK_ID)); }
//#define LLDB_BREAK_ID_IS_INTERNAL(bid)  ((bid) < 0)
bool LLDB_BREAK_ID_IS_INTERNAL(break_id_t bid) { return ((bid) < 0); }

//----------------------------------------------------------------------
// Watchpoints
//----------------------------------------------------------------------
immutable LLDB_INVALID_WATCH_ID = 0;
//#define LLDB_WATCH_ID_IS_VALID(uid)     ((uid) != (LLDB_INVALID_WATCH_ID))
bool LLDB_WATCH_ID_IS_VALID(watch_id_t uid) { return ((uid) != (LLDB_INVALID_WATCH_ID)); }
immutable LLDB_WATCH_TYPE_READ = (1u << 0);
immutable LLDB_WATCH_TYPE_WRITE = (1u << 1);
//#define LLDB_WATCH_TYPE_IS_VALID(type)  ((type | LLDB_WATCH_TYPE_READ) || (type | LLDB_WATCH_TYPE_WRITE))
bool LLDB_WATCH_TYPE_IS_VALID(int type) { return ((type | LLDB_WATCH_TYPE_READ) || (type | LLDB_WATCH_TYPE_WRITE)); }

//----------------------------------------------------------------------
// Generic Register Numbers
//----------------------------------------------------------------------
immutable LLDB_REGNUM_GENERIC_PC          =0;   // Program Counter
immutable LLDB_REGNUM_GENERIC_SP          =1;   // Stack Pointer
immutable LLDB_REGNUM_GENERIC_FP          =2;   // Frame Pointer
immutable LLDB_REGNUM_GENERIC_RA          =3;   // Return Address
immutable LLDB_REGNUM_GENERIC_FLAGS       =4;   // Processor flags register
immutable LLDB_REGNUM_GENERIC_ARG1        =5;   // The register that would contain pointer size or less argument 1 (if any)
immutable LLDB_REGNUM_GENERIC_ARG2        =6;   // The register that would contain pointer size or less argument 2 (if any)
immutable LLDB_REGNUM_GENERIC_ARG3        =7;   // The register that would contain pointer size or less argument 3 (if any)
immutable LLDB_REGNUM_GENERIC_ARG4        =8;   // The register that would contain pointer size or less argument 4 (if any)
immutable LLDB_REGNUM_GENERIC_ARG5        =9;   // The register that would contain pointer size or less argument 5 (if any)
immutable LLDB_REGNUM_GENERIC_ARG6        =10;  // The register that would contain pointer size or less argument 6 (if any)
immutable LLDB_REGNUM_GENERIC_ARG7        =11;  // The register that would contain pointer size or less argument 7 (if any)
immutable LLDB_REGNUM_GENERIC_ARG8        =12;  // The register that would contain pointer size or less argument 8 (if any)
//---------------------------------------------------------------------
/// Invalid value definitions
//----------------------------------------------------------------------
immutable LLDB_INVALID_ADDRESS            =UINT64_MAX;
immutable LLDB_INVALID_INDEX32            =UINT32_MAX;
immutable LLDB_INVALID_IVAR_OFFSET        =UINT32_MAX;
immutable LLDB_INVALID_IMAGE_TOKEN        =UINT32_MAX;
immutable LLDB_INVALID_MODULE_VERSION     =UINT32_MAX;
immutable LLDB_INVALID_REGNUM             =UINT32_MAX;
immutable LLDB_INVALID_UID                =UINT64_MAX;
immutable LLDB_INVALID_PROCESS_ID         =0;
immutable LLDB_INVALID_THREAD_ID          =0;
immutable LLDB_INVALID_FRAME_ID           =UINT32_MAX;
immutable LLDB_INVALID_SIGNAL_NUMBER      =INT32_MAX;
immutable LLDB_INVALID_OFFSET             =UINT64_MAX; // Must match max of lldb::offset_t
immutable LLDB_INVALID_LINE_NUMBER        =UINT32_MAX;
immutable LLDB_INVALID_QUEUE_ID           =0;

//----------------------------------------------------------------------
/// CPU Type definitions
//----------------------------------------------------------------------
immutable LLDB_ARCH_DEFAULT               ="systemArch";
immutable LLDB_ARCH_DEFAULT_32BIT         ="systemArch32";
immutable LLDB_ARCH_DEFAULT_64BIT         ="systemArch64";
immutable LLDB_INVALID_CPUTYPE            =(0xFFFFFFFEu);

//----------------------------------------------------------------------
/// Option Set definitions
//----------------------------------------------------------------------
// FIXME: I'm sure there's some #define magic that can create all 32 sets on the
// fly.  That would have the added benefit of making this unreadable.
immutable uint LLDB_MAX_NUM_OPTION_SETS        =32;
immutable uint LLDB_OPT_SET_ALL                =0xFFFFFFFFU;
immutable uint LLDB_OPT_SET_1                  =(1U << 0);
immutable uint LLDB_OPT_SET_2                  =(1U << 1);
immutable uint LLDB_OPT_SET_3                  =(1U << 2);
immutable uint LLDB_OPT_SET_4                  =(1U << 3);
immutable uint LLDB_OPT_SET_5                  =(1U << 4);
immutable uint LLDB_OPT_SET_6                  =(1U << 5);
immutable uint LLDB_OPT_SET_7                  =(1U << 6);
immutable uint LLDB_OPT_SET_8                  =(1U << 7);
immutable uint LLDB_OPT_SET_9                  =(1U << 8);
immutable uint LLDB_OPT_SET_10                 =(1U << 9);
uint LLDB_OPT_SET_FROM_TO(int A, int B) { return (((1U << (B)) - 1) ^ (((1U << (A))-1) >> 1)); }

immutable MAX_PATH = 260;

//#ifdef _MSC_VER
//// ignore GCC function attributes
//#define __attribute__(X)
//#endif

//#define UNUSED_IF_ASSERT_DISABLED(x) ((void)(x))

//#if defined(__cplusplus)
//
////----------------------------------------------------------------------
///// @def DISALLOW_COPY_AND_ASSIGN(TypeName)
/////     Macro definition for easily disallowing copy constructor and
/////     assignment operators in C++ classes.
////----------------------------------------------------------------------
//#define DISALLOW_COPY_AND_ASSIGN(TypeName) \
//    TypeName(const TypeName&); \
//    const TypeName& operator=(const TypeName&)
//
//#endif // #if defined(__cplusplus)
//
