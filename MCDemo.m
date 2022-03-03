N=1000000;
x=rand(N,1);
y=rand(N,1);
count = 0;
for i=1:N
    if (x(i)-0.5)^2 + (y(i)-0.5)^2 <=0.25
        count = count + 1;
    end
end
II = find((x-0.5).^2 + (y-0.5).^2 <=0.25);
PI_2 = 4*length(II)/N;
PI = 4*count/N;
% 蒙特卡洛模拟 四分之一正方形的面积是r*r,正方形面积是r*r*4,而圆是r*r*PI，圆:正方形面积比PI/4
% 所以x-0.5 y-0.5的平方是点到圆心距离,半径是0.5,统计落在圆内的数量为圆面积,N约为正方形面积