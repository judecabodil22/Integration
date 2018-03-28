package logistics.wms.beans;

public class WarehouseBeans {

	
	public String getWarehouseName() {
		return warehouseName;
	}
	public void setWarehouseName(String warehouseName) {
		this.warehouseName = warehouseName;
	}
	public String getWarehouseDesc() {
		return warehouseDesc;
	}
	public void setWarehouseDesc(String warehouseDesc) {
		this.warehouseDesc = warehouseDesc;
	}
	public int getWarehouseStatus() {
		return warehouseStatus;
	}
	public void setWarehouseStatus(int warehouseStatus) {
		this.warehouseStatus = warehouseStatus;
	}
	public String getWarehouseDateCreated() {
		return warehouseDateCreated;
	}
	public void setWarehouseDateCreated(String warehouseDateCreated) {
		this.warehouseDateCreated = warehouseDateCreated;
	}
	public String getWarehouseDateModified() {
		return warehouseDateModified;
	}
	public void setWarehouseDateModified(String warehouseDateModified) {
		this.warehouseDateModified = warehouseDateModified;
	}
	
	public int getWarehouse_ID() {
		return warehouse_ID;
	}
	public void setWarehouse_ID(int warehouse_ID) {
		this.warehouse_ID = warehouse_ID;
	}
	public int warehouse_ID;
	public String warehouseName;
	public String warehouseDesc;
	public int warehouseStatus;
	public String warehouseDateCreated;
	public String warehouseDateModified;
}
