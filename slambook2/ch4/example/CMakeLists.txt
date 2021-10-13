option(USE_UBUNTU_20 "Set to ON if you are using Ubuntu 20.04" OFF)
find_package(Pangolin REQUIRED)

include_directories(${Pangolin_INCLUDE_DIRS})
find_package(Sophus REQUIRED)
add_executable(trajectoryError trajectoryError.cpp)
target_link_libraries(trajectoryError ${Pangolin_LIBRARIES} ${FMT_LIBRARIES} ${Sophus_LIBRARIES})
