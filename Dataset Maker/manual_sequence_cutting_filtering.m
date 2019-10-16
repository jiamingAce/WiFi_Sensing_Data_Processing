clear;
load('G:\无源感知研究\数据采集\2019_07_18\实验室.mat');
sample_num = size(csi_train,1);

for i=1:sample_num
    amplitude = csi_train{i,1}';%对序列进行转置
    amplitude = wifi_butterworth_function(amplitude);%进行滤波
    [amplitude,PS]=mapminmax(amplitude);%归一化处理
    csi_train{i,1}=amplitude;%写回序列
end

csi_label = categorical(csi_label(:,1));