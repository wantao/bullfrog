################ PROJECT NAME #####################
cmake_minimum_required (VERSION 2.8)

# ���ϵͳ���ж��������, ���ʹ��Ĭ�ϱ�����, �����ע���������к�,��cmake
set(CMAKE_C_COMPILER "/usr/bin/gcc")
set(CMAKE_CXX_COMPILER "/usr/bin/g++")

# �������ִ���ļ�
#SET( EXECUTABLE_OUTPUT_PATH ../../../bin )
# ������ɿ�
SET( LIBRARY_OUTPUT_PATH ../../../lib/common/release )

# ���ù�������
set (PRONAME "sh_common")
PROJECT (PRONAME)

# �����Ƿ�debug
set( CMAKE_BUILD_TYPE RELEASE)
#set( CMAKE_DEBUG_POSTFIX d)	
MESSAGE(STATUS "RELEASE ON")

# ���ñ���ѡ��
add_definitions( -std=c++11 -O3 -Wall -rdynamic )



################ INCLUDE #####################
include_directories("../../../include")
include_directories("../../../src/common")



################ SOURCE_FILES #####################
SET (HEADER_FILES
../../../include/MarkupSTL.h
../../../include/sh_filelog.h
../../../include/sh_type.h
../../../include/sh_define.h
../../../include/sh_include.h
../../../include/sh_common.h
../../../include/sh_ptrlist.h
../../../include/sh_objpool.h
../../../include/sh_systemtime.h
)

SET (SOURCE_FILES  
../../../src/common/sh_filelog.cpp
../../../src/common/MarkupSTL.cpp
../../../src/common/sh_common.cpp
../../../src/common/sh_systemtime.cpp
)


###############LINK#########################
# �������ɾ�̬��
#ADD_LIBRARY(${PRONAME} STATIC  ${HEADER_FILES}  ${SOURCE_FILES}  )

# �������ɶ�̬��
ADD_LIBRARY(${PRONAME} SHARED  ${HEADER_FILES}  ${SOURCE_FILES}  )

#��������Ŀ¼
#ADD_EXECUTABLE(${PRONAME}  ${HEADER_FILES}  ${SOURCE_FILES}  )

# ���ø������ӿ�
#TARGET_LINK_LIBRARIES( ${PRONAME} pthread )


