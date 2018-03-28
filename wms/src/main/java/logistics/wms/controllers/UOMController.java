package logistics.wms.controllers;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;


import logistics.wms.beans.Uom;
import logistics.wms.dao.UomDao;

@Controller
public class UOMController {
	
	@Autowired
	UomDao uomDao;
	
	@RequestMapping(value = "unit-of-measurement/delete/{id}", method = RequestMethod.GET)
	public ModelAndView deleteUom(@PathVariable int id) {
		uomDao.delete(id);
		return new ModelAndView("redirect:/unit-of-measurement");
	}
	
	@RequestMapping(value="unit-of-measurement/save", method = RequestMethod.POST)
	public ModelAndView saveUom(@ModelAttribute("uom") Uom uom) {
		uomDao.save(uom);
		return new ModelAndView("redirect:/unit-of-measurement");	
	}
	
	@RequestMapping(value="unit-of-measurement/edit", method = RequestMethod.POST)
	public ModelAndView updateUom(@ModelAttribute("uom") Uom uom) {
		uomDao.update(uom);
		return new ModelAndView("redirect:/unit-of-measurement");	
	}

}
