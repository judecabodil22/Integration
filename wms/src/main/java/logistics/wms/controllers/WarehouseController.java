package logistics.wms.controllers;

import java.util.List;
import java.util.function.Supplier;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import logistics.wms.beans.AssetBean;
import logistics.wms.beans.Bidding;
import logistics.wms.beans.Category;
import logistics.wms.beans.CustodianBean;
import logistics.wms.beans.InspectItemBeans;
import logistics.wms.beans.InspectedBean;
import logistics.wms.beans.InspectionBean;
import logistics.wms.beans.Item;
import logistics.wms.beans.Mop;
import logistics.wms.beans.Noa;
import logistics.wms.beans.Po;
import logistics.wms.beans.Pr;
import logistics.wms.beans.ReceiveItemBeans;
import logistics.wms.beans.Rfq;
import logistics.wms.beans.SupplierBeans;
import logistics.wms.beans.Uom;
import logistics.wms.beans.WarehouseBeans;
import logistics.wms.beans.WarehouseItemBeans;
import logistics.wms.dao.BiddingDao;
import logistics.wms.dao.CategoryDao;
import logistics.wms.dao.CustodianDao;
import logistics.wms.dao.InspectItemDao;
import logistics.wms.dao.InspectedDao;
import logistics.wms.dao.InspectionDao;
import logistics.wms.dao.ItemDao;
import logistics.wms.dao.NoaDao;
import logistics.wms.dao.PoDao;
import logistics.wms.dao.PrDao;
import logistics.wms.dao.ReceiveItemDao;
import logistics.wms.dao.RfqDao;
import logistics.wms.dao.SetupDao;
import logistics.wms.dao.SupplierDao;
import logistics.wms.dao.UomDao;
import logistics.wms.dao.WarehouseDao;
import logistics.wms.dao.WarehouseItemDao;

@Controller
public class WarehouseController {

	@Autowired
	WarehouseDao warehouseDao;
	@Autowired
	ReceiveItemDao receiveItemDao;
	@Autowired
	InspectItemDao inspectItemDao;
	@Autowired
	WarehouseItemDao warehouseItemDao;
	
	@Autowired
	SetupDao setupDao;
	
	@Autowired
	CustodianDao custodianDao;
	
	@Autowired
	InspectionDao inspectionDao;
	
	@Autowired
	InspectedDao inspectedDao;
	
	@Autowired
	CategoryDao CategoryDao;
	
	@Autowired
	ItemDao ItemDao;
	
	@Autowired
	SupplierDao supplierDao;
	
	@Autowired
	PrDao PrDao;
	
	
	@Autowired
	UomDao UomDao;
	
	@Autowired
	PoDao PoDao;
	
	@Autowired
	BiddingDao BiddingDao;
	
	@Autowired
	RfqDao RfqDao;
	
	@Autowired
	NoaDao NoaDao;


	
	@RequestMapping(value= {"/","index"})
	public ModelAndView index()
	{
		ModelAndView mv = new ModelAndView("index");
		mv.addObject("index", new WarehouseBeans());
		return mv;
	}
	
	@RequestMapping(value= {"warehouse-setup"})
	public ModelAndView setupWarehouse()
	{
		List<WarehouseBeans> list = warehouseDao.getWarehouse();
		ModelAndView mv = new ModelAndView("setup_warehouse");
		mv.addObject("list", list);
		return mv;
	}
	

	@RequestMapping(value= {"warehouse-list"})
	public ModelAndView warehouseList()
	{
		List<WarehouseBeans> list = warehouseDao.getWarehouseList();
		ModelAndView mv = new ModelAndView("warehouse_items");
		mv.addObject("list", list);
		return mv;
	}
	
	@RequestMapping(value= {"receive-list"})
	public ModelAndView receiveList()
	{
		List<ReceiveItemBeans> receiveItemList = receiveItemDao.getReceive();
		ModelAndView mv = new ModelAndView("");
		mv.addObject("receiveItemList", receiveItemList);
		return mv;
	}
	
	
	@RequestMapping(value= {"inspect-list"})
	public ModelAndView inspectList()
	{
		List<InspectItemBeans> inspectItemList = inspectItemDao.getInspectList();
		ModelAndView mv = new ModelAndView("receive_item");
		mv.addObject("inspectItemList", inspectItemList);
		return mv;
	}
	
