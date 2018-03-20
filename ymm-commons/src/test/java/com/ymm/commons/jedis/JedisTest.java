//package com.ymm.commons.jedis;
//
//import org.junit.Test;
//import redis.clients.jedis.HostAndPort;
//import redis.clients.jedis.Jedis;
//import redis.clients.jedis.JedisCluster;
//import redis.clients.jedis.JedisPool;
//
//import java.util.HashSet;
//import java.util.Set;
//
//public class JedisTest {
//
//
//    //单机版
//    @Test
//    public void testJedis1(){
//        Jedis jedis=new Jedis("47.100.2.34",6379);
//        jedis.set("answer","yes");
//        System.out.println(jedis.get("answer"));
//        jedis.close();
//    }
//    //连接池版
//    @Test
//    public void testJedis2(){
//        JedisPool jedisPool=new JedisPool("47.100.2.34",6379);
//        Jedis jedis =jedisPool.getResource();
//        jedis.lpush("mylist",new String[]{"qq","ww","ee"});
//        System.out.println(jedis.lrange("mylist",0,-1));
//        jedis.close();
//    }
//
//    //集群版本
//    @Test
//    public void testJedis3(){
//        Set<HostAndPort> nodes=new HashSet<>();
//        nodes.add(new HostAndPort("47.100.2.34",9001));
//        nodes.add(new HostAndPort("47.100.2.34",9002));
//        nodes.add(new HostAndPort("47.100.2.34",9003));
//        nodes.add(new HostAndPort("47.100.2.34",9004));
//        nodes.add(new HostAndPort("47.100.2.34",9005));
//        nodes.add(new HostAndPort("47.100.2.34",9006));
//        JedisCluster jedisCluster=new JedisCluster(nodes);
//        jedisCluster.set("hello", "100");
//        String result = jedisCluster.get("hello");
//        System.out.println(result);
//        jedisCluster.close();
//    }
//}
