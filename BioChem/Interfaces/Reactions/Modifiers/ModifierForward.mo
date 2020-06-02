within BioChem.Interfaces.Reactions.Modifiers;

partial model ModifierForward "Basics for a forward modifier in a reaction edge"
  annotation(Diagram(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})), Icon(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10}), graphics={Line(points={{0,56.25},{0,6.25}}, color={0,0,255}, arrow={Arrow.None,Arrow.Open}, arrowSize=25)}));
  BioChem.Interfaces.Nodes.ModifierConnector mF1 annotation(Placement(transformation(origin={1.11022e-16,90}, extent={{-10,-10},{10,10}}), iconTransformation(origin={-1.5099e-14,90}, extent={{-20,-20},{20,20}})));
equation
  mF1.r=0;
end ModifierForward;
