package edu.vinu.banner.oracleforms.controller;

import edu.vinu.banner.oracleforms.model.Record;
import edu.vinu.banner.oracleforms.processor.OracleProcessor;
import java.util.Date;
import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class OracleController {
	@Autowired
	private OracleProcessor processor;
	
	private String message = "Oracle forms message";

	@GetMapping("/")
	public String welcome(Map<String, Object> model) throws Exception {
		List<Record> list = processor.getList(null);
		model.put("recordList", list);
		return "list";
	}
	
	@GetMapping("/edit")
	public String edit(@RequestParam(name = "id", required = true) String id, Map<String, Object> model) throws Exception {
		Record record = processor.get(id);
		model.put("record", record);
		return "edit";
	}
	
	@GetMapping("/edit-save")
	public String editSave(
			@RequestParam(name = "id", required = true) String id,
			@RequestParam(name = "field1", required = true) String field1,
			@RequestParam(name = "field2", required = true) String field2,
			Map<String, Object> model) throws Exception {
		Record record = new Record(id, field1, field2);
		processor.update(record);
		model.put("message", "Record updated successfully.");
		return welcome(model);
	}
}