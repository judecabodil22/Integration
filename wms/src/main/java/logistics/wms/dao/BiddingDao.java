package logistics.wms.dao;

import java.sql.ResultSet;


import java.sql.SQLException;
import java.util.List;

import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.ResultSetExtractor;
import org.springframework.jdbc.core.RowMapper;

import logistics.wms.beans.Bidding;


public class BiddingDao<Bids> {
	
JdbcTemplate template;
	
	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	
	}

	public List<Bidding> getBidding()
	{
		return template.query("select * from tbl_bidding", new RowMapper<Bidding>() {
			public Bidding mapRow(ResultSet rs, int row) throws SQLException{
				Bidding b  = new Bidding();
				b.setBiddingId(rs.getInt(1));
				b.setPrId(rs.getInt(2));
				b.setStartDate(rs.getString(3));
			
				return b;
				}
			});
		}
	
	public int save(Bidding b) {
		String sql = "insert into tbl_bidding (pr_id, bidding_set_date) values ('"+b.getPrId()+"','"+b.getStartDate()+"')";
		return template.update(sql);
	}

	public List<Bidding> getBids()
	{
		return template.query("select c.bidding_id, supplier_name  From tbl_bids b inner join tbl_bidding c on b.bidding_id = c.bidding_id inner join tbl_supplier s on b.supplier_id = s.supplier_id", new RowMapper<Bidding>() {
			public Bidding mapRow(ResultSet rs, int row) throws SQLException{
				Bidding b  = new Bidding();
				b.setBiddingId(rs.getInt(1));
				//b.setBiddingDesc(rs.getString(2));
				b.setSupplierName(rs.getString(2));
				//b.setBidDate(rs.getString(3));
				return b;
				}
			});
		}
	
	
	public List<Bidding> getBidders(Bidding b)
	{
		return template.query("select c.bidding_id, supplier_name  From tbl_bids b inner join tbl_bidding c on b.bidding_id = c.bidding_id inner join tbl_supplier s on b.supplier_id = s.supplier_id where bidding_id='"+b.getBiddingId()+"' ", new RowMapper<Bidding>() {
			public Bidding mapRow(ResultSet rs, int row) throws SQLException{
				Bidding b  = new Bidding();
				b.setBiddingId(rs.getInt(1));
				//b.setBiddingDesc(rs.getString(2));
				b.setSupplierName(rs.getString(2));
				//b.setBidDate(rs.getString(3));
				b.setBidDetails(rs.getString(4));
				//b.setBiddingStatus(rs.getString(5));
				return b;
				}
			});
		}

	/*
	public Bidding get(int bidId)
	{
		String sql = "select c.bidding_id, c.bidding_desc, supplier_name, bid_date  From tbl_bids b inner join tbl_bidding c on b.bidding_id = c.bidding_id inner join tbl_supplier s on b.supplier_id = s.supplier_id where bidding_id=" +bidId;
		return template.query(sql, new ResultSetExtractor<Bidding>() {
			
			@Override
			public Bidding extractData(ResultSet rs) throws SQLException,
					DataAccessException{
				if(rs.next()) {
					Bidding b = new Bidding();
					b.setBiddingId(rs.getInt(1));
					b.setBiddingDesc(rs.getString(2));
					b.setStartDate(rs.getString(3));
					b.setEndDate(rs.getString(4));
					b.setBiddingDetails(rs.getString(5));
					b.setBiddingStatus(rs.getString(6));
					return b;
				
				}
				return null;
				}
				
			});
		}
		*/
		
	
	public List<Bidding> getBidder()
	{
		return template.query("	select c.bid_id, s.supplier_name, c.bid_details From tbl_bidding b inner join tbl_bids c on b.bidding_id = c.bidding_id Inner join tbl_supplier s on c.supplier_id = s.supplier_id ", new RowMapper<Bidding>() {
			public Bidding mapRow(ResultSet rs, int row) throws SQLException{
				Bidding b  = new Bidding();
				b.setBiddingId(rs.getInt(1));
				//b.setBiddingDesc(rs.getString(2));
				b.setSupplierName(rs.getString(2));
				//b.setBidDate(rs.getString(3));
				b.setBidDetails(rs.getString(3));
				//b.setBiddingStatus(rs.getString(4));
				return b;
				}
			});
		}
	
	public int delete(int id) {
		String sql = "delete from tbl_bidding where bidding_id = "+id+"";
		return template.update(sql);
}
	
	public int update(Bidding b) {
		String sql = "update tbl_bidding set  bidding_set_date='"+b.getStartDate()+"', bidding_end_date='"+b.getEndDate()+"', bidding_details='"+b.getBiddingDetails()+"' where bidding_id="+b.getBiddingId()+"";
		return template.update(sql);
	}

	public int saveBids(Bidding b) {
		String sql = "insert into tbl_bids( supplier_id, bid_details, bidding_id) values ('"+b.getSupplierId()+"','"+b.getBidDetails()+"','"+b.getBiddingId()+"')";
		return template.update(sql);
	}
	
}