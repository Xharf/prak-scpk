function varargout = CheckTheBest(varargin)
% CHECKTHEBEST MATLAB code for CheckTheBest.fig
%      CHECKTHEBEST, by itself, creates a new CHECKTHEBEST or raises the existing
%      singleton*.
%
%      H = CHECKTHEBEST returns the handle to a new CHECKTHEBEST or the handle to
%      the existing singleton*.
%
%      CHECKTHEBEST('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in CHECKTHEBEST.M with the given input arguments.
%
%      CHECKTHEBEST('Property','Value',...) creates a new CHECKTHEBEST or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before CheckTheBest_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to CheckTheBest_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help CheckTheBest

% Last Modified by GUIDE v2.5 22-Jun-2021 08:03:30

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @CheckTheBest_OpeningFcn, ...
                   'gui_OutputFcn',  @CheckTheBest_OutputFcn, ...
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


% --- Executes just before CheckTheBest is made visible.
function CheckTheBest_OpeningFcn(hObject, eventdata, handles, varargin)

opt = detectImportOptions('cwurData.csv');
opt.SelectedVariableNames = {
'national_rank', 'quality_of_education', 'alumni_employment', 'quality_of_faculty', 'publications', 'influence', 'citations', 'patents'
};

data = readtable('cwurData.csv', opt);
data = table2cell(data);
set(handles.datatable,'Data',data);


% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user datatable (see GUIDATA)
% varargin   command line arguments to CheckTheBest (see VARARGIN)

% Choose default command line output for CheckTheBest
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes CheckTheBest wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = CheckTheBest_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user datatable (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in check_button.
function check_button_Callback(hObject, eventdata, handles)
% hObject    handle to check_button (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user datatable (see GUIDATA)
[univ] = BestUniversity();

set(handles.answer,'String',univ);



