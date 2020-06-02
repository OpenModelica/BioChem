within BioChem.Substances;

model BoundarySubstance "Substance with a concentration not determined by reactions, but by events"
  extends BioChem.Interfaces.Substances.InputSubstance(n.stateSelect = StateSelect.prefer, c.stateSelect = StateSelect.prefer);
equation
  der(n) = 0;
  annotation(
    Documentation(info = "<html>
<p>
Substance with a concentration not determined by reactions, i.e., the substance is on the <em>boundary</em> of the reaction system.
The concentration of the substance can only be changed by events.
<p>
Corresponds to SBML species not changed by any SBML rules and with either or both of the <em>boundaryCondition</em> and <em>fixed</em> attributes set to true
</p>
</html>"),
    Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, grid = {10, 10}), graphics = {Text(origin = {-1.42109e-14, 50}, fillPattern = FillPattern.Solid, extent = {{-100, -150}, {100, -100}}, textString = "%name", fontName = "Arial"), Ellipse(lineColor = {170, 0, 0}, fillColor = {255, 0, 0}, fillPattern = FillPattern.Sphere, extent = {{-50, -50}, {50, 50}})}),
    Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})));
end BoundarySubstance;
