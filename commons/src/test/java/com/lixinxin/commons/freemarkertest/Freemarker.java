package com.lixinxin.commons.freemarkertest;

import freemarker.template.Configuration;
import freemarker.template.Template;
import freemarker.template.TemplateException;
import org.junit.Test;

import java.io.FileWriter;
import java.io.IOException;
import java.io.Writer;
import java.util.HashMap;
import java.util.Map;

/**
 * Created by Administrator on 2018/4/2.
 */
public class Freemarker {
    @Test
    public void testFreemaker(){
        //获取配置对象
        Configuration configuration = new Configuration(Configuration.getVersion());
        //设置模板所在的位置
        configuration.setClassForTemplateLoading(this.getClass(), "/ftl");
        //设置字符集
        configuration.setDefaultEncoding("UTF-8");
        //获取指定的模板
        try {
            Template template = configuration.getTemplate("1.ftl");
            //设置数据
            Map<String, Object> dataModel = new HashMap<String, Object>();
            dataModel.put("name","dhc");
        //获取输出流,文件输出流，静态页面要生成到什么地方
            Writer out = new FileWriter("d:/ftl/01.html");
            //执行生成动作
            template.process(dataModel,out);
        //释放资源
        out.close();
        } catch (IOException e) {
            e.printStackTrace();
        } catch (TemplateException e) {
            e.printStackTrace();
        }

    }
}
