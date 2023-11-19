package com.example.loverbackend.dto;

import com.example.loverbackend.model.*;
import lombok.Data;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.LocalTime;
import java.util.List;

@Data
public class ProfileLoverDTO extends BaseDTO {
    private Long id;
    private LocalDate dateOfBirth;
    private LocalDateTime createdAt;
    private LocalDateTime updatedAt;
    private LocalDateTime deletedAt;
    private int isActive = 1;
    private Gender gender;
    private City city;
    private String avatarImage;
    private String fullName;
    private String citizenNumber;
    private List<Image> images; // list ảnh của lover
    private double height; // chiều cao
    private double weight; // cân nặng
    private String hobby; // sở thích
    private String description; // mô tả thêm về lover
    private String requestToUser; // yêu cầu đối với người thuê
    private String facebookLink;
    private AccountDTO account;
    private List<ServiceLover> serviceLovers; // danh sách các dịch vụ chính mà lover lựa chọn để cung cấp cho user
    private List<FreeService> freeServices; // danh sách các dịch vụ free mà lover lựa chọn để cung cấp cho user
    private List<VipService> vipServices; // danh sách các dịch vụ vip mà lover lựa chọn để cung cấp cho user
    private int totalHourRented; // tổng thời gian đã được thuê
    private double totalMoneyRented; // tổng tiền đã thu nhập được
    private double averageRateScore; // điểm đánh giá trung bình (từ 1 đến 5)
    private StatusLover statusLover;
    private double price; // giá mà lover đưa ra
}
