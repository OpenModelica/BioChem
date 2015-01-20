within BioChem;

package Math "Package with mathematical functions"
  extends BioChem.Icons.Library;

  function cot "Cotangent trigonometric function"
    extends BioChem.Icons.Function;
    input Modelica.SIunits.Angle alpha "Input angle";
    output Real y "Output value";
  algorithm
    y := 1 / tan(alpha);
    annotation(Documentation(info = "<html><!--WSMINSERTIONTAGSTART cotTag -->
    <body>
    Cotangent trigonometric function<h4>Syntax</h4>
     <ul><li>cot(u)</li></ul>
    </body>
    <!--WSMINSERTIONTAGEND cotTag --></html>", revisions = ""), Diagram(coordinateSystem(extent = {{-148.5, 105}, {148.5, -105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Icon(coordinateSystem(extent = {{-100.0, -100.0}, {100.0, 100.0}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10}), graphics = {Line(visible = true, origin = {0.0, 70.0}, points = {{0.0, 0.0}, {0.0, 0.0}}, pattern = LinePattern.None, thickness = 0)}));
  end cot;

  function coth "Hyperbolic cotangent trigonometric function"
    extends BioChem.Icons.Function;
    input Modelica.SIunits.Angle alpha "Input angle";
    output Real y "Output value";
  algorithm
    y := 1 / tanh(alpha);
    annotation(Documentation(info = "<html><!--WSMINSERTIONTAGSTART cothTag -->
    <body>
    Hyperbolic cotangent trigonometric function<h4>Syntax</h4>
     <ul><li>coth(alpha)</li></ul>
    </body>
    <!--WSMINSERTIONTAGEND cothTag --></html>", revisions = ""), Diagram(coordinateSystem(extent = {{-148.5, 105}, {148.5, -105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Icon(coordinateSystem(extent = {{-100.0, -100.0}, {100.0, 100.0}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10}), graphics = {Line(visible = true, origin = {0.0, 70.0}, points = {{0.0, 0.0}, {0.0, 0.0}}, pattern = LinePattern.None, thickness = 0)}));
  end coth;

  function csc "Cosecant trigonometric function"
    extends BioChem.Icons.Function;
    input Modelica.SIunits.Angle alpha "Input angle";
    output Real y "Output value";
  algorithm
    y := 1 / sin(alpha);
    annotation(Documentation(info = "<html><!--WSMINSERTIONTAGSTART cscTag -->
    <body>
    Cosecant trigonometric function<h4>Syntax</h4>
     <ul><li>csc(alpha)</li></ul>
    </body>
    <!--WSMINSERTIONTAGEND cscTag --></html>", revisions = ""), Diagram(coordinateSystem(extent = {{-148.5, 105}, {148.5, -105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Icon(coordinateSystem(extent = {{-100.0, -100.0}, {100.0, 100.0}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10}), graphics = {Line(visible = true, origin = {0.0, 70.0}, points = {{0.0, 0.0}, {0.0, 0.0}}, pattern = LinePattern.None, thickness = 0)}));
  end csc;

  function csch "Hyperbolic cosecant trigonometric function"
    extends BioChem.Icons.Function;
    input Modelica.SIunits.Angle alpha "Input angle";
    output Real y "Output value";
  algorithm
    y := 1 / sinh(alpha);
    annotation(Documentation(info = "<html><!--WSMINSERTIONTAGSTART cschTag -->
    <body>
    Hyperbolic cosecant trigonometric function<h4>Syntax</h4>
     <ul><li>csch(alpha)</li></ul>
    </body>
    <!--WSMINSERTIONTAGEND cschTag --></html>", revisions = ""), Diagram(coordinateSystem(extent = {{-148.5, 105}, {148.5, -105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Icon(coordinateSystem(extent = {{-100.0, -100.0}, {100.0, 100.0}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10}), graphics = {Line(visible = true, origin = {0.0, 70.0}, points = {{0.0, 0.0}, {0.0, 0.0}}, pattern = LinePattern.None, thickness = 0)}));
  end csch;

  function factorial "Factorial function, product of all positive integers less than or equal to n"
    extends BioChem.Icons.Function;
    input Integer n "Input value";
    output Integer y "Output value";
  protected
    Integer i;
  algorithm
    y := n;
    i := n;
    while i > 1 loop
      i := i - 1;
      y := y * i;
    end while;
    annotation(Documentation(info = "<html><!--WSMINSERTIONTAGSTART factorialTag -->
    <body>
    Factorial function, product of all positive integers less than or equal to n<h4>Syntax</h4>
     <ul><li>factorial(n)</li></ul>
    </body>
    <!--WSMINSERTIONTAGEND factorialTag --></html>", revisions = ""), Diagram(coordinateSystem(extent = {{-148.5, 105}, {148.5, -105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Icon(coordinateSystem(extent = {{-100.0, -100.0}, {100.0, 100.0}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10}), graphics = {Line(visible = true, origin = {0.0, 70.0}, points = {{0.0, 0.0}, {0.0, 0.0}}, pattern = LinePattern.None, thickness = 0)}));
  end factorial;

  function log10 "Base 10 logarithm (u shall be > 0)"
    extends BioChem.Icons.Function;
    input Real u "Input value";
    output Real y "Output value";
  algorithm
    y := Modelica.Math.log10(u) annotation(Icon(coordinateSystem(extent = {{-100.0, -100.0}, {100.0, 100.0}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
    annotation(Documentation(info = "<html><!--WSMINSERTIONTAGSTART log10Tag -->
    <body>
    Base 10 logarithm.<h4>Syntax</h4>
     <ul><li>log10(u)</li></ul><h4>Limitations</h4>
     <ul><li>u > 0</li></ul>
    </body>
    <!--WSMINSERTIONTAGEND log10Tag --></html>", revisions = ""));
  end log10;

  function piecewise "Piecewise function that corresponds to the SBML piecewise definition"
    extends BioChem.Icons.Function;
    input Real[:] value "Input values in the form {value1,value2,...,valueN,valueN+1}.";
    input Boolean[:] condition "Input conditions in the form {condition1,condition2,...,conditionN}. Not more than one condition is allowed to be true at any given time.";
    output Real y "Output value selected from the list of inputs.";
  protected
    parameter Integer nin = size(condition, 1);
  algorithm
    y := value[nin + 1];
    for i in 1:nin loop
      if condition[i] then
        y := value[i];
      end if;
    end for;
    annotation(Documentation(info = "<html><!--WSMINSERTIONTAGSTART piecewiseTag -->
    <body>
    Piecewise function that corresponds to the SBML piecewise definition<h4>Syntax</h4>
     <ul><li>piecewise(value,condition)</li></ul>Input details:<ul><li>Input values in the form {value1,value2,...,valueN,valueN+1}.</li><li>Input conditions in the form {condition1,condition2,...,conditionN}. Not more than one condition is allowed to be true at any given time.</li></ul>
    </body>
    <!--WSMINSERTIONTAGEND piecewiseTag --></html>", revisions = ""), Diagram(coordinateSystem(extent = {{-148.5, -105.0}, {148.5, 105.0}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Icon(coordinateSystem(extent = {{-100.0, -100.0}, {100.0, 100.0}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10}), graphics = {Line(visible = true, origin = {0.0, 70.0}, points = {{0.0, 0.0}, {0.0, 0.0}}, pattern = LinePattern.None, thickness = 0)}));
  end piecewise;

  function root "Function that gives the nth root of a and corresponds to the SBML root function"
    extends BioChem.Icons.Function;
    input Real n "n'th degree";
    input Real a "Input value";
    output Real y "Output value";
  algorithm
    y := a ^ (1 / n);
    annotation(Documentation(info = "<html><!--WSMINSERTIONTAGSTART rootTag -->
    <body>
    Function that gives the nth root of a and corresponds to the SBML root function<h4>Syntax</h4>
     <ul><li>root(n,a)</li></ul>
    </body>
    <!--WSMINSERTIONTAGEND rootTag --></html>", revisions = ""), Diagram(coordinateSystem(extent = {{-148.5, 105}, {148.5, -105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Icon(coordinateSystem(extent = {{-100.0, -100.0}, {100.0, 100.0}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10}), graphics = {Line(visible = true, origin = {0.0, 70.0}, points = {{0.0, 0.0}, {0.0, 0.0}}, pattern = LinePattern.None, thickness = 0)}));
  end root;

  function sec "Secant trigonometric function"
    extends BioChem.Icons.Function;
    input Modelica.SIunits.Angle alpha "Input angle";
    output Real y "Output value";
  algorithm
    y := 1 / cos(alpha);
    annotation(Documentation(info = "<html><!--WSMINSERTIONTAGSTART secTag -->
    <body>
    Secant trigonometric function<h4>Syntax</h4>
     <ul><li>sec(alpha)</li></ul>
    </body>
    <!--WSMINSERTIONTAGEND secTag --></html>", revisions = ""), Diagram(coordinateSystem(extent = {{-148.5, 105}, {148.5, -105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Icon(coordinateSystem(extent = {{-100.0, -100.0}, {100.0, 100.0}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10}), graphics = {Line(visible = true, origin = {0.0, 70.0}, points = {{0.0, 0.0}, {0.0, 0.0}}, pattern = LinePattern.None, thickness = 0)}));
  end sec;

  function sech "Hyperbolic secant trigonometric function"
    extends BioChem.Icons.Function;
    input Modelica.SIunits.Angle alpha "Input angle";
    output Real y "Output value";
  algorithm
    y := 1 / cosh(alpha);
    annotation(Diagram(coordinateSystem(extent = {{-148.5, 105}, {148.5, -105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Icon(coordinateSystem(extent = {{-100.0, -100.0}, {100.0, 100.0}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10}), graphics = {Line(visible = true, origin = {0.0, 70.0}, points = {{0.0, 0.0}, {0.0, 0.0}}, pattern = LinePattern.None, thickness = 0)}));
  end sech;
  annotation(Diagram(coordinateSystem(extent = {{-148.5, 105}, {148.5, -105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10}), graphics = {Text(visible = true, origin = {15.977, 14.286}, textColor = {26, 118, 164}, extent = {{-105.977, -64.286}, {74.023, 35.714}}, textString = "f(x)", fontName = "Arial")}), Documentation(info = "<html><!--WSMINSERTIONTAGSTART mathTag -->
    <body>
    A number of mathematical functions are used in pathway models. Some of the functions are derived from the Modelica Standard Library while others are defined here.
    </body>
    <!--WSMINSERTIONTAGEND mathTag --></html>", revisions = ""));
end Math;