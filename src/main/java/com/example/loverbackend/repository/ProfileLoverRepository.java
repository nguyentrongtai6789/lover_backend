package com.example.loverbackend.repository;

import com.example.loverbackend.dto.ProfileLoverDTO;
import com.example.loverbackend.dto.ProfileLoverMoneyComparator;
import com.example.loverbackend.model.ProfileLover;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public interface ProfileLoverRepository extends BaseRepository<ProfileLover>, JpaRepository<ProfileLover, Long> {
     default List<ProfileLoverDTO> sortProfileLoversByMoneyDescending(List<ProfileLoverDTO> loverDTOS){
         List<ProfileLoverDTO> profileLoverDTOS = new ArrayList<>(loverDTOS);
         Collections.sort(profileLoverDTOS,new ProfileLoverMoneyComparator());
         return profileLoverDTOS;
    }
}
