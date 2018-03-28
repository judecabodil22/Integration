package logistics.wms.beans;

public class Po {
	
private int poId;
private String poCode;
private int prId;
private String prCode;
private int supplierId;
private String supplierName;
private int mopId;
private String mopType;
private String placeOfDelivery;
private String deliveryDate;
private String paymentTerm;
private String itemName;
private int itemQty;
private int uomId;
private String uomName;
private String uomQty;
private int unitCost;
private int totalCost;
private String poDate;
private int poApprove;
private String itemDesc;

	public String getItemDesc() {
	return itemDesc;
}

public void setItemDesc(String itemDesc) {
	this.itemDesc = itemDesc;
}

	public int getPoId() {
		return poId;
	}

	public void setPoId(int poId) {
		this.poId = poId;	
	}

	public String getPoCode() {
		return poCode;
	}

	public void setPoCode(String poCode) {
		this.poCode = poCode;	
	}
	
	public int getPrId() {
		return prId;
	}

	public void setPrId(int prId) {
		this.prId = prId;	
	}

	public String getPrCode() {
		return prCode;
	}

	public void setPrCode(String prCode) {
		this.prCode = prCode;	
	}
	
	
	public int getSupplierId() {
		return supplierId;
	}

	public void setSupplierId(int supplierId) {
		this.supplierId = supplierId;	
	}
	
	public String getSupplierName() {
		return supplierName;
	}

	public void setSupplierName(String supplierName) {
		this.supplierName = supplierName;	
	}
	

	public int getMopId() {
		return mopId;
	}

	public void setMopId(int mopId) {
		this.mopId = mopId;	
	}
	
	public String getMopType() {
		return mopType;
	}

	public void setMopType(String mopType) {
		this.mopType = mopType;	
	}
	
	
	public String getPlaceOfDelivery() {
		return placeOfDelivery;
	}

	public void setPlaceOfDelivery(String placeOfDelivery) {
		this.placeOfDelivery = placeOfDelivery;	
	}
	
	public String getDeliveryDate() {
		return deliveryDate;
	}

	public void setDeliveryDate(String deliveryDate) {
		this.deliveryDate = deliveryDate;	
	}
	
	public String getPaymentTerm() {
		return paymentTerm;
	}

	public void setPaymentTerm(String paymentTerm) {
		this.paymentTerm = paymentTerm;	
	}
	
	public String getItemName() {
		return itemName;
	}

	public void setItemName(String itemName) {
		this.itemName = itemName;	
	}
	
	public int getItemQty() {
		return itemQty;
	}

	public void setItemQty(int itemQty) {
		this.itemQty = itemQty;	
	}
	
	public int getUomId() {
		return uomId;
	}

	public void setUomId(int uomId) {
		this.uomId = uomId;	
	}
	
	public String getUomName() {
		return uomName;
	}

	public void setUomName(String uomName) {
		this.uomName = uomName;	
	}
	
	
	public String getUomQty() {
		return uomQty;
	}

	public void setUomQty(String uomQty) {
		this.uomQty = uomQty;	
	}
	
	public int getUnitCost() {
		return unitCost;
	}

	public void setUnitCost(int unitCost) {
		this.unitCost = unitCost;	
	}
	
	public int getTotalCost() {
		return totalCost;
	}

	public void setTotalCost(int totalCost) {
		this.totalCost = totalCost;	
	}
	
	public String getPoDate() {
		return poDate;
	}

	public void setPoDate(String poDate) {
		this.poDate = poDate;	
	}
	
	public int getPoApprove() {
		return poApprove;
	}
	
	public void setPoApprove(int poApprove) {
		this.poApprove = poApprove;
		
	}
}
