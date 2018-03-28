package logistics.wms.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import logistics.wms.beans.Po;
import logistics.wms.dao.PoDao;

@Controller

public class PoController {
	
	@Autowired
	PoDao poDao;

	
	@RequestMapping(value="purchase-order/save", method = RequestMethod.POST)
	public ModelAndView savePo(@ModelAttribute("purchaseOrder") Po po) {
		poDao.save(po);
		return new ModelAndView("redirect:/purchase-order");	
	}
	
	@RequestMapping(value = "purchase-order/delete/{id}", method = RequestMethod.GET)
	public ModelAndView deletepo(@PathVariable int id) {
		poDao.delete(id);
		return new ModelAndView("redirect:/purchase-order");
	}

	@RequestMapping(value = "purchase-order/edit",method=RequestMethod.POST)
	public ModelAndView editPo(@ModelAttribute("purchaseOrder") Po po) {
		poDao.update(po);
		return new ModelAndView("redirect:/purchase-order");
		
	}
	
	@RequestMapping(value="potry/save", method = RequestMethod.POST)
	public ModelAndView savepo(@ModelAttribute("potry") Po po) {
		poDao.save(po);
		return new ModelAndView("redirect:/prtry");	
	}
}
