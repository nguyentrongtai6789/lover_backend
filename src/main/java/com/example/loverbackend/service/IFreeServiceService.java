package com.example.loverbackend.service;

import com.example.loverbackend.model.FreeService;

import java.util.List;

public interface IFreeServiceService extends IGenerateService<FreeService> {
    List<FreeService> getFreeServicesByIds(List<Long> FreeServicesByIds);
}
