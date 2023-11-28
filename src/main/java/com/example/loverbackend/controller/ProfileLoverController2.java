package com.example.loverbackend.controller;

import com.example.loverbackend.dto.ProfileLoverDTO;
import com.example.loverbackend.model.*;
import com.example.loverbackend.service.IStatusUserService;
import com.example.loverbackend.service.extend.AccountService;
import com.example.loverbackend.service.extend.ProfileLoverService;
import com.example.loverbackend.service.extend.ProfileUserService;
import com.example.loverbackend.service.impl.NotificationService;
import com.example.loverbackend.service.impl.StatusLoverService;
import com.example.loverbackend.service.impl.StatusUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.web.PageableDefault;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

@RestController
@CrossOrigin("*")
    @RequestMapping("/api/profileLover")
public class ProfileLoverController2 {
    @Autowired
    private ProfileLoverService profileLoverService;
    @Autowired
    private ProfileUserService profileUserService;
    @Autowired
    private StatusLoverService statusLoverService;
    @Autowired
    private NotificationService notificationService;
    @Autowired
    private AccountService accountService;

    @GetMapping("/findAll")
    public ResponseEntity<List<ProfileLoverDTO>> findAll() {
        return new ResponseEntity<>(profileLoverService.findAll(), HttpStatus.OK);
    }

    @GetMapping("/findAllByNickname/{name}")
    public ResponseEntity<List<ProfileLoverDTO>> findAllByNickname(@PathVariable String name) {
        return new ResponseEntity<>(profileLoverService.findAllByNameContaining(name), HttpStatus.OK);
    }

    @GetMapping("/findAllByVipService/{id}")
    public ResponseEntity<List<ProfileLoverDTO>> findAllByVipService(@PathVariable Long id) {
        return new ResponseEntity<>(profileLoverService.findAllByVipService(id), HttpStatus.OK);
    }

    @GetMapping("/findAllByFreeService/{id}")
    public ResponseEntity<List<ProfileLoverDTO>> findAllByFreeService(@PathVariable Long id) {
        return new ResponseEntity<>(profileLoverService.findAllByFreeService(id), HttpStatus.OK);
    }

    @GetMapping("/findAllByBaseService/{id}")
    public ResponseEntity<List<ProfileLoverDTO>> findAllByBaseService(@PathVariable Long id) {
        return new ResponseEntity<>(profileLoverService.findAllByBaseService(id), HttpStatus.OK);
    }

    @GetMapping("/findById/{id}")
    public ResponseEntity<ProfileLoverDTO> findById(@PathVariable Long id) {
        return new ResponseEntity<>(profileLoverService.getDetails(id), HttpStatus.OK);
    }

    @GetMapping("/findAllStatusLover")
    public ResponseEntity<List<StatusLover>> findAllStatusLover() {
        return new ResponseEntity(statusLoverService.findAll(), HttpStatus.OK);
    }

    @PostMapping("/findAllByFilter")
    public ResponseEntity<List<ProfileLoverDTO>> findAllByFilter(@RequestBody Filter filter) {
        if (filter.getIdBaseService() == 0 && filter.getIdVipService() == 0 && filter.getIdFreeService() == 0) {
            return new ResponseEntity<>(profileLoverService.findAllByNormaFilter(filter), HttpStatus.OK);
        }
        List<ProfileLoverDTO> profileLoverDTOS = profileLoverService.findAllByFilter(filter);
        return new ResponseEntity<>(profileLoverDTOS, HttpStatus.OK);
    }
    @PostMapping("/userSendRequestRegisterToLover/{idAccount}")
    public ResponseEntity<?> userSendRequestRegisterToLover(@PathVariable Long idAccount,
                                                            @RequestBody ProfileLover profileLover) {
        // tạo profilelover mới nhưng set isActive = 2 (Chưa cho hoạt động)
        profileLoverService.createProfileLoverWhenUserRequest(idAccount, profileLover);
        // tạo thông báo mới gửi đến Admin: (mặc định admin có id = 14)
        Account account = accountService.findById(idAccount);
        Notification notification = notificationService.createNewByIdAccount(idAccount,Long.valueOf(14));
        notification.setContent("Người dùng có nick name là " + account.getNickname()
        + " đã gửi một yêu cầu đăng kí trở thành lover!");
        notification.setTimeSend(LocalDateTime.now());
        notificationService.save(notification);
        return new ResponseEntity<>("Gửi yêu cầu thành công", HttpStatus.OK);
    }
    @GetMapping("/findTop5Lover")
    public ResponseEntity<List<ProfileLoverDTO>> findTop5Lover() {
        return new ResponseEntity<>(profileLoverService.findTop5Lover(), HttpStatus.OK);
    }
    @GetMapping("/editPrice/{newPrice}/{id}")
    public ResponseEntity<?> editPrice(@PathVariable double newPrice, @PathVariable Long id) {
        profileLoverService.editPrice(newPrice, id);
        return new ResponseEntity<>("OK",  HttpStatus.OK);

    }
}
