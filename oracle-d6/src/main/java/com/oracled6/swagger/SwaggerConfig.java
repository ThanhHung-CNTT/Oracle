package com.oracled6.swagger;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import springfox.documentation.builders.ApiInfoBuilder;
import springfox.documentation.builders.RequestHandlerSelectors;
import springfox.documentation.service.ApiInfo;
import springfox.documentation.spi.DocumentationType;
import springfox.documentation.spring.web.plugins.Docket;
import springfox.documentation.swagger2.annotations.EnableSwagger2;

@Configuration
@EnableSwagger2
public class SwaggerConfig {
    @Bean
    public Docket postApi() {
        return new Docket(DocumentationType.SWAGGER_2).groupName("public-api").apiInfo(apiInfo()).select()
                .apis(RequestHandlerSelectors.basePackage("com.oracled6.BLL")).build();
    }

    private ApiInfo apiInfo() {
        return new ApiInfoBuilder().title("API Day 6").description("Thuc hanh oracle buoi 6")
                .build();
    }
}
