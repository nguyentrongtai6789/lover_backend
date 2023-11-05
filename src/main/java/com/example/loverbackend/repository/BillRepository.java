package com.example.loverbackend.repository;

import com.example.loverbackend.model.Bill;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

public interface BillRepository extends BaseRepository<Bill>, JpaRepository<Bill, Long> {
}
