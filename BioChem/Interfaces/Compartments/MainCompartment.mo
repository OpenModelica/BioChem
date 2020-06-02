within BioChem.Interfaces.Compartments;

partial model MainCompartment
  extends BioChem.Interfaces.Compartments.Compartment;
  annotation(
    Documentation(info = "<html>
<p>
Main compartment model.
</p>
</html>"),
    Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10}), graphics = {Text(fillColor = {0, 85, 0}, fillPattern = FillPattern.Solid, extent = {{-100, -170}, {100, -120}}, textString = "%name", fontName = "Arial"), Text(fillPattern = FillPattern.Solid, extent = {{-82.12, -80}, {80, 80}}, textString = "main", fontName = "Arial", textStyle = {TextStyle.Bold})}),
    Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})));
end MainCompartment;
