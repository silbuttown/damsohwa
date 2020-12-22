package DSHModel;

import java.util.Arrays;

public class DSHInfo {
	private String wakeH;
	private String sleepH;
	private String takeMedi;
	private int takeMediE;
	private String m_time[];
	//private String takeE[];
	//private String takeTime[];
	//private String takemin[];
	
	public DSHInfo() {		
		super();
		this.takeMedi = null;
		this.takeMediE = 0;
		this.m_time = null;		
	}

	public DSHInfo(String wakeH, String sleepH, String takeMedi, int takeMediE, String[] m_time) {
		super();
		this.wakeH = wakeH;
		this.sleepH = sleepH;
		this.takeMedi = takeMedi;
		this.takeMediE = takeMediE;
		this.m_time = m_time;
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

	public int getTakeMediE() {
		return takeMediE;
	}

	public void setTakeMediE(int takeMediE) {
		this.takeMediE = takeMediE;
	}

	public String[] getM_time() {
		return m_time;
	}

	public void setM_time(String[] m_time) {
		this.m_time = m_time;
	}

	@Override
	public String toString() {
		return "DSHInfo [wakeH=" + wakeH + ", sleepH=" + sleepH + ", takeMedi=" + takeMedi + ", takeMediE=" + takeMediE
				+ ", m_time=" + Arrays.toString(m_time) + "]";
	}

	
	
}
