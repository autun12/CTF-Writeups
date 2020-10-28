import java.sql.SQLOutput;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Scanner;

public class Main {

    public static void main(String[] args) {
        Scanner scan = new Scanner(System.in);
        System.out.print("Enter Flag: ");
        String YourFlag = scan.nextLine();
        String OurWiredFlag="↳᨟࿤୘ᅨ࿤୘ᅨ࿤୘├࿤୘⌷࿤୘ᭂ࿤୘ᅨ࿤୘⑚࿤୘⌷࿤୘⚠࿤୘69524࿤୘⯮࿤୘68187࿤୘⌷࿤୘ᦾ࿤୘⮍࿤୘⣦࿤୘⌷࿤୘⩪࿤୘68187࿤୘⯮࿤୘65513࿤୘⣦࿤୘76209≵";
        if(encode(mess(YourFlag)).equals(OurWiredFlag)){
            System.out.println("RaziCTF{"+YourFlag+"}");
            System.out.println("here is the flag take it :)");
        }
        else {
            System.out.println("wired string: " + OurWiredFlag);
            String encoded = encode(mess(YourFlag));
            System.out.println("messy string: " + encoded);
        //     // System.out.println("clean string: " + mess(OurWiredFlag));
        //     String cleanFlag = decode(OurWiredFlag);
        //     System.out.println("flags string: " + cleanFlag);
        //     String clean = decode(encoded);
        //     System.out.println("clean string: " + clean);
            System.out.println("Try more you can do it!");
        }
        scan.close();
    }

    public static String clean(String userInput) {
        /*can you help clean my mess it will help you with flag :)*/
        char userInputArr[] = userInput.toCharArray();
        int arrLength = userInputArr.length;
        char finalString[] = new char[arrLength];
        int i = 0;
        int j = 1;
        int k = 0;
        while(true) {
            try {
                if (i % 2 == 0) {
                    finalString[(arrLength / 2) - k] = userInputArr[i];
                    k++;
                } else if(i % 2 == 1) {
                    finalString[(arrLength / 2) + j] = userInputArr[i];
                    j++;
                } else {
                    finalString[i] = (char)(userInputArr[i] % 5);
                }
                i++;
            } catch (Exception e) {
                return Arrays.toString(userInputArr);
            }
        }
    }

    public static String mess(String userInput){
        char a[]=userInput.toCharArray();
        int b=a.length;
        char fin[]=new char[b];
        int i=0;
        int j=1;
        int k=0;
        while (true){
            try {
                if (i%2==0){
                    fin[(b/2)-k]=a[i];
                    k++;
                }else if (i%2==1){
                    fin[(b/2)+j]=a[i];
                    j++;
                }
                else {
                    fin[i]= (char) (a[i]%5);
                }
                    i++;
            }catch (Exception e) {
                return Arrays.toString(a);
            }
        }
    }
    
    public static boolean CHECK(char userInput){
        int[] a=new int[10];
        for (int i=0;i<10;i++){
            a[i]=i+1;
        }
        try {
            int i=0;
            while (true){
                i++;
                String b=String.valueOf(userInput);
                String c=String.valueOf(a[i-1]);
                if(b.equals(c)){
                    return true;
                }
            }
        }catch (Exception ex){

            return false;
        }
    }

    public static String decode(String userInput) {
        /*I really wanted to decode this thing but i really didn't feel like it :D */
        StringBuilder decodedString = new StringBuilder();
        for(int i = 0; i < userInput.toCharArray().length; i++) {
            if(CHECK(userInput.charAt(i))) {
                char ch = userInput.charAt(i);
                decodedString.append(String.valueOf(ch));    
            }
            decodedString.append((char)((userInput.charAt(i))/95));
        }

        return decodedString.toString();
    }
    
    public static String encode(String userInput){
        StringBuilder fin= new StringBuilder();
        for (int i=0; i<userInput.toCharArray().length;i++){
            if(CHECK(userInput.charAt(i))){
                char ch=userInput.charAt(i);
                fin.append(String.valueOf(ch * 1337));
            }
            else {
                fin.append((char)((userInput.charAt(i)*'a')-200));
            }
        }
        return fin.toString();
    }
}
