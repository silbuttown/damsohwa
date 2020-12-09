package TaskTopM;
// »ç¿ø¿ë
public class TaskTopVO {
	
	private int EMP_NO;
	private String EMP_NAME;
	private String DEPT_NAME;
	private String EMP_POSITION;
	private int DAY_COFFEE;
	private String EMP_EXIST;	
	private int DAY_STR;	


	public TaskTopVO() {
		
	}	





	@Override
	public String toString() {
		return "TaskTopVO [EMP_NO=" + EMP_NO + ", EMP_NAME=" + EMP_NAME + ", DEPT_NAME=" + DEPT_NAME + ", EMP_POSITION="
				+ EMP_POSITION + ", DAY_COFFEE=" + DAY_COFFEE + ", EMP_EXIST=" + EMP_EXIST + ", DAY_STR=" + DAY_STR
				+ "]";
	}





	public TaskTopVO(int eMP_NO, String eMP_NAME, String dEPT_NAME, String eMP_POSITION, int dAY_COFFEE,
			String eMP_EXIST) {
		super();
		EMP_NO = eMP_NO;
		EMP_NAME = eMP_NAME;
		DEPT_NAME = dEPT_NAME;
		EMP_POSITION = eMP_POSITION;
		DAY_COFFEE = dAY_COFFEE;
		EMP_EXIST = eMP_EXIST;
	}


	public TaskTopVO(int eMP_NO, int DAY_COFFEE, String eMP_EXIST) {
		super();
		EMP_NO = eMP_NO;
		DAY_COFFEE = DAY_COFFEE;
		EMP_EXIST = eMP_EXIST;
	}



	public TaskTopVO(int eMP_NO, String eMP_NAME, String dEPT_NAME) {
		super();
		EMP_NO = eMP_NO;
		EMP_NAME = eMP_NAME;
		DEPT_NAME = dEPT_NAME;
	}



	public TaskTopVO(String eMP_NAME, String dEPT_NAME, String eMP_POSITION, int DAY_COFFEE) {
		super();
		EMP_NAME = eMP_NAME;
		DEPT_NAME = dEPT_NAME;
		EMP_POSITION = eMP_POSITION;
		DAY_COFFEE = DAY_COFFEE;
	}


	public TaskTopVO(String eMP_NAME, String dEPT_NAME, String eMP_POSITION, String eMP_EXIST) {
		super();
		EMP_NAME = eMP_NAME;
		DEPT_NAME = dEPT_NAME;
		EMP_POSITION = eMP_POSITION;
		EMP_EXIST = eMP_EXIST;
	}






	public int getEMP_NO() {
		return EMP_NO;
	}






	public void setEMP_NO(int eMP_NO) {
		EMP_NO = eMP_NO;
	}






	public String getEMP_NAME() {
		return EMP_NAME;
	}






	public void setEMP_NAME(String eMP_NAME) {
		EMP_NAME = eMP_NAME;
	}






	public String getDEPT_NAME() {
		return DEPT_NAME;
	}






	public void setDEPT_NAME(String dEPT_NAME) {
		DEPT_NAME = dEPT_NAME;
	}






	public String getEMP_POSITION() {
		return EMP_POSITION;
	}






	public void setEMP_POSITION(String eMP_POSITION) {
		EMP_POSITION = eMP_POSITION;
	}






	public int getDAY_COFFEE() {
		return DAY_COFFEE;
	}






	public void setDAY_COFFEE(int DAY_COFFEE) {
		this.DAY_COFFEE = DAY_COFFEE;
	}






	public String getEMP_EXIST() {
		return EMP_EXIST;
	}






	public void setEMP_EXIST(String eMP_EXIST) {
		EMP_EXIST = eMP_EXIST;
	}

	public int getDAY_STR() {
		return DAY_STR;
	}


	public void setDAY_STR(int dAY_STR) {
		DAY_STR = dAY_STR;
	}


}
