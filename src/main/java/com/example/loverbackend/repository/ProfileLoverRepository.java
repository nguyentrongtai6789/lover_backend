package com.example.loverbackend.repository;

import com.example.loverbackend.dto.ProfileLoverDTO;
import com.example.loverbackend.dto.ProfileLoverMoneyComparator;
import com.example.loverbackend.model.Account;
import com.example.loverbackend.model.ProfileLover;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public interface ProfileLoverRepository extends BaseRepository<ProfileLover>, JpaRepository<ProfileLover, Long> {
     default List<ProfileLoverDTO> sortProfileLoversByMoneyDescending(List<ProfileLoverDTO> loverDTOS){
         List<ProfileLoverDTO> profileLoverDTOS = new ArrayList<>(loverDTOS);
         Collections.sort(profileLoverDTOS,new ProfileLoverMoneyComparator());
         return profileLoverDTOS;
    }
     ProfileLover findByAccountId(Long id);
    @Transactional
    @Modifying
    @Query(value = "select * from profile_lover p join accounts a on p.account_id = a.id where a.nickname like :keyword", nativeQuery = true)
    List<ProfileLover> searchByAccountNameContaining(@Param("keyword") String keyword);
    @Transactional
    @Modifying
    @Query(value = "SELECT *\n" +
            "FROM profile_lover p\n" +
            "         JOIN profile_lovers_vip_services v ON p.id = v.id_profile_lover\n" +
            "WHERE v.id_vip_service = ?;", nativeQuery = true)
    List<ProfileLover> searchByIdVipService(Long id);
    @Transactional
    @Modifying
    @Query(value = "SELECT *\n" +
            "FROM profile_lover p\n" +
            "         JOIN profile_lovers_free_services f ON p.id = f.id_profile_lover\n" +
            "WHERE f.id_free_service = ?;", nativeQuery = true)
    List<ProfileLover> searchByFreeService(Long id);
    @Transactional
    @Modifying
    @Query(value = "SELECT *\n" +
            "FROM profile_lover p\n" +
            "         JOIN profile_lovers_service_lovers s ON p.id = s.id_profile_lover\n" +
            "WHERE s.id_service_lover = ?;", nativeQuery = true)
    List<ProfileLover> searchByBaseService(Long id);
}
