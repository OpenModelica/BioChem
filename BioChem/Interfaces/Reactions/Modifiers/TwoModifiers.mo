within BioChem.Interfaces.Reactions.Modifiers;

partial model TwoModifiers "Basics for two modifiers in a reaction edge"
  extends BioChem.Icons.Interfaces.Reactions.Modifiers.TwoModifiers;
  BioChem.Interfaces.Nodes.ModifierConnector m2 annotation(
    Placement(transformation(origin = {50, 90}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {50, 90}, extent = {{-20, -20}, {20, 20}})));
  BioChem.Interfaces.Nodes.ModifierConnector m1 annotation(
    Placement(transformation(origin = {-50, 90}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {-50, 90}, extent = {{-20, -20}, {20, 20}})));
equation
  0 = m1.r;
  0 = m2.r;
end TwoModifiers;
