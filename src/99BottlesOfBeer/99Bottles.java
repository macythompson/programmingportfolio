class Main {
  public static void main(String[] args) {
  
      int bottles = 99;

      while( bottles > 1 ) {
         System.out.println(bottles + " bottles of root beer on the wall\n\n" + bottles + " bottles of  root beer on the wall, " + bottles + " bottles of beer\n" + "\nTake one down pass it around\n");
         bottles--;
         
      }
        System.out.println(bottles + " bottle of beer on the wall\n\n" + bottles + " bottle of beer on the wall " + bottles + " bottle of beer\n" + "\nTake one down pass it around 0 bottles of beer on the wall");
      
  }
}