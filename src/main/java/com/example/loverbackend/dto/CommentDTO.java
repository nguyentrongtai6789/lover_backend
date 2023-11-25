package com.example.loverbackend.dto;

import lombok.Data;

@Data
public class CommentDTO extends BaseDTO {
    private Long id;
    private AccountDTO accountDTOSend;
    private AccountDTO accountDTOReceive;
    private String content;
    private BillDTO bill;
    private int rating;
}
