package com.example.loverbackend.repository;

import com.example.loverbackend.model.Message;
import org.springframework.data.jpa.repository.JpaRepository;

public interface MessageRepository extends BaseRepository<Message>, JpaRepository<Message, Long> {

}
