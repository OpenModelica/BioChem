within BioChem.Reactions.MassAction;

package Irreversible "Irreversible reactions"
  extends BioChem.Icons.Library;

  package UniUni "A -> B reactions"
    extends BioChem.Icons.Library;

    model Uui "Uni-uni irreversible reaction"
      extends BioChem.Interfaces.Reactions.Uui;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionOrder nS1e = 1 "Reaction order with respect to the substrate" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
    equation
      rr = k1 * s1.c ^ nS1e * s1.V;
      annotation(Documentation, Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
    end Uui;

    model Uuifa "Uni-uni irreversible forward activation reaction"
      extends BioChem.Interfaces.Reactions.Uui;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorForward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionOrder nS1e = 1 "Reaction order with respect to the substrate" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nAFe = 1 "Reaction order with respect to the activator" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
    equation
      rr = k1 * aF1.c ^ nAFe * s1.c ^ nS1e * s1.V;
      annotation(Documentation, Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
    end Uuifa;

    model Uuifi "Uni-uni irreversible forward inhibition reaction"
      extends BioChem.Interfaces.Reactions.Uui;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorForward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionOrder nS1e = 1 "Reaction order with respect to the substrate" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nIFe = 1 "Reaction order with respect to the inhibitor" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
    equation
      rr = k1 / iF1.c ^ nIFe * s1.c ^ nS1e * s1.V;
      annotation(Documentation, Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
    end Uuifi;

    model Uuifafi "Uni-uni irreversible forward activation, forward inhibition reaction"
      extends BioChem.Interfaces.Reactions.Uui;
      extends BioChem.Interfaces.Reactions.Modifiers.LeftActivatorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.RightInhibitorForward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionOrder nS1e = 1 "Reaction order with respect to the substrate" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nAFe = 1 "Reaction order with respect to the activator" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nIFe = 1 "Reaction order with respect to the inhibitor" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
    equation
      rr = k1 * aF1.c ^ nAFe / iF1.c ^ nIFe * s1.c ^ nS1e * s1.V;
      annotation(Documentation, Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
    end Uuifafi;
    annotation(Documentation(info = "
  <html>
  <p>This package contains models for stoichiometric reactions with one reactant and one product.</p>
  </html>"), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
  end UniUni;

  package UniBi "A -> B+C reactions"
    extends BioChem.Icons.Library;

    model Ubi "Uni-bi irreversible reaction"
      extends BioChem.Interfaces.Reactions.Ubi;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionOrder nS1e = 1 "Reaction order with respect to the substrate" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
    equation
      rr = k1 * s1.c ^ nS1e * s1.V;
      annotation(Documentation(info = "", revisions = ""), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
    end Ubi;

    model Ubifa "Uni-bi irreversible forward activation reaction"
      extends BioChem.Interfaces.Reactions.Ubi;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorForward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionOrder nS1e = 1 "Reaction order with respect to the substrate" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nAFe = 1 "Reaction order with respect to the activator" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
    equation
      rr = k1 * aF1.c ^ nAFe * s1.c ^ nS1e * s1.V;
      annotation(Documentation(info = "", revisions = ""), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
    end Ubifa;

    model Ubifi "Uni-bi irreversible forward inhibition reaction"
      extends BioChem.Interfaces.Reactions.Ubi;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorForward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionOrder nS1e = 1 "Reaction order with respect to the substrate" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nIFe = 1 "Reaction order with respect to the inhibitor" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
    equation
      rr = k1 / iF1.c ^ nIFe * s1.c ^ nS1e * s1.V;
      annotation(Documentation, Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
    end Ubifi;

    model Ubifafi "Uni-bi irreversible forward activation, forward inhibition reaction"
      extends BioChem.Interfaces.Reactions.Ubi;
      extends BioChem.Interfaces.Reactions.Modifiers.LeftActivatorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.RightInhibitorForward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionOrder nS1e = 1 "Reaction order with respect to the substrate" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nAFe = 1 "Reaction order with respect to the activator" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nIFe = 1 "Reaction order with respect to the inhibitor" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
    equation
      rr = k1 * aF1.c ^ nAFe / iF1.c ^ nIFe * s1.c ^ nS1e * s1.V;
      annotation(Documentation, Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
    end Ubifafi;
    annotation(Documentation(info = "
  <html>
  <p>This package contains models for stoichiometric reactions with one reactant and two products.</p>
  </html>"), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
  end UniBi;

  package UniTri "A -> B+C+D reactions"
    extends BioChem.Icons.Library;

    model Uti "Uni-tri irreversible reaction"
      extends BioChem.Interfaces.Reactions.Uti;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionOrder nS1e = 1 "Reaction order with respect to the substrate" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
    equation
      rr = k1 * s1.c ^ nS1e * s1.V;
      annotation(Documentation, Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
    end Uti;

    model Utifa "Uni-tri irreversible forward activation reaction"
      extends BioChem.Interfaces.Reactions.Uti;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorForward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionOrder nS1e = 1 "Reaction order with respect to the substrate" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nAFe = 1 "Reaction order with respect to the activator" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
    equation
      rr = k1 * aF1.c ^ nAFe * s1.c ^ nS1e * s1.V;
      annotation(Documentation, Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
    end Utifa;

    model Utifi "Uni-tri irreversible forward inhibition reaction"
      extends BioChem.Interfaces.Reactions.Uti;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorForward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionOrder nS1e = 1 "Reaction order with respect to the substrate" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nIFe = 1 "Reaction order with respect to the inhibitor" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
    equation
      rr = k1 / iF1.c ^ nIFe * s1.c ^ nS1e * s1.V;
      annotation(Documentation, Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
    end Utifi;

    model Utifafi "Uni-tri irreversible forward activation, forward inhibition reaction"
      extends BioChem.Interfaces.Reactions.Uti;
      extends BioChem.Interfaces.Reactions.Modifiers.LeftActivatorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.RightInhibitorForward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionOrder nS1e = 1 "Reaction order with respect to the substrate" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nAFe = 1 "Reaction order with respect to the activator" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nIFe = 1 "Reaction order with respect to the inhibitor" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
    equation
      rr = k1 * aF1.c ^ nAFe / iF1.c ^ nIFe * s1.c ^ nS1e * s1.V;
      annotation(Documentation, Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
    end Utifafi;
    annotation(Documentation(info = "
  <html>
  <p>This package contains models for stoichiometric reactions with one reactant and three products.</p>
  </html>"), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
  end UniTri;

  package BiUni "A+B -> C reactions"
    extends BioChem.Icons.Library;

    model Bui "Bi-uni irreversible reaction"
      extends BioChem.Interfaces.Reactions.Bui;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionOrder nS1e = 1 "Reaction order with respect to substrate 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nS2e = 1 "Reaction order with respect to substrate 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
    equation
      rr = k1 * s1.c ^ nS1e * s2.c ^ nS2e * s1.V;
      annotation(Documentation, Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
    end Bui;

    model Buifa "Bi-uni irreversible forward activation reaction"
      extends BioChem.Interfaces.Reactions.Bui;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorForward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionOrder nS1e = 1 "Reaction order with respect to substrate 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nS2e = 1 "Reaction order with respect to substrate 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nAFe = 1 "Reaction order with respect to the activator" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
    equation
      rr = k1 * aF1.c ^ nAFe * s1.c ^ nS1e * s2.c ^ nS2e * s1.V;
      annotation(Documentation, Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
    end Buifa;

    model Buifi "Bi-uni irreversible forward inhibition reaction"
      extends BioChem.Interfaces.Reactions.Bui;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorForward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionOrder nS1e = 1 "Reaction order with respect to substrate 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nS2e = 1 "Reaction order with respect to substrate 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nIFe = 1 "Reaction order with respect to the inhibitor" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
    equation
      rr = k1 / iF1.c ^ nIFe * s1.c ^ nS1e * s2.c ^ nS2e * s1.V;
      annotation(Documentation, Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
    end Buifi;

    model Buifafi "Bi-uni irreversible forward activation, forward inhibition reaction"
      extends BioChem.Interfaces.Reactions.Bui;
      extends BioChem.Interfaces.Reactions.Modifiers.LeftActivatorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.RightInhibitorForward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionOrder nS1e = 1 "Reaction order with respect to substrate 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nS2e = 1 "Reaction order with respect to substrate 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nAFe = 1 "Reaction order with respect to the activator" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nIFe = 1 "Reaction order with respect to the inhibitor" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
    equation
      rr = k1 * aF1.c ^ nAFe / iF1.c ^ nIFe * s1.c ^ nS1e * s2.c ^ nS2e * s1.V;
      annotation(Documentation, Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
    end Buifafi;
    annotation(Documentation(info = "
  <html>
  <p>This package contains models for stoichiometric reactions with two reactants and one product.</p>
  </html>"), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
  end BiUni;

  package BiBi "A+B -> C+D reactions"
    extends BioChem.Icons.Library;

    model Bbi "Bi-bi irreversible reaction"
      extends BioChem.Interfaces.Reactions.Bbi;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionOrder nS1e = 1 "Reaction order with respect to substrate 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nS2e = 1 "Reaction order with respect to substrate 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
    equation
      rr = k1 * s1.c ^ nS1e * s2.c ^ nS2e * s1.V;
      annotation(Documentation, Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
    end Bbi;

    model Bbifa "Bi-bi irreversible forward activation reaction"
      extends BioChem.Interfaces.Reactions.Bbi;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorForward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionOrder nS1e = 1 "Reaction order with respect to substrate 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nS2e = 1 "Reaction order with respect to substrate 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nAFe = 1 "Reaction order with respect to the activator" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
    equation
      rr = k1 * aF1.c ^ nAFe * s1.c ^ nS1e * s2.c ^ nS2e * s1.V;
      annotation(Documentation, Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
    end Bbifa;

    model Bbifi "Bi-bi irreversible forward inhibition reaction"
      extends BioChem.Interfaces.Reactions.Bbi;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorForward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionOrder nS1e = 1 "Reaction order with respect to substrate 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nS2e = 1 "Reaction order with respect to substrate 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nIFe = 1 "Reaction order with respect to the inhibitor" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
    equation
      rr = k1 / iF1.c ^ nIFe * s1.c ^ nS1e * s2.c ^ nS2e * s1.V;
      annotation(Documentation, Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
    end Bbifi;

    model Bbifafi "Bi-bi irreversible forward activation, forward inhibition reaction"
      extends BioChem.Interfaces.Reactions.Bbi;
      extends BioChem.Interfaces.Reactions.Modifiers.LeftActivatorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.RightInhibitorForward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionOrder nS1e = 1 "Reaction order with respect to substrate 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nS2e = 1 "Reaction order with respect to substrate 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nAFe = 1 "Reaction order with respect to the activator" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nIFe = 1 "Reaction order with respect to the inhibitor" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
    equation
      rr = k1 * aF1.c ^ nAFe / iF1.c ^ nIFe * s1.c ^ nS1e * s2.c ^ nS2e * s1.V;
      annotation(Documentation, Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
    end Bbifafi;
    annotation(Documentation(info = "
  <html>
  <p>This package contains models for stoichiometric reactions with two reactants and two products.</p>
  </html>"), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
  end BiBi;

  package BiTri "A+B -> C+D+E reactions"
    extends BioChem.Icons.Library;

    model Bti "Bi-tri irreversible reaction"
      extends BioChem.Interfaces.Reactions.Bti;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionOrder nS1e = 1 "Reaction order with respect to substrate 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nS2e = 1 "Reaction order with respect to substrate 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
    equation
      rr = k1 * s1.c ^ nS1e * s2.c ^ nS2e * s1.V;
      annotation(Documentation, Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
    end Bti;

    model Btifa "Bi-tri irreversible forward activation reaction"
      extends BioChem.Interfaces.Reactions.Bti;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorForward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionOrder nS1e = 1 "Reaction order with respect to substrate 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nS2e = 1 "Reaction order with respect to substrate 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nAFe = 1 "Reaction order with respect to the activator" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
    equation
      rr = k1 * aF1.c ^ nAFe * s1.c ^ nS1e * s2.c ^ nS2e * s1.V;
      annotation(Documentation, Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
    end Btifa;

    model Btifi "Bi-tri irreversible forward inhibition reaction"
      extends BioChem.Interfaces.Reactions.Bti;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorForward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionOrder nS1e = 1 "Reaction order with respect to substrate 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nS2e = 1 "Reaction order with respect to substrate 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nIFe = 1 "Reaction order with respect to the inhibitor" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
    equation
      rr = k1 / iF1.c ^ nIFe * s1.c ^ nS1e * s2.c ^ nS2e * s1.V;
      annotation(Documentation, Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
    end Btifi;

    model Btifafi "Bi-tri irreversible forward activation, forward inhibition reaction"
      extends BioChem.Interfaces.Reactions.Bti;
      extends BioChem.Interfaces.Reactions.Modifiers.LeftActivatorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.RightInhibitorForward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionOrder nS1e = 1 "Reaction order with respect to substrate 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nS2e = 1 "Reaction order with respect to substrate 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nAFe = 1 "Reaction order with respect to the activator" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nIFe = 1 "Reaction order with respect to the inhibitor" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
    equation
      rr = k1 * aF1.c ^ nAFe / iF1.c ^ nIFe * s1.c ^ nS1e * s2.c ^ nS2e * s1.V;
      annotation(Documentation, Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
    end Btifafi;
    annotation(Documentation(info = "
  <html>
  <p>This package contains models for stoichiometric reactions with two reactants and three products.</p>
  </html>"), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
  end BiTri;

  package TriUni "A+B+C -> D reactions"
    extends BioChem.Icons.Library;

    model Tui "Tri-uni irreversible reaction"
      extends BioChem.Interfaces.Reactions.Tui;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionOrder nS1e = 1 "Reaction order with respect to substrate 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nS2e = 1 "Reaction order with respect to substrate 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nS3e = 1 "Reaction order with respect to substrate 3" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
    equation
      rr = k1 * s1.c ^ nS1e * s2.c ^ nS2e * s3.c ^ nS3e * s1.V;
      annotation(Documentation, Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
    end Tui;

    model Tuifa "Tri-uni irreversible forward activation reaction"
      extends BioChem.Interfaces.Reactions.Tui;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorForward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionOrder nS1e = 1 "Reaction order with respect to substrate 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nS2e = 1 "Reaction order with respect to substrate 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nS3e = 1 "Reaction order with respect to substrate 3" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nAFe = 1 "Reaction order with respect to the activator" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
    equation
      rr = k1 * aF1.c ^ nAFe * s1.c ^ nS1e * s2.c ^ nS2e * s3.c ^ nS3e * s1.V;
      annotation(Documentation, Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
    end Tuifa;

    model Tuifi "Tri-uni irreversible forward inhibition reaction"
      extends BioChem.Interfaces.Reactions.Tui;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorForward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionOrder nS1e = 1 "Reaction order with respect to substrate 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nS2e = 1 "Reaction order with respect to substrate 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nS3e = 1 "Reaction order with respect to substrate 3" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nIFe = 1 "Reaction order with respect to the inhibitor" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
    equation
      rr = k1 / iF1.c ^ nIFe * s1.c ^ nS1e * s2.c ^ nS2e * s3.c ^ nS3e * s1.V;
      annotation(Documentation, Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
    end Tuifi;

    model Tuifafi "Tri-uni irreversible forward activation, forward inhibition reaction"
      extends BioChem.Interfaces.Reactions.Tui;
      extends BioChem.Interfaces.Reactions.Modifiers.LeftActivatorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.RightInhibitorForward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionOrder nS1e = 1 "Reaction order with respect to substrate 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nS2e = 1 "Reaction order with respect to substrate 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nS3e = 1 "Reaction order with respect to substrate 3" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nAFe = 1 "Reaction order with respect to the activator" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nIFe = 1 "Reaction order with respect to the inhibitor" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
    equation
      rr = k1 * aF1.c ^ nAFe / iF1.c ^ nIFe * s1.c ^ nS1e * s2.c ^ nS2e * s3.c ^ nS3e * s1.V;
      annotation(Documentation, Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
    end Tuifafi;
    annotation(Documentation(info = "
  <html>
  <p>This package contains models for stoichiometric reactions with three reactants and one product.</p>
  </html>"), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
  end TriUni;

  package TriBi "A+B+C -> D+E reactions"
    extends BioChem.Icons.Library;

    model Tbi "Tri-bi irreversible reaction"
      extends BioChem.Interfaces.Reactions.Tbi;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionOrder nS1e = 1 "Reaction order with respect to substrate 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nS2e = 1 "Reaction order with respect to substrate 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nS3e = 1 "Reaction order with respect to substrate 3" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
    equation
      rr = k1 * s1.c ^ nS1e * s2.c ^ nS2e * s3.c ^ nS3e * s1.V;
      annotation(Documentation, Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
    end Tbi;

    model Tbifa "Tri-bi irreversible forward activation reaction"
      extends BioChem.Interfaces.Reactions.Tbi;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorForward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionOrder nS1e = 1 "Reaction order with respect to substrate 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nS2e = 1 "Reaction order with respect to substrate 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nS3e = 1 "Reaction order with respect to substrate 3" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nAFe = 1 "Reaction order with respect to the activator" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
    equation
      rr = k1 * aF1.c ^ nAFe * s1.c ^ nS1e * s2.c ^ nS2e * s3.c ^ nS3e * s1.V;
      annotation(Documentation, Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
    end Tbifa;

    model Tbifi "Tri-bi irreversible forward inhibition reaction"
      extends BioChem.Interfaces.Reactions.Tbi;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorForward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionOrder nS1e = 1 "Reaction order with respect to substrate 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nS2e = 1 "Reaction order with respect to substrate 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nS3e = 1 "Reaction order with respect to substrate 3" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nIFe = 1 "Reaction order with respect to the inhibitor" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
    equation
      rr = k1 / iF1.c ^ nIFe * s1.c ^ nS1e * s2.c ^ nS2e * s3.c ^ nS3e * s1.V;
      annotation(Documentation, Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
    end Tbifi;

    model Tbifafi "Tri-bi irreversible forward activation, forward inhibition reaction"
      extends BioChem.Interfaces.Reactions.Tbi;
      extends BioChem.Interfaces.Reactions.Modifiers.LeftActivatorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.RightInhibitorForward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionOrder nS1e = 1 "Reaction order with respect to substrate 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nS2e = 1 "Reaction order with respect to substrate 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nS3e = 1 "Reaction order with respect to substrate 3" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nAFe = 1 "Reaction order with respect to the activator" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nIFe = 1 "Reaction order with respect to the inhibitor" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
    equation
      rr = k1 * aF1.c ^ nAFe / iF1.c ^ nIFe * s1.c ^ nS1e * s2.c ^ nS2e * s3.c ^ nS3e * s1.V;
      annotation(Documentation, Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
    end Tbifafi;
    annotation(Documentation(info = "p>This package contains models for stoichiometric reactions with three reactants and two products.</p>
 ", revisions = ""), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
  end TriBi;

  package TriTri "A+B+C -> D+E+F reactions"
    extends BioChem.Icons.Library;

    model Tti "Tri-tri irreversible reaction"
      extends BioChem.Interfaces.Reactions.Tti;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionOrder nS1e = 1 "Reaction order with respect to substrate 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nS2e = 1 "Reaction order with respect to substrate 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nS3e = 1 "Reaction order with respect to substrate 3" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
    equation
      rr = k1 * s1.c ^ nS1e * s2.c ^ nS2e * s3.c ^ nS3e * s1.V;
      annotation(Documentation, Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
    end Tti;

    model Ttifa "Tri-tri irreversible forward activation reaction"
      extends BioChem.Interfaces.Reactions.Tti;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorForward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionOrder nS1e = 1 "Reaction order with respect to substrate 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nS2e = 1 "Reaction order with respect to substrate 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nS3e = 1 "Reaction order with respect to substrate 3" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nAFe = 1 "Reaction order with respect to the activator" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
    equation
      rr = k1 * aF1.c ^ nAFe * s1.c ^ nS1e * s2.c ^ nS2e * s3.c ^ nS3e * s1.V;
      annotation(Documentation, Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
    end Ttifa;

    model Ttifi "Tri-tri irreversible forward inhibition reaction"
      extends BioChem.Interfaces.Reactions.Tti;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorForward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionOrder nS1e = 1 "Reaction order with respect to substrate 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nS2e = 1 "Reaction order with respect to substrate 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nS3e = 1 "Reaction order with respect to substrate 3" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nIFe = 1 "Reaction order with respect to the inhibitor" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
    equation
      rr = k1 / iF1.c ^ nIFe * s1.c ^ nS1e * s2.c ^ nS2e * s3.c ^ nS3e * s1.V;
      annotation(Documentation, Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
    end Ttifi;

    model Ttifafi "Tri-tri irreversible forward activation, forward inhibition reaction"
      extends BioChem.Interfaces.Reactions.Tti;
      extends BioChem.Interfaces.Reactions.Modifiers.LeftActivatorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.RightInhibitorForward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionOrder nS1e = 1 "Reaction order with respect to substrate 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nS2e = 1 "Reaction order with respect to substrate 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nS3e = 1 "Reaction order with respect to substrate 3" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nAFe = 1 "Reaction order with respect to the activator" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nIFe = 1 "Reaction order with respect to the inhibitor" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
    equation
      rr = k1 * aF1.c ^ nAFe / iF1.c ^ nIFe * s1.c ^ nS1e * s2.c ^ nS2e * s3.c ^ nS3e * s1.V;
      annotation(Documentation, Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
    end Ttifafi;
    annotation(Documentation(info = "
  <html>
  <p>This package contains models for stoichiometric reactions with three reactants and three products.</p>
  </html>"), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
  end TriTri;
  annotation(Documentation(info = "
  <html>
  <p>This package contains models for irreversible reactions with one to three reactants and products.</p>
  </html>"), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
end Irreversible;