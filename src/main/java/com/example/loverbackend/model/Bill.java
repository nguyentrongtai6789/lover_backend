package com.example.loverbackend.model;

import lombok.Data;

import javax.persistence.*;
import java.time.LocalDateTime;
import java.time.LocalTime;
import java.util.List;

@Entity
@Data
public class Bill extends BaseEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private int time; // thời gian thuê
    @ManyToOne
    private Account accountUser; // tài khoản người dùng thuê
    @ManyToOne
    private Account accountLover; // tài khoản của lover
    @ManyToMany(fetch = FetchType.LAZY)
    @JoinTable(name = "bills_vipServices",
            joinColumns = {@JoinColumn(name = "id_bill")},
            inverseJoinColumns = {@JoinColumn(name = "id_vipService")})
    private List<VipService> vipServices; // danh sách các dịch vụ vip mà user lựa chọn trong profile user
    private double totalMoney; // tổng tiền
    @ManyToOne
    private StatusBill statusBill;
}
