package com.example.loverbackend.repository;

import com.example.loverbackend.model.RateScore;
import org.springframework.data.jpa.repository.JpaRepository;

public interface RateScoreRepository extends BaseRepository<RateScore>, JpaRepository<RateScore, Long> {
}
