package logistics.wms.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import logistics.wms.beans.Noa;

public class NoaDao {
	
	JdbcTemplate template;
	
	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}
	
	public List<Noa> getNoa()
	{
		return template.query("Select s.supplier_name, a.award_notice_date,c.bid_details, a.status From tbl_award_notice a inner join tbl_bidding b on b.bidding_id = a.bidding_id inner join tbl_bids c on b.bidding_id = c.bidding_id inner join tbl_supplier s on s.supplier_id = c.supplier_id", new RowMapper<Noa>() {
			public Noa mapRow(ResultSet rs, int row) throws SQLException{
				Noa n = new Noa();
				//n.setBiddingDesc(rs.getString(1));
				n.setSupplierName(rs.getString(1));
				n.setAwardNoticeDate(rs.getString(2));
				n.setBidDetails(rs.getString(3));
				n.setStatus(rs.getString(4));
				return n;
				}
			});
		}

}
