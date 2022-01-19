public void setup() 
{
  String[] lines = loadStrings("words.txt");
  System.out.println("there are " + lines.length + " lines");
  for (int i = 0; i < lines.length; i++) 
  {
    System.out.println(pigLatin(lines[i]));
  }
}

public int findFirstVowel(String sWord)
  //precondition: sWord is a valid String of length greater than 0.
  //postcondition: returns the position of the first vowel in sWord.  If there are no vowels, returns -1
{
  for (int i = 0; i < sWord.length(); i++) {
    if(sWord.charAt(i) == 'a' || sWord.charAt(i) == 'e' || sWord.charAt(i) == 'i' || sWord.charAt(i) == 'o' || sWord.charAt(i) == 'u'){
      return i;
    }
  }
  return -1;
}

public String pigLatin(String sWord)
  //precondition: sWord is a valid String of length greater than 0
  //postcondition: returns the pig latin equivalent of sWord
{
  for(int i = -1; i < sWord.length(); i++){
  if (sWord.indexOf("qu") == 0){return sWord.substring(2) + "quay";}
  if (findFirstVowel(sWord) == -1){return sWord + "ay";}
  if (findFirstVowel(sWord) == 0){return sWord.substring(0) + "way";}
  if (findFirstVowel(sWord) == 1){return sWord.substring(1) + sWord.substring(0, 1) + "ay";}
  if (findFirstVowel(sWord) == 2){return sWord.substring(2) + sWord.substring(0, 2) + "ay";}
  if (findFirstVowel(sWord) == 3){return sWord.substring(3) + sWord.substring(0, 3) + "ay";}
  if (findFirstVowel(sWord) == 4){return sWord.substring(4) + sWord.substring(0, 4) + "ay";}
  if (findFirstVowel(sWord) == 5){return sWord.substring(5) + sWord.substring(0, 5) + "ay";}
  }
  return "ERROR";
}

//ans
//eastbay
//oughday
//appyhay
//estionquay
//arstay
//eethray
//eagleway
//tryay
