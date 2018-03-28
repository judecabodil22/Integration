package logistics.wms.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;


import logistics.wms.beans.Rfq;
import logistics.wms.dao.RfqDao;

@Controller
public class RfqController {
	
	@Autowired
	RfqDao rfqDao;
	
	@RequestMapping(value="rfq/save", method = RequestMethod.POST)
	public ModelAndView saveMop(@ModelAttribute("rfq") Rfq rfq) {
		rfqDao.save(rfq);
		return new ModelAndView("redirect:/rfq");	
	}

}
