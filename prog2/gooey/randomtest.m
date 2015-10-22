function varargout = randomtest(varargin)
% RANDOMTEST MATLAB code for randomtest.fig
%      RANDOMTEST, by itself, creates a new RANDOMTEST or raises the existing
%      singleton*.
%
%      H = RANDOMTEST returns the handle to a new RANDOMTEST or the handle to
%      the existing singleton*.
%
%      RANDOMTEST('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in RANDOMTEST.M with the given input arguments.
%
%      RANDOMTEST('Property','Value',...) creates a new RANDOMTEST or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before randomtest_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to randomtest_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help randomtest

% Last Modified by GUIDE v2.5 22-Oct-2015 00:04:42

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @randomtest_OpeningFcn, ...
                   'gui_OutputFcn',  @randomtest_OutputFcn, ...
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


% --- Executes just before randomtest is made visible.
function randomtest_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to randomtest (see VARARGIN)

% Choose default command line output for randomtest
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes randomtest wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = randomtest_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes during object creation, after setting all properties.
function text11_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
