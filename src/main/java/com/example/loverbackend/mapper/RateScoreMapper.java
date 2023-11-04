package com.example.loverbackend.mapper;

import com.example.loverbackend.dto.RateScoreDTO;
import com.example.loverbackend.model.RateScore;
import org.mapstruct.Mapper;

@Mapper(componentModel = "Spring")
public interface RateScoreMapper extends EntityMapper<RateScoreDTO, RateScore> {
}
