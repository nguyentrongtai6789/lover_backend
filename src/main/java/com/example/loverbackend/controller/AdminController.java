package com.example.loverbackend.controller;

import com.example.loverbackend.dto.ProfileUserDTO;
import com.example.loverbackend.service.extend.ProfileUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@CrossOrigin("*")
@RequestMapping("/api/admin")
public class AdminController {
    @Autowired
    private ProfileUserService profileUserService;
    @GetMapping("/findAllUserRegisterToLover")
    public ResponseEntity<List<ProfileUserDTO>> findAllUserRegisterToLover() {
        return new ResponseEntity<>(profileUserService.findByStatusUserId(Long.valueOf(1)), HttpStatus.OK);
    }
}
