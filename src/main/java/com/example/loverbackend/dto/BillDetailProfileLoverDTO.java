package com.example.loverbackend.dto;

import com.example.loverbackend.model.FreeService;
import com.example.loverbackend.model.StatusBill;
import com.example.loverbackend.model.VipService;
import lombok.Data;

import java.time.LocalDate;
import java.time.LocalTime;
import java.util.List;
@Data
public class BillDetailProfileLoverDTO extends BaseDTO {
    private Long id;
    private LocalTime timeStart;
    private LocalTime timeEnd;
    private String rentalPeriod;
    private LocalDate dayOfHire;
    private AccountDTO accountUser;
    private AccountDTO accountLover;
    private List<FreeService> freeServices;
    private List<VipService> vipServices;
    private double totalMoney;
    private StatusBill statusBill;
}
