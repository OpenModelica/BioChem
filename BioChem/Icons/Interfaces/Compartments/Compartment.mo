within BioChem.Icons.Interfaces.Compartments;

partial model Compartment
  extends BioChem.Icons.Base;
  annotation(
    Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10}), graphics = {Text(fillColor = {0, 85, 0}, fillPattern = FillPattern.Solid, extent = {{-100, -170}, {100, -120}}, textString = "%name", fontName = "Arial"), Rectangle(lineColor = {0, 0, 127}, fillColor = {0, 170, 255}, fillPattern = FillPattern.Solid, lineThickness = 10, extent = {{-110, -110}, {110, 110}}, radius = 20)}));
end Compartment;
