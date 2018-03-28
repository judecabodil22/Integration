package logistics.wms.controllers;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import logistics.wms.beans.SupplierBeans;
import logistics.wms.dao.SupplierDao;

@Controller
public class SupplierController {
	
	@Autowired
	SupplierDao supplierDao;
	
	@RequestMapping(value = "supplier/delete/{id}", method = RequestMethod.GET)
	public ModelAndView deleteSupplier(@PathVariable int id) {
		supplierDao.delete(id);
		return new ModelAndView("redirect:/supplier");
	}

	@RequestMapping(value="supplier/save", method = RequestMethod.POST)
	public ModelAndView saveSupplier(@ModelAttribute("supplier") SupplierBeans supplier) {
		supplierDao.save(supplier);
		return new ModelAndView("redirect:/supplier");	
	}
	
	@RequestMapping(value="supplier/edit", method = RequestMethod.POST)
	public ModelAndView editSupplier(@ModelAttribute("supplier") SupplierBeans supplier) {
		supplierDao.update(supplier);
		return new ModelAndView("redirect:/supplier");	
	}
}
