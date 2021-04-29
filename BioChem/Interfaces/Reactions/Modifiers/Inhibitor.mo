within BioChem.Interfaces.Reactions.Modifiers;

partial model Inhibitor
  extends BioChem.Icons.Interfaces.Reactions.Modifiers.Inhibitor;
  BioChem.Interfaces.Nodes.InhibitorConnector i1 annotation(
    Placement(transformation(origin = {0, 90}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {-9.99201e-15, 90}, extent = {{-20, -20}, {20, 20}})));
equation
  i1.r = 0;
end Inhibitor;
