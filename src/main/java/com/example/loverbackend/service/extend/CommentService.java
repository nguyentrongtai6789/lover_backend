package com.example.loverbackend.service.extend;

import com.example.loverbackend.dto.CommentDTO;
import com.example.loverbackend.mapper.CommentMapper;
import com.example.loverbackend.model.Comment;
import com.example.loverbackend.repository.CommentRepository;
import com.example.loverbackend.service.BaseService;
import com.example.loverbackend.service.impl.NotificationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.time.LocalDateTime;
import java.util.List;
import java.util.Optional;

@Service
public class CommentService extends BaseService<CommentRepository, CommentDTO, Comment> {
    @Autowired
    private CommentRepository commentRepository;
    @Autowired
    private CommentMapper commentMapper;
    @Autowired
    private NotificationService notificationService;
    @Override
    public void save(Comment comment) {
        comment.setCreatedAt(LocalDateTime.now());
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
    public List<CommentDTO> findAllByIdAccountReceive(Long id){
        return commentMapper.toDto(commentRepository.findCommentByAccountReceiveId(id));
    }
    public void updateComment(Long id ,CommentDTO commentDTO) {
        Optional<Comment> commentDTO1 = commentRepository.findById(id);
        if (commentDTO1.isPresent()) {
            commentDTO.setId(commentDTO1.get().getId());
            commentRepository.save(commentMapper.toEntity(commentDTO));
            notificationService.updateEvaluateBillFormSenderToReceiver(commentMapper.toEntity(commentDTO));
        }
    }
}
