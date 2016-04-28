module derelict.lldb.functions;

public import derelict.lldb.types;



extern( C ) @nogc nothrow {

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


    //alias da_FC_FcObjectSetBuild = FcObjectSet * function(const char *first, ...);
    //
    //alias da_FC_FcPatternCreate = FcPattern * function();
    //
    //alias da_FC_FcPatternAddBool = FcBool function(FcPattern *p, const char *object, FcBool b);
    //
    //alias da_FC_FcFontList = FcFontSet * function(FcConfig    *config, FcPattern    *p, FcObjectSet *os);
    //
    //alias da_FC_FcPatternDestroy = void function(FcPattern *p);
    //
    //alias da_FC_FcObjectSetDestroy = void function(FcObjectSet *os);
    //
    //alias da_FC_FcPatternGetString = FcResult function(const FcPattern *p, const char *object, int n, FcChar8 ** s);
    //
    //alias da_FC_FcPatternGetInteger = FcResult function(const FcPattern *p, const char *object, int n, int *i);
    //
    //alias da_FC_FcPatternGetBool = FcResult function(const FcPattern *p, const char *object, int n, FcBool *b);
    //
    //alias da_FC_FcFontSetDestroy = void  function(FcFontSet *s);
}

__gshared {

    da_SBDebugger_Create_bool SBDebugger_Create_bool;
    da_SBDebugger_Initialize SBDebugger_Initialize;
    da_SBDebugger_Terminate SBDebugger_Terminate;
    //da_FC_FcObjectSetBuild FcObjectSetBuild;
    //
    //da_FC_FcPatternCreate FcPatternCreate;
    //
    //da_FC_FcPatternAddBool FcPatternAddBool;
    //
    //da_FC_FcFontList FcFontList;
    //
    //da_FC_FcPatternDestroy FcPatternDestroy;
    //
    //da_FC_FcObjectSetDestroy FcObjectSetDestroy;
    //
    //da_FC_FcPatternGetString FcPatternGetString;
    //
    //da_FC_FcPatternGetInteger FcPatternGetInteger;
    //
    //da_FC_FcPatternGetBool FcPatternGetBool;
    //
    //da_FC_FcFontSetDestroy FcFontSetDestroy;
}

/+
extern(C) FcObjectSet * FcObjectSetBuild(const char *first, ...);

extern(C) FcPattern * FcPatternCreate();

extern(C) FcBool FcPatternAddBool(FcPattern *p, const char *object, FcBool b);

extern(C) FcFontSet * FcFontList(FcConfig    *config, FcPattern    *p, FcObjectSet *os);

extern(C) void FcPatternDestroy(FcPattern *p);

extern(C) void FcObjectSetDestroy(FcObjectSet *os);

extern(C) FcResult FcPatternGetString(const FcPattern *p, const char *object, int n, FcChar8 ** s);

extern(C) FcResult FcPatternGetInteger(const FcPattern *p, const char *object, int n, int *i);

extern(C) FcResult FcPatternGetBool (const FcPattern *p, const char *object, int n, FcBool *b);

extern(C) void FcFontSetDestroy (FcFontSet *s);

+/