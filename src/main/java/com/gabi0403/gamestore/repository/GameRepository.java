package com.gabi0403.gamestore.repository;

import org.springframework.data.repository.CrudRepository;
import com.gabi0403.gamestore.model.Game; 

public interface GameRepository extends CrudRepository<Game,Integer>{
    
}
