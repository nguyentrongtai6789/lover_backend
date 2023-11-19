package com.example.loverbackend.controller;

import com.example.loverbackend.dto.ProfileUserDTO;
import com.example.loverbackend.dto.RoleDTO;
import com.example.loverbackend.mapper.ProfileUserMapper;
import com.example.loverbackend.mapper.RoleMapper;
import com.example.loverbackend.model.*;
import com.example.loverbackend.service.extend.AccountService;
import com.example.loverbackend.service.extend.ProfileLoverService;
import com.example.loverbackend.service.extend.ProfileUserService;
import com.example.loverbackend.service.extend.RoleService;
import com.example.loverbackend.service.impl.NotificationService;
import com.example.loverbackend.service.impl.StatusUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

@RestController
@CrossOrigin("*")
@RequestMapping("/api/admin")
public class AdminController {
    @Autowired
    private ProfileUserService profileUserService;
    @Autowired
    private RoleService roleService;
    @Autowired
    private RoleMapper roleMapper;
    @Autowired
    private AccountService accountService;
    @Autowired
    private ProfileLoverService profileLoverService;
    @Autowired
    private StatusUserService statusUserService;
    @Autowired
    private NotificationService notificationService;

    @GetMapping("/findAllUserRegisterToLover")
    public ResponseEntity<List<ProfileUserDTO>> findAllUserRegisterToLover() {
        return new ResponseEntity<>(profileUserService.findByStatusUserId(Long.valueOf(1)), HttpStatus.OK);
    }

    @GetMapping("/acceptUserToLover/{idAccount}")
    public ResponseEntity<?> acceptUserToLover(@PathVariable Long idAccount) {
        Account account = accountService.findById(idAccount);
        //SET ROLE mới cho account:
        Set<Role> roleSet = new HashSet<>();
        List<RoleDTO> roleDTOs = roleService.findAll();
        List<Role> roles = roleMapper.toEntity(roleDTOs);
        for (Role role : roles) {
            if (role.getName().equals("ROLE_LOVER")) {
                roleSet.add(role);
                break;
            }
        }
        account.setRoles(roleSet);
        // tạo profile lover mới:
        ProfileLover profileLover = profileLoverService.createProfileLoverWhenAcceptUser();
        profileLover.setAccount(account);
        profileLoverService.save(profileLover);
        // chuyển trạng thái cho profileuser:
        ProfileUser profileUser = profileUserService.findByIdAccountUser(idAccount);
        StatusUser statusUser = statusUserService.findById(Long.valueOf(2));
        profileUser.setStatusUser(statusUser);
        profileUserService.save(profileUser);
        return new ResponseEntity<>("Xác nhận cấp quyền cho lover thành công!", HttpStatus.OK);
    }

    @GetMapping("/findNotificationByIdAccount/{idAccount}")
    public ResponseEntity<List<Notification>> findNotificationByIdAccount(@PathVariable Long idAccount) {
        return new ResponseEntity<>(notificationService.findAllByIdAccount(idAccount), HttpStatus.OK);
    }
}
