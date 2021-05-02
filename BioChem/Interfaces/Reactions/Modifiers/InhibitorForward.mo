within BioChem.Interfaces.Reactions.Modifiers;

partial model InhibitorForward "Basics for a forward inhibitor in a reaction edge"
  extends BioChem.Icons.Interfaces.Reactions.Modifiers.InhibitorForward;
  BioChem.Interfaces.Nodes.InhibitorConnector iF1 annotation(
    Placement(transformation(origin = {-2.66454e-15, 90}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {1.06581e-14, 90}, extent = {{-20, -20}, {20, 20}})));
equation
  iF1.r = 0;
end InhibitorForward;
