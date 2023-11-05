package com.example.loverbackend.repository;

import com.example.loverbackend.model.ProfileUser;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ProfileUserRepository extends BaseRepository<ProfileUser>, JpaRepository<ProfileUser, Long> {
}
