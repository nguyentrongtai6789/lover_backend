package com.example.loverbackend.repository;

import com.example.loverbackend.model.Bill;
import com.example.loverbackend.model.BillDetailProfileLover;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

public interface BillDetailProfileLoverRepository extends BaseRepository<BillDetailProfileLover>, JpaRepository<BillDetailProfileLover, Long> {
    List<BillDetailProfileLover> findAllByAccountLoverId(Long idAccountLover);
}