	@RequestMapping(value= {"warehouse-item-list"})
	public ModelAndView warehouseitemList()
	{
		List<WarehouseItemBeans> warehouseItemList= warehouseItemDao.getWarehouseItemList();
		ModelAndView mv = new ModelAndView("warehouse_items");
		mv.addObject("warehouseItemList", warehouseItemList);
		return mv;
	}
	
	
	
	
	
	
	@RequestMapping(value= {"transaction-delivery"})
	public ModelAndView delivery()
	{
		ModelAndView mv = new ModelAndView("delivery");
		return mv;
	}
	
	
	@RequestMapping(value= {"transaction-receive"})
	public ModelAndView transactionReceive()
	{
		ModelAndView mv = new ModelAndView("receive_item");
		return mv;
	}
	
	@RequestMapping(value= {"transaction-inspect"})
	public ModelAndView transactionInspect()
	{
		ModelAndView mv = new ModelAndView("inspect_item");
		return mv;
	}
	
	
	@RequestMapping(value= {"transaction-receive2"})
	public ModelAndView transactionReceive2()
	{
		ModelAndView mv = new ModelAndView("receive_item2");
		return mv;
	}
	
	@RequestMapping(value= {"transaction-inspect2"})
	public ModelAndView transactionInspect2()
	{
		ModelAndView mv = new ModelAndView("inspect_item2");
		return mv;
	}
	
	
	
	
	@RequestMapping(value="warehouse-save", method= RequestMethod.POST)
	public ModelAndView warehouseAdd(@ModelAttribute("warehouse")WarehouseBeans warehouse)
	{
		warehouseDao.save(warehouse);
		return new ModelAndView("redirect:/warehouse-setup");	
		
	}
	
	
	@RequestMapping(value="add-item-warehouse", method= RequestMethod.POST)
	public ModelAndView warehouseAddItem(@ModelAttribute("receiveItem")ReceiveItemBeans receiveItem)
	{
		warehouseItemDao.save(receiveItem);
		return new ModelAndView("redirect:/transaction-inspect");	
		
	}
	
	
	
	@RequestMapping(value="warehouse-update", method= RequestMethod.POST)
	public ModelAndView warehouseUpdate(@ModelAttribute("warehouse")WarehouseBeans warehouse) {
		
		warehouseDao.update(warehouse);
		return new ModelAndView("redirect:/warehouse-setup");
	}

	//Asset Management
	@RequestMapping(value= {"add-asset"})
	public ModelAndView addasset() {
		List<AssetBean> list = setupDao.getAsset();
		ModelAndView mv = new ModelAndView("addasset");
		mv.addObject("list",list);
		mv.addObject("asset",new AssetBean());
		return mv;
	}
	
	@RequestMapping(value= {"acquisition"})
	public ModelAndView acquisition() {
		ModelAndView mv = new ModelAndView("acquisition");
		return mv;
	}
	
	@RequestMapping(value= {"add-costgroup"})
	public ModelAndView addcostgroup() {
		ModelAndView mv = new ModelAndView("addcostgroup");
		return mv;
	}
	
	@RequestMapping(value= {"add-location"})
	public ModelAndView addlocation() {
		ModelAndView mv = new ModelAndView("addlocation");
		return mv;
	}
	
	@RequestMapping(value= {"add-custodian"})
	public ModelAndView addcustodian() {
		List<CustodianBean> list = custodianDao.getCustodian();
		ModelAndView mv = new ModelAndView("addcustodian");
		mv.addObject("list",list);
		mv.addObject("addcustodian",new CustodianBean());
		return mv;
	}
	
	@RequestMapping(value= {"disposal"})
	public ModelAndView disposal() {
		ModelAndView mv = new ModelAndView("disposal");
		return mv;
	}
	
	@RequestMapping(value= {"retirement"})
	public ModelAndView retirement() {
		ModelAndView mv = new ModelAndView("retirement");
		return mv;
	}
	
	@RequestMapping(value= {"transfer"})
	public ModelAndView transfer() {
		ModelAndView mv = new ModelAndView("transfer");
		return mv;
	}
	
	@RequestMapping(value= {"maintenance"})
	public ModelAndView maintenance() {
		ModelAndView mv = new ModelAndView("maintenance");
		return mv;
	}
	
	@RequestMapping(value = "add-asset/save", method = RequestMethod.POST)
	public ModelAndView asset(@ModelAttribute("asset")AssetBean assetBean) {
		setupDao.save(assetBean);
		return new ModelAndView("redirect:/add-asset");
	}
	
	@RequestMapping(value= {"assetinventory"})
	public ModelAndView assetinventory() {
		ModelAndView mv = new ModelAndView("assetinventory");
		return mv;
	}
	
