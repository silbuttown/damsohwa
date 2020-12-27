package DSHModel;

public class DSHsensorVO {
	
	public int ID;
	public int bright;
	public int flame;
	public int gas;
	public float humid;
	public String plant;
	public int soil;
	public float temp;
	
	public DSHsensorVO() {
		super();
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
	
	@Override
	public String toString() {
		return "DSHsensorVO [ID=" + ID + ", bright=" + bright + ", flame=" + flame + ", gas=" + gas + ", humid=" + humid
				+ ", plant=" + plant + ", soil=" + soil + ", temp=" + temp + "]";
	}
	
	
	
	

}
