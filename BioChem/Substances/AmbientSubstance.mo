within BioChem.Substances;

model AmbientSubstance "Icon for a substance used as a reservoir in reactions"
  extends Icons.Substances.AmbientSubstance;
  extends BioChem.Interfaces.Substances.Substance;
equation
  der(n) = 0;
  annotation(
    Documentation(info = "<html>
<p>
Substance used as a reservoir in reactions.
<p>
Corresponds to the empty list of reactants or the empty list of products in an SBML reaction.
</p>
</html>"));

end AmbientSubstance;
