within BioChem.Substances;

model BoundarySubstance "Substance with a concentration not determined by reactions, but by events"
  extends BioChem.Icons.Substances.BoundarySubstance;
  extends BioChem.Interfaces.Substances.InputSubstance(n.stateSelect = StateSelect.prefer, c.stateSelect = StateSelect.prefer);
equation
  der(n) = 0;
  annotation(
    Documentation(info = "<html>
<p>
Substance with a concentration not determined by reactions, i.e., the substance is on the <em>boundary</em> of the reaction system.
The concentration of the substance can only be changed by events.
<p>
Corresponds to SBML species not changed by any SBML rules and with either or both of the <em>boundaryCondition</em> and <em>fixed</em> attributes set to true
</p>
</html>"));
end BoundarySubstance;
