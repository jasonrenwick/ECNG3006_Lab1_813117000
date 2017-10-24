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
OUTPUT_SUFFIX=cof
DEBUGGABLE_SUFFIX=cof
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/Lab1_q7b.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=cof
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/Lab1_q7b.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=
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
SOURCEFILES_QUOTED_IF_SPACED=custom_lcd_files/busyxlcd.c custom_lcd_files/openxlcd.c custom_lcd_files/putrxlcd.c custom_lcd_files/putsxlcd.c custom_lcd_files/readaddr.c custom_lcd_files/readdata.c custom_lcd_files/setcgram.c custom_lcd_files/setddram.c custom_lcd_files/wcmdxlcd.c custom_lcd_files/writdata.c lab1.asm lab1asm.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/custom_lcd_files/busyxlcd.o ${OBJECTDIR}/custom_lcd_files/openxlcd.o ${OBJECTDIR}/custom_lcd_files/putrxlcd.o ${OBJECTDIR}/custom_lcd_files/putsxlcd.o ${OBJECTDIR}/custom_lcd_files/readaddr.o ${OBJECTDIR}/custom_lcd_files/readdata.o ${OBJECTDIR}/custom_lcd_files/setcgram.o ${OBJECTDIR}/custom_lcd_files/setddram.o ${OBJECTDIR}/custom_lcd_files/wcmdxlcd.o ${OBJECTDIR}/custom_lcd_files/writdata.o ${OBJECTDIR}/lab1.o ${OBJECTDIR}/lab1asm.o
POSSIBLE_DEPFILES=${OBJECTDIR}/custom_lcd_files/busyxlcd.o.d ${OBJECTDIR}/custom_lcd_files/openxlcd.o.d ${OBJECTDIR}/custom_lcd_files/putrxlcd.o.d ${OBJECTDIR}/custom_lcd_files/putsxlcd.o.d ${OBJECTDIR}/custom_lcd_files/readaddr.o.d ${OBJECTDIR}/custom_lcd_files/readdata.o.d ${OBJECTDIR}/custom_lcd_files/setcgram.o.d ${OBJECTDIR}/custom_lcd_files/setddram.o.d ${OBJECTDIR}/custom_lcd_files/wcmdxlcd.o.d ${OBJECTDIR}/custom_lcd_files/writdata.o.d ${OBJECTDIR}/lab1.o.d ${OBJECTDIR}/lab1asm.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/custom_lcd_files/busyxlcd.o ${OBJECTDIR}/custom_lcd_files/openxlcd.o ${OBJECTDIR}/custom_lcd_files/putrxlcd.o ${OBJECTDIR}/custom_lcd_files/putsxlcd.o ${OBJECTDIR}/custom_lcd_files/readaddr.o ${OBJECTDIR}/custom_lcd_files/readdata.o ${OBJECTDIR}/custom_lcd_files/setcgram.o ${OBJECTDIR}/custom_lcd_files/setddram.o ${OBJECTDIR}/custom_lcd_files/wcmdxlcd.o ${OBJECTDIR}/custom_lcd_files/writdata.o ${OBJECTDIR}/lab1.o ${OBJECTDIR}/lab1asm.o

# Source Files
SOURCEFILES=custom_lcd_files/busyxlcd.c custom_lcd_files/openxlcd.c custom_lcd_files/putrxlcd.c custom_lcd_files/putsxlcd.c custom_lcd_files/readaddr.c custom_lcd_files/readdata.c custom_lcd_files/setcgram.c custom_lcd_files/setddram.c custom_lcd_files/wcmdxlcd.c custom_lcd_files/writdata.c lab1.asm lab1asm.c


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
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/Lab1_q7b.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=18F452
MP_PROCESSOR_OPTION_LD=18f452
MP_LINKER_DEBUG_OPTION=  -u_DEBUGSTACK
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/lab1.o: lab1.asm  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/lab1.o.d 
	@${RM} ${OBJECTDIR}/lab1.o 
	@${FIXDEPS} dummy.d -e "${OBJECTDIR}/lab1.err" $(SILENT) -c ${MP_AS} $(MP_EXTRA_AS_PRE) -d__DEBUG -d__MPLAB_DEBUGGER_SIMULATOR=1 -q -p$(MP_PROCESSOR_OPTION)  -l\"${OBJECTDIR}/lab1.lst\" -e\"${OBJECTDIR}/lab1.err\" $(ASM_OPTIONS)  -o\"${OBJECTDIR}/lab1.o\" \"lab1.asm\"
	@${DEP_GEN} -d "${OBJECTDIR}/lab1.o"
	@${FIXDEPS} "${OBJECTDIR}/lab1.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
else
${OBJECTDIR}/lab1.o: lab1.asm  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/lab1.o.d 
	@${RM} ${OBJECTDIR}/lab1.o 
	@${FIXDEPS} dummy.d -e "${OBJECTDIR}/lab1.err" $(SILENT) -c ${MP_AS} $(MP_EXTRA_AS_PRE) -q -p$(MP_PROCESSOR_OPTION)  -l\"${OBJECTDIR}/lab1.lst\" -e\"${OBJECTDIR}/lab1.err\" $(ASM_OPTIONS)  -o\"${OBJECTDIR}/lab1.o\" \"lab1.asm\"
	@${DEP_GEN} -d "${OBJECTDIR}/lab1.o"
	@${FIXDEPS} "${OBJECTDIR}/lab1.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/custom_lcd_files/busyxlcd.o: custom_lcd_files/busyxlcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/custom_lcd_files" 
	@${RM} ${OBJECTDIR}/custom_lcd_files/busyxlcd.o.d 
	@${RM} ${OBJECTDIR}/custom_lcd_files/busyxlcd.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/custom_lcd_files/busyxlcd.o   custom_lcd_files/busyxlcd.c 
	@${DEP_GEN} -d ${OBJECTDIR}/custom_lcd_files/busyxlcd.o 
	@${FIXDEPS} "${OBJECTDIR}/custom_lcd_files/busyxlcd.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/custom_lcd_files/openxlcd.o: custom_lcd_files/openxlcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/custom_lcd_files" 
	@${RM} ${OBJECTDIR}/custom_lcd_files/openxlcd.o.d 
	@${RM} ${OBJECTDIR}/custom_lcd_files/openxlcd.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/custom_lcd_files/openxlcd.o   custom_lcd_files/openxlcd.c 
	@${DEP_GEN} -d ${OBJECTDIR}/custom_lcd_files/openxlcd.o 
	@${FIXDEPS} "${OBJECTDIR}/custom_lcd_files/openxlcd.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/custom_lcd_files/putrxlcd.o: custom_lcd_files/putrxlcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/custom_lcd_files" 
	@${RM} ${OBJECTDIR}/custom_lcd_files/putrxlcd.o.d 
	@${RM} ${OBJECTDIR}/custom_lcd_files/putrxlcd.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/custom_lcd_files/putrxlcd.o   custom_lcd_files/putrxlcd.c 
	@${DEP_GEN} -d ${OBJECTDIR}/custom_lcd_files/putrxlcd.o 
	@${FIXDEPS} "${OBJECTDIR}/custom_lcd_files/putrxlcd.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/custom_lcd_files/putsxlcd.o: custom_lcd_files/putsxlcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/custom_lcd_files" 
	@${RM} ${OBJECTDIR}/custom_lcd_files/putsxlcd.o.d 
	@${RM} ${OBJECTDIR}/custom_lcd_files/putsxlcd.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/custom_lcd_files/putsxlcd.o   custom_lcd_files/putsxlcd.c 
	@${DEP_GEN} -d ${OBJECTDIR}/custom_lcd_files/putsxlcd.o 
	@${FIXDEPS} "${OBJECTDIR}/custom_lcd_files/putsxlcd.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/custom_lcd_files/readaddr.o: custom_lcd_files/readaddr.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/custom_lcd_files" 
	@${RM} ${OBJECTDIR}/custom_lcd_files/readaddr.o.d 
	@${RM} ${OBJECTDIR}/custom_lcd_files/readaddr.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/custom_lcd_files/readaddr.o   custom_lcd_files/readaddr.c 
	@${DEP_GEN} -d ${OBJECTDIR}/custom_lcd_files/readaddr.o 
	@${FIXDEPS} "${OBJECTDIR}/custom_lcd_files/readaddr.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/custom_lcd_files/readdata.o: custom_lcd_files/readdata.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/custom_lcd_files" 
	@${RM} ${OBJECTDIR}/custom_lcd_files/readdata.o.d 
	@${RM} ${OBJECTDIR}/custom_lcd_files/readdata.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/custom_lcd_files/readdata.o   custom_lcd_files/readdata.c 
	@${DEP_GEN} -d ${OBJECTDIR}/custom_lcd_files/readdata.o 
	@${FIXDEPS} "${OBJECTDIR}/custom_lcd_files/readdata.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/custom_lcd_files/setcgram.o: custom_lcd_files/setcgram.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/custom_lcd_files" 
	@${RM} ${OBJECTDIR}/custom_lcd_files/setcgram.o.d 
	@${RM} ${OBJECTDIR}/custom_lcd_files/setcgram.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/custom_lcd_files/setcgram.o   custom_lcd_files/setcgram.c 
	@${DEP_GEN} -d ${OBJECTDIR}/custom_lcd_files/setcgram.o 
	@${FIXDEPS} "${OBJECTDIR}/custom_lcd_files/setcgram.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/custom_lcd_files/setddram.o: custom_lcd_files/setddram.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/custom_lcd_files" 
	@${RM} ${OBJECTDIR}/custom_lcd_files/setddram.o.d 
	@${RM} ${OBJECTDIR}/custom_lcd_files/setddram.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/custom_lcd_files/setddram.o   custom_lcd_files/setddram.c 
	@${DEP_GEN} -d ${OBJECTDIR}/custom_lcd_files/setddram.o 
	@${FIXDEPS} "${OBJECTDIR}/custom_lcd_files/setddram.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/custom_lcd_files/wcmdxlcd.o: custom_lcd_files/wcmdxlcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/custom_lcd_files" 
	@${RM} ${OBJECTDIR}/custom_lcd_files/wcmdxlcd.o.d 
	@${RM} ${OBJECTDIR}/custom_lcd_files/wcmdxlcd.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/custom_lcd_files/wcmdxlcd.o   custom_lcd_files/wcmdxlcd.c 
	@${DEP_GEN} -d ${OBJECTDIR}/custom_lcd_files/wcmdxlcd.o 
	@${FIXDEPS} "${OBJECTDIR}/custom_lcd_files/wcmdxlcd.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/custom_lcd_files/writdata.o: custom_lcd_files/writdata.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/custom_lcd_files" 
	@${RM} ${OBJECTDIR}/custom_lcd_files/writdata.o.d 
	@${RM} ${OBJECTDIR}/custom_lcd_files/writdata.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/custom_lcd_files/writdata.o   custom_lcd_files/writdata.c 
	@${DEP_GEN} -d ${OBJECTDIR}/custom_lcd_files/writdata.o 
	@${FIXDEPS} "${OBJECTDIR}/custom_lcd_files/writdata.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/lab1asm.o: lab1asm.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/lab1asm.o.d 
	@${RM} ${OBJECTDIR}/lab1asm.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/lab1asm.o   lab1asm.c 
	@${DEP_GEN} -d ${OBJECTDIR}/lab1asm.o 
	@${FIXDEPS} "${OBJECTDIR}/lab1asm.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
