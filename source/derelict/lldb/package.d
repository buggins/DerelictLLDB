module derelict.lldb;

public import derelict.lldb.types;
public import derelict.lldb.functions;
public import derelict.lldb.API.SBDebugger;

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
            bindFunc( cast( void** )&SBDebugger_Initialize, "?Initialize@SBDebugger@lldb@@SAXXZ" );
            bindFunc( cast( void** )&SBDebugger_Terminate, "?Terminate@SBDebugger@lldb@@SAXXZ" );
              //bindFunc( cast( void** )&FcPatternCreate, "FcPatternCreate" );
            //bindFunc( cast( void** )&FcPatternAddBool, "FcPatternAddBool" );
            //bindFunc( cast( void** )&FcFontList, "FcFontList" );
            //bindFunc( cast( void** )&FcPatternDestroy, "FcPatternDestroy" );
            //bindFunc( cast( void** )&FcObjectSetDestroy, "FcObjectSetDestroy" );
            //bindFunc( cast( void** )&FcPatternGetString, "FcPatternGetString" );
            //bindFunc( cast( void** )&FcPatternGetInteger, "FcPatternGetInteger" );
            //bindFunc( cast( void** )&FcPatternGetBool, "FcPatternGetBool" );
            //bindFunc( cast( void** )&FcFontSetDestroy, "FcFontSetDestroy" );
      }
}

__gshared DerelictLLDBLoader DerelictLLDB;

shared static this() {
    DerelictLLDB = new DerelictLLDBLoader();
}
