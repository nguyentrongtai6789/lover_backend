package com.example.loverbackend.controller;

import com.example.loverbackend.dto.ProfileLoverDTO;
import com.example.loverbackend.model.*;
import com.example.loverbackend.service.IStatusUserService;
import com.example.loverbackend.service.extend.ProfileLoverService;
import com.example.loverbackend.service.extend.ProfileUserService;
import com.example.loverbackend.service.impl.StatusLoverService;
import com.example.loverbackend.service.impl.StatusUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.web.PageableDefault;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;

@RestController
@CrossOrigin("*")
@RequestMapping("/api/profileLover")
public class ProfileLoverController2 {
    @Autowired
    private ProfileLoverService profileLoverService;
    @Autowired
    private ProfileUserService profileUserService;
    @Autowired
    private StatusLoverService statusLoverService;

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

    @GetMapping("/findAllByBaseService/{id}")
    public ResponseEntity<List<ProfileLoverDTO>> findAllByBaseService(@PathVariable Long id) {
        return new ResponseEntity<>(profileLoverService.findAllByBaseService(id), HttpStatus.OK);
    }

    @GetMapping("/findById/{id}")
    public ResponseEntity<ProfileLoverDTO> findById(@PathVariable Long id) {
        return new ResponseEntity<>(profileLoverService.getDetails(id), HttpStatus.OK);
    }

    @GetMapping("/findAllStatusLover")
    public ResponseEntity<List<StatusLover>> findAllStatusLover() {
        return new ResponseEntity(statusLoverService.findAll(), HttpStatus.OK);
    }

    @PostMapping("/findAllByFilter")
    public ResponseEntity<List<ProfileLoverDTO>> findAllByFilter(@RequestBody Filter filter) {
        if (filter.getIdBaseService() == 0 && filter.getIdVipService() == 0 && filter.getIdFreeService() == 0) {
            return new ResponseEntity<>(profileLoverService.findAllByNormaFilter(filter), HttpStatus.OK);
        }
        List<ProfileLoverDTO> profileLoverDTOS = profileLoverService.findAllByFilter(filter);
        return new ResponseEntity<>(profileLoverDTOS, HttpStatus.OK);
    }
}