else
${OBJECTDIR}/custom_lcd_files/busyxlcd.o: custom_lcd_files/busyxlcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/custom_lcd_files" 
	@${RM} ${OBJECTDIR}/custom_lcd_files/busyxlcd.o.d 
	@${RM} ${OBJECTDIR}/custom_lcd_files/busyxlcd.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/custom_lcd_files/busyxlcd.o   custom_lcd_files/busyxlcd.c 
	@${DEP_GEN} -d ${OBJECTDIR}/custom_lcd_files/busyxlcd.o 
	@${FIXDEPS} "${OBJECTDIR}/custom_lcd_files/busyxlcd.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/custom_lcd_files/openxlcd.o: custom_lcd_files/openxlcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/custom_lcd_files" 
	@${RM} ${OBJECTDIR}/custom_lcd_files/openxlcd.o.d 
	@${RM} ${OBJECTDIR}/custom_lcd_files/openxlcd.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/custom_lcd_files/openxlcd.o   custom_lcd_files/openxlcd.c 
	@${DEP_GEN} -d ${OBJECTDIR}/custom_lcd_files/openxlcd.o 
	@${FIXDEPS} "${OBJECTDIR}/custom_lcd_files/openxlcd.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/custom_lcd_files/putrxlcd.o: custom_lcd_files/putrxlcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/custom_lcd_files" 
	@${RM} ${OBJECTDIR}/custom_lcd_files/putrxlcd.o.d 
	@${RM} ${OBJECTDIR}/custom_lcd_files/putrxlcd.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/custom_lcd_files/putrxlcd.o   custom_lcd_files/putrxlcd.c 
	@${DEP_GEN} -d ${OBJECTDIR}/custom_lcd_files/putrxlcd.o 
	@${FIXDEPS} "${OBJECTDIR}/custom_lcd_files/putrxlcd.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/custom_lcd_files/putsxlcd.o: custom_lcd_files/putsxlcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/custom_lcd_files" 
	@${RM} ${OBJECTDIR}/custom_lcd_files/putsxlcd.o.d 
	@${RM} ${OBJECTDIR}/custom_lcd_files/putsxlcd.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/custom_lcd_files/putsxlcd.o   custom_lcd_files/putsxlcd.c 
	@${DEP_GEN} -d ${OBJECTDIR}/custom_lcd_files/putsxlcd.o 
	@${FIXDEPS} "${OBJECTDIR}/custom_lcd_files/putsxlcd.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/custom_lcd_files/readaddr.o: custom_lcd_files/readaddr.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/custom_lcd_files" 
	@${RM} ${OBJECTDIR}/custom_lcd_files/readaddr.o.d 
	@${RM} ${OBJECTDIR}/custom_lcd_files/readaddr.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/custom_lcd_files/readaddr.o   custom_lcd_files/readaddr.c 
	@${DEP_GEN} -d ${OBJECTDIR}/custom_lcd_files/readaddr.o 
	@${FIXDEPS} "${OBJECTDIR}/custom_lcd_files/readaddr.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/custom_lcd_files/readdata.o: custom_lcd_files/readdata.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/custom_lcd_files" 
	@${RM} ${OBJECTDIR}/custom_lcd_files/readdata.o.d 
	@${RM} ${OBJECTDIR}/custom_lcd_files/readdata.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/custom_lcd_files/readdata.o   custom_lcd_files/readdata.c 
	@${DEP_GEN} -d ${OBJECTDIR}/custom_lcd_files/readdata.o 
	@${FIXDEPS} "${OBJECTDIR}/custom_lcd_files/readdata.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/custom_lcd_files/setcgram.o: custom_lcd_files/setcgram.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/custom_lcd_files" 
	@${RM} ${OBJECTDIR}/custom_lcd_files/setcgram.o.d 
	@${RM} ${OBJECTDIR}/custom_lcd_files/setcgram.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/custom_lcd_files/setcgram.o   custom_lcd_files/setcgram.c 
	@${DEP_GEN} -d ${OBJECTDIR}/custom_lcd_files/setcgram.o 
	@${FIXDEPS} "${OBJECTDIR}/custom_lcd_files/setcgram.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/custom_lcd_files/setddram.o: custom_lcd_files/setddram.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/custom_lcd_files" 
	@${RM} ${OBJECTDIR}/custom_lcd_files/setddram.o.d 
	@${RM} ${OBJECTDIR}/custom_lcd_files/setddram.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/custom_lcd_files/setddram.o   custom_lcd_files/setddram.c 
	@${DEP_GEN} -d ${OBJECTDIR}/custom_lcd_files/setddram.o 
	@${FIXDEPS} "${OBJECTDIR}/custom_lcd_files/setddram.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/custom_lcd_files/wcmdxlcd.o: custom_lcd_files/wcmdxlcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/custom_lcd_files" 
	@${RM} ${OBJECTDIR}/custom_lcd_files/wcmdxlcd.o.d 
	@${RM} ${OBJECTDIR}/custom_lcd_files/wcmdxlcd.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/custom_lcd_files/wcmdxlcd.o   custom_lcd_files/wcmdxlcd.c 
	@${DEP_GEN} -d ${OBJECTDIR}/custom_lcd_files/wcmdxlcd.o 
	@${FIXDEPS} "${OBJECTDIR}/custom_lcd_files/wcmdxlcd.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/custom_lcd_files/writdata.o: custom_lcd_files/writdata.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/custom_lcd_files" 
	@${RM} ${OBJECTDIR}/custom_lcd_files/writdata.o.d 
	@${RM} ${OBJECTDIR}/custom_lcd_files/writdata.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/custom_lcd_files/writdata.o   custom_lcd_files/writdata.c 
	@${DEP_GEN} -d ${OBJECTDIR}/custom_lcd_files/writdata.o 
	@${FIXDEPS} "${OBJECTDIR}/custom_lcd_files/writdata.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/lab1asm.o: lab1asm.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/lab1asm.o.d 
	@${RM} ${OBJECTDIR}/lab1asm.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/lab1asm.o   lab1asm.c 
	@${DEP_GEN} -d ${OBJECTDIR}/lab1asm.o 
	@${FIXDEPS} "${OBJECTDIR}/lab1asm.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/Lab1_q7b.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    lab1_i.lkr
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_LD} $(MP_EXTRA_LD_PRE) "lab1_i.lkr"  -p$(MP_PROCESSOR_OPTION_LD)  -w -x -u_DEBUG -m"${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map"  -z__MPLAB_BUILD=1  -u_CRUNTIME -z__MPLAB_DEBUG=1 -z__MPLAB_DEBUGGER_SIMULATOR=1 $(MP_LINKER_DEBUG_OPTION) -l ${MP_CC_DIR}\\..\\lib  -o dist/${CND_CONF}/${IMAGE_TYPE}/Lab1_q7b.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}   
else
dist/${CND_CONF}/${IMAGE_TYPE}/Lab1_q7b.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   lab1_i.lkr
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_LD} $(MP_EXTRA_LD_PRE) "lab1_i.lkr"  -p$(MP_PROCESSOR_OPTION_LD)  -w  -m"${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map"  -z__MPLAB_BUILD=1  -u_CRUNTIME -l ${MP_CC_DIR}\\..\\lib  -o dist/${CND_CONF}/${IMAGE_TYPE}/Lab1_q7b.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}   
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/default
	${RM} -r dist/default

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
