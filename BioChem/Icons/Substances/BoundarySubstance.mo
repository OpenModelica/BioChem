within BioChem.Icons.Substances;

partial class BoundarySubstance "Icon for a substance with a concentration not determined by reactions, but by events"
  extends BioChem.Icons.Base; 
  annotation(
    Icon(graphics = {Text(origin = {-1.42109e-14, 50}, fillPattern = FillPattern.Solid, extent = {{-100, -150}, {100, -100}}, textString = "%name", fontName = "Arial"), Ellipse(lineColor = {170, 0, 0}, fillColor = {255, 0, 0}, fillPattern = FillPattern.Sphere, extent = {{-50, -50}, {50, 50}})}));
end BoundarySubstance;
