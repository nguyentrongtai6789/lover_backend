package com.example.loverbackend.repository;

import com.example.loverbackend.model.Account;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;

public interface AccountRepository extends BaseRepository<Account>, JpaRepository<Account, Long> {
    Optional<Account> findByUsername(String name);
}
