within BioChem.Interfaces.Compartments;

partial model Compartment
  inner BioChem.Units.Volume V(start = 1, stateSelect = StateSelect.prefer) "Compartment volume";
    annotation(
      Documentation(info = "<html>
 <p>
 A partial model describing the basics of a default compartment.
 </p>
 </html>"),
      defaultComponentName = "compartment",
      Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10}), graphics = {Text(fillColor = {0, 85, 0}, fillPattern = FillPattern.Solid, extent = {{-100, -170}, {100, -120}}, textString = "%name", fontName = "Arial"), Rectangle(lineColor = {0, 0, 127}, fillColor = {0, 170, 255}, fillPattern = FillPattern.Solid, lineThickness = 10, extent = {{-110, -110}, {110, 110}}, radius = 20)}),
      Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})));
end Compartment;
