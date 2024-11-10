package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import pojo.Stranger;
import pojo.Student;
import service.BlackService;
import service.StrangerService;

import java.util.List;

@Controller
public class StrangerController {

    @Autowired
    @Qualifier("BlackServiceImpl")
    private BlackService blackService;

    @Autowired
    @Qualifier("StrangerServiceImpl")
    private StrangerService strangerService;

    @RequestMapping("/addstr")
    public String addstr(Stranger stranger){
//        if(blackService.selectBlack(stranger.getStr_id())>0){
            strangerService.AddStranger(stranger);
            return "index";
//        }
//        else{
//            return "error";
//        }
    }

    @RequestMapping("/queryStr")
    public String queryStu(String stu_num, Model model){
        List<Stranger> strangers = strangerService.selectStranger(stu_num);
        model.addAttribute("strangers",strangers);
        return "/jsp/stranger/SelectStranger";
    }

    @RequestMapping("/allstr")
    public String allstu(Model model){
        List<Stranger> strangers = strangerService.allStranger();
        model.addAttribute("strangers",strangers);
        return "/jsp/stranger/SelectStranger";
    }

    @RequestMapping("/delete/{name}")
    public String delete(@PathVariable("name") String name){
        strangerService.DeleteStranger(name);
        return "redirect:/allstr";
    }

}
