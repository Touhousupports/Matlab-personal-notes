T=Untitled;
%此处输入要使用的table变量名，记得把table改成n*2的形式
TT=table2timetable(T,'Rowtimes','data');
%在data处输入table内时间序列的变量名称
candle(TT);
%画蜡烛图
index=rsindex(TT);
plot(index,Time,index.RelativeStrengthIndex);
%画RSI图
[MACDLine,signalLine]=macd(TT);
plot(MACDLine.Time,MACDLine.Close,signalLine.Time,signalLine.Close);
legend('MACDLine','NinePerMA');
%画MACD图