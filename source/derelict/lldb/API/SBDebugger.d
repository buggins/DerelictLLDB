module derelict.lldb.API.SBDebugger;


struct SBDebugger {
    import derelict.lldb.functions;
    private SBDebugger_impl _this;
    private this(SBDebugger_impl impl) {
        _this = impl;
    }

    @property bool isNull() {
        return _this is null;
    }

    //static lldb::SBDebugger
    //    Create(bool source_init_files);
    static SBDebugger Create(bool source_init_files) {
        SBDebugger_impl impl = SBDebugger_Create_bool(source_init_files);
        return SBDebugger(impl);
    }

    //static void
    //    Initialize();
    static void Initialize() {
        SBDebugger_Initialize();
    }

    //static void
    //    Terminate();
    static void Terminate() {
        SBDebugger_Terminate();
    }

    //static lldb::SBDebugger
    //    Create(bool source_init_files, lldb::LogOutputCallback log_callback, void *baton);

    //static void
    //    Destroy (lldb::SBDebugger &debugger);

}
