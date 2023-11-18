package com.example.loverbackend.repository;

import com.example.loverbackend.dto.ProfileLoverDTO;
import com.example.loverbackend.dto.ProfileLoverMoneyComparator;
import com.example.loverbackend.model.Account;
import com.example.loverbackend.model.Filter;
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
    default List<ProfileLoverDTO> sortProfileLoversByMoneyDescending(List<ProfileLoverDTO> loverDTOS) {
        List<ProfileLoverDTO> profileLoverDTOS = new ArrayList<>(loverDTOS);
        Collections.sort(profileLoverDTOS, new ProfileLoverMoneyComparator());
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

    @Transactional
    @Modifying
    @Query(value = "SELECT profile_lover_id\n" +
            "FROM (SELECT p.id AS profile_lover_id, p.gender_id, p.city_id, p.status_lover_id, plsl.id_service_lover\n" +
            "      FROM profile_lover p\n" +
            "               JOIN profile_lovers_service_lovers plsl ON p.id = plsl.id_profile_lover\n" +
            "      WHERE (:idBaseService = 0 OR plsl.id_service_lover = :idBaseService)\n" +
            "        AND (:idGender = 0 OR p.gender_id = :idGender)\n" +
            "        AND (:idCity = 0 OR p.city_id = :idCity)\n" +
            "        AND (:idStatus = 0 OR p.status_lover_id = :idStatus)) AS a\n" +
            "         JOIN profile_lovers_vip_services vs ON a.profile_lover_id = vs.id_profile_lover\n" +
            "         JOIN profile_lovers_free_services fs ON a.profile_lover_id = fs.id_profile_lover\n" +
            "WHERE (:idVipService = 0 OR vs.id_vip_service = :idVipService)\n" +
            "  AND (:idFreeService = 0 OR fs.id_free_service = :idFreeService)"+
            ";", nativeQuery = true)
    List<Long> findAllByFilter(Long idBaseService, Long idGender, Long idCity, Long idStatus,
                               Long idVipService, Long idFreeService);

    @Transactional
    @Modifying
    @Query(value = "SELECT *\n" +
            "FROM profile_lover p\n" +
            "WHERE (:genderId = 0 OR p.gender_id = :genderId)\n" +
            "  AND (:cityId = 0 OR p.city_id = :cityId)\n" +
            "  AND (:statusId = 0 OR p.status_lover_id = :statusId)\n" +
            ";", nativeQuery = true)
    List<ProfileLover> findAllByNormalFilter(Long genderId, Long cityId, Long statusId);
}
