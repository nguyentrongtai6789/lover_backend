package com.example.loverbackend.service.impl;

import com.example.loverbackend.model.Country;
import com.example.loverbackend.model.FreeService;
import com.example.loverbackend.repository.FreeServiceRepository;
import com.example.loverbackend.service.IFreeServiceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class FreeServiceService implements IFreeServiceService {
    @Autowired
    private FreeServiceRepository freeServiceRepository;
    @Override
    public void save(FreeService freeService) {
        freeServiceRepository.save(freeService);
    }

    @Override
    public FreeService findById(Long id) {
        Optional<FreeService> freeServiceOptional = freeServiceRepository.findById(id);
        if (!freeServiceOptional.equals(null)) {
            return freeServiceOptional.get();
        }
        return null;
    }

    @Override
    public boolean deleteById(Long id) {
        Optional<FreeService> freeServiceOptional = freeServiceRepository.findById(id);
        if (!freeServiceOptional.equals(null)) {
         freeServiceRepository.deleteById(id);
         return true;
        }
        return false;
    }

    @Override
    public List<FreeService> findAll() {
        return freeServiceRepository.findAll();
    }
}
