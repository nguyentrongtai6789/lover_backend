package com.example.loverbackend.service.impl;

import com.example.loverbackend.model.Image;
import com.example.loverbackend.repository.ImageRepository;
import com.example.loverbackend.service.IImageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class ImageService implements IImageService {
    @Autowired
    private ImageRepository imageRepository;

    @Override
    public void save(Image image) {
        imageRepository.save(image);
    }

    @Override
    public Image findById(Long id) {
        Optional<Image> imageOptional = imageRepository.findById(id);
        if (!imageOptional.equals(null)) {
            return imageOptional.get();
        }
        return null;
    }

    @Override
    public boolean deleteById(Long id) {
        Optional<Image> imageOptional = imageRepository.findById(id);
        if (!imageOptional.equals(null)) {
          imageRepository.deleteById(id);
          return true;
        }
        return false;
    }

    @Override
    public List<Image> findAll() {
        return imageRepository.findAll();
    }

//    @Override
//    public List<Image> findAllByIdProfileLover(Long id) {
//        return imageRepository.findAllByProfileLoverId(id);
//    }
}
