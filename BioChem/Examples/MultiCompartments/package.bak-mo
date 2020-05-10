within BioChem.Examples;
package MultiCompartments "Examples using different compartments for the reacting species"
  extends Icons.Library;
  model GlucoseMetabolism "Glycolysis and the TCA"
    annotation(Documentation(info="<html>
 <p>
 A simple glucose metabolism model which combines the glycolysis and<br>
 the TCA, which is located in another compartment.<br>
 The parameter values in this model are arbitrarily chosen,
 to obtain a fully functional model, realistic parameter values must be used.
 </p>
 </html>"), Icon(coordinateSystem(extent={{-100.0,-100.0},{100.0,100.0}}, preserveAspectRatio=true, grid={10,10}), graphics={Line(points={{0.0,100.0},{0.0,25.0},{-25.0,0.0},{0.0,-25.0},{0.0,-100.0}}, color={170,0,0}, thickness=0.5),Line(points={{0.0,25.0},{25.0,0.0},{-25.0,0.0}}, color={170,0,0}, thickness=0.5)}), Diagram(coordinateSystem(extent={{-105,148.5},{105,-148.5}}, preserveAspectRatio=true, grid={10,10})));
    extends BioChem.Compartments.Compartment;
    Substances.Substance Glucose(c.start=1/1000) "Glucose" annotation(Placement(transformation(origin={-0.0,140.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=-90)));
    Reactions.MassAction.Irreversible.UniUni.Uui uui5(k1=1) annotation(Placement(transformation(origin={0.0,120.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=270)));
    Substances.Substance G6P(c.start=0) "Glucose-6-phosphate" annotation(Placement(transformation(origin={0.0,100.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=-90)));
    Reactions.MassAction.Reversible.UniUni.Uur uur(k1=1) annotation(Placement(transformation(origin={-0.0,80.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=270)));
    Substances.Substance F6P(c.start=0) "Fructose-6-phosphate" annotation(Placement(transformation(origin={-0.0,60.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=-90)));
    Reactions.MassAction.Irreversible.UniUni.Uui uui annotation(Placement(transformation(origin={0.0,40.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=270)));
    Substances.Substance F16BP(c.start=0) "Fructose-1,6-bisphosphate" annotation(Placement(transformation(origin={-0.0,20.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=-90)));
    Reactions.MassAction.Irreversible.UniBi.Ubi ubi annotation(Placement(transformation(origin={-0.0,0.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=270)));
    Reactions.MassAction.Reversible.UniUni.Uur uur1 annotation(Placement(transformation(origin={0.0,-30.0}, extent={{-10.0,-10.0},{10.0,10.0}})));
    Substances.Substance G3P(c.start=0) "Glyceraldehyde-3-phosphate" annotation(Placement(transformation(origin={-30.0,-30.0}, extent={{-10.0,-10.0},{10.0,10.0}})));
    Substances.Substance DHAP1(c.start=0) "Dihydroxyacetone phosphate" annotation(Placement(transformation(origin={30.0,-30.0}, extent={{-10.0,-10.0},{10.0,10.0}})));
    Substances.Substance GA3P(c.start=0) "Glycerate-3-phosphate" annotation(Placement(transformation(origin={-0.0,-80.0}, extent={{-10.0,-10.0},{10.0,10.0}})));
    Substances.Substance Pyruvate(c.start=0) annotation(Placement(transformation(origin={-0.0,-130.0}, extent={{-10.0,-10.0},{10.0,10.0}})));
    BioChem.Examples.MultiCompartments.Utilities.TCA TCA1 annotation(Placement(transformation(origin={70.0,-130.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=-270)));
    Reactions.MassAction.Irreversible.UniUni.Uuifa uuifa annotation(Placement(transformation(origin={30.0,-130.0}, extent={{-10.0,-10.0},{10.0,10.0}})));
    Substances.Substance G2P1(c.start=0) "Glycerate-2-phosphate" annotation(Placement(transformation(origin={-60.0,-80.0}, extent={{-10.0,-10.0},{10.0,10.0}})));
    Substances.Substance PEP1(c.start=0) "Phosphoenol pyruvate" annotation(Placement(transformation(origin={-60.0,-130.0}, extent={{-10.0,-10.0},{10.0,10.0}})));
    Reactions.MassAction.Reversible.UniUni.Uur uur2 annotation(Placement(transformation(origin={-30.0,-80.0}, extent={{-10.0,-10.0},{10.0,10.0}})));
    Reactions.MassAction.Irreversible.UniUni.Uui uui4 annotation(Placement(transformation(origin={-30.0,-130.0}, extent={{-10.0,-10.0},{10.0,10.0}})));
    Reactions.MassAction.Irreversible.UniUni.Uui uui3 annotation(Placement(transformation(origin={-80.0,-105.6444}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=270)));
    Substances.Substance G13BP(c.start=0) "Glycerate-1,3-bisphosphate" annotation(Placement(transformation(origin={60.0,-80.0}, extent={{-10.0,-10.0},{10.0,10.0}})));
    Reactions.MassAction.Irreversible.UniUni.Uui uui2 annotation(Placement(transformation(origin={30.0,-80.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=180)));
    Reactions.MassAction.Irreversible.UniUni.Uui uui1 annotation(Placement(transformation(origin={16.5092,-56.5092}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=-28.8073)));
    Substances.BoundarySubstance pyruvateDehydrogenase annotation(Placement(transformation(origin={30.0,-110.0}, extent={{-10.0,10.0},{10.0,-10.0}})));
  equation
    connect(uuifa.aF1,pyruvateDehydrogenase.n1) annotation(Line(origin={30.0,-113.6667}, points={{0.0,-7.3333},{0.0,3.6667},{0.0,3.6667}}, smooth=Smooth.Bezier));
    connect(uui1.p1,G13BP.n1) annotation(Line(origin={-1.7639,7.5306}, points={{28.1308,-69.4608},{61.7639,-87.5306}}));
    connect(G3P.n1,uui1.s1) annotation(Line(origin={-1.7639,-2.4694}, points={{-28.2361,-27.5306},{8.4153,-48.6188}}));
    connect(uui2.p1,GA3P.n1) annotation(Line(origin={9.375,-80.0}, points={{9.375,0.0},{-9.375,0.0}}));
    connect(uui2.s1,G13BP.n1) annotation(Line(origin={50.625,-80.0}, points={{-9.375,0.0},{9.375,0.0}}));
    connect(uui3.p1,PEP1.n1) annotation(Line(origin={-73.3333,-125.6315}, points={{-6.6667,8.737},{-6.6667,-4.3685},{13.3333,-4.3685}}, smooth=Smooth.Bezier));
    connect(uui3.s1,G2P1.n1) annotation(Line(origin={-73.3333,-84.7981}, points={{-6.6667,-9.5963},{-6.6667,4.7981},{13.3333,4.7981}}, smooth=Smooth.Bezier));
    connect(PEP1.n1,uui4.s1) annotation(Line(origin={-50.625,-130.0}, points={{-9.375,0.0},{9.375,0.0}}));
    connect(uui4.p1,Pyruvate.n1) annotation(Line(origin={-9.375,-130.0}, points={{-9.375,0.0},{9.375,0.0}}));
    connect(uur2.p1,GA3P.n1) annotation(Line(origin={-9.375,-80.0}, points={{-9.375,0.0},{9.375,0.0}}));
    connect(uur2.s1,G2P1.n1) annotation(Line(origin={-50.625,-80.0}, points={{9.375,0.0},{-9.375,0.0}}));
    connect(TCA1.sPyruvate,uuifa.p1) annotation(Line(origin={50.125,-130.0}, points={{8.875,0.0},{-8.875,0.0}}));
    connect(uuifa.s1,Pyruvate.n1) annotation(Line(origin={-1.76,-2.47}, points={{20.51,-127.53},{1.76,-127.53}}));
    connect(ubi.p2,G3P.n1) annotation(Line(origin={-1.7639,-2.4694}, points={{-3.2361,-8.7806},{-3.2361,-17.5306},{-28.2361,-17.5306},{-28.2361,-27.5306}}, smooth=Smooth.Bezier));
    connect(ubi.p1,DHAP1.n1) annotation(Line(origin={-1.7639,-2.4694}, points={{6.7639,-8.7806},{6.7639,-17.5306},{31.7639,-17.5306},{31.7639,-27.5306}}, smooth=Smooth.Bezier));
    connect(uur1.p1,DHAP1.n1) annotation(Line(origin={20.625,-30.0}, points={{-9.375,0.0},{9.375,0.0}}));
    connect(uur1.s1,G3P.n1) annotation(Line(origin={-20.625,-30.0}, points={{9.375,0.0},{-9.375,0.0}}));
    connect(ubi.s1,F16BP.n1) annotation(Line(origin={-0.0,17.0833}, points={{-0.0,-5.8333},{-0.0,2.9167},{0.0,2.9167}}));
    connect(uui.p1,F16BP.n1) annotation(Line(origin={-1.7639,-2.4694}, points={{1.7639,31.2194},{1.7639,22.4694}}));
    connect(uui.s1,F6P.n1) annotation(Line(origin={0.0,57.0833}, points={{0.0,-5.8333},{0.0,2.9167},{-0.0,2.9167}}));
    connect(uur.p1,F6P.n1) annotation(Line(origin={-1.7639,-2.4694}, points={{1.7639,71.2194},{1.7639,62.4694}}));
    connect(uur.s1,G6P.n1) annotation(Line(origin={-1.7639,-2.4694}, points={{1.7639,93.7194},{1.7639,102.4694}}));
    connect(uui5.p1,G6P.n1) annotation(Line(origin={-1.7639,-2.4694}, points={{1.7639,111.2194},{1.7639,102.4694}}));
    connect(Glucose.n1,uui5.s1) annotation(Line(origin={-1.7639,-2.4694}, points={{1.7639,142.4694},{1.7639,133.7194}}));
  end GlucoseMetabolism;

  model BigCompartmentReversible
    extends BioChem.Compartments.Compartment;
    annotation(Diagram(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})), Icon(coordinateSystem(extent={{-100.0,-100.0},{100.0,100.0}}, preserveAspectRatio=true, grid={10,10}), graphics={Text(origin={0.0,4.4965}, fillColor={0,85,0}, fillPattern=FillPattern.Solid, extent={{-80.0,-84.4965},{80.0,75.5035}}, textString="BCR", fontName="Arial")}));
    BioChem.Reactions.MichaelisMenten.Uur uur annotation(Placement(transformation(origin={0.0,0.0}, extent={{-10.0,-10.0},{10.0,10.0}})));
    Substances.Substance substance(c.start=2) annotation(Placement(transformation(origin={40.0,0.0}, extent={{-10.0,-10.0},{10.0,10.0}})));
    BioChem.Examples.MultiCompartments.Utilities.SmallCompartment smallCompartment annotation(Placement(transformation(origin={-30.0,-30.0}, extent={{-10.0,-10.0},{10.0,10.0}})));
  equation
    connect(smallCompartment.substanceConnector,uur.s1) annotation(Line(origin={-23.75,-6.33}, points={{-6.25,-12.6733},{-6.25,6.33},{12.5,6.3267}}, smooth=Smooth.Bezier));
    connect(uur.p1,substance.n1) annotation(Line(origin={25.625,0.0}, points={{-14.375,0.0},{14.375,-0.0}}));
  end BigCompartmentReversible;

  model BigCompartmentIrreversible
    extends BioChem.Compartments.Compartment(V(start=3));
    annotation(Diagram(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})), Icon(coordinateSystem(extent={{-100.0,-100.0},{100.0,100.0}}, preserveAspectRatio=true, grid={10,10}), graphics={Text(origin={2.8035,5.0159}, fillColor={0,85,0}, fillPattern=FillPattern.Solid, extent={{-82.8035,-85.0159},{77.1965,74.9841}}, textString="BCI", fontName="Arial")}));
    Reactions.MassAction.Irreversible.UniUni.Uui uui annotation(Placement(transformation(origin={0.0,-0.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=-360)));
    BioChem.Examples.MultiCompartments.Utilities.SmallCompartment smallCompartment annotation(Placement(transformation(origin={-40.0,-40.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=-360)));
    Substances.Substance substance annotation(Placement(transformation(origin={40.0,0.0}, extent={{-10.0,-10.0},{10.0,10.0}})));
  equation
    connect(smallCompartment.substanceConnector,uui.s1) annotation(Line(origin={-30.4167,-9.6667}, points={{-9.5833,-19.3333},{-9.5833,9.6667},{19.1667,9.6667}}, smooth=Smooth.Bezier));
    connect(uui.p1,substance.n1) annotation(Line(origin={25.625,0.0}, points={{-14.375,0.0},{14.375,-0.0}}));
  end BigCompartmentIrreversible;

  annotation(Icon(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})), Diagram(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})));
  package Utilities
    annotation(Diagram(coordinateSystem(extent={{-100.0,-100.0},{100.0,100.0}}, preserveAspectRatio=true, grid={10,10})), Documentation(info="<html>
<h1> Utilities </h1>
This package contains models that are used in the Multicompartment examples. The

<a href=\"Modelica://BioChem.Examples.MultiCompartments.Utilities.SmallCompartment\">SmallCompartment</a>

is used in the

<a href=\"Modelica://BioChem.Examples.MultiCompartments.BigCompartmentIrreversible\">BigCompartmentIrreversible</a>

and the

<a href=\"Modelica://BioChem.Examples.MultiCompartments.BigCompartmentReversible\">BigCompartmentReversible</a>
.

The
<a href=\"Modelica://BioChem.Examples.MultiCompartments.Utilities.TCA\">TCA</a>

is used in the
<a href=\"Modelica://BioChem.Examples.MultiCompartments.GlucoseMetabolism\">GlucoseMetabolism</a>
.<html>", revisions=""));
    model TCA "Tricarboxylic acid cycle"
      annotation(Documentation(info="<html>
 <p>
 A simple TCA model.<br>
 The parameter values in this model are arbitrarily chosen,
 to obtain a fully functional model, realistic parameter values must be used.
 </p>
 </html>"), Diagram(coordinateSystem(extent={{-100.0,-100.0},{100.0,100.0}}, preserveAspectRatio=true, grid={10,10})), Icon(coordinateSystem(extent={{-100.0,-100.0},{100.0,100.0}}, preserveAspectRatio=true, grid={10,10}), graphics={Ellipse(origin={0.0,-0.0}, lineColor={0,0,255}, fillColor={255,255,255}, extent={{-100.0,-100.0},{100.0,100.0}}),Ellipse(lineColor={0,85,255}, fillColor={0,85,255}, fillPattern=FillPattern.Solid, extent={{-81.68,57.55},{-56.68,82.55}}),Ellipse(lineColor={0,85,255}, fillColor={0,85,255}, fillPattern=FillPattern.Solid, extent={{-84.01,-79.94},{-59.01,-54.94}}),Ellipse(lineColor={0,85,255}, fillColor={0,85,255}, fillPattern=FillPattern.Solid, extent={{-12.5,-112.5},{12.5,-87.5}}),Ellipse(lineColor={0,85,255}, fillColor={0,85,255}, fillPattern=FillPattern.Solid, extent={{-112.5,-12.5},{-87.5,12.5}}),Ellipse(lineColor={0,0,255}, fillColor={0,0,255}, fillPattern=FillPattern.Solid, extent={{58.28,-81.54},{83.28,-56.54}}),Ellipse(lineColor={0,0,255}, fillColor={0,0,255}, fillPattern=FillPattern.Solid, extent={{57.82,56.16},{82.82,81.16}}),Ellipse(lineColor={0,0,255}, fillColor={0,0,255}, fillPattern=FillPattern.Solid, extent={{87.5,-12.5},{112.5,12.5}})}));
      extends BioChem.Compartments.Compartment;
      BioChem.Substances.Substance oxaloacetate(c.start=1/10000) annotation(Placement(transformation(origin={-30.0,60.0}, extent={{-10.0,-10.0},{10.0,10.0}})));
      BioChem.Reactions.MassAction.Irreversible.UniUni.Uuifa uuifa5 annotation(Placement(transformation(origin={-70.0,-5.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=90)));
      BioChem.Substances.BoundarySubstance succinateThiokinase annotation(Placement(transformation(origin={-0.0,-90.0}, extent={{-10.0,-10.0},{10.0,10.0}})));
      BioChem.Substances.Substance alphaKetoglutarate annotation(Placement(transformation(origin={70.0,-30.0}, extent={{-10.0,-10.0},{10.0,10.0}})));
      BioChem.Reactions.MassAction.Irreversible.BiUni.Buifa buifa annotation(Placement(transformation(origin={-0.0,65.5702}, extent={{-10.0,-11.0},{10.0,11.0}}, rotation=-360)));
      BioChem.Substances.BoundarySubstance fumarase annotation(Placement(transformation(origin={-90.0,-5.0}, extent={{-10.0,-10.0},{10.0,10.0}})));
      BioChem.Reactions.MassAction.Irreversible.UniUni.Uuifa uuifa3 annotation(Placement(transformation(origin={-0.0,-70.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=180)));
      BioChem.Substances.Substance succinate annotation(Placement(transformation(origin={-30.0,-70.0}, extent={{-10.0,-10.0},{10.0,10.0}})));
      BioChem.Reactions.MassAction.Irreversible.UniUni.Uuifa uuifa1 annotation(Placement(transformation(origin={70.0,-5.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=270)));
      BioChem.Substances.Substance isocitrate annotation(Placement(transformation(origin={70.0,20.0}, extent={{-10.0,-10.0},{10.0,10.0}})));
      BioChem.Substances.Substance malate annotation(Placement(transformation(origin={-70.0,20.0}, extent={{-10.0,-10.0},{10.0,10.0}})));
      BioChem.Substances.BoundarySubstance succinateDehydrogenase annotation(Placement(transformation(origin={-70.0,-70.0}, extent={{-10.0,-10.0},{10.0,10.0}})));
      BioChem.Substances.Substance succinylCoA annotation(Placement(transformation(origin={30.0,-70.0}, extent={{-10.0,-10.0},{10.0,10.0}})));
      BioChem.Substances.Substance fumarate annotation(Placement(transformation(origin={-70.0,-30.0}, extent={{-10.0,-10.0},{10.0,10.0}})));
      BioChem.Substances.BoundarySubstance alphaKetoglutarateDehydrogenase annotation(Placement(transformation(origin={70.0,-70.0}, extent={{-10.0,-10.0},{10.0,10.0}})));
      BioChem.Reactions.MassAction.Irreversible.UniUni.Uuifa uuifa4 annotation(Placement(transformation(origin={-55.8579,45.8579}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=45)));
      BioChem.Reactions.MassAction.Irreversible.UniUni.Uuifa uuifa6 annotation(Placement(transformation(origin={-55.8579,-55.8579}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=135)));
      BioChem.Reactions.MassAction.Reversible.UniUni.Uurfa uurfa(k2=1) annotation(Placement(transformation(origin={55.8579,45.8579}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=-45)));
      BioChem.Reactions.MassAction.Irreversible.UniUni.Uuifa uuifa2 annotation(Placement(transformation(origin={55.8579,-55.8579}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=-135)));
      BioChem.Substances.Substance acetylCoA annotation(Placement(transformation(origin={-30.0,80.0}, extent={{-10.0,-10.0},{10.0,10.0}})));
      BioChem.Substances.Substance citrate annotation(Placement(transformation(origin={30.0,65.5702}, extent={{-10.0,-10.0},{10.0,10.0}})));
      BioChem.Substances.BoundarySubstance malateDehydrogenase annotation(Placement(transformation(origin={-70.0,60.0}, extent={{-10.0,10.0},{10.0,-10.0}})));
      BioChem.Substances.BoundarySubstance aconitase annotation(Placement(transformation(origin={70.0,60.0}, extent={{-10.0,10.0},{10.0,-10.0}})));
      BioChem.Substances.BoundarySubstance citrateSynthase annotation(Placement(transformation(origin={-0.0,90.0}, extent={{-10.0,10.0},{10.0,-10.0}})));
      BioChem.Substances.BoundarySubstance isocitrateDehydrogenase annotation(Placement(transformation(origin={90.0,-5.0}, extent={{-10.0,-10.0},{10.0,10.0}})));
      BioChem.Interfaces.Nodes.SubstanceConnector sPyruvate annotation(Placement(transformation(origin={-30.0,94.5861}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=180), iconTransformation(origin={-0.0,115.0}, extent={{-15.0,-15.0},{15.0,15.0}}, rotation=180)));
    equation
      connect(acetylCoA.n1,sPyruvate) annotation(Line(origin={-30.0,89.7241}, points={{0.0,-9.7241},{0.0,4.862},{0.0,4.862}}));
      connect(isocitrateDehydrogenase.n1,uuifa1.aF1) annotation(Line(origin={86.3333,-5.0}, points={{3.6667,0.0},{3.6667,0.0},{-7.3333,0.0}}));
      connect(buifa.aF1,citrateSynthase.n1) annotation(Line(origin={-0.0,82.7351}, points={{-0.0,-7.2649},{0.0,7.2649}}, smooth=Smooth.Bezier));
      connect(aconitase.n1,uurfa.aF1) annotation(Line(origin={-0.0,10.0}, points={{70.0,50.0},{62.2218,42.2218}}));
      connect(malateDehydrogenase.n1,uuifa4.aF1) annotation(Line(origin={-0.0,10.0}, points={{-70.0,50.0},{-62.2218,42.2218}}));
      connect(citrate.n1,buifa.p1) annotation(Line(origin={20.3673,64.1776}, points={{9.6327,1.3925},{4.3503,1.3925},{-4.8657,1.3925},{-9.1173,1.3925}}, smooth=Smooth.Bezier));
      connect(uurfa.s1,citrate.n1) annotation(Line(origin={-0.0,10.0}, points={{47.9029,43.8128},{30.0,55.5702}}, smooth=Smooth.Bezier));
      connect(buifa.s1,acetylCoA.n1) annotation(Line(origin={-18.8125,75.5351}, points={{7.5625,-4.4649},{1.8125,-4.4649},{1.8125,4.4649},{-11.1875,4.4649}}, smooth=Smooth.Bezier));
      connect(uuifa2.aF1,alphaKetoglutarateDehydrogenase.n1) annotation(Line(origin={-0.0,10.0}, points={{62.2218,-72.2218},{70.0,-80.0}}, smooth=Smooth.Bezier));
      connect(succinylCoA.n1,uuifa2.p1) annotation(Line(origin={34.29,-58.98}, points={{-4.29,-11.02},{13.6129,-4.8328}}, smooth=Smooth.Bezier));
      connect(uuifa2.s1,alphaKetoglutarate.n1) annotation(Line(origin={-0.0,10.0}, points={{63.8128,-57.9029},{70.0,-40.0}}));
      connect(uurfa.p1,isocitrate.n1) annotation(Line(origin={-0.0,10.0}, points={{63.8128,27.9029},{70.0,10.0}}, smooth=Smooth.Bezier));
      connect(uuifa6.aF1,succinateDehydrogenase.n1) annotation(Line(origin={-0.0,10.0}, points={{-62.2218,-72.2218},{-70.0,-80.0}}));
      connect(succinate.n1,uuifa6.s1) annotation(Line(origin={-0.0,10.0}, points={{-30.0,-80.0},{-47.9029,-73.8128}}, smooth=Smooth.Bezier));
      connect(uuifa6.p1,fumarate.n1) annotation(Line(origin={-0.0,10.0}, points={{-63.8128,-57.9029},{-70.0,-40.0}}, smooth=Smooth.Bezier));
      connect(uuifa4.p1,oxaloacetate.n1) annotation(Line(origin={-0.0,10.0}, points={{-47.9029,43.8128},{-30.0,50.0}}, smooth=Smooth.Bezier));
      connect(malate.n1,uuifa4.s1) annotation(Line(origin={-0.0,10.0}, points={{-70.0,10.0},{-63.8128,27.9029}}, smooth=Smooth.Bezier));
      connect(uuifa5.s1,fumarate.n1) annotation(Line(origin={-70.0,-23.125}, points={{0.0,6.875},{0.0,-6.875}}));
      connect(uuifa3.s1,succinylCoA.n1) annotation(Line(origin={20.625,-70.0}, points={{-9.375,0.0},{9.375,0.0}}, smooth=Smooth.Bezier));
      connect(uuifa5.p1,malate.n1) annotation(Line(origin={-70.0,13.125}, points={{0.0,-6.875},{0.0,6.875}}));
      connect(fumarase.n1,uuifa5.aF1) annotation(Line(origin={-86.3333,-5.0}, points={{-3.6667,0.0},{-3.6667,0.0},{7.3333,0.0}}));
      connect(uuifa1.s1,isocitrate.n1) annotation(Line(origin={70.0,13.125}, points={{0.0,-6.875},{0.0,6.875}}));
      connect(uuifa1.p1,alphaKetoglutarate.n1) annotation(Line(origin={-0.0,10.0}, points={{70.0,-26.25},{70.0,-32.01},{70.0,-40.0}}, smooth=Smooth.Bezier));
      connect(succinate.n1,uuifa3.p1) annotation(Line(origin={-20.625,-70.0}, points={{-9.375,0.0},{9.375,0.0}}));
      connect(succinateThiokinase.n1,uuifa3.aF1) annotation(Line(origin={-0.0,-82.6667}, points={{-0.0,-7.3333},{-0.0,3.6667},{0.0,3.6667}}));
      connect(buifa.s2,oxaloacetate.n1) annotation(Line(origin={-0.0,10.0}, points={{-11.25,50.0702},{-30.0,50.0}}));
    end TCA;

    model SmallCompartment "Michaelis-Menten reaction between two compartments"
      extends BioChem.Compartments.Compartment;
      annotation(Diagram(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})), Icon(coordinateSystem(extent={{-100.0,-100.0},{100.0,100.0}}, preserveAspectRatio=true, grid={10,10}), graphics={Text(origin={12.9676,-18.3909}, fillColor={0,85,0}, fillPattern=FillPattern.Solid, extent={{-92.9676,-61.6091},{67.0324,98.3909}}, textString="SC", fontName="Arial")}));
      BioChem.Substances.Substance substance(c.start=1) annotation(Placement(transformation(extent={{-10,-10},{10,10}})));
      BioChem.Interfaces.Nodes.SubstanceConnector substanceConnector annotation(Placement(transformation(origin={60.0,0.0}, extent={{-10.0,-10.0},{10.0,10.0}}), iconTransformation(origin={0.0,110.0}, extent={{-15.0,-15.0},{15.0,15.0}})));
    equation
      connect(substance.n1,substanceConnector) annotation(Line(points={{0.0,0.0},{60.0,0.0}}));
    end SmallCompartment;

  end Utilities;

end MultiCompartments;
