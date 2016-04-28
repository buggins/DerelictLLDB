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
    SBError err = SBError(false);
    {
        Log.i("Creating SBDebugger");
        SBDebugger debugger = SBDebugger.Create(true);
        //if (debugger.isNull) {
        //    Log.e("Debugger initialization failed");
        //    return;
        //}

        /*
        Log.d("SBDebugger.GetAsync: ", debugger.GetAsync);
        debugger.SetAsync(true);
        Log.d("SBDebugger.GetAsync after setting to true", debugger.GetAsync);
        debugger.SetAsync(false);
        Log.d("SBDebugger.GetAsync after setting to false", debugger.GetAsync);
        */

        Log.i("SBDebugger created ok");
        SBTarget target = debugger.CreateTarget("dmledit.exe",
                                                null, //arch,
                                                null, //platform,
                                                false, //add_dependent_libs,
                                                err);
        Log.i("returned from CreateTarget");
        if (err.Success) {
            Log.d("Target created successfully");
            if (target.IsValid) {
                Log.d("Target is valid");
                string m = "";
            } else {
                Log.d("Target is not valid");
            }
        }
        Log.d("Destroying debugger");
        SBDebugger.Destroy(debugger);
        Log.d("Debugger destroyed");
    }
    Log.d("Terminating lldb");
    SBDebugger.Terminate();
    Log.d("Done");
}
