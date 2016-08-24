mport scala.util.parsing.combinator._

/**
  * Created by lemeshea on 8/24/2016.
  */
object Parser1 extends RegexParsers {
  val forKW = "for".ignoreCase

  def expr = forKW+

  def main(args: Array[String]) {
    println(Parser1.parseAll(expr, "fOr For FOR for"))
  }

  class MyRichString(str: String) {
    def ignoreCase: Parser[String] = ("""(?i)\Q""" + str + """\E""").r
  }
  implicit def pimpString(str: String): MyRichString = new MyRichString(str)
}
