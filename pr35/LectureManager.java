package pr35;
import java.util.*;

public class LectureManager {
	ArrayList<LectureBean> lectureList = new ArrayList<LectureBean>();
	
	public List<LectureBean> getLectureList() {
		return lectureList;
	}
	
	public void add(LectureBean lbean) {
		lectureList.add(lbean);
	}
}