module derelict.lldb.functions;

public import derelict.lldb.types;



extern(Pascal) @nogc nothrow {
    import derelict.lldb.API.SBError;
    import derelict.lldb.API.SBDebugger;
    import derelict.lldb.API.SBTarget;

    // SBDebugger methods
    //===========================================================
    // ?Create@SBDebugger@lldb@@SA?AV12@XZ
    // ?Create@SBDebugger@lldb@@SA?AV12@_NP6AXPBDPAX@Z2@Z

    // ?Create@SBDebugger@lldb@@SA?AV12@_N@Z
    //static lldb::SBDebugger
    //    Create(bool source_init_files);
    alias da_SBDebugger_Create_bool = extern(Pascal)SBDebugger function(bool source_init_files);

    //static void
    //    Destroy (lldb::SBDebugger &debugger);
    //?Destroy@SBDebugger@lldb@@SAXAAV12@@Z
    alias da_SBDebugger_Destroy = extern(Pascal)void function(ref SBDebugger debugger);

    //static void
    //    Initialize();
    alias da_SBDebugger_Initialize = extern(Pascal)void function();

    //static void
    //    Terminate();
    alias da_SBDebugger_Terminate = extern(Pascal)void function();

    //lldb::SBTarget
    //CreateTarget (const char *filename,
    //              const char *target_triple,
    //              const char *platform_name,
    //              bool add_dependent_modules,
    //              lldb::SBError& error);
    //?CreateTarget@SBDebugger@lldb@@QAE?AVSBTarget@2@PBD00_NAAVSBError@2@@Z
    alias da_SBDebugger_CreateTarget_long = extern(Pascal)SBTarget function (ref SBDebugger _this, const char *filename,
                                                               const char *target_triple,
                                                               const char *platform_name,
                                                               bool add_dependent_modules,
                                                               ref SBError error);

    //?Clear@SBDebugger@lldb@@QAEXXZ
    //void Clear () {
    //}
    alias da_SBDebugger_Clear = extern(Pascal)void function(ref SBDebugger debugger);

    //?SetAsync@SBDebugger@lldb@@QAEX_N@Z
    //void SetAsync (bool b) {
    //}
    alias da_SBDebugger_SetAsync = extern(Pascal)void function(ref SBDebugger debugger, bool b);

    //?GetAsync@SBDebugger@lldb@@QAE_NXZ
    //bool GetAsync() {
    //}
    alias da_SBDebugger_GetAsync = extern(Pascal)bool function(ref SBDebugger debugger);

    //?SkipLLDBInitFiles@SBDebugger@lldb@@QAEX_N@Z
    //    void
    //        SkipLLDBInitFiles (bool b);
    alias da_SBDebugger_SkipLLDBInitFiles = extern(Pascal)void function(ref SBDebugger debugger, bool b);

    //?SkipAppInitFiles@SBDebugger@lldb@@QAEX_N@Z
    //    void
    //        SkipAppInitFiles (bool b);
    alias da_SBDebugger_SkipAppInitFiles = extern(Pascal)void function(ref SBDebugger debugger, bool b);

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


    // SBError methods
    //===========================================================
    // SBError::SBError(SBError&)
    // ??0SBError@lldb@@QAE@ABV01@@Z
    alias da_SBError_ctr_SBError = extern(Pascal)void function(ref SBError _this, ref const(SBError) rhs);

    // SBError::SBError()
    // ??0SBError@lldb@@QAE@XZ
    alias da_SBError_ctr = extern(Pascal)void function(ref SBError _this);

    // SBError::~SBError()
    // ??1SBError@lldb@@QAE@XZ
    alias da_SBError_dtr = extern(Pascal)void function(ref SBError _this);

    //void
    //    Clear ();
    //?Clear@SBError@lldb@@QAEXXZ
    alias da_SBError_Clear = extern(Pascal)void function(ref SBError _this);

    //bool
    //    Fail () const;
    //?Fail@SBError@lldb@@QBE_NXZ
    alias da_SBError_Fail = extern(Pascal)bool function(ref const(SBError) _this);

    //bool
    //    Success () const;
    //?Success@SBError@lldb@@QBE_NXZ
    alias da_SBError_Success = extern(Pascal)bool function(ref const(SBError) _this);


    //bool
    //    IsValid() const;
    //?IsValid@SBTarget@lldb@@QBE_NXZ
    alias da_SBTarget_IsValid = extern(Pascal)bool function(ref const(SBTarget) _this);

}

__gshared {

    da_SBDebugger_Create_bool SBDebugger_Create_bool;
    da_SBDebugger_Destroy SBDebugger_Destroy;
    da_SBDebugger_Initialize SBDebugger_Initialize;
    da_SBDebugger_Terminate SBDebugger_Terminate;
    da_SBDebugger_CreateTarget_long SBDebugger_CreateTarget_long;
    da_SBDebugger_Clear SBDebugger_Clear;
    da_SBDebugger_SetAsync SBDebugger_SetAsync;
    da_SBDebugger_GetAsync SBDebugger_GetAsync;
    da_SBDebugger_SkipLLDBInitFiles SBDebugger_SkipLLDBInitFiles;
    da_SBDebugger_SkipAppInitFiles SBDebugger_SkipAppInitFiles;

    da_SBError_ctr_SBError SBError_ctr_SBError;
    da_SBError_ctr SBError_ctr;
    da_SBError_dtr SBError_dtr;
    da_SBError_Clear SBError_Clear;
    da_SBError_Fail SBError_Fail;
    da_SBError_Success SBError_Success;
    da_SBTarget_IsValid SBTarget_IsValid;
}
