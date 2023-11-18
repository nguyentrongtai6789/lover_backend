package com.example.loverbackend.model;

import lombok.Data;

@Data
public class Filter {
    private Long idGender;
    private Long idVipService;
    private Long idFreeService;
    private Long idStatusLover;
    private Long arrangeCost;
    private Long idCountry;
    private Long idCity;
    private String searchValue;
    private Long idBaseService;
}
