cmake_minimum_required(VERSION 3.0)
project(useSophus)

# 为使用 sophus，需要使用find_package命令找到它
find_package(Sophus REQUIRED)

find_package(fmt REQUIRED)
set(FMT_LIBRARIES fmt::fmt)

# Eigen
include_directories("/usr/local/include/eigen3")
add_executable(useSophus useSophus.cpp)
target_link_libraries(useSophus ${Sophus_LIBRARIES} ${FMT_LIBRARIES})

add_subdirectory(example)
