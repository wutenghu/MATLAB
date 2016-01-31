%simulation piN
%Ä£ÄâÍ¶µã´ÎÊý´Ó10Wµ½1000W
TestNum=1e5:1e5:2e7;
%Ä£ÄâµÄ´ÎÊý
simuNum=length(TestNum);
%Éú³É[-1,1]*[-1,1]ÉÏ·þ´Ó¾ùÔÈ·Ö²¼µÄËæ»úÊý
%randÎª[0,1]ÉÏ¾ùÔÈ·Ö²¼£¬2*(a-0.5£©µÄ·½Ê½½«Æð¸Ä±äÎª
%[-1,1]ÉÏµÄ¾ùÔÈ·Ö²¼
for k=1:simuNum
    X=2*(rand(TestNum(k),2)-0.5);
    %Âäµ½Ô°ÄÚµÄµãµÄÊýÁ¿
    CircleNum=0;
    %½øÐÐÍ¶µãÄ£Äâ
    for i=1:TestNum(k)
        if X(i,1)^2+X(i,2)^2<=1
            CircleNum=CircleNum+1;
        end
    end
    %¼ÆËã£¨Ô²ÖÜÂÊ£©PiÖµ
    SPi(k)=4*CircleNum/TestNum(k);
end
plot(SPi)
xlabel('TestNum(10e5)')
ylabel('pi')
