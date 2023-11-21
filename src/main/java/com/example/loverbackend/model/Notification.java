package com.example.loverbackend.model;

import lombok.Data;

import javax.persistence.*;
import java.time.LocalDateTime;

@Entity
@Data
public class Notification {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String content;
    private LocalDateTime timeSend;
    @ManyToOne
    private Account accountSend;
    @ManyToOne
    private Account accountReceive;
}
