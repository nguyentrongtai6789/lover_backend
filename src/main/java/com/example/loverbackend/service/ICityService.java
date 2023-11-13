package com.example.loverbackend.service;

import com.example.loverbackend.model.City;

import java.util.List;

public interface ICityService extends IGenerateService<City> {
     List<City> findAllByCountryId(Long id);
}
