package com.example.loverbackend.controller;

import com.example.loverbackend.model.ServiceLover;
import com.example.loverbackend.service.impl.ServiceLoverService;
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
@RequestMapping("/api/serviceLover")
public class ServiceLoverController {
    @Autowired
    private ServiceLoverService serviceLoverService;
    @GetMapping("/findAll")
    public ResponseEntity<List<ServiceLover>> findAll() {
        return new ResponseEntity<>(serviceLoverService.findAll(), HttpStatus.OK);
    }
}
