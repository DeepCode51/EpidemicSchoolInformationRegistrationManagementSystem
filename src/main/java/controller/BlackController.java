package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import pojo.Black;
import service.BlackService;

import java.util.List;

@Controller
public class BlackController {

    @Autowired
    @Qualifier("BlackServiceImpl")
    private BlackService blackService;

    @RequestMapping("/allblack")
    public String allblack(Model model){
        List<Black> blacks = blackService.allUser();
        model.addAttribute("blacks",blacks);
        return "jsp/BlackUser";
    }

    @RequestMapping("/deleteblack/{id}")
    public String deleteblack(@PathVariable("id") String id){
        blackService.delete(id);
        return "redirect:/allblack";
    }

    @RequestMapping("/AddBlack")
    public String AddBlack(Black black){
        blackService.addBlack(black);
        return "AddBlackUser";
    }

}
