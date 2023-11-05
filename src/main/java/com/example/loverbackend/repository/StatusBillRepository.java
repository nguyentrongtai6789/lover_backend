package com.example.loverbackend.repository;

import com.example.loverbackend.model.StatusBill;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface StatusBillRepository extends JpaRepository<StatusBill, Long> {
}
