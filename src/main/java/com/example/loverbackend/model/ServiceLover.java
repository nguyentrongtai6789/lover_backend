package com.example.loverbackend.model;

import lombok.Data;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
@Data
public class ServiceLover {
    @Id
    @GeneratedValue
    private Long id;
    private String name;
    private String description;
    private String avatarService; // link ảnh đại diện của dịch vụ
    @Column(name = "is_active", nullable = false, columnDefinition = "TINYINT(1) DEFAULT 1")
    private int isActive = 1;
}
