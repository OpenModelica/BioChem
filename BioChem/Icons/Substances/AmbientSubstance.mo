within BioChem.Icons.Substances;

model AmbientSubstance "Substance used as a reservoir in reactions"
 extends Icons.Base;
  annotation(
    Icon(graphics = {Text(origin = {1.77636e-15, 50}, fillPattern = FillPattern.Solid, extent = {{-100, -150}, {100, -100}}, textString = "%name", fontName = "Arial"), Line(points = {{-50, -50}, {50, 50}}, thickness = 10)}));
end AmbientSubstance;
