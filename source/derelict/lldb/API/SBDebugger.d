module derelict.lldb.API.SBDebugger;

import derelict.lldb.API.SBTarget;
import derelict.lldb.API.SBError;

struct SBDebugger {
    import derelict.lldb.functions;
    private SBDebugger_impl _this;
    private this(SBDebugger_impl impl) {
        _this = impl;
    }

    @property bool isNull() {
        return _this is null;
    }


    //lldb::SBTarget
    //CreateTarget (const char *filename,
    //              const char *target_triple,
    //              const char *platform_name,
    //              bool add_dependent_modules,
    //              lldb::SBError& error);
    //?CreateTarget@SBDebugger@lldb@@QAE?AVSBTarget@2@PBD00_NAAVSBError@2@@Z
    SBTarget CreateTarget (const char *filename,
                      const char *target_triple,
                      const char *platform_name,
                      bool add_dependent_modules,
                      ref SBError error) {
        return SBDebugger_CreateTarget_long(_this, filename, target_triple, platform_name, add_dependent_modules, error);
    }

    //lldb::SBTarget
    //    CreateTarget (const char *filename);
    //?CreateTarget@SBDebugger@lldb@@QAE?AVSBTarget@2@PBD@Z
    //SBTarget CreateTarget (const char *filename) {
    //}



    //static lldb::SBDebugger
    //    Create(bool source_init_files);
    static SBDebugger Create(bool source_init_files) {
        uint flg = source_init_files;
        version (EMULATE_FASTCALL) asm { mov ECX, flg; }
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
    static void Destroy (ref SBDebugger debugger) {
        version (EMULATE_FASTCALL) asm { mov ECX, debugger; }
        SBDebugger_Destroy(debugger);
    }
}
