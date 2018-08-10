function QMPlugin.Year(time)
	if time == null then
		time = os.time()
	end
	return os.date("*t", time).year
end

function QMPlugin.Month(time)
	if time == null then
		time = os.time()
	end
	return os.date("*t", time).month
end

function QMPlugin.Day(time)
	if time == null then
		time = os.time()
	end
	return os.date("*t", time).day
end

function QMPlugin.Hour(time)
	if time == null then
		time = os.time()
	end
	return os.date("*t", time).hour
end

function QMPlugin.Minute(time)
	if time == null then
		time = os.time()
	end
	return os.date("*t", time).min
end

function QMPlugin.Second(time)
	if time == null then
		time = os.time()
	end
	return os.date("*t", time).sec
end

function QMPlugin.WeekDay(time)
	if time == null then
		time = os.time()
	end
	--���չ���ϰ�ߣ�������һ��Ϊÿ�����ڵĵ�һ��
	weekday = os.date("*t", time).wday - 1
	if weekday == 0 then 
		weekday = 7
	end
	return weekday
end

function QMPlugin.YearDay(time)
	if time == null then
		time = os.time()
	end
	return os.date("*t", time).yday
end

function QMPlugin.Format(format, time)
	if time == null then
		time = os.time()
	end
	if format == null then
	--���չ���ϰ�ߣ�����Ĭ�ϸ�ʽ
		format = "%Y-%m-%d %H:%M:%S"
	end
	return os.date(format, time)
end

function QMPlugin.DateTimeToNumTimes(srcDateTime) 
	--�������ַ����н�ȡ��������ʱ���� 
	--�����޸ģ���ʱ����Ҫʱ����
	local Y = string.sub(srcDateTime,1,4) 
	local M = string.sub(srcDateTime,6,7) 
	local D = string.sub(srcDateTime,9,10) 
--	local H = string.sub(srcDateTime,9,10) 
--	local MM = string.sub(srcDateTime,11,12) 
--	local SS = string.sub(srcDateTime,13,14) 

	--������ʱ���ַ���ת���ɶ�Ӧ������ʱ�� 
--	local dt1 = {year=Y, month=M, day=D, hour=H,min=MM,sec=SS} 
	local dt1 = {year=Y, month=M, day=D}
		--���ﷵ�� ת����ʱ����ֵ��������һ�д��룩
	return os.time(dt1)
end