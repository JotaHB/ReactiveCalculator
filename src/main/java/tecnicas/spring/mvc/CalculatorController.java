package tecnicas.spring.mvc;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class CalculatorController {
    double result = 0;

    @GetMapping("/")
    public String getPage() {
        return "index";
    }

    @PostMapping("/calculate")
    public ModelAndView calculate(@RequestParam("num1") int num1,
                                  @RequestParam("num2") int num2,
                                  @RequestParam("operator") String operator) {
        ModelAndView modelAndView = new ModelAndView("index");

        if (operator.equals("+")) {
            result = num1 + num2;
        } else if (operator.equals("-")) {
            result = num1 - num2;
        } else if (operator.equals("*")) {
            result = num1 * num2;
        } else if (operator.equals("/")) {
            if (num2 == 0) {
                throw new IllegalArgumentException("Cannot divide by zero");
            }
            result = (double) num1 / num2;
        }

        modelAndView.addObject("result", result);
        return modelAndView;
    }
}
