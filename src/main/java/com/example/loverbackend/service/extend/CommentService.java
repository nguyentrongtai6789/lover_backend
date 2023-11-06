package com.example.loverbackend.service.extend;

import com.example.loverbackend.dto.CommentDTO;
import com.example.loverbackend.mapper.CommentMapper;
import com.example.loverbackend.model.Comment;
import com.example.loverbackend.repository.CommentRepository;
import com.example.loverbackend.service.BaseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class CommentService extends BaseService<CommentRepository, CommentDTO, Comment> {
    @Autowired
    private CommentRepository commentRepository;
    @Autowired
    private CommentMapper commentMapper;
    @Override
    public void save(Comment comment) {
        commentRepository.save(comment);
    }

    @Override
    public CommentDTO getDetails(Long id) {
        Optional<Comment> commentOptional = commentRepository.findById(id);
        if (!commentOptional.equals(null)) {
            return commentMapper.toDto(commentOptional.get());
        }
        return null;
    }

    @Override
    public boolean deleteById(Long id) {
        Optional<Comment> commentOptional = commentRepository.findById(id);
        if (!commentOptional.equals(null)) {
           commentOptional.get().setIsActive(2);
           return true;
        }
        return false;
    }

    @Override
    public List<CommentDTO> findAll() {
        return commentMapper.toDto(commentRepository.findAll());
    }
}
