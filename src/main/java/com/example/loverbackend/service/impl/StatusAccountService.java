package com.example.loverbackend.service.impl;

import com.example.loverbackend.model.StatusAccount;
import com.example.loverbackend.repository.StatusAccountRepository;
import com.example.loverbackend.service.IStatusAccountService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class StatusAccountService implements IStatusAccountService {
    @Autowired
    private StatusAccountRepository statusAccountRepository;
    @Override
    public void save(StatusAccount statusAccount) {

    }

    @Override
    public StatusAccount findById(Long id) {
        return statusAccountRepository.findById(id).get();
    }

    @Override
    public boolean deleteById(Long id) {
        return false;
    }

    @Override
    public List<StatusAccount> findAll() {
        return null;
    }
}
