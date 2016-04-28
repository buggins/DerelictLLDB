module derelict.lldb.API.SBDebugger;

import derelict.lldb.API.SBTarget;
import derelict.lldb.API.SBError;

struct SBDebugger {
    import derelict.lldb.functions;
    private void * m_opaque_sp;

    //private this(SBDebugger_impl impl) {
    //    _this = impl;
    //}

    //@property bool isNull() {
    //    return _this is null;
    //}


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
        version (EMULATE_FASTCALL) asm { mov ECX, this; mov EDX, filename; }
        return SBDebugger_CreateTarget_long(this, filename, target_triple, platform_name, add_dependent_modules, error);
    }

    //lldb::SBTarget
    //    CreateTarget (const char *filename);
    //?CreateTarget@SBDebugger@lldb@@QAE?AVSBTarget@2@PBD@Z
    //SBTarget CreateTarget (const char *filename) {
    //}



    //static lldb::SBDebugger
    //    Create(bool source_init_files);
    static SBDebugger Create(bool source_init_files) {
        version (EMULATE_FASTCALL) asm { xor ECX, ECX; mov CL, source_init_files; }
        return SBDebugger_Create_bool(source_init_files);
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

    void Clear () {
        version (EMULATE_FASTCALL) asm { mov ECX, this; }
        SBDebugger_Clear(this);
    }

    void SetAsync (bool b) {
        version (EMULATE_FASTCALL) asm { mov ECX, this; xor EDX, EDX; mov DL, b; }
        SBDebugger_SetAsync(this, b);
    }

    @property bool GetAsync () {
        version (EMULATE_FASTCALL) asm { mov ECX, this; }
        return SBDebugger_GetAsync(this);
    }

    @property void SkipLLDBInitFiles (bool b) {
        version (EMULATE_FASTCALL) asm { mov ECX, this; xor EDX, EDX; mov DL, b; }
        SBDebugger_SkipLLDBInitFiles(this, b);
    }

    @property void SkipAppInitFiles (bool b) {
        version (EMULATE_FASTCALL) asm { mov ECX, this; xor EDX, EDX; mov DL, b; }
        SBDebugger_SkipLLDBInitFiles(this, b);
    }
//
//    void
//        SetInputFileHandle (FILE *f, bool transfer_ownership);
//
//    void
//        SetOutputFileHandle (FILE *f, bool transfer_ownership);
//
//    void
//        SetErrorFileHandle (FILE *f, bool transfer_ownership);
//
//    FILE *
//        GetInputFileHandle ();
//
//    FILE *
//        GetOutputFileHandle ();
//
//    FILE *
//        GetErrorFileHandle ();
//
//    void
//        SaveInputTerminalState();
//
//    void
//        RestoreInputTerminalState();
//
//lldb::SBCommandInterpreter
//        GetCommandInterpreter ();
//
//    void
//        HandleCommand (const char *command);
//
//lldb::SBListener
//        GetListener ();
//
//    void
//        HandleProcessEvent (const lldb::SBProcess &process,
//                            const lldb::SBEvent &event,
//                            FILE *out,
//                            FILE *err);
//
//lldb::SBTarget
//        CreateTarget (const char *filename,
//                      const char *target_triple,
//                      const char *platform_name,
//                      bool add_dependent_modules,
//                      lldb::SBError& error);
//
//lldb::SBTarget
//        CreateTargetWithFileAndTargetTriple (const char *filename,
//                                             const char *target_triple);
//
//lldb::SBTarget
//        CreateTargetWithFileAndArch (const char *filename,
//                                     const char *archname);
//
//lldb::SBTarget
//        CreateTarget (const char *filename);
//
//    // Return true if target is deleted from the target list of the debugger.
//    bool
//        DeleteTarget (lldb::SBTarget &target);
//
//lldb::SBTarget
//        GetTargetAtIndex (uint32_t idx);
//
//    uint32_t
//        GetIndexOfTarget (lldb::SBTarget target);
//
//lldb::SBTarget
//        FindTargetWithProcessID (pid_t pid);
//
//lldb::SBTarget
//        FindTargetWithFileAndArch (const char *filename,
//                                   const char *arch);
//
//    uint32_t
//        GetNumTargets ();
//
//lldb::SBTarget
//        GetSelectedTarget ();
//
//    void
//        SetSelectedTarget (SBTarget& target);
//
//lldb::SBPlatform
//        GetSelectedPlatform();
//
//    void
//        SetSelectedPlatform(lldb::SBPlatform &platform);
//
//lldb::SBSourceManager
//        GetSourceManager ();
//
//    // REMOVE: just for a quick fix, need to expose platforms through
//    // SBPlatform from this class.
//lldb::SBError
//        SetCurrentPlatform (const char *platform_name);
//
//    bool
//        SetCurrentPlatformSDKRoot (const char *sysroot);
//
//    // FIXME: Once we get the set show stuff in place, the driver won't need
//    // an interface to the Set/Get UseExternalEditor.
//    bool
//        SetUseExternalEditor (bool input);
//
//    bool 
//        GetUseExternalEditor ();
//
//    bool
//        SetUseColor (bool use_color);
//
//    bool
//        GetUseColor () const;
//
//    static bool
//        GetDefaultArchitecture (char *arch_name, size_t arch_name_len);
//
//    static bool
//        SetDefaultArchitecture (const char *arch_name);
//
//lldb::ScriptLanguage
//        GetScriptingLanguage (const char *script_language_name);
//
//    static const char *
//        GetVersionString ();
//
//    static const char *
//        StateAsCString (lldb::StateType state);
//
//    static bool
//        StateIsRunningState (lldb::StateType state);
//
//    static bool
//        StateIsStoppedState (lldb::StateType state);
//
//    bool
//        EnableLog (const char *channel, const char **categories);
//
//    void
//        SetLoggingCallback (lldb::LogOutputCallback log_callback, void *baton);
//
//    // DEPRECATED
//    void
//        DispatchInput (void* baton,
//                       const void* data,
//                       size_t data_len);
//
//    void
//        DispatchInput (const void *data, size_t data_len);
//
//    void
//        DispatchInputInterrupt ();
//
//    void
//        DispatchInputEndOfFile ();
//
//    void
//        PushInputReader (lldb::SBInputReader &reader);
//
//    const char *
//        GetInstanceName  ();
//
//    static SBDebugger
//        FindDebuggerWithID (int id);
//
//    static lldb::SBError
//        SetInternalVariable (const char *var_name, const char *value, const char *debugger_instance_name);
//
//    static lldb::SBStringList
//        GetInternalVariableValue (const char *var_name, const char *debugger_instance_name);
//
//    bool
//        GetDescription (lldb::SBStream &description);
//
//    uint32_t
//        GetTerminalWidth () const;
//
//    void
//        SetTerminalWidth (uint32_t term_width);
//
//lldb::user_id_t
//        GetID ();
//
//    const char *
//        GetPrompt() const;
//
//    void
//        SetPrompt (const char *prompt);
//
//lldb::ScriptLanguage 
//        GetScriptLanguage() const;
//
//    void
//        SetScriptLanguage (lldb::ScriptLanguage script_lang);
//
//    bool
//        GetCloseInputOnEOF () const;
//
//    void
//        SetCloseInputOnEOF (bool b);
//
//    SBTypeCategory
//        GetCategory (const char* category_name);
//
//    SBTypeCategory
//        GetCategory (lldb::LanguageType lang_type);
//
//    SBTypeCategory
//        CreateCategory (const char* category_name);
//
//    bool
//        DeleteCategory (const char* category_name);
//
//    uint32_t
//        GetNumCategories ();
//
//    SBTypeCategory
//        GetCategoryAtIndex (uint32_t);
//
//    SBTypeCategory
//        GetDefaultCategory();
//
//    SBTypeFormat
//        GetFormatForType (SBTypeNameSpecifier);
//
//    #ifndef LLDB_DISABLE_PYTHON
//    SBTypeSummary
//        GetSummaryForType (SBTypeNameSpecifier);
//    #endif
//
//    SBTypeFilter
//        GetFilterForType (SBTypeNameSpecifier);
//
//    #ifndef LLDB_DISABLE_PYTHON
//    SBTypeSynthetic
//        GetSyntheticForType (SBTypeNameSpecifier);
//    #endif
//
//    void
//        RunCommandInterpreter (bool auto_handle_events,
//                               bool spawn_thread);
//
//    void
//        RunCommandInterpreter (bool auto_handle_events,
//                               bool spawn_thread,
//                               SBCommandInterpreterRunOptions &options,
//                               int  &num_errors,
//                               bool &quit_requested,
//                               bool &stopped_for_crash);
//
//    SBError
//        RunREPL (lldb::LanguageType language, const char *repl_options);

}
