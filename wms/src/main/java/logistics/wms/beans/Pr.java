package logistics.wms.beans;

import java.util.ArrayList;
import java.util.List;

public class Pr {
	
private int prId;
private String prCode;
private int itemId;
private String itemName;
private String itemDesc;
private int itemQty;
private int uomId;
private String uomName;
private String uomQty;
private int unitCost;
private int totalCost;
private String requestedBy;
private String requestDate;
private String purpose;
private String prStatus;
private int prApprove;
private int prApproveLw;
private int prApproveLm;

private String[] itemName1;
private int[] itemQty1;
private int[] uomId1;
private int[] unitCost1;

private String dateFrom, dateTo;
	
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
	
	
	public int getItemId() {
		return itemId;
	}

	public void setItemId(int itemId) {
		this.itemId = itemId;
	}
	
	
	public String getItemName() {
		return itemName;
	}

	public void setItemName(String itemName) {
		this.itemName = itemName;	
	}
	
	public String getItemDesc() {
		return itemDesc;
	}

	public void setItemDesc(String itemDesc) {
		this.itemDesc = itemDesc;	
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
	
	public String getRequestedBy() {
		return requestedBy;
	}

	public void setRequestedBy(String requestedBy) {
		this.requestedBy = requestedBy;	
	}
	
	public String getRequestDate() {
		return requestDate;
	}

	public void setRequestDate(String requestDate) {
		this.requestDate = requestDate;	
	}
	
	public String getPurpose() {
		return purpose;
	}

	public void setPurpose(String purpose) {
		this.purpose = purpose;	
	}
	
	public String getPrStatus() {
		return prStatus;
	}

	public void setPrStatus(String prStatus) {
		this.prStatus = prStatus;	
	}
	
	public int getPrApprove() {
		return prApprove;
	}

	public void setPrApprove(int prApprove) {
		this.prApprove = prApprove;	
	}
	
	public int getPrApproveLw() {
		return prApproveLw;
	}

	public void setPrApproveLw(int prApproveLw) {
		this.prApproveLw = prApproveLw;	
	}
	
	public int getPrApproveLm() {
		return prApproveLm;
	}

	public void setPrApproveLm(int prApproveLm) {
		this.prApproveLm = prApproveLm;	
	}

	public String[] getItemName1() {
		return itemName1;
	}
	
	public void setItemName1(String[] itemName1) {
		this.itemName1 = itemName1;
	}
	
	public String getDateFrom() {
		return dateFrom;
	}
	
	public void setDateFrom(String dateFrom) {
		this.dateFrom = dateFrom;
	}
	
	public String getDateTo() {
		return dateTo;
	}
	
	public void setDateTo(String dateTo) {
		this.dateTo = dateTo;
	}
	
	
}

	
