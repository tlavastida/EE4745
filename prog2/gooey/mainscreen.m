% mainscreen.m
% Use Ctrl+F to find specific objects in the following format:
% WORDTOFIND: Description
%
% PIXLS: Changing pixels to black or white under Manual Occlusion
% TESTING: Buttons that run Hebb and Pseudoinverse rules
% POPPOP: Any needed pop-up menus
%

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

% Last Modified by GUIDE v2.5 21-Oct-2015 01:59:36

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
if (isequal(get(hObject,'BackgroundColor'),[0 0 0]))
    set(hObject, 'BackgroundColor', 'w');
    %set inputs(1) to -1
else
    set(hObject, 'BackgroundColor', 'k');
    %set inputs(1) to 1
end


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if (isequal(get(hObject,'BackgroundColor'),[0 0 0]))
    set(hObject, 'BackgroundColor', 'w');
    %set inputs(1) to -1
else
    set(hObject, 'BackgroundColor', 'k');
    %set inputs(1) to 1
end

% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if (isequal(get(hObject,'BackgroundColor'),[0 0 0]))
    set(hObject, 'BackgroundColor', 'w');
    %set inputs(1) to -1
else
    set(hObject, 'BackgroundColor', 'k');
    %set inputs(1) to 1
end

% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if (isequal(get(hObject,'BackgroundColor'),[0 0 0]))
    set(hObject, 'BackgroundColor', 'w');
    %set inputs(1) to -1
else
    set(hObject, 'BackgroundColor', 'k');
    %set inputs(1) to 1
end

% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if (isequal(get(hObject,'BackgroundColor'),[0 0 0]))
    set(hObject, 'BackgroundColor', 'w');
    %set inputs(1) to -1
else
    set(hObject, 'BackgroundColor', 'k');
    %set inputs(1) to 1
end

% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if (isequal(get(hObject,'BackgroundColor'),[0 0 0]))
    set(hObject, 'BackgroundColor', 'w');
    %set inputs(1) to -1
else
    set(hObject, 'BackgroundColor', 'k');
    %set inputs(1) to 1
end

% --- Executes on button press in pushbutton7.
function pushbutton7_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if (isequal(get(hObject,'BackgroundColor'),[0 0 0]))
    set(hObject, 'BackgroundColor', 'w');
    %set inputs(1) to -1
else
    set(hObject, 'BackgroundColor', 'k');
    %set inputs(1) to 1
end

% --- Executes on button press in pushbutton8.
function pushbutton8_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if (isequal(get(hObject,'BackgroundColor'),[0 0 0]))
    set(hObject, 'BackgroundColor', 'w');
    %set inputs(1) to -1
else
    set(hObject, 'BackgroundColor', 'k');
    %set inputs(1) to 1
end

% --- Executes on button press in pushbutton9.
function pushbutton9_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if (isequal(get(hObject,'BackgroundColor'),[0 0 0]))
    set(hObject, 'BackgroundColor', 'w');
    %set inputs(1) to -1
else
    set(hObject, 'BackgroundColor', 'k');
    %set inputs(1) to 1
end

% --- Executes on button press in pushbutton10.
function pushbutton10_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if (isequal(get(hObject,'BackgroundColor'),[0 0 0]))
    set(hObject, 'BackgroundColor', 'w');
    %set inputs(1) to -1
else
    set(hObject, 'BackgroundColor', 'k');
    %set inputs(1) to 1
end

% --- Executes on button press in pushbutton11.
function pushbutton11_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if (isequal(get(hObject,'BackgroundColor'),[0 0 0]))
    set(hObject, 'BackgroundColor', 'w');
    %set inputs(1) to -1
else
    set(hObject, 'BackgroundColor', 'k');
    %set inputs(1) to 1
end

% --- Executes on button press in pushbutton12.
function pushbutton12_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if (isequal(get(hObject,'BackgroundColor'),[0 0 0]))
    set(hObject, 'BackgroundColor', 'w');
    %set inputs(1) to -1
else
    set(hObject, 'BackgroundColor', 'k');
    %set inputs(1) to 1
end

% --- Executes on button press in pushbutton13.
function pushbutton13_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if (isequal(get(hObject,'BackgroundColor'),[0 0 0]))
    set(hObject, 'BackgroundColor', 'w');
    %set inputs(1) to -1
else
    set(hObject, 'BackgroundColor', 'k');
    %set inputs(1) to 1
end

% --- Executes on button press in pushbutton14.
function pushbutton14_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if (isequal(get(hObject,'BackgroundColor'),[0 0 0]))
    set(hObject, 'BackgroundColor', 'w');
    %set inputs(1) to -1
else
    set(hObject, 'BackgroundColor', 'k');
    %set inputs(1) to 1
end

% --- Executes on button press in pushbutton15.
function pushbutton15_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if (isequal(get(hObject,'BackgroundColor'),[0 0 0]))
    set(hObject, 'BackgroundColor', 'w');
    %set inputs(1) to -1
else
    set(hObject, 'BackgroundColor', 'k');
    %set inputs(1) to 1
end

% --- Executes on button press in pushbutton16.
function pushbutton16_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if (isequal(get(hObject,'BackgroundColor'),[0 0 0]))
    set(hObject, 'BackgroundColor', 'w');
    %set inputs(1) to -1
