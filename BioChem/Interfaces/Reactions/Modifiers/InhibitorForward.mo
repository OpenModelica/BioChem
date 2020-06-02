within BioChem.Interfaces.Reactions.Modifiers;

partial model InhibitorForward "Basics for a forward inhibitor in a reaction edge"
  BioChem.Interfaces.Nodes.InhibitorConnector iF1 annotation(
    Placement(transformation(origin = {-2.66454e-15, 90}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {1.06581e-14, 90}, extent = {{-20, -20}, {20, 20}})));
equation
  iF1.r = 0;
  annotation(
    Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10}), graphics = {Line(points = {{0, 56.25}, {0, 6.25}}, color = {0, 0, 255}, arrow = {Arrow.None, Arrow.Open}, arrowSize = 25)}),
    Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})));
end InhibitorForward;
