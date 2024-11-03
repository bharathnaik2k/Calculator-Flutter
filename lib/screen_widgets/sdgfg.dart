
class _HomeScreenState extends State<HomeScreen> {
  // int
  var input;
  var output;

  TextEditingController input1 = TextEditingController();
  TextEditingController input2 = TextEditingController();

  inputTeak(var value) {
    if (input1.text.isEmpty) {
    
        input1.text = value;
    
    } else {}
  }

  // void equalPressed() {
  //   String finaluserinput = userInput;
  //   finaluserinput = userInput.replaceAll('x', '*');

  //   Parser p = Parser();
  //   Expression exp = p.parse(finaluserinput);
  //   ContextModel cm = ContextModel();
  //   double eval = exp.evaluate(EvaluationType.REAL, cm);
  //   answer = eval.toString();
  // }