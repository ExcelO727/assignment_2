String amethystCave = ("Left");
String whisperingWoods = ("Right");
String confrontCreature = ("Yes");
String escapeCreature = ("No");
String knockCabin = ("Knock");
String bargeIn = ("Barge in");
String followPrints = ("Yes");
String followOrangeGlow = ("No");
String footPrintsCave = ("Yes");
String ancientStatue = ("No");
String grabGoldenKey = ("Yes");
String hiddenPerson = ("No");

println("Welcome to my game! Your name is Jake the Warrior and you are currently trapped in a cave with many confusing paths.");
println("After a while of walking, you come across 2 paths. The left path leads into an amethyst cave and the right path leads out of the cave but directly into a thick forest called the Whispering Woods.");
String caveForkOne = Ask.forString("Do you go left into the cave or right into the woods?");
if (caveForkOne.equalsIgnoreCase (amethystCave)) {
  println("You go into the Amethyst Cave and encounter an amethyst creature that looks hostile.");
  String creatureEncounter = Ask.forString("Do you confront the creature?");
  if (creatureEncounter.equalsIgnoreCase (confrontCreature)) {
    println("You get into a fight. If the number is 2, you win. If it is 1, you lose.");
    int fightEncounter1 = int(random(1, 3));
    println(fightEncounter1);
    if (fightEncounter1 == 2) {
      println("You win!");
    } else {
      println("You lose!");
    }
  } else if (creatureEncounter.equalsIgnoreCase (escapeCreature)) {
    println("You manage to escape and end up at an old looking cabin that seems abandoned.");
    String cabinEncounter = Ask.forString("Do you knock or barge in?");
    if (cabinEncounter.equalsIgnoreCase (knockCabin)) {
      println("A monster comes to the door as you knock and defeats you once it sees you.");
    } else if (cabinEncounter.equalsIgnoreCase (bargeIn)) {
      println("You get the jump on the monster, and get into a fight. If the number is 1, you lose. If it is 2, you win.");
      println("If you win, you take over the cabin and stay there. If you lose, the game ends.");
      int fightEncounter2 = int(random(1, 3));
      println(fightEncounter2);
      if (fightEncounter2 == 2) {
        println("You win!");
      } else {
        println("You lose!");
      }
    } else {
      println("That is not a valid answer.");
    }
  }
} else if (caveForkOne.equalsIgnoreCase (whisperingWoods)) {
  println("You go into the Whispering Woods and notices 2 strange things ahead. A set of footprints leading further into the woods, or a faint orange glow behind the trees.");
  String footPrintsEncounter = Ask.forString("Do you follow the footprints?");
  if (footPrintsEncounter.equalsIgnoreCase (followPrints)) {
    println("You follow the footprints and after a few minutes of walking, you come acorss 2 things: a cave that could possibly lead out of the woods or an ancient statue that is holding an abnormally large sword.");
    String footPrintsFork = Ask.forString("Do you go into the cave?");
    if (footPrintsFork.equalsIgnoreCase(footPrintsCave)) {
      println("The cave ended up having multiple dangerous creatures inhabiting it, and they all attack you when you step in and end the game.");
    } else if (footPrintsFork.equalsIgnoreCase(ancientStatue)) {
      println("As you step closer to the Ancient Statue, it suddenly comes alive and starts attacking you almost as if it is protecting something. It rushes forward and starts fighting you.");
      int fightEncounter3 = int(random(1, 3));
      println(fightEncounter3);
      if (fightEncounter3 == 2) {
        println("You win!");
      } else {
        println("You lose!");
      }
    } else if (footPrintsEncounter.equalsIgnoreCase(followOrangeGlow)) {
      println("As you approach the orange glow, you realize that it is coming from an abandoned campfire. You soon realize that someone is watching you from the shadows, but there is a large golden key infront of you.");
      String goldenKey = Ask.forString("Do you grab the key and run?");
      if (goldenKey.equalsIgnoreCase(grabGoldenKey)) {
        println("You grab the key and start running. Soon, you run into a large wooden door that has the same keyhole shape as the key you are holding. As you unlock the door and step inside, you get sent back home!");
        println("You finished the game!");
      } else if (goldenKey.equalsIgnoreCase(hiddenPerson)) {
        println("You yell out to the person hiding between the trees. As they rush behind you, and attack, you get into a fight.");
        int fightEncounter4 = int(random(1, 3));
        print(fightEncounter4);
        if (fightEncounter4 == 2) {
          println("You win!");
        } else {
          println("You lose!");
        }
      }
    }
  } else {
    println("That is not a valid answer.");
  }
}
