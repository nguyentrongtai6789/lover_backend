package com.example.loverbackend.dto;

import lombok.Data;

import java.time.LocalDateTime;

@Data
public class CommentDTO extends BaseDTO {
    private Long id;
    private LocalDateTime createdAt;
    private AccountDTO accountSend;
    private AccountDTO accountReceive;
    private String content;
    private BillDTO bill;
    private int rating;
}
