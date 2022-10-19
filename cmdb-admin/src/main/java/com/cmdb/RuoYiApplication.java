package com.cmdb;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.ComponentScans;

/**
 * 启动程序
 * 
 * @author yuanzi
 */
@SpringBootApplication(exclude = { DataSourceAutoConfiguration.class },scanBasePackages = {"com.cmdb","com.yuanzi"})
@MapperScan("com.yuanzi.asset.mapper")
public class RuoYiApplication {
    public static void main(String[] args) {
        // System.setProperty("spring.devtools.restart.enabled", "false");
        SpringApplication.run(RuoYiApplication.class, args);
        System.out.println("系统已成功启动 \n" +
                " ██    ██ ██     ██     ██     ████     ██ ████████ ██ \n" +
                "░░██  ██ ░██    ░██    ████   ░██░██   ░██░░░░░░██ ░██ \n" +
                " ░░████  ░██    ░██   ██░░██  ░██░░██  ░██     ██  ░██ \n" +
                "  ░░██   ░██    ░██  ██  ░░██ ░██ ░░██ ░██    ██   ░██ \n" +
                "   ░██   ░██    ░██ ██████████░██  ░░██░██   ██    ░██ \n" +
                "   ░██   ░██    ░██░██░░░░░░██░██   ░░████  ██     ░██ \n" +
                "   ░██   ░░███████ ░██     ░██░██    ░░███ ████████░██ \n" +
                "");
    }
}