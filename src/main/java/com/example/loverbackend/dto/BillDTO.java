package com.example.loverbackend.dto;

import com.example.loverbackend.model.FreeService;
import com.example.loverbackend.model.StatusBill;
import com.example.loverbackend.model.VipService;
import lombok.Data;

import java.time.LocalTime;
import java.util.List;

@Data
public class BillDTO extends BaseDTO {
    private Long id;
    private LocalTime timeStart;
    private LocalTime timeEnd;
    private AccountDTO accountDTOUser;
    private AccountDTO accountDTOLover;
    private List<FreeService> freeServices;
    private List<VipService> vipServices;
    private double totalMoney;
    private StatusBill statusBill;
}
