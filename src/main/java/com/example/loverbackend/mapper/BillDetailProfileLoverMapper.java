package com.example.loverbackend.mapper;

import com.example.loverbackend.dto.BillDetailProfileLoverDTO;
import com.example.loverbackend.model.BillDetailProfileLover;
import org.mapstruct.Mapper;

@Mapper(componentModel = "Spring")
public interface BillDetailProfileLoverMapper extends EntityMapper<BillDetailProfileLoverDTO, BillDetailProfileLover>{
}
