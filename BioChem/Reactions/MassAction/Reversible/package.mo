within BioChem.Reactions.MassAction;

package Reversible "Reversible reactions"
  extends Icons.Library;

  package UniUni "A <-> B reactions"
    extends Icons.Library;

    model Uurfibi "Uni-uni reversible forward inhibition, backward inhibition reaction"
      extends BioChem.Interfaces.Reactions.Uur;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorBackward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backwards reaction coefficient for the reaction";
    equation
      rr = k1 / iF1.c * s1.c ^ nS1 * s1.V - k2 / iB1.c * p1.c ^ nP1 * p1.V;
      annotation(
        Documentation,
        Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})),
        Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})));
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
      annotation(
        Documentation,
        Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})),
        Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})));
    end Uurfibabi;

    model Uurfiba "Uni-uni reversible forward inhibition, backward activation reaction"
      extends BioChem.Interfaces.Reactions.Uur;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorBackward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backwards reaction coefficient for the reaction";
    equation
      rr = k1 / iF1.c * s1.c ^ nS1 * s1.V - k2 * aB1.c * p1.c ^ nP1 * p1.V;
      annotation(
        Documentation,
        Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})),
        Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})));
    end Uurfiba;

    model Uurfi "Uni-uni reversible forward inhibition reaction"
      extends BioChem.Interfaces.Reactions.Uur;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorForward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backwards reaction coefficient for the reaction";
    equation
      rr = k1 / iF1.c * s1.c ^ nS1 * s1.V - k2 * p1.c ^ nP1 * p1.V;
      annotation(
        Documentation,
        Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})),
        Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})));
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
      annotation(
        Documentation,
        Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})),
        Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})));
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
      annotation(
        Documentation,
        Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})),
        Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})));
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
      annotation(
        Documentation,
        Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})),
        Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})));
    end Uurfafiba;

    model Uurfafi "Uni-uni reversible forward activation, forward inhibition reaction"
      extends BioChem.Interfaces.Reactions.Uur;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorForward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backwards reaction coefficient for the reaction";
    equation
      rr = k1 * aF1.c / iF1.c * s1.c ^ nS1 * s1.V - k2 * p1.c ^ nP1 * p1.V;
      annotation(
        Documentation,
        Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})),
        Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})));
    end Uurfafi;

    model Uurfabi "Uni-uni reversible forward activation, backward inhibition reaction"
      extends BioChem.Interfaces.Reactions.Uur;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorBackward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backwards reaction coefficient for the reaction";
    equation
      rr = k1 * aF1.c * s1.c ^ nS1 * s1.V - k2 / iB1.c * p1.c ^ nP1 * p1.V;
      annotation(
        Documentation,
        Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})),
        Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})));
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
      annotation(
        Documentation,
        Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})),
        Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})));
    end Uurfababi;

    model Uurfaba "Uni-uni reversible forward activation, backward activation reaction"
      extends BioChem.Interfaces.Reactions.Uur;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorBackward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backwards reaction coefficient for the reaction";
    equation
      rr = k1 * aF1.c * s1.c ^ nS1 * s1.V - k2 * aB1.c * p1.c ^ nP1 * p1.V;
      annotation(
        Documentation,
        Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})),
        Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})));
    end Uurfaba;

    model Uurfa "Uni-uni reversible forward activation reaction"
      extends BioChem.Interfaces.Reactions.Uur;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorForward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backwards reaction coefficient for the reaction";
    equation
      rr = k1 * aF1.c * s1.c ^ nS1 * s1.V - k2 * p1.c ^ nP1 * p1.V;
      annotation(
        Documentation,
        Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})),
        Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})));
    end Uurfa;

    model Uurbi "Uni-uni reversible backward inhibition reaction"
      extends BioChem.Interfaces.Reactions.Uur;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorBackward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backwards reaction coefficient for the reaction";
    equation
      rr = k1 * s1.c ^ nS1 * s1.V - k2 / iB1.c * p1.c ^ nP1 * p1.V;
      annotation(
        Documentation,
        Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})),
        Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})));
    end Uurbi;

    model Uurbabi "Uni-uni reversible backward activation, backward inhibition reaction"
      extends BioChem.Interfaces.Reactions.Uur;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorBackward;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorBackward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backwards reaction coefficient for the reaction";
    equation
      rr = k1 * s1.c ^ nS1 * s1.V - k2 * aB1.c / iB1.c * p1.c ^ nP1 * p1.V;
      annotation(
        Documentation,
        Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})),
        Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})));
    end Uurbabi;

    model Uurba "Uni-uni reversible backward activation reaction"
      extends BioChem.Interfaces.Reactions.Uur;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorBackward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backwards reaction coefficient for the reaction";
    equation
      rr = k1 * s1.c ^ nS1 * s1.V - k2 * aB1.c * p1.c ^ nP1 * p1.V;
      annotation(
        Documentation,
        Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})),
        Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})));
    end Uurba;

    model Uur "Uni-uni reversible reaction"
      extends BioChem.Interfaces.Reactions.Uur;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backwards reaction coefficient for the reaction";
    equation
      rr = k1 * s1.c ^ nS1 * s1.V - k2 * p1.c ^ nP1 * p1.V;
      annotation(
        Documentation,
        Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})),
        Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})));
    end Uur;
    annotation(
      Documentation(info = "<html>
 <p>This package contains models for stoichiometric reactions with one reactant and one product.</p>
 </html>"),
      Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})),
      Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})));
  end UniUni;

  package UniTri "A <-> B+C+D reactions"
    extends Icons.Library;

    model Utrfibi "Uni-tri reversible forward inhibition, backward inhibition reaction"
      extends BioChem.Interfaces.Reactions.Utr;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorBackward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backwards reaction coefficient for the reaction";
    equation
      rr = k1 / iF1.c * s1.c ^ nS1 * s1.V - k2 / iB1.c * p1.c ^ nP1 * p2.c ^ nP2 * p3.c ^ nP3 * p1.V;
      annotation(
        Documentation,
        Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})),
        Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})));
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
      annotation(
        Documentation,
        Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})),
        Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})));
    end Utrfibabi;

    model Utrfiba "Uni-tri reversible forward inhibition, backward activation reaction"
      extends BioChem.Interfaces.Reactions.Utr;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorBackward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backwards reaction coefficient for the reaction";
    equation
      rr = k1 / iF1.c * s1.c ^ nS1 * s1.V - k2 * aB1.c * p1.c ^ nP1 * p2.c ^ nP2 * p3.c ^ nP3 * p1.V;
      annotation(
        Documentation,
        Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})),
        Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})));
    end Utrfiba;

    model Utrfi "Uni-tri reversible forward inhibition reaction"
      extends BioChem.Interfaces.Reactions.Utr;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorForward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backwards reaction coefficient for the reaction";
    equation
      rr = k1 / iF1.c * s1.c ^ nS1 * s1.V - k2 * p1.c ^ nP1 * p2.c ^ nP2 * p3.c ^ nP3 * p1.V;
      annotation(
        Documentation,
        Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})),
        Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})));
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
      annotation(
        Documentation,
        Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})),
        Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})));
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
      annotation(
        Documentation,
        Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})),
        Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})));
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
      annotation(
        Documentation,
        Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})),
        Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})));
    end Utrfafiba;

    model Utrfafi "Uni-tri reversible forward activation, forward inhibition reaction"
      extends BioChem.Interfaces.Reactions.Utr;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorForward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backwards reaction coefficient for the reaction";
    equation
      rr = k1 * aF1.c / iF1.c * s1.c ^ nS1 * s1.V - k2 * p1.c ^ nP1 * p2.c ^ nP2 * p3.c ^ nP3 * p1.V;
      annotation(
        Documentation,
        Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})),
        Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})));
    end Utrfafi;

    model Utrfabi "Uni-tri reversible forward activation, backward inhibition reaction"
      extends BioChem.Interfaces.Reactions.Utr;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorBackward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backwards reaction coefficient for the reaction";
    equation
      rr = k1 * aF1.c * s1.c ^ nS1 * s1.V - k2 / iB1.c * p1.c ^ nP1 * p2.c ^ nP2 * p3.c ^ nP3 * p1.V;
      annotation(
        Documentation,
        Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})),
        Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})));
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
      annotation(
        Documentation,
        Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})),
        Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})));
    end Utrfababi;

    model Utrfaba "Uni-tri reversible forward activation, backward activation reaction"
      extends BioChem.Interfaces.Reactions.Utr;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorBackward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backwards reaction coefficient for the reaction";
    equation
      rr = k1 * aF1.c * s1.c ^ nS1 * s1.V - k2 * aB1.c * p1.c ^ nP1 * p2.c ^ nP2 * p3.c ^ nP3 * p1.V;
      annotation(
        Documentation,
        Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})),
        Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})));
    end Utrfaba;

    model Utrfa "Uni-tri reversible forward activation reaction"
      extends BioChem.Interfaces.Reactions.Utr;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorForward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backwards reaction coefficient for the reaction";
    equation
      rr = k1 * aF1.c * s1.c ^ nS1 * s1.V - k2 * p1.c ^ nP1 * p2.c ^ nP2 * p3.c ^ nP3 * p1.V;
      annotation(
        Documentation,
        Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})),
        Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})));
    end Utrfa;

    model Utrbi "Uni-tri reversible backward inhibition reaction"
      extends BioChem.Interfaces.Reactions.Utr;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorBackward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backwards reaction coefficient for the reaction";
    equation
      rr = k1 * s1.c ^ nS1 * s1.V - k2 / iB1.c * p1.c ^ nP1 * p2.c ^ nP2 * p3.c ^ nP3 * p1.V;
      annotation(
        Documentation,
        Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})),
        Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})));
    end Utrbi;

    model Utrbabi "Uni-tri reversible backward activation, backward inhibition reaction"
      extends BioChem.Interfaces.Reactions.Utr;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorBackward;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorBackward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backwards reaction coefficient for the reaction";
    equation
      rr = k1 * s1.c ^ nS1 * s1.V - k2 * aB1.c / iB1.c * p1.c ^ nP1 * p2.c ^ nP2 * p3.c ^ nP3 * p1.V;
      annotation(
        Documentation,
        Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})),
        Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})));
    end Utrbabi;

    model Utrba "Uni-tri reversible backward activation reaction"
      extends BioChem.Interfaces.Reactions.Utr;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorBackward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backwards reaction coefficient for the reaction";
    equation
      rr = k1 * s1.c ^ nS1 * s1.V - k2 * aB1.c * p1.c ^ nP1 * p2.c ^ nP2 * p3.c ^ nP3 * p1.V;
      annotation(
        Documentation,
        Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})),
        Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})));
    end Utrba;

    model Utr "Uni-tri reversible reaction"
      extends BioChem.Interfaces.Reactions.Utr;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backwards reaction coefficient for the reaction";
    equation
      rr = k1 * s1.c ^ nS1 * s1.V - k2 * p1.c ^ nP1 * p2.c ^ nP2 * p3.c ^ nP3 * p1.V;
      annotation(
        Documentation,
        Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})),
        Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})));
    end Utr;
    annotation(
      Documentation(info = "<html>
 <p>This package contains models for stoichiometric reactions with one reactant and three products.</p>
 </html>"),
      Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})),
      Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})));
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
      annotation(
        Documentation,
        Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})),
        Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})));
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
      annotation(
        Documentation,
        Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})),
        Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})));
    end Ubrfibabi;

    model Ubrfiba "Uni-bi reversible forward inhibition, backward activation reaction"
      extends BioChem.Interfaces.Reactions.Ubr;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorBackward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backwards reaction coefficient for the reaction";
    equation
      rr = k1 / iF1.c * s1.c ^ nS1 * s1.V - k2 * aB1.c * p1.c ^ nP1 * p2.c ^ nP2 * p1.V;
      annotation(
        Documentation,
        Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})),
        Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})));
    end Ubrfiba;

    model Ubrfi "Uni-bi reversible forward inhibition reaction"
      extends BioChem.Interfaces.Reactions.Ubr;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorForward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backwards reaction coefficient for the reaction";
    equation
      rr = k1 / iF1.c * s1.c ^ nS1 * s1.V - k2 * p1.c ^ nP1 * p2.c ^ nP2 * p1.V;
      annotation(
        Documentation,
        Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})),
        Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})));
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
      annotation(
        Documentation,
        Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})),
        Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})));
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
      annotation(
        Documentation,
        Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})),
        Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})));
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
      annotation(
        Documentation,
        Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})),
        Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})));
    end Ubrfafiba;

    model Ubrfafi "Uni-bi reversible forward activation, forward inhibition reaction"
      extends BioChem.Interfaces.Reactions.Ubr;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorForward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backwards reaction coefficient for the reaction";
    equation
      rr = k1 * aF1.c / iF1.c * s1.c ^ nS1 * s1.V - k2 * p1.c ^ nP1 * p2.c ^ nP2 * p1.V;
      annotation(
        Documentation,
        Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})),
        Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})));
    end Ubrfafi;

    model Ubrfabi "Uni-bi reversible forward activation, backward inhibition reaction"
      extends BioChem.Interfaces.Reactions.Ubr;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorBackward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backwards reaction coefficient for the reaction";
    equation
      rr = k1 * aF1.c * s1.c ^ nS1 * s1.V - k2 / iB1.c * p1.c ^ nP1 * p2.c ^ nP2 * p1.V;
      annotation(
        Documentation,
        Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})),
        Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})));
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
      annotation(
        Documentation,
        Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})),
        Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})));
    end Ubrfababi;

    model Ubrfaba "Uni-bi reversible forward activation, backward activation reaction"
      extends BioChem.Interfaces.Reactions.Ubr;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorBackward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backwards reaction coefficient for the reaction";
    equation
      rr = k1 * aF1.c * s1.c ^ nS1 * s1.V - k2 * aB1.c * p1.c ^ nP1 * p2.c ^ nP2 * p1.V;
      annotation(
        Documentation,
        Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})),
        Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})));
    end Ubrfaba;

    model Ubrfa "Uni-bi reversible forward activation reaction"
      extends BioChem.Interfaces.Reactions.Ubr;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorForward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backwards reaction coefficient for the reaction";
    equation
      rr = k1 * aF1.c * s1.c ^ nS1 * s1.V - k2 * p1.c ^ nP1 * p2.c ^ nP2 * p1.V;
      annotation(
        Documentation,
        Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})),
        Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})));
    end Ubrfa;

    model Ubrbi "Uni-bi reversible backward inhibition reaction"
      extends BioChem.Interfaces.Reactions.Ubr;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorBackward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backwards reaction coefficient for the reaction";
    equation
      rr = k1 * s1.c ^ nS1 * s1.V - k2 / iB1.c * p1.c ^ nP1 * p2.c ^ nP2 * p1.V;
      annotation(
        Documentation,
        Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})),
        Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})));
    end Ubrbi;

    model Ubrbabi "Uni-bi reversible backward activation, backward inhibition reaction"
      extends BioChem.Interfaces.Reactions.Ubr;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorBackward;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorBackward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backwards reaction coefficient for the reaction";
    equation
      rr = k1 * s1.c ^ nS1 * s1.V - k2 * aB1.c / iB1.c * p1.c ^ nP1 * p2.c ^ nP2 * p1.V;
      annotation(
        Documentation,
        Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})),
        Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})));
    end Ubrbabi;

    model Ubrba "Uni-bi reversible backward activation reaction"
      extends BioChem.Interfaces.Reactions.Ubr;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorBackward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backwards reaction coefficient for the reaction";
    equation
      rr = k1 * s1.c ^ nS1 * s1.V - k2 * aB1.c * p1.c ^ nP1 * p2.c ^ nP2 * p1.V;
      annotation(
        Documentation,
        Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})),
        Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})));
    end Ubrba;

    model Ubr "Uni-bi reversible reaction"
      extends BioChem.Interfaces.Reactions.Ubr;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backwards reaction coefficient for the reaction";
    equation
      rr = k1 * s1.c ^ nS1 * s1.V - k2 * p1.c ^ nP1 * p2.c ^ nP2 * p1.V;
      annotation(
        Documentation,
        Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})),
        Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})));
    end Ubr;
    annotation(
      Documentation(info = "<html>
 <p>This package contains models for stoichiometric reactions with one reactant and two products.</p>
 </html>"),
      Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})),
      Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})));
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
      annotation(
        Documentation,
        Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})),
        Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})));
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
      annotation(
        Documentation,
        Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})),
        Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})));
    end Burfibabi;

    model Burfiba "Bi-uni reversible forward inhibition, backward activation reaction"
      extends BioChem.Interfaces.Reactions.Bur;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorBackward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backwards reaction coefficient for the reaction";
    equation
      rr = k1 / iF1.c * s1.c ^ nS1 * s2.c ^ nS2 * s1.V - k2 * aB1.c * p1.c ^ nP1 * p1.V;
      annotation(
        Documentation,
        Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})),
        Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})));
    end Burfiba;

    model Burfi "Bi-uni reversible forward inhibition reaction"
      extends BioChem.Interfaces.Reactions.Bur;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorForward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backwards reaction coefficient for the reaction";
    equation
      rr = k1 / iF1.c * s1.c ^ nS1 * s2.c ^ nS2 * s1.V - k2 * p1.c ^ nP1 * p1.V;
      annotation(
        Documentation,
        Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})),
        Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})));
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
      annotation(
        Documentation,
        Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})),
        Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})));
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
      annotation(
        Documentation,
        Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})),
        Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})));
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
      annotation(
        Documentation,
        Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})),
        Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})));
    end Burfafiba;

    model Burfafi "Bi-uni reversible forward activation, forward inhibition reaction"
      extends BioChem.Interfaces.Reactions.Bur;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorForward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backwards reaction coefficient for the reaction";
    equation
      rr = k1 * aF1.c / iF1.c * s1.c ^ nS1 * s2.c ^ nS2 * s1.V - k2 * p1.c ^ nP1 * p1.V;
      annotation(
        Documentation,
        Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})),
        Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})));
    end Burfafi;

    model Burfabi "Bi-uni reversible forward activation, backward inhibition reaction"
      extends BioChem.Interfaces.Reactions.Bur;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorBackward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backwards reaction coefficient for the reaction";
    equation
      rr = k1 * aF1.c * s1.c ^ nS1 * s2.c ^ nS2 * s1.V - k2 / iB1.c * p1.c ^ nP1 * p1.V;
      annotation(
        Documentation,
        Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})),
        Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})));
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
      annotation(
        Documentation,
        Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})),
        Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})));
    end Burfababi;

    model Burfaba "Bi-uni reversible forward activation, backward activation reaction"
      extends BioChem.Interfaces.Reactions.Bur;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorBackward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backwards reaction coefficient for the reaction";
    equation
      rr = k1 * aF1.c * s1.c ^ nS1 * s2.c ^ nS2 * s1.V - k2 * aB1.c * p1.c ^ nP1 * p1.V;
      annotation(
        Documentation,
        Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})),
        Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})));
    end Burfaba;

    model Burfa "Bi-uni reversible forward activation reaction"
      extends BioChem.Interfaces.Reactions.Bur;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorForward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backwards reaction coefficient for the reaction";
    equation
      rr = k1 * aF1.c * s1.c ^ nS1 * s2.c ^ nS2 * s1.V - k2 * p1.c ^ nP1 * p1.V;
      annotation(
        Documentation,
        Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})),
        Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})));
    end Burfa;

    model Burbi "Bi-uni reversible backward inhibition reaction"
      extends BioChem.Interfaces.Reactions.Bur;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorBackward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backwards reaction coefficient for the reaction";
    equation
      rr = k1 * s1.c ^ nS1 * s2.c ^ nS2 * s1.V - k2 / iB1.c * p1.c ^ nP1 * p1.V;
      annotation(
        Documentation,
        Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})),
        Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})));
    end Burbi;

    model Burbabi "Bi-uni reversible backward activation, backward inhibition reaction"
      extends BioChem.Interfaces.Reactions.Bur;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorBackward;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorBackward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backwards reaction coefficient for the reaction";
    equation
      rr = k1 * s1.c ^ nS1 * s2.c ^ nS2 * s1.V - k2 * aB1.c / iB1.c * p1.c ^ nP1 * p1.V;
      annotation(
        Documentation,
        Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})),
        Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})));
    end Burbabi;

    model Burba "Bi-uni reversible backward activation reaction"
      extends BioChem.Interfaces.Reactions.Bur;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorBackward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backwards reaction coefficient for the reaction";
    equation
      rr = k1 * s1.c ^ nS1 * s2.c ^ nS2 * s1.V - k2 * aB1.c * p1.c ^ nP1 * p1.V;
      annotation(
        Documentation,
        Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})),
        Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})));
    end Burba;

    model Bur "Bi-uni reversible reaction"
      extends BioChem.Interfaces.Reactions.Bur;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backwards reaction coefficient for the reaction";
    equation
      rr = k1 * s1.c ^ nS1 * s2.c ^ nS2 * s1.V - k2 * p1.c ^ nP1 * p1.V;
      annotation(
        Documentation,
        Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})),
        Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})));
    end Bur;
    annotation(
      Documentation(info = "<html>
 <p>This package contains models for stoichiometric reactions with two reactants and one product.</p>
 </html>"),
      Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})),
      Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})));
  end BiUni;

  package BiBi "A+B <-> C+D reactions"
    extends Icons.Library;

    model Bbrfibi "Bi-bi reversible forward inhibition, backward inhibition reaction"
      extends BioChem.Interfaces.Reactions.Bbr;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorBackward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backwards reaction coefficient for the reaction";
    equation
      rr = k1 / iF1.c * s1.c ^ nS1 * s2.c ^ nS2 * s1.V - k2 / iB1.c * p1.c ^ nP1 * p2.c ^ nP2 * p1.V;
      annotation(
        Documentation,
        Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})),
        Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})));
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
      annotation(
        Documentation,
        Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})),
        Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})));
    end Bbrfibabi;

    model Bbrfiba "Bi-bi reversible forward inhibition, backward activation reaction"
      extends BioChem.Interfaces.Reactions.Bbr;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorBackward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backwards reaction coefficient for the reaction";
    equation
      rr = k1 / iF1.c * s1.c ^ nS1 * s2.c ^ nS2 * s1.V - k2 * aB1.c * p1.c ^ nP1 * p2.c ^ nP2 * p1.V;
      annotation(
        Documentation,
        Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})),
        Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})));
    end Bbrfiba;

    model Bbrfi "Bi-bi reversible forward inhibition reaction"
      extends BioChem.Interfaces.Reactions.Bbr;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorForward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backwards reaction coefficient for the reaction";
    equation
      rr = k1 / iF1.c * s1.c ^ nS1 * s2.c ^ nS2 * s1.V - k2 * p1.c ^ nP1 * p2.c ^ nP2 * p1.V;
      annotation(
        Documentation,
        Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})),
        Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})));
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
      annotation(
        Documentation,
        Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})),
        Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})));
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
      annotation(
        Documentation,
        Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})),
        Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})));
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
      annotation(
        Documentation,
        Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})),
        Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})));
    end Bbrfafiba;

    model Bbrfafi "Bi-bi reversible forward activation, forward inhibition reaction"
      extends BioChem.Interfaces.Reactions.Bbr;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorForward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backwards reaction coefficient for the reaction";
    equation
      rr = k1 * aF1.c / iF1.c * s1.c ^ nS1 * s2.c ^ nS2 * s1.V - k2 * p1.c ^ nP1 * p2.c ^ nP2 * p1.V;
      annotation(
        Documentation,
        Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})),
        Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})));
    end Bbrfafi;

    model Bbrfabi "Bi-bi reversible forward activation, backward inhibition reaction"
      extends BioChem.Interfaces.Reactions.Bbr;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorBackward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backwards reaction coefficient for the reaction";
    equation
      rr = k1 * aF1.c * s1.c ^ nS1 * s2.c ^ nS2 * s1.V - k2 / iB1.c * p1.c ^ nP1 * p2.c ^ nP2 * p1.V;
      annotation(
        Documentation,
        Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})),
        Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})));
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
      annotation(
        Documentation,
        Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})),
        Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})));
    end Bbrfababi;

    model Bbrfaba "Bi-bi reversible forward activation, backward activation reaction"
      extends BioChem.Interfaces.Reactions.Bbr;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorBackward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backwards reaction coefficient for the reaction";
    equation
      rr = k1 * aF1.c * s1.c ^ nS1 * s2.c ^ nS2 * s1.V - k2 * aB1.c * p1.c ^ nP1 * p2.c ^ nP2 * p1.V;
      annotation(
        Documentation,
        Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})),
        Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})));
    end Bbrfaba;

    model Bbrfa "Bi-bi reversible forward activation reaction"
      extends BioChem.Interfaces.Reactions.Bbr;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorForward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backwards reaction coefficient for the reaction";
    equation
      rr = k1 * aF1.c * s1.c ^ nS1 * s2.c ^ nS2 * s1.V - k2 * p1.c ^ nP1 * p2.c ^ nP2 * p1.V;
      annotation(
        Documentation,
        Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})),
        Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})));
    end Bbrfa;

    model Bbrbi "Bi-bi reversible backward inhibition reaction"
      extends BioChem.Interfaces.Reactions.Bbr;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorBackward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backwards reaction coefficient for the reaction";
    equation
      rr = k1 * s1.c ^ nS1 * s2.c ^ nS2 * s1.V - k2 / iB1.c * p1.c ^ nP1 * p2.c ^ nP2 * p1.V;
      annotation(
        Documentation,
        Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})),
        Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})));
    end Bbrbi;

    model Bbrbabi "Bi-bi reversible backward activation, backward inhibition reaction"
      extends BioChem.Interfaces.Reactions.Bbr;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorBackward;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorBackward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backwards reaction coefficient for the reaction";
    equation
      rr = k1 * s1.c ^ nS1 * s2.c ^ nS2 * s1.V - k2 * aB1.c / iB1.c * p1.c ^ nP1 * p2.c ^ nP2 * p1.V;
      annotation(
        Documentation,
        Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})),
        Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})));
    end Bbrbabi;

    model Bbrba "Bi-bi reversible backward activation reaction"
      extends BioChem.Interfaces.Reactions.Bbr;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorBackward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backwards reaction coefficient for the reaction";
    equation
      rr = k1 * s1.c ^ nS1 * s2.c ^ nS2 * s1.V - k2 * aB1.c * p1.c ^ nP1 * p2.c ^ nP2 * p1.V;
      annotation(
        Documentation,
        Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})),
        Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})));
    end Bbrba;

    model Bbr "Bi-bi reversible reaction"
      extends BioChem.Interfaces.Reactions.Bbr;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backwards reaction coefficient for the reaction";
    equation
      rr = k1 * s1.c ^ nS1 * s2.c ^ nS2 * s1.V - k2 * p1.c ^ nP1 * p2.c ^ nP2 * p1.V;
      annotation(
        Documentation,
        Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})),
        Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})));
    end Bbr;
    annotation(
      Documentation(info = "<html>
 <p>This package contains models for stoichiometric reactions with two reactants and two products.</p>
 </html>"),
      Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})),
      Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})));
  end BiBi;






  annotation(
    Documentation(info = "<html>
 <p>This package contains models for reversible reactions with one to three reactants and products.</p>
 </html>"),
    Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})),
    Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})));
end Reversible;
