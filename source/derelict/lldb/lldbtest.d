module derelict.lldb.lldbtest;

import derelict.lldb;
import dlangui.core.logger;

void runLldbTests() {
    try {
        DerelictLLDB.load();
        Log.i("DerelictLLDB is loaded ok");
    } catch (Exception e) {
        Log.e("Cannot load DerelictLLDB");
        return;
    }
    SBDebugger.Initialize();
    scope(exit) SBDebugger.Terminate();
    SBError err = SBError(false);
    Log.i("Creating SBDebugger");
    SBDebugger debugger = SBDebugger.Create(true);
    if (debugger.isNull) {
        Log.e("Debugger initialization failed");
        return;
    }
    scope(exit) SBDebugger.Destroy(debugger);

    Log.i("SBDebugger created ok");
    SBTarget target = debugger.CreateTarget("dmledit.exe",
                                            null, //arch,
                                            null, //platform,
                                            false, //add_dependent_libs,
                                            err);
    if (err.Success) {
        Log.d("Target created successfully");
        if (target.IsValid) {
            Log.d("Target is valid");
            string m = "";
        }
    }
    Log.d("...");
}
