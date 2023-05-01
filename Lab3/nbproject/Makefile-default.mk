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
SOURCEFILES_QUOTED_IF_SPACED=Part1.c ../../../../../ECE118/src/AD.c ../../../../../ECE118/src/BOARD.c ../../../../../ECE118/src/IO_Ports.c ../../../../../ECE118/src/LED.c ../../../../../ECE118/src/pwm.c ../../../../../ECE118/src/RC_Servo.c ../../../../../ECE118/src/roach.c ../../../../../ECE118/src/serial.c ../../../../../ECE118/src/timers.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/Part1.o ${OBJECTDIR}/_ext/1990330219/AD.o ${OBJECTDIR}/_ext/1990330219/BOARD.o ${OBJECTDIR}/_ext/1990330219/IO_Ports.o ${OBJECTDIR}/_ext/1990330219/LED.o ${OBJECTDIR}/_ext/1990330219/pwm.o ${OBJECTDIR}/_ext/1990330219/RC_Servo.o ${OBJECTDIR}/_ext/1990330219/roach.o ${OBJECTDIR}/_ext/1990330219/serial.o ${OBJECTDIR}/_ext/1990330219/timers.o
POSSIBLE_DEPFILES=${OBJECTDIR}/Part1.o.d ${OBJECTDIR}/_ext/1990330219/AD.o.d ${OBJECTDIR}/_ext/1990330219/BOARD.o.d ${OBJECTDIR}/_ext/1990330219/IO_Ports.o.d ${OBJECTDIR}/_ext/1990330219/LED.o.d ${OBJECTDIR}/_ext/1990330219/pwm.o.d ${OBJECTDIR}/_ext/1990330219/RC_Servo.o.d ${OBJECTDIR}/_ext/1990330219/roach.o.d ${OBJECTDIR}/_ext/1990330219/serial.o.d ${OBJECTDIR}/_ext/1990330219/timers.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/Part1.o ${OBJECTDIR}/_ext/1990330219/AD.o ${OBJECTDIR}/_ext/1990330219/BOARD.o ${OBJECTDIR}/_ext/1990330219/IO_Ports.o ${OBJECTDIR}/_ext/1990330219/LED.o ${OBJECTDIR}/_ext/1990330219/pwm.o ${OBJECTDIR}/_ext/1990330219/RC_Servo.o ${OBJECTDIR}/_ext/1990330219/roach.o ${OBJECTDIR}/_ext/1990330219/serial.o ${OBJECTDIR}/_ext/1990330219/timers.o

