within BioChem;

package Math
  extends Icons.Library;
  function log10 = Modelica.Math.log10 annotation(
    Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})),
    Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})));

  function factorial "factorial function, product of all positive integers less than or equal to n"
    input Integer n "input value";
    output Integer y "output value";
  protected
    Integer i;
  algorithm
    y := n;
    i := n;
    while i > 1 loop
      i := i - 1;
      y := y * i;
    end while;
    annotation(
      Diagram(coordinateSystem(extent = {{-148.5, 105}, {148.5, -105}}, preserveAspectRatio = true, grid = {10, 10})),
      Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10}), graphics = {Text(fillPattern = FillPattern.Solid, extent = {{-100, -100}, {100, 100}}, textString = "n!", fontName = "Arial")}));
  end factorial;

  function sec "secant trigonometric function"
    input Modelica.Units.SI.Angle alpha "input angle";
    output Real y "output value";
  algorithm
    y := 1 / cos(alpha);
    annotation(
      Diagram(coordinateSystem(extent = {{-148.5, 105}, {148.5, -105}}, preserveAspectRatio = true, grid = {10, 10})),
      Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10}), graphics = {Text(fillPattern = FillPattern.Solid, extent = {{-100, -100}, {100, 100}}, textString = "sec( )", fontName = "Arial")}));
  end sec;

  function cot "Cotangent trigonometric function"
    input Modelica.Units.SI.Angle alpha "input angle";
    output Real y "output value";
  algorithm
    y := 1 / tan(alpha);
    annotation(
      Diagram(coordinateSystem(extent = {{-148.5, 105}, {148.5, -105}}, preserveAspectRatio = true, grid = {10, 10})),
      Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10}), graphics = {Text(fillPattern = FillPattern.Solid, extent = {{-100, -100}, {100, 100}}, textString = "cot( )", fontName = "Arial")}));
  end cot;

  function csc "cosecant trigonometric function"
    input Modelica.Units.SI.Angle alpha "input angle";
    output Real y "output value";
  algorithm
    y := 1 / sin(alpha);
    annotation(
      Diagram(coordinateSystem(extent = {{-148.5, 105}, {148.5, -105}}, preserveAspectRatio = true, grid = {10, 10})),
      Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10}), graphics = {Text(fillPattern = FillPattern.Solid, extent = {{-100, -100}, {100, 100}}, textString = "csc( )", fontName = "Arial")}));
  end csc;

  function sech "hyperbolic secant trigonometric function"
    input Modelica.Units.SI.Angle alpha "input angle";
    output Real y "output value";
  algorithm
    y := 1 / cosh(alpha);
    annotation(
      Diagram(coordinateSystem(extent = {{-148.5, 105}, {148.5, -105}}, preserveAspectRatio = true, grid = {10, 10})),
      Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10}), graphics = {Text(fillPattern = FillPattern.Solid, extent = {{-100, -100}, {100, 100}}, textString = "sech( )", fontName = "Arial")}));
  end sech;

  function csch "hyperbolic cosecant trigonometric function"
    input Modelica.Units.SI.Angle alpha "input angle";
    output Real y "output value";
  algorithm
    y := 1 / sinh(alpha);
    annotation(
      Diagram(coordinateSystem(extent = {{-148.5, 105}, {148.5, -105}}, preserveAspectRatio = true, grid = {10, 10})),
      Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10}), graphics = {Text(fillPattern = FillPattern.Solid, extent = {{-100, -100}, {100, 100}}, textString = "csch( )", fontName = "Arial")}));
  end csch;

  function coth "hyperbolic cotangent trigonometric function"
    input Modelica.Units.SI.Angle alpha "input angle";
    output Real y "output value";
  algorithm
    y := 1 / tanh(alpha);
    annotation(
      Diagram(coordinateSystem(extent = {{-148.5, 105}, {148.5, -105}}, preserveAspectRatio = true, grid = {10, 10})),
      Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10}), graphics = {Text(fillPattern = FillPattern.Solid, extent = {{-100, -100}, {100, 100}}, textString = "coth( )", fontName = "Arial")}));
  end coth;

  function root
    input Real n "degree";
    input Real a "value";
    output Real y "output value";
  algorithm
    y := a ^ (1 / n);
    annotation(
      Diagram(coordinateSystem(extent = {{-148.5, 105}, {148.5, -105}}, preserveAspectRatio = true, grid = {10, 10})),
      Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10}), graphics = {Text(fillPattern = FillPattern.Solid, extent = {{-100, -100}, {100, 100}}, textString = "root", fontName = "Arial")}));
  end root;

  function piecewise "Piecewise function that corresponds to the SBML piecewice definition"
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
    annotation(
      Diagram(coordinateSystem(extent = {{-148.5, -105.0}, {148.5, 105.0}}, preserveAspectRatio = true, grid = {10, 10})),
      Icon(coordinateSystem(extent = {{-100.0, -100.0}, {100.0, 100.0}}, preserveAspectRatio = true, grid = {10, 10}), graphics = {Text(origin = {0.0, -0.0}, fillPattern = FillPattern.Solid, extent = {{-100.0, -30.0}, {100.0, 30.0}}, textString = "piecewise()", fontName = "Arial")}));
  end piecewise;
  annotation(
    Diagram(coordinateSystem(extent = {{-148.5, 105}, {148.5, -105}}, preserveAspectRatio = true, grid = {10, 10})),
    Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10}), graphics = {Text(origin = {1.40855, -8.72502}, fillPattern = FillPattern.Solid, extent = {{-81.4085, -69.705}, {56.8628, 38.725}}, textString = "f(x)", fontName = "Arial")}),
    Documentation(info = "<html>
<h1>Math</h1>
A number of mathematical functions are used in pathway models. Some of these can be found in

<a href=\"Modelica://Modelica.Math\">Modelica.Math</a>

while others have been added in this package.
<br>
<img src=\"modelica://BioChem/Resources/Images/Math.png\" >
<br>


</html>", revisions = ""));
end Math;
