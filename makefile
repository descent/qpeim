#############################################################################
# Makefile for building libqpeinput.so.1.0.0
# Generated by tmake at 11:55, 2003/08/14
#     Project: qpe_input
#    Template: lib
#############################################################################

####### Compiler, tools and options

CC	=	arm-linux-gcc
CXX	=	arm-linux-g++
CFLAGS	=	-pipe -Wall -W -O2 -fPIC -DNO_DEBUG
CXXFLAGS=	-pipe -DQWS -fno-exceptions -fno-rtti -Wall -W -O2 -fPIC -DNO_DEBUG
INCPATH	=	-I$(QTDIR)/include -I$(QPEDIR)/include
LINK	=	$(CXX)
LFLAGS	=	-shared -Wl,-soname,libqpeinput.so.1
LIBS	=	$(SUBLIBS) -L$(QPEDIR)/lib -L$(QTDIR)/lib -lm -lqpe -lqtopia -lqte
AR	=	arm-linux-ar cqs
RANLIB	=	
MOC	=	$(QTDIR)/bin/moc
UIC	=	$(QTDIR)/bin/uic

TAR	=	tar -cf
GZIP	=	gzip -9f

####### Files

HEADERS =	qpe_input_impl.h \
		qpe_input_w.h \
		input_handler.h \
		etphonetic_input.h \
		big5.h \
		et_phonetic.h \
		etchangjei_input.h \
		et_changjei.h\
		convertencode.h

SOURCES =	qpe_input_impl.cpp \
		qpe_input_w.cpp \
		input_handler.cpp \
		etphonetic_input.cpp \
		big5.cpp \
		et_phonetic.cpp \
		etchangjei_input.cpp \
		et_changjei.cpp\
		convertencode.cpp

OBJECTS =	qpe_input_impl.o \
		qpe_input_w.o \
		input_handler.o \
		etphonetic_input.o \
		big5.o \
		et_phonetic.o \
		etchangjei_input.o \
		et_changjei.o\
		convertencode.o
INTERFACES =	
UICDECLS =	
UICIMPLS =	
SRCMOC	=	moc_qpe_input_w.cpp
OBJMOC	=	moc_qpe_input_w.o
DIST	=	
TARGET	=	libqpeinput.so.1.0.0
TARGETA	=	$(QPEDIR)/plugins/inputmethods/libqpeinput.a
TARGETD	=	libqpeinput.so.1.0.0
TARGET0	=	libqpeinput.so
TARGET1	=	libqpeinput.so.1
TARGET2	=	libqpeinput.so.1.0
INTERFACE_DECL_PATH = .

####### Implicit rules

.SUFFIXES: .cpp .cxx .cc .C .c

.cpp.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o $@ $<

.cxx.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o $@ $<

.cc.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o $@ $<

.C.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o $@ $<

.c.o:
	$(CC) -c $(CFLAGS) $(INCPATH) -o $@ $<

####### Build rules


all: $(QPEDIR)/plugins/inputmethods/libqpeinput.so.1.0.0

$(QPEDIR)/plugins/inputmethods/libqpeinput.so.1.0.0: $(OBJECTS) $(OBJMOC) $(SUBLIBS) 
	-rm -f $(TARGET) $(TARGET0) $(TARGET1) $(TARGET2)
	$(LINK) $(LFLAGS) -o $(TARGETD) $(OBJECTS) $(OBJMOC) $(LIBS)
	-ln -s $(TARGET) $(TARGET0)
	-ln -s $(TARGET) $(TARGET1)
	-ln -s $(TARGET) $(TARGET2)
	-rm -f $(QPEDIR)/plugins/inputmethods/$(TARGET)
	-rm -f $(QPEDIR)/plugins/inputmethods/$(TARGET0)
	-rm -f $(QPEDIR)/plugins/inputmethods/$(TARGET1)
	-rm -f $(QPEDIR)/plugins/inputmethods/$(TARGET2)
	-mv $(TARGET) $(TARGET0) $(TARGET1) $(TARGET2) $(QPEDIR)/plugins/inputmethods/

staticlib: $(TARGETA)

$(TARGETA): $(UICDECLS) $(OBJECTS) $(OBJMOC) 
	-rm -f $(TARGETA)
	$(AR) $(TARGETA) $(OBJECTS) $(OBJMOC)

moc: $(SRCMOC)

tmake: makefile

makefile: qpe_input.pro
	tmake qpe_input.pro -o makefile

dist:
	$(TAR) qpe_input.tar qpe_input.pro $(SOURCES) $(HEADERS) $(INTERFACES) $(DIST)
	$(GZIP) qpe_input.tar

clean:
	-rm -f $(OBJECTS) $(OBJMOC) $(SRCMOC) $(UICIMPLS) $(UICDECLS) $(TARGET)
	-rm -f $(TARGET0) $(TARGET1) $(TARGET2) $(TARGETA)
	-rm -f *~ core

####### Sub-libraries


###### Combined headers


####### Compile

qpe_input_impl.o: qpe_input_impl.cpp \
		qpe_input_impl.h \
		qpe_input_w.h \
		input_handler.h

qpe_input_w.o: qpe_input_w.cpp \
		qpe_input_w.h \
		input_handler.h \
		etphonetic_input.h \
		et_phonetic.h \
		big5.h \
		etchangjei_input.h \
		et_changjei.h

input_handler.o: input_handler.cpp \
		input_handler.h \
		qpe_input_w.h

etphonetic_input.o: etphonetic_input.cpp \
		etphonetic_input.h \
		input_handler.h \
		et_phonetic.h \
		big5.h \
		qpe_input_w.h

big5.o: big5.cpp \
		big5.h

et_phonetic.o: et_phonetic.cpp \
		et_phonetic.h \
		big5.h

etchangjei_input.o: etchangjei_input.cpp \
		etchangjei_input.h \
		input_handler.h \
		qpe_input_w.h \
		et_changjei.h \
		big5.h

et_changjei.o: et_changjei.cpp \
		et_changjei.h \
		big5.h

moc_qpe_input_w.o: moc_qpe_input_w.cpp \
		qpe_input_w.h \
		input_handler.h

moc_qpe_input_w.cpp: qpe_input_w.h
	$(MOC) qpe_input_w.h -o moc_qpe_input_w.cpp

