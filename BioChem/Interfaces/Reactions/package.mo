within BioChem.Interfaces;

package Reactions "Partial models, extended by models in the package BioChem.Reactions"
  extends BioChem.Icons.Library;

  partial model Uui "Uni-uni irreversible reaction"
    extends BioChem.Interfaces.Reactions.Basics.Reaction;
    extends BioChem.Interfaces.Reactions.Basics.OneSubstrate;
    extends BioChem.Interfaces.Reactions.Basics.OneProduct;
    BioChem.Units.StoichiometricCoefficient nS1 = 1 "Stoichiometric coefficient for the substrate" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
    BioChem.Units.StoichiometricCoefficient nP1 = 1 "Stoichiometric coefficient for the product" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
  equation
    s1.r = nS1 * rr;
    p1.r = -nP1 * rr;
    annotation(Documentation(info = "<html><!--WSMINSERTIONTAGSTART uuiTag -->
    <body>
    Uni-uni irreversible reaction
    </body>
    <!--WSMINSERTIONTAGEND uuiTag --></html>", revisions = ""), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
  end Uui;

  partial model Uur "Uni-uni reversible reaction"
    extends BioChem.Interfaces.Reactions.Basics.Reaction;
    extends BioChem.Interfaces.Reactions.Basics.OneSubstrateReversible;
    extends BioChem.Interfaces.Reactions.Basics.OneProduct;
    BioChem.Units.StoichiometricCoefficient nS1 = 1 "Stoichiometric coefficient for the substrate" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
    BioChem.Units.StoichiometricCoefficient nP1 = 1 "Stoichiometric coefficient for the product" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
  equation
    s1.r = nS1 * rr;
    p1.r = -nP1 * rr;
    annotation(Documentation(info = "<html><!--WSMINSERTIONTAGSTART uurTag -->
    <body>
    Uni-uni reversible reaction
    </body>
    <!--WSMINSERTIONTAGEND uurTag --></html>", revisions = ""), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
  end Uur;

  partial model Ubi "Uni-bi irreversible reaction"
    extends BioChem.Interfaces.Reactions.Basics.Reaction;
    extends BioChem.Interfaces.Reactions.Basics.OneSubstrate;
    extends BioChem.Interfaces.Reactions.Basics.TwoProducts;
    BioChem.Units.StoichiometricCoefficient nS1 = 1 "Stoichiometric coefficient for the substrate" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
    BioChem.Units.StoichiometricCoefficient nP1 = 1 "Stoichiometric coefficient for product 1" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
    BioChem.Units.StoichiometricCoefficient nP2 = 1 "Stoichiometric coefficient for product 2" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
  equation
    s1.r = nS1 * rr;
    p1.r = -nP1 * rr;
    p2.r = -nP2 * rr;
    annotation(Documentation(info = "<html><!--WSMINSERTIONTAGSTART ubiTag -->
    <body>
    Uni-bi irreversible reaction
    </body>
    <!--WSMINSERTIONTAGEND ubiTag --></html>", revisions = ""), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
  end Ubi;

  partial model Ubr "Uni-bi reversible reaction"
    extends BioChem.Interfaces.Reactions.Basics.Reaction;
    extends BioChem.Interfaces.Reactions.Basics.OneSubstrateReversible;
    extends BioChem.Interfaces.Reactions.Basics.TwoProducts;
    BioChem.Units.StoichiometricCoefficient nS1 = 1 "Stoichiometric coefficient for the substrate" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
    BioChem.Units.StoichiometricCoefficient nP1 = 1 "Stoichiometric coefficient for product 1" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
    BioChem.Units.StoichiometricCoefficient nP2 = 1 "Stoichiometric coefficient for product 2" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
  equation
    s1.r = nS1 * rr;
    p1.r = -nP1 * rr;
    p2.r = -nP2 * rr;
    annotation(Documentation(info = "<html><!--WSMINSERTIONTAGSTART ubrTag -->
    <body>
    Uni-bi reversible reaction
    </body>
    <!--WSMINSERTIONTAGEND ubrTag --></html>", revisions = ""), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
  end Ubr;

  partial model Uti "Uni-tri irreversible reaction"
    extends BioChem.Interfaces.Reactions.Basics.Reaction;
    extends BioChem.Interfaces.Reactions.Basics.OneSubstrate;
    extends BioChem.Interfaces.Reactions.Basics.ThreeProducts;
    BioChem.Units.StoichiometricCoefficient nS1 = 1 "Stoichiometric coefficient for the substrate" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
    BioChem.Units.StoichiometricCoefficient nP1 = 1 "Stoichiometric coefficient for product 1" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
    BioChem.Units.StoichiometricCoefficient nP2 = 1 "Stoichiometric coefficient for product 2" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
    BioChem.Units.StoichiometricCoefficient nP3 = 1 "Stoichiometric coefficient for product 3" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
  equation
    s1.r = nS1 * rr;
    p1.r = -nP1 * rr;
    p2.r = -nP2 * rr;
    p3.r = -nP3 * rr;
    annotation(Documentation(info = "<html><!--WSMINSERTIONTAGSTART utiTag -->
    <body>
    Uni-tri irreversible reaction
    </body>
    <!--WSMINSERTIONTAGEND utiTag --></html>", revisions = ""), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
  end Uti;

  partial model Utr "Uni-tri reversible reaction"
    extends BioChem.Interfaces.Reactions.Basics.Reaction;
    extends BioChem.Interfaces.Reactions.Basics.OneSubstrateReversible;
    extends BioChem.Interfaces.Reactions.Basics.ThreeProducts;
    BioChem.Units.StoichiometricCoefficient nS1 = 1 "Stoichiometric coefficient for the substrate" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
    BioChem.Units.StoichiometricCoefficient nP1 = 1 "Stoichiometric coefficient for product 1" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
    BioChem.Units.StoichiometricCoefficient nP2 = 1 "Stoichiometric coefficient for product 2" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
    BioChem.Units.StoichiometricCoefficient nP3 = 1 "Stoichiometric coefficient for product 3" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
  equation
    s1.r = nS1 * rr;
    p1.r = -nP1 * rr;
    p2.r = -nP2 * rr;
    p3.r = -nP3 * rr;
    annotation(Documentation(info = "<html><!--WSMINSERTIONTAGSTART utrTag -->
    <body>
    Uni-tri reversible reaction
    </body>
    <!--WSMINSERTIONTAGEND utrTag --></html>", revisions = ""), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
  end Utr;

  partial model Uqi "Uni-quad irreversible reaction"
    extends BioChem.Interfaces.Reactions.Basics.Reaction;
    extends BioChem.Interfaces.Reactions.Basics.OneSubstrate;
    extends BioChem.Interfaces.Reactions.Basics.FourProducts;
    BioChem.Units.StoichiometricCoefficient nS1 = 1 "Stoichiometric coefficient for the substrate" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
    BioChem.Units.StoichiometricCoefficient nP1 = 1 "Stoichiometric coefficient for product 1" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
    BioChem.Units.StoichiometricCoefficient nP2 = 1 "Stoichiometric coefficient for product 2" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
    BioChem.Units.StoichiometricCoefficient nP3 = 1 "Stoichiometric coefficient for product 3" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
    BioChem.Units.StoichiometricCoefficient nP4 = 1 "Stoichiometric coefficient for product 4" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
  equation
    s1.r = nS1 * rr;
    p1.r = -nP1 * rr;
    p2.r = -nP2 * rr;
    p3.r = -nP3 * rr;
    p4.r = -nP4 * rr;
    annotation(Documentation(info = "<html><!--WSMINSERTIONTAGSTART uqiTag -->
    <body>
    Uni-quad irreversible reaction
    </body>
    <!--WSMINSERTIONTAGEND uqiTag --></html>", revisions = ""), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
  end Uqi;

  partial model Uqr "Uni-quad reversible reaction"
    extends BioChem.Interfaces.Reactions.Basics.Reaction;
    extends BioChem.Interfaces.Reactions.Basics.OneSubstrateReversible;
    extends BioChem.Interfaces.Reactions.Basics.FourProducts;
    BioChem.Units.StoichiometricCoefficient nS1 = 1 "Stoichiometric coefficient for the substrate" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
    BioChem.Units.StoichiometricCoefficient nP1 = 1 "Stoichiometric coefficient for product 1" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
    BioChem.Units.StoichiometricCoefficient nP2 = 1 "Stoichiometric coefficient for product 2" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
    BioChem.Units.StoichiometricCoefficient nP3 = 1 "Stoichiometric coefficient for product 3" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
    BioChem.Units.StoichiometricCoefficient nP4 = 1 "Stoichiometric coefficient for product 4" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
  equation
    s1.r = nS1 * rr;
    p1.r = -nP1 * rr;
    p2.r = -nP2 * rr;
    p3.r = -nP3 * rr;
    p4.r = -nP4 * rr;
    annotation(Documentation(info = "<html><!--WSMINSERTIONTAGSTART uqrTag -->
    <body>
    Uni-quad reversible reaction
    </body>
    <!--WSMINSERTIONTAGEND uqrTag --></html>", revisions = ""), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
  end Uqr;

  partial model Umi "Uni-multi irreversible reaction"
    extends BioChem.Interfaces.Reactions.Basics.Reaction;
    extends BioChem.Interfaces.Reactions.Basics.OneSubstrate;
    extends BioChem.Interfaces.Reactions.Basics.MultipleProducts;
    BioChem.Units.StoichiometricCoefficient nS1 = 1 "Stoichiometric coefficient for substrate 1" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
    BioChem.Units.StoichiometricCoefficient nP[dimP] = fill(1, dimP) "Stoichiometric coefficients for the products" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
  equation
    s1.r = nS1 * rr;
    p.r = -nP * rr;
    annotation(Documentation(info = "<html><!--WSMINSERTIONTAGSTART umiTag -->
    <body>
    Uni-multi irreversible reaction
    </body>
    <!--WSMINSERTIONTAGEND umiTag --></html>", revisions = ""), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
  end Umi;

  partial model Umr "Uni-multi reversible reaction"
    extends BioChem.Interfaces.Reactions.Basics.Reaction;
    extends BioChem.Interfaces.Reactions.Basics.OneSubstrateReversible;
    extends BioChem.Interfaces.Reactions.Basics.MultipleProducts;
    BioChem.Units.StoichiometricCoefficient nS1 = 1 "Stoichiometric coefficient for substrate 1" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
    BioChem.Units.StoichiometricCoefficient nP[dimP] = fill(1, dimP) "Stoichiometric coefficients for the products" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
  equation
    s1.r = nS1 * rr;
    p.r = -nP * rr;
    annotation(Documentation(info = "<html><!--WSMINSERTIONTAGSTART umrTag -->
    <body>
    Uni-multi reversible reaction
    </body>
    <!--WSMINSERTIONTAGEND umrTag --></html>", revisions = ""), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
  end Umr;

  partial model Bui "Bi-uni irreversible reaction"
    extends BioChem.Interfaces.Reactions.Basics.Reaction;
    extends BioChem.Interfaces.Reactions.Basics.TwoSubstrates;
    extends BioChem.Interfaces.Reactions.Basics.OneProduct;
    BioChem.Units.StoichiometricCoefficient nS1 = 1 "Stoichiometric coefficient for substrate 1" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
    BioChem.Units.StoichiometricCoefficient nS2 = 1 "Stoichiometric coefficient for substrate 2" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
    BioChem.Units.StoichiometricCoefficient nP1 = 1 "Stoichiometric coefficient for the product" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
  equation
    s1.r = nS1 * rr;
    s2.r = nS2 * rr;
    p1.r = -nP1 * rr;
    annotation(Documentation(info = "<html><!--WSMINSERTIONTAGSTART buiTag -->
    <body>
    Bi-uni irreversible reaction
    </body>
    <!--WSMINSERTIONTAGEND buiTag --></html>", revisions = ""), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
  end Bui;

  partial model Bur "Bi-uni reversible reaction"
    extends BioChem.Interfaces.Reactions.Basics.Reaction;
    extends BioChem.Interfaces.Reactions.Basics.TwoSubstratesReversible;
    extends BioChem.Interfaces.Reactions.Basics.OneProduct;
    BioChem.Units.StoichiometricCoefficient nS1 = 1 "Stoichiometric coefficient for substrate 1" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
    BioChem.Units.StoichiometricCoefficient nS2 = 1 "Stoichiometric coefficient for substrate 2" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
    BioChem.Units.StoichiometricCoefficient nP1 = 1 "Stoichiometric coefficient for the product" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
  equation
    s1.r = nS1 * rr;
    s2.r = nS2 * rr;
    p1.r = -nP1 * rr;
    annotation(Documentation(info = "<html><!--WSMINSERTIONTAGSTART burTag -->
    <body>
    Bi-uni reversible reaction
    </body>
    <!--WSMINSERTIONTAGEND burTag --></html>", revisions = ""), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
  end Bur;

  partial model Bbi "Bi-bi irreversible reaction"
    extends BioChem.Interfaces.Reactions.Basics.Reaction;
    extends BioChem.Interfaces.Reactions.Basics.TwoSubstrates;
    extends BioChem.Interfaces.Reactions.Basics.TwoProducts;
    BioChem.Units.StoichiometricCoefficient nS1 = 1 "Stoichiometric coefficient for substrate 1" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
    BioChem.Units.StoichiometricCoefficient nS2 = 1 "Stoichiometric coefficient for substrate 2" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
    BioChem.Units.StoichiometricCoefficient nP1 = 1 "Stoichiometric coefficient for product 1" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
    BioChem.Units.StoichiometricCoefficient nP2 = 1 "Stoichiometric coefficient for product 2" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
  equation
    s1.r = nS1 * rr;
    s2.r = nS2 * rr;
    p1.r = -nP1 * rr;
    p2.r = -nP2 * rr;
    annotation(Documentation(info = "<html><!--WSMINSERTIONTAGSTART bbiTag -->
    <body>
    Bi-bi irreversible reaction
    </body>
    <!--WSMINSERTIONTAGEND bbiTag --></html>", revisions = ""), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
  end Bbi;

  partial model Bbr "Bi-bi reversible reaction"
    extends BioChem.Interfaces.Reactions.Basics.Reaction;
    extends BioChem.Interfaces.Reactions.Basics.TwoSubstratesReversible;
    extends BioChem.Interfaces.Reactions.Basics.TwoProducts;
    BioChem.Units.StoichiometricCoefficient nS1 = 1 "Stoichiometric coefficient for substrate 1" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
    BioChem.Units.StoichiometricCoefficient nS2 = 1 "Stoichiometric coefficient for substrate 2" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
    BioChem.Units.StoichiometricCoefficient nP1 = 1 "Stoichiometric coefficient for product 1" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
    BioChem.Units.StoichiometricCoefficient nP2 = 1 "Stoichiometric coefficient for product 2" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
  equation
    s1.r = nS1 * rr;
    s2.r = nS2 * rr;
    p1.r = -nP1 * rr;
    p2.r = -nP2 * rr;
    annotation(Documentation(info = "<html><!--WSMINSERTIONTAGSTART bbrTag -->
    <body>
    Bi-bi reversible reaction
    </body>
    <!--WSMINSERTIONTAGEND bbrTag --></html>", revisions = ""), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
  end Bbr;

  partial model Bti "Bi-tri irreversible reaction"
    extends BioChem.Interfaces.Reactions.Basics.Reaction;
    extends BioChem.Interfaces.Reactions.Basics.TwoSubstrates;
    extends BioChem.Interfaces.Reactions.Basics.ThreeProducts;
    BioChem.Units.StoichiometricCoefficient nS1 = 1 "Stoichiometric coefficient for substrate 1" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
    BioChem.Units.StoichiometricCoefficient nS2 = 1 "Stoichiometric coefficient for substrate 2" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
    BioChem.Units.StoichiometricCoefficient nP1 = 1 "Stoichiometric coefficient for product 1" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
    BioChem.Units.StoichiometricCoefficient nP2 = 1 "Stoichiometric coefficient for product 2" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
    BioChem.Units.StoichiometricCoefficient nP3 = 1 "Stoichiometric coefficient for product 3" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
  equation
    s1.r = nS1 * rr;
    s2.r = nS2 * rr;
    p1.r = -nP1 * rr;
    p2.r = -nP2 * rr;
    p3.r = -nP3 * rr;
    annotation(Documentation(info = "<html><!--WSMINSERTIONTAGSTART btiTag -->
    <body>
    Bi-tri irreversible reaction
    </body>
    <!--WSMINSERTIONTAGEND btiTag --></html>", revisions = ""), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
  end Bti;

  partial model Btr "Bi-tri reversible reaction"
    extends BioChem.Interfaces.Reactions.Basics.Reaction;
    extends BioChem.Interfaces.Reactions.Basics.TwoSubstratesReversible;
    extends BioChem.Interfaces.Reactions.Basics.ThreeProducts;
    BioChem.Units.StoichiometricCoefficient nS1 = 1 "Stoichiometric coefficient for substrate 1" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
    BioChem.Units.StoichiometricCoefficient nS2 = 1 "Stoichiometric coefficient for substrate 2" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
    BioChem.Units.StoichiometricCoefficient nP1 = 1 "Stoichiometric coefficient for product 1" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
    BioChem.Units.StoichiometricCoefficient nP2 = 1 "Stoichiometric coefficient for product 2" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
    BioChem.Units.StoichiometricCoefficient nP3 = 1 "Stoichiometric coefficient for product 3" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
  equation
    s1.r = nS1 * rr;
    s2.r = nS2 * rr;
    p1.r = -nP1 * rr;
    p2.r = -nP2 * rr;
    p3.r = -nP3 * rr;
    annotation(Documentation(info = "<html><!--WSMINSERTIONTAGSTART btrTag -->
    <body>
    Bi-tri irreversible reaction
    </body>
    <!--WSMINSERTIONTAGEND btrTag --></html>", revisions = ""), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
  end Btr;

  partial model Bqi "Bi-quad irreversible reaction"
    extends BioChem.Interfaces.Reactions.Basics.Reaction;
    extends BioChem.Interfaces.Reactions.Basics.TwoSubstrates;
    extends BioChem.Interfaces.Reactions.Basics.FourProducts;
    BioChem.Units.StoichiometricCoefficient nS1 = 1 "Stoichiometric coefficient for substrate 1" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
    BioChem.Units.StoichiometricCoefficient nS2 = 1 "Stoichiometric coefficient for substrate 2" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
    BioChem.Units.StoichiometricCoefficient nP1 = 1 "Stoichiometric coefficient for product 1" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
    BioChem.Units.StoichiometricCoefficient nP2 = 1 "Stoichiometric coefficient for product 2" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
    BioChem.Units.StoichiometricCoefficient nP3 = 1 "Stoichiometric coefficient for product 3" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
    BioChem.Units.StoichiometricCoefficient nP4 = 1 "Stoichiometric coefficient for product 4" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
  equation
    s1.r = nS1 * rr;
    s2.r = nS2 * rr;
    p1.r = -nP1 * rr;
    p2.r = -nP2 * rr;
    p3.r = -nP3 * rr;
    p4.r = -nP4 * rr;
    annotation(Documentation(info = "<html><!--WSMINSERTIONTAGSTART bqiTag -->
    <body>
    Bi-quad irreversible reaction
    </body>
    <!--WSMINSERTIONTAGEND bqiTag --></html>", revisions = ""), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
  end Bqi;

  partial model Bqr "Bi-quad reversible reaction"
    extends BioChem.Interfaces.Reactions.Basics.Reaction;
    extends BioChem.Interfaces.Reactions.Basics.TwoSubstratesReversible;
    extends BioChem.Interfaces.Reactions.Basics.FourProducts;
    BioChem.Units.StoichiometricCoefficient nS1 = 1 "Stoichiometric coefficient for substrate 1" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
    BioChem.Units.StoichiometricCoefficient nS2 = 1 "Stoichiometric coefficient for substrate 2" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
    BioChem.Units.StoichiometricCoefficient nP1 = 1 "Stoichiometric coefficient for product 1" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
    BioChem.Units.StoichiometricCoefficient nP2 = 1 "Stoichiometric coefficient for product 2" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
    BioChem.Units.StoichiometricCoefficient nP3 = 1 "Stoichiometric coefficient for product 3" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
    BioChem.Units.StoichiometricCoefficient nP4 = 1 "Stoichiometric coefficient for product 4" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
  equation
    s1.r = nS1 * rr;
    s2.r = nS2 * rr;
    p1.r = -nP1 * rr;
    p2.r = -nP2 * rr;
    p3.r = -nP3 * rr;
    p4.r = -nP4 * rr;
    annotation(Documentation(info = "<html><!--WSMINSERTIONTAGSTART bqrTag -->
    <body>
    Bi-quad reversible reaction
    </body>
    <!--WSMINSERTIONTAGEND bqrTag --></html>", revisions = ""), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
  end Bqr;

  partial model Bmi "Bi-multi irreversible reaction"
    extends BioChem.Interfaces.Reactions.Basics.Reaction;
    extends BioChem.Interfaces.Reactions.Basics.TwoSubstrates;
    extends BioChem.Interfaces.Reactions.Basics.MultipleProducts;
    BioChem.Units.StoichiometricCoefficient nS1 = 1 "Stoichiometric coefficient for substrate 1" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
    BioChem.Units.StoichiometricCoefficient nS2 = 1 "Stoichiometric coefficient for substrate 2" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
    BioChem.Units.StoichiometricCoefficient nP[dimP] = fill(1, dimP) "Stoichiometric coefficients for the products" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
  equation
    s1.r = nS1 * rr;
    s2.r = nS2 * rr;
    p.r = -nP * rr;
    annotation(Documentation(info = "<html><!--WSMINSERTIONTAGSTART bmiTag -->
    <body>
    Bi-multi irreversible reaction
    </body>
    <!--WSMINSERTIONTAGEND bmiTag --></html>", revisions = ""), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
  end Bmi;

  partial model Bmr "Bi-multi reversible reaction"
    extends BioChem.Interfaces.Reactions.Basics.Reaction;
    extends BioChem.Interfaces.Reactions.Basics.TwoSubstratesReversible;
    extends BioChem.Interfaces.Reactions.Basics.MultipleProducts;
    BioChem.Units.StoichiometricCoefficient nS1 = 1 "Stoichiometric coefficient for substrate 1" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
    BioChem.Units.StoichiometricCoefficient nS2 = 1 "Stoichiometric coefficient for substrate 2" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
    BioChem.Units.StoichiometricCoefficient nP[dimP] = fill(1, dimP) "Stoichiometric coefficients for the products" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
  equation
    s1.r = nS1 * rr;
    s2.r = nS2 * rr;
    p.r = -nP * rr;
    annotation(Documentation(info = "<html><!--WSMINSERTIONTAGSTART bmrTag -->
    <body>
    Bi-multi reversible reaction
    </body>
    <!--WSMINSERTIONTAGEND bmrTag --></html>", revisions = ""), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
  end Bmr;

  partial model Tui "Tri-uni irreversible reaction"
    extends BioChem.Interfaces.Reactions.Basics.Reaction;
    extends BioChem.Interfaces.Reactions.Basics.ThreeSubstrates;
    extends BioChem.Interfaces.Reactions.Basics.OneProduct;
    BioChem.Units.StoichiometricCoefficient nS1 = 1 "Stoichiometric coefficient for substrate 1" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
    BioChem.Units.StoichiometricCoefficient nS2 = 1 "Stoichiometric coefficient for substrate 2" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
    BioChem.Units.StoichiometricCoefficient nS3 = 1 "Stoichiometric coefficient for substrate 3" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
    BioChem.Units.StoichiometricCoefficient nP1 = 1 "Stoichiometric coefficient for the product" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
  equation
    s1.r = nS1 * rr;
    s2.r = nS2 * rr;
    s3.r = nS3 * rr;
    p1.r = -nP1 * rr;
    annotation(Documentation(info = "<html><!--WSMINSERTIONTAGSTART tuiTag -->
    <body>
    Tri-uni irreversible reaction
    </body>
    <!--WSMINSERTIONTAGEND tuiTag --></html>", revisions = ""), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
  end Tui;

  partial model Tur "Tri-uni reversible reaction"
    extends BioChem.Interfaces.Reactions.Basics.Reaction;
    extends BioChem.Interfaces.Reactions.Basics.ThreeSubstratesReversible;
    extends BioChem.Interfaces.Reactions.Basics.OneProduct;
    BioChem.Units.StoichiometricCoefficient nS1 = 1 "Stoichiometric coefficient for substrate 1" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
    BioChem.Units.StoichiometricCoefficient nS2 = 1 "Stoichiometric coefficient for substrate 2" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
    BioChem.Units.StoichiometricCoefficient nS3 = 1 "Stoichiometric coefficient for substrate 3" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
    BioChem.Units.StoichiometricCoefficient nP1 = 1 "Stoichiometric coefficient for the product" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
  equation
    s1.r = nS1 * rr;
    s2.r = nS2 * rr;
    s3.r = nS3 * rr;
    p1.r = -nP1 * rr;
    annotation(Documentation(info = "<html><!--WSMINSERTIONTAGSTART turTag -->
    <body>
    Tri-uni reversible reaction
    </body>
    <!--WSMINSERTIONTAGEND turTag --></html>", revisions = ""), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
  end Tur;

  partial model Tbi "Tri-bi irreversible reaction"
    extends BioChem.Interfaces.Reactions.Basics.Reaction;
    extends BioChem.Interfaces.Reactions.Basics.ThreeSubstrates;
    extends BioChem.Interfaces.Reactions.Basics.TwoProducts;
    BioChem.Units.StoichiometricCoefficient nS1 = 1 "Stoichiometric coefficient for substrate 1" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
    BioChem.Units.StoichiometricCoefficient nS2 = 1 "Stoichiometric coefficient for substrate 2" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
    BioChem.Units.StoichiometricCoefficient nS3 = 1 "Stoichiometric coefficient for substrate 3" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
    BioChem.Units.StoichiometricCoefficient nP1 = 1 "Stoichiometric coefficient for product 1" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
    BioChem.Units.StoichiometricCoefficient nP2 = 1 "Stoichiometric coefficient for product 2" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
  equation
    s1.r = nS1 * rr;
    s2.r = nS2 * rr;
    s3.r = nS3 * rr;
    p1.r = -nP1 * rr;
    p2.r = -nP2 * rr;
    annotation(Documentation(info = "<html><!--WSMINSERTIONTAGSTART tbiTag -->
    <body>
    Tri-bi irreversible reaction
    </body>
    <!--WSMINSERTIONTAGEND tbiTag --></html>", revisions = ""), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
  end Tbi;

  partial model Tbr "Tri-bi reversible reaction"
    extends BioChem.Interfaces.Reactions.Basics.Reaction;
    extends BioChem.Interfaces.Reactions.Basics.ThreeSubstratesReversible;
    extends BioChem.Interfaces.Reactions.Basics.TwoProducts;
    BioChem.Units.StoichiometricCoefficient nS1 = 1 "Stoichiometric coefficient for substrate 1" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
    BioChem.Units.StoichiometricCoefficient nS2 = 1 "Stoichiometric coefficient for substrate 2" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
    BioChem.Units.StoichiometricCoefficient nS3 = 1 "Stoichiometric coefficient for substrate 3" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
    BioChem.Units.StoichiometricCoefficient nP1 = 1 "Stoichiometric coefficient for product 1" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
    BioChem.Units.StoichiometricCoefficient nP2 = 1 "Stoichiometric coefficient for product 2" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
  equation
    s1.r = nS1 * rr;
    s2.r = nS2 * rr;
    s3.r = nS3 * rr;
    p1.r = -nP1 * rr;
    p2.r = -nP2 * rr;
    annotation(Documentation(info = "<html><!--WSMINSERTIONTAGSTART tbrTag -->
    <body>
    Tri-bi reversible reaction
    </body>
    <!--WSMINSERTIONTAGEND tbrTag --></html>", revisions = ""), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
  end Tbr;

  partial model Tti "Tri-tri irreversible reaction"
    extends BioChem.Interfaces.Reactions.Basics.Reaction;
    extends BioChem.Interfaces.Reactions.Basics.ThreeSubstrates;
    extends BioChem.Interfaces.Reactions.Basics.ThreeProducts;
    BioChem.Units.StoichiometricCoefficient nS1 = 1 "Stoichiometric coefficient for substrate 1" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
    BioChem.Units.StoichiometricCoefficient nS2 = 1 "Stoichiometric coefficient for substrate 2" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
    BioChem.Units.StoichiometricCoefficient nS3 = 1 "Stoichiometric coefficient for substrate 3" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
    BioChem.Units.StoichiometricCoefficient nP1 = 1 "Stoichiometric coefficient for product 1" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
    BioChem.Units.StoichiometricCoefficient nP2 = 1 "Stoichiometric coefficient for product 2" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
    BioChem.Units.StoichiometricCoefficient nP3 = 1 "Stoichiometric coefficient for product 3" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
  equation
    s1.r = nS1 * rr;
    s2.r = nS2 * rr;
    s3.r = nS3 * rr;
    p1.r = -nP1 * rr;
    p2.r = -nP2 * rr;
    p3.r = -nP3 * rr;
    annotation(Documentation(info = "<html><!--WSMINSERTIONTAGSTART ttiTag -->
    <body>
    Tri-tri irreversible reaction
    </body>
    <!--WSMINSERTIONTAGEND ttiTag --></html>", revisions = ""), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
  end Tti;

  partial model Ttr "Tri-tri reversible reaction"
    extends BioChem.Interfaces.Reactions.Basics.Reaction;
    extends BioChem.Interfaces.Reactions.Basics.ThreeSubstratesReversible;
    extends BioChem.Interfaces.Reactions.Basics.ThreeProducts;
    BioChem.Units.StoichiometricCoefficient nS1 = 1 "Stoichiometric coefficient for substrate 1" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
    BioChem.Units.StoichiometricCoefficient nS2 = 1 "Stoichiometric coefficient for substrate 2" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
    BioChem.Units.StoichiometricCoefficient nS3 = 1 "Stoichiometric coefficient for substrate 3" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
    BioChem.Units.StoichiometricCoefficient nP1 = 1 "Stoichiometric coefficient for product 1" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
    BioChem.Units.StoichiometricCoefficient nP2 = 1 "Stoichiometric coefficient for product 2" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
    BioChem.Units.StoichiometricCoefficient nP3 = 1 "Stoichiometric coefficient for product 3" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
  equation
    s1.r = nS1 * rr;
    s2.r = nS2 * rr;
    s3.r = nS3 * rr;
    p1.r = -nP1 * rr;
    p2.r = -nP2 * rr;
    p3.r = -nP3 * rr;
    annotation(Documentation(info = "<html><!--WSMINSERTIONTAGSTART ttrTag -->
    <body>
    Tri-tri reversible reaction
    </body>
    <!--WSMINSERTIONTAGEND ttrTag --></html>", revisions = ""), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
  end Ttr;

  partial model Tqi "Tri-quad irreversible reaction"
    extends BioChem.Interfaces.Reactions.Basics.Reaction;
    extends BioChem.Interfaces.Reactions.Basics.ThreeSubstrates;
    extends BioChem.Interfaces.Reactions.Basics.FourProducts;
    BioChem.Units.StoichiometricCoefficient nS1 = 1 "Stoichiometric coefficient for substrate 1" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
    BioChem.Units.StoichiometricCoefficient nS2 = 1 "Stoichiometric coefficient for substrate 2" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
    BioChem.Units.StoichiometricCoefficient nS3 = 1 "Stoichiometric coefficient for substrate 3" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
    BioChem.Units.StoichiometricCoefficient nP1 = 1 "Stoichiometric coefficient for product 1" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
    BioChem.Units.StoichiometricCoefficient nP2 = 1 "Stoichiometric coefficient for product 2" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
    BioChem.Units.StoichiometricCoefficient nP3 = 1 "Stoichiometric coefficient for product 3" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
    BioChem.Units.StoichiometricCoefficient nP4 = 1 "Stoichiometric coefficient for product 4" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
  equation
    s1.r = nS1 * rr;
    s2.r = nS2 * rr;
    s3.r = nS3 * rr;
    p1.r = -nP1 * rr;
    p2.r = -nP2 * rr;
    p3.r = -nP3 * rr;
    p4.r = -nP4 * rr;
    annotation(Documentation(info = "<html><!--WSMINSERTIONTAGSTART tqiTag -->
    <body>
    Tri-quad irreversible reaction
    </body>
    <!--WSMINSERTIONTAGEND tqiTag --></html>", revisions = ""), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
  end Tqi;

  partial model Tqr "Tri-quad reversible reaction"
    extends BioChem.Interfaces.Reactions.Basics.Reaction;
    extends BioChem.Interfaces.Reactions.Basics.ThreeSubstratesReversible;
    extends BioChem.Interfaces.Reactions.Basics.FourProducts;
    BioChem.Units.StoichiometricCoefficient nS1 = 1 "Stoichiometric coefficient for substrate 1" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
    BioChem.Units.StoichiometricCoefficient nS2 = 1 "Stoichiometric coefficient for substrate 2" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
    BioChem.Units.StoichiometricCoefficient nS3 = 1 "Stoichiometric coefficient for substrate 3" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
    BioChem.Units.StoichiometricCoefficient nP1 = 1 "Stoichiometric coefficient for product 1" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
    BioChem.Units.StoichiometricCoefficient nP2 = 1 "Stoichiometric coefficient for product 2" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
    BioChem.Units.StoichiometricCoefficient nP3 = 1 "Stoichiometric coefficient for product 3" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
    BioChem.Units.StoichiometricCoefficient nP4 = 1 "Stoichiometric coefficient for product 4" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
  equation
    s1.r = nS1 * rr;
    s2.r = nS2 * rr;
    s3.r = nS3 * rr;
    p1.r = -nP1 * rr;
    p2.r = -nP2 * rr;
    p3.r = -nP3 * rr;
    p4.r = -nP4 * rr;
    annotation(Documentation(info = "<html><!--WSMINSERTIONTAGSTART tqrTag -->
    <body>
    Tri-quad reversible reaction
    </body>
    <!--WSMINSERTIONTAGEND tqrTag --></html>", revisions = ""), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
  end Tqr;

  partial model Tmi "Tri-multi irreversible reaction"
    extends BioChem.Interfaces.Reactions.Basics.Reaction;
    extends BioChem.Interfaces.Reactions.Basics.ThreeSubstrates;
    extends BioChem.Interfaces.Reactions.Basics.MultipleProducts;
    BioChem.Units.StoichiometricCoefficient nS1 = 1 "Stoichiometric coefficient for substrate 1" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
    BioChem.Units.StoichiometricCoefficient nS2 = 1 "Stoichiometric coefficient for substrate 2" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
    BioChem.Units.StoichiometricCoefficient nS3 = 1 "Stoichiometric coefficient for substrate 3" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
    BioChem.Units.StoichiometricCoefficient nP[dimP] = fill(1, dimP) "Stoichiometric coefficients for the products" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
  equation
    s1.r = nS1 * rr;
    s2.r = nS2 * rr;
    s3.r = nS3 * rr;
    p.r = -nP * rr;
    annotation(Documentation(info = "<html><!--WSMINSERTIONTAGSTART tmiTag -->
    <body>
    Tri-multi irreversible reaction
    </body>
    <!--WSMINSERTIONTAGEND tmiTag --></html>", revisions = ""), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
  end Tmi;

  partial model Tmr "Tri-multi reversible reaction"
    extends BioChem.Interfaces.Reactions.Basics.Reaction;
    extends BioChem.Interfaces.Reactions.Basics.ThreeSubstratesReversible;
    extends BioChem.Interfaces.Reactions.Basics.MultipleProducts;
    BioChem.Units.StoichiometricCoefficient nS1 = 1 "Stoichiometric coefficient for substrate 1" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
    BioChem.Units.StoichiometricCoefficient nS2 = 1 "Stoichiometric coefficient for substrate 2" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
    BioChem.Units.StoichiometricCoefficient nS3 = 1 "Stoichiometric coefficient for substrate 3" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
    BioChem.Units.StoichiometricCoefficient nP[dimP] = fill(1, dimP) "Stoichiometric coefficients for the products" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
  equation
    s1.r = nS1 * rr;
    s2.r = nS2 * rr;
    s3.r = nS3 * rr;
    p.r = -nP * rr;
    annotation(Documentation(info = "<html><!--WSMINSERTIONTAGSTART tmrTag -->
    <body>
    Tri-multi reversible reaction
    </body>
    <!--WSMINSERTIONTAGEND tmrTag --></html>", revisions = ""), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
  end Tmr;

  model Qui "Quad-uni irreversible reaction"
    extends BioChem.Interfaces.Reactions.Basics.Reaction;
    extends BioChem.Interfaces.Reactions.Basics.FourSubstrates;
    extends BioChem.Interfaces.Reactions.Basics.OneProduct;
    BioChem.Units.StoichiometricCoefficient nS1 = 1 "Stoichiometric coefficient for substrate 1" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
    BioChem.Units.StoichiometricCoefficient nS2 = 1 "Stoichiometric coefficient for substrate 2" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
    BioChem.Units.StoichiometricCoefficient nS3 = 1 "Stoichiometric coefficient for substrate 3" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
    BioChem.Units.StoichiometricCoefficient nS4 = 1 "Stoichiometric coefficient for substrate 4" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
    BioChem.Units.StoichiometricCoefficient nP1 = 1 "Stoichiometric coefficient for product 1" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
  equation
    s1.r = nS1 * rr;
    s2.r = nS2 * rr;
    s3.r = nS3 * rr;
    s4.r = nS4 * rr;
    p1.r = -nP1 * rr;
    annotation(Documentation(info = "<html><!--WSMINSERTIONTAGSTART quiTag -->
    <body>
    Quad-uni irreversible reaction
    </body>
    <!--WSMINSERTIONTAGEND quiTag --></html>", revisions = ""), Diagram(coordinateSystem(extent = {{-148.5, 105}, {148.5, -105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
  end Qui;

  partial model Qur "Quad-uni reversible reaction"
    extends BioChem.Interfaces.Reactions.Basics.Reaction;
    extends BioChem.Interfaces.Reactions.Basics.FourSubstratesReversible;
    extends BioChem.Interfaces.Reactions.Basics.OneProduct;
    BioChem.Units.StoichiometricCoefficient nS1 = 1 "Stoichiometric coefficient for substrate 1" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
    BioChem.Units.StoichiometricCoefficient nS2 = 1 "Stoichiometric coefficient for substrate 2" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
    BioChem.Units.StoichiometricCoefficient nS3 = 1 "Stoichiometric coefficient for substrate 3" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
    BioChem.Units.StoichiometricCoefficient nS4 = 1 "Stoichiometric coefficient for substrate 4" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
    BioChem.Units.StoichiometricCoefficient nP1 = 1 "Stoichiometric coefficient for product 1" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
  equation
    s1.r = nS1 * rr;
    s2.r = nS2 * rr;
    s3.r = nS3 * rr;
    s4.r = nS4 * rr;
    p1.r = -nP1 * rr;
    annotation(Documentation(info = "<html><!--WSMINSERTIONTAGSTART qurTag -->
    <body>
    Quad-uni reversible reaction
    </body>
    <!--WSMINSERTIONTAGEND qurTag --></html>", revisions = ""), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
  end Qur;

  partial model Qbi "Quad-bi irreversible reaction"
    extends BioChem.Interfaces.Reactions.Basics.Reaction;
    extends BioChem.Interfaces.Reactions.Basics.FourSubstrates;
    extends BioChem.Interfaces.Reactions.Basics.TwoProducts;
    BioChem.Units.StoichiometricCoefficient nS1 = 1 "Stoichiometric coefficient for substrate 1" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
    BioChem.Units.StoichiometricCoefficient nS2 = 1 "Stoichiometric coefficient for substrate 2" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
    BioChem.Units.StoichiometricCoefficient nS3 = 1 "Stoichiometric coefficient for substrate 3" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
    BioChem.Units.StoichiometricCoefficient nS4 = 1 "Stoichiometric coefficient for substrate 4" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
    BioChem.Units.StoichiometricCoefficient nP1 = 1 "Stoichiometric coefficient for product 1" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
    BioChem.Units.StoichiometricCoefficient nP2 = 1 "Stoichiometric coefficient for product 2" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
  equation
    s1.r = nS1 * rr;
    s2.r = nS2 * rr;
    s3.r = nS3 * rr;
    s4.r = nS4 * rr;
    p1.r = -nP1 * rr;
    p2.r = -nP2 * rr;
    annotation(Documentation(info = "<html><!--WSMINSERTIONTAGSTART qbiTag -->
    <body>
    Quad-bi irreversible reaction
    </body>
    <!--WSMINSERTIONTAGEND qbiTag --></html>", revisions = ""), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
  end Qbi;

  partial model Qbr "Quad-bi reversible reaction"
    extends BioChem.Interfaces.Reactions.Basics.Reaction;
    extends BioChem.Interfaces.Reactions.Basics.FourSubstratesReversible;
    extends BioChem.Interfaces.Reactions.Basics.TwoProducts;
    BioChem.Units.StoichiometricCoefficient nS1 = 1 "Stoichiometric coefficient for substrate 1" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
    BioChem.Units.StoichiometricCoefficient nS2 = 1 "Stoichiometric coefficient for substrate 2" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
    BioChem.Units.StoichiometricCoefficient nS3 = 1 "Stoichiometric coefficient for substrate 3" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
    BioChem.Units.StoichiometricCoefficient nS4 = 1 "Stoichiometric coefficient for substrate 4" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
    BioChem.Units.StoichiometricCoefficient nP1 = 1 "Stoichiometric coefficient for product 1" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
    BioChem.Units.StoichiometricCoefficient nP2 = 1 "Stoichiometric coefficient for product 2" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
  equation
    s1.r = nS1 * rr;
    s2.r = nS2 * rr;
    s3.r = nS3 * rr;
    s4.r = nS4 * rr;
    p1.r = -nP1 * rr;
    p2.r = -nP2 * rr;
    annotation(Documentation(info = "<html><!--WSMINSERTIONTAGSTART qbrTag -->
    <body>
    Quad-bi reversible reaction
    </body>
    <!--WSMINSERTIONTAGEND qbrTag --></html>", revisions = ""), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
  end Qbr;

  partial model Qti "Quad-tri irreversible reaction"
    extends BioChem.Interfaces.Reactions.Basics.Reaction;
    extends BioChem.Interfaces.Reactions.Basics.FourSubstrates;
    extends BioChem.Interfaces.Reactions.Basics.ThreeProducts;
    BioChem.Units.StoichiometricCoefficient nS1 = 1 "Stoichiometric coefficient for substrate 1" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
    BioChem.Units.StoichiometricCoefficient nS2 = 1 "Stoichiometric coefficient for substrate 2" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
    BioChem.Units.StoichiometricCoefficient nS3 = 1 "Stoichiometric coefficient for substrate 3" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
    BioChem.Units.StoichiometricCoefficient nS4 = 1 "Stoichiometric coefficient for substrate 4" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
    BioChem.Units.StoichiometricCoefficient nP1 = 1 "Stoichiometric coefficient for product 1" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
    BioChem.Units.StoichiometricCoefficient nP2 = 1 "Stoichiometric coefficient for product 2" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
    BioChem.Units.StoichiometricCoefficient nP3 = 1 "Stoichiometric coefficient for product 3" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
  equation
    s1.r = nS1 * rr;
    s2.r = nS2 * rr;
    s3.r = nS3 * rr;
    s4.r = nS4 * rr;
    p1.r = -nP1 * rr;
    p2.r = -nP2 * rr;
    p3.r = -nP3 * rr;
    annotation(Documentation(info = "<html><!--WSMINSERTIONTAGSTART qtiTag -->
    <body>
    Quad-tri irreversible reaction
    </body>
    <!--WSMINSERTIONTAGEND qtiTag --></html>", revisions = ""), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
  end Qti;

  partial model Qtr "Quad-tri reversible reaction"
    extends BioChem.Interfaces.Reactions.Basics.Reaction;
    extends BioChem.Interfaces.Reactions.Basics.FourSubstratesReversible;
    extends BioChem.Interfaces.Reactions.Basics.ThreeProducts;
    BioChem.Units.StoichiometricCoefficient nS1 = 1 "Stoichiometric coefficient for substrate 1" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
    BioChem.Units.StoichiometricCoefficient nS2 = 1 "Stoichiometric coefficient for substrate 2" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
    BioChem.Units.StoichiometricCoefficient nS3 = 1 "Stoichiometric coefficient for substrate 3" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
    BioChem.Units.StoichiometricCoefficient nS4 = 1 "Stoichiometric coefficient for substrate 4" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
    BioChem.Units.StoichiometricCoefficient nP1 = 1 "Stoichiometric coefficient for product 1" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
    BioChem.Units.StoichiometricCoefficient nP2 = 1 "Stoichiometric coefficient for product 2" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
    BioChem.Units.StoichiometricCoefficient nP3 = 1 "Stoichiometric coefficient for product 3" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
  equation
    s1.r = nS1 * rr;
    s2.r = nS2 * rr;
    s3.r = nS3 * rr;
    s4.r = nS4 * rr;
    p1.r = -nP1 * rr;
    p2.r = -nP2 * rr;
    p3.r = -nP3 * rr;
    annotation(Documentation(info = "<html><!--WSMINSERTIONTAGSTART qtrTag -->
    <body>
    Quad-tri reversible reaction
    </body>
    <!--WSMINSERTIONTAGEND qtrTag --></html>", revisions = ""), Diagram(coordinateSystem(extent = {{-148.5, 105}, {148.5, -105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
  end Qtr;

  partial model Qqi "Quad-quad irreversible reaction"
    extends BioChem.Interfaces.Reactions.Basics.Reaction;
    extends BioChem.Interfaces.Reactions.Basics.FourSubstrates;
    extends BioChem.Interfaces.Reactions.Basics.FourProducts;
    BioChem.Units.StoichiometricCoefficient nS1 = 1 "Stoichiometric coefficient for substrate 1" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
    BioChem.Units.StoichiometricCoefficient nS2 = 1 "Stoichiometric coefficient for substrate 2" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
    BioChem.Units.StoichiometricCoefficient nS3 = 1 "Stoichiometric coefficient for substrate 3" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
    BioChem.Units.StoichiometricCoefficient nS4 = 1 "Stoichiometric coefficient for substrate 4" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
    BioChem.Units.StoichiometricCoefficient nP1 = 1 "Stoichiometric coefficient for product 1" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
    BioChem.Units.StoichiometricCoefficient nP2 = 1 "Stoichiometric coefficient for product 2" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
    BioChem.Units.StoichiometricCoefficient nP3 = 1 "Stoichiometric coefficient for product 3" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
    BioChem.Units.StoichiometricCoefficient nP4 = 1 "Stoichiometric coefficient for product 4" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
  equation
    s1.r = nS1 * rr;
    s2.r = nS2 * rr;
    s3.r = nS3 * rr;
    s4.r = nS4 * rr;
    p1.r = -nP1 * rr;
    p2.r = -nP2 * rr;
    p3.r = -nP3 * rr;
    p4.r = -nP4 * rr;
    annotation(Documentation(info = "<html><!--WSMINSERTIONTAGSTART qqiTag -->
    <body>
    Quad-quad irreversible reaction
    </body>
    <!--WSMINSERTIONTAGEND qqiTag --></html>", revisions = ""), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
  end Qqi;

  partial model Qqr "Quad-quad reversible reaction"
    extends BioChem.Interfaces.Reactions.Basics.Reaction;
    extends BioChem.Interfaces.Reactions.Basics.FourSubstratesReversible;
    extends BioChem.Interfaces.Reactions.Basics.FourProducts;
    BioChem.Units.StoichiometricCoefficient nS1 = 1 "Stoichiometric coefficient for substrate 1" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
    BioChem.Units.StoichiometricCoefficient nS2 = 1 "Stoichiometric coefficient for substrate 2" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
    BioChem.Units.StoichiometricCoefficient nS3 = 1 "Stoichiometric coefficient for substrate 3" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
    BioChem.Units.StoichiometricCoefficient nS4 = 1 "Stoichiometric coefficient for substrate 4" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
    BioChem.Units.StoichiometricCoefficient nP1 = 1 "Stoichiometric coefficient for product 1" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
    BioChem.Units.StoichiometricCoefficient nP2 = 1 "Stoichiometric coefficient for product 2" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
    BioChem.Units.StoichiometricCoefficient nP3 = 1 "Stoichiometric coefficient for product 3" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
    BioChem.Units.StoichiometricCoefficient nP4 = 1 "Stoichiometric coefficient for product 4" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
  equation
    s1.r = nS1 * rr;
    s2.r = nS2 * rr;
    s3.r = nS3 * rr;
    s4.r = nS4 * rr;
    p1.r = -nP1 * rr;
    p2.r = -nP2 * rr;
    p3.r = -nP3 * rr;
    p4.r = -nP4 * rr;
    annotation(Documentation(info = "<html><!--WSMINSERTIONTAGSTART qqrTag -->
    <body>
    Quad-quad reversible reaction
    </body>
    <!--WSMINSERTIONTAGEND qqrTag --></html>", revisions = ""), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
  end Qqr;

  partial model Qmi "Quad-multi irreversible reaction"
    extends BioChem.Interfaces.Reactions.Basics.Reaction;
    extends BioChem.Interfaces.Reactions.Basics.FourSubstrates;
    extends BioChem.Interfaces.Reactions.Basics.MultipleProducts;
    BioChem.Units.StoichiometricCoefficient nS1 = 1 "Stoichiometric coefficient for substrate 1" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
    BioChem.Units.StoichiometricCoefficient nS2 = 1 "Stoichiometric coefficient for substrate 2" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
    BioChem.Units.StoichiometricCoefficient nS3 = 1 "Stoichiometric coefficient for substrate 3" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
    BioChem.Units.StoichiometricCoefficient nS4 = 1 "Stoichiometric coefficient for substrate 4" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
    BioChem.Units.StoichiometricCoefficient nP[dimP] = fill(1, dimP) "Stoichiometric coefficients for the products" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
  equation
    s1.r = nS1 * rr;
    s2.r = nS2 * rr;
    s3.r = nS3 * rr;
    s4.r = nS4 * rr;
    p.r = -nP * rr;
    annotation(Documentation(info = "<html><!--WSMINSERTIONTAGSTART qmiTag -->
    <body>
    Quad-multi irreversible reaction
    </body>
    <!--WSMINSERTIONTAGEND qmiTag --></html>", revisions = ""), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
  end Qmi;

  partial model Qmr "Quad-multi reversible reaction"
    extends BioChem.Interfaces.Reactions.Basics.Reaction;
    extends BioChem.Interfaces.Reactions.Basics.FourSubstratesReversible;
    extends BioChem.Interfaces.Reactions.Basics.MultipleProducts;
    BioChem.Units.StoichiometricCoefficient nS1 = 1 "Stoichiometric coefficient for substrate 1" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
    BioChem.Units.StoichiometricCoefficient nS2 = 1 "Stoichiometric coefficient for substrate 2" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
    BioChem.Units.StoichiometricCoefficient nS3 = 1 "Stoichiometric coefficient for substrate 3" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
    BioChem.Units.StoichiometricCoefficient nS4 = 1 "Stoichiometric coefficient for substrate 4" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
    BioChem.Units.StoichiometricCoefficient nP[dimP] = fill(1, dimP) "Stoichiometric coefficients for the products" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
  equation
    s1.r = nS1 * rr;
    s2.r = nS2 * rr;
    s3.r = nS3 * rr;
    s4.r = nS4 * rr;
    p.r = -nP * rr;
    annotation(Documentation(info = "<html><!--WSMINSERTIONTAGSTART qmrTag -->
    <body>
    Quad-multi reversible reaction
    </body>
    <!--WSMINSERTIONTAGEND qmrTag --></html>", revisions = ""), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
  end Qmr;

  partial model Mui "Multi-uni irreversible reaction"
    extends BioChem.Interfaces.Reactions.Basics.Reaction;
    extends BioChem.Interfaces.Reactions.Basics.MultipleSubstrates;
    extends BioChem.Interfaces.Reactions.Basics.OneProduct;
    BioChem.Units.StoichiometricCoefficient nS[dimS] = fill(1, dimS) "Stoichiometric coefficients for the substrates";
    BioChem.Units.StoichiometricCoefficient nP1 = 1 "Stoichiometric coefficient for product 1" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
  equation
    s.r = nS * rr;
    p1.r = -nP1 * rr;
    annotation(Documentation(info = "<html><!--WSMINSERTIONTAGSTART muiTag -->
    <body>
    Multi-uni irreversible reaction
    </body>
    <!--WSMINSERTIONTAGEND muiTag --></html>", revisions = ""), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
  end Mui;

  partial model Mur "Multi-uni reversible reaction"
    extends BioChem.Interfaces.Reactions.Basics.Reaction;
    extends BioChem.Interfaces.Reactions.Basics.MultipleSubstratesReversible;
    extends BioChem.Interfaces.Reactions.Basics.OneProduct;
    BioChem.Units.StoichiometricCoefficient nS[dimS] = fill(1, dimS) "Stoichiometric coefficients for the substrates";
    BioChem.Units.StoichiometricCoefficient nP1 = 1 "Stoichiometric coefficient for product 1" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
  equation
    s.r = nS * rr;
    p1.r = -nP1 * rr;
    annotation(Documentation(info = "<html><!--WSMINSERTIONTAGSTART murTag -->
    <body>
    Multi-uni reversible reaction
    </body>
    <!--WSMINSERTIONTAGEND murTag --></html>", revisions = ""), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
  end Mur;

  partial model Mbi "Multi-bi irreversible reaction"
    extends BioChem.Interfaces.Reactions.Basics.Reaction;
    extends BioChem.Interfaces.Reactions.Basics.MultipleSubstrates;
    extends BioChem.Interfaces.Reactions.Basics.TwoProducts;
    BioChem.Units.StoichiometricCoefficient nS[dimS] = fill(1, dimS) "Stoichiometric coefficients for the substrates";
    BioChem.Units.StoichiometricCoefficient nP1 = 1 "Stoichiometric coefficient for product 1" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
    BioChem.Units.StoichiometricCoefficient nP2 = 1 "Stoichiometric coefficient for product 2" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
  equation
    s.r = nS * rr;
    p1.r = -nP1 * rr;
    p2.r = -nP2 * rr;
    annotation(Documentation(info = "<html><!--WSMINSERTIONTAGSTART mbiTag -->
    <body>
    Multi-bi irreversible reaction
    </body>
    <!--WSMINSERTIONTAGEND mbiTag --></html>", revisions = ""), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
  end Mbi;

  partial model Mbr "Multi-bi reversible reaction"
    extends BioChem.Interfaces.Reactions.Basics.Reaction;
    extends BioChem.Interfaces.Reactions.Basics.MultipleSubstratesReversible;
    extends BioChem.Interfaces.Reactions.Basics.TwoProducts;
    BioChem.Units.StoichiometricCoefficient nS[dimS] = fill(1, dimS) "Stoichiometric coefficients for the substrates";
    BioChem.Units.StoichiometricCoefficient nP1 = 1 "Stoichiometric coefficient for product 1" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
    BioChem.Units.StoichiometricCoefficient nP2 = 1 "Stoichiometric coefficient for product 2" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
  equation
    s.r = nS * rr;
    p1.r = -nP1 * rr;
    p2.r = -nP2 * rr;
    annotation(Documentation(info = "<html><!--WSMINSERTIONTAGSTART mbrTag -->
    <body>
    Multi-bi reversible reaction
    </body>
    <!--WSMINSERTIONTAGEND mbrTag --></html>", revisions = ""), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
  end Mbr;

  partial model Mti "Multi-tri irreversible reaction"
    extends BioChem.Interfaces.Reactions.Basics.Reaction;
    extends BioChem.Interfaces.Reactions.Basics.MultipleSubstrates;
    extends BioChem.Interfaces.Reactions.Basics.ThreeProducts;
    BioChem.Units.StoichiometricCoefficient nS[dimS] = fill(1, dimS) "Stoichiometric coefficients for the substrates";
    BioChem.Units.StoichiometricCoefficient nP1 = 1 "Stoichiometric coefficient for product 1" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
    BioChem.Units.StoichiometricCoefficient nP2 = 1 "Stoichiometric coefficient for product 2" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
    BioChem.Units.StoichiometricCoefficient nP3 = 1 "Stoichiometric coefficient for product 3" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
  equation
    s.r = nS * rr;
    p1.r = -nP1 * rr;
    p2.r = -nP2 * rr;
    p3.r = -nP3 * rr;
    annotation(Documentation(info = "<html><!--WSMINSERTIONTAGSTART mtiTag -->
    <body>
    Multi-tri irreversible reaction
    </body>
    <!--WSMINSERTIONTAGEND mtiTag --></html>", revisions = ""), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
  end Mti;

  partial model Mtr "Multi-tri reversible reaction"
    extends BioChem.Interfaces.Reactions.Basics.Reaction;
    extends BioChem.Interfaces.Reactions.Basics.MultipleSubstrates;
    extends BioChem.Interfaces.Reactions.Basics.ThreeProducts;
    BioChem.Units.StoichiometricCoefficient nS[dimS] = fill(1, dimS) "Stoichiometric coefficients for the substrates";
    BioChem.Units.StoichiometricCoefficient nP1 = 1 "Stoichiometric coefficient for product 1" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
    BioChem.Units.StoichiometricCoefficient nP2 = 1 "Stoichiometric coefficient for product 2" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
    BioChem.Units.StoichiometricCoefficient nP3 = 1 "Stoichiometric coefficient for product 3" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
  equation
    s.r = nS * rr;
    p1.r = -nP1 * rr;
    p2.r = -nP2 * rr;
    p3.r = -nP3 * rr;
    annotation(Documentation(info = "<html><!--WSMINSERTIONTAGSTART mtrTag -->
    <body>
    Multi-tri reversible reaction
    </body>
    <!--WSMINSERTIONTAGEND mtrTag --></html>", revisions = ""), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
  end Mtr;

  partial model Mqi "Multi-quad irreversible reaction"
    extends BioChem.Interfaces.Reactions.Basics.Reaction;
    extends BioChem.Interfaces.Reactions.Basics.MultipleSubstrates;
    extends BioChem.Interfaces.Reactions.Basics.FourProducts;
    BioChem.Units.StoichiometricCoefficient nS[dimS] = fill(1, dimS) "Stoichiometric coefficients for the substrates";
    BioChem.Units.StoichiometricCoefficient nP1 = 1 "Stoichiometric coefficient for product 1" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
    BioChem.Units.StoichiometricCoefficient nP2 = 1 "Stoichiometric coefficient for product 2" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
    BioChem.Units.StoichiometricCoefficient nP3 = 1 "Stoichiometric coefficient for product 3" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
    BioChem.Units.StoichiometricCoefficient nP4 = 1 "Stoichiometric coefficient for product 4" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
  equation
    s.r = nS * rr;
    p1.r = -nP1 * rr;
    p2.r = -nP2 * rr;
    p3.r = -nP3 * rr;
    p4.r = -nP4 * rr;
    annotation(Documentation(info = "<html><!--WSMINSERTIONTAGSTART mqiTag -->
    <body>
    Multi-quad irreversible reaction
    </body>
    <!--WSMINSERTIONTAGEND mqiTag --></html>", revisions = ""), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
  end Mqi;

  partial model Mqr "Multi-quad reversible reaction"
    extends BioChem.Interfaces.Reactions.Basics.Reaction;
    extends BioChem.Interfaces.Reactions.Basics.MultipleSubstratesReversible;
    extends BioChem.Interfaces.Reactions.Basics.FourProducts;
    BioChem.Units.StoichiometricCoefficient nS[dimS] = fill(1, dimS) "Stoichiometric coefficients for the substrates";
    BioChem.Units.StoichiometricCoefficient nP1 = 1 "Stoichiometric coefficient for product 1" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
    BioChem.Units.StoichiometricCoefficient nP2 = 1 "Stoichiometric coefficient for product 2" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
    BioChem.Units.StoichiometricCoefficient nP3 = 1 "Stoichiometric coefficient for product 3" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
    BioChem.Units.StoichiometricCoefficient nP4 = 1 "Stoichiometric coefficient for product 4" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
  equation
    s.r = nS * rr;
    p1.r = -nP1 * rr;
    p2.r = -nP2 * rr;
    p3.r = -nP3 * rr;
    p4.r = -nP4 * rr;
    annotation(Documentation(info = "<html><!--WSMINSERTIONTAGSTART mqrTag -->
    <body>
    Multi-quad reversible reaction
    </body>
    <!--WSMINSERTIONTAGEND mqrTag --></html>", revisions = ""), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
  end Mqr;

  partial model Mmi "Multi-multi irreversible reaction"
    extends BioChem.Interfaces.Reactions.Basics.Reaction;
    extends BioChem.Interfaces.Reactions.Basics.MultipleSubstrates;
    extends BioChem.Interfaces.Reactions.Basics.MultipleProducts;
    BioChem.Units.StoichiometricCoefficient nS[dimS] = fill(1, dimS) "Stoichiometric coefficients for the substrates";
    BioChem.Units.StoichiometricCoefficient nP[dimP] = fill(1, dimP) "Stoichiometric coefficients for the products" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
  equation
    s.r = nS * rr;
    p.r = -nP * rr;
    annotation(Documentation(info = "<html><!--WSMINSERTIONTAGSTART mmiTag -->
    <body>
    Multi-multi irreversible reaction
    </body>
    <!--WSMINSERTIONTAGEND mmiTag --></html>", revisions = ""), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
  end Mmi;

  partial model Mmr "Multi-multi reversible reaction"
    extends BioChem.Interfaces.Reactions.Basics.Reaction;
    extends BioChem.Interfaces.Reactions.Basics.MultipleSubstratesReversible;
    extends BioChem.Interfaces.Reactions.Basics.MultipleProducts;
    BioChem.Units.StoichiometricCoefficient nS[dimS] = fill(1, dimS) "Stoichiometric coefficients for the substrates";
    BioChem.Units.StoichiometricCoefficient nP[dimP] = fill(1, dimP) "Stoichiometric coefficients for the products" annotation(Dialog(tab = "Stoichiometry", group = "Stoichiometric coefficients"));
  equation
    s.r = nS * rr;
    p.r = -nP * rr;
    annotation(Documentation(info = "<html><!--WSMINSERTIONTAGSTART mmrTag -->
    <body>
    Multi-multi reversible reaction
    </body>
    <!--WSMINSERTIONTAGEND mmrTag --></html>", revisions = ""), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
  end Mmr;
  annotation(Documentation(info = "<html><!--WSMINSERTIONTAGSTART reactionsTag -->
    <body>
    This package contains partial reaction models that can be used as templates when composing new reactions. In fact all reactions found in the <a href=\"Modelica://BioChem.Reactions\">Reactions</a> package are based on these partial reaction models.<br><br>
 All reactions need at least one substrate and at least one product. This package contains base classes for any combination of substrates and products for reversible as well as irreversible reactions, as illustrated in Fig. 1. The first letter in the reaction name indicates the number of substrates, and the second the number of products. Finally, the third letter indicates if the reaction is reversible (r) or irreversible (i). All this information is also illustrated by the icon.<br><br>
 Note that all partial reaction models include definitions of stoichiometric coefficients (nS1, nS2, ... and nP1, nP2, ...). These coefficients correspond to the stoichiometry attribute in SBML and should not appear in the reaction rate formula in the reaction.<img src=\"modelica://BioChem/Resources/DocumentationFiles/Reactions.png\" alt=\"\"/><br><i>Fig. 1 Some of the reactions</i>
    </body>
    <!--WSMINSERTIONTAGEND reactionsTag --></html>", revisions = ""), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
end Reactions;