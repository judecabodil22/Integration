package logistics.wms.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import logistics.wms.beans.InspectItemBeans;


public class InspectItemDao {
	
	JdbcTemplate template;
	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}
	
	
	
	public List<InspectItemBeans> getInspectList(){
		return template.query("SELECT iti_id,iti_date,iti_inspected_by,iti_quantity_passed,iti_remarks,itr_id from item_inspection", new RowMapper<InspectItemBeans>() {

			public InspectItemBeans mapRow(ResultSet rs, int rowNum) throws SQLException {
				InspectItemBeans g = new InspectItemBeans();
				g.setIti_id(rs.getInt(1));
				g.setIti_date(rs.getString(2));
				g.setIti_inspected_by(rs.getString(3));
				g.setIti_quantity_passed(rs.getInt(4));
				g.setIti_remarks(rs.getString(5));
				g.setItr_id(rs.getInt(6));
				
				return g;
			}
			
		});
	}
}
