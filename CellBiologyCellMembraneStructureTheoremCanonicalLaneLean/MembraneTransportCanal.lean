import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMembraneStructureTheoremCanonicalLaneLean

structure MembraneTransportCanalPackage (L : LipidBilayerPackage)
    (P : MembraneProteinEmbeddingPackage L) where
  passiveDiffusion : Prop
  facilitatedDiffusion : Prop
  activeTransport : Prop
  endoExocytosis : Prop

structure MembraneTransportCanalEvidence {L : LipidBilayerPackage}
    {P : MembraneProteinEmbeddingPackage L}
    (T : MembraneTransportCanalPackage L P) where
  passiveDiffusionClosed : T.passiveDiffusion
  facilitatedDiffusionClosed : T.facilitatedDiffusion
  activeTransportClosed : T.activeTransport
  endoExocytosisClosed : T.endoExocytosis

def MembraneTransportCanalClosed {L : LipidBilayerPackage}
    {P : MembraneProteinEmbeddingPackage L}
    (T : MembraneTransportCanalPackage L P) : Prop :=
  T.passiveDiffusion ∧ T.facilitatedDiffusion ∧
  T.activeTransport ∧ T.endoExocytosis

theorem membrane_transport_canal_closed_from_evidence
    {L : LipidBilayerPackage} {P : MembraneProteinEmbeddingPackage L}
    (T : MembraneTransportCanalPackage L P)
    (E : MembraneTransportCanalEvidence T) : MembraneTransportCanalClosed T := by
  exact And.intro E.passiveDiffusionClosed
    (And.intro E.facilitatedDiffusionClosed
      (And.intro E.activeTransportClosed E.endoExocytosisClosed))

end CellBiologyCellMembraneStructureTheoremCanonicalLaneLean
end HautevilleHouse