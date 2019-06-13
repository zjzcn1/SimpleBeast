
#/**
# * Bu dosya CINAR projesinin bir parcasidir ve "CINAR Projesi Sozlesmesi"
# * hukumlerine tabidir. Bu dosyanin sozlesme hukumlerine aykiri kullanilmasi
# * ve herhangi bir ortama yetkisiz kopyalanmasi yasaktir.
# *
# * T.C. Cumhurbaskanligi Savunma Sanayii Baskanligi (SSB)
# *
# *
# * This file is a part of CINAR project and subjects to the conditions and
# * restrictions defined in "CINAR Project Agreement". Unauthorized use and
# * copying of this file via any medium are strictly prohibited.
# *
# * Presidency of The Republic of Turkey
# * Presidency of Defence Industries
# */

BUILD_ROOT ?= ../../..
VERBOSE ?= off
BIN_PATH := $(BUILD_ROOT)
BIN := $(BIN_PATH)/cnrnrftest
SRC := $(BUILD_ROOT)/src

GTEST_OUTPUT_XML_FILE = test.xml

EXCLUDES := $(SRC)/cnrnrf.cpp

CC = g++
CCFLAGS = -Wall -g -std=c++14 -fprofile-arcs -ftest-coverage -I/opt/cinar/include -I/usr/include/mongocxx/v_noabi -I/usr/include/bsoncxx/v_noabi -I$(SRC)
LDFLAGS = -lnghttp2_asio -lboost_system -lboost_filesystem -lboost_date_time -lboost_program_options -lboost_thread \
          -lssl -lcrypto -lg3logger -lmongocxx -lbson-1.0 -lbsoncxx -lpqxx -lpq -lgtest -lgtest_main -lgcov -pthread -lgmock --coverage

SRC_OBJ_FILES := $(patsubst %.cpp, obj/%.o, $(patsubst $(SRC)/%,%,$(filter-out $(EXCLUDES), $(shell find $(SRC) -type f -name "*.cpp"))))
OBJ_FILES := $(patsubst %.cpp, obj/%.o, $(shell find . -type f -name "*.cpp"))
HEADER_FILES := $(shell find . -type f -name "*.h")

all: check-dirs run

check-dirs:
	@if [ ! -d obj ]; then mkdir -p obj; fi

run: $(BIN)
	@echo ">>> Running unit tests"
	@cd $(BIN_PATH);	\
	$(BIN) --gtest_output="xml:$(BIN_PATH)/$(GTEST_OUTPUT_XML_FILE)"
	@gcovr -r $(BUILD_ROOT) --gcov-exclude='src/Cinar/.*' -x > $(BIN_PATH)/coverage-cnrnrf.xml \
		-e "src/Cinar/.*" -e ".*TestHelper.*" -e ".*MongoDB.*" -e ".*Log.*" -e ".*DBFactory.*" -e ".*DBConnectionHandler.*" \
		-e "test/unit-tests/src/.*" -e ".*EventSpy.*" -e ".*NotificationEvent.*" -e ".*Exception.*"

$(BIN): $(SRC_OBJ_FILES) $(OBJ_FILES)
	@echo ">>> Building $@"
	@if [ "$(VERBOSE)" = "on" ]; then echo $(CC) -o $@ $^ $(LDFLAGS); fi
	@$(CC) -o $@ $^ $(LDFLAGS)

obj/%.o: $(SRC)/%.cpp $(SRC)/%.h $(SRC)/%.hpp
	@mkdir -p $(dir $@)
	@echo ">>> Compiling $(patsubst $(SRC)/%,%,$<)"
	@if [ "$(VERBOSE)" = "on" ]; then echo $(CC) $(CCFLAGS) -c -o $@ $<; fi
	@$(CC) $(CCFLAGS) -c -o $@ $<

$(SRC)/%.h:
	@true

$(SRC)/%.hpp:
	@true

obj/%.o: %.cpp %.h %.hpp $(HEADER_FILES)
	@mkdir -p $(dir $@)
	@echo ">>> Compiling $<"
	@if [ "$(VERBOSE)" = "on" ]; then echo $(CC) $(CCFLAGS) -c -o $@ $<; fi
	@$(CC) $(CCFLAGS) -c -o $@ $<

%.h:
	@true

%.hpp:
	@true

clean:
	@echo ">>> Cleaning build artifacts - dir: $(shell pwd)"
	@rm -rf obj
	@rm -f $(BIN)
	@rm -f $(BIN_PATH)/$(GTEST_OUTPUT_XML_FILE)
	@rm -f $(BIN_PATH)/coverage-*.xml
	@find . \( -name "*.o" -o -name "*.gcno" -o -name "*.gcda" \) -exec rm -rf {} \;

covhtml: run
	@echo ">>> Generating html for coverage report"
	@mkdir -p $(BIN_PATH)/Htmlreports
	@gcovr -r $(BUILD_ROOT) --gcov-exclude='src/Cinar/.*' --html --html-details -o $(BIN_PATH)/Htmlreports/coverage-html.html \
		-e "src/Cinar/.*" -e ".*TestHelper.*" -e ".*MongoDB.*" -e ".*Log.*" -e ".*DBFactory.*" -e ".*DBConnectionHandler.*" \
		-e "test/unit-tests/src/.*" -e ".*EventSpy.*" -e ".*NotificationEvent.*" -e ".*Exception.*"