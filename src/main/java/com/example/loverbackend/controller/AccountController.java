package com.example.loverbackend.controller;

import com.example.loverbackend.dto.AccountDTO;
import com.example.loverbackend.model.Account;
import com.example.loverbackend.security.jwt.JwtResponse;
import com.example.loverbackend.security.jwt.JwtService;
import com.example.loverbackend.service.extend.AccountService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@CrossOrigin("*")
@RequestMapping("/api")
public class AccountController {
    @Autowired
    private AuthenticationManager authenticationManager;

    @Autowired
    private PasswordEncoder passwordEncoder;

    @Autowired
    private JwtService jwtService;

    @Autowired
    private AccountService accountService;

    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public ResponseEntity<?> login(@RequestBody Account account) {
        Authentication authentication = authenticationManager.authenticate(
                new UsernamePasswordAuthenticationToken(account.getUsername(), account.getPassword()));
        SecurityContextHolder.getContext().setAuthentication(authentication);
        String jwt = jwtService.generateTokenLogin(authentication);
        UserDetails userDetails = (UserDetails) authentication.getPrincipal();
        AccountDTO accountDTO = accountService.findByUsername(account.getUsername());
        return ResponseEntity.ok(new JwtResponse(jwt, accountDTO.getId(),
                accountDTO.getUsername(), accountDTO.getUsername(), userDetails.getAuthorities()));
    }
    @GetMapping("/findAllAccounts")
    public ResponseEntity<List<AccountDTO>> getAllAccount() {
        return new ResponseEntity<>(accountService.findAll(), HttpStatus.OK);
    }

//    @RequestMapping(value = "/register", method = RequestMethod.POST)
//    public ResponseEntity<?> register(@RequestBody AccountDTO account) {
//        String password = passwordEncoder.encode(account.getPassword());
//        account.setPassword(password);
//        boolean check = accountService.create(account);
//        if (check) {
//            return new ResponseEntity<>(HttpStatus.OK);
//        } else {
//            return new ResponseEntity<>(HttpStatus.BAD_REQUEST);
//        }
//    }
}
