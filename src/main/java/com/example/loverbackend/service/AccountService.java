package com.example.loverbackend.service;


import com.example.loverbackend.dto.AccountDTO;
import com.example.loverbackend.mapper.AccountMapper;
import com.example.loverbackend.model.Account;
import com.example.loverbackend.repository.AccountRepository;
import com.example.loverbackend.security.AccountPrinciple;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Objects;
import java.util.Optional;

@Service
public class AccountService extends BaseService<AccountRepository, AccountDTO, Account> implements UserDetailsService {

    @Autowired
    private AccountRepository accountRepository;

    @Autowired
    private AccountMapper accountMapper;

    @Override
    public AccountDTO create(AccountDTO dto) {
        return null;
    }

    @Override
    public AccountDTO update(AccountDTO dto) {
        return null;
    }

    @Override
    public Optional<AccountDTO> getDetails(Long id) {
        return Optional.empty();
    }

    @Override
    public AccountDTO delete(AccountDTO dto) {
        return null;
    }

    @Override
    public List<AccountDTO> findAll() {
        return accountMapper.toDto(accountRepository.findAll());
    }
    public Optional<Account> findById(Long id) {
        return accountRepository.findById(id);
    }

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        List<Account> accounts = accountRepository.findAll();
        for (Account account : accounts) {
            if (Objects.equals(account.getUsername(), username)) {
                return AccountPrinciple.build(account);
            }
        }
        return null;
    }
    public AccountDTO findByUsername(String username) {
        Optional<Account> userOptional = accountRepository.findByUsername(username);
        return accountMapper.toDto(userOptional.get());
    }

}
