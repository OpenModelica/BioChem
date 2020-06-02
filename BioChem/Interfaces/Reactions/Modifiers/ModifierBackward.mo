within BioChem.Interfaces.Reactions.Modifiers;

partial model ModifierBackward "Basics for a backward modifier in a reaction edge"
  BioChem.Interfaces.Nodes.ModifierConnector mB1 annotation(
    Placement(transformation(origin = {0, -90}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {-6.66134e-15, -90}, extent = {{-20, -20}, {20, 20}})));
equation
  mB1.r = 0;
  annotation(
    Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})),
    Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10}), graphics = {Line(points = {{0, -56.25}, {0, -6.715}}, color = {0, 0, 255}, arrow = {Arrow.None, Arrow.Open}, arrowSize = 25)}));
end ModifierBackward;
