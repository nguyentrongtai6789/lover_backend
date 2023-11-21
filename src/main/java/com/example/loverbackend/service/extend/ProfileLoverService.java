package com.example.loverbackend.service.extend;

import com.example.loverbackend.dto.AccountDTO;
import com.example.loverbackend.dto.ProfileLoverDTO;
import com.example.loverbackend.mapper.AccountMapper;
import com.example.loverbackend.mapper.ProfileLoverMapper;
import com.example.loverbackend.model.*;
import com.example.loverbackend.repository.ProfileLoverRepository;
import com.example.loverbackend.repository.ProfileUserRepository;
import com.example.loverbackend.repository.StatusLoverRepository;
import com.example.loverbackend.service.BaseService;
import com.example.loverbackend.service.IStatusLoverService;
import com.example.loverbackend.service.impl.StatusLoverService;
import com.example.loverbackend.service.impl.StatusUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageImpl;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.util.*;
import java.util.stream.Collectors;

@Service
public class ProfileLoverService extends BaseService<ProfileLoverRepository, ProfileLoverDTO, ProfileLover> {
    @Autowired
    private ProfileLoverRepository profileLoverRepository;
    @Autowired
    private ProfileLoverMapper profileLoverMapper;
    @Autowired
    private AccountMapper accountMapper;
    @Autowired
    private AccountService accountService;
    @Autowired
    private IStatusLoverService statusLoverService;
    @Autowired
    private ProfileUserService profileUserService;
    @Autowired
    private StatusUserService statusUserService;
    @Autowired
    private ProfileUserRepository profileUserRepository;

    @Override
    public void save(ProfileLover profileLover) {
        profileLoverRepository.save(profileLover);
    }

    @Override
    public ProfileLoverDTO getDetails(Long id) {
        Optional<ProfileLover> profileLoverOptional = profileLoverRepository.findById(id);
        return profileLoverMapper.toDto(profileLoverOptional.orElse(null));
    }

    @Override
    public boolean deleteById(Long id) {
        Optional<ProfileLover> profileLoverOptional = profileLoverRepository.findById(id);
        if (!profileLoverOptional.equals(null)) {
            profileLoverOptional.get().setIsActive(2);
            return true;
        }
        return false;
    }

    @Override
    public List<ProfileLoverDTO> findAll() {
        List<ProfileLover> profileLovers = profileLoverRepository.findAll();
        return profileLoverMapper.toDto(profileLovers);
    }

    public List<ProfileLoverDTO> sortProfileLoversByMoneyDescending(List<ProfileLoverDTO> lovers) {
        return profileLoverRepository.sortProfileLoversByMoneyDescending(lovers);
    }

    public List<ProfileLoverDTO> findAllByNameContaining(String name) {
        List<ProfileLover> profileLovers = profileLoverRepository.searchByAccountNameContaining("%" + name + "%");
        List<ProfileLoverDTO> profileLoverDTOS = profileLoverMapper.toDto(profileLovers);
        return profileLoverDTOS;
    }

    public List<ProfileLoverDTO> findAllByVipService(Long id) {
        List<ProfileLover> profileLovers = profileLoverRepository.searchByIdVipService(id);
        List<ProfileLoverDTO> profileLoverDTOS = profileLoverMapper.toDto(profileLovers);
        return profileLoverDTOS;
    }

    ;

    public List<ProfileLoverDTO> findAllByFreeService(Long id) {
        List<ProfileLover> profileLovers = profileLoverRepository.searchByFreeService(id);
        List<ProfileLoverDTO> profileLoverDTOS = profileLoverMapper.toDto(profileLovers);
        return profileLoverDTOS;
    }

    public List<ProfileLoverDTO> findAllByBaseService(Long id) {
        List<ProfileLover> profileLovers = profileLoverRepository.searchByBaseService(id);
        List<ProfileLoverDTO> profileLoverDTOS = profileLoverMapper.toDto(profileLovers);
        return profileLoverDTOS;
    }

    public ProfileLover findByIdAccount1(Long id) {
       ProfileLover profileLover = profileLoverRepository.findByAccount_Id(id);
       return profileLover;
    }

