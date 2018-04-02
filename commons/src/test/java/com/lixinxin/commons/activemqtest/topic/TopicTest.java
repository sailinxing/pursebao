//package com.lixinxin.commons.activemqtest.topic;
//
//import org.apache.activemq.ActiveMQConnectionFactory;
//import org.junit.Test;
//
//import javax.jms.*;
//
///**
// * Created by Administrator on 2018/4/1.
// */
//public class TopicTest {
//    //测试发布者
//   @Test
//    public void testPublisher() throws JMSException {
//       //1 获取连接工厂
//        ConnectionFactory connectionFactory = new ActiveMQConnectionFactory("tcp://139.196.77.23:61616");
//        //2 获取连接
//        Connection connection = connectionFactory.createConnection();
//       //3 获取会话
//        connection.start();
//        //两个参数：若第一个参数设值为true，第二个参数可以忽略
//        //若第一个参数为false的话，第二个参数可以一般选择为自动应答，AUTO_ACKNOWLEDGE自动应答，一般不会选择手动应答
//        Session session = connection.createSession(false, Session.AUTO_ACKNOWLEDGE);
//        //4 获取queue,不管是Queue还是Topic都是Destination的子接口
//        //Queue queue = session.createQueue("firstqueue");
//        Topic topic = session.createTopic("firsttopic");
//        //5 获取生产者
//        MessageProducer producer = session.createProducer(topic);
//        //6 获取消息对象，JMS中有6种接口 Message(父接口)，TextMessage（子接口，文本消息）
//        TextMessage textMessage = session.createTextMessage("hello,activemq999999!");
//        //7 发送消息
//        producer.send(textMessage);
//        //8 释放资源
//        producer.close();
//        session.close();
//        connection.close();
//   }
//
//    @Test
//    public void testSubscriber() throws Exception{
//        //线程1
//        //ActiveMQConnectionFactory（tcp  61616生产者消费者端口号要对应）---Connection ---- 连接 --- Session(false,自动应答)--目标对象（Queue，Topic）
//        //创建生产者---创建TextMessage---通过生产者发送消息(send(textMessage))--关闭资源
//        //1 创建连接工厂
//        ConnectionFactory connectionFactory = new ActiveMQConnectionFactory("tcp://139.196.77.23:61616");
//        //2 通过连接工厂创建连接
//        Connection connection = connectionFactory.createConnection();
//        //3 连接
//        connection.start();
//        //4 通过连接创建会话
//        //只有第一个参数为false时候，第二个参数才有意义，AUTO_ACKNOWLEDGE自动应答，一般选择这个。
//        Session session = connection.createSession(false, Session.AUTO_ACKNOWLEDGE);
//        //5 创建目标对象(消息形式 点对点模式 发布/订阅模式)
//        //队列的name叫firstqueue
//        Topic topic = session.createTopic("firsttopic");
//        //6 创建消费者
//        MessageConsumer consumer = session.createConsumer(topic);
//        //7 接收消息
//        consumer.setMessageListener(new MessageListener() {
//            @Override
//            public void onMessage(Message message) {
//                //a 接收消息的第一步：强制类型转换
//                TextMessage textMessage = (TextMessage) message;
//                try {
//                    //线程2
//                    String str = textMessage.getText();
//                    System.out.println(str);
//                } catch (JMSException e) {
//                    e.printStackTrace();
//                }
//            }
//        });
//
//        System.in.read();
//
//        //8 释放资源
//        consumer.close();
//       session.close();
//        connection.close();
//    }
//}
