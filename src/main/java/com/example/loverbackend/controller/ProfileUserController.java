package com.example.loverbackend.controller;

import com.example.loverbackend.dto.ProfileUserDTO;
import com.example.loverbackend.mapper.ProfileUserMapper;
import com.example.loverbackend.model.ProfileUser;
import com.example.loverbackend.service.extend.ProfileUserService;
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
}