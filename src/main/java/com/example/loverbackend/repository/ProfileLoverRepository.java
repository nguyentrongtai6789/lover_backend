package com.example.loverbackend.repository;

import com.example.loverbackend.model.ProfileLover;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ProfileLoverRepository extends BaseRepository<ProfileLover>, JpaRepository<ProfileLover, Long> {
}