    public Optional<ProfileLoverDTO> findByIdAccount(Long idAccount) {
        Optional<ProfileLover> profileLoverOptional = Optional.ofNullable(profileLoverRepository.findByAccountId(idAccount));
        return Optional.ofNullable(profileLoverMapper.toDto(profileLoverOptional.orElse(null)));
    }

    public ProfileLover createProfileLoverWhenAcceptUser() {
        ProfileLover profileLover = new ProfileLover();
        StatusLover statusLover = statusLoverService.findById(Long.valueOf(1));
        profileLover.setStatusLover(statusLover);
        profileLover.setAverageRateScore(0);
        profileLover.setHeight(1.7);
        profileLover.setPrice(50000);
        profileLover.setTotalMoneyRented(0);
        profileLover.setWeight(50);
        return profileLover;
    }

    public boolean checkProfileLoverByIdAccount(Long id) {
        boolean check = false;
        List<ProfileLoverDTO> profileLoverDTOS = profileLoverMapper.toDto(profileLoverRepository.findAll());
        for (ProfileLoverDTO profileLoverDTO : profileLoverDTOS) {
            if (profileLoverDTO.getAccount().getId().equals(id)) {
                check = true;
                break;
            }
        }
        return check;
    }

    public void saveProfileLover(ProfileLoverDTO profileLoverDTO) {
        boolean flag = checkProfileLoverByIdAccount(profileLoverDTO.getAccount().getId());
        if (flag) {
            Optional<ProfileLoverDTO> profileLoverDTOs = findByIdAccount(profileLoverDTO.getAccount().getId());
            profileLoverDTO.setId(profileLoverDTOs.get().getId());
            profileLoverRepository.save(profileLoverMapper.toEntity(profileLoverDTO));
        } else {
            profileLoverRepository.save(profileLoverMapper.toEntity(profileLoverDTO));
        }
    }

    public List<ProfileLoverDTO> findAllByNormaFilter(Filter filter) {
        List<ProfileLoverDTO> profileLoverDTOS = profileLoverMapper.toDto(profileLoverRepository
                .findAllByNormalFilter(filter.getIdGender(), filter.getIdCity(), filter.getIdStatusLover()));
        List<ProfileLoverDTO> profileLoverDTOList = new ArrayList<>();
        if (filter.getIdCountry() != 0) {
            for (ProfileLoverDTO profileLoverDTO : profileLoverDTOS) {
                if (profileLoverDTO.getCity().getCountry().getId() == filter.getIdCountry()
                        && profileLoverDTO.getAccount().getNickname().contains(filter.getSearchValue())) {
                    profileLoverDTOList.add(profileLoverDTO);
                }
            }
        } else {
            for (ProfileLoverDTO profileLoverDTO : profileLoverDTOS) {
                if (profileLoverDTO.getAccount().getNickname().contains(filter.getSearchValue())) {
                    profileLoverDTOList.add(profileLoverDTO);
                }
            }
        }
        if (filter.getArrangeCost() == 1) {
            Comparator<ProfileLoverDTO> priceComparator = new Comparator<ProfileLoverDTO>() {
                @Override
                public int compare(ProfileLoverDTO p1, ProfileLoverDTO p2) {
                    if (p1.getPrice() < p2.getPrice()) {
                        return -1;
                    } else if (p1.getPrice() > p2.getPrice()) {
                        return 1;
                    } else {
                        return 0;
                    }
                }
            };
            Collections.sort(profileLoverDTOList, priceComparator);
            return profileLoverDTOList;
        } else {
            Comparator<ProfileLoverDTO> priceComparator = new Comparator<ProfileLoverDTO>() {
                @Override
                public int compare(ProfileLoverDTO p1, ProfileLoverDTO p2) {
                    if (p1.getPrice() > p2.getPrice()) {
                        return -1;
                    } else if (p1.getPrice() < p2.getPrice()) {
                        return 1;
                    } else {
                        return 0;
                    }
                }
            };
            Collections.sort(profileLoverDTOList, priceComparator);
            return profileLoverDTOList;
        }
    }

