package com.example.loverbackend.service.impl;

import com.example.loverbackend.model.Account;
import com.example.loverbackend.model.Bill;
import com.example.loverbackend.model.Notification;
import com.example.loverbackend.repository.NotificationRepository;
import com.example.loverbackend.service.INotificationService;
import com.example.loverbackend.service.extend.AccountService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.time.LocalDateTime;
import java.util.Collections;
import java.util.Comparator;
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
    public List<Notification> findAllByIdAccountReceive(Long idAccount) {
        return notificationRepository.findAllByAccountReceive_Id(idAccount);
    }
    public List<Notification> findByIdAccountReceive(Long idAccount) {
        List<Notification> notifications = notificationRepository.findAllByAccountReceive_Id(idAccount);
        Collections.sort(notifications, Comparator.comparing(Notification::getTimeSend).reversed());
        return notifications;
    }
    public Notification findByAccountReceiveIdAndAccountSendId(Long idAccountReceive, Long idAccountSend) {
        return notificationRepository.findByAccountReceive_IdAndAccountSend_Id(idAccountReceive, idAccountSend);
    }
    public Notification createAlertConfirmByBillFormSenderToReceiver(Bill bill){
        Notification notification = new Notification();
        notification.setAccountSend(bill.getAccountLover());
        notification.setAccountReceive(bill.getAccountUser());
       notification.setTimeSend(LocalDateTime.now());
        notification.setContent("[" + bill.getAccountLover().getNickname() + "]" +"Đã Xác nhận đơn thuê của bạn ! vui lòng chú ý đến lịch bạn đã đặt với Lover. chúc bạn có một buổi hẹn hò vui vẻ!!!");
        return notification;
    }
    public Notification createAlertCompleteByBillFormSenderToReceiver(Bill bill){
        Notification notification = new Notification();
        notification.setAccountSend(bill.getAccountLover());
        notification.setAccountReceive(bill.getAccountUser());
        notification.setTimeSend(LocalDateTime.now());
        notification.setContent("[" + bill.getAccountLover().getNickname() + "]" +"Đơn thuê của bạn đã hoàn tất ! Cảmm ơn bạn đã xử dụng dịch vụ của chúng tôi . vui lòng đánh giá hoặc bình luận trải nghiệm của !!!");
        return notification;
    }
    public Notification createAlertRefuseByBillFormSenderToReceiver(Bill bill){
        Notification notification = new Notification();
        notification.setAccountSend(bill.getAccountLover());
        notification.setAccountReceive(bill.getAccountUser());
        notification.setTimeSend(LocalDateTime.now());
        notification.setContent("[" + bill.getAccountLover().getNickname() + "]" +"Xin Lỗi hiện tại mình không thể nhận đơn thuê của bạn ! Cảmm ơn bạn đã xử dụng dịch vụ của tôi . Rất mong sẽ được phục vụ bạn trong những lần tới !!! !!!");
        return notification;
    }
    public Notification createAlertCreateBillFormSenderToReceiver(Bill bill){
        Notification notification = new Notification();
        notification.setAccountSend(bill.getAccountUser());
        notification.setAccountReceive(bill.getAccountLover());
        notification.setTimeSend(LocalDateTime.now());
        Account account = accountService.findById(bill.getAccountUser().getId());
        notification.setContent("[" + account.getNickname() + "]" +"Đã đặt dịch vụ của bạn  ! vui lòng vào danh sách đơn để xem và xác nhận đơn của bạn !!!");
        return notification;
    }
    public Notification createAlertCancelBillFormSenderToReceiver(Bill bill){
        Notification notification = new Notification();
        notification.setAccountSend(bill.getAccountUser());
        notification.setAccountReceive(bill.getAccountLover());
        notification.setTimeSend(LocalDateTime.now());
        Account account = accountService.findById(bill.getAccountUser().getId());
        notification.setContent("[" + account.getNickname() + "]" +"Tôi có việc đột xuất lên không thể sử dụng dịch vụ lúc này , sẽ ủng hộ bạn lần tới . cảm ơn !!!");
        return notification;
    }
}
