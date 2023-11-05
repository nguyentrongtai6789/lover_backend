package com.example.loverbackend.service;

import com.example.loverbackend.dto.RateScoreDTO;
import com.example.loverbackend.mapper.RateScoreMapper;
import com.example.loverbackend.model.RateScore;
import com.example.loverbackend.repository.RateScoreRepository;
import org.aspectj.apache.bcel.classfile.Module;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class RateScoreService extends BaseService<RateScoreRepository, RateScoreDTO, RateScore> {
    @Autowired
    private RateScoreRepository rateScoreRepository;
    @Autowired
    private RateScoreMapper rateScoreMapper;
    @Override
    public void save(RateScore rateScore) {
        rateScoreRepository.save(rateScore);
    }

    @Override
    public RateScoreDTO getDetails(Long id) {
        Optional<RateScore> rateScoreOptional = rateScoreRepository.findById(id);
        if (!rateScoreOptional.equals(null)) {
            return rateScoreMapper.toDto(rateScoreOptional.get());
        }
        return null;
    }

    @Override
    public boolean deleteById(Long id) {
        Optional<RateScore> rateScoreOptional = rateScoreRepository.findById(id);
        if (!rateScoreOptional.equals(null)) {
           rateScoreOptional.get().setIsActive(2);
           return true;
        }
        return false;
    }

    @Override
    public List<RateScoreDTO> findAll() {
        return rateScoreMapper.toDto(rateScoreRepository.findAll());
    }
}
