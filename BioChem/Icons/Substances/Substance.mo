within BioChem.Icons.Substances;

partial class Substance "Icon for Substance with variable concentration"
  extends BioChem.Icons.Base; 
  annotation(
    Icon(graphics = {Text(origin = {7.10543e-15, 50}, fillPattern = FillPattern.Solid, extent = {{-100, -150}, {100, -100}}, textString = "%name", fontName = "Arial"), Ellipse(lineColor = {0, 85, 0}, fillColor = {0, 170, 0}, fillPattern = FillPattern.Sphere, extent = {{-50, -50}, {50, 50}})}));
end Substance;
