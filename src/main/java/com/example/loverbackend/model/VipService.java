package com.example.loverbackend.model;

import lombok.Data;

import javax.persistence.*;

@Entity
@Data
public class VipService {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String name;
    private String description;
    private String avatarService; // link ảnh đại diện của dịch vụ này
    private double price;
    @Column(name = "is_active", nullable = false, columnDefinition = "TINYINT(1) DEFAULT 1")
    private int isActive = 1;
}
