package com.example.loverbackend.repository;

import com.example.loverbackend.model.ServiceLover;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ServiceLoverRepository extends JpaRepository<ServiceLover, Long> {
}
