package com.example.loverbackend.repository;

import com.example.loverbackend.model.Bill;
import com.example.loverbackend.model.BillDetailProfileLover;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

public interface BillDetailProfileLoverRepository extends BaseRepository<BillDetailProfileLover>, JpaRepository<BillDetailProfileLover, Long> {
}
