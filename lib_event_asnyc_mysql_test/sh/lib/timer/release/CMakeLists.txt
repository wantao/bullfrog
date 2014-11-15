################ PROJECT NAME #####################
cmake_minimum_required (VERSION 2.8)

# ���ϵͳ���ж��������, ���ʹ��Ĭ�ϱ�����, �����ע���������к�,��cmake
set(CMAKE_C_COMPILER "/usr/bin/gcc")
set(CMAKE_CXX_COMPILER "/usr/bin/g++")

# �������ִ���ļ�
#SET( EXECUTABLE_OUTPUT_PATH ../../../bin )
# ������ɿ�
SET( LIBRARY_OUTPUT_PATH ../../../lib/timer/release )

# ���ù�������
set (PRONAME "sh_timer")
PROJECT (PRONAME)

# �����Ƿ�debug
set( CMAKE_BUILD_TYPE Release)
#set( CMAKE_DEBUG_POSTFIX d)	
MESSAGE(STATUS "Release ON")

# ���ñ���ѡ��
add_definitions( -std=c++11 -O3 -Wall -rdynamic )



############### INCLUDE #####################
include_directories("/usr/include/mysql")
include_directories("/usr/local/include")
include_directories("../../../src/libevent_reactor_core")
include_directories("../../../include")
include_directories("../../../src/mysql")
include_directories("../../../src/net_util")
include_directories("../../../src/common")
include_directories("../../../src/timer")




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
../../../src/mysql/sh_mysql.h 
../../../include/sh_dbsql.h
../../../include/sh_singleton.h 

../../../src/libevent_reactor_core/sh_reactor_core.h
../../../src/net_util/sh_net_util.h
../../../src/net_util/sh_listener.h
../../../src/timer/sh_timer.h
)

SET (SOURCE_FILES  

../../../src/timer/sh_timer.cpp

)


link_directories (/usr/local/lib)
###############LINK#########################
# �������ɾ�̬��
#ADD_LIBRARY(${PRONAME} STATIC  ${HEADER_FILES}  ${SOURCE_FILES}  )

# �������ɶ�̬��
ADD_LIBRARY(${PRONAME} SHARED  ${HEADER_FILES}  ${SOURCE_FILES}  )

#��������Ŀ¼
#ADD_EXECUTABLE(${PRONAME}  ${HEADER_FILES}  ${SOURCE_FILES}  )

# ���ø������ӿ�
TARGET_LINK_LIBRARIES( ${PRONAME} event pthread sh_libevent_reactor_core)


