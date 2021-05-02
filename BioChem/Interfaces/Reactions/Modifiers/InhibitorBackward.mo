within BioChem.Interfaces.Reactions.Modifiers;

partial model InhibitorBackward "Basics for a backward inhibitor in a reaction edge"
  extends BioChem.Icons.Interfaces.Reactions.Modifiers.InhibitorBackward;
  BioChem.Interfaces.Nodes.InhibitorConnector iB1 annotation(
    Placement(transformation(origin = {-5.55112e-16, -90}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {-4.88498e-15, -90}, extent = {{-20, -20}, {20, 20}})));
equation
  iB1.r = 0;
end InhibitorBackward;
