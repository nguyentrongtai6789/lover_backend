package com.example.loverbackend.dto;

import com.fasterxml.jackson.annotation.JsonIgnore;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public abstract class BaseDTO {

    public interface Create {

    }

    public interface Update {

    }

    @JsonIgnore
    private String statusCode;

}
