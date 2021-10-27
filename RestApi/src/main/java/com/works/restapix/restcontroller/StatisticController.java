package com.works.restapix.restcontroller;

import com.works.restapix.entity.User;
import com.works.restapix.repositories.NewsRepository;
import com.works.restapix.repositories.NoticeRepository;
import com.works.restapix.repositories.SubCategoryRepository;
import com.works.restapix.repositories.UserRepository;
import com.works.restapix.utils.RestEnum;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.LinkedHashMap;
import java.util.Map;

@RestController
@RequestMapping("/api/statistic")
public class StatisticController {
final NoticeRepository noticeRepository;
final SubCategoryRepository subCategoryRepository;
final NewsRepository newsRepository;
final UserRepository userRepository;

    public StatisticController(NoticeRepository noticeRepository, SubCategoryRepository subCategoryRepository, NewsRepository newsRepository, UserRepository userRepository) {
        this.noticeRepository = noticeRepository;
        this.subCategoryRepository = subCategoryRepository;
        this.newsRepository = newsRepository;
        this.userRepository = userRepository;
    }


    @GetMapping("/list")
    public Map<RestEnum, Object> getStatistic() {
        Map<RestEnum, Object> hm = new LinkedHashMap<>();
        try {
            hm.put(RestEnum.status,true);
            String  uname = SecurityContextHolder.getContext().getAuthentication().getName();
            User user=userRepository.findByEmailEquals(uname);
            hm.put(RestEnum.message,newsRepository.countByNewsId(user.getCompany().getCompanyId()));
            hm.put(RestEnum.message_1,noticeRepository.countByCompany_CompanyId(user.getCompany().getCompanyId()));
        } catch (Exception e) {
            hm.put(RestEnum.status,false);
        }

        return hm;
    }


}
