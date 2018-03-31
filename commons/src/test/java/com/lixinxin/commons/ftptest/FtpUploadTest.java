package com.lixinxin.commons.ftptest;

import com.pursebao.commons.tools.FtpUtils;
import org.apache.commons.net.ftp.FTP;
import org.apache.commons.net.ftp.FTPClient;
import org.junit.Test;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;

/**
 * Created by Administrator on 2018/3/21.
 */
public class FtpUploadTest {
    @Test
    public void testFtpload() throws IOException {
        //创建FTPClient客户端
        FTPClient  ftpClient=new FTPClient();
        //创建FTP连接
        ftpClient.connect("139.196.77.23",21);
        //登录
        ftpClient.login("ftpuser","lixinxin123");
        //读取本地文件
        FileInputStream fileInputStream=new FileInputStream(new File("D:/1.jpg"));
        //配置上传参数
        ftpClient.changeWorkingDirectory("/home/ftpuser/www/images");
        ftpClient.setFileType(FTP.BINARY_FILE_TYPE);
        //上传文件
        ftpClient.storeFile("hello.jpg",fileInputStream);
        //关闭连接
        fileInputStream.close();
        ftpClient.logout();
    }
    @Test
    public void testFtpUtils() throws FileNotFoundException {
        FileInputStream inputStream=new FileInputStream(new File("D:/1.jpg"));
        boolean b=FtpUtils.uploadFile("139.196.77.23",21,"ftpuser","lixinxin123", "/home/ftpuser/www/images","/2018/03/21","world.jpg",inputStream);
        System.out.print(b);
    }
}
