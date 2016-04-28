//===-- SBDefines.h ---------------------------------------------*- C++ -*-===//
//
//                     The LLVM Compiler Infrastructure
//
// This file is distributed under the University of Illinois Open Source
// License. See LICENSE.TXT for details.
//
//===----------------------------------------------------------------------===//


// Translation from C++ to D by Vadim Lopatin
module derelict.lldb.API.SBDefines;


// C Includes
// C++ Includes
// Other libraries and framework includes
// Project includes

//#include "lldb/lldb-defines.h"
//#include "lldb/lldb-enumerations.h"
//#include "lldb/lldb-forward.h"
//#include "lldb/lldb-types.h"
//#include "lldb/lldb-versioning.h"

public import derelict.lldb.lldb_defines;
public import derelict.lldb.lldb_enumerations;
public import derelict.lldb.lldb_types;
public import derelict.lldb.lldb_forward;


// Forward Declarations
extern (C++, lldb) {

class SBAddress;
class SBBlock;
class SBBreakpoint;
class SBBreakpointLocation;
class SBBroadcaster;
class SBCommand;
class SBCommandInterpreter;
class SBCommandInterpreterRunOptions;
class SBCommandPluginInterface;
class SBCommandReturnObject;
class SBCommunication;
class SBCompileUnit;
class SBData;
class SBDebugger;
class SBDeclaration;
class SBError;
class SBEvent;
class SBEventList;
class SBExecutionContext;
class SBExpressionOptions;
class SBFileSpec;
class SBFileSpecList;
class SBFrame;
class SBFunction;
class SBHostOS;
class SBInstruction;
class SBInstructionList;
class SBLanguageRuntime;
class SBLaunchInfo;
class SBLineEntry;
class SBListener;
class SBModule;
class SBModuleSpec;
class SBModuleSpecList;
class SBProcess;
class SBQueue;
class SBQueueItem;
class SBSection;
class SBSourceManager;
class SBStream;
class SBStringList;
class SBSymbol;
class SBSymbolContext;
class SBSymbolContextList;
class SBTarget;
class SBThread;
class SBThreadCollection;
class SBThreadPlan;
class SBType;
class SBTypeCategory;
class SBTypeEnumMember;
class SBTypeEnumMemberList;
class SBTypeFilter;
class SBTypeFormat;
class SBTypeMemberFunction;
class SBTypeNameSpecifier;
class SBTypeSummary;
class SBTypeSummaryOptions;
class SBTypeSynthetic;
class SBTypeList;
class SBValue;
class SBValueList;
class SBVariablesOptions;
class SBWatchpoint;
class SBUnixSignals;

}
