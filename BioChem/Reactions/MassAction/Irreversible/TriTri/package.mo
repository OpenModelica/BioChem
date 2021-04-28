within BioChem.Reactions.MassAction.Irreversible;

package TriTri "A+B+C -> D+E+F reactions"
  extends Icons.Library;

  model Ttifi "Tri-tri irrerversible forward inhibition reaction"
    extends BioChem.Interfaces.Reactions.Tti;
    extends BioChem.Interfaces.Reactions.Modifiers.InhibitorForward;
    parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
  equation
    rr = k1 / iF1.c * s1.c ^ nS1 * s2.c ^ nS2 * s3.c ^ nS3 * s1.V;
  end Ttifi;

  model Ttifafi "Tri-tri irrerversible forward activation, forward inhibition reaction"
    extends BioChem.Interfaces.Reactions.Tti;
    extends BioChem.Interfaces.Reactions.Modifiers.ActivatorForward;
    extends BioChem.Interfaces.Reactions.Modifiers.InhibitorForward;
    parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
  equation
    rr = k1 * aF1.c / iF1.c * s1.c ^ nS1 * s2.c ^ nS2 * s3.c ^ nS3 * s1.V;
  end Ttifafi;

  model Ttifa "Tri-tri irrerversible forward activation reaction"
    extends BioChem.Interfaces.Reactions.Tti;
    extends BioChem.Interfaces.Reactions.Modifiers.ActivatorForward;
    parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
  equation
    rr = k1 * aF1.c * s1.c ^ nS1 * s2.c ^ nS2 * s3.c ^ nS3 * s1.V;
  end Ttifa;

  model Tti "Tri-tri irrerversible reaction"
    extends BioChem.Interfaces.Reactions.Tti;
    parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
  equation
    rr = k1 * s1.c ^ nS1 * s2.c ^ nS2 * s3.c ^ nS3 * s1.V;
  end Tti;
  annotation(
    Documentation(info = "<html>
<p>This package contains models for stoichiometric reactions with three reactants and three products.</p>
</html>"));
end TriTri;
