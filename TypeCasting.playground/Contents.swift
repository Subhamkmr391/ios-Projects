class Animal{
    
    let name: String
    
    init(n: String) {
        name = n
    }
    
}

class Human: Animal {
    
    func canType(){
        
        print("Humas can type")
        
    }
    
}

class Fish: Animal {
    
    func canSwim(){
        
        print("Fishes can swim")
        
    }
}


let subham = Human(n: "Subham")

let Tosh = Human(n: "Tosh")

let nemo = Fish(n: "Nemo")

let arr = [subham, Tosh, nemo]

let type = arr[0] as? Human

func findNemo (from animals: [Animal]){
    
    for animal in animals {
        
        if animal is Fish{
            
            let fish = animal as! Fish
            print (animal.name)
            
            fish.canSwim()
        }
        
    }
}

findNemo(from: arr)

