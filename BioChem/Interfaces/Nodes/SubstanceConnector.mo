within BioChem.Interfaces.Nodes;

connector SubstanceConnector "Connector between substances and reactions"
  BioChem.Units.Concentration c;
  flow BioChem.Units.MolarFlowRate r;
  output BioChem.Units.Volume V;
  annotation(Icon(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10}), graphics={Ellipse(lineColor={0,85,0}, fillColor={0,85,127}, extent={{-100,-100},{100,100}})}), Diagram(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10}), graphics={Rectangle(lineColor={0,85,0}, fillColor={255,255,255}, extent={{-20,-20},{20,20}}),Line(points={{-20,20},{20,-20}}, color={0,85,0}),Line(points={{-20,-20},{20,20}}, color={0,85,0})}));
end SubstanceConnector;
