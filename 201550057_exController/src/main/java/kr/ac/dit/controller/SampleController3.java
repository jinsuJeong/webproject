package kr.ac.dit.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.ac.dit.domain.StudentVO;

@Controller
public class SampleController3 {
	@RequestMapping("urlD")
	public String urlD(Model model) {
		StudentVO studentVO= new StudentVO();
		
		studentVO.setNo("201550057");
		studentVO.setName("정준수");
		model.addAttribute(studentVO);
		
		return "read";
	}
}
