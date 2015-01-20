within BioChem.Reactions.MassAction;

package Reversible "Reversible reactions"
  extends BioChem.Icons.Library;

  package UniUni "A <-> B reactions"
    extends BioChem.Icons.Library;

    model Uur "Uni-uni reversible reaction"
      extends BioChem.Interfaces.Reactions.Uur;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionOrder nS1e = 1 "Reaction order with respect to the substrate" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP1e = 1 "Reaction order with respect to the product" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
    equation
      rr = k1 * s1.c ^ nS1e * s1.V - k2 * p1.c ^ nP1e * p1.V;
      annotation(Documentation, Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
    end Uur;

    model Uurba "Uni-uni reversible backward activation reaction"
      extends BioChem.Interfaces.Reactions.Uur;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorBackward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionOrder nS1e = 1 "Reaction order with respect to the substrate" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP1e = 1 "Reaction order with respect to the product" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nABe = 1 "Reaction order with respect to the backward activator" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
    equation
      rr = k1 * s1.c ^ nS1e * s1.V - k2 * aB1.c ^ nABe * p1.c ^ nP1e * p1.V;
      annotation(Documentation, Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
    end Uurba;

    model Uurbi "Uni-uni reversible backward inhibition reaction"
      extends BioChem.Interfaces.Reactions.Uur;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorBackward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionOrder nS1e = 1 "Reaction order with respect to the substrate" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP1e = 1 "Reaction order with respect to the product" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nIBe = 1 "Reaction order with respect to the backward inhibitor" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
    equation
      rr = k1 * s1.c ^ nS1e * s1.V - k2 / iB1.c ^ nIBe * p1.c ^ nP1e * p1.V;
      annotation(Documentation, Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
    end Uurbi;

    model Uurfa "Uni-uni reversible forward activation reaction"
      extends BioChem.Interfaces.Reactions.Uur;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorForward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionOrder nS1e = 1 "Reaction order with respect to the substrate" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP1e = 1 "Reaction order with respect to the product" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nAFe = 1 "Reaction order with respect to the forward activator" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
    equation
      rr = k1 * aF1.c ^ nAFe * s1.c ^ nS1e * s1.V - k2 * p1.c ^ nP1e * p1.V;
      annotation(Documentation, Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
    end Uurfa;

    model Uurfi "Uni-uni reversible forward inhibition reaction"
      extends BioChem.Interfaces.Reactions.Uur;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorForward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionOrder nS1e = 1 "Reaction order with respect to the substrate" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP1e = 1 "Reaction order with respect to the product" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nIFe = 1 "Reaction order with respect to the forward inhibitor" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
    equation
      rr = k1 / iF1.c ^ nIFe * s1.c ^ nS1e * s1.V - k2 * p1.c ^ nP1e * p1.V;
      annotation(Documentation, Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
    end Uurfi;

    model Uurbabi "Uni-uni reversible backward activation, backward inhibition reaction"
      extends BioChem.Interfaces.Reactions.Uur;
      extends BioChem.Interfaces.Reactions.Modifiers.RightActivatorBackward;
      extends BioChem.Interfaces.Reactions.Modifiers.LeftInhibitorBackward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionOrder nS1e = 1 "Reaction order with respect to the substrate" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP1e = 1 "Reaction order with respect to the product" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nABe = 1 "Reaction order with respect to the backward activator" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nIBe = 1 "Reaction order with respect to the backward inhibitor" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
    equation
      rr = k1 * s1.c ^ nS1e * s1.V - k2 * aB1.c ^ nABe / iB1.c ^ nIBe * p1.c ^ nP1e * p1.V;
      annotation(Documentation, Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
    end Uurbabi;

    model Uurfaba "Uni-uni reversible forward activation, backward activation reaction"
      extends BioChem.Interfaces.Reactions.Uur;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorBackward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionOrder nS1e = 1 "Reaction order with respect to the substrate" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP1e = 1 "Reaction order with respect to the product" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nAFe = 1 "Reaction order with respect to the forward activator" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nABe = 1 "Reaction order with respect to the backward activator" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
    equation
      rr = k1 * aF1.c ^ nAFe * s1.c ^ nS1e * s1.V - k2 * aB1.c ^ nABe * p1.c ^ nP1e * p1.V;
      annotation(Documentation, Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
    end Uurfaba;

    model Uurfabi "Uni-uni reversible forward activation, backward inhibition reaction"
      extends BioChem.Interfaces.Reactions.Uur;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorBackward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionOrder nS1e = 1 "Reaction order with respect to the substrate" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP1e = 1 "Reaction order with respect to the product" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nAFe = 1 "Reaction order with respect to the forward activator" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nIBe = 1 "Reaction order with respect to the backward inhibitor" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
    equation
      rr = k1 * aF1.c ^ nAFe * s1.c ^ nS1e * s1.V - k2 / iB1.c ^ nIBe * p1.c ^ nP1e * p1.V;
      annotation(Documentation, Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
    end Uurfabi;

    model Uurfafi "Uni-uni reversible forward activation, forward inhibition reaction"
      extends BioChem.Interfaces.Reactions.Uur;
      extends BioChem.Interfaces.Reactions.Modifiers.LeftActivatorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.RightInhibitorForward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionOrder nS1e = 1 "Reaction order with respect to the substrate" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP1e = 1 "Reaction order with respect to the product" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nAFe = 1 "Reaction order with respect to the forward activator" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nIFe = 1 "Reaction order with respect to the forward inhibitor" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
    equation
      rr = k1 * aF1.c ^ nAFe / iF1.c ^ nIFe * s1.c ^ nS1e * s1.V - k2 * p1.c ^ nP1e * p1.V;
      annotation(Documentation, Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
    end Uurfafi;

    model Uurfiba "Uni-uni reversible forward inhibition, backward activation reaction"
      extends BioChem.Interfaces.Reactions.Uur;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorBackward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionOrder nS1e = 1 "Reaction order with respect to the substrate" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP1e = 1 "Reaction order with respect to the product" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nIFe = 1 "Reaction order with respect to the forward inhibitor" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nABe = 1 "Reaction order with respect to the backward activator" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
    equation
      rr = k1 / iF1.c ^ nIFe * s1.c ^ nS1e * s1.V - k2 * aB1.c ^ nABe * p1.c ^ nP1e * p1.V;
      annotation(Documentation, Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
    end Uurfiba;

    model Uurfibi "Uni-uni reversible forward inhibition, backward inhibition reaction"
      extends BioChem.Interfaces.Reactions.Uur;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorBackward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionOrder nS1e = 1 "Reaction order with respect to the substrate" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP1e = 1 "Reaction order with respect to the product" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nIFe = 1 "Reaction order with respect to the forward inhibitor" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nIBe = 1 "Reaction order with respect to the backward inhibitor" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
    equation
      rr = k1 / iF1.c ^ nIFe * s1.c ^ nS1e * s1.V - k2 / iB1.c ^ nIBe * p1.c ^ nP1 * p1.V;
      annotation(Documentation, Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
    end Uurfibi;

    model Uurfababi "Uni-uni reversible forward activation, backward activation, backward inhibition reaction"
      extends BioChem.Interfaces.Reactions.Uur;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.RightActivatorBackward;
      extends BioChem.Interfaces.Reactions.Modifiers.LeftInhibitorBackward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionOrder nS1e = 1 "Reaction order with respect to the substrate" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP1e = 1 "Reaction order with respect to the product" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nAFe = 1 "Reaction order with respect to the forward activator" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nABe = 1 "Reaction order with respect to the backward activator" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nIBe = 1 "Reaction order with respect to the backward inhibitor" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
    equation
      rr = k1 * aF1.c ^ nAFe * s1.c ^ nS1e * s1.V - k2 * aB1.c ^ nABe / iB1.c ^ nIBe * p1.c ^ nP1e * p1.V;
      annotation(Documentation, Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
    end Uurfababi;

    model Uurfafiba "Uni-uni reversible forward activation, forward inhibition, backward activation reaction"
      extends BioChem.Interfaces.Reactions.Uur;
      extends BioChem.Interfaces.Reactions.Modifiers.LeftActivatorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.RightInhibitorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorBackward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionOrder nS1e = 1 "Reaction order with respect to the substrate" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP1e = 1 "Reaction order with respect to the product" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nAFe = 1 "Reaction order with respect to the forward activator" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nIFe = 1 "Reaction order with respect to the forward inhibitor" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nABe = 1 "Reaction order with respect to the backward activator" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
    equation
      rr = k1 * aF1.c ^ nAFe / iF1.c ^ nIFe * s1.c ^ nS1e * s1.V - k2 * aB1.c ^ nABe * p1.c ^ nP1e * p1.V;
      annotation(Documentation, Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
    end Uurfafiba;

    model Uurfafibi "Uni-uni reversible forward activation, forward inhibition, backward inhibition reaction"
      extends BioChem.Interfaces.Reactions.Uur;
      extends BioChem.Interfaces.Reactions.Modifiers.LeftActivatorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.RightInhibitorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorBackward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionOrder nS1e = 1 "Reaction order with respect to the substrate" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP1e = 1 "Reaction order with respect to the product" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nAFe = 1 "Reaction order with respect to the forward activator" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nIFe = 1 "Reaction order with respect to the forward inhibitor" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nIBe = 1 "Reaction order with respect to the backward inhibitor" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
    equation
      rr = k1 * aF1.c ^ nAFe / iF1.c ^ nIFe * s1.c ^ nS1e * s1.V - k2 / iB1.c ^ nIBe * p1.c ^ nP1e * p1.V;
      annotation(Documentation, Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
    end Uurfafibi;

    model Uurfibabi "Uni-uni reversible forward inhibition, backward activation, backward inhibition reaction"
      extends BioChem.Interfaces.Reactions.Uur;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.RightActivatorBackward;
      extends BioChem.Interfaces.Reactions.Modifiers.LeftInhibitorBackward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionOrder nS1e = 1 "Reaction order with respect to the substrate" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP1e = 1 "Reaction order with respect to the product" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nIFe = 1 "Reaction order with respect to the forward inhibitor" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nABe = 1 "Reaction order with respect to the backward activator" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nIBe = 1 "Reaction order with respect to the backward inhibitor" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
    equation
      rr = k1 / iF1.c ^ nIFe * s1.c ^ nS1e * s1.V - k2 * aB1.c ^ nABe / iB1.c ^ nIBe * p1.c ^ nP1e * p1.V;
      annotation(Documentation, Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
    end Uurfibabi;

    model Uurfafibabi "Uni-uni reversible forward activation, forward inhibition, backward activation, backward inhibition reaction"
      extends BioChem.Interfaces.Reactions.Uur;
      extends BioChem.Interfaces.Reactions.Modifiers.LeftActivatorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.RightInhibitorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.RightActivatorBackward;
      extends BioChem.Interfaces.Reactions.Modifiers.LeftInhibitorBackward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionOrder nS1e = 1 "Reaction order with respect to the substrate" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP1e = 1 "Reaction order with respect to the product" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nAFe = 1 "Reaction order with respect to the forward activator" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nIFe = 1 "Reaction order with respect to the forward inhibitor" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nABe = 1 "Reaction order with respect to the backward activator" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nIBe = 1 "Reaction order with respect to the backward inhibitor" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
    equation
      rr = k1 * aF1.c ^ nAFe / iF1.c ^ nIFe * s1.c ^ nS1e * s1.V - k2 * aB1.c ^ nABe / iB1.c ^ nIBe * p1.c ^ nP1e * p1.V;
      annotation(Documentation, Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
    end Uurfafibabi;
    annotation(Documentation(info = "
  <html>
  <p>This package contains models for stoichiometric reactions with one reactant and one product.</p>
  </html>"), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
  end UniUni;

  package UniBi "A <-> B+C reactions"
    extends BioChem.Icons.Library;

    model Ubr "Uni-bi reversible reaction"
      extends BioChem.Interfaces.Reactions.Ubr;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionOrder nS1e = 1 "Reaction order with respect to the substrate" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP1e = 1 "Reaction order with respect to product 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP2e = 1 "Reaction order with respect to product 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
    equation
      rr = k1 * s1.c ^ nS1e * s1.V - k2 * p1.c ^ nP1e * p2.c ^ nP2e * p1.V;
      annotation(Documentation, Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
    end Ubr;

    model Ubrba "Uni-bi reversible backward activation reaction"
      extends BioChem.Interfaces.Reactions.Ubr;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorBackward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionOrder nS1e = 1 "Reaction order with respect to the substrate" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP1e = 1 "Reaction order with respect to product 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP2e = 1 "Reaction order with respect to product 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nABe = 1 "Reaction order with respect to the backward activator" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
    equation
      rr = k1 * s1.c ^ nS1e * s1.V - k2 * aB1.c ^ nABe * p1.c ^ nP1e * p2.c ^ nP2e * p1.V;
      annotation(Documentation, Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
    end Ubrba;

    model Ubrbi "Uni-bi reversible backward inhibition reaction"
      extends BioChem.Interfaces.Reactions.Ubr;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorBackward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionOrder nS1e = 1 "Reaction order with respect to the substrate" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP1e = 1 "Reaction order with respect to product 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP2e = 1 "Reaction order with respect to product 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nIBe = 1 "Reaction order with respect to the backward inhibitor" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
    equation
      rr = k1 * s1.c ^ nS1e * s1.V - k2 / iB1.c ^ nIBe * p1.c ^ nP1e * p2.c ^ nP2e * p1.V;
      annotation(Documentation, Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
    end Ubrbi;

    model Ubrfa "Uni-bi reversible forward activation reaction"
      extends BioChem.Interfaces.Reactions.Ubr;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorForward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionOrder nS1e = 1 "Reaction order with respect to the substrate" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP1e = 1 "Reaction order with respect to product 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP2e = 1 "Reaction order with respect to product 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nAFe = 1 "Reaction order with respect to the forward activator" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
    equation
      rr = k1 * aF1.c ^ nAFe * s1.c ^ nS1e * s1.V - k2 * p1.c ^ nP1e * p2.c ^ nP2e * p1.V;
      annotation(Documentation, Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
    end Ubrfa;

    model Ubrfi "Uni-bi reversible forward inhibition reaction"
      extends BioChem.Interfaces.Reactions.Ubr;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorForward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionOrder nS1e = 1 "Reaction order with respect to the substrate" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP1e = 1 "Reaction order with respect to product 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP2e = 1 "Reaction order with respect to product 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nIFe = 1 "Reaction order with respect to the forward inhibitor" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
    equation
      rr = k1 / iF1.c ^ nIFe * s1.c ^ nS1e * s1.V - k2 * p1.c ^ nP1e * p2.c ^ nP2e * p1.V;
      annotation(Documentation, Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
    end Ubrfi;

    model Ubrbabi "Uni-bi reversible backward activation, backward inhibition reaction"
      extends BioChem.Interfaces.Reactions.Ubr;
      extends BioChem.Interfaces.Reactions.Modifiers.RightActivatorBackward;
      extends BioChem.Interfaces.Reactions.Modifiers.LeftInhibitorBackward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionOrder nS1e = 1 "Reaction order with respect to the substrate" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP1e = 1 "Reaction order with respect to product 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP2e = 1 "Reaction order with respect to product 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nABe = 1 "Reaction order with respect to the backward activator" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nIBe = 1 "Reaction order with respect to the backward inhibitor" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
    equation
      rr = k1 * s1.c ^ nS1e * s1.V - k2 * aB1.c ^ nABe / iB1.c ^ nIBe * p1.c ^ nP1e * p2.c ^ nP2e * p1.V;
      annotation(Documentation, Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
    end Ubrbabi;

    model Ubrfaba "Uni-bi reversible forward activation, backward activation reaction"
      extends BioChem.Interfaces.Reactions.Ubr;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorBackward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionOrder nS1e = 1 "Reaction order with respect to the substrate" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP1e = 1 "Reaction order with respect to product 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP2e = 1 "Reaction order with respect to product 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nAFe = 1 "Reaction order with respect to the forward activator" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nABe = 1 "Reaction order with respect to the backward activator" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
    equation
      rr = k1 * aF1.c ^ nAFe * s1.c ^ nS1e * s1.V - k2 * aB1.c ^ nABe * p1.c ^ nP1e * p2.c ^ nP2e * p1.V;
      annotation(Documentation, Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
    end Ubrfaba;

    model Ubrfabi "Uni-bi reversible forward activation, backward inhibition reaction"
      extends BioChem.Interfaces.Reactions.Ubr;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorBackward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionOrder nS1e = 1 "Reaction order with respect to the substrate" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP1e = 1 "Reaction order with respect to product 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP2e = 1 "Reaction order with respect to product 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nAFe = 1 "Reaction order with respect to the forward activator" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nIBe = 1 "Reaction order with respect to the backward inhibitor" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
    equation
      rr = k1 * aF1.c ^ nAFe * s1.c ^ nS1e * s1.V - k2 / iB1.c ^ nIBe * p1.c ^ nP1e * p2.c ^ nP2e * p1.V;
      annotation(Documentation, Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
    end Ubrfabi;

    model Ubrfafi "Uni-bi reversible forward activation, forward inhibition reaction"
      extends BioChem.Interfaces.Reactions.Ubr;
      extends BioChem.Interfaces.Reactions.Modifiers.LeftActivatorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.RightInhibitorForward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionOrder nS1e = 1 "Reaction order with respect to the substrate" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP1e = 1 "Reaction order with respect to product 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP2e = 1 "Reaction order with respect to product 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nAFe = 1 "Reaction order with respect to the forward activator" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nIFe = 1 "Reaction order with respect to the forward inhibitor" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
    equation
      rr = k1 * aF1.c ^ nAFe / iF1.c ^ nIFe * s1.c ^ nS1e * s1.V - k2 * p1.c ^ nP1e * p2.c ^ nP2e * p1.V;
      annotation(Documentation, Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
    end Ubrfafi;

    model Ubrfiba "Uni-bi reversible forward inhibition, backward activation reaction"
      extends BioChem.Interfaces.Reactions.Ubr;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorBackward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionOrder nS1e = 1 "Reaction order with respect to the substrate" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP1e = 1 "Reaction order with respect to product 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP2e = 1 "Reaction order with respect to product 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nIFe = 1 "Reaction order with respect to the forward inhibitor" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nABe = 1 "Reaction order with respect to the backward activator" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
    equation
      rr = k1 / iF1.c ^ nIFe * s1.c ^ nS1e * s1.V - k2 * aB1.c ^ nABe * p1.c ^ nP1e * p2.c ^ nP2e * p1.V;
      annotation(Documentation, Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
    end Ubrfiba;

    model Ubrfibi "Uni-bi reversible forward inhibition, backward inhibition reaction"
      extends BioChem.Interfaces.Reactions.Ubr;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorBackward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionOrder nS1e = 1 "Reaction order with respect to the substrate" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP1e = 1 "Reaction order with respect to product 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP2e = 1 "Reaction order with respect to product 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nIFe = 1 "Reaction order with respect to the forward inhibitor" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nIBe = 1 "Reaction order with respect to the backward inhibitor" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
    equation
      rr = k1 / iF1.c ^ nIFe * s1.c ^ nS1e * s1.V - k2 / iB1.c ^ nIBe * p1.c ^ nP1e * p2.c ^ nP2e * p1.V;
      annotation(Documentation, Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
    end Ubrfibi;

    model Ubrfababi "Uni-bi reversible forward activation, backward activation, backward inhibition reaction"
      extends BioChem.Interfaces.Reactions.Ubr;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.RightActivatorBackward;
      extends BioChem.Interfaces.Reactions.Modifiers.LeftInhibitorBackward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionOrder nS1e = 1 "Reaction order with respect to the substrate" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP1e = 1 "Reaction order with respect to product 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP2e = 1 "Reaction order with respect to product 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nAFe = 1 "Reaction order with respect to the forward activator" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nABe = 1 "Reaction order with respect to the backward activator" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nIBe = 1 "Reaction order with respect to the backward inhibitor" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
    equation
      rr = k1 * aF1.c ^ nAFe * s1.c ^ nS1e * s1.V - k2 * aB1.c ^ nABe / iB1.c ^ nIBe * p1.c ^ nP1e * p2.c ^ nP2e * p1.V;
      annotation(Documentation, Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
    end Ubrfababi;

    model Ubrfafiba "Uni-bi reversible forward activation, forward inhibition, backward activation reaction"
      extends BioChem.Interfaces.Reactions.Ubr;
      extends BioChem.Interfaces.Reactions.Modifiers.LeftActivatorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.RightInhibitorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorBackward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionOrder nS1e = 1 "Reaction order with respect to the substrate" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP1e = 1 "Reaction order with respect to product 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP2e = 1 "Reaction order with respect to product 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nAFe = 1 "Reaction order with respect to the forward activator" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nIFe = 1 "Reaction order with respect to the forward inhibitor" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nABe = 1 "Reaction order with respect to the backward activator" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
    equation
      rr = k1 * aF1.c ^ nAFe / iF1.c ^ nIFe * s1.c ^ nS1e * s1.V - k2 * aB1.c ^ nABe * p1.c ^ nP1e * p2.c ^ nP2e * p1.V;
      annotation(Documentation, Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
    end Ubrfafiba;

    model Ubrfafibi "Uni-bi reversible forward activation, forward inhibition, backward inhibition reaction"
      extends BioChem.Interfaces.Reactions.Ubr;
      extends BioChem.Interfaces.Reactions.Modifiers.LeftActivatorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.RightInhibitorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorBackward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionOrder nS1e = 1 "Reaction order with respect to the substrate" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP1e = 1 "Reaction order with respect to product 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP2e = 1 "Reaction order with respect to product 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nAFe = 1 "Reaction order with respect to the forward activator" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nIFe = 1 "Reaction order with respect to the forward inhibitor" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nIBe = 1 "Reaction order with respect to the backward inhibitor" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
    equation
      rr = k1 * aF1.c ^ nAFe / iF1.c ^ nIFe * s1.c ^ nS1e * s1.V - k2 / iB1.c ^ nIBe * p1.c ^ nP1e * p2.c ^ nP2e * p1.V;
      annotation(Documentation, Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
    end Ubrfafibi;

    model Ubrfibabi "Uni-bi reversible forward inhibition, backward activation, backward inhibition reaction"
      extends BioChem.Interfaces.Reactions.Ubr;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.RightActivatorBackward;
      extends BioChem.Interfaces.Reactions.Modifiers.LeftInhibitorBackward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionOrder nS1e = 1 "Reaction order with respect to the substrate" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP1e = 1 "Reaction order with respect to product 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP2e = 1 "Reaction order with respect to product 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nIFe = 1 "Reaction order with respect to the forward inhibitor" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nABe = 1 "Reaction order with respect to the backward activator" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nIBe = 1 "Reaction order with respect to the backward inhibitor" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
    equation
      rr = k1 / iF1.c ^ nIFe * s1.c ^ nS1e * s1.V - k2 * aB1.c ^ nABe / iB1.c ^ nIBe * p1.c ^ nP1e * p2.c ^ nP2e * p1.V;
      annotation(Documentation, Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
    end Ubrfibabi;

    model Ubrfafibabi "Uni-bi reversible forward activation, forward inhibition, backward activation, backward inhibition reaction"
      extends BioChem.Interfaces.Reactions.Ubr;
      extends BioChem.Interfaces.Reactions.Modifiers.LeftActivatorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.RightInhibitorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.RightActivatorBackward;
      extends BioChem.Interfaces.Reactions.Modifiers.LeftInhibitorBackward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionOrder nS1e = 1 "Reaction order with respect to the substrate" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP1e = 1 "Reaction order with respect to product 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP2e = 1 "Reaction order with respect to product 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nAFe = 1 "Reaction order with respect to the forward activator" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nIFe = 1 "Reaction order with respect to the forward inhibitor" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nABe = 1 "Reaction order with respect to the backward activator" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nIBe = 1 "Reaction order with respect to the backward inhibitor" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
    equation
      rr = k1 * aF1.c ^ nAFe / iF1.c ^ nIFe * s1.c ^ nS1e * s1.V - k2 * aB1.c ^ nABe / iB1.c ^ nIBe * p1.c ^ nP1e * p2.c ^ nP2e * p1.V;
      annotation(Documentation, Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
    end Ubrfafibabi;
    annotation(Documentation(info = "
  <html>
  <p>This package contains models for stoichiometric reactions with one reactant and two products.</p>
  </html>"), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
  end UniBi;

  package UniTri "A <-> B+C+D reactions"
    extends BioChem.Icons.Library;

    model Utr "Uni-tri reversible reaction"
      extends BioChem.Interfaces.Reactions.Utr;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionOrder nS1e = 1 "Reaction order with respect to the substrate" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP1e = 1 "Reaction order with respect to product 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP2e = 2 "Reaction order with respect to product 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP3e = 3 "Reaction order with respect to product 3" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
    equation
      rr = k1 * s1.c ^ nS1e * s1.V - k2 * p1.c ^ nP1e * p2.c ^ nP2e * p3.c ^ nP3e * p1.V;
      annotation(Documentation, Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
    end Utr;

    model Utrba "Uni-tri reversible backward activation reaction"
      extends BioChem.Interfaces.Reactions.Utr;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorBackward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionOrder nS1e = 1 "Reaction order with respect to the substrate" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP1e = 1 "Reaction order with respect to product 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP2e = 2 "Reaction order with respect to product 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP3e = 3 "Reaction order with respect to product 3" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nABe = 1 "Reaction order with respect to the backward activator" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
    equation
      rr = k1 * s1.c ^ nS1e * s1.V - k2 * aB1.c ^ nABe * p1.c ^ nP1e * p2.c ^ nP2e * p3.c ^ nP3e * p1.V;
      annotation(Documentation, Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
    end Utrba;

    model Utrbi "Uni-tri reversible backward inhibition reaction"
      extends BioChem.Interfaces.Reactions.Utr;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorBackward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionOrder nS1e = 1 "Reaction order with respect to the substrate" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP1e = 1 "Reaction order with respect to product 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP2e = 2 "Reaction order with respect to product 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP3e = 3 "Reaction order with respect to product 3" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nIBe = 1 "Reaction order with respect to the backward inhibitor" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
    equation
      rr = k1 * s1.c ^ nS1e * s1.V - k2 / iB1.c ^ nIBe * p1.c ^ nP1e * p2.c ^ nP2e * p3.c ^ nP3e * p1.V;
      annotation(Documentation, Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
    end Utrbi;

    model Utrfa "Uni-tri reversible forward activation reaction"
      extends BioChem.Interfaces.Reactions.Utr;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorForward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionOrder nS1e = 1 "Reaction order with respect to the substrate" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP1e = 1 "Reaction order with respect to product 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP2e = 2 "Reaction order with respect to product 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP3e = 3 "Reaction order with respect to product 3" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nAFe = 1 "Reaction order with respect to the forward activator" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
    equation
      rr = k1 * aF1.c ^ nAFe * s1.c ^ nS1e * s1.V - k2 * p1.c ^ nP1e * p2.c ^ nP2e * p3.c ^ nP3e * p1.V;
      annotation(Documentation, Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
    end Utrfa;

    model Utrfi "Uni-tri reversible forward inhibition reaction"
      extends BioChem.Interfaces.Reactions.Utr;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorForward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionOrder nS1e = 1 "Reaction order with respect to the substrate" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP1e = 1 "Reaction order with respect to product 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP2e = 2 "Reaction order with respect to product 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP3e = 3 "Reaction order with respect to product 3" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nIFe = 1 "Reaction order with respect to the forward inhibitor" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
    equation
      rr = k1 / iF1.c ^ nIFe * s1.c ^ nS1e * s1.V - k2 * p1.c ^ nP1e * p2.c ^ nP2e * p3.c ^ nP3e * p1.V;
      annotation(Documentation, Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
    end Utrfi;

    model Utrbabi "Uni-tri reversible backward activation, backward inhibition reaction"
      extends BioChem.Interfaces.Reactions.Utr;
      extends BioChem.Interfaces.Reactions.Modifiers.RightActivatorBackward;
      extends BioChem.Interfaces.Reactions.Modifiers.LeftInhibitorBackward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionOrder nS1e = 1 "Reaction order with respect to the substrate" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP1e = 1 "Reaction order with respect to product 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP2e = 2 "Reaction order with respect to product 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP3e = 3 "Reaction order with respect to product 3" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nABe = 1 "Reaction order with respect to the backward activator" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nIBe = 1 "Reaction order with respect to the backward inhibitor" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
    equation
      rr = k1 * s1.c ^ nS1e * s1.V - k2 * aB1.c ^ nABe / iB1.c ^ nIBe * p1.c ^ nP1e * p2.c ^ nP2e * p3.c ^ nP3e * p1.V;
      annotation(Documentation, Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
    end Utrbabi;

    model Utrfaba "Uni-tri reversible forward activation, backward activation reaction"
      extends BioChem.Interfaces.Reactions.Utr;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorBackward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionOrder nS1e = 1 "Reaction order with respect to the substrate" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP1e = 1 "Reaction order with respect to product 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP2e = 2 "Reaction order with respect to product 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP3e = 3 "Reaction order with respect to product 3" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nAFe = 1 "Reaction order with respect to the forward activator" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nABe = 1 "Reaction order with respect to the backward activator" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
    equation
      rr = k1 * aF1.c ^ nAFe * s1.c ^ nS1e * s1.V - k2 * aB1.c ^ nABe * p1.c ^ nP1e * p2.c ^ nP2e * p3.c ^ nP3e * p1.V;
      annotation(Documentation, Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
    end Utrfaba;

    model Utrfabi "Uni-tri reversible forward activation, backward inhibition reaction"
      extends BioChem.Interfaces.Reactions.Utr;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorBackward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionOrder nS1e = 1 "Reaction order with respect to the substrate" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP1e = 1 "Reaction order with respect to product 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP2e = 2 "Reaction order with respect to product 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP3e = 3 "Reaction order with respect to product 3" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nAFe = 1 "Reaction order with respect to the forward activator" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nIBe = 1 "Reaction order with respect to the backward inhibitor" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
    equation
      rr = k1 * aF1.c ^ nAFe * s1.c ^ nS1e * s1.V - k2 / iB1.c ^ nIBe * p1.c ^ nP1e * p2.c ^ nP2e * p3.c ^ nP3e * p1.V;
      annotation(Documentation, Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
    end Utrfabi;

    model Utrfafi "Uni-tri reversible forward activation, forward inhibition reaction"
      extends BioChem.Interfaces.Reactions.Utr;
      extends BioChem.Interfaces.Reactions.Modifiers.LeftActivatorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.RightInhibitorForward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionOrder nS1e = 1 "Reaction order with respect to the substrate" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP1e = 1 "Reaction order with respect to product 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP2e = 2 "Reaction order with respect to product 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP3e = 3 "Reaction order with respect to product 3" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nAFe = 1 "Reaction order with respect to the forward activator" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nIFe = 1 "Reaction order with respect to the forward inhibitor" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
    equation
      rr = k1 * aF1.c ^ nAFe / iF1.c ^ nIFe * s1.c ^ nS1e * s1.V - k2 * p1.c ^ nP1e * p2.c ^ nP2e * p3.c ^ nP3e * p1.V;
      annotation(Documentation, Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
    end Utrfafi;

    model Utrfiba "Uni-tri reversible forward inhibition, backward activation reaction"
      extends BioChem.Interfaces.Reactions.Utr;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorBackward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionOrder nS1e = 1 "Reaction order with respect to the substrate" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP1e = 1 "Reaction order with respect to product 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP2e = 2 "Reaction order with respect to product 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP3e = 3 "Reaction order with respect to product 3" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nIFe = 1 "Reaction order with respect to the forward inhibitor" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nABe = 1 "Reaction order with respect to the backward activator" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
    equation
      rr = k1 / iF1.c ^ nIFe * s1.c ^ nS1e * s1.V - k2 * aB1.c ^ nABe * p1.c ^ nP1e * p2.c ^ nP2e * p3.c ^ nP3e * p1.V;
      annotation(Documentation, Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
    end Utrfiba;

    model Utrfibi "Uni-tri reversible forward inhibition, backward inhibition reaction"
      extends BioChem.Interfaces.Reactions.Utr;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorBackward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionOrder nS1e = 1 "Reaction order with respect to the substrate" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP1e = 1 "Reaction order with respect to product 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP2e = 2 "Reaction order with respect to product 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP3e = 3 "Reaction order with respect to product 3" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nIFe = 1 "Reaction order with respect to the forward inhibitor" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nIBe = 1 "Reaction order with respect to the backward inhibitor" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
    equation
      rr = k1 / iF1.c ^ nIFe * s1.c ^ nS1e * s1.V - k2 / iB1.c ^ nIBe * p1.c ^ nP1e * p2.c ^ nP2e * p3.c ^ nP3e * p1.V;
      annotation(Documentation, Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
    end Utrfibi;

    model Utrfababi "Uni-tri reversible forward activation, backward activation, backward inhibition reaction"
      extends BioChem.Interfaces.Reactions.Utr;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.RightActivatorBackward;
      extends BioChem.Interfaces.Reactions.Modifiers.LeftInhibitorBackward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionOrder nS1e = 1 "Reaction order with respect to the substrate" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP1e = 1 "Reaction order with respect to product 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP2e = 2 "Reaction order with respect to product 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP3e = 3 "Reaction order with respect to product 3" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nAFe = 1 "Reaction order with respect to the forward activator" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nABe = 1 "Reaction order with respect to the backward activator" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nIBe = 1 "Reaction order with respect to the backward inhibitor" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
    equation
      rr = k1 * aF1.c ^ nAFe * s1.c ^ nS1e * s1.V - k2 * aB1.c ^ nABe / iB1.c ^ nIBe * p1.c ^ nP1e * p2.c ^ nP2e * p3.c ^ nP3e * p1.V;
      annotation(Documentation, Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
    end Utrfababi;

    model Utrfafibi "Uni-tri reversible forward activation, forward inhibition, backward inhibition reaction"
      extends BioChem.Interfaces.Reactions.Utr;
      extends BioChem.Interfaces.Reactions.Modifiers.LeftActivatorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.RightInhibitorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorBackward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionOrder nS1e = 1 "Reaction order with respect to the substrate" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP1e = 1 "Reaction order with respect to product 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP2e = 2 "Reaction order with respect to product 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP3e = 3 "Reaction order with respect to product 3" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nAFe = 1 "Reaction order with respect to the forward activator" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nIFe = 1 "Reaction order with respect to the forward inhibitor" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nIBe = 1 "Reaction order with respect to the backward inhibitor" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
    equation
      rr = k1 * aF1.c ^ nAFe / iF1.c ^ nIFe * s1.c ^ nS1e * s1.V - k2 / iB1.c ^ nIBe * p1.c ^ nP1e * p2.c ^ nP2e * p3.c ^ nP3e * p1.V;
      annotation(Documentation, Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
    end Utrfafibi;

    model Utrfafiba "Uni-tri reversible forward activation, forward inhibition, backward activation reaction"
      extends BioChem.Interfaces.Reactions.Utr;
      extends BioChem.Interfaces.Reactions.Modifiers.LeftActivatorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.RightInhibitorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorBackward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionOrder nS1e = 1 "Reaction order with respect to the substrate" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP1e = 1 "Reaction order with respect to product 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP2e = 2 "Reaction order with respect to product 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP3e = 3 "Reaction order with respect to product 3" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nAFe = 1 "Reaction order with respect to the forward activator" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nIFe = 1 "Reaction order with respect to the forward inhibitor" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nABe = 1 "Reaction order with respect to the backward activator" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
    equation
      rr = k1 * aF1.c ^ nAFe / iF1.c ^ nIFe * s1.c ^ nS1e * s1.V - k2 * aB1.c ^ nABe * p1.c ^ nP1e * p2.c ^ nP2e * p3.c ^ nP3e * p1.V;
      annotation(Documentation, Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
    end Utrfafiba;

    model Utrfibabi "Uni-tri reversible forward inhibition, backward activation, backward inhibition reaction"
      extends BioChem.Interfaces.Reactions.Utr;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.RightActivatorBackward;
      extends BioChem.Interfaces.Reactions.Modifiers.LeftInhibitorBackward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionOrder nS1e = 1 "Reaction order with respect to the substrate" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP1e = 1 "Reaction order with respect to product 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP2e = 2 "Reaction order with respect to product 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP3e = 3 "Reaction order with respect to product 3" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nIFe = 1 "Reaction order with respect to the forward inhibitor" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nABe = 1 "Reaction order with respect to the backward activator" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nIBe = 1 "Reaction order with respect to the backward inhibitor" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
    equation
      rr = k1 / iF1.c ^ nIFe * s1.c ^ nS1e * s1.V - k2 * aB1.c ^ nABe / iB1.c ^ nIBe * p1.c ^ nP1e * p2.c ^ nP2e * p3.c ^ nP3e * p1.V;
      annotation(Documentation, Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
    end Utrfibabi;

    model Utrfafibabi "Uni-tri reversible forward activation, forward inhibition, backward activation, backward inhibition reaction"
      extends BioChem.Interfaces.Reactions.Utr;
      extends BioChem.Interfaces.Reactions.Modifiers.LeftActivatorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.RightInhibitorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.RightActivatorBackward;
      extends BioChem.Interfaces.Reactions.Modifiers.LeftInhibitorBackward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionOrder nS1e = 1 "Reaction order with respect to the substrate" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP1e = 1 "Reaction order with respect to product 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP2e = 2 "Reaction order with respect to product 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP3e = 3 "Reaction order with respect to product 3" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nAFe = 1 "Reaction order with respect to the forward activator" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nIFe = 1 "Reaction order with respect to the forward inhibitor" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nABe = 1 "Reaction order with respect to the backward activator" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nIBe = 1 "Reaction order with respect to the backward inhibitor" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
    equation
      rr = k1 * aF1.c ^ nAFe / iF1.c ^ nIFe * s1.c ^ nS1e * s1.V - k2 * aB1.c ^ nABe / iB1.c ^ nIBe * p1.c ^ nP1e * p2.c ^ nP2e * p3.c ^ nP3e * p1.V;
      annotation(Documentation, Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
    end Utrfafibabi;
    annotation(Documentation(info = "
  <html>
  <p>This package contains models for stoichiometric reactions with one reactant and three products.</p>
  </html>"), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
  end UniTri;

  package BiBi "A+B <-> C+D reactions"
    extends BioChem.Icons.Library;

    model Bbr "Bi-bi reversible reaction"
      extends BioChem.Interfaces.Reactions.Bbr;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionOrder nS1e = 1 "Reaction order with respect to substrate 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nS2e = 1 "Reaction order with respect to substrate 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP1e = 1 "Reaction order with respect to product 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP2e = 1 "Reaction order with respect to product 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
    equation
      rr = k1 * s1.c ^ nS1e * s2.c ^ nS2e * s1.V - k2 * p1.c ^ nP1e * p2.c ^ nP2e * p1.V;
      annotation(Documentation, Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
    end Bbr;

    model Bbrba "Bi-bi reversible backward activation reaction"
      extends BioChem.Interfaces.Reactions.Bbr;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorBackward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionOrder nS1e = 1 "Reaction order with respect to substrate 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nS2e = 1 "Reaction order with respect to substrate 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP1e = 1 "Reaction order with respect to product 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP2e = 1 "Reaction order with respect to product 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nABe = 1 "Reaction order with respect to the backward activator" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
    equation
      rr = k1 * s1.c ^ nS1e * s2.c ^ nS2e * s1.V - k2 * aB1.c ^ nABe * p1.c ^ nP1e * p2.c ^ nP2e * p1.V;
      annotation(Documentation, Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
    end Bbrba;

    model Bbrbi "Bi-bi reversible backward inhibition reaction"
      extends BioChem.Interfaces.Reactions.Bbr;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorBackward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionOrder nS1e = 1 "Reaction order with respect to substrate 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nS2e = 1 "Reaction order with respect to substrate 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP1e = 1 "Reaction order with respect to product 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP2e = 1 "Reaction order with respect to product 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nIBe = 1 "Reaction order with respect to the backward inhibitor" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
    equation
      rr = k1 * s1.c ^ nS1e * s2.c ^ nS2e * s1.V - k2 / iB1.c ^ nIBe * p1.c ^ nP1e * p2.c ^ nP2e * p1.V;
      annotation(Documentation, Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
    end Bbrbi;

    model Bbrfa "Bi-bi reversible forward activation reaction"
      extends BioChem.Interfaces.Reactions.Bbr;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorForward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionOrder nS1e = 1 "Reaction order with respect to substrate 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nS2e = 1 "Reaction order with respect to substrate 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP1e = 1 "Reaction order with respect to product 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP2e = 1 "Reaction order with respect to product 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nAFe = 1 "Reaction order with respect to the forward activator" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
    equation
      rr = k1 * aF1.c ^ nAFe * s1.c ^ nS1e * s2.c ^ nS2e * s1.V - k2 * p1.c ^ nP1e * p2.c ^ nP2e * p1.V;
      annotation(Documentation, Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
    end Bbrfa;

    model Bbrfi "Bi-bi reversible forward inhibition reaction"
      extends BioChem.Interfaces.Reactions.Bbr;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorForward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionOrder nS1e = 1 "Reaction order with respect to substrate 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nS2e = 1 "Reaction order with respect to substrate 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP1e = 1 "Reaction order with respect to product 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP2e = 1 "Reaction order with respect to product 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nIFe = 1 "Reaction order with respect to the forward inhibitor" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
    equation
      rr = k1 / iF1.c ^ nIFe * s1.c ^ nS1e * s2.c ^ nS2e * s1.V - k2 * p1.c ^ nP1e * p2.c ^ nP2e * p1.V;
      annotation(Documentation, Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
    end Bbrfi;

    model Bbrbabi "Bi-bi reversible backward activation, backward inhibition reaction"
      extends BioChem.Interfaces.Reactions.Bbr;
      extends BioChem.Interfaces.Reactions.Modifiers.RightActivatorBackward;
      extends BioChem.Interfaces.Reactions.Modifiers.LeftInhibitorBackward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionOrder nS1e = 1 "Reaction order with respect to substrate 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nS2e = 1 "Reaction order with respect to substrate 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP1e = 1 "Reaction order with respect to product 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP2e = 1 "Reaction order with respect to product 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nABe = 1 "Reaction order with respect to the backward activator" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nIBe = 1 "Reaction order with respect to the backward inhibitor" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
    equation
      rr = k1 * s1.c ^ nS1e * s2.c ^ nS2e * s1.V - k2 * aB1.c ^ nABe / iB1.c ^ nIBe * p1.c ^ nP1e * p2.c ^ nP2e * p1.V;
      annotation(Documentation, Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
    end Bbrbabi;

    model Bbrfaba "Bi-bi reversible forward activation, backward activation reaction"
      extends BioChem.Interfaces.Reactions.Bbr;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorBackward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionOrder nS1e = 1 "Reaction order with respect to substrate 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nS2e = 1 "Reaction order with respect to substrate 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP1e = 1 "Reaction order with respect to product 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP2e = 1 "Reaction order with respect to product 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nAFe = 1 "Reaction order with respect to the forward activator" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nABe = 1 "Reaction order with respect to the backward activator" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
    equation
      rr = k1 * aF1.c ^ nAFe * s1.c ^ nS1e * s2.c ^ nS2e * s1.V - k2 * aB1.c ^ nABe * p1.c ^ nP1e * p2.c ^ nP2e * p1.V;
      annotation(Documentation, Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
    end Bbrfaba;

    model Bbrfabi "Bi-bi reversible forward activation, backward inhibition reaction"
      extends BioChem.Interfaces.Reactions.Bbr;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorBackward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionOrder nS1e = 1 "Reaction order with respect to substrate 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nS2e = 1 "Reaction order with respect to substrate 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP1e = 1 "Reaction order with respect to product 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP2e = 1 "Reaction order with respect to product 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nAFe = 1 "Reaction order with respect to the forward activator" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nIBe = 1 "Reaction order with respect to the backward inhibitor" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
    equation
      rr = k1 * aF1.c ^ nAFe * s1.c ^ nS1e * s2.c ^ nS2e * s1.V - k2 / iB1.c ^ nIBe * p1.c ^ nP1e * p2.c ^ nP2e * p1.V;
      annotation(Documentation, Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
    end Bbrfabi;

    model Bbrfafi "Bi-bi reversible forward activation, forward inhibition reaction"
      extends BioChem.Interfaces.Reactions.Bbr;
      extends BioChem.Interfaces.Reactions.Modifiers.LeftActivatorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.RightInhibitorForward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionOrder nS1e = 1 "Reaction order with respect to substrate 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nS2e = 1 "Reaction order with respect to substrate 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP1e = 1 "Reaction order with respect to product 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP2e = 1 "Reaction order with respect to product 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nAFe = 1 "Reaction order with respect to the forward activator" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nIFe = 1 "Reaction order with respect to the forward inhibitor" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
    equation
      rr = k1 * aF1.c ^ nAFe / iF1.c ^ nIFe * s1.c ^ nS1e * s2.c ^ nS2e * s1.V - k2 * p1.c ^ nP1e * p2.c ^ nP2e * p1.V;
      annotation(Documentation, Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
    end Bbrfafi;

    model Bbrfiba "Bi-bi reversible forward inhibition, backward activation reaction"
      extends BioChem.Interfaces.Reactions.Bbr;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorBackward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionOrder nS1e = 1 "Reaction order with respect to substrate 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nS2e = 1 "Reaction order with respect to substrate 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP1e = 1 "Reaction order with respect to product 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP2e = 1 "Reaction order with respect to product 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nIFe = 1 "Reaction order with respect to the forward inhibitor" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nABe = 1 "Reaction order with respect to the backward activator" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
    equation
      rr = k1 / iF1.c ^ nIFe * s1.c ^ nS1e * s2.c ^ nS2e * s1.V - k2 * aB1.c ^ nABe * p1.c ^ nP1e * p2.c ^ nP2e * p1.V;
      annotation(Documentation, Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
    end Bbrfiba;

    model Bbrfibi "Bi-bi reversible forward inhibition, backward inhibition reaction"
      extends BioChem.Interfaces.Reactions.Bbr;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorBackward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionOrder nS1e = 1 "Reaction order with respect to substrate 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nS2e = 1 "Reaction order with respect to substrate 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP1e = 1 "Reaction order with respect to product 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP2e = 1 "Reaction order with respect to product 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nIFe = 1 "Reaction order with respect to the forward inhibitor" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nIBe = 1 "Reaction order with respect to the backward inhibitor" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
    equation
      rr = k1 / iF1.c ^ nIFe * s1.c ^ nS1e * s2.c ^ nS2e * s1.V - k2 / iB1.c ^ nIBe * p1.c ^ nP1e * p2.c ^ nP2e * p1.V;
      annotation(Documentation, Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
    end Bbrfibi;

    model Bbrfababi "Bi-bi reversible forward activation, backward activation, backward inhibition reaction"
      extends BioChem.Interfaces.Reactions.Bbr;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.RightActivatorBackward;
      extends BioChem.Interfaces.Reactions.Modifiers.LeftInhibitorBackward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionOrder nS1e = 1 "Reaction order with respect to substrate 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nS2e = 1 "Reaction order with respect to substrate 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP1e = 1 "Reaction order with respect to product 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP2e = 1 "Reaction order with respect to product 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nAFe = 1 "Reaction order with respect to the forward activator" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nABe = 1 "Reaction order with respect to the backward activator" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nIBe = 1 "Reaction order with respect to the backward inhibitor" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
    equation
      rr = k1 * aF1.c ^ nAFe * s1.c ^ nS1e * s2.c ^ nS2e * s1.V - k2 * aB1.c ^ nABe / iB1.c ^ nIBe * p1.c ^ nP1e * p2.c ^ nP2e * p1.V;
      annotation(Documentation, Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
    end Bbrfababi;

    model Bbrfafiba "Bi-bi reversible forward activation, forward inhibition, backward activation reaction"
      extends BioChem.Interfaces.Reactions.Bbr;
      extends BioChem.Interfaces.Reactions.Modifiers.LeftActivatorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.RightInhibitorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorBackward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionOrder nS1e = 1 "Reaction order with respect to substrate 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nS2e = 1 "Reaction order with respect to substrate 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP1e = 1 "Reaction order with respect to product 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP2e = 1 "Reaction order with respect to product 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nAFe = 1 "Reaction order with respect to the forward activator" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nIFe = 1 "Reaction order with respect to the forward inhibitor" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nABe = 1 "Reaction order with respect to the backward activator" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
    equation
      rr = k1 * aF1.c ^ nAFe / iF1.c ^ nIFe * s1.c ^ nS1e * s2.c ^ nS2e * s1.V - k2 * aB1.c ^ nABe * p1.c ^ nP1e * p2.c ^ nP2e * p1.V;
      annotation(Documentation, Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
    end Bbrfafiba;

    model Bbrfafibi "Bi-bi reversible forward activation, forward inhibition, backward inhibition reaction"
      extends BioChem.Interfaces.Reactions.Bbr;
      extends BioChem.Interfaces.Reactions.Modifiers.LeftActivatorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.RightInhibitorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorBackward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionOrder nS1e = 1 "Reaction order with respect to substrate 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nS2e = 1 "Reaction order with respect to substrate 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP1e = 1 "Reaction order with respect to product 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP2e = 1 "Reaction order with respect to product 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nAFe = 1 "Reaction order with respect to the forward activator" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nIFe = 1 "Reaction order with respect to the forward inhibitor" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nIBe = 1 "Reaction order with respect to the backward inhibitor" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
    equation
      rr = k1 * aF1.c ^ nAFe / iF1.c ^ nIFe * s1.c ^ nS1e * s2.c ^ nS2e * s1.V - k2 / iB1.c ^ nIBe * p1.c ^ nP1e * p2.c ^ nP2e * p1.V;
      annotation(Documentation, Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
    end Bbrfafibi;

    model Bbrfibabi "Bi-bi reversible forward inhibition, backward activation, backward inhibition reaction"
      extends BioChem.Interfaces.Reactions.Bbr;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.RightActivatorBackward;
      extends BioChem.Interfaces.Reactions.Modifiers.LeftInhibitorBackward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionOrder nS1e = 1 "Reaction order with respect to substrate 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nS2e = 1 "Reaction order with respect to substrate 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP1e = 1 "Reaction order with respect to product 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP2e = 1 "Reaction order with respect to product 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nIFe = 1 "Reaction order with respect to the forward inhibitor" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nABe = 1 "Reaction order with respect to the backward activator" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nIBe = 1 "Reaction order with respect to the backward inhibitor" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
    equation
      rr = k1 / iF1.c ^ nIFe * s1.c ^ nS1e * s2.c ^ nS2e * s1.V - k2 * aB1.c ^ nABe / iB1.c ^ nIBe * p1.c ^ nP1e * p2.c ^ nP2e * p1.V;
      annotation(Documentation, Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
    end Bbrfibabi;

    model Bbrfafibabi "Bi-bi reversible forward activation, forward inhibition, backward activation, backward inhibition reaction"
      extends BioChem.Interfaces.Reactions.Bbr;
      extends BioChem.Interfaces.Reactions.Modifiers.LeftActivatorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.RightInhibitorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.RightActivatorBackward;
      extends BioChem.Interfaces.Reactions.Modifiers.LeftInhibitorBackward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionOrder nS1e = 1 "Reaction order with respect to substrate 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nS2e = 1 "Reaction order with respect to substrate 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP1e = 1 "Reaction order with respect to product 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP2e = 1 "Reaction order with respect to product 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nAFe = 1 "Reaction order with respect to the forward activator" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nIFe = 1 "Reaction order with respect to the forward inhibitor" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nABe = 1 "Reaction order with respect to the backward activator" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nIBe = 1 "Reaction order with respect to the backward inhibitor" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
    equation
      rr = k1 * aF1.c ^ nAFe / iF1.c ^ nIFe * s1.c ^ nS1e * s2.c ^ nS2e * s1.V - k2 * aB1.c ^ nABe / iB1.c ^ nIBe * p1.c ^ nP1e * p2.c ^ nP2e * p1.V;
      annotation(Documentation, Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
    end Bbrfafibabi;
    annotation(Documentation(info = "
  <html>
  <p>This package contains models for stoichiometric reactions with two reactants and two products.</p>
  </html>"), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
  end BiBi;

  package BiUni "A+B <-> C reactions"
    extends BioChem.Icons.Library;

    model Bur "Bi-uni reversible reaction"
      extends BioChem.Interfaces.Reactions.Bur;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionOrder nS1e = 1 "Reaction order with respect to substrate 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nS2e = 1 "Reaction order with respect to substrate 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP1e = 1 "Reaction order with respect to the product" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
    equation
      rr = k1 * s1.c ^ nS1e * s2.c ^ nS2e * s1.V - k2 * p1.c ^ nP1e * p1.V;
      annotation(Documentation, Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
    end Bur;

    model Burba "Bi-uni reversible backward activation reaction"
      extends BioChem.Interfaces.Reactions.Bur;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorBackward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionOrder nS1e = 1 "Reaction order with respect to substrate 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nS2e = 1 "Reaction order with respect to substrate 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP1e = 1 "Reaction order with respect to the product" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nABe = 1 "Reaction order with respect to the backward activator" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
    equation
      rr = k1 * s1.c ^ nS1e * s2.c ^ nS2e * s1.V - k2 * aB1.c ^ nABe * p1.c ^ nP1e * p1.V;
      annotation(Documentation, Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
    end Burba;

    model Burbi "Bi-uni reversible backward inhibition reaction"
      extends BioChem.Interfaces.Reactions.Bur;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorBackward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionOrder nS1e = 1 "Reaction order with respect to substrate 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nS2e = 1 "Reaction order with respect to substrate 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP1e = 1 "Reaction order with respect to the product" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nIBe = 1 "Reaction order with respect to the backward inhibitor" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
    equation
      rr = k1 * s1.c ^ nS1e * s2.c ^ nS2e * s1.V - k2 / iB1.c ^ nIBe * p1.c ^ nP1e * p1.V;
      annotation(Documentation, Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
    end Burbi;

    model Burfa "Bi-uni reversible forward activation reaction"
      extends BioChem.Interfaces.Reactions.Bur;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorForward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionOrder nS1e = 1 "Reaction order with respect to substrate 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nS2e = 1 "Reaction order with respect to substrate 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP1e = 1 "Reaction order with respect to the product" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nAFe = 1 "Reaction order with respect to the forward activator" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
    equation
      rr = k1 * aF1.c ^ nAFe * s1.c ^ nS1e * s2.c ^ nS2e * s1.V - k2 * p1.c ^ nP1e * p1.V;
      annotation(Documentation, Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
    end Burfa;

    model Burfi "Bi-uni reversible forward inhibition reaction"
      extends BioChem.Interfaces.Reactions.Bur;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorForward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionOrder nS1e = 1 "Reaction order with respect to substrate 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nS2e = 1 "Reaction order with respect to substrate 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP1e = 1 "Reaction order with respect to the product" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nIFe = 1 "Reaction order with respect to the forward inhibitor" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
    equation
      rr = k1 / iF1.c ^ nIFe * s1.c ^ nS1e * s2.c ^ nS2e * s1.V - k2 * p1.c ^ nP1e * p1.V;
      annotation(Documentation, Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
    end Burfi;

    model Burbabi "Bi-uni reversible backward activation, backward inhibition reaction"
      extends BioChem.Interfaces.Reactions.Bur;
      extends BioChem.Interfaces.Reactions.Modifiers.RightActivatorBackward;
      extends BioChem.Interfaces.Reactions.Modifiers.LeftInhibitorBackward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionOrder nS1e = 1 "Reaction order with respect to substrate 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nS2e = 1 "Reaction order with respect to substrate 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP1e = 1 "Reaction order with respect to the product" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nABe = 1 "Reaction order with respect to the backward activator" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nIBe = 1 "Reaction order with respect to the backward inhibitor" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
    equation
      rr = k1 * s1.c ^ nS1e * s2.c ^ nS2e * s1.V - k2 * aB1.c ^ nABe / iB1.c ^ nIBe * p1.c ^ nP1e * p1.V;
      annotation(Documentation, Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
    end Burbabi;

    model Burfaba "Bi-uni reversible forward activation, backward activation reaction"
      extends BioChem.Interfaces.Reactions.Bur;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorBackward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionOrder nS1e = 1 "Reaction order with respect to substrate 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nS2e = 1 "Reaction order with respect to substrate 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP1e = 1 "Reaction order with respect to the product" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nAFe = 1 "Reaction order with respect to the forward activator" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nABe = 1 "Reaction order with respect to the backward activator" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
    equation
      rr = k1 * aF1.c ^ nAFe * s1.c ^ nS1e * s2.c ^ nS2e * s1.V - k2 * aB1.c ^ nABe * p1.c ^ nP1e * p1.V;
      annotation(Documentation, Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
    end Burfaba;

    model Burfabi "Bi-uni reversible forward activation, backward inhibition reaction"
      extends BioChem.Interfaces.Reactions.Bur;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorBackward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionOrder nS1e = 1 "Reaction order with respect to substrate 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nS2e = 1 "Reaction order with respect to substrate 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP1e = 1 "Reaction order with respect to the product" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nAFe = 1 "Reaction order with respect to the forward activator" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nIBe = 1 "Reaction order with respect to the backward inhibitor" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
    equation
      rr = k1 * aF1.c ^ nAFe * s1.c ^ nS1e * s2.c ^ nS2e * s1.V - k2 / iB1.c ^ nIBe * p1.c ^ nP1e * p1.V;
      annotation(Documentation, Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
    end Burfabi;

    model Burfafi "Bi-uni reversible forward activation, forward inhibition reaction"
      extends BioChem.Interfaces.Reactions.Bur;
      extends BioChem.Interfaces.Reactions.Modifiers.LeftActivatorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.RightInhibitorForward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionOrder nS1e = 1 "Reaction order with respect to substrate 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nS2e = 1 "Reaction order with respect to substrate 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP1e = 1 "Reaction order with respect to the product" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nAFe = 1 "Reaction order with respect to the forward activator" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nIFe = 1 "Reaction order with respect to the forward inhibitor" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
    equation
      rr = k1 * aF1.c ^ nAFe / iF1.c ^ nIFe * s1.c ^ nS1e * s2.c ^ nS2e * s1.V - k2 * p1.c ^ nP1e * p1.V;
      annotation(Documentation, Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
    end Burfafi;

    model Burfiba "Bi-uni reversible forward inhibition, backward activation reaction"
      extends BioChem.Interfaces.Reactions.Bur;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorBackward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionOrder nS1e = 1 "Reaction order with respect to substrate 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nS2e = 1 "Reaction order with respect to substrate 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP1e = 1 "Reaction order with respect to the product" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nIFe = 1 "Reaction order with respect to the forward inhibitor" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nABe = 1 "Reaction order with respect to the backward activator" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
    equation
      rr = k1 / iF1.c ^ nIFe * s1.c ^ nS1e * s2.c ^ nS2e * s1.V - k2 * aB1.c ^ nABe * p1.c ^ nP1e * p1.V;
      annotation(Documentation, Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
    end Burfiba;

    model Burfibi "Bi-uni reversible forward inhibition, backward inhibition reaction"
      extends BioChem.Interfaces.Reactions.Bur;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorBackward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionOrder nS1e = 1 "Reaction order with respect to substrate 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nS2e = 1 "Reaction order with respect to substrate 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP1e = 1 "Reaction order with respect to the product" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nIFe = 1 "Reaction order with respect to the forward inhibitor" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nIBe = 1 "Reaction order with respect to the backward inhibitor" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
    equation
      rr = k1 / iF1.c ^ nIFe * s1.c ^ nS1e * s2.c ^ nS2e * s1.V - k2 / iB1.c ^ nIBe * p1.c ^ nP1e * p1.V;
      annotation(Documentation, Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
    end Burfibi;

    model Burfababi "Bi-uni reversible forward activation, backward activation, backward inhibition reaction"
      extends BioChem.Interfaces.Reactions.Bur;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.RightActivatorBackward;
      extends BioChem.Interfaces.Reactions.Modifiers.LeftInhibitorBackward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionOrder nS1e = 1 "Reaction order with respect to substrate 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nS2e = 1 "Reaction order with respect to substrate 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP1e = 1 "Reaction order with respect to the product" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nAFe = 1 "Reaction order with respect to the forward activator" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nABe = 1 "Reaction order with respect to the backward activator" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nIBe = 1 "Reaction order with respect to the backward inhibitor" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
    equation
      rr = k1 * aF1.c ^ nAFe * s1.c ^ nS1e * s2.c ^ nS2e * s1.V - k2 * aB1.c ^ nABe / iB1.c ^ nIBe * p1.c ^ nP1e * p1.V;
      annotation(Documentation, Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
    end Burfababi;

    model Burfafiba "Bi-uni reversible forward activation, forward inhibition, backward activation reaction"
      extends BioChem.Interfaces.Reactions.Bur;
      extends BioChem.Interfaces.Reactions.Modifiers.LeftActivatorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.RightInhibitorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorBackward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionOrder nS1e = 1 "Reaction order with respect to substrate 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nS2e = 1 "Reaction order with respect to substrate 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP1e = 1 "Reaction order with respect to the product" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nAFe = 1 "Reaction order with respect to the forward activator" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nIFe = 1 "Reaction order with respect to the forward inhibitor" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nABe = 1 "Reaction order with respect to the backward activator" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
    equation
      rr = k1 * aF1.c ^ nAFe / iF1.c ^ nIFe * s1.c ^ nS1e * s2.c ^ nS2e * s1.V - k2 * aB1.c ^ nABe * p1.c ^ nP1e * p1.V;
      annotation(Documentation, Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
    end Burfafiba;

    model Burfafibi "Bi-uni reversible forward activation, forward inhibition, backward inhibition reaction"
      extends BioChem.Interfaces.Reactions.Bur;
      extends BioChem.Interfaces.Reactions.Modifiers.LeftActivatorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.RightInhibitorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorBackward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionOrder nS1e = 1 "Reaction order with respect to substrate 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nS2e = 1 "Reaction order with respect to substrate 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP1e = 1 "Reaction order with respect to the product" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nAFe = 1 "Reaction order with respect to the forward activator" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nIFe = 1 "Reaction order with respect to the forward inhibitor" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nIBe = 1 "Reaction order with respect to the backward inhibitor" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
    equation
      rr = k1 * aF1.c ^ nAFe / iF1.c ^ nIFe * s1.c ^ nS1e * s2.c ^ nS2e * s1.V - k2 / iB1.c ^ nIBe * p1.c ^ nP1e * p1.V;
      annotation(Documentation, Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
    end Burfafibi;

    model Burfibabi "Bi-uni reversible forward inhibition, backward activation, backward inhibition reaction"
      extends BioChem.Interfaces.Reactions.Bur;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.RightActivatorBackward;
      extends BioChem.Interfaces.Reactions.Modifiers.LeftInhibitorBackward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionOrder nS1e = 1 "Reaction order with respect to substrate 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nS2e = 1 "Reaction order with respect to substrate 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP1e = 1 "Reaction order with respect to the product" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nIFe = 1 "Reaction order with respect to the forward inhibitor" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nABe = 1 "Reaction order with respect to the backward activator" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nIBe = 1 "Reaction order with respect to the backward inhibitor" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
    equation
      rr = k1 / iF1.c ^ nIFe * s1.c ^ nS1e * s2.c ^ nS2e * s1.V - k2 * aB1.c ^ nABe / iB1.c ^ nIBe * p1.c ^ nP1e * p1.V;
      annotation(Documentation, Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
    end Burfibabi;

    model Burfafibabi "Bi-uni reversible forward activation, forward inhibition, backward activation, backward inhibition reaction"
      extends BioChem.Interfaces.Reactions.Bur;
      extends BioChem.Interfaces.Reactions.Modifiers.LeftActivatorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.RightInhibitorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.RightActivatorBackward;
      extends BioChem.Interfaces.Reactions.Modifiers.LeftInhibitorBackward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionOrder nS1e = 1 "Reaction order with respect to substrate 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nS2e = 1 "Reaction order with respect to substrate 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP1e = 1 "Reaction order with respect to the product" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nAFe = 1 "Reaction order with respect to the forward activator" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nIFe = 1 "Reaction order with respect to the forward inhibitor" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nABe = 1 "Reaction order with respect to the backward activator" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nIBe = 1 "Reaction order with respect to the backward inhibitor" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
    equation
      rr = k1 * aF1.c ^ nAFe / iF1.c ^ nIFe * s1.c ^ nS1e * s2.c ^ nS2e * s1.V - k2 * aB1.c ^ nABe / iB1.c ^ nIBe * p1.c ^ nP1e * p1.V;
      annotation(Documentation, Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
    end Burfafibabi;
    annotation(Documentation(info = "
  <html>
  <p>This package contains models for stoichiometric reactions with two reactants and one product.</p>
  </html>"), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
  end BiUni;

  package BiTri "A+B <-> C+D+E reactions"
    extends BioChem.Icons.Library;

    model Btr "Bi-tri reversible reaction"
      extends BioChem.Interfaces.Reactions.Btr;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionOrder nS1e = 1 "Reaction order with respect to substrate 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nS2e = 1 "Reaction order with respect to substrate 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP1e = 1 "Reaction order with respect to product 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP2e = 1 "Reaction order with respect to product 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP3e = 1 "Reaction order with respect to product 3" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
    equation
      rr = k1 * s1.c ^ nS1e * s2.c ^ nS2e * s1.V - k2 * p1.c ^ nP1e * p2.c ^ nP2e * p3.c ^ nP3e * p1.V;
      annotation(Documentation, Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
    end Btr;

    model Btrba "Bi-tri reversible backward activation reaction"
      extends BioChem.Interfaces.Reactions.Btr;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorBackward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionOrder nS1e = 1 "Reaction order with respect to substrate 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nS2e = 1 "Reaction order with respect to substrate 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP1e = 1 "Reaction order with respect to product 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP2e = 1 "Reaction order with respect to product 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP3e = 1 "Reaction order with respect to product 3" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nABe = 1 "Reaction order with respect to the backward activator" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
    equation
      rr = k1 * s1.c ^ nS1e * s2.c ^ nS2e * s1.V - k2 * aB1.c ^ nABe * p1.c ^ nP1e * p2.c ^ nP2e * p3.c ^ nP3e * p1.V;
      annotation(Documentation, Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
    end Btrba;

    model Btrbi "Bi-tri reversible backward inhibition reaction"
      extends BioChem.Interfaces.Reactions.Btr;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorBackward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionOrder nS1e = 1 "Reaction order with respect to substrate 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nS2e = 1 "Reaction order with respect to substrate 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP1e = 1 "Reaction order with respect to product 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP2e = 1 "Reaction order with respect to product 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP3e = 1 "Reaction order with respect to product 3" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nIBe = 1 "Reaction order with respect to the backward inhibitor" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
    equation
      rr = k1 * s1.c ^ nS1e * s2.c ^ nS2e * s1.V - k2 / iB1.c ^ nIBe * p1.c ^ nP1e * p2.c ^ nP2e * p3.c ^ nP3e * p1.V;
      annotation(Documentation, Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
    end Btrbi;

    model Btrfa "Bi-tri reversible forward activation reaction"
      extends BioChem.Interfaces.Reactions.Btr;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorForward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionOrder nS1e = 1 "Reaction order with respect to substrate 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nS2e = 1 "Reaction order with respect to substrate 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP1e = 1 "Reaction order with respect to product 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP2e = 1 "Reaction order with respect to product 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP3e = 1 "Reaction order with respect to product 3" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nAFe = 1 "Reaction order with respect to the forward activator" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
    equation
      rr = k1 * aF1.c ^ nAFe * s1.c ^ nS1e * s2.c ^ nS2e * s1.V - k2 * p1.c ^ nP1e * p2.c ^ nP2e * p3.c ^ nP3e * p1.V;
      annotation(Documentation, Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
    end Btrfa;

    model Btrfi "Bi-tri reversible forward inhibition reaction"
      extends BioChem.Interfaces.Reactions.Btr;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorForward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionOrder nS1e = 1 "Reaction order with respect to substrate 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nS2e = 1 "Reaction order with respect to substrate 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP1e = 1 "Reaction order with respect to product 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP2e = 1 "Reaction order with respect to product 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP3e = 1 "Reaction order with respect to product 3" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nIFe = 1 "Reaction order with respect to the forward inhibitor" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
    equation
      rr = k1 / iF1.c ^ nIFe * s1.c ^ nS1e * s2.c ^ nS2e * s1.V - k2 * p1.c ^ nP1e * p2.c ^ nP2e * p3.c ^ nP3e * p1.V;
      annotation(Documentation, Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
    end Btrfi;

    model Btrbabi "Bi-tri reversible backward activation, backward inhibition reaction"
      extends BioChem.Interfaces.Reactions.Btr;
      extends BioChem.Interfaces.Reactions.Modifiers.RightActivatorBackward;
      extends BioChem.Interfaces.Reactions.Modifiers.LeftInhibitorBackward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionOrder nS1e = 1 "Reaction order with respect to substrate 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nS2e = 1 "Reaction order with respect to substrate 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP1e = 1 "Reaction order with respect to product 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP2e = 1 "Reaction order with respect to product 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP3e = 1 "Reaction order with respect to product 3" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nABe = 1 "Reaction order with respect to the backward activator" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nIBe = 1 "Reaction order with respect to the backward inhibitor" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
    equation
      rr = k1 * s1.c ^ nS1e * s2.c ^ nS2e * s1.V - k2 * aB1.c ^ nABe / iB1.c ^ nIBe * p1.c ^ nP1e * p2.c ^ nP2e * p3.c ^ nP3e * p1.V;
      annotation(Documentation, Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
    end Btrbabi;

    model Btrfaba "Bi-tri reversible forward activation, backward activation reaction"
      extends BioChem.Interfaces.Reactions.Btr;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorBackward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionOrder nS1e = 1 "Reaction order with respect to substrate 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nS2e = 1 "Reaction order with respect to substrate 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP1e = 1 "Reaction order with respect to product 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP2e = 1 "Reaction order with respect to product 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP3e = 1 "Reaction order with respect to product 3" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nAFe = 1 "Reaction order with respect to the forward activator" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nABe = 1 "Reaction order with respect to the backward activator" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
    equation
      rr = k1 * aF1.c ^ nAFe * s1.c ^ nS1e * s2.c ^ nS2e * s1.V - k2 * aB1.c ^ nABe * p1.c ^ nP1e * p2.c ^ nP2e * p3.c ^ nP3e * p1.V;
      annotation(Documentation, Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
    end Btrfaba;

    model Btrfabi "Bi-tri reversible forward activation, backward inhibition reaction"
      extends BioChem.Interfaces.Reactions.Btr;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorBackward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionOrder nS1e = 1 "Reaction order with respect to substrate 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nS2e = 1 "Reaction order with respect to substrate 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP1e = 1 "Reaction order with respect to product 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP2e = 1 "Reaction order with respect to product 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP3e = 1 "Reaction order with respect to product 3" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nAFe = 1 "Reaction order with respect to the forward activator" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nIBe = 1 "Reaction order with respect to the backward inhibitor" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
    equation
      rr = k1 * aF1.c ^ nAFe * s1.c ^ nS1e * s2.c ^ nS2e * s1.V - k2 / iB1.c ^ nIBe * p1.c ^ nP1e * p2.c ^ nP2e * p3.c ^ nP3e * p1.V;
      annotation(Documentation, Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
    end Btrfabi;

    model Btrfafi "Bi-tri reversible forward activation, forward inhibition reaction"
      extends BioChem.Interfaces.Reactions.Btr;
      extends BioChem.Interfaces.Reactions.Modifiers.LeftActivatorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.RightInhibitorForward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionOrder nS1e = 1 "Reaction order with respect to substrate 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nS2e = 1 "Reaction order with respect to substrate 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP1e = 1 "Reaction order with respect to product 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP2e = 1 "Reaction order with respect to product 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP3e = 1 "Reaction order with respect to product 3" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nAFe = 1 "Reaction order with respect to the forward activator" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nIFe = 1 "Reaction order with respect to the forward inhibitor" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
    equation
      rr = k1 * aF1.c ^ nAFe / iF1.c ^ nIFe * s1.c ^ nS1e * s2.c ^ nS2e * s1.V - k2 * p1.c ^ nP1e * p2.c ^ nP2e * p3.c ^ nP3e * p1.V;
      annotation(Documentation, Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
    end Btrfafi;

    model Btrfiba "Bi-tri reversible forward inhibition, backward activation reaction"
      extends BioChem.Interfaces.Reactions.Btr;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorBackward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionOrder nS1e = 1 "Reaction order with respect to substrate 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nS2e = 1 "Reaction order with respect to substrate 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP1e = 1 "Reaction order with respect to product 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP2e = 1 "Reaction order with respect to product 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP3e = 1 "Reaction order with respect to product 3" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nIFe = 1 "Reaction order with respect to the forward inhibitor" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nABe = 1 "Reaction order with respect to the backward activator" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
    equation
      rr = k1 / iF1.c ^ nIFe * s1.c ^ nS1e * s2.c ^ nS2e * s1.V - k2 * aB1.c ^ nABe * p1.c ^ nP1e * p2.c ^ nP2e * p3.c ^ nP3e * p1.V;
      annotation(Documentation, Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
    end Btrfiba;

    model Btrfibi "Bi-tri reversible forward inhibition, backward inhibition reaction"
      extends BioChem.Interfaces.Reactions.Btr;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorBackward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionOrder nS1e = 1 "Reaction order with respect to substrate 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nS2e = 1 "Reaction order with respect to substrate 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP1e = 1 "Reaction order with respect to product 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP2e = 1 "Reaction order with respect to product 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP3e = 1 "Reaction order with respect to product 3" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nIFe = 1 "Reaction order with respect to the forward inhibitor" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nIBe = 1 "Reaction order with respect to the backward inhibitor" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
    equation
      rr = k1 / iF1.c ^ nIFe * s1.c ^ nS1e * s2.c ^ nS2e * s1.V - k2 / iB1.c ^ nIBe * p1.c ^ nP1e * p2.c ^ nP2e * p3.c ^ nP3e * p1.V;
      annotation(Documentation, Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
    end Btrfibi;

    model Btrfababi "Bi-tri reversible forward activation, backward activation, backward inhibition reaction"
      extends BioChem.Interfaces.Reactions.Btr;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.RightActivatorBackward;
      extends BioChem.Interfaces.Reactions.Modifiers.LeftInhibitorBackward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionOrder nS1e = 1 "Reaction order with respect to substrate 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nS2e = 1 "Reaction order with respect to substrate 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP1e = 1 "Reaction order with respect to product 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP2e = 1 "Reaction order with respect to product 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP3e = 1 "Reaction order with respect to product 3" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nAFe = 1 "Reaction order with respect to the forward activator" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nABe = 1 "Reaction order with respect to the backward activator" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nIBe = 1 "Reaction order with respect to the backward inhibitor" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
    equation
      rr = k1 * aF1.c ^ nAFe * s1.c ^ nS1e * s2.c ^ nS2e * s1.V - k2 * aB1.c ^ nABe / iB1.c ^ nIBe * p1.c ^ nP1e * p2.c ^ nP2e * p3.c ^ nP3e * p1.V;
      annotation(Documentation, Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
    end Btrfababi;

    model Btrfafiba "Bi-tri reversible forward activation, forward inhibition, backward activation reaction"
      extends BioChem.Interfaces.Reactions.Btr;
      extends BioChem.Interfaces.Reactions.Modifiers.LeftActivatorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.RightInhibitorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorBackward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionOrder nS1e = 1 "Reaction order with respect to substrate 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nS2e = 1 "Reaction order with respect to substrate 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP1e = 1 "Reaction order with respect to product 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP2e = 1 "Reaction order with respect to product 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP3e = 1 "Reaction order with respect to product 3" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nAFe = 1 "Reaction order with respect to the forward activator" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nIFe = 1 "Reaction order with respect to the forward inhibitor" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nABe = 1 "Reaction order with respect to the backward activator" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
    equation
      rr = k1 * aF1.c ^ nAFe / iF1.c ^ nIFe * s1.c ^ nS1e * s2.c ^ nS2e * s1.V - k2 * aB1.c ^ nABe * p1.c ^ nP1e * p2.c ^ nP2e * p3.c ^ nP3e * p1.V;
      annotation(Documentation, Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
    end Btrfafiba;

    model Btrfafibi "Bi-tri reversible forward activation, forward inhibition, backward inhibition reaction"
      extends BioChem.Interfaces.Reactions.Btr;
      extends BioChem.Interfaces.Reactions.Modifiers.LeftActivatorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.RightInhibitorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorBackward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionOrder nS1e = 1 "Reaction order with respect to substrate 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nS2e = 1 "Reaction order with respect to substrate 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP1e = 1 "Reaction order with respect to product 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP2e = 1 "Reaction order with respect to product 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP3e = 1 "Reaction order with respect to product 3" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nAFe = 1 "Reaction order with respect to the forward activator" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nIFe = 1 "Reaction order with respect to the forward inhibitor" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nIBe = 1 "Reaction order with respect to the backward inhibitor" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
    equation
      rr = k1 * aF1.c ^ nAFe / iF1.c ^ nIFe * s1.c ^ nS1e * s2.c ^ nS2e * s1.V - k2 / iB1.c ^ nIBe * p1.c ^ nP1e * p2.c ^ nP2e * p3.c ^ nP3e * p1.V;
      annotation(Documentation, Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
    end Btrfafibi;

    model Btrfibabi "Bi-tri reversible forward inhibition, backward activation, backward inhibition reaction"
      extends BioChem.Interfaces.Reactions.Btr;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.RightActivatorBackward;
      extends BioChem.Interfaces.Reactions.Modifiers.LeftInhibitorBackward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionOrder nS1e = 1 "Reaction order with respect to substrate 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nS2e = 1 "Reaction order with respect to substrate 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP1e = 1 "Reaction order with respect to product 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP2e = 1 "Reaction order with respect to product 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP3e = 1 "Reaction order with respect to product 3" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nIFe = 1 "Reaction order with respect to the forward inhibitor" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nABe = 1 "Reaction order with respect to the backward activator" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nIBe = 1 "Reaction order with respect to the backward inhibitor" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
    equation
      rr = k1 / iF1.c ^ nIFe * s1.c ^ nS1e * s2.c ^ nS2e * s1.V - k2 * aB1.c ^ nABe / iB1.c ^ nIBe * p1.c ^ nP1e * p2.c ^ nP2e * p3.c ^ nP3e * p1.V;
      annotation(Documentation, Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
    end Btrfibabi;

    model Btrfafibabi "Bi-tri reversible forward activation, forward inhibition, backward activation, backward inhibition reaction"
      extends BioChem.Interfaces.Reactions.Btr;
      extends BioChem.Interfaces.Reactions.Modifiers.LeftActivatorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.RightInhibitorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.RightActivatorBackward;
      extends BioChem.Interfaces.Reactions.Modifiers.LeftInhibitorBackward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionOrder nS1e = 1 "Reaction order with respect to substrate 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nS2e = 1 "Reaction order with respect to substrate 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP1e = 1 "Reaction order with respect to product 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP2e = 1 "Reaction order with respect to product 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP3e = 1 "Reaction order with respect to product 3" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nAFe = 1 "Reaction order with respect to the forward activator" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nIFe = 1 "Reaction order with respect to the forward inhibitor" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nABe = 1 "Reaction order with respect to the backward activator" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nIBe = 1 "Reaction order with respect to the backward inhibitor" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
    equation
      rr = k1 * aF1.c ^ nAFe / iF1.c ^ nIFe * s1.c ^ nS1e * s2.c ^ nS2e * s1.V - k2 * aB1.c ^ nABe / iB1.c ^ nIBe * p1.c ^ nP1e * p2.c ^ nP2e * p3.c ^ nP3e * p1.V;
      annotation(Documentation, Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
    end Btrfafibabi;
    annotation(Documentation(info = "
  <html>
  <p>This package contains models for stoichiometric reactions with two reactants and three products.</p>
  </html>"), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
  end BiTri;

  package TriUni "A+B+C <-> D reactions"
    extends BioChem.Icons.Library;

    model Tur "Tri-uni reversible reaction"
      extends BioChem.Interfaces.Reactions.Tur;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionOrder nS1e = 1 "Reaction order with respect to substrate 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nS2e = 1 "Reaction order with respect to substrate 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nS3e = 1 "Reaction order with respect to substrate 3" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP1e = 1 "Reaction order with respect to the product" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
    equation
      rr = k1 * s1.c ^ nS1e * s2.c ^ nS2e * s3.c ^ nS3e * s1.V - k2 * p1.c ^ nP1e * p1.V;
      annotation(Documentation, Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
    end Tur;

    model Turba "Tri-uni reversible backward activation reaction"
      extends BioChem.Interfaces.Reactions.Tur;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorBackward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionOrder nS1e = 1 "Reaction order with respect to substrate 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nS2e = 1 "Reaction order with respect to substrate 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nS3e = 1 "Reaction order with respect to substrate 3" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP1e = 1 "Reaction order with respect to the product" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nABe = 1 "Reaction order with respect to the backward activator" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
    equation
      rr = k1 * s1.c ^ nS1e * s2.c ^ nS2e * s3.c ^ nS3e * s1.V - k2 * aB1.c ^ nABe * p1.c ^ nP1e * p1.V;
      annotation(Documentation, Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
    end Turba;

    model Turbi "Tri-uni reversible backward inhibition reaction"
      extends BioChem.Interfaces.Reactions.Tur;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorBackward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionOrder nS1e = 1 "Reaction order with respect to substrate 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nS2e = 1 "Reaction order with respect to substrate 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nS3e = 1 "Reaction order with respect to substrate 3" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP1e = 1 "Reaction order with respect to the product" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nIBe = 1 "Reaction order with respect to the backward inhibitor" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
    equation
      rr = k1 * s1.c ^ nS1e * s2.c ^ nS2e * s3.c ^ nS3e * s1.V - k2 / iB1.c ^ nIBe * p1.c ^ nP1e * p1.V;
      annotation(Documentation, Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
    end Turbi;

    model Turfa "Tri-uni reversible forward activation reaction"
      extends BioChem.Interfaces.Reactions.Tur;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorForward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionOrder nS1e = 1 "Reaction order with respect to substrate 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nS2e = 1 "Reaction order with respect to substrate 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nS3e = 1 "Reaction order with respect to substrate 3" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP1e = 1 "Reaction order with respect to the product" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nAFe = 1 "Reaction order with respect to the forward activator" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
    equation
      rr = k1 * aF1.c ^ nAFe * s1.c ^ nS1e * s2.c ^ nS2e * s3.c ^ nS3e * s1.V - k2 * p1.c ^ nP1e * p1.V;
      annotation(Documentation, Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
    end Turfa;

    model Turfi "Tri-uni reversible forward inhibition reaction"
      extends BioChem.Interfaces.Reactions.Tur;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorForward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionOrder nS1e = 1 "Reaction order with respect to substrate 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nS2e = 1 "Reaction order with respect to substrate 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nS3e = 1 "Reaction order with respect to substrate 3" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP1e = 1 "Reaction order with respect to the product" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nIFe = 1 "Reaction order with respect to the forward inhibitor" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
    equation
      rr = k1 / iF1.c ^ nIFe * s1.c ^ nS1e * s2.c ^ nS2e * s3.c ^ nS3e * s1.V - k2 * p1.c ^ nP1e * p1.V;
      annotation(Documentation, Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
    end Turfi;

    model Turbabi "Tri-uni reversible backward activation, backward inhibition reaction"
      extends BioChem.Interfaces.Reactions.Tur;
      extends BioChem.Interfaces.Reactions.Modifiers.RightActivatorBackward;
      extends BioChem.Interfaces.Reactions.Modifiers.LeftInhibitorBackward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionOrder nS1e = 1 "Reaction order with respect to substrate 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nS2e = 1 "Reaction order with respect to substrate 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nS3e = 1 "Reaction order with respect to substrate 3" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP1e = 1 "Reaction order with respect to the product" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nABe = 1 "Reaction order with respect to the backward activator" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nIBe = 1 "Reaction order with respect to the backward inhibitor" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
    equation
      rr = k1 * s1.c ^ nS1e * s2.c ^ nS2e * s3.c ^ nS3e * s1.V - k2 * aB1.c ^ nABe / iB1.c ^ nIBe * p1.c ^ nP1e * p1.V;
      annotation(Documentation, Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
    end Turbabi;

    model Turfaba "Tri-uni reversible forward activation, backward activation reaction"
      extends BioChem.Interfaces.Reactions.Tur;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorBackward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionOrder nS1e = 1 "Reaction order with respect to substrate 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nS2e = 1 "Reaction order with respect to substrate 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nS3e = 1 "Reaction order with respect to substrate 3" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP1e = 1 "Reaction order with respect to the product" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nAFe = 1 "Reaction order with respect to the forward activator" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nABe = 1 "Reaction order with respect to the backward activator" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
    equation
      rr = k1 * aF1.c ^ nAFe * s1.c ^ nS1e * s2.c ^ nS2e * s3.c ^ nS3e * s1.V - k2 * aB1.c ^ nABe * p1.c ^ nP1e * p1.V;
      annotation(Documentation, Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
    end Turfaba;

    model Turfabi "Tri-uni reversible forward activation, backward inhibition reaction"
      extends BioChem.Interfaces.Reactions.Tur;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorBackward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionOrder nS1e = 1 "Reaction order with respect to substrate 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nS2e = 1 "Reaction order with respect to substrate 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nS3e = 1 "Reaction order with respect to substrate 3" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP1e = 1 "Reaction order with respect to the product" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nAFe = 1 "Reaction order with respect to the forward activator" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nIBe = 1 "Reaction order with respect to the backward inhibitor" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
    equation
      rr = k1 * aF1.c ^ nAFe * s1.c ^ nS1e * s2.c ^ nS2e * s3.c ^ nS3e * s1.V - k2 / iB1.c ^ nIBe * p1.c ^ nP1e * p1.V;
      annotation(Documentation, Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
    end Turfabi;

    model Turfafi "Tri-uni reversible forward activation, forward inhibition reaction"
      extends BioChem.Interfaces.Reactions.Tur;
      extends BioChem.Interfaces.Reactions.Modifiers.LeftActivatorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.RightInhibitorForward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionOrder nS1e = 1 "Reaction order with respect to substrate 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nS2e = 1 "Reaction order with respect to substrate 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nS3e = 1 "Reaction order with respect to substrate 3" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP1e = 1 "Reaction order with respect to the product" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nAFe = 1 "Reaction order with respect to the forward activator" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nIFe = 1 "Reaction order with respect to the forward inhibitor" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
    equation
      rr = k1 * aF1.c ^ nAFe / iF1.c ^ nIFe * s1.c ^ nS1e * s2.c ^ nS2e * s3.c ^ nS3e * s1.V - k2 * p1.c ^ nP1e * p1.V;
      annotation(Documentation, Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
    end Turfafi;

    model Turfiba "Tri-uni reversible forward inhibition, backward activation reaction"
      extends BioChem.Interfaces.Reactions.Tur;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorBackward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionOrder nS1e = 1 "Reaction order with respect to substrate 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nS2e = 1 "Reaction order with respect to substrate 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nS3e = 1 "Reaction order with respect to substrate 3" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP1e = 1 "Reaction order with respect to the product" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nIFe = 1 "Reaction order with respect to the forward inhibitor" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nABe = 1 "Reaction order with respect to the backward activator" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
    equation
      rr = k1 / iF1.c ^ nIFe * s1.c ^ nS1e * s2.c ^ nS2e * s3.c ^ nS3e * s1.V - k2 * aB1.c ^ nABe * p1.c ^ nP1e * p1.V;
      annotation(Documentation, Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
    end Turfiba;

    model Turfibi "Tri-uni reversible forward inhibition, backward inhibition reaction"
      extends BioChem.Interfaces.Reactions.Tur;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorBackward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionOrder nS1e = 1 "Reaction order with respect to substrate 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nS2e = 1 "Reaction order with respect to substrate 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nS3e = 1 "Reaction order with respect to substrate 3" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP1e = 1 "Reaction order with respect to the product" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nIFe = 1 "Reaction order with respect to the forward inhibitor" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nIBe = 1 "Reaction order with respect to the backward inhibitor" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
    equation
      rr = k1 / iF1.c ^ nIFe * s1.c ^ nS1e * s2.c ^ nS2e * s3.c ^ nS3e * s1.V - k2 / iB1.c ^ nIBe * p1.c ^ nP1e * p1.V;
      annotation(Documentation, Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
    end Turfibi;

    model Turfababi "Tri-uni reversible forward activation, backward activation, backward inhibition reaction"
      extends BioChem.Interfaces.Reactions.Tur;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.RightActivatorBackward;
      extends BioChem.Interfaces.Reactions.Modifiers.LeftInhibitorBackward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionOrder nS1e = 1 "Reaction order with respect to substrate 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nS2e = 1 "Reaction order with respect to substrate 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nS3e = 1 "Reaction order with respect to substrate 3" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP1e = 1 "Reaction order with respect to the product" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nAFe = 1 "Reaction order with respect to the forward activator" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nABe = 1 "Reaction order with respect to the backward activator" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nIBe = 1 "Reaction order with respect to the backward inhibitor" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
    equation
      rr = k1 * aF1.c ^ nAFe * s1.c ^ nS1e * s2.c ^ nS2e * s3.c ^ nS3e * s1.V - k2 * aB1.c ^ nABe / iB1.c ^ nIBe * p1.c ^ nP1e * p1.V;
      annotation(Documentation, Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
    end Turfababi;

    model Turfafiba "Tri-uni reversible forward activation, forward inhibition, backward activation reaction"
      extends BioChem.Interfaces.Reactions.Tur;
      extends BioChem.Interfaces.Reactions.Modifiers.LeftActivatorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.RightInhibitorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorBackward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionOrder nS1e = 1 "Reaction order with respect to substrate 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nS2e = 1 "Reaction order with respect to substrate 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nS3e = 1 "Reaction order with respect to substrate 3" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP1e = 1 "Reaction order with respect to the product" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nAFe = 1 "Reaction order with respect to the forward activator" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nIFe = 1 "Reaction order with respect to the forward inhibitor" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nABe = 1 "Reaction order with respect to the backward activator" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
    equation
      rr = k1 * aF1.c ^ nAFe / iF1.c ^ nIFe * s1.c ^ nS1e * s2.c ^ nS2e * s3.c ^ nS3e * s1.V - k2 * aB1.c ^ nABe * p1.c ^ nP1e * p1.V;
      annotation(Documentation, Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
    end Turfafiba;

    model Turfafibi "Tri-uni reversible forward activation, forward inhibition, backward inhibition reaction"
      extends BioChem.Interfaces.Reactions.Tur;
      extends BioChem.Interfaces.Reactions.Modifiers.LeftActivatorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.RightInhibitorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorBackward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionOrder nS1e = 1 "Reaction order with respect to substrate 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nS2e = 1 "Reaction order with respect to substrate 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nS3e = 1 "Reaction order with respect to substrate 3" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP1e = 1 "Reaction order with respect to the product" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nAFe = 1 "Reaction order with respect to the forward activator" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nIFe = 1 "Reaction order with respect to the forward inhibitor" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nIBe = 1 "Reaction order with respect to the backward inhibitor" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
    equation
      rr = k1 * aF1.c ^ nAFe / iF1.c ^ nIFe * s1.c ^ nS1e * s2.c ^ nS2e * s3.c ^ nS3e * s1.V - k2 / iB1.c ^ nIBe * p1.c ^ nP1e * p1.V;
      annotation(Documentation, Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
    end Turfafibi;

    model Turfibabi "Tri-uni reversible forward inhibition, backward activation, backward inhibition reaction"
      extends BioChem.Interfaces.Reactions.Tur;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.RightActivatorBackward;
      extends BioChem.Interfaces.Reactions.Modifiers.LeftInhibitorBackward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionOrder nS1e = 1 "Reaction order with respect to substrate 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nS2e = 1 "Reaction order with respect to substrate 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nS3e = 1 "Reaction order with respect to substrate 3" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP1e = 1 "Reaction order with respect to the product" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nIFe = 1 "Reaction order with respect to the forward inhibitor" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nABe = 1 "Reaction order with respect to the backward activator" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nIBe = 1 "Reaction order with respect to the backward inhibitor" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
    equation
      rr = k1 / iF1.c ^ nIFe * s1.c ^ nS1e * s2.c ^ nS2e * s3.c ^ nS3e * s1.V - k2 * aB1.c ^ nABe / iB1.c ^ nIBe * p1.c ^ nP1e * p1.V;
      annotation(Documentation, Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
    end Turfibabi;

    model Turfafibabi "Tri-uni reversible forward activation, forward inhibition, backward activation, backward inhibition reaction"
      extends BioChem.Interfaces.Reactions.Tur;
      extends BioChem.Interfaces.Reactions.Modifiers.LeftActivatorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.RightInhibitorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.RightActivatorBackward;
      extends BioChem.Interfaces.Reactions.Modifiers.LeftInhibitorBackward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionOrder nS1e = 1 "Reaction order with respect to substrate 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nS2e = 1 "Reaction order with respect to substrate 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nS3e = 1 "Reaction order with respect to substrate 3" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP1e = 1 "Reaction order with respect to the product" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nAFe = 1 "Reaction order with respect to the forward activator" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nIFe = 1 "Reaction order with respect to the forward inhibitor" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nABe = 1 "Reaction order with respect to the backward activator" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nIBe = 1 "Reaction order with respect to the backward inhibitor" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
    equation
      rr = k1 * aF1.c ^ nAFe / iF1.c ^ nIFe * s1.c ^ nS1e * s2.c ^ nS2e * s3.c ^ nS3e * s1.V - k2 * aB1.c ^ nABe / iB1.c ^ nIBe * p1.c ^ nP1e * p1.V;
      annotation(Documentation, Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
    end Turfafibabi;
    annotation(Documentation(info = "
  <html>
  <p>This package contains models for stoichiometric reactions with three reactants and one product.</p>
  </html>"), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
  end TriUni;

  package TriBi "A+B+C <-> D+E reactions"
    extends BioChem.Icons.Library;

    model Tbr "Tri-bi reversible reaction"
      extends BioChem.Interfaces.Reactions.Tbr;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionOrder nS1e = 1 "Reaction order with respect to substrate 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nS2e = 1 "Reaction order with respect to substrate 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nS3e = 1 "Reaction order with respect to substrate 3" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP1e = 1 "Reaction order with respect to product 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP2e = 1 "Reaction order with respect to product 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
    equation
      rr = k1 * s1.c ^ nS1e * s2.c ^ nS2e * s3.c ^ nS3e * s1.V - k2 * p1.c ^ nP1e * p2.c ^ nP2e * p1.V;
      annotation(Documentation, Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
    end Tbr;

    model Tbrba "Tri-bi reversible backward activation reaction"
      extends BioChem.Interfaces.Reactions.Tbr;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorBackward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionOrder nS1e = 1 "Reaction order with respect to substrate 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nS2e = 1 "Reaction order with respect to substrate 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nS3e = 1 "Reaction order with respect to substrate 3" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP1e = 1 "Reaction order with respect to product 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP2e = 1 "Reaction order with respect to product 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nABe = 1 "Reaction order with respect to the backward activator" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
    equation
      rr = k1 * s1.c ^ nS1e * s2.c ^ nS2e * s3.c ^ nS3e * s1.V - k2 * aB1.c ^ nABe * p1.c ^ nP1e * p2.c ^ nP2e * p1.V;
      annotation(Documentation, Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
    end Tbrba;

    model Tbrbi "Tri-bi reversible backward inhibition reaction"
      extends BioChem.Interfaces.Reactions.Tbr;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorBackward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionOrder nS1e = 1 "Reaction order with respect to substrate 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nS2e = 1 "Reaction order with respect to substrate 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nS3e = 1 "Reaction order with respect to substrate 3" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP1e = 1 "Reaction order with respect to product 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP2e = 1 "Reaction order with respect to product 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nIBe = 1 "Reaction order with respect to the backward inhibitor" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
    equation
      rr = k1 * s1.c ^ nS1e * s2.c ^ nS2e * s3.c ^ nS3e * s1.V - k2 / iB1.c ^ nIBe * p1.c ^ nP1e * p2.c ^ nP2e * p1.V;
      annotation(Documentation, Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
    end Tbrbi;

    model Tbrfa "Tri-bi reversible forward activation reaction"
      extends BioChem.Interfaces.Reactions.Tbr;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorForward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionOrder nS1e = 1 "Reaction order with respect to substrate 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nS2e = 1 "Reaction order with respect to substrate 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nS3e = 1 "Reaction order with respect to substrate 3" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP1e = 1 "Reaction order with respect to product 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP2e = 1 "Reaction order with respect to product 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nAFe = 1 "Reaction order with respect to the forward activator" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
    equation
      rr = k1 * aF1.c ^ nAFe * s1.c ^ nS1e * s2.c ^ nS2e * s3.c ^ nS3e * s1.V - k2 * p1.c ^ nP1e * p2.c ^ nP2e * p1.V;
      annotation(Documentation, Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
    end Tbrfa;

    model Tbrfi "Tri-bi reversible forward inhibition reaction"
      extends BioChem.Interfaces.Reactions.Tbr;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorForward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionOrder nS1e = 1 "Reaction order with respect to substrate 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nS2e = 1 "Reaction order with respect to substrate 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nS3e = 1 "Reaction order with respect to substrate 3" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP1e = 1 "Reaction order with respect to product 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP2e = 1 "Reaction order with respect to product 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nIFe = 1 "Reaction order with respect to the forward inhibitor" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
    equation
      rr = k1 / iF1.c ^ nIFe * s1.c ^ nS1e * s2.c ^ nS2e * s3.c ^ nS3e * s1.V - k2 * p1.c ^ nP1e * p2.c ^ nP2e * p1.V;
      annotation(Documentation, Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
    end Tbrfi;

    model Tbrbabi "Tri-bi reversible backward activation, backward inhibition reaction"
      extends BioChem.Interfaces.Reactions.Tbr;
      extends BioChem.Interfaces.Reactions.Modifiers.LeftActivatorBackward;
      extends BioChem.Interfaces.Reactions.Modifiers.RightInhibitorBackward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionOrder nS1e = 1 "Reaction order with respect to substrate 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nS2e = 1 "Reaction order with respect to substrate 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nS3e = 1 "Reaction order with respect to substrate 3" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP1e = 1 "Reaction order with respect to product 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP2e = 1 "Reaction order with respect to product 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nABe = 1 "Reaction order with respect to the backward activator" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nIBe = 1 "Reaction order with respect to the backward inhibitor" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
    equation
      rr = k1 * s1.c ^ nS1e * s2.c ^ nS2e * s3.c ^ nS3e * s1.V - k2 * aB1.c ^ nABe / iB1.c ^ nIBe * p1.c ^ nP1e * p2.c ^ nP2e * p1.V;
      annotation(Documentation, Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
    end Tbrbabi;

    model Tbrfaba "Tri-bi reversible forward activation, backward activation reaction"
      extends BioChem.Interfaces.Reactions.Tbr;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorBackward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionOrder nS1e = 1 "Reaction order with respect to substrate 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nS2e = 1 "Reaction order with respect to substrate 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nS3e = 1 "Reaction order with respect to substrate 3" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP1e = 1 "Reaction order with respect to product 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP2e = 1 "Reaction order with respect to product 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nAFe = 1 "Reaction order with respect to the forward activator" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nABe = 1 "Reaction order with respect to the backward activator" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
    equation
      rr = k1 * aF1.c ^ nAFe * s1.c ^ nS1e * s2.c ^ nS2e * s3.c ^ nS3e * s1.V - k2 * aB1.c ^ nABe * p1.c ^ nP1e * p2.c ^ nP2e * p1.V;
      annotation(Documentation, Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
    end Tbrfaba;

    model Tbrfabi "Tri-bi reversible forward activation, backward inhibition reaction"
      extends BioChem.Interfaces.Reactions.Tbr;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorBackward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionOrder nS1e = 1 "Reaction order with respect to substrate 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nS2e = 1 "Reaction order with respect to substrate 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nS3e = 1 "Reaction order with respect to substrate 3" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP1e = 1 "Reaction order with respect to product 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP2e = 1 "Reaction order with respect to product 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nAFe = 1 "Reaction order with respect to the forward activator" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nIBe = 1 "Reaction order with respect to the backward inhibitor" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
    equation
      rr = k1 * aF1.c ^ nAFe * s1.c ^ nS1e * s2.c ^ nS2e * s3.c ^ nS3e * s1.V - k2 / iB1.c ^ nIBe * p1.c ^ nP1e * p2.c ^ nP2e * p1.V;
      annotation(Documentation, Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
    end Tbrfabi;

    model Tbrfafi "Tri-bi reversible forward activation, forward inhibition reaction"
      extends BioChem.Interfaces.Reactions.Tbr;
      extends BioChem.Interfaces.Reactions.Modifiers.LeftActivatorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.RightInhibitorForward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionOrder nS1e = 1 "Reaction order with respect to substrate 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nS2e = 1 "Reaction order with respect to substrate 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nS3e = 1 "Reaction order with respect to substrate 3" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP1e = 1 "Reaction order with respect to product 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP2e = 1 "Reaction order with respect to product 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nAFe = 1 "Reaction order with respect to the forward activator" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nIFe = 1 "Reaction order with respect to the forward inhibitor" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
    equation
      rr = k1 * aF1.c ^ nAFe / iF1.c ^ nIFe * s1.c ^ nS1e * s2.c ^ nS2e * s3.c ^ nS3e * s1.V - k2 * p1.c ^ nP1e * p2.c ^ nP2e * p1.V;
      annotation(Documentation, Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
    end Tbrfafi;

    model Tbrfiba "Tri-bi reversible forward inhibition, backward activation reaction"
      extends BioChem.Interfaces.Reactions.Tbr;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorBackward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionOrder nS1e = 1 "Reaction order with respect to substrate 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nS2e = 1 "Reaction order with respect to substrate 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nS3e = 1 "Reaction order with respect to substrate 3" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP1e = 1 "Reaction order with respect to product 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP2e = 1 "Reaction order with respect to product 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nIFe = 1 "Reaction order with respect to the forward inhibitor" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nABe = 1 "Reaction order with respect to the backward activator" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
    equation
      rr = k1 / iF1.c ^ nIFe * s1.c ^ nS1e * s2.c ^ nS2e * s3.c ^ nS3e * s1.V - k2 * aB1.c ^ nABe * p1.c ^ nP1e * p2.c ^ nP2e * p1.V;
      annotation(Documentation, Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
    end Tbrfiba;

    model Tbrfibi "Tri-bi reversible forward inhibition, backward inhibition reaction"
      extends BioChem.Interfaces.Reactions.Tbr;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorBackward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionOrder nS1e = 1 "Reaction order with respect to substrate 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nS2e = 1 "Reaction order with respect to substrate 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nS3e = 1 "Reaction order with respect to substrate 3" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP1e = 1 "Reaction order with respect to product 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP2e = 1 "Reaction order with respect to product 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nIFe = 1 "Reaction order with respect to the forward inhibitor" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nIBe = 1 "Reaction order with respect to the backward inhibitor" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
    equation
      rr = k1 / iF1.c ^ nIFe * s1.c ^ nS1e * s2.c ^ nS2e * s3.c ^ nS3e * s1.V - k2 / iB1.c ^ nIBe * p1.c ^ nP1e * p2.c ^ nP2e * p1.V;
      annotation(Documentation, Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
    end Tbrfibi;

    model Tbrfababi "Tri-bi reversible forward activation, backward activation, backward inhibition reaction"
      extends BioChem.Interfaces.Reactions.Tbr;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.RightActivatorBackward;
      extends BioChem.Interfaces.Reactions.Modifiers.LeftInhibitorBackward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionOrder nS1e = 1 "Reaction order with respect to substrate 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nS2e = 1 "Reaction order with respect to substrate 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nS3e = 1 "Reaction order with respect to substrate 3" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP1e = 1 "Reaction order with respect to product 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP2e = 1 "Reaction order with respect to product 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nAFe = 1 "Reaction order with respect to the forward activator" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nABe = 1 "Reaction order with respect to the backward activator" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nIBe = 1 "Reaction order with respect to the backward inhibitor" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
    equation
      rr = k1 * aF1.c ^ nAFe * s1.c ^ nS1e * s2.c ^ nS2e * s3.c ^ nS3e * s1.V - k2 * aB1.c ^ nABe / iB1.c ^ nIBe * p1.c ^ nP1e * p2.c ^ nP2e * p1.V;
      annotation(Documentation, Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
    end Tbrfababi;

    model Tbrfafiba "Tri-bi reversible forward activation, forward inhibition, backward activation reaction"
      extends BioChem.Interfaces.Reactions.Tbr;
      extends BioChem.Interfaces.Reactions.Modifiers.LeftActivatorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.RightInhibitorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorBackward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionOrder nS1e = 1 "Reaction order with respect to substrate 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nS2e = 1 "Reaction order with respect to substrate 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nS3e = 1 "Reaction order with respect to substrate 3" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP1e = 1 "Reaction order with respect to product 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP2e = 1 "Reaction order with respect to product 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nAFe = 1 "Reaction order with respect to the forward activator" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nIFe = 1 "Reaction order with respect to the forward inhibitor" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nABe = 1 "Reaction order with respect to the backward activator" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
    equation
      rr = k1 * aF1.c ^ nAFe / iF1.c ^ nIFe * s1.c ^ nS1e * s2.c ^ nS2e * s3.c ^ nS3e * s1.V - k2 * aB1.c ^ nABe * p1.c ^ nP1e * p2.c ^ nP2e * p1.V;
      annotation(Documentation, Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
    end Tbrfafiba;

    model Tbrfafibi "Tri-bi reversible forward activation, forward inhibition, backward inhibition reaction"
      extends BioChem.Interfaces.Reactions.Tbr;
      extends BioChem.Interfaces.Reactions.Modifiers.LeftActivatorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.RightInhibitorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorBackward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionOrder nS1e = 1 "Reaction order with respect to substrate 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nS2e = 1 "Reaction order with respect to substrate 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nS3e = 1 "Reaction order with respect to substrate 3" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP1e = 1 "Reaction order with respect to product 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP2e = 1 "Reaction order with respect to product 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nAFe = 1 "Reaction order with respect to the forward activator" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nIFe = 1 "Reaction order with respect to the forward inhibitor" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nIBe = 1 "Reaction order with respect to the backward inhibitor" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
    equation
      rr = k1 * aF1.c ^ nAFe / iF1.c ^ nIFe * s1.c ^ nS1e * s2.c ^ nS2e * s3.c ^ nS3e * s1.V - k2 / iB1.c ^ nIBe * p1.c ^ nP1e * p2.c ^ nP2e * p1.V;
      annotation(Documentation, Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
    end Tbrfafibi;

    model Tbrfibabi "Tri-bi reversible forward inhibition, backward activation, backward inhibition reaction"
      extends BioChem.Interfaces.Reactions.Tbr;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.RightActivatorBackward;
      extends BioChem.Interfaces.Reactions.Modifiers.LeftInhibitorBackward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionOrder nS1e = 1 "Reaction order with respect to substrate 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nS2e = 1 "Reaction order with respect to substrate 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nS3e = 1 "Reaction order with respect to substrate 3" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP1e = 1 "Reaction order with respect to product 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP2e = 1 "Reaction order with respect to product 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nIFe = 1 "Reaction order with respect to the forward inhibitor" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nABe = 1 "Reaction order with respect to the backward activator" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nIBe = 1 "Reaction order with respect to the backward inhibitor" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
    equation
      rr = k1 / iF1.c ^ nIFe * s1.c ^ nS1e * s2.c ^ nS2e * s3.c ^ nS3e * s1.V - k2 * aB1.c ^ nABe / iB1.c ^ nIBe * p1.c ^ nP1e * p2.c ^ nP2e * p1.V;
      annotation(Documentation, Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
    end Tbrfibabi;

    model Tbrfafibabi "Tri-bi reversible forward activation, forward inhibition, backward activation, backward inhibition reaction"
      extends BioChem.Interfaces.Reactions.Tbr;
      extends BioChem.Interfaces.Reactions.Modifiers.LeftActivatorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.RightInhibitorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.RightActivatorBackward;
      extends BioChem.Interfaces.Reactions.Modifiers.LeftInhibitorBackward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionOrder nS1e = 1 "Reaction order with respect to substrate 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nS2e = 1 "Reaction order with respect to substrate 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nS3e = 1 "Reaction order with respect to substrate 3" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP1e = 1 "Reaction order with respect to product 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP2e = 1 "Reaction order with respect to product 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nAFe = 1 "Reaction order with respect to the forward activator" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nIFe = 1 "Reaction order with respect to the forward inhibitor" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nABe = 1 "Reaction order with respect to the backward activator" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nIBe = 1 "Reaction order with respect to the backward inhibitor" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
    equation
      rr = k1 * aF1.c ^ nAFe / iF1.c ^ nIFe * s1.c ^ nS1e * s2.c ^ nS2e * s3.c ^ nS3e * s1.V - k2 * aB1.c ^ nABe / iB1.c ^ nIBe * p1.c ^ nP1e * p2.c ^ nP2e * p1.V;
      annotation(Documentation, Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
    end Tbrfafibabi;
    annotation(Documentation(info = "<p>This package contains models for stoichiometric reactions with three reactants and two products.</p>", revisions = ""), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
  end TriBi;

  package TriTri "A+B+C <-> D+E+F reactions"
    extends BioChem.Icons.Library;

    model Ttr "Tri-tri reversible reaction"
      extends BioChem.Interfaces.Reactions.Ttr;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionOrder nS1e = 1 "Reaction order with respect to substrate 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nS2e = 1 "Reaction order with respect to substrate 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nS3e = 1 "Reaction order with respect to substrate 3" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP1e = 1 "Reaction order with respect to product 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP2e = 1 "Reaction order with respect to product 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP3e = 1 "Reaction order with respect to product 3" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
    equation
      rr = k1 * s1.c ^ nS1e * s2.c ^ nS2e * s3.c ^ nS3e * s1.V - k2 * p1.c ^ nP1e * p2.c ^ nP2e * p3.c ^ nP3e * p1.V;
      annotation(Documentation, Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
    end Ttr;

    model Ttrba "Tri-tri reversible backward activation reaction"
      extends BioChem.Interfaces.Reactions.Ttr;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorBackward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionOrder nS1e = 1 "Reaction order with respect to substrate 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nS2e = 1 "Reaction order with respect to substrate 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nS3e = 1 "Reaction order with respect to substrate 3" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP1e = 1 "Reaction order with respect to product 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP2e = 1 "Reaction order with respect to product 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP3e = 1 "Reaction order with respect to product 3" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nABe = 1 "Reaction order with respect to the backward activator" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
    equation
      rr = k1 * s1.c ^ nS1e * s2.c ^ nS2e * s3.c ^ nS3e * s1.V - k2 * aB1.c ^ nABe * p1.c ^ nP1e * p2.c ^ nP2e * p3.c ^ nP3e * p1.V;
      annotation(Documentation, Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
    end Ttrba;

    model Ttrbi "Tri-tri reversible backward inhibition reaction"
      extends BioChem.Interfaces.Reactions.Ttr;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorBackward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionOrder nS1e = 1 "Reaction order with respect to substrate 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nS2e = 1 "Reaction order with respect to substrate 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nS3e = 1 "Reaction order with respect to substrate 3" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP1e = 1 "Reaction order with respect to product 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP2e = 1 "Reaction order with respect to product 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP3e = 1 "Reaction order with respect to product 3" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nIBe = 1 "Reaction order with respect to the backward inhibitor" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
    equation
      rr = k1 * s1.c ^ nS1e * s2.c ^ nS2e * s3.c ^ nS3e * s1.V - k2 / iB1.c ^ nIBe * p1.c ^ nP1e * p2.c ^ nP2e * p3.c ^ nP3e * p1.V;
      annotation(Documentation, Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
    end Ttrbi;

    model Ttrfa "Tri-tri reversible forward activation reaction"
      extends BioChem.Interfaces.Reactions.Ttr;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorForward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionOrder nS1e = 1 "Reaction order with respect to substrate 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nS2e = 1 "Reaction order with respect to substrate 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nS3e = 1 "Reaction order with respect to substrate 3" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP1e = 1 "Reaction order with respect to product 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP2e = 1 "Reaction order with respect to product 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP3e = 1 "Reaction order with respect to product 3" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nAFe = 1 "Reaction order with respect to the forward activator" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
    equation
      rr = k1 * aF1.c ^ nAFe * s1.c ^ nS1e * s2.c ^ nS2e * s3.c ^ nS3e * s1.V - k2 * p1.c ^ nP1e * p2.c ^ nP2e * p3.c ^ nP3e * p1.V;
      annotation(Documentation, Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
    end Ttrfa;

    model Ttrfi "Tri-tri reversible forward inhibition reaction"
      extends BioChem.Interfaces.Reactions.Ttr;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorForward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionOrder nS1e = 1 "Reaction order with respect to substrate 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nS2e = 1 "Reaction order with respect to substrate 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nS3e = 1 "Reaction order with respect to substrate 3" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP1e = 1 "Reaction order with respect to product 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP2e = 1 "Reaction order with respect to product 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP3e = 1 "Reaction order with respect to product 3" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nIFe = 1 "Reaction order with respect to the forward inhibitor" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
    equation
      rr = k1 / iF1.c ^ nIFe * s1.c ^ nS1e * s2.c ^ nS2e * s3.c ^ nS3e * s1.V - k2 * p1.c ^ nP1e * p2.c ^ nP2e * p3.c ^ nP3e * p1.V;
      annotation(Documentation, Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
    end Ttrfi;

    model Ttrbabi "Tri-tri reversible backward activation, backward inhibition reaction"
      extends BioChem.Interfaces.Reactions.Ttr;
      extends BioChem.Interfaces.Reactions.Modifiers.LeftActivatorBackward;
      extends BioChem.Interfaces.Reactions.Modifiers.RightInhibitorBackward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionOrder nS1e = 1 "Reaction order with respect to substrate 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nS2e = 1 "Reaction order with respect to substrate 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nS3e = 1 "Reaction order with respect to substrate 3" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP1e = 1 "Reaction order with respect to product 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP2e = 1 "Reaction order with respect to product 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP3e = 1 "Reaction order with respect to product 3" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nABe = 1 "Reaction order with respect to the backward activator" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nIBe = 1 "Reaction order with respect to the backward inhibitor" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
    equation
      rr = k1 * s1.c ^ nS1e * s2.c ^ nS2e * s3.c ^ nS3e * s1.V - k2 * aB1.c ^ nABe / iB1.c ^ nIBe * p1.c ^ nP1e * p2.c ^ nP2e * p3.c ^ nP3e * p1.V;
      annotation(Documentation, Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
    end Ttrbabi;

    model Ttrfaba "Tri-tri reversible forward activation, backward activation reaction"
      extends BioChem.Interfaces.Reactions.Ttr;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorBackward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionOrder nS1e = 1 "Reaction order with respect to substrate 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nS2e = 1 "Reaction order with respect to substrate 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nS3e = 1 "Reaction order with respect to substrate 3" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP1e = 1 "Reaction order with respect to product 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP2e = 1 "Reaction order with respect to product 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP3e = 1 "Reaction order with respect to product 3" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nAFe = 1 "Reaction order with respect to the forward activator" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nABe = 1 "Reaction order with respect to the backward activator" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
    equation
      rr = k1 * aF1.c ^ nAFe * s1.c ^ nS1e * s2.c ^ nS2e * s3.c ^ nS3e * s1.V - k2 * aB1.c ^ nABe * p1.c ^ nP1e * p2.c ^ nP2e * p3.c ^ nP3e * p1.V;
      annotation(Documentation, Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
    end Ttrfaba;

    model Ttrfabi "Tri-tri reversible forward activation, backward inhibition reaction"
      extends BioChem.Interfaces.Reactions.Ttr;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorBackward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionOrder nS1e = 1 "Reaction order with respect to substrate 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nS2e = 1 "Reaction order with respect to substrate 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nS3e = 1 "Reaction order with respect to substrate 3" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP1e = 1 "Reaction order with respect to product 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP2e = 1 "Reaction order with respect to product 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP3e = 1 "Reaction order with respect to product 3" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nAFe = 1 "Reaction order with respect to the forward activator" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nIBe = 1 "Reaction order with respect to the backward inhibitor" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
    equation
      rr = k1 * aF1.c ^ nAFe * s1.c ^ nS1e * s2.c ^ nS2e * s3.c ^ nS3e * s1.V - k2 / iB1.c ^ nIBe * p1.c ^ nP1e * p2.c ^ nP2e * p3.c ^ nP3e * p1.V;
      annotation(Documentation, Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
    end Ttrfabi;

    model Ttrfafi "Tri-tri reversible forward activation, forward inhibition reaction"
      extends BioChem.Interfaces.Reactions.Ttr;
      extends BioChem.Interfaces.Reactions.Modifiers.LeftActivatorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.RightInhibitorForward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionOrder nS1e = 1 "Reaction order with respect to substrate 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nS2e = 1 "Reaction order with respect to substrate 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nS3e = 1 "Reaction order with respect to substrate 3" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP1e = 1 "Reaction order with respect to product 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP2e = 1 "Reaction order with respect to product 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP3e = 1 "Reaction order with respect to product 3" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nAFe = 1 "Reaction order with respect to the forward activator" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nIFe = 1 "Reaction order with respect to the forward inhibitor" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
    equation
      rr = k1 * aF1.c ^ nAFe / iF1.c ^ nIFe * s1.c ^ nS1e * s2.c ^ nS2e * s3.c ^ nS3e * s1.V - k2 * p1.c ^ nP1e * p2.c ^ nP2e * p3.c ^ nP3e * p1.V;
      annotation(Documentation, Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
    end Ttrfafi;

    model Ttrfiba "Tri-tri reversible forward inhibition, backward activation reaction"
      extends BioChem.Interfaces.Reactions.Ttr;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorBackward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionOrder nS1e = 1 "Reaction order with respect to substrate 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nS2e = 1 "Reaction order with respect to substrate 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nS3e = 1 "Reaction order with respect to substrate 3" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP1e = 1 "Reaction order with respect to product 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP2e = 1 "Reaction order with respect to product 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP3e = 1 "Reaction order with respect to product 3" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nIFe = 1 "Reaction order with respect to the forward inhibitor" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nABe = 1 "Reaction order with respect to the backward activator" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
    equation
      rr = k1 / iF1.c ^ nIFe * s1.c ^ nS1e * s2.c ^ nS2e * s3.c ^ nS3e * s1.V - k2 * aB1.c ^ nABe * p1.c ^ nP1e * p2.c ^ nP2e * p3.c ^ nP3e * p1.V;
      annotation(Documentation, Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
    end Ttrfiba;

    model Ttrfibi "Tri-tri reversible forward inhibition, backward inhibition reaction"
      extends BioChem.Interfaces.Reactions.Ttr;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorBackward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionOrder nS1e = 1 "Reaction order with respect to substrate 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nS2e = 1 "Reaction order with respect to substrate 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nS3e = 1 "Reaction order with respect to substrate 3" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP1e = 1 "Reaction order with respect to product 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP2e = 1 "Reaction order with respect to product 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP3e = 1 "Reaction order with respect to product 3" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nIFe = 1 "Reaction order with respect to the forward inhibitor" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nIBe = 1 "Reaction order with respect to the backward inhibitor" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
    equation
      rr = k1 / iF1.c ^ nIFe * s1.c ^ nS1e * s2.c ^ nS2e * s3.c ^ nS3e * s1.V - k2 / iB1.c ^ nIBe * p1.c ^ nP1e * p2.c ^ nP2e * p3.c ^ nP3e * p1.V;
      annotation(Documentation, Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
    end Ttrfibi;

    model Ttrfababi "Tri-tri reversible forward activation, backward activation, backward inhibition reaction"
      extends BioChem.Interfaces.Reactions.Ttr;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.RightActivatorBackward;
      extends BioChem.Interfaces.Reactions.Modifiers.LeftInhibitorBackward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionOrder nS1e = 1 "Reaction order with respect to substrate 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nS2e = 1 "Reaction order with respect to substrate 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nS3e = 1 "Reaction order with respect to substrate 3" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP1e = 1 "Reaction order with respect to product 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP2e = 1 "Reaction order with respect to product 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP3e = 1 "Reaction order with respect to product 3" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nAFe = 1 "Reaction order with respect to the forward activator" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nABe = 1 "Reaction order with respect to the backward activator" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nIBe = 1 "Reaction order with respect to the backward inhibitor" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
    equation
      rr = k1 * aF1.c ^ nAFe * s1.c ^ nS1e * s2.c ^ nS2e * s3.c ^ nS3e * s1.V - k2 * aB1.c ^ nABe / iB1.c ^ nIBe * p1.c ^ nP1e * p2.c ^ nP2e * p3.c ^ nP3e * p1.V;
      annotation(Documentation, Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
    end Ttrfababi;

    model Ttrfafiba "Tri-tri reversible forward activation, forward inhibition, backward activation reaction"
      extends BioChem.Interfaces.Reactions.Ttr;
      extends BioChem.Interfaces.Reactions.Modifiers.LeftActivatorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.RightInhibitorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorBackward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionOrder nS1e = 1 "Reaction order with respect to substrate 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nS2e = 1 "Reaction order with respect to substrate 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nS3e = 1 "Reaction order with respect to substrate 3" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP1e = 1 "Reaction order with respect to product 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP2e = 1 "Reaction order with respect to product 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP3e = 1 "Reaction order with respect to product 3" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nAFe = 1 "Reaction order with respect to the forward activator" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nIFe = 1 "Reaction order with respect to the forward inhibitor" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nABe = 1 "Reaction order with respect to the backward activator" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
    equation
      rr = k1 * aF1.c ^ nAFe / iF1.c ^ nIFe * s1.c ^ nS1e * s2.c ^ nS2e * s3.c ^ nS3e * s1.V - k2 * aB1.c ^ nABe * p1.c ^ nP1e * p2.c ^ nP2e * p3.c ^ nP3e * p1.V;
      annotation(Documentation, Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
    end Ttrfafiba;

    model Ttrfafibi "Tri-tri reversible forward activation, forward inhibition, backward inhibition reaction"
      extends BioChem.Interfaces.Reactions.Ttr;
      extends BioChem.Interfaces.Reactions.Modifiers.LeftActivatorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.RightInhibitorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorBackward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionOrder nS1e = 1 "Reaction order with respect to substrate 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nS2e = 1 "Reaction order with respect to substrate 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nS3e = 1 "Reaction order with respect to substrate 3" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP1e = 1 "Reaction order with respect to product 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP2e = 1 "Reaction order with respect to product 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP3e = 1 "Reaction order with respect to product 3" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nAFe = 1 "Reaction order with respect to the forward activator" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nIFe = 1 "Reaction order with respect to the forward inhibitor" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nIBe = 1 "Reaction order with respect to the backward inhibitor" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
    equation
      rr = k1 * aF1.c ^ nAFe / iF1.c ^ nIFe * s1.c ^ nS1e * s2.c ^ nS2e * s3.c ^ nS3e * s1.V - k2 / iB1.c ^ nIBe * p1.c ^ nP1e * p2.c ^ nP2e * p3.c ^ nP3e * p1.V;
      annotation(Documentation, Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
    end Ttrfafibi;

    model Ttrfibabi "Tri-tri reversible forward inhibition, backward activation, backward inhibition reaction"
      extends BioChem.Interfaces.Reactions.Ttr;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.RightActivatorBackward;
      extends BioChem.Interfaces.Reactions.Modifiers.LeftInhibitorBackward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionOrder nS1e = 1 "Reaction order with respect to substrate 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nS2e = 1 "Reaction order with respect to substrate 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nS3e = 1 "Reaction order with respect to substrate 3" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP1e = 1 "Reaction order with respect to product 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP2e = 1 "Reaction order with respect to product 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP3e = 1 "Reaction order with respect to product 3" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nIFe = 1 "Reaction order with respect to the forward inhibitor" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nABe = 1 "Reaction order with respect to the backward activator" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nIBe = 1 "Reaction order with respect to the backward inhibitor" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
    equation
      rr = k1 / iF1.c ^ nIFe * s1.c ^ nS1e * s2.c ^ nS2e * s3.c ^ nS3e * s1.V - k2 * aB1.c ^ nABe / iB1.c ^ nIBe * p1.c ^ nP1e * p2.c ^ nP2e * p3.c ^ nP3e * p1.V;
      annotation(Documentation, Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
    end Ttrfibabi;

    model Ttrfafibabi "Tri-tri reversible forward activation, forward inhibition, backward activation, backward inhibition reaction"
      extends BioChem.Interfaces.Reactions.Ttr;
      extends BioChem.Interfaces.Reactions.Modifiers.LeftActivatorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.RightInhibitorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.RightActivatorBackward;
      extends BioChem.Interfaces.Reactions.Modifiers.LeftInhibitorBackward;
      parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backward reaction coefficient for the reaction" annotation(Dialog(group = "Rate constants"));
      parameter BioChem.Units.ReactionOrder nS1e = 1 "Reaction order with respect to substrate 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nS2e = 1 "Reaction order with respect to substrate 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nS3e = 1 "Reaction order with respect to substrate 3" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP1e = 1 "Reaction order with respect to product 1" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP2e = 1 "Reaction order with respect to product 2" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nP3e = 1 "Reaction order with respect to product 3" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nAFe = 1 "Reaction order with respect to the forward activator" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nIFe = 1 "Reaction order with respect to the forward inhibitor" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nABe = 1 "Reaction order with respect to the backward activator" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
      parameter BioChem.Units.ReactionOrder nIBe = 1 "Reaction order with respect to the backward inhibitor" annotation(Dialog(tab = "Reaction order", group = "Reaction orders"));
    equation
      rr = k1 * aF1.c ^ nAFe / iF1.c ^ nIFe * s1.c ^ nS1e * s2.c ^ nS2e * s3.c ^ nS3e * s1.V - k2 * aB1.c ^ nABe / iB1.c ^ nIBe * p1.c ^ nP1e * p2.c ^ nP2e * p3.c ^ nP3e * p1.V;
      annotation(Documentation, Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
    end Ttrfafibabi;
    annotation(Documentation(info = "
  <html>
  <p>This package contains models for stoichiometric reactions with three reactants and three products.</p>
  </html>"), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
  end TriTri;
  annotation(Documentation(info = "
  <html>
  <p>This package contains models for reversible reactions with one to three reactants and products.</p>
  </html>"), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
end Reversible;