//===-- SBData.h -----------------------------------------------*- C++ -*-===//
//
//                     The LLVM Compiler Infrastructure
//
// This file is distributed under the University of Illinois Open Source
// License. See LICENSE.TXT for details.
//
//===----------------------------------------------------------------------===//

// Translation from C++ to D by Vadim Lopatin
module derelict.lldb.API.SBData;

import derelict.lldb.API.SBDefines;

extern (C++, lldb) {

class SBData
{
public:

    //this();
    //
    //this(ref const(SBData)rhs);
    //
    ////ref const (SBData)
    ////operator = (ref const(SBData)rhs);
    //
    //~this();
    //
    //ubyte
    //GetAddressByteSize ();
    //
    //void
    //SetAddressByteSize (ubyte addr_byte_size);
    //
    //void
    //Clear ();
    //
    //bool
    //IsValid();
    //
    //size_t
    //GetByteSize ();
    //
    //ByteOrder
    //GetByteOrder();
    //
    //void
    //SetByteOrder (ByteOrder endian);
    //
    //float
    //GetFloat (SBError error, offset_t offset);
    //
    //double
    //GetDouble (SBError error, offset_t offset);
    //
    ////long double
    ////GetLongDouble (SBError error, offset_t offset);
    //
    //addr_t
    //GetAddress (SBError error, offset_t offset);
    //
    //ubyte
    //GetUnsignedInt8 (SBError error, offset_t offset);
    //
    //ushort
    //GetUnsignedInt16 (SBError error, offset_t offset);
    //
    //uint
    //GetUnsignedInt32 (SBError error, offset_t offset);
    //
    //ulong
    //GetUnsignedInt64 (SBError error, offset_t offset);
    //
    //int8_t
    //GetSignedInt8 (SBError error, offset_t offset);
    //
    //int16_t
    //GetSignedInt16 (SBError error, offset_t offset);
    //
    //int
    //GetSignedInt32 (SBError error, offset_t offset);
    //
    //long
    //GetSignedInt64 (SBError error, offset_t offset);
    //
    //const char*
    //GetString (SBError error, offset_t offset);
    //
    //size_t
    //ReadRawData (SBError error,
    //             offset_t offset,
    //             void *buf,
    //             size_t size);
    //
    //bool
    //GetDescription (SBStream description, addr_t base_addr = LLDB_INVALID_ADDRESS);
    //
    //// it would be nice to have SetData(SBError, const void*, size_t) when endianness and address size can be
    //// inferred from the existing DataExtractor, but having two SetData() signatures triggers a SWIG bug where
    //// the typemap isn't applied before resolving the overload, and thus the right function never gets called
    //void
    //SetData (SBError error, const void *buf, size_t size, ByteOrder endian, ubyte addr_size);
    //
    //// see SetData() for why we don't have Append(const void* buf, size_t size)
    //bool
    //Append (const SBData rhs);
    //
    //static SBData
    //CreateDataFromCString (ByteOrder endian, uint addr_byte_size, const char* data);
    //
    //// in the following CreateData*() and SetData*() prototypes, the two parameters array and array_len
    //// should not be renamed or rearranged, because doing so will break the SWIG typemap
    //static SBData
    //CreateDataFromUInt64Array (ByteOrder endian, uint addr_byte_size, ulong* array, size_t array_len);
    //
    //static SBData
    //CreateDataFromUInt32Array (ByteOrder endian, uint addr_byte_size, uint* array, size_t array_len);
    //
    //static SBData
    //CreateDataFromSInt64Array (ByteOrder endian, uint addr_byte_size, long* array, size_t array_len);
    //
    //static SBData
    //CreateDataFromSInt32Array (ByteOrder endian, uint addr_byte_size, int* array, size_t array_len);
    //
    //static SBData
    //CreateDataFromDoubleArray (ByteOrder endian, uint addr_byte_size, double* array, size_t array_len);
    //
    //bool
    //SetDataFromCString (const char* data);
    //
    //bool
    //SetDataFromUInt64Array (ulong* array, size_t array_len);
    //
    //bool
    //SetDataFromUInt32Array (uint* array, size_t array_len);
    //
    //bool
    //SetDataFromSInt64Array (long* array, size_t array_len);
    //
    //bool
    //SetDataFromSInt32Array (int* array, size_t array_len);
    //
    //bool
    //SetDataFromDoubleArray (double* array, size_t array_len);

    
protected:
    
    // Mimic shared pointer...
    //DataExtractor *
    //get() const;
    //
    //DataExtractor *
    //operator->() const;
    //
    //DataExtractorSP &
    //operator*();
    //
    //const DataExtractorSP &
    //operator*() const;

    //this(const DataExtractorSP data_sp);

    //void
    //SetOpaque (const DataExtractorSP data_sp);

private:
    //friend class SBInstruction;
    //friend class SBProcess;
    //friend class SBSection;
    //friend class SBTarget;
    //friend class SBValue;

    //DataExtractorSP  m_opaque_sp;
};


} // namespace lldb
