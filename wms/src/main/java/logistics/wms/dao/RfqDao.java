package logistics.wms.dao;

import java.sql.ResultSet;

import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import logistics.wms.beans.Rfq;

public class RfqDao {
	
	JdbcTemplate template;
	
	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}
	
	public List<Rfq> getRfq()
	{
		return template.query("Select r.rfq_id, s.supplier_name, rfq_date, p.pr_code, r.item_qty, r.unit_cost, r.total_cost From tbl_rfq r Inner Join tbl_supplier s on r.supplier_id = s.supplier_id inner join tbl_purchase_request p on r.pr_id = p.pr_id ", new RowMapper<Rfq>() {
			public Rfq mapRow(ResultSet rs, int row) throws SQLException{
				Rfq r = new Rfq();
				r.setRfqId(rs.getInt(1));
				r.setSupplierName(rs.getString(2));
				r.setRfqDate(rs.getString(3));
				r.setPrCode(rs.getString(4));
				r.setItemQty(rs.getInt(5));
				r.setUnitCost(rs.getInt(6));
				r.setTotalCost(rs.getInt(7));
				return r;
				}
			});
		}
	
	public int save(Rfq r) {
		String sql = "insert into tbl_rfq (supplier_id, rfq_date, pr_id, item_qty, unit_cost)  values ('"+r.getSupplierId()+"','"+r.getRfqDate()+"','"+r.getPrId()+"','"+r.getItemQty()+"','"+r.getUnitCost()+"')";
		return template.update(sql);
	}
	
	
	
}