package com.example.loverbackend.service.extend;

import com.example.loverbackend.dto.BillDetailProfileLoverDTO;
import com.example.loverbackend.mapper.BillDetailProfileLoverMapper;
import com.example.loverbackend.model.BillDetailProfileLover;
import com.example.loverbackend.repository.BillDetailProfileLoverRepository;
import com.example.loverbackend.service.BaseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class BillDetailProfileLoverService extends BaseService<BillDetailProfileLoverRepository, BillDetailProfileLoverDTO, BillDetailProfileLover> {
    @Autowired
    BillDetailProfileLoverRepository billDetailProfileLoverRepository;
    @Autowired
    BillDetailProfileLoverMapper billDetailProfileLoverMapper;

    @Override
    public void save(BillDetailProfileLover entity) {
        billDetailProfileLoverRepository.save(entity);
    }

    @Override
    public BillDetailProfileLoverDTO getDetails(Long id) {
        Optional<BillDetailProfileLover> billOptional = billDetailProfileLoverRepository.findById(id);
        if (!billOptional.equals(null)) {
            return billDetailProfileLoverMapper.toDto(billOptional.get());
        }
        return null;
    }

    @Override
    public boolean deleteById(Long id) {
        Optional<BillDetailProfileLover> billOptional = billDetailProfileLoverRepository.findById(id);
        if (!billOptional.equals(null)) {
            billOptional.get().setIsActive(2);
            return true;
        }
        return false;
    }

    @Override
    public List<BillDetailProfileLoverDTO> findAll() {
//        try {
            List<BillDetailProfileLover> billDetailProfileLover = billDetailProfileLoverRepository.findAll();
            Optional<BillDetailProfileLover> a = billDetailProfileLoverRepository.findById(2L);
            return billDetailProfileLoverMapper.toDto(billDetailProfileLover);
//        } catch (Exception e) {
//            e.printStackTrace();
//        }
//        return null;
    }
}
