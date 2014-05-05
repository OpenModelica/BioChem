within BioChem;
package Examples "Some examples of BioChem models"
  extends Icons.Library;
  annotation(Documentation(info="<html>
<h1>Examples</h1>
 <p>
 This package contains several examples of pathways. Including basic examples as an asymmetric reaction with Michaelis-Menten kinetics to more advanced multi compartment models.
 </p>
 </html>", revisions=""), Icon(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10}), graphics={Ellipse(lineColor={0,0,127}, fillColor={85,85,255}, fillPattern=FillPattern.Sphere, extent={{25,-85},{50,-60}}),Ellipse(lineColor={89,0,0}, fillColor={199,0,0}, fillPattern=FillPattern.Sphere, extent={{-75,-85},{-50,-60}}),Ellipse(origin={-1.77636e-15,-8.81}, lineColor={0,85,0}, fillColor={0,170,0}, fillPattern=FillPattern.Sphere, extent={{-25,-43.69},{3.55271e-15,-18.69}}),Ellipse(origin={-1.77636e-15,-20}, lineColor={79,79,0}, fillColor={255,255,0}, fillPattern=FillPattern.Sphere, extent={{-25,30},{0,55}}),Line(origin={0,-8.50446}, points={{-12.65,18.5045},{-12.65,-18.69}}, arrow={Arrow.Open,Arrow.Open}, arrowSize=10),Line(points={{0,-40},{20,-40},{34.02,-60}}, arrow={Arrow.None,Arrow.Open}, arrowSize=10, smooth=Smooth.Bezier),Line(points={{-50,-72.78},{25,-72.78}}, arrow={Arrow.Open,Arrow.Open}, arrowSize=10),Line(points={{-24.8834,-40},{-45.6721,-40},{-60,-60}}, arrow={Arrow.None,Arrow.Open}, arrowSize=10, smooth=Smooth.Bezier)}), Diagram(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})));
  model InsulinSignaling_Sedaghat "Metabolic insulin signaling pathway in rat adipocytes"
    annotation(Documentation(info="<html>
<h1>InsulinSignaling</h1>
 <p>
 A model of the first steps of a metabolic insulin signaling pathway.<br>
 Based on the model by Sedaghat et al. (2002).<br> <br>
 A. Sedaghat, R, A. Sherman, and J. Quon, Michael.<br>
 A mathematical model of metabolic insulin signaling.<br>
 American Journal of Physiology - Endocrinology and Metabolism, 283:1048-1101, Jul 2002.
 </p>
 </html>", revisions=""), Diagram(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})), Icon(coordinateSystem(extent={{-100.0,-100.0},{100.0,100.0}}, preserveAspectRatio=true, grid={10,10}), graphics={Ellipse(lineColor={85,170,255}, fillColor={0,0,255}, fillPattern=FillPattern.Sphere, extent={{-100.43,-91.42},{100.02,19.94}}),Line(points={{0.0,110.0},{0.0,-34.05},{25.0,-52.36}}, color={170,0,0})}));
    extends BioChem.Compartments.Compartment;
    Substances.Substance irPMembIns(c.start=0) "Phosphorylated insulin receptor at plasma membrane, one insulin bound" annotation(Placement(transformation(origin={10,30}, extent={{-10,-10},{10,10}})));
    Reactions.MassAction.Irreversible.UniUni.Uui uui(k1=2500/60) annotation(Placement(transformation(origin={-10,30}, extent={{-10,-10},{10,10}})));
    Substances.Substance irInt(c.start=1/10000000000000.0) "Internal IR" annotation(Placement(transformation(origin={-70,-50}, extent={{-10,-10},{10,10}})));
    Substances.Substance irPIntIns(c.start=0) "Internal phosphorylated insulin receptor, one insulin" annotation(Placement(transformation(origin={-34,-10}, extent={{-10,-10},{10,10}})));
    Substances.Substance irPInt2Ins(c.start=0) "Internal phosphorylated insulin receptor, two insulin bound" annotation(Placement(transformation(origin={-4,-10}, extent={{-10,-10},{10,10}})));
    Reactions.MassAction.Irreversible.UniUni.Uui uui2(k1=0.461/60) annotation(Placement(transformation(origin={-38,-50}, extent={{-10,-10},{10,10}}, rotation=180)));
    Reactions.MassAction.Reversible.BiUni.Bur bur2(k1=60000000/60, k2=100*0.2/60) annotation(Placement(transformation(origin={30,50}, extent={{-10,-10},{10,10}})));
    Reactions.MassAction.Reversible.BiUni.Bur bur1(k2=0.2/60, k1=60000000/60) annotation(Placement(transformation(origin={-54,50}, extent={{-10,-10},{10,10}})));
    Reactions.MassAction.Reversible.UniUni.Uur uur5(k2=0.003/60, k1=0.003/9/60) annotation(Placement(transformation(origin={-70,-10}, extent={{-10,-10},{10,10}}, rotation=270)));
    Reactions.MassAction.Reversible.UniUni.Uur uur3(k1=0.00021/60, k2=0.0021/60) annotation(Placement(transformation(origin={20,10}, extent={{-10,-10},{10,10}})));
    Reactions.MassAction.Irreversible.UniUni.Uui uui1(k1=0.461/60) annotation(Placement(transformation(origin={-51.5948,-30}, extent={{-10,-10},{10,10}}, rotation=180)));
    Reactions.MassAction.Irreversible.UniUni.Uui uui3(k1=0.2/60) annotation(Placement(transformation(origin={-50,20}, extent={{-10,-10},{10,10}}, rotation=180)));
    Substances.Substance Insulin(c.start=1/10000000) "Insulin" annotation(Placement(transformation(origin={-70,70}, extent={{-10,-10},{10,10}})));
    Reactions.MassAction.Reversible.UniUni.Uur uur2(k1=0.00021/60, k2=0.0021/60) annotation(Placement(transformation(origin={-17.5,10}, extent={{-10,-10},{10,10}})));
    Substances.Substance irMembIns(c.start=0) "Insulin receptor at plasma membrane, one insulin bound" annotation(Placement(transformation(origin={-30,30}, extent={{-10,-10},{10,10}})));
    Substances.Substance irMemb(c.start=9/10000000000000.0) annotation(Placement(transformation(origin={-70,30}, extent={{-10,-10},{10,10}})));
    Substances.Substance irPMemb2Ins(c.start=0) "Phosphorylated insulin receptor at plasma membrane, two insulin bound" annotation(Placement(transformation(origin={50,30}, extent={{-10,-10},{10,10}})));
    Interfaces.Nodes.SubstanceConnector sInsulin "Connector for insulin" annotation(Placement(transformation(origin={0.0,100.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=180), iconTransformation(origin={-0.0,115.0}, extent={{-15.0,-15.0},{15.0,15.0}}, rotation=180)));
  equation
    connect(sInsulin,Insulin.n1) annotation(Line(points={{0.0,100.0},{0.0,70.04},{-70.0,70.0}}, smooth=Smooth.Bezier));
    connect(irPInt2Ins.n1,uur3.s1) annotation(Line(points={{-4,-10},{-4.267,10.24},{8.75,10}}, smooth=Smooth.Bezier));
    connect(uur5.p1,irInt.n1) annotation(Line(points={{-70,-21.25},{-70,-50}}));
    connect(bur2.s2,irPMembIns.n1) annotation(Line(points={{18.75,45},{10,46.2},{10,30}}, smooth=Smooth.Bezier));
    connect(uui3.s1,irPIntIns.n1) annotation(Line(points={{-38.75,20},{-37.5,18.75},{-34,11.25},{-34,-10}}, smooth=Smooth.Bezier));
    connect(uui1.p1,irInt.n1) annotation(Line(points={{-62.8448,-30},{-70.27,-29.87},{-70,-50}}, smooth=Smooth.Bezier));
    connect(uui1.s1,irPIntIns.n1) annotation(Line(points={{-40.3448,-30},{-34,-30},{-34,-10}}, smooth=Smooth.Bezier));
    connect(uui2.s1,irPInt2Ins.n1) annotation(Line(points={{-26.75,-50},{-4.07,-50.04},{-4,-10}}, smooth=Smooth.Bezier));
    connect(uui.p1,irPMembIns.n1) annotation(Line(points={{1.25,30},{10,30}}));
    connect(irInt.n1,uui2.p1) annotation(Line(points={{-70,-50},{-49.25,-50}}));
    connect(Insulin.n1,bur1.s1) annotation(Line(points={{-70,70},{-70.07,54.05},{-65.25,55}}, smooth=Smooth.Bezier));
    connect(Insulin.n1,bur2.s1) annotation(Line(points={{-70,70},{-30,69.99},{-7.5,54.62},{18.75,55}}, smooth=Smooth.Bezier));
    connect(uur2.p1,irPMembIns.n1) annotation(Line(points={{-6.25,10},{0,10},{10,30}}, smooth=Smooth.Bezier));
    connect(irPIntIns.n1,uur2.s1) annotation(Line(points={{-34,-10},{-34,10},{-28.75,10}}, smooth=Smooth.Bezier));
    connect(irMembIns.n1,uui.s1) annotation(Line(points={{-30,30},{-21.25,30}}));
    connect(bur1.p1,irMembIns.n1) annotation(Line(points={{-42.75,50},{-30,50},{-30,30}}, smooth=Smooth.Bezier));
    connect(irMemb.n1,uui3.p1) annotation(Line(points={{-70,30},{-69.7,20.2},{-61.25,20}}, smooth=Smooth.Bezier));
    connect(irMemb.n1,bur1.s2) annotation(Line(points={{-70,30},{-70.07,46.2},{-65.25,45}}, smooth=Smooth.Bezier));
    connect(uur5.s1,irMemb.n1) annotation(Line(points={{-70,1.25},{-70,30}}));
    connect(bur2.p1,irPMemb2Ins.n1) annotation(Line(points={{41.25,50},{50.01,50},{50,30}}, smooth=Smooth.Bezier));
    connect(uur3.p1,irPMemb2Ins.n1) annotation(Line(points={{31.25,10},{50,10},{50,30}}, smooth=Smooth.Bezier));
  end InsulinSignaling_Sedaghat;

  model Glycolysis "Glycolysis"
    annotation(Documentation(info="<html>
<h1>Glycolysis</h1>
 <p>
 A simple glycolysis model.
 The parameter values in this model are arbitrarily chosen,
 to obtain a fully functional model, realistic parameter values must be used.
 </p>
 </html>", revisions=""), Icon(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10}), graphics={Line(points={{0,100},{0,25},{-25,0},{0,-25},{0,-75},{-25,-100}}),Line(points={{0,25},{25,0},{-25,0}}),Line(points={{0,-75},{25,-100}})}), Diagram(coordinateSystem(extent={{-105,148.5},{105,-148.5}}, preserveAspectRatio=true, grid={10,10})));
    extends BioChem.Compartments.Compartment;
    Reactions.MassAction.Irreversible.UniUni.Uui uui1 annotation(Placement(transformation(origin={1.83964e-13,-3.75}, extent={{-7.5,-7.5},{7.5,7.5}}, rotation=270)));
    Substances.Substance PEP1(c.start=0) "Phosphoenol pyruvate" annotation(Placement(transformation(origin={2.96307e-12,-108.75}, extent={{-7.5,-7.5},{7.5,7.5}}, rotation=-270)));
    Reactions.MassAction.Irreversible.UniUni.Uui uui4 annotation(Placement(transformation(origin={1.19682e-13,-123.75}, extent={{-7.5,-7.5},{7.5,7.5}}, rotation=-90)));
    Reactions.MassAction.Reversible.UniUni.Uur uur2 annotation(Placement(transformation(origin={1.1291e-13,-63.75}, extent={{-7.5,-7.5},{7.5,7.5}}, rotation=-270)));
    Substances.Substance G13BP(c.start=0) "Glycerate-1,3-bisphosphate" annotation(Placement(transformation(origin={1.16462e-13,-18.75}, extent={{-7.5,-7.5},{7.5,7.5}}, rotation=-270)));
    Reactions.MassAction.Reversible.UniUni.Uur uur(k1=1) annotation(Placement(transformation(origin={1.13798e-13,93.75}, extent={{-7.5,-7.5},{7.5,7.5}}, rotation=-90)));
    Reactions.MassAction.Reversible.UniUni.Uur uur1 annotation(Placement(transformation(origin={1.17351e-13,18.75}, extent={{-7.5,-7.5},{7.5,7.5}})));
    Reactions.MassAction.Irreversible.UniBi.Ubi ubi annotation(Placement(transformation(origin={1.60982e-14,33.75}, extent={{-7.5,-7.5},{7.5,7.5}}, rotation=270)));
    Reactions.MassAction.Irreversible.UniUni.Uui uui3 annotation(Placement(transformation(origin={-6.3094e-13,-93.75}, extent={{-7.5,-7.5},{7.5,7.5}}, rotation=270)));
    Substances.Substance G2P1(c.start=0) "Glycerate-2-phosphate" annotation(Placement(transformation(origin={1.03362e-13,-78.75}, extent={{-7.5,-7.5},{7.5,7.5}}, rotation=-630)));
    Reactions.MassAction.Irreversible.UniUni.Uui uui2 annotation(Placement(transformation(origin={1.14242e-13,-33.75}, extent={{-7.5,-7.5},{7.5,7.5}}, rotation=-90)));
    Substances.Substance GA3P(c.start=0) "Glycerate-3-phosphate" annotation(Placement(transformation(origin={1.06248e-13,-48.75}, extent={{-7.5,-7.5},{7.5,7.5}}, rotation=-270)));
    Reactions.MassAction.Irreversible.UniUni.Uui uui5(k1=1) annotation(Placement(transformation(origin={1.03287e-11,123.75}, extent={{-7.5,-7.5},{7.5,7.5}}, rotation=-90)));
    Reactions.MassAction.Irreversible.UniUni.Uui uui annotation(Placement(transformation(origin={1.91513e-13,63.75}, extent={{-7.5,-7.5},{7.5,7.5}}, rotation=-90)));
    Substances.Substance Pyruvate(c.start=0) annotation(Placement(transformation(origin={1.19571e-13,-138.75}, extent={{-7.5,-7.5},{7.5,7.5}}, rotation=-360)));
    Substances.Substance Glucose(c.start=1) "Glucose" annotation(Placement(transformation(origin={3.32706e-16,139.222}, extent={{-7.5,-7.5},{7.5,7.5}}, rotation=-270)));
    Substances.Substance G6P(c.start=0) "Glucose-6-phosphate" annotation(Placement(transformation(origin={1.13798e-13,108.75}, extent={{-7.5,-7.5},{7.5,7.5}}, rotation=-270)));
    Substances.Substance F6P(c.start=0) "Fructose-6-phosphate" annotation(Placement(transformation(origin={2.39286e-12,78.75}, extent={{-7.5,-7.5},{7.5,7.5}}, rotation=-630)));
    Substances.Substance F16BP(c.start=0) "Fructose-1,6-bisphosphate" annotation(Placement(transformation(origin={1.13354e-13,48.75}, extent={{-7.5,-7.5},{7.5,7.5}}, rotation=-270)));
    Substances.Substance G3P(c.start=0) "Glyceraldehyde-3-phosphate" annotation(Placement(transformation(origin={-15,18.75}, extent={{-7.5,-7.5},{7.5,7.5}})));
    Substances.Substance DHAP(c.start=0) "Dihydroxyacetone phosphate" annotation(Placement(transformation(origin={15,18.75}, extent={{-7.5,-7.5},{7.5,7.5}})));
    BioChem.Interfaces.Nodes.SubstanceConnector sGlucose annotation(Placement(transformation(origin={0.0,147.5}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=180), iconTransformation(origin={0.0,115.0}, extent={{-15.0,-15.0},{15.0,15.0}}, rotation=180)));
    Interfaces.Nodes.SubstanceConnector sPyruvate annotation(Placement(transformation(origin={-22.5,-147.5}, extent={{-10.0,-10.0},{10.0,10.0}}), iconTransformation(origin={-27.5,-112.5}, extent={{-12.5,-12.5},{12.5,12.5}})));
    Interfaces.Nodes.SubstanceConnector sPyruvate4 annotation(Placement(transformation(origin={22.5,-147.5}, extent={{-10.0,-10.0},{10.0,10.0}}), iconTransformation(origin={27.5,-112.5}, extent={{-12.5,-12.5},{12.5,12.5}})));
  equation
    connect(Pyruvate.n1,sPyruvate4) annotation(Line(points={{0.0,-138.75},{22.5,-139.4},{22.5,-147.5}}, smooth=Smooth.Bezier));
    connect(sPyruvate,Pyruvate.n1) annotation(Line(points={{-22.5,-147.5},{-22.5,-138.8},{0.0,-138.75}}, smooth=Smooth.Bezier));
    connect(sGlucose,Glucose.n1) annotation(Line(points={{0.0,147.5},{0.0,139.222}}));
    connect(GA3P.n1,uur2.p1) annotation(Line(points={{1.06248e-13,-48.75},{1.12893e-13,-55.3125}}));
    connect(uur2.s1,G2P1.n1) annotation(Line(points={{1.12893e-13,-72.1875},{1.03362e-13,-78.75}}));
    connect(uui3.p1,PEP1.n1) annotation(Line(points={{-6.30923e-13,-102.188},{2.96307e-12,-108.75}}));
    connect(uui1.p1,G13BP.n1) annotation(Line(points={{1.83981e-13,-12.1875},{1.16462e-13,-18.75}}));
    connect(uui2.p1,GA3P.n1) annotation(Line(points={{1.14259e-13,-42.1875},{1.06248e-13,-48.75}}));
    connect(G2P1.n1,uui3.s1) annotation(Line(points={{1.03362e-13,-78.75},{-6.30957e-13,-85.3125}}));
    connect(PEP1.n1,uui4.s1) annotation(Line(points={{2.96307e-12,-108.75},{1.19665e-13,-115.312}}));
    connect(G13BP.n1,uui2.s1) annotation(Line(points={{1.16462e-13,-18.75},{1.14225e-13,-25.3125}}));
    connect(uui4.p1,Pyruvate.n1) annotation(Line(points={{1.19699e-13,-132.188},{1.19571e-13,-138.75}}));
    connect(Glucose.n1,uui5.s1) annotation(Line(points={{3.32706e-16,139.222},{1.03287e-11,132.188}}));
    connect(uui5.p1,G6P.n1) annotation(Line(points={{1.03287e-11,115.312},{1.13798e-13,108.75}}));
    connect(G6P.n1,uur.s1) annotation(Line(points={{1.13798e-13,108.75},{1.13815e-13,102.188}}));
    connect(F6P.n1,uui.s1) annotation(Line(points={{2.39286e-12,78.75},{1.91496e-13,72.1875}}));
    connect(uur.p1,F6P.n1) annotation(Line(points={{1.13815e-13,85.3125},{2.39286e-12,78.75}}));
    connect(F16BP.n1,ubi.s1) annotation(Line(points={{1.13354e-13,48.75},{1.60815e-14,42.1875}}));
    connect(uui.p1,F16BP.n1) annotation(Line(points={{1.9153e-13,55.3125},{1.13354e-13,48.75}}));
    connect(ubi.p2,G3P.n1) annotation(Line(points={{-3.75,25.3125},{-15,26.25},{-15,18.75}}, smooth=Smooth.Bezier));
    connect(G3P.n1,uui1.s1) annotation(Line(points={{-15,18.75},{-7.5,11.25},{1.138e-13,7.719},{1.83947e-13,4.6875}}, smooth=Smooth.Bezier));
    connect(uur1.s1,G3P.n1) annotation(Line(points={{-8.4375,18.75},{-15,18.75}}));
    connect(ubi.p1,DHAP.n1) annotation(Line(points={{3.75,25.3125},{15,26.25},{15,18.75}}, smooth=Smooth.Bezier));
    connect(DHAP.n1,uur1.p1) annotation(Line(points={{15,18.75},{8.4375,18.75}}));
  end Glycolysis;

  model EnzMM "An enzymatic reaction with Michaelis-Menten kinetics"
    annotation(Diagram(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})));
    annotation(Documentation(info="<html>
<h1>EnzMM</h1>

 <p>
 An enzymatic reaction with Michaelis-Menten kinetics.
 The parameter values in this model are arbitrarily chosen,
 to obtain a fully functional model, realistic parameter values must be used.
 </p>
 </html>", revisions=""), Icon(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10}), graphics={Ellipse(fillColor={170,0,0}, fillPattern=FillPattern.Solid, extent={{-100,-25},{-50,25}}),Ellipse(fillColor={0,85,0}, fillPattern=FillPattern.Solid, extent={{50,-25},{100,25}}),Line(points={{-50,0},{50,0}}, arrow={Arrow.Open,Arrow.Open}, arrowSize=30)}));
    extends BioChem.Compartments.Compartment;
    Substances.Substance F6P(c.start=2) "Fructose-6-phosphate" annotation(Placement(transformation(origin={10,10}, extent={{-10,-10},{10,10}})));
    Reactions.MichaelisMenten.Uur uur(vF=1.5, KmS=0.1, KmP=0.05) annotation(Placement(transformation(origin={-10,10}, extent={{-10,-10},{10,10}})));
    Substances.Substance G6P(c.start=1) "Glucose-6-phosphate" annotation(Placement(transformation(origin={-30,10}, extent={{-10,-10},{10,10}})));
  equation
    connect(uur.p1,F6P.n1) annotation(Line(points={{1.25,10},{10,10}}));
    connect(G6P.n1,uur.s1) annotation(Line(points={{-30,10},{-21.25,10}}));
  end EnzMM;

  package GMO "Goldbeter1991_MinMitOscil"
    extends BioChem.Icons.Example;
    model cell "cell"
      extends BioChem.Compartments.MainCompartment(V(start=1));
      import BioChem.Math.*;
      import BioChem.Constants.*;
      model C_
        extends BioChem.Substances.Substance;
        annotation(__MathCore(RDF="<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
    <rdf:Description rdf:about=\"#_230475\">
      <bqbiol:isVersionOf>
        <rdf:Bag>
          <rdf:li rdf:resource=\"urn:miriam:interpro:IPR006670\"/>
        </rdf:Bag>
      </bqbiol:isVersionOf>
    </rdf:Description>
  </rdf:RDF>"));
      end C_;

      model M_
        extends BioChem.Substances.Substance;
        annotation(__MathCore(RDF="<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
    <rdf:Description rdf:about=\"#_230495\">
      <bqbiol:hasVersion>
        <rdf:Bag>
          <rdf:li rdf:resource=\"urn:miriam:uniprot:P35567\"/>
          <rdf:li rdf:resource=\"urn:miriam:uniprot:P24033\"/>
        </rdf:Bag>
      </bqbiol:hasVersion>
    </rdf:Description>
  </rdf:RDF>"));
      end M_;

      model X_
        extends BioChem.Substances.Substance;
      end X_;

      model reaction1_
        extends BioChem.Interfaces.Reactions.Uui;
        annotation(__MathCore(RDF="<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
    <rdf:Description rdf:about=\"#_230535\">
      <bqbiol:isVersionOf>
        <rdf:Bag>
          <rdf:li rdf:resource=\"urn:miriam:obo.go:GO%3A0006412\"/>
        </rdf:Bag>
      </bqbiol:isVersionOf>
    </rdf:Description>
  </rdf:RDF>"));
        parameter Real vi=0.025;
        outer Real cell_V "Variable used to access the volume of an outer compartment. Do not edit.";
      equation
        rr=cell_V*vi;
      end reaction1_;

      model reaction2_
        extends BioChem.Interfaces.Reactions.Uui;
        annotation(__MathCore(RDF="<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
    <rdf:Description rdf:about=\"#_230555\">
      <bqbiol:isVersionOf>
        <rdf:Bag>
          <rdf:li rdf:resource=\"urn:miriam:obo.go:GO%3A0008054\"/>
        </rdf:Bag>
      </bqbiol:isVersionOf>
    </rdf:Description>
  </rdf:RDF>"));
        parameter Real kd=0.01;
        outer Real cell_V "Variable used to access the volume of an outer compartment. Do not edit.";
      equation
        rr=s1.c*cell_V*kd;
      end reaction2_;

      model reaction3_
        extends BioChem.Interfaces.Reactions.Uui;
        extends BioChem.Interfaces.Reactions.Modifiers.Modifier;
        annotation(__MathCore(RDF="<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
    <rdf:Description rdf:about=\"#_230575\">
      <bqbiol:isVersionOf>
        <rdf:Bag>
          <rdf:li rdf:resource=\"urn:miriam:obo.go:GO%3A0008054\"/>
        </rdf:Bag>
      </bqbiol:isVersionOf>
    </rdf:Description>
  </rdf:RDF>"));
        parameter Real vd=0.25;
        parameter Real Kd=0.02;
        outer Real cell_V "Variable used to access the volume of an outer compartment. Do not edit.";
      equation
        rr=s1.c*cell_V*vd*m1.c*(s1.c + Kd)^(-1);
      end reaction3_;

      model reaction4_
        extends BioChem.Interfaces.Reactions.Uui;
        annotation(__MathCore(RDF="<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
    <rdf:Description rdf:about=\"#_230595\">
      <bqbiol:isVersionOf>
        <rdf:Bag>
          <rdf:li rdf:resource=\"urn:miriam:ec-code:3.1.3.16\"/>
          <rdf:li rdf:resource=\"urn:miriam:obo.go:GO%3A0006470\"/>
          <rdf:li rdf:resource=\"urn:miriam:obo.go:GO%3A0045737\"/>
        </rdf:Bag>
      </bqbiol:isVersionOf>
    </rdf:Description>
  </rdf:RDF>"));
        parameter Real K1=0.005;
        outer Real cell_V "Variable used to access the volume of an outer compartment. Do not edit.";
        Real V1;
      equation
        rr=cell_V*(1 + (-1)*p1.c)*V1*(K1 + (-1)*p1.c + 1)^(-1);
      end reaction4_;

      model reaction5_
        extends BioChem.Interfaces.Reactions.Uui;
        annotation(__MathCore(RDF="<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
    <rdf:Description rdf:about=\"#_230615\">
      <bqbiol:isVersionOf>
        <rdf:Bag>
          <rdf:li rdf:resource=\"urn:miriam:ec-code:2.7.10.2\"/>
          <rdf:li rdf:resource=\"urn:miriam:obo.go:GO%3A0045736\"/>
          <rdf:li rdf:resource=\"urn:miriam:obo.go:GO%3A0006468\"/>
        </rdf:Bag>
      </bqbiol:isVersionOf>
    </rdf:Description>
  </rdf:RDF>"));
        parameter Real V2=1.5;
        parameter Real K2=0.005;
        outer Real cell_V "Variable used to access the volume of an outer compartment. Do not edit.";
      equation
        rr=cell_V*s1.c*V2*(K2 + s1.c)^(-1);
      end reaction5_;

      model reaction6_
        extends BioChem.Interfaces.Reactions.Uui;
        parameter Real K3=0.005;
        outer Real cell_V "Variable used to access the volume of an outer compartment. Do not edit.";
        Real V3;
      equation
        rr=cell_V*V3*(1 + (-1)*p1.c)*(K3 + (-1)*p1.c + 1)^(-1);
      end reaction6_;

      model reaction7_
        extends BioChem.Interfaces.Reactions.Uui;
        parameter Real K4=0.005;
        parameter Real V4=0.5;
        outer Real cell_V "Variable used to access the volume of an outer compartment. Do not edit.";
      equation
        rr=cell_V*V4*s1.c*(K4 + s1.c)^(-1);
      end reaction7_;

      annotation(__MathCore(RDF="<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
    <rdf:Description rdf:about=\"#_230461\">
      <bqbiol:is>
        <rdf:Bag>
          <rdf:li rdf:resource=\"urn:miriam:obo.go:GO%3A0005623\"/>
        </rdf:Bag>
      </bqbiol:is>
    </rdf:Description>
  </rdf:RDF>"), Documentation(info="<html>
<h1>A Simple Mitotic Oscillator</h1>

This example is a modelica version of the model presented in

<i>A minimal cascade model for the miotic oscillator involving cyclin and cdc2 kinase</i> by Goldbeter A. (Proc. Nati. Acad. Sci. USA
Vol. 88, pp. 9107-9111, October 1991
Cell Biology.)

<h2>Abstract</h2>
A minimal model for the mitotic oscillator is presented. The model, built on recent experimental advances, is based on the cascade of post-translational modification that modulates the activity of cdc2 kinase during the cell cycle. The model pertains to the situation encountered in early amphibian embryos, where the accumulation of cyclin suffices to trigger the onset of mitosis. In the first cycle of the bicyclic cascade model, cyclin promotes the activation of cdc2 kinase through reversible dephosphorylation, and in the second cycle, cdc2 kinase activates a cyclin protease by reversible phosphorylation. That cyclin activates cdc2 kinase while the kinase triggers the degradation of cyclin has suggested that oscillations may originate from such a negative feedback loop [F&eacute;lix, M. A., Labb&eacute;, J. C., Dor&eacute;e, M., Hunt, T. & Karsenti, E. (1990) Nature (London) 346, 379-382]. This conjecture is corroborated by the model, which indicates that sustained oscillations of the limit cycle type can arise in the cascade, provided that a threshold exists in the activation of cdc2 kinase by cyclin and in the activation of cyclin proteolysis by cdc2 kinase. The analysis shows how miototic oscillations may readily arise from time lags associated with these thresholds and from the delayed negative feedback provided by cdc2-induced cyclin degradation. A mechanism for the origin of the thresholds is proposed in terms of the phenomenon of zero-order ultrasensitivity previously described for biochemical systems regulated by covalent modification.

<h2>Simulations</h2>
The simulation results are shown in the
 <a href=\"#fig1\">Figure 1</a>. This plot corresponds to Fig 3 of the paper (Goldbeter 1991).

<a name=\"fig1\"></a>
<img src=\"modelica://BioChem/Resources/Images/Cell.png\" alt=\"Fig1: Simulation results\">

</html>", revisions=""), experiment(StartTime=0.0, StopTime=100, NumberOfIntervals=-1, Algorithm="dassl", Tolerance=1e-06));
      inner Real cell_V=V "Variable used to make the compartment volume accessible for inner components. Do not edit.";
      BioChem.Examples.GMO.cell.C_ C(c(start=0.01)) "Cyclin" annotation(Placement(transformation(origin={80.0,0.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=-270)));
      BioChem.Examples.GMO.cell.M_ M(c(start=0.01)) "CDC-2 Kinase" annotation(Placement(transformation(origin={-70.0,70.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=-180)));
      BioChem.Examples.GMO.cell.X_ X(c(start=0.01)) "Cyclin Protease" annotation(Placement(transformation(origin={50.0,-30.0}, extent={{-10.0,-10.0},{10.0,10.0}})));
      Real V1 "V1";
      Real V3 "V3";
      parameter Real VM1=3 "VM1";
      parameter Real VM3=1 "VM3";
      parameter Real Kc=0.5 "Kc";
      BioChem.Substances.AmbientSubstance ambientSubstance annotation(Placement(transformation(origin={-10.0,30.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=-180)));
      BioChem.Examples.GMO.cell.reaction1_ reaction1 "creation of cyclin" annotation(Placement(transformation(origin={50.0,40.0}, extent={{-10.0,10.0},{10.0,-10.0}})));
      BioChem.Examples.GMO.cell.reaction2_ reaction2 "default degradation of cyclin" annotation(Placement(transformation(origin={30.0,-60.0}, extent={{-10.0,10.0},{10.0,-10.0}}, rotation=180)));
      BioChem.Examples.GMO.cell.reaction3_ reaction3 "cdc2 kinase triggered degration of cyclin" annotation(Placement(transformation(origin={50.0,10.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=-180)));
      BioChem.Examples.GMO.cell.reaction4_ reaction4(V1=V1) "activation of cdc2 kinase" annotation(Placement(transformation(origin={-70.0,40.0}, extent={{10.0,-10.0},{-10.0,10.0}}, rotation=270)));
      BioChem.Examples.GMO.cell.reaction5_ reaction5 "deactivation of cdc2 kinase" annotation(Placement(transformation(origin={-30.0,70.0}, extent={{-10.0,10.0},{10.0,-10.0}})));
      BioChem.Examples.GMO.cell.reaction6_ reaction6(V3=V3) "activation of cyclin protease" annotation(Placement(transformation(origin={10.0,-37.8911}, extent={{-10.0,-10.0},{10.0,10.0}})));
      BioChem.Examples.GMO.cell.reaction7_ reaction7 "deactivation of cyclin protease" annotation(Placement(transformation(origin={20.0,-10.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=-180)));
    equation
      connect(X.n1,reaction7.s1) annotation(Line(origin={43.75,-16.6667}, points={{6.25,-13.3333},{6.25,6.6667},{-12.5,6.6667}}, smooth=Smooth.Bezier));
      connect(ambientSubstance.n1,reaction7.p1) annotation(Line(origin={-3.75,3.3333}, points={{-6.25,26.6667},{-6.25,-13.3333},{12.5,-13.3333}}, smooth=Smooth.Bezier));
      connect(X.n1,reaction6.p1) annotation(Line(origin={30.5633,-33.9455}, points={{19.4367,3.9455},{-5.0617,3.9455},{-5.0617,-3.9455},{-9.3133,-3.9455}}, smooth=Smooth.Bezier));
      connect(X.n1,reaction3.m1) annotation(Line(origin={50.0,-14.5}, points={{0.0,-15.5},{0.0,15.5}}, smooth=Smooth.Bezier));
      connect(ambientSubstance.n1,reaction6.s1) annotation(Line(origin={-7.0833,-15.2607}, points={{-2.9167,45.2607},{-2.9167,-22.6304},{5.8333,-22.6304}}, smooth=Smooth.Bezier));
      connect(M.n1,reaction4.p1) annotation(Line(origin={-70.0,60.625}, points={{0.0,9.375},{0.0,-9.375}}, smooth=Smooth.Bezier));
      connect(ambientSubstance.n1,reaction4.s1) annotation(Line(origin={-39.2,27.5494}, points={{29.2,2.4506},{16.2,2.4506},{16.2,-3.0509},{-30.8,-3.0509},{-30.8,1.2006}}, smooth=Smooth.Bezier));
      connect(M.n1,reaction5.s1) annotation(Line(origin={-55.625,70.0}, points={{-14.375,0.0},{14.375,0.0}}, smooth=Smooth.Bezier));
      connect(ambientSubstance.n1,reaction5.p1) annotation(Line(origin={-12.9167,56.6667}, points={{2.9167,-26.6667},{2.9167,13.3333},{-5.8333,13.3333}}, smooth=Smooth.Bezier));
      connect(C.n1,reaction2.s1) annotation(Line(origin={67.0833,-40.0}, points={{12.9167,40.0},{12.9167,-20.0},{-25.8333,-20.0}}, smooth=Smooth.Bezier));
      connect(ambientSubstance.n1,reaction2.p1) annotation(Line(origin={-50.4167,-20.9454}, points={{40.4167,50.9454},{-9.5833,-30.588},{69.1667,-39.0546}}, smooth=Smooth.Bezier));
      connect(C.n1,reaction1.p1) annotation(Line(origin={73.75,26.6667}, points={{6.25,-26.6667},{6.25,13.3333},{-12.5,13.3333}}, smooth=Smooth.Bezier));
      connect(ambientSubstance.n1,reaction1.s1) annotation(Line(origin={24.4367,35.0}, points={{-34.4367,-5.0},{10.0617,-5.0},{10.0617,5.0},{14.3133,5.0}}, smooth=Smooth.Bezier));
      connect(ambientSubstance.n1,reaction3.p1) annotation(Line(origin={24.4367,20.0}, points={{-34.4367,10.0},{10.0617,10.0},{10.0617,-10.0},{14.3133,-10.0}}, smooth=Smooth.Bezier));
      connect(C.n1,reaction3.s1) annotation(Line(origin={68.0633,5.0}, points={{11.9367,-5.0},{-2.5617,-5.0},{-2.5617,5.0},{-6.8133,5.0}}, smooth=Smooth.Bezier));
      V1=C.c*VM1*(C.c + Kc)^(-1);
      V3=M.c*VM3;
    end cell;

    annotation(Documentation(info="<html>
<h1>A Simple Mitotic Oscillator</h1>

This example is a modelica version of the model presented in

<i>A minimal cascade model for the miotic oscillator involving cyclin and cdc2 kinase</i> by Goldbeter A. (Proc. Nati. Acad. Sci. USA
Vol. 88, pp. 9107-9111, October 1991
Cell Biology.)

<br>
<br>

See
<a href=\"Modelica://BioChem.Examples.GMO.cell\">cell</a>
 for more documentation and simulation results.
</html>", revisions=""));
    annotation(__MathCore(RDF="<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
    <rdf:Description rdf:about=\"#_180340\">
      <dc:creator rdf:parseType=\"Resource\">
        <rdf:Bag>
          <rdf:li rdf:parseType=\"Resource\">
            <vCard:N rdf:parseType=\"Resource\">
              <vCard:Family>Shapiro</vCard:Family>
              <vCard:Given>Bruce</vCard:Given>
            </vCard:N>
            <vCard:EMAIL>bshapiro@jpl.nasa.gov</vCard:EMAIL>
            <vCard:ORG>
              <vCard:Orgname>NASA Jet Propulsion Laboratory</vCard:Orgname>
            </vCard:ORG>
          </rdf:li>
        </rdf:Bag>
      </dc:creator>
      <dcterms:created rdf:parseType=\"Resource\">
        <dcterms:W3CDTF>2005-02-06T23:39:40Z</dcterms:W3CDTF>
      </dcterms:created>
      <dcterms:modified rdf:parseType=\"Resource\">
        <dcterms:W3CDTF>2008-08-21T11:31:07Z</dcterms:W3CDTF>
      </dcterms:modified>
      <bqmodel:is>
        <rdf:Bag>
          <rdf:li rdf:resource=\"urn:miriam:biomodels.db:BIOMD0000000003\"/>
        </rdf:Bag>
      </bqmodel:is>
      <bqmodel:isDescribedBy>
        <rdf:Bag>
          <rdf:li rdf:resource=\"urn:miriam:pubmed:1833774\"/>
        </rdf:Bag>
      </bqmodel:isDescribedBy>
      <bqbiol:isHomologTo>
        <rdf:Bag>
          <rdf:li rdf:resource=\"urn:miriam:reactome:REACT_152\"/>
        </rdf:Bag>
      </bqbiol:isHomologTo>
      <bqbiol:isVersionOf>
        <rdf:Bag>
          <rdf:li rdf:resource=\"urn:miriam:kegg.pathway:hsa04110\"/>
          <rdf:li rdf:resource=\"urn:miriam:obo.go:GO%3A0000278\"/>
        </rdf:Bag>
      </bqbiol:isVersionOf>
      <bqbiol:is>
        <rdf:Bag>
          <rdf:li rdf:resource=\"urn:miriam:taxonomy:8292\"/>
        </rdf:Bag>
      </bqbiol:is>
    </rdf:Description>
  </rdf:RDF>"));
  end GMO;

  package centralMetabolism
    extends BioChem.Icons.Example;
    model cytosol "cytosol"
      extends BioChem.Compartments.Compartment(V(start=2));
      model DHAP_
        extends BioChem.Substances.Substance;
        annotation(__MathCore(RDF="<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
    <rdf:Description rdf:about=\"#\">
      <bqbiol:isVersionOf>
        <rdf:Bag>
          <rdf:li rdf:resource=\"http://www.genome.jp/kegg/#C00111 \"/>
        </rdf:Bag>
      </bqbiol:isVersionOf>
    </rdf:Description>
  </rdf:RDF>"));
      end DHAP_;

      model G3P_
        extends BioChem.Substances.Substance;
        annotation(__MathCore(RDF="<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
    <rdf:Description rdf:about=\"#\">
      <bqbiol:isVersionOf>
        <rdf:Bag>
          <rdf:li rdf:resource=\"http://www.genome.jp/kegg/#C00661\"/>
        </rdf:Bag>
      </bqbiol:isVersionOf>
    </rdf:Description>
  </rdf:RDF>"));
      end G3P_;

      model NADH_
        extends BioChem.Substances.Substance;
        annotation(__MathCore(RDF="<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
    <rdf:Description rdf:about=\"#\">
      <bqbiol:isVersionOf>
        <rdf:Bag>
          <rdf:li rdf:resource=\"http://www.genome.jp/kegg/#C00004\"/>
        </rdf:Bag>
      </bqbiol:isVersionOf>
    </rdf:Description>
  </rdf:RDF>"));
      end NADH_;

      model FDP_
        extends BioChem.Substances.Substance;
        annotation(__MathCore(RDF="<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
    <rdf:Description rdf:about=\"#\">
      <bqbiol:isVersionOf>
        <rdf:Bag>
          <rdf:li rdf:resource=\"http://www.genome.jp/kegg/#C05378\"/>
        </rdf:Bag>
      </bqbiol:isVersionOf>
    </rdf:Description>
  </rdf:RDF>"));
      end FDP_;

      model PYR_
        extends BioChem.Substances.Substance;
        annotation(__MathCore(RDF="<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
    <rdf:Description rdf:about=\"#\">
      <bqbiol:isVersionOf>
        <rdf:Bag>
          <rdf:li rdf:resource=\"http://www.genome.jp/kegg/#C00022\"/>
        </rdf:Bag>
      </bqbiol:isVersionOf>
    </rdf:Description>
  </rdf:RDF>"));
      end PYR_;

      model ADP_
        extends BioChem.Substances.Substance;
        annotation(__MathCore(RDF="<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
    <rdf:Description rdf:about=\"#\">
      <bqbiol:isVersionOf>
        <rdf:Bag>
          <rdf:li rdf:resource=\"http://www.genome.jp/kegg/#C00008\"/>
        </rdf:Bag>
      </bqbiol:isVersionOf>
    </rdf:Description>
  </rdf:RDF>"));
      end ADP_;

      model IMP_
        extends BioChem.Substances.Substance;
        annotation(__MathCore(RDF="<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
    <rdf:Description rdf:about=\"#\">
      <bqbiol:isVersionOf>
        <rdf:Bag>
          <rdf:li rdf:resource=\"http://www.genome.jp/kegg/#C00130\"/>
        </rdf:Bag>
      </bqbiol:isVersionOf>
    </rdf:Description>
  </rdf:RDF>"));
      end IMP_;

      model ATP_
        extends BioChem.Substances.SignalSubstance;
        annotation(__MathCore(RDF="<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
    <rdf:Description rdf:about=\"#\">
      <bqbiol:isVersionOf>
        <rdf:Bag>
          <rdf:li rdf:resource=\"http://www.genome.jp/kegg/#C00002\"/>
        </rdf:Bag>
      </bqbiol:isVersionOf>
    </rdf:Description>
  </rdf:RDF>"));
      end ATP_;

      model AMP_
        extends BioChem.Substances.Substance;
        annotation(__MathCore(RDF="<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
    <rdf:Description rdf:about=\"#\">
      <bqbiol:isVersionOf>
        <rdf:Bag>
          <rdf:li rdf:resource=\"http://www.genome.jp/kegg/#C00020\"/>
        </rdf:Bag>
      </bqbiol:isVersionOf>
    </rdf:Description>
  </rdf:RDF>"));
      end AMP_;

      model LAC_
        extends BioChem.Substances.Substance;
        annotation(__MathCore(RDF="<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
    <rdf:Description rdf:about=\"#\">
      <bqbiol:isVersionOf>
        <rdf:Bag>
          <rdf:li rdf:resource=\"http://www.genome.jp/kegg/#C01432\"/>
        </rdf:Bag>
      </bqbiol:isVersionOf>
    </rdf:Description>
  </rdf:RDF>"));
      end LAC_;

      model NAD_
        extends BioChem.Substances.SignalSubstance;
        annotation(__MathCore(RDF="<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
    <rdf:Description rdf:about=\"#\">
      <bqbiol:isVersionOf>
        <rdf:Bag>
          <rdf:li rdf:resource=\"http://www.genome.jp/kegg/#C00003\"/>
        </rdf:Bag>
      </bqbiol:isVersionOf>
    </rdf:Description>
  </rdf:RDF>"));
      end NAD_;

      model CP_
        extends BioChem.Substances.Substance;
        annotation(__MathCore(RDF="<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
    <rdf:Description rdf:about=\"#\">
      <bqbiol:isVersionOf>
        <rdf:Bag>
          <rdf:li rdf:resource=\"http://www.genome.jp/kegg/#C02305\"/>
        </rdf:Bag>
      </bqbiol:isVersionOf>
    </rdf:Description>
  </rdf:RDF>"));
      end CP_;

      model Cr_
        extends BioChem.Substances.SignalSubstance;
        annotation(__MathCore(RDF="<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
    <rdf:Description rdf:about=\"#\">
      <bqbiol:isVersionOf>
        <rdf:Bag>
          <rdf:li rdf:resource=\"http://www.genome.jp/kegg/#C00300\"/>
        </rdf:Bag>
      </bqbiol:isVersionOf>
    </rdf:Description>
  </rdf:RDF>"));
      end Cr_;

      model GLY_
        extends BioChem.Substances.BoundarySubstance;
        annotation(__MathCore(RDF="<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
    <rdf:Description rdf:about=\"#\">
      <bqbiol:isVersionOf>
        <rdf:Bag>
          <rdf:li rdf:resource=\"http://www.genome.jp/kegg/#C00182\"/>
        </rdf:Bag>
      </bqbiol:isVersionOf>
    </rdf:Description>
  </rdf:RDF>"));
      end GLY_;

      model PN_
        extends BioChem.Substances.SignalSubstance;
        annotation(__MathCore(RDF="<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
    <rdf:Description rdf:about=\"#\">
      <bqbiol:isVersionOf>
        <rdf:Bag>
          <rdf:li rdf:resource=\"http://www.genome.jp/kegg/#C00009\"/>
        </rdf:Bag>
      </bqbiol:isVersionOf>
    </rdf:Description>
  </rdf:RDF>"));
      end PN_;

      model G6P_
        extends BioChem.Substances.Substance;
        annotation(__MathCore(RDF="<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
    <rdf:Description rdf:about=\"#\">
      <bqbiol:isVersionOf>
        <rdf:Bag>
          <rdf:li rdf:resource=\"http://www.genome.jp/kegg/#C00092\"/>
        </rdf:Bag>
      </bqbiol:isVersionOf>
    </rdf:Description>
  </rdf:RDF>"));
      end G6P_;

      model F6P_
        extends BioChem.Substances.Substance;
        annotation(__MathCore(RDF="<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
    <rdf:Description rdf:about=\"#\">
      <bqbiol:isVersionOf>
        <rdf:Bag>
          <rdf:li rdf:resource=\"http://www.genome.jp/kegg/#C05345\"/>
        </rdf:Bag>
      </bqbiol:isVersionOf>
    </rdf:Description>
  </rdf:RDF>"));
      end F6P_;

      model jda_
        extends BioChem.Interfaces.Reactions.Uur(nS1=cytosol_V/bamp, nP1=cytosol_V);
        parameter Real KmAMP=0.3;
        parameter Real KmIMP=3.54545;
        parameter Real KcatDA=121;
        outer Real cytosol_V "Variable used to access the volume of an outer compartment. Do not edit.";
        input Real bamp;
      equation
        rr=KcatDA*s1.c/(KmAMP + s1.c) - 0.01*p1.c/(KmIMP + p1.c);
      end jda_;

      model vgpdh_
        extends BioChem.Interfaces.Reactions.Bbi(nS1=2*cytosol_V/badp);
        extends BioChem.Interfaces.Reactions.Modifiers.Modifier;
        parameter Real KcatGPDH=78595.6;
        parameter Real KmGPDH=0.0369;
        parameter Real KmADP=1.4;
        parameter Real KmPN=120;
        outer Real cytosol_V "Variable used to access the volume of an outer compartment. Do not edit.";
        input Real badp;
      equation
        rr=KcatGPDH*s2.c*s1.c*m1.c/((KmGPDH + s2.c)*(s1.c + KmADP)*(m1.c + KmPN));
      end vgpdh_;

      model vpfk_
        extends BioChem.Interfaces.Reactions.Ubi(nP2=cytosol_V/badp);
        parameter Real n_sbml=2;
        parameter Real KcatPFK=400;
        parameter Real KmF6P=3.49515;
        outer Real cytosol_V "Variable used to access the volume of an outer compartment. Do not edit.";
        input Real badp;
      equation
        rr=KcatPFK*s1.c^n_sbml/(KmF6P + s1.c^n_sbml);
      end vpfk_;

      model vald_
        extends BioChem.Interfaces.Reactions.Uui(nP1=2);
        parameter Real kt;
        parameter Real ka1=0.01;
        parameter Real ka2=1.65;
        parameter Real ka3=3000;
        parameter Real ka4=0.125;
        parameter Real ka5=340;
        parameter Real ka6=14000000.0;
        parameter Real ka7=56000;
      equation
        rr=(ka7*s1.c - ka6*p1.c*kt*p1.c)/(ka1 + ka2*p1.c + s1.c + ka3*p1.c*s1.c + ka4*kt*p1.c + ka5*p1.c*kt*p1.c);
      end vald_;

      model vldh_
        extends BioChem.Interfaces.Reactions.Bui;
        extends BioChem.Interfaces.Reactions.Modifiers.Modifier;
        parameter Real kia=0.00245;
        parameter Real kmb=0.137;
        parameter Real kip=7.3;
        parameter Real kmq=0.1;
        parameter Real kiq=0.5;
        parameter Real k1ib=0.1;
        parameter Real kmp=1;
        parameter Real kma=0.00844;
        parameter Real kib=0.228;
        parameter Real kf=458;
        parameter Real kr=135;
        parameter Real e0=8;
      equation
        rr=e0*(s2.c*s1.c*kf/(kia*kmb) - kr*p1.c*m1.c/(kiq*kmp))/(s2.c/kia + s2.c*s1.c/(kia*kmb) + s2.c*s1.c*p1.c/(kia*kip*kmb) + s2.c*kmq*p1.c/(kia*kiq*kmp) + (1 + s1.c/k1ib)*(1 + s1.c*kma/(kia*kmb) + kmq*p1.c/(kiq*kmp)) + m1.c/kiq + s1.c*kma*m1.c/(kia*kiq*kmb) + p1.c*m1.c/(kiq*kmp) + s1.c*p1.c*m1.c/(kib*kiq*kmp));
      end vldh_;

      model vpdh_
        extends BioChem.Interfaces.Reactions.Bui(nS2=cytosol_V/badp, nP1=3.67);
        extends BioChem.Interfaces.Reactions.Modifiers.Modifier;
        parameter Real KmPYR=0.5;
        parameter Real KcatPDH=1;
        outer Real cytosol_V "Variable used to access the volume of an outer compartment. Do not edit.";
        input Real badp;
      equation
        rr=KcatPDH*s1.c*m1.c/((s1.c + KmPYR)*(m1.c + 0.1));
      end vpdh_;

      model jak_
        extends BioChem.Interfaces.Reactions.Uur(nS1=cytosol_V/bamp, nP1=2*cytosol_V/badp);
        extends BioChem.Interfaces.Reactions.Modifiers.Modifier;
        parameter Real KcatAK=150000;
        outer Real cytosol_V "Variable used to access the volume of an outer compartment. Do not edit.";
        input Real bamp;
        input Real badp;
      equation
        rr=KcatAK*(m1.c*s1.c - p1.c*p1.c)/(1 + s1.c/0.1 + p1.c/0.1 + m1.c*(10 + s1.c/0.01) + p1.c*(10 + p1.c/0.01 + s1.c/3.49));
      end jak_;

      model vgph_
        extends BioChem.Interfaces.Reactions.Uui;
        extends BioChem.Interfaces.Reactions.Modifiers.MultipleModifiers(dimM=3);
        parameter Real kh;
        parameter Real KcatGPH=248;
        input Real bamp;
      equation
        rr=KcatGPH*m[3].c*(0.002 + m[2].c + m[1].c/bamp)/((0.014 + m[2].c + m[1].c/bamp)*(8*(0.01 + m[2].c + m[1].c/bamp)/(0.002 + m[2].c + m[1].c/bamp) + m[3].c));
      end vgph_;

      model jatpase_
        extends BioChem.Interfaces.Reactions.Uui(nP1=cytosol_V/badp);
        parameter Real KcatATPase=370 "I am unsure about this value";
        outer Real cytosol_V "Variable used to access the volume of an outer compartment. Do not edit.";
        input Real badp;
      equation
        rr=KcatATPase*s1.c/(s1.c + 0.05);
      end jatpase_;

      model jck_
        extends BioChem.Interfaces.Reactions.Bbi(nP1=cytosol_V/badp);
        parameter Real KcatCK=1970;
        outer Real cytosol_V "Variable used to access the volume of an outer compartment. Do not edit.";
        input Real badp;
      equation
        rr=KcatCK*(20*s1.c*s2.c/10.85 - 29.333*p1.c*p2.c/0.1)/(1 + s2.c/34.9 + p2.c/0.8 + s1.c*(1.43 + s2.c/10.85) + p1.c*(16.7 + p2.c/0.1 + s2.c/2.1));
      end jck_;

      inner Real cytosol_V=V "Variable used to make the compartment volume accessible for inner components. Do not edit.";
      centralMetabolism.cytosol.NADH_ NADH(c(start=0.00406177)) "NADH" annotation(Placement(transformation(origin={100.0,-20.0}, extent={{-10.0,-10.0},{10.0,10.0}})));
      centralMetabolism.cytosol.FDP_ FDP(c(start=0.0999758)) "Fructose 1,6-diphosphate" annotation(Placement(transformation(origin={-19.7747,-40.109}, extent={{-10.0,-10.0},{10.0,10.0}})));
      centralMetabolism.cytosol.PYR_ PYR(c(start=0.148871)) "Pyruvate" annotation(Placement(transformation(origin={100.0,-40.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=-180)));
      centralMetabolism.cytosol.ADP_ ADP(c(start=0.0695775)) "ADP" annotation(Placement(transformation(origin={-19.7747,-20.109}, extent={{-10.0,-10.0},{10.0,10.0}})));
      centralMetabolism.cytosol.IMP_ IMP(c(start=0.650608)) "IMP" annotation(Placement(transformation(origin={-120.0,-10.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=-270)));
      centralMetabolism.cytosol.ATP_ ATP(c(start=12.7913)=atp) "ATP" annotation(Placement(transformation(origin={-10.0,30.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=-720)));
      centralMetabolism.cytosol.AMP_ AMP(c(start=0.000398124)) "AMP" annotation(Placement(transformation(origin={-120.0,30.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=-90)));
      centralMetabolism.cytosol.LAC_ LAC(c(start=4.34299)) "Lactate" annotation(Placement(transformation(origin={140.0,-30.0}, extent={{-10.0,-10.0},{10.0,10.0}})));
      centralMetabolism.cytosol.NAD_ NAD(c(start=0.695938)=nad) "NAD" annotation(Placement(transformation(origin={120.0,-60.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=-450)));
      centralMetabolism.cytosol.CP_ CP(c(start=28.2621)) "Phosphocreatine" annotation(Placement(transformation(origin={-80.0,10.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=-90)));
      centralMetabolism.cytosol.Cr_ Cr(c(start=25.7379)=cr) "Creatine" annotation(Placement(transformation(origin={-80.0,50.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=-180)));
      centralMetabolism.cytosol.GLY_ GLY(c(start=1)) "Glycogen" annotation(Placement(transformation(origin={-140.0,-30.0}, extent={{-10.0,-10.0},{10.0,10.0}})));
      centralMetabolism.cytosol.PN_ PN(c=pn) "Inorganic phosphate" annotation(Placement(transformation(origin={80.0,-10.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=-180)));
      centralMetabolism.cytosol.G6P_ G6P(c(start=0.603855/(1 + kh))) "Glucose 6-phosphate" annotation(Placement(transformation(origin={-100.0,-30.0}, extent={{-10.0,-10.0},{10.0,10.0}})));
      centralMetabolism.cytosol.F6P_ F6P(c(start=0.603855*kh/(1 + kh))) "Fructose 6-phosphate" annotation(Placement(transformation(origin={-60.0,-30.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=-360)));
      centralMetabolism.cytosol.jda_ jda(bamp=bamp) "jda" annotation(Placement(transformation(origin={-120.0,10.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=-90)));
      centralMetabolism.cytosol.vpfk_ vpfk(badp=badp) "vpfk" annotation(Placement(transformation(origin={-40.0,-30.0}, extent={{-10.0,10.0},{10.0,-10.0}})));
      centralMetabolism.cytosol.vldh_ vldh "vldh" annotation(Placement(transformation(origin={120.0,-30.0}, extent={{-10.0,10.0},{10.0,-10.0}})));
      centralMetabolism.cytosol.vpdh_ vpdh(badp=badp) "vpdh" annotation(Placement(transformation(origin={120.0,-90.0}, extent={{-10.0,-10.0},{10.0,10.0}})));
      centralMetabolism.cytosol.jak_ jak(bamp=bamp, badp=badp) "jak" annotation(Placement(transformation(origin={10.0,30.0}, extent={{10.0,-10.0},{-10.0,10.0}}, rotation=90)));
      centralMetabolism.cytosol.vgph_ vgph(bamp=bamp, kh=kh) "vgph" annotation(Placement(transformation(origin={-120.0,-30.0}, extent={{-10.0,-10.0},{10.0,10.0}})));
      centralMetabolism.cytosol.jatpase_ jatpase(badp=badp) "jatpase" annotation(Placement(transformation(origin={-40.0,10.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=-90)));
      centralMetabolism.cytosol.jck_ jck(badp=badp) "jck" annotation(Placement(transformation(origin={-70.0,30.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=-90)));
      BioChem.Interfaces.Nodes.SubstanceConnector node_LAC annotation(Placement(transformation(origin={140.0,-10.0}, extent={{-10.0,-10.0},{10.0,10.0}}), iconTransformation(origin={125.0384,0.0}, extent={{-10.0,-10.0},{10.0,10.0}})));
      centralMetabolism.mitochondria mitochondria(badp=badp) annotation(Placement(transformation(origin={100.0,40.0}, extent={{-10.0,-10.0},{10.0,10.0}})));
      input Real bamp;
      input Real badp;
      input Real pn;
      input Real atp;
      input Real cr;
      input Real nad;
      parameter Real kh;
      annotation(Icon(coordinateSystem(extent={{-100.0,-100.0},{100.0,100.0}}, preserveAspectRatio=true, grid={10,10})), Diagram(coordinateSystem(extent={{-148.5,-105.0},{148.5,105.0}}, preserveAspectRatio=true, grid={10,10})), Documentation(info="<h1>Cytosol</h1>
<a name=\"fig1\"></a>
<img src=\"modelica://BioChem/Resources/Images/figure1.jpg\" width=\"640px\" height=\"446px\" alt=\"Fig1: Biochemical scheme\">
<p><em><strong>Fig. 1.</strong> Scheme of glycolysis and coupled processes simulated in the model: consumption and synthesis of ATP and transformation of reducing equivalents of NADH. The relevant equations, which account for stoicheiometry of the ATP production, are given in Supplementary materials. One molecule of ATP is consumed per molecule of fructose 6-phosphate in the phosphofructokinase reaction; two molecules of ATP per molecule of triose phospate (four molecules per hexose molecule) are then produced on the way to pyruvate; 2.5 molecules of ATP are produced when one molecule of NADH is oxidized. Cytosolic NADH is produced in the reaction of glyceraldehyde-3-phosphate dehydrogenase and consumed when pyruvate is transformed to lactate. In mitochondria one molecule of NADH is produced in the pyruvate dehydrogenase reaction and then three NADH molecules and one FADH2 molecule in the tricarboxylate cycle. Abbreviations: AK, adenylate kinase (EC 2.7.4.3); CK, creatine kinase (EC 2.7.3.2); CP, phosphocreatine; Cr, creatine; F6P, fructose 6-phosphate; FBP, fructose 1,6-bisphosphate; G6P, glucose 6-phosphate; GAPDH, glyceraldehyde-3-phosphate dehydrogenase (EC 1.2.1.12);
GPh, glycogen phosphorylase (EC 2.4.1.1); Lac, lactate; LDH, lactate dehydrogenase (EC 1.1.1.27); PFK, phosphofructokinase (EC 2.7.1.11); GPI, glucose phosphate isomerase (EC 5.3.1.9.); Pyr, pyruvate. Subscripts: m, mitochondrial; c, cytosolic.</em></p>", revisions=""));
      parameter Real kt;
      BioChem.Reactions.FastEquilibrium.Uuf vH6P(kP1=kh) "Fast equilibrium reaction for the compound of G6P and F6P" annotation(Placement(transformation(origin={-80.0,-30.0}, extent={{-10.0,-10.0},{10.0,10.0}})));
      centralMetabolism.cytosol.vald_ vald(kt=kt) "vald" annotation(Placement(transformation(origin={0.2253,-40.109}, extent={{-10.0,10.0},{10.0,-10.0}})));
      centralMetabolism.cytosol.DHAP_ DHAP(c.start=0.07427/(1 + kt)) annotation(Placement(transformation(origin={20.0,-40.0}, extent={{-10.0,-10.0},{10.0,10.0}})));
      centralMetabolism.cytosol.G3P_ G3P(c.start=0.07427*kt/(1 + kt)) annotation(Placement(transformation(origin={60.0,-40.0}, extent={{-10.0,-10.0},{10.0,10.0}})));
      centralMetabolism.cytosol.vgpdh_ vgpdh_1(badp=badp) annotation(Placement(transformation(origin={80.0,-30.0}, extent={{-10.0,-10.0},{10.0,10.0}})));
      BioChem.Reactions.FastEquilibrium.Uuf vT3P(kS1=1, kP1=kt) "Fast equilibrium reaction for the compound of G6P and F6P" annotation(Placement(transformation(origin={40.0,-40.0}, extent={{-10.0,-10.0},{10.0,10.0}})));
    equation
      connect(PN.n1,vgph.m[3]) annotation(Line(origin={-43.1831,-17.0363}, points={{123.1831,7.0363},{23.1831,13.8613},{-53.1252,-3.9637},{-76.8169,-3.9637}}, smooth=Smooth.Bezier));
      connect(vgpdh_1.m1,PN.n1) annotation(Line(origin={80.0,-15.5}, points={{0.0,-5.5},{0.0,5.5}}, smooth=Smooth.Bezier));
      connect(PYR.n1,vgpdh_1.p2) annotation(Line(origin={94.1667,-38.3333}, points={{5.8333,-1.6667},{-2.9167,-1.6667},{-2.9167,3.3333}}, smooth=Smooth.Bezier));
      connect(PYR.n1,vpdh.s1) annotation(Line(origin={99.5833,-70.0}, points={{0.4167,30.0},{-9.5833,-15.0},{9.1667,-15.0}}, smooth=Smooth.Bezier));
      connect(vldh.s1,PYR.n1) annotation(Line(origin={105.8333,-38.3333}, points={{2.9167,3.3333},{2.9167,-1.6667},{-5.8333,-1.6667}}, smooth=Smooth.Bezier));
      connect(vT3P.s1,DHAP.n1) annotation(Line(origin={24.375,-40.0}, points={{4.375,0.0},{-4.375,0.0}}));
      connect(vT3P.p1,G3P.n1) annotation(Line(origin={55.625,-40.0}, points={{-4.375,0.0},{4.375,0.0}}));
      connect(vald.p1,DHAP.n1) annotation(Line(origin={14.3169,-40.0363}, points={{-2.8416,-0.0727},{-2.8416,0.0363},{5.6831,0.0363}}));
      connect(ADP.n1,mitochondria.node_ADP) annotation(Line(origin={29.9388,18.5441}, points={{-49.7135,-38.6531},{-14.7833,-28.5441},{4.222,16.7428},{57.4791,16.7428}}, smooth=Smooth.Bezier));
      connect(ADP.n1,vpdh.s2) annotation(Line(origin={31.3122,-73.3958}, points={{-51.0869,53.2868},{-21.3122,-1.1347},{9.2453,-24.5854},{77.4378,-21.6042}}, smooth=Smooth.Bezier));
      connect(G3P.n1,vgpdh_1.s2) annotation(Line(origin={62.9167,-36.6667}, points={{-2.9167,-3.3333},{-2.9167,1.6667},{5.8333,1.6667}}, smooth=Smooth.Bezier));
      connect(vgph.p1,G6P.n1) annotation(Line(origin={-105.8333,-30.0}, points={{-2.9167,0.0},{-2.9167,0.0},{5.8333,0.0}}, smooth=Smooth.Bezier));
      connect(jatpase.s1,ATP.n1) annotation(Line(origin={-30.0,27.0833}, points={{-10.0,-5.8333},{-10.0,2.9167},{20.0,2.9167}}, smooth=Smooth.Bezier));
      connect(jck.p1,ADP.n1) annotation(Line(origin={-63.2582,-1.5662}, points={{-1.7418,20.3162},{-1.7418,1.5662},{43.4835,-18.5428}}, smooth=Smooth.Bezier));
      connect(FDP.n1,vald.s1) annotation(Line(origin={-16.8581,-40.109}, points={{-2.9166,0.0},{-2.9167,0.0},{5.8334,0.0}}, smooth=Smooth.Bezier));
      connect(vgpdh_1.p1,NADH.n1) annotation(Line(origin={94.1667,-21.6667}, points={{-2.9167,-3.3333},{-2.9167,1.6667},{5.8333,1.6667}}, smooth=Smooth.Bezier));
      connect(vpdh.p1,mitochondria.node_NADHm) annotation(Line(origin={128.4604,-19.1758}, points={{2.7896,-70.8242},{21.5396,-70.8242},{19.4827,64.1758},{-15.8864,64.1758}}, smooth=Smooth.Bezier));
      connect(ADP.n1,jak.p1) annotation(Line(origin={-4.8874,-4.2701}, points={{-14.8873,-15.8389},{0.2923,-3.5556},{14.8874,7.589},{14.8874,23.0201}}, smooth=Smooth.Bezier));
      connect(NAD.n1,vldh.m1) annotation(Line(origin={120.0,-49.5}, points={{0.0,-10.5},{0.0,10.5}}, smooth=Smooth.Bezier));
      connect(Cr.n1,jck.s2) annotation(Line(origin={-78.3333,44.1667}, points={{-1.6667,5.8333},{-1.6667,-2.9167},{3.3333,-2.9167}}, smooth=Smooth.Bezier));
      connect(IMP.n1,vgph.m[1]) annotation(Line(origin={-120.0,-17.3333}, points={{0.0,7.3333},{0.0,-3.6667},{0.0,-3.6667}}, smooth=Smooth.Bezier));
      connect(ATP.n1,jak.m1) annotation(Line(origin={-6.3333,30.0}, points={{-3.6667,0.0},{-3.6667,0.0},{7.3333,0.0}}, smooth=Smooth.Bezier));
      connect(jck.p2,CP.n1) annotation(Line(origin={-76.6667,12.9167}, points={{1.6667,5.8333},{1.6667,-2.9167},{-3.3333,-2.9167}}, smooth=Smooth.Bezier));
      connect(AMP.n1,jak.s1) annotation(Line(origin={-30.0,71.6841}, points={{-90.0,-41.6841},{-90.0,-1.6841},{40.0,-1.6841},{40.0,-30.4341}}, smooth=Smooth.Bezier));
      connect(jatpase.p1,ADP.n1) annotation(Line(origin={-33.2582,-13.8227}, points={{-6.7418,12.5727},{-6.7418,5.6243},{13.4835,-6.2863}}, smooth=Smooth.Bezier));
      connect(FDP.n1,vpfk.p1) annotation(Line(origin={-22.6914,-36.7756}, points={{2.9167,-3.3334},{-5.8333,-3.3334},{-6.0586,1.7756}}, smooth=Smooth.Bezier));
      connect(NAD.n1,vpdh.m1) annotation(Line(origin={120.0,-70.5}, points={{0.0,10.5},{0.0,-10.5}}, smooth=Smooth.Bezier));
      connect(NADH.n1,mitochondria.node_NADH) annotation(Line(origin={108.7675,7.2}, points={{-8.7675,-27.2},{-8.7675,-14.2},{6.845,-14.2},{6.845,27.8},{3.845,27.8}}, smooth=Smooth.Bezier));
      connect(ATP.n1,mitochondria.node_ATP) annotation(Line(origin={32.2535,41.25}, points={{-42.2535,-11.25},{-28.6502,3.75},{25.7571,3.75},{55.1466,3.75}}, smooth=Smooth.Bezier));
      connect(F6P.n1,vpfk.s1) annotation(Line(origin={-57.0833,-30.0}, points={{-2.9167,0.0},{-2.9167,0.0},{5.8333,0.0}}, smooth=Smooth.Bezier));
      connect(vH6P.s1,G6P.n1) annotation(Line(origin={-115.625,-80.0}, points={{24.375,50.0},{15.625,50.0}}, smooth=Smooth.Bezier));
      connect(AMP.n1,vgph.m[2]) annotation(Line(origin={-170.5636,9.014}, points={{50.5636,20.986},{20.5636,0.986},{50.5636,-30.014}}, smooth=Smooth.Bezier));
      connect(IMP.n1,jda.p1) annotation(Line(origin={-120.0,-4.1667}, points={{0.0,-5.8333},{0.0,2.9167},{0.0,2.9167}}, smooth=Smooth.Bezier));
      connect(ADP.n1,vpfk.p2) annotation(Line(origin={-22.6914,-23.4423}, points={{2.9167,3.3333},{-5.8333,3.3333},{-6.0586,-1.5577}}, smooth=Smooth.Bezier));
      connect(vgpdh_1.s1,ADP.n1) annotation(Line(origin={8.8565,-22.5545}, points={{59.8935,-2.4455},{-15.6312,-2.4455},{-15.6312,2.4455},{-28.6312,2.4455}}, smooth=Smooth.Bezier));
      connect(vH6P.p1,F6P.n1) annotation(Line(origin={-65.8333,-30.0}, points={{-2.9167,0.0},{-2.9167,0.0},{5.8333,0.0}}, smooth=Smooth.Bezier));
      connect(LAC.n1,node_LAC) annotation(Line(origin={140.0,-16.6667}, points={{0.0,-13.3333},{0.0,6.6667},{0.0,6.6667}}, smooth=Smooth.Bezier));
      connect(ATP.n1,jck.s1) annotation(Line(origin={-43.0,45.9685}, points={{33.0,-15.9685},{33.0,6.2028},{-22.0,6.2028},{-22.0,-1.7185},{-22.0,-4.7185}}, smooth=Smooth.Bezier));
      connect(AMP.n1,jda.s1) annotation(Line(origin={-120.0,24.1667}, points={{0.0,5.8333},{0.0,-2.9167},{0.0,-2.9167}}, smooth=Smooth.Bezier));
      connect(vldh.s2,NADH.n1) annotation(Line(origin={105.8333,-21.6667}, points={{2.9167,-3.3333},{2.9167,1.6667},{-5.8333,1.6667}}, smooth=Smooth.Bezier));
      connect(LAC.n1,vldh.p1) annotation(Line(origin={137.0833,-30.0}, points={{2.9167,0.0},{2.9167,0.0},{-5.8333,0.0}}, smooth=Smooth.Bezier));
      connect(GLY.n1,vgph.s1) annotation(Line(origin={-137.0833,-30.0}, points={{-2.9167,0.0},{-2.9167,0.0},{5.8333,0.0}}, smooth=Smooth.Bezier));
    end cytosol;

    model extra_cellular
      annotation(Diagram(coordinateSystem(extent={{-100.0,-100.0},{100.0,100.0}}, preserveAspectRatio=true, grid={10,10})), Icon(coordinateSystem(extent={{-100.0,-100.0},{100.0,100.0}}, preserveAspectRatio=true, grid={10,10})), Documentation(info="<h1>Energy metabolism of human muscle</h1>
<p>The model simulates the processes of utilization of energy stored in the form of glycogen. This is the main energy supply of working muscle. The pathway includes glycolytic and TCA cycle reactions stoichiometrically connected with synthesis ATP, which is used mainly for mechanical work (ATPase). The biochemical scheme of the simulated processes is shown in <a href=\"#fig1\">Figure 1</a>.</p>
<a name=\"fig1\"></a>
<img src=\"modelica://BioChem/Resources/Images/figure1a.png\" width=\"640px\" height=\"446px\" alt=\"Fig1: Biochemical scheme\">
<p><em><strong>Fig. 1.</strong> Scheme of glycolysis and coupled processes simulated in the model: consumption and synthesis of ATP and transformation of reducing equivalents of NADH. The relevant equations, which account for stoicheiometry of the ATP production, are given in Supplementary materials. One molecule of ATP is consumed per molecule of fructose 6-phosphate in the phosphofructokinase reaction; two molecules of ATP per molecule of triose phospate (four molecules per hexose molecule) are then produced on the way to pyruvate; 2.5 molecules of ATP are produced when one molecule of NADH is oxidized. Cytosolic NADH is produced in the reaction of glyceraldehyde-3-phosphate dehydrogenase and consumed when pyruvate is transformed to lactate. In mitochondria one molecule of NADH is produced in the pyruvate dehydrogenase reaction and then three NADH molecules and one FADH2 molecule in the tricarboxylate cycle. Abbreviations: AK, adenylate kinase (EC 2.7.4.3); CK, creatine kinase (EC 2.7.3.2); CP, phosphocreatine; Cr, creatine; F6P, fructose 6-phosphate; FBP, fructose 1,6-bisphosphate; G6P, glucose 6-phosphate; GAPDH, glyceraldehyde-3-phosphate dehydrogenase (EC 1.2.1.12);
GPh, glycogen phosphorylase (EC 2.4.1.1); Lac, lactate; LDH, lactate dehydrogenase (EC 1.1.1.27); PFK, phosphofructokinase (EC 2.7.1.11); GPI, glucose phosphate isomerase (EC 5.3.1.9.); Pyr, pyruvate. Subscripts: m, mitochondrial; c, cytosolic.</em></p>
<p>This model was used to study the biochemical effects of training programmes, consisted of 14 training sessions either with 24 (short period, SP) or 72 h (long period, LP) intervals between the individual sessions  (Parra et al., 2000). In this example the analysed data included the change in enzyme activities after both tytes of training as <a href=\"#tab1\">Table 1</a> shows.</p>
<a name=\"tab1\"></a>
<p><em><strong>Table 1</strong><br>
 Measured enzyme activity in biobpsy before and after training (Parra et al. 2000). </em></p>
<img src=\"modelica://BioChem/Resources/Images/table1.jpg\" width=\"640px\" height=\"122px\" alt=\"Tab1:  enzyme activity in biobpsy\">
<p>Moreover, the concentrations of metabolites at rest and after 30s of maximal intensity exercise were measured before and after accomplishing the training programs. The measured metabolites are adenine nucleotides and the forms of creatine (<a href=\"#tab2\">Table 2</a>) and intermediates of glycolysis (<a href=\"#tab3\">Table 3</a>).</p>
<a name=\"tab2\"></a>
<p><em><strong>Table 2</strong></em></p>
<img src=\"modelica://BioChem/Resources/Images/table2.jpg\" width=\"640px\" height=\"306px\" alt=\"Tab2:  concentrations of metabolites at rest and after 30s of maximal intensity exercise \">
<p>The model simulates the experimental data as an example in <a href=\"#fig2\">Figure 2</a> shows. The switch from rest to maximal intensity exercise in the model simulation induced by the change of only one parameter, increase of ATPase activity; stimulation of all the metabolic fluxes is a result of activation by the products of ATP hydrolysis.</p>
<p>
The simulation have shown that after short periods of training the glycolytic flux at rest was three times higher than it had been before training, whereas during exercise the flux and energy consumption remained the same as before training. Long periods of training had less effect on the glycolytic flux at rest, but increased it in response to exercise, increasing the contribution of oxidative phosphorylation.
This model and data analysis are described in (Selivanov VA, de Atauri P, Centelles JJ, Cadefau J, Parra J, Cuss&oacute; R, Carreras J, Cascante M. (2008) The changes in the energy metabolism of human muscle induced by training.  J Theor Biol. 252, 402-410)
</p>
<a name=\"tab3\"></a>
<p><em><strong>Table 3</strong></em></p>
<img src=\"modelica://BioChem/Resources/Images/table3.jpg\" width=\"640px\" height=\"283px\" alt=\"Tab3:  concentrations of metabolites at rest and after 30s of maximal intensity exercise \">
<br><br>
<a name=\"fig2\"></a>
<img src=\"modelica://BioChem/Resources/Images/figure2.jpg\" width=\"526px\" height=\"620px\" alt=\"Fig2:  concentrations of metabolites during 30s of maximal intensity exercise \">
<p><em><strong>Fig. 2.</strong> Time-courses of high-energy phophates and glycolytic intermediates during 30s of maximal exercise before training. Points with error bars are experimental metabolite concentrations at rest and after 30s of excersise. For simulation at the beginning of excersise (time=0), ATPase activity increased from 3.2 to 200 mM min<sup>-1</sup>. Other parameters are given in Table 1 and Supplementary materials. Abbrevetaions are given in <a href=\"#fig1\">Fig. 1</a>,</em></p>
<h2>Simulations</h2>
<p>The time scale of the model is minutes, so it simulates 0.5 min of maximal intensity exercise. The model produces the same results as seen from experiments.</p>
<p>If simulated for more than 0.5 minutes the model has numerical problems. In real life a person cannot maintain maximal intensity exercise, then fatigue comes and the intensity decreases. So, steady state at maximal intensity does not exist in real life either.</p>
", revisions=""), __MathCore(RDF=""), experiment(StartTime=0.0, StopTime=0.5, Algorithm="dassl", Tolerance=1e-05));
      extends BioChem.Compartments.MainCompartment(V(start=2));
      model LACext_
        extends BioChem.Substances.Substance;
        annotation(__MathCore(RDF="<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
    <rdf:Description rdf:about=\"#\">
      <bqbiol:isVersionOf>
        <rdf:Bag>
          <rdf:li rdf:resource=\"http://www.genome.jp/kegg/#C01432\"/>
        </rdf:Bag>
      </bqbiol:isVersionOf>
    </rdf:Description>
  </rdf:RDF>"));
      end LACext_;

      model vef_
        extends BioChem.Interfaces.Reactions.Uui;
        parameter Real VmaxEF=15;
        parameter Real KmLAC=26.8483;
      equation
        rr=VmaxEF*s1.c/(KmLAC + s1.c);
      end vef_;

      centralMetabolism.cytosol cytosol(bamp=bamp, badp=badp, kh=kh, pn=pn, atp=atp, kt=kt, nad=nad, cr=cr) annotation(Placement(transformation(origin={1.221,-0.0}, extent={{-10.0,-10.0},{10.0,10.0}})));
      centralMetabolism.extra_cellular.vef_ vef "vef" annotation(Placement(transformation(origin={40.0,0.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=-360)));
      centralMetabolism.extra_cellular.LACext_ LACext(c.start=0) "Lactate" annotation(Placement(transformation(origin={70.0,0.0}, extent={{-10.0,-10.0},{10.0,10.0}})));
      inner Real default_V=V "Variable used to make the compartment volume accessible for inner components. Do not edit.";
      inner Real cytosol_V=cytosol.V "Variable used to make the compartment volume of inner compartments accessible. Do not edit.";
      parameter Real iv1=0.603855;
      parameter Real iv2=0.0999758;
      parameter Real iv3=0.07427;
      parameter Real iv4=0.148871;
      parameter Real iv5=4.34299;
      parameter Real iv6=0.00406177;
      parameter Real iv7=1.72073e-05;
      parameter Real iv8=0.0695775;
      parameter Real iv9=28.2621;
      parameter Real iv10=0.000398124;
      parameter Real iv11=0.650608;
      parameter Real nv19=1;
      parameter Real nv20=1.14947;
      parameter Real kamp=0.00841471;
      parameter Real k2amp=200;
      parameter Real kadp=0.05;
      parameter Real k2adp=84.7376;
      parameter Real tan=27.5 "";
      parameter Real tcr=54;
      parameter Real kt=0.085;
      parameter Real kh=0.2;
      parameter Real PNt=139.117;
      Real adpt;
      Real ampt;
      Real atp;
      Real atpt;
      Real badp;
      Real bamp;
      Real pn;
      Real cr;
      Real nad;
    equation
      connect(vef.p1,LACext.n1) annotation(Line(origin={60.625,0.0}, points={{-9.375,0.0},{9.375,-0.0}}));
      connect(cytosol.node_LAC,vef.s1) annotation(Line(origin={21.2374,-0.0}, points={{-7.5126,0.0},{7.5126,-0.0}}));
      badp=k2adp*kadp/(kadp + cytosol.ADP.c);
      adpt=cytosol.ADP.c*badp;
      atpt=tan - adpt - ampt - cytosol.IMP.c;
      ampt=cytosol.AMP.c*bamp;
      atp=atpt/cytosol.V;
      pn=(PNt - atpt*3 - adpt*2 - ampt - cytosol.CP.c*2 - cytosol.IMP.c - (cytosol.G6P.c + cytosol.F6P.c + cytosol.FDP.c*2 + cytosol.G3P.c + cytosol.DHAP.c)*cytosol.V)/cytosol.V;
      bamp=k2amp*kamp/(kamp + cytosol.AMP.c);
      nad=0.7 - cytosol.NADH.c;
      cr=tcr - cytosol.CP.c;
    end extra_cellular;

    model mitochondria
      extends BioChem.Compartments.Compartment(V.start=2);
      annotation(Diagram(coordinateSystem(extent={{-100.0,-100.0},{100.0,100.0}}, preserveAspectRatio=true, grid={10,10})));
      model NADH_
        extends BioChem.Substances.Substance;
        annotation(__MathCore(RDF="<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
    <rdf:Description rdf:about=\"#\">
      <bqbiol:isVersionOf>
        <rdf:Bag>
          <rdf:li rdf:resource=\"http://www.genome.jp/kegg/#C00004\"/>
        </rdf:Bag>
      </bqbiol:isVersionOf>
    </rdf:Description>
  </rdf:RDF>"));
      end NADH_;

      model NAD_
        extends BioChem.Substances.Substance;
        annotation(__MathCore(RDF="<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
    <rdf:Description rdf:about=\"#\">
      <bqbiol:isVersionOf>
        <rdf:Bag>
          <rdf:li rdf:resource=\"http://www.genome.jp/kegg/#C00003\"/>
        </rdf:Bag>
      </bqbiol:isVersionOf>
    </rdf:Description>
  </rdf:RDF>"));
      end NAD_;

      model jox_
        extends BioChem.Interfaces.Reactions.Bbi(nS1=2.5*cytosol_V/badp);
        outer Real cytosol_V "Variable used to access the volume of an outer compartment. Do not edit.";
        Real badp;
      equation
        rr=10000*s1.c*s2.c/((0.01 + s1.c)*(0.15 + s2.c));
      end jox_;

      model vn_
        extends BioChem.Interfaces.Reactions.Uui;
        parameter Real VmaxN=10.8347;
        parameter Real KmNADH=0.216694;
      equation
        rr=VmaxN*s1.c/(KmNADH + s1.c);
      end vn_;

      centralMetabolism.mitochondria.NADH_ NADHm(c.start=0) "NADH" annotation(Placement(transformation(origin={-20.0,-10.0}, extent={{-10.0,-10.0},{10.0,10.0}})));
      centralMetabolism.mitochondria.NAD_ NADm(c.start=0) "NAD" annotation(Placement(transformation(origin={20.0,10.0}, extent={{-10.0,-10.0},{10.0,10.0}})));
      centralMetabolism.mitochondria.jox_ jox(badp=badp) "jox" annotation(Placement(transformation(origin={-0.0,0.0}, extent={{-10.0,-10.0},{10.0,10.0}})));
      BioChem.Interfaces.Nodes.SubstrateConnector node_ADP annotation(Placement(transformation(origin={-20.0,10.0}, extent={{-10.0,-10.0},{10.0,10.0}}), iconTransformation(origin={-125.8208,-47.131}, extent={{-10.0,-10.0},{10.0,10.0}})));
      BioChem.Interfaces.Nodes.SubstanceConnector node_NADHm annotation(Placement(transformation(origin={-30.0,-30.0}, extent={{-10.0,-10.0},{10.0,10.0}}), iconTransformation(origin={125.7398,50.0}, extent={{-10.0,-10.0},{10.0,10.0}})));
      centralMetabolism.mitochondria.vn_ vn "vn" annotation(Placement(transformation(origin={-50.0,-10.0}, extent={{-10.0,-10.0},{10.0,10.0}})));
      BioChem.Interfaces.Nodes.SubstrateConnector node_NADH annotation(Placement(transformation(origin={-80.0,-10.0}, extent={{-10.0,-10.0},{10.0,10.0}}), iconTransformation(origin={126.1247,-50.0}, extent={{-10.0,-10.0},{10.0,10.0}})));
      BioChem.Interfaces.Nodes.ProductConnector node_ATP annotation(Placement(transformation(origin={20.0,-10.0}, extent={{-10.0,-10.0},{10.0,10.0}}), iconTransformation(origin={-125.999,50.0}, extent={{-10.0,-10.0},{10.0,10.0}})));
      Real badp;
    equation
      connect(jox.p1,NADm.n1) annotation(Line(origin={14.1667,8.3333}, points={{-2.9167,-3.3333},{-2.9167,1.6667},{5.8333,1.6667}}, smooth=Smooth.Bezier));
      connect(NADHm.n1,node_NADHm) annotation(Line(origin={-29.831,-9.3231}, points={{9.831,-0.6769},{-0.169,-0.6769},{-0.169,-20.6769}}, smooth=Smooth.Bezier));
      connect(vn.p1,NADHm.n1) annotation(Line(origin={-29.375,-10.0}, points={{-9.375,0.0},{9.375,0.0}}));
      connect(NADHm.n1,jox.s2) annotation(Line(origin={-14.1667,-8.3333}, points={{-5.8333,-1.6667},{2.9167,-1.6667},{2.9167,3.3333}}, smooth=Smooth.Bezier));
      connect(jox.p2,node_ATP) annotation(Line(origin={17.0833,-6.6667}, points={{-5.8333,1.6667},{2.9167,1.6667},{2.9167,-3.3333}}));
      connect(jox.s1,node_ADP) annotation(Line(origin={-14.1667,8.3333}, points={{2.9167,-3.3333},{2.9167,1.6667},{-5.8333,1.6667}}, smooth=Smooth.Bezier));
      connect(vn.s1,node_NADH) annotation(Line(origin={-70.625,-10.0}, points={{9.375,0.0},{-9.375,0.0}}));
    end mitochondria;

  end centralMetabolism;

  package CircadianOscillator "Weimann2004_CircadianOscillator"
    extends BioChem.Icons.Example;
    model Container
      extends BioChem.Compartments.MainCompartment(V(start=1));
      import BioChem.Math.*;
      import BioChem.Constants.*;
      BioChem.Examples.CircadianOscillator.Nucleus nucleus(k3t=k3t, k3d=k3d, k6t=k6t, k6d=k6d, k6a=k6a, k7a=k7a, k7d=k7d) annotation(Placement(transformation(origin={-30.0,-10.0}, extent={{-10.0,-10.0},{10.0,10.0}})));
      Cytoplasm cytoplasm(trans_per2_cry=trans_per2_cry, k1d=k1d, k2b=k2b, q=q, k2d=k2d, k2t=k2t, trans_Bmal1=trans_Bmal1, k4d=k4d, k5b=k5b, k5d=k5d, k5t=k5t) annotation(Placement(transformation(origin={21.5395,-10.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=-180)));
      inner Real Nucleus_V=nucleus.V "Variable used to make the compartment volume of inner compartments accessible. Do not edit.";
      inner Real Cytoplasm_V=cytoplasm.V "Variable used to make the compartment volume of inner compartments accessible. Do not edit.";
      inner Real Container_V=V "Variable used to make the compartment volume accessible for inner components. Do not edit.";
      Real trans_per2_cry(start=0);
      parameter Real v1b=9;
      parameter Real c_sbml=0.01;
      parameter Real k1b=1;
      parameter Real k1i=0.56;
      parameter Real hill_coeff=8;
      Real trans_Bmal1(start=0);
      parameter Real v4b=3.6;
      parameter Real r_sbml=3;
      parameter Real k4b=2.16;
      Real y5_y6_y7(start=3.05);
      parameter Real k1d=0.12;
      parameter Real k2b=0.3;
      parameter Real q=2;
      parameter Real k2d=0.05;
      parameter Real k2t=0.24;
      parameter Real k3t=0.02;
      parameter Real k3d=0.12;
      parameter Real k4d=0.75;
      parameter Real k5b=0.24;
      parameter Real k5d=0.06;
      parameter Real k5t=0.45;
      parameter Real k6t=0.06;
      parameter Real k6d=0.12;
      parameter Real k6a=0.09;
      parameter Real k7a=0.003;
      parameter Real k7d=0.09;
      annotation(Documentation(info="<html>
<h1>Circadian Oscillator</h1>

This example is the modelica version of the model presented in
<i>Modeling feedback loops of the Mammalian circadian oscillator</i> by
Becker-Weimann S, Wolf J, Herzel H, Kramer A. (Biophysical Journal Volume 87 November 2004 3023-3034)

<h2>Abstract</h2>
The suprachiasmatic nucleus governs daily variations of physiology and behavior in mammals. Within single neurons, interlocked transcriptional/translational feedback loops generate circadian rhythms on the molecular level. We present a mathematical model that reflects the essential features of the mammalian circadian oscillator to characterize the differential roles of negative and positive feedback loops. The oscillations that are obtained have a 24-h period and are robust toward parameter variations even when the positive feedback is replaced by a constantly expressed activator. This demonstrates the crucial role of the negative feedback for rhythm generation. Moreover, it explains the rhythmic phenotype of Rev-erbalpha-/- mutant mice, where a positive feedback is missing. The interplay of negative and positive feedback reveals a complex dynamics. In particular, the model explains the unexpected rescue of circadian oscillations in Per2Brdm1/Cry2-/- double-mutant mice (Per2Brdm1 single-mutant mice are arrhythmic). Here, a decrease of positive feedback strength associated with mutating the Per2 gene is compensated by the Cry2-/- mutation that simultaneously decreases the negative feedback strength. Finally, this model leads us to a testable prediction of a molecular and behavioral phenotype: circadian oscillations should be rescued when arrhythmic Per2Brdm1 mutant mice are crossed with Rev- erbalpha -/- mutant mice.

<h2>Simulations</h2>
The simulation results are shown in the
 <a href=\"#fig1\">Figure 1</a>. This plot corresponds to Fig 3A from the paper (Becker-Weimann, 2004).

<a name=\"fig1\"></a>
<img src=\"modelica://BioChem/Resources/Images/Container.png\" alt=\"Fig1: Simulation results\">

</html>", revisions=""), experiment(StartTime=0, StopTime=150, NumberOfIntervals=-1, Algorithm="dassl", Tolerance=1e-06));
    equation
      connect(cytoplasm.y5_node,nucleus.y5_node) annotation(Line(origin={-4.2302,-19.0}, points={{14.7697,0.0},{-14.7697,0.0}}));
      connect(nucleus.y6_node,cytoplasm.y6_node) annotation(Line(origin={-4.2302,-1.0}, points={{-14.7697,0.0},{14.7697,0.0}}));
      connect(cytoplasm.y2_node,nucleus.y2_node) annotation(Line(origin={-4.2302,-7.0}, points={{14.7697,0.0},{-14.7697,0.0}}));
      connect(nucleus.y3_node,cytoplasm.y3_node) annotation(Line(origin={-4.2302,-13.0}, points={{-14.7697,0.0},{14.7697,0.0}}));
      trans_per2_cry=v1b*(nucleus.y7.c + c_sbml)/(k1b*(1 + (nucleus.y3.c/k1i)^hill_coeff) + nucleus.y7.c + c_sbml);
      trans_Bmal1=v4b*nucleus.y3.c^r_sbml/(k4b^r_sbml + nucleus.y3.c^r_sbml);
      y5_y6_y7=cytoplasm.y5.c + nucleus.y6.c + nucleus.y7.c;
    end Container;

    model Nucleus "Nucleus"
      extends BioChem.Compartments.Compartment(V(start=1));
      import BioChem.Math.*;
      import BioChem.Constants.*;
      model y3_
        extends BioChem.Substances.Substance;
        annotation(__MathCore(RDF="<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
    <rdf:Description rdf:about=\"#metaid_0000035\">
      <bqbiol:hasPart>
        <rdf:Bag>
          <rdf:li rdf:resource=\"urn:miriam:uniprot:O15055\"/>
          <rdf:li rdf:resource=\"urn:miriam:uniprot:Q16526\"/>
        </rdf:Bag>
      </bqbiol:hasPart>
    </rdf:Description>
  </rdf:RDF>"));
      end y3_;

      model y6_
        extends BioChem.Substances.Substance;
        annotation(__MathCore(RDF="<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
    <rdf:Description rdf:about=\"#metaid_0000038\">
      <bqbiol:isVersionOf>
        <rdf:Bag>
          <rdf:li rdf:resource=\"urn:miriam:uniprot:Q8IUT4\"/>
        </rdf:Bag>
      </bqbiol:isVersionOf>
    </rdf:Description>
  </rdf:RDF>"));
      end y6_;

      model y7_
        extends BioChem.Substances.Substance;
        annotation(__MathCore(RDF="<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
    <rdf:Description rdf:about=\"#metaid_0000039\">
      <bqbiol:isVersionOf>
        <rdf:Bag>
          <rdf:li rdf:resource=\"urn:miriam:uniprot:Q8IUT4\"/>
        </rdf:Bag>
      </bqbiol:isVersionOf>
    </rdf:Description>
  </rdf:RDF>"));
      end y7_;

      model per2_cry_nuclear_export_
        extends BioChem.Interfaces.Reactions.Uui;
        annotation(__MathCore(RDF="<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
    <rdf:Description rdf:about=\"#metaid_0000049\">
      <bqbiol:isVersionOf>
        <rdf:Bag>
          <rdf:li rdf:resource=\"urn:miriam:obo.go:GO%3A0051168\"/>
        </rdf:Bag>
      </bqbiol:isVersionOf>
    </rdf:Description>
  </rdf:RDF>"));
        outer Real Nucleus_V "Variable used to access the volume of an outer compartment. Do not edit.";
        parameter Real k3t;
      equation
        rr=Nucleus_V*k3t*s1.c;
      end per2_cry_nuclear_export_;

      model nuclear_per2_cry_complex_degradation_
        extends BioChem.Interfaces.Reactions.Uui;
        annotation(__MathCore(RDF="<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
    <rdf:Description rdf:about=\"#metaid_0000050\">
      <bqbiol:isVersionOf>
        <rdf:Bag>
          <rdf:li rdf:resource=\"urn:miriam:obo.go:GO%3A0044257\"/>
        </rdf:Bag>
      </bqbiol:isVersionOf>
    </rdf:Description>
  </rdf:RDF>"));
        outer Real Nucleus_V "Variable used to access the volume of an outer compartment. Do not edit.";
        parameter Real k3d;
      equation
        rr=Nucleus_V*k3d*s1.c;
      end nuclear_per2_cry_complex_degradation_;

      model BMAL1_nuclear_export_
        extends BioChem.Interfaces.Reactions.Uui;
        annotation(__MathCore(RDF="<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
    <rdf:Description rdf:about=\"#metaid_0000056\">
      <bqbiol:isVersionOf>
        <rdf:Bag>
          <rdf:li rdf:resource=\"urn:miriam:obo.go:GO%3A0051168\"/>
        </rdf:Bag>
      </bqbiol:isVersionOf>
    </rdf:Description>
  </rdf:RDF>"));
        outer Real Nucleus_V "Variable used to access the volume of an outer compartment. Do not edit.";
        parameter Real k6t;
      equation
        rr=Nucleus_V*k6t*s1.c;
      end BMAL1_nuclear_export_;

      model nuclear_BMAL1_degradation_
        extends BioChem.Interfaces.Reactions.Uui;
        annotation(__MathCore(RDF="<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
    <rdf:Description rdf:about=\"#metaid_0000057\">
      <bqbiol:isVersionOf>
        <rdf:Bag>
          <rdf:li rdf:resource=\"urn:miriam:obo.go:GO%3A0044257\"/>
        </rdf:Bag>
      </bqbiol:isVersionOf>
    </rdf:Description>
  </rdf:RDF>"));
        outer Real Nucleus_V "Variable used to access the volume of an outer compartment. Do not edit.";
        parameter Real k6d;
      equation
        rr=Nucleus_V*k6d*s1.c;
      end nuclear_BMAL1_degradation_;

      model BMAL1_activation_
        extends BioChem.Interfaces.Reactions.Uui;
        annotation(__MathCore(RDF="<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
    <rdf:Description rdf:about=\"#metaid_0000058\">
      <bqbiol:isVersionOf>
        <rdf:Bag>
          <rdf:li rdf:resource=\"urn:miriam:obo.go:GO%3A0051091\"/>
        </rdf:Bag>
      </bqbiol:isVersionOf>
    </rdf:Description>
  </rdf:RDF>"));
        outer Real Nucleus_V "Variable used to access the volume of an outer compartment. Do not edit.";
        parameter Real k6a;
      equation
        rr=Nucleus_V*k6a*s1.c;
      end BMAL1_activation_;

      model BMAL1_deactivation_
        extends BioChem.Interfaces.Reactions.Uui;
        annotation(__MathCore(RDF="<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
    <rdf:Description rdf:about=\"#metaid_0000059\">
      <bqbiol:isVersionOf>
        <rdf:Bag>
          <rdf:li rdf:resource=\"urn:miriam:obo.go:GO%3A0043433\"/>
        </rdf:Bag>
      </bqbiol:isVersionOf>
    </rdf:Description>
  </rdf:RDF>"));
        outer Real Nucleus_V "Variable used to access the volume of an outer compartment. Do not edit.";
        parameter Real k7a;
      equation
        rr=Nucleus_V*k7a*s1.c;
      end BMAL1_deactivation_;

      model Active_BMAL1_degradation_
        extends BioChem.Interfaces.Reactions.Uui;
        annotation(__MathCore(RDF="<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
    <rdf:Description rdf:about=\"#metaid_0000060\">
      <bqbiol:isVersionOf>
        <rdf:Bag>
          <rdf:li rdf:resource=\"urn:miriam:obo.go:GO%3A0044257\"/>
        </rdf:Bag>
      </bqbiol:isVersionOf>
    </rdf:Description>
  </rdf:RDF>"));
        outer Real Nucleus_V "Variable used to access the volume of an outer compartment. Do not edit.";
        parameter Real k7d;
      equation
        rr=Nucleus_V*k7d*s1.c;
      end Active_BMAL1_degradation_;

      inner Real Nucleus_V=V "Variable used to make the compartment volume accessible for inner components. Do not edit.";
      BioChem.Examples.CircadianOscillator.Nucleus.y3_ y3(c(start=1.1)) "PER2_CRY_complex_nucleus" annotation(Placement(transformation(origin={70.0,-50.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=-270)));
      BioChem.Examples.CircadianOscillator.Nucleus.y6_ y6(c(start=1)) "BMAL1_nucleus" annotation(Placement(transformation(origin={-10.0,50.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=-180)));
      BioChem.Examples.CircadianOscillator.Nucleus.y7_ y7(c(start=1.05)) "Active BMAL1" annotation(Placement(transformation(origin={-45.6104,-16.1148}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=-180)));
      BioChem.Interfaces.Nodes.SubstanceConnector y3_node annotation(Placement(transformation(origin={90.0,-60.0}, extent={{-10.0,-10.0},{10.0,10.0}}), iconTransformation(origin={110.0,-30.0}, extent={{-10.0,-10.0},{10.0,10.0}})));
      parameter Real k3t;
      BioChem.Interfaces.Nodes.SubstanceConnector y2_node annotation(Placement(transformation(origin={90.0,60.0}, extent={{-10.0,-10.0},{10.0,10.0}}), iconTransformation(origin={110.0,30.0}, extent={{-10.0,-10.0},{10.0,10.0}})));
      BioChem.Examples.CircadianOscillator.Nucleus.per2_cry_nuclear_export_ per2_cry_nuclear_export(k3t=k3t) "per2_cry_nuclear_export" annotation(Placement(transformation(origin={68.1433,10.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=-270)));
      BioChem.Substances.AmbientSubstance ambientSubstance annotation(Placement(transformation(origin={10.0,-50.0}, extent={{-10.0,-10.0},{10.0,10.0}})));
      parameter Real k3d;
      BioChem.Examples.CircadianOscillator.Nucleus.nuclear_per2_cry_complex_degradation_ nuclear_per2_cry_complex_degradation(k3d=k3d) "nuclear_per2_cry_complex_degradation" annotation(Placement(transformation(origin={40.0,-40.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=-180)));
      BioChem.Interfaces.Nodes.SubstanceConnector y6_node annotation(Placement(transformation(origin={90.0,90.0}, extent={{-10.0,-10.0},{10.0,10.0}}), iconTransformation(origin={110.0,90.0}, extent={{-10.0,-10.0},{10.0,10.0}})));
      parameter Real k6t;
      BioChem.Interfaces.Nodes.SubstanceConnector y5_node annotation(Placement(transformation(origin={90.0,-90.0}, extent={{-10.0,-10.0},{10.0,10.0}}), iconTransformation(origin={110.0,-90.0}, extent={{-10.0,-10.0},{10.0,10.0}})));
      Nucleus.BMAL1_nuclear_export_ BMAL1_nuclear_export(k6t=k6t) "BMAL1_nuclear_export" annotation(Placement(transformation(origin={-80.0,20.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=-90)));
      parameter Real k6d;
      BioChem.Examples.CircadianOscillator.Nucleus.nuclear_BMAL1_degradation_ nuclear_BMAL1_degradation(k6d=k6d) "nuclear_BMAL1_degradation" annotation(Placement(transformation(origin={10.0,10.0}, extent={{10.0,-10.0},{-10.0,10.0}}, rotation=90)));
      parameter Real k6a;
      Nucleus.BMAL1_activation_ BMAL1_activation(k6a=k6a) "BMAL1_activation" annotation(Placement(transformation(origin={-30.0,10.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=-90)));
      parameter Real k7a;
      Nucleus.BMAL1_deactivation_ BMAL1_deactivation(k7a=k7a) "BMAL1_deactivation" annotation(Placement(transformation(origin={-61.7118,10.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=-270)));
      parameter Real k7d;
      BioChem.Examples.CircadianOscillator.Nucleus.Active_BMAL1_degradation_ Active_BMAL1_degradation(k7d=k7d) "Active_BMAL1_degradation" annotation(Placement(transformation(origin={-30.0,-40.0}, extent={{-10.0,-10.0},{10.0,10.0}})));
    equation
      connect(y3.n1,nuclear_per2_cry_complex_degradation.s1) annotation(Line(origin={58.0633,-45.0}, points={{11.9367,-5.0},{-2.5617,-5.0},{-2.5617,5.0},{-6.8133,5.0}}, smooth=Smooth.Bezier));
      connect(y3.n1,per2_cry_nuclear_export.s1) annotation(Line(origin={69.0717,-15.5633}, points={{0.9283,-34.4367},{0.9283,10.0617},{-0.9284,10.0617},{-0.9284,14.3133}}, smooth=Smooth.Bezier));
      connect(y3.n1,y3_node) annotation(Line(origin={76.6667,-56.6667}, points={{-6.6667,6.6667},{-6.6667,-3.3333},{13.3333,-3.3333}}, smooth=Smooth.Bezier));
      connect(y7.n1,BMAL1_activation.p1) annotation(Line(origin={-35.2035,-11.1599}, points={{-10.4069,-4.9549},{5.2035,-4.9549},{5.2035,9.9099}}, smooth=Smooth.Bezier));
      connect(y7.n1,Active_BMAL1_degradation.s1) annotation(Line(origin={-44.1569,-32.0383}, points={{-1.4535,15.9235},{-1.4535,-7.9617},{2.9069,-7.9617}}, smooth=Smooth.Bezier));
      connect(y7.n1,BMAL1_deactivation.s1) annotation(Line(origin={-56.3447,-11.1599}, points={{10.7343,-4.9549},{-5.3671,-4.9549},{-5.3671,9.9099}}, smooth=Smooth.Bezier));
      connect(y6.n1,BMAL1_deactivation.p1) annotation(Line(origin={-44.4745,40.4167}, points={{34.4745,9.5833},{-17.2373,9.5833},{-17.2373,-19.1667}}, smooth=Smooth.Bezier));
      connect(y6.n1,BMAL1_activation.s1) annotation(Line(origin={-20.0,30.5633}, points={{10.0,19.4367},{10.0,-5.0617},{-10.0,-5.0617},{-10.0,-9.3133}}, smooth=Smooth.Bezier));
      connect(y6.n1,nuclear_BMAL1_degradation.s1) annotation(Line(origin={0.0,30.5633}, points={{-10.0,19.4367},{-10.0,-5.0617},{10.0,-5.0617},{10.0,-9.3133}}, smooth=Smooth.Bezier));
      connect(y6.n1,BMAL1_nuclear_export.s1) annotation(Line(origin={-56.6667,43.75}, points={{46.6667,6.25},{-23.3333,6.25},{-23.3333,-12.5}}, smooth=Smooth.Bezier));
      connect(y6.n1,y6_node) annotation(Line(origin={58.5,70.0}, points={{-68.5,-20.0},{18.5,-20.0},{18.5,20.0},{31.5,20.0}}, smooth=Smooth.Bezier));
      connect(ambientSubstance.n1,nuclear_per2_cry_complex_degradation.p1) annotation(Line(origin={21.9367,-45.0}, points={{-11.9367,-5.0},{2.5617,-5.0},{2.5617,5.0},{6.8133,5.0}}, smooth=Smooth.Bezier));
      connect(ambientSubstance.n1,nuclear_BMAL1_degradation.p1) annotation(Line(origin={10.0,-25.625}, points={{0.0,-24.375},{0.0,24.375}}, smooth=Smooth.Bezier));
      connect(BMAL1_nuclear_export.p1,y5_node) annotation(Line(origin={-23.3333,-57.0833}, points={{-56.6667,65.8333},{-56.6667,-32.9167},{113.3333,-32.9167}}, smooth=Smooth.Bezier));
      connect(per2_cry_nuclear_export.p1,y2_node) annotation(Line(origin={79.0717,43.8125}, points={{-10.9284,-22.5625},{-10.9284,3.1875},{10.9283,3.1875},{10.9283,16.1875}}, smooth=Smooth.Bezier));
      connect(ambientSubstance.n1,Active_BMAL1_degradation.p1) annotation(Line(origin={-9.4367,-45.0}, points={{19.4367,-5.0},{-5.0617,-5.0},{-5.0617,5.0},{-9.3133,5.0}}, smooth=Smooth.Bezier));
    end Nucleus;

    model Cytoplasm "Cytoplasm"
      extends BioChem.Compartments.Compartment(V(start=1));
      import BioChem.Math.*;
      import BioChem.Constants.*;
      model y1_
        extends BioChem.Substances.Substance;
        annotation(__MathCore(RDF="<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
    <rdf:Description rdf:about=\"#metaid_0000033\">
      <bqbiol:encodes>
        <rdf:Bag>
          <rdf:li rdf:resource=\"urn:miriam:uniprot:O15055\"/>
          <rdf:li rdf:resource=\"urn:miriam:uniprot:Q16526\"/>
        </rdf:Bag>
      </bqbiol:encodes>
      <bqbiol:isVersionOf>
        <rdf:Bag>
          <rdf:li rdf:resource=\"urn:miriam:obo.chebi:CHEBI%3A33699\"/>
          <rdf:li rdf:resource=\"urn:miriam:kegg.compound:C00046\"/>
        </rdf:Bag>
      </bqbiol:isVersionOf>
    </rdf:Description>
  </rdf:RDF>"));
      end y1_;

      model y2_
        extends BioChem.Substances.Substance;
        annotation(__MathCore(RDF="<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
    <rdf:Description rdf:about=\"#metaid_0000034\">
      <bqbiol:hasPart>
        <rdf:Bag>
          <rdf:li rdf:resource=\"urn:miriam:uniprot:O15055\"/>
          <rdf:li rdf:resource=\"urn:miriam:uniprot:Q16526\"/>
        </rdf:Bag>
      </bqbiol:hasPart>
    </rdf:Description>
  </rdf:RDF>"));
      end y2_;

      model y4_
        extends BioChem.Substances.Substance;
        annotation(__MathCore(RDF="<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
    <rdf:Description rdf:about=\"#metaid_0000036\">
      <bqbiol:isVersionOf>
        <rdf:Bag>
          <rdf:li rdf:resource=\"urn:miriam:obo.chebi:CHEBI%3A33699\"/>
          <rdf:li rdf:resource=\"urn:miriam:kegg.compound:C00046\"/>
        </rdf:Bag>
      </bqbiol:isVersionOf>
      <bqbiol:encodes>
        <rdf:Bag>
          <rdf:li rdf:resource=\"urn:miriam:uniprot:Q8IUT4\"/>
        </rdf:Bag>
      </bqbiol:encodes>
    </rdf:Description>
  </rdf:RDF>"));
      end y4_;

      model y5_
        extends BioChem.Substances.Substance;
        annotation(__MathCore(RDF="<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
    <rdf:Description rdf:about=\"#metaid_0000037\">
      <bqbiol:isVersionOf>
        <rdf:Bag>
          <rdf:li rdf:resource=\"urn:miriam:uniprot:Q8IUT4\"/>
        </rdf:Bag>
      </bqbiol:isVersionOf>
    </rdf:Description>
  </rdf:RDF>"));
      end y5_;

      model per2_cry_transcription_
        extends BioChem.Interfaces.Reactions.Uui;
        annotation(__MathCore(RDF="<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
    <rdf:Description rdf:about=\"#metaid_0000044\">
      <bqbiol:isVersionOf>
        <rdf:Bag>
          <rdf:li rdf:resource=\"urn:miriam:obo.go:GO%3A0006350\"/>
        </rdf:Bag>
      </bqbiol:isVersionOf>
    </rdf:Description>
  </rdf:RDF>"));
        outer Real Cytoplasm_V "Variable used to access the volume of an outer compartment. Do not edit.";
        input Real trans_per2_cry;
      equation
        rr=Cytoplasm_V*trans_per2_cry;
      end per2_cry_transcription_;

      model per2_cry_mRNA_degradation_
        extends BioChem.Interfaces.Reactions.Uui;
        annotation(__MathCore(RDF="<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
    <rdf:Description rdf:about=\"#metaid_0000045\">
      <bqbiol:isVersionOf>
        <rdf:Bag>
          <rdf:li rdf:resource=\"urn:miriam:obo.go:GO%3A0006402\"/>
        </rdf:Bag>
      </bqbiol:isVersionOf>
    </rdf:Description>
  </rdf:RDF>"));
        outer Real Cytoplasm_V "Variable used to access the volume of an outer compartment. Do not edit.";
        parameter Real k1d;
      equation
        rr=Cytoplasm_V*k1d*s1.c;
      end per2_cry_mRNA_degradation_;

      model per2_cry_complex_formation_
        extends BioChem.Interfaces.Reactions.Uui;
        extends BioChem.Interfaces.Reactions.Modifiers.Modifier;
        annotation(__MathCore(RDF="<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
    <rdf:Description rdf:about=\"#metaid_0000046\">
      <bqbiol:isVersionOf>
        <rdf:Bag>
          <rdf:li rdf:resource=\"urn:miriam:obo.go:GO%3A0046982\"/>
        </rdf:Bag>
      </bqbiol:isVersionOf>
    </rdf:Description>
  </rdf:RDF>"));
        outer Real Cytoplasm_V "Variable used to access the volume of an outer compartment. Do not edit.";
        parameter Real k2b;
        parameter Real q;
      equation
        rr=Cytoplasm_V*k2b*m1.c^q;
      end per2_cry_complex_formation_;

      model cytoplasmic_per2_cry_complex_degradation_
        extends BioChem.Interfaces.Reactions.Uui;
        annotation(__MathCore(RDF="<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
    <rdf:Description rdf:about=\"#metaid_0000047\">
      <bqbiol:isVersionOf>
        <rdf:Bag>
          <rdf:li rdf:resource=\"urn:miriam:obo.go:GO%3A0044257\"/>
        </rdf:Bag>
      </bqbiol:isVersionOf>
    </rdf:Description>
  </rdf:RDF>"));
        outer Real Cytoplasm_V "Variable used to access the volume of an outer compartment. Do not edit.";
        parameter Real k2d;
      equation
        rr=Cytoplasm_V*k2d*s1.c;
      end cytoplasmic_per2_cry_complex_degradation_;

      model per2_cry_nuclear_import_
        extends BioChem.Interfaces.Reactions.Uui;
        annotation(__MathCore(RDF="<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
    <rdf:Description rdf:about=\"#metaid_0000048\">
      <bqbiol:isVersionOf>
        <rdf:Bag>
          <rdf:li rdf:resource=\"urn:miriam:obo.go:GO%3A0051170\"/>
        </rdf:Bag>
      </bqbiol:isVersionOf>
    </rdf:Description>
  </rdf:RDF>"));
        outer Real Cytoplasm_V "Variable used to access the volume of an outer compartment. Do not edit.";
        parameter Real k2t;
      equation
        rr=Cytoplasm_V*k2t*s1.c;
      end per2_cry_nuclear_import_;

      model Bmal1_transcription_
        extends BioChem.Interfaces.Reactions.Uui;
        annotation(__MathCore(RDF="<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
    <rdf:Description rdf:about=\"#metaid_0000051\">
      <bqbiol:isVersionOf>
        <rdf:Bag>
          <rdf:li rdf:resource=\"urn:miriam:obo.go:GO%3A0006350\"/>
        </rdf:Bag>
      </bqbiol:isVersionOf>
    </rdf:Description>
  </rdf:RDF>"));
        outer Real Cytoplasm_V "Variable used to access the volume of an outer compartment. Do not edit.";
        input Real trans_Bmal1;
      equation
        rr=Cytoplasm_V*trans_Bmal1;
      end Bmal1_transcription_;

      model Bmal1_mRNA_degradation_
        extends BioChem.Interfaces.Reactions.Uui;
        annotation(__MathCore(RDF="<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
    <rdf:Description rdf:about=\"#metaid_0000052\">
      <bqbiol:isVersionOf>
        <rdf:Bag>
          <rdf:li rdf:resource=\"urn:miriam:obo.go:GO%3A0006402\"/>
        </rdf:Bag>
      </bqbiol:isVersionOf>
    </rdf:Description>
  </rdf:RDF>"));
        outer Real Cytoplasm_V "Variable used to access the volume of an outer compartment. Do not edit.";
        parameter Real k4d;
      equation
        rr=Cytoplasm_V*k4d*s1.c;
      end Bmal1_mRNA_degradation_;

      model BMAL1_translation_
        extends BioChem.Interfaces.Reactions.Uui;
        extends BioChem.Interfaces.Reactions.Modifiers.Modifier;
        annotation(__MathCore(RDF="<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
    <rdf:Description rdf:about=\"#metaid_0000053\">
      <bqbiol:isVersionOf>
        <rdf:Bag>
          <rdf:li rdf:resource=\"urn:miriam:obo.go:GO%3A0006412\"/>
        </rdf:Bag>
      </bqbiol:isVersionOf>
    </rdf:Description>
  </rdf:RDF>"));
        outer Real Cytoplasm_V "Variable used to access the volume of an outer compartment. Do not edit.";
        parameter Real k5b;
      equation
        rr=Cytoplasm_V*k5b*m1.c;
      end BMAL1_translation_;

      model cytoplasmic_BMAL1_degradation_
        extends BioChem.Interfaces.Reactions.Uui;
        annotation(__MathCore(RDF="<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
    <rdf:Description rdf:about=\"#metaid_0000054\">
      <bqbiol:isVersionOf>
        <rdf:Bag>
          <rdf:li rdf:resource=\"urn:miriam:obo.go:GO%3A0044257\"/>
        </rdf:Bag>
      </bqbiol:isVersionOf>
    </rdf:Description>
  </rdf:RDF>"));
        outer Real Cytoplasm_V "Variable used to access the volume of an outer compartment. Do not edit.";
        parameter Real k5d;
      equation
        rr=Cytoplasm_V*k5d*s1.c;
      end cytoplasmic_BMAL1_degradation_;

      model BMAL1_nuclear_import_
        extends BioChem.Interfaces.Reactions.Uui;
        annotation(__MathCore(RDF="<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
    <rdf:Description rdf:about=\"#metaid_0000055\">
      <bqbiol:isVersionOf>
        <rdf:Bag>
          <rdf:li rdf:resource=\"urn:miriam:obo.go:GO%3A0051170\"/>
        </rdf:Bag>
      </bqbiol:isVersionOf>
    </rdf:Description>
  </rdf:RDF>"));
        outer Real Cytoplasm_V "Variable used to access the volume of an outer compartment. Do not edit.";
        parameter Real k5t;
      equation
        rr=Cytoplasm_V*k5t*s1.c;
      end BMAL1_nuclear_import_;

      inner Real Cytoplasm_V=V "Variable used to make the compartment volume accessible for inner components. Do not edit.";
      Cytoplasm.y1_ y1(c(start=0.2)) "Per2 or Cry mRNA" annotation(Placement(transformation(origin={170.0,60.0}, extent={{-10.0,-10.0},{10.0,10.0}})));
      Cytoplasm.y2_ y2(c(start=0)) "PER2_CRY_complex_cytoplasm" annotation(Placement(transformation(origin={140.0,-21.8298}, extent={{-10.0,-10.0},{10.0,10.0}})));
      Cytoplasm.y4_ y4(c(start=0.8)) "Bmal1 mRNA" annotation(Placement(transformation(origin={64.8293,-60.0}, extent={{-10.0,-10.0},{10.0,10.0}})));
      Cytoplasm.y5_ y5(c(start=1)) "BMAL1_cytoplasm" annotation(Placement(transformation(origin={20.0,20.0}, extent={{-10.0,-10.0},{10.0,10.0}})));
      BioChem.Substances.AmbientSubstance ambientSubstance annotation(Placement(transformation(origin={90.0,30.0}, extent={{-10.0,-10.0},{10.0,10.0}})));
      input Real trans_per2_cry;
      Cytoplasm.per2_cry_transcription_ per2_cry_transcription(trans_per2_cry=trans_per2_cry) "per2_cry_transcription" annotation(Placement(transformation(origin={130.0,50.0}, extent={{-10.0,-10.0},{10.0,10.0}})));
      parameter Real k1d;
      Cytoplasm.per2_cry_mRNA_degradation_ per2_cry_mRNA_degradation(k1d=k1d) "per2_cry_mRNA_degradation" annotation(Placement(transformation(origin={130.0,70.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=-180)));
      parameter Real k2b;
      parameter Real q;
      Cytoplasm.per2_cry_complex_formation_ per2_cry_complex_formation(k2b=k2b, q=q) "per2_cry_complex_formation" annotation(Placement(transformation(origin={152.1486,20.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=-90)));
      parameter Real k2d;
      Cytoplasm.cytoplasmic_per2_cry_complex_degradation_ cytoplasmic_per2_cry_complex_degradation(k2d=k2d) "cytoplasmic_per2_cry_complex_degradation" annotation(Placement(transformation(origin={120.0,10.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=-270)));
      parameter Real k2t;
      BioChem.Interfaces.Nodes.SubstanceConnector y3_node annotation(Placement(transformation(origin={190.0,30.0}, extent={{-10.0,-10.0},{10.0,10.0}}), iconTransformation(origin={110.0,30.0}, extent={{-10.0,-10.0},{10.0,10.0}})));
      Cytoplasm.per2_cry_nuclear_import_ per2_cry_nuclear_import(k2t=k2t) "per2_cry_nuclear_import" annotation(Placement(transformation(origin={180.0,10.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=-270)));
      BioChem.Interfaces.Nodes.SubstanceConnector y2_node annotation(Placement(transformation(origin={190.0,-30.0}, extent={{-10.0,-10.0},{10.0,10.0}}), iconTransformation(origin={110.0,-30.0}, extent={{-10.0,-10.0},{10.0,10.0}})));
      input Real trans_Bmal1;
      Cytoplasm.Bmal1_transcription_ Bmal1_transcription(trans_Bmal1=trans_Bmal1) "Bmal1_transcription" annotation(Placement(transformation(origin={74.9249,-23.3818}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=-90)));
      parameter Real k4d;
      Cytoplasm.Bmal1_mRNA_degradation_ Bmal1_mRNA_degradation(k4d=k4d) "Bmal1_mRNA_degradation" annotation(Placement(transformation(origin={100.0,-30.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=-270)));
      parameter Real k5b;
      Cytoplasm.BMAL1_translation_ BMAL1_translation(k5b=k5b) "BMAL1_translation" annotation(Placement(transformation(origin={60.0,0.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=-180)));
      parameter Real k5d;
      Cytoplasm.cytoplasmic_BMAL1_degradation_ cytoplasmic_BMAL1_degradation(k5d=k5d) "cytoplasmic_BMAL1_degradation" annotation(Placement(transformation(origin={60.0,30.0}, extent={{-10.0,-10.0},{10.0,10.0}})));
      parameter Real k5t;
      BioChem.Interfaces.Nodes.SubstanceConnector y6_node annotation(Placement(transformation(origin={190.0,-90.0}, extent={{-10.0,-10.0},{10.0,10.0}}), iconTransformation(origin={110.0,-90.0}, extent={{-10.0,-10.0},{10.0,10.0}})));
      Cytoplasm.BMAL1_nuclear_import_ BMAL1_nuclear_import(k5t=k5t) "BMAL1_nuclear_import" annotation(Placement(transformation(origin={50.0,-80.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=-450)));
      BioChem.Interfaces.Nodes.SubstanceConnector y5_node annotation(Placement(transformation(origin={190.0,80.0}, extent={{-10.0,-10.0},{10.0,10.0}}), iconTransformation(origin={110.0,90.0}, extent={{-10.0,-10.0},{10.0,10.0}})));
      annotation(Icon(coordinateSystem(extent={{-100.0,-100.0},{100.0,100.0}}, preserveAspectRatio=true, grid={10,10})), Diagram(coordinateSystem(extent={{0.0,-100.0},{200.0,100.0}}, preserveAspectRatio=true, grid={10,10})));
    equation
      connect(BMAL1_nuclear_import.p1,y6_node) annotation(Line(origin={128.8,-92.4506}, points={{-78.8,1.2006},{-78.8,-3.0509},{48.2,-3.0509},{48.2,2.4506},{61.2,2.4506}}, smooth=Smooth.Bezier));
      connect(y2.n1,y2_node) annotation(Line(origin={169.0149,-25.9149}, points={{-29.0149,4.0851},{8.5,4.0851},{8.5,-4.0851},{20.9851,-4.0851}}, smooth=Smooth.Bezier));
      connect(per2_cry_nuclear_import.p1,y3_node) annotation(Line(origin={183.3333,27.0833}, points={{-3.3333,-5.8333},{-3.3333,2.9167},{6.6667,2.9167}}, smooth=Smooth.Bezier));
      connect(y5.n1,y5_node) annotation(Line(origin={121.75,70.0}, points={{-101.75,-50.0},{-41.75,30.0},{65.25,10.0},{68.25,10.0}}, smooth=Smooth.Bezier));
      connect(y2.n1,per2_cry_nuclear_import.s1) annotation(Line(origin={166.6667,-14.9699}, points={{-26.6667,-6.8599},{13.3333,-6.8599},{13.3333,13.7199}}, smooth=Smooth.Bezier));
      connect(y1.n1,per2_cry_complex_formation.m1) annotation(Line(origin={167.0495,33.3333}, points={{2.9505,26.6667},{2.9505,-13.3333},{-5.9009,-13.3333}}, smooth=Smooth.Bezier));
      connect(ambientSubstance.n1,per2_cry_complex_formation.s1) annotation(Line(origin={120.0594,32.4506}, points={{-30.0594,-2.4506},{-17.0594,-2.4506},{-17.0594,3.0509},{32.0892,3.0509},{32.0892,-1.2006}}, smooth=Smooth.Bezier));
      connect(y2.n1,per2_cry_complex_formation.p1) annotation(Line(origin={146.0743,-1.0207}, points={{-6.0743,-20.8091},{-6.0743,5.5192},{6.0743,5.5192},{6.0743,9.7707}}, smooth=Smooth.Bezier));
      connect(y2.n1,cytoplasmic_per2_cry_complex_degradation.s1) annotation(Line(origin={130.0,-8.5207}, points={{10.0,-13.3091},{10.0,3.0192},{-10.0,3.0192},{-10.0,7.2707}}, smooth=Smooth.Bezier));
      connect(ambientSubstance.n1,cytoplasmic_per2_cry_complex_degradation.p1) annotation(Line(origin={110.0,27.0833}, points={{-20.0,2.9167},{10.0,2.9167},{10.0,-5.8333}}, smooth=Smooth.Bezier));
      connect(y1.n1,per2_cry_transcription.p1) annotation(Line(origin={150.5633,55.0}, points={{19.4367,5.0},{-5.0617,5.0},{-5.0617,-5.0},{-9.3133,-5.0}}, smooth=Smooth.Bezier));
      connect(y1.n1,per2_cry_mRNA_degradation.s1) annotation(Line(origin={150.5633,65.0}, points={{19.4367,-5.0},{-5.0617,-5.0},{-5.0617,5.0},{-9.3133,5.0}}, smooth=Smooth.Bezier));
      connect(ambientSubstance.n1,per2_cry_mRNA_degradation.p1) annotation(Line(origin={99.5833,56.6667}, points={{-9.5833,-26.6667},{-9.5833,13.3333},{19.1667,13.3333}}, smooth=Smooth.Bezier));
      connect(ambientSubstance.n1,per2_cry_transcription.s1) annotation(Line(origin={106.872,42.5}, points={{-16.872,-12.5},{-2.6325,-2.5},{7.6265,7.5},{11.878,7.5}}, smooth=Smooth.Bezier));
      connect(ambientSubstance.n1,BMAL1_translation.s1) annotation(Line(origin={83.75,10.0}, points={{6.25,20.0},{6.25,-10.0},{-12.5,-10.0}}, smooth=Smooth.Bezier));
      connect(ambientSubstance.n1,Bmal1_mRNA_degradation.p1) annotation(Line(origin={95.0,-4.4367}, points={{-5.0,34.4367},{-5.0,-10.0617},{5.0,-10.0617},{5.0,-14.3133}}, smooth=Smooth.Bezier));
      connect(ambientSubstance.n1,Bmal1_transcription.s1) annotation(Line(origin={82.4624,0.5269}, points={{7.5376,29.4731},{7.5376,-8.4072},{-7.5375,-8.4072},{-7.5375,-12.6587}}, smooth=Smooth.Bezier));
      connect(ambientSubstance.n1,cytoplasmic_BMAL1_degradation.p1) annotation(Line(origin={80.625,30.0}, points={{9.375,-0.0},{-9.375,0.0}}, smooth=Smooth.Bezier));
      connect(y5.n1,cytoplasmic_BMAL1_degradation.s1) annotation(Line(origin={39.4367,25.0}, points={{-19.4367,-5.0},{5.0617,-5.0},{5.0617,5.0},{9.3133,5.0}}, smooth=Smooth.Bezier));
      connect(y5.n1,BMAL1_nuclear_import.s1) annotation(Line(origin={35.0,-44.4367}, points={{-15.0,64.4367},{-15.0,-20.0617},{15.0,-20.0617},{15.0,-24.3133}}, smooth=Smooth.Bezier));
      connect(y5.n1,BMAL1_translation.p1) annotation(Line(origin={39.4367,10.0}, points={{-19.4367,10.0},{5.0617,10.0},{5.0617,-10.0},{9.3133,-10.0}}, smooth=Smooth.Bezier));
      connect(y4.n1,BMAL1_translation.m1) annotation(Line(origin={62.4147,-24.2512}, points={{2.4147,-35.7488},{2.4147,10.2487},{-2.4147,10.2487},{-2.4147,15.2512}}, smooth=Smooth.Bezier));
      connect(y4.n1,Bmal1_transcription.p1) annotation(Line(origin={69.8771,-43.0996}, points={{-5.0478,-16.9004},{-5.0478,4.2163},{5.0478,4.2163},{5.0478,8.4678}}, smooth=Smooth.Bezier));
      connect(y4.n1,Bmal1_mRNA_degradation.s1) annotation(Line(origin={88.2764,-53.75}, points={{-23.4471,-6.25},{11.7236,-6.25},{11.7236,12.5}}, smooth=Smooth.Bezier));
    end Cytoplasm;

    annotation(Documentation(info="<html>
<h1>Circadian Oscillator</h1>

This example is the modelica version of the model presented in
<i>Modeling feedback loops of the Mammalian circadian oscillator</i> by
Becker-Weimann S, Wolf J, Herzel H, Kramer A. (Biophysical Journal Volume 87 November 2004 3023-3034)

<br>
<br>
See
<a href=\"Modelica://BioChem.Examples.CircadianOscillator.Container\">Container</a>
 for more documentation and simulation results.
</html>", revisions=""));
    annotation(__MathCore(RDF="<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
    <rdf:Description rdf:about=\"#metaid_0000002\">
      <dc:creator rdf:parseType=\"Resource\">
        <rdf:Bag>
          <rdf:li rdf:parseType=\"Resource\">
            <vCard:N rdf:parseType=\"Resource\">
              <vCard:Family>Dharuri</vCard:Family>
              <vCard:Given>Harish</vCard:Given>
            </vCard:N>
            <vCard:EMAIL>hdharuri@cds.caltech.edu</vCard:EMAIL>
            <vCard:ORG>
              <vCard:Orgname>California Institute of Technology</vCard:Orgname>
            </vCard:ORG>
          </rdf:li>
        </rdf:Bag>
      </dc:creator>
      <dcterms:created rdf:parseType=\"Resource\">
        <dcterms:W3CDTF>2008-04-16T11:56:13Z</dcterms:W3CDTF>
      </dcterms:created>
      <dcterms:modified rdf:parseType=\"Resource\">
        <dcterms:W3CDTF>2008-08-20T18:28:56Z</dcterms:W3CDTF>
      </dcterms:modified>
      <bqmodel:is>
        <rdf:Bag>
          <rdf:li rdf:resource=\"urn:miriam:biomodels.db:BIOMD0000000170\"/>
        </rdf:Bag>
      </bqmodel:is>
      <bqmodel:isDescribedBy>
        <rdf:Bag>
          <rdf:li rdf:resource=\"urn:miriam:pubmed:15347590\"/>
        </rdf:Bag>
      </bqmodel:isDescribedBy>
      <bqbiol:isPartOf>
        <rdf:Bag>
          <rdf:li rdf:resource=\"urn:miriam:kegg.pathway:hsa04710\"/>
        </rdf:Bag>
      </bqbiol:isPartOf>
      <bqbiol:is>
        <rdf:Bag>
          <rdf:li rdf:resource=\"urn:miriam:taxonomy:40674\"/>
          <rdf:li rdf:resource=\"urn:miriam:obo.go:GO%3A0007623\"/>
        </rdf:Bag>
      </bqbiol:is>
    </rdf:Description>
  </rdf:RDF>"));
  end CircadianOscillator;

  package CellDivison "Tyson1991_CellCycle_6var"
    extends BioChem.Icons.Example;
    model cell
      extends BioChem.Compartments.MainCompartment(V(start=1));
      import BioChem.Math.*;
      import BioChem.Constants.*;
      model EmptySet_
        extends BioChem.Substances.BoundarySubstance;
      end EmptySet_;

      model C2_
        extends BioChem.Substances.Substance;
        annotation(__MathCore(RDF="<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
    <rdf:Description rdf:about=\"#_000004\">
      <bqbiol:isVersionOf>
        <rdf:Bag>
          <rdf:li rdf:resource=\"urn:miriam:uniprot:P04551\"/>
        </rdf:Bag>
      </bqbiol:isVersionOf>
    </rdf:Description>
  </rdf:RDF>"));
      end C2_;

      model CP_
        extends BioChem.Substances.Substance;
        annotation(__MathCore(RDF="<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
    <rdf:Description rdf:about=\"#_000005\">
      <bqbiol:isVersionOf>
        <rdf:Bag>
          <rdf:li rdf:resource=\"urn:miriam:uniprot:P04551\"/>
        </rdf:Bag>
      </bqbiol:isVersionOf>
    </rdf:Description>
  </rdf:RDF>"));
      end CP_;

      model M_
        extends BioChem.Substances.Substance;
        annotation(__MathCore(RDF="<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
    <rdf:Description rdf:about=\"#_000006\">
      <bqbiol:hasPart>
        <rdf:Bag>
          <rdf:li rdf:resource=\"urn:miriam:uniprot:P04551\"/>
          <rdf:li rdf:resource=\"urn:miriam:interpro:IPR006670\"/>
        </rdf:Bag>
      </bqbiol:hasPart>
    </rdf:Description>
  </rdf:RDF>"));
      end M_;

      model pM_
        extends BioChem.Substances.Substance;
        annotation(__MathCore(RDF="<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
    <rdf:Description rdf:about=\"#_000007\">
      <bqbiol:hasPart>
        <rdf:Bag>
          <rdf:li rdf:resource=\"urn:miriam:uniprot:P04551\"/>
          <rdf:li rdf:resource=\"urn:miriam:interpro:IPR006670\"/>
        </rdf:Bag>
      </bqbiol:hasPart>
    </rdf:Description>
  </rdf:RDF>"));
      end pM_;

      model Y_
        extends BioChem.Substances.Substance;
        annotation(__MathCore(RDF="<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
    <rdf:Description rdf:about=\"#_000008\">
      <bqbiol:isVersionOf>
        <rdf:Bag>
          <rdf:li rdf:resource=\"urn:miriam:interpro:IPR006670\"/>
        </rdf:Bag>
      </bqbiol:isVersionOf>
    </rdf:Description>
  </rdf:RDF>"));
      end Y_;

      model YP_
        extends BioChem.Substances.Substance;
        annotation(__MathCore(RDF="<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
    <rdf:Description rdf:about=\"#_000009\">
      <bqbiol:isVersionOf>
        <rdf:Bag>
          <rdf:li rdf:resource=\"urn:miriam:interpro:IPR006670\"/>
        </rdf:Bag>
      </bqbiol:isVersionOf>
    </rdf:Description>
  </rdf:RDF>"));
      end YP_;

      model YT_
        extends BioChem.Substances.SignalSubstance;
        annotation(__MathCore(RDF="<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
    <rdf:Description rdf:about=\"#metaid_0000020\">
      <bqbiol:isVersionOf>
        <rdf:Bag>
          <rdf:li rdf:resource=\"urn:miriam:interpro:IPR006670\"/>
        </rdf:Bag>
      </bqbiol:isVersionOf>
    </rdf:Description>
  </rdf:RDF>"));
      end YT_;

      model CT_
        extends BioChem.Substances.SignalSubstance;
        annotation(__MathCore(RDF="<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
    <rdf:Description rdf:about=\"#metaid_0000022\">
      <bqbiol:isVersionOf>
        <rdf:Bag>
          <rdf:li rdf:resource=\"urn:miriam:uniprot:P04551\"/>
        </rdf:Bag>
      </bqbiol:isVersionOf>
    </rdf:Description>
  </rdf:RDF>"));
      end CT_;

      model Reaction1_
        extends BioChem.Interfaces.Reactions.Ubi;
        annotation(__MathCore(RDF="<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
    <rdf:Description rdf:about=\"#_000010\">
      <bqbiol:hasVersion>
        <rdf:Bag>
          <rdf:li rdf:resource=\"urn:miriam:reactome:REACT_6308\"/>
        </rdf:Bag>
      </bqbiol:hasVersion>
      <bqbiol:isVersionOf>
        <rdf:Bag>
          <rdf:li rdf:resource=\"urn:miriam:obo.go:GO%3A0000079\"/>
        </rdf:Bag>
      </bqbiol:isVersionOf>
    </rdf:Description>
  </rdf:RDF>"));
        parameter Real k6=1;
        outer Real cell_V "Variable used to access the volume of an outer compartment. Do not edit.";
      equation
        rr=cell_V*k6*s1.c;
      end Reaction1_;

      model Reaction2_
        extends BioChem.Interfaces.Reactions.Uui;
        annotation(__MathCore(RDF="<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
    <rdf:Description rdf:about=\"#_000011\">
      <bqbiol:isVersionOf>
        <rdf:Bag>
          <rdf:li rdf:resource=\"urn:miriam:ec-code:2.7.11.1\"/>
          <rdf:li rdf:resource=\"urn:miriam:obo.go:GO%3A0006468\"/>
        </rdf:Bag>
      </bqbiol:isVersionOf>
    </rdf:Description>
  </rdf:RDF>"));
        parameter Real k8notP=1000000.0;
        outer Real cell_V "Variable used to access the volume of an outer compartment. Do not edit.";
      equation
        rr=cell_V*s1.c*k8notP;
      end Reaction2_;

      model Reaction3_
        extends BioChem.Interfaces.Reactions.Uui;
        annotation(__MathCore(RDF="<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
    <rdf:Description rdf:about=\"#_000012\">
      <bqbiol:isVersionOf>
        <rdf:Bag>
          <rdf:li rdf:resource=\"urn:miriam:ec-code:3.1.3.16\"/>
          <rdf:li rdf:resource=\"urn:miriam:obo.go:GO%3A0006470\"/>
        </rdf:Bag>
      </bqbiol:isVersionOf>
    </rdf:Description>
  </rdf:RDF>"));
        parameter Real k9=1000;
        outer Real cell_V "Variable used to access the volume of an outer compartment. Do not edit.";
      equation
        rr=cell_V*s1.c*k9;
      end Reaction3_;

      model Reaction4_
        extends BioChem.Interfaces.Reactions.Bui;
        annotation(__MathCore(RDF="<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
    <rdf:Description rdf:about=\"#_000013\">
      <bqbiol:hasVersion>
        <rdf:Bag>
          <rdf:li rdf:resource=\"urn:miriam:reactome:REACT_6308\"/>
          <rdf:li rdf:resource=\"urn:miriam:reactome:REACT_6216\"/>
        </rdf:Bag>
      </bqbiol:hasVersion>
    </rdf:Description>
  </rdf:RDF>"));
        parameter Real k3=200;
        outer Real cell_V "Variable used to access the volume of an outer compartment. Do not edit.";
      equation
        rr=cell_V*s1.c*k3*s2.c;
      end Reaction4_;

      model Reaction5_
        extends BioChem.Interfaces.Reactions.Uui;
        annotation(__MathCore(RDF="<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
    <rdf:Description rdf:about=\"#_000014\">
      <bqbiol:hasVersion>
        <rdf:Bag>
          <rdf:li rdf:resource=\"urn:miriam:reactome:REACT_6327\"/>
          <rdf:li rdf:resource=\"urn:miriam:reactome:REACT_3178\"/>
        </rdf:Bag>
      </bqbiol:hasVersion>
      <bqbiol:isVersionOf>
        <rdf:Bag>
          <rdf:li rdf:resource=\"urn:miriam:ec-code:2.7.10.2\"/>
          <rdf:li rdf:resource=\"urn:miriam:obo.go:GO%3A0045736\"/>
          <rdf:li rdf:resource=\"urn:miriam:obo.go:GO%3A0006468\"/>
        </rdf:Bag>
      </bqbiol:isVersionOf>
    </rdf:Description>
  </rdf:RDF>"));
        parameter Real k5notP=0;
        outer Real cell_V "Variable used to access the volume of an outer compartment. Do not edit.";
      equation
        rr=cell_V*k5notP*s1.c;
      end Reaction5_;

      model Reaction6_
        extends BioChem.Interfaces.Reactions.Uui;
        annotation(__MathCore(RDF="<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
    <rdf:Description rdf:about=\"#_000015\">
      <bqbiol:isVersionOf>
        <rdf:Bag>
          <rdf:li rdf:resource=\"urn:miriam:obo.go:GO%3A0043037\"/>
        </rdf:Bag>
      </bqbiol:isVersionOf>
    </rdf:Description>
  </rdf:RDF>"));
        parameter Real k1aa=0.015;
        outer Real cell_V "Variable used to access the volume of an outer compartment. Do not edit.";
      equation
        rr=cell_V*k1aa;
      end Reaction6_;

      model Reaction7_
        extends BioChem.Interfaces.Reactions.Uui;
        annotation(__MathCore(RDF="<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
    <rdf:Description rdf:about=\"#_000016\">
      <bqbiol:isVersionOf>
        <rdf:Bag>
          <rdf:li rdf:resource=\"urn:miriam:obo.go:GO%3A0008054\"/>
        </rdf:Bag>
      </bqbiol:isVersionOf>
    </rdf:Description>
  </rdf:RDF>"));
        parameter Real k2=0;
        outer Real cell_V "Variable used to access the volume of an outer compartment. Do not edit.";
      equation
        rr=cell_V*k2*s1.c;
      end Reaction7_;

      model Reaction8_
        extends BioChem.Interfaces.Reactions.Uui;
        annotation(__MathCore(RDF="<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
    <rdf:Description rdf:about=\"#_000017\">
      <bqbiol:isVersionOf>
        <rdf:Bag>
          <rdf:li rdf:resource=\"urn:miriam:obo.go:GO%3A0008054\"/>
        </rdf:Bag>
      </bqbiol:isVersionOf>
    </rdf:Description>
  </rdf:RDF>"));
        parameter Real k7=0.6;
        outer Real cell_V "Variable used to access the volume of an outer compartment. Do not edit.";
      equation
        rr=cell_V*k7*s1.c;
      end Reaction8_;

      model Reaction9_
        extends BioChem.Interfaces.Reactions.Uui;
        extends BioChem.Interfaces.Reactions.Modifiers.Modifier;
        annotation(__MathCore(RDF="<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
    <rdf:Description rdf:about=\"#_000018\">
      <bqbiol:isVersionOf>
        <rdf:Bag>
          <rdf:li rdf:resource=\"urn:miriam:ec-code:3.1.3.16\"/>
          <rdf:li rdf:resource=\"urn:miriam:obo.go:GO%3A0045737\"/>
          <rdf:li rdf:resource=\"urn:miriam:obo.go:GO%3A0006470\"/>
        </rdf:Bag>
      </bqbiol:isVersionOf>
      <bqbiol:hasVersion>
        <rdf:Bag>
          <rdf:li rdf:resource=\"urn:miriam:reactome:REACT_6294\"/>
          <rdf:li rdf:resource=\"urn:miriam:reactome:REACT_6175\"/>
          <rdf:li rdf:resource=\"urn:miriam:reactome:REACT_6257\"/>
        </rdf:Bag>
      </bqbiol:hasVersion>
    </rdf:Description>
  </rdf:RDF>"));
        parameter Real k4=180;
        parameter Real k4prime=0.018;
        outer Real cell_V "Variable used to access the volume of an outer compartment. Do not edit.";
      equation
        rr=cell_V*s1.c*(k4prime + k4*(p1.c/m1.c)^2);
      end Reaction9_;

      annotation(__MathCore(RDF="<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
    <rdf:Description rdf:about=\"#_000002\">
      <bqbiol:is>
        <rdf:Bag>
          <rdf:li rdf:resource=\"urn:miriam:obo.go:GO%3A0005623\"/>
        </rdf:Bag>
      </bqbiol:is>
    </rdf:Description>
  </rdf:RDF>"), experiment(StartTime=0.0, StopTime=100, NumberOfIntervals=-1, Algorithm="dassl", Tolerance=1e-06), Documentation(info="<html>
<h1>CellDivision</h1>
This example is a Modelica version of the model presented in <i>Modeling the cell division cycle: cdc2 and cyclin interactions</i> by John J. Tyson. (Proc. Nati. Acad. Sci. USA
Vol. 88, pp. 7328-7332, August 1991
Cell Biology)

<h2>Abstract</h2>
The proteins cdc2 and cyclin form a heterodimer
(maturation promoting factor) that controls the major
events of the cell cycle. A mathematical model for the interactions
of cdc2 and cyclin is constructed. Simulation and analysis
of the model show that the control system can operate in three
modes: as a steady state with high maturation promoting factor
activity, as a spontaneous oscillator, or as an excitable switch.
We associate the steady state with metaphase arrest in unfertilized
eggs, the spontaneous oscillations with rapid division
cycles in early embryos, and the excitable switch with growthcontrolled
division cycles typical of nonembryonic cells.

<h2>Simulations</h2>

The simulation results are shown in the
 <a href=\"#fig1\">Figure 1</a>. This plot corresponds to Fig 3A from the original publication (Tyson, 1991). <br>

<a name=\"fig1\"></a>
<img src=\"modelica://BioChem/Resources/Images/Cell2.png\" alt=\"Fig1: Simulation results\">
</html>", revisions=""));
      inner Real cell_V=V "Variable used to make the compartment volume accessible for inner components. Do not edit.";
      CellDivison.cell.EmptySet_ EmptySet(c(start=0)) annotation(Placement(transformation(origin={10.0,20.0}, extent={{-10.0,10.0},{10.0,-10.0}})));
      CellDivison.cell.C2_ C2(c(start=0)) "cdc2k" annotation(Placement(transformation(origin={20.0,60.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=-270)));
      CellDivison.cell.CP_ CP(c(start=0.75)) "cdc2k-P" annotation(Placement(transformation(origin={80.0,60.0}, extent={{-10.0,10.0},{10.0,-10.0}}, rotation=-90)));
      CellDivison.cell.M_ M(c(start=0)) "p-cyclin_cdc2" annotation(Placement(transformation(origin={-80.0,-30.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=-90)));
      CellDivison.cell.pM_ pM(c(start=0.25)) "p-cyclin_cdc2-p" annotation(Placement(transformation(origin={-10.0,-50.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=-180)));
      CellDivison.cell.Y_ Y(c(start=0)) "cyclin" annotation(Placement(transformation(origin={20.0,-30.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=-180)));
      CellDivison.cell.YP_ YP(c(start=0)) "p-cyclin" annotation(Placement(transformation(origin={-47.6389,-8.3553}, extent={{-10.0,-10.0},{10.0,10.0}})));
      CellDivison.cell.YT_ YT(c(start=0)) "total_cyclin" annotation(Placement(transformation(origin={-70.0,70.0}, extent={{-10.0,-10.0},{10.0,10.0}})));
      CellDivison.cell.CT_ CT(c(start=0)) "total_cdc2" annotation(Placement(transformation(origin={-40.0,-60.0}, extent={{-10.0,-10.0},{10.0,10.0}})));
      CellDivison.cell.Reaction1_ Reaction1 "cyclin_cdc2k dissociation" annotation(Placement(transformation(origin={-70.0,20.0}, extent={{-10.0,-10.0},{10.0,10.0}})));
      CellDivison.cell.Reaction2_ Reaction2 "cdc2k phosphorylation" annotation(Placement(transformation(origin={50.0,90.0}, extent={{-10.0,-10.0},{10.0,10.0}})));
      CellDivison.cell.Reaction3_ Reaction3 "cdc2k dephosphorylation" annotation(Placement(transformation(origin={50.0,40.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=-180)));
      CellDivison.cell.Reaction4_ Reaction4 "cyclin cdc2k-p association" annotation(Placement(transformation(origin={48.1433,-70.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=-90)));
      CellDivison.cell.Reaction5_ Reaction5 "deactivation of cdc2 kinase" annotation(Placement(transformation(origin={-45.4898,-80.0}, extent={{-10.0,-10.0},{10.0,10.0}})));
      CellDivison.cell.Reaction6_ Reaction6 "cyclin biosynthesis" annotation(Placement(transformation(origin={-7.8911,-10.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=-90)));
      CellDivison.cell.Reaction7_ Reaction7 "default degradation of cyclin" annotation(Placement(transformation(origin={50.0,-10.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=-270)));
      CellDivison.cell.Reaction8_ Reaction8 "cdc2 kinase triggered degration of cyclin" annotation(Placement(transformation(origin={-30.0,20.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=-270)));
      CellDivison.cell.Reaction9_ Reaction9 "activation of cdc2 kinase" annotation(Placement(transformation(origin={-40.0,-40.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=-180)));
    equation
      connect(CP.n1,Reaction2.p1) annotation(Line(origin={73.75,80.0}, points={{6.25,-20.0},{6.25,10.0},{-12.5,10.0}}, smooth=Smooth.Bezier));
      connect(C2.n1,Reaction2.s1) annotation(Line(origin={26.25,80.0}, points={{-6.25,-20.0},{-6.25,10.0},{12.5,10.0}}, smooth=Smooth.Bezier));
      connect(CP.n1,Reaction3.s1) annotation(Line(origin={73.75,46.6667}, points={{6.25,13.3333},{6.25,-6.6667},{-12.5,-6.6667}}, smooth=Smooth.Bezier));
      connect(CP.n1,Reaction4.s1) annotation(Line(origin={66.5716,-26.9367}, points={{13.4284,86.9367},{13.4284,-27.5617},{-13.4284,-27.5617},{-13.4284,-31.8133}}, smooth=Smooth.Bezier));
      connect(C2.n1,Reaction3.p1) annotation(Line(origin={26.25,46.6667}, points={{-6.25,13.3333},{-6.25,-6.6667},{12.5,-6.6667}}, smooth=Smooth.Bezier));
      connect(C2.n1,Reaction1.p1) annotation(Line(origin={-36.9367,42.5}, points={{56.9367,17.5},{-17.5617,17.5},{-17.5617,-17.5},{-21.8133,-17.5}}, smooth=Smooth.Bezier));
      connect(Y.n1,Reaction4.s2) annotation(Line(origin={31.5716,-49.4367}, points={{-11.5716,19.4367},{-11.5716,-5.0617},{11.5716,-5.0617},{11.5716,-9.3133}}, smooth=Smooth.Bezier));
      connect(pM.n1,Reaction4.p1) annotation(Line(origin={18.4573,-70.4506}, points={{-28.4573,20.4506},{-15.4573,20.4506},{-15.4573,-15.0509},{29.686,-15.0509},{29.686,-10.7994}}, smooth=Smooth.Bezier));
      connect(Y.n1,Reaction7.s1) annotation(Line(origin={40.0,-27.0833}, points={{-20.0,-2.9167},{10.0,-2.9167},{10.0,5.8333}}, smooth=Smooth.Bezier));
      connect(Y.n1,Reaction6.p1) annotation(Line(origin={1.4059,-27.0833}, points={{18.5941,-2.9167},{-9.297,-2.9167},{-9.297,5.8333}}, smooth=Smooth.Bezier));
      connect(M.n1,Reaction1.s1) annotation(Line(origin={-82.4506,-4.8}, points={{2.4506,-25.2},{2.4506,-12.2},{-3.0509,-12.2},{-3.0509,24.8},{1.2006,24.8}}, smooth=Smooth.Bezier));
      connect(M.n1,Reaction5.s1) annotation(Line(origin={-72.2466,-63.3333}, points={{-7.7534,33.3333},{-7.7534,-16.6667},{15.5068,-16.6667}}, smooth=Smooth.Bezier));
      connect(M.n1,Reaction9.p1) annotation(Line(origin={-60.5633,-35.0}, points={{-19.4367,5.0},{5.0617,5.0},{5.0617,-5.0},{9.3133,-5.0}}, smooth=Smooth.Bezier));
      connect(pM.n1,Reaction5.p1) annotation(Line(origin={-18.0799,-70.0}, points={{8.0799,20.0},{8.0799,-10.0},{-16.1599,-10.0}}, smooth=Smooth.Bezier));
      connect(pM.n1,Reaction9.s1) annotation(Line(origin={-21.9367,-45.0}, points={{11.9367,-5.0},{-2.5617,-5.0},{-2.5617,5.0},{-6.8133,5.0}}, smooth=Smooth.Bezier));
      connect(CT.n1,Reaction9.m1) annotation(Line(origin={-40.0,-52.6667}, points={{0.0,-7.3333},{0.0,3.6667},{0.0,3.6667}}, smooth=Smooth.Bezier));
      connect(EmptySet.n1,Reaction6.s1) annotation(Line(origin={1.0545,8.0633}, points={{8.9456,11.9367},{8.9456,-2.5617},{-8.9456,-2.5617},{-8.9456,-6.8133}}, smooth=Smooth.Bezier));
      connect(EmptySet.n1,Reaction7.p1) annotation(Line(origin={36.6667,13.75}, points={{-26.6667,6.25},{13.3333,6.25},{13.3333,-12.5}}, smooth=Smooth.Bezier));
      connect(EmptySet.n1,Reaction8.p1) annotation(Line(origin={-11.2,28.4506}, points={{21.2,-8.4506},{8.2,-8.4506},{8.2,7.0509},{-18.8,7.0509},{-18.8,2.7994}}, smooth=Smooth.Bezier));
      connect(YP.n1,Reaction8.s1) annotation(Line(origin={-35.8796,-2.6535}, points={{-11.7593,-5.7018},{5.8796,-5.7018},{5.8796,11.4035}}, smooth=Smooth.Bezier));
      connect(YP.n1,Reaction1.p2) annotation(Line(origin={-51.3426,7.2149}, points={{3.7037,-15.5702},{3.7037,7.7851},{-7.4074,7.7851}}, smooth=Smooth.Bezier));
      YT.c=Y.c + YP.c + M.c + pM.c;
      CT.c=C2.c + CP.c + M.c + pM.c;
    end cell;

    annotation(Documentation(info="<html>
<h1>CellDivision</h1>
This example is a Modelica version of the model presented in <i>Modeling the cell division cycle: cdc2 and cyclin interactions</i> by John J. Tyson. (Proc. Nati. Acad. Sci. USA
Vol. 88, pp. 7328-7332, August 1991
Cell Biology). <br><br>

See
<a href=\"Modelica://BioChem.Examples.CellDivison.cell\">cell</a>
 for more documentation and simulation results.
</html>", revisions=""));
    annotation(__MathCore(RDF="<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
    <rdf:Description rdf:about=\"#_000001\">
      <dc:creator rdf:parseType=\"Resource\">
        <rdf:Bag>
          <rdf:li rdf:parseType=\"Resource\">
            <vCard:N rdf:parseType=\"Resource\">
              <vCard:Family>Shapiro</vCard:Family>
              <vCard:Given>Bruce</vCard:Given>
            </vCard:N>
            <vCard:EMAIL>bshapiro@jpl.nasa.gov</vCard:EMAIL>
            <vCard:ORG>
              <vCard:Orgname>NASA Jet Propulsion Laboratory</vCard:Orgname>
            </vCard:ORG>
          </rdf:li>
          <rdf:li rdf:parseType=\"Resource\">
            <vCard:N rdf:parseType=\"Resource\">
              <vCard:Family>Chelliah</vCard:Family>
              <vCard:Given>Vijayalakshmi</vCard:Given>
            </vCard:N>
            <vCard:EMAIL>viji@ebi.ac.uk</vCard:EMAIL>
            <vCard:ORG>
              <vCard:Orgname>EMBL-EBI</vCard:Orgname>
            </vCard:ORG>
          </rdf:li>
        </rdf:Bag>
      </dc:creator>
      <dcterms:created rdf:parseType=\"Resource\">
        <dcterms:W3CDTF>2005-02-08T18:28:27Z</dcterms:W3CDTF>
      </dcterms:created>
      <dcterms:modified rdf:parseType=\"Resource\">
        <dcterms:W3CDTF>2008-08-21T11:31:54Z</dcterms:W3CDTF>
      </dcterms:modified>
      <bqmodel:is>
        <rdf:Bag>
          <rdf:li rdf:resource=\"urn:miriam:biomodels.db:BIOMD0000000005\"/>
        </rdf:Bag>
      </bqmodel:is>
      <bqmodel:isDescribedBy>
        <rdf:Bag>
          <rdf:li rdf:resource=\"urn:miriam:pubmed:1831270\"/>
        </rdf:Bag>
      </bqmodel:isDescribedBy>
      <bqbiol:hasVersion>
        <rdf:Bag>
          <rdf:li rdf:resource=\"urn:miriam:reactome:REACT_152\"/>
        </rdf:Bag>
      </bqbiol:hasVersion>
      <bqbiol:isVersionOf>
        <rdf:Bag>
          <rdf:li rdf:resource=\"urn:miriam:kegg.pathway:sce04111\"/>
          <rdf:li rdf:resource=\"urn:miriam:obo.go:GO%3A0000278\"/>
        </rdf:Bag>
      </bqbiol:isVersionOf>
      <bqmodel:is>
        <rdf:Bag>
          <rdf:li rdf:resource=\"urn:miriam:taxonomy:33154\"/>
        </rdf:Bag>
      </bqmodel:is>
    </rdf:Description>
  </rdf:RDF>"));
  end CellDivison;

  package CaOscillations "Oxhamre2005_Ca_oscillation"
    extends BioChem.Icons.Example;
    model Cytosol
      extends BioChem.Compartments.MainCompartment(V(start=1));
      import BioChem.Math.*;
      import BioChem.Constants.*;
      model Ca_Cyt_
        extends BioChem.Substances.Substance;
        annotation(__MathCore(RDF="<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
    <rdf:Description rdf:about=\"#metaid_0000007\">
      <bqbiol:isVersionOf>
        <rdf:Bag>
          <rdf:li rdf:resource=\"urn:miriam:obo.chebi:CHEBI%3A29108\"/>
        </rdf:Bag>
      </bqbiol:isVersionOf>
    </rdf:Description>
  </rdf:RDF>"));
      end Ca_Cyt_;

      model Jpump_
        extends BioChem.Interfaces.Reactions.Uui;
        annotation(__MathCore(RDF="<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
    <rdf:Description rdf:about=\"#metaid_0000029\">
      <bqbiol:isVersionOf>
        <rdf:Bag>
          <rdf:li rdf:resource=\"urn:miriam:obo.go:GO%3A0051481\"/>
          <rdf:li rdf:resource=\"urn:miriam:obo.go:GO%3A0006816\"/>
        </rdf:Bag>
      </bqbiol:isVersionOf>
    </rdf:Description>
  </rdf:RDF>"));
        parameter Real Fpump_0=2;
        parameter Real Kpump=0.1;
      equation
        rr=Fpump_0*s1.c/(Kpump + s1.c);
      end Jpump_;

      annotation(__MathCore(RDF="<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
    <rdf:Description rdf:about=\"#metaid_0000004\">
      <bqbiol:isVersionOf>
        <rdf:Bag>
          <rdf:li rdf:resource=\"urn:miriam:obo.go:GO%3A0005829\"/>
        </rdf:Bag>
      </bqbiol:isVersionOf>
    </rdf:Description>
  </rdf:RDF>"), experiment(StartTime=0.0, StopTime=120, NumberOfIntervals=-1, Algorithm="dassl", Tolerance=1e-06), Documentation(info="<html>
<h1>Ca Oscillations</h1>
This example is a Modelica version of the model presented in <i>A Minimal Generic Model of Bacteria-Induced Intracellular Ca<sup>2+</sup>
Oscillations in Epithelial Cells</i> by Camilla Oxhamre, Agneta Richter-Dahlfors, Vladimir P. Zhdanov, and Bengt Kasemoy. (Biophysical Journal Volume 88 April 2005 2976-2981)

<h2>Abstract</h2>
The toxin &alpha-hemolysin expressed by uropathogenic Escherichia coli bacteria was recently shown as the first
pathophysiologically relevant protein to induce oscillations of the intracellular Ca<sup>2+</sup> concentration in target cells. Here, we
propose a generic three-variable kinetic model describing the Ca<sup>2+</sup> oscillations induced in single rat renal epithelial cells by this
toxin. Specifically, we take into account the interplay between 1), the cytosolic Ca<sup>2+</sup> concentration; 2), IP<sub>3</sub>-sensitive Ca<sup>2+</sup>
channels located in the membrane separating the cytosol and endoplasmic reticulum; and 3), toxin-related activation of
production of IP<sub>3</sub> by phospholipase C. With these ingredients, the predicted response of cells exposed to the toxin is in good
agreement with the results of experiments.
<h2>Simulations</h2>
The simulation results are shown in the
 <a href=\"#fig1\">Figure 1</a>. This plot corresponds to Fig 1C of the paper (Oxhamre 2005).
<br>

<a name=\"fig1\"></a>
<img src=\"modelica://BioChem/Resources/Images/cytosol.png\" alt=\"Fig1: Simulation results\">
</html>", revisions=""));
      Endoplasmic_Reticulum endoplasmicReticulum(p1_sbml=p1_sbml, p2_sbml=p2_sbml, p3_sbml=p3_sbml) annotation(Placement(transformation(origin={-28.4357,20.0}, extent={{-10.0,-10.0},{10.0,10.0}})));
      inner Real Cytosol_V=V "Variable used to make the compartment volume accessible for inner components. Do not edit.";
      inner Real Endoplasmic_Reticulum_V=endoplasmicReticulum.V "Variable used to make the compartment volume of inner compartments accessible. Do not edit.";
      Cytosol.Ca_Cyt_ Ca_Cyt(c(start=0)) annotation(Placement(transformation(origin={-10.0,-40.0}, extent={{-10.0,-10.0},{10.0,10.0}})));
      Real n_sbml(start=1);
      parameter Real n0=1;
      parameter Real kbN=0.5;
      parameter Real kappa=5;
      Real p1_sbml(start=0);
      parameter Real p11=0.2;
      parameter Real p12=0.8;
      parameter Real K1=5;
      Real p2_sbml(start=0);
      parameter Real K2=0.7;
      Real p3_sbml(start=0.95);
      parameter Real k31=0.5;
      parameter Real K3=0.7;
      Cytosol.Jpump_ Jpump annotation(Placement(transformation(origin={50.0,-10.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=-270)));
    equation
      connect(Ca_Cyt.n1,endoplasmicReticulum.Ca_Cyt_node) annotation(Line(origin={-29.2619,-10.8}, points={{19.2619,-29.2},{19.2619,-16.2},{-14.175,-16.2},{-14.175,30.8},{-10.1738,30.8}}, smooth=Smooth.Bezier));
      connect(endoplasmicReticulum.CaER_node,Jpump.p1) annotation(Line(origin={27.5214,13.75}, points={{-44.9571,6.25},{22.4786,6.25},{22.4786,-12.5}}, smooth=Smooth.Bezier));
      connect(Ca_Cyt.n1,Jpump.s1) annotation(Line(origin={30.0,-33.75}, points={{-40.0,-6.25},{20.0,-6.25},{20.0,12.5}}, smooth=Smooth.Bezier));
      n_sbml=n0*(exp((-kbN)*time) + kappa*(1 - exp((-kbN)*time)));
      p1_sbml=p11 + p12*n_sbml/(K1 + n_sbml);
      p2_sbml=Ca_Cyt.c/(K2 + Ca_Cyt.c);
      der(p3_sbml)=-k31*Ca_Cyt.c*p3_sbml + k31*K3*(1 - p3_sbml);
    end Cytosol;

    model Endoplasmic_Reticulum
      extends BioChem.Compartments.Compartment(V(start=1));
      import BioChem.Math.*;
      import BioChem.Constants.*;
      model CaER_
        extends BioChem.Substances.Substance;
        annotation(__MathCore(RDF="<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
    <rdf:Description rdf:about=\"#metaid_0000006\">
      <bqbiol:isVersionOf>
        <rdf:Bag>
          <rdf:li rdf:resource=\"urn:miriam:obo.chebi:CHEBI%3A29108\"/>
        </rdf:Bag>
      </bqbiol:isVersionOf>
    </rdf:Description>
  </rdf:RDF>"));
      end CaER_;

      model Jch_
        extends BioChem.Interfaces.Reactions.Uui;
        annotation(__MathCore(RDF="<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
    <rdf:Description rdf:about=\"#metaid_0000027\">
      <bqbiol:isVersionOf>
        <rdf:Bag>
          <rdf:li rdf:resource=\"urn:miriam:obo.go:GO%3A0051482\"/>
          <rdf:li rdf:resource=\"urn:miriam:obo.go:GO%3A0006816\"/>
        </rdf:Bag>
      </bqbiol:isVersionOf>
    </rdf:Description>
  </rdf:RDF>"));
        parameter Real Fch_0=8;
        input Real p1_sbml;
        input Real p2_sbml;
        input Real p3_sbml;
      equation
        rr=Fch_0*p1_sbml*p2_sbml*p3_sbml;
      end Jch_;

      model Jleak_
        extends BioChem.Interfaces.Reactions.Uui;
        annotation(__MathCore(RDF="<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
    <rdf:Description rdf:about=\"#metaid_0000028\">
      <bqbiol:isVersionOf>
        <rdf:Bag>
          <rdf:li rdf:resource=\"urn:miriam:obo.go:GO%3A0006816\"/>
          <rdf:li rdf:resource=\"urn:miriam:obo.go:GO%3A0007204\"/>
        </rdf:Bag>
      </bqbiol:isVersionOf>
    </rdf:Description>
  </rdf:RDF>"));
        parameter Real Fleak=0.5;
      equation
        rr=Fleak;
      end Jleak_;

      annotation(__MathCore(RDF="<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
    <rdf:Description rdf:about=\"#metaid_0000005\">
      <bqbiol:isVersionOf>
        <rdf:Bag>
          <rdf:li rdf:resource=\"urn:miriam:obo.go:GO%3A0005790\"/>
        </rdf:Bag>
      </bqbiol:isVersionOf>
    </rdf:Description>
  </rdf:RDF>"));
      inner Real Endoplasmic_Reticulum_V=V "Variable used to make the compartment volume accessible for inner components. Do not edit.";
      Endoplasmic_Reticulum.CaER_ CaER(c(start=0)) annotation(Placement(transformation(origin={10.0,10.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=-540)));
      input Real p1_sbml;
      input Real p2_sbml;
      input Real p3_sbml;
      BioChem.Interfaces.Nodes.SubstanceConnector Ca_Cyt_node annotation(Placement(transformation(origin={-90.0,10.0}, extent={{-10.0,-10.0},{10.0,10.0}}), iconTransformation(origin={-110.0,0.0}, extent={{-10.0,-10.0},{10.0,10.0}})));
      Endoplasmic_Reticulum.Jch_ Jch(p1_sbml=p1_sbml, p2_sbml=p2_sbml, p3_sbml=p3_sbml) annotation(Placement(transformation(origin={-80.0,-20.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=-270)));
      Endoplasmic_Reticulum.Jleak_ Jleak annotation(Placement(transformation(origin={-80.0,43.7135}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=-90)));
      BioChem.Interfaces.Nodes.SubstanceConnector CaER_node annotation(Placement(transformation(origin={90.0,0.0}, extent={{-10.0,-10.0},{10.0,10.0}}), iconTransformation(origin={110.0,0.0}, extent={{-10.0,-10.0},{10.0,10.0}})));
    equation
      connect(Jleak.p1,Ca_Cyt_node) annotation(Line(origin={-85.0,22.1159}, points={{5.0,10.3476},{5.0,0.8841},{-5.0,0.8841},{-5.0,-12.1159}}, smooth=Smooth.Bezier));
      connect(Jch.p1,Ca_Cyt_node) annotation(Line(origin={-85.0,-1.1875}, points={{5.0,-7.5625},{5.0,-1.8125},{-5.0,-1.8125},{-5.0,11.1875}}, smooth=Smooth.Bezier));
      connect(CaER.n1,CaER_node) annotation(Line(origin={63.5,5.0}, points={{-53.5,5.0},{13.5,5.0},{13.5,-5.0},{26.5,-5.0}}, smooth=Smooth.Bezier));
      connect(CaER.n1,Jleak.s1) annotation(Line(origin={-31.2,38.6787}, points={{41.2,-28.6787},{28.2,-28.6787},{28.2,20.5363},{-48.8,20.5363},{-48.8,16.2848}}, smooth=Smooth.Bezier));
      connect(CaER.n1,Jch.s1) annotation(Line(origin={-31.2,-16.4506}, points={{41.2,26.4506},{28.2,26.4506},{28.2,-19.0509},{-48.8,-19.0509},{-48.8,-14.7994}}, smooth=Smooth.Bezier));
    end Endoplasmic_Reticulum;

    annotation(Documentation(info="<html>
<h1>Ca Oscillations</h1>
This example is a Modelica version of the model presented in <i>A Minimal Generic Model of Bacteria-Induced Intracellular Ca<sup>2+</sup>
Oscillations in Epithelial Cells</i> by Camilla Oxhamre, Agneta Richter-Dahlfors, Vladimir P. Zhdanov, and Bengt Kasemoy. (Biophysical Journal Volume 88 April 2005 2976-2981).<br><br>

See
<a href=\"Modelica://BioChem.Examples.CaOscillations.Cytosol\">Cytosol</a>
 for more documentation and simulation results.
</html>", revisions=""));
    annotation(__MathCore(RDF="<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
    <rdf:Description rdf:about=\"#metaid_0000030\">
      <dc:creator rdf:parseType=\"Resource\">
        <rdf:Bag>
          <rdf:li rdf:parseType=\"Resource\">
            <vCard:N rdf:parseType=\"Resource\">
              <vCard:Family>Dharuri</vCard:Family>
              <vCard:Given>Harish</vCard:Given>
            </vCard:N>
            <vCard:EMAIL>Harish_Dharuri@kgi.edu</vCard:EMAIL>
            <vCard:ORG>
              <vCard:Orgname>Keck Graduate Institute</vCard:Orgname>
            </vCard:ORG>
          </rdf:li>
        </rdf:Bag>
      </dc:creator>
      <dcterms:created rdf:parseType=\"Resource\">
        <dcterms:W3CDTF>2005-08-25T11:00:43Z</dcterms:W3CDTF>
      </dcterms:created>
      <dcterms:modified rdf:parseType=\"Resource\">
        <dcterms:W3CDTF>2008-08-21T11:54:50Z</dcterms:W3CDTF>
      </dcterms:modified>
      <bqmodel:is>
        <rdf:Bag>
          <rdf:li rdf:resource=\"urn:miriam:biomodels.db:BIOMD0000000047\"/>
        </rdf:Bag>
      </bqmodel:is>
      <bqmodel:isDescribedBy>
        <rdf:Bag>
          <rdf:li rdf:resource=\"urn:miriam:pubmed:15596518\"/>
        </rdf:Bag>
      </bqmodel:isDescribedBy>
      <bqbiol:isVersionOf>
        <rdf:Bag>
          <rdf:li rdf:resource=\"urn:miriam:obo.go:GO%3A0019722\"/>
          <rdf:li rdf:resource=\"urn:miriam:obo.go:GO%3A0048016\"/>
        </rdf:Bag>
      </bqbiol:isVersionOf>
      <bqbiol:is>
        <rdf:Bag>
          <rdf:li rdf:resource=\"urn:miriam:taxonomy:10114\"/>
          <rdf:li rdf:resource=\"urn:miriam:kegg.pathway:rno04020\"/>
        </rdf:Bag>
      </bqbiol:is>
    </rdf:Description>
  </rdf:RDF>"));
  end CaOscillations;

  package GlucoseInsulinModel
    extends BioChem.Icons.Example;
    annotation(Diagram(coordinateSystem(extent={{-148.5,-105},{148.5,105}}, preserveAspectRatio=true, grid={10,10})), Documentation(info="<html>
<h1>A Whole Body Model of the Glucose Insulin System</h1>

This model is presented in <i>Hierarchical modeling of diabetes</i> by
Elin Nyman, ISRN:LiU-IKE-EX-09/14. Link&ouml;ping University 2009.<br><br>


See
<a href=\"Modelica://BioChem.Examples.GlucoseInsulinModel.GlucoseInsulinModel\">GlucoseInsulinModel</a>
 for more documentation and simulation results.
</html>", revisions=""));
    model GlucoseInsulinModel
      extends BioChem.Compartments.MainCompartment(V.start=1.0);
      annotation(Diagram(coordinateSystem(extent={{-148.5,-105},{148.5,105}}, preserveAspectRatio=true, grid={10,10}), graphics={Rectangle(origin={-39.6875,-1.36711}, fillColor={255,0,0}, pattern=LinePattern.None, fillPattern=FillPattern.Solid, extent={{-55.2911,-15.5929},{55.2911,15.5929}}),Rectangle(origin={-57.5522,-75}, fillColor={128,0,0}, pattern=LinePattern.None, fillPattern=FillPattern.Solid, extent={{-40.931,-15},{40.931,15}}),Rectangle(origin={-40.7051,-45.0134}, fillColor={128,0,0}, pattern=LinePattern.None, fillPattern=FillPattern.Solid, extent={{-24.0839,-16.859},{24.0839,16.859}}),Rectangle(origin={17.3745,60}, fillColor={255,170,127}, pattern=LinePattern.None, fillPattern=FillPattern.Solid, extent={{-35,-18.3307},{35,18.3307}}),Rectangle(origin={70,58.6765}, fillColor={255,170,127}, pattern=LinePattern.None, fillPattern=FillPattern.Solid, extent={{-20,-38.6765},{20,38.6765}}),Line(origin={100,-55.25}, points={{-8.26,0},{8.26,0}}, color={0,0,128}, thickness=1),Text(origin={126.135,-55.59}, fillPattern=FillPattern.Solid, extent={{-15.6548,-4.41},{15.6548,4.41}}, textString="Glucose flow", fontName="Arial"),Line(origin={100,-66.03}, points={{-8.26,0},{8.26,0}}, color={0,0,255}, pattern=LinePattern.Dash),Line(origin={100,-85.28}, points={{-8.26,0},{8.26,0}}, color={255,0,255}, pattern=LinePattern.Dash),Line(origin={100,-75.36}, points={{-8.26,0},{8.26,0}}, color={128,0,128}, thickness=1),Text(origin={128.34,-65.59}, fillPattern=FillPattern.Solid, extent={{-17.8596,-4.41},{17.8596,4.41}}, textString="Glucose signal", fontName="Arial"),Text(origin={124.953,-75.59}, fillPattern=FillPattern.Solid, extent={{-13.3507,-4.41},{13.3507,4.41}}, textString="Insulin flow", fontName="Arial"),Text(origin={126.987,-85.59}, fillPattern=FillPattern.Solid, extent={{-15.3871,-4.41},{15.3871,4.41}}, textString="Insulin signal", fontName="Arial")}), experiment(StartTime=0.0, StopTime=420, NumberOfIntervals=-1, Algorithm="dassl", Tolerance=1e-06), Documentation(info="<html>
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


</html>", revisions=""));
      BioChem.Examples.GlucoseInsulinModel.Utilities.Parts.GastroIntestinalTract GastroIntestinalTract annotation(Placement(transformation(origin={-50,80}, extent={{-10,-10},{10,10}})));
      BioChem.Examples.GlucoseInsulinModel.Utilities.Parts.TissueGlucose TissueGlucose annotation(Placement(transformation(origin={0,60}, extent={{-10,-10},{10,10}})));
      BioChem.Examples.GlucoseInsulinModel.Utilities.Parts.GlucoseRenalExcretion GlucoseRenalExcretion annotation(Placement(transformation(origin={125.793,-4.74893}, extent={{-10,-10},{10,10}})));
      BioChem.Examples.GlucoseInsulinModel.Utilities.Parts.PlasmaGlucose PlasmaGlucose annotation(Placement(transformation(extent={{-10,-10},{10,10}})));
      BioChem.Examples.GlucoseInsulinModel.Utilities.Parts.PlasmaInsulin PlasmaInsulin annotation(Placement(transformation(origin={-80,0}, extent={{-10,-10},{10,10}})));
      BioChem.Examples.GlucoseInsulinModel.Utilities.Parts.UtilizationMuscleTissue UtilizationMuscleTissue annotation(Placement(transformation(origin={70,40}, extent={{-10,-10},{10,10}})));
      BioChem.Examples.GlucoseInsulinModel.Utilities.Reactions.ReversibleFlowReaction k_1_k_2(k_1=0.065, k_2=0.079) annotation(Placement(transformation(origin={0,30}, extent={{-6.52644,-6.52644},{6.52644,6.52644}}, rotation=-270)));
      BioChem.Examples.GlucoseInsulinModel.Utilities.Parts.LiverInsulin LiverInsulin annotation(Placement(transformation(origin={-80,-73.9076}, extent={{-10,-10},{10,10}})));
      BioChem.Examples.GlucoseInsulinModel.Utilities.Parts.EndogenousGlucoseProduction EndogenousGlucoseProduction annotation(Placement(transformation(origin={-40,-45.0779}, extent={{-10,-10},{10,10}})));
      BioChem.Examples.GlucoseInsulinModel.Utilities.Reactions.ReversibleFlowReaction m_1_m_2(k_2=0.484, k_1=0.19) annotation(Placement(transformation(origin={-80,-36.3608}, extent={{-6.36084,6.36084},{6.36084,-6.36084}}, rotation=90)));
      BioChem.Examples.GlucoseInsulinModel.Utilities.Parts.BetaCell BetaCell annotation(Placement(transformation(origin={23.4019,-74.2468}, extent={{-10,-10},{10,10}})));
      BioChem.Examples.GlucoseInsulinModel.Utilities.Parts.AdiposeTissue.AdiposeTissue adiposeTissue1 annotation(Placement(transformation(origin={70,80}, extent={{-10,-10},{10,10}})));
    equation
      connect(UtilizationMuscleTissue.I_connector,PlasmaInsulin.I_signal_connector) annotation(Line(origin={-35.44,35.5}, points={{94.44,12.857},{55.44,12.86},{48.33,64.5},{-52.076,70.3333},{-34.56,6.90118},{-26.6353,-15.5},{-24.56,-41.27},{-33.56,-41.27},{-33.56,-41.182}}, color={255,0,255}, pattern=LinePattern.Dash, arrow={Arrow.Open,Arrow.None}, smooth=Smooth.Bezier));
      connect(adiposeTissue1.I_connector,PlasmaInsulin.I_signal_connector) annotation(Line(origin={-42.08,44.79}, points={{101.078,43.5978},{58.03,43.6},{12.08,61.3825},{-41.3655,52.9023},{-34.2421,19.3206},{-23.7266,-12.2259},{-17.92,-36.99},{-17.92,-47.1645},{-19.65,-50.22},{-26.92,-50.22},{-26.9223,-50.4722}}, color={255,0,255}, pattern=LinePattern.Dash, smooth=Smooth.Bezier));
      connect(TissueGlucose.U_idf_connector,adiposeTissue1.G_t_connector) annotation(Line(origin={38.75,76.58}, points={{-27.75,-10.58},{-8.75,3.42},{16.25,3.58},{20.25,3.58}}, color={0,0,128}, thickness=1, arrow={Arrow.None,Arrow.Filled}, smooth=Smooth.Bezier));
      connect(BetaCell.G_connector,PlasmaGlucose.G_signal_connector) annotation(Line(origin={-0.71,-20.49}, points={{24.11,-42.76},{22.75,-9.7},{-17.27,-9.7},{-17.27,20.49},{-10.29,20.68}}, color={0,0,255}, pattern=LinePattern.Dash, arrow={Arrow.Open,Arrow.None}, smooth=Smooth.Bezier));
      connect(BetaCell.G_p_connector,PlasmaGlucose.G_p_connector) annotation(Line(origin={3.93,-21.62}, points={{26.99,-41.63},{26.31,-4.5},{-18.85,-4.5},{-18.85,14.62},{-14.93,14.62}}, color={0,0,255}, pattern=LinePattern.Dash, arrow={Arrow.Open,Arrow.None}, smooth=Smooth.Bezier));
      connect(GlucoseRenalExcretion.G_p_connector,PlasmaGlucose.G_p_connector) annotation(Line(origin={37.56,-14.05}, points={{77.23,0.94},{56.28,-11.35},{-17.56,-11.35},{-52.49,-11.35},{-52.49,7.6},{-48.56,7.6},{-48.56,7.05}}, color={0,0,255}, pattern=LinePattern.Dash, arrow={Arrow.Open,Arrow.None}, smooth=Smooth.Bezier));
      connect(PlasmaGlucose.G_p_connector,EndogenousGlucoseProduction.G_p_connector) annotation(Line(origin={-30.33,-16.03}, points={{19.33,9.03},{-9.67,9.03},{-9.67,-18.05}}, color={0,0,255}, pattern=LinePattern.Dash, arrow={Arrow.None,Arrow.Open}, smooth=Smooth.Bezier));
      connect(EndogenousGlucoseProduction.I_po_connector,BetaCell.I_po_connector) annotation(Line(origin={1.27,-51.13}, points={{-30.27,6.06},{15.13,6.06},{15.13,-12.11}}, color={255,0,255}, pattern=LinePattern.Dash, arrow={Arrow.Open,Arrow.None}, smooth=Smooth.Bezier));
      connect(EndogenousGlucoseProduction.I_connector,PlasmaInsulin.I_signal_connector) annotation(Line(origin={-54.49,-15.15}, points={{7.26,-18.93},{7.26,9.47},{-14.51,9.47}}, color={255,0,255}, pattern=LinePattern.Dash, arrow={Arrow.Open,Arrow.None}, smooth=Smooth.Bezier));
      connect(TissueGlucose.U_idm_connector,UtilizationMuscleTissue.G_t_connector) annotation(Line(origin={45,46.91}, points={{-34,6.74021},{-12.0967,-6.91},{10,-6.74},{14,-6.748}}, color={0,0,128}, thickness=1, arrow={Arrow.None,Arrow.Filled}, smooth=Smooth.Bezier));
      connect(LiverInsulin.S_connector,BetaCell.S_connector) annotation(Line(origin={-9.95,-74.17}, points={{-59.05,0.07},{18.35,0.07},{18.35,-0.07},{22.35,-0.07}}, color={128,0,128}, thickness=1, arrow={Arrow.Filled,Arrow.None}, smooth=Smooth.Bezier));
      connect(PlasmaGlucose.EGP_connector,EndogenousGlucoseProduction.EGP_connector) annotation(Line(origin={-19.75,-20.03}, points={{19.58,9.03},{19.58,0.03},{-10.25,0.03},{-13.15,-4.55},{-12.87,-14.05}}, color={0,0,128}, thickness=1, arrow={Arrow.Filled,Arrow.None}, smooth=Smooth.Bezier));
      connect(PlasmaGlucose.E_connector,GlucoseRenalExcretion.productConnector1) annotation(Line(origin={86.84,-4.8}, points={{-75.84,-0.05},{23.95,-0.05},{23.95,0.05},{27.95,0.05}}, color={0,0,128}, thickness=1, arrow={Arrow.None,Arrow.Filled}, smooth=Smooth.Bezier));
      connect(PlasmaGlucose.Ra_connector,GastroIntestinalTract.Ra_connector) annotation(Line(origin={-28.9,31.7}, points={{21.1,-20.7},{21.1,-8.3},{-21.1,-8.3},{-21.1,37.3}}, color={0,0,128}, thickness=1, arrow={Arrow.Filled,Arrow.None}, smooth=Smooth.Bezier));
      connect(m_1_m_2.p1,PlasmaInsulin.I_connector) annotation(Line(origin={-80,-20.1024}, points={{0,-9.10245},{0,9.10245}}, color={128,0,128}, thickness=1, smooth=Smooth.Bezier));
      connect(m_1_m_2.s1,LiverInsulin.I_connector) annotation(Line(origin={-80,-53.2122}, points={{0,9.6954},{0,-9.6954}}, color={128,0,128}, thickness=1, smooth=Smooth.Bezier));
      connect(k_1_k_2.p1,TissueGlucose.G_connector) annotation(Line(origin={0,43.17}, points={{0,-5.83},{0,5.83}}, color={0,0,128}, thickness=1, smooth=Smooth.Bezier));
      connect(k_1_k_2.s1,PlasmaGlucose.G_connector) annotation(Line(origin={0,16.83}, points={{0,5.83},{0,-5.83}}, color={0,0,128}, thickness=1, smooth=Smooth.Bezier));
    end GlucoseInsulinModel;

    package Utilities
      extends BioChem.Icons.Library;
      annotation(Diagram(coordinateSystem(extent={{-100.0,-100.0},{100.0,100.0}}, preserveAspectRatio=true, grid={10,10})));
      package Parts
        extends BioChem.Icons.Library;
        model GastroIntestinalTract
          extends BioChem.Compartments.Compartment(V.start=1.0);
          annotation(Diagram(coordinateSystem(extent={{-148.5,-105},{148.5,105}}, preserveAspectRatio=true, grid={10,10})), Icon(coordinateSystem(extent={{-100,-100},{100,100}}, preserveAspectRatio=true, grid={10,10}), graphics={Text(origin={-7.23323,45}, fillPattern=FillPattern.Solid, extent={{-45,-45},{45,45}}, textString="GI", fontName="Arial"),Text(origin={-2.44435,-51.2385}, fillPattern=FillPattern.Solid, extent={{-93.0638,-41.2385},{93.0638,41.2385}}, textString="tract", fontName="Arial")}));
          BioChem.Units.Concentration ra_signal;
          BioChem.Units.Concentration q_sto;
          BioChem.Units.Concentration d;
          parameter Real f=0.9;
          parameter Real BW=78;
          BioChem.Substances.Substance Q_sto2(c.start=0) annotation(Placement(transformation(origin={0,50}, extent={{-10,-10},{10,10}})));
          BioChem.Substances.Substance Q_gut(c.start=0) annotation(Placement(transformation(origin={0,-20}, extent={{-10,-10},{10,10}})));
          BioChem.Examples.GlucoseInsulinModel.Utilities.Reactions.FlowReaction k_abs(k=0.057) annotation(Placement(transformation(origin={38.33,-20}, extent={{-10,-10},{10,10}})));
          BioChem.Examples.GlucoseInsulinModel.Utilities.Reactions.k_empt k_empt1 annotation(Placement(transformation(origin={0,17.8419}, extent={{-10,-10},{10,10}}, rotation=-90)));
          BioChem.Substances.Substance Q_sto1(c.start=0) annotation(Placement(transformation(origin={-60,50}, extent={{-10,-10},{10,10}})));
          BioChem.Examples.GlucoseInsulinModel.Utilities.Reactions.dirac dirac annotation(Placement(transformation(origin={-100,50}, extent={{-10,-10},{10,10}})));
          BioChem.Substances.SignalSubstance Q_sto(c(start=0)=q_sto) annotation(Placement(transformation(origin={100,30}, extent={{-10,-10},{10,10}})));
          BioChem.Substances.SignalSubstance D(c(start=0)=d) annotation(Placement(transformation(origin={100,5.76656}, extent={{-10,-10},{10,10}})));
          BioChem.Interfaces.Nodes.SubstrateConnector Ra_connector annotation(Placement(transformation(origin={0,-80}, extent={{-10,-10},{10,10}}), iconTransformation(origin={0,-110}, extent={{-10,-10},{10,10}})));
          BioChem.Substances.BoundarySubstance GlucoseIntake(c.start=78000) annotation(Placement(transformation(origin={-130,50}, extent={{-10,-10},{10,10}})));
          BioChem.Examples.GlucoseInsulinModel.Utilities.Reactions.FlowReaction k_gri(k=0.0558) annotation(Placement(transformation(origin={-28.43,50}, extent={{-10,-10},{10,10}})));
          BioChem.Substances.BoundarySubstance End annotation(Placement(transformation(origin={80,-20}, extent={{-10,-10},{10,10}})));
          BioChem.Substances.SignalSubstance Ra_calc(c=ra_signal) annotation(Placement(transformation(origin={0,-50}, extent={{-10,-10},{10,10}})));
        equation
          connect(Ra_calc.n1,Ra_connector) annotation(Line(origin={0,-65}, points={{0,15},{0,-15}}));
          connect(k_abs.p1,End.n1) annotation(Line(origin={64.79,-20}, points={{-15.21,0},{15.21,0}}));
          connect(Q_sto1.n1,k_gri.s1) annotation(Line(origin={-49.84,50}, points={{-10.16,0},{10.16,0}}));
          connect(k_gri.p1,Q_sto2.n1) annotation(Line(origin={-8.59,50}, points={{-8.59,0},{8.59,0}}));
          connect(GlucoseIntake.n1,dirac.s1) annotation(Line(origin={-120.625,50}, points={{-9.375,0},{9.375,0}}));
          connect(D.n1,k_empt1.m2) annotation(Line(origin={34.2512,9.30423}, points={{65.7488,-3.53767},{-20.2487,-3.53767},{-20.2487,3.53767},{-25.2512,3.53767}}));
          connect(Q_sto.n1,k_empt1.m1) annotation(Line(origin={34.2512,26.4209}, points={{65.7488,3.57905},{-20.2487,3.57905},{-20.2487,-3.57905},{-25.2512,-3.57905}}));
          connect(dirac.p1,Q_sto1.n1) annotation(Line(origin={-74.375,50}, points={{-14.375,0},{14.375,0}}));
          connect(k_empt1.p1,Q_gut.n1) annotation(Line(origin={1.11022e-17,-6.70406}, points={{1.11022e-17,13.2959},{-1.11022e-17,-13.2959}}));
          connect(Q_sto2.n1,k_empt1.s1) annotation(Line(origin={-1.11022e-17,39.5459}, points={{1.11022e-17,10.4541},{-1.11022e-17,-10.4541}}));
          connect(Q_gut.n1,k_abs.s1) annotation(Line(origin={13.54,-20}, points={{-13.54,0},{13.54,0}}));
          ra_signal=f*k_abs.k*Q_gut.c/BW;
          q_sto=Q_sto1.c + Q_sto2.c;
          d=GlucoseIntake.c;
        end GastroIntestinalTract;

        model BetaCell
          extends BioChem.Compartments.Compartment(V.start=1.0);
          annotation(Diagram(coordinateSystem(extent={{-148.5,-105},{148.5,105}}, preserveAspectRatio=true, grid={10,10})), Icon(coordinateSystem(extent={{-100,-100},{100,100}}, preserveAspectRatio=true, grid={10,10}), graphics={Text(origin={-2.41533,43.4019}, fillPattern=FillPattern.Solid, extent={{-75.99,-51.46},{75.99,51.46}}, textString="Beta", fontName="Arial"),Text(origin={1.61,-49.34}, fillPattern=FillPattern.Solid, extent={{-73.89,-40.66},{73.89,40.66}}, textString="cell", fontName="Arial")}));
          BioChem.Units.Concentration i_po(start=3.6);
          BioChem.Units.Concentration g;
          BioChem.Units.Concentration g_p;
          BioChem.Units.Concentration y;
          BioChem.Units.Concentration y_signal(start=0);
          BioChem.Units.Concentration s_signal;
          parameter Real alpha=0.05;
          parameter Real beta=0.11;
          parameter Real S_b=1.8;
          parameter Real G_b=95;
          parameter Real K=2.3;
          parameter Real gamma=0.5;
          BioChem.Interfaces.Nodes.ModifierConnector G_connector annotation(Placement(transformation(origin={0,80}, extent={{-10,-10},{10,10}}), iconTransformation(origin={0,110}, extent={{-10,-10},{10,10}})));
          BioChem.Interfaces.Nodes.SubstrateConnector S_connector annotation(Placement(transformation(origin={-120,-8.88178e-16}, extent={{-10,-10},{10,10}}), iconTransformation(origin={-110,0}, extent={{-10,-10},{10,10}})));
          BioChem.Interfaces.Nodes.ModifierConnector I_po_connector annotation(Placement(transformation(origin={-90,80}, extent={{-10,-10},{10,10}}), iconTransformation(origin={-70,110}, extent={{-10,-10},{10,10}})));
          BioChem.Interfaces.Nodes.ModifierConnector G_p_connector annotation(Placement(transformation(origin={100,80}, extent={{-10,-10},{10,10}}), iconTransformation(origin={75.1683,110}, extent={{-10,-10},{10,10}})));
          BioChem.Substances.SignalSubstance S_calc(c=s_signal) annotation(Placement(transformation(origin={-90,0}, extent={{-10,-10},{10,10}})));
          BioChem.Examples.GlucoseInsulinModel.Utilities.Reactions.signaltosubstance signaltosubstance1 annotation(Placement(transformation(origin={2.22045e-16,60}, extent={{-10,-10},{10,10}}, rotation=-90)));
          BioChem.Examples.GlucoseInsulinModel.Utilities.Reactions.signaltosubstance signaltosubstance2 annotation(Placement(transformation(origin={100,60}, extent={{-10,-10},{10,10}}, rotation=-90)));
          BioChem.Examples.GlucoseInsulinModel.Utilities.Reactions.signaltosubstance signaltosubstance3 annotation(Placement(transformation(origin={60,-30}, extent={{-10,-10},{10,10}})));
          BioChem.Substances.SignalSubstance I_po_signal(c=i_po) annotation(Placement(transformation(origin={-90,40}, extent={{-10,-10},{10,10}})));
          BioChem.Substances.Substance G(c=g) annotation(Placement(transformation(origin={0,40}, extent={{-10,-10},{10,10}})));
          BioChem.Substances.Substance G_p(c=g_p) annotation(Placement(transformation(origin={100,40}, extent={{-10,-10},{10,10}})));
          BioChem.Substances.Substance Y(c=y) annotation(Placement(transformation(origin={80,-30}, extent={{-10,-10},{10,10}})));
          BioChem.Substances.SignalSubstance Y_signal(c=y_signal) annotation(Placement(transformation(origin={40,-30}, extent={{-10,-10},{10,10}})));
        equation
          connect(Y_signal.n1,signaltosubstance3.s1) annotation(Line(origin={42.9167,-30}, points={{-2.91667,3.55271e-15},{-2.91667,-3.55271e-15},{5.83333,-3.55271e-15}}));
          connect(signaltosubstance3.p1,Y.n1) annotation(Line(origin={74.1667,-30}, points={{-2.91667,0},{-2.91667,0},{5.83333,0}}));
          connect(signaltosubstance2.p1,G_p.n1) annotation(Line(origin={100,42.9167}, points={{0,5.83333},{0,-2.91667},{0,-2.91667}}));
          connect(signaltosubstance1.p1,G.n1) annotation(Line(origin={1.62833e-16,42.9167}, points={{8.14164e-17,5.83333},{8.14164e-17,-2.91667},{-1.62833e-16,-2.91667}}));
          connect(I_po_connector,I_po_signal.n1) annotation(Line(origin={-90,60}, points={{0,20},{0,-20}}));
          connect(G_p_connector,signaltosubstance2.s1) annotation(Line(origin={100,75.625}, points={{0,4.375},{0,-4.375}}));
          connect(G_connector,signaltosubstance1.s1) annotation(Line(origin={9.99201e-17,75.625}, points={{-9.99201e-17,4.375},{9.99201e-17,-4.375}}));
          connect(S_calc.n1,S_connector) annotation(Line(origin={-105,-4.44089e-16}, points={{15,4.44089e-16},{-15,-4.44089e-16}}));
          der(i_po)=if der(g_p) > 0 and g > G_b then -gamma*i_po + y + K*der(g) + S_b else -gamma*i_po + y + S_b;
          der(y_signal)=if beta*(g - G_b) < -S_b then -alpha*y_signal - alpha*S_b else -alpha*(y_signal - beta*(g - G_b));
          s_signal=gamma*i_po;
        end BetaCell;

        model PlasmaInsulin
          extends BioChem.Compartments.Compartment(V.start=1.0);
          annotation(Diagram(coordinateSystem(extent={{-148.5,-105},{148.5,105}}, preserveAspectRatio=true, grid={10,10})), Icon(coordinateSystem(extent={{-100,-100},{100,100}}, preserveAspectRatio=true, grid={10,10}), graphics={Text(origin={-7.10543e-15,46.05}, fillPattern=FillPattern.Solid, extent={{-93.8311,-36.05},{93.8311,36.05}}, textString="Plasma", fontName="Arial"),Text(origin={-3.55271e-15,-36.936}, fillPattern=FillPattern.Solid, extent={{-86.0653,-45},{86.0653,45}}, textString="insulin", fontName="Arial")}));
          BioChem.Units.Concentration i_p_signal;
          BioChem.Units.Concentration i_p;
          BioChem.Units.Concentration i_signal;
          parameter BioChem.Units.Volume V_I=0.05;
          BioChem.Substances.Substance I_p(c(start=1.25)=i_p) annotation(Placement(transformation(extent={{-10,-10},{10,10}})));
          BioChem.Examples.GlucoseInsulinModel.Utilities.Reactions.FlowReaction m_4(k=0.194) annotation(Placement(transformation(origin={-60,0}, extent={{10,-10},{-10,10}})));
          BioChem.Interfaces.Nodes.ModifierConnector I_p_connector annotation(Placement(transformation(origin={120,0}, extent={{-10,-10},{10,10}}), iconTransformation(origin={110,4.44089e-16}, extent={{-10,-10},{10,10}})));
          BioChem.Interfaces.Nodes.ProductConnector I_connector annotation(Placement(transformation(origin={0,-80}, extent={{-10,-10},{10,10}}), iconTransformation(origin={0,-110}, extent={{-10,-10},{10,10}})));
          BioChem.Interfaces.Nodes.ModifierConnector I_signal_connector annotation(Placement(transformation(origin={120,-30}, extent={{-10,-10},{10,10}}), iconTransformation(origin={110,-56.82}, extent={{-10,-10},{10,10}})));
          BioChem.Substances.SignalSubstance I_p_signal(c=i_p_signal) annotation(Placement(transformation(origin={60,7.77156e-16}, extent={{-10,-10},{10,10}})));
          BioChem.Substances.SignalSubstance I_signal(c=i_signal) annotation(Placement(transformation(origin={60,-30}, extent={{-10,-10},{10,10}})));
          BioChem.Substances.BoundarySubstance Deg annotation(Placement(transformation(origin={-120,0}, extent={{-10,-10},{10,10}})));
        equation
          connect(Deg.n1,m_4.p1) annotation(Line(origin={-95.625,1.11022e-17}, points={{-24.375,-1.11022e-17},{24.375,1.11022e-17}}));
          connect(I_signal.n1,I_signal_connector) annotation(Line(origin={90,-30}, points={{-30,0},{30,0}}));
          connect(I_p_signal.n1,I_p_connector) annotation(Line(origin={90,3.88578e-16}, points={{-30,3.88578e-16},{30,-3.88578e-16}}));
          connect(I_p.n1,I_connector) annotation(Line(origin={0,-40}, points={{0,40},{0,-40}}));
          connect(m_4.s1,I_p.n1) annotation(Line(origin={-24.375,-1.11022e-17}, points={{-24.375,-1.11022e-17},{24.375,1.11022e-17}}));
          i_p_signal=i_p;
          i_signal=i_p/V_I;
        end PlasmaInsulin;

        model PlasmaGlucose
          extends BioChem.Compartments.Compartment(V.start=1.0);
          annotation(Diagram(coordinateSystem(extent={{-148.5,-105},{148.5,105}}, preserveAspectRatio=true, grid={10,10})), Icon(coordinateSystem(extent={{-100,-100},{100,100}}, preserveAspectRatio=true, grid={10,10}), graphics={Text(origin={9.76996e-15,43.56}, fillPattern=FillPattern.Solid, extent={{-83.88,-33.56},{83.88,33.56}}, textString="Plasma", fontName="Arial"),Text(origin={2.66454e-15,-40}, fillPattern=FillPattern.Solid, extent={{-86.96,-35.65},{86.96,35.65}}, textString="glucose", fontName="Arial")}));
          parameter Real V_G=1.88;
          BioChem.Units.Concentration g_p_signal;
          BioChem.Units.Concentration g_p;
          BioChem.Units.Concentration g_signal;
          BioChem.Interfaces.Nodes.ProductConnector EGP_connector annotation(Placement(transformation(origin={4.44089e-16,-80}, extent={{-10,-10},{10,10}}), iconTransformation(origin={-1.73862,-110}, extent={{-10,-10},{10,10}})));
          BioChem.Interfaces.Nodes.ModifierConnector G_p_connector annotation(Placement(transformation(origin={-110,-70}, extent={{-10,-10},{10,10}}), iconTransformation(origin={-110,-70}, extent={{-10,-10},{10,10}})));
          BioChem.Interfaces.Nodes.SubstrateConnector E_connector annotation(Placement(transformation(origin={120,-30}, extent={{-10,-10},{10,10}}), iconTransformation(origin={110,-48.4304}, extent={{-10,-10},{10,10}})));
          BioChem.Interfaces.Nodes.ProductConnector Ra_connector annotation(Placement(transformation(origin={-80,80}, extent={{-10,-10},{10,10}}), iconTransformation(origin={-77.9724,110}, extent={{-10,-10},{10,10}})));
          BioChem.Interfaces.Nodes.SubstrateConnector G_connector annotation(Placement(transformation(origin={0,80}, extent={{-10,-10},{10,10}}), iconTransformation(origin={0,110}, extent={{-10,-10},{10,10}})));
          BioChem.Substances.SignalSubstance G_p_signal(c=g_p_signal) annotation(Placement(transformation(origin={-110,-23.3921}, extent={{-10,-10},{10,10}})));
          BioChem.Substances.SignalSubstance G_signal(c=g_signal) annotation(Placement(transformation(origin={-120,40}, extent={{-10,-10},{10,10}})));
          BioChem.Interfaces.Nodes.ModifierConnector G_signal_connector annotation(Placement(transformation(origin={-120,0}, extent={{-10,-10},{10,10}}), iconTransformation(origin={-110,1.94}, extent={{-10,-10},{10,10}})));
          BioChem.Substances.Substance G_p(c.start=178, c=g_p) annotation(Placement(transformation(extent={{-10,-10},{10,10}})));
          BioChem.Examples.GlucoseInsulinModel.Utilities.Reactions.FlowReaction Ra_reaction(k=1) annotation(Placement(transformation(origin={-80,50}, extent={{-10,-10},{10,10}}, rotation=-90)));
          BioChem.Examples.GlucoseInsulinModel.Utilities.Reactions.FlowReaction EGP_reaction(k=1) annotation(Placement(transformation(origin={0,-48}, extent={{-10,10},{10,-10}}, rotation=90)));
          BioChem.Examples.GlucoseInsulinModel.Utilities.Reactions.U_ii_reaction u_ii_reaction1 annotation(Placement(transformation(origin={90,30}, extent={{-10,-10},{10,10}})));
          BioChem.Substances.BoundarySubstance U_ii annotation(Placement(transformation(origin={120,30}, extent={{-10,-10},{10,10}})));
        equation
          connect(U_ii.n1,u_ii_reaction1.p1) annotation(Line(origin={110.625,30}, points={{9.375,0},{-9.375,0}}));
          connect(G_p.n1,u_ii_reaction1.s1) annotation(Line(origin={56.9367,15}, points={{-56.9367,-15},{17.5617,-15},{17.5617,15},{21.8133,15}}));
          connect(EGP_reaction.s1,EGP_connector) annotation(Line(origin={2.10942e-16,-69.625}, points={{-2.33147e-16,10.375},{2.33147e-16,-10.375}}));
          connect(G_p.n1,EGP_reaction.p1) annotation(Line(origin={1.11022e-17,-18.375}, points={{-1.11022e-17,18.375},{1.11022e-17,-18.375}}));
          connect(Ra_connector,Ra_reaction.s1) annotation(Line(origin={-80,70.625}, points={{0,9.375},{0,-9.375}}));
          connect(Ra_reaction.p1,G_p.n1) annotation(Line(origin={-53.3333,12.9167}, points={{-26.6667,25.8333},{-26.6667,-12.9167},{53.3333,-12.9167}}));
          connect(G_p.n1,E_connector) annotation(Line(origin={83.5,-15}, points={{-83.5,15},{23.5,15},{23.5,-15},{36.5,-15}}));
          connect(G_p.n1,G_connector) annotation(Line(origin={0,40}, points={{0,-40},{0,40}}));
          connect(G_p_signal.n1,G_p_connector) annotation(Line(origin={-110,-46.696}, points={{0,23.304},{0,-23.304}}));
          connect(G_signal.n1,G_signal_connector) annotation(Line(origin={-120,20}, points={{0,20},{0,-20}}));
          g_p_signal=g_p;
          g_signal=g_p_signal/V_G;
        end PlasmaGlucose;

        model LiverInsulin
          extends BioChem.Compartments.Compartment(V.start=1.0);
          annotation(Diagram(coordinateSystem(extent={{-148.5,-105},{148.5,105}}, preserveAspectRatio=true, grid={10,10})), Icon(coordinateSystem(extent={{-100,-100},{100,100}}, preserveAspectRatio=true, grid={10,10}), graphics={Text(origin={0.247749,43.7203}, fillPattern=FillPattern.Solid, extent={{-92.2066,-43.7203},{92.2066,43.7203}}, textString="Liver", fontName="Arial"),Text(origin={-0.875609,-51.2968}, fillPattern=FillPattern.Solid, extent={{-89.1244,-31.2968},{89.1244,31.2968}}, textString="insulin", fontName="Arial")}));
          BioChem.Units.Concentration s;
          BioChem.Units.Concentration s_signal;
          BioChem.Substances.Substance I_l(c.start=5) annotation(Placement(transformation(extent={{-10,-10},{10,10}})));
          BioChem.Substances.SignalSubstance S_signal(c=s_signal) annotation(Placement(transformation(origin={-70,50}, extent={{-10,-10},{10,10}})));
          BioChem.Examples.GlucoseInsulinModel.Utilities.Reactions.m_3 m_3 annotation(Placement(transformation(origin={-70,0}, extent={{10,-10},{-10,10}})));
          BioChem.Interfaces.Nodes.ProductConnector S_connector(c=s) annotation(Placement(transformation(origin={120,0}, extent={{-10,-10},{10,10}}), iconTransformation(origin={110,-1.93864}, extent={{-10,-10},{10,10}})));
          BioChem.Interfaces.Nodes.SubstrateConnector I_connector annotation(Placement(transformation(origin={7.10543e-15,79.59}, extent={{-10,-10},{10,10}}), iconTransformation(origin={0,110}, extent={{-10,-10},{10,10}})));
          BioChem.Examples.GlucoseInsulinModel.Utilities.Reactions.FlowReaction S_reaction(k=1) annotation(Placement(transformation(origin={70,-7.21645e-16}, extent={{10,-10},{-10,10}})));
          BioChem.Substances.BoundarySubstance Deg annotation(Placement(transformation(origin={-120,0}, extent={{-10,-10},{10,10}})));
        equation
          connect(m_3.p1,Deg.n1) annotation(Line(origin={-100.625,1.11022e-17}, points={{19.375,1.11022e-17},{-19.375,-1.11022e-17}}));
          connect(S_reaction.s1,S_connector) annotation(Line(origin={100.625,-3.71925e-16}, points={{-19.375,-3.71925e-16},{19.375,3.71925e-16}}));
          connect(S_reaction.p1,I_l.n1) annotation(Line(origin={29.375,-3.4972e-16}, points={{29.375,-3.4972e-16},{-29.375,3.4972e-16}}));
          connect(I_connector,I_l.n1) annotation(Line(origin={3.55271e-15,39.795}, points={{3.55271e-15,39.795},{-3.55271e-15,-39.795}}));
          connect(I_l.n1,m_3.s1) annotation(Line(origin={-29.375,-1.11022e-17}, points={{29.375,1.11022e-17},{-29.375,-1.11022e-17}}));
          connect(S_signal.n1,m_3.m1) annotation(Line(origin={-70,29.5}, points={{0,20.5},{0,-20.5}}));
          s=s_signal;
        end LiverInsulin;

        model EndogenousGlucoseProduction
          extends BioChem.Compartments.Compartment(V.start=1.0);
          annotation(Diagram(coordinateSystem(extent={{-148.5,-105},{148.5,105}}, preserveAspectRatio=true, grid={10,10}), graphics={Text(origin={-107.257,0}, rotation=-270, fillPattern=FillPattern.Solid, extent={{-25.4753,-2.74277},{25.4753,2.74277}}, textString="delayed insulin signal", fontName="Arial")}), Icon(coordinateSystem(extent={{-100,-100},{100,100}}, preserveAspectRatio=true, grid={10,10}), graphics={Text(origin={4.68254,4.83}, fillPattern=FillPattern.Solid, extent={{-77.28,-45.17},{77.28,45.17}}, textString="EGP", fontName="Arial")}));
          parameter Real k_p1=2.7;
          parameter Real k_p2=0.0021;
          parameter Real k_p3=0.009;
          parameter Real k_p4=0.0618;
          BioChem.Units.Concentration egp_signal;
          BioChem.Units.Concentration i_d;
          BioChem.Units.Concentration g_p;
          BioChem.Units.Concentration i_po;
          BioChem.Interfaces.Nodes.ModifierConnector G_p_connector annotation(Placement(transformation(origin={0,80}, extent={{-10,-10},{10,10}}), iconTransformation(origin={2.22045e-16,110}, extent={{-10,-10},{10,10}})));
          BioChem.Interfaces.Nodes.SubstrateConnector EGP_connector annotation(Placement(transformation(origin={60,80}, extent={{-10,-10},{10,10}}), iconTransformation(origin={73.83,110}, extent={{-10,-10},{10,10}})));
          BioChem.Interfaces.Nodes.ModifierConnector I_connector annotation(Placement(transformation(origin={-60,80}, extent={{-10,-10},{10,10}}), iconTransformation(origin={-72.29,110}, extent={{-10,-10},{10,10}})));
          BioChem.Interfaces.Nodes.ModifierConnector I_po_connector annotation(Placement(transformation(origin={120,-60}, extent={{-10,-10},{10,10}}), iconTransformation(origin={110,0}, extent={{-10,-10},{10,10}})));
          BioChem.Examples.GlucoseInsulinModel.Utilities.Reactions.FlowReaction k_i1(k=0.0079) annotation(Placement(transformation(origin={-90,63.2158}, extent={{10,-10},{-10,10}}, rotation=-270)));
          BioChem.Substances.Substance I_1(c.start=25) annotation(Placement(transformation(origin={-90,40}, extent={{-10,-10},{10,10}})));
          BioChem.Examples.GlucoseInsulinModel.Utilities.Reactions.FlowReaction k_i2(k=0.0079) annotation(Placement(transformation(origin={-90,10}, extent={{10,-10},{-10,10}}, rotation=-270)));
          BioChem.Substances.Substance I_d(c.start=25, c=i_d) annotation(Placement(transformation(origin={-90,-10}, extent={{-10,-10},{10,10}})));
          BioChem.Examples.GlucoseInsulinModel.Utilities.Reactions.FlowReaction k_i3(k=0.0079) annotation(Placement(transformation(origin={-90,-40}, extent={{10,-10},{-10,10}}, rotation=-270)));
          BioChem.Substances.BoundarySubstance End annotation(Placement(transformation(origin={-90,-60}, extent={{-10,-10},{10,10}})));
          BioChem.Substances.SignalSubstance EGP_calc(c=egp_signal) annotation(Placement(transformation(origin={60,40}, extent={{-10,-10},{10,10}})));
          BioChem.Substances.Substance G_p(c=g_p) annotation(Placement(transformation(origin={8.88178e-16,40}, extent={{-10,-10},{10,10}})));
          BioChem.Substances.Substance I_po(c=i_po) annotation(Placement(transformation(origin={80,-60}, extent={{-10,-10},{10,10}})));
          BioChem.Examples.GlucoseInsulinModel.Utilities.Reactions.signaltosubstance signaltosubstance1 annotation(Placement(transformation(origin={100,-60}, extent={{10,-10},{-10,10}})));
          BioChem.Examples.GlucoseInsulinModel.Utilities.Reactions.signaltosubstance signaltosubstance2 annotation(Placement(transformation(origin={0,60}, extent={{-10,-10},{10,10}}, rotation=-90)));
        equation
          connect(signaltosubstance2.p1,G_p.n1) annotation(Line(origin={3.10862e-16,42.9167}, points={{-2.88658e-16,5.83333},{-2.88658e-16,-2.91667},{5.77316e-16,-2.91667}}));
          connect(G_p_connector,signaltosubstance2.s1) annotation(Line(origin={-7.4015e-18,74.1667}, points={{7.4015e-18,5.83333},{7.4015e-18,-2.91667},{-1.4803e-17,-2.91667}}));
          connect(I_po_connector,signaltosubstance1.s1) annotation(Line(origin={115.625,-60}, points={{4.375,0},{-4.375,0}}));
          connect(signaltosubstance1.p1,I_po.n1) annotation(Line(origin={84.375,-60}, points={{4.375,0},{-4.375,0}}));
          connect(EGP_calc.n1,EGP_connector) annotation(Line(origin={60,60}, points={{0,-20},{0,20}}));
          connect(End.n1,k_i3.p1) annotation(Line(origin={-90,-54.1667}, points={{0,-5.83333},{0,2.91667},{0,2.91667}}));
          connect(k_i3.s1,I_d.n1) annotation(Line(origin={-90,-19.375}, points={{0,-9.375},{0,9.375}}));
          connect(k_i2.p1,I_d.n1) annotation(Line(origin={-90,-7.08333}, points={{0,5.83333},{0,-2.91667},{0,-2.91667}}));
          connect(I_1.n1,k_i2.s1) annotation(Line(origin={-90,30.625}, points={{0,9.375},{0,-9.375}}));
          connect(k_i1.p1,I_1.n1) annotation(Line(origin={-90,43.9886}, points={{0,7.97721},{0,-3.9886},{0,-3.9886}}));
          connect(k_i1.s1,I_connector) annotation(Line(origin={-80,78.1553}, points={{-10,-3.68946},{-10,1.84473},{20,1.84473}}));
          egp_signal=k_p1 - k_p2*g_p - k_p3*i_d - k_p4*i_po;
        end EndogenousGlucoseProduction;

        model GlucoseRenalExcretion
          extends BioChem.Compartments.Compartment(V.start=1.0);
          annotation(Diagram(coordinateSystem(extent={{-148.5,-105},{148.5,105}}, preserveAspectRatio=true, grid={10,10})), Icon(coordinateSystem(extent={{-100,-100},{100,100}}, preserveAspectRatio=true, grid={10,10}), graphics={Text(origin={-3.87096,37.0935}, fillPattern=FillPattern.Solid, extent={{-89.7,-30},{89.7,30}}, textString="Renal", fontName="Arial"),Text(origin={-3.55271e-15,-46.0442}, fillPattern=FillPattern.Solid, extent={{-95.9469,-26.0442},{95.9469,26.0442}}, textString="excretion", fontName="Arial")}));
          BioChem.Interfaces.Nodes.ProductConnector productConnector1 annotation(Placement(transformation(origin={-120,-4.44089e-16}, extent={{-10,-10},{10,10}}), iconTransformation(origin={-110,3.33067e-16}, extent={{-10,-10},{10,10}})));
          BioChem.Examples.GlucoseInsulinModel.Utilities.Reactions.RenalReaction renalReaction1 annotation(Placement(transformation(origin={-90,3.88578e-16}, extent={{-10,10},{10,-10}})));
          BioChem.Interfaces.Nodes.ModifierConnector G_p_connector annotation(Placement(transformation(origin={-120,-70}, extent={{-10,-10},{10,10}}), iconTransformation(origin={-110,-83.5976}, extent={{-10,-10},{10,10}})));
          BioChem.Substances.BoundarySubstance E annotation(Placement(transformation(extent={{-10,-10},{10,10}})));
        equation
          connect(renalReaction1.p1,E.n1) annotation(Line(origin={-39.375,1.83187e-16}, points={{-39.375,1.83187e-16},{39.375,-1.83187e-16}}));
          connect(G_p_connector,G_p_connector) annotation(Line(origin={-120,-70}, points={{0,0},{0,0}}));
          connect(G_p_connector,renalReaction1.m1) annotation(Line(origin={-75,-82.7488}, points={{-45,12.7488},{-15,12.7487},{-15,12.7488},{-15,73.7488}}));
          connect(productConnector1,renalReaction1.s1) annotation(Line(origin={-110.625,-1.66533e-17}, points={{-9.375,-4.27436e-16},{9.375,4.27436e-16}}));
        end GlucoseRenalExcretion;

        model UtilizationMuscleTissue
          extends BioChem.Compartments.Compartment(V.start=1.0);
          annotation(Diagram(coordinateSystem(extent={{-148.5,-105},{148.5,105}}, preserveAspectRatio=true, grid={10,10})), Icon(coordinateSystem(extent={{-100,-100},{100,100}}, preserveAspectRatio=true, grid={10,10}), graphics={Text(origin={-2.91,52.76}, fillPattern=FillPattern.Solid, extent={{-82.91,-30.17},{82.91,30.17}}, textString="Muscle", fontName="Arial"),Text(origin={-7.10543e-15,-34.69}, fillPattern=FillPattern.Solid, extent={{-77.92,-34.69},{77.92,34.69}}, textString="tissue", fontName="Arial")}));
          BioChem.Interfaces.Nodes.ModifierConnector I_connector annotation(Placement(transformation(origin={-120,50}, extent={{-10,-10},{10,10}}), iconTransformation(origin={-110,83.5696}, extent={{-10,-10},{10,10}})));
          BioChem.Interfaces.Nodes.ProductConnector G_t_connector annotation(Placement(transformation(origin={-120,0}, extent={{-10,-10},{10,10}}), iconTransformation(origin={-110,1.62}, extent={{-10,-10},{10,10}})));
          BioChem.Substances.BoundarySubstance U_idm annotation(Placement(transformation(extent={{-10,-10},{10,10}})));
          BioChem.Examples.GlucoseInsulinModel.Utilities.Reactions.UtilizationReaction UtilizationReaction(K_m0=225.59, V_m0=2.5, V_mX=0.047, p_2U=0.0331, part=0.8) annotation(Placement(transformation(origin={-64.11,0}, extent={{-10,-10},{10,10}})));
        equation
          connect(UtilizationReaction.p1,U_idm.n1) annotation(Line(origin={-26.43,1.11022e-17}, points={{-26.43,1.11022e-17},{26.43,-1.11022e-17}}));
          connect(UtilizationReaction.m1,I_connector) annotation(Line(origin={-82.74,36.3333}, points={{18.63,-27.3333},{18.63,13.6667},{-37.26,13.6667}}));
          connect(G_t_connector,UtilizationReaction.s1) annotation(Line(origin={-97.68,-1.11022e-17}, points={{-22.32,1.11022e-17},{22.32,-1.11022e-17}}));
        end UtilizationMuscleTissue;

        model TissueGlucose
          extends BioChem.Compartments.Compartment(V.start=1.0);
          annotation(Diagram(coordinateSystem(extent={{-148.5,-105},{148.5,105}}, preserveAspectRatio=true, grid={10,10})), Icon(coordinateSystem(extent={{-100,-100},{100,100}}, preserveAspectRatio=true, grid={10,10}), graphics={Text(origin={-0.55,-36.0512}, fillPattern=FillPattern.Solid, extent={{-100.55,-33.9488},{100.55,33.9488}}, textString="glucose", fontName="Arial"),Text(origin={3.56664,43.6442}, fillPattern=FillPattern.Solid, extent={{-86.4334,-33.6442},{86.4334,33.6442}}, textString="Tissue", fontName="Arial")}));
          BioChem.Interfaces.Nodes.ProductConnector G_connector annotation(Placement(transformation(origin={0,-80}, extent={{-10,-10},{10,10}}), iconTransformation(origin={0,-110}, extent={{-10,-10},{10,10}})));
          BioChem.Substances.Substance G_t(c.start=130) annotation(Placement(transformation(extent={{-10,-10},{10,10}})));
          BioChem.Interfaces.Nodes.SubstrateConnector U_idf_connector annotation(Placement(transformation(origin={120,40}, extent={{-10,-10},{10,10}}), iconTransformation(origin={110,60}, extent={{-10,-10},{10,10}})));
          BioChem.Interfaces.Nodes.SubstrateConnector U_idm_connector annotation(Placement(transformation(origin={120,-40}, extent={{-10,-10},{10,10}}), iconTransformation(origin={110,-63.4979}, extent={{-10,-10},{10,10}})));
        equation
          connect(G_t.n1,U_idm_connector) annotation(Line(origin={83.5,-20}, points={{-83.5,20},{23.5,20},{23.5,-20},{36.5,-20}}));
          connect(G_t.n1,U_idf_connector) annotation(Line(origin={83.5,20}, points={{-83.5,-20},{23.5,-20},{23.5,20},{36.5,20}}));
          connect(G_t.n1,G_connector) annotation(Line(origin={0,-40}, points={{0,40},{0,-40}}));
        end TissueGlucose;

        package AdiposeTissue
          extends BioChem.Icons.Library;
          model Adipocyte
            extends BioChem.Compartments.Compartment(V.start=1.0);
            annotation(Diagram(coordinateSystem(extent={{-148.5,-105},{148.5,105}}, preserveAspectRatio=true, grid={10,10})), Documentation(info="", revisions=""));
            BioChem.Substances.Substance IR(c.start=2340000000000.0) annotation(Placement(transformation(origin={-110,60}, extent={{-10,-10},{10,10}})));
            BioChem.Substances.SignalSubstance IR_tot annotation(Placement(transformation(origin={110,60}, extent={{-10,-10},{10,10}})));
            BioChem.Substances.Substance IRS1(c.start=16100000000.0) annotation(Placement(transformation(origin={-80,30}, extent={{-10,-10},{10,10}})));
            BioChem.Substances.Substance IRS1_P(c.start=0) annotation(Placement(transformation(origin={-20,30}, extent={{-10,-10},{10,10}})));
            BioChem.Examples.GlucoseInsulinModel.Utilities.Reactions.ActivationReaction activationReaction2(k_1=0.038, k_2=580000000) annotation(Placement(transformation(origin={-50,30}, extent={{-10,-10},{10,10}})));
            BioChem.Examples.GlucoseInsulinModel.Utilities.Reactions.ActivationReaction activationReaction3(k_1=1.348, k_2=24800000) annotation(Placement(transformation(origin={-20,0}, extent={{-10,-10},{10,10}})));
            BioChem.Substances.Substance PKB(c.start=16800000) annotation(Placement(transformation(origin={-50,0}, extent={{-10,-10},{10,10}})));
            BioChem.Substances.Substance PKB_P(c.start=0) annotation(Placement(transformation(origin={10,0}, extent={{-10,-10},{10,10}})));
            BioChem.Examples.GlucoseInsulinModel.Utilities.Reactions.ActivationReaction activationReaction4(k_1=0.019, k_2=336000000) annotation(Placement(transformation(origin={10,-30}, extent={{-10,-10},{10,10}})));
            BioChem.Substances.SignalSubstance IRS1_tot annotation(Placement(transformation(origin={110,30}, extent={{-10,-10},{10,10}})));
            BioChem.Substances.SignalSubstance PKB_tot annotation(Placement(transformation(origin={110,0}, extent={{-10,-10},{10,10}})));
            BioChem.Substances.SignalSubstance GLUT4_tot annotation(Placement(transformation(origin={110,-30}, extent={{-10,-10},{10,10}})));
            BioChem.Substances.BoundarySubstance GlucoseUtilization annotation(Placement(transformation(origin={110,-80}, extent={{-10,-10},{10,10}})));
            BioChem.Interfaces.Nodes.ModifierConnector modifierConnector1 annotation(Placement(transformation(origin={-80,90}, extent={{-10,-10},{10,10}}), iconTransformation(origin={-110,0}, extent={{-10,-10},{10,10}})));
            BioChem.Interfaces.Nodes.ProductConnector productConnector1 annotation(Placement(transformation(origin={-7.77156e-16,-80}, extent={{-10,-10},{10,10}}), iconTransformation(origin={-1.22125e-15,-110}, extent={{-10,-10},{10,10}})));
            BioChem.Substances.Substance GLUT4_MEMBRANE(c.start=0) annotation(Placement(transformation(origin={40,-30}, extent={{-10,-10},{10,10}})));
            BioChem.Substances.Substance GLUT4_CYTOSOL(c.start=580000000) annotation(Placement(transformation(origin={-20,-30}, extent={{-10,-10},{10,10}})));
            BioChem.Substances.Substance IR_insulin(c.start=0) annotation(Placement(transformation(origin={-50,60}, extent={{-10,-10},{10,10}})));
            BioChem.Examples.GlucoseInsulinModel.Utilities.Reactions.MM_insulin MM_insulin1(k_1=2.464, k_2=54100000000.0, Km=1499) annotation(Placement(transformation(origin={-80,60}, extent={{-10,-10},{10,10}})));
            BioChem.Examples.GlucoseInsulinModel.Utilities.Reactions.GlucoseUptakeReaction GlucoseUptake_GLUT4(k=12.435, glut_1=0.071, Km1=0.012, Km4=3462, k_wholebody=2.45) annotation(Placement(transformation(origin={40,-80}, extent={{-10,-10},{10,10}})));
          equation
            connect(productConnector1,GlucoseUptake_GLUT4.s1) annotation(Line(origin={14.375,-80}, points={{-14.375,0},{14.375,0}}));
            connect(GlucoseUptake_GLUT4.p1,GlucoseUtilization.n1) annotation(Line(origin={80.625,-80}, points={{-29.375,0},{29.375,0}}));
            connect(GLUT4_MEMBRANE.n1,GlucoseUptake_GLUT4.m1) annotation(Line(origin={40,-50.5}, points={{0,20.5},{0,-20.5}}));
            connect(MM_insulin1.p1,IR_insulin.n1) annotation(Line(origin={-59.375,60}, points={{-9.375,0},{9.375,0}}));
            connect(modifierConnector1,MM_insulin1.m1) annotation(Line(origin={-80,79.5}, points={{0,10.5},{0,-10.5}}));
            connect(IR.n1,MM_insulin1.s1) annotation(Line(origin={-100.625,60}, points={{-9.375,0},{9.375,0}}));
            connect(IR_insulin.n1,activationReaction2.m1) annotation(Line(origin={-50,49.5}, points={{0,10.5},{0,-10.5}}));
            connect(GLUT4_CYTOSOL.n1,activationReaction4.s1) annotation(Line(origin={-10.625,-30}, points={{-9.375,0},{9.375,0}}));
            connect(activationReaction4.p1,GLUT4_MEMBRANE.n1) annotation(Line(origin={30.625,-30}, points={{-9.375,0},{9.375,0}}));
            IR_tot.c=IR.c + IR_insulin.c;
            IRS1_tot.c=IRS1.c + IRS1_P.c;
            PKB_tot.c=PKB.c + PKB_P.c;
            GLUT4_tot.c=GLUT4_CYTOSOL.c + GLUT4_MEMBRANE.c;
            connect(PKB_P.n1,activationReaction4.m1) annotation(Line(origin={10,-10.5}, points={{0,10.5},{-1.77636e-15,-10.5}}));
            connect(activationReaction3.p1,PKB_P.n1) annotation(Line(origin={0.625,1.11022e-17}, points={{-9.375,1.11022e-17},{9.375,-1.11022e-17}}));
            connect(PKB.n1,activationReaction3.s1) annotation(Line(origin={-40.625,1.11022e-17}, points={{-9.375,-1.11022e-17},{9.375,1.11022e-17}}));
            connect(IRS1_P.n1,activationReaction3.m1) annotation(Line(origin={-20,19.5}, points={{0,10.5},{0,-10.5}}));
            connect(activationReaction2.p1,IRS1_P.n1) annotation(Line(origin={-29.375,30}, points={{-9.375,-3.55271e-15},{9.375,0}}));
            connect(IRS1.n1,activationReaction2.s1) annotation(Line(origin={-70.625,30}, points={{-9.375,0},{9.375,0}}));
          end Adipocyte;

          model AdiposeTissue
            extends BioChem.Compartments.Compartment(V.start=1.0);
            annotation(Diagram(coordinateSystem(extent={{-148.5,-105},{148.5,105}}, preserveAspectRatio=true, grid={10,10})), Icon(coordinateSystem(extent={{-100,-100},{100,100}}, preserveAspectRatio=true, grid={10,10}), graphics={Text(origin={-3.97,38.38}, fillPattern=FillPattern.Solid, extent={{-96.03,-31.62},{96.03,31.62}}, textString="Fat", fontName="Arial"),Text(origin={-2.5601,-40}, fillPattern=FillPattern.Solid, extent={{-77.4399,-42.4487},{77.4399,42.4487}}, textString="tissue", fontName="Arial")}));
            BioChem.Interfaces.Nodes.ModifierConnector I_connector annotation(Placement(transformation(origin={-120,50}, extent={{-10,-10},{10,10}}), iconTransformation(origin={-110,83.8877}, extent={{-10,-10},{10,10}})));
            BioChem.Interfaces.Nodes.ProductConnector G_t_connector annotation(Placement(transformation(origin={-120,0}, extent={{-10,-10},{10,10}}), iconTransformation(origin={-110,1.61}, extent={{-10,-10},{10,10}})));
            BioChem.Examples.GlucoseInsulinModel.Utilities.Parts.AdiposeTissue.Adipocyte adipocyte1 annotation(Placement(transformation(origin={0,6.66134e-16}, extent={{-10,-10},{10,10}})));
          equation
            connect(adipocyte1.productConnector1,G_t_connector) annotation(Line(origin={-66.8,-8.2005}, points={{66.8,-2.7995},{66.8,-6.80075},{-40.2,-6.80075},{-40.2,8.2005},{-53.2,8.2005}}));
            connect(I_connector,adipocyte1.modifierConnector1) annotation(Line(origin={-40.2506,25}, points={{-79.7494,25},{25.2494,25},{25.2494,-25},{29.2506,-25}}));
          end AdiposeTissue;

        end AdiposeTissue;

      end Parts;

      package Reactions
        extends BioChem.Icons.Library;
        model FlowReaction
          extends BioChem.Interfaces.Reactions.Uui;
          annotation(Diagram(coordinateSystem(extent={{-148.5,-105},{148.5,105}}, preserveAspectRatio=true, grid={10,10})));
          parameter Real k;
        equation
          rr=s1.c*k;
        end FlowReaction;

        model k_empt
          extends BioChem.Interfaces.Reactions.Uui;
          extends BioChem.Interfaces.Reactions.Modifiers.TwoModifiers;
          annotation(Diagram(coordinateSystem(extent={{-148.5,-105},{148.5,105}}, preserveAspectRatio=true, grid={10,10})));
          Real k;
          Real aa;
          Real cc;
          parameter Real k_max=0.0558;
          parameter Real k_min=0.008;
          parameter Real b=0.82;
          parameter Real d=0.01;
        equation
          rr=s1.c*k;
          k=k_min + (k_max - k_min)/2*(Modelica.Math.tanh(aa*(m1.c - b*m2.c)) - Modelica.Math.tanh(cc*(m1.c - d*m2.c)) + 2);
          aa=5/2/(1 - b)/m2.c;
          cc=5/2/d/m2.c;
        end k_empt;

        model dirac
          extends BioChem.Interfaces.Reactions.Uui;
          annotation(Diagram(coordinateSystem(extent={{-148.5,-105},{148.5,105}}, preserveAspectRatio=true, grid={10,10})));
          parameter Real k=78000000;
        equation
          if time < 0.001 then
            rr=k;
          else
            rr=0;
          end if;
        end dirac;

        model m_3
          extends BioChem.Interfaces.Reactions.Uui;
          extends BioChem.Interfaces.Reactions.Modifiers.Modifier;
          Real k;
          parameter Real m_5=0.0304;
          parameter Real m_1=0.19;
          parameter Real m_6=0.6471;
          annotation(Diagram(coordinateSystem(extent={{-148.5,-105},{148.5,105}}, preserveAspectRatio=true, grid={10,10})));
        equation
          rr=s1.c*k;
          k=(-m_5*m1.c + m_6)*m_1/(1 - (-m_5*m1.c + m_6));
        end m_3;

        model ReversibleFlowReaction
          extends BioChem.Interfaces.Reactions.Uur;
          annotation(Diagram(coordinateSystem(extent={{-148.5,-105},{148.5,105}}, preserveAspectRatio=true, grid={10,10})));
          parameter Real k_1;
          parameter Real k_2;
        equation
          rr=s1.c*k_1 - p1.c*k_2;
        end ReversibleFlowReaction;

        model RenalReaction
          extends BioChem.Interfaces.Reactions.Uui;
          extends BioChem.Interfaces.Reactions.Modifiers.Modifier;
          annotation(Diagram(coordinateSystem(extent={{-148.5,-105},{148.5,105}}, preserveAspectRatio=true, grid={10,10})));
          parameter Real k_e1=0.0005;
          parameter Real k_e2=339;
        equation
          if m1.c > k_e2 then
            rr=s1.c*(k_e1*(m1.c - k_e2));
          else
            rr=0;
          end if;
        end RenalReaction;

        model UtilizationReaction
          extends BioChem.Interfaces.Reactions.Uui;
          extends BioChem.Interfaces.Reactions.Modifiers.Modifier;
          annotation(Diagram(coordinateSystem(extent={{-148.5,-105},{148.5,105}}, preserveAspectRatio=true, grid={10,10})));
          BioChem.Units.Concentration X;
          Real V_max;
          parameter Real part;
          parameter Real V_m0;
          parameter Real V_mX;
          parameter Real K_m0;
          parameter Real p_2U;
          parameter Real I_b=25;
        equation
          rr=V_max*s1.c/(K_m0 + s1.c);
          V_max=part*(V_m0 + V_mX*X);
          der(X)=-p_2U*X + p_2U*(m1.c - I_b);
        end UtilizationReaction;

        model signaltosubstance
          extends BioChem.Interfaces.Reactions.Uui;
          annotation(Diagram(coordinateSystem(extent={{-148.5,-105},{148.5,105}}, preserveAspectRatio=true, grid={10,10})));
        equation
          s1.c=p1.c;
        end signaltosubstance;

        model U_ii_reaction
          extends BioChem.Interfaces.Reactions.Uui;
          annotation(Diagram(coordinateSystem(extent={{-148.5,-105},{148.5,105}}, preserveAspectRatio=true, grid={10,10})));
        equation
          rr=1;
        end U_ii_reaction;

        model ActivationReaction
          extends BioChem.Interfaces.Reactions.Uur;
          extends BioChem.Interfaces.Reactions.Modifiers.Modifier;
          annotation(Diagram(coordinateSystem(extent={{-148.5,-105},{148.5,105}}, preserveAspectRatio=true, grid={10,10})));
          parameter Real k_1;
          parameter Real k_2;
        equation
          rr=k_1*s1.c*m1.c - p1.c*k_2;
        end ActivationReaction;

        model MM_insulin
          extends BioChem.Interfaces.Reactions.Uur;
          extends BioChem.Interfaces.Reactions.Modifiers.Modifier;
          annotation(Diagram(coordinateSystem(extent={{-148.5,-105},{148.5,105}}, preserveAspectRatio=true, grid={10,10})));
          parameter Real k_1;
          parameter Real k_2;
          parameter Real Km;
        equation
          rr=k_1*m1.c*s1.c/(Km + m1.c) - p1.c*k_2;
        end MM_insulin;

        model GlucoseUptakeReaction
          extends BioChem.Interfaces.Reactions.Uui;
          extends BioChem.Interfaces.Reactions.Modifiers.Modifier;
          annotation(Diagram(coordinateSystem(extent={{-148.5,-105},{148.5,105}}, preserveAspectRatio=true, grid={10,10})));
          parameter Real k_wholebody;
          parameter Real k;
          parameter Real Km4;
          parameter Real Km1;
          parameter Real glut_1;
        equation
          rr=k_wholebody*(k*m1.c*s1.c/(Km4 + s1.c) + glut_1*s1.c/(Km1 + s1.c));
        end GlucoseUptakeReaction;

      end Reactions;

    end Utilities;

  end GlucoseInsulinModel;

end Examples;
