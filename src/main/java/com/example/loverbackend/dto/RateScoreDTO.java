package com.example.loverbackend.dto;

import lombok.Data;

@Data
public class RateScoreDTO extends BaseDTO {
    private Long id;
    private AccountDTO accountDTOSend;
    private AccountDTO accountDTOReceive;
    private double score;
}
