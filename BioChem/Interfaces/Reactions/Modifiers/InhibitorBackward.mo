within BioChem.Interfaces.Reactions.Modifiers;

partial model InhibitorBackward "Basics for a backward inhibitor in a reaction edge"
  BioChem.Interfaces.Nodes.InhibitorConnector iB1 annotation(
    Placement(transformation(origin = {-5.55112e-16, -90}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {-4.88498e-15, -90}, extent = {{-20, -20}, {20, 20}})));
equation
  iB1.r = 0;
  annotation(
    Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10}), graphics = {Line(points = {{0, -56.25}, {0, -6.25}}, color = {0, 0, 255}, arrow = {Arrow.None, Arrow.Open}, arrowSize = 25)}),
    Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})));
end InhibitorBackward;
