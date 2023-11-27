package com.example.loverbackend.service.extend;

import com.example.loverbackend.dto.BaseDTO;
import com.example.loverbackend.dto.BillDTO;
import com.example.loverbackend.mapper.BillMapper;
import com.example.loverbackend.model.Bill;
import com.example.loverbackend.model.Notification;
import com.example.loverbackend.model.StatusBill;
import com.example.loverbackend.repository.BillRepository;
import com.example.loverbackend.service.BaseService;
import com.example.loverbackend.service.impl.StatusBillService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.*;

@Service
public class BillService extends BaseService<BillRepository, BillDTO, Bill> {
    @Autowired
    private BillRepository billRepository;
    @Autowired
    private BillMapper billMapper;
    @Autowired
    private StatusBillService statusBillService;


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
    public List<BillDTO> listBill(Long id){
List<BillDTO> billDTOList = new ArrayList<>();
List<BillDTO> billDTOS = billMapper.toDto(billRepository.findAllByAccountLover_Id(id));
for (BillDTO billDTO:billDTOS){
    if (billDTO.getStatusBill().getId().equals(1L) || billDTO.getStatusBill().getId().equals(2L)){
        billDTOList.add(billDTO);
    }
}
return billDTOList;
    }
    public List<BillDTO> listHistoryBill(Long id){
        List<BillDTO> billDTOList = new ArrayList<>();
        List<BillDTO> billDTOS = billMapper.toDto(billRepository.findAllByAccountLover_Id(id));
        for (BillDTO billDTO:billDTOS){
            if (billDTO.getStatusBill().getId().equals(3L) || billDTO.getStatusBill().getId().equals(4L) || billDTO.getStatusBill().getId().equals(5L)){
                billDTOList.add(billDTO);
            }
        }
        return billDTOList;
    }
    public List<BillDTO> listBillProfileUser(Long id) {
        List<BillDTO> billDTOList = new ArrayList<>();
        List<BillDTO> billDTOS = billMapper.toDto(billRepository.findAllByAccountUser_Id(id));
        for (BillDTO billDTO : billDTOS) {
            if (billDTO.getStatusBill().getId().equals(1L) || billDTO.getStatusBill().getId().equals(2L)) {
                billDTOList.add(billDTO);
            }
        }
        return billDTOList;
    }
    public List<BillDTO> listHistoryBillProfileUser(Long id){
        List<BillDTO> billDTOList = new ArrayList<>();
        List<BillDTO> billDTOS = billMapper.toDto(billRepository.findAllByAccountUser_Id(id));
        for (BillDTO billDTO:billDTOS){
            if (billDTO.getStatusBill().getId().equals(3L) || billDTO.getStatusBill().getId().equals(4L) || billDTO.getStatusBill().getId().equals(5L)){
                billDTOList.add(billDTO);
            }
        }
        return billDTOList;
    }
    public List<BillDTO> listBillProfileUserByEvaluate(Long id){
        List<BillDTO> billDTOList = new ArrayList<>();
        List<BillDTO> billDTOS = billMapper.toDto(billRepository.findAllByAccountUser_Id(id));
        for (BillDTO billDTO:billDTOS){
            if (billDTO.getStatusBill().getId().equals(3L) ){
                billDTOList.add(billDTO);
            }
        }
        return billDTOList;
    }
    public boolean cancelBill (Bill bill){
        StatusBill statusBill = statusBillService.findById(5L);
        if (!bill.getStatusBill().getId().equals(2L)){
            bill.setStatusBill(statusBill);
            billRepository.save(bill);
            return true;
        }
        else {
            return false;
        }
    }
}
