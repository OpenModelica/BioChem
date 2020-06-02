within BioChem.Substances;

model SignalSubstance "Substance with a concentration not determined by reactions, but by external equations (translated into SBML assignments)"
  extends BioChem.Interfaces.Substances.InputSubstance;
  annotation(
    Documentation(info = "<html>
<p>
Substance with a concentration not determined by reactions, instead the substance consentration is regulated by external equations.
<p>
Corresponds to SBML species changed by any SBML rules.
</p>
</html>"),
    Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, grid = {10, 10}), graphics = {Text(origin = {7.10543e-15, 50}, fillPattern = FillPattern.Solid, extent = {{-100, -150}, {100, -100}}, textString = "%name", fontName = "Arial"), Ellipse(lineColor = {0, 0, 127}, fillColor = {85, 170, 255}, fillPattern = FillPattern.Sphere, extent = {{-50, -50}, {50, 50}})}),
    Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})));
end SignalSubstance;
