within BioChem.Icons.Compartments;

partial class MainCompartment "Main compartment (constant volume)"
  extends BioChem.Icons.Base;
  annotation(
    Documentation(info = "<html>
<h1>MainCompartment</h1>

<p>
Main compartment model.
</p>
</html>", revisions = ""),
    Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10}), graphics = {Text(fillColor = {0, 85, 0}, fillPattern = FillPattern.Solid, extent = {{-100, -170}, {100, -120}}, textString = "%name", fontName = "Arial"), Rectangle(lineColor = {0, 85, 0}, fillColor = {199, 199, 149}, fillPattern = FillPattern.Solid, lineThickness = 10, extent = {{-110, -110}, {110, 110}}, radius = 20), Text(fillPattern = FillPattern.Solid, extent = {{-82.12, -80}, {80, 80}}, textString = "main", fontName = "Arial", textStyle = {TextStyle.Bold})}));
end MainCompartment;
