package com.example.loverbackend.service;

import com.example.loverbackend.model.Image;

import java.util.List;

public interface IImageService extends IGenerateService<Image>{
    public List<Image> findAllByIdProfileLover(Long id);
}
