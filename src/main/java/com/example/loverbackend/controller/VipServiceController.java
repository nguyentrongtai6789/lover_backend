package com.example.loverbackend.controller;

import com.example.loverbackend.model.VipService;
import com.example.loverbackend.service.impl.VipServiceService;
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
@RequestMapping("/api/vipService")
public class VipServiceController {
    @Autowired
    private VipServiceService vipServiceService;
    @GetMapping("/findAll")
    public ResponseEntity<List<VipService>> findAll() {
        return new ResponseEntity<>(vipServiceService.findAll(), HttpStatus.OK);
    }
}
