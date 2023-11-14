package com.example.loverbackend.repository;

import com.example.loverbackend.model.ProfileLover;
import com.example.loverbackend.model.VipService;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Repository
public interface VipServiceRepository extends JpaRepository<VipService, Long> {
    @Transactional
    @Modifying
    @Query(value = "select *\n" +
            "from vip_service v join (SELECT *\n" +
            "FROM profile_lovers_vip_services\n" +
            "where id_profile_lover = ?) as pv where v.id = pv.id_vip_service;", nativeQuery = true)
    List<VipService> findByIdProfileLover(Long id);
}
