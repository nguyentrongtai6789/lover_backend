package com.example.loverbackend.controller;

import com.example.loverbackend.dto.ProfileUserDTO;
import com.example.loverbackend.service.extend.ProfileUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.Optional;

@RestController
@CrossOrigin("*")
@RequestMapping("api/profileUsers")
public class profileUserCotroller2 {
    @Autowired
    private ProfileUserService profileUserService;
    @GetMapping("/{id}")
    public ResponseEntity<?> findByIdAccount(@PathVariable Long id){
        Optional<ProfileUserDTO> profileUserDTO = Optional.ofNullable(profileUserService.findByIdAccount(id));
        if (profileUserDTO.isPresent()){
            return new ResponseEntity<>(profileUserDTO, HttpStatus.OK);
        }else {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }

    }
}
