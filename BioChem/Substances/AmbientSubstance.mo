within BioChem.Substances;

model AmbientSubstance "Substance used as a reservoir in reactions"
  extends BioChem.Interfaces.Substances.Substance;
equation
  der(n) = 0;
  annotation(
    Documentation(info = "<html>
<p>
Substance used as a reservoir in reactions.
<p>
Corresponds to the empty list of reactants or the empty list of products in an SBML reaction.
</p>
</html>"),
    Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, grid = {10, 10}), graphics = {Text(origin = {1.77636e-15, 50}, fillPattern = FillPattern.Solid, extent = {{-100, -150}, {100, -100}}, textString = "%name", fontName = "Arial"), Line(points = {{-50, -50}, {50, 50}}, thickness = 10)}),
    Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})));
end AmbientSubstance;
