import Array "mo:base/Array";
import Nat "mo:base/Nat";
actor {
    // First Challenge
   public func max_value(array : [Int]) : async Int {
    var maxValor : Int = array[0]; 
    var second : Int = array[0];
    for (valor in array.vals()){ // recorro el array
        if (valor > maxValor) { // dentro del ciclo se compara cada elemento con el anterior
            second := maxValor;
            maxValor := valor;
        }
        // ya que obtuvimos el maximo valor vamos a econtrar el segundo
        else if (valor > second and valor < maxValor){ 
          second := valor; //asiganmos el valor que sea mayor que second y menosr que el maximo
        }
    };
    return second;
  };


  // Second Challenge
    let f = func (n : Nat) : Bool {
        if (n % 2 == 0) {
            return true
        } else {
            return false
        };
    };

    public func remove_even(array : [Nat]) : async [Nat] {
        //El array filter nos crea un nuevo Array
        return(Array.filter<Nat>(array, f));
    };


    // 3er Challenge ¡Don´t use loop!
    // Esta funcion toma un array(xs) y un "n" el n sera la cantidad de elementos que se eliminen
    // y regresara los restantes
    func drop2<T> (xs : [T], n : Nat) : [T] {
        let array = Array.tabulate<T>(xs.size() - n, func (i) = xs[i + n]);
        return array;
    };
    
};


