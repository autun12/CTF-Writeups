# Rev me (Andrdid, 958 points)

> is it possible to get what author had in mind?

FLAG = RaziCTF{G00d_J0b_h4v3_Fun_r3v1n9}

This challenge is a Reverse Engineering challenge. It was one of the many Reverse Engineering challenges during the Razi 2020 CTF. 

We are given a zip file that contains a java class called `Main`. 

## Main Function

```java
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
        System.out.println("clean string: " + decode(OurWiredFlag));
        System.out.println("Try more you can do it!");
    }
    scan.close();
}
```

Main takes your input then encodes it and messes it up then compares it to `OurWiredFlag`. If they are equal then it prints out `RaziCTF{`YourInput`}`. If they aren't equal it prints out `Try more you can do it!`.

## Encode Function
```Java
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
```

The encode function takes the users input then splits it into a CharArray. It loops through the length of the CharArray then checks first if The CharArray at index `i` has an integer in it. If the index is on a integer value it will multiply that integer by `1337`. Then turns the integer into a char and appends it to the `fin` string. If the index does not have a integer value it will multiply the indexes char value by `a` then subtracts by `200`. It will then turn that value into char and append to the `fin` string.

Example in python:
(since python cannot go above 256 with the `chr()` I don't know how you would print the char value from it)
```python
ord('c')*ord('a')-200
```

## Check Function

```java
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
    }catch (Exception ex)
        return false;
    }
}
```

The Check function just checks if the value given to it is an integer or a character.

## Mess Function

```java
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
```

The mess function will turn the userInput into a CharArray and calculate the length of it. Then it will determine if `i` is even or odd. If `i` is even it will take the length of the array divide by 2 and minus `k`. It will put that into the CharArray at the index of `i` then increment `k` by 1. If `i` is odd then it will do the same except add by `j` then increment `j`. If `i` is neither it will mod the CharArray at index `i` by 5. (During my time testing the function I did not encounter the `else` statement only `if` and `elseif`). It then returns the string as an Array.

## Decoding The flag sort of

So now that we know how it encodes the flag messes up the flag and checks whether the flag has a number in it. How do we decode it. Well we turn the string into a char array then loop through the length of the array and check if there is an integer at the index in the array if so append it to `numString`. Then we check if `numString`s length is equal to `5`. If so we put the value of `numString` into `str` and convert it into an integer.we then get the char value of the integer and append it into numString. We finally append that last value into `decodedString` and set `numString`s length to zero. If the index in the array is not a integer then we take the char value of the character and divide it by `95`. we append that value to `decodedString` as well. After we are done looping through the length of the CharArray we append `9` to the end mainly because the last number in the flag string is `76209` and for some reason when checking for the numbers it just doesn't add the `0` to the numString. I have no clue why it does that it just does. We then replace the `Z` because when the flag string got encoded it also got messed up and the mess function returns an array. We also replace the `*` character with an empty character, the `^` character with an underscore character the `.` character with `0`, and the `\` character with an empty character.

```java
public static String decode(String userInput) {
    StringBuilder decodedString = new StringBuilder();
    StringBuilder numString = new StringBuilder();
    String str = null;
    Integer t = null;
    for(int i = 0; i < userInput.toCharArray().length; i++) {
        if(CHECK(userInput.charAt(i))) {
            char ch = userInput.charAt(i);
            numString.append(String.valueOf(ch));
            if(numString.length() == 5) {
                str = numString.toString();
                t = Integer.valueOf(str);
                numString.append((char)(t / 1337));
                decodedString.append(String.valueOf(numString.substring(numString.length() - 1)));
                numString.setLength(0);
            }
        }

        decodedString.append((char)((userInput.charAt(i))/95));
    }
    
    decodedString.append("9");
    String replaceChar = decodedString.toString();
    String flag = replaceChar.replace("Z", "").replace('^', '_').replace("*","").replace(".", "0").replace("\\","");
    return flag;
}
```

There is most definitely a better algorithm I just don't know how I personally would go around it. You may notice if you run my decode algorithm that it will say `F00d_I0a_h4v3_Eun_r3v1n9`. While almost every character in there is correct there is 4 characters that aren't. `F` should be replaced by `G`. `I` should be replaced by `J`. `a` repaced with `b`. `E` replaced with `F`. Honestly I don't know why the decoding algorithm doesn't print the correct letters. Im guessing because im dividing by 95 for every character and those characters aren't divisible by 95 but a different number. So changes those 4 characters then run the program and input the flag string and you will get the rest of the flag.

## Decoding algorithm help
If you would like to tell me another way of decoding the flag and have it print out the correct characters please do tell me. I am always looking to improve. 

## Ending 
Overall it was a intermediate challenge. Thank you Razi for the challenge and I hope to play the next CTF by you. 