module derelict.lldb.API.SBTarget;

struct SBTarget {
    import derelict.lldb.functions;
    this(SBTarget_impl impl) {
        _this = impl;
    }

    @property bool isNull() {
        return _this is null;
    }

    @property bool IsValid() const {
        return SBTarget_IsValid(this);
    }

private:
    //lldb::DebuggerSP m_opaque_sp;
    SBTarget_impl _this;
}
