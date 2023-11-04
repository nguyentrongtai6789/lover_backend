package com.example.loverbackend.mapper;

import com.example.loverbackend.dto.BillDTO;
import com.example.loverbackend.model.Bill;
import org.mapstruct.Mapper;

@Mapper(componentModel = "Spring")
public interface BillMapper extends EntityMapper<BillDTO, Bill> {
}
