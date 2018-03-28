package logistics.wms.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import logistics.wms.beans.Po;



public class PoDao {
	
	JdbcTemplate template;
	
	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	
	}
	
	public List<Po> getPo()
	{
		return template.query("Select po.po_id,pl.item_name,pl.item_desc,pl.item_Qty,pl.unit_price,po.delivery_date,po_issue_date from tbl_purchase_request pr inner join tbl_pr_itemlist pl on pr.pr_id = pl.pr_id inner join tbl_purchase_order po on po.pr_id = pr.pr_id ", new RowMapper<Po>() {
			public Po mapRow(ResultSet rs, int row) throws SQLException{
				Po o = new Po();
				o.setPoId(rs.getInt(1));
				o.setItemName(rs.getString(2));
				o.setItemDesc(rs.getString(3));
				o.setItemQty(rs.getInt(4));
				o.setUnitCost(rs.getInt(5));
				o.setPoDate(rs.getString(6));
				//o.setPoCode(rs.getString(2));
				//o.setPrCode(rs.getString(3));
				//o.setSupplierName(rs.getString(4));
				//o.setMopType(rs.getString(5));
				//o.setPlaceOfDelivery(rs.getString(5));
				//o.setDeliveryDate(rs.getString(6));
				//o.setPaymentTerm(rs.getString(7));
				//o.setItemQty(rs.getInt(8));
			//	o.setUomName(rs.getString(9));
				//o.setUomQty(rs.getString(10));
				//o.setUnitCost(rs.getInt(11));
				//o.setTotalCost(rs.getInt(12));
				//o.setPoDate(rs.getString(13));
				return o;
				}
			});
		}
	
	public int delete(int id) {
		String sql = "delete from tbl_purchase_order where po_id = "+id+"";
		return template.update(sql);
	}
	
	public int save(Po o) {
		String sql = "insert into tbl_purchase_order (pr_id, delivery_date,po_issue_date ) values ('"+o.getPrId()+"', '2018-03-30',GETDATE())";
		return template.update(sql);		
		}
	
	public int update(Po o) {
		String sql = "update tbl_purchase_order set pr_id='"+o.getPrId()+"' ,supplier_id='"+o.getSupplierId()+"', mop_id='"+o.getMopId()+"',place_of_delivery='"+o.getPlaceOfDelivery()+"',delivery_date='"+o.getDeliveryDate()+"',payment_term='"+o.getPaymentTerm()+"',item_qty='"+o.getItemQty()+"',uom_id='"+o.getUomId()+"', unit_cost='"+o.getUnitCost()+"' where po_id="+o.getPoId()+"";
		return template.update(sql);
	}
	
	public List<Po> getPodpo()
	{
		return template.query("select count(po_id) as pr from tbl_purchase_order	", new RowMapper<Po>() {
			public Po mapRow(ResultSet rs, int row) throws SQLException{
				Po o = new Po();

				o.setPoApprove(rs.getInt(1));
				return o;
				}
			});
		}


	}



