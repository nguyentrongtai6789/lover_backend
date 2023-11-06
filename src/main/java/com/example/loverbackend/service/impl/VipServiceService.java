package com.example.loverbackend.service.impl;

import com.example.loverbackend.model.VipService;
import com.example.loverbackend.repository.VipServiceRepository;
import com.example.loverbackend.service.IVipServiceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class VipServiceService implements IVipServiceService {
    @Autowired
    private VipServiceRepository vipServiceRepository;
    @Override
    public void save(VipService vipService) {
        vipServiceRepository.save(vipService);
    }

    @Override
    public VipService findById(Long id) {
        Optional<VipService> vipServiceOptional = vipServiceRepository.findById(id);
        if (!vipServiceOptional.equals(null)) {
            return vipServiceOptional.get();
        }
        return null;
    }

    @Override
    public boolean deleteById(Long id) {
        Optional<VipService> vipServiceOptional = vipServiceRepository.findById(id);
        if (!vipServiceOptional.equals(null)) {
            vipServiceRepository.deleteById(id);
            return true;
        }
        return false;
    }

    @Override
    public List<VipService> findAll() {
        return vipServiceRepository.findAll();
    }
}
