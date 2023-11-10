package com.example.loverbackend.controller;

import com.example.loverbackend.model.FreeService;
import com.example.loverbackend.service.impl.FreeServiceService;
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
@RequestMapping("/api/freeService")
public class FreeServiceController {
    @Autowired
    private FreeServiceService freeServiceService;
    @GetMapping("/findAll")
    public ResponseEntity<List<FreeService>> findAll() {
        return new ResponseEntity<>(freeServiceService.findAll(), HttpStatus.OK);
    }
}
