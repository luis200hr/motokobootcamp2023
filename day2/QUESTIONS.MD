1. Who controls the ledger canister?

*An IC principal*

2. What is the subnet of the canister with the id: mwrha-maaaa-aaaab-qabqq-cai? How much nodes are running this subnet?

*The subnet is : pae4o-o6dxf-xki7q-ezclx-znyd6-fnk6w-vkv5z-5lfwh-xym2i-otrrw-fqe and have 2 controllers, can't find a method to know the amount of nodes*

3. I have a neuron with 1O ICPs locked with a dissolve delay of 4 years - my neuron has been locked for 2 years. What is my expected voting power?

*It should be three times more that the normal because it meets the three things that the NSS considers for voting; neuron age, quantity and staking time.*

4. What is wrong with the following code?
```
actor {
  let n : Nat = 50;
  let t : Text = "Hello";

  public func convert_to_text(m : Nat) : async Text {
    Nat.toText(m);
  };
 
}
```

*In this case we are trying to return a Nat to text, but to do it correctly we need to add the module **import Nat "mo:base/Nat";***

5. What is wrong with the following code?
```
actor {
  var languages : [var Text] = ["English", "German", "Chinese", "Japanese", "French"];

  public func show_languages(language : Text) : async () {
    return (languages);
  };
 
}
```
*the type "var text" is a non-shared, we can solve this is insted of [var Text] write [Text]*

6. What is wrong with the following code?
```
actor {
  var languages : [Text] = ["English", "German", "Chinese", "Japanese", "French"];

  public func add_language(new_language: Text) : async [Text] {
    languages := Array.append<Text>(languages, [new_language]);
    return (languages);
  };
 
}
```
*we need the module for the Array.append **import Array "mo:base/Array";***


