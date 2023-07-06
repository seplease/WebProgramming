package pr39;

import java.util.*;

public class LectureManager {

   ArrayList<LectureBean> lectureList = new ArrayList<LectureBean>();

   private static final int times = 6;
   private static final int days = 5;

   private int[][] typeMatrix = new int[times][days];
   private int[][] titleMatrix = new int[times][days];
   private int[][] spanMatrix = new int[times][days];

   public LectureManager() {
      for (int i = 0; i < times; i++) {
         for (int j = 0; j < days; j++) {
            typeMatrix[i][j] = 0;
            titleMatrix[i][j] = -1;
            spanMatrix[i][j] = 1;
         }
      }
   }

   public int[][] getTypeMatrix() {
      return typeMatrix;
   }

   public void setTypeMatrix(int[][] typeMatrix) {
      this.typeMatrix = typeMatrix;
   }

   public int[][] getTitleMatrix() {
      return titleMatrix;
   }

   public void setTitleMatrix(int[][] titleMatrix) {
      this.titleMatrix = titleMatrix;
   }

   public int[][] getSpanMatrix() {
      return spanMatrix;
   }

   public void setSpanMatrix(int[][] spanMatrix) {
      this.spanMatrix = spanMatrix;
   }

   public int getTimes() {
      return times;
   }

   public static int getDays() {
      return days;
   }

   public void buildMatrix() {
      for (LectureBean b : lectureList) {
         if (b.getConsecutive() == 1) {
            spanMatrix[b.getTime() - 1][b.getDay()] = b.getConsecutive();
            typeMatrix[b.getTime() - 1][b.getDay()] = b.getType() + 1;
            titleMatrix[b.getTime() - 1][b.getDay()] = b.getTitle();
         } else {
            for (int i = 0; i < b.getConsecutive(); i++) {
               if (i == 0)
                  spanMatrix[i][b.getDay()] = b.getConsecutive();
               else
                  spanMatrix[i][b.getDay()] = 0;
            }
            typeMatrix[b.getTime() - 1][b.getDay()] = b.getType() + 1;
            titleMatrix[b.getTime() - 1][b.getDay()] = b.getTitle();
         }
      }
      printMatrix(typeMatrix);
      System.out.println();
      printMatrix(titleMatrix);
      System.out.println();
      printMatrix(spanMatrix);
      System.out.println();
   }

   public static void printMatrix(int[][] matrix) {
      for (int i = 0; i < times; i++) {
         for (int j = 0; j < days; j++)
            System.out.print(matrix[i][j]);
         System.out.println();
      }
   }

   public List<LectureBean> getLectureList() {
      return lectureList;
   }
   
   public void setLectureList(ArrayList<LectureBean> lectureList) {
	      this.lectureList = lectureList;
	}

   public void add(LectureBean lbean) {
      lectureList.add(lbean);
   }

}