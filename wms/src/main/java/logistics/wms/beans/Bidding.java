package logistics.wms.beans;

public class Bidding {
	
private int biddingId;
private String biddingDesc;
private String startDate;
private String endDate;
private String biddingDetails;
private String biddingStatus;
private String bidDate;
private String supplierName;
private int supplierId;
private String bidDetails;
private int prId;

	public int getPrId() {
	return prId;
}

public void setPrId(int prId) {
	this.prId = prId;
}

	public int getBiddingId() {
		return biddingId;
	}
	
	public void setBiddingId(int biddingId) {
		this.biddingId = biddingId;
	}
	
	public String getBiddingDesc() {
		return biddingDesc;
	}
	public void setBiddingDesc(String biddingDesc) {
		this.biddingDesc = biddingDesc;
	}
	
	public String getStartDate() {
		return startDate;
	}
	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}
	
	public String getEndDate() {
		return endDate;
	}
	public void setEndDate(String endDate) {
		this.endDate = endDate;
	}

	public String getBiddingDetails() {
		return biddingDetails;
	}
	public void setBiddingDetails(String biddingDetails) {
		this.biddingDetails = biddingDetails;
	}
	
	public String getBiddingStatus() {
		return biddingStatus;
	}
	public void setBiddingStatus(String biddingStatus) {
		this.biddingStatus = biddingStatus;
	}
	
	public String getBidDate() {
		return bidDate;
	}
	public void setBidDate(String bidDate) {
		this.bidDate = bidDate;
	}
	
	public String getSupplierName() {
		return supplierName;
	}
	public void setSupplierName(String supplierName) {
		this.supplierName = supplierName;
	}
	
	public String getBidDetails() {
		return bidDetails;
	}
	public void setBidDetails(String bidDetails) {
		this.bidDetails = bidDetails;
	}
	
	public int getSupplierId() {
		return supplierId;
	}
	
	public void setSupplierId(int supplierId) {
		this.supplierId = supplierId;
	}
}
