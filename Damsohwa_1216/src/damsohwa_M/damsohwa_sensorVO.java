package damsohwa_M;

public class damsohwa_sensorVO {
	
	public int ID;
	public int bright;
	public int flame;
	public int gas;
	public float humid;
	public String plant;
	public int soil;
	public float temp;
	public String fireCheck;
	public damsohwa_sensorVO() {
		super();
	}
	public damsohwa_sensorVO(int iD, int bright, int flame, int gas, float humid, String plant, int soil, float temp,String fireCheck) {
		super();
		ID = iD;
		this.bright = bright;
		this.flame = flame;
		this.gas = gas;
		this.humid = humid;
		this.plant = plant;
		this.soil = soil;
		this.temp = temp;
		this.fireCheck = fireCheck;
	}
	public damsohwa_sensorVO(int bright, int flame, int gas, float humid, int soil, float temp) {
		super();
		this.bright = bright;
		this.flame = flame;
		this.gas = gas;
		this.humid = humid;
		this.soil = soil;
		this.temp = temp;
	}
	public int getID() {
		return ID;
	}
	public void setID(int iD) {
		ID = iD;
	}
	public int getBright() {
		return bright;
	}
	public void setBright(int bright) {
		this.bright = bright;
	}
	public int getFlame() {
		return flame;
	}
	public void setFlame(int flame) {
		this.flame = flame;
	}
	public int getGas() {
		return gas;
	}
	public void setGas(int gas) {
		this.gas = gas;
	}
	public float getHumid() {
		return humid;
	}
	public void setHumid(float humid) {
		this.humid = humid;
	}
	public String getPlant() {
		return plant;
	}
	public void setPlant(String plant) {
		this.plant = plant;
	}
	public int getSoil() {
		return soil;
	}
	public void setSoil(int soil) {
		this.soil = soil;
	}
	public float getTemp() {
		return temp;
	}
	public void setTemp(float temp) {
		this.temp = temp;
	}
	public String getFireCheck() {
		return fireCheck;
	}
	public void setFireCheck(String fireCheck) {
		this.fireCheck = fireCheck;
	}
	
	
	
	

}
