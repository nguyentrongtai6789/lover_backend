package com.example.loverbackend.repository;

import com.example.loverbackend.model.Bill;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

public interface BillRepository extends BaseRepository<Bill>, JpaRepository<Bill, Long> {
    List<Bill> findAllByAccountUser_Id(Long id);
}
