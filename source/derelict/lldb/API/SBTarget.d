module derelict.lldb.API.SBTarget;

struct SBTarget {
    import derelict.lldb.functions;
    //this(SBTarget_impl impl) {
    //    _this = impl;
    //}

    @property bool isNull() {
        return false;
        //return _this is null;
    }

    @property bool IsValid() const {
        version (EMULATE_FASTCALL) asm { mov ECX, this; }
        return SBTarget_IsValid(this);
    }

private:
    //lldb::DebuggerSP m_opaque_sp;
    private OpaqueSP m_opaque_sp;
    //SBTarget_impl _this;
}
