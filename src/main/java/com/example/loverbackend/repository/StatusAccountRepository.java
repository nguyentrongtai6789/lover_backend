package com.example.loverbackend.repository;

import com.example.loverbackend.model.StatusAccount;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface StatusAccountRepository extends JpaRepository<StatusAccount, Long> {
}
