package logistics.wms.dao;

import org.springframework.jdbc.core.JdbcTemplate;

import logistics.wms.beans.InspectionBean;

public class InspectionDao {
	
	JdbcTemplate template;
	
	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}
	
	public int save(InspectionBean w) {
		String sql = "insert into tbl_request_for_inspection(mr_code, requested_by, request_date) values ('"+w.getMr_code()+"', 'John Carlo Vergara', GETDATE())\r\n" 
				;
		return template.update(sql);	
	}
}
