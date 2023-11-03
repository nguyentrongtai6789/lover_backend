package com.example.loverbackend.model;

import lombok.Data;

import javax.persistence.*;

@Entity
@Data
public class RateScore extends BaseEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @ManyToOne
    private Account accountSend; // tài khoản cho điểm đánh giá
    @ManyToOne
    private Account accountReceive; // tài khoản nhận được đánh giá
    private double score; // điểm đánh giá (từ 1 đến 5 sao)
}
