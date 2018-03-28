package logistics.wms.controllers;

import org.springframework.beans.factory.annotation.Autowired;




import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import logistics.wms.beans.Item;
import logistics.wms.dao.ItemDao;

@Controller
public class ItemController {
	
	
	@Autowired
	ItemDao ItemDao;
	
	@RequestMapping(value="item/save", method = RequestMethod.POST)
	public ModelAndView saveItem(@ModelAttribute("item") Item item) {
		ItemDao.save(item);
		return new ModelAndView("redirect:/item");	
	}
	
	
	@RequestMapping(value = "item/delete/{id}", method = RequestMethod.GET)
	public ModelAndView deleteItem(@PathVariable int id) {
		ItemDao.delete(id);
		return new ModelAndView("redirect:/item");
	}
	
	@RequestMapping(value = "item/edit",method=RequestMethod.POST)
	public ModelAndView editItem(@ModelAttribute("item") Item item) {
		ItemDao.update(item);
		return new ModelAndView("redirect:/item");
		
	}

}
