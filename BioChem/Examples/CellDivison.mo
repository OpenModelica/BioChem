within BioChem.Examples;

package CellDivison "Tyson1991_CellCycle_6var"
  extends BioChem.Icons.Example;

  model cell
    extends BioChem.Compartments.MainCompartment(V(start = 1));
    import BioChem.Math.*;
    import BioChem.Constants.*;

    model EmptySet_
      extends BioChem.Substances.BoundarySubstance;
    end EmptySet_;

    model C2_
      extends BioChem.Substances.Substance;
      annotation(
        __MathCore(RDF = "<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
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
      annotation(
        __MathCore(RDF = "<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
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
      annotation(
        __MathCore(RDF = "<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
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
      annotation(
        __MathCore(RDF = "<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
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
      annotation(
        __MathCore(RDF = "<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
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
      annotation(
        __MathCore(RDF = "<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
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
      annotation(
        __MathCore(RDF = "<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
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
      annotation(
        __MathCore(RDF = "<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
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
      parameter Real k6 = 1;
      outer Real cell_V "Variable used to access the volume of an outer compartment. Do not edit.";
    equation
      rr = cell_V * k6 * s1.c;
      annotation(
        __MathCore(RDF = "<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
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
    end Reaction1_;

    model Reaction2_
      extends BioChem.Interfaces.Reactions.Uui;
      parameter Real k8notP = 1000000.0;
      outer Real cell_V "Variable used to access the volume of an outer compartment. Do not edit.";
    equation
      rr = cell_V * s1.c * k8notP;
      annotation(
        __MathCore(RDF = "<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
    <rdf:Description rdf:about=\"#_000011\">
      <bqbiol:isVersionOf>
        <rdf:Bag>
          <rdf:li rdf:resource=\"urn:miriam:ec-code:2.7.11.1\"/>
          <rdf:li rdf:resource=\"urn:miriam:obo.go:GO%3A0006468\"/>
        </rdf:Bag>
      </bqbiol:isVersionOf>
    </rdf:Description>
  </rdf:RDF>"));
    end Reaction2_;

    model Reaction3_
      extends BioChem.Interfaces.Reactions.Uui;
      parameter Real k9 = 1000;
      outer Real cell_V "Variable used to access the volume of an outer compartment. Do not edit.";
    equation
      rr = cell_V * s1.c * k9;
      annotation(
        __MathCore(RDF = "<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
    <rdf:Description rdf:about=\"#_000012\">
      <bqbiol:isVersionOf>
        <rdf:Bag>
          <rdf:li rdf:resource=\"urn:miriam:ec-code:3.1.3.16\"/>
          <rdf:li rdf:resource=\"urn:miriam:obo.go:GO%3A0006470\"/>
        </rdf:Bag>
      </bqbiol:isVersionOf>
    </rdf:Description>
  </rdf:RDF>"));
    end Reaction3_;

    model Reaction4_
      extends BioChem.Interfaces.Reactions.Bui;
      parameter Real k3 = 200;
      outer Real cell_V "Variable used to access the volume of an outer compartment. Do not edit.";
    equation
      rr = cell_V * s1.c * k3 * s2.c;
      annotation(
        __MathCore(RDF = "<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
    <rdf:Description rdf:about=\"#_000013\">
      <bqbiol:hasVersion>
        <rdf:Bag>
          <rdf:li rdf:resource=\"urn:miriam:reactome:REACT_6308\"/>
          <rdf:li rdf:resource=\"urn:miriam:reactome:REACT_6216\"/>
        </rdf:Bag>
      </bqbiol:hasVersion>
    </rdf:Description>
  </rdf:RDF>"));
    end Reaction4_;

    model Reaction5_
      extends BioChem.Interfaces.Reactions.Uui;
      parameter Real k5notP = 0;
      outer Real cell_V "Variable used to access the volume of an outer compartment. Do not edit.";
    equation
      rr = cell_V * k5notP * s1.c;
      annotation(
        __MathCore(RDF = "<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
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
    end Reaction5_;

    model Reaction6_
      extends BioChem.Interfaces.Reactions.Uui;
      parameter Real k1aa = 0.015;
      outer Real cell_V "Variable used to access the volume of an outer compartment. Do not edit.";
    equation
      rr = cell_V * k1aa;
      annotation(
        __MathCore(RDF = "<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
    <rdf:Description rdf:about=\"#_000015\">
      <bqbiol:isVersionOf>
        <rdf:Bag>
          <rdf:li rdf:resource=\"urn:miriam:obo.go:GO%3A0043037\"/>
        </rdf:Bag>
      </bqbiol:isVersionOf>
    </rdf:Description>
  </rdf:RDF>"));
    end Reaction6_;

    model Reaction7_
      extends BioChem.Interfaces.Reactions.Uui;
      parameter Real k2 = 0;
      outer Real cell_V "Variable used to access the volume of an outer compartment. Do not edit.";
    equation
      rr = cell_V * k2 * s1.c;
      annotation(
        __MathCore(RDF = "<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
    <rdf:Description rdf:about=\"#_000016\">
      <bqbiol:isVersionOf>
        <rdf:Bag>
          <rdf:li rdf:resource=\"urn:miriam:obo.go:GO%3A0008054\"/>
        </rdf:Bag>
      </bqbiol:isVersionOf>
    </rdf:Description>
  </rdf:RDF>"));
    end Reaction7_;

    model Reaction8_
      extends BioChem.Interfaces.Reactions.Uui;
      parameter Real k7 = 0.6;
      outer Real cell_V "Variable used to access the volume of an outer compartment. Do not edit.";
    equation
      rr = cell_V * k7 * s1.c;
      annotation(
        __MathCore(RDF = "<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
    <rdf:Description rdf:about=\"#_000017\">
      <bqbiol:isVersionOf>
        <rdf:Bag>
          <rdf:li rdf:resource=\"urn:miriam:obo.go:GO%3A0008054\"/>
        </rdf:Bag>
      </bqbiol:isVersionOf>
    </rdf:Description>
  </rdf:RDF>"));
    end Reaction8_;

    model Reaction9_
      extends BioChem.Interfaces.Reactions.Uui;
      extends BioChem.Interfaces.Reactions.Modifiers.Modifier;
      parameter Real k4 = 180;
      parameter Real k4prime = 0.018;
      outer Real cell_V "Variable used to access the volume of an outer compartment. Do not edit.";
    equation
      rr = cell_V * s1.c * (k4prime + k4 * (p1.c / m1.c) ^ 2);
      annotation(
        __MathCore(RDF = "<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
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
    end Reaction9_;

    inner Real cell_V = V "Variable used to make the compartment volume accessible for inner components. Do not edit.";
    CellDivison.cell.EmptySet_ EmptySet(c(start = 0)) annotation(
      Placement(transformation(origin = {10.0, 20.0}, extent = {{-10.0, 10.0}, {10.0, -10.0}})));
    CellDivison.cell.C2_ C2(c(start = 0)) "cdc2k" annotation(
      Placement(transformation(origin = {20.0, 60.0}, extent = {{-10.0, -10.0}, {10.0, 10.0}}, rotation = -270)));
    CellDivison.cell.CP_ CP(c(start = 0.75)) "cdc2k-P" annotation(
      Placement(transformation(origin = {80.0, 60.0}, extent = {{-10.0, 10.0}, {10.0, -10.0}}, rotation = -90)));
    CellDivison.cell.M_ M(c(start = 0)) "p-cyclin_cdc2" annotation(
      Placement(transformation(origin = {-80.0, -30.0}, extent = {{-10.0, -10.0}, {10.0, 10.0}}, rotation = -90)));
    CellDivison.cell.pM_ pM(c(start = 0.25)) "p-cyclin_cdc2-p" annotation(
      Placement(transformation(origin = {-10.0, -50.0}, extent = {{-10.0, -10.0}, {10.0, 10.0}}, rotation = -180)));
    CellDivison.cell.Y_ Y(c(start = 0)) "cyclin" annotation(
      Placement(transformation(origin = {20.0, -30.0}, extent = {{-10.0, -10.0}, {10.0, 10.0}}, rotation = -180)));
    CellDivison.cell.YP_ YP(c(start = 0)) "p-cyclin" annotation(
      Placement(transformation(origin = {-47.6389, -8.3553}, extent = {{-10.0, -10.0}, {10.0, 10.0}})));
    CellDivison.cell.YT_ YT(c(start = 0)) "total_cyclin" annotation(
      Placement(transformation(origin = {-70.0, 70.0}, extent = {{-10.0, -10.0}, {10.0, 10.0}})));
    CellDivison.cell.CT_ CT(c(start = 0)) "total_cdc2" annotation(
      Placement(transformation(origin = {-40.0, -60.0}, extent = {{-10.0, -10.0}, {10.0, 10.0}})));
    CellDivison.cell.Reaction1_ Reaction1 "cyclin_cdc2k dissociation" annotation(
      Placement(transformation(origin = {-70.0, 20.0}, extent = {{-10.0, -10.0}, {10.0, 10.0}})));
    CellDivison.cell.Reaction2_ Reaction2 "cdc2k phosphorylation" annotation(
      Placement(transformation(origin = {50.0, 90.0}, extent = {{-10.0, -10.0}, {10.0, 10.0}})));
    CellDivison.cell.Reaction3_ Reaction3 "cdc2k dephosphorylation" annotation(
      Placement(transformation(origin = {50.0, 40.0}, extent = {{-10.0, -10.0}, {10.0, 10.0}}, rotation = -180)));
    CellDivison.cell.Reaction4_ Reaction4 "cyclin cdc2k-p association" annotation(
      Placement(transformation(origin = {48.1433, -70.0}, extent = {{-10.0, -10.0}, {10.0, 10.0}}, rotation = -90)));
    CellDivison.cell.Reaction5_ Reaction5 "deactivation of cdc2 kinase" annotation(
      Placement(transformation(origin = {-45.4898, -80.0}, extent = {{-10.0, -10.0}, {10.0, 10.0}})));
    CellDivison.cell.Reaction6_ Reaction6 "cyclin biosynthesis" annotation(
      Placement(transformation(origin = {-7.8911, -10.0}, extent = {{-10.0, -10.0}, {10.0, 10.0}}, rotation = -90)));
    CellDivison.cell.Reaction7_ Reaction7 "default degradation of cyclin" annotation(
      Placement(transformation(origin = {50.0, -10.0}, extent = {{-10.0, -10.0}, {10.0, 10.0}}, rotation = -270)));
    CellDivison.cell.Reaction8_ Reaction8 "cdc2 kinase triggered degration of cyclin" annotation(
      Placement(transformation(origin = {-30.0, 20.0}, extent = {{-10.0, -10.0}, {10.0, 10.0}}, rotation = -270)));
    CellDivison.cell.Reaction9_ Reaction9 "activation of cdc2 kinase" annotation(
      Placement(transformation(origin = {-40.0, -40.0}, extent = {{-10.0, -10.0}, {10.0, 10.0}}, rotation = -180)));
  equation
    connect(CP.n1, Reaction2.p1) annotation(
      Line(origin = {73.75, 80.0}, points = {{6.25, -20.0}, {6.25, 10.0}, {-12.5, 10.0}}, smooth = Smooth.Bezier));
    connect(C2.n1, Reaction2.s1) annotation(
      Line(origin = {26.25, 80.0}, points = {{-6.25, -20.0}, {-6.25, 10.0}, {12.5, 10.0}}, smooth = Smooth.Bezier));
    connect(CP.n1, Reaction3.s1) annotation(
      Line(origin = {73.75, 46.6667}, points = {{6.25, 13.3333}, {6.25, -6.6667}, {-12.5, -6.6667}}, smooth = Smooth.Bezier));
    connect(CP.n1, Reaction4.s1) annotation(
      Line(origin = {66.5716, -26.9367}, points = {{13.4284, 86.9367}, {13.4284, -27.5617}, {-13.4284, -27.5617}, {-13.4284, -31.8133}}, smooth = Smooth.Bezier));
    connect(C2.n1, Reaction3.p1) annotation(
      Line(origin = {26.25, 46.6667}, points = {{-6.25, 13.3333}, {-6.25, -6.6667}, {12.5, -6.6667}}, smooth = Smooth.Bezier));
    connect(C2.n1, Reaction1.p1) annotation(
      Line(origin = {-36.9367, 42.5}, points = {{56.9367, 17.5}, {-17.5617, 17.5}, {-17.5617, -17.5}, {-21.8133, -17.5}}, smooth = Smooth.Bezier));
    connect(Y.n1, Reaction4.s2) annotation(
      Line(origin = {31.5716, -49.4367}, points = {{-11.5716, 19.4367}, {-11.5716, -5.0617}, {11.5716, -5.0617}, {11.5716, -9.3133}}, smooth = Smooth.Bezier));
    connect(pM.n1, Reaction4.p1) annotation(
      Line(origin = {18.4573, -70.4506}, points = {{-28.4573, 20.4506}, {-15.4573, 20.4506}, {-15.4573, -15.0509}, {29.686, -15.0509}, {29.686, -10.7994}}, smooth = Smooth.Bezier));
    connect(Y.n1, Reaction7.s1) annotation(
      Line(origin = {40.0, -27.0833}, points = {{-20.0, -2.9167}, {10.0, -2.9167}, {10.0, 5.8333}}, smooth = Smooth.Bezier));
    connect(Y.n1, Reaction6.p1) annotation(
      Line(origin = {1.4059, -27.0833}, points = {{18.5941, -2.9167}, {-9.297, -2.9167}, {-9.297, 5.8333}}, smooth = Smooth.Bezier));
    connect(M.n1, Reaction1.s1) annotation(
      Line(origin = {-82.4506, -4.8}, points = {{2.4506, -25.2}, {2.4506, -12.2}, {-3.0509, -12.2}, {-3.0509, 24.8}, {1.2006, 24.8}}, smooth = Smooth.Bezier));
    connect(M.n1, Reaction5.s1) annotation(
      Line(origin = {-72.2466, -63.3333}, points = {{-7.7534, 33.3333}, {-7.7534, -16.6667}, {15.5068, -16.6667}}, smooth = Smooth.Bezier));
    connect(M.n1, Reaction9.p1) annotation(
      Line(origin = {-60.5633, -35.0}, points = {{-19.4367, 5.0}, {5.0617, 5.0}, {5.0617, -5.0}, {9.3133, -5.0}}, smooth = Smooth.Bezier));
    connect(pM.n1, Reaction5.p1) annotation(
      Line(origin = {-18.0799, -70.0}, points = {{8.0799, 20.0}, {8.0799, -10.0}, {-16.1599, -10.0}}, smooth = Smooth.Bezier));
    connect(pM.n1, Reaction9.s1) annotation(
      Line(origin = {-21.9367, -45.0}, points = {{11.9367, -5.0}, {-2.5617, -5.0}, {-2.5617, 5.0}, {-6.8133, 5.0}}, smooth = Smooth.Bezier));
    connect(CT.n1, Reaction9.m1) annotation(
      Line(origin = {-40.0, -52.6667}, points = {{0.0, -7.3333}, {0.0, 3.6667}, {0.0, 3.6667}}, smooth = Smooth.Bezier));
    connect(EmptySet.n1, Reaction6.s1) annotation(
      Line(origin = {1.0545, 8.0633}, points = {{8.9456, 11.9367}, {8.9456, -2.5617}, {-8.9456, -2.5617}, {-8.9456, -6.8133}}, smooth = Smooth.Bezier));
    connect(EmptySet.n1, Reaction7.p1) annotation(
      Line(origin = {36.6667, 13.75}, points = {{-26.6667, 6.25}, {13.3333, 6.25}, {13.3333, -12.5}}, smooth = Smooth.Bezier));
    connect(EmptySet.n1, Reaction8.p1) annotation(
      Line(origin = {-11.2, 28.4506}, points = {{21.2, -8.4506}, {8.2, -8.4506}, {8.2, 7.0509}, {-18.8, 7.0509}, {-18.8, 2.7994}}, smooth = Smooth.Bezier));
    connect(YP.n1, Reaction8.s1) annotation(
      Line(origin = {-35.8796, -2.6535}, points = {{-11.7593, -5.7018}, {5.8796, -5.7018}, {5.8796, 11.4035}}, smooth = Smooth.Bezier));
    connect(YP.n1, Reaction1.p2) annotation(
      Line(origin = {-51.3426, 7.2149}, points = {{3.7037, -15.5702}, {3.7037, 7.7851}, {-7.4074, 7.7851}}, smooth = Smooth.Bezier));
    YT.c = Y.c + YP.c + M.c + pM.c;
    CT.c = C2.c + CP.c + M.c + pM.c;
    annotation(
      __MathCore(RDF = "<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
    <rdf:Description rdf:about=\"#_000002\">
      <bqbiol:is>
        <rdf:Bag>
          <rdf:li rdf:resource=\"urn:miriam:obo.go:GO%3A0005623\"/>
        </rdf:Bag>
      </bqbiol:is>
    </rdf:Description>
  </rdf:RDF>"),
      experiment(StartTime = 0.0, StopTime = 100, NumberOfIntervals = -1, Algorithm = "dassl", Tolerance = 1e-06),
      Documentation(info = "<html>
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
</html>", revisions = ""));
  end cell;
  annotation(
    __MathCore(RDF = "<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
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
  annotation(
    Documentation(info = "<html>
<h1>CellDivision</h1>
This example is a Modelica version of the model presented in <i>Modeling the cell division cycle: cdc2 and cyclin interactions</i> by John J. Tyson. (Proc. Nati. Acad. Sci. USA
Vol. 88, pp. 7328-7332, August 1991
Cell Biology). <br><br>

See
<a href=\"Modelica://BioChem.Examples.CellDivison.cell\">cell</a>
 for more documentation and simulation results.
</html>", revisions = ""));
end CellDivison;
