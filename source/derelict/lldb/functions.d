module derelict.lldb.functions;

public import derelict.lldb.types;



extern( C ) @nogc nothrow {
    import derelict.lldb.API.SBError;
    import derelict.lldb.API.SBTarget;

    // SBDebugger
    // ?Create@SBDebugger@lldb@@SA?AV12@XZ
    // ?Create@SBDebugger@lldb@@SA?AV12@_NP6AXPBDPAX@Z2@Z

    // ?Create@SBDebugger@lldb@@SA?AV12@_N@Z
    //static lldb::SBDebugger
    //    Create(bool source_init_files);
    alias da_SBDebugger_Create_bool = SBDebugger_impl function(bool source_init_files);

    //static void
    //    Initialize();
    alias da_SBDebugger_Initialize = void function();

    //static void
    //    Terminate();
    alias da_SBDebugger_Terminate = void function();

    //lldb::SBTarget
    //CreateTarget (const char *filename,
    //              const char *target_triple,
    //              const char *platform_name,
    //              bool add_dependent_modules,
    //              lldb::SBError& error);
    //?CreateTarget@SBDebugger@lldb@@QAE?AVSBTarget@2@PBD00_NAAVSBError@2@@Z
    alias da_SBDebugger_CreateTarget_long = SBTarget_impl function (SBDebugger_impl _this, const char *filename,
                                                               const char *target_triple,
                                                               const char *platform_name,
                                                               bool add_dependent_modules,
                                                               ref SBError error);

    // SBError::SBError(SBError&)
    // ??0SBError@lldb@@QAE@ABV01@@Z
    alias da_SBError_ctr_SBError = void function(ref SBError _this, ref const SBError rhs);

    // SBError::SBError()
    // ??0SBError@lldb@@QAE@XZ
    alias da_SBError_ctr = void function(ref SBError _this);

    // SBError::~SBError()
    // ??1SBError@lldb@@QAE@XZ
    alias da_SBError_dtr = void function(ref SBError _this);

    //void
    //    Clear ();
    //?Clear@SBError@lldb@@QAEXXZ
    alias da_SBError_Clear = void function(ref SBError _this);

    //bool
    //    Fail () const;
    //?Fail@SBError@lldb@@QBE_NXZ
    alias da_SBError_Fail = bool function(ref const SBError _this);

    //bool
    //    Success () const;
    //?Success@SBError@lldb@@QBE_NXZ
    alias da_SBError_Success = bool function(ref const SBError _this);


}

__gshared {

    da_SBDebugger_Create_bool SBDebugger_Create_bool;
    da_SBDebugger_Initialize SBDebugger_Initialize;
    da_SBDebugger_Terminate SBDebugger_Terminate;
    da_SBDebugger_CreateTarget_long SBDebugger_CreateTarget_long;
    da_SBError_ctr_SBError SBError_ctr_SBError;
    da_SBError_ctr SBError_ctr;
    da_SBError_dtr SBError_dtr;
    da_SBError_Clear SBError_Clear;
    da_SBError_Fail SBError_Fail;
    da_SBError_Success SBError_Success;
}
