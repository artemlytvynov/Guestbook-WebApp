package sumdu.edu.ua.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import sumdu.edu.ua.core.port.CommentRepositoryPort;

@Controller
@RequestMapping("/users")
public class UserController {

    private final CommentRepositoryPort commentRepo;

    public UserController(CommentRepositoryPort commentRepo) {
        this.commentRepo = commentRepo;
    }

    @GetMapping("/{username}/comments")
    public String listByUser(@PathVariable("username") String username, Model model) {
        var comments = commentRepo.findByAuthor(username);

        model.addAttribute("username", username);
        model.addAttribute("comments", comments);

        return "user_comments";
    }
}