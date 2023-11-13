package com.example.loverbackend.controller;
import com.example.loverbackend.service.ICityService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@CrossOrigin("*")
@RequestMapping("api/citys")
public class CityController {
    @Autowired
    private ICityService cityService;
    @GetMapping("/{id}")
    public ResponseEntity<?> findAllByIdCountry(@PathVariable Long id){
        return new ResponseEntity<>(cityService.findAllByCountryId(id), HttpStatus.OK);
    }
}
