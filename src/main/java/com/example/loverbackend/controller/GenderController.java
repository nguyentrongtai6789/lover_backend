package com.example.loverbackend.controller;

import com.example.loverbackend.service.IGenderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@CrossOrigin("*")
@RequestMapping("api/genders")
public class GenderController {
    @Autowired
    private IGenderService genderService;
    @GetMapping
    public ResponseEntity<Iterable<?>>  showList(){
        return new ResponseEntity<>(genderService.findAll(), HttpStatus.OK);
    }
}
