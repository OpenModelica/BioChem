within BioChem.Interfaces.Reactions.Modifiers;

partial model ModifierBackward "Basics for a backward modifier in a reaction edge"
  extends BioChem.Icons.Interfaces.Reactions.Modifiers.ModifierBackward;
  BioChem.Interfaces.Nodes.ModifierConnector mB1 annotation(
    Placement(transformation(origin = {0, -90}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {-6.66134e-15, -90}, extent = {{-20, -20}, {20, 20}})));
equation
  mB1.r = 0;
end ModifierBackward;
