
.DEFAULT_GOAL:=all

BUILD_DIR=build

$(BUILD_DIR) : 
	mkdir -p $(BUILD_DIR)

$(BUILD_DIR)/Makefile : CMakeLists.txt | $(BUILD_DIR)
	cd $(BUILD_DIR) && \
		cmake -G "Unix Makefiles" \
			  -DCMAKE_C_COMPILER=${CMAKE_C_COMPILER} \
			  -DCMAKE_CXX_COMPILER=${CMAKE_CXX_COMPILER} \
			  ..

.PHONY : all
all : $(BUILD_DIR)/Makefile 
	make -C $(BUILD_DIR)

.PHONY : test
test : $(BUILD_DIR)/Makefile
	make -C $(BUILD_DIR) test
