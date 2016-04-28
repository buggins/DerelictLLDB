//===-- SBError.h -----------------------------------------------*- C++ -*-===//
//
//                     The LLVM Compiler Infrastructure
//
// This file is distributed under the University of Illinois Open Source
// License. See LICENSE.TXT for details.
//
//===----------------------------------------------------------------------===//


// Translation from C++ to D by Vadim Lopatin
module derelict.lldb.API.SBError;

import derelict.lldb.API.SBDefines;

extern (C++, lldb) {

class SBError {
public:
    this();

    this(ref const SBError rhs);

    ~this();

    //const SBError &
    //operator =(const lldb::SBError &rhs);

    const (char) *
    GetCString () const;

    void
    Clear ();

    bool
    Fail () const;

    bool
    Success () const;

    uint
    GetError () const;

    ErrorType
    GetType () const;

    void
    SetError (uint err, ErrorType type);

    void
    SetErrorToErrno ();

    void
    SetErrorToGenericError ();

    void
    SetErrorString (const char *err_str);

    //int
    //SetErrorStringWithFormat (const char *format, ...) __attribute__ ((format (printf, 2, 3)));

    bool
    IsValid () const;

    bool
    GetDescription (ref SBStream description);

protected:

    //friend class SBCommandReturnObject;
    //friend class SBData;
    //friend class SBDebugger;
    //friend class SBCommunication;
    //friend class SBHostOS;
    //friend class SBPlatform;
    //friend class SBProcess;
    //friend class SBThread;
    //friend class SBTarget;
    //friend class SBValue;
    //friend class SBWatchpoint;
    //friend class SBBreakpoint;
    //friend class SBBreakpointLocation;

    Error *
    get();

    //Error *
    //operator->();

    //const Error &
    //operator*() const;

    //Error &
    //ref();

    void
    SetError (ref const Error lldb_error);

private:
    //std::unique_ptr<lldb_private::Error> m_opaque_ap;

    void
    CreateIfNeeded ();
}


} // namespace lldb

