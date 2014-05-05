within BioChem.Interfaces;
package Nodes "Connector interfaces used in the package"
  extends Icons.Library;
  annotation(Documentation(info="<html>
<h1>Nodes</h1>
 <p>
 This package contains connection points used in the <b>BioChem</b> package.<br>
The reaction between two or more substances is described by the molar flow rate between the involved substances. The molar flow rate is typically expressed as a function of the concentration or amount of substance. Therefore the interface or nodes contain not only the molar flow rate and concentration, but also the volume, in order to make it possible to calculate the amount of substance if needed. <br>
The interfaces in the  library are all identical except for the graphics, and the volume variable V. The different graphics are used to indicate if respective substance should be seen as substrate, product, modifier, etc., in a reaction. The variable V  is an output variable in the

<a href=\"Modelica://BioChem.Interfaces.Nodes.SubstanceConnector\">SubstanceConnector</a>


 and an input variable in all the other nodes.
The variables available in each connection point are described below:



</table>
<h3> Variables in nodes </h3>
<table border=\"1\">
<TR><TH>Variable name<TH>Description<TH>Unit
<TR><TD>c<TD>Concentration<TD>mol
<TR><TD>V<TD>Volume<TD>l
<TR><TD>r<TD>Reaction rate<TD>mol/s
</table>


 </p>
 </html>", revisions=""), Icon(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})), Diagram(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})));
  connector SubstrateConnector "Connector between substances and reactions (substrate side of reaction)"
    annotation(Icon(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10}), graphics={Ellipse(lineColor={0,85,127}, fillColor={0,85,127}, fillPattern=FillPattern.Solid, extent={{-100,-100},{100,100}})}), Diagram(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10}), graphics={Rectangle(lineColor={0,85,0}, fillColor={255,255,255}, extent={{-20,-20},{20,20}}),Line(points={{-20,20},{20,-20}}, color={0,85,0}),Line(points={{-20,-20},{20,20}}, color={0,85,0})}));
    BioChem.Units.Concentration c;
    flow BioChem.Units.MolarFlowRate r;
    input BioChem.Units.Volume V;
  end SubstrateConnector;

  connector SubstanceConnector "Connector between substances and reactions"
    annotation(Icon(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10}), graphics={Ellipse(lineColor={0,85,0}, fillColor={0,85,127}, extent={{-100,-100},{100,100}})}), Diagram(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10}), graphics={Rectangle(lineColor={0,85,0}, fillColor={255,255,255}, extent={{-20,-20},{20,20}}),Line(points={{-20,20},{20,-20}}, color={0,85,0}),Line(points={{-20,-20},{20,20}}, color={0,85,0})}));
    BioChem.Units.Concentration c;
    flow BioChem.Units.MolarFlowRate r;
    output BioChem.Units.Volume V;
  end SubstanceConnector;

  connector ProductConnector "Connector between substances and reactions (product side of reaction)"
    annotation(Icon(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10}), graphics={Ellipse(lineColor={0,85,127}, fillColor={255,255,255}, fillPattern=FillPattern.Solid, extent={{-100,-100},{100,100}})}), Diagram(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10}), graphics={Rectangle(lineColor={0,85,0}, fillColor={255,255,255}, extent={{-20,-20},{20,20}}),Line(points={{-20,20},{20,-20}}, color={0,85,0}),Line(points={{-20,-20},{20,20}}, color={0,85,0})}));
    BioChem.Units.Concentration c;
    flow BioChem.Units.MolarFlowRate r;
    input BioChem.Units.Volume V;
  end ProductConnector;

  connector ModifierConnector "Connector between general modifieres and reactions"
    annotation(Diagram(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10}), graphics={Rectangle(lineColor={0,85,0}, fillColor={255,255,255}, extent={{-20,-20},{20,20}}),Line(points={{-20,20},{20,-20}}, color={0,85,0}),Line(points={{-20,-20},{20,20}}, color={0,85,0})}), Icon(coordinateSystem(extent={{-100,-100},{100,100}}, preserveAspectRatio=true, grid={10,10}), graphics={Ellipse(fillColor={255,255,0}, fillPattern=FillPattern.Solid, extent={{-100,-100},{100,100}})}));
    BioChem.Units.Concentration c;
    flow BioChem.Units.MolarFlowRate r;
    input BioChem.Units.Volume V;
  end ModifierConnector;

  connector InhibitorConnector "Connector between inhibitors and reactions"
    annotation(Diagram(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10}), graphics={Rectangle(lineColor={0,85,0}, fillColor={255,255,255}, extent={{-20,-20},{20,20}}),Line(points={{-20,20},{20,-20}}, color={0,85,0}),Line(points={{-20,-20},{20,20}}, color={0,85,0})}), Icon(coordinateSystem(extent={{-100,-100},{100,100}}, preserveAspectRatio=true, grid={10,10}), graphics={Ellipse(fillColor={170,0,0}, fillPattern=FillPattern.Solid, extent={{-100,-100},{100,100}}),Polygon(fillColor={255,255,255}, pattern=LinePattern.None, fillPattern=FillPattern.Solid, points={{-80,10},{-80,-10},{80,-10},{80,10}})}));
    BioChem.Units.Concentration c;
    flow BioChem.Units.MolarFlowRate r;
    input BioChem.Units.Volume V;
  end InhibitorConnector;

  connector ActivatorConnector "Connector between activators and reactions"
    annotation(Diagram(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10}), graphics={Rectangle(lineColor={0,85,0}, fillColor={255,255,255}, extent={{-20,-20},{20,20}}),Line(points={{-20,20},{20,-20}}, color={0,85,0}),Line(points={{-20,-20},{20,20}}, color={0,85,0})}), Icon(coordinateSystem(extent={{-100,-100},{100,100}}, preserveAspectRatio=true, grid={10,10}), graphics={Ellipse(fillColor={0,128,0}, fillPattern=FillPattern.Solid, extent={{-100,-100},{100,100}}),Polygon(fillColor={255,255,255}, pattern=LinePattern.None, fillPattern=FillPattern.Solid, points={{-10,80},{-10,10},{-80,10},{-80,-10},{-10,-10},{-10,-80},{10,-80},{10,-10},{80,-10},{80,10},{10,10},{10,80}})}));
    BioChem.Units.Concentration c;
    flow BioChem.Units.MolarFlowRate r;
    input BioChem.Units.Volume V;
  end ActivatorConnector;

end Nodes;
