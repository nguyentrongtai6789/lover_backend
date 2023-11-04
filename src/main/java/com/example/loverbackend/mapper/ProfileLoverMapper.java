package com.example.loverbackend.mapper;

import com.example.loverbackend.dto.ProfileLoverDTO;
import com.example.loverbackend.model.ProfileLover;
import org.mapstruct.Mapper;

@Mapper(componentModel = "Spring")
public interface ProfileLoverMapper extends EntityMapper<ProfileLoverDTO, ProfileLover> {
}
