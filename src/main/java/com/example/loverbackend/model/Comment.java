package com.example.loverbackend.model;

import lombok.Data;

import javax.persistence.*;

@Entity
@Data
public class Comment extends BaseEntity{
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @ManyToOne
    private Account accountSend; // tài khoản viết bình luận
    @ManyToOne
    private Account accountReceive; // tài khoản được bình luận
    private String content;// nội dung bình luận
    @OneToOne
    private Bill bill;
    private int rating;
}
