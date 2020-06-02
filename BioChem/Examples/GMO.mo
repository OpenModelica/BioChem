within BioChem.Examples;

package GMO "Goldbeter1991_MinMitOscil"
  extends BioChem.Icons.Example;

  model cell "cell"
    extends BioChem.Compartments.MainCompartment(V(start = 1));
    import BioChem.Math.*;
    import BioChem.Constants.*;

    model C_
      extends BioChem.Substances.Substance;
      annotation(
        __MathCore(RDF = "<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
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
      annotation(
        __MathCore(RDF = "<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
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
      parameter Real vi = 0.025;
      outer Real cell_V "Variable used to access the volume of an outer compartment. Do not edit.";
    equation
      rr = cell_V * vi;
      annotation(
        __MathCore(RDF = "<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
    <rdf:Description rdf:about=\"#_230535\">
      <bqbiol:isVersionOf>
        <rdf:Bag>
          <rdf:li rdf:resource=\"urn:miriam:obo.go:GO%3A0006412\"/>
        </rdf:Bag>
      </bqbiol:isVersionOf>
    </rdf:Description>
  </rdf:RDF>"));
    end reaction1_;

    model reaction2_
      extends BioChem.Interfaces.Reactions.Uui;
      parameter Real kd = 0.01;
      outer Real cell_V "Variable used to access the volume of an outer compartment. Do not edit.";
    equation
      rr = s1.c * cell_V * kd;
      annotation(
        __MathCore(RDF = "<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
    <rdf:Description rdf:about=\"#_230555\">
      <bqbiol:isVersionOf>
        <rdf:Bag>
          <rdf:li rdf:resource=\"urn:miriam:obo.go:GO%3A0008054\"/>
        </rdf:Bag>
      </bqbiol:isVersionOf>
    </rdf:Description>
  </rdf:RDF>"));
    end reaction2_;

    model reaction3_
      extends BioChem.Interfaces.Reactions.Uui;
      extends BioChem.Interfaces.Reactions.Modifiers.Modifier;
      parameter Real vd = 0.25;
      parameter Real Kd = 0.02;
      outer Real cell_V "Variable used to access the volume of an outer compartment. Do not edit.";
    equation
      rr = s1.c * cell_V * vd * m1.c * (s1.c + Kd) ^ (-1);
      annotation(
        __MathCore(RDF = "<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
    <rdf:Description rdf:about=\"#_230575\">
      <bqbiol:isVersionOf>
        <rdf:Bag>
          <rdf:li rdf:resource=\"urn:miriam:obo.go:GO%3A0008054\"/>
        </rdf:Bag>
      </bqbiol:isVersionOf>
    </rdf:Description>
  </rdf:RDF>"));
    end reaction3_;

    model reaction4_
      extends BioChem.Interfaces.Reactions.Uui;
      parameter Real K1 = 0.005;
      outer Real cell_V "Variable used to access the volume of an outer compartment. Do not edit.";
      Real V1;
    equation
      rr = cell_V * (1 + (-1) * p1.c) * V1 * (K1 + (-1) * p1.c + 1) ^ (-1);
      annotation(
        __MathCore(RDF = "<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
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
    end reaction4_;

    model reaction5_
      extends BioChem.Interfaces.Reactions.Uui;
      parameter Real V2 = 1.5;
      parameter Real K2 = 0.005;
      outer Real cell_V "Variable used to access the volume of an outer compartment. Do not edit.";
    equation
      rr = cell_V * s1.c * V2 * (K2 + s1.c) ^ (-1);
      annotation(
        __MathCore(RDF = "<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
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
    end reaction5_;

    model reaction6_
      extends BioChem.Interfaces.Reactions.Uui;
      parameter Real K3 = 0.005;
      outer Real cell_V "Variable used to access the volume of an outer compartment. Do not edit.";
      Real V3;
    equation
      rr = cell_V * V3 * (1 + (-1) * p1.c) * (K3 + (-1) * p1.c + 1) ^ (-1);
    end reaction6_;

    model reaction7_
      extends BioChem.Interfaces.Reactions.Uui;
      parameter Real K4 = 0.005;
      parameter Real V4 = 0.5;
      outer Real cell_V "Variable used to access the volume of an outer compartment. Do not edit.";
    equation
      rr = cell_V * V4 * s1.c * (K4 + s1.c) ^ (-1);
    end reaction7_;

    inner Real cell_V = V "Variable used to make the compartment volume accessible for inner components. Do not edit.";
    BioChem.Examples.GMO.cell.C_ C(c(start = 0.01)) "Cyclin" annotation(
      Placement(transformation(origin = {80.0, 0.0}, extent = {{-10.0, -10.0}, {10.0, 10.0}}, rotation = -270)));
    BioChem.Examples.GMO.cell.M_ M(c(start = 0.01)) "CDC-2 Kinase" annotation(
      Placement(transformation(origin = {-70.0, 70.0}, extent = {{-10.0, -10.0}, {10.0, 10.0}}, rotation = -180)));
    BioChem.Examples.GMO.cell.X_ X(c(start = 0.01)) "Cyclin Protease" annotation(
      Placement(transformation(origin = {50.0, -30.0}, extent = {{-10.0, -10.0}, {10.0, 10.0}})));
    Real V1 "V1";
    Real V3 "V3";
    parameter Real VM1 = 3 "VM1";
    parameter Real VM3 = 1 "VM3";
    parameter Real Kc = 0.5 "Kc";
    BioChem.Substances.AmbientSubstance ambientSubstance annotation(
      Placement(transformation(origin = {-10.0, 30.0}, extent = {{-10.0, -10.0}, {10.0, 10.0}}, rotation = -180)));
    BioChem.Examples.GMO.cell.reaction1_ reaction1 "creation of cyclin" annotation(
      Placement(transformation(origin = {50.0, 40.0}, extent = {{-10.0, 10.0}, {10.0, -10.0}})));
    BioChem.Examples.GMO.cell.reaction2_ reaction2 "default degradation of cyclin" annotation(
      Placement(transformation(origin = {30.0, -60.0}, extent = {{-10.0, 10.0}, {10.0, -10.0}}, rotation = 180)));
    BioChem.Examples.GMO.cell.reaction3_ reaction3 "cdc2 kinase triggered degration of cyclin" annotation(
      Placement(transformation(origin = {50.0, 10.0}, extent = {{-10.0, -10.0}, {10.0, 10.0}}, rotation = -180)));
    BioChem.Examples.GMO.cell.reaction4_ reaction4(V1 = V1) "activation of cdc2 kinase" annotation(
      Placement(transformation(origin = {-70.0, 40.0}, extent = {{10.0, -10.0}, {-10.0, 10.0}}, rotation = 270)));
    BioChem.Examples.GMO.cell.reaction5_ reaction5 "deactivation of cdc2 kinase" annotation(
      Placement(transformation(origin = {-30.0, 70.0}, extent = {{-10.0, 10.0}, {10.0, -10.0}})));
    BioChem.Examples.GMO.cell.reaction6_ reaction6(V3 = V3) "activation of cyclin protease" annotation(
      Placement(transformation(origin = {10.0, -37.8911}, extent = {{-10.0, -10.0}, {10.0, 10.0}})));
    BioChem.Examples.GMO.cell.reaction7_ reaction7 "deactivation of cyclin protease" annotation(
      Placement(transformation(origin = {20.0, -10.0}, extent = {{-10.0, -10.0}, {10.0, 10.0}}, rotation = -180)));
  equation
    connect(X.n1, reaction7.s1) annotation(
      Line(origin = {43.75, -16.6667}, points = {{6.25, -13.3333}, {6.25, 6.6667}, {-12.5, 6.6667}}, smooth = Smooth.Bezier));
    connect(ambientSubstance.n1, reaction7.p1) annotation(
      Line(origin = {-3.75, 3.3333}, points = {{-6.25, 26.6667}, {-6.25, -13.3333}, {12.5, -13.3333}}, smooth = Smooth.Bezier));
    connect(X.n1, reaction6.p1) annotation(
      Line(origin = {30.5633, -33.9455}, points = {{19.4367, 3.9455}, {-5.0617, 3.9455}, {-5.0617, -3.9455}, {-9.3133, -3.9455}}, smooth = Smooth.Bezier));
    connect(X.n1, reaction3.m1) annotation(
      Line(origin = {50.0, -14.5}, points = {{0.0, -15.5}, {0.0, 15.5}}, smooth = Smooth.Bezier));
    connect(ambientSubstance.n1, reaction6.s1) annotation(
      Line(origin = {-7.0833, -15.2607}, points = {{-2.9167, 45.2607}, {-2.9167, -22.6304}, {5.8333, -22.6304}}, smooth = Smooth.Bezier));
    connect(M.n1, reaction4.p1) annotation(
      Line(origin = {-70.0, 60.625}, points = {{0.0, 9.375}, {0.0, -9.375}}, smooth = Smooth.Bezier));
    connect(ambientSubstance.n1, reaction4.s1) annotation(
      Line(origin = {-39.2, 27.5494}, points = {{29.2, 2.4506}, {16.2, 2.4506}, {16.2, -3.0509}, {-30.8, -3.0509}, {-30.8, 1.2006}}, smooth = Smooth.Bezier));
    connect(M.n1, reaction5.s1) annotation(
      Line(origin = {-55.625, 70.0}, points = {{-14.375, 0.0}, {14.375, 0.0}}, smooth = Smooth.Bezier));
    connect(ambientSubstance.n1, reaction5.p1) annotation(
      Line(origin = {-12.9167, 56.6667}, points = {{2.9167, -26.6667}, {2.9167, 13.3333}, {-5.8333, 13.3333}}, smooth = Smooth.Bezier));
    connect(C.n1, reaction2.s1) annotation(
      Line(origin = {67.0833, -40.0}, points = {{12.9167, 40.0}, {12.9167, -20.0}, {-25.8333, -20.0}}, smooth = Smooth.Bezier));
    connect(ambientSubstance.n1, reaction2.p1) annotation(
      Line(origin = {-50.4167, -20.9454}, points = {{40.4167, 50.9454}, {-9.5833, -30.588}, {69.1667, -39.0546}}, smooth = Smooth.Bezier));
    connect(C.n1, reaction1.p1) annotation(
      Line(origin = {73.75, 26.6667}, points = {{6.25, -26.6667}, {6.25, 13.3333}, {-12.5, 13.3333}}, smooth = Smooth.Bezier));
    connect(ambientSubstance.n1, reaction1.s1) annotation(
      Line(origin = {24.4367, 35.0}, points = {{-34.4367, -5.0}, {10.0617, -5.0}, {10.0617, 5.0}, {14.3133, 5.0}}, smooth = Smooth.Bezier));
    connect(ambientSubstance.n1, reaction3.p1) annotation(
      Line(origin = {24.4367, 20.0}, points = {{-34.4367, 10.0}, {10.0617, 10.0}, {10.0617, -10.0}, {14.3133, -10.0}}, smooth = Smooth.Bezier));
    connect(C.n1, reaction3.s1) annotation(
      Line(origin = {68.0633, 5.0}, points = {{11.9367, -5.0}, {-2.5617, -5.0}, {-2.5617, 5.0}, {-6.8133, 5.0}}, smooth = Smooth.Bezier));
    V1 = C.c * VM1 * (C.c + Kc) ^ (-1);
    V3 = M.c * VM3;
    annotation(
      __MathCore(RDF = "<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
    <rdf:Description rdf:about=\"#_230461\">
      <bqbiol:is>
        <rdf:Bag>
          <rdf:li rdf:resource=\"urn:miriam:obo.go:GO%3A0005623\"/>
        </rdf:Bag>
      </bqbiol:is>
    </rdf:Description>
  </rdf:RDF>"),
      Documentation(info = "<html>
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

</html>", revisions = ""),
      experiment(StartTime = 0.0, StopTime = 100, NumberOfIntervals = -1, Algorithm = "dassl", Tolerance = 1e-06));
  end cell;
  annotation(
    __MathCore(RDF = "<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
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
  annotation(
    Documentation(info = "<html>
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
</html>", revisions = ""));
end GMO;
