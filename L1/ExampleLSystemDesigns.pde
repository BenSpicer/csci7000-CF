// ExampleLSystemDesigns - contains initialization methods
// to set up parameters and init the LSystem (from the main file)

import java.util.HashMap;

// [TODO]: create your own L-System initialization methods
// and use/test in the setup() method of L1LSystemAssignment file. 
// See example for Square Lsystem below.

// Square Lsystem initialization 
// This method returns an Lsystem object that uses
// The rules and axioms for a square based system
LSystem initSquare() {
  // initialize turtle variables
  float moveDist = 10;
  float rotateAngle = 90;
  float scaleFactor = 1;
  
  // The intial axiom / input string
  String axiom = "F+F+F+F";
  
  // Create any production rules
  HashMap<Character, String> rules = new HashMap<>();
  rules.put('F', "F+F-F-FF+F+F-F");
    
  // Create and return the Lsystem
  return new LSystem(axiom, rules, moveDist, rotateAngle, scaleFactor);
}

<<<<<<< HEAD
LSystem LSystem1() {
  // initialize turtle variables
  float moveDist = 10;
  float rotateAngle = 90;
  float scaleFactor = 1;
  
  // The intial axiom / input string
  String axiom = "F+F+F+F";
  
  // Create any production rules
  HashMap<Character, String> rules = new HashMap<>();
  rules.put('F', "F+F-F-FF+F+F-F");
=======
LSystem sys1() {
  // initialize turtle variables
  float moveDist = 50;
  float rotateAngle = 60;
  float scaleFactor = 3;
  
  // The intial axiom / input string
  String axiom = "+[F]+[F]+[F]+[F]+[F]+[F]";
  
  // Create any production rules
  HashMap<Character, String> rules = new HashMap<>();
  rules.put(']', "[-F+F-F]F]");
  rules.put('[', "[[-FF]");
  rules.put('F', "FF");

  rules.put('+', "B+F");
  rules.put('-', "B-F");
    
  // Create and return the Lsystem
  return new LSystem(axiom, rules, moveDist, rotateAngle, scaleFactor);
}

LSystem sys2() {
  // initialize turtle variables
  float moveDist = 20;
  float rotateAngle = 15;
  float scaleFactor = 1;
  
  // The intial axiom / input string
  String axiom = "+++]+++]+++]+++]+++]+++]+++]+++]";
  
  // Create any production rules
  HashMap<Character, String> rules = new HashMap<>();
  rules.put('F', "FF");
  rules.put('B', "BB");
  rules.put(']', "[+F+F+F][-F-F-F]B]");
    
  // Create and return the Lsystem
  return new LSystem(axiom, rules, moveDist, rotateAngle, scaleFactor);
}

LSystem sys3() {
  // initialize turtle variables
  float moveDist = 50;
  float rotateAngle = 45;
  float scaleFactor = 2;
  
  // The intial axiom / input string
  String axiom = "[F++F++F++F++]";
  
  // Create any production rules
  HashMap<Character, String> rules = new HashMap<>();
  rules.put('F', "FF");
  //rules.put('B', "BB");
  rules.put('+', "+F+F+F");
  rules.put('-', "-F-F-F");
  //rules.put(']', "]+");

>>>>>>> 48a9e1b276fa9c001dcb162e8b0b1db4a1ec1542
    
  // Create and return the Lsystem
  return new LSystem(axiom, rules, moveDist, rotateAngle, scaleFactor);
}
