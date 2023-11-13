package com.example.loverbackend.model;

import lombok.Data;

import javax.persistence.*;
import java.time.LocalDate;
import java.time.LocalTime;
import java.util.List;
import java.util.Set;

@Entity
@Data
public class ProfileLover extends BaseEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private LocalDate dateOfBirth;
    @ManyToOne
    private Gender gender;
    @ManyToOne
    private City city;
    private String avatarImage;
    private String fullName;
    private String citizenNumber; // số chứng minh nhân dân
    private double height; // chiều cao
    private double weight; // cân nặng
    private String hobby; // sở thích
    private String description; // mô tả thêm về lover
    private String requestToUser; // yêu cầu đối với người thuê
    private String facebookLink;
    @OneToOne
    private Account account;
    @ManyToMany(fetch = FetchType.LAZY)
    @JoinTable(name = "profileLovers_serviceLovers",
            joinColumns = {@JoinColumn(name = "id_profileLover")},
            inverseJoinColumns = {@JoinColumn(name = "id_serviceLover")})
    private List<ServiceLover> serviceLovers; // danh sách các dịch vụ chính mà lover lựa chọn để cung cấp cho user
    @ManyToMany(fetch = FetchType.LAZY)
    @JoinTable(name = "profileLovers_freeServices",
            joinColumns = {@JoinColumn(name = "id_profileLover")},
            inverseJoinColumns = {@JoinColumn(name = "id_freeService")})
    private List<FreeService> freeServices; // danh sách các dịch vụ free mà lover lựa chọn để cung cấp cho user
    @ManyToMany(fetch = FetchType.LAZY)
    @JoinTable(name = "profileLovers_vipServices",
            joinColumns = {@JoinColumn(name = "id_profileLover")},
            inverseJoinColumns = {@JoinColumn(name = "id_vipService")})
    private List<VipService> vipServices; // danh sách các dịch vụ vip mà lover lựa chọn để cung cấp cho user
    private LocalTime totalHourRented; // tổng thời gian đã được thuê
    private double totalMoneyRented; // tổng tiền đã thu nhập được
    private double averageRateScore; // điểm đánh giá trung bình (từ 1 đến 5)
    @ManyToOne
    private StatusLover statusLover;
    private double price; // giá mà lover đưa ra
}
