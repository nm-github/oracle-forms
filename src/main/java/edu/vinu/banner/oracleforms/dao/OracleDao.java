package edu.vinu.banner.oracleforms.dao;

import edu.vinu.banner.oracleforms.model.Record;
import java.util.ArrayList;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

@Component
public class OracleDao {
	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	public Record get(long id) {
		Record proj = jdbcTemplate.queryForObject("select * from table where id = ?",
				new Object[] {id},
				new BeanPropertyRowMapper<Record>(Record.class));
		return proj;
	}
	
	public List<Record> getAll(String sortOption) {
//		String sql = "select * from table";
//		List<Record> list = jdbcTemplate.query(sql, new BeanPropertyRowMapper<Record>(Record.class));
		
		List<Record> list = new ArrayList<Record>();
		for (int i = 0; i < 10; i++) {
			list.add(new Record(String.valueOf(i), "Field 1 for " + i, "Field 2 for " + i));
		}
		
		return list;
	}
	
	public int insert(Record record) {
		return jdbcTemplate.update("insert into table (field1, field2) values (?, ?)",
				record.getField1(),
				record.getField2());
	}
	
	public int update(Record record) {
		return jdbcTemplate.update("update table set field1 = ?, field2 = ? where id = ?",
				record.getField1(),
				record.getField2());
	}
	
	public int delete(long id) {
		return jdbcTemplate.update("delete from table where id = ?", id);
	}
}