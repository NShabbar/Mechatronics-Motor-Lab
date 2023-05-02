#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/Lab3.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/Lab3.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS

else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=../../../../../ECE118/src/AD.c ../../../../../ECE118/src/BOARD.c ../../../../../ECE118/src/IO_Ports.c ../../../../../ECE118/src/LED.c ../../../../../ECE118/src/pwm.c ../../../../../ECE118/src/RC_Servo.c ../../../../../ECE118/src/roach.c ../../../../../ECE118/src/serial.c ../../../../../ECE118/src/timers.c ../../../../../ECE118/src/Part4.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1990330219/AD.o ${OBJECTDIR}/_ext/1990330219/BOARD.o ${OBJECTDIR}/_ext/1990330219/IO_Ports.o ${OBJECTDIR}/_ext/1990330219/LED.o ${OBJECTDIR}/_ext/1990330219/pwm.o ${OBJECTDIR}/_ext/1990330219/RC_Servo.o ${OBJECTDIR}/_ext/1990330219/roach.o ${OBJECTDIR}/_ext/1990330219/serial.o ${OBJECTDIR}/_ext/1990330219/timers.o ${OBJECTDIR}/_ext/1990330219/Part4.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1990330219/AD.o.d ${OBJECTDIR}/_ext/1990330219/BOARD.o.d ${OBJECTDIR}/_ext/1990330219/IO_Ports.o.d ${OBJECTDIR}/_ext/1990330219/LED.o.d ${OBJECTDIR}/_ext/1990330219/pwm.o.d ${OBJECTDIR}/_ext/1990330219/RC_Servo.o.d ${OBJECTDIR}/_ext/1990330219/roach.o.d ${OBJECTDIR}/_ext/1990330219/serial.o.d ${OBJECTDIR}/_ext/1990330219/timers.o.d ${OBJECTDIR}/_ext/1990330219/Part4.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1990330219/AD.o ${OBJECTDIR}/_ext/1990330219/BOARD.o ${OBJECTDIR}/_ext/1990330219/IO_Ports.o ${OBJECTDIR}/_ext/1990330219/LED.o ${OBJECTDIR}/_ext/1990330219/pwm.o ${OBJECTDIR}/_ext/1990330219/RC_Servo.o ${OBJECTDIR}/_ext/1990330219/roach.o ${OBJECTDIR}/_ext/1990330219/serial.o ${OBJECTDIR}/_ext/1990330219/timers.o ${OBJECTDIR}/_ext/1990330219/Part4.o

# Source Files
SOURCEFILES=../../../../../ECE118/src/AD.c ../../../../../ECE118/src/BOARD.c ../../../../../ECE118/src/IO_Ports.c ../../../../../ECE118/src/LED.c ../../../../../ECE118/src/pwm.c ../../../../../ECE118/src/RC_Servo.c ../../../../../ECE118/src/roach.c ../../../../../ECE118/src/serial.c ../../../../../ECE118/src/timers.c ../../../../../ECE118/src/Part4.c



CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk ${DISTDIR}/Lab3.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=32MX320F128H
MP_LINKER_FILE_OPTION=,--script="..\..\..\..\..\ECE118\bootloader320.ld"
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1990330219/AD.o: ../../../../../ECE118/src/AD.c  .generated_files/flags/default/46502be6ff2fc42b951a0cbfaacda2cad6635881 .generated_files/flags/default/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/1990330219" 
	@${RM} ${OBJECTDIR}/_ext/1990330219/AD.o.d 
	@${RM} ${OBJECTDIR}/_ext/1990330219/AD.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DPART2 -I"." -I"C:/ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1990330219/AD.o.d" -o ${OBJECTDIR}/_ext/1990330219/AD.o ../../../../../ECE118/src/AD.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1990330219/BOARD.o: ../../../../../ECE118/src/BOARD.c  .generated_files/flags/default/26f6514218f05bc7758cc2d02a8988a1854d5107 .generated_files/flags/default/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/1990330219" 
	@${RM} ${OBJECTDIR}/_ext/1990330219/BOARD.o.d 
	@${RM} ${OBJECTDIR}/_ext/1990330219/BOARD.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DPART2 -I"." -I"C:/ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1990330219/BOARD.o.d" -o ${OBJECTDIR}/_ext/1990330219/BOARD.o ../../../../../ECE118/src/BOARD.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1990330219/IO_Ports.o: ../../../../../ECE118/src/IO_Ports.c  .generated_files/flags/default/29c801f447923cb4e598d9f7959a0350a0529fc9 .generated_files/flags/default/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/1990330219" 
	@${RM} ${OBJECTDIR}/_ext/1990330219/IO_Ports.o.d 
	@${RM} ${OBJECTDIR}/_ext/1990330219/IO_Ports.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DPART2 -I"." -I"C:/ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1990330219/IO_Ports.o.d" -o ${OBJECTDIR}/_ext/1990330219/IO_Ports.o ../../../../../ECE118/src/IO_Ports.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1990330219/LED.o: ../../../../../ECE118/src/LED.c  .generated_files/flags/default/58ef593a570819a2c8ff260cf8279111f00b3e0d .generated_files/flags/default/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/1990330219" 
	@${RM} ${OBJECTDIR}/_ext/1990330219/LED.o.d 
	@${RM} ${OBJECTDIR}/_ext/1990330219/LED.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DPART2 -I"." -I"C:/ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1990330219/LED.o.d" -o ${OBJECTDIR}/_ext/1990330219/LED.o ../../../../../ECE118/src/LED.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1990330219/pwm.o: ../../../../../ECE118/src/pwm.c  .generated_files/flags/default/226dfccfbbc96ff0fe5c4e54e0f6b9ec3cbd0f38 .generated_files/flags/default/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/1990330219" 
	@${RM} ${OBJECTDIR}/_ext/1990330219/pwm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1990330219/pwm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DPART2 -I"." -I"C:/ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1990330219/pwm.o.d" -o ${OBJECTDIR}/_ext/1990330219/pwm.o ../../../../../ECE118/src/pwm.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1990330219/RC_Servo.o: ../../../../../ECE118/src/RC_Servo.c  .generated_files/flags/default/3d52280642c785f3c4e38692d07625232f749b73 .generated_files/flags/default/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/1990330219" 
	@${RM} ${OBJECTDIR}/_ext/1990330219/RC_Servo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1990330219/RC_Servo.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DPART2 -I"." -I"C:/ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1990330219/RC_Servo.o.d" -o ${OBJECTDIR}/_ext/1990330219/RC_Servo.o ../../../../../ECE118/src/RC_Servo.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1990330219/roach.o: ../../../../../ECE118/src/roach.c  .generated_files/flags/default/dc4c198e68b3501d009848f8b303412c371f28be .generated_files/flags/default/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/1990330219" 
	@${RM} ${OBJECTDIR}/_ext/1990330219/roach.o.d 
	@${RM} ${OBJECTDIR}/_ext/1990330219/roach.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DPART2 -I"." -I"C:/ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1990330219/roach.o.d" -o ${OBJECTDIR}/_ext/1990330219/roach.o ../../../../../ECE118/src/roach.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1990330219/serial.o: ../../../../../ECE118/src/serial.c  .generated_files/flags/default/72565f4da4c96819a8a56cb341abe996a2dd8c72 .generated_files/flags/default/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/1990330219" 
	@${RM} ${OBJECTDIR}/_ext/1990330219/serial.o.d 
	@${RM} ${OBJECTDIR}/_ext/1990330219/serial.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DPART2 -I"." -I"C:/ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1990330219/serial.o.d" -o ${OBJECTDIR}/_ext/1990330219/serial.o ../../../../../ECE118/src/serial.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1990330219/timers.o: ../../../../../ECE118/src/timers.c  .generated_files/flags/default/16d3e7614a13b8971f6d8483069f8b316d74f3d2 .generated_files/flags/default/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/1990330219" 
	@${RM} ${OBJECTDIR}/_ext/1990330219/timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1990330219/timers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DPART2 -I"." -I"C:/ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1990330219/timers.o.d" -o ${OBJECTDIR}/_ext/1990330219/timers.o ../../../../../ECE118/src/timers.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1990330219/Part4.o: ../../../../../ECE118/src/Part4.c  .generated_files/flags/default/a22239ee9f240de954e10f4b38255f9b42c73647 .generated_files/flags/default/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/1990330219" 
	@${RM} ${OBJECTDIR}/_ext/1990330219/Part4.o.d 
	@${RM} ${OBJECTDIR}/_ext/1990330219/Part4.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DPART2 -I"." -I"C:/ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1990330219/Part4.o.d" -o ${OBJECTDIR}/_ext/1990330219/Part4.o ../../../../../ECE118/src/Part4.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
