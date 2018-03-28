package logistics.wms.beans;

public class Rfq {
	
private int rfqId;
private int supplierId;
private String supplierName;
private String rfqDate;
private int prId;
private String prCode;
private int itemQty;
private int unitCost;
private int totalCost;

	public int getRfqId() {
		return rfqId;
	}

	public void setRfqId(int rfqId) {
		this.rfqId = rfqId;
	}
	
	public int getSupplierId() {
		return supplierId;
	}
	
	public void setSupplierId (int supplierId) {
		this.supplierId = supplierId;
	}
	
	public String getSupplierName() {
		return supplierName;
	}
	
	public void setSupplierName (String supplierName) {
		this.supplierName = supplierName;
	}
	

	public String getRfqDate() {
		return rfqDate;
	}
	
	public void setRfqDate (String rfqDate) {
		this.rfqDate = rfqDate;
	}
	
	public int getPrId() {
		return prId;
	}
	
	public void setPrId (int prId) {
		this.prId = prId;
		
	}
	
	
	public String getPrCode() {
		return prCode;
	}
	
	public void setPrCode (String prCode) {
		this.prCode = prCode;
	}
	
	
	public int getItemQty() {
		return itemQty;
	}
	
	public void setItemQty (int itemQty) {
		this.itemQty = itemQty;
	}

	
	public int getUnitCost() {
		return unitCost;
	}
	
	public void setUnitCost (int unitCost) {
		this.unitCost = unitCost;
	}
	
	public int getTotalCost() {
		return totalCost;
	}
	
	public void setTotalCost (int totalCost) {
		this.totalCost = totalCost;
	}



	
	


}
