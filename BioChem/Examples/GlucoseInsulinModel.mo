within BioChem.Examples;

package GlucoseInsulinModel
  extends BioChem.Icons.Example;

  model GlucoseInsulinModel
    extends BioChem.Compartments.MainCompartment(V.start = 1.0);
    BioChem.Examples.GlucoseInsulinModel.Utilities.Parts.GastroIntestinalTract GastroIntestinalTract annotation(
      Placement(transformation(origin = {-50, 80}, extent = {{-10, -10}, {10, 10}})));
    BioChem.Examples.GlucoseInsulinModel.Utilities.Parts.TissueGlucose TissueGlucose annotation(
      Placement(transformation(origin = {0, 60}, extent = {{-10, -10}, {10, 10}})));
    BioChem.Examples.GlucoseInsulinModel.Utilities.Parts.GlucoseRenalExcretion GlucoseRenalExcretion annotation(
      Placement(transformation(origin = {125.793, -4.74893}, extent = {{-10, -10}, {10, 10}})));
    BioChem.Examples.GlucoseInsulinModel.Utilities.Parts.PlasmaGlucose PlasmaGlucose annotation(
      Placement(transformation(extent = {{-10, -10}, {10, 10}})));
    BioChem.Examples.GlucoseInsulinModel.Utilities.Parts.PlasmaInsulin PlasmaInsulin annotation(
      Placement(transformation(origin = {-80, 0}, extent = {{-10, -10}, {10, 10}})));
    BioChem.Examples.GlucoseInsulinModel.Utilities.Parts.UtilizationMuscleTissue UtilizationMuscleTissue annotation(
      Placement(transformation(origin = {70, 40}, extent = {{-10, -10}, {10, 10}})));
    BioChem.Examples.GlucoseInsulinModel.Utilities.Reactions.ReversibleFlowReaction k_1_k_2(k_1 = 0.065, k_2 = 0.079) annotation(
      Placement(transformation(origin = {0, 30}, extent = {{-6.52644, -6.52644}, {6.52644, 6.52644}}, rotation = -270)));
    BioChem.Examples.GlucoseInsulinModel.Utilities.Parts.LiverInsulin LiverInsulin annotation(
      Placement(transformation(origin = {-80, -73.9076}, extent = {{-10, -10}, {10, 10}})));
    BioChem.Examples.GlucoseInsulinModel.Utilities.Parts.EndogenousGlucoseProduction EndogenousGlucoseProduction annotation(
      Placement(transformation(origin = {-40, -45.0779}, extent = {{-10, -10}, {10, 10}})));
    BioChem.Examples.GlucoseInsulinModel.Utilities.Reactions.ReversibleFlowReaction m_1_m_2(k_2 = 0.484, k_1 = 0.19) annotation(
      Placement(transformation(origin = {-80, -36.3608}, extent = {{-6.36084, 6.36084}, {6.36084, -6.36084}}, rotation = 90)));
    BioChem.Examples.GlucoseInsulinModel.Utilities.Parts.BetaCell BetaCell annotation(
      Placement(transformation(origin = {23.4019, -74.2468}, extent = {{-10, -10}, {10, 10}})));
    BioChem.Examples.GlucoseInsulinModel.Utilities.Parts.AdiposeTissue.AdiposeTissue adiposeTissue1 annotation(
      Placement(transformation(origin = {70, 80}, extent = {{-10, -10}, {10, 10}})));
  equation
    connect(UtilizationMuscleTissue.I_connector, PlasmaInsulin.I_signal_connector) annotation(
      Line(origin = {-35.44, 35.5}, points = {{94.44, 12.857}, {55.44, 12.86}, {48.33, 64.5}, {-52.076, 70.3333}, {-34.56, 6.90118}, {-26.6353, -15.5}, {-24.56, -41.27}, {-33.56, -41.27}, {-33.56, -41.182}}, color = {255, 0, 255}, pattern = LinePattern.Dash, arrow = {Arrow.Open, Arrow.None}, smooth = Smooth.Bezier));
    connect(adiposeTissue1.I_connector, PlasmaInsulin.I_signal_connector) annotation(
      Line(origin = {-42.08, 44.79}, points = {{101.078, 43.5978}, {58.03, 43.6}, {12.08, 61.3825}, {-41.3655, 52.9023}, {-34.2421, 19.3206}, {-23.7266, -12.2259}, {-17.92, -36.99}, {-17.92, -47.1645}, {-19.65, -50.22}, {-26.92, -50.22}, {-26.9223, -50.4722}}, color = {255, 0, 255}, pattern = LinePattern.Dash, smooth = Smooth.Bezier));
    connect(TissueGlucose.U_idf_connector, adiposeTissue1.G_t_connector) annotation(
      Line(origin = {38.75, 76.58}, points = {{-27.75, -10.58}, {-8.75, 3.42}, {16.25, 3.58}, {20.25, 3.58}}, color = {0, 0, 128}, thickness = 1, arrow = {Arrow.None, Arrow.Filled}, smooth = Smooth.Bezier));
    connect(BetaCell.G_connector, PlasmaGlucose.G_signal_connector) annotation(
      Line(origin = {-0.71, -20.49}, points = {{24.11, -42.76}, {22.75, -9.7}, {-17.27, -9.7}, {-17.27, 20.49}, {-10.29, 20.68}}, color = {0, 0, 255}, pattern = LinePattern.Dash, arrow = {Arrow.Open, Arrow.None}, smooth = Smooth.Bezier));
    connect(BetaCell.G_p_connector, PlasmaGlucose.G_p_connector) annotation(
      Line(origin = {3.93, -21.62}, points = {{26.99, -41.63}, {26.31, -4.5}, {-18.85, -4.5}, {-18.85, 14.62}, {-14.93, 14.62}}, color = {0, 0, 255}, pattern = LinePattern.Dash, arrow = {Arrow.Open, Arrow.None}, smooth = Smooth.Bezier));
    connect(GlucoseRenalExcretion.G_p_connector, PlasmaGlucose.G_p_connector) annotation(
      Line(origin = {37.56, -14.05}, points = {{77.23, 0.94}, {56.28, -11.35}, {-17.56, -11.35}, {-52.49, -11.35}, {-52.49, 7.6}, {-48.56, 7.6}, {-48.56, 7.05}}, color = {0, 0, 255}, pattern = LinePattern.Dash, arrow = {Arrow.Open, Arrow.None}, smooth = Smooth.Bezier));
    connect(PlasmaGlucose.G_p_connector, EndogenousGlucoseProduction.G_p_connector) annotation(
      Line(origin = {-30.33, -16.03}, points = {{19.33, 9.03}, {-9.67, 9.03}, {-9.67, -18.05}}, color = {0, 0, 255}, pattern = LinePattern.Dash, arrow = {Arrow.None, Arrow.Open}, smooth = Smooth.Bezier));
    connect(EndogenousGlucoseProduction.I_po_connector, BetaCell.I_po_connector) annotation(
      Line(origin = {1.27, -51.13}, points = {{-30.27, 6.06}, {15.13, 6.06}, {15.13, -12.11}}, color = {255, 0, 255}, pattern = LinePattern.Dash, arrow = {Arrow.Open, Arrow.None}, smooth = Smooth.Bezier));
    connect(EndogenousGlucoseProduction.I_connector, PlasmaInsulin.I_signal_connector) annotation(
      Line(origin = {-54.49, -15.15}, points = {{7.26, -18.93}, {7.26, 9.47}, {-14.51, 9.47}}, color = {255, 0, 255}, pattern = LinePattern.Dash, arrow = {Arrow.Open, Arrow.None}, smooth = Smooth.Bezier));
    connect(TissueGlucose.U_idm_connector, UtilizationMuscleTissue.G_t_connector) annotation(
      Line(origin = {45, 46.91}, points = {{-34, 6.74021}, {-12.0967, -6.91}, {10, -6.74}, {14, -6.748}}, color = {0, 0, 128}, thickness = 1, arrow = {Arrow.None, Arrow.Filled}, smooth = Smooth.Bezier));
    connect(LiverInsulin.S_connector, BetaCell.S_connector) annotation(
      Line(origin = {-9.95, -74.17}, points = {{-59.05, 0.07}, {18.35, 0.07}, {18.35, -0.07}, {22.35, -0.07}}, color = {128, 0, 128}, thickness = 1, arrow = {Arrow.Filled, Arrow.None}, smooth = Smooth.Bezier));
    connect(PlasmaGlucose.EGP_connector, EndogenousGlucoseProduction.EGP_connector) annotation(
      Line(origin = {-19.75, -20.03}, points = {{19.58, 9.03}, {19.58, 0.03}, {-10.25, 0.03}, {-13.15, -4.55}, {-12.87, -14.05}}, color = {0, 0, 128}, thickness = 1, arrow = {Arrow.Filled, Arrow.None}, smooth = Smooth.Bezier));
    connect(PlasmaGlucose.E_connector, GlucoseRenalExcretion.productConnector1) annotation(
      Line(origin = {86.84, -4.8}, points = {{-75.84, -0.05}, {23.95, -0.05}, {23.95, 0.05}, {27.95, 0.05}}, color = {0, 0, 128}, thickness = 1, arrow = {Arrow.None, Arrow.Filled}, smooth = Smooth.Bezier));
    connect(PlasmaGlucose.Ra_connector, GastroIntestinalTract.Ra_connector) annotation(
      Line(origin = {-28.9, 31.7}, points = {{21.1, -20.7}, {21.1, -8.3}, {-21.1, -8.3}, {-21.1, 37.3}}, color = {0, 0, 128}, thickness = 1, arrow = {Arrow.Filled, Arrow.None}, smooth = Smooth.Bezier));
    connect(m_1_m_2.p1, PlasmaInsulin.I_connector) annotation(
      Line(origin = {-80, -20.1024}, points = {{0, -9.10245}, {0, 9.10245}}, color = {128, 0, 128}, thickness = 1, smooth = Smooth.Bezier));
    connect(m_1_m_2.s1, LiverInsulin.I_connector) annotation(
      Line(origin = {-80, -53.2122}, points = {{0, 9.6954}, {0, -9.6954}}, color = {128, 0, 128}, thickness = 1, smooth = Smooth.Bezier));
    connect(k_1_k_2.p1, TissueGlucose.G_connector) annotation(
      Line(origin = {0, 43.17}, points = {{0, -5.83}, {0, 5.83}}, color = {0, 0, 128}, thickness = 1, smooth = Smooth.Bezier));
    connect(k_1_k_2.s1, PlasmaGlucose.G_connector) annotation(
      Line(origin = {0, 16.83}, points = {{0, 5.83}, {0, -5.83}}, color = {0, 0, 128}, thickness = 1, smooth = Smooth.Bezier));
    annotation(
      Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, grid = {10, 10}), graphics = {Rectangle(origin = {-39.6875, -1.36711}, fillColor = {255, 0, 0}, pattern = LinePattern.None, fillPattern = FillPattern.Solid, extent = {{-55.2911, -15.5929}, {55.2911, 15.5929}}), Rectangle(origin = {-57.5522, -75}, fillColor = {128, 0, 0}, pattern = LinePattern.None, fillPattern = FillPattern.Solid, extent = {{-40.931, -15}, {40.931, 15}}), Rectangle(origin = {-40.7051, -45.0134}, fillColor = {128, 0, 0}, pattern = LinePattern.None, fillPattern = FillPattern.Solid, extent = {{-24.0839, -16.859}, {24.0839, 16.859}}), Rectangle(origin = {17.3745, 60}, fillColor = {255, 170, 127}, pattern = LinePattern.None, fillPattern = FillPattern.Solid, extent = {{-35, -18.3307}, {35, 18.3307}}), Rectangle(origin = {70, 58.6765}, fillColor = {255, 170, 127}, pattern = LinePattern.None, fillPattern = FillPattern.Solid, extent = {{-20, -38.6765}, {20, 38.6765}}), Line(origin = {100, -55.25}, points = {{-8.26, 0}, {8.26, 0}}, color = {0, 0, 128}, thickness = 1), Text(origin = {126.135, -55.59}, fillPattern = FillPattern.Solid, extent = {{-15.6548, -4.41}, {15.6548, 4.41}}, textString = "Glucose flow", fontName = "Arial"), Line(origin = {100, -66.03}, points = {{-8.26, 0}, {8.26, 0}}, color = {0, 0, 255}, pattern = LinePattern.Dash), Line(origin = {100, -85.28}, points = {{-8.26, 0}, {8.26, 0}}, color = {255, 0, 255}, pattern = LinePattern.Dash), Line(origin = {100, -75.36}, points = {{-8.26, 0}, {8.26, 0}}, color = {128, 0, 128}, thickness = 1), Text(origin = {128.34, -65.59}, fillPattern = FillPattern.Solid, extent = {{-17.8596, -4.41}, {17.8596, 4.41}}, textString = "Glucose signal", fontName = "Arial"), Text(origin = {124.953, -75.59}, fillPattern = FillPattern.Solid, extent = {{-13.3507, -4.41}, {13.3507, 4.41}}, textString = "Insulin flow", fontName = "Arial"), Text(origin = {126.987, -85.59}, fillPattern = FillPattern.Solid, extent = {{-15.3871, -4.41}, {15.3871, 4.41}}, textString = "Insulin signal", fontName = "Arial")}),
      experiment(StartTime = 0.0, StopTime = 420, NumberOfIntervals = -1, Algorithm = "dassl", Tolerance = 1e-06),
      Documentation(info = "<html>
<h1>A Whole Body Model of the Glucose Insulin System</h1>

This model is presented in <i>Hierarchical modeling of diabetes</i> by
Elin Nyman, ISRN:LiU-IKE-EX-09/14. Link&ouml;ping University 2009.<br><br>

This whole-body model of the glucose insulin system shows the flows and concentrations of insulin and glucose during and after a meal. Mechanistic details on a cellular level are included in the module describing the fat tissue. The model can be used to study diabetes and other related diseases.
<h2>The Fat Tissue Module</h2>
The module describing the fat cells includes the main parts of the insulin signaling network of fat cells. This process starts with insulin molecules that bind to the insulin receptor (IR) in the cell membrane. This activates (phosphorylates) IR. Active IR phosphorylates the insulin receptor substrate protein 1 (IRS1) inside the cell on selective tyrosine sites. These phosphorylations are used as docking sites by downstream effector molecules. The next important step in this path is the activation of protein kinase B (PKB). PKB regulates the translocation of vesicles including glucose transporter 4 (GLUT4) from the cytosol to the plasma membrane. The vesicles merge into the membrane where GLUT4 starts to transport glucose from the interstitial fluid to the inside of the cell. This signaling cascade is shown in Figure 1. GLUT1 or glucose transporter 1 is the other glucose transporter that exists in fat cells. GLUT1 continuously transports small amounts of glucose into the cells for the basal needs.


<a name=\"fig1\"></a>
<img src=\"modelica://BioChem/Resources/Images/Insulin.png\" alt=\"Fig1: A simplified picture of the insulin signaling network and the glucose uptake in fat cells\"><br>
<i>Figure 1: A simplified picture of the insulin signaling network and the glucose uptake in fat cells.</i><br>


<h2>Simulations</h2>
The simulation results of the whole body level are shown in the  <a href=\"#fig2\">Figure 2</a>,  <a href=\"#fig3\">Figure 3</a> and  <a href=\"#fig4\">Figure 4</a>. The concentrations of insulin and glucose are shown in <a href=\"#fig2\">Figure 2</a> and the three flows: insulin from beta cells to liver, glucose from liver to plasma, and glucose from intestine to plasma, in <a href=\"#fig3\">Figure 3</a>.

<a href=\"#fig4\">Figure 4</a> shows a simulation of the glucose uptake by fat cells.<br>





<a name=\"fig2\"></a>
<img src=\"modelica://BioChem/Resources/Images/Glucose2.png\" alt=\"Fig2: Simulation results\">
<a name=\"fig3\"></a>
<img src=\"modelica://BioChem/Resources/Images/Glucose3.png\" alt=\"Fig3: Simulation results\">
<a name=\"fig4\"></a>
<img src=\"modelica://BioChem/Resources/Images/Glucose4.png\" alt=\"Fig4: Simulation results\">


</html>", revisions = ""));
  end GlucoseInsulinModel;

  package Utilities
    extends BioChem.Icons.Library;

    package Parts
      extends BioChem.Icons.Library;

      model GastroIntestinalTract
        extends BioChem.Compartments.Compartment(V.start = 1.0);
        BioChem.Units.Concentration ra_signal;
        BioChem.Units.Concentration q_sto;
        BioChem.Units.Concentration d;
        parameter Real f = 0.9;
        parameter Real BW = 78;
        BioChem.Substances.Substance Q_sto2(c.start = 0) annotation(
          Placement(transformation(origin = {0, 50}, extent = {{-10, -10}, {10, 10}})));
        BioChem.Substances.Substance Q_gut(c.start = 0) annotation(
          Placement(transformation(origin = {0, -20}, extent = {{-10, -10}, {10, 10}})));
        BioChem.Examples.GlucoseInsulinModel.Utilities.Reactions.FlowReaction k_abs(k = 0.057) annotation(
          Placement(transformation(origin = {38.33, -20}, extent = {{-10, -10}, {10, 10}})));
        BioChem.Examples.GlucoseInsulinModel.Utilities.Reactions.k_empt k_empt1 annotation(
          Placement(transformation(origin = {0, 17.8419}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
        BioChem.Substances.Substance Q_sto1(c.start = 0) annotation(
          Placement(transformation(origin = {-60, 50}, extent = {{-10, -10}, {10, 10}})));
        BioChem.Examples.GlucoseInsulinModel.Utilities.Reactions.dirac dirac annotation(
          Placement(transformation(origin = {-100, 50}, extent = {{-10, -10}, {10, 10}})));
        BioChem.Substances.SignalSubstance Q_sto(c(start = 0) = q_sto) annotation(
          Placement(transformation(origin = {100, 30}, extent = {{-10, -10}, {10, 10}})));
        BioChem.Substances.SignalSubstance D(c(start = 0) = d) annotation(
          Placement(transformation(origin = {100, 5.76656}, extent = {{-10, -10}, {10, 10}})));
        BioChem.Interfaces.Nodes.SubstrateConnector Ra_connector annotation(
          Placement(transformation(origin = {0, -80}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {0, -110}, extent = {{-10, -10}, {10, 10}})));
        BioChem.Substances.BoundarySubstance GlucoseIntake(c.start = 78000) annotation(
          Placement(transformation(origin = {-130, 50}, extent = {{-10, -10}, {10, 10}})));
        BioChem.Examples.GlucoseInsulinModel.Utilities.Reactions.FlowReaction k_gri(k = 0.0558) annotation(
          Placement(transformation(origin = {-28.43, 50}, extent = {{-10, -10}, {10, 10}})));
        BioChem.Substances.BoundarySubstance End annotation(
          Placement(transformation(origin = {80, -20}, extent = {{-10, -10}, {10, 10}})));
        BioChem.Substances.SignalSubstance Ra_calc(c = ra_signal) annotation(
          Placement(transformation(origin = {0, -50}, extent = {{-10, -10}, {10, 10}})));
      equation
        connect(Ra_calc.n1, Ra_connector) annotation(
          Line(origin = {0, -65}, points = {{0, 15}, {0, -15}}));
        connect(k_abs.p1, End.n1) annotation(
          Line(origin = {64.79, -20}, points = {{-15.21, 0}, {15.21, 0}}));
        connect(Q_sto1.n1, k_gri.s1) annotation(
          Line(origin = {-49.84, 50}, points = {{-10.16, 0}, {10.16, 0}}));
        connect(k_gri.p1, Q_sto2.n1) annotation(
          Line(origin = {-8.59, 50}, points = {{-8.59, 0}, {8.59, 0}}));
        connect(GlucoseIntake.n1, dirac.s1) annotation(
          Line(origin = {-120.625, 50}, points = {{-9.375, 0}, {9.375, 0}}));
        connect(D.n1, k_empt1.m2) annotation(
          Line(origin = {34.2512, 9.30423}, points = {{65.7488, -3.53767}, {-20.2487, -3.53767}, {-20.2487, 3.53767}, {-25.2512, 3.53767}}));
        connect(Q_sto.n1, k_empt1.m1) annotation(
          Line(origin = {34.2512, 26.4209}, points = {{65.7488, 3.57905}, {-20.2487, 3.57905}, {-20.2487, -3.57905}, {-25.2512, -3.57905}}));
        connect(dirac.p1, Q_sto1.n1) annotation(
          Line(origin = {-74.375, 50}, points = {{-14.375, 0}, {14.375, 0}}));
        connect(k_empt1.p1, Q_gut.n1) annotation(
          Line(origin = {1.11022e-17, -6.70406}, points = {{1.11022e-17, 13.2959}, {-1.11022e-17, -13.2959}}));
        connect(Q_sto2.n1, k_empt1.s1) annotation(
          Line(origin = {-1.11022e-17, 39.5459}, points = {{1.11022e-17, 10.4541}, {-1.11022e-17, -10.4541}}));
        connect(Q_gut.n1, k_abs.s1) annotation(
          Line(origin = {13.54, -20}, points = {{-13.54, 0}, {13.54, 0}}));
        ra_signal = f * k_abs.k * Q_gut.c / BW;
        q_sto = Q_sto1.c + Q_sto2.c;
        d = GlucoseIntake.c;
        annotation(
          Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, grid = {10, 10})),
          Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, grid = {10, 10}), graphics = {Text(origin = {-7.23323, 45}, fillPattern = FillPattern.Solid, extent = {{-45, -45}, {45, 45}}, textString = "GI", fontName = "Arial"), Text(origin = {-2.44435, -51.2385}, fillPattern = FillPattern.Solid, extent = {{-93.0638, -41.2385}, {93.0638, 41.2385}}, textString = "tract", fontName = "Arial")}));
      end GastroIntestinalTract;

      model BetaCell
        extends BioChem.Compartments.Compartment(V.start = 1.0);
        BioChem.Units.Concentration i_po(start = 3.6);
        BioChem.Units.Concentration g;
        BioChem.Units.Concentration g_p;
        BioChem.Units.Concentration y;
        BioChem.Units.Concentration y_signal(start = 0);
        BioChem.Units.Concentration s_signal;
        parameter Real alpha = 0.05;
        parameter Real beta = 0.11;
        parameter Real S_b = 1.8;
        parameter Real G_b = 95;
        parameter Real K = 2.3;
        parameter Real gamma = 0.5;
        BioChem.Interfaces.Nodes.ModifierConnector G_connector annotation(
          Placement(transformation(origin = {0, 80}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {0, 110}, extent = {{-10, -10}, {10, 10}})));
        BioChem.Interfaces.Nodes.SubstrateConnector S_connector annotation(
          Placement(transformation(origin = {-120, -8.88178e-16}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {-110, 0}, extent = {{-10, -10}, {10, 10}})));
        BioChem.Interfaces.Nodes.ModifierConnector I_po_connector annotation(
          Placement(transformation(origin = {-90, 80}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {-70, 110}, extent = {{-10, -10}, {10, 10}})));
        BioChem.Interfaces.Nodes.ModifierConnector G_p_connector annotation(
          Placement(transformation(origin = {100, 80}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {75.1683, 110}, extent = {{-10, -10}, {10, 10}})));
        BioChem.Substances.SignalSubstance S_calc(c = s_signal) annotation(
          Placement(transformation(origin = {-90, 0}, extent = {{-10, -10}, {10, 10}})));
        BioChem.Examples.GlucoseInsulinModel.Utilities.Reactions.signaltosubstance signaltosubstance1 annotation(
          Placement(transformation(origin = {2.22045e-16, 60}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
        BioChem.Examples.GlucoseInsulinModel.Utilities.Reactions.signaltosubstance signaltosubstance2 annotation(
          Placement(transformation(origin = {100, 60}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
        BioChem.Examples.GlucoseInsulinModel.Utilities.Reactions.signaltosubstance signaltosubstance3 annotation(
          Placement(transformation(origin = {60, -30}, extent = {{-10, -10}, {10, 10}})));
        BioChem.Substances.SignalSubstance I_po_signal(c = i_po) annotation(
          Placement(transformation(origin = {-90, 40}, extent = {{-10, -10}, {10, 10}})));
        BioChem.Substances.Substance G(c = g) annotation(
          Placement(transformation(origin = {0, 40}, extent = {{-10, -10}, {10, 10}})));
        BioChem.Substances.Substance G_p(c = g_p) annotation(
          Placement(transformation(origin = {100, 40}, extent = {{-10, -10}, {10, 10}})));
        BioChem.Substances.Substance Y(c = y) annotation(
          Placement(transformation(origin = {80, -30}, extent = {{-10, -10}, {10, 10}})));
        BioChem.Substances.SignalSubstance Y_signal(c = y_signal) annotation(
          Placement(transformation(origin = {40, -30}, extent = {{-10, -10}, {10, 10}})));
      equation
        connect(Y_signal.n1, signaltosubstance3.s1) annotation(
          Line(origin = {42.9167, -30}, points = {{-2.91667, 3.55271e-15}, {-2.91667, -3.55271e-15}, {5.83333, -3.55271e-15}}));
        connect(signaltosubstance3.p1, Y.n1) annotation(
          Line(origin = {74.1667, -30}, points = {{-2.91667, 0}, {-2.91667, 0}, {5.83333, 0}}));
        connect(signaltosubstance2.p1, G_p.n1) annotation(
          Line(origin = {100, 42.9167}, points = {{0, 5.83333}, {0, -2.91667}, {0, -2.91667}}));
        connect(signaltosubstance1.p1, G.n1) annotation(
          Line(origin = {1.62833e-16, 42.9167}, points = {{8.14164e-17, 5.83333}, {8.14164e-17, -2.91667}, {-1.62833e-16, -2.91667}}));
        connect(I_po_connector, I_po_signal.n1) annotation(
          Line(origin = {-90, 60}, points = {{0, 20}, {0, -20}}));
        connect(G_p_connector, signaltosubstance2.s1) annotation(
          Line(origin = {100, 75.625}, points = {{0, 4.375}, {0, -4.375}}));
        connect(G_connector, signaltosubstance1.s1) annotation(
          Line(origin = {9.99201e-17, 75.625}, points = {{-9.99201e-17, 4.375}, {9.99201e-17, -4.375}}));
        connect(S_calc.n1, S_connector) annotation(
          Line(origin = {-105, -4.44089e-16}, points = {{15, 4.44089e-16}, {-15, -4.44089e-16}}));
        der(i_po) = if der(g_p) > 0 and g > G_b then (-gamma * i_po) + y + K * der(g) + S_b else (-gamma * i_po) + y + S_b;
        der(y_signal) = if beta * (g - G_b) < (-S_b) then (-alpha * y_signal) - alpha * S_b else -alpha * (y_signal - beta * (g - G_b));
        s_signal = gamma * i_po;
        annotation(
          Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, grid = {10, 10})),
          Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, grid = {10, 10}), graphics = {Text(origin = {-2.41533, 43.4019}, fillPattern = FillPattern.Solid, extent = {{-75.99, -51.46}, {75.99, 51.46}}, textString = "Beta", fontName = "Arial"), Text(origin = {1.61, -49.34}, fillPattern = FillPattern.Solid, extent = {{-73.89, -40.66}, {73.89, 40.66}}, textString = "cell", fontName = "Arial")}));
      end BetaCell;

      model PlasmaInsulin
        extends BioChem.Compartments.Compartment(V.start = 1.0);
        BioChem.Units.Concentration i_p_signal;
        BioChem.Units.Concentration i_p;
        BioChem.Units.Concentration i_signal;
        parameter BioChem.Units.Volume V_I = 0.05;
        BioChem.Substances.Substance I_p(c(start = 1.25) = i_p) annotation(
          Placement(transformation(extent = {{-10, -10}, {10, 10}})));
        BioChem.Examples.GlucoseInsulinModel.Utilities.Reactions.FlowReaction m_4(k = 0.194) annotation(
          Placement(transformation(origin = {-60, 0}, extent = {{10, -10}, {-10, 10}})));
        BioChem.Interfaces.Nodes.ModifierConnector I_p_connector annotation(
          Placement(transformation(origin = {120, 0}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {110, 4.44089e-16}, extent = {{-10, -10}, {10, 10}})));
        BioChem.Interfaces.Nodes.ProductConnector I_connector annotation(
          Placement(transformation(origin = {0, -80}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {0, -110}, extent = {{-10, -10}, {10, 10}})));
        BioChem.Interfaces.Nodes.ModifierConnector I_signal_connector annotation(
          Placement(transformation(origin = {120, -30}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {110, -56.82}, extent = {{-10, -10}, {10, 10}})));
        BioChem.Substances.SignalSubstance I_p_signal(c = i_p_signal) annotation(
          Placement(transformation(origin = {60, 7.77156e-16}, extent = {{-10, -10}, {10, 10}})));
        BioChem.Substances.SignalSubstance I_signal(c = i_signal) annotation(
          Placement(transformation(origin = {60, -30}, extent = {{-10, -10}, {10, 10}})));
        BioChem.Substances.BoundarySubstance Deg annotation(
          Placement(transformation(origin = {-120, 0}, extent = {{-10, -10}, {10, 10}})));
      equation
        connect(Deg.n1, m_4.p1) annotation(
          Line(origin = {-95.625, 1.11022e-17}, points = {{-24.375, -1.11022e-17}, {24.375, 1.11022e-17}}));
        connect(I_signal.n1, I_signal_connector) annotation(
          Line(origin = {90, -30}, points = {{-30, 0}, {30, 0}}));
        connect(I_p_signal.n1, I_p_connector) annotation(
          Line(origin = {90, 3.88578e-16}, points = {{-30, 3.88578e-16}, {30, -3.88578e-16}}));
        connect(I_p.n1, I_connector) annotation(
          Line(origin = {0, -40}, points = {{0, 40}, {0, -40}}));
        connect(m_4.s1, I_p.n1) annotation(
          Line(origin = {-24.375, -1.11022e-17}, points = {{-24.375, -1.11022e-17}, {24.375, 1.11022e-17}}));
        i_p_signal = i_p;
        i_signal = i_p / V_I;
        annotation(
          Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, grid = {10, 10})),
          Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, grid = {10, 10}), graphics = {Text(origin = {-7.10543e-15, 46.05}, fillPattern = FillPattern.Solid, extent = {{-93.8311, -36.05}, {93.8311, 36.05}}, textString = "Plasma", fontName = "Arial"), Text(origin = {-3.55271e-15, -36.936}, fillPattern = FillPattern.Solid, extent = {{-86.0653, -45}, {86.0653, 45}}, textString = "insulin", fontName = "Arial")}));
      end PlasmaInsulin;

      model PlasmaGlucose
        extends BioChem.Compartments.Compartment(V.start = 1.0);
        parameter Real V_G = 1.88;
        BioChem.Units.Concentration g_p_signal;
        BioChem.Units.Concentration g_p;
        BioChem.Units.Concentration g_signal;
        BioChem.Interfaces.Nodes.ProductConnector EGP_connector annotation(
          Placement(transformation(origin = {4.44089e-16, -80}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {-1.73862, -110}, extent = {{-10, -10}, {10, 10}})));
        BioChem.Interfaces.Nodes.ModifierConnector G_p_connector annotation(
          Placement(transformation(origin = {-110, -70}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {-110, -70}, extent = {{-10, -10}, {10, 10}})));
        BioChem.Interfaces.Nodes.SubstrateConnector E_connector annotation(
          Placement(transformation(origin = {120, -30}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {110, -48.4304}, extent = {{-10, -10}, {10, 10}})));
        BioChem.Interfaces.Nodes.ProductConnector Ra_connector annotation(
          Placement(transformation(origin = {-80, 80}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {-77.9724, 110}, extent = {{-10, -10}, {10, 10}})));
        BioChem.Interfaces.Nodes.SubstrateConnector G_connector annotation(
          Placement(transformation(origin = {0, 80}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {0, 110}, extent = {{-10, -10}, {10, 10}})));
        BioChem.Substances.SignalSubstance G_p_signal(c = g_p_signal) annotation(
          Placement(transformation(origin = {-110, -23.3921}, extent = {{-10, -10}, {10, 10}})));
        BioChem.Substances.SignalSubstance G_signal(c = g_signal) annotation(
          Placement(transformation(origin = {-120, 40}, extent = {{-10, -10}, {10, 10}})));
        BioChem.Interfaces.Nodes.ModifierConnector G_signal_connector annotation(
          Placement(transformation(origin = {-120, 0}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {-110, 1.94}, extent = {{-10, -10}, {10, 10}})));
        BioChem.Substances.Substance G_p(c.start = 178, c = g_p) annotation(
          Placement(transformation(extent = {{-10, -10}, {10, 10}})));
        BioChem.Examples.GlucoseInsulinModel.Utilities.Reactions.FlowReaction Ra_reaction(k = 1) annotation(
          Placement(transformation(origin = {-80, 50}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
        BioChem.Examples.GlucoseInsulinModel.Utilities.Reactions.FlowReaction EGP_reaction(k = 1) annotation(
          Placement(transformation(origin = {0, -48}, extent = {{-10, 10}, {10, -10}}, rotation = 90)));
        BioChem.Examples.GlucoseInsulinModel.Utilities.Reactions.U_ii_reaction u_ii_reaction1 annotation(
          Placement(transformation(origin = {90, 30}, extent = {{-10, -10}, {10, 10}})));
        BioChem.Substances.BoundarySubstance U_ii annotation(
          Placement(transformation(origin = {120, 30}, extent = {{-10, -10}, {10, 10}})));
      equation
        connect(U_ii.n1, u_ii_reaction1.p1) annotation(
          Line(origin = {110.625, 30}, points = {{9.375, 0}, {-9.375, 0}}));
        connect(G_p.n1, u_ii_reaction1.s1) annotation(
          Line(origin = {56.9367, 15}, points = {{-56.9367, -15}, {17.5617, -15}, {17.5617, 15}, {21.8133, 15}}));
        connect(EGP_reaction.s1, EGP_connector) annotation(
          Line(origin = {2.10942e-16, -69.625}, points = {{-2.33147e-16, 10.375}, {2.33147e-16, -10.375}}));
        connect(G_p.n1, EGP_reaction.p1) annotation(
          Line(origin = {1.11022e-17, -18.375}, points = {{-1.11022e-17, 18.375}, {1.11022e-17, -18.375}}));
        connect(Ra_connector, Ra_reaction.s1) annotation(
          Line(origin = {-80, 70.625}, points = {{0, 9.375}, {0, -9.375}}));
        connect(Ra_reaction.p1, G_p.n1) annotation(
          Line(origin = {-53.3333, 12.9167}, points = {{-26.6667, 25.8333}, {-26.6667, -12.9167}, {53.3333, -12.9167}}));
        connect(G_p.n1, E_connector) annotation(
          Line(origin = {83.5, -15}, points = {{-83.5, 15}, {23.5, 15}, {23.5, -15}, {36.5, -15}}));
        connect(G_p.n1, G_connector) annotation(
          Line(origin = {0, 40}, points = {{0, -40}, {0, 40}}));
        connect(G_p_signal.n1, G_p_connector) annotation(
          Line(origin = {-110, -46.696}, points = {{0, 23.304}, {0, -23.304}}));
        connect(G_signal.n1, G_signal_connector) annotation(
          Line(origin = {-120, 20}, points = {{0, 20}, {0, -20}}));
        g_p_signal = g_p;
        g_signal = g_p_signal / V_G;
        annotation(
          Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, grid = {10, 10})),
          Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, grid = {10, 10}), graphics = {Text(origin = {9.76996e-15, 43.56}, fillPattern = FillPattern.Solid, extent = {{-83.88, -33.56}, {83.88, 33.56}}, textString = "Plasma", fontName = "Arial"), Text(origin = {2.66454e-15, -40}, fillPattern = FillPattern.Solid, extent = {{-86.96, -35.65}, {86.96, 35.65}}, textString = "glucose", fontName = "Arial")}));
      end PlasmaGlucose;

      model LiverInsulin
        extends BioChem.Compartments.Compartment(V.start = 1.0);
        BioChem.Units.Concentration s;
        BioChem.Units.Concentration s_signal;
        BioChem.Substances.Substance I_l(c.start = 5) annotation(
          Placement(transformation(extent = {{-10, -10}, {10, 10}})));
        BioChem.Substances.SignalSubstance S_signal(c = s_signal) annotation(
          Placement(transformation(origin = {-70, 50}, extent = {{-10, -10}, {10, 10}})));
        BioChem.Examples.GlucoseInsulinModel.Utilities.Reactions.m_3 m_3 annotation(
          Placement(transformation(origin = {-70, 0}, extent = {{10, -10}, {-10, 10}})));
        BioChem.Interfaces.Nodes.ProductConnector S_connector(c = s) annotation(
          Placement(transformation(origin = {120, 0}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {110, -1.93864}, extent = {{-10, -10}, {10, 10}})));
        BioChem.Interfaces.Nodes.SubstrateConnector I_connector annotation(
          Placement(transformation(origin = {7.10543e-15, 79.59}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {0, 110}, extent = {{-10, -10}, {10, 10}})));
        BioChem.Examples.GlucoseInsulinModel.Utilities.Reactions.FlowReaction S_reaction(k = 1) annotation(
          Placement(transformation(origin = {70, -7.21645e-16}, extent = {{10, -10}, {-10, 10}})));
        BioChem.Substances.BoundarySubstance Deg annotation(
          Placement(transformation(origin = {-120, 0}, extent = {{-10, -10}, {10, 10}})));
      equation
        connect(m_3.p1, Deg.n1) annotation(
          Line(origin = {-100.625, 1.11022e-17}, points = {{19.375, 1.11022e-17}, {-19.375, -1.11022e-17}}));
        connect(S_reaction.s1, S_connector) annotation(
          Line(origin = {100.625, -3.71925e-16}, points = {{-19.375, -3.71925e-16}, {19.375, 3.71925e-16}}));
        connect(S_reaction.p1, I_l.n1) annotation(
          Line(origin = {29.375, -3.4972e-16}, points = {{29.375, -3.4972e-16}, {-29.375, 3.4972e-16}}));
        connect(I_connector, I_l.n1) annotation(
          Line(origin = {3.55271e-15, 39.795}, points = {{3.55271e-15, 39.795}, {-3.55271e-15, -39.795}}));
        connect(I_l.n1, m_3.s1) annotation(
          Line(origin = {-29.375, -1.11022e-17}, points = {{29.375, 1.11022e-17}, {-29.375, -1.11022e-17}}));
        connect(S_signal.n1, m_3.m1) annotation(
          Line(origin = {-70, 29.5}, points = {{0, 20.5}, {0, -20.5}}));
        s = s_signal;
        annotation(
          Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, grid = {10, 10})),
          Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, grid = {10, 10}), graphics = {Text(origin = {0.247749, 43.7203}, fillPattern = FillPattern.Solid, extent = {{-92.2066, -43.7203}, {92.2066, 43.7203}}, textString = "Liver", fontName = "Arial"), Text(origin = {-0.875609, -51.2968}, fillPattern = FillPattern.Solid, extent = {{-89.1244, -31.2968}, {89.1244, 31.2968}}, textString = "insulin", fontName = "Arial")}));
      end LiverInsulin;

      model EndogenousGlucoseProduction
        extends BioChem.Compartments.Compartment(V.start = 1.0);
        parameter Real k_p1 = 2.7;
        parameter Real k_p2 = 0.0021;
        parameter Real k_p3 = 0.009;
        parameter Real k_p4 = 0.0618;
        BioChem.Units.Concentration egp_signal;
        BioChem.Units.Concentration i_d;
        BioChem.Units.Concentration g_p;
        BioChem.Units.Concentration i_po;
        BioChem.Interfaces.Nodes.ModifierConnector G_p_connector annotation(
          Placement(transformation(origin = {0, 80}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {2.22045e-16, 110}, extent = {{-10, -10}, {10, 10}})));
        BioChem.Interfaces.Nodes.SubstrateConnector EGP_connector annotation(
          Placement(transformation(origin = {60, 80}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {73.83, 110}, extent = {{-10, -10}, {10, 10}})));
        BioChem.Interfaces.Nodes.ModifierConnector I_connector annotation(
          Placement(transformation(origin = {-60, 80}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {-72.29, 110}, extent = {{-10, -10}, {10, 10}})));
        BioChem.Interfaces.Nodes.ModifierConnector I_po_connector annotation(
          Placement(transformation(origin = {120, -60}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {110, 0}, extent = {{-10, -10}, {10, 10}})));
        BioChem.Examples.GlucoseInsulinModel.Utilities.Reactions.FlowReaction k_i1(k = 0.0079) annotation(
          Placement(transformation(origin = {-90, 63.2158}, extent = {{10, -10}, {-10, 10}}, rotation = -270)));
        BioChem.Substances.Substance I_1(c.start = 25) annotation(
          Placement(transformation(origin = {-90, 40}, extent = {{-10, -10}, {10, 10}})));
        BioChem.Examples.GlucoseInsulinModel.Utilities.Reactions.FlowReaction k_i2(k = 0.0079) annotation(
          Placement(transformation(origin = {-90, 10}, extent = {{10, -10}, {-10, 10}}, rotation = -270)));
        BioChem.Substances.Substance I_d(c.start = 25, c = i_d) annotation(
          Placement(transformation(origin = {-90, -10}, extent = {{-10, -10}, {10, 10}})));
        BioChem.Examples.GlucoseInsulinModel.Utilities.Reactions.FlowReaction k_i3(k = 0.0079) annotation(
          Placement(transformation(origin = {-90, -40}, extent = {{10, -10}, {-10, 10}}, rotation = -270)));
        BioChem.Substances.BoundarySubstance End annotation(
          Placement(transformation(origin = {-90, -60}, extent = {{-10, -10}, {10, 10}})));
        BioChem.Substances.SignalSubstance EGP_calc(c = egp_signal) annotation(
          Placement(transformation(origin = {60, 40}, extent = {{-10, -10}, {10, 10}})));
        BioChem.Substances.Substance G_p(c = g_p) annotation(
          Placement(transformation(origin = {8.88178e-16, 40}, extent = {{-10, -10}, {10, 10}})));
        BioChem.Substances.Substance I_po(c = i_po) annotation(
          Placement(transformation(origin = {80, -60}, extent = {{-10, -10}, {10, 10}})));
        BioChem.Examples.GlucoseInsulinModel.Utilities.Reactions.signaltosubstance signaltosubstance1 annotation(
          Placement(transformation(origin = {100, -60}, extent = {{10, -10}, {-10, 10}})));
        BioChem.Examples.GlucoseInsulinModel.Utilities.Reactions.signaltosubstance signaltosubstance2 annotation(
          Placement(transformation(origin = {0, 60}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
      equation
        connect(signaltosubstance2.p1, G_p.n1) annotation(
          Line(origin = {3.10862e-16, 42.9167}, points = {{-2.88658e-16, 5.83333}, {-2.88658e-16, -2.91667}, {5.77316e-16, -2.91667}}));
        connect(G_p_connector, signaltosubstance2.s1) annotation(
          Line(origin = {-7.4015e-18, 74.1667}, points = {{7.4015e-18, 5.83333}, {7.4015e-18, -2.91667}, {-1.4803e-17, -2.91667}}));
        connect(I_po_connector, signaltosubstance1.s1) annotation(
          Line(origin = {115.625, -60}, points = {{4.375, 0}, {-4.375, 0}}));
        connect(signaltosubstance1.p1, I_po.n1) annotation(
          Line(origin = {84.375, -60}, points = {{4.375, 0}, {-4.375, 0}}));
        connect(EGP_calc.n1, EGP_connector) annotation(
          Line(origin = {60, 60}, points = {{0, -20}, {0, 20}}));
        connect(End.n1, k_i3.p1) annotation(
          Line(origin = {-90, -54.1667}, points = {{0, -5.83333}, {0, 2.91667}, {0, 2.91667}}));
        connect(k_i3.s1, I_d.n1) annotation(
          Line(origin = {-90, -19.375}, points = {{0, -9.375}, {0, 9.375}}));
        connect(k_i2.p1, I_d.n1) annotation(
          Line(origin = {-90, -7.08333}, points = {{0, 5.83333}, {0, -2.91667}, {0, -2.91667}}));
        connect(I_1.n1, k_i2.s1) annotation(
          Line(origin = {-90, 30.625}, points = {{0, 9.375}, {0, -9.375}}));
        connect(k_i1.p1, I_1.n1) annotation(
          Line(origin = {-90, 43.9886}, points = {{0, 7.97721}, {0, -3.9886}, {0, -3.9886}}));
        connect(k_i1.s1, I_connector) annotation(
          Line(origin = {-80, 78.1553}, points = {{-10, -3.68946}, {-10, 1.84473}, {20, 1.84473}}));
        egp_signal = k_p1 - k_p2 * g_p - k_p3 * i_d - k_p4 * i_po;
        annotation(
          Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, grid = {10, 10}), graphics = {Text(origin = {-107.257, 0}, rotation = -270, fillPattern = FillPattern.Solid, extent = {{-25.4753, -2.74277}, {25.4753, 2.74277}}, textString = "delayed insulin signal", fontName = "Arial")}),
          Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, grid = {10, 10}), graphics = {Text(origin = {4.68254, 4.83}, fillPattern = FillPattern.Solid, extent = {{-77.28, -45.17}, {77.28, 45.17}}, textString = "EGP", fontName = "Arial")}));
      end EndogenousGlucoseProduction;

      model GlucoseRenalExcretion
        extends BioChem.Compartments.Compartment(V.start = 1.0);
        BioChem.Interfaces.Nodes.ProductConnector productConnector1 annotation(
          Placement(transformation(origin = {-120, -4.44089e-16}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {-110, 3.33067e-16}, extent = {{-10, -10}, {10, 10}})));
        BioChem.Examples.GlucoseInsulinModel.Utilities.Reactions.RenalReaction renalReaction1 annotation(
          Placement(transformation(origin = {-90, 3.88578e-16}, extent = {{-10, 10}, {10, -10}})));
        BioChem.Interfaces.Nodes.ModifierConnector G_p_connector annotation(
          Placement(transformation(origin = {-120, -70}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {-110, -83.5976}, extent = {{-10, -10}, {10, 10}})));
        BioChem.Substances.BoundarySubstance E annotation(
          Placement(transformation(extent = {{-10, -10}, {10, 10}})));
      equation
        connect(renalReaction1.p1, E.n1) annotation(
          Line(origin = {-39.375, 1.83187e-16}, points = {{-39.375, 1.83187e-16}, {39.375, -1.83187e-16}}));
        connect(G_p_connector, G_p_connector) annotation(
          Line(origin = {-120, -70}, points = {{0, 0}, {0, 0}}));
        connect(G_p_connector, renalReaction1.m1) annotation(
          Line(origin = {-75, -82.7488}, points = {{-45, 12.7488}, {-15, 12.7487}, {-15, 12.7488}, {-15, 73.7488}}));
        connect(productConnector1, renalReaction1.s1) annotation(
          Line(origin = {-110.625, -1.66533e-17}, points = {{-9.375, -4.27436e-16}, {9.375, 4.27436e-16}}));
        annotation(
          Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, grid = {10, 10})),
          Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, grid = {10, 10}), graphics = {Text(origin = {-3.87096, 37.0935}, fillPattern = FillPattern.Solid, extent = {{-89.7, -30}, {89.7, 30}}, textString = "Renal", fontName = "Arial"), Text(origin = {-3.55271e-15, -46.0442}, fillPattern = FillPattern.Solid, extent = {{-95.9469, -26.0442}, {95.9469, 26.0442}}, textString = "excretion", fontName = "Arial")}));
      end GlucoseRenalExcretion;

      model UtilizationMuscleTissue
        extends BioChem.Compartments.Compartment(V.start = 1.0);
        BioChem.Interfaces.Nodes.ModifierConnector I_connector annotation(
          Placement(transformation(origin = {-120, 50}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {-110, 83.5696}, extent = {{-10, -10}, {10, 10}})));
        BioChem.Interfaces.Nodes.ProductConnector G_t_connector annotation(
          Placement(transformation(origin = {-120, 0}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {-110, 1.62}, extent = {{-10, -10}, {10, 10}})));
        BioChem.Substances.BoundarySubstance U_idm annotation(
          Placement(transformation(extent = {{-10, -10}, {10, 10}})));
        BioChem.Examples.GlucoseInsulinModel.Utilities.Reactions.UtilizationReaction UtilizationReaction(K_m0 = 225.59, V_m0 = 2.5, V_mX = 0.047, p_2U = 0.0331, part = 0.8) annotation(
          Placement(transformation(origin = {-64.11, 0}, extent = {{-10, -10}, {10, 10}})));
      equation
        connect(UtilizationReaction.p1, U_idm.n1) annotation(
          Line(origin = {-26.43, 1.11022e-17}, points = {{-26.43, 1.11022e-17}, {26.43, -1.11022e-17}}));
        connect(UtilizationReaction.m1, I_connector) annotation(
          Line(origin = {-82.74, 36.3333}, points = {{18.63, -27.3333}, {18.63, 13.6667}, {-37.26, 13.6667}}));
        connect(G_t_connector, UtilizationReaction.s1) annotation(
          Line(origin = {-97.68, -1.11022e-17}, points = {{-22.32, 1.11022e-17}, {22.32, -1.11022e-17}}));
        annotation(
          Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, grid = {10, 10})),
          Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, grid = {10, 10}), graphics = {Text(origin = {-2.91, 52.76}, fillPattern = FillPattern.Solid, extent = {{-82.91, -30.17}, {82.91, 30.17}}, textString = "Muscle", fontName = "Arial"), Text(origin = {-7.10543e-15, -34.69}, fillPattern = FillPattern.Solid, extent = {{-77.92, -34.69}, {77.92, 34.69}}, textString = "tissue", fontName = "Arial")}));
      end UtilizationMuscleTissue;

      model TissueGlucose
        extends BioChem.Compartments.Compartment(V.start = 1.0);
        BioChem.Interfaces.Nodes.ProductConnector G_connector annotation(
          Placement(transformation(origin = {0, -80}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {0, -110}, extent = {{-10, -10}, {10, 10}})));
        BioChem.Substances.Substance G_t(c.start = 130) annotation(
          Placement(transformation(extent = {{-10, -10}, {10, 10}})));
        BioChem.Interfaces.Nodes.SubstrateConnector U_idf_connector annotation(
          Placement(transformation(origin = {120, 40}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {110, 60}, extent = {{-10, -10}, {10, 10}})));
        BioChem.Interfaces.Nodes.SubstrateConnector U_idm_connector annotation(
          Placement(transformation(origin = {120, -40}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {110, -63.4979}, extent = {{-10, -10}, {10, 10}})));
      equation
        connect(G_t.n1, U_idm_connector) annotation(
          Line(origin = {83.5, -20}, points = {{-83.5, 20}, {23.5, 20}, {23.5, -20}, {36.5, -20}}));
        connect(G_t.n1, U_idf_connector) annotation(
          Line(origin = {83.5, 20}, points = {{-83.5, -20}, {23.5, -20}, {23.5, 20}, {36.5, 20}}));
        connect(G_t.n1, G_connector) annotation(
          Line(origin = {0, -40}, points = {{0, 40}, {0, -40}}));
        annotation(
          Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, grid = {10, 10})),
          Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, grid = {10, 10}), graphics = {Text(origin = {-0.55, -36.0512}, fillPattern = FillPattern.Solid, extent = {{-100.55, -33.9488}, {100.55, 33.9488}}, textString = "glucose", fontName = "Arial"), Text(origin = {3.56664, 43.6442}, fillPattern = FillPattern.Solid, extent = {{-86.4334, -33.6442}, {86.4334, 33.6442}}, textString = "Tissue", fontName = "Arial")}));
      end TissueGlucose;

      package AdiposeTissue
        extends BioChem.Icons.Library;

        model Adipocyte
          extends BioChem.Compartments.Compartment(V.start = 1.0);
          BioChem.Substances.Substance IR(c.start = 2340000000000.0) annotation(
            Placement(transformation(origin = {-110, 60}, extent = {{-10, -10}, {10, 10}})));
          BioChem.Substances.SignalSubstance IR_tot annotation(
            Placement(transformation(origin = {110, 60}, extent = {{-10, -10}, {10, 10}})));
          BioChem.Substances.Substance IRS1(c.start = 16100000000.0) annotation(
            Placement(transformation(origin = {-80, 30}, extent = {{-10, -10}, {10, 10}})));
          BioChem.Substances.Substance IRS1_P(c.start = 0) annotation(
            Placement(transformation(origin = {-20, 30}, extent = {{-10, -10}, {10, 10}})));
          BioChem.Examples.GlucoseInsulinModel.Utilities.Reactions.ActivationReaction activationReaction2(k_1 = 0.038, k_2 = 580000000) annotation(
            Placement(transformation(origin = {-50, 30}, extent = {{-10, -10}, {10, 10}})));
          BioChem.Examples.GlucoseInsulinModel.Utilities.Reactions.ActivationReaction activationReaction3(k_1 = 1.348, k_2 = 24800000) annotation(
            Placement(transformation(origin = {-20, 0}, extent = {{-10, -10}, {10, 10}})));
          BioChem.Substances.Substance PKB(c.start = 16800000) annotation(
            Placement(transformation(origin = {-50, 0}, extent = {{-10, -10}, {10, 10}})));
          BioChem.Substances.Substance PKB_P(c.start = 0) annotation(
            Placement(transformation(origin = {10, 0}, extent = {{-10, -10}, {10, 10}})));
          BioChem.Examples.GlucoseInsulinModel.Utilities.Reactions.ActivationReaction activationReaction4(k_1 = 0.019, k_2 = 336000000) annotation(
            Placement(transformation(origin = {10, -30}, extent = {{-10, -10}, {10, 10}})));
          BioChem.Substances.SignalSubstance IRS1_tot annotation(
            Placement(transformation(origin = {110, 30}, extent = {{-10, -10}, {10, 10}})));
          BioChem.Substances.SignalSubstance PKB_tot annotation(
            Placement(transformation(origin = {110, 0}, extent = {{-10, -10}, {10, 10}})));
          BioChem.Substances.SignalSubstance GLUT4_tot annotation(
            Placement(transformation(origin = {110, -30}, extent = {{-10, -10}, {10, 10}})));
          BioChem.Substances.BoundarySubstance GlucoseUtilization annotation(
            Placement(transformation(origin = {110, -80}, extent = {{-10, -10}, {10, 10}})));
          BioChem.Interfaces.Nodes.ModifierConnector modifierConnector1 annotation(
            Placement(transformation(origin = {-80, 90}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {-110, 0}, extent = {{-10, -10}, {10, 10}})));
          BioChem.Interfaces.Nodes.ProductConnector productConnector1 annotation(
            Placement(transformation(origin = {-7.77156e-16, -80}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {-1.22125e-15, -110}, extent = {{-10, -10}, {10, 10}})));
          BioChem.Substances.Substance GLUT4_MEMBRANE(c.start = 0) annotation(
            Placement(transformation(origin = {40, -30}, extent = {{-10, -10}, {10, 10}})));
          BioChem.Substances.Substance GLUT4_CYTOSOL(c.start = 580000000) annotation(
            Placement(transformation(origin = {-20, -30}, extent = {{-10, -10}, {10, 10}})));
          BioChem.Substances.Substance IR_insulin(c.start = 0) annotation(
            Placement(transformation(origin = {-50, 60}, extent = {{-10, -10}, {10, 10}})));
          BioChem.Examples.GlucoseInsulinModel.Utilities.Reactions.MM_insulin MM_insulin1(k_1 = 2.464, k_2 = 54100000000.0, Km = 1499) annotation(
            Placement(transformation(origin = {-80, 60}, extent = {{-10, -10}, {10, 10}})));
          BioChem.Examples.GlucoseInsulinModel.Utilities.Reactions.GlucoseUptakeReaction GlucoseUptake_GLUT4(k = 12.435, glut_1 = 0.071, Km1 = 0.012, Km4 = 3462, k_wholebody = 2.45) annotation(
            Placement(transformation(origin = {40, -80}, extent = {{-10, -10}, {10, 10}})));
        equation
          connect(productConnector1, GlucoseUptake_GLUT4.s1) annotation(
            Line(origin = {14.375, -80}, points = {{-14.375, 0}, {14.375, 0}}));
          connect(GlucoseUptake_GLUT4.p1, GlucoseUtilization.n1) annotation(
            Line(origin = {80.625, -80}, points = {{-29.375, 0}, {29.375, 0}}));
          connect(GLUT4_MEMBRANE.n1, GlucoseUptake_GLUT4.m1) annotation(
            Line(origin = {40, -50.5}, points = {{0, 20.5}, {0, -20.5}}));
          connect(MM_insulin1.p1, IR_insulin.n1) annotation(
            Line(origin = {-59.375, 60}, points = {{-9.375, 0}, {9.375, 0}}));
          connect(modifierConnector1, MM_insulin1.m1) annotation(
            Line(origin = {-80, 79.5}, points = {{0, 10.5}, {0, -10.5}}));
          connect(IR.n1, MM_insulin1.s1) annotation(
            Line(origin = {-100.625, 60}, points = {{-9.375, 0}, {9.375, 0}}));
          connect(IR_insulin.n1, activationReaction2.m1) annotation(
            Line(origin = {-50, 49.5}, points = {{0, 10.5}, {0, -10.5}}));
          connect(GLUT4_CYTOSOL.n1, activationReaction4.s1) annotation(
            Line(origin = {-10.625, -30}, points = {{-9.375, 0}, {9.375, 0}}));
          connect(activationReaction4.p1, GLUT4_MEMBRANE.n1) annotation(
            Line(origin = {30.625, -30}, points = {{-9.375, 0}, {9.375, 0}}));
          IR_tot.c = IR.c + IR_insulin.c;
          IRS1_tot.c = IRS1.c + IRS1_P.c;
          PKB_tot.c = PKB.c + PKB_P.c;
          GLUT4_tot.c = GLUT4_CYTOSOL.c + GLUT4_MEMBRANE.c;
          connect(PKB_P.n1, activationReaction4.m1) annotation(
            Line(origin = {10, -10.5}, points = {{0, 10.5}, {-1.77636e-15, -10.5}}));
          connect(activationReaction3.p1, PKB_P.n1) annotation(
            Line(origin = {0.625, 1.11022e-17}, points = {{-9.375, 1.11022e-17}, {9.375, -1.11022e-17}}));
          connect(PKB.n1, activationReaction3.s1) annotation(
            Line(origin = {-40.625, 1.11022e-17}, points = {{-9.375, -1.11022e-17}, {9.375, 1.11022e-17}}));
          connect(IRS1_P.n1, activationReaction3.m1) annotation(
            Line(origin = {-20, 19.5}, points = {{0, 10.5}, {0, -10.5}}));
          connect(activationReaction2.p1, IRS1_P.n1) annotation(
            Line(origin = {-29.375, 30}, points = {{-9.375, -3.55271e-15}, {9.375, 0}}));
          connect(IRS1.n1, activationReaction2.s1) annotation(
            Line(origin = {-70.625, 30}, points = {{-9.375, 0}, {9.375, 0}}));
          annotation(
            Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, grid = {10, 10})),
            Documentation(info = "", revisions = ""));
        end Adipocyte;

        model AdiposeTissue
          extends BioChem.Compartments.Compartment(V.start = 1.0);
          BioChem.Interfaces.Nodes.ModifierConnector I_connector annotation(
            Placement(transformation(origin = {-120, 50}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {-110, 83.8877}, extent = {{-10, -10}, {10, 10}})));
          BioChem.Interfaces.Nodes.ProductConnector G_t_connector annotation(
            Placement(transformation(origin = {-120, 0}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {-110, 1.61}, extent = {{-10, -10}, {10, 10}})));
          BioChem.Examples.GlucoseInsulinModel.Utilities.Parts.AdiposeTissue.Adipocyte adipocyte1 annotation(
            Placement(transformation(origin = {0, 6.66134e-16}, extent = {{-10, -10}, {10, 10}})));
        equation
          connect(adipocyte1.productConnector1, G_t_connector) annotation(
            Line(origin = {-66.8, -8.2005}, points = {{66.8, -2.7995}, {66.8, -6.80075}, {-40.2, -6.80075}, {-40.2, 8.2005}, {-53.2, 8.2005}}));
          connect(I_connector, adipocyte1.modifierConnector1) annotation(
            Line(origin = {-40.2506, 25}, points = {{-79.7494, 25}, {25.2494, 25}, {25.2494, -25}, {29.2506, -25}}));
          annotation(
            Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, grid = {10, 10})),
            Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, grid = {10, 10}), graphics = {Text(origin = {-3.97, 38.38}, fillPattern = FillPattern.Solid, extent = {{-96.03, -31.62}, {96.03, 31.62}}, textString = "Fat", fontName = "Arial"), Text(origin = {-2.5601, -40}, fillPattern = FillPattern.Solid, extent = {{-77.4399, -42.4487}, {77.4399, 42.4487}}, textString = "tissue", fontName = "Arial")}));
        end AdiposeTissue;
      end AdiposeTissue;
    end Parts;

    package Reactions
      extends BioChem.Icons.Library;

      model FlowReaction
        extends BioChem.Interfaces.Reactions.Uui;
        parameter Real k;
      equation
        rr = s1.c * k;
        annotation(
          Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, grid = {10, 10})));
      end FlowReaction;

      model k_empt
        extends BioChem.Interfaces.Reactions.Uui;
        extends BioChem.Interfaces.Reactions.Modifiers.TwoModifiers;
        Real k;
        Real aa;
        Real cc;
        parameter Real k_max = 0.0558;
        parameter Real k_min = 0.008;
        parameter Real b = 0.82;
        parameter Real d = 0.01;
      equation
        rr = s1.c * k;
        k = k_min + (k_max - k_min) / 2 * (Modelica.Math.tanh(aa * (m1.c - b * m2.c)) - Modelica.Math.tanh(cc * (m1.c - d * m2.c)) + 2);
        aa = 5 / 2 / (1 - b) / m2.c;
        cc = 5 / 2 / d / m2.c;
        annotation(
          Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, grid = {10, 10})));
      end k_empt;

      model dirac
        extends BioChem.Interfaces.Reactions.Uui;
        parameter Real k = 78000000;
      equation
        if time < 0.001 then
          rr = k;
        else
          rr = 0;
        end if;
        annotation(
          Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, grid = {10, 10})));
      end dirac;

      model m_3
        extends BioChem.Interfaces.Reactions.Uui;
        extends BioChem.Interfaces.Reactions.Modifiers.Modifier;
        Real k;
        parameter Real m_5 = 0.0304;
        parameter Real m_1 = 0.19;
        parameter Real m_6 = 0.6471;
      equation
        rr = s1.c * k;
        k = ((-m_5 * m1.c) + m_6) * m_1 / (1 - ((-m_5 * m1.c) + m_6));
        annotation(
          Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, grid = {10, 10})));
      end m_3;

      model ReversibleFlowReaction
        extends BioChem.Interfaces.Reactions.Uur;
        parameter Real k_1;
        parameter Real k_2;
      equation
        rr = s1.c * k_1 - p1.c * k_2;
        annotation(
          Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, grid = {10, 10})));
      end ReversibleFlowReaction;

      model RenalReaction
        extends BioChem.Interfaces.Reactions.Uui;
        extends BioChem.Interfaces.Reactions.Modifiers.Modifier;
        parameter Real k_e1 = 0.0005;
        parameter Real k_e2 = 339;
      equation
        if m1.c > k_e2 then
          rr = s1.c * (k_e1 * (m1.c - k_e2));
        else
          rr = 0;
        end if;
        annotation(
          Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, grid = {10, 10})));
      end RenalReaction;

      model UtilizationReaction
        extends BioChem.Interfaces.Reactions.Uui;
        extends BioChem.Interfaces.Reactions.Modifiers.Modifier;
        BioChem.Units.Concentration X;
        Real V_max;
        parameter Real part;
        parameter Real V_m0;
        parameter Real V_mX;
        parameter Real K_m0;
        parameter Real p_2U;
        parameter Real I_b = 25;
      equation
        rr = V_max * s1.c / (K_m0 + s1.c);
        V_max = part * (V_m0 + V_mX * X);
        der(X) = (-p_2U * X) + p_2U * (m1.c - I_b);
        annotation(
          Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, grid = {10, 10})));
      end UtilizationReaction;

      model signaltosubstance
        extends BioChem.Interfaces.Reactions.Uui;
      equation
        s1.c = p1.c;
        annotation(
          Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, grid = {10, 10})));
      end signaltosubstance;

      model U_ii_reaction
        extends BioChem.Interfaces.Reactions.Uui;
      equation
        rr = 1;
        annotation(
          Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, grid = {10, 10})));
      end U_ii_reaction;

      model ActivationReaction
        extends BioChem.Interfaces.Reactions.Uur;
        extends BioChem.Interfaces.Reactions.Modifiers.Modifier;
        parameter Real k_1;
        parameter Real k_2;
      equation
        rr = k_1 * s1.c * m1.c - p1.c * k_2;
        annotation(
          Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, grid = {10, 10})));
      end ActivationReaction;

      model MM_insulin
        extends BioChem.Interfaces.Reactions.Uur;
        extends BioChem.Interfaces.Reactions.Modifiers.Modifier;
        parameter Real k_1;
        parameter Real k_2;
        parameter Real Km;
      equation
        rr = k_1 * m1.c * s1.c / (Km + m1.c) - p1.c * k_2;
        annotation(
          Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, grid = {10, 10})));
      end MM_insulin;

      model GlucoseUptakeReaction
        extends BioChem.Interfaces.Reactions.Uui;
        extends BioChem.Interfaces.Reactions.Modifiers.Modifier;
        parameter Real k_wholebody;
        parameter Real k;
        parameter Real Km4;
        parameter Real Km1;
        parameter Real glut_1;
      equation
        rr = k_wholebody * (k * m1.c * s1.c / (Km4 + s1.c) + glut_1 * s1.c / (Km1 + s1.c));
        annotation(
          Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, grid = {10, 10})));
      end GlucoseUptakeReaction;
    end Reactions;
    annotation(
      Diagram(coordinateSystem(extent = {{-100.0, -100.0}, {100.0, 100.0}}, preserveAspectRatio = true, grid = {10, 10})));
  end Utilities;
  annotation(
    Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, grid = {10, 10})),
    Documentation(info = "<html>
<h1>A Whole Body Model of the Glucose Insulin System</h1>

This model is presented in <i>Hierarchical modeling of diabetes</i> by
Elin Nyman, ISRN:LiU-IKE-EX-09/14. Link&ouml;ping University 2009.<br><br>


See
<a href=\"Modelica://BioChem.Examples.GlucoseInsulinModel.GlucoseInsulinModel\">GlucoseInsulinModel</a>
 for more documentation and simulation results.
</html>", revisions = ""));
end GlucoseInsulinModel;
