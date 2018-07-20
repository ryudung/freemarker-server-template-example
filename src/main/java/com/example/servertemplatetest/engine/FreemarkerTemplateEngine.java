package com.example.servertemplatetest.engine;

import freemarker.cache.FileTemplateLoader;
import freemarker.template.Configuration;
import freemarker.template.Template;
import org.springframework.core.io.Resource;
import org.springframework.web.servlet.view.freemarker.FreeMarkerConfigurer;

import java.io.IOException;

public class FreemarkerTemplateEngine extends FreeMarkerConfigurer {
    private Configuration cfg;

    public FreemarkerTemplateEngine() throws IOException {
        cfg = new Configuration(Configuration.VERSION_2_3_22);

        Resource path = getResourceLoader().getResource("classpath:templates/");

        cfg.setTemplateLoader(new FileTemplateLoader(path.getFile()));
    }

    public Template getTemplate(String path) throws IOException {
        return this.cfg.getTemplate(path);
    }
}
