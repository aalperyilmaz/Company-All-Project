package com.works.restapix.restcontroller;

import com.works.restapix.entity.Survey;
import com.works.restapix.entity.SurveyVote;
import com.works.restapix.entity.User;
import com.works.restapix.repositories.*;
import com.works.restapix.utils.RestEnum;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.bind.annotation.*;

import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/api/survey")
public class SurveyRestController {

    final SurveyRepository surveyRepository;
    final SurveyOptionsRepository surveyOptionsRepository;
    final UserRepository userRepository;
    final CustomerRepository customerRepository;
    final SurveyVoteRepository surveyVoteRepository;

    public SurveyRestController(SurveyRepository surveyRepository, SurveyOptionsRepository surveyOptionsRepository, UserRepository userRepository, CustomerRepository customerRepository, SurveyVoteRepository surveyVoteRepository) {
        this.surveyRepository = surveyRepository;
        this.surveyOptionsRepository = surveyOptionsRepository;
        this.userRepository = userRepository;
        this.customerRepository = customerRepository;
        this.surveyVoteRepository = surveyVoteRepository;
    }

    @ResponseBody
    @GetMapping("/list")
    public Map<RestEnum,Object> surveyList(){
        Map<RestEnum,Object> hm =new LinkedHashMap<>();
        String  uname = SecurityContextHolder.getContext().getAuthentication().getName();
        User user=userRepository.findByEmailEquals(uname);

        List<Survey> ls= surveyRepository.findByCompanyEqualsOrderBySurveyIdDesc(user.getCompany());

        hm.put(RestEnum.status,true);
        hm.put(RestEnum.message,ls);

        return hm;
    }

    @GetMapping("/add/{customer}/{survey}/{point}")
    public Map<RestEnum, Object> surveyVote(@PathVariable String customer, @PathVariable String survey, @PathVariable String point) {
        Map<RestEnum, Object> hm = new LinkedHashMap<>();

        Integer customerId = Integer.parseInt(customer);
        Integer surveyId = Integer.parseInt(survey);
        Integer vote = Integer.parseInt(point);

        SurveyVote surveyVote = new SurveyVote();
        try {

            surveyVote.setSurvey(surveyRepository.findById(surveyId).get());
            surveyVote.setCustomer(customerRepository.findById(customerId).get());
            surveyVote.setVote(vote);
            surveyVoteRepository.save(surveyVote);

            hm.put(RestEnum.status,true);
            hm.put(RestEnum.message,surveyVote);
        } catch (Exception e) {
            hm.put(RestEnum.status,false);
        }

        return hm;
    }


}
