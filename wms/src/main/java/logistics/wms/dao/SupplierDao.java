package logistics.wms.dao;


import java.sql.ResultSet;


import java.sql.SQLException;
import java.util.List;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;


import logistics.wms.beans.SupplierBeans;



public class SupplierDao {
	
	JdbcTemplate template;
	
	
	public void setTemplate(JdbcTemplate template) {
		this.template = template;

}

	public List<SupplierBeans> getSupplier()
	{
		return template.query("select * from tbl_supplier", new RowMapper<SupplierBeans>() {
			public SupplierBeans mapRow(ResultSet rs, int row) throws SQLException{
				SupplierBeans s = new SupplierBeans();
				s.setSupplierId(rs.getInt(1));
				s.setSupplierName(rs.getString(2));
				s.setSupplierTin(rs.getString(3));
				s.setSupplierContactName(rs.getString(4));
				s.setContactPosition(rs.getString(5));
				s.setSupplierAddress(rs.getString(6));
				s.setSupplierEmail(rs.getString(7));
				s.setSupplierNumber(rs.getString(8));
				s.setLineOfBusiness(rs.getString(9));
				return s;
				}
			});
		}
	
	public int delete(int id) {
	String sql = "delete from tbl_supplier where supplier_id = "+id+"";
	return template.update(sql);
}
	
	public int save(SupplierBeans s) {
		String sql = "insert into tbl_supplier values ('"+s.getSupplierName()+"','"+s.getSupplierTin()+"','"+s.getSupplierContactName()+"','"+s.getContactPosition()+"','"+s.getSupplierAddress()+"','"+s.getSupplierEmail()+"','"+s.getSupplierNumber()+"','"+s.getLineOfBusiness()+"')";
		return template.update(sql);
	}
	
	public int update(SupplierBeans s) {
		String sql = "update tbl_supplier set supplier_name='"+s.getSupplierName()+"',supplier_tin='"+s.getSupplierTin()+"',supplier_contact_name='"+s.getSupplierContactName()+"',contact_position='"+s.getContactPosition()+"',supplier_address='"+s.getSupplierAddress()+"',supplier_email='"+s.getSupplierEmail()+"',supplier_number='"+s.getSupplierNumber()+"',line_of_business='"+s.getLineOfBusiness()+"' where supplier_id="+s.getSupplierId()+"";
		return template.update(sql);
	}



}
