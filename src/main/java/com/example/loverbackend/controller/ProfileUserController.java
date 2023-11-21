package com.example.loverbackend.controller;

import com.example.loverbackend.dto.ProfileUserDTO;
import com.example.loverbackend.mapper.ProfileUserMapper;
import com.example.loverbackend.model.ProfileLover;
import com.example.loverbackend.model.ProfileUser;
import com.example.loverbackend.model.StatusUser;
import com.example.loverbackend.service.IStatusUserService;
import com.example.loverbackend.service.extend.ProfileUserService;
import com.example.loverbackend.service.impl.NotificationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@CrossOrigin("*")
@RequestMapping("/api/profileUser")
public class ProfileUserController {
    @Autowired
    private ProfileUserService profileUserService;
    @Autowired
    private ProfileUserMapper profileUserMapper;
    @Autowired
    private IStatusUserService statusUserService;
    @Autowired
    private NotificationService notificationService;

    @GetMapping("/findByIdAccount/{id}")
    public ResponseEntity<ProfileUserDTO> findByIdAccount(@PathVariable Long id) {
        return new ResponseEntity<>(profileUserService.findByIdAccount(id), HttpStatus.OK);
    }

    @PostMapping("/updateAvatarImage/{id}")
    public ResponseEntity<?> updateAvatarImage(@RequestBody ProfileUserDTO profileUserDTO, @PathVariable Long id) {
        profileUserService.updateAvatar(profileUserDTO.getAvatarImage(), id);
        return new ResponseEntity<>("Sửa ảnh thành công!", HttpStatus.OK);
    }

    @PostMapping("/updateInformation")
    public ResponseEntity<ProfileUserDTO> updateInfo(@RequestBody ProfileUserDTO profileUserDTO) {
        profileUserService.updateInfo(profileUserDTO);
        return new ResponseEntity<>(profileUserService.findByIdAccount(profileUserDTO.getAccount().getId()), HttpStatus.OK);
    }

    @GetMapping("/registerToLover/{idAccountUser}")
    public ResponseEntity<?> registerToLover(@PathVariable Long idAccountUser) {
        ProfileUser profileUser = profileUserService.findByIdAccountUser(idAccountUser);
        StatusUser statusUser = statusUserService.findById(Long.valueOf(1));
        profileUser.setStatusUser(statusUser);
        profileUserService.save(profileUser);
        return new ResponseEntity<>("Bạn đã gửi yêu cầu thành công, đợi admin xác nhận!", HttpStatus.OK);
    }

    @DeleteMapping("/deleteNotificationById/{id}")
    public ResponseEntity<?> deleteNotificationById(@PathVariable Long id) {
        notificationService.deleteById(id);
        return new ResponseEntity<>("", HttpStatus.OK);
    }
}