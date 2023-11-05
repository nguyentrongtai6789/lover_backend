package com.example.loverbackend.service;

import java.util.List;

public interface IGenerateService<E> {
    void save(E e);
    E findById(Long id);
    boolean deleteById(Long id);
    List<E> findAll();
}
