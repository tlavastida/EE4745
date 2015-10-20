function varargout = prog2main(varargin)
% PROG2MAIN MATLAB code for prog2main.fig
%      PROG2MAIN, by itself, creates a new PROG2MAIN or raises the existing
%      singleton*.
%
%      H = PROG2MAIN returns the handle to a new PROG2MAIN or the handle to
%      the existing singleton*.
%
%      PROG2MAIN('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PROG2MAIN.M with the given input arguments.
%
%      PROG2MAIN('Property','Value',...) creates a new PROG2MAIN or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before prog2main_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to prog2main_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help prog2main

% Last Modified by GUIDE v2.5 19-Oct-2015 16:05:35

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @prog2main_OpeningFcn, ...
                   'gui_OutputFcn',  @prog2main_OutputFcn, ...
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


% --- Executes just before prog2main is made visible.
function prog2main_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to prog2main (see VARARGIN)

% Choose default command line output for prog2main
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes prog2main wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = prog2main_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in square1.
function square1_Callback(hObject, eventdata, handles)
% hObject    handle to square1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if (isequal(get(hObject,'BackgroundColor'),[0 0 0]))
    set(hObject, 'BackgroundColor', 'w');
    %set inputs(1) to -1
else
    set(hObject, 'BackgroundColor', 'k');
    %set inputs(1) to 1
end


% --- Executes on button press in square2.
function square2_Callback(hObject, eventdata, handles)
% hObject    handle to square2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in square3.
function square3_Callback(hObject, eventdata, handles)
% hObject    handle to square3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in square4.
function square4_Callback(hObject, eventdata, handles)
% hObject    handle to square4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in square5.
function square5_Callback(hObject, eventdata, handles)
% hObject    handle to square5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in square6.
function square6_Callback(hObject, eventdata, handles)
% hObject    handle to square6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in square7.
function square7_Callback(hObject, eventdata, handles)
% hObject    handle to square7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in square8.
function square8_Callback(hObject, eventdata, handles)
% hObject    handle to square8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in square9.
function square9_Callback(hObject, eventdata, handles)
% hObject    handle to square9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in square10.
function square10_Callback(hObject, eventdata, handles)
% hObject    handle to square10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in square11.
function square11_Callback(hObject, eventdata, handles)
% hObject    handle to square11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in square12.
function square12_Callback(hObject, eventdata, handles)
% hObject    handle to square12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in square13.
function square13_Callback(hObject, eventdata, handles)
% hObject    handle to square13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in square14.
function square14_Callback(hObject, eventdata, handles)
% hObject    handle to square14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in square15.
function square15_Callback(hObject, eventdata, handles)
% hObject    handle to square15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in square16.
function square16_Callback(hObject, eventdata, handles)
% hObject    handle to square16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in square17.
function square17_Callback(hObject, eventdata, handles)
% hObject    handle to square17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in square18.
function square18_Callback(hObject, eventdata, handles)
% hObject    handle to square18 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in square19.
function square19_Callback(hObject, eventdata, handles)
% hObject    handle to square19 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in square20.
function square20_Callback(hObject, eventdata, handles)
% hObject    handle to square20 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in square21.
function square21_Callback(hObject, eventdata, handles)
% hObject    handle to square21 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in square22.
function square22_Callback(hObject, eventdata, handles)
% hObject    handle to square22 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in square23.
function square23_Callback(hObject, eventdata, handles)
% hObject    handle to square23 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in square24.
function square24_Callback(hObject, eventdata, handles)
% hObject    handle to square24 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in square25.
function square25_Callback(hObject, eventdata, handles)
% hObject    handle to square25 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in square26.
function square26_Callback(hObject, eventdata, handles)
% hObject    handle to square26 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in square27.
function square27_Callback(hObject, eventdata, handles)
% hObject    handle to square27 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in square28.
function square28_Callback(hObject, eventdata, handles)
% hObject    handle to square28 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in square29.
function square29_Callback(hObject, eventdata, handles)
% hObject    handle to square29 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in square30.
function square30_Callback(hObject, eventdata, handles)
% hObject    handle to square30 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in togglebutton1.
function togglebutton1_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of togglebutton1
