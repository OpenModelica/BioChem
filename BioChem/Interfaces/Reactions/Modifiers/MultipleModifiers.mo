within BioChem.Interfaces.Reactions.Modifiers;

model MultipleModifiers
  parameter Integer dimM "number of modifiers";
  BioChem.Interfaces.Nodes.ModifierConnector m[dimM] annotation(
    Placement(transformation(origin = {-2.9976e-15, 90}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {-8.88178e-16, 90}, extent = {{-18.75, -18.75}, {18.75, 18.75}})));
equation
  m.r = fill(0, dimM);
  annotation(
    Icon(coordinateSystem(extent = {{-100.0, -100.0}, {100.0, 100.0}}, preserveAspectRatio = true, grid = {10, 10}), graphics = {Ellipse(lineColor = {255, 255, 0}, fillColor = {255, 255, 127}, fillPattern = FillPattern.Solid, lineThickness = 2, extent = {{-25.0, 65.0}, {25.0, 115.0}}), Line(origin = {0.0, 29.1679}, points = {{0.0, 29.17}, {0.0, -29.17}}, arrow = {Arrow.None, Arrow.Filled}, arrowSize = 30)}),
    Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})));
end MultipleModifiers;
