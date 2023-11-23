package com.example.loverbackend.model;

import lombok.*;

@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
@ToString
public class Message2 {
    private String senderName;
    private String receiverName;
    private String message;
    private String date;
    private Status status;
}
