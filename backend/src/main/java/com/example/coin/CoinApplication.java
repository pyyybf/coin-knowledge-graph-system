package com.example.coin;

import com.example.coin.bl.reader.ReaderService;
import com.example.coin.blImpl.reader.ReaderServiceImpl;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class CoinApplication {

    public static void main(String[] args) {
        SpringApplication.run(CoinApplication.class, args);

    }


}
