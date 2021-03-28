# 辅助输出信息
message("now using FindDEMO9LIB.cmake find demo9 lib")

# 将demo9.h文件路径赋值给DEMO9LIB_INCLUDE_DIR
FIND_PATH(DEMO9LIB_INCLUDE_DIR demo9.h /usr/include/demo9/
        /usr/local/demo9/include/)
message("./h dir ${DEMO9LIB_INCLUDE_DIR}")

# 将libdemo9_lib.a文件路径赋值给DEMO9LIB_LIBRARY
FIND_LIBRARY(DEMO9LIB_LIBRARY libdemo9_lib.a /usr/local/demo9/lib/)
message("lib dir: ${DEMO9LIB_LIBRARY}")

if(DEMO9LIB_INCLUDE_DIR AND DEMO9LIB_LIBRARY)
    # 设置变量结果
    set(DEMO9LIB_FOUND TRUE)
endif(DEMO9LIB_INCLUDE_DIR AND DEMO9LIB_LIBRARY)