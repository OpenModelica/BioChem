within BioChem.Math;

function cot "Cotangent trigonometric function"
  input Modelica.SIunits.Angle alpha "input angle";
  output Real y "output value";
algorithm
  y := 1 / tan(alpha);
  annotation(
    Diagram(coordinateSystem(extent = {{-148.5, 105}, {148.5, -105}}, preserveAspectRatio = true, grid = {10, 10})),
    Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10}), graphics = {Text(fillPattern = FillPattern.Solid, extent = {{-100, -100}, {100, 100}}, textString = "cot( )", fontName = "Arial")}));
end cot;
