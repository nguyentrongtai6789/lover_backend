package com.example.loverbackend.dto;

import java.util.Comparator;

public class ProfileLoverMoneyComparator implements Comparator<ProfileLoverDTO> {
    @Override
    public int compare(ProfileLoverDTO profileLoverDTO, ProfileLoverDTO t1) {
        return Double.compare(t1.getTotalMoneyRented(),profileLoverDTO.getTotalMoneyRented());
    }
}
