package com.example.loverbackend.service.extend;

import com.example.loverbackend.dto.MessageDTO;
import com.example.loverbackend.mapper.MessageMapper;
import com.example.loverbackend.model.Account;
import com.example.loverbackend.model.Message;
import com.example.loverbackend.repository.AccountRepository;
import com.example.loverbackend.repository.MessageRepository;
import com.example.loverbackend.service.BaseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class MessageService extends BaseService<MessageRepository, MessageDTO, Message> {
    @Autowired
    private MessageRepository messageRepository;

    @Autowired
    private MessageMapper messageMapper;

    @Autowired
    private AccountRepository accountRepository;

    //tìm kiếm toàn bộ bạn bè:
    public List<Message> initialStateAllChatFriends(Long loggedInUserId) {
        return messageRepository.initialStateAllChatFriends(loggedInUserId);
    }

    // toàn bộ message trong đoạn chat:
    public List<Message> getAllMessages(String loggedInUsername, Long chatUserId) {
        Account loggedUser = accountRepository.findByUsername(loggedInUsername).get();
        Account chatUser = accountRepository.findById(chatUserId).get();
        return messageRepository.findAllMessagesBetweenTwoUsers(loggedUser.getId() , chatUser.getId());
    }



    @Override
    public void save(Message message) {
        messageRepository.save(message);
    }

    @Override
    public MessageDTO getDetails(Long id) {
        Optional<Message> messageOptional = messageRepository.findById(id);
        if (!messageOptional.equals(null)) {
            return messageMapper.toDto(messageOptional.get());
        }
        return null;
    }

    @Override
    public boolean deleteById(Long id) {
        Optional<Message> messageOptional = messageRepository.findById(id);
        if (!messageOptional.equals(null)) {
            messageRepository.deleteById(id);
            return true;
        }
        return false;
    }

    @Override
    public List<MessageDTO> findAll() {
        return messageMapper.toDto(messageRepository.findAll());
    }
    public Message findById(Long id) {
        return messageRepository.findById(id).get();
    }
}
