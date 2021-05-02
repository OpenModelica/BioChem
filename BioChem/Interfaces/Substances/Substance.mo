within BioChem.Interfaces.Substances;

partial model Substance
  extends BioChem.Icons.Interfaces.Substances.Substance;

BioChem.Units.Concentration c( stateSelect=StateSelect.prefer) "Current concentration of substance (mM)";
  BioChem.Units.MolarFlowRate rNet "Net flow rate of substance into the node";
  BioChem.Units.AmountOfSubstance n( stateSelect=StateSelect.prefer) "Number of moles of substance in pool (mol)";
  BioChem.Interfaces.Nodes.SubstanceConnector n1 annotation (Placement(
        transformation(extent={{-10,-10},{10,10}}), iconTransformation(extent={
            {-16,-16},{16,16}})));
protected
  outer BioChem.Units.Volume V "Compartment volume";
equation
  rNet=n1.r;
  c=n1.c;
  V=n1.V;
  c=n/V;
  
  annotation(Documentation(info="<html>
<p>
The base class for all substances.
<p>
Corresponds to SBML species changed by SBML rules and with the <em>boundaryCondition</em> attribute set to true and the <em>constant</em> attribute set to false.
</p>
</html>"));

end Substance;
