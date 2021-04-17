within BioChem.Icons.Substances;

model BoundarySubstance "Icon for a substance with a concentration not determined by reactions, but by events"
  extends Icons.Base; 
  annotation(
    Icon(graphics = {Text(origin = {-1.42109e-14, 50}, fillPattern = FillPattern.Solid, extent = {{-100, -150}, {100, -100}}, textString = "%name", fontName = "Arial"), Ellipse(lineColor = {170, 0, 0}, fillColor = {255, 0, 0}, fillPattern = FillPattern.Sphere, extent = {{-50, -50}, {50, 50}})}),
    Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})));
end BoundarySubstance;
