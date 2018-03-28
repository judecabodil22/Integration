package logistics.wms.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import logistics.wms.beans.ReceiveItemBeans;
import logistics.wms.beans.WarehouseBeans;

public class ReceiveItemDao {

	JdbcTemplate template;
	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}
	
	
	
	
	
	public List<ReceiveItemBeans> getReceive(){
		return template.query("SELECT itr_id,itr_date,itr_receiver,itr_quantity,itr_remarks,po_no,i.item_id,item_name from item_receive r inner join item i on r.item_id=i.item_id", new RowMapper<ReceiveItemBeans>() {

			public ReceiveItemBeans mapRow(ResultSet rs, int rowNum) throws SQLException {
				ReceiveItemBeans g = new ReceiveItemBeans();
				g.setItr_id(rs.getInt(1));
				g.setItr_date(rs.getString(2));
				g.setItr_receiver(rs.getString(3));
				g.setItr_quantity(rs.getInt(4));
				g.setItr_remarks(rs.getString(5));
				g.setPo_no(rs.getInt(6));
				g.setItem_id(rs.getInt(7));
				g.setItem_name(rs.getNString(8));
				
				return g;
			}
			
		});
	}
}
