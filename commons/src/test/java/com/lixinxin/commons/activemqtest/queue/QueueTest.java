//package com.lixinxin.commons.activemqtest.queue;
//
//import org.apache.activemq.ActiveMQConnectionFactory;
//import org.junit.Test;
//
//import javax.jms.*;
//import java.io.IOException;
//
///**
// * Created by Administrator on 2018/4/1.
// */
//public class QueueTest {
//    //测试生产者
//    @Test
//    public void testProducer() throws JMSException {
//        //1 获取连接工厂
//        ConnectionFactory connectionFactory = new ActiveMQConnectionFactory("tcp://139.196.77.23:61616");
//        //2 获取连接
//        Connection connection = connectionFactory.createConnection();
//        //3 获取会话
//        connection.start();
//        //两个参数：若第一个参数设值为true，第二个参数可以忽略
//        //若第一个参数为false的话，第二个参数可以一般选择为自动应答，AUTO_ACKNOWLEDGE自动应答，一般不会选择手动应答
//        Session session = connection.createSession(false, Session.AUTO_ACKNOWLEDGE);
//        //4 获取queue,不管是Queue还是Topic都是Destination的子接口
//         Queue queue = session.createQueue("firstqueue");
//        //5 获取生产者
//         MessageProducer producer = session.createProducer(queue);
//        //6 获取消息对象，JMS中有6种接口 Message(父接口)，TextMessage（子接口，文本消息）
//         TextMessage textMessage = session.createTextMessage("hello,activemq!");
//        //7 发送消息
//         producer.send(textMessage);
//        //8 释放资源
//        producer.close();
//        session.close();
//        connection.close();
//
//    }
//    //测试消费者
//    @Test
//    public void testConsumer() throws JMSException, IOException {
//        //1 获取连接工厂
//        ConnectionFactory connectionFactory = new ActiveMQConnectionFactory("tcp://139.196.77.23:61616");
//        //2 获取连接
//        Connection connection = connectionFactory.createConnection();
//        //3 获取会话
//        connection.start();
//        //两个参数：若第一个参数设值为true，第二个参数可以忽略
//        //若第一个参数为false的话，第二个参数可以一般选择为自动应答，AUTO_ACKNOWLEDGE自动应答，一般不会选择手动应答
//        Session session = connection.createSession(false, Session.AUTO_ACKNOWLEDGE);
//        //4 获取queue,不管是Queue还是Topic都是Destination的子接口
//        Queue queue = session.createQueue("firstqueue");
//        //5 获取消费者
//         MessageConsumer consumer = session.createConsumer(queue);
//        //6 监听,MessageListener
//        consumer.setMessageListener(new MessageListener() {
//            @Override
//            public void onMessage(Message message) {
//                //Message是6大消息接口的父接口，父接口可以强转成任何一个子接口类型
//                TextMessage textMessage = (TextMessage)message;
//                try {
//                    //7 获取消息，可以将String类型转为其他类型，String--Long
//                    String text = textMessage.getText();
//                    System.out.println(text);
//                } catch (JMSException e) {
//                    e.printStackTrace();
//                }
//            }
//        });
//        //等待键盘输入
//       try {
//           System.in.read();
//        } catch (IOException e) {
//            e.printStackTrace();
//        }
//        //8 释放资源
//        consumer.close();
//        session.close();
//        connection.close();
//    }
//
//}
