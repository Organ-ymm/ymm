package com.ymm.commons.jedis;

import org.junit.Test;
import redis.clients.jedis.HostAndPort;
import redis.clients.jedis.Jedis;
import redis.clients.jedis.JedisCluster;
import redis.clients.jedis.JedisPool;

import java.util.HashSet;
import java.util.Set;

//public class JedisTest {
//    @Test
//    public void testJedis1(){
//        Jedis jedis = new Jedis("101.132.119.119",6379);
//        jedis.set("key","wtt");
//
//        jedis.close();
//    }
//    @Test
//    public void testJedis2(){
//        Jedis jedis = new Jedis("101.132.119.119",6379);
//        System.out.println(jedis.get("key"));
//        jedis.close();
//    }
//    @Test
//    public void testJedisPool(){
//        JedisPool jedisPool = new JedisPool("101.132.119.119",6379);
//        Jedis jedis = jedisPool.getResource();
//        jedis.hset("hset1","name","wza");
//        jedis.close();
//        jedisPool.close();
//    }
//    @Test
//    public void testJedisCluster(){
//        Set<HostAndPort> nodes = new HashSet<>();
//        nodes.add(new HostAndPort("101.132.119.119",9001));
//        nodes.add(new HostAndPort("101.132.119.119",9002));
//        nodes.add(new HostAndPort("101.132.119.119",9003));
//        nodes.add(new HostAndPort("101.132.119.119",9004));
//        nodes.add(new HostAndPort("101.132.119.119",9005));
//        nodes.add(new HostAndPort("101.132.119.119",9006));
//        JedisCluster jedisCluster = new JedisCluster(nodes);
//
//        jedisCluster.close();
//    }
//}
