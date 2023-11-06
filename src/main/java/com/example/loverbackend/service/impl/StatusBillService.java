package com.example.loverbackend.service.impl;

import com.example.loverbackend.model.StatusBill;
import com.example.loverbackend.repository.StatusBillRepository;
import com.example.loverbackend.service.IStatusBillService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class StatusBillService implements IStatusBillService {
    @Autowired
    private StatusBillRepository statusBillRepository;
    @Override
    public void save(StatusBill statusBill) {
        statusBillRepository.save(statusBill);
    }

    @Override
    public StatusBill findById(Long id) {
        Optional<StatusBill> statusBillOptional = statusBillRepository.findById(id);
        if (!statusBillOptional.equals(null)) {
            return statusBillOptional.get();
        }
        return null;
    }

    @Override
    public boolean deleteById(Long id) {
        Optional<StatusBill> statusBillOptional = statusBillRepository.findById(id);
        if (!statusBillOptional.equals(null)) {
            statusBillRepository.deleteById(id);
            return true;
        }
        return false;
    }

    @Override
    public List<StatusBill> findAll() {
        return statusBillRepository.findAll();
    }
}
