String[] Vowels = {"a", "e", "i", "o", "u"};
int lines;
public void setup() 
{

  String[] words = loadStrings("LowellHymn.txt");
  String dude = join(words, " ");
  println("NORMAL VERSION");
  println(dude);
  println("_____________________");
  String[] bruh = split(dude, " ");


  for (String damn : bruh) {
    if (damn.length() > 0) {
      if ((damn.substring(damn.length()-1).equals(","))) {
        println(pigLatin(damn.substring(0, damn.length()-1)) + ",");
      } else if ((damn.substring(damn.length()-1).equals("."))) 
      {
        println(pigLatin(damn.substring(0, damn.length()-1)) + ".");
      } else { 
        print(pigLatin(damn) + " ");
      }
    }
  }
}








/*
  for (int d = 0; d < bruh.size(); d++) 
 {
 if(bruh.get(d).length() > 1) {
 for(int i = 0; i < bruh.get(d).length(); i++) {
 if(bruh.get(d).substring(i,i+1).equals("")) {
 bruh.set(d,bruh.get(d).substring(0,i));
 bruh.add(d+1,bruh.get(d).substring(i,bruh.get(d).length()));
 println(bruh.get(d));
 } else {
 println(bruh.get(d));
 }
 } 
 } else {
 System.out.println(pigLatin(bruh.get(d)));
 }
 }
 }*/

public void draw()
{
  //not used
}
public int findFirstVowel(String sWord) {
  if (sWord.length() > 0) {
    for (int i = 0; i < sWord.length(); i++) {
      for ( int d = 0; d < Vowels.length; d++) {
        if ((sWord.substring(i, i+ 1)).equals(Vowels[d])) {
          return i;
        }
      }
    }
    return -1;
  } else {
    return -1;
  }
}


//public int 

public String pigLatin(String sWord)
  //precondition: sWord is a valid String of length greater than 0
  //postcondition: returns the pig latin equivalent of sWord
{
  if (findFirstVowel(sWord) == -1)
  {
    return sWord + "ay";
  } else if (sWord.charAt(0) == 'q' && sWord.charAt(1) == 'u') {
    return sWord.substring(2, sWord.length()) + sWord.substring(0, 2) + "ay" ;
  } else if (findFirstVowel(sWord) == 0) {
    return sWord + "way";
  } else if (findFirstVowel(sWord) > 0) {
    return sWord.substring(findFirstVowel(sWord), sWord.length()) + sWord.substring(0, findFirstVowel(sWord)) + "ay";
  } else {
    return "error";
  }
}
