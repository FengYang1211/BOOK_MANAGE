package com.bookManagerment.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import redis.clients.jedis.Jedis;
import redis.clients.jedis.JedisPool;
import redis.clients.jedis.JedisPoolConfig;

@Configuration
public class MvcConfig {

    @Bean
    public Jedis jedis(){
        Jedis jedis = new Jedis();
        JedisPoolConfig jedisPoolConfig = new JedisPoolConfig();
        jedisPoolConfig.setMinIdle(10);
        jedisPoolConfig.setMinIdle(40);
        JedisPool jedisPool = new JedisPool(jedisPoolConfig,"81.70.45.13");
        jedis.setDataSource(jedisPool);
//        jedis.auth("root");
        return jedis;
    }

}
