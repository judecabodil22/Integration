package logistics.wms.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import logistics.wms.beans.Po;
import logistics.wms.beans.Pr;
import logistics.wms.dao.PoDao;
import logistics.wms.dao.PrDao;


@Controller
public class PrController {
	
	@Autowired
	PrDao prDao;
	
	@Autowired
	PoDao poDao;
	
	@RequestMapping(value="purchase-request/save", method = RequestMethod.POST)
	public ModelAndView saveMop(@ModelAttribute("purchaseRequest") Pr pr) {
		prDao.save(pr);
		prDao.save1(pr);
		return new ModelAndView("redirect:/prtry");	
	}
	
	@RequestMapping(value = "purchase-request/delete/{id}", method = RequestMethod.GET)
	public ModelAndView deleteItem(@PathVariable int id) {
		prDao.delete(id);
		return new ModelAndView("redirect:/purchase-request");
	}
	
	@RequestMapping(value = "purchase-request/edit",method=RequestMethod.POST)
	public ModelAndView editpr(@ModelAttribute("purchaseRequest") Pr pr) {
		prDao.update(pr);
		return new ModelAndView("redirect:/purchase-request");
		
	}
	@RequestMapping(value = "P-R-Approve/approve",method=RequestMethod.POST)
	public ModelAndView editpra(@ModelAttribute("prApprove") Pr pr, Po po) {
		prDao.approve(pr);
		poDao.save(po);
		return new ModelAndView("redirect:/P-R-Approve");
		
	}

	

}
