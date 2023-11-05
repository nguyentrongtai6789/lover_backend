package com.example.loverbackend.service;

import com.example.loverbackend.model.StatusLover;
import com.example.loverbackend.repository.StatusLoverRepository;
import org.springframework.beans.factory.ObjectProvider;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class StatusLoverService implements IStatusLoverService{
    @Autowired
    private StatusLoverRepository statusLoverRepository;
    @Override
    public void save(StatusLover statusLover) {
        statusLoverRepository.save(statusLover);
    }

    @Override
    public StatusLover findById(Long id) {
        Optional<StatusLover> statusLoverOptional = statusLoverRepository.findById(id);
        if (!statusLoverOptional.equals(null)) {
            return statusLoverOptional.get();
        }
        return null;
    }

    @Override
    public boolean deleteById(Long id) {
        Optional<StatusLover> statusLoverOptional = statusLoverRepository.findById(id);
        if (!statusLoverOptional.equals(null)) {
            statusLoverRepository.deleteById(id);
            return true;
        }
        return false;
    }

    @Override
    public List<StatusLover> findAll() {
        return statusLoverRepository.findAll();
    }
}
