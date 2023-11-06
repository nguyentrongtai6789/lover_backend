package com.example.loverbackend.service.extend;

import com.example.loverbackend.dto.ProfileLoverDTO;
import com.example.loverbackend.mapper.ProfileLoverMapper;
import com.example.loverbackend.model.ProfileLover;
import com.example.loverbackend.repository.ProfileLoverRepository;
import com.example.loverbackend.service.BaseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class ProfileLoverService extends BaseService<ProfileLoverRepository, ProfileLoverDTO, ProfileLover> {
    @Autowired
    private ProfileLoverRepository profileLoverRepository;
    @Autowired
    private ProfileLoverMapper profileLoverMapper;
    @Override
    public void save(ProfileLover profileLover) {
        profileLoverRepository.save(profileLover);
    }

    @Override
    public ProfileLoverDTO getDetails(Long id) {
        Optional<ProfileLover> profileLoverOptional = profileLoverRepository.findById(id);
        if (!profileLoverOptional.equals(null)) {
            return profileLoverMapper.toDto(profileLoverOptional.get());
        }
        return null;
    }

    @Override
    public boolean deleteById(Long id) {
        Optional<ProfileLover> profileLoverOptional = profileLoverRepository.findById(id);
        if (!profileLoverOptional.equals(null)) {
           profileLoverOptional.get().setIsActive(2);
           return true;
        }
        return false;
    }

    @Override
    public List<ProfileLoverDTO> findAll() {
        return profileLoverMapper.toDto(profileLoverRepository.findAll());
    }
}
