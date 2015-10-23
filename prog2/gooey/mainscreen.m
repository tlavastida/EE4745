% mainscreen.m
% Use Ctrl+F to find specific objects in the following format:
% WORDTOFIND: Description
%
% PIXLS: Changing pixels to black or white under Manual Occlusion
% TESTING: Buttons that run Hebb and Pseudoinverse rules
% POPPOP: Any needed pop-up menus
% 404ERROR: Error values that need to write numbers to a string after
%           calculation

function varargout = mainscreen(varargin)
% MAINSCREEN MATLAB code for mainscreen.fig
%      MAINSCREEN, by itself, creates a new MAINSCREEN or raises the existing
%      singleton*.
%
%      H = MAINSCREEN returns the handle to a new MAINSCREEN or the handle to
%      the existing singleton*.
%
%      MAINSCREEN('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in MAINSCREEN.M with the given input arguments.
%
%      MAINSCREEN('Property','Value',...) creates a new MAINSCREEN or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before mainscreen_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to mainscreen_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help mainscreen

% Last Modified by GUIDE v2.5 22-Oct-2015 00:17:16


% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @mainscreen_OpeningFcn, ...
                   'gui_OutputFcn',  @mainscreen_OutputFcn, ...
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


% --- Executes just before mainscreen is made visible.
function mainscreen_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to mainscreen (see VARARGIN)

%Set up global variables
global digits;
digits(:,:,1) = csvread('data/zero.csv');
digits(:,:,2) = csvread('data/one.csv');
digits(:,:,3) = csvread('data/two.csv');
digits(:,:,4) = csvread('data/three.csv');
digits(:,:,5) = csvread('data/four.csv');
digits(:,:,6) = csvread('data/five.csv');
digits(:,:,7) = csvread('data/six.csv');
<<<<<<< HEAD
digits(:,:,8) = csvread('data/BH.csv');
digits(:,:,9) = csvread('data/BK.csv');
digits(:,:,10) = csvread('data/DK.csv');
digits(:,:,11) = csvread('data/DL.csv');
digits(:,:,12) = csvread('data/JK.csv');
digits(:,:,13) = csvread('data/SR.csv');
digits(:,:,14) = csvread('data/TL.csv');
=======
>>>>>>> 8058ac1b78fef37c0e8c41d33baba9fc4fb500c7

global manual_occluded_input;
manual_occluded_input = -1*ones(30,1);

global range;
range = 1;

global test_vector;
<<<<<<< HEAD
test_vector = matrix_to_column(digits(:,:,1));
=======
test_vector = digits(:,:,1);
>>>>>>> 8058ac1b78fef37c0e8c41d33baba9fc4fb500c7

global num_noisy_pixels;
num_noisy_pixels = 2;

global num_trials;
num_trials = 1;

% Choose default command line output for mainscreen
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes mainscreen wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = mainscreen_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- PIXLS --- %


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global manual_occluded_input;

if (isequal(get(hObject,'BackgroundColor'),[0 0 0]))   
    set(hObject, 'BackgroundColor', 'w');
    manual_occluded_input(1) = -1;
else
    set(hObject, 'BackgroundColor', 'k');
    manual_occluded_input(1) = 1;
end

% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global manual_occluded_input;
if (isequal(get(hObject,'BackgroundColor'),[0 0 0]))
    set(hObject, 'BackgroundColor', 'w');
    manual_occluded_input(2) = -1;
else
    set(hObject, 'BackgroundColor', 'k');
    manual_occluded_input(2) = 1;
end

% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global manual_occluded_input;
if (isequal(get(hObject,'BackgroundColor'),[0 0 0]))
    set(hObject, 'BackgroundColor', 'w');
    manual_occluded_input(3) = -1;
else
    set(hObject, 'BackgroundColor', 'k');
    manual_occluded_input(3) = 1;
end


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global manual_occluded_input;
if (isequal(get(hObject,'BackgroundColor'),[0 0 0]))
    set(hObject, 'BackgroundColor', 'w');
    manual_occluded_input(4) = -1;
else
    set(hObject, 'BackgroundColor', 'k');
    manual_occluded_input(4) = 1;
end

% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global manual_occluded_input;
if (isequal(get(hObject,'BackgroundColor'),[0 0 0]))
    set(hObject, 'BackgroundColor', 'w');
    manual_occluded_input(5) = -1;
else
    set(hObject, 'BackgroundColor', 'k');
    manual_occluded_input(5) = 1;
end

% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global manual_occluded_input;
if (isequal(get(hObject,'BackgroundColor'),[0 0 0]))
    set(hObject, 'BackgroundColor', 'w');
    manual_occluded_input(6) = -1;
else
    set(hObject, 'BackgroundColor', 'k');
    manual_occluded_input(6) = 1;
end

% --- Executes on button press in pushbutton7.
function pushbutton7_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global manual_occluded_input;
if (isequal(get(hObject,'BackgroundColor'),[0 0 0]))
    set(hObject, 'BackgroundColor', 'w');
    manual_occluded_input(7) = -1;
else
    set(hObject, 'BackgroundColor', 'k');
    manual_occluded_input(7) = 1;
end

% --- Executes on button press in pushbutton8.
function pushbutton8_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global manual_occluded_input;
if (isequal(get(hObject,'BackgroundColor'),[0 0 0]))
    set(hObject, 'BackgroundColor', 'w');
    manual_occluded_input(8) = -1;
else
    set(hObject, 'BackgroundColor', 'k');
    manual_occluded_input(8) = 1;
end

% --- Executes on button press in pushbutton9.
function pushbutton9_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global manual_occluded_input;
if (isequal(get(hObject,'BackgroundColor'),[0 0 0]))
    set(hObject, 'BackgroundColor', 'w');
    manual_occluded_input(9) = -1;
else
    set(hObject, 'BackgroundColor', 'k');
    manual_occluded_input(9) = 1;
end

% --- Executes on button press in pushbutton10.
function pushbutton10_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global manual_occluded_input;
if (isequal(get(hObject,'BackgroundColor'),[0 0 0]))
    set(hObject, 'BackgroundColor', 'w');
    manual_occluded_input(10) = -1;
else
    set(hObject, 'BackgroundColor', 'k');
    manual_occluded_input(10) = 1;
end

% --- Executes on button press in pushbutton11.
function pushbutton11_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global manual_occluded_input;
if (isequal(get(hObject,'BackgroundColor'),[0 0 0]))
    set(hObject, 'BackgroundColor', 'w');
    manual_occluded_input(11) = -1;
else
    set(hObject, 'BackgroundColor', 'k');
    manual_occluded_input(11) = 1;
end

% --- Executes on button press in pushbutton12.
function pushbutton12_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global manual_occluded_input;
if (isequal(get(hObject,'BackgroundColor'),[0 0 0]))
    set(hObject, 'BackgroundColor', 'w');
    manual_occluded_input(12) = -1;
else
    set(hObject, 'BackgroundColor', 'k');
    manual_occluded_input(12) = 1;
end

% --- Executes on button press in pushbutton13.
function pushbutton13_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global manual_occluded_input;
if (isequal(get(hObject,'BackgroundColor'),[0 0 0]))
    set(hObject, 'BackgroundColor', 'w');
    manual_occluded_input(13) = -1;
else
    set(hObject, 'BackgroundColor', 'k');
    manual_occluded_input(13) = 1;
end

% --- Executes on button press in pushbutton14.
function pushbutton14_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global manual_occluded_input;
if (isequal(get(hObject,'BackgroundColor'),[0 0 0]))
    set(hObject, 'BackgroundColor', 'w');
    manual_occluded_input(14) = -1;
else
    set(hObject, 'BackgroundColor', 'k');
    manual_occluded_input(14) = 1;
end

% --- Executes on button press in pushbutton15.
function pushbutton15_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global manual_occluded_input;
if (isequal(get(hObject,'BackgroundColor'),[0 0 0]))
    set(hObject, 'BackgroundColor', 'w');
    manual_occluded_input(15) = -1;
else
    set(hObject, 'BackgroundColor', 'k');
    manual_occluded_input(15) = 1;
end

% --- Executes on button press in pushbutton16.
function pushbutton16_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global manual_occluded_input;
if (isequal(get(hObject,'BackgroundColor'),[0 0 0]))
    set(hObject, 'BackgroundColor', 'w');
    manual_occluded_input(16) = -1;
else
    set(hObject, 'BackgroundColor', 'k');
    manual_occluded_input(16) = 1;
end

% --- Executes on button press in pushbutton17.
function pushbutton17_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global manual_occluded_input;
if (isequal(get(hObject,'BackgroundColor'),[0 0 0]))
    set(hObject, 'BackgroundColor', 'w');
    manual_occluded_input(17) = -1;
else
    set(hObject, 'BackgroundColor', 'k');
    manual_occluded_input(17) = 1;
end

% --- Executes on button press in pushbutton18.
function pushbutton18_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton18 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global manual_occluded_input;
if (isequal(get(hObject,'BackgroundColor'),[0 0 0]))
    set(hObject, 'BackgroundColor', 'w');
    manual_occluded_input(18) = -1;
else
    set(hObject, 'BackgroundColor', 'k');
    manual_occluded_input(18) = 1;
end

% --- Executes on button press in pushbutton19.
function pushbutton19_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton19 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global manual_occluded_input;
if (isequal(get(hObject,'BackgroundColor'),[0 0 0]))
    set(hObject, 'BackgroundColor', 'w');
    manual_occluded_input(19) = -1;
else
    set(hObject, 'BackgroundColor', 'k');
    manual_occluded_input(19) = 1;
end

% --- Executes on button press in pushbutton20.
function pushbutton20_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton20 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global manual_occluded_input;
if (isequal(get(hObject,'BackgroundColor'),[0 0 0]))
    set(hObject, 'BackgroundColor', 'w');
    manual_occluded_input(20) = -1;
else
    set(hObject, 'BackgroundColor', 'k');
    manual_occluded_input(20) = 1;
end

% --- Executes on button press in pushbutton21.
function pushbutton21_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton21 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global manual_occluded_input;
if (isequal(get(hObject,'BackgroundColor'),[0 0 0]))
    set(hObject, 'BackgroundColor', 'w');
    manual_occluded_input(21) = -1;
else
    set(hObject, 'BackgroundColor', 'k');
    manual_occluded_input(21) = 1;
end

% --- Executes on button press in pushbutton22.
function pushbutton22_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton22 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global manual_occluded_input;
if (isequal(get(hObject,'BackgroundColor'),[0 0 0]))
    set(hObject, 'BackgroundColor', 'w');
    manual_occluded_input(22) = -1;
else
    set(hObject, 'BackgroundColor', 'k');
    manual_occluded_input(22) = 1;
end

% --- Executes on button press in pushbutton23.
function pushbutton23_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton23 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global manual_occluded_input;
if (isequal(get(hObject,'BackgroundColor'),[0 0 0]))
    set(hObject, 'BackgroundColor', 'w');
    manual_occluded_input(23) = -1;
else
    set(hObject, 'BackgroundColor', 'k');
    manual_occluded_input(23) = 1;
end

% --- Executes on button press in pushbutton24.
function pushbutton24_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton24 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global manual_occluded_input;
if (isequal(get(hObject,'BackgroundColor'),[0 0 0]))
    set(hObject, 'BackgroundColor', 'w');
    manual_occluded_input(24) = -1;
else
    set(hObject, 'BackgroundColor', 'k');
    manual_occluded_input(24) = 1;
end

% --- Executes on button press in pushbutton25.
function pushbutton25_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton25 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global manual_occluded_input;
if (isequal(get(hObject,'BackgroundColor'),[0 0 0]))
    set(hObject, 'BackgroundColor', 'w');
    manual_occluded_input(25) = -1;
else
    set(hObject, 'BackgroundColor', 'k');
    manual_occluded_input(25) = 1;
end

% --- Executes on button press in pushbutton26.
function pushbutton26_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton26 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global manual_occluded_input;
if (isequal(get(hObject,'BackgroundColor'),[0 0 0]))
    set(hObject, 'BackgroundColor', 'w');
    manual_occluded_input(26) = -1;
else
    set(hObject, 'BackgroundColor', 'k');
    manual_occluded_input(26) = 1;
end

% --- Executes on button press in pushbutton27.
function pushbutton27_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton27 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global manual_occluded_input;
if (isequal(get(hObject,'BackgroundColor'),[0 0 0]))
    set(hObject, 'BackgroundColor', 'w');
    manual_occluded_input(27) = -1;
else
    set(hObject, 'BackgroundColor', 'k');
    manual_occluded_input(27) = 1;
end

% --- Executes on button press in pushbutton28.
function pushbutton28_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton28 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global manual_occluded_input;
if (isequal(get(hObject,'BackgroundColor'),[0 0 0]))
    set(hObject, 'BackgroundColor', 'w');
    manual_occluded_input(28) = -1;
else
    set(hObject, 'BackgroundColor', 'k');
    manual_occluded_input(28) = 1;
end

% --- Executes on button press in pushbutton29.
function pushbutton29_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton29 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global manual_occluded_input;
if (isequal(get(hObject,'BackgroundColor'),[0 0 0]))
    set(hObject, 'BackgroundColor', 'w');
    manual_occluded_input(29) = -1;
else
    set(hObject, 'BackgroundColor', 'k');
    manual_occluded_input(29) = 1;
end

% --- Executes on button press in pushbutton30.
function pushbutton30_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton30 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global manual_occluded_input;
if (isequal(get(hObject,'BackgroundColor'),[0 0 0]))
    set(hObject, 'BackgroundColor', 'w');
    manual_occluded_input(30) = -1;
else
    set(hObject, 'BackgroundColor', 'k');
    manual_occluded_input(30) = 1;
end

% --- TESTING --- %


% --- Executes on button press in manual_test.
function manual_test_Callback(hObject, eventdata, handles)
% hObject    handle to manual_test (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global manual_occluded_input;
global range;
<<<<<<< HEAD
%global test_vector;
%global num_noisy_pixels;
%global num_trials;
global digits;

numrows = numel(digits(:,1,1));
numcols = numel(digits(1,:,1));

inputs = zeros((numrows*numcols),range);

if(range <= 6)
    for i = 1:range+1
        inputs(:,i) = matrix_to_column(digits(:,:,i));
    end
else
    for i = 8:14
        inputs(:,i-7) = matrix_to_column(digits(:,:,i));
    end
end

%create the weights
weights_hebb = hebb_rule(inputs,inputs);
weights_pseudo = pseudoinverse_rule(inputs,inputs);

%run the test
output_hebb = hardlims(weights_hebb*manual_occluded_input);
output_pseudo = hardlims(weights_pseudo*manual_occluded_input);

im_hebb = embiggen(column_to_matrix(output_hebb,5),20);
im_pseudo = embiggen(column_to_matrix(output_pseudo,5),20);

figure;
imshow(-1*im_hebb);
title('Hebb Rule Output');
figure;
imshow(-1*im_pseudo);
title('Pseudoinverse Rule Output');

=======
global test_vector;
global num_noisy_pixels;
global num_trials;
manual_occluded_input
range
test_vector
num_noisy_pixels
num_trials
>>>>>>> 8058ac1b78fef37c0e8c41d33baba9fc4fb500c7

% --- Executes on button press in random_test.
function random_test_Callback(hObject, eventdata, handles)
% hObject    handle to random_test (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global test_vector;
global num_noisy_pixels;
global num_trials;
global digits;
global range;

numrows = numel(digits(:,1,1));
numcols = numel(digits(1,:,1));

inputs = zeros((numrows*numcols),range);

<<<<<<< HEAD
if( range <= 6 ) %load numbers
    for i = 1:range+1
        inputs(:,i) = matrix_to_column(digits(:,:,i));
    end
else %load initials
    for i = 8:14
        inputs(:,i-7) = matrix_to_column(digits(:,:,i));
    end
=======
for i = 1:range+1
    inputs(:,i) = matrix_to_column(digits(:,:,i));
>>>>>>> 8058ac1b78fef37c0e8c41d33baba9fc4fb500c7
end

%create the weights
weights_hebb = hebb_rule(inputs,inputs);
weights_pseudo = pseudoinverse_rule(inputs,inputs);
%run the tests
num_err_hebb = 0;
num_err_pseudo = 0; 
for i = 1:num_trials
    noised = noise(test_vector, num_noisy_pixels);
<<<<<<< HEAD
    
    %Get network output
    output_hebb = hardlims(weights_hebb*noised);
    output_pseudo = hardlims(weights_pseudo*noised);
   
    %compare with target - test_vector
    if( ~isequal(output_hebb,test_vector) )
        num_err_hebb = num_err_hebb + 1;
    end
    if( ~isequal(output_pseudo,test_vector) )
        num_err_pseudo = num_err_pseudo + 1;
    end
   
=======
    num_err_hebb = num_err_hebb + hebb_error(test_vector, weights_hebb, matrix_to_column(noised));
    num_err_pseudo = num_err_pseudo + hebb_error(test_vector, weights_pseudo, matrix_to_column(noised));
>>>>>>> 8058ac1b78fef37c0e8c41d33baba9fc4fb500c7
end

percent_err_hebb = (num_err_hebb / num_trials) * 100;
percent_err_pseudo = (num_err_pseudo / num_trials) * 100;

<<<<<<< HEAD
set(handles.text15,'String',num2str(num_err_hebb));
set(handles.text9,'String',num2str(percent_err_hebb));
set(handles.text16,'String',num2str(num_err_pseudo));
set(handles.text10,'String',num2str(percent_err_pseudo));
=======
>>>>>>> 8058ac1b78fef37c0e8c41d33baba9fc4fb500c7

% --- POPPOP --- %


% --- Executes on selection change in choose_network.
function choose_network_Callback(hObject, eventdata, handles)
% hObject    handle to choose_network (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global range;

% Determine the selected data set.
str = get(hObject, 'String');
val = get(hObject,'Value');
% Set current data to the selected data set.
switch str{val};
<<<<<<< HEAD
    case '0-1' % User selects peaks.
        range = 1;
    case '0-2' % User selects membrane.
        range = 2;
    case '0-3' % User selects sinc.
        range = 3;
    case '0-4' % User selects peaks.
        range = 4;
    case '0-5' % User selects membrane.
        range = 5;
    case '0-6' % User selects sinc.
        range = 6; 
    case 'Initials'
        range = 7;
=======
case '0-1' % User selects peaks.
   range = 1;
case '0-2' % User selects membrane.
   range = 2;
case '0-3' % User selects sinc.
   range = 3;
case '0-4' % User selects peaks.
   range = 4;
case '0-5' % User selects membrane.
   range = 5;
case '0-6' % User selects sinc.
   range = 6; 
>>>>>>> 8058ac1b78fef37c0e8c41d33baba9fc4fb500c7
end
% Save the handles structure.
guidata(hObject,handles)

% Hints: contents = cellstr(get(hObject,'String')) returns choose_network contents as cell array
%        contents{get(hObject,'Value')} returns selected item from choose_network


% --- Executes during object creation, after setting all properties.
function choose_network_CreateFcn(hObject, eventdata, handles)
% hObject    handle to choose_network (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes on selection change in initial_digit.
function initial_digit_Callback(hObject, eventdata, handles)
% hObject    handle to initial_digit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns initial_digit contents as cell array
%        contents{get(hObject,'Value')} returns selected item from initial_digit
global test_vector;
global digits;
% Determine the selected data set.
str = get(hObject, 'String');
val = get(hObject,'Value');
% Set current data to the selected data set.
switch str{val};
    case '0'
<<<<<<< HEAD
        test_vector = matrix_to_column(digits(:,:,1));
    case '1' 
        test_vector = matrix_to_column(digits(:,:,2));
    case '2'
        test_vector = matrix_to_column(digits(:,:,3));
    case '3'
        test_vector = matrix_to_column(digits(:,:,4));
    case '4' 
        test_vector = matrix_to_column(digits(:,:,5));
    case '5' 
        test_vector = matrix_to_column(digits(:,:,6));
    case '6'
        test_vector = matrix_to_column(digits(:,:,7));
    case 'BH'
        test_vector = matrix_to_column(digits(:,:,8));
    case 'BK'
        test_vector = matrix_to_column(digits(:,:,9));
    case 'DK'
        test_vector = matrix_to_column(digits(:,:,10));
    case 'DL'
        test_vector = matrix_to_column(digits(:,:,11));
    case 'JK'
        test_vector = matrix_to_column(digits(:,:,12));
    case 'SR'
        test_vector = matrix_to_column(digits(:,:,13));
    case 'TL'
        test_vector = matrix_to_column(digits(:,:,14));
=======
        test_vector = digits(:,:,1);
    case '1' 
        test_vector = digits(:,:,2);
    case '2'
        test_vector = digits(:,:,3);
    case '3'
        test_vector = digits(:,:,4);
    case '4' 
        test_vector = digits(:,:,5);
    case '5' 
        test_vector = digits(:,:,6);
    case '6'
        test_vector = digits(:,:,7); 
>>>>>>> 8058ac1b78fef37c0e8c41d33baba9fc4fb500c7
end
% Save the handles structure.
guidata(hObject,handles)

% --- Executes during object creation, after setting all properties.
function initial_digit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to initial_digit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in noisy_pixels.
function noisy_pixels_Callback(hObject, eventdata, handles)
% hObject    handle to noisy_pixels (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns noisy_pixels contents as cell array
%        contents{get(hObject,'Value')} returns selected item from noisy_pixels
global num_noisy_pixels;
% Determine the selected data set.
str = get(hObject, 'String');
val = get(hObject,'Value');
% Set current data to the selected data set.
switch str{val};
    case '2'
        num_noisy_pixels = 2;
    case '4' 
        num_noisy_pixels = 4;
    case '6'
        num_noisy_pixels = 6;
end
% Save the handles structure.
guidata(hObject,handles)

% --- Executes during object creation, after setting all properties.
function noisy_pixels_CreateFcn(hObject, eventdata, handles)
% hObject    handle to noisy_pixels (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in number_of_trials.
function number_of_trials_Callback(hObject, eventdata, handles)
% hObject    handle to number_of_trials (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns number_of_trials contents as cell array
%        contents{get(hObject,'Value')} returns selected item from number_of_trials
% Determine the selected data set.

global num_trials;

str = get(hObject, 'String');
val = get(hObject,'Value');
% Set current data to the selected data set.
switch str{val};
    case '1'
        num_trials = 1;
    case '10' 
        num_trials = 10;
    case '20'
        num_trials = 20;
    case '30'
        num_trials = 30;
    case '50' 
        num_trials = 50;
end
% Save the handles structure.
guidata(hObject,handles)

% --- Executes during object creation, after setting all properties.
function number_of_trials_CreateFcn(hObject, eventdata, handles)
% hObject    handle to number_of_trials (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- 404ERROR --- %
