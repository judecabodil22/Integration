package logistics.wms.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import logistics.wms.beans.Uom;

public class UomDao {
JdbcTemplate template;
	
	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}
	
	public List<Uom> getUom()
	{
		return template.query("select * from tbl_uom", new RowMapper<Uom>() {
			public Uom mapRow(ResultSet rs, int row) throws SQLException{
				Uom u = new Uom();
				u.setUomId(rs.getInt(1));
				u.setUomName(rs.getString(2));
			
				return u;
				}
			});
		}
	
	public int delete(int id) {
		String sql = "delete from tbl_uom where uom_id = "+id+"";
		return template.update(sql);
}
	
	public int save(Uom u) {
		String sql = "IF NOT EXISTS (Select uom_name from tbl_uom where uom_name ='"+u.getUomName()+"')insert into tbl_uom values ('"+u.getUomName()+"')";
		return template.update(sql);
	}

	public int update(Uom u) {
		String sql = "update tbl_uom set uom_name='"+u.getUomName()+"' where uom_id="+u.getUomId()+"";
		return template.update(sql);
	}
}