	@RequestMapping(value= {"receive-asset"})
	public ModelAndView receiveasset() {
		ModelAndView mv = new ModelAndView("receive-asset");
		return mv;
	}
	
	@RequestMapping(value= {"assign-asset"})
	public ModelAndView assignasset() {
		ModelAndView mv = new ModelAndView("assign-asset");
		return mv;
	}
	
	@RequestMapping(value= {"transfer-asset"})
	public ModelAndView transferasset() {
		ModelAndView mv = new ModelAndView("transfer-asset");
		return mv;
	}
	
	@RequestMapping(value= {"repair-asset"})
	public ModelAndView repairasset() {
		ModelAndView mv = new ModelAndView("repair-asset");
		return mv;
	}

	@RequestMapping(value= {"borrowreturnasset"})
	public ModelAndView borrowreturnasset() {
		ModelAndView mv = new ModelAndView("borrowreturnasset");
		return mv;
	}
	
	@RequestMapping(value= {"pullout-asset"})
	public ModelAndView pulloutasset() {
		ModelAndView mv = new ModelAndView("pullout-asset");
		return mv;
	}
	
	@RequestMapping(value= {"adding-asset"})
	public ModelAndView addingsasset() {
		ModelAndView mv = new ModelAndView("adding-asset");
		return mv;
	}
	
	@RequestMapping(value= {"queryinventory"})
	public ModelAndView queryinventory() {
		ModelAndView mv = new ModelAndView("queryinventory");
		return mv;
	}
	
	@RequestMapping(value= {"for-inspections"})
	public ModelAndView forinspection() {
		ModelAndView mv = new ModelAndView("for-inspections");
		return mv;
	}
	
	@RequestMapping(value= "request-inspection-save", method = RequestMethod.POST)
	public ModelAndView requestinspectsave(@ModelAttribute("inspection")InspectionBean inspection ) {
		
		inspectionDao.save(inspection);
		return new ModelAndView("redirect:/receive-asset");
	}
	
	@RequestMapping(value= "inspected-save", method = RequestMethod.POST)
	public ModelAndView inspectedsave(@ModelAttribute("inspected")InspectedBean inspected ) {
		
		inspectedDao.save(inspected);
		return new ModelAndView("redirect:/for-inspections");
	}
	
	/*
	
	@RequestMapping(value= {"/","index"})
	public ModelAndView index() {
		//ModelAndView mv = new ModelAndView("index");
		
		List<Pr> list = PrDao.getPrdpr();
		List<Pr> list1 = PrDao.getPrdpr1();
		List<Pr> list2 = PrDao.getPrdpr2();
		List<Po> list3 = PoDao.getPodpo();
		ModelAndView mv = new ModelAndView("index");
		mv.addObject("list", list);
		mv.addObject("list1", list1);
		mv.addObject("list2", list2);
		mv.addObject("list3", list3);
			return mv;
	}*/
	
	//bidding
	@RequestMapping("bidding")
	public ModelAndView bidding() {
			
		List <Bidding> list = BiddingDao.getBidding();
		List<Pr> list2= PrDao.getPrb();
		ModelAndView mv = new ModelAndView("bidding");
		mv.addObject("list", list);
		mv.addObject("list2",list2);
		mv.addObject("bidding", new Bidding());
		
		return mv;
		}
		
	//item
	@RequestMapping("item")
	public ModelAndView item() {
		
		List<Item> list = ItemDao.getItem();
		List<Category> list1 = CategoryDao.getCategory();
		List<Uom> list2 = UomDao.getUom();
		List<Item> list3 = ItemDao.Item();
;		ModelAndView mv = new ModelAndView("item");
		mv.addObject("list", list);
		mv.addObject("list1", list1);
		mv.addObject("list2", list2);
		mv.addObject("list3", list3);
		mv.addObject("item", new Item());
		return mv;
		}	
		
	//item-category
	@RequestMapping("item-category")
	public ModelAndView itemcategory() {
		
		List<Category> list = CategoryDao.getCategory();		
		ModelAndView mv = new ModelAndView("item-category");
		mv.addObject("list", list);
		mv.addObject("itemCategory", new Category());
		return mv;
		}	
				
	//ListofBiddings
	@RequestMapping("ListofBiddings")
	public ModelAndView ListofBiddings() {

		List<Bidding> list = BiddingDao.getBidding();
		List<Pr> list2= PrDao.getPr();
		ModelAndView mv = new ModelAndView ("bidding");
		mv.addObject("list", list);
		mv.addObject("list2", list2);
		return mv;
		}			
	
	
		
