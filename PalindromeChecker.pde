public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palidrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palidrome.");
    }
  }
}
public boolean palindrome(String word)
{
  //your code here

  //no Space
  String sNew = new String();
  for(int i =0; i<word.length(); i++)
  {
    if(!(word.substring(i, i+1).equals(" ")))
      sNew = sNew + word.substring(i,i+1);
  }

  //delete non-letter chars
  String sNew2 = new String();
  for(int i =0; i < word.length(); i++)
  {
    if(Character.isLetter(word.charAt(i)) == true)
      {
        sNew2 = sNew2 + word.substring(i, i+1);
      }
  }

  String sNew3 = new String();
  sNew3 = sNew2.toLowerCase();

  if(sNew3.equals(reverse(sNew3)))
  {
    return true;
  }
  return false;
}
public String reverse(String str)
{
    String sNew = new String();
    //your code here
    for(int i = str.length()-1; i>=0; i--)
    {
      sNew = sNew + str.substring(i,i+1);
    }
    return sNew;
}


