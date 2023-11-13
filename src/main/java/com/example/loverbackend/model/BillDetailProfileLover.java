package com.example.loverbackend.model;

import lombok.Data;

import javax.persistence.*;
import java.time.LocalDate;
import java.time.LocalTime;
import java.util.List;

@Entity
@Data
public class BillDetailProfileLover extends BaseEntity{
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private LocalTime timeStart; // thời gian bắt đầu thuê
    private LocalTime timeEnd; // thời gian kết thúc thuê
    private String rentalPeriod; // thời gian thuê
    private LocalDate dayOfHire; // ngày thuê
    @ManyToOne
    private Account accountUser; // tài khoản người dùng thuê
    @ManyToOne
    private Account accountLover; // tài khoản của lover
    @ManyToMany(fetch = FetchType.LAZY)
    @JoinTable(name = "bills_freeServices",
            joinColumns = {@JoinColumn(name = "id_bill")},
            inverseJoinColumns = {@JoinColumn(name = "id_freeService")})
    private List<FreeService> freeServices; // danh sách các dịch vụ free mà user lựa chọn trong profile lover
    @ManyToMany(fetch = FetchType.LAZY)
    @JoinTable(name = "bills_vipServices",
            joinColumns = {@JoinColumn(name = "id_bill")},
            inverseJoinColumns = {@JoinColumn(name = "id_vipService")})
    private List<VipService> vipServices; // danh sách các dịch vụ vip mà user lựa chọn trong profile user
    private double totalMoney; // tổng tiền
    @ManyToOne
    private StatusBill statusBill;
}
