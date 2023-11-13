package com.example.loverbackend.controller;

import com.example.loverbackend.model.Country;
import com.example.loverbackend.service.impl.CountryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@CrossOrigin("*")
@RequestMapping("/api/countrys")
public class CountryController {
    @Autowired
    CountryService countryService;
    @GetMapping
    public ResponseEntity<Iterable<Country>> showList(){
        return new ResponseEntity<>(countryService.findAll(), HttpStatus.OK);
    }
}
