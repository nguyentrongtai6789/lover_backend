package com.example.loverbackend.service.impl;

import com.example.loverbackend.model.StatusLover;
import com.example.loverbackend.model.StatusUser;
import com.example.loverbackend.repository.StatusUserRepository;
import com.example.loverbackend.service.IStatusUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class StatusUserService implements IStatusUserService {
    @Autowired
    private StatusUserRepository statusUserRepository;
    @Override
    public void save(StatusUser statusUser) {

    }

    @Override
    public StatusUser findById(Long id) {
        StatusUser statusUser = statusUserRepository.findById(id).get();
        return statusUser;
    }

    @Override
    public boolean deleteById(Long id) {
        return false;
    }

    @Override
    public List<StatusUser> findAll() {
        return null;
    }
}
