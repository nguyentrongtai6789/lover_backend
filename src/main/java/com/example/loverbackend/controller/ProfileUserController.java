package com.example.loverbackend.controller;

import com.example.loverbackend.dto.ProfileUserDTO;
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

    @GetMapping("/findByIdAccount/{id}")
    public ResponseEntity<ProfileUserDTO> findByIdAccount(@PathVariable Long id) {
        return new ResponseEntity<>(profileUserService.findByIdAccount(id), HttpStatus.OK);
    }
}
