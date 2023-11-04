package com.example.loverbackend.mapper;

import com.example.loverbackend.dto.MessageDTO;
import com.example.loverbackend.model.Message;
import org.mapstruct.Mapper;

@Mapper(componentModel = "Spring")
public interface MessageMapper extends EntityMapper<MessageDTO, Message>{
}
