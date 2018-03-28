package logistics.wms.dao;

import java.sql.ResultSet;

import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import logistics.wms.beans.Category;



public class CategoryDao {
	
	JdbcTemplate template;
	
	public void setTemplate(JdbcTemplate template) {
		this.template = template;

}
	
	public int save(Category c) {
		String sql = "IF NOT EXISTS(Select category_name from tbl_item_category where category_name='"+c.getCategoryName()+"') insert into tbl_item_category(category_name) values ('"+c.getCategoryName()+"')";
		return template.update(sql);
	}

	public List<Category> getCategory()
	{
		return template.query("select * from tbl_item_category", new RowMapper<Category>() {
			public Category mapRow(ResultSet rs, int row) throws SQLException{
				Category c = new Category();
				c.setCategoryId(rs.getInt(1));
				c.setCategoryName(rs.getString(2));
				return c;
				}
			});
		}
	
	public int update(Category c) {
		String sql = "update tbl_item_category set category_name='"+c.getCategoryName()+"' where category_id="+c.getCategoryId()+"";
		return template.update(sql);
	}

	
	public int delete(int id) {
		String sql = "delete from tbl_item_category where category_id = "+id+"";
		return template.update(sql);
}


}


















