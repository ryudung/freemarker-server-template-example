package com.example.servertemplatetest.controller;

import com.example.servertemplatetest.engine.FreemarkerTemplateEngine;
import freemarker.template.TemplateException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.freemarker.FreeMarkerTemplateUtils;
import org.springframework.web.bind.annotation.GetMapping;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;
import java.util.stream.IntStream;

@Controller
public class HomeController {
    private final FreemarkerTemplateEngine fcfg;

    private List<Integer> datas;// 임의의 로직 계산을 위한 data

    private String cachedTemplate; //캐시된 template

    public HomeController() throws IOException {
        this.fcfg = new FreemarkerTemplateEngine();
        cachedTemplate = null;
        datas = IntStream.range(0, 100000).boxed().collect(Collectors.toList());
    }

    @GetMapping("/")
    public String home(Model model) {

        model.addAttribute("datas", datas);

        return "home";
    }

    @GetMapping("/server-template")
    public String serverTemplate(Model model) throws IOException, TemplateException {

        if (cachedTemplate == null) {//캐시 되지 않았다면,
            Map map = new HashMap();
            map.put("datas", datas);

            cachedTemplate = FreeMarkerTemplateUtils.processTemplateIntoString(
                    fcfg.getTemplate("home.ftl"),
                    map
            );
        }

        model.addAttribute("data", cachedTemplate);

        return "serverTemplate";

    }
}