# Source Files
SOURCEFILES=Part1.c ../../../../../ECE118/src/AD.c ../../../../../ECE118/src/BOARD.c ../../../../../ECE118/src/IO_Ports.c ../../../../../ECE118/src/LED.c ../../../../../ECE118/src/pwm.c ../../../../../ECE118/src/RC_Servo.c ../../../../../ECE118/src/roach.c ../../../../../ECE118/src/serial.c ../../../../../ECE118/src/timers.c



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
${OBJECTDIR}/Part1.o: Part1.c  .generated_files/flags/default/c962887dd0acfeca869ef701ce21b4ca4e96941 .generated_files/flags/default/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Part1.o.d 
	@${RM} ${OBJECTDIR}/Part1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"C:/ECE118/include" -Wall -MP -MMD -MF "${OBJECTDIR}/Part1.o.d" -o ${OBJECTDIR}/Part1.o Part1.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1990330219/AD.o: ../../../../../ECE118/src/AD.c  .generated_files/flags/default/c05d74a7a8b712192d38dcd972d5d0bf63b164f3 .generated_files/flags/default/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/1990330219" 
	@${RM} ${OBJECTDIR}/_ext/1990330219/AD.o.d 
	@${RM} ${OBJECTDIR}/_ext/1990330219/AD.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"C:/ECE118/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1990330219/AD.o.d" -o ${OBJECTDIR}/_ext/1990330219/AD.o ../../../../../ECE118/src/AD.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1990330219/BOARD.o: ../../../../../ECE118/src/BOARD.c  .generated_files/flags/default/c6f53517a89acca2512166ff2dd0f1a867cca5fe .generated_files/flags/default/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/1990330219" 
	@${RM} ${OBJECTDIR}/_ext/1990330219/BOARD.o.d 
	@${RM} ${OBJECTDIR}/_ext/1990330219/BOARD.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"C:/ECE118/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1990330219/BOARD.o.d" -o ${OBJECTDIR}/_ext/1990330219/BOARD.o ../../../../../ECE118/src/BOARD.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1990330219/IO_Ports.o: ../../../../../ECE118/src/IO_Ports.c  .generated_files/flags/default/7b28e4fcf75287037c54976f0413f35cbe98a5b8 .generated_files/flags/default/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/1990330219" 
	@${RM} ${OBJECTDIR}/_ext/1990330219/IO_Ports.o.d 
	@${RM} ${OBJECTDIR}/_ext/1990330219/IO_Ports.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"C:/ECE118/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1990330219/IO_Ports.o.d" -o ${OBJECTDIR}/_ext/1990330219/IO_Ports.o ../../../../../ECE118/src/IO_Ports.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1990330219/LED.o: ../../../../../ECE118/src/LED.c  .generated_files/flags/default/32af965c09504973c664fe4702d6d5ceee36ed49 .generated_files/flags/default/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/1990330219" 
	@${RM} ${OBJECTDIR}/_ext/1990330219/LED.o.d 
	@${RM} ${OBJECTDIR}/_ext/1990330219/LED.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"C:/ECE118/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1990330219/LED.o.d" -o ${OBJECTDIR}/_ext/1990330219/LED.o ../../../../../ECE118/src/LED.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1990330219/pwm.o: ../../../../../ECE118/src/pwm.c  .generated_files/flags/default/d24cb674f68635a39362070ef37ec987d5c679a0 .generated_files/flags/default/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/1990330219" 
	@${RM} ${OBJECTDIR}/_ext/1990330219/pwm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1990330219/pwm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"C:/ECE118/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1990330219/pwm.o.d" -o ${OBJECTDIR}/_ext/1990330219/pwm.o ../../../../../ECE118/src/pwm.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1990330219/RC_Servo.o: ../../../../../ECE118/src/RC_Servo.c  .generated_files/flags/default/aec771c10370306dbffcf196365570bbfbffa9c .generated_files/flags/default/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/1990330219" 
	@${RM} ${OBJECTDIR}/_ext/1990330219/RC_Servo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1990330219/RC_Servo.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"C:/ECE118/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1990330219/RC_Servo.o.d" -o ${OBJECTDIR}/_ext/1990330219/RC_Servo.o ../../../../../ECE118/src/RC_Servo.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1990330219/roach.o: ../../../../../ECE118/src/roach.c  .generated_files/flags/default/dae7b345820fa9f7b7ba5e3070b2085a41b73bd3 .generated_files/flags/default/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/1990330219" 
	@${RM} ${OBJECTDIR}/_ext/1990330219/roach.o.d 
	@${RM} ${OBJECTDIR}/_ext/1990330219/roach.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"C:/ECE118/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1990330219/roach.o.d" -o ${OBJECTDIR}/_ext/1990330219/roach.o ../../../../../ECE118/src/roach.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1990330219/serial.o: ../../../../../ECE118/src/serial.c  .generated_files/flags/default/de82c7105c578c0dc2cb246ec41cfebee20322b7 .generated_files/flags/default/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/1990330219" 
	@${RM} ${OBJECTDIR}/_ext/1990330219/serial.o.d 
	@${RM} ${OBJECTDIR}/_ext/1990330219/serial.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"C:/ECE118/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1990330219/serial.o.d" -o ${OBJECTDIR}/_ext/1990330219/serial.o ../../../../../ECE118/src/serial.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1990330219/timers.o: ../../../../../ECE118/src/timers.c  .generated_files/flags/default/78828d3771edc6f04dc9ea25a6f7a3c7d7352304 .generated_files/flags/default/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/1990330219" 
	@${RM} ${OBJECTDIR}/_ext/1990330219/timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1990330219/timers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"C:/ECE118/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1990330219/timers.o.d" -o ${OBJECTDIR}/_ext/1990330219/timers.o ../../../../../ECE118/src/timers.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
