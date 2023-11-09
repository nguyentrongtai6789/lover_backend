package com.example.loverbackend.controller;

import com.example.loverbackend.dto.ProfileLoverDTO;
import com.example.loverbackend.model.ProfileLover;
import com.example.loverbackend.service.extend.ProfileLoverService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.web.PageableDefault;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@CrossOrigin("*")
@RequestMapping("/api/profileLover")
public class ProfileLoverController2 {
    @Autowired
    private ProfileLoverService profileLoverService;
    @GetMapping("/findAll")
    public ResponseEntity<Page<ProfileLoverDTO>> findAll(@PageableDefault(size = 4) Pageable pageable) {
        return new ResponseEntity<>(profileLoverService.findAllByPage(pageable), HttpStatus.OK);
    }
    @GetMapping("/getTotalPage")
    public ResponseEntity<String> getTotalPage(@PageableDefault(size = 4) Pageable pageable) {
        int totalPage = profileLoverService.getTotalPage(pageable);
        return new ResponseEntity<>("" + totalPage, HttpStatus.OK );
    }
}
