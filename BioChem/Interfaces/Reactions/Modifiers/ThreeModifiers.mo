within BioChem.Interfaces.Reactions.Modifiers;

partial model ThreeModifiers "Basics for three modifiers in a reaction edge"
  BioChem.Interfaces.Nodes.ModifierConnector m1 annotation(
    Placement(transformation(origin = {-50, 90}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {-50, 90}, extent = {{-20, -20}, {20, 20}})));
  BioChem.Interfaces.Nodes.ModifierConnector m2 annotation(
    Placement(transformation(origin = {-3.33065e-16, 90}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {1.11022e-15, 90}, extent = {{-20, -20}, {20, 20}})));
  BioChem.Interfaces.Nodes.ModifierConnector m3 annotation(
    Placement(transformation(origin = {50, 90}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {50, 90}, extent = {{-20, -20}, {20, 20}})));
equation
  0 = m1.r;
  0 = m2.r;
  0 = m3.r;
  annotation(
    Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10}), graphics = {Line(points = {{0, 56.25}, {0, 6.25}}, color = {0, 0, 255}, arrow = {Arrow.None, Arrow.Open}, arrowSize = 25)}),
    Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})));
end ThreeModifiers;
