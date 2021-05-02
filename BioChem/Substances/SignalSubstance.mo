within BioChem.Substances;

model SignalSubstance "Icon for a substance with a concentration not determined by reactions, but by external equations (translated into SBML assignments)"
  extends BioChem.Icons.Substances.SignalSubstance;
  extends BioChem.Interfaces.Substances.InputSubstance;
  annotation(
    Documentation(info = "<html>
<p>
Substance with a concentration not determined by reactions, instead the substance consentration is regulated by external equations.
<p>
Corresponds to SBML species changed by any SBML rules.
</p>
</html>"));
end SignalSubstance;
