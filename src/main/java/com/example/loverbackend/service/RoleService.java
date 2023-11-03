package com.example.loverbackend.service;

import com.example.loverbackend.dto.RoleDTO;
import com.example.loverbackend.mapper.RoleMapper;
import com.example.loverbackend.model.Role;
import com.example.loverbackend.repository.RoleRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class RoleService extends BaseService<RoleRepository, RoleDTO, Role> {
    @Autowired
    private RoleRepository roleRepository;
    @Autowired
    private RoleMapper roleMapper;

    @Override
    public RoleDTO create(RoleDTO dto) {
        roleRepository.save(roleMapper.toEntity(dto));
        return dto;
    }

    @Override
    public RoleDTO update(RoleDTO dto) {
        return null;
    }

    @Override
    public Optional<RoleDTO> getDetails(Long id) {
        return Optional.empty();
    }

    @Override
    public RoleDTO delete(RoleDTO dto) {
        return null;
    }

    @Override
    public List<RoleDTO> findAll() {
        return null;
    }

    public Optional<Role> findById(Long id) {
        return roleRepository.findById(id);
    }

    public Role findByName(String name) {
        return roleRepository.findByName(name);
    }

}
