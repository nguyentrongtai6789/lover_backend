package com.example.loverbackend.repository;

import com.example.loverbackend.model.Role;
import org.springframework.data.jpa.repository.JpaRepository;

public interface RoleRepository extends BaseRepository<Role>, JpaRepository<Role, Long> {
    Role findByName(String name);
}
