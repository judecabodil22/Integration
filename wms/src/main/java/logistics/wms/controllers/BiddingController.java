package logistics.wms.controllers;

import java.util.List;

import javax.servlet.http.HttpServletRequest;


import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import logistics.wms.beans.Bidding;
import logistics.wms.dao.BiddingDao;

@Controller
public class BiddingController {
	
	@Autowired
	BiddingDao biddingDao;
	
	@RequestMapping(value="bidding/save", method = RequestMethod.POST)
	public ModelAndView saveBidding(@ModelAttribute("bidding") Bidding bidding) {
		biddingDao.save(bidding);
		return new ModelAndView("redirect:/bidding");	
	}
	
	@RequestMapping(value = "bidding/delete/{id}", method = RequestMethod.GET)
	public ModelAndView deleteBidding(@PathVariable int id) {
		biddingDao.delete(id);
		return new ModelAndView("redirect:/bidding");
	}
	
	@RequestMapping(value = "bidding/edit",method=RequestMethod.POST)
	public ModelAndView editBidding(@ModelAttribute("bidding") Bidding bidding) {
		biddingDao.update(bidding);
		return new ModelAndView("redirect:/bidding");
		
	}
	
	@RequestMapping(value="bids/save", method = RequestMethod.POST)
	public ModelAndView saveBids(@ModelAttribute("bids") Bidding bidding) {
		biddingDao.saveBids(bidding);
		return new ModelAndView("redirect:/bids");	
	}
	
	@RequestMapping(value= "bids/bidders",method=RequestMethod.POST)
	public ModelAndView bidders(@ModelAttribute("bids") Bidding bidding) {
		List<Bidding> getbidders = biddingDao.getBidders(bidding);
		ModelAndView mv = new ModelAndView("redirect:/bids");
		mv.addObject("getbidders", getbidders);
		mv.addObject("bids", new Bidding());
		return mv;
	}


}
