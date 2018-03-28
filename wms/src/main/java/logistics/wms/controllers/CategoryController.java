package logistics.wms.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import logistics.wms.beans.Category;
import logistics.wms.dao.CategoryDao;


@Controller
public class CategoryController {
	
	@Autowired
	CategoryDao categoryDao;
	
	@RequestMapping(value="item-category/save", method = RequestMethod.POST)
	public ModelAndView saveCategory(@ModelAttribute("category") Category category) {
		categoryDao.save(category);
		return new ModelAndView("redirect:/item-category");	
	}
	
	
	@RequestMapping(value = "item-category/delete/{id}", method = RequestMethod.GET)
	public ModelAndView deleteCategory(@PathVariable int id) {
		categoryDao.delete(id);
		return new ModelAndView("redirect:/item-category");
	}

	@RequestMapping(value = "item-category/edit",method=RequestMethod.POST)
	public ModelAndView editCategory(@ModelAttribute("category") Category category) {
		categoryDao.update(category);
		return new ModelAndView("redirect:/item-category");
		
	}

}
