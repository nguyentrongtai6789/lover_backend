package com.example.loverbackend.controller;

import com.example.loverbackend.dto.CommentDTO;
import com.example.loverbackend.mapper.CommentMapper;
import com.example.loverbackend.model.Bill;
import com.example.loverbackend.model.Comment;
import com.example.loverbackend.service.extend.BillService;
import com.example.loverbackend.service.extend.CommentService;
import com.example.loverbackend.service.extend.ProfileLoverService;
import com.example.loverbackend.service.extend.ProfileUserService;
import com.example.loverbackend.service.impl.NotificationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@CrossOrigin("*")
@RequestMapping("api/comments")
public class CommentController {
    @Autowired
    private CommentService commentService;

    @Autowired
    private CommentMapper commentMapper;

    @Autowired
    private NotificationService notificationService;
    @Autowired
    private ProfileLoverService profileLoverService;
    @GetMapping("/findAllByIdAccountReceive/{id}")
    public ResponseEntity<List<?>> findAllByIdAccountReceive(@PathVariable Long id){
    return new ResponseEntity<>(commentService.findAllByIdAccountReceive(id), HttpStatus.OK);
    }

    @PostMapping
    public ResponseEntity<CommentDTO> createComment(@RequestBody CommentDTO commentDTO){
        commentService.save(commentMapper.toEntity(commentDTO));
        notificationService.save(notificationService.createEvaluateBillFormSenderToReceiver(commentMapper.toEntity(commentDTO)));
        return new ResponseEntity<>(HttpStatus.OK);
    }

    @PostMapping("/{id}")
    public ResponseEntity<?> updateComment(@PathVariable Long id,CommentDTO commentDTO){
        commentService.updateComment(id,commentDTO);
            return new ResponseEntity<>(HttpStatus.OK);
    }
}
