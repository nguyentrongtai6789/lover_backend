package com.example.loverbackend.repository;

import com.example.loverbackend.model.ProfileUser;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.LinkedList;
import java.util.List;

public interface ProfileUserRepository extends BaseRepository<ProfileUser>, JpaRepository<ProfileUser, Long> {
    ProfileUser findByAccount_Id(Long id);
    List<ProfileUser> findAllByStatusUser_Id(Long id);
}
