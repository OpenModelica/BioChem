within BioChem.Interfaces;
package Substances
  extends Icons.Library;
  partial model Substance "Basics for a substance"
    annotation(Documentation(info="<html>
<p>
The base class for all substances.
<p>
Corresponds to SBML species changed by SBML rules and with the <em>boundaryCondition</em> attribute set to true and the <em>constant</em> attribute set to false.
</p>
</html>"), Icon(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10}), graphics={Ellipse(fillColor={123,152,255}, extent={{-50,-50},{50,50}})}), Diagram(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})));
    BioChem.Units.Concentration c (stateSelect=StateSelect.prefer) "Current concentration of substance (mM)";
    BioChem.Units.MolarFlowRate rNet "Net flow rate of substance into the node";
    BioChem.Units.AmountOfSubstance n (stateSelect=StateSelect.prefer) "Number of moles of substance in pool (mol)";
    BioChem.Interfaces.Nodes.SubstanceConnector n1 annotation(Placement(transformation(extent={{-10,-10},{10,10}}), iconTransformation(extent={{-16,-16},{16,16}})));
  protected
    outer BioChem.Units.Volume V "Compartment volume";
  equation
    rNet=n1.r;
    c=n1.c;
    V=n1.V;
    c=n/V;
  end Substance;

  annotation(Icon(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})), Diagram(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})), Documentation(info="<html>
<h1>Substances</h1>
This package contains partial models of different kinds of nodes needed to represent substances in biological and biochemical systems. The basic attributes corresponding to the properties that are studied during simulations, i.e., the amount and the concentration of the substance, are declared in these partial models.
</html>", revisions=""));
  partial model InputSubstance "Basics for a substance"
    annotation(Documentation(info="<html>
<p>
The base class for all substances.
<p>
Corresponds to SBML species changed by SBML rules and with the <em>boundaryCondition</em> attribute set to true and the <em>constant</em> attribute set to false.
</p>
</html>"), Icon(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10}), graphics={Ellipse(fillColor={123,152,255}, extent={{-50,-50},{50,50}})}), Diagram(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})));
    input BioChem.Units.Concentration c "Current concentration of substance (mM)";
    BioChem.Units.MolarFlowRate rNet "Net flow rate of substance into the node";
    BioChem.Units.AmountOfSubstance n "Number of moles of substance in pool (mol)";
    BioChem.Interfaces.Nodes.SubstanceConnector n1 annotation(Placement(transformation(extent={{-10,-10},{10,10}}), iconTransformation(extent={{-16,-16},{16,16}})));
  protected
    outer BioChem.Units.Volume V "Compartment volume";
  equation
    rNet=n1.r;
    c=n1.c;
    V=n1.V;
    c=n/V;
  end InputSubstance;

end Substances;
