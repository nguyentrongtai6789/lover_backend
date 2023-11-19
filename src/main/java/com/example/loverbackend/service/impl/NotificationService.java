package com.example.loverbackend.service.impl;

import com.example.loverbackend.model.Account;
import com.example.loverbackend.model.Notification;
import com.example.loverbackend.repository.NotificationRepository;
import com.example.loverbackend.service.INotificationService;
import com.example.loverbackend.service.extend.AccountService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class NotificationService implements INotificationService {
    @Autowired
    private NotificationRepository notificationRepository;
    @Autowired
    private AccountService accountService;
    @Override
    public void save(Notification notification) {
        notificationRepository.save(notification);
    }

    @Override
    public Notification findById(Long id) {
        return notificationRepository.findById(id).get();
    }

    @Override
    public boolean deleteById(Long id) {
        notificationRepository.deleteById(id);
        return true;
    }

    @Override
    public List<Notification> findAll() {
        return notificationRepository.findAll();
    }
    public Notification createNewByIdAccount(Long idAccountSend, Long idAccountReceive) {
        Account accountReceive = accountService.findById(idAccountReceive);
        Account accountSend = accountService.findById(idAccountSend);
        Notification notification = new Notification();
        notification.setAccountSend(accountSend);
        notification.setAccountReceive(accountReceive);
        return notification;
    }
    public List<Notification> findAllByIdAccount(Long idAccount) {
        return notificationRepository.findAllByAccountReceive_Id(idAccount);
    }
}
