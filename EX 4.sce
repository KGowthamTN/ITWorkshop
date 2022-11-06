//Display your daily activities during work hour
clc
ch=input("Enter the current hour: ");
if (ch > 8) & (ch < 10) then
 disp("IT Workshop Class")
elseif (ch >= 10) & (ch < 12) then
 disp("DBMS Class")
elseif (ch >= 12) & (ch < 12.30) then
 disp("Lunch break")
elseif (ch > 12.30) & (ch <= 16) then
 disp("Software Engineering Class")
else
 disp("Free Time")
end
