package com.example.loverbackend.repository;

import com.example.loverbackend.model.Comment;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface CommentRepository extends BaseRepository<Comment>, JpaRepository<Comment, Long> {
    List<Comment> findCommentByAccountReceiveId(Long id);
}
