1. How much is the current memory capacity of a canister?

*Currently according to intenercomputer.org documentation it is 4 GB.*

2. What is the issue with the following code sample?
```
actor {
  let counter : Nat = 0;
  public func increment_counter() : async () {
    counter := counter + 1;
  };
}
```

*The variable "let" is  immutable and what the function does is to increment the counter, and defining "counter" with "let" will give us an error, to avoid this we would have to use "var".*

3. What is the issue with the following code sample?
```
actor {
  var message : Text = 0;

  public query func change_message(new_message : Text) : async () {
    message := new_message;
    return;
  };
  
  public query func see_message() : async Text {
    return(message);
  };
}
```

*the issue is that the var "message" is equal to 0 (an integer), but is type Text. To fix this we can write Text = "";*

4. False or True: we can remove the keyword **async** for return argument of a query function since queries are faster to answer.

*False, we need the keyword **async** because the function need some time to complete*
