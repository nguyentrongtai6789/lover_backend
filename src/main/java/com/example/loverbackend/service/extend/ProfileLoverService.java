package com.example.loverbackend.service.extend;

import com.example.loverbackend.dto.ProfileLoverDTO;
import com.example.loverbackend.dto.ProfileLoverMoneyComparator;
import com.example.loverbackend.mapper.AccountMapper;
import com.example.loverbackend.mapper.ProfileLoverMapper;
import com.example.loverbackend.model.ProfileLover;
import com.example.loverbackend.repository.ProfileLoverRepository;
import com.example.loverbackend.service.BaseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.util.Collections;
import java.util.List;
import java.util.Optional;

@Service
public class ProfileLoverService extends BaseService<ProfileLoverRepository, ProfileLoverDTO, ProfileLover> {
    @Autowired
    private ProfileLoverRepository profileLoverRepository;
    @Autowired
    private ProfileLoverMapper profileLoverMapper;
    @Autowired
    private AccountMapper accountMapper;

    @Override
    public void save(ProfileLover profileLover) {
        profileLoverRepository.save(profileLover);
    }

    @Override
    public ProfileLoverDTO getDetails(Long id) {
        Optional<ProfileLover> profileLoverOptional = profileLoverRepository.findById(id);
        if (!profileLoverOptional.equals(null)) {
            ProfileLoverDTO profileLoverDTO = profileLoverMapper.toDto(profileLoverOptional.get());
            profileLoverDTO.setAccountDTO(accountMapper.toDto(profileLoverOptional.get().getAccount()));
            return profileLoverDTO;
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
        List<ProfileLover> profileLovers = profileLoverRepository.findAll();
        List<ProfileLoverDTO> profileLoverDTOS = profileLoverMapper.toDto(profileLovers);
        for (ProfileLover profileLover : profileLovers) {
            for (ProfileLoverDTO profileLoverDTO : profileLoverDTOS) {
                if (profileLoverDTO.getId().equals(profileLover.getId())) {
                    profileLoverDTO.setAccountDTO(accountMapper.toDto(profileLover.getAccount()));
                }
            }
        }
        return profileLoverDTOS;
    }
    public List<ProfileLoverDTO> sortProfileLoversByMoneyDescending(List<ProfileLoverDTO> lovers) {
        return profileLoverRepository.sortProfileLoversByMoneyDescending(lovers);
    }


}