	//purchase-request-form
	@RequestMapping("purchase-request")
	public ModelAndView purchaserequest() {
		//return new ModelAndView("purchase-request");
		
		List<Pr> list = PrDao.getPr();		
		List<Uom> list1 = UomDao.getUom();
		ModelAndView mv = new ModelAndView("purchase-request");
		mv.addObject("list", list);
		mv.addObject("list1", list1);
		mv.addObject("purchaseRequest", new Pr());
		return mv;
		}	
		
	//purchase-order
		@RequestMapping("purchase-order")
	public ModelAndView purchaseorder() {
			
		List<Po> list = PoDao.getPo();	
		List<SupplierBeans> list1 = supplierDao.getSupplier();
		List<Pr> list2= PrDao.getPr();
	
		ModelAndView mv = new ModelAndView("purchase-order");
		mv.addObject("list", list);
		mv.addObject("list1", list1);
		mv.addObject("list2", list2);
	
		mv.addObject("purchaseOrder", new Po());
		mv.addObject("potry", new Po());
		return mv;
		}
		
		//purchase-order
		@RequestMapping("potry")
	public ModelAndView potry() {
			
		List<Po> list = PoDao.getPo();	
		List<SupplierBeans> list1 = supplierDao.getSupplier();
		List<Pr> list2= PrDao.getPr();
	
		List<Uom> list4 = UomDao.getUom();
		ModelAndView mv = new ModelAndView("potry");
		mv.addObject("list", list);
		mv.addObject("list1", list1);
		mv.addObject("list2", list2);
	
		mv.addObject("list4", list4);
		mv.addObject("potry", new Po());
		return mv;
		}

		//supplier
		@RequestMapping("supplier")
		public ModelAndView supplier() {
			List<SupplierBeans> list = supplierDao.getSupplier();		
			ModelAndView mv = new ModelAndView("supplier");
			mv.addObject("list", list);
			mv.addObject("supplier",new SupplierBeans());
			return mv;	
		
		}
		
		//mode of procurement
		@RequestMapping("mode-of-procurement")
		public ModelAndView modeofprocurement() {
				
			ModelAndView mv = new ModelAndView("mode-of-procurement");
		
			mv.addObject("mop", new Mop());
			return mv;	
					}
		
		//unit of measurement
				@RequestMapping("unit-of-measurement")
				public ModelAndView unitofmeasurement() {
					List<Uom> list = UomDao.getUom();		
					ModelAndView mv = new ModelAndView("unit-of-measurement");
					mv.addObject("list", list);
					mv.addObject("uom", new Uom());
					return mv;	
					}
	
				//List of supplier
				@RequestMapping("List-of-Supplier")
				public ModelAndView ListofSupplier() {
					List<SupplierBeans> list = supplierDao.getSupplier();		
					ModelAndView mv = new ModelAndView("List-of-Supplier");
					mv.addObject("list", list);
					//mv.addObject("supplier",new Supplier());
					return mv;	
				
				}
			
				//purchase-request-approve
				@RequestMapping("P-R-Approve")
				public ModelAndView prapprove() {
					//return new ModelAndView("purchase-request");
					
					List<Pr> list = PrDao.getPrp();	
					List<Pr> list1 = PrDao.getPra();
					List<Pr> list2 = PrDao.getPrd();
					ModelAndView mv = new ModelAndView("P-R-Approve");
					mv.addObject("list", list);
					mv.addObject("list1", list1);
					mv.addObject("list2", list2);
					mv.addObject("prApprove", new Pr());
					return mv;
					}	
				
				//rfq
				@RequestMapping("rfq")
				public ModelAndView rfq() {
					
					List<Rfq> list = RfqDao.getRfq();
					List<SupplierBeans> list1 = supplierDao.getSupplier();
					List<Pr> list2 = PrDao.getPr();
					ModelAndView mv = new ModelAndView ("rfq");
					mv.addObject("list", list);
					mv.addObject("list1", list1);
					mv.addObject("list2", list2);
					mv.addObject("rfq", new Rfq());
					return mv;
					}
				
				//bids
				@RequestMapping("bids")
				public ModelAndView bids() {
					List <Bidding> list = BiddingDao.getBids();
					List<Bidding> list1 = BiddingDao.getBidder();
					List<Bidding> list2 = BiddingDao.getBidding();
					List<SupplierBeans> list3 = supplierDao.getSupplier();
					ModelAndView mv = new ModelAndView ("bids");
					mv.addObject("list", list);
					mv.addObject("list1", list1);
					mv.addObject("list2", list2);
					mv.addObject("list3", list3);
					mv.addObject("bids", new Bidding());
					return mv;
					}
				
