//package com.lixinxin.commons.jedistest;
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
///**
// * Created by Administrator on 2018/3/19.
// */
//public class JedisTest {
//    //单机版
//    @Test
//    public void testJedis1(){
//        Jedis jedis=new Jedis("139.196.77.23",6379);
//        jedis.set("jedis1","hello jedis1");
//        jedis.close();
//    }
//    //连接池版
//    @Test
//    public void testJedis2(){
//        JedisPool jedisPool=new JedisPool("139.196.77.23",6379);
//        Jedis jedis=jedisPool.getResource();
//        System.out.print(jedis.get("jedis1"));
//        jedis.rpush("jedis2","li","xi","xin");
//        jedis.close();
//    }
//    //集群版
//    @Test
//    public void testJedis3(){
//        Set<HostAndPort> nodes=new HashSet<>();
//        nodes.add(new HostAndPort("139.196.77.23",9001));
//        nodes.add(new HostAndPort("139.196.77.23",9002));
//        nodes.add(new HostAndPort("139.196.77.23",9003));
//        nodes.add(new HostAndPort("139.196.77.23",9004));
//        nodes.add(new HostAndPort("139.196.77.23",9005));
//        nodes.add(new HostAndPort("139.196.77.23",9006));
//        JedisCluster jedisCluster=new JedisCluster(nodes);
//        jedisCluster.hset("user","name","jedis");
//        jedisCluster.hset("user","age","12");
//        jedisCluster.close();
//    }
//}
