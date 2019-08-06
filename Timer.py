#!/usr/bin/env python
# -*- coding: utf-8 -*-
# -*- Python -*-

"""
 @file Timer.py
 @brief measuring time
 @date $Date$


"""
import sys
import time
sys.path.append(".")

# Import RTM module
import RTC
import OpenRTM_aist


# Import Service implementation class
# <rtc-template block="service_impl">

# </rtc-template>

# Import Service stub modules
# <rtc-template block="consumer_import">
# </rtc-template>


# This module's spesification
# <rtc-template block="module_spec">
timer_spec = ["implementation_id", "Timer", 
		 "type_name",         "Timer", 
		 "description",       "measuring time", 
		 "version",           "1.0.0", 
		 "vendor",            "m.toyoda", 
		 "category",          "Timer", 
		 "activity_type",     "STATIC", 
		 "max_instance",      "1", 
		 "language",          "Python", 
		 "lang_type",         "SCRIPT",
		 "conf.default.play_time", "120",

		 "conf.__widget__.play_time", "text",

         "conf.__type__.play_time", "int",

		 ""]
# </rtc-template>

##
# @class Timer
# @brief measuring time
# 
# コントローラーからのonスイッチでtimerスタート
# 終わったらコントローラーに指示送る
# 
# 
class Timer(OpenRTM_aist.DataFlowComponentBase):
	
	##
	# @brief constructor
	# @param manager Maneger Object
	# 
	def __init__(self, manager):
		OpenRTM_aist.DataFlowComponentBase.__init__(self, manager)

		"""
		timer start
		"""
		self._d_in = OpenRTM_aist.instantiateDataType(RTC.TimedBoolean)
		self._inIn = OpenRTM_aist.InPort("in", self._d_in)
		"""
		stop signal
		"""
		self._d_stop = OpenRTM_aist.instantiateDataType(RTC.TimedBoolean)
		self._stopOut = OpenRTM_aist.OutPort("stop", self._d_stop)
		"""
		time
		"""
		self._d_status = OpenRTM_aist.instantiateDataType(RTC.TimedLong)
		self._statusOut = OpenRTM_aist.OutPort("status", self._d_status)


		


		# initialize of configuration-data.
		# <rtc-template block="init_conf_param">
		"""
		
		 - Name:  play_time
		 - DefaultValue: 120
		"""
		self._play_time = [120]
		
		# </rtc-template>


		 
	##
	#
	# The initialize action (on CREATED->ALIVE transition)
	# formaer rtc_init_entry() 
	# 
	# @return RTC::ReturnCode_t
	# 
	#
	def onInitialize(self):
		# Bind variables and configuration variable
		self.bindParameter("play_time", self._play_time, "120")
		
		# Set InPort buffers
		self.addInPort("in",self._inIn)
		
		# Set OutPort buffers
		self.addOutPort("stop",self._stopOut)
		self.addOutPort("status",self._statusOut)
		
		# Set service provider to Ports
		
		# Set service consumers to Ports
		
		# Set CORBA Service Ports
		
		return RTC.RTC_OK
	
	###
	## 
	## The finalize action (on ALIVE->END transition)
	## formaer rtc_exiting_entry()
	## 
	## @return RTC::ReturnCode_t
	#
	## 
	#def onFinalize(self):
	#
	#	return RTC.RTC_OK
	
	###
	##
	## The startup action when ExecutionContext startup
	## former rtc_starting_entry()
	## 
	## @param ec_id target ExecutionContext Id
	##
	## @return RTC::ReturnCode_t
	##
	##
	#def onStartup(self, ec_id):
	#
	#	return RTC.RTC_OK
	
	###
	##
	## The shutdown action when ExecutionContext stop
	## former rtc_stopping_entry()
	##
	## @param ec_id target ExecutionContext Id
	##
	## @return RTC::ReturnCode_t
	##
	##
	#def onShutdown(self, ec_id):
	#
	#	return RTC.RTC_OK
	
	##
	#
	# The activated action (Active state entry action)
	# former rtc_active_entry()
	#
	# @param ec_id target ExecutionContext Id
	# 
	# @return RTC::ReturnCode_t
	#
	#
	def onActivated(self, ec_id):
		self.game = True  # True until game start
		self.turn = True

		return RTC.RTC_OK
	
	##
	#
	# The deactivated action (Active state exit action)
	# former rtc_active_exit()
	#
	# @param ec_id target ExecutionContext Id
	#
	# @return RTC::ReturnCode_t
	#
	#
	def onDeactivated(self, ec_id):
	
		return RTC.RTC_OK
	
	##
	#
	# The execution action that is invoked periodically
	# former rtc_active_do()
	#
	# @param ec_id target ExecutionContext Id
	#
	# @return RTC::ReturnCode_t
	#
	#

	def down_timer(self, secs):
		for i in range(secs, -1, -1):
			sys.stdout.write("\r The time left: %d [sec]" %i)
			sys.stdout.flush()
			self._d_status = i
			self._statusOut.write()
			time.sleep(1)
		print("")
		print("finish!")
		print("=" * 10)


	def onExecute(self, ec_id):
		if self._inIn.isNew():
			self._in = self._inIn.read()

			if self.game and self._in != self.turn:
				#self._d_stop.data = False
				#self._stopOut.write()
				print("Hi")
				print("play time: %d [sec]" %self._play_time[0])
				self.rest_time = self._play_time[0]
				self.game = False
				self.down_timer(self.rest_time)
				self._d_stop.data = True
				self._stopOut.write()
				self.game = True
				self.turn = self._in

		return RTC.RTC_OK
	
	###
	##
	## The aborting action when main logic error occurred.
	## former rtc_aborting_entry()
	##
	## @param ec_id target ExecutionContext Id
	##
	## @return RTC::ReturnCode_t
	##
	##
	#def onAborting(self, ec_id):
	#
	#	return RTC.RTC_OK
	
	###
	##
	## The error action in ERROR state
	## former rtc_error_do()
	##
	## @param ec_id target ExecutionContext Id
	##
	## @return RTC::ReturnCode_t
	##
	##
	#def onError(self, ec_id):
	#
	#	return RTC.RTC_OK
	
	###
	##
	## The reset action that is invoked resetting
	## This is same but different the former rtc_init_entry()
	##
	## @param ec_id target ExecutionContext Id
	##
	## @return RTC::ReturnCode_t
	##
	##
	#def onReset(self, ec_id):
	#
	#	return RTC.RTC_OK
	
	###
	##
	## The state update action that is invoked after onExecute() action
	## no corresponding operation exists in OpenRTm-aist-0.2.0
	##
	## @param ec_id target ExecutionContext Id
	##
	## @return RTC::ReturnCode_t
	##

	##
	#def onStateUpdate(self, ec_id):
	#
	#	return RTC.RTC_OK
	
	###
	##
	## The action that is invoked when execution context's rate is changed
	## no corresponding operation exists in OpenRTm-aist-0.2.0
	##
	## @param ec_id target ExecutionContext Id
	##
	## @return RTC::ReturnCode_t
	##
	##
	#def onRateChanged(self, ec_id):
	#
	#	return RTC.RTC_OK
	



def TimerInit(manager):
    profile = OpenRTM_aist.Properties(defaults_str=timer_spec)
    manager.registerFactory(profile,
                            Timer,
                            OpenRTM_aist.Delete)

def MyModuleInit(manager):
    TimerInit(manager)

    # Create a component
    comp = manager.createComponent("Timer")

def main():
	mgr = OpenRTM_aist.Manager.init(sys.argv)
	mgr.setModuleInitProc(MyModuleInit)
	mgr.activateManager()
	mgr.runManager()

if __name__ == "__main__":
	main()

