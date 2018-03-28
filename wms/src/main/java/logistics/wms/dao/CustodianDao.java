package logistics.wms.dao;

import java.sql.ResultSet;

import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import logistics.wms.beans.CustodianBean;

public class CustodianDao {

	JdbcTemplate template;
	
	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}
	
	public List<CustodianBean> getCustodian(){
		return template.query("select * from tbl_department", new RowMapper<CustodianBean>(){

			public CustodianBean mapRow(ResultSet rs, int rowNum) throws SQLException {
				CustodianBean d = new CustodianBean();
				d.setNoDept(rs.getInt(1));
				d.setNameDept(rs.getString(2));
				
				return d;			}
				
		});
				
	}
}