else
${OBJECTDIR}/Part1.o: Part1.c  .generated_files/flags/default/b0b5621f944eb778a9f1b860607ab931d83ab1d2 .generated_files/flags/default/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Part1.o.d 
	@${RM} ${OBJECTDIR}/Part1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"C:/ECE118/include" -Wall -MP -MMD -MF "${OBJECTDIR}/Part1.o.d" -o ${OBJECTDIR}/Part1.o Part1.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1990330219/AD.o: ../../../../../ECE118/src/AD.c  .generated_files/flags/default/11e84e4ca959b2881053242395414984485cb650 .generated_files/flags/default/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/1990330219" 
	@${RM} ${OBJECTDIR}/_ext/1990330219/AD.o.d 
	@${RM} ${OBJECTDIR}/_ext/1990330219/AD.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"C:/ECE118/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1990330219/AD.o.d" -o ${OBJECTDIR}/_ext/1990330219/AD.o ../../../../../ECE118/src/AD.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1990330219/BOARD.o: ../../../../../ECE118/src/BOARD.c  .generated_files/flags/default/110a804368f4e7d489ce19fd50f67e3db251a30c .generated_files/flags/default/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/1990330219" 
	@${RM} ${OBJECTDIR}/_ext/1990330219/BOARD.o.d 
	@${RM} ${OBJECTDIR}/_ext/1990330219/BOARD.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"C:/ECE118/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1990330219/BOARD.o.d" -o ${OBJECTDIR}/_ext/1990330219/BOARD.o ../../../../../ECE118/src/BOARD.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1990330219/IO_Ports.o: ../../../../../ECE118/src/IO_Ports.c  .generated_files/flags/default/cf2fa06d1eb224bcdc4051768932565c87e040 .generated_files/flags/default/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/1990330219" 
	@${RM} ${OBJECTDIR}/_ext/1990330219/IO_Ports.o.d 
	@${RM} ${OBJECTDIR}/_ext/1990330219/IO_Ports.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"C:/ECE118/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1990330219/IO_Ports.o.d" -o ${OBJECTDIR}/_ext/1990330219/IO_Ports.o ../../../../../ECE118/src/IO_Ports.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1990330219/LED.o: ../../../../../ECE118/src/LED.c  .generated_files/flags/default/660168c1ad3f0d74d91daa6e4f4554d73693579a .generated_files/flags/default/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/1990330219" 
	@${RM} ${OBJECTDIR}/_ext/1990330219/LED.o.d 
	@${RM} ${OBJECTDIR}/_ext/1990330219/LED.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"C:/ECE118/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1990330219/LED.o.d" -o ${OBJECTDIR}/_ext/1990330219/LED.o ../../../../../ECE118/src/LED.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1990330219/pwm.o: ../../../../../ECE118/src/pwm.c  .generated_files/flags/default/218453700a453305ad39bfa790bbd6beb7df866b .generated_files/flags/default/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/1990330219" 
	@${RM} ${OBJECTDIR}/_ext/1990330219/pwm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1990330219/pwm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"C:/ECE118/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1990330219/pwm.o.d" -o ${OBJECTDIR}/_ext/1990330219/pwm.o ../../../../../ECE118/src/pwm.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1990330219/RC_Servo.o: ../../../../../ECE118/src/RC_Servo.c  .generated_files/flags/default/970c0db8bc715d2c12a099dfcd1b1835abba598 .generated_files/flags/default/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/1990330219" 
	@${RM} ${OBJECTDIR}/_ext/1990330219/RC_Servo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1990330219/RC_Servo.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"C:/ECE118/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1990330219/RC_Servo.o.d" -o ${OBJECTDIR}/_ext/1990330219/RC_Servo.o ../../../../../ECE118/src/RC_Servo.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1990330219/roach.o: ../../../../../ECE118/src/roach.c  .generated_files/flags/default/67b93529a288a5e31a47bb5721213fe01adc6f84 .generated_files/flags/default/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/1990330219" 
	@${RM} ${OBJECTDIR}/_ext/1990330219/roach.o.d 
	@${RM} ${OBJECTDIR}/_ext/1990330219/roach.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"C:/ECE118/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1990330219/roach.o.d" -o ${OBJECTDIR}/_ext/1990330219/roach.o ../../../../../ECE118/src/roach.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1990330219/serial.o: ../../../../../ECE118/src/serial.c  .generated_files/flags/default/186429e9fd00da7b1465fb81ae1c0255e69b48b5 .generated_files/flags/default/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/1990330219" 
	@${RM} ${OBJECTDIR}/_ext/1990330219/serial.o.d 
	@${RM} ${OBJECTDIR}/_ext/1990330219/serial.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"C:/ECE118/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1990330219/serial.o.d" -o ${OBJECTDIR}/_ext/1990330219/serial.o ../../../../../ECE118/src/serial.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1990330219/timers.o: ../../../../../ECE118/src/timers.c  .generated_files/flags/default/ac31a378b0b01791be314b9b94f336eda75d677b .generated_files/flags/default/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/1990330219" 
	@${RM} ${OBJECTDIR}/_ext/1990330219/timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1990330219/timers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"C:/ECE118/include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1990330219/timers.o.d" -o ${OBJECTDIR}/_ext/1990330219/timers.o ../../../../../ECE118/src/timers.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
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
