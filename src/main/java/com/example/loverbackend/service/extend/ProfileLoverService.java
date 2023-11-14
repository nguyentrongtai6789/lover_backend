package com.example.loverbackend.service.extend;

import com.example.loverbackend.dto.ProfileLoverDTO;
import com.example.loverbackend.mapper.AccountMapper;
import com.example.loverbackend.mapper.ProfileLoverMapper;
import com.example.loverbackend.model.Account;
import com.example.loverbackend.model.ProfileLover;
import com.example.loverbackend.repository.ProfileLoverRepository;
import com.example.loverbackend.service.BaseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageImpl;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
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
    @Autowired
    private AccountService accountService;

    @Override
    public void save(ProfileLover profileLover) {
        profileLoverRepository.save(profileLover);
    }

    @Override
    public ProfileLoverDTO getDetails(Long id) {
        Optional<ProfileLover> profileLoverOptional = profileLoverRepository.findById(id);
        return profileLoverMapper.toDto(profileLoverOptional.orElse(null));
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
        return profileLoverMapper.toDto(profileLovers);
    }

    public List<ProfileLoverDTO> sortProfileLoversByMoneyDescending(List<ProfileLoverDTO> lovers) {
        return profileLoverRepository.sortProfileLoversByMoneyDescending(lovers);
    }

    public List<ProfileLoverDTO> findAllByNameContaining(String name) {
        List<ProfileLover> profileLovers = profileLoverRepository.searchByAccountNameContaining("%" + name + "%");
        List<ProfileLoverDTO> profileLoverDTOS = profileLoverMapper.toDto(profileLovers);
        return profileLoverDTOS;
    }
    public List<ProfileLoverDTO> findAllByVipService(Long id){
        List<ProfileLover> profileLovers = profileLoverRepository.searchByIdVipService(id);
        List<ProfileLoverDTO> profileLoverDTOS = profileLoverMapper.toDto(profileLovers);
        return profileLoverDTOS;
    };
    public List<ProfileLoverDTO> findAllByFreeService(Long id) {
        List<ProfileLover> profileLovers = profileLoverRepository.searchByFreeService(id);
        List<ProfileLoverDTO> profileLoverDTOS = profileLoverMapper.toDto(profileLovers);
        return profileLoverDTOS;
    }
    public List<ProfileLoverDTO> findAllByBaseService(Long id) {
        List<ProfileLover> profileLovers = profileLoverRepository.searchByBaseService(id);
        List<ProfileLoverDTO> profileLoverDTOS = profileLoverMapper.toDto(profileLovers);
        return profileLoverDTOS;
    }
}
