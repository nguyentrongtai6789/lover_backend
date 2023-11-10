package com.example.loverbackend.controller;

import com.example.loverbackend.dto.ProfileLoverDTO;
import com.example.loverbackend.mapper.AccountMapper;
import com.example.loverbackend.mapper.ProfileLoverMapper;
import com.example.loverbackend.service.extend.ProfileLoverService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import java.util.Optional;

@RestController
@CrossOrigin("*")
@RequestMapping("api/profileLoves")
public class ProfileLoverController {
    @Autowired
    ProfileLoverService profileLoverService;
    @Autowired
    ProfileLoverMapper profileLoverMapper;
    @Autowired
    AccountMapper accountMapper;

    @GetMapping
    public ResponseEntity<Iterable<?>> showList() {
        return new ResponseEntity<>(profileLoverService.findAll(), HttpStatus.OK);
    }

    @GetMapping("/{id}")
    public ResponseEntity<?> findById(@PathVariable Long id) {
        Optional<ProfileLoverDTO> profileLover = Optional.ofNullable(profileLoverService.getDetails(id));
        if (profileLover.isPresent()) {
            return new ResponseEntity<>(profileLover, HttpStatus.OK);
        } else {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }

    @PostMapping
    public ResponseEntity<?> save(@RequestBody ProfileLoverDTO profileLoverDTO) {
        profileLoverService.save(profileLoverMapper.toEntity(profileLoverDTO));
        return new ResponseEntity<>(HttpStatus.OK);
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<?> delete(@PathVariable Long id) {
        Optional<ProfileLoverDTO> profileLover = Optional.ofNullable(profileLoverService.getDetails(id));
        if (profileLover.isPresent()) {
            profileLoverService.deleteById(id);
            return new ResponseEntity<>(HttpStatus.OK);
        } else {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }
@GetMapping("/sortProfileLoversByMoneyDescending")
    public ResponseEntity<Iterable<?>> SortProfileLoversByMoneyDescending(){
        return new ResponseEntity<>(profileLoverService.sortProfileLoversByMoneyDescending(profileLoverService.findAll()),HttpStatus.OK);

}

}
