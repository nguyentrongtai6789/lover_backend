package com.example.loverbackend.controller;
import com.example.loverbackend.model.Image;
import com.example.loverbackend.service.IImageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@CrossOrigin("*")
@RequestMapping("/api/image")
public class ImageController {
    @Autowired
    private IImageService imageService;

    @GetMapping("/findAllByIdProfileLover/{id}")
    public ResponseEntity<Iterable<?>> showListByIdProfileLover(@PathVariable Long id) {
        return new ResponseEntity<>(imageService.findAllByIdProfileLover(id), HttpStatus.OK);
    }
}
