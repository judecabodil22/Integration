package logistics.wms.beans;

public class PurchaseOrderBeans {
	public int po_id;
	public int getPo_id() {
		return po_id;
	}
	public void setPo_id(int po_id) {
		this.po_id = po_id;
	}
	public String getPo_item_name() {
		return po_item_name;
	}
	public void setPo_item_name(String po_item_name) {
		this.po_item_name = po_item_name;
	}
	public int getPo_item_qty() {
		return po_item_qty;
	}
	public void setPo_item_qty(int po_item_qty) {
		this.po_item_qty = po_item_qty;
	}
	public String getPo_delivery_date() {
		return po_delivery_date;
	}
	public void setPo_delivery_date(String po_delivery_date) {
		this.po_delivery_date = po_delivery_date;
	}
	public String po_item_name;
	public int po_item_qty;
	public String po_delivery_date;
}
