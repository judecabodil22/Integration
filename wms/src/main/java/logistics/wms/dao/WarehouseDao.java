package logistics.wms.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import logistics.wms.beans.WarehouseBeans;

public class WarehouseDao {
	
	JdbcTemplate template;
	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}
	
	public int save(WarehouseBeans w) {
		String sql = "Insert into tbl_warehouse(warehouse_name,warehouse_desc,warehouse_status,warehouse_date_created) values('"+w.getWarehouseName()+"','"+w.getWarehouseDesc()+"','"+w.getWarehouseStatus()+"', GetDate())";
		return template.update(sql);
		
	}
	
	public int update(WarehouseBeans w) {
		String sql = "Update tbl_warehouse set warehouse_name='"+w.getWarehouseName()+"', warehouse_desc='"+w.getWarehouseDesc()+"', warehouse_status='"+w.getWarehouseStatus()+"', warehouse_last_modified=getdate() where warehouse_id='"+w.getWarehouse_ID()+"'";
		return template.update(sql);
		
	}
	
	public List<WarehouseBeans> getWarehouse(){
		return template.query("Select warehouse_id,warehouse_name,warehouse_desc,warehouse_status,warehouse_date_created,ISNULL(cast(warehouse_last_modified as varchar),'---') as 'Date Modified' from tbl_warehouse order by warehouse_date_created desc", new RowMapper<WarehouseBeans>() {

			public WarehouseBeans mapRow(ResultSet rs, int rowNum) throws SQLException {
				WarehouseBeans g = new WarehouseBeans();
				g.setWarehouse_ID(rs.getInt(1));
				g.setWarehouseName(rs.getString(2));
				g.setWarehouseDesc(rs.getString(3));
				g.setWarehouseStatus(rs.getInt(4));
				g.setWarehouseDateCreated(rs.getString(5));
				g.setWarehouseDateModified(rs.getString(6));
				
				return g;
			}
			
		});
	}
	
	public List<WarehouseBeans> getWarehouseList(){
		return template.query("Select warehouse_id,warehouse_name,warehouse_desc,warehouse_status,warehouse_date_created,ISNULL(cast(warehouse_last_modified as varchar),'---') as 'Date Modified' from tbl_warehouse order by warehouse_date_created desc", new RowMapper<WarehouseBeans>() {

			public WarehouseBeans mapRow(ResultSet rs, int rowNum) throws SQLException {
				WarehouseBeans g = new WarehouseBeans();
				g.setWarehouse_ID(rs.getInt(1));
				g.setWarehouseName(rs.getString(2));
				g.setWarehouseDesc(rs.getString(3));
				g.setWarehouseStatus(rs.getInt(4));
				g.setWarehouseDateCreated(rs.getString(5));
				g.setWarehouseDateModified(rs.getString(6));
				
				return g;
			}
			
		});
	}
	
	
	
}