else
${OBJECTDIR}/_ext/1990330219/AD.o: ../../../../../ECE118/src/AD.c  .generated_files/flags/default/595ce1c3468e267f0d6a835a9fde88b12e802d19 .generated_files/flags/default/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/1990330219" 
	@${RM} ${OBJECTDIR}/_ext/1990330219/AD.o.d 
	@${RM} ${OBJECTDIR}/_ext/1990330219/AD.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DPART2 -I"." -I"C:/ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1990330219/AD.o.d" -o ${OBJECTDIR}/_ext/1990330219/AD.o ../../../../../ECE118/src/AD.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1990330219/BOARD.o: ../../../../../ECE118/src/BOARD.c  .generated_files/flags/default/ec3fb17ed32571b49bfffb2d86905d36a87b45f9 .generated_files/flags/default/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/1990330219" 
	@${RM} ${OBJECTDIR}/_ext/1990330219/BOARD.o.d 
	@${RM} ${OBJECTDIR}/_ext/1990330219/BOARD.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DPART2 -I"." -I"C:/ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1990330219/BOARD.o.d" -o ${OBJECTDIR}/_ext/1990330219/BOARD.o ../../../../../ECE118/src/BOARD.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1990330219/IO_Ports.o: ../../../../../ECE118/src/IO_Ports.c  .generated_files/flags/default/a231cefa3e98ccaf5429211ec72e7df5072d54dd .generated_files/flags/default/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/1990330219" 
	@${RM} ${OBJECTDIR}/_ext/1990330219/IO_Ports.o.d 
	@${RM} ${OBJECTDIR}/_ext/1990330219/IO_Ports.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DPART2 -I"." -I"C:/ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1990330219/IO_Ports.o.d" -o ${OBJECTDIR}/_ext/1990330219/IO_Ports.o ../../../../../ECE118/src/IO_Ports.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1990330219/LED.o: ../../../../../ECE118/src/LED.c  .generated_files/flags/default/64c3d2425d784b2af2f6f92bc556d73af148fc94 .generated_files/flags/default/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/1990330219" 
	@${RM} ${OBJECTDIR}/_ext/1990330219/LED.o.d 
	@${RM} ${OBJECTDIR}/_ext/1990330219/LED.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DPART2 -I"." -I"C:/ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1990330219/LED.o.d" -o ${OBJECTDIR}/_ext/1990330219/LED.o ../../../../../ECE118/src/LED.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1990330219/pwm.o: ../../../../../ECE118/src/pwm.c  .generated_files/flags/default/cf234c467e449226f18effa7974d0fa152d26a29 .generated_files/flags/default/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/1990330219" 
	@${RM} ${OBJECTDIR}/_ext/1990330219/pwm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1990330219/pwm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DPART2 -I"." -I"C:/ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1990330219/pwm.o.d" -o ${OBJECTDIR}/_ext/1990330219/pwm.o ../../../../../ECE118/src/pwm.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1990330219/RC_Servo.o: ../../../../../ECE118/src/RC_Servo.c  .generated_files/flags/default/fe0e5c3147f94ffc9f8381c02969cf3c388f53c2 .generated_files/flags/default/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/1990330219" 
	@${RM} ${OBJECTDIR}/_ext/1990330219/RC_Servo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1990330219/RC_Servo.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DPART2 -I"." -I"C:/ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1990330219/RC_Servo.o.d" -o ${OBJECTDIR}/_ext/1990330219/RC_Servo.o ../../../../../ECE118/src/RC_Servo.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1990330219/roach.o: ../../../../../ECE118/src/roach.c  .generated_files/flags/default/9b6ecac60f9d3259891f58f2dde50fc4d77973 .generated_files/flags/default/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/1990330219" 
	@${RM} ${OBJECTDIR}/_ext/1990330219/roach.o.d 
	@${RM} ${OBJECTDIR}/_ext/1990330219/roach.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DPART2 -I"." -I"C:/ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1990330219/roach.o.d" -o ${OBJECTDIR}/_ext/1990330219/roach.o ../../../../../ECE118/src/roach.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1990330219/serial.o: ../../../../../ECE118/src/serial.c  .generated_files/flags/default/1a7becf00c45e36f2b74928d4835033f32955667 .generated_files/flags/default/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/1990330219" 
	@${RM} ${OBJECTDIR}/_ext/1990330219/serial.o.d 
	@${RM} ${OBJECTDIR}/_ext/1990330219/serial.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DPART2 -I"." -I"C:/ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1990330219/serial.o.d" -o ${OBJECTDIR}/_ext/1990330219/serial.o ../../../../../ECE118/src/serial.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1990330219/timers.o: ../../../../../ECE118/src/timers.c  .generated_files/flags/default/9571e3e90843bc2f423cb61f17c6ddefd4e4d265 .generated_files/flags/default/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/1990330219" 
	@${RM} ${OBJECTDIR}/_ext/1990330219/timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1990330219/timers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DPART2 -I"." -I"C:/ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1990330219/timers.o.d" -o ${OBJECTDIR}/_ext/1990330219/timers.o ../../../../../ECE118/src/timers.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1990330219/Part4.o: ../../../../../ECE118/src/Part4.c  .generated_files/flags/default/b52f7bc38a7c6064c02f04721c401d2611f1d9ea .generated_files/flags/default/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/1990330219" 
	@${RM} ${OBJECTDIR}/_ext/1990330219/Part4.o.d 
	@${RM} ${OBJECTDIR}/_ext/1990330219/Part4.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DPART2 -I"." -I"C:/ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1990330219/Part4.o.d" -o ${OBJECTDIR}/_ext/1990330219/Part4.o ../../../../../ECE118/src/Part4.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/Lab3.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    ../../../../../ECE118/bootloader320.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g   -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${DISTDIR}/Lab3.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)      -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=_min_heap_size=10000,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
	
else
${DISTDIR}/Lab3.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   ../../../../../ECE118/bootloader320.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${DISTDIR}/Lab3.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=10000,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
	${MP_CC_DIR}\\xc32-bin2hex ${DISTDIR}/Lab3.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${OBJECTDIR}
	${RM} -r ${DISTDIR}

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
