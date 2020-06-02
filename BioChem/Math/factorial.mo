within BioChem.Math;

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
