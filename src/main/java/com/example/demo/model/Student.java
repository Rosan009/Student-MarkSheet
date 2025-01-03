package com.example.demo.model;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonManagedReference;
import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDate;
import java.util.*;

@Entity
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Student {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private String name;
    private String className;
    private int registerNo;
    @JsonFormat(shape = JsonFormat.Shape.STRING,pattern = "dd-MM-yyyy")
    private LocalDate dataOfBirth;
    private String gender;
    private String imageName;
    private String imageType;
    @Lob
    private byte[] imageData;
    public String getProfilePhotoBase64() {
        if (this.imageData != null) {
            return Base64.getEncoder().encodeToString(this.imageData);
        }
        return null;
    }

}
