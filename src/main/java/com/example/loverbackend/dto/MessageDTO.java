package com.example.loverbackend.dto;

import lombok.Data;

import java.time.LocalDateTime;

@Data
public class MessageDTO extends BaseDTO {
    private Long id;
    private AccountDTO fromUser;
    private AccountDTO toUser;
    private String content;
    private LocalDateTime time;
}
