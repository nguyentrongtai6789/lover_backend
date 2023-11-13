package com.example.loverbackend.service.impl;

import com.example.loverbackend.model.City;
import com.example.loverbackend.repository.CityRepository;
import com.example.loverbackend.service.ICityService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class CityService implements ICityService {
    @Autowired
    private CityRepository cityRepository;
    @Override
    public void save(City city) {
        cityRepository.save(city);
    }

    @Override
    public City findById(Long id) {
        Optional<City> cityOptional = cityRepository.findById(id);
        if (!cityOptional.equals(null)) {
            return cityOptional.get();
        }
        return null;
    }

    @Override
    public boolean deleteById(Long id) {
        Optional<City> cityOptional = cityRepository.findById(id);
        if (!cityOptional.equals(null)) {
            cityRepository.deleteById(id);
            return true;
        }
        return false;
    }

    @Override
    public List<City> findAll() {
        return cityRepository.findAll();
    }

    @Override
    public List<City> findAllByCountryId(Long id) {
        return cityRepository.findAllByCountryId(id);
    }
}
