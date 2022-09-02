function [peak_data,time_data,tot_ion_current,NumScans] = sort_data_mzml(filter,raw_dat)

    
    
    % Extract total ion current data and convert the unprocessed
    % raw data to arrays that contain the m/z and intensity for
    % each scan event into the variable apeaks. The time data for
    % each scan event is also extracted to the variable time.
    peak_data = cell(size(raw_dat,1),1);
    time_data = cell(size(raw_dat,1),1);
    NumScans = zeros(size(raw_dat,1),1);
    tot_ion_current = cell(length(raw_dat),1);
    
    for i = 1:length(raw_dat)
        linescan_data = raw_dat{i,:};
        %%NumScans(i)=length(linescan_data.scan);
        scanheaders = [linescan_data{:,4}]';
        rows = strcmp(scanheaders,filter);
        linescan_data = linescan_data(rows,:);

    
        peak_data{i} = linescan_data(:,1);
        time_data{i} = [linescan_data{:,2}];
        NumScans(i) = size(linescan_data,1);
        tot_ion_current{i} = [linescan_data{:,3}];
    end
    
end