module Book {
  public type Book = {
    title : Text;
    autor : Text;
    datarelease: Text;
    pages : Nat;
  };
    //funcion para crear un nuevo libro, basado en los paramentros 
  public func create_book(t : Text ,a : Text, r : Text, p : Nat) : async Book {
    let libro : Book = {
      title= t;
      autor= a;
      datarelease= r;
      pages= p;
    };
    return libro;
  };
};