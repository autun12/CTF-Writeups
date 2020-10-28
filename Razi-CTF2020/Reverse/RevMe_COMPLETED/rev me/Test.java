public class Test {
	public static void main(String[] args) {
        char c = '⑚';
        int ascii = c;  
        System.out.println("The ASCII value of " + c + " is: " + ascii); 
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
                System.out.println(ch);
                decodedString.append(String.valueOf(ch));    
            }
            if(userInput.charAt(i) == '↳') {
                decodedString.append((char)(userInput.charAt(i))/93);
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
