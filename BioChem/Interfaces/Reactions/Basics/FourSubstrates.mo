within BioChem.Interfaces.Reactions.Basics;

partial model FourSubstrates
  extends BioChem.Icons.Interfaces.Reactions.Basics.FourSubstrates;
  BioChem.Interfaces.Nodes.SubstrateConnector s4 annotation(Placement(transformation(origin={-90,-87.5}, extent={{-10,-10},{10,10}}), iconTransformation(origin={-112.5,-87.5}, extent={{-12.5,-12.5},{12.5,12.5}})));
  BioChem.Interfaces.Nodes.SubstrateConnector s2 annotation(Placement(transformation(origin={-90,-35}, extent={{-10,-10},{10,10}}), iconTransformation(origin={-112.5,-37.5}, extent={{-12.5,-12.5},{12.5,12.5}})));
  BioChem.Interfaces.Nodes.SubstrateConnector s3 annotation(Placement(transformation(origin={-90,25}, extent={{-10,-10},{10,10}}), iconTransformation(origin={-112.5,37.5}, extent={{-12.5,-12.5},{12.5,12.5}})));
  BioChem.Interfaces.Nodes.SubstrateConnector s1 annotation(Placement(transformation(origin={-87.5,87.5}, extent={{-10,-10},{10,10}}), iconTransformation(origin={-112.5,87.5}, extent={{-12.5,-12.5},{12.5,12.5}})));
end FourSubstrates;