				//notice of award
				@RequestMapping("notice-of-award")
				public ModelAndView noticeofaward() {

					List<Noa> list = NoaDao.getNoa();
					ModelAndView mv = new ModelAndView("notice-of-award");
					mv.addObject("list", list);
					return mv;
					}
				
				
				//notice of award
				@RequestMapping("report")
				public ModelAndView report() {

					List<Po> list = PoDao.getPo();	
					List<SupplierBeans> list1 = supplierDao.getSupplier();
					List<Pr> list2= PrDao.getPr();
					
					List<Uom> list4 = UomDao.getUom();
					ModelAndView mv = new ModelAndView("report");
					mv.addObject("list", list);
					mv.addObject("list1", list1);
					mv.addObject("list2", list2);
					
					mv.addObject("list4", list4);
					mv.addObject("report", new Po());
					return mv;
					}
				
				@RequestMapping("report1")
				public ModelAndView report1() {

					List<Po> list = PoDao.getPo();	
					List<SupplierBeans> list1 = supplierDao.getSupplier();
					List<Pr> list2= PrDao.getPr();
					
					List<Uom> list4 = UomDao.getUom();
					ModelAndView mv = new ModelAndView("report1");
					mv.addObject("list", list);
					mv.addObject("list1", list1);
					mv.addObject("list2", list2);
				
					mv.addObject("list4", list4);
					mv.addObject("report1", new Po());
					return mv;
					}
					
				
				@RequestMapping("prtry")
				public ModelAndView prtry() {
					
					List<Pr> list = PrDao.getPr();		
					List<Uom> list1 = UomDao.getUom();
					List<Item> list2 = ItemDao.Item();
					//ModelAndView mv = new ModelAndView("purchase-request");
					ModelAndView mv = new ModelAndView("prtry");
					mv.addObject("list", list);
					mv.addObject("list1", list1);
					mv.addObject("list2", list2);
					mv.addObject("purchaseRequest", new Pr());
					return mv;
				}
				
				@RequestMapping("pr-report")
				public ModelAndView prreport() {
					List<Pr> list = PrDao.getPr();		
					List<Uom> list1 = UomDao.getUom();
					ModelAndView mv = new ModelAndView("pr-report");
					mv.addObject("list", list);
					mv.addObject("list1", list1);
					mv.addObject("purchaseRequest", new Pr());
					return mv;
				}
				
				@RequestMapping("pr-report1")
				public ModelAndView prreport1() {
					List<Pr> list = PrDao.getPr();		
					List<Uom> list1 = UomDao.getUom();
					ModelAndView mv = new ModelAndView("pr-report1");
					mv.addObject("list", list);
					mv.addObject("list1", list1);
					mv.addObject("purchaseRequest", new Pr());
					return mv;
				}
				
				@RequestMapping("list-of-purchase-request")
				public ModelAndView listofpurchaserequest() {
					//return new ModelAndView("purchase-request");
					
					List<Pr> list = PrDao.getPr();		
					List<Uom> list1 = UomDao.getUom();
					ModelAndView mv = new ModelAndView("list-of-purchase-request");
					mv.addObject("list", list);
					mv.addObject("list1", list1);
					mv.addObject("purchaseRequest", new Pr());
					return mv;
					}	
		
				@RequestMapping("List-of-Biddings")
				public ModelAndView listofbiddings() {
						
					List<Bidding> list = BiddingDao.getBidding();
					ModelAndView mv = new ModelAndView("List-of-Biddings");
					mv.addObject("list", list);
					mv.addObject("bidding", new Bidding());
					return mv;
					}
		
	
				@RequestMapping("list-of-purchase-order")
				public ModelAndView listofpurchaseorder() {
						
					List<Po> list = PoDao.getPo();	
					List<SupplierBeans> list1 = supplierDao.getSupplier();
					List<Pr> list2= PrDao.getPr();
				
					List<Uom> list4 = UomDao.getUom();
					ModelAndView mv = new ModelAndView("list-of-purchase-order");
					mv.addObject("list", list);
					mv.addObject("list1", list1);
					mv.addObject("list2", list2);
				
					mv.addObject("list4", list4);
					mv.addObject("purchaseOrder", new Po());
					return mv;
					}
}


