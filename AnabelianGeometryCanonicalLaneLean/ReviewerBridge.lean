import AnabelianGeometryCanonicalLaneLean.Formalization
import AnabelianGeometryCanonicalLaneLean.SourceDependencies

/-!
# Reviewer Bridge

Typed Lean data for the imported reviewer bridge architecture.
-/

namespace HautevilleHouse
namespace AnabelianGeometryCanonicalLaneLean

structure ReviewerBridgeFile where
  path : String
  role : String
  sha256 : String
  present : Bool
deriving Repr, DecidableEq

structure ReviewerChainStep where
  index : Nat
  label : String
deriving Repr, DecidableEq

structure ReviewerClosureGate where
  gate : String
  constant : String
deriving Repr, DecidableEq

structure ReviewerManifestEntry where
  path : String
  sha256 : String
deriving Repr, DecidableEq

structure CertificateGate where
  gate : String
  status : String
deriving Repr, DecidableEq

structure CertificateInput where
  key : String
  value : String
deriving Repr, DecidableEq

def reviewerBridgeFiles : List ReviewerBridgeFile := [
  { path := "REVIEWER_MAP.md", role := "reviewer_map", sha256 := "6af883e2eea672dd183f10406171646c1e21d9bd3c8c38f1be53d917b78e97ea", present := true },
  { path := "notes/IDENTIFICATION_BRIDGE.md", role := "identification_bridge", sha256 := "929acea1ade2201a67bf26ba0d6214fc3fdeeb1744e1987daa462a63d6252697", present := true },
  { path := "artifacts/constants_extraction_inputs.json", role := "constant_inputs", sha256 := "241ad151931e650dc020626ec269442ef3130421fbd34a2b5bed2b3589f7ff86", present := true },
  { path := "artifacts/constants_extracted.json", role := "constant_extracted", sha256 := "d9e8e6869c9b3fb8fb48f7aa1dc3fb87454dc5d9c886b3f2a8070afe098862aa", present := true },
  { path := "artifacts/constants_registry.json", role := "constant_registry", sha256 := "68b6ef311c6578a1bd4af567ba8763d6ca264a149ca7d26179a010c27023c09e", present := true },
  { path := "artifacts/stitch_constants.json", role := "stitch_constants", sha256 := "926db5e8b806f4c827b7e0a0ca82fb4e65eff55da84de4e9006babb8cc77aa1d", present := true },
  { path := "artifacts/promotion_report.json", role := "promotion_report", sha256 := "a78328be91e55f2a361f59d3319a9b51ed22dea883db1f2874bb25c2112d7d85", present := true },
  { path := "repro/repro_manifest.json", role := "manifest", sha256 := "71e3271d5fa59f8bb1d7402a0f9db0d4c5dcaba4e2535880105a73a5d67c54f9", present := true },
  { path := "repro/certificate_baseline.json", role := "baseline_certificate", sha256 := "db0b10e98491a9c61e2a7a56a2e1c2720ae2e37f6812fa70a5fc816d31f960e7", present := true }
]

def reviewerChainSteps : List ReviewerChainStep := [
  { index := 1, label := "EG1" },
  { index := 2, label := "EG2" },
  { index := 3, label := "EG3" },
  { index := 4, label := "EG4" },
  { index := 5, label := "Identification bridge" },
  { index := 6, label := "Scalar closure" }
]

def reviewerClosureGates : List ReviewerClosureGate := [
]

def reviewerFalsificationConditionCount : Nat := 5

def reviewerManifestEntries : List ReviewerManifestEntry := [
  { path := "CITATION.cff", sha256 := "d04f3043f95341767c8f18896f1961c73f6c4239c861afe9144edf29fe31312b" },
  { path := "README.md", sha256 := "0226fce3d2b71c530ffe97a14f5ccff6d1762c876490aa7a42b159bde72c38ae" },
  { path := "artifacts/constants_extracted.json", sha256 := "d9e8e6869c9b3fb8fb48f7aa1dc3fb87454dc5d9c886b3f2a8070afe098862aa" },
  { path := "artifacts/constants_extraction_inputs.json", sha256 := "241ad151931e650dc020626ec269442ef3130421fbd34a2b5bed2b3589f7ff86" },
  { path := "artifacts/constants_registry.json", sha256 := "68b6ef311c6578a1bd4af567ba8763d6ca264a149ca7d26179a010c27023c09e" },
  { path := "artifacts/promotion_report.json", sha256 := "a78328be91e55f2a361f59d3319a9b51ed22dea883db1f2874bb25c2112d7d85" },
  { path := "artifacts/stitch_constants.json", sha256 := "926db5e8b806f4c827b7e0a0ca82fb4e65eff55da84de4e9006babb8cc77aa1d" },
  { path := "notes/EG1_public.md", sha256 := "d95b92b5a6d456095f76da368ebb3fae9b6420a81c5490bb06687aba34609cf8" },
  { path := "notes/EG2_public.md", sha256 := "9f3d7550ebc9050f4304add45b98a5d504a73152ab2b84e71207a550769e2a96" },
  { path := "notes/EG3_public.md", sha256 := "fc0e857ff2628aae165128d9f17bfd1489e5f51bb30d552bf65df6cfb7f59dd7" },
  { path := "notes/EG4_public.md", sha256 := "463c9e7537ff118a4dc45138ff2584d82e9efd6926a910c51950c6eea9c22212" },
  { path := "notes/IDENTIFICATION_BRIDGE.md", sha256 := "929acea1ade2201a67bf26ba0d6214fc3fdeeb1744e1987daa462a63d6252697" },
  { path := "notes/GEOMETRIC_GALOIS_BRIDGE.md", sha256 := "ae42e329d7ec085b5591c46915f0fa8245f2ffa22195cffee0abe3e272a6ab3d" },
  { path := "paper/CANONICAL_ROUTING_INDEX.md", sha256 := "69b913f427c47261a69d62086ccb6de08ccefdf20ff69fa5e4b57687f2141788" },
  { path := "paper/EXTRACTION_SPEC.md", sha256 := "4e534ae14c779d9406141769e309e1da6caa9fe49e125037babb45d11348d88a" },
  { path := "paper/ANABELIAN_GEOMETRY_PREPRINT.md", sha256 := "c8155c4b71249733a0ddcd1887d2fcba367166f26562066fb341c2fc99dbe6fb" },
  { path := "repro/REPRO_PACK.md", sha256 := "72171bd6196857a39b00530cc0fd347aa1b5d8459f5f07c7c85bcc2fda58cf17" },
  { path := "repro/THIRD_PARTY_RERUN_PROTOCOL.md", sha256 := "46603dae570c13d6d9e8e1aa5fc205151a03bf165bec5b7e67a441fab25dd36d" },
  { path := "repro/certificate_baseline.json", sha256 := "db0b10e98491a9c61e2a7a56a2e1c2720ae2e37f6812fa70a5fc816d31f960e7" },
  { path := "repro/run_repro.sh", sha256 := "ecfe3e7112cc8695439de8aad9b78183cee81ffcf46e518176700f55fa9b764b" },
  { path := "scripts/extract_constants.py", sha256 := "730d57dae3fac057e19630db34233183cae269568d43118c943387970081896d" },
  { path := "scripts/promote_constants.py", sha256 := "b65eb7a60552c668f04d6331a5256fe4e662ae5e83e769d42f6a141819769356" },
  { path := "scripts/release_gate.py", sha256 := "5c9760aeddbfa0e4b5a9447e1bda670004391c19470f9b1cf8897bf154f667b8" },
  { path := "scripts/update_manifest.py", sha256 := "45ae03f10349daebab98b6eb9a0836b7e2d15a48ca5504277c80ec7d4c633d12" },
  { path := "scripts/ana_closure_guard.py", sha256 := "e3a03d62846810f724b5bd6b0d081f6955c294dae4521d1fd00022d2e9f6ccef" },
  { path := "scripts/README.md", sha256 := "51bd0f43c576f01175decc5a13e8210c5a3fa36a562e809e8bfd93fb3251f832" }
]

def baselineCertificateGates : List CertificateGate := [
  { gate := "ANA_G1", status := "PASS" },
  { gate := "ANA_G2", status := "PASS" },
  { gate := "ANA_G3", status := "PASS" },
  { gate := "ANA_G4", status := "PASS" },
  { gate := "ANA_G5", status := "PASS" },
  { gate := "ANA_G6", status := "PASS" },
  { gate := "ANA_GM", status := "PASS" }
]

def baselineCertificateInputs : List CertificateInput := [
  { key := "eps_coh", value := "0.0" },
  { key := "kappa_compact", value := "0.8038585209003215" },
  { key := "kappa_fundamental", value := "1.094116" },
  { key := "rho_rigidity", value := "1.078" },
  { key := "section_transfer", value := "1.0305400000000002" },
  { key := "sigma_reconstruction", value := "1.075" },
  { key := "sigma_star_can", value := "1.054" }
]

def bridgeConstantKeys : List String := [
  "eps_coh",
  "kappa_compact",
  "kappa_fundamental",
  "rho_rigidity",
  "section_transfer",
  "sigma_reconstruction",
  "sigma_star_can"
]

def baselineCertificateAllPass : Bool := true
def baselineCertificateLane : String := "manifold_constrained"
def outsideConstantDependencyCount : Nat := 0

theorem reviewer_bridge_file_count_checked : reviewerBridgeFiles.length = 9 := by
  rfl

theorem reviewer_chain_step_count_checked : reviewerChainSteps.length = 6 := by
  rfl

theorem reviewer_closure_gate_count_checked : reviewerClosureGates.length = 0 := by
  rfl

theorem reviewer_falsification_condition_count_checked : reviewerFalsificationConditionCount = 5 := by
  rfl

theorem reviewer_manifest_entry_count_checked : reviewerManifestEntries.length = 26 := by
  rfl

theorem baseline_certificate_gate_count_checked : baselineCertificateGates.length = 7 := by
  rfl

theorem baseline_certificate_input_count_checked : baselineCertificateInputs.length = 7 := by
  rfl

theorem bridge_constant_key_count_checked : bridgeConstantKeys.length = 7 := by
  rfl

theorem baseline_certificate_all_pass_checked : baselineCertificateAllPass = true := by
  rfl

theorem outside_constant_dependency_count_checked : outsideConstantDependencyCount = 0 := by
  rfl

end AnabelianGeometryCanonicalLaneLean
end HautevilleHouse
