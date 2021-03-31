within BioChem.Interfaces.Reactions.Basics;

model FourSubstrates
  BioChem.Interfaces.Nodes.SubstrateConnector s4 annotation(Placement(transformation(origin={-90,-87.5}, extent={{-10,-10},{10,10}}), iconTransformation(origin={-112.5,-87.5}, extent={{-12.5,-12.5},{12.5,12.5}})));
  BioChem.Interfaces.Nodes.SubstrateConnector s2 annotation(Placement(transformation(origin={-90,-35}, extent={{-10,-10},{10,10}}), iconTransformation(origin={-112.5,-37.5}, extent={{-12.5,-12.5},{12.5,12.5}})));
  BioChem.Interfaces.Nodes.SubstrateConnector s3 annotation(Placement(transformation(origin={-90,25}, extent={{-10,-10},{10,10}}), iconTransformation(origin={-112.5,37.5}, extent={{-12.5,-12.5},{12.5,12.5}})));
  BioChem.Interfaces.Nodes.SubstrateConnector s1 annotation(Placement(transformation(origin={-87.5,87.5}, extent={{-10,-10},{10,10}}), iconTransformation(origin={-112.5,87.5}, extent={{-12.5,-12.5},{12.5,12.5}})));
  annotation(Icon(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10}), graphics={Line(points={{-100,87.5},{-62.5,87.5},{-50,0}}, color={170,0,0}, smooth=Smooth.Bezier),Line(points={{-100,-87.5},{-62.5,-87.5},{-50,0}}, color={170,0,0}, smooth=Smooth.Bezier),Line(points={{-100,-37.5},{-62.5,-37.5},{-50,0}}, color={170,0,0}, smooth=Smooth.Bezier),Line(points={{-100,37.5},{-62.5,37.5},{-50,0}}, color={170,0,0}, smooth=Smooth.Bezier)}), Diagram(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})));
end FourSubstrates;
