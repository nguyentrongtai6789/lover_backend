package com.example.loverbackend.service;

import com.example.loverbackend.model.VipService;

import java.util.List;

public interface IVipServiceService extends IGenerateService<VipService>{
    List<VipService> getVipServicesByIds(List<Long> vipServicesByIds);
}
