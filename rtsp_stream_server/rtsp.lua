
require("string")

config.record.settsenable(false)
config.record.setflvenable(false)
config.record.setmp4enable(false)

print("��rtsp.lua�ļ����������NVR");
_RECORD_TYPE="nvr"
_RECORD_DIR="D:/video/record/"
_RECORD_DUR=1600

config.record.settype(_RECORD_TYPE)
config.record.setduration(_RECORD_DUR)

config.record.setmp4enable(true)
config.record.setmp4path(_RECORD_DIR)




function OnStarted(   )
	print("��rtsp.lua�ļ������RTSPֱ��Դ");
	-----������һ��ʾ��,������Ӷ��
	streampull.add("chid",1,"rtsp://user:pass@192.168.1.101/ch1");


	return 0 ;
end

function OnStoped(   )

	return 0 ;
end
