package com.example.loverbackend.controller;

import com.example.loverbackend.dto.BillDetailProfileLoverDTO;
import com.example.loverbackend.mapper.BillDetailProfileLoverMapper;
import com.example.loverbackend.service.extend.BillDetailProfileLoverService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import javax.persistence.GeneratedValue;
import java.util.List;

@RestController
@CrossOrigin("*")
@RequestMapping("api/billDetailProfileLovers")
public class billDetailProfileLoverController {
    @Autowired
    private BillDetailProfileLoverService billDetailProfileLoverService;
    @Autowired
    BillDetailProfileLoverMapper billDetailProfileLoverMapper;
    @GetMapping()
    public ResponseEntity<List<BillDetailProfileLoverDTO>>  showList(){
        return new ResponseEntity<>(billDetailProfileLoverService.findAll(), HttpStatus.OK);
    }
}
