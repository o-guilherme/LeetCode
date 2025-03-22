import java.io.*;
import java.math.*;
import java.security.*;
import java.text.*;
import java.util.*;
import java.util.concurrent.*;
import java.util.function.*;
import java.util.regex.*;
import java.util.stream.*;
import static java.util.stream.Collectors.joining;
import static java.util.stream.Collectors.toList;



public class Solution {
    public static void main(String[] args) throws IOException {
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(System.in));

        int N = Integer.parseInt(bufferedReader.readLine().trim());
        if (N % 2 != 0) {
            System.out.println("Weird");
        } else if (N >= 2 && N <=5) {
            System.out.println("Not Weird");
        } else if (N >= 6 && N <=20) {
            System.out.println("Weird");
        } else if (N > 20){
            System.out.println("Not Weird");

        bufferedReader.close();
    }
    }
    }

/*
Java If-Else

Input Format

A single line containing a positive integer,

.

Constraints

Output Format

Print Weird if the number is weird; otherwise, print Not Weird.

Sample Input 0

3

Sample Output 0

Weird

Sample Input 1

24

Sample Output 1

Not Weird

Explanation

Sample Case 0:

is odd and odd numbers are weird, so we print Weird.

Sample Case 1:

and is even, so it isn't weird. Thus, we print Not Weird.


*/
