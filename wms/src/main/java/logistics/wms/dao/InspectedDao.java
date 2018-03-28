package logistics.wms.dao;

import org.springframework.jdbc.core.JdbcTemplate;

import logistics.wms.beans.InspectedBean;

public class InspectedDao {

JdbcTemplate template;
	
	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}
	
	public int save(InspectedBean w) {
		String sql = "insert into tbl_inspection_results values ('"+w.getRequest_id()+"', '"+w.getFindings()+"', 'John Carlo Vergara', GETDATE(), '"+w.getRepair_type()+"', '"+w.getRemarks()+"') update tbl_request_for_inspection set req_status = 1 where request_inspect_id = '"+w.getRequest_id()+"'";
		return template.update(sql);	
	}

}
