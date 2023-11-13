package com.example.loverbackend.service;

import com.example.loverbackend.model.ServiceLover;

import java.util.List;

public interface IServiceLoverService extends IGenerateService<ServiceLover> {
    List<ServiceLover> getServicesByIds(List<Long> ServicesByIds);
}
