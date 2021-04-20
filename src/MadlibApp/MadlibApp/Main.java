import java.util.Scanner;

class Main {
  public static void main(String[] args) {
    Scanner in = new Scanner(System.in);
    String[] arr = new String[13];

    System.out.println("Welcome to our game of Madlibs!");
    System.out.println("Don't put spaces in your words please!");
    System.out.println("Enter a noun");
    arr[0] = in.next();
    System.out.println("Enter a location");
    arr[1] = in.next();
    System.out.println("Enter a Name");
    arr[2] = in.next();
    System.out.println("Enter a verb");
    arr[3] = in.next();
    System.out.println("Enter a verb with the suffix -ing");
    arr[4] = in.next();
    System.out.println("Enter a adjective");
    arr[5] = in.next();
    System.out.println("Enter a different noun");
    arr[6] = in.next();
    System.out.println("Enter a different location");
    arr[7] = in.next();
    System.out.println("Enter a past-tense verb");
    arr[8] = in.next();
    System.out.println("Enter a adverb");
    arr[9] = in.next();
    System.out.println("Enter a different verb");
    arr[10] = in.next();
    System.out.println("Enter another different verb");
    arr[11] = in.next();
    System.out.println("Enter another different location");
    arr[12] = in.next();
    System.out.println("One day a " + arr[0] + " was rolling down the " + arr[1] + ". " + arr[2] + " saw it and tried to " + arr[3] + " it. It ended up " + arr[4] + ". Oh no! It was too " + arr [5] + "! It was going to kill everyone. " + arr[6] + " was the only thing that could stop it. But they were at " + arr[7] + ". " + arr[2] + " had to go get them. " + arr[2] + " " + arr[8] + " as " + arr[9] + " as they could. They arrived just in time for " + arr[6] + " to " + arr[10] + " out of " + arr[7] + " and " + arr[11] + " the " + arr[0] + " into " + arr[12]);

  }
}