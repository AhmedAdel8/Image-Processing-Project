function varargout = untitled(varargin)
% UNTITLED MATLAB code for untitled.fig
%      UNTITLED, by itself, creates a new UNTITLED or raises the existing
%      singleton*.
%
%      H = UNTITLED returns the handle to a new UNTITLED or the handle to
%      the existing singleton*.
%
%      UNTITLED('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in UNTITLED.M with the given input arguments.
%
%      UNTITLED('Property','Value',...) creates a new UNTITLED or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before untitled_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to untitled_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help untitled

% Last Modified by GUIDE v2.5 19-Dec-2023 03:19:30

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @untitled_OpeningFcn, ...
                   'gui_OutputFcn',  @untitled_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end 

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before untitled is made visible.
function untitled_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to untitled (see VARARGIN)

% Choose default command line output for untitled
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes untitled wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = untitled_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in root.
function root_Callback(hObject, eventdata, handles)
% hObject    handle to root (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=getappdata(0,'a');
a_root=root(a);
axes(handles.axes4);
imshow(a_root);
setappdata(0,a_root);

% --- Executes on button press in powers.
function powers_Callback(hObject, eventdata, handles)
% hObject    handle to powers (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=getappdata(0,'a');
a_powers=powers(a,2);%gamma>1>>>dark , gamma<1>>>bright
axes(handles.axes4);
imshow(a_powers);
setappdata(0,a_powers);

% --- Executes on button press in negative.
function negative_Callback(hObject, eventdata, handles)
% hObject    handle to negative (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=getappdata(0,'a');
neg=a;
axes(handles.axes4)
negative(neg)

% --- Executes on button press in LOG.
function LOG_Callback(hObject, eventdata, handles)
% hObject    handle to LOG (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=getappdata(0,'a');
a_LOG=LOG(a);
axes(handles.axes4);
imshow(a_LOG)
setappdata(0,a_LOG)


% --- Executes on button press in bluring.
function bluring_Callback(hObject, eventdata, handles)
% hObject    handle to bluring (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=getappdata(0,'a');
a_bluring=bluring(a);
axes(handles.axes4);
imshow(a_bluring);
setappdata(0,a_bluring)

% --- Executes on button press in in_LOG_exp.
function in_LOG_exp_Callback(hObject, eventdata, handles)
% hObject    handle to in_LOG_exp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=getappdata(0,'a');
in_log=a;
axes(handles.axes4)
in_LOG_exp(in_log)
% --- Executes on button press in Gamma_equeation.
function Gamma_equeation_Callback(hObject, eventdata, handles)
% hObject    handle to Gamma_equeation (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=getappdata(0,'a');  
a_Gamma_equeation=Gamma_equeation(a,1);% ??? ???? ??gamma?????? ???? ?????
axes(handles.axes4);
imshow(a_Gamma_equeation)
setappdata(0,a_Gamma_equeation)

% --- Executes on button press in correlation.
function correlation_Callback(hObject, eventdata, handles)
% hObject    handle to correlation (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=getappdata(0,'a');
corr=a;
axes(handles.axes4)
correlation(corr)


% --- Executes on button press in RGBTOGRAY.
function RGBTOGRAY_Callback(hObject, eventdata, handles)
% hObject    handle to RGBTOGRAY (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=getappdata(0,'a');  
a_gray=RGBTOGRAY(a,1);
axes(handles.axes4);
imshow(a_gray)
setappdata(0,a_gray);


% --- Executes on button press in graytobinary.
function graytobinary_Callback(hObject, eventdata, handles)
% hObject    handle to graytobinary (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=getappdata(0,'a');
a_binary=graytobinary(a,127);
axes(handles.axes4);
imshow(a_binary)
setappdata(0,a_binary);

% --- Executes on button press in RgbToBin.
function RgbToBin_Callback(hObject, eventdata, handles)
% hObject    handle to RgbToBin (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=getappdata(0,'a');
a_binary=RgbToBin(a);
axes(handles.axes4);
imshow(a_binary)
setappdata(0,a_binary);


% --- Executes on button press in Import_Image.
function Import_Image_Callback(hObject, eventdata, handles)
% hObject    handle to Import_Image (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=uigetfile({'*.jpg;*.png;*.bmp;*.tif', 'Image Files (*.jpg, *.png, *.bmp, *.tif)'})
filename=a;
setappdata(0,'filename',filename);
a=imread(a);
axes(handles.axes5);
imshow(a);
setappdata(0,'a',a);
%setappdata(0,'filename',a);
plot(handles.axes5,'a');


% --- Executes on button press in Reset.
function Reset_Callback(hObject, eventdata, handles)
% hObject    handle to Reset (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=getappdata(0,'a');
imshow(a);

% --- Executes on button press in Exit.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
msgbox('Thanks for using image processing Tool')
pause(1);
close();
close();

% --- Executes on button press in sharpening_HV.
function sharpening_HV_Callback(hObject, eventdata, handles)
% hObject    handle to sharpening_HV (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=getappdata(0,'a');  
a_sharpening_HV=sharpening_HV(a,1);
axes(handles.axes4);
imshow(a_sharpening_HV)
setappdata(0,a_sharpening_HV)

% --- Executes on button press in sharpening_digonal.
function sharpening_digonal_Callback(hObject, eventdata, handles)
% hObject    handle to sharpening_digonal (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=getappdata(0,'a');  
a_sharpening_digonal=sharpening_digonal(a,1);
axes(handles.axes4);
imshow(a_sharpening_digonal)
setappdata(0,a_sharpening_digonal)

% --- Executes on button press in median_filter.
function median_filter_Callback(hObject, eventdata, handles)
% hObject    handle to median_filter (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=getappdata(0,'a');
a_median_filter=median_filter(a);
axes(handles.axes4);
imshow(a_median_filter)
setappdata(0,a_median_filter)

% --- Executes on button press in max_filter.
function max_filter_Callback(hObject, eventdata, handles)
% hObject    handle to max_filter (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=getappdata(0,'a');
a_max_filter=max_filter(a);
axes(handles.axes4);
imshow(a_max_filter)
setappdata(0,a_max_filter)

% --- Executes on button press in ideal.
function ideal_Callback(hObject, eventdata, handles)
% hObject    handle to ideal (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=getappdata(0,'a');  
option = getappdata(gcbf, 'SelectedOption'); 
if (strcmp(option,'I_high'))
    a_ideal=ideal(a,22,1);
else 
    a_ideal=ideal(a,22,0);
end 
axes(handles.axes4);
imshow(a_ideal);
setappdata(0,a_ideal);



% --- Executes on button press in butterworth.
function butterworth_Callback(hObject, eventdata, handles)
% hObject    handle to butterworth (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=getappdata(0,'a');  
option = getappdata(gcbf, 'SelectedOption'); 
if (strcmp(option,'B_high'))
    a_butterworth=butterworth(a,22,1);
else 
    a_butterworth=butterworth(a,22,0);
end 
axes(handles.axes4);
imshow(a_butterworth);
setappdata(0,a_butterworth);

% --- Executes on button press in gaussian.
function gaussian_Callback(hObject, eventdata, handles)
% hObject    handle to gaussian (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=getappdata(0,'a');  
option = getappdata(gcbf, 'SelectedOption');

if (strcmp(option,'G_high'))
    a_gaussian=gaussian(a,22,1);
else 
    a_gaussian=gaussian(a,22,0);
end 

axes(handles.axes4);
imshow(a_gaussian)
setappdata(0,a_gaussian);


% --- Executes on button press in H_edge_detection.
function H_edge_detection_Callback(hObject, eventdata, handles)
% hObject    handle to H_edge_detection (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=getappdata(0,'a');
a_H_edge_detection=H_edge_detection(a);
axes(handles.axes4);
imshow(a_H_edge_detection)
setappdata(0,a_H_edge_detection)

% --- Executes on button press in v_edge_detection.
function v_edge_detection_Callback(hObject, eventdata, handles)
% hObject    handle to v_edge_detection (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=getappdata(0,'a');
a_v_edge_detection=v_edge_detection(a);
axes(handles.axes4);
imshow(a_v_edge_detection)
setappdata(0,a_v_edge_detection)

% --- Executes on button press in l_D_Edge_Detection.
function l_D_Edge_Detection_Callback(hObject, eventdata, handles)
% hObject    handle to l_D_Edge_Detection (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=getappdata(0,'a');
a_l_D_Edge_Detection=l_D_Edge_Detection(a);
axes(handles.axes4);
imshow(a_l_D_Edge_Detection)
setappdata(0,a_l_D_Edge_Detection)

% --- Executes on button press in R_D_Edge_Detection.
function R_D_Edge_Detection_Callback(hObject, eventdata, handles)
% hObject    handle to R_D_Edge_Detection (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=getappdata(0,'a');
a_R_D_Edge_Detection=R_D_Edge_Detection(a);
axes(handles.axes4);
imshow(a_R_D_Edge_Detection)
setappdata(0,a_R_D_Edge_Detection)

% --- Executes on button press in contrast_stretching.
function contrast_stretching_Callback(hObject, eventdata, handles)
% hObject    handle to contrast_stretching (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=getappdata(0,'a');
a_contrast_stretching=contrast_stretching(a);
axes(handles.axes4);
imshow(a_contrast_stretching)
setappdata(0,a_contrast_stretching)% ???? gray

% --- Executes on button press in gray_histogram.
function gray_histogram_Callback(hObject, eventdata, handles)
% hObject    handle to gray_histogram (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=getappdata(0,'a');
histo_gray=a;
axes(handles.axes4)
gray_histogram(histo_gray)


% --- Executes on button press in histogram_equalization.
function histogram_equalization_Callback(hObject, eventdata, handles)
% hObject    handle to histogram_equalization (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=getappdata(0,'a');
histo=a;
axes(handles.axes4)
histogram_equalization(histo)

% --- Executes on but   ton press in rgb_gray_histogram.
function rgb_gray_histogram_Callback(hObject, eventdata, handles)
% hObject    handle to rgb_gray_histogram (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=getappdata(0,'a');
histo=a;
axes(handles.axes4)
rgb_gray_histogram(histo)


% --- Executes on button press in saltandpepper.
function saltandpepper_Callback(hObject, eventdata, handles)
% hObject    handle to saltandpepper (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=getappdata(0,'a');  
a_saltandpepper=saltandpepper(a,0.5,0.3);
axes(handles.axes4);
imshow(a_saltandpepper)
setappdata(0,a_saltandpepper);

% --- Executes on button press in noise_gussian.
function noise_gussian_Callback(hObject, eventdata, handles)
% hObject    handle to noise_gussian (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=getappdata(0,'a');  
a_noise_gussian=noise_gussian(a,10,20);
axes(handles.axes4);
imshow(a_noise_gussian)
setappdata(0,a_noise_gussian);


% --- Executes on button press in noise_uniform.
function noise_uniform_Callback(hObject, eventdata, handles)
% hObject    handle to noise_uniform (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=getappdata(0,'a');  
a_noise_uniform=noise_uniform(a,10,25);
axes(handles.axes4);
imshow(a_noise_uniform)
setappdata(0,a_noise_uniform);


% --- Executes on button press in Exponential_Noise.
function Exponential_Noise_Callback(hObject, eventdata, handles)
% hObject    handle to Exponential_Noise (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=getappdata(0,'a');  
a_Exponential_Noise=Exponential_Noise(a,30);
axes(handles.axes4);
imshow(a_Exponential_Noise)
setappdata(0,a_Exponential_Noise);


% --- Executes when selected object is changed in uibuttongroup1.
function uibuttongroup1_SelectionChangedFcn(hObject, eventdata, handles)
% hObject    handle to the selected object in uibuttongroup1 
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
setappdata(gcbf, 'SelectedOption', get(eventdata.NewValue, 'Tag'));


% --- Executes when selected object is changed in uibuttongroup3.
function uibuttongroup3_SelectionChangedFcn(hObject, eventdata, handles)
% hObject    handle to the selected object in uibuttongroup3 
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
setappdata(gcbf, 'SelectedOption', get(eventdata.NewValue, 'Tag'));


% --- Executes when selected object is changed in uibuttongroup5.
function uibuttongroup5_SelectionChangedFcn(hObject, eventdata, handles)
% hObject    handle to the selected object in uibuttongroup5 
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
setappdata(gcbf, 'SelectedOption', get(eventdata.NewValue, 'Tag'));


% --- Executes when selected object is changed in uibuttongroup4.
function uibuttongroup4_SelectionChangedFcn(hObject, eventdata, handles)
% hObject    handle to the selected object in uibuttongroup4 
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
setappdata(gcbf, 'SelectedOption', get(eventdata.NewValue, 'Tag'));


% --- Executes on button press in I_low.
function I_low_Callback(hObject, eventdata, handles)
% hObject    handle to I_low (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of I_low


% --- Executes on button press in I_high.
function I_high_Callback(hObject, eventdata, handles)
% hObject    handle to I_high (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of I_high


% --- Executes on button press in fourier_transform_n.
function fourier_transform_n_Callback(hObject, eventdata, handles)
% hObject    handle to fourier_transform_n (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=getappdata(0,'a');  
a_FFT=fourier_transform_n(a);
axes(handles.axes4);
imshow(a_FFT)
setappdata(0,a_FFT);


% --- Executes on button press in B_high.
function B_high_Callback(hObject, eventdata, handles)
% hObject    handle to B_high (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of B_high


% --- Executes on button press in G_high.
function G_high_Callback(hObject, eventdata, handles)
% hObject    handle to G_high (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
