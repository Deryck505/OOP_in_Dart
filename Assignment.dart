class machine {
  String? name;
  int? price;
  num? weight;

  void start() {
    print("Machine is started");
  }

  void stop() {
    print("Machine has stopped");
  }
}

//Inheritance
abstract class laptop implements machine {
  String? version;
  @override
  void start() {
    print("Laptop is started");
  }

  void stop() {
    print("Laptop is stopped");
  }
}

// Interphase
class makbook extends machine {
  String? model;
  String? color;

  void showDetails() {
    print("The name: $name");
    print("Buying price: $price");
    print("Weight: $weight");
    print("color: $color");
    print("model: $model");
  }

  void shutDown() {
    print("Machine will now shut down in: ");
    for (int i = 5; i > 0; i = i - 1) {
      print(i);
    }
    print("Machine off!!!");
  }

  @override
  void start() {
    print("Machine is on");
  }
}

void main() {
  makbook m1 = new makbook();
  m1.name = "Macbook pro";
  m1.price = 2000000; //ksh
  m1.weight = 2000; //grams
  m1.model = "2019v2";
  m1.color = "black";

  m1.showDetails();
  m1.start();
  m1.shutDown();
}
