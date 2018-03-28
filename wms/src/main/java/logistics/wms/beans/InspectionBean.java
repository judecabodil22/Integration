package logistics.wms.beans;

public class InspectionBean {
	public int request_inspect_id;
	public int getRequest_inspect_id() {
		return request_inspect_id;
	}
	public void setRequest_inspect_id(int request_inspect_id) {
		this.request_inspect_id = request_inspect_id;
	}
	public String getMr_code() {
		return mr_code;
	}
	public void setMr_code(String mr_code) {
		this.mr_code = mr_code;
	}
	public String getRequested_by() {
		return requested_by;
	}
	public void setRequested_by(String requested_by) {
		this.requested_by = requested_by;
	}
	public String getRequest_date() {
		return request_date;
	}
	public void setRequest_date(String request_date) {
		this.request_date = request_date;
	}
	public int getReq_status() {
		return req_status;
	}
	public void setReq_status(int req_status) {
		this.req_status = req_status;
	}
	public String mr_code;
	public String requested_by;
	public String request_date;
	public int req_status;
}
