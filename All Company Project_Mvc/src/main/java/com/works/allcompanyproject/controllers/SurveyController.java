package com.works.allcompanyproject.controllers;

import com.works.allcompanyproject.entities.Company;
import com.works.allcompanyproject.entities.Survey;
import com.works.allcompanyproject.entities.SurveyOptions;
import com.works.allcompanyproject.entities.User;
import com.works.allcompanyproject.property.SurveyProperty;
import com.works.allcompanyproject.property.SurveyResultProperty;
import com.works.allcompanyproject.repository.CompanyRepository;
import com.works.allcompanyproject.repository.SurveyOptionsRepository;
import com.works.allcompanyproject.repository.SurveyRepository;
import com.works.allcompanyproject.repository.UserRepository;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/survey")
public class SurveyController {

    final SurveyRepository surveyRepository;
    final CompanyRepository companyRepository;
    final SurveyOptionsRepository surveyOptionsRepository;
    final UserRepository userRepository;

    public SurveyController(SurveyRepository surveyRepository, CompanyRepository companyRepository, SurveyOptionsRepository surveyOptionsRepository, UserRepository userRepository) {
        this.surveyRepository = surveyRepository;
        this.companyRepository = companyRepository;
        this.surveyOptionsRepository = surveyOptionsRepository;
        this.userRepository = userRepository;
    }


    @GetMapping
    public String surveyMain (Model model) {

        String uname = SecurityContextHolder.getContext().getAuthentication().getName();
        User user= userRepository.findByEmailEquals(uname);

        Company company = user.getCompany();;

        List<Survey> surveys = surveyRepository.findByCompanyEqualsOrderBySurveyIdDesc(company);
        model.addAttribute("surveys", surveys);

        /*List<Survey> surveyOptionsList = surveyRepository.findBySurveyIdEquals(4);

        surveyOptionsList.forEach( item -> {
            System.out.println("eeeeeeeeeeeeeeeeeeeeeeeeee:" + item.getSurveyOptions().get(0).getSurveyOptionsTitle());
        });*/
        return "survey";
    }

    @PostMapping("/add")
    public String surveyAdd (Survey survey){
        try {
            String uname = SecurityContextHolder.getContext().getAuthentication().getName();
            User user= userRepository.findByEmailEquals(uname);

            survey.setCompany(user.getCompany());
            surveyRepository.save(survey);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "redirect:/survey";
    }

    @PostMapping("/optionadd")
    public String surveyOptionAdd (SurveyProperty surveyProperty){
        SurveyOptions options = new SurveyOptions();

        try {
            options.setSurveyOptionsTitle(surveyProperty.getSurveyOptionsTitle());
            SurveyOptions lastOptions = surveyOptionsRepository.save(options);

            Survey survey = surveyRepository.findById(surveyProperty.getSurveyId()).get();

            List<SurveyOptions> optionsList = new ArrayList<>();

            survey.getSurveyOptions().add(lastOptions);
            surveyRepository.save(survey);

        } catch (Exception e) {
            e.printStackTrace();
        }
        return "redirect:/survey";
    }

    @ResponseBody
    @GetMapping("/pagination/{index}/{index1}")
    public Map<String,Object> surveyPagination(@PathVariable String index, @PathVariable String index1){

        Integer pagenumber = Integer.parseInt(index);
        Integer pagesize = Integer.parseInt(index1);
        Map<String,Object> hm =new LinkedHashMap<>();
        String uname = SecurityContextHolder.getContext().getAuthentication().getName();
        User user= userRepository.findByEmailEquals(uname);

        Company company = user.getCompany();
        Pageable page = PageRequest.of(pagenumber, pagesize);

        List<Survey> surveyList = surveyRepository.findByCompanyEquals(company, page);

        System.out.println(surveyList);


        hm.put("datas",surveyList);

        return hm;
    }


    @ResponseBody
    @GetMapping("/vote/{index}")
    public Map<String,Object> surveyVote(@PathVariable String index){
        Map<String,Object> hm =new LinkedHashMap<>();
        List<SurveyResultProperty> surveyResultList = new ArrayList<>();
        SurveyResultProperty surveyResult = new SurveyResultProperty();
        String uname = SecurityContextHolder.getContext().getAuthentication().getName();
        User user= userRepository.findByEmailEquals(uname);
        Integer surveyid = Integer.parseInt(index);

        Company company = user.getCompany();

        Survey survey = surveyRepository.findById(surveyid).get();

        List<SurveyOptions> surveyOptionsList = surveyRepository.findById(surveyid).get().getSurveyOptions();

        surveyOptionsList.forEach( item -> {
            surveyResult.setSurvayName(surveyRepository.findById(surveyid).get().getSurveyTitle());
            surveyResult.setOptionsName(item.getSurveyOptionsTitle());
            surveyResult.setOptionsVote(0);
            surveyResultList.add(surveyResult);
        });
        surveyOptionsList.size();

        for(int i = 0; i < surveyOptionsList.size(); i ++){
            surveyResultList.get(i).setOptionsName(surveyOptionsList.get(i).getSurveyOptionsTitle());
            System.out.println(surveyResultList.get(i).getOptionsName());
        }

        surveyResultList.forEach( item -> {
            System.out.println("Seçenekler: +" + item.getOptionsName());
        });

        hm.put("datas",surveyResultList);

        return hm;
    }


    @ResponseBody
    @GetMapping("/delete/{index}")
    public String advertisementDelete(@PathVariable String index){
        Integer id=Integer.parseInt(index);
        Integer status=0;
        try {
            surveyRepository.deleteById(id);
        } catch (Exception e) {
            e.printStackTrace();
        }

        return "redirect:/survey";
    }

}
