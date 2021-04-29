within BioChem.Interfaces.Reactions.Modifiers;

partial model Modifier
  extends BioChem.Icons.Interfaces.Reactions.Modifiers.Modifier;
  BioChem.Interfaces.Nodes.ModifierConnector m1 annotation(
    Placement(transformation(origin = {5.55111e-16, 90}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {-3.10862e-15, 90}, extent = {{-20, -20}, {20, 20}})));
equation
  m1.r = 0;
end Modifier;
