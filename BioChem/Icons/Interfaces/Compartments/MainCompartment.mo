within BioChem.Icons.Interfaces.Compartments;

partial model MainCompartment
  extends BioChem.Icons.Base;
  extends BioChem.Icons.Interfaces.Compartments.Compartment;
  annotation(
    Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10}), graphics = {Text(fillColor = {0, 85, 0}, fillPattern = FillPattern.Solid, extent = {{-100, -170}, {100, -120}}, textString = "%name", fontName = "Arial"), Text(fillPattern = FillPattern.Solid, extent = {{-82.12, -80}, {80, 80}}, textString = "main", fontName = "Arial", textStyle = {TextStyle.Bold})}));
end MainCompartment;
