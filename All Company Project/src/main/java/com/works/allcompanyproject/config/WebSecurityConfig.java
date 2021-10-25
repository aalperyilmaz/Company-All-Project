package com.works.allcompanyproject.config;

import com.works.allcompanyproject.services.UserService;

import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.security.web.util.matcher.AntPathRequestMatcher;

@Configuration
@EnableWebSecurity
@EnableGlobalMethodSecurity(prePostEnabled = true)
public class WebSecurityConfig extends WebSecurityConfigurerAdapter {

    final UserService userService;
    public WebSecurityConfig(UserService userService) {
        this.userService = userService;
    }

    // sql içinde sorgulama yaparak kullanıcının varlığını ve rolü'nü denetler.
    @Override
    protected void configure(AuthenticationManagerBuilder auth) throws Exception {
        auth.userDetailsService(userService).passwordEncoder(userService.encoder());
    }


    // rollere göre kullanıcı hangi sayfaya giriş yapacak ise ilgili denetimi yapar.
    @Override
    protected void configure(HttpSecurity http) throws Exception {

      http
              .authorizeRequests()
              .antMatchers("/dashboard/**").permitAll()
              .antMatchers("/sidebar/**").permitAll()
              .antMatchers("/content/**").permitAll()
              .antMatchers("/registers/**").permitAll()

              .antMatchers("/register/**").permitAll()
              .antMatchers("/category/**").permitAll()
              .antMatchers("/static/**","/css/**","/inc/**","/images/**","/js/**","/sitejs/**",
                      "/uploads/**","/Semantic-UI-CSS-master/**","/scss/**").permitAll()
              .antMatchers("/header/**").permitAll()
              .antMatchers("/layout/**").permitAll()


              .antMatchers("/").permitAll()
              .anyRequest().authenticated()
              .and()
              .formLogin()
              .loginPage("/login")
              .permitAll()
              .and()
              .rememberMe().rememberMeCookieName("customCookie")
              .and()
              .logout()
                  .logoutRequestMatcher(new AntPathRequestMatcher("/logout"))
                  .deleteCookies("JSESSIONID")
                  .invalidateHttpSession(true)
                  .logoutSuccessHandler(userService)
                .permitAll()
              .and()
              .exceptionHandling().accessDeniedPage("/403");

      http.csrf().disable();
      http.formLogin().defaultSuccessUrl("/announce");
      http.headers().frameOptions().disable();


    }
}
