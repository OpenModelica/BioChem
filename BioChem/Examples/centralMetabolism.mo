within BioChem.Examples;

package centralMetabolism
  extends BioChem.Icons.Example;

  model cytosol "cytosol"
    extends BioChem.Compartments.Compartment(V(start = 2));

    model DHAP_
      extends BioChem.Substances.Substance;
      annotation(
        __MathCore(RDF = "<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
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
      annotation(
        __MathCore(RDF = "<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
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
      annotation(
        __MathCore(RDF = "<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
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
      annotation(
        __MathCore(RDF = "<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
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
      annotation(
        __MathCore(RDF = "<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
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
      annotation(
        __MathCore(RDF = "<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
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
      annotation(
        __MathCore(RDF = "<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
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
      annotation(
        __MathCore(RDF = "<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
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
      annotation(
        __MathCore(RDF = "<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
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
      annotation(
        __MathCore(RDF = "<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
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
      annotation(
        __MathCore(RDF = "<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
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
      annotation(
        __MathCore(RDF = "<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
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
      annotation(
        __MathCore(RDF = "<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
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
      annotation(
        __MathCore(RDF = "<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
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
      annotation(
        __MathCore(RDF = "<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
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
      annotation(
        __MathCore(RDF = "<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
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
      annotation(
        __MathCore(RDF = "<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
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
      extends BioChem.Interfaces.Reactions.Uur(nS1 = cytosol_V / bamp, nP1 = cytosol_V);
      parameter Real KmAMP = 0.3;
      parameter Real KmIMP = 3.54545;
      parameter Real KcatDA = 121;
      outer Real cytosol_V "Variable used to access the volume of an outer compartment. Do not edit.";
      input Real bamp;
    equation
      rr = KcatDA * s1.c / (KmAMP + s1.c) - 0.01 * p1.c / (KmIMP + p1.c);
    end jda_;

    model vgpdh_
      extends BioChem.Interfaces.Reactions.Bbi(nS1 = 2 * cytosol_V / badp);
      extends BioChem.Interfaces.Reactions.Modifiers.Modifier;
      parameter Real KcatGPDH = 78595.6;
      parameter Real KmGPDH = 0.0369;
      parameter Real KmADP = 1.4;
      parameter Real KmPN = 120;
      outer Real cytosol_V "Variable used to access the volume of an outer compartment. Do not edit.";
      input Real badp;
    equation
      rr = KcatGPDH * s2.c * s1.c * m1.c / ((KmGPDH + s2.c) * (s1.c + KmADP) * (m1.c + KmPN));
    end vgpdh_;

    model vpfk_
      extends BioChem.Interfaces.Reactions.Ubi(nP2 = cytosol_V / badp);
      parameter Real n_sbml = 2;
      parameter Real KcatPFK = 400;
      parameter Real KmF6P = 3.49515;
      outer Real cytosol_V "Variable used to access the volume of an outer compartment. Do not edit.";
      input Real badp;
    equation
      rr = KcatPFK * s1.c ^ n_sbml / (KmF6P + s1.c ^ n_sbml);
    end vpfk_;

    model vald_
      extends BioChem.Interfaces.Reactions.Uui(nP1 = 2);
      parameter Real kt;
      parameter Real ka1 = 0.01;
      parameter Real ka2 = 1.65;
      parameter Real ka3 = 3000;
      parameter Real ka4 = 0.125;
      parameter Real ka5 = 340;
      parameter Real ka6 = 14000000.0;
      parameter Real ka7 = 56000;
    equation
      rr = (ka7 * s1.c - ka6 * p1.c * kt * p1.c) / (ka1 + ka2 * p1.c + s1.c + ka3 * p1.c * s1.c + ka4 * kt * p1.c + ka5 * p1.c * kt * p1.c);
    end vald_;

    model vldh_
      extends BioChem.Interfaces.Reactions.Bui;
      extends BioChem.Interfaces.Reactions.Modifiers.Modifier;
      parameter Real kia = 0.00245;
      parameter Real kmb = 0.137;
      parameter Real kip = 7.3;
      parameter Real kmq = 0.1;
      parameter Real kiq = 0.5;
      parameter Real k1ib = 0.1;
      parameter Real kmp = 1;
      parameter Real kma = 0.00844;
      parameter Real kib = 0.228;
      parameter Real kf = 458;
      parameter Real kr = 135;
      parameter Real e0 = 8;
    equation
      rr = e0 * (s2.c * s1.c * kf / (kia * kmb) - kr * p1.c * m1.c / (kiq * kmp)) / (s2.c / kia + s2.c * s1.c / (kia * kmb) + s2.c * s1.c * p1.c / (kia * kip * kmb) + s2.c * kmq * p1.c / (kia * kiq * kmp) + (1 + s1.c / k1ib) * (1 + s1.c * kma / (kia * kmb) + kmq * p1.c / (kiq * kmp)) + m1.c / kiq + s1.c * kma * m1.c / (kia * kiq * kmb) + p1.c * m1.c / (kiq * kmp) + s1.c * p1.c * m1.c / (kib * kiq * kmp));
    end vldh_;

    model vpdh_
      extends BioChem.Interfaces.Reactions.Bui(nS2 = cytosol_V / badp, nP1 = 3.67);
      extends BioChem.Interfaces.Reactions.Modifiers.Modifier;
      parameter Real KmPYR = 0.5;
      parameter Real KcatPDH = 1;
      outer Real cytosol_V "Variable used to access the volume of an outer compartment. Do not edit.";
      input Real badp;
    equation
      rr = KcatPDH * s1.c * m1.c / ((s1.c + KmPYR) * (m1.c + 0.1));
    end vpdh_;

    model jak_
      extends BioChem.Interfaces.Reactions.Uur(nS1 = cytosol_V / bamp, nP1 = 2 * cytosol_V / badp);
      extends BioChem.Interfaces.Reactions.Modifiers.Modifier;
      parameter Real KcatAK = 150000;
      outer Real cytosol_V "Variable used to access the volume of an outer compartment. Do not edit.";
      input Real bamp;
      input Real badp;
    equation
      rr = KcatAK * (m1.c * s1.c - p1.c * p1.c) / (1 + s1.c / 0.1 + p1.c / 0.1 + m1.c * (10 + s1.c / 0.01) + p1.c * (10 + p1.c / 0.01 + s1.c / 3.49));
    end jak_;

    model vgph_
      extends BioChem.Interfaces.Reactions.Uui;
      extends BioChem.Interfaces.Reactions.Modifiers.MultipleModifiers(dimM = 3);
      parameter Real kh;
      parameter Real KcatGPH = 248;
      input Real bamp;
    equation
      rr = KcatGPH * m[3].c * (0.002 + m[2].c + m[1].c / bamp) / ((0.014 + m[2].c + m[1].c / bamp) * (8 * (0.01 + m[2].c + m[1].c / bamp) / (0.002 + m[2].c + m[1].c / bamp) + m[3].c));
    end vgph_;

    model jatpase_
      extends BioChem.Interfaces.Reactions.Uui(nP1 = cytosol_V / badp);
      parameter Real KcatATPase = 370 "I am unsure about this value";
      outer Real cytosol_V "Variable used to access the volume of an outer compartment. Do not edit.";
      input Real badp;
    equation
      rr = KcatATPase * s1.c / (s1.c + 0.05);
    end jatpase_;

    model jck_
      extends BioChem.Interfaces.Reactions.Bbi(nP1 = cytosol_V / badp);
      parameter Real KcatCK = 1970;
      outer Real cytosol_V "Variable used to access the volume of an outer compartment. Do not edit.";
      input Real badp;
    equation
      rr = KcatCK * (20 * s1.c * s2.c / 10.85 - 29.333 * p1.c * p2.c / 0.1) / (1 + s2.c / 34.9 + p2.c / 0.8 + s1.c * (1.43 + s2.c / 10.85) + p1.c * (16.7 + p2.c / 0.1 + s2.c / 2.1));
    end jck_;

    inner Real cytosol_V = V "Variable used to make the compartment volume accessible for inner components. Do not edit.";
    centralMetabolism.cytosol.NADH_ NADH(c(start = 0.00406177)) "NADH" annotation(
      Placement(transformation(origin = {100.0, -20.0}, extent = {{-10.0, -10.0}, {10.0, 10.0}})));
    centralMetabolism.cytosol.FDP_ FDP(c(start = 0.0999758)) "Fructose 1,6-diphosphate" annotation(
      Placement(transformation(origin = {-19.7747, -40.109}, extent = {{-10.0, -10.0}, {10.0, 10.0}})));
    centralMetabolism.cytosol.PYR_ PYR(c(start = 0.148871)) "Pyruvate" annotation(
      Placement(transformation(origin = {100.0, -40.0}, extent = {{-10.0, -10.0}, {10.0, 10.0}}, rotation = -180)));
    centralMetabolism.cytosol.ADP_ ADP(c(start = 0.0695775)) "ADP" annotation(
      Placement(transformation(origin = {-19.7747, -20.109}, extent = {{-10.0, -10.0}, {10.0, 10.0}})));
    centralMetabolism.cytosol.IMP_ IMP(c(start = 0.650608)) "IMP" annotation(
      Placement(transformation(origin = {-120.0, -10.0}, extent = {{-10.0, -10.0}, {10.0, 10.0}}, rotation = -270)));
    centralMetabolism.cytosol.ATP_ ATP(c(start = 12.7913) = atp) "ATP" annotation(
      Placement(transformation(origin = {-10.0, 30.0}, extent = {{-10.0, -10.0}, {10.0, 10.0}}, rotation = -720)));
    centralMetabolism.cytosol.AMP_ AMP(c(start = 0.000398124)) "AMP" annotation(
      Placement(transformation(origin = {-120.0, 30.0}, extent = {{-10.0, -10.0}, {10.0, 10.0}}, rotation = -90)));
    centralMetabolism.cytosol.LAC_ LAC(c(start = 4.34299)) "Lactate" annotation(
      Placement(transformation(origin = {140.0, -30.0}, extent = {{-10.0, -10.0}, {10.0, 10.0}})));
    centralMetabolism.cytosol.NAD_ NAD(c(start = 0.695938) = nad) "NAD" annotation(
      Placement(transformation(origin = {120.0, -60.0}, extent = {{-10.0, -10.0}, {10.0, 10.0}}, rotation = -450)));
    centralMetabolism.cytosol.CP_ CP(c(start = 28.2621)) "Phosphocreatine" annotation(
      Placement(transformation(origin = {-80.0, 10.0}, extent = {{-10.0, -10.0}, {10.0, 10.0}}, rotation = -90)));
    centralMetabolism.cytosol.Cr_ Cr(c(start = 25.7379) = cr) "Creatine" annotation(
      Placement(transformation(origin = {-80.0, 50.0}, extent = {{-10.0, -10.0}, {10.0, 10.0}}, rotation = -180)));
    centralMetabolism.cytosol.GLY_ GLY(c(start = 1)) "Glycogen" annotation(
      Placement(transformation(origin = {-140.0, -30.0}, extent = {{-10.0, -10.0}, {10.0, 10.0}})));
    centralMetabolism.cytosol.PN_ PN(c = pn) "Inorganic phosphate" annotation(
      Placement(transformation(origin = {80.0, -10.0}, extent = {{-10.0, -10.0}, {10.0, 10.0}}, rotation = -180)));
    centralMetabolism.cytosol.G6P_ G6P(c(start = 0.603855 / (1 + kh))) "Glucose 6-phosphate" annotation(
      Placement(transformation(origin = {-100.0, -30.0}, extent = {{-10.0, -10.0}, {10.0, 10.0}})));
    centralMetabolism.cytosol.F6P_ F6P(c(start = 0.603855 * kh / (1 + kh))) "Fructose 6-phosphate" annotation(
      Placement(transformation(origin = {-60.0, -30.0}, extent = {{-10.0, -10.0}, {10.0, 10.0}}, rotation = -360)));
    centralMetabolism.cytosol.jda_ jda(bamp = bamp) "jda" annotation(
      Placement(transformation(origin = {-120.0, 10.0}, extent = {{-10.0, -10.0}, {10.0, 10.0}}, rotation = -90)));
    centralMetabolism.cytosol.vpfk_ vpfk(badp = badp) "vpfk" annotation(
      Placement(transformation(origin = {-40.0, -30.0}, extent = {{-10.0, 10.0}, {10.0, -10.0}})));
    centralMetabolism.cytosol.vldh_ vldh "vldh" annotation(
      Placement(transformation(origin = {120.0, -30.0}, extent = {{-10.0, 10.0}, {10.0, -10.0}})));
    centralMetabolism.cytosol.vpdh_ vpdh(badp = badp) "vpdh" annotation(
      Placement(transformation(origin = {120.0, -90.0}, extent = {{-10.0, -10.0}, {10.0, 10.0}})));
    centralMetabolism.cytosol.jak_ jak(bamp = bamp, badp = badp) "jak" annotation(
      Placement(transformation(origin = {10.0, 30.0}, extent = {{10.0, -10.0}, {-10.0, 10.0}}, rotation = 90)));
    centralMetabolism.cytosol.vgph_ vgph(bamp = bamp, kh = kh) "vgph" annotation(
      Placement(transformation(origin = {-120.0, -30.0}, extent = {{-10.0, -10.0}, {10.0, 10.0}})));
    centralMetabolism.cytosol.jatpase_ jatpase(badp = badp) "jatpase" annotation(
      Placement(transformation(origin = {-40.0, 10.0}, extent = {{-10.0, -10.0}, {10.0, 10.0}}, rotation = -90)));
    centralMetabolism.cytosol.jck_ jck(badp = badp) "jck" annotation(
      Placement(transformation(origin = {-70.0, 30.0}, extent = {{-10.0, -10.0}, {10.0, 10.0}}, rotation = -90)));
    BioChem.Interfaces.Nodes.SubstanceConnector node_LAC annotation(
      Placement(transformation(origin = {140.0, -10.0}, extent = {{-10.0, -10.0}, {10.0, 10.0}}), iconTransformation(origin = {125.0384, 0.0}, extent = {{-10.0, -10.0}, {10.0, 10.0}})));
    centralMetabolism.mitochondria mitochondria(badp = badp) annotation(
      Placement(transformation(origin = {100.0, 40.0}, extent = {{-10.0, -10.0}, {10.0, 10.0}})));
    input Real bamp;
    input Real badp;
    input Real pn;
    input Real atp;
    input Real cr;
    input Real nad;
    parameter Real kh;
    parameter Real kt;
    BioChem.Reactions.FastEquilibrium.Uuf vH6P(kP1 = kh) "Fast equilibrium reaction for the compound of G6P and F6P" annotation(
      Placement(transformation(origin = {-80.0, -30.0}, extent = {{-10.0, -10.0}, {10.0, 10.0}})));
    centralMetabolism.cytosol.vald_ vald(kt = kt) "vald" annotation(
      Placement(transformation(origin = {0.2253, -40.109}, extent = {{-10.0, 10.0}, {10.0, -10.0}})));
    centralMetabolism.cytosol.DHAP_ DHAP(c.start = 0.07427 / (1 + kt)) annotation(
      Placement(transformation(origin = {20.0, -40.0}, extent = {{-10.0, -10.0}, {10.0, 10.0}})));
    centralMetabolism.cytosol.G3P_ G3P(c.start = 0.07427 * kt / (1 + kt)) annotation(
      Placement(transformation(origin = {60.0, -40.0}, extent = {{-10.0, -10.0}, {10.0, 10.0}})));
    centralMetabolism.cytosol.vgpdh_ vgpdh_1(badp = badp) annotation(
      Placement(transformation(origin = {80.0, -30.0}, extent = {{-10.0, -10.0}, {10.0, 10.0}})));
    BioChem.Reactions.FastEquilibrium.Uuf vT3P(kS1 = 1, kP1 = kt) "Fast equilibrium reaction for the compound of G6P and F6P" annotation(
      Placement(transformation(origin = {40.0, -40.0}, extent = {{-10.0, -10.0}, {10.0, 10.0}})));
  equation
    connect(PN.n1, vgph.m[3]) annotation(
      Line(origin = {-43.1831, -17.0363}, points = {{123.1831, 7.0363}, {23.1831, 13.8613}, {-53.1252, -3.9637}, {-76.8169, -3.9637}}, smooth = Smooth.Bezier));
    connect(vgpdh_1.m1, PN.n1) annotation(
      Line(origin = {80.0, -15.5}, points = {{0.0, -5.5}, {0.0, 5.5}}, smooth = Smooth.Bezier));
    connect(PYR.n1, vgpdh_1.p2) annotation(
      Line(origin = {94.1667, -38.3333}, points = {{5.8333, -1.6667}, {-2.9167, -1.6667}, {-2.9167, 3.3333}}, smooth = Smooth.Bezier));
    connect(PYR.n1, vpdh.s1) annotation(
      Line(origin = {99.5833, -70.0}, points = {{0.4167, 30.0}, {-9.5833, -15.0}, {9.1667, -15.0}}, smooth = Smooth.Bezier));
    connect(vldh.s1, PYR.n1) annotation(
      Line(origin = {105.8333, -38.3333}, points = {{2.9167, 3.3333}, {2.9167, -1.6667}, {-5.8333, -1.6667}}, smooth = Smooth.Bezier));
    connect(vT3P.s1, DHAP.n1) annotation(
      Line(origin = {24.375, -40.0}, points = {{4.375, 0.0}, {-4.375, 0.0}}));
    connect(vT3P.p1, G3P.n1) annotation(
      Line(origin = {55.625, -40.0}, points = {{-4.375, 0.0}, {4.375, 0.0}}));
    connect(vald.p1, DHAP.n1) annotation(
      Line(origin = {14.3169, -40.0363}, points = {{-2.8416, -0.0727}, {-2.8416, 0.0363}, {5.6831, 0.0363}}));
    connect(ADP.n1, mitochondria.node_ADP) annotation(
      Line(origin = {29.9388, 18.5441}, points = {{-49.7135, -38.6531}, {-14.7833, -28.5441}, {4.222, 16.7428}, {57.4791, 16.7428}}, smooth = Smooth.Bezier));
    connect(ADP.n1, vpdh.s2) annotation(
      Line(origin = {31.3122, -73.3958}, points = {{-51.0869, 53.2868}, {-21.3122, -1.1347}, {9.2453, -24.5854}, {77.4378, -21.6042}}, smooth = Smooth.Bezier));
    connect(G3P.n1, vgpdh_1.s2) annotation(
      Line(origin = {62.9167, -36.6667}, points = {{-2.9167, -3.3333}, {-2.9167, 1.6667}, {5.8333, 1.6667}}, smooth = Smooth.Bezier));
    connect(vgph.p1, G6P.n1) annotation(
      Line(origin = {-105.8333, -30.0}, points = {{-2.9167, 0.0}, {-2.9167, 0.0}, {5.8333, 0.0}}, smooth = Smooth.Bezier));
    connect(jatpase.s1, ATP.n1) annotation(
      Line(origin = {-30.0, 27.0833}, points = {{-10.0, -5.8333}, {-10.0, 2.9167}, {20.0, 2.9167}}, smooth = Smooth.Bezier));
    connect(jck.p1, ADP.n1) annotation(
      Line(origin = {-63.2582, -1.5662}, points = {{-1.7418, 20.3162}, {-1.7418, 1.5662}, {43.4835, -18.5428}}, smooth = Smooth.Bezier));
    connect(FDP.n1, vald.s1) annotation(
      Line(origin = {-16.8581, -40.109}, points = {{-2.9166, 0.0}, {-2.9167, 0.0}, {5.8334, 0.0}}, smooth = Smooth.Bezier));
    connect(vgpdh_1.p1, NADH.n1) annotation(
      Line(origin = {94.1667, -21.6667}, points = {{-2.9167, -3.3333}, {-2.9167, 1.6667}, {5.8333, 1.6667}}, smooth = Smooth.Bezier));
    connect(vpdh.p1, mitochondria.node_NADHm) annotation(
      Line(origin = {128.4604, -19.1758}, points = {{2.7896, -70.8242}, {21.5396, -70.8242}, {19.4827, 64.1758}, {-15.8864, 64.1758}}, smooth = Smooth.Bezier));
    connect(ADP.n1, jak.p1) annotation(
      Line(origin = {-4.8874, -4.2701}, points = {{-14.8873, -15.8389}, {0.2923, -3.5556}, {14.8874, 7.589}, {14.8874, 23.0201}}, smooth = Smooth.Bezier));
    connect(NAD.n1, vldh.m1) annotation(
      Line(origin = {120.0, -49.5}, points = {{0.0, -10.5}, {0.0, 10.5}}, smooth = Smooth.Bezier));
    connect(Cr.n1, jck.s2) annotation(
      Line(origin = {-78.3333, 44.1667}, points = {{-1.6667, 5.8333}, {-1.6667, -2.9167}, {3.3333, -2.9167}}, smooth = Smooth.Bezier));
    connect(IMP.n1, vgph.m[1]) annotation(
      Line(origin = {-120.0, -17.3333}, points = {{0.0, 7.3333}, {0.0, -3.6667}, {0.0, -3.6667}}, smooth = Smooth.Bezier));
    connect(ATP.n1, jak.m1) annotation(
      Line(origin = {-6.3333, 30.0}, points = {{-3.6667, 0.0}, {-3.6667, 0.0}, {7.3333, 0.0}}, smooth = Smooth.Bezier));
    connect(jck.p2, CP.n1) annotation(
      Line(origin = {-76.6667, 12.9167}, points = {{1.6667, 5.8333}, {1.6667, -2.9167}, {-3.3333, -2.9167}}, smooth = Smooth.Bezier));
    connect(AMP.n1, jak.s1) annotation(
      Line(origin = {-30.0, 71.6841}, points = {{-90.0, -41.6841}, {-90.0, -1.6841}, {40.0, -1.6841}, {40.0, -30.4341}}, smooth = Smooth.Bezier));
    connect(jatpase.p1, ADP.n1) annotation(
      Line(origin = {-33.2582, -13.8227}, points = {{-6.7418, 12.5727}, {-6.7418, 5.6243}, {13.4835, -6.2863}}, smooth = Smooth.Bezier));
    connect(FDP.n1, vpfk.p1) annotation(
      Line(origin = {-22.6914, -36.7756}, points = {{2.9167, -3.3334}, {-5.8333, -3.3334}, {-6.0586, 1.7756}}, smooth = Smooth.Bezier));
    connect(NAD.n1, vpdh.m1) annotation(
      Line(origin = {120.0, -70.5}, points = {{0.0, 10.5}, {0.0, -10.5}}, smooth = Smooth.Bezier));
    connect(NADH.n1, mitochondria.node_NADH) annotation(
      Line(origin = {108.7675, 7.2}, points = {{-8.7675, -27.2}, {-8.7675, -14.2}, {6.845, -14.2}, {6.845, 27.8}, {3.845, 27.8}}, smooth = Smooth.Bezier));
    connect(ATP.n1, mitochondria.node_ATP) annotation(
      Line(origin = {32.2535, 41.25}, points = {{-42.2535, -11.25}, {-28.6502, 3.75}, {25.7571, 3.75}, {55.1466, 3.75}}, smooth = Smooth.Bezier));
    connect(F6P.n1, vpfk.s1) annotation(
      Line(origin = {-57.0833, -30.0}, points = {{-2.9167, 0.0}, {-2.9167, 0.0}, {5.8333, 0.0}}, smooth = Smooth.Bezier));
    connect(vH6P.s1, G6P.n1) annotation(
      Line(origin = {-115.625, -80.0}, points = {{24.375, 50.0}, {15.625, 50.0}}, smooth = Smooth.Bezier));
    connect(AMP.n1, vgph.m[2]) annotation(
      Line(origin = {-170.5636, 9.014}, points = {{50.5636, 20.986}, {20.5636, 0.986}, {50.5636, -30.014}}, smooth = Smooth.Bezier));
    connect(IMP.n1, jda.p1) annotation(
      Line(origin = {-120.0, -4.1667}, points = {{0.0, -5.8333}, {0.0, 2.9167}, {0.0, 2.9167}}, smooth = Smooth.Bezier));
    connect(ADP.n1, vpfk.p2) annotation(
      Line(origin = {-22.6914, -23.4423}, points = {{2.9167, 3.3333}, {-5.8333, 3.3333}, {-6.0586, -1.5577}}, smooth = Smooth.Bezier));
    connect(vgpdh_1.s1, ADP.n1) annotation(
      Line(origin = {8.8565, -22.5545}, points = {{59.8935, -2.4455}, {-15.6312, -2.4455}, {-15.6312, 2.4455}, {-28.6312, 2.4455}}, smooth = Smooth.Bezier));
    connect(vH6P.p1, F6P.n1) annotation(
      Line(origin = {-65.8333, -30.0}, points = {{-2.9167, 0.0}, {-2.9167, 0.0}, {5.8333, 0.0}}, smooth = Smooth.Bezier));
    connect(LAC.n1, node_LAC) annotation(
      Line(origin = {140.0, -16.6667}, points = {{0.0, -13.3333}, {0.0, 6.6667}, {0.0, 6.6667}}, smooth = Smooth.Bezier));
    connect(ATP.n1, jck.s1) annotation(
      Line(origin = {-43.0, 45.9685}, points = {{33.0, -15.9685}, {33.0, 6.2028}, {-22.0, 6.2028}, {-22.0, -1.7185}, {-22.0, -4.7185}}, smooth = Smooth.Bezier));
    connect(AMP.n1, jda.s1) annotation(
      Line(origin = {-120.0, 24.1667}, points = {{0.0, 5.8333}, {0.0, -2.9167}, {0.0, -2.9167}}, smooth = Smooth.Bezier));
    connect(vldh.s2, NADH.n1) annotation(
      Line(origin = {105.8333, -21.6667}, points = {{2.9167, -3.3333}, {2.9167, 1.6667}, {-5.8333, 1.6667}}, smooth = Smooth.Bezier));
    connect(LAC.n1, vldh.p1) annotation(
      Line(origin = {137.0833, -30.0}, points = {{2.9167, 0.0}, {2.9167, 0.0}, {-5.8333, 0.0}}, smooth = Smooth.Bezier));
    connect(GLY.n1, vgph.s1) annotation(
      Line(origin = {-137.0833, -30.0}, points = {{-2.9167, 0.0}, {-2.9167, 0.0}, {5.8333, 0.0}}, smooth = Smooth.Bezier));
    annotation(
      Icon(coordinateSystem(extent = {{-100.0, -100.0}, {100.0, 100.0}}, preserveAspectRatio = true, grid = {10, 10})),
      Diagram(coordinateSystem(extent = {{-148.5, -105.0}, {148.5, 105.0}}, preserveAspectRatio = true, grid = {10, 10})),
      Documentation(info = "<h1>Cytosol</h1>
<a name=\"fig1\"></a>
<img src=\"modelica://BioChem/Resources/Images/figure1.jpg\" width=\"640px\" height=\"446px\" alt=\"Fig1: Biochemical scheme\">
<p><em><strong>Fig. 1.</strong> Scheme of glycolysis and coupled processes simulated in the model: consumption and synthesis of ATP and transformation of reducing equivalents of NADH. The relevant equations, which account for stoicheiometry of the ATP production, are given in Supplementary materials. One molecule of ATP is consumed per molecule of fructose 6-phosphate in the phosphofructokinase reaction; two molecules of ATP per molecule of triose phospate (four molecules per hexose molecule) are then produced on the way to pyruvate; 2.5 molecules of ATP are produced when one molecule of NADH is oxidized. Cytosolic NADH is produced in the reaction of glyceraldehyde-3-phosphate dehydrogenase and consumed when pyruvate is transformed to lactate. In mitochondria one molecule of NADH is produced in the pyruvate dehydrogenase reaction and then three NADH molecules and one FADH2 molecule in the tricarboxylate cycle. Abbreviations: AK, adenylate kinase (EC 2.7.4.3); CK, creatine kinase (EC 2.7.3.2); CP, phosphocreatine; Cr, creatine; F6P, fructose 6-phosphate; FBP, fructose 1,6-bisphosphate; G6P, glucose 6-phosphate; GAPDH, glyceraldehyde-3-phosphate dehydrogenase (EC 1.2.1.12);
GPh, glycogen phosphorylase (EC 2.4.1.1); Lac, lactate; LDH, lactate dehydrogenase (EC 1.1.1.27); PFK, phosphofructokinase (EC 2.7.1.11); GPI, glucose phosphate isomerase (EC 5.3.1.9.); Pyr, pyruvate. Subscripts: m, mitochondrial; c, cytosolic.</em></p>", revisions = ""));
  end cytosol;

  model extra_cellular
    extends BioChem.Compartments.MainCompartment(V(start = 2));

    model LACext_
      extends BioChem.Substances.Substance;
      annotation(
        __MathCore(RDF = "<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
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
      parameter Real VmaxEF = 15;
      parameter Real KmLAC = 26.8483;
    equation
      rr = VmaxEF * s1.c / (KmLAC + s1.c);
    end vef_;

    centralMetabolism.cytosol cytosol(bamp = bamp, badp = badp, kh = kh, pn = pn, atp = atp, kt = kt, nad = nad, cr = cr) annotation(
      Placement(transformation(origin = {1.221, -0.0}, extent = {{-10.0, -10.0}, {10.0, 10.0}})));
    centralMetabolism.extra_cellular.vef_ vef "vef" annotation(
      Placement(transformation(origin = {40.0, 0.0}, extent = {{-10.0, -10.0}, {10.0, 10.0}}, rotation = -360)));
    centralMetabolism.extra_cellular.LACext_ LACext(c.start = 0) "Lactate" annotation(
      Placement(transformation(origin = {70.0, 0.0}, extent = {{-10.0, -10.0}, {10.0, 10.0}})));
    inner Real default_V = V "Variable used to make the compartment volume accessible for inner components. Do not edit.";
    inner Real cytosol_V = cytosol.V "Variable used to make the compartment volume of inner compartments accessible. Do not edit.";
    parameter Real iv1 = 0.603855;
    parameter Real iv2 = 0.0999758;
    parameter Real iv3 = 0.07427;
    parameter Real iv4 = 0.148871;
    parameter Real iv5 = 4.34299;
    parameter Real iv6 = 0.00406177;
    parameter Real iv7 = 1.72073e-05;
    parameter Real iv8 = 0.0695775;
    parameter Real iv9 = 28.2621;
    parameter Real iv10 = 0.000398124;
    parameter Real iv11 = 0.650608;
    parameter Real nv19 = 1;
    parameter Real nv20 = 1.14947;
    parameter Real kamp = 0.00841471;
    parameter Real k2amp = 200;
    parameter Real kadp = 0.05;
    parameter Real k2adp = 84.7376;
    parameter Real tan = 27.5 "";
    parameter Real tcr = 54;
    parameter Real kt = 0.085;
    parameter Real kh = 0.2;
    parameter Real PNt = 139.117;
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
    connect(vef.p1, LACext.n1) annotation(
      Line(origin = {60.625, 0.0}, points = {{-9.375, 0.0}, {9.375, -0.0}}));
    connect(cytosol.node_LAC, vef.s1) annotation(
      Line(origin = {21.2374, -0.0}, points = {{-7.5126, 0.0}, {7.5126, -0.0}}));
    badp = k2adp * kadp / (kadp + cytosol.ADP.c);
    adpt = cytosol.ADP.c * badp;
    atpt = tan - adpt - ampt - cytosol.IMP.c;
    ampt = cytosol.AMP.c * bamp;
    atp = atpt / cytosol.V;
    pn = (PNt - atpt * 3 - adpt * 2 - ampt - cytosol.CP.c * 2 - cytosol.IMP.c - (cytosol.G6P.c + cytosol.F6P.c + cytosol.FDP.c * 2 + cytosol.G3P.c + cytosol.DHAP.c) * cytosol.V) / cytosol.V;
    bamp = k2amp * kamp / (kamp + cytosol.AMP.c);
    nad = 0.7 - cytosol.NADH.c;
    cr = tcr - cytosol.CP.c;
    annotation(
      Diagram(coordinateSystem(extent = {{-100.0, -100.0}, {100.0, 100.0}}, preserveAspectRatio = true, grid = {10, 10})),
      Icon(coordinateSystem(extent = {{-100.0, -100.0}, {100.0, 100.0}}, preserveAspectRatio = true, grid = {10, 10})),
      Documentation(info = "<h1>Energy metabolism of human muscle</h1>
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
      ", revisions = ""),
      __MathCore(RDF = ""),
      experiment(StartTime = 0.0, StopTime = 0.5, Algorithm = "dassl", Tolerance = 1e-05));
  end extra_cellular;

  model mitochondria
    extends BioChem.Compartments.Compartment(V.start = 2);

    model NADH_
      extends BioChem.Substances.Substance;
      annotation(
        __MathCore(RDF = "<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
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
      annotation(
        __MathCore(RDF = "<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
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
      extends BioChem.Interfaces.Reactions.Bbi(nS1 = 2.5 * cytosol_V / badp);
      outer Real cytosol_V "Variable used to access the volume of an outer compartment. Do not edit.";
      Real badp;
    equation
      rr = 10000 * s1.c * s2.c / ((0.01 + s1.c) * (0.15 + s2.c));
    end jox_;

    model vn_
      extends BioChem.Interfaces.Reactions.Uui;
      parameter Real VmaxN = 10.8347;
      parameter Real KmNADH = 0.216694;
    equation
      rr = VmaxN * s1.c / (KmNADH + s1.c);
    end vn_;

    centralMetabolism.mitochondria.NADH_ NADHm(c.start = 0) "NADH" annotation(
      Placement(transformation(origin = {-20.0, -10.0}, extent = {{-10.0, -10.0}, {10.0, 10.0}})));
    centralMetabolism.mitochondria.NAD_ NADm(c.start = 0) "NAD" annotation(
      Placement(transformation(origin = {20.0, 10.0}, extent = {{-10.0, -10.0}, {10.0, 10.0}})));
    centralMetabolism.mitochondria.jox_ jox(badp = badp) "jox" annotation(
      Placement(transformation(origin = {-0.0, 0.0}, extent = {{-10.0, -10.0}, {10.0, 10.0}})));
    BioChem.Interfaces.Nodes.SubstrateConnector node_ADP annotation(
      Placement(transformation(origin = {-20.0, 10.0}, extent = {{-10.0, -10.0}, {10.0, 10.0}}), iconTransformation(origin = {-125.8208, -47.131}, extent = {{-10.0, -10.0}, {10.0, 10.0}})));
    BioChem.Interfaces.Nodes.SubstanceConnector node_NADHm annotation(
      Placement(transformation(origin = {-30.0, -30.0}, extent = {{-10.0, -10.0}, {10.0, 10.0}}), iconTransformation(origin = {125.7398, 50.0}, extent = {{-10.0, -10.0}, {10.0, 10.0}})));
    centralMetabolism.mitochondria.vn_ vn "vn" annotation(
      Placement(transformation(origin = {-50.0, -10.0}, extent = {{-10.0, -10.0}, {10.0, 10.0}})));
    BioChem.Interfaces.Nodes.SubstrateConnector node_NADH annotation(
      Placement(transformation(origin = {-80.0, -10.0}, extent = {{-10.0, -10.0}, {10.0, 10.0}}), iconTransformation(origin = {126.1247, -50.0}, extent = {{-10.0, -10.0}, {10.0, 10.0}})));
    BioChem.Interfaces.Nodes.ProductConnector node_ATP annotation(
      Placement(transformation(origin = {20.0, -10.0}, extent = {{-10.0, -10.0}, {10.0, 10.0}}), iconTransformation(origin = {-125.999, 50.0}, extent = {{-10.0, -10.0}, {10.0, 10.0}})));
    Real badp;
  equation
    connect(jox.p1, NADm.n1) annotation(
      Line(origin = {14.1667, 8.3333}, points = {{-2.9167, -3.3333}, {-2.9167, 1.6667}, {5.8333, 1.6667}}, smooth = Smooth.Bezier));
    connect(NADHm.n1, node_NADHm) annotation(
      Line(origin = {-29.831, -9.3231}, points = {{9.831, -0.6769}, {-0.169, -0.6769}, {-0.169, -20.6769}}, smooth = Smooth.Bezier));
    connect(vn.p1, NADHm.n1) annotation(
      Line(origin = {-29.375, -10.0}, points = {{-9.375, 0.0}, {9.375, 0.0}}));
    connect(NADHm.n1, jox.s2) annotation(
      Line(origin = {-14.1667, -8.3333}, points = {{-5.8333, -1.6667}, {2.9167, -1.6667}, {2.9167, 3.3333}}, smooth = Smooth.Bezier));
    connect(jox.p2, node_ATP) annotation(
      Line(origin = {17.0833, -6.6667}, points = {{-5.8333, 1.6667}, {2.9167, 1.6667}, {2.9167, -3.3333}}));
    connect(jox.s1, node_ADP) annotation(
      Line(origin = {-14.1667, 8.3333}, points = {{2.9167, -3.3333}, {2.9167, 1.6667}, {-5.8333, 1.6667}}, smooth = Smooth.Bezier));
    connect(vn.s1, node_NADH) annotation(
      Line(origin = {-70.625, -10.0}, points = {{9.375, 0.0}, {-9.375, 0.0}}));
    annotation(
      Diagram(coordinateSystem(extent = {{-100.0, -100.0}, {100.0, 100.0}}, preserveAspectRatio = true, grid = {10, 10})));
  end mitochondria;
end centralMetabolism;
