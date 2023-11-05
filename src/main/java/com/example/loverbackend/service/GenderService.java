package com.example.loverbackend.service;

import com.example.loverbackend.model.Gender;
import com.example.loverbackend.repository.GenderRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class GenderService implements IGenderService {
    @Autowired
    private GenderRepository genderRepository;

    @Override
    public void save(Gender gender) {
        genderRepository.save(gender);
    }

    @Override
    public Gender findById(Long id) {
        Optional<Gender> genderOptional = genderRepository.findById(id);
        if (!genderOptional.equals(null)) {
            return genderOptional.get();
        }
        return null;
    }

    @Override
    public boolean deleteById(Long id) {
        Optional<Gender> genderOptional = genderRepository.findById(id);
        if (!genderOptional.equals(null)) {
            genderRepository.deleteById(id);
            return true;
        }
        return false;
    }

    @Override
    public List<Gender> findAll() {
        return genderRepository.findAll();
    }
}
