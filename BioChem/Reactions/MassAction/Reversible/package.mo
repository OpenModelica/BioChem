within BioChem.Reactions.MassAction;

package Reversible "Reversible reactions"
  extends BioChem.Icons.Library;

  package UniUni "A <-> B reactions"
    extends BioChem.Icons.Library;

    model Uurfibi "Uni-uni reversible forward inhibition, backward inhibition reaction"
      extends BioChem.Interfaces.Reactions.Uur;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorBackward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backwards reaction coefficient for the reaction";
    equation
      rr = k1 / iF1.c * s1.c ^ nS1 * s1.V - k2 / iB1.c * p1.c ^ nP1 * p1.V;
    end Uurfibi;

    model Uurfibabi "Uni-uni reversible forward inhibition, backward activation, backward inhibition reaction"
      extends BioChem.Interfaces.Reactions.Uur;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorBackward;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorBackward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backwards reaction coefficient for the reaction";
    equation
      rr = k1 / iF1.c * s1.c ^ nS1 * s1.V - k2 * aB1.c / iB1.c * p1.c ^ nP1 * p1.V;
    end Uurfibabi;

    model Uurfiba "Uni-uni reversible forward inhibition, backward activation reaction"
      extends BioChem.Interfaces.Reactions.Uur;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorBackward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backwards reaction coefficient for the reaction";
    equation
      rr = k1 / iF1.c * s1.c ^ nS1 * s1.V - k2 * aB1.c * p1.c ^ nP1 * p1.V;
    end Uurfiba;

    model Uurfi "Uni-uni reversible forward inhibition reaction"
      extends BioChem.Interfaces.Reactions.Uur;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorForward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backwards reaction coefficient for the reaction";
    equation
      rr = k1 / iF1.c * s1.c ^ nS1 * s1.V - k2 * p1.c ^ nP1 * p1.V;
    end Uurfi;

    model Uurfafibi "Uni-uni reversible forward activation, forward inhibition, backward inhibition reaction"
      extends BioChem.Interfaces.Reactions.Uur;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorBackward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backwards reaction coefficient for the reaction";
    equation
      rr = k1 * aF1.c / iF1.c * s1.c ^ nS1 * s1.V - k2 / iB1.c * p1.c ^ nP1 * p1.V;
    end Uurfafibi;

    model Uurfafibabi "Uni-uni reversible forward activation, forward inhibition, backward activation, backward inhibition reaction"
      extends BioChem.Interfaces.Reactions.Uur;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorBackward;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorBackward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backwards reaction coefficient for the reaction";
    equation
      rr = k1 * aF1.c / iF1.c * s1.c ^ nS1 * s1.V - k2 * aB1.c / iB1.c * p1.c ^ nP1 * p1.V;
    end Uurfafibabi;

    model Uurfafiba "Uni-uni reversible forward activation, forward inhibition, backward activation reaction"
      extends BioChem.Interfaces.Reactions.Uur;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorBackward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backwards reaction coefficient for the reaction";
    equation
      rr = k1 * aF1.c / iF1.c * s1.c ^ nS1 * s1.V - k2 * aB1.c * p1.c ^ nP1 * p1.V;
    end Uurfafiba;

    model Uurfafi "Uni-uni reversible forward activation, forward inhibition reaction"
      extends BioChem.Interfaces.Reactions.Uur;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorForward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backwards reaction coefficient for the reaction";
    equation
      rr = k1 * aF1.c / iF1.c * s1.c ^ nS1 * s1.V - k2 * p1.c ^ nP1 * p1.V;
    end Uurfafi;

    model Uurfabi "Uni-uni reversible forward activation, backward inhibition reaction"
      extends BioChem.Interfaces.Reactions.Uur;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorBackward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backwards reaction coefficient for the reaction";
    equation
      rr = k1 * aF1.c * s1.c ^ nS1 * s1.V - k2 / iB1.c * p1.c ^ nP1 * p1.V;
    end Uurfabi;

    model Uurfababi "Uni-uni reversible forward activation, backward activation, backward inhibition reaction"
      extends BioChem.Interfaces.Reactions.Uur;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorBackward;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorBackward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backwards reaction coefficient for the reaction";
    equation
      rr = k1 * aF1.c * s1.c ^ nS1 * s1.V - k2 * aB1.c / iB1.c * p1.c ^ nP1 * p1.V;
    end Uurfababi;

    model Uurfaba "Uni-uni reversible forward activation, backward activation reaction"
      extends BioChem.Interfaces.Reactions.Uur;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorBackward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backwards reaction coefficient for the reaction";
    equation
      rr = k1 * aF1.c * s1.c ^ nS1 * s1.V - k2 * aB1.c * p1.c ^ nP1 * p1.V;
    end Uurfaba;

    model Uurfa "Uni-uni reversible forward activation reaction"
      extends BioChem.Interfaces.Reactions.Uur;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorForward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backwards reaction coefficient for the reaction";
    equation
      rr = k1 * aF1.c * s1.c ^ nS1 * s1.V - k2 * p1.c ^ nP1 * p1.V;
    end Uurfa;

    model Uurbi "Uni-uni reversible backward inhibition reaction"
      extends BioChem.Interfaces.Reactions.Uur;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorBackward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backwards reaction coefficient for the reaction";
    equation
      rr = k1 * s1.c ^ nS1 * s1.V - k2 / iB1.c * p1.c ^ nP1 * p1.V;
    end Uurbi;

    model Uurbabi "Uni-uni reversible backward activation, backward inhibition reaction"
      extends BioChem.Interfaces.Reactions.Uur;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorBackward;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorBackward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backwards reaction coefficient for the reaction";
    equation
      rr = k1 * s1.c ^ nS1 * s1.V - k2 * aB1.c / iB1.c * p1.c ^ nP1 * p1.V;
    end Uurbabi;

    model Uurba "Uni-uni reversible backward activation reaction"
      extends BioChem.Interfaces.Reactions.Uur;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorBackward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backwards reaction coefficient for the reaction";
    equation
      rr = k1 * s1.c ^ nS1 * s1.V - k2 * aB1.c * p1.c ^ nP1 * p1.V;
    end Uurba;

    model Uur "Uni-uni reversible reaction"
      extends BioChem.Interfaces.Reactions.Uur;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backwards reaction coefficient for the reaction";
    equation
      rr = k1 * s1.c ^ nS1 * s1.V - k2 * p1.c ^ nP1 * p1.V;
    end Uur;
    annotation(
      Documentation(info = "<html>
 <p>This package contains models for stoichiometric reactions with one reactant and one product.</p>
 </html>"));
  end UniUni;

  package UniTri "A <-> B+C+D reactions"
    extends BioChem.Icons.Library;

    model Utrfibi "Uni-tri reversible forward inhibition, backward inhibition reaction"
      extends BioChem.Interfaces.Reactions.Utr;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorBackward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backwards reaction coefficient for the reaction";
    equation
      rr = k1 / iF1.c * s1.c ^ nS1 * s1.V - k2 / iB1.c * p1.c ^ nP1 * p2.c ^ nP2 * p3.c ^ nP3 * p1.V;
    end Utrfibi;

    model Utrfibabi "Uni-tri reversible forward inhibition, backward activation, backward inhibition reaction"
      extends BioChem.Interfaces.Reactions.Utr;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorBackward;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorBackward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backwards reaction coefficient for the reaction";
    equation
      rr = k1 / iF1.c * s1.c ^ nS1 * s1.V - k2 * aB1.c / iB1.c * p1.c ^ nP1 * p2.c ^ nP2 * p3.c ^ nP3 * p1.V;
    end Utrfibabi;

    model Utrfiba "Uni-tri reversible forward inhibition, backward activation reaction"
      extends BioChem.Interfaces.Reactions.Utr;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorBackward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backwards reaction coefficient for the reaction";
    equation
      rr = k1 / iF1.c * s1.c ^ nS1 * s1.V - k2 * aB1.c * p1.c ^ nP1 * p2.c ^ nP2 * p3.c ^ nP3 * p1.V;
    end Utrfiba;

    model Utrfi "Uni-tri reversible forward inhibition reaction"
      extends BioChem.Interfaces.Reactions.Utr;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorForward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backwards reaction coefficient for the reaction";
    equation
      rr = k1 / iF1.c * s1.c ^ nS1 * s1.V - k2 * p1.c ^ nP1 * p2.c ^ nP2 * p3.c ^ nP3 * p1.V;
    end Utrfi;

    model Utrfafibi "Uni-tri reversible forward activation, forward inhibition, backward inhibition reaction"
      extends BioChem.Interfaces.Reactions.Utr;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorBackward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backwards reaction coefficient for the reaction";
    equation
      rr = k1 * aF1.c / iF1.c * s1.c ^ nS1 * s1.V - k2 / iB1.c * p1.c ^ nP1 * p2.c ^ nP2 * p3.c ^ nP3 * p1.V;
    end Utrfafibi;

    model Utrfafibabi "Uni-tri reversible forward activation, forward inhibition, backward activation, backward inhibition reaction"
      extends BioChem.Interfaces.Reactions.Utr;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorBackward;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorBackward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backwards reaction coefficient for the reaction";
    equation
      rr = k1 * aF1.c / iF1.c * s1.c ^ nS1 * s1.V - k2 * aB1.c / iB1.c * p1.c ^ nP1 * p2.c ^ nP2 * p3.c ^ nP3 * p1.V;
    end Utrfafibabi;

    model Utrfafiba "Uni-tri reversible forward activation, forward inhibition, backward activation reaction"
      extends BioChem.Interfaces.Reactions.Utr;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorBackward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backwards reaction coefficient for the reaction";
    equation
      rr = k1 * aF1.c / iF1.c * s1.c ^ nS1 * s1.V - k2 * aB1.c * p1.c ^ nP1 * p2.c ^ nP2 * p3.c ^ nP3 * p1.V;
    end Utrfafiba;

    model Utrfafi "Uni-tri reversible forward activation, forward inhibition reaction"
      extends BioChem.Interfaces.Reactions.Utr;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorForward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backwards reaction coefficient for the reaction";
    equation
      rr = k1 * aF1.c / iF1.c * s1.c ^ nS1 * s1.V - k2 * p1.c ^ nP1 * p2.c ^ nP2 * p3.c ^ nP3 * p1.V;
    end Utrfafi;

    model Utrfabi "Uni-tri reversible forward activation, backward inhibition reaction"
      extends BioChem.Interfaces.Reactions.Utr;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorBackward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backwards reaction coefficient for the reaction";
    equation
      rr = k1 * aF1.c * s1.c ^ nS1 * s1.V - k2 / iB1.c * p1.c ^ nP1 * p2.c ^ nP2 * p3.c ^ nP3 * p1.V;
    end Utrfabi;

    model Utrfababi "Uni-tri reversible forward activation, backward activation, backward inhibition reaction"
      extends BioChem.Interfaces.Reactions.Utr;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorBackward;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorBackward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backwards reaction coefficient for the reaction";
    equation
      rr = k1 * aF1.c * s1.c ^ nS1 * s1.V - k2 * aB1.c / iB1.c * p1.c ^ nP1 * p2.c ^ nP2 * p3.c ^ nP3 * p1.V;
    end Utrfababi;

    model Utrfaba "Uni-tri reversible forward activation, backward activation reaction"
      extends BioChem.Interfaces.Reactions.Utr;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorBackward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backwards reaction coefficient for the reaction";
    equation
      rr = k1 * aF1.c * s1.c ^ nS1 * s1.V - k2 * aB1.c * p1.c ^ nP1 * p2.c ^ nP2 * p3.c ^ nP3 * p1.V;
    end Utrfaba;

    model Utrfa "Uni-tri reversible forward activation reaction"
      extends BioChem.Interfaces.Reactions.Utr;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorForward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backwards reaction coefficient for the reaction";
    equation
      rr = k1 * aF1.c * s1.c ^ nS1 * s1.V - k2 * p1.c ^ nP1 * p2.c ^ nP2 * p3.c ^ nP3 * p1.V;
    end Utrfa;

    model Utrbi "Uni-tri reversible backward inhibition reaction"
      extends BioChem.Interfaces.Reactions.Utr;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorBackward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backwards reaction coefficient for the reaction";
    equation
      rr = k1 * s1.c ^ nS1 * s1.V - k2 / iB1.c * p1.c ^ nP1 * p2.c ^ nP2 * p3.c ^ nP3 * p1.V;
    end Utrbi;

    model Utrbabi "Uni-tri reversible backward activation, backward inhibition reaction"
      extends BioChem.Interfaces.Reactions.Utr;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorBackward;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorBackward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backwards reaction coefficient for the reaction";
    equation
      rr = k1 * s1.c ^ nS1 * s1.V - k2 * aB1.c / iB1.c * p1.c ^ nP1 * p2.c ^ nP2 * p3.c ^ nP3 * p1.V;
    end Utrbabi;

    model Utrba "Uni-tri reversible backward activation reaction"
      extends BioChem.Interfaces.Reactions.Utr;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorBackward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backwards reaction coefficient for the reaction";
    equation
      rr = k1 * s1.c ^ nS1 * s1.V - k2 * aB1.c * p1.c ^ nP1 * p2.c ^ nP2 * p3.c ^ nP3 * p1.V;
    end Utrba;

    model Utr "Uni-tri reversible reaction"
      extends BioChem.Interfaces.Reactions.Utr;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backwards reaction coefficient for the reaction";
    equation
      rr = k1 * s1.c ^ nS1 * s1.V - k2 * p1.c ^ nP1 * p2.c ^ nP2 * p3.c ^ nP3 * p1.V;
    end Utr;
    annotation(
      Documentation(info = "<html>
 <p>This package contains models for stoichiometric reactions with one reactant and three products.</p>
 </html>"));
  end UniTri;

  package UniBi "A <-> B+C reactions"
    extends Icons.Library;

    model Ubrfibi "Uni-bi reversible forward inhibition, backward inhibition reaction"
      extends BioChem.Interfaces.Reactions.Ubr;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorBackward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backwards reaction coefficient for the reaction";
    equation
      rr = k1 / iF1.c * s1.c ^ nS1 * s1.V - k2 / iB1.c * p1.c ^ nP1 * p2.c ^ nP2 * p1.V;
    end Ubrfibi;

    model Ubrfibabi "Uni-bi reversible forward inhibition, backward activation, backward inhibition reaction"
      extends BioChem.Interfaces.Reactions.Ubr;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorBackward;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorBackward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backwards reaction coefficient for the reaction";
    equation
      rr = k1 / iF1.c * s1.c ^ nS1 * s1.V - k2 * aB1.c / iB1.c * p1.c ^ nP1 * p2.c ^ nP2 * p1.V;
    end Ubrfibabi;

    model Ubrfiba "Uni-bi reversible forward inhibition, backward activation reaction"
      extends BioChem.Interfaces.Reactions.Ubr;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorBackward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backwards reaction coefficient for the reaction";
    equation
      rr = k1 / iF1.c * s1.c ^ nS1 * s1.V - k2 * aB1.c * p1.c ^ nP1 * p2.c ^ nP2 * p1.V;
    end Ubrfiba;

    model Ubrfi "Uni-bi reversible forward inhibition reaction"
      extends BioChem.Interfaces.Reactions.Ubr;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorForward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backwards reaction coefficient for the reaction";
    equation
      rr = k1 / iF1.c * s1.c ^ nS1 * s1.V - k2 * p1.c ^ nP1 * p2.c ^ nP2 * p1.V;
    end Ubrfi;

    model Ubrfafibi "Uni-bi reversible forward activation, forward inhibition, backward inhibition reaction"
      extends BioChem.Interfaces.Reactions.Ubr;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorBackward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backwards reaction coefficient for the reaction";
    equation
      rr = k1 * aF1.c / iF1.c * s1.c ^ nS1 * s1.V - k2 / iB1.c * p1.c ^ nP1 * p2.c ^ nP2 * p1.V;
    end Ubrfafibi;

    model Ubrfafibabi "Uni-bi reversible forward activation, forward inhibition, backward activation, backward inhibition reaction"
      extends BioChem.Interfaces.Reactions.Ubr;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorBackward;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorBackward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backwards reaction coefficient for the reaction";
    equation
      rr = k1 * aF1.c / iF1.c * s1.c ^ nS1 * s1.V - k2 * aB1.c / iB1.c * p1.c ^ nP1 * p2.c ^ nP2 * p1.V;
    end Ubrfafibabi;

    model Ubrfafiba "Uni-bi reversible forward activation, forward inhibition, backward activation reaction"
      extends BioChem.Interfaces.Reactions.Ubr;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorBackward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backwards reaction coefficient for the reaction";
    equation
      rr = k1 * aF1.c / iF1.c * s1.c ^ nS1 * s1.V - k2 * aB1.c * p1.c ^ nP1 * p2.c ^ nP2 * p1.V;
    end Ubrfafiba;

    model Ubrfafi "Uni-bi reversible forward activation, forward inhibition reaction"
      extends BioChem.Interfaces.Reactions.Ubr;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorForward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backwards reaction coefficient for the reaction";
    equation
      rr = k1 * aF1.c / iF1.c * s1.c ^ nS1 * s1.V - k2 * p1.c ^ nP1 * p2.c ^ nP2 * p1.V;
    end Ubrfafi;

    model Ubrfabi "Uni-bi reversible forward activation, backward inhibition reaction"
      extends BioChem.Interfaces.Reactions.Ubr;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorBackward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backwards reaction coefficient for the reaction";
    equation
      rr = k1 * aF1.c * s1.c ^ nS1 * s1.V - k2 / iB1.c * p1.c ^ nP1 * p2.c ^ nP2 * p1.V;
    end Ubrfabi;

    model Ubrfababi "Uni-bi reversible forward activation, backward activation, backward inhibition reaction"
      extends BioChem.Interfaces.Reactions.Ubr;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorBackward;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorBackward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backwards reaction coefficient for the reaction";
    equation
      rr = k1 * aF1.c * s1.c ^ nS1 * s1.V - k2 * aB1.c / iB1.c * p1.c ^ nP1 * p2.c ^ nP2 * p1.V;
    end Ubrfababi;

    model Ubrfaba "Uni-bi reversible forward activation, backward activation reaction"
      extends BioChem.Interfaces.Reactions.Ubr;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorBackward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backwards reaction coefficient for the reaction";
    equation
      rr = k1 * aF1.c * s1.c ^ nS1 * s1.V - k2 * aB1.c * p1.c ^ nP1 * p2.c ^ nP2 * p1.V;
    end Ubrfaba;

    model Ubrfa "Uni-bi reversible forward activation reaction"
      extends BioChem.Interfaces.Reactions.Ubr;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorForward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backwards reaction coefficient for the reaction";
    equation
      rr = k1 * aF1.c * s1.c ^ nS1 * s1.V - k2 * p1.c ^ nP1 * p2.c ^ nP2 * p1.V;
    end Ubrfa;

    model Ubrbi "Uni-bi reversible backward inhibition reaction"
      extends BioChem.Interfaces.Reactions.Ubr;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorBackward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backwards reaction coefficient for the reaction";
    equation
      rr = k1 * s1.c ^ nS1 * s1.V - k2 / iB1.c * p1.c ^ nP1 * p2.c ^ nP2 * p1.V;
    end Ubrbi;

    model Ubrbabi "Uni-bi reversible backward activation, backward inhibition reaction"
      extends BioChem.Interfaces.Reactions.Ubr;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorBackward;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorBackward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backwards reaction coefficient for the reaction";
    equation
      rr = k1 * s1.c ^ nS1 * s1.V - k2 * aB1.c / iB1.c * p1.c ^ nP1 * p2.c ^ nP2 * p1.V;
    end Ubrbabi;

    model Ubrba "Uni-bi reversible backward activation reaction"
      extends BioChem.Interfaces.Reactions.Ubr;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorBackward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backwards reaction coefficient for the reaction";
    equation
      rr = k1 * s1.c ^ nS1 * s1.V - k2 * aB1.c * p1.c ^ nP1 * p2.c ^ nP2 * p1.V;
    end Ubrba;

    model Ubr "Uni-bi reversible reaction"
      extends BioChem.Interfaces.Reactions.Ubr;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backwards reaction coefficient for the reaction";
    equation
      rr = k1 * s1.c ^ nS1 * s1.V - k2 * p1.c ^ nP1 * p2.c ^ nP2 * p1.V;
    end Ubr;
    annotation(
      Documentation(info = "<html>
 <p>This package contains models for stoichiometric reactions with one reactant and two products.</p>
 </html>"));
  end UniBi;

  package BiUni "A+B <-> C reactions"
    extends Icons.Library;

    model Burfibi "Bi-uni reversible forward inhibition, backward inhibition reaction"
      extends BioChem.Interfaces.Reactions.Bur;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorBackward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backwards reaction coefficient for the reaction";
    equation
      rr = k1 / iF1.c * s1.c ^ nS1 * s2.c ^ nS2 * s1.V - k2 / iB1.c * p1.c ^ nP1 * p1.V;
    end Burfibi;

    model Burfibabi "Bi-uni reversible forward inhibition, backward activation, backward inhibition reaction"
      extends BioChem.Interfaces.Reactions.Bur;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorBackward;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorBackward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backwards reaction coefficient for the reaction";
    equation
      rr = k1 / iF1.c * s1.c ^ nS1 * s2.c ^ nS2 * s1.V - k2 * aB1.c / iB1.c * p1.c ^ nP1 * p1.V;
    end Burfibabi;

    model Burfiba "Bi-uni reversible forward inhibition, backward activation reaction"
      extends BioChem.Interfaces.Reactions.Bur;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorBackward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backwards reaction coefficient for the reaction";
    equation
      rr = k1 / iF1.c * s1.c ^ nS1 * s2.c ^ nS2 * s1.V - k2 * aB1.c * p1.c ^ nP1 * p1.V;
    end Burfiba;

    model Burfi "Bi-uni reversible forward inhibition reaction"
      extends BioChem.Interfaces.Reactions.Bur;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorForward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backwards reaction coefficient for the reaction";
    equation
      rr = k1 / iF1.c * s1.c ^ nS1 * s2.c ^ nS2 * s1.V - k2 * p1.c ^ nP1 * p1.V;
    end Burfi;

    model Burfafibi "Bi-uni reversible forward activation, forward inhibition, backward inhibition reaction"
      extends BioChem.Interfaces.Reactions.Bur;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorBackward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backwards reaction coefficient for the reaction";
    equation
      rr = k1 * aF1.c / iF1.c * s1.c ^ nS1 * s2.c ^ nS2 * s1.V - k2 / iB1.c * p1.c ^ nP1 * p1.V;
    end Burfafibi;

    model Burfafibabi "Bi-uni reversible forward activation, forward inhibition, backward activation, backward inhibition reaction"
      extends BioChem.Interfaces.Reactions.Bur;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorBackward;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorBackward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backwards reaction coefficient for the reaction";
    equation
      rr = k1 * aF1.c / iF1.c * s1.c ^ nS1 * s2.c ^ nS2 * s1.V - k2 * aB1.c / iB1.c * p1.c ^ nP1 * p1.V;
    end Burfafibabi;

    model Burfafiba "Bi-uni reversible forward activation, forward inhibition, backward activation reaction"
      extends BioChem.Interfaces.Reactions.Bur;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorBackward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backwards reaction coefficient for the reaction";
    equation
      rr = k1 * aF1.c / iF1.c * s1.c ^ nS1 * s2.c ^ nS2 * s1.V - k2 * aB1.c * p1.c ^ nP1 * p1.V;
    end Burfafiba;

    model Burfafi "Bi-uni reversible forward activation, forward inhibition reaction"
      extends BioChem.Interfaces.Reactions.Bur;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorForward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backwards reaction coefficient for the reaction";
    equation
      rr = k1 * aF1.c / iF1.c * s1.c ^ nS1 * s2.c ^ nS2 * s1.V - k2 * p1.c ^ nP1 * p1.V;
    end Burfafi;

    model Burfabi "Bi-uni reversible forward activation, backward inhibition reaction"
      extends BioChem.Interfaces.Reactions.Bur;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorBackward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backwards reaction coefficient for the reaction";
    equation
      rr = k1 * aF1.c * s1.c ^ nS1 * s2.c ^ nS2 * s1.V - k2 / iB1.c * p1.c ^ nP1 * p1.V;
    end Burfabi;

    model Burfababi "Bi-uni reversible forward activation, backward activation, backward inhibition reaction"
      extends BioChem.Interfaces.Reactions.Bur;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorBackward;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorBackward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backwards reaction coefficient for the reaction";
    equation
      rr = k1 * aF1.c * s1.c ^ nS1 * s2.c ^ nS2 * s1.V - k2 * aB1.c / iB1.c * p1.c ^ nP1 * p1.V;
    end Burfababi;

    model Burfaba "Bi-uni reversible forward activation, backward activation reaction"
      extends BioChem.Interfaces.Reactions.Bur;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorBackward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backwards reaction coefficient for the reaction";
    equation
      rr = k1 * aF1.c * s1.c ^ nS1 * s2.c ^ nS2 * s1.V - k2 * aB1.c * p1.c ^ nP1 * p1.V;
    end Burfaba;

    model Burfa "Bi-uni reversible forward activation reaction"
      extends BioChem.Interfaces.Reactions.Bur;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorForward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backwards reaction coefficient for the reaction";
    equation
      rr = k1 * aF1.c * s1.c ^ nS1 * s2.c ^ nS2 * s1.V - k2 * p1.c ^ nP1 * p1.V;
    end Burfa;

    model Burbi "Bi-uni reversible backward inhibition reaction"
      extends BioChem.Interfaces.Reactions.Bur;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorBackward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backwards reaction coefficient for the reaction";
    equation
      rr = k1 * s1.c ^ nS1 * s2.c ^ nS2 * s1.V - k2 / iB1.c * p1.c ^ nP1 * p1.V;
    end Burbi;

    model Burbabi "Bi-uni reversible backward activation, backward inhibition reaction"
      extends BioChem.Interfaces.Reactions.Bur;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorBackward;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorBackward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backwards reaction coefficient for the reaction";
    equation
      rr = k1 * s1.c ^ nS1 * s2.c ^ nS2 * s1.V - k2 * aB1.c / iB1.c * p1.c ^ nP1 * p1.V;
    end Burbabi;

    model Burba "Bi-uni reversible backward activation reaction"
      extends BioChem.Interfaces.Reactions.Bur;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorBackward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backwards reaction coefficient for the reaction";
    equation
      rr = k1 * s1.c ^ nS1 * s2.c ^ nS2 * s1.V - k2 * aB1.c * p1.c ^ nP1 * p1.V;
    end Burba;

    model Bur "Bi-uni reversible reaction"
      extends BioChem.Interfaces.Reactions.Bur;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backwards reaction coefficient for the reaction";
    equation
      rr = k1 * s1.c ^ nS1 * s2.c ^ nS2 * s1.V - k2 * p1.c ^ nP1 * p1.V;
    end Bur;
    annotation(
      Documentation(info = "<html>
 <p>This package contains models for stoichiometric reactions with two reactants and one product.</p>
 </html>"));
  end BiUni;

  package BiBi "A+B <-> C+D reactions"
    extends BioChem.Icons.Library;

    model Bbrfibi "Bi-bi reversible forward inhibition, backward inhibition reaction"
      extends BioChem.Interfaces.Reactions.Bbr;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorBackward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backwards reaction coefficient for the reaction";
    equation
      rr = k1 / iF1.c * s1.c ^ nS1 * s2.c ^ nS2 * s1.V - k2 / iB1.c * p1.c ^ nP1 * p2.c ^ nP2 * p1.V;
    end Bbrfibi;

    model Bbrfibabi "Bi-bi reversible forward inhibition, backward activation, backward inhibition reaction"
      extends BioChem.Interfaces.Reactions.Bbr;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorBackward;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorBackward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backwards reaction coefficient for the reaction";
    equation
      rr = k1 / iF1.c * s1.c ^ nS1 * s2.c ^ nS2 * s1.V - k2 * aB1.c / iB1.c * p1.c ^ nP1 * p2.c ^ nP2 * p1.V;
    end Bbrfibabi;

    model Bbrfiba "Bi-bi reversible forward inhibition, backward activation reaction"
      extends BioChem.Interfaces.Reactions.Bbr;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorBackward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backwards reaction coefficient for the reaction";
    equation
      rr = k1 / iF1.c * s1.c ^ nS1 * s2.c ^ nS2 * s1.V - k2 * aB1.c * p1.c ^ nP1 * p2.c ^ nP2 * p1.V;
    end Bbrfiba;

    model Bbrfi "Bi-bi reversible forward inhibition reaction"
      extends BioChem.Interfaces.Reactions.Bbr;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorForward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backwards reaction coefficient for the reaction";
    equation
      rr = k1 / iF1.c * s1.c ^ nS1 * s2.c ^ nS2 * s1.V - k2 * p1.c ^ nP1 * p2.c ^ nP2 * p1.V;
    end Bbrfi;

    model Bbrfafibi "Bi-bi reversible forward activation, forward inhibition, backward inhibition reaction"
      extends BioChem.Interfaces.Reactions.Bbr;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorBackward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backwards reaction coefficient for the reaction";
    equation
      rr = k1 * aF1.c / iF1.c * s1.c ^ nS1 * s2.c ^ nS2 * s1.V - k2 / iB1.c * p1.c ^ nP1 * p2.c ^ nP2 * p1.V;
    end Bbrfafibi;

    model Bbrfafibabi "Bi-bi reversible forward activation, forward inhibition, backward activation, backward inhibition reaction"
      extends BioChem.Interfaces.Reactions.Bbr;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorBackward;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorBackward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backwards reaction coefficient for the reaction";
    equation
      rr = k1 * aF1.c / iF1.c * s1.c ^ nS1 * s2.c ^ nS2 * s1.V - k2 * aB1.c / iB1.c * p1.c ^ nP1 * p2.c ^ nP2 * p1.V;
    end Bbrfafibabi;

    model Bbrfafiba "Bi-bi reversible forward activation, forward inhibition, backward activation reaction"
      extends BioChem.Interfaces.Reactions.Bbr;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorBackward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backwards reaction coefficient for the reaction";
    equation
      rr = k1 * aF1.c / iF1.c * s1.c ^ nS1 * s2.c ^ nS2 * s1.V - k2 * aB1.c * p1.c ^ nP1 * p2.c ^ nP2 * p1.V;
    end Bbrfafiba;

    model Bbrfafi "Bi-bi reversible forward activation, forward inhibition reaction"
      extends BioChem.Interfaces.Reactions.Bbr;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorForward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backwards reaction coefficient for the reaction";
    equation
      rr = k1 * aF1.c / iF1.c * s1.c ^ nS1 * s2.c ^ nS2 * s1.V - k2 * p1.c ^ nP1 * p2.c ^ nP2 * p1.V;
    end Bbrfafi;

    model Bbrfabi "Bi-bi reversible forward activation, backward inhibition reaction"
      extends BioChem.Interfaces.Reactions.Bbr;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorBackward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backwards reaction coefficient for the reaction";
    equation
      rr = k1 * aF1.c * s1.c ^ nS1 * s2.c ^ nS2 * s1.V - k2 / iB1.c * p1.c ^ nP1 * p2.c ^ nP2 * p1.V;
    end Bbrfabi;

    model Bbrfababi "Bi-bi reversible forward activation, backward activation, backward inhibition reaction"
      extends BioChem.Interfaces.Reactions.Bbr;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorBackward;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorBackward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backwards reaction coefficient for the reaction";
    equation
      rr = k1 * aF1.c * s1.c ^ nS1 * s2.c ^ nS2 * s1.V - k2 * aB1.c / iB1.c * p1.c ^ nP1 * p2.c ^ nP2 * p1.V;
    end Bbrfababi;

    model Bbrfaba "Bi-bi reversible forward activation, backward activation reaction"
      extends BioChem.Interfaces.Reactions.Bbr;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorBackward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backwards reaction coefficient for the reaction";
    equation
      rr = k1 * aF1.c * s1.c ^ nS1 * s2.c ^ nS2 * s1.V - k2 * aB1.c * p1.c ^ nP1 * p2.c ^ nP2 * p1.V;
    end Bbrfaba;

    model Bbrfa "Bi-bi reversible forward activation reaction"
      extends BioChem.Interfaces.Reactions.Bbr;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorForward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backwards reaction coefficient for the reaction";
    equation
      rr = k1 * aF1.c * s1.c ^ nS1 * s2.c ^ nS2 * s1.V - k2 * p1.c ^ nP1 * p2.c ^ nP2 * p1.V;
    end Bbrfa;

    model Bbrbi "Bi-bi reversible backward inhibition reaction"
      extends BioChem.Interfaces.Reactions.Bbr;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorBackward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backwards reaction coefficient for the reaction";
    equation
      rr = k1 * s1.c ^ nS1 * s2.c ^ nS2 * s1.V - k2 / iB1.c * p1.c ^ nP1 * p2.c ^ nP2 * p1.V;
    end Bbrbi;

    model Bbrbabi "Bi-bi reversible backward activation, backward inhibition reaction"
      extends BioChem.Interfaces.Reactions.Bbr;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorBackward;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorBackward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backwards reaction coefficient for the reaction";
    equation
      rr = k1 * s1.c ^ nS1 * s2.c ^ nS2 * s1.V - k2 * aB1.c / iB1.c * p1.c ^ nP1 * p2.c ^ nP2 * p1.V;
    end Bbrbabi;

    model Bbrba "Bi-bi reversible backward activation reaction"
      extends BioChem.Interfaces.Reactions.Bbr;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorBackward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backwards reaction coefficient for the reaction";
    equation
      rr = k1 * s1.c ^ nS1 * s2.c ^ nS2 * s1.V - k2 * aB1.c * p1.c ^ nP1 * p2.c ^ nP2 * p1.V;
    end Bbrba;

    model Bbr "Bi-bi reversible reaction"
      extends BioChem.Interfaces.Reactions.Bbr;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backwards reaction coefficient for the reaction";
    equation
      rr = k1 * s1.c ^ nS1 * s2.c ^ nS2 * s1.V - k2 * p1.c ^ nP1 * p2.c ^ nP2 * p1.V;
    end Bbr;
    annotation(
      Documentation(info = "<html>
 <p>This package contains models for stoichiometric reactions with two reactants and two products.</p>
 </html>"));
  end BiBi;


  annotation(
    Documentation(info = "<html>
 <p>This package contains models for reversible reactions with one to three reactants and products.</p>
 </html>"));
end Reversible;
