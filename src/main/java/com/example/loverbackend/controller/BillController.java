package com.example.loverbackend.controller;

import com.example.loverbackend.dto.BillDTO;
import com.example.loverbackend.model.Bill;
import com.example.loverbackend.model.ProfileLover;
import com.example.loverbackend.model.StatusBill;
import com.example.loverbackend.model.StatusLover;
import com.example.loverbackend.service.extend.BillService;
import com.example.loverbackend.service.extend.ProfileLoverService;
import com.example.loverbackend.service.impl.StatusBillService;
import com.example.loverbackend.service.impl.StatusLoverService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.time.LocalDateTime;
import java.util.List;

@RestController
@CrossOrigin("*")
@RequestMapping("/api/bill")
public class BillController {
    @Autowired
    private BillService billService;
    @Autowired
    private StatusBillService statusBillService;
    @Autowired
    private ProfileLoverService profileLoverService;
    @Autowired
    private StatusLoverService statusLoverService;

    @PostMapping("/createBill")
    public ResponseEntity<?> createBill(@RequestBody Bill bill) {
        bill.setCreatedAt(LocalDateTime.now());
        billService.save(bill);
        return new ResponseEntity<>("OK", HttpStatus.OK);
    }

    @GetMapping("/findAll")
    public ResponseEntity<List<BillDTO>> findAll() {
        return new ResponseEntity<>(billService.findAll(), HttpStatus.OK);
    }

    @GetMapping("/findAllByAccountUserId/{id}")
    public ResponseEntity<List<BillDTO>> findByAccountUserId(@PathVariable Long id) {
        return new ResponseEntity<>(billService.findAllByAccountUserId(id), HttpStatus.OK);
    }

    @DeleteMapping("/deleteById/{id}")
    public ResponseEntity<?> deleteById(@PathVariable Long id) {
        if (billService.deleteById(id)) {
            return new ResponseEntity<>("Huỷ đơn thành công!", HttpStatus.OK);
        }
        return new ResponseEntity<>("Đơn không tồn tại", HttpStatus.OK);
    }

    @GetMapping("/findAllByAccountLoverId/{id}")
    public ResponseEntity<List<BillDTO>> findByAccountLoverId(@PathVariable Long id) {
        return new ResponseEntity<>(billService.findAllByAccountLoverId(id), HttpStatus.OK);
    }

    @GetMapping("/loverRejectBill/{idBill}")
    public ResponseEntity<?> loverRejectBill(@PathVariable Long idBill) {
        Bill bill = billService.findById(idBill);
        StatusBill statusBill = statusBillService.findById(Long.valueOf(6));
        bill.setStatusBill(statusBill);
        billService.save(bill);
        return new ResponseEntity<>("Huỷ đơn thành công!", HttpStatus.OK);
    }

    @GetMapping("/loverAcceptBill/{idBill}/{idAccountLover}")
    public ResponseEntity<?> loverAcceptBill(@PathVariable Long idBill, @PathVariable Long idAccountLover) {
        Bill bill = billService.findById(idBill);
        ProfileLover profileLover = profileLoverService.findByIdAccount1(idAccountLover);
        if (profileLover.getStatusLover().getId() == 2) {
            return new ResponseEntity<>("Bạn đang có 1 đơn chưa hoàn thành!", HttpStatus.OK);
        }
        StatusLover statusLover = statusLoverService.findById(Long.valueOf(2));
        profileLover.setStatusLover(statusLover);
        StatusBill statusBill = statusBillService.findById(Long.valueOf(2));
        bill.setStatusBill(statusBill);
        billService.save(bill);
        return new ResponseEntity<>("Xác nhận đơn thành công!", HttpStatus.OK);
    }
    @GetMapping("/doneBillByLover/{idBill}/{idAccountLover}")
    public ResponseEntity<?> doneBillByLover(@PathVariable Long idBill, @PathVariable Long idAccountLover) {
        ProfileLover profileLover = profileLoverService.findByIdAccount1(idAccountLover);
        StatusLover statusLover = statusLoverService.findById(Long.valueOf(1));
        profileLover.setStatusLover(statusLover);
        StatusBill statusBill = statusBillService.findById(Long.valueOf(3));
        Bill bill = billService.findById(idBill);
        bill.setStatusBill(statusBill);
        billService.save(bill);
        return new ResponseEntity<>("", HttpStatus.OK);
    }
    @GetMapping("/doneBillByProfileLover/{idBill}/{idAccountLover}")
    public ResponseEntity<?> dongBillByProfileLover(@PathVariable Long idBill,@PathVariable Long idAccountLover){
        ProfileLover profileLover = profileLoverService.findByIdAccount1(idAccountLover);
        Bill bill = billService.findById(idBill);
        StatusLover statusLover = statusLoverService.findById(Long.valueOf(1));
        profileLover.setStatusLover(statusLover);
        profileLover.setTotalViews(profileLover.getTotalViews() + 1L);
        profileLover.setTotalHourRented(profileLover.getTotalHourRented()+bill.getTime());
        profileLover.setTotalMoneyRented(profileLover.getTotalMoneyRented()+ bill.getTotalMoney());
        StatusBill statusBill = statusBillService.findById(Long.valueOf(3));
        bill.setStatusBill(statusBill);
        billService.save(bill);
        return new ResponseEntity<>("", HttpStatus.OK);
    }
}

