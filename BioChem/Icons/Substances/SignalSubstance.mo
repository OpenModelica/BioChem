within BioChem.Icons.Substances;

partial class SignalSubstance "Icon for a substance with a concentration not determined by reactions, but by external equations (translated into SBML assignments)"
  extends BioChem.Icons.Base;
  annotation(
    Icon(graphics = {Text(origin = {7.10543e-15, 50}, fillPattern = FillPattern.Solid, extent = {{-100, -150}, {100, -100}}, textString = "%name", fontName = "Arial"), Ellipse(lineColor = {0, 0, 127}, fillColor = {85, 170, 255}, fillPattern = FillPattern.Sphere, extent = {{-50, -50}, {50, 50}})}),
    Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})));
end SignalSubstance;
