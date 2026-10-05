String amethystCave = ("Left");
String whisperingWoods = ("Right");
String confrontCreature = ("Yes");
String escapeCreature = ("No");
String knockCabin = ("Knock");
String bargeIn = ("Barge in");
String footPrints = ("");

println("Welcome to my game! Your name is Jake the Warrior and you are currently trapped in a cave with many confusing paths.");
println("After a while of walking, you come across 2 paths. The left path leads into an amethyst cave and the right path leads out of the cave but directly into a thick forest called the Whispering Woods.");
String caveForkOne = Ask.forString("Do you go left into the cave or right into the woods?");
if(caveForkOne.equalsIgnoreCase (amethystCave)) {
  println("You go into the Amethyst Cave and encounter an amethyst creature that looks hostile.");
  String creatureEncounter = Ask.forString("Do you confront the creature?");
  if(creatureEncounter.equalsIgnoreCase (confrontCreature)) {
    println("You get into a fight. If the number is 2, you win. If it is 1, you lose.");
    int(random(1, 2));
  } else if(creatureEncounter.equalsIgnoreCase (escapeCreature)) {
    println("You manage to escape and end up at an old looking cabin that seems abandoned.");
    String cabinEncounter = Ask.forString("Do you knock or barge in?");
    if(cabinEncounter.equalsIgnoreCase (knockCabin)) {
      println("A creature comes to the door as you knock and defeats you once it sees you.");
  } else {
    println("That is not a valid answer.");
  }
} else if(caveForkOne.equalsIgnoreCase (whisperingWoods)) {
  println("You go into the Whispering Woods and notices 2 strange things ahead.");
} else {
  println("That is not a valid answer.");
}
