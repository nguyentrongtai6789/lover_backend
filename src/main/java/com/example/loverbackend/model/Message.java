package com.example.loverbackend.model;

import lombok.Data;

import javax.persistence.*;
import java.time.LocalDateTime;

@Entity
@Data
public class Message extends BaseEntity{
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @ManyToOne
    private Account fromUser; // người gửi
    @ManyToOne
    private Account toUser; // người nhận
    private String content; // nội dung tin nhắn
    private LocalDateTime time;
}
