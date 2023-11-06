package com.example.loverbackend.service.impl;

import com.example.loverbackend.model.Country;
import com.example.loverbackend.repository.CountryRepository;
import com.example.loverbackend.service.ICountryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class CountryService implements ICountryService {
    @Autowired
    private CountryRepository countryRepository;
    @Override
    public void save(Country country) {
        countryRepository.save(country);
    }

    @Override
    public Country findById(Long id) {
        Optional<Country> countryOptional = countryRepository.findById(id);
        if (!countryOptional.equals(null)) {
            return countryOptional.get();
        }
        return null;
    }

    @Override
    public boolean deleteById(Long id) {
        Optional<Country> countryOptional = countryRepository.findById(id);
        if (!countryOptional.equals(null)) {
            countryRepository.deleteById(id);
            return true;
        }
        return false;
    }

    @Override
    public List<Country> findAll() {
        return countryRepository.findAll();
    }
}
