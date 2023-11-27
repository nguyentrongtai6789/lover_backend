package com.example.loverbackend.repository;

import com.example.loverbackend.model.ProfileUser;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.transaction.annotation.Transactional;

import java.util.LinkedList;
import java.util.List;

public interface ProfileUserRepository extends BaseRepository<ProfileUser>, JpaRepository<ProfileUser, Long> {
    ProfileUser findByAccount_Id(Long id);
    List<ProfileUser> findAllByStatusUser_Id(Long id);

    @Transactional
    @Modifying
    @Query(value = "select * from profile_user order by total_spending desc limit 5;", nativeQuery = true)
    List<ProfileUser> findTop5User();
}
