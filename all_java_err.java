import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import java.util.Scanner;

public class ErrorExample {

    static int unusedVariable = 10; // PMD warning

    public static void main(String[] args) {

        Scanner scanner = new Scanner(System.in);

        String userInput = scanner.nextLine();

        // SECURITY ISSUE: SQL Injection
        try {
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/test", "root", "password");
            Statement stmt = conn.createStatement();

            String query = "SELECT * FROM users WHERE name = '" + userInput + "'";

            stmt.executeQuery(query);  // Semgrep should flag SQL injection

        } catch(Exception e) {
            e.printStackTrace();
        }

        // NULL POINTER RISK
        String str = null;
        System.out.println(str.length());

        // DIVIDE BY ZERO
        int a = 10;
        int b = 0;
        System.out.println(a / b);

        // ARRAY INDEX OUT OF BOUNDS
        int[] arr = new int[5];
        System.out.println(arr[10]);

        // DEAD CODE
        if(false){
            System.out.println("This will never run");
        }

        // INFINITE RECURSION
        recursiveMethod();

        // RESOURCE LEAK
        Scanner sc2 = new Scanner(System.in);
        sc2.nextLine();

        // STYLE ISSUE
        int BAD_variable_NAME = 5;

        // UNUSED VARIABLE
        int unused = 20;

        // STRING COMPARISON BUG
        String s1 = new String("hello");
        String s2 = new String("hello");

        if(s1 == s2){
            System.out.println("Strings equal");
        }

        // MAGIC NUMBER
        int result = calculate(5);

        System.out.println(result);

    }

    public static int calculate(int x){

        // POTENTIAL NULL RETURN
        if(x < 0){
            return null;  // compile error
        }

        return x * 2;
    }

    public static void recursiveMethod(){
        recursiveMethod();
    }
}