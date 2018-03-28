package logistics.wms.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import logistics.wms.beans.Pr;

public class PrDao {

	JdbcTemplate template;
	
	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}
	
	public List<Pr> getPr()
	{
		//return template.query(" select p.pr_id ,p.pr_code,p.item_id ,p.item_name ,item_qty ,u.uom_name,CONCAT(p.item_qty, ' ' ,u.uom_name) AS 'item qty' ,p.unit_cost ,p.total_cost ,p.requested_by ,p.request_date,purpose ,p.pr_status From tbl_purchase_request as p inner join tbl_uom as u on p.uom_id = u.uom_id", new RowMapper<Pr>() {
		return template.query("Select pr.pr_id,pl.item_name,pl.item_desc,pl.item_Qty,pl.unit_price,pr.request_date,pr.requested_by,pr.purpose from tbl_purchase_request pr inner join tbl_pr_itemlist pl on pr.pr_id = pl.pr_id", new RowMapper<Pr>() {
			public Pr mapRow(ResultSet rs, int row) throws SQLException{
				Pr r = new Pr();
				r.setPrId(rs.getInt(1));
				//r.setPrCode(rs.getString(2));
				//r.setItemId(rs.getInt(3));
				r.setItemName(rs.getString(2));
				r.setItemDesc(rs.getString(3));
				r.setItemQty(rs.getInt(4));
				
				r.setUnitCost(rs.getInt(5));
				//r.setTotalCost(rs.getInt(9));
				r.setRequestDate(rs.getString(6));
				r.setRequestedBy(rs.getString(7));
				
				r.setPurpose(rs.getString(8));
				//r.setPrStatus(rs.getString(13));
				return r;
				}
			});
		}
	
	public int save(Pr r) {
		String sql = "insert into tbl_purchase_request( requested_by,request_date, purpose, pr_status) values ('"+r.getRequestedBy()+"',GETDATE(),'"+r.getPurpose()+"','Pending')" ; 
		return template.update(sql);
	}

	public int save1(Pr r) {
		String sql = "insert into tbl_pr_itemlist(pr_id, item_name,item_desc,item_Qty,unit_price) values (11 ,'"+r.getItemName()+"','"+r.getItemDesc()+"','"+r.getItemQty()+"','"+r.getUnitCost()+"')";
		return template.update(sql);
	}
	
	public int delete(int id) {
		String sql = "delete from tbl_purchase_request where pr_id = "+id+"";
		return template.update(sql);
}
	
	public int update(Pr r) {
		String sql = "update tbl_purchase_request set item_name='"+r.getItemName()+"', item_qty='"+r.getItemQty()+"',uom_id='"+r.getUomId()+"',item_id='"+r.getItemId()+"',unit_cost='"+r.getUnitCost()+"',requested_by='"+r.getRequestedBy()+"',purpose='"+r.getPurpose()+"' where pr_id="+r.getPrId()+"";
		return template.update(sql);
	}
	
	public int approve(Pr pr) {
		
		String sql = "update tbl_purchase_request set pr_status='"+pr.getPrStatus()+"' where pr_id="+pr.getPrId()+"";
		return template.update(sql);
	}
	
	public List<Pr> getPrp()
	{
		return template.query("Select pr.pr_id,pl.item_name,pl.item_desc,pl.item_Qty,pl.unit_price,pr.request_date,pr.requested_by,pr.purpose,pr.pr_status from tbl_purchase_request pr inner join tbl_pr_itemlist pl on pr.pr_id = pl.pr_id where pr.pr_status = 'Pending'", new RowMapper<Pr>() {
			public Pr mapRow(ResultSet rs, int row) throws SQLException{
				Pr r = new Pr();
				r.setPrId(rs.getInt(1));
				//r.setPrCode(rs.getString(2));
				//r.setItemId(rs.getInt(3));
				r.setItemName(rs.getString(2));
				//r.setItemDesc(rs.getString(5));
			
				r.setItemDesc(rs.getString(3));
				r.setItemQty(rs.getInt(4));
				//r.setUomName(rs.getString(6));
				//r.setUomQty(rs.getString(7));
				r.setUnitCost(rs.getInt(5));
				//r.setTotalCost(rs.getInt(9));
				r.setRequestDate(rs.getString(6));
				r.setRequestedBy(rs.getString(7));
				
				r.setPurpose(rs.getString(8));
				r.setPrStatus(rs.getString(9));
				return r;
				}
			});
		}
	
	public List<Pr> getPra()
	{
		return template.query("Select pr.pr_id,pl.item_name,pl.item_desc,pl.item_Qty,pl.unit_price,pr.request_date,pr.requested_by,pr.purpose,pr.pr_status from tbl_purchase_request pr inner join tbl_pr_itemlist pl on pr.pr_id = pl.pr_id where pr.pr_status = 'Approve'", new RowMapper<Pr>() {
			public Pr mapRow(ResultSet rs, int row) throws SQLException{
				Pr r = new Pr();
				r.setPrId(rs.getInt(1));
				//r.setPrCode(rs.getString(2));
				//r.setItemId(rs.getInt(3));
				r.setItemName(rs.getString(2));
				//r.setItemDesc(rs.getString(5));
			
				r.setItemDesc(rs.getString(3));
				r.setItemQty(rs.getInt(4));
				//r.setUomName(rs.getString(6));
				//r.setUomQty(rs.getString(7));
				r.setUnitCost(rs.getInt(5));
				//r.setTotalCost(rs.getInt(9));
				r.setRequestDate(rs.getString(6));
				r.setRequestedBy(rs.getString(7));
				
				r.setPurpose(rs.getString(8));
				r.setPrStatus(rs.getString(9));
				return r;
				}
			});
		}
	

	public List<Pr> getPrd()
	{
		return template.query("Select pr.pr_id,pl.item_name,pl.item_desc,pl.item_Qty,pl.unit_price,pr.request_date,pr.requested_by,pr.purpose,pr.pr_status from tbl_purchase_request pr inner join tbl_pr_itemlist pl on pr.pr_id = pl.pr_id where pr.pr_status = 'Reject'", new RowMapper<Pr>() {
			public Pr mapRow(ResultSet rs, int row) throws SQLException{
				Pr r = new Pr();
				r.setPrId(rs.getInt(1));
				//r.setPrCode(rs.getString(2));
				//r.setItemId(rs.getInt(3));
				r.setItemName(rs.getString(2));
				//r.setItemDesc(rs.getString(5));
			
				r.setItemDesc(rs.getString(3));
				r.setItemQty(rs.getInt(4));
				//r.setUomName(rs.getString(6));
				//r.setUomQty(rs.getString(7));
				r.setUnitCost(rs.getInt(5));
				//r.setTotalCost(rs.getInt(9));
				r.setRequestDate(rs.getString(6));
				r.setRequestedBy(rs.getString(7));
				
				r.setPurpose(rs.getString(8));
				r.setPrStatus(rs.getString(9));
				return r;
				}
			});
		}
	
	public List<Pr> getPrdpr()
	{
		return template.query("select count(pr_status) as pr from tbl_purchase_request	", new RowMapper<Pr>() {
			public Pr mapRow(ResultSet rs, int row) throws SQLException{
				Pr r = new Pr();

				r.setPrApprove(rs.getInt(1));
				return r;
				}
			});
		}
	
	public List<Pr> getPrdpr1()
	{
		return template.query("Select Count( pr_status) as Pr from tbl_purchase_request WHERE DATEDIFF( d, request_date, GETDATE() ) < 7	", new RowMapper<Pr>() {
			public Pr mapRow(ResultSet rs, int row) throws SQLException{
				Pr r = new Pr();

				r.setPrApproveLw(rs.getInt(1));
				return r;
				}
			});
		}
	
	public List<Pr> getPrdpr2()
	{
		return template.query("Select Count( Pr_status) as Pr from tbl_purchase_request where request_date <= GetDate() AND  request_date >= DATEADD(dd, - (DAY(DATEADD(mm, 1, GetDate())) - 1), DATEADD(mm, - 1, GetDate()))		", new RowMapper<Pr>() {
			public Pr mapRow(ResultSet rs, int row) throws SQLException{
				Pr r = new Pr();

				r.setPrApproveLm(rs.getInt(1));
				return r;
				}
			});
		}
	
	public List<Pr> getPrReport(Pr p)
	{
		return template.query("select p.pr_id ,p.pr_code,p.item_id ,p.item_name ,item_qty ,u.uom_name,CONCAT(p.item_qty, ' ' ,u.uom_name) AS 'item qty' ,p.unit_cost ,p.total_cost ,p.requested_by ,p.request_date,purpose ,p.pr_status From tbl_purchase_request as p inner join tbl_uom as u on p.uom_id = u.uom_id where pr_status = 'Approve' and request_date BETWEEN '"+p.getDateFrom()+"' AND '"+p.getDateTo()+"'", new RowMapper<Pr>() {
			public Pr mapRow(ResultSet rs, int row) throws SQLException{
				Pr r = new Pr();
				r.setPrId(rs.getInt(1));
				r.setPrCode(rs.getString(2));
				r.setItemId(rs.getInt(3));
				r.setItemName(rs.getString(4));
				//r.setItemDesc(rs.getString(5));
				r.setItemQty(rs.getInt(5));
				r.setUomName(rs.getString(6));
				r.setUomQty(rs.getString(7));
				r.setUnitCost(rs.getInt(8));
				r.setTotalCost(rs.getInt(9));
				r.setRequestedBy(rs.getString(10));
				r.setRequestDate(rs.getString(11));
				r.setPurpose(rs.getString(12));
				r.setPrStatus(rs.getString(13));
				return r;
				}
			});
		}
	
	public List<Pr> getPrb()
	{
		return template.query("Select DISTINCT pr_id From tbl_purchase_request where pr_status = 'Approve'", new RowMapper<Pr>() {
			public Pr mapRow(ResultSet rs, int row) throws SQLException{
				Pr r = new Pr();
				r.setPrId(rs.getInt(1));
			
				return r;
				}
			});
		}
	
	
	
}
