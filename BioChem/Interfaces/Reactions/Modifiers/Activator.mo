within BioChem.Interfaces.Reactions.Modifiers;

model Activator "Basics for a forward activator in a reaction edge"
  BioChem.Interfaces.Nodes.ActivatorConnector a1 annotation(
    Placement(transformation(origin = {0, 90}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {-1.28786e-14, 90}, extent = {{-20, -20}, {20, 20}})));
equation
  a1.r = 0;
  annotation(
    Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10}), graphics = {Line(points = {{0, 56.25}, {0, 6.25}}, color = {0, 0, 255}, arrow = {Arrow.None, Arrow.Open}, arrowSize = 25)}),
    Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})));
end Activator;
