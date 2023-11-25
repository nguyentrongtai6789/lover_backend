package com.example.loverbackend.controller;

import com.example.loverbackend.model.Account;
import com.example.loverbackend.model.Message;
import com.example.loverbackend.service.extend.AccountService;
import com.example.loverbackend.service.extend.MessageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.messaging.simp.SimpMessagingTemplate;
import org.springframework.web.bind.annotation.*;

import java.time.LocalDateTime;
import java.util.List;
@RestController
@CrossOrigin("*")
public class MessageController {
    @Autowired
    MessageService messageService;
    @Autowired
    SimpMessagingTemplate template;
    @Autowired
    AccountService accountService;
    //    hàm lấy tất cả list friend đã nhắn tin
    @GetMapping("/allFriend/{id}")
    public List<Message> getAllChatFriends(@PathVariable Long id){
        return messageService.initialStateAllChatFriends(id);
    }

    //    http://localhost:8080/message/all/{id}
//    trong hàm getAllMessages @PathVariable int id sẽ là người bên kia nhắn
//    và @RequestBody Account principal sẽ là chủ thể của mình đang đăng nhập
    @PostMapping( "/all/{id}")
    public List<Message> getAllMessages(@PathVariable Long id ,@RequestBody Account principal) {
        String loggedInUsername = principal.getUsername();
        return messageService.getAllMessages(loggedInUsername, id);
    }

    //    @SendTo("/chat/user/queue/position-update")
//    @MessageMapping("/chat")
    @PostMapping("/chat")
    public void createPrivateChatMessages(@RequestBody Message message) throws Exception {
        if(message != null ) {
            Account account = accountService.findById(message.getFromUser().getId());
            message.setTime(LocalDateTime.now());
            message.setFromUser(account);
            messageService.save(message);
            template.convertAndSend("/chat/user/queue/position-update", message);
//            template.convertAndSend("/chat/user/queue/position-update", message);
            return;
        }
        throw new Exception("Error Create Message !");
    }
    @GetMapping("/createFirstMessage/{idAccount}/{idLover}")
    public void  createFirstMessage(@PathVariable Long idAccount, @PathVariable Long idLover) {
        Account accountUser = accountService.findById(idLover);
        Account accountLover = accountService.findById(idAccount);
        // tìm xem 2 người đã nhắn tin với nhau chưa?
        // nếu chưa thì tạo một tin nhắn mới:
        List<Message> messages = messageService.getAllMessages(accountLover.getUsername(), idLover);
        if (messages.size() == 0) {
            Message message = new Message();
            message.setContent("Chào bạn, mình có thể giúp gì bạn?");
            message.setTime(LocalDateTime.now());
            message.setFromUser(accountUser);
            message.setToUser(accountLover);
            messageService.save(message);
        }
    }
}