package pr34;

public class Calculator {
	private int op1;
	private int op2;
	private String operator;
	int result = 0;
	
	public int getOp1() {
		return op1;
	}
	public void setOp1(int op1) {
		this.op1 = op1;
	}
	public int getOp2() {
		return op2;
	}
	public void setOp2(int op2) {
		this.op2 = op2;
	}
	public String getOperator() {
		return operator;
	}
	public void setOperator(String operator) {
		this.operator = operator;
	}
	
	public int calc(int op1, int op2, String operator) {
		if (operator.equals("+"))
			result =  add(op1, op2);
		else if (operator.equals("-"))
			result =  sub(op1, op2);
		else if (operator.equals("*"))
			result =  mult(op1, op2);
		else if (operator.equals("/"))
			result =  div(op1, op2);
		return result;
	}
	
	private int add(int a, int b) {
		return a + b;
	}
	private int sub(int a, int b) {
		return a - b;
	}
	private int mult(int a, int b) {
		return a * b;
	}
	private int div(int a, int b) {
		return a / b;
	}
}