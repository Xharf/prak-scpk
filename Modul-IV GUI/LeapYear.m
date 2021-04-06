function varargout = LeapYear(varargin)
% LEAPYEAR MATLAB code for LeapYear.fig
%      LEAPYEAR, by itself, creates a new LEAPYEAR or raises the existing
%      singleton*.
%
%      H = LEAPYEAR returns the handle to a new LEAPYEAR or the handle to
%      the existing singleton*.
%
%      LEAPYEAR('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in LEAPYEAR.M with the given input arguments.
%
%      LEAPYEAR('Property','Value',...) creates a new LEAPYEAR or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before LeapYear_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to LeapYear_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help LeapYear

% Last Modified by GUIDE v2.5 06-Apr-2021 12:08:34

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @LeapYear_OpeningFcn, ...
                   'gui_OutputFcn',  @LeapYear_OutputFcn, ...
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


% --- Executes just before LeapYear is made visible.
function LeapYear_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to LeapYear (see VARARGIN)

% Choose default command line output for LeapYear
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes LeapYear wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = LeapYear_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function yaer_Callback(hObject, eventdata, handles)
% hObject    handle to yaer (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of yaer as text
%        str2double(get(hObject,'String')) returns contents of yaer as a double


% --- Executes during object creation, after setting all properties.
function yaer_CreateFcn(hObject, eventdata, handles)
% hObject    handle to yaer (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in button1.
function button1_Callback(hObject, eventdata, handles)
% hObject    handle to button1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
year=str2double(get(handles.year,'string'));

if(cLeapYear(year) == true)
    set(handles.hasil,'string',"Leap Year!");
else
    set(handles.hasil,'string',"Not a Leap Year!");
end


function lp =cLeapYear(year)
   if mod(year,400)==0
     lp = true;
     return;
   end
   if mod(year,100)==0
     lp = false;
     return;
   end
   if mod(year,4)==0
       lp = true;
       return; 
   end
   
   lp = false;
   return;



function year_Callback(hObject, eventdata, handles)
% hObject    handle to year (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of year as text
%        str2double(get(hObject,'String')) returns contents of year as a double


% --- Executes during object creation, after setting all properties.
function year_CreateFcn(hObject, eventdata, handles)
% hObject    handle to year (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
