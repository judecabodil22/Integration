package logistics.wms.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;


import logistics.wms.beans.PurchaseOrderBeans;
import logistics.wms.beans.ReceiveItemBeans;
import logistics.wms.beans.WarehouseBeans;
import logistics.wms.beans.WarehouseItemBeans;



public class WarehouseItemDao {
	JdbcTemplate template;
	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}
	
	public int save(ReceiveItemBeans b) {
		String sql = "Insert into tbl_warehouse_items(wi_item_name,wi_item_category,wi_quantity) values('"+b.getItem_name()+"','"+b.getItem_name()+"','"+b.getItr_quantity()+"')";
		return template.update(sql);
		
	}
	
	
	public List<PurchaseOrderBeans> getPurchaseOrderList(){
		return template.query("select po_id,item_name,item_qty,po.delivery_date from tbl_purchase_request pr inner join tbl_pr_itemlist pir on pr.pr_id = pir.pr_id inner join tbl_purchase_order po on pr.pr_id = po.pr_id", new RowMapper<PurchaseOrderBeans>(){
			public PurchaseOrderBeans mapRow(ResultSet rs,int rowNum) throws SQLException{
				PurchaseOrderBeans g = new PurchaseOrderBeans();
				g.setPo_id(rs.getInt(1));
				g.setPo_item_name(rs.getString(2));
				g.setPo_item_qty(rs.getInt(3));
				g.setPo_delivery_date(rs.getString(4));
				
				return g;
			}
		});
	}
	
	
	
	public List<WarehouseItemBeans> getWarehouseItemList(){
		return template.query("SELECT wi_id,wi_item_name,wi_item_category,wi_quantity from tbl_warehouse_items", new RowMapper<WarehouseItemBeans>() {

			public WarehouseItemBeans mapRow(ResultSet rs, int rowNum) throws SQLException {
				WarehouseItemBeans g = new WarehouseItemBeans();
				g.setWi_id(rs.getInt(1));
				g.setWi_item_name(rs.getString(2));
				g.setWi_item_category(rs.getString(3));
				g.setWi_quantity(rs.getInt(4));
				
				
				return g;
			}
			
		});
	}
}
