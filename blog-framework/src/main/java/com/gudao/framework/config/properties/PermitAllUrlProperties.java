package com.gudao.framework.config.properties;

import com.gudao.common.annotation.Anonymous;
import org.apache.commons.lang3.RegExUtils;
import org.springframework.beans.BeansException;
import org.springframework.beans.factory.InitializingBean;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextAware;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.annotation.AnnotationUtils;
import org.springframework.web.method.HandlerMethod;
import org.springframework.web.servlet.mvc.method.RequestMappingInfo;
import org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerMapping;

import java.util.*;
import java.util.regex.Pattern;

/**
 * 设置Anonymous注解允许匿名访问的url
 */
@Configuration
public class PermitAllUrlProperties implements InitializingBean, ApplicationContextAware {
    private static final Pattern PATTERN = Pattern.compile("\\{(.*?)\\}");

    private ApplicationContext applicationContext;

    private List<String> urls = new ArrayList<>();

    public String ASTERISK = "*";

    @Override
    public void afterPropertiesSet() {
        RequestMappingHandlerMapping mapping = applicationContext.getBean(RequestMappingHandlerMapping.class);
        Map<RequestMappingInfo, HandlerMethod> map = mapping.getHandlerMethods();

        map.keySet().forEach(info -> {
            HandlerMethod handlerMethod = map.get(info);

            // 获取URL模式
            Set<String> patterns = getPatterns(info);
            if (patterns == null || patterns.isEmpty()) {
                return;
            }

            // 获取方法上边的注解 替代path variable 为 *
            Anonymous method = AnnotationUtils.findAnnotation(handlerMethod.getMethod(), Anonymous.class);
            Optional.ofNullable(method).ifPresent(anonymous -> patterns
                    .forEach(url -> urls.add(RegExUtils.replaceAll(url, PATTERN, ASTERISK))));

            // 获取类上边的注解, 替代path variable 为 *
            Anonymous controller = AnnotationUtils.findAnnotation(handlerMethod.getBeanType(), Anonymous.class);
            Optional.ofNullable(controller).ifPresent(anonymous -> patterns
                    .forEach(url -> urls.add(RegExUtils.replaceAll(url, PATTERN, ASTERISK))));
        });
    }

    /**
     * 获取RequestMappingInfo的URL模式，兼容不同Spring Boot版本
     * ******
     * 较老版本使用 getPatternsCondition().getPatterns()
     * 较新版本使用 getPathPatternsCondition().getPatternValues()
     */
    private Set<String> getPatterns(RequestMappingInfo info) {
        try {
            // 首先尝试使用getPatternsCondition方法（较旧版本）
            if (info.getPatternsCondition() != null) {
                return info.getPatternsCondition().getPatterns();
            }
        } catch (Exception e) {
            // 忽略异常，尝试其他方法
        }
        
        try {
            // 尝试使用getPathPatternsCondition方法（较新版本）
            if (info.getPathPatternsCondition() != null) {
                return info.getPathPatternsCondition().getPatternValues();
            }
        } catch (Exception e) {
            // 忽略异常
        }
        
        // 如果都失败了，返回空集合
        return Collections.emptySet();
    }

    @Override
    public void setApplicationContext(ApplicationContext context) throws BeansException {
        this.applicationContext = context;
    }

    public List<String> getUrls() {
        return urls;
    }

    public void setUrls(List<String> urls) {
        this.urls = urls;
    }
}
