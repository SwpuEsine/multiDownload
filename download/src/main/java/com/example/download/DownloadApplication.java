package com.example.download;

import com.example.download.config.FileProperties;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.context.properties.EnableConfigurationProperties;

@SpringBootApplication
@EnableConfigurationProperties({
        FileProperties.class
})
public class DownloadApplication {

    public static void main(String[] args) {
        SpringApplication.run(DownloadApplication.class, args);
    }

}
