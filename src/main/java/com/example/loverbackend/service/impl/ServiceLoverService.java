package com.example.loverbackend.service.impl;

import com.example.loverbackend.model.ServiceLover;
import com.example.loverbackend.repository.ServiceLoverRepository;
import com.example.loverbackend.service.IServiceLoverService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class ServiceLoverService implements IServiceLoverService {
    @Autowired
    private ServiceLoverRepository serviceLoverRepository;
    @Override
    public void save(ServiceLover serviceLover) {
        serviceLoverRepository.save(serviceLover);
    }

    @Override
    public ServiceLover findById(Long id) {
        Optional<ServiceLover> serviceLoverOptional = serviceLoverRepository.findById(id);
        if (!serviceLoverOptional.equals(null)) {
            return serviceLoverOptional.get();
        }
        return null;
    }

    @Override
    public boolean deleteById(Long id) {
        Optional<ServiceLover> serviceLoverOptional = serviceLoverRepository.findById(id);
        if (!serviceLoverOptional.equals(null)) {
           serviceLoverRepository.deleteById(id);
           return true;
        }
        return false;
    }

    @Override
    public List<ServiceLover> findAll() {
        return serviceLoverRepository.findAll();
    }
}
