package com.example.loverbackend.dto;

import lombok.Data;

@Data
public class ProfileUserDTO extends BaseDTO {
    private Long id;
    private AccountDTO accountDTO;
    private String citizenNumber;
    private String lastName;
    private String firstName;
    private String avatarImage;
    private String phoneNumber;
}
