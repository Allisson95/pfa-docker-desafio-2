package com.github.allisson95.pfadocker.backend.domain.services;

import java.util.List;

import com.github.allisson95.pfadocker.backend.domain.model.Module;
import com.github.allisson95.pfadocker.backend.domain.repository.ModulesRepository;

import org.springframework.stereotype.Service;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Service
public class ModulesService {
    
    private final ModulesRepository modulesRepository;

    public List<Module> findAll() {
        return this.modulesRepository.findAll();
    }

}
