import scala.collection.mutable.ListBuffer

// 1️⃣ Trait with abstract method (not implemented)
trait MyTrait {
  def abstractMethod(x: Int): String
}

// 2️⃣ Wrong override
class Parent {
  def greet(): String = "Hello"
}

class Child extends Parent {
  override def greet(x: Int): String = "Hi"  // wrong signature
}

// 3️⃣ Class not implementing abstract method
class BrokenTrait extends MyTrait  // abstract method not implemented

object AllScalaErrors {

  def main(args: Array[String]): Unit = {

    // 4️⃣ Type mismatch
    val x: Int = "hello"

    // 5️⃣ Undefined variable
    println(notDefinedVar)

    // 6️⃣ Unused variable (warning with -Xlint)
    val unusedValue = 42

    // 7️⃣ Return type mismatch
    def badReturn(): String = {
      123
    }

    // 8️⃣ Missing parameter
    List(1, 2, 3).map

    // 9️⃣ Generic type mismatch
    val list: List[String] = List(1, 2, 3)

    // 🔟 Implicit resolution failure
    implicitly[Ordering[CustomClass]]

    // 1️⃣1️⃣ Pattern match type error
    val num = 10
    num match {
      case "string" => println("Wrong type match")
    }

    // 1️⃣2️⃣ Unchecked match warning
    val anyValue: Any = "hello"
    anyValue match {
      case s: String => println(s)
    }

    // 1️⃣3️⃣ Deprecated API usage
    val oldList = ListBuffer(1,2,3)
    oldList.filter(_ > 1)  // may show deprecation depending on version

    // 1️⃣4️⃣ Dead code
    if (true) {
      return
      println("Unreachable")  // unreachable code
    }

    // 1️⃣5️⃣ Shadowed variable
    val shadow = 10
    {
      val shadow = 20
      println(shadow)
    }

    // 1️⃣6️⃣ Feature warning (postfix operator)
    import scala.language.postfixOps
    val postfixTest = List(1,2,3)
    postfixTest size

    // 1️⃣7️⃣ Syntax error
    if (true) {
      println("Missing brace")

    // Missing closing brace for main
}
}

// 1️⃣8️⃣ Custom class for implicit failure
class CustomClass