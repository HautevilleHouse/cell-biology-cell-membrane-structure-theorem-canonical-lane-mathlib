import canonicalLaneMathlib.AdmissibleClass
import CellBiologyCellMembraneStructureTheoremCanonicalLaneLean.LipidBilayerStructure
import CellBiologyCellMembraneStructureTheoremCanonicalLaneLean.MembraneProteinEmbedding
import CellBiologyCellMembraneStructureTheoremCanonicalLaneLean.MembraneFluidity
import CellBiologyCellMembraneStructureTheoremCanonicalLaneLean.LipidRaftAssembly
import CellBiologyCellMembraneStructureTheoremCanonicalLaneLean.MembraneTransportCanal

namespace HautevilleHouse
namespace CellBiologyCellMembraneStructureTheoremCanonicalLaneLean

structure CellMembraneFoundation where
  bilayer : LipidBilayerPackage
  bilayerEvidence : LipidBilayerEvidence bilayer
  proteinEmbedding : MembraneProteinEmbeddingPackage bilayer
  proteinEmbeddingEvidence : MembraneProteinEmbeddingEvidence proteinEmbedding
  fluidity : MembraneFluidityPackage bilayer
  fluidityEvidence : MembraneFluidityEvidence fluidity
  lipidRafts : LipidRaftAssemblyPackage bilayer fluidity
  lipidRaftsEvidence : LipidRaftAssemblyEvidence lipidRafts
  transport : MembraneTransportCanalPackage bilayer proteinEmbedding
  transportEvidence : MembraneTransportCanalEvidence transport

def CellMembraneFoundationClosed (F : CellMembraneFoundation) : Prop :=
  LipidBilayerClosed F.bilayer ∧
  MembraneProteinEmbeddingClosed F.proteinEmbedding ∧
  MembraneFluidityClosed F.fluidity ∧
  LipidRaftAssemblyClosed F.lipidRafts ∧
  MembraneTransportCanalClosed F.transport

theorem cell_membrane_foundation_closed_from_evidence
    (F : CellMembraneFoundation) : CellMembraneFoundationClosed F := by
  exact And.intro (lipid_bilayer_closed_from_evidence F.bilayer F.bilayerEvidence)
    (And.intro (membrane_protein_embedding_closed_from_evidence F.proteinEmbedding F.proteinEmbeddingEvidence)
      (And.intro (membrane_fluidity_closed_from_evidence F.fluidity F.fluidityEvidence)
        (And.intro (lipid_raft_assembly_closed_from_evidence F.lipidRafts F.lipidRaftsEvidence)
          (membrane_transport_canal_closed_from_evidence F.transport F.transportEvidence))))

end CellBiologyCellMembraneStructureTheoremCanonicalLaneLean
end HautevilleHouse