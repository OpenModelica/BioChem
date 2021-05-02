within BioChem.Reactions.MassAction.Irreversible;

package UniTri "A -> B+C+D reactions"
  extends BioChem.Icons.Library;

  model Utifi "Uni-tri irrerversible forward inhibition reaction"
    extends BioChem.Interfaces.Reactions.Uti;
    extends BioChem.Interfaces.Reactions.Modifiers.InhibitorForward;
    parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
  equation
    rr = k1 / iF1.c * s1.c ^ nS1 * s1.V;
  end Utifi;

  model Utifafi "Uni-tri irrerversible forward activation, forward inhibition reaction"
    extends BioChem.Interfaces.Reactions.Uti;
    extends BioChem.Interfaces.Reactions.Modifiers.ActivatorForward;
    extends BioChem.Interfaces.Reactions.Modifiers.InhibitorForward;
    parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
  equation
    rr = k1 * aF1.c / iF1.c * s1.c ^ nS1 * s1.V;
  end Utifafi;

  model Utifa "Uni-tri irrerversible forward activation reaction"
    extends BioChem.Interfaces.Reactions.Uti;
    extends BioChem.Interfaces.Reactions.Modifiers.ActivatorForward;
    parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
  equation
    rr = k1 * aF1.c * s1.c ^ nS1 * s1.V;
  end Utifa;

  model Uti "Uni-tri irrerversible reaction"
    extends BioChem.Interfaces.Reactions.Uti;
    parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
  equation
    rr = k1 * s1.c ^ nS1 * s1.V;
  end Uti;
  annotation(
    Documentation(info = "<html>
<p>This package contains models for stoichiometric reactions with one reactant and three products.</p>
</html>"));
end UniTri;
