package com.example.loverbackend.controller;

import com.example.loverbackend.dto.BillDTO;
import com.example.loverbackend.model.*;
import com.example.loverbackend.service.extend.BillService;
import com.example.loverbackend.service.extend.ProfileLoverService;
import com.example.loverbackend.service.impl.NotificationService;
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
    @Autowired
    private NotificationService notificationService;

    @PostMapping("/createBill")
    public ResponseEntity<?> createBill(@RequestBody Bill bill) {
        bill.setCreatedAt(LocalDateTime.now());
        notificationService.save(notificationService.createAlertCreateBillFormSenderToReceiver(bill));
        billService.save(bill);
        return new ResponseEntity<>("OK", HttpStatus.OK);
    }

    @PostMapping("/createBills")
    public ResponseEntity<?> createBills(@RequestBody Bill bill) {
        billService.save(bill);
        return new ResponseEntity<>("OK", HttpStatus.OK);
    }
    @GetMapping("/findAll")
    public ResponseEntity<List<BillDTO>> findAll() {
        return new ResponseEntity<>(billService.findAll(), HttpStatus.OK);
    }
    @GetMapping("/listBillByAccountProfileLoverId/{id}")
    public ResponseEntity<List<BillDTO>> findAllBillProfileLover(@PathVariable Long id){
return new ResponseEntity<>(billService.listBill(id),HttpStatus.OK);
    }
    @GetMapping("/listHistoryBillByAccountProfileLoverId/{id}")
    public ResponseEntity<List<BillDTO>> findAllHistoryBillProfileLover(@PathVariable Long id){
        return new ResponseEntity<>(billService.listHistoryBill(id),HttpStatus.OK);
    }
    @GetMapping("/listBillByAccountProfileUserId/{id}")
    public ResponseEntity<List<BillDTO>> findAllBillProfileUser(@PathVariable Long id){
        return new ResponseEntity<>(billService.listBillProfileUser(id),HttpStatus.OK);
    }
    @GetMapping("/listHistoryBillByAccountProfileUserId/{id}")
    public ResponseEntity<List<BillDTO>> findAllHistoryBillProfileUser(@PathVariable Long id){
        return new ResponseEntity<>(billService.listHistoryBillProfileUser(id),HttpStatus.OK);
    }

    @GetMapping("/listBillProfileUserByEvaluate/{id}")
    public ResponseEntity<List<BillDTO>> listBillProfileUserByEvaluate(@PathVariable Long id){
        return new ResponseEntity<>(billService.listBillProfileUserByEvaluate(id), HttpStatus.OK);
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
        if (bill.getStatusBill().getId() == 5) {
            return new ResponseEntity<>(1, HttpStatus.OK);
        }
        StatusBill statusBill = statusBillService.findById(4L);
        bill.setStatusBill(statusBill);
        billService.save(bill);
        notificationService.save(notificationService.createAlertRefuseByBillFormSenderToReceiver(bill));
        return new ResponseEntity<>(2, HttpStatus.OK);
    }

    @GetMapping("/loverAcceptBill/{idBill}/{idAccountLover}")
    public ResponseEntity<?> loverAcceptBill(@PathVariable Long idBill, @PathVariable Long idAccountLover) {
        Bill bill = billService.findById(idBill);
        ProfileLover profileLover = profileLoverService.findByIdAccount1(idAccountLover);
        if (bill.getStatusBill().getId() == 5) {
            return new ResponseEntity<>("Đơn đã được người đặt huỷ trước đó!", HttpStatus.OK);
        }
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
    @GetMapping("/doneBillByProfileLover/{idBill}")
    public ResponseEntity<?> dongBillByProfileLover(@PathVariable Long idBill){
        Bill bill = billService.findById(idBill);
        ProfileLover profileLover = profileLoverService.findByIdAccount1(bill.getAccountLover().getId());
        StatusLover statusLover = statusLoverService.findById(Long.valueOf(1));
        profileLover.setStatusLover(statusLover);
        profileLover.setTotalViews(profileLover.getTotalViews() + 1L);
        profileLover.setTotalHourRented(profileLover.getTotalHourRented()+bill.getTime());
        profileLover.setTotalMoneyRented(profileLover.getTotalMoneyRented()+ bill.getTotalMoney());
        StatusBill statusBill = statusBillService.findById(Long.valueOf(3));
        bill.setStatusBill(statusBill);
        billService.save(bill);
        notificationService.save(notificationService.createAlertCompleteByBillFormSenderToReceiver(bill));
        return new ResponseEntity<>("", HttpStatus.OK);
    }
    @GetMapping("/lover-accept-bill/{idBill}")
    public ResponseEntity<?> loverAcceptBill1(@PathVariable Long idBill) {
        Bill bill = billService.findById(idBill);
        ProfileLover profileLover = profileLoverService.findByIdAccount1(bill.getAccountLover().getId());
        if (profileLover.getStatusLover().getId() == 2) {
            return new ResponseEntity<>(1, HttpStatus.OK);
        }
        if (bill.getStatusBill().getId() == 5) {
            return new ResponseEntity<>(2, HttpStatus.OK);
        }
        StatusLover statusLover = statusLoverService.findById(2L);
        profileLover.setStatusLover(statusLover);
        StatusBill statusBill = statusBillService.findById(Long.valueOf(2));
        bill.setStatusBill(statusBill);
        Notification notification = notificationService.createAlertConfirmByBillFormSenderToReceiver(bill);
        notificationService.save(notification);
        billService.save(bill);
        return new ResponseEntity<>("Xác nhận đơn thành công!", HttpStatus.OK);
    }
    @GetMapping("cancelBill/{idBill}")
    public ResponseEntity<?> cancelBill(@PathVariable Long idBill){
        Bill bill = billService.findById(idBill);
        if (billService.cancelBill(bill)){
            notificationService.save(notificationService.createAlertCancelBillFormSenderToReceiver(bill));
            return new ResponseEntity<>("Huỷ Đơn thành công",HttpStatus.OK);
        }else {
            return new ResponseEntity<>("Đơn đã được lover xác nhận, vụi lòng liên hệ lover !!",HttpStatus.OK);
        }
    }
}

