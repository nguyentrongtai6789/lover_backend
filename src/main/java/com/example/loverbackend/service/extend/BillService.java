package com.example.loverbackend.service.extend;

import com.example.loverbackend.dto.BillDTO;
import com.example.loverbackend.mapper.BillMapper;
import com.example.loverbackend.model.Bill;
import com.example.loverbackend.repository.BillRepository;
import com.example.loverbackend.service.BaseService;
import com.example.loverbackend.service.impl.StatusBillService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class BillService extends BaseService<BillRepository, BillDTO, Bill> {
    @Autowired
    private BillRepository billRepository;
    @Autowired
    private BillMapper billMapper;


    @Override
    public void save(Bill bill) {
        billRepository.save(bill);
    }

    @Override
    public BillDTO getDetails(Long id) {
        Optional<Bill> billOptional = billRepository.findById(id);
        if (!billOptional.equals(null)) {
            return billMapper.toDto(billOptional.get());
        }
        return null;
    }

    @Override
    public boolean deleteById(Long id) {
        Optional<Bill> billOptional = billRepository.findById(id);
        if (!billOptional.equals(null)) {
            billRepository.deleteById(id);
            return true;
        }
        return false;
    }

    @Override
    public List<BillDTO> findAll() {
        return billMapper.toDto(billRepository.findAll());
    }
    public List<BillDTO> findAllByAccountUserId(Long id) {
        return billMapper.toDto(billRepository.findAllByAccountUser_Id(id));
    }
    public List<BillDTO> findAllByAccountLoverId(Long id) {
        return billMapper.toDto(billRepository.findAllByAccountLover_Id(id));
    }
    public Bill findById(Long id) {
        return billRepository.findById(id).get();
    }
}
