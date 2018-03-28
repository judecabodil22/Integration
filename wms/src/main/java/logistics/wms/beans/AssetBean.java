package logistics.wms.beans;

public class AssetBean {
	private String nameAsset;
	private String codeAsset;
	private String nameDep;
	private int priceAsset;
	private int codeLegend;
	private int percentDA;
	private String dateDeployment;
	private String dateRetire;
	private int deptId;
	private int noAsset;
	
	
	public String getNameAsset() {
		return nameAsset;
	}
	public void setNameAsset(String nameAsset) {
		this.nameAsset = nameAsset;
	}
	public String getCodeAsset() {
		return codeAsset;
	}
	public void setCodeAsset(String codeAsset) {
		this.codeAsset = codeAsset;
	}
	public String getNameDep() {
		return nameDep;
	}
	public void setNameDep(String nameDep) {
		this.nameDep = nameDep;
	}
	public float getPriceAsset() {
		return priceAsset;
	}
	public void setPriceAsset(int priceAsset) {
		this.priceAsset = priceAsset;
	}
	public int getCodeLegend() {
		return codeLegend;
	}
	public void setCodeLegend(int codeLegend) {
		this.codeLegend = codeLegend;
	}
	public String getDateDeployment() {
		return dateDeployment;
	}
	public void setDateDeployment(String dateDeployment) {
		this.dateDeployment = dateDeployment;
	}
	public int getPercentDA() {
		return percentDA;
	}
	public void setPercentDA(int percentDA) {
		this.percentDA = percentDA;
	}
	public String getDateRetire() {
		return dateRetire;
	}
	public void setDateRetire(String dateRetire) {
		this.dateRetire = dateRetire;
	}
	public int getDeptId() {
		return deptId;
	}
	public void setDeptId(int deptId) {
		this.deptId = deptId;
	}
	public int getNoAsset() {
		return noAsset;
	}
	public void setNoAsset(int noAsset) {
		this.noAsset = noAsset;
	}
}
