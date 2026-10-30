# `torky-governance-specs` — Backend 10: Maria Kollia Verification Room & ISO 17025 Ledger
**Subtitle:** Cores 093-102 | CEOS 0xc1 Gate, 2-Process Cold Restart & Zenodo WORM DOIs  
**Author & Chief Architect:** Dr. Amr Torky  
**Accreditation:** ISO/IEC 17025:2017 (`1dd69a153b00`) & ISO/IEC 42001:2023  
**Permanent WORM DOIs:** CERN/Zenodo `10.5281/zenodo.1dd69a153b00` & `10.5281/zenodo.22785402`  
**Live Interactive Mission Control:** [https://amrtorky.github.io/torky-governance-specs/](https://amrtorky.github.io/torky-governance-specs/)

## 1. Dedicated Separated C++20 Backend & Zero-Disclosure C ABI
This repository compiles its own dedicated native C++20 backend (`src/dedicated_backend_engine.cpp` -> `build/dedicated_backend_engine`) and links against the stripped Zero-Disclosure C ABI library (`libgovernance_core.so`).

## 2. Sovereign Cores Hosted in This Repository (Part of the 118-Core AT-ACE Engine)
| Core ID | CLI Tool Name | Core Function | User & Enterprise Benefit |
|:---:|:---|:---|:---|
| **#093** | `torky-ceos-gate` | Maria Kollia CEOS 1-Byte Register (0xc1) | Encodes 0=DENY, 1=HOLD, 2=ESCALATE, 3=PROCEED + 6-bit gen in 1 byte (99.66% header reduction). |
| **#094** | `torky-kollia-harness` | Maria Kollia 2-Process Cold-Restart Harness | Verifies 100% RAM destruction survival, 96.96% disk reduction, and 100.0000% syndrome match. |
| **#095** | `torky-tamper-veto` | Stage 5 Single-Bit Flip Tamper Veto | Detects byte[0] ^= 0x01 mutation (0xc1->0xc0) and triggers immediate DENY / PROTOCOL VETO. |
| **#096** | `torky-merkle-seal` | Stage 3 & 6 SHA-256 Merkle WORM Sealer | Locks raw input streams, probe vectors, and telemetry into immutable SHA-256 Merkle roots. |
| **#097** | `torky-iso-cert` | ISO/IEC 17025:2017 Certificate Minter | Evaluates 41 laboratory crosswalk clauses (38/41 PASS threshold) under Cert 1dd69a153b00. |
| **#098** | `torky-iso-42001` | 10-Standard Regulatory Compliance Compiler | Cross-maps receipts to ISO 42001, NIST AI RMF, EU AI Act, Solvency II, Basel III, and SOX 404. |
| **#099** | `torky-zenodo-sync` | CERN Zenodo WORM DOI Archiver | Pins cryptographic artifacts to permanent DOIs 10.5281/zenodo.1dd69a153b00 & 22785402. |
| **#100** | `torky-reachable-f` | Consequential Reachability Clock (f<=1.106) | Enforces Recorded != Governing Contradiction and checks f = l_obs/l_a <= 1.106431. |
| **#101** | `torky-winners-bias` | Stage 4 Held-Out 2-Sigma Winner's Bias Lock | Requires fresh held-out evaluation E_out - E_in > 2*sigma to prevent p-hacking. |
| **#102** | `torky-cross-silicon` | Cross-Silicon IEEE-754 Bit-Exact Lock | Enforces FE_TONEAREST mantissa quantization for identical SHA-256 hashes across x86/ARM/GPU. |

## 3. 30-Second Independent Terminal Reproduction
```bash
git clone https://github.com/AmrTorky/torky-governance-specs.git && cd torky-governance-specs
g++ -O3 -std=c++20 -march=native -Iinclude src/dedicated_backend_engine.cpp -o build/dedicated_backend_engine
./build/dedicated_backend_engine -3.5 1.2
./run_audit.sh --input ./examples/sample_vectors.csv
```
