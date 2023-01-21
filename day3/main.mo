import Book "./book";
import List "mo:base/List";

actor{
    //Se crea una variable para almacer un libro
    var list = List.nil<Book.Book>();

    //agrega un libro nuevo a la lista
    public func add_book(book : Book.Book) : async () {
        list := List.append(list, List.make<Book.Book>(book));
    };
    
    //muestra todos los libros alamcenados
    public query func get_books() : async [Book.Book] {
        return List.toArray(list); 
    };

};