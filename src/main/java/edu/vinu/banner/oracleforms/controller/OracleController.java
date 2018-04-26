package edu.vinu.banner.oracleforms.controller;

import edu.vinu.banner.oracleforms.model.Record;
import edu.vinu.banner.oracleforms.processor.OracleProcessor;
import java.util.Date;
import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class OracleController {
	@Autowired
	private OracleProcessor processor;
	
	private String message = "Oracle forms message";

	@GetMapping("/")
	public String welcome(Map<String, Object> model) throws Exception {
		List<Record> list = processor.getList(null);
		
		model.put("recordList", list);
		model.put("time", new Date());
		model.put("message", this.message);
		return "welcome";
	}
}