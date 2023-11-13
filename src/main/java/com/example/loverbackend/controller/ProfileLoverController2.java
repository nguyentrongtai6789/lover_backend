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
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@CrossOrigin("*")
@RequestMapping("/api/profileLover")
public class ProfileLoverController2 {
    @Autowired
    private ProfileLoverService profileLoverService;

    @GetMapping("/findAll")
    public ResponseEntity<List<ProfileLoverDTO>> findAll() {
        return new ResponseEntity<>(profileLoverService.findAll(), HttpStatus.OK);
    }

    @GetMapping("/findAllByNickname/{name}")
    public ResponseEntity<List<ProfileLoverDTO>> findAllByNickname(@PathVariable String name) {
        return new ResponseEntity<>(profileLoverService.findAllByNameContaining(name), HttpStatus.OK);
    }

    @GetMapping("/findAllByVipService/{id}")
    public ResponseEntity<List<ProfileLoverDTO>> findAllByVipService(@PathVariable Long id) {
        return new ResponseEntity<>(profileLoverService.findAllByVipService(id), HttpStatus.OK);
    }

    @GetMapping("/findAllByFreeService/{id}")
    public ResponseEntity<List<ProfileLoverDTO>> findAllByFreeService(@PathVariable Long id) {
        return new ResponseEntity<>(profileLoverService.findAllByFreeService(id), HttpStatus.OK);
    }
}
