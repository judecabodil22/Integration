package logistics.wms.beans;

public class InspectedBean {
	public int request_id;
	public int getRequest_id() {
		return request_id;
	}
	public void setRequest_id(int request_id) {
		this.request_id = request_id;
	}
	public String getFindings() {
		return findings;
	}
	public void setFindings(String findings) {
		this.findings = findings;
	}
	public String getInspected_by() {
		return inspected_by;
	}
	public void setInspected_by(String inspected_by) {
		this.inspected_by = inspected_by;
	}
	public String getInspection_date() {
		return inspection_date;
	}
	public void setInspection_date(String inspection_date) {
		this.inspection_date = inspection_date;
	}
	public String getRepair_type() {
		return repair_type;
	}
	public void setRepair_type(String repair_type) {
		this.repair_type = repair_type;
	}
	public String getRemarks() {
		return remarks;
	}
	public void setRemarks(String remarks) {
		this.remarks = remarks;
	}
	public String findings;
	public String inspected_by;
	public String inspection_date;
	public String repair_type;
	public String remarks;
}
