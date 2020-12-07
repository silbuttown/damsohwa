package TaskTopM;
// 관리자용
public class TaskTopDTO {

	private int EMP_NO;
	private String DEPT_NAME;
	private String EMP_NAME;
	private String EMP_POSITION;
	private String EMP_ID;
	private String EMP_PASS;
	
	
	public TaskTopDTO() {};
	public TaskTopDTO(String eMP_ID, String eMP_PASS) {
		super();
		EMP_ID = eMP_ID;
		EMP_PASS = eMP_PASS;
	}
	public TaskTopDTO(int eMP_NO, String dEPT_NAME, String eMP_NAME, String eMP_POSITION, String eMP_ID,
			String eMP_PASS) {
		super();
		EMP_NO = eMP_NO;
		DEPT_NAME = dEPT_NAME;
		EMP_NAME = eMP_NAME;
		EMP_POSITION = eMP_POSITION;
		EMP_ID = eMP_ID;
		EMP_PASS = eMP_PASS;
		
	}	
	public TaskTopDTO(String dEPT_NAME, String eMP_NAME, String eMP_POSITION, String eMP_ID, String eMP_PASS) {
		super();
		DEPT_NAME = dEPT_NAME;
		EMP_NAME = eMP_NAME;
		EMP_POSITION = eMP_POSITION;
		EMP_ID = eMP_ID;
		EMP_PASS = eMP_PASS;
	}
	@Override
	public String toString() {
		return "TaskTopDTO [EMP_NO=" + EMP_NO + ", DEPT_NAME=" + DEPT_NAME + ", EMP_NAME=" + EMP_NAME
				+ ", EMP_POSITION=" + EMP_POSITION + ", EMP_ID=" + EMP_ID + ", EMP_PASS=" + EMP_PASS + "]";
	}
	public int getEMP_NO() {
		return EMP_NO;
	}
	public void setEMP_NO(int eMP_NO) {
		EMP_NO = eMP_NO;
	}
	public String getDEPT_NAME() {
		return DEPT_NAME;
	}
	public void setDEPT_NAME(String dEPT_NAME) {
		DEPT_NAME = dEPT_NAME;
	}
	public String getEMP_NAME() {
		return EMP_NAME;
	}
	public void setEMP_NAME(String eMP_NAME) {
		EMP_NAME = eMP_NAME;
	}
	public String getEMP_POSITION() {
		return EMP_POSITION;
	}
	public void setEMP_POSITION(String eMP_POSITION) {
		EMP_POSITION = eMP_POSITION;
	}
	public String getEMP_ID() {
		return EMP_ID;
	}
	public void setEMP_ID(String eMP_ID) {
		EMP_ID = eMP_ID;
	}
	public String getEMP_PASS() {
		return EMP_PASS;
	}
	public void setEMP_PASS(String eMP_PASS) {
		EMP_PASS = eMP_PASS;
	}
	
	

	
}
