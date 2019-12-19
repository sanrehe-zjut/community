package life.majiang.community.controller;

import life.majiang.community.dto.PaginationDTO;
import life.majiang.community.model.User;
import life.majiang.community.service.NotificationService;
import life.majiang.community.service.QuestionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;

/**
 *
 */

@Controller
public class IndexController {
    @Autowired
    private QuestionService questionService;
    
    @Autowired
    private NotificationService notificationService;
    
    @GetMapping("/")
    public  String index(HttpServletRequest request,
                         Model model,
                         @RequestParam (name = "page", defaultValue = "1") Integer page,
                         @RequestParam (name = "size", defaultValue = "5") Integer size) {
        PaginationDTO pagination = questionService.list(page, size);
        model.addAttribute("pagination", pagination);
        // 自己写的
        /*
        User user = (User) request.getSession().getAttribute("user");
        Long unread = notificationService.unreadCount(user.getId());
        model.addAttribute("unread", unread);
        */
        // 结束
        return "index";
    }
}
