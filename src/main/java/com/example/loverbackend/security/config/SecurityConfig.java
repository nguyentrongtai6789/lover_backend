package com.example.loverbackend.security.config;


import com.example.loverbackend.security.CustomAccessDeniedHandler;
import com.example.loverbackend.security.RestAuthenticationEntryPoint;
import com.example.loverbackend.security.jwt.JwtAuthenticationFilter;
import com.example.loverbackend.service.extend.AccountService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.config.BeanIds;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.config.http.SessionCreationPolicy;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter;

@Configuration
@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter {
    @Autowired
    private AccountService accountService;

    @Bean
    public PasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder(10);
    }

    @Bean
    public JwtAuthenticationFilter jwtAuthenticationFilter() {
        return new JwtAuthenticationFilter();
    }

    @Bean(BeanIds.AUTHENTICATION_MANAGER)
    @Override
    public AuthenticationManager authenticationManager() throws Exception {
        return super.authenticationManager();
    }

    @Bean
    public RestAuthenticationEntryPoint restServicesEntryPoint() {
        return new RestAuthenticationEntryPoint();
    }

    @Bean
    public CustomAccessDeniedHandler customAccessDeniedHandler() {
        return new CustomAccessDeniedHandler();
    }

    @Autowired
    public void configureGlobalSecurity(AuthenticationManagerBuilder auth) throws Exception {
        auth.userDetailsService(accountService).passwordEncoder(new BCryptPasswordEncoder(10));
    }

    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http.csrf().ignoringAntMatchers("/api/**");
        http.httpBasic().authenticationEntryPoint(restServicesEntryPoint());
        http.authorizeRequests()
                .antMatchers("/**").permitAll()
//                .antMatchers( "/api/login").permitAll()
//                .antMatchers( "/api/findAllAccounts").permitAll()
//                .antMatchers( "/api/sendCodeToEmail/**").permitAll()
//                .antMatchers( "/api/sendCodeToEmail2/**").permitAll()
//                .antMatchers( "/api/createNewAccount/**").permitAll()
//                .antMatchers( "/api/profileUser/**").hasAnyRole(new String[]{"LOVER", "USER"})
//                .antMatchers( "/api/profileLover/findAll").permitAll()
//                .antMatchers( "/api/profileLover/getTotalPage").permitAll()
////                .antMatchers("/api/blog/**").hasAnyRole(new String[]{"ADMIN", "USER"})
//                .antMatchers("/api/vipService/findAll").permitAll()
//                .antMatchers("/api/freeService/findAll").permitAll()
//                .antMatchers("/api/serviceLover/findAll").permitAll()
//                .antMatchers("/api/profileLover/findAllByNickname/**").permitAll()
//                .antMatchers("/api/profileLover/findAllByVipService/**").permitAll()
//                .antMatchers("/api/profileLover/findAllByFreeService/**").permitAll()
                .anyRequest().authenticated()
                .and().csrf().disable();
        http.addFilterBefore(jwtAuthenticationFilter(), UsernamePasswordAuthenticationFilter.class)
                .exceptionHandling().accessDeniedHandler(customAccessDeniedHandler());
        http.sessionManagement()
                .sessionCreationPolicy(SessionCreationPolicy.STATELESS);
        http.cors();
    }
}