within BioChem;
package Substances "Reaction nodes"
  extends Icons.Library;
  annotation(Documentation(info="<html>
<h1>Substances</h1>
 <p>
 This package contains different types of nodes needed for representing a substance in a biochemical pathway.
 Substances are connected to reactions through connectors placed
 on the rim of the circle representing the substance.<br>
The substance models are specified by extending the partial models of substance nodes in
<a href=\"Modelica://BioChem.Interfaces.Substances\">Substances</a>
 and adding additional attributes and equations.
The
<a href=\"Modelica://BioChem.Substances.Substance\">Substances</a>

 model is used when the concentration in a substance node is allowed to change without restrictions during a simulation, while

<a href=\"Modelica://BioChem.Substances.BoundarySubstance\">BoundarySubstances</a>
 is used when the concentration can only be changed using events. This correspond to species with the fixed or boundary attribute set in SBML.<br>
The
<a href=\"Modelica://BioChem.Substances.AmbientSubstance\">AmbientSubstance</a>
 is a substance used as a reservoir in reactions. This corresponds to the empty list of reactants or the empty list of products in an SBML reaction.
When the concentration is not determined by reactions, the

<a href=\"Modelica://BioChem.Substances.SignalSubstance\">SignalSubstance</a>
 model is used. Then the substance concentration is regulated by external equations, and it  corresponds to SBML species changed by any SBML rules.
 </p>
<a name=\"fig1\"></a>
<img src=\"modelica://BioChem/Resources/Images/Substance.png\" alt=\"Fig1: Substance\">
</html></html>", revisions=""), Icon(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10}), graphics={Ellipse(origin={-10,-50}, lineColor={0,56,0}, fillColor={0,85,0}, fillPattern=FillPattern.Sphere, extent={{-60,-20},{-20,20}}),Ellipse(origin={38,-10}, lineColor={100,100,0}, fillColor={255,255,0}, fillPattern=FillPattern.Sphere, extent={{-28,-60},{12,-20}}),Ellipse(origin={-30.0032,-2.75056}, lineColor={0,0,71}, fillColor={0,0,127}, fillPattern=FillPattern.Sphere, extent={{0.0032,-13.4697},{40,26.5303}})}), Diagram(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})));
  model Substance "Substance with variable concentration"
    annotation(Documentation(info="<html>
 <p>
 A substance with variable concentration.
 </p>
 </html>"), Icon(coordinateSystem(extent={{-100,-100},{100,100}}, preserveAspectRatio=true, grid={10,10}), graphics={Text(origin={7.10543e-15,50}, fillPattern=FillPattern.Solid, extent={{-100,-150},{100,-100}}, textString="%name", fontName="Arial"),Ellipse(lineColor={0,85,0}, fillColor={0,170,0}, fillPattern=FillPattern.Sphere, extent={{-50,-50},{50,50}})}), Diagram(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})));
    extends BioChem.Interfaces.Substances.Substance;
  equation
    der(n)=rNet;
  end Substance;

  model BoundarySubstance "Substance with a concentration not determined by reactions, but by events"
    annotation(Documentation(info="<html>
<p>
Substance with a concentration not determined by reactions, i.e., the substance is on the <em>boundary</em> of the reaction system.
The concentration of the substance can only be changed by events.
<p>
Corresponds to SBML species not changed by any SBML rules and with either or both of the <em>boundaryCondition</em> and <em>fixed</em> attributes set to true
</p>
</html>"), Icon(coordinateSystem(extent={{-100,-100},{100,100}}, preserveAspectRatio=true, grid={10,10}), graphics={Text(origin={-1.42109e-14,50}, fillPattern=FillPattern.Solid, extent={{-100,-150},{100,-100}}, textString="%name", fontName="Arial"),Ellipse(lineColor={170,0,0}, fillColor={255,0,0}, fillPattern=FillPattern.Sphere, extent={{-50,-50},{50,50}})}), Diagram(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})));
    extends BioChem.Interfaces.Substances.InputSubstance(n.stateSelect=StateSelect.prefer,c.stateSelect=StateSelect.prefer);
  equation
    der(n)=0;
  end BoundarySubstance;

  model AmbientSubstance "Substance used as a reservoir in reactions"
    annotation(Documentation(info="<html>
<p>
Substance used as a reservoir in reactions.
<p>
Corresponds to the empty list of reactants or the empty list of products in an SBML reaction.
</p>
</html>"), Icon(coordinateSystem(extent={{-100,-100},{100,100}}, preserveAspectRatio=true, grid={10,10}), graphics={Text(origin={1.77636e-15,50}, fillPattern=FillPattern.Solid, extent={{-100,-150},{100,-100}}, textString="%name", fontName="Arial"),Line(points={{-50,-50},{50,50}}, thickness=10)}), Diagram(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})));
    extends BioChem.Interfaces.Substances.Substance;
  equation
    der(n)=0;
  end AmbientSubstance;

  model SignalSubstance "Substance with a concentration not determined by reactions, but by external equations (translated into SBML assignments)"
    annotation(Documentation(info="<html>
<p>
Substance with a concentration not determined by reactions, instead the substance consentration is regulated by external equations.
<p>
Corresponds to SBML species changed by any SBML rules.
</p>
</html>"), Icon(coordinateSystem(extent={{-100,-100},{100,100}}, preserveAspectRatio=true, grid={10,10}), graphics={Text(origin={7.10543e-15,50}, fillPattern=FillPattern.Solid, extent={{-100,-150},{100,-100}}, textString="%name", fontName="Arial"),Ellipse(lineColor={0,0,127}, fillColor={85,170,255}, fillPattern=FillPattern.Sphere, extent={{-50,-50},{50,50}})}), Diagram(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})));
    extends BioChem.Interfaces.Substances.InputSubstance;
  end SignalSubstance;

end Substances;
