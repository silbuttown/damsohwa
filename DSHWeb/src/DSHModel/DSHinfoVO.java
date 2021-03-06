package DSHModel;

import java.util.ArrayList;
import java.util.Arrays;

public class DSHinfoVO {
	public String ID;
	private String wakeH;
	private String sleepH;
	private String takeMedi;
	private long takeMediE;
	private ArrayList<String> m_time;
	private String check;
	//private String takeE[];
	//private String takeTime[];
	//private String takemin[];
	
	public DSHinfoVO() {		
		super();
		this.takeMedi = null;
		this.takeMediE = 0;
		this.m_time = null;
		this.check = null;
	}

	public DSHinfoVO(String wakeH, String sleepH, String takeMedi, int takeMediE, ArrayList<String> m_time) {
		super();
		this.wakeH = wakeH;
		this.sleepH = sleepH;
		this.takeMedi = takeMedi;
		this.takeMediE = takeMediE;
		this.m_time = m_time;
	}

	public String getID() {
		return ID;
	}

	public String getCheck() {
		return check;
	}

	public void setCheck(String check) {
		this.check = check;
	}

	public void setID(String iD) {
		ID = iD;
	}

	public String getWakeH() {
		return wakeH;
	}

	public void setWakeH(String wakeH) {
		this.wakeH = wakeH;
	}

	public String getSleepH() {
		return sleepH;
	}

	public void setSleepH(String sleepH) {
		this.sleepH = sleepH;
	}

	public String getTakeMedi() {
		return takeMedi;
	}

	public void setTakeMedi(String takeMedi) {
		this.takeMedi = takeMedi;
	}

	public long getTakeMediE() {
		return takeMediE;
	}

	public void setTakeMediE(long long1) {
		this.takeMediE = long1;
	}

	public ArrayList<String> getM_time() {
		return m_time;
	}

	public void setM_time(ArrayList<String> time) {
		this.m_time = time;
	}

	@Override
	public String toString() {
		return "DSHinfoVO [ID=" + ID + ", wakeH=" + wakeH + ", sleepH=" + sleepH + ", takeMedi=" + takeMedi
				+ ", takeMediE=" + takeMediE + ", m_time=" + m_time + ", check=" + check + "]";
	}

}
