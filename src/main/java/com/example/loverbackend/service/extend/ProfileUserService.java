package com.example.loverbackend.service.extend;

import com.example.loverbackend.dto.ProfileUserDTO;
import com.example.loverbackend.mapper.ProfileUserMapper;
import com.example.loverbackend.model.ProfileUser;
import com.example.loverbackend.repository.ProfileUserRepository;
import com.example.loverbackend.service.BaseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class ProfileUserService extends BaseService<ProfileUserRepository, ProfileUserDTO, ProfileUser> {
    @Autowired
    private ProfileUserRepository profileUserRepository;
    @Autowired
    private ProfileUserMapper profileUserMapper;
    @Override
    public void save(ProfileUser profileUser) {
        profileUserRepository.save(profileUser);
    }

    @Override
    public ProfileUserDTO getDetails(Long id) {
        Optional<ProfileUser> profileUserOptional = profileUserRepository.findById(id);
        if (!profileUserOptional.equals(null)) {
            return profileUserMapper.toDto(profileUserOptional.get());
        }
        return null;
    }

    @Override
    public boolean deleteById(Long id) {
        Optional<ProfileUser> profileUserOptional = profileUserRepository.findById(id);
        if (!profileUserOptional.equals(null)) {
            profileUserOptional.get().setIsActive(2);
            return true;
        }
        return false;
    }

    @Override
    public List<ProfileUserDTO> findAll() {
        return profileUserMapper.toDto(profileUserRepository.findAll());
    }
    public ProfileUserDTO findByIdAccount(Long id){
        List<ProfileUserDTO> profileUserDTOList = profileUserMapper.toDto(profileUserRepository.findAll());
        for (ProfileUserDTO profileUserDTO: profileUserDTOList){
            if(profileUserDTO.getId().equals(id)){
                return profileUserDTO;
            }
        }
        return null;
    }
}
