package com.example.loverbackend.service.extend;

import com.example.loverbackend.dto.AccountDTO;
import com.example.loverbackend.dto.ProfileUserDTO;
import com.example.loverbackend.mapper.AccountMapper;
import com.example.loverbackend.mapper.ProfileUserMapper;
import com.example.loverbackend.model.Account;
import com.example.loverbackend.model.ProfileUser;
import com.example.loverbackend.repository.ProfileUserRepository;
import com.example.loverbackend.service.BaseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.time.LocalDateTime;
import java.util.List;
import java.util.Optional;

@Service
public class ProfileUserService extends BaseService<ProfileUserRepository, ProfileUserDTO, ProfileUser> {
    @Autowired
    private ProfileUserRepository profileUserRepository;
    @Autowired
    private ProfileUserMapper profileUserMapper;
    @Autowired
    private AccountMapper accountMapper;

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

    public void createProfileUserWhenCreateAccount(Account account) {
        ProfileUser profileUser = new ProfileUser();
        profileUser.setCreatedAt(LocalDateTime.now());
        profileUser.setAccount(account);
        profileUser.setIsActive(1);
        profileUser.setAvatarImage("https://firebasestorage.googleapis.com/v0/b/fir-upload-react-824b4.appspot.com/o/images%2Fc6e56503cfdd87da299f72dc416023d4.jpg?alt=media&token=707a56ef-9402-4ec2-8345-2057f928b3c6");
        profileUserRepository.save(profileUser);
    }

    public ProfileUserDTO findByIdAccount(Long id) {
        List<ProfileUser> profileUsers = profileUserRepository.findAll();
        for (ProfileUser profileUser : profileUsers) {
            if (profileUser.getAccount().getId() == id) {
                AccountDTO accountDTO = accountMapper.toDto(profileUser.getAccount());
                ProfileUserDTO profileUserDTO = profileUserMapper.toDto(profileUser);
                profileUserDTO.setCreateAt(profileUser.getCreatedAt());
                profileUserDTO.setAccountDTO(accountDTO);
                return profileUserDTO;
            }
        }
        return null;
    }

    public void updateAvatar(String url, Long idAccount) {
        List<ProfileUser> profileUsers = profileUserRepository.findAll();
        for (ProfileUser profileUser : profileUsers) {
            if (profileUser.getAccount().getId() == idAccount) {
                profileUser.setAvatarImage(url);
                break;
            }
        }
    }
}
