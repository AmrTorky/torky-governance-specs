CXX ?= g++
CXXFLAGS = -O3 -std=c++20 -march=native -Wall -Wextra -Iinclude -pthread

TARGET = build/torky-governance-cli
GOV_BIN = build/iso17025_governor

all: $(TARGET) $(GOV_BIN)

$(TARGET): src/torky_cli_kernel.cpp include/torky_continuum_core.hpp
	@mkdir -p build
	$(CXX) $(CXXFLAGS) src/torky_cli_kernel.cpp -o $(TARGET)

$(GOV_BIN): src/governance/iso17025_governor.cpp include/torky_continuum_core.hpp
	@mkdir -p build
	$(CXX) $(CXXFLAGS) src/governance/iso17025_governor.cpp -o $(GOV_BIN)

test: all
	./$(TARGET)
	./$(GOV_BIN)
	python3 tests/test_zenodo_worm_doi.py
	./run_audit.sh

clean:
	rm -rf build local_verification_certificate.json
