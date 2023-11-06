package com.example.loverbackend.service.impl;

import com.example.loverbackend.dto.MessageDTO;
import com.example.loverbackend.mapper.MessageMapper;
import com.example.loverbackend.model.Message;
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
}
