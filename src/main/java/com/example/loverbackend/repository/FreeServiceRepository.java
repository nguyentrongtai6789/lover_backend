package com.example.loverbackend.repository;

import com.example.loverbackend.model.FreeService;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface FreeServiceRepository extends JpaRepository<FreeService, Long> {
}
