public void setup() 
{
  String[] lines = {"beast","dough","happy","question","star","three","eagle","try"};
  System.out.println("there are " + lines.length + " lines");
  for (int i = 0 ; i < lines.length; i++) 
  {
    System.out.println(pigLatin(lines[i]));
  }
}
public void draw()
{
        //not used
}
public int findFirstVowel(String sWord)
//precondition: sWord is a valid String of length greater than 0.
//postcondition: returns the position of the first vowel in sWord.  If there are no vowels, returns -1
{
  for(int i=0; i<sWord.length(); i++) {
    if(sWord.charAt(i) == 'a' || sWord.charAt(i) == 'e' || sWord.charAt(i) == 'o' || sWord.charAt(i) == 'i' || sWord.charAt(i) == 'u') {
      return i;
    }
  }
  return -1;
}

public String pigLatin(String sWord)
//precondition: sWord is a valid String of length greater than 0
//postcondition: returns the pig latin equivalent of sWord
{
  //condition 1: words with no vowels add "ay" to the end
  if(findFirstVowel(sWord) == -1)
  {
    return sWord + "ay";
  }
  //condition 2: add way to words starting with vowels
  if (findFirstVowel(sWord) == 0) {
    return sWord + "way";
  }
  //condition 3: for words tht start with "qu", move "qu" to end and add "ay"
  if (sWord.substring(0,2).equals("qu")) {
    return sWord.substring(2) + "quay";
  }
  //condition 4: move consecutive constants in the beginning of the word to the end + "ay"
  if (findFirstVowel(sWord) > 0){ //if vowel found at value past 0, its not the first letter of the word
    return sWord.substring(findFirstVowel(sWord)) + sWord.substring(0,findFirstVowel(sWord)) + "ay"; //the string is cut right before the vowel
  }
  return "ERROR!";
}
