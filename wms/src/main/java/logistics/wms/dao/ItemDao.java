package logistics.wms.dao;

import java.sql.ResultSet;


import java.sql.SQLException;
import java.util.List;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import logistics.wms.beans.Item;


public class ItemDao {
	
	JdbcTemplate template;
	
	public void setTemplate(JdbcTemplate template) {
		this.template = template;

}
	
	public int save(Item i) {
		String sql = "insert into tbl_item (item_name, item_qty, uom_id, qty_critical, category_id) values ('"+i.getItemName()+"','"+i.getItemQty()+"','"+i.getUomId()+"','"+i.getQtyCritical()+"','"+i.getCategoryId()+"')";
		return template.update(sql);
	}

	public List<Item> getItem()
	{
		return template.query("Select i.item_id,i.item_name,i.item_qty , u.uom_id,CONCAT(i.item_qty, ' ' ,u.uom_name) AS 'item qty',i.qty_critical,c.category_name From tbl_item i inner join tbl_uom u on i.uom_id = u.uom_id inner join tbl_item_category c on i.category_id = c.category_id ORDER BY item_id ASC", new RowMapper<Item>() {
			public Item mapRow(ResultSet rs, int row) throws SQLException{
				Item i = new Item();
				i.setItemId(rs.getInt(1));
				i.setItemName(rs.getString(2));
				//i.setItemCode(rs.getString(3));
				//i.setItemDesc(rs.getString(4));
				i.setItemQty(rs.getInt(3));
				i.setUomId(rs.getInt(4));
				i.setuomQty(rs.getString(5));
				i.setQtyCritical(rs.getInt(6));
				i.setItemCategory(rs.getString(7));
				//i.setItemStatus(rs.getString(9));
				//i.setWarehouseName(rs.getString(11));
				return i;
				}
			});
		}
	
	
	
	public int update(Item i) {
		String sql = "update tbl_item set item_name='"+i.getItemName()+"',item_qty='"+i.getItemQty()+"',uom_id='"+i.getUomId()+"',qty_critical='"+i.getQtyCritical()+"',category_id='"+i.getCategoryId()+"' where item_id="+i.getItemId()+"";
		return template.update(sql);
	}

		public int delete(int id) {
		String sql = "delete from tbl_item where item_id = "+id+"";
		return template.update(sql);
}
		
		public List<Item> Item()
		{
			return template.query(" Select item_name from tbl_item", new RowMapper<Item>() {
				public Item mapRow(ResultSet rs, int row) throws SQLException{
					Item i = new Item();
					i.setItemName(rs.getString(1));
				
					return i;
					}
				});
			}
		
		
		
}
