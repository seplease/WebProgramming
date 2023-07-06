package pr40;

public class Register {
	private String[] mChoices = {"hobby"};
	private String[] hobbyNames = {"뉴스", "맛집", "책", "영화", "여행"};
	private String[] telCompany = {"010", "011", "017", "070"};
	private String[] gNames = {"남", "여"};
	
	public String[] getMChoices() {
		return mChoices;
	}
	
	public String[] getHobbyNames() {
		return hobbyNames;
	}
	
	public String[] getTelCompany() {
		return telCompany;
	}
	
	public String[] getGNames() {
		return gNames;
	}
}