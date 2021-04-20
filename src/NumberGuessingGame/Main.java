import java.util.Scanner;
import java.util.Random;

class Main {
  
  public static void main(String[] args) {

    Random random = new Random(); 
    int randNum = random.nextInt(100);
    int in = 0; 
    int attempts = 0;
    Scanner sc = new Scanner(System.in);
    System.out.println("Number Guessing Game");
     System.out.println("Guess a number between 1 and 100");
     in = sc.nextInt();
    // num = Random(0,100);

    while (in != randNum) { 
      if (in < randNum){
        System.out.println("You guessed " + in + ". That number is too low. Try again.");
        in = sc.nextInt();
      }else if (in > randNum) {
        System.out.println("You guessed " + in + ". That number is too high. Try again." );
       in = sc.nextInt();

      }
      attempts ++;
    }
    System.out.println("You guessed correctly! It took you " + attempts + " attempts!");
  }
}