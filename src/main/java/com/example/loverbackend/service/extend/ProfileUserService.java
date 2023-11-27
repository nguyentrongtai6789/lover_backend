package com.example.loverbackend.service.extend;

import com.example.loverbackend.dto.AccountDTO;
import com.example.loverbackend.dto.ProfileLoverDTO;
import com.example.loverbackend.dto.ProfileUserDTO;
import com.example.loverbackend.mapper.AccountMapper;
import com.example.loverbackend.mapper.ProfileUserMapper;
import com.example.loverbackend.model.*;
import com.example.loverbackend.repository.ProfileLoverRepository;
import com.example.loverbackend.repository.ProfileUserRepository;
import com.example.loverbackend.service.BaseService;
import com.example.loverbackend.service.impl.StatusUserService;
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
    @Autowired
    private StatusUserService statusUserService;
    @Autowired
    private AccountService accountService;
    @Autowired
    private ProfileLoverService profileLoverService;
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
        // đặt trạng thái ban đầu là chưa đăng kí tài khoản lover
        StatusUser statusUser = statusUserService.findById(Long.valueOf(3));
        profileUser.setStatusUser(statusUser);
        profileUser.setAvatarImage("https://firebasestorage.googleapis.com/v0/b/fir-upload-react-824b4.appspot.com/o/images%2Fc6e56503cfdd87da299f72dc416023d4.jpg?alt=media&token=707a56ef-9402-4ec2-8345-2057f928b3c6");
        profileUserRepository.save(profileUser);
    }

    public ProfileUserDTO findByIdAccount(Long id) {
        List<ProfileUser> profileUsers = profileUserRepository.findAll();
        for (ProfileUser profileUser : profileUsers) {
            if (profileUser.getAccount().getId() == id) {
                ProfileUserDTO profileUserDTO = profileUserMapper.toDto(profileUser);
                profileUserDTO.setCreateAt(profileUser.getCreatedAt());
                profileUserDTO.setUpdateAt(profileUser.getUpdatedAt());
                return profileUserDTO;
            }
        }
        return null;
    }
    public ProfileUser findByIdAccountUser(Long id) {
        return profileUserRepository.findByAccount_Id(id);
    }
    public void updateAvatar(String url, Long idAccount) {
        ProfileUser profileUser = profileUserRepository.findByAccount_Id(idAccount);
        profileUser.setAvatarImage(url);
        profileUserRepository.save(profileUser);
        //set lại ảnh cho account
        Account account = accountService.findById(idAccount);
        account.setImage(url);
        accountService.save(account);
    }

    public void updateInfo(ProfileUserDTO profileUserDTO) {
        List<ProfileUser> profileUsers = profileUserRepository.findAll();
        for (ProfileUser profileUser : profileUsers) {
            if (profileUser.getId() == profileUserDTO.getId()) {
                profileUser.setCitizenNumber(profileUserDTO.getCitizenNumber());
                profileUser.setLastName(profileUserDTO.getLastName());
                profileUser.setFirstName(profileUserDTO.getFirstName());
                profileUser.setPhoneNumber(profileUserDTO.getPhoneNumber());
                profileUser.setUpdatedAt(LocalDateTime.now());
                profileUserRepository.save(profileUser);
                break;
            }
        }
    }
    public List<ProfileUserDTO> findByStatusUserId(Long id) {
        return profileUserMapper.toDto(profileUserRepository.findAllByStatusUser_Id(id));
    }
    public void updateProfileUserByTotalSpending(Bill bill){
        ProfileUser profileUser = profileUserRepository.findByAccount_Id(bill.getAccountUser().getId());
        profileUser.setTotalSpending(bill.getTotalMoney()+profileUser.getTotalSpending());
        profileUser.setTotalViews(profileUser.getTotalViews()+ bill.getTime());
        profileUserRepository.save(profileUser);
    }
    public List<ProfileUserDTO> findTop5User() {
        List<ProfileUser> profileUsers = profileUserRepository.findTop5User();
        List<ProfileUserDTO> profileUserDTOS = profileUserMapper.toDto(profileUsers);
        return profileUserDTOS;
    }
}
