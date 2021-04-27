within BioChem.Interfaces.Reactions.Modifiers;

partial model Activator "Basics for a forward activator in a reaction edge"
  extends BioChem.Icons.Interfaces.Reactions.Modifiers.Activator;
  BioChem.Interfaces.Nodes.ActivatorConnector a1 annotation(
    Placement(transformation(origin = {0, 90}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {-1.28786e-14, 90}, extent = {{-20, -20}, {20, 20}})));
equation
  a1.r = 0;
end Activator;
