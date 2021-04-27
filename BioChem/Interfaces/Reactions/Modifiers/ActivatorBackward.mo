within BioChem.Interfaces.Reactions.Modifiers;

partial model ActivatorBackward "Basics for a backward activator in a reaction edge"
  extends BioChem.Icons.Interfaces.Reactions.Modifiers.ActivatorBackward;
  BioChem.Interfaces.Nodes.ActivatorConnector aB1 annotation(
    Placement(transformation(origin = {-6.66134e-16, -90}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {1.77636e-15, -90}, extent = {{-20, -20}, {20, 20}})));
equation
  aB1.r = 0;
end ActivatorBackward;
