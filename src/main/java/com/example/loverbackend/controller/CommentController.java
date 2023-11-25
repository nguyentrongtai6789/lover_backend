package com.example.loverbackend.controller;

import com.example.loverbackend.dto.CommentDTO;
import com.example.loverbackend.mapper.CommentMapper;
import com.example.loverbackend.service.extend.CommentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@CrossOrigin("*")
@RequestMapping("comments")
public class CommentController {
    @Autowired
    private CommentService commentService;

    @Autowired
    private CommentMapper commentMapper;
//    @GetMapping("/findAllByIdAccountReceive/{id}")
//    public ResponseEntity<List<?>> findAllByIdAccountReceive(@PathVariable Long id){
//    return new ResponseEntity<>(commentService.findAllByIdAccountReceive(id), HttpStatus.OK);
//    }
    @PostMapping
    public ResponseEntity<?> save(CommentDTO commentDTO){
        commentService.save(commentMapper.toEntity(commentDTO));
        return new ResponseEntity<>(HttpStatus.OK);
    }
}
