module derelict.lldb;

public import derelict.lldb.types;
public import derelict.lldb.functions;

public import derelict.lldb.API.SBDebugger;
public import derelict.lldb.API.SBError;
public import derelict.lldb.API.SBTarget;

private {
    import derelict.util.loader;
    import derelict.util.system;

    static if( Derelict_OS_Windows )
        enum libNames = "liblldb.dll";
    else static if( Derelict_OS_Mac )
        enum libNames = "liblldb.dylib";
    else static if( Derelict_OS_Posix )
        enum libNames = "liblldb.so";
    else
        static assert( 0, "Need to implement LLDB libNames for this operating system." );
}


class DerelictLLDBLoader : SharedLibLoader {
      public this() {
            super( libNames );
      }

      protected override void loadSymbols() {
            bindFunc( cast( void** )&SBDebugger_Create_bool, "?Create@SBDebugger@lldb@@SA?AV12@_N@Z" );
            bindFunc( cast( void** )&SBDebugger_Destroy, "?Destroy@SBDebugger@lldb@@SAXAAV12@@Z" );
            bindFunc( cast( void** )&SBDebugger_Initialize, "?Initialize@SBDebugger@lldb@@SAXXZ" );
            bindFunc( cast( void** )&SBDebugger_Terminate, "?Terminate@SBDebugger@lldb@@SAXXZ" );
            bindFunc( cast( void** )&SBDebugger_CreateTarget_long, "?CreateTarget@SBDebugger@lldb@@QAE?AVSBTarget@2@PBD00_NAAVSBError@2@@Z" );
            bindFunc( cast( void** )&SBDebugger_Clear, "?Clear@SBDebugger@lldb@@QAEXXZ" );
            bindFunc( cast( void** )&SBDebugger_SetAsync, "?SetAsync@SBDebugger@lldb@@QAEX_N@Z" );
            bindFunc( cast( void** )&SBDebugger_GetAsync, "?GetAsync@SBDebugger@lldb@@QAE_NXZ" );
            bindFunc( cast( void** )&SBDebugger_SkipLLDBInitFiles, "?SkipLLDBInitFiles@SBDebugger@lldb@@QAEX_N@Z" );
            bindFunc( cast( void** )&SBDebugger_SkipAppInitFiles, "?SkipAppInitFiles@SBDebugger@lldb@@QAEX_N@Z" );

            bindFunc( cast( void** )&SBError_ctr_SBError, "??0SBError@lldb@@QAE@ABV01@@Z" );
            bindFunc( cast( void** )&SBError_ctr, "??0SBError@lldb@@QAE@XZ" );
            bindFunc( cast( void** )&SBError_dtr, "??1SBError@lldb@@QAE@XZ" );
            bindFunc( cast( void** )&SBError_Clear, "?Clear@SBError@lldb@@QAEXXZ" );
            bindFunc( cast( void** )&SBError_Fail, "?Fail@SBError@lldb@@QBE_NXZ" );
            bindFunc( cast( void** )&SBError_Success, "?Success@SBError@lldb@@QBE_NXZ" );

            bindFunc( cast( void** )&SBTarget_IsValid, "?IsValid@SBTarget@lldb@@QBE_NXZ" );
      }
}

__gshared DerelictLLDBLoader DerelictLLDB;

shared static this() {
    DerelictLLDB = new DerelictLLDBLoader();
}
