import Nat "mo:base/Nat";
import Iter "mo:base/Iter";
import Text "mo:base/Text";

actor {
    // 1-Write a function average_array that takes an array of integers and returns the average value of the elements in the array.
    // average_array(array : [Int]) -> async Int. 
    var sum : Int = 0;

    public func average_array(array : [Int]) : async Int {
        for (value in array.vals()){
          sum := sum + value;
        };
       return sum/array.size(); 
    };
    // 2-Character count: Write a function that takes in a string and a character, and returns the number of occurrences of that character in the string.
    // count_character(t : Text, c : Char) -> async Nat
    var counter: Nat = 0;
    let c : Char = 'h';
    public func count_character(t : Text) : async Nat {
        for (value in t.chars()){
            if(value == c){
                counter:= counter+1;
            }
        };
       return counter; 
    };
    // 3-Write a function factorial that takes a natural number n and returns the factorial of n.
    // factorial(n : Nat) ->  async Nat
    public func factorial(n : Nat) : async Nat {
    var multp : Nat = 1;
    for (i in Iter.range(1, n)) {
      multp *= i;
    };
    return multp;
  };
  //4-Write a function number_of_words that takes a sentence and returns the number of words in the sentence.
  //number_of_words(t : Text) -> async Nat 
  public func number_of_words(t : Text) : async Nat {
    
    return t.size();
  };
  //5-Write a function find_duplicates that takes an array of natural numbers and returns a new array containing all duplicate numbers. The order of the elements in the returned array should be the same as the order of the first occurrence in the input array.
  //find_duplicates(a : [Nat]) -> async [Nat]
    

  //Write a function convert_to_binary that takes a natural number n and returns a string representing the binary representation of n.
   public query func convert_to_binary(n : Nat) : async Text {
    var num: Nat = n;
    var binary : Text = Nat.toText(num % 2);
    while (num > 1) {
        num := (num / 2);
        binary :=  Nat.toText(num % 2) # (binary); 
    };
    return binary;
  };

};
