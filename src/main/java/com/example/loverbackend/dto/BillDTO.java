package com.example.loverbackend.dto;

import com.example.loverbackend.model.FreeService;
import com.example.loverbackend.model.StatusBill;
import com.example.loverbackend.model.VipService;
import lombok.Data;

import java.time.LocalDateTime;
import java.time.LocalTime;
import java.util.List;

@Data
public class BillDTO extends BaseDTO {
    private Long id;
    private int time;
    private LocalDateTime createdAt;
    private AccountDTO accountUser;
    private AccountDTO accountLover;
    private List<VipService> vipServices;
    private double totalMoney;
    private StatusBill statusBill;
    private boolean isAssessment = false;
}
