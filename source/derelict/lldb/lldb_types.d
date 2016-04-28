//===-- lldb-types.h --------------------------------------------*- C++ -*-===//
//
//                     The LLVM Compiler Infrastructure
//
// This file is distributed under the University of Illinois Open Source
// License. See LICENSE.TXT for details.
//
//===----------------------------------------------------------------------===//

// Translation from C++ to D by Vadim Lopatin
module derelict.lldb.lldb_types;
import derelict.lldb.lldb_enumerations;
//#include "lldb/lldb-forward.h"

//#include <assert.h>
//#include <signal.h>
//#include <stdint.h>

//----------------------------------------------------------------------
// All host systems must define:
//  lldb::condition_t       The native condition type (or a substitute class) for conditions on the host system.
//  lldb::mutex_t           The native mutex type for mutex objects on the host system.
//  lldb::thread_t          The native thread type for spawned threads on the system
//  lldb::thread_arg_t      The type of the one any only thread creation argument for the host system
//  lldb::thread_result_t   The return type that gets returned when a thread finishes.
//  lldb::thread_func_t     The function prototype used to spawn a thread on the host system.
//  #define LLDB_INVALID_PROCESS_ID ...
//  #define LLDB_INVALID_THREAD_ID ...
//  #define LLDB_INVALID_HOST_THREAD ...
//  #define IS_VALID_LLDB_HOST_THREAD ...
//----------------------------------------------------------------------

// TODO: Add a bunch of ifdefs to determine the host system and what
// things should be defined. Currently MacOSX is being assumed by default
// since that is what lldb was first developed for.

//#ifndef _MSC_VER
//#include <stdbool.h>
//#include <unistd.h>
//#endif

version (Windows) {

    //#include <process.h>

    alias mutex_t = void*;
    alias condition_t = void*;
    alias rwlock_t = void*;
    alias process_t = void*;                                  // Process type is HANDLE
    alias thread_t = void*;                                   // Host thread type
    alias file_t = void*;                                     // Host file type
    alias pipe_t = void*;                                     // Host pipe type
    alias socket_t = uint;                                    // Host socket type
    alias thread_key_t = uint;
    alias thread_arg_t = void*;                               // Host thread argument type
    alias thread_result_t = uint;                             // Host thread result type
    alias thread_func_t = thread_result_t function(void *);   // Host thread function type

} else {

    //#include <pthread.h>

    // TODO
    //----------------------------------------------------------------------
    // MacOSX Types
    //----------------------------------------------------------------------
    alias mutex_t = pthread_mutex_t   ;
    alias condition_t = pthread_cond_t;
    alias rwlock_t = pthread_rwlock_t    ;
    alias process_t = uint64_t            ;                  // Process type is just a pid.
    alias thread_t = pthread_t           ;                   // Host thread type
    alias file_t = int                 ;                     // Host file type
    alias pipe_t = int                 ;                     // Host pipe type
    alias socket_t = int                 ;                   // Host socket type
    alias thread_key_t = pthread_key_t       ;
    alias thread_arg_t = void *              ;               // Host thread argument type
    alias thread_result_t = void *              ;            // Host thread result type
    alias thread_func_t = void * function(void *);   // Host thread function type
}

alias LogOutputCallback = void function(const char *, void *baton);
alias CommandOverrideCallback = bool function(void *baton, const char **argv);
//alias CommandOverrideCallbackWithResult = bool function(void *baton,
//                                                        const char **argv,
//                                                        ref lldb_private::CommandReturnObject result);
alias ExpressionCancelCallback = bool function(ExpressionEvaluationPhase phase, void *baton);

immutable LLDB_INVALID_PROCESS = (cast(process_t)-1);
immutable LLDB_INVALID_HOST_THREAD = (cast(thread_t)null);
bool IS_VALID_LLDB_HOST_THREAD(thread_t t) { return ((t) != LLDB_INVALID_HOST_THREAD); }

//#define LLDB_INVALID_HOST_TIME           { 0, 0 }

alias addr_t = ulong;
alias user_id_t = ulong;
alias pid_t = ulong;
alias tid_t = ulong;
alias offset_t = ulong;
alias break_id_t = int;
alias watch_id_t = int;
alias opaque_compiler_type_t = void *;
alias queue_id_t = ulong;