    public List<ProfileLoverDTO> findAllByFilter(Filter filter) {
        List<Long> idList = profileLoverRepository.findAllByFilter(
                filter.getIdBaseService(), filter.getIdGender(), filter.getIdCity(),
                filter.getIdStatusLover(), filter.getIdVipService(), filter.getIdFreeService());
        List<ProfileLoverDTO> profileLoverDTOList = findAll();
        List<ProfileLoverDTO> profileLoverDTOS = new ArrayList<>();
        List<Long> uniqueIds = idList.stream()
                .distinct()
                .collect(Collectors.toList());
        for (Long id : uniqueIds) {
            for (ProfileLoverDTO profileLoverDTO : profileLoverDTOList) {
                if (id == profileLoverDTO.getId()) {
                    profileLoverDTOS.add(profileLoverDTO);
                }
            }
        }
        List<ProfileLoverDTO> profileLoverDTOList2 = new ArrayList<>();
        if (filter.getIdCountry() != 0) {
            for (ProfileLoverDTO profileLoverDTO : profileLoverDTOS) {
                if (profileLoverDTO.getCity().getCountry().getId() == filter.getIdCountry()
                        && profileLoverDTO.getAccount().getNickname().contains(filter.getSearchValue())) {
                    profileLoverDTOList2.add(profileLoverDTO);
                }
            }
        } else {
            for (ProfileLoverDTO profileLoverDTO : profileLoverDTOS) {
                if (profileLoverDTO.getAccount().getNickname().contains(filter.getSearchValue())) {
                    profileLoverDTOList2.add(profileLoverDTO);
                }
            }
        }
        if (filter.getArrangeCost() == 1) {
            Comparator<ProfileLoverDTO> priceComparator = new Comparator<ProfileLoverDTO>() {
                @Override
                public int compare(ProfileLoverDTO p1, ProfileLoverDTO p2) {
                    if (p1.getPrice() < p2.getPrice()) {
                        return -1;
                    } else if (p1.getPrice() > p2.getPrice()) {
                        return 1;
                    } else {
                        return 0;
                    }
                }
            };
            Collections.sort(profileLoverDTOList2, priceComparator);
            return profileLoverDTOList2;
        } else {
            Comparator<ProfileLoverDTO> priceComparator = new Comparator<ProfileLoverDTO>() {
                @Override
                public int compare(ProfileLoverDTO p1, ProfileLoverDTO p2) {
                    if (p1.getPrice() > p2.getPrice()) {
                        return -1;
                    } else if (p1.getPrice() < p2.getPrice()) {
                        return 1;
                    } else {
                        return 0;
                    }
                }
            };
            Collections.sort(profileLoverDTOList2, priceComparator);
            return profileLoverDTOList2;
        }
    }
    public void createProfileLoverWhenUserRequest(Long idAccount, ProfileLover profileLover) {
        Account account = accountService.findById(idAccount);
        profileLover.setAccount(account);
        profileLover.setIsActive(2); // trạng thái đang bị khoá
        StatusLover statusLover = statusLoverService.findById(Long.valueOf(2));
        profileLover.setStatusLover(statusLover);// đang tạm ngưng cung cấp dịch vụ
        profileLover.setAverageRateScore(0);
        profileLover.setTotalMoneyRented(0);
        profileLover.setTotalHourRented(0);
        profileLover.setTotalViews(0L);
        ProfileUser profileUser = profileUserService.findByIdAccountUser(idAccount);
        StatusUser statusUser = statusUserService.findById(Long.valueOf(1));
        profileUser.setStatusUser(statusUser); // chuyển trạng thái cho profileuser là đang đăng kí tài khoản lover
        profileUserRepository.save(profileUser);
        profileLoverRepository.save(profileLover);
    }
    public List<ProfileLoverDTO> findAllProfileLoverByIdRoles(Long idRoles){
        return profileLoverMapper.toDto(profileLoverRepository.findAllByAccountRolesId(idRoles));
     }
 }
