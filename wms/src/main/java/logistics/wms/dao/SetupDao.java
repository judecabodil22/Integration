package logistics.wms.dao;


import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import logistics.wms.beans.AssetBean;

public class SetupDao {

	JdbcTemplate template;
	
	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}
	
	
	public List<AssetBean> getAsset(){
		return template.query("select asset_name, asset_code, department_name, asset_price, legend_code, percentage as dep_app_percent, history_date as deployment_date, retirement_date from tbl_asset as ast inner join tbl_dep_app as [dp]\r\n" + 
				"	on ast.asset_id = dp.asset_id inner join tbl_department as dep\r\n" + 
				"	on ast.department_id = dep.dept_id inner join tbl_asset_history as ah\r\n" + 
				"	on ast.asset_id = ah.asset_id", new RowMapper<AssetBean>(){

			public AssetBean mapRow(ResultSet rs, int rowNum) throws SQLException {
				AssetBean d = new AssetBean();
				d.setNameAsset(rs.getString(1));
				d.setCodeAsset(rs.getString(2));
				d.setNameDep(rs.getString(3));
				d.setPriceAsset(rs.getInt(4));
				d.setCodeLegend(rs.getInt(5));
				d.setPercentDA(rs.getInt(6));
				d.setDateDeployment(rs.getString(7));
				d.setDateRetire(rs.getString(8));
				return d;			}
				
		});
				
	}
	
	public int save(AssetBean j) {
		String sql = "insert into tbl_asset (asset_name, asset_price, department_id) values ('"+j.getNameAsset()+"','"+j.getPriceAsset()+"','"+j.getDeptId()+"')";
		return template.update(sql);
	
	}
	
}
