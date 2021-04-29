within BioChem.Interfaces.Reactions.Modifiers;

partial model ActivatorForward "Basics for a forward activator in a reaction edge"
  extends BioChem.Icons.Interfaces.Reactions.Modifiers.ActivatorBackward;
  BioChem.Interfaces.Nodes.ActivatorConnector aF1 annotation(
    Placement(transformation(origin = {-4.21885e-15, 90}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {-8.88178e-16, 90}, extent = {{-20, -20}, {20, 20}})));
equation
  aF1.r = 0;
end ActivatorForward;
