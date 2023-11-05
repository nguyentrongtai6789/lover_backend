package com.example.loverbackend.repository;

import com.example.loverbackend.model.StatusLover;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface StatusLoverRepository extends JpaRepository<StatusLover, Long> {
}
