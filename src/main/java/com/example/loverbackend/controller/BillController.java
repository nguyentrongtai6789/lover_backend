package com.example.loverbackend.controller;

import com.example.loverbackend.dto.BillDTO;
import com.example.loverbackend.model.Bill;
import com.example.loverbackend.service.extend.BillService;
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
}
