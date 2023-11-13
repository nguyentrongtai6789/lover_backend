package com.example.loverbackend.repository;

import com.example.loverbackend.model.VipService;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface VipServiceRepository extends JpaRepository<VipService, Long> {

}
