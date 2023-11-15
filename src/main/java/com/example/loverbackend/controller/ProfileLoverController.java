package com.example.loverbackend.controller;

import com.example.loverbackend.dto.ProfileLoverDTO;
import com.example.loverbackend.mapper.AccountMapper;
import com.example.loverbackend.mapper.ProfileLoverMapper;
import com.example.loverbackend.model.FreeService;
import com.example.loverbackend.model.ProfileLover;
import com.example.loverbackend.model.ServiceLover;
import com.example.loverbackend.model.VipService;
import com.example.loverbackend.service.IFreeServiceService;
import com.example.loverbackend.service.IServiceLoverService;
import com.example.loverbackend.service.IVipServiceService;
import com.example.loverbackend.service.extend.ProfileLoverService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@RestController
@CrossOrigin("*")
@RequestMapping("api/profileLoves")
public class ProfileLoverController {
    @Autowired
    ProfileLoverService profileLoverService;
    @Autowired
    ProfileLoverMapper profileLoverMapper;
    @Autowired
    AccountMapper accountMapper;
    @Autowired
    IServiceLoverService serviceLoverService;
    @Autowired
    IFreeServiceService freeServiceService;
    @Autowired
    IVipServiceService vipServiceService;

    @GetMapping
    public ResponseEntity<Iterable<?>> showList() {
        return new ResponseEntity<>(profileLoverService.findAll(), HttpStatus.OK);
    }

    @GetMapping("/{id}")
    public ResponseEntity<?> findById(@PathVariable Long id) {
        Optional<ProfileLoverDTO> profileLover = Optional.ofNullable(profileLoverService.getDetails(id));
        if (profileLover.isPresent()) {
            return new ResponseEntity<>(profileLover, HttpStatus.OK);
        } else {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }

    @PostMapping
    public ResponseEntity<?> save(@RequestBody ProfileLoverDTO profileLoverDTO) {
        profileLoverService.save(profileLoverMapper.toEntity(profileLoverDTO));
        return new ResponseEntity<>(HttpStatus.OK);
    }
    @PostMapping("/update")
public ResponseEntity<?> updateProfileLover(@RequestBody ProfileLoverDTO profileLoverDTO){
        profileLoverService.saveProfileLover(profileLoverDTO);
       return new ResponseEntity<>(HttpStatus.OK);
    }
    @DeleteMapping("/{id}")
    public ResponseEntity<?> delete(@PathVariable Long id) {
        Optional<ProfileLoverDTO> profileLover = Optional.ofNullable(profileLoverService.getDetails(id));
        if (profileLover.isPresent()) {
            profileLoverService.deleteById(id);
            return new ResponseEntity<>(HttpStatus.OK);
        } else {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }
@GetMapping("/sortProfileLoversByMoneyDescending")
    public ResponseEntity<Iterable<?>> SortProfileLoversByMoneyDescending(){
        return new ResponseEntity<>(profileLoverService.sortProfileLoversByMoneyDescending(profileLoverService.findAll()),HttpStatus.OK);

}
    @GetMapping("/findByIdAccount/{id}")
    public ResponseEntity<?> findByIdAccount(@PathVariable Long id){
        Optional<ProfileLoverDTO> profileLoverDTO = profileLoverService.findByIdAccount(id);
        if (profileLoverDTO.isPresent()){
            return new ResponseEntity<>(profileLoverDTO,HttpStatus.OK);
        }else {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }
    @PostMapping("/services/{profileLoverId}")
    public ResponseEntity<?> addServicesToProfileLover(@PathVariable Long profileLoverId, @RequestBody List<Long> serviceIds) {
        try{
            ProfileLover profileLover = profileLoverMapper.toEntity(profileLoverService.getDetails(profileLoverId));
            List<ServiceLover> serviceLovers = serviceLoverService.getServicesByIds(serviceIds);
            profileLover.setServiceLovers(serviceLovers);
            profileLoverService.save(profileLover);
            return new ResponseEntity<>(HttpStatus.OK);
        }catch (Exception e){
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).build();
        }
    }
    @PostMapping("/freeServices/{profileLoverId}")
    public ResponseEntity<?> addFreeServicesToProfileLover(@PathVariable Long profileLoverId, @RequestBody List<Long> FreeServiceIds) {
        try{
            ProfileLover profileLover = profileLoverMapper.toEntity(profileLoverService.getDetails(profileLoverId));
            List<FreeService> FreeServiceLovers = freeServiceService.getFreeServicesByIds(FreeServiceIds);
            profileLover.setFreeServices(FreeServiceLovers);
            profileLoverService.save(profileLover);
            return new ResponseEntity<>(HttpStatus.OK);
        }catch (Exception e){
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).build();
        }
    }
    @PostMapping("/vipServices/{profileLoverId}")
    public ResponseEntity<?> addVipServicesToProfileLover(@PathVariable Long profileLoverId, @RequestBody List<Long> vipServiceIds) {
        try{
            ProfileLover profileLover = profileLoverMapper.toEntity(profileLoverService.getDetails(profileLoverId));
            List<VipService> vipServices = vipServiceService.getVipServicesByIds(vipServiceIds);
            profileLover.setVipServices(vipServices);
            profileLoverService.save(profileLover);
            return new ResponseEntity<>(HttpStatus.OK);
        }catch (Exception e){
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).build();
        }
    }

}