else
    set(hObject, 'BackgroundColor', 'k');
    %set inputs(1) to 1
end

% --- Executes on button press in pushbutton17.
function pushbutton17_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if (isequal(get(hObject,'BackgroundColor'),[0 0 0]))
    set(hObject, 'BackgroundColor', 'w');
    %set inputs(1) to -1
else
    set(hObject, 'BackgroundColor', 'k');
    %set inputs(1) to 1
end

% --- Executes on button press in pushbutton18.
function pushbutton18_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton18 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if (isequal(get(hObject,'BackgroundColor'),[0 0 0]))
    set(hObject, 'BackgroundColor', 'w');
    %set inputs(1) to -1
else
    set(hObject, 'BackgroundColor', 'k');
    %set inputs(1) to 1
end

% --- Executes on button press in pushbutton19.
function pushbutton19_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton19 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if (isequal(get(hObject,'BackgroundColor'),[0 0 0]))
    set(hObject, 'BackgroundColor', 'w');
    %set inputs(1) to -1
else
    set(hObject, 'BackgroundColor', 'k');
    %set inputs(1) to 1
end

% --- Executes on button press in pushbutton20.
function pushbutton20_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton20 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if (isequal(get(hObject,'BackgroundColor'),[0 0 0]))
    set(hObject, 'BackgroundColor', 'w');
    %set inputs(1) to -1
else
    set(hObject, 'BackgroundColor', 'k');
    %set inputs(1) to 1
end

% --- Executes on button press in pushbutton21.
function pushbutton21_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton21 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if (isequal(get(hObject,'BackgroundColor'),[0 0 0]))
    set(hObject, 'BackgroundColor', 'w');
    %set inputs(1) to -1
else
    set(hObject, 'BackgroundColor', 'k');
    %set inputs(1) to 1
end

% --- Executes on button press in pushbutton22.
function pushbutton22_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton22 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if (isequal(get(hObject,'BackgroundColor'),[0 0 0]))
    set(hObject, 'BackgroundColor', 'w');
    %set inputs(1) to -1
else
    set(hObject, 'BackgroundColor', 'k');
    %set inputs(1) to 1
end

% --- Executes on button press in pushbutton23.
function pushbutton23_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton23 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if (isequal(get(hObject,'BackgroundColor'),[0 0 0]))
    set(hObject, 'BackgroundColor', 'w');
    %set inputs(1) to -1
else
    set(hObject, 'BackgroundColor', 'k');
    %set inputs(1) to 1
end

% --- Executes on button press in pushbutton24.
function pushbutton24_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton24 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if (isequal(get(hObject,'BackgroundColor'),[0 0 0]))
    set(hObject, 'BackgroundColor', 'w');
    %set inputs(1) to -1
else
    set(hObject, 'BackgroundColor', 'k');
    %set inputs(1) to 1
end

% --- Executes on button press in pushbutton25.
function pushbutton25_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton25 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if (isequal(get(hObject,'BackgroundColor'),[0 0 0]))
    set(hObject, 'BackgroundColor', 'w');
    %set inputs(1) to -1
else
    set(hObject, 'BackgroundColor', 'k');
    %set inputs(1) to 1
end

% --- Executes on button press in pushbutton26.
function pushbutton26_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton26 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if (isequal(get(hObject,'BackgroundColor'),[0 0 0]))
    set(hObject, 'BackgroundColor', 'w');
    %set inputs(1) to -1
else
    set(hObject, 'BackgroundColor', 'k');
    %set inputs(1) to 1
end

% --- Executes on button press in pushbutton27.
function pushbutton27_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton27 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if (isequal(get(hObject,'BackgroundColor'),[0 0 0]))
    set(hObject, 'BackgroundColor', 'w');
    %set inputs(1) to -1
else
    set(hObject, 'BackgroundColor', 'k');
    %set inputs(1) to 1
end

% --- Executes on button press in pushbutton28.
function pushbutton28_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton28 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if (isequal(get(hObject,'BackgroundColor'),[0 0 0]))
    set(hObject, 'BackgroundColor', 'w');
    %set inputs(1) to -1
else
    set(hObject, 'BackgroundColor', 'k');
    %set inputs(1) to 1
end

% --- Executes on button press in pushbutton29.
function pushbutton29_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton29 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if (isequal(get(hObject,'BackgroundColor'),[0 0 0]))
    set(hObject, 'BackgroundColor', 'w');
    %set inputs(1) to -1
else
    set(hObject, 'BackgroundColor', 'k');
    %set inputs(1) to 1
end

% --- Executes on button press in pushbutton30.
function pushbutton30_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton30 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if (isequal(get(hObject,'BackgroundColor'),[0 0 0]))
    set(hObject, 'BackgroundColor', 'w');
    %set inputs(1) to -1
else
    set(hObject, 'BackgroundColor', 'k');
    %set inputs(1) to 1
end

% --- TESTING --- %


% --- Executes on button press in manual_test.
function manual_test_Callback(hObject, eventdata, handles)
% hObject    handle to manual_test (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in random_test.
function random_test_Callback(hObject, eventdata, handles)
% hObject    handle to random_test (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- POPPOP --- %


% --- Executes on selection change in choose_network.
function choose_network_Callback(hObject, eventdata, handles)
% hObject    handle to choose_network (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

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
