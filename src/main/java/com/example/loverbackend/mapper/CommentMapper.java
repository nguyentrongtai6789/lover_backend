package com.example.loverbackend.mapper;

import com.example.loverbackend.dto.CommentDTO;
import com.example.loverbackend.model.Comment;
import org.mapstruct.Mapper;

@Mapper(componentModel = "Spring")
public interface CommentMapper extends EntityMapper<CommentDTO, Comment>{
}
