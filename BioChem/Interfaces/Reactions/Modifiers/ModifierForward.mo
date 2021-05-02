within BioChem.Interfaces.Reactions.Modifiers;

partial model ModifierForward "Basics for a forward modifier in a reaction edge"
  extends BioChem.Icons.Interfaces.Reactions.Modifiers.ModifierForward;
  BioChem.Interfaces.Nodes.ModifierConnector mF1 annotation(Placement(transformation(origin={1.11022e-16,90}, extent={{-10,-10},{10,10}}), iconTransformation(origin={-1.5099e-14,90}, extent={{-20,-20},{20,20}})));
equation
  mF1.r=0;
end ModifierForward;
