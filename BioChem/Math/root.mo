within BioChem.Math;

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
