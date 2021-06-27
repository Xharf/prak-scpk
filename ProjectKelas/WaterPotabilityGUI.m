
function varargout = WaterPotabilityGUI(varargin)
% WATERPOTABILITYGUI MATLAB code for WaterPotabilityGUI.fig
%      WATERPOTABILITYGUI, by itself, creates a new WATERPOTABILITYGUI or raises the existing
%      singleton*.
%
%      H = WATERPOTABILITYGUI returns the handle to a new WATERPOTABILITYGUI or the handle to
%      the existing singleton*.
%
%      WATERPOTABILITYGUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in WATERPOTABILITYGUI.M with the given input arguments.
%
%      WATERPOTABILITYGUI('Property','Value',...) creates a new WATERPOTABILITYGUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before WaterPotabilityGUI_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to WaterPotabilityGUI_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help WaterPotabilityGUI

% Last Modified by GUIDE v2.5 24-Jun-2021 17:02:18

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @WaterPotabilityGUI_OpeningFcn, ...
                   'gui_OutputFcn',  @WaterPotabilityGUI_OutputFcn, ...
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


% --- Executes just before WaterPotabilityGUI is made visible.
function WaterPotabilityGUI_OpeningFcn(hObject, eventdata, handles, varargin)
global Mdl;
[Mdl, table] = WaterPotability();
data = table2cell(rmmissing(table(:,[1,3:10])));
set(handles.data,'Data',data);
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to WaterPotabilityGUI (see VARARGIN)

% Choose default command line output for WaterPotabilityGUI
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes WaterPotabilityGUI wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = WaterPotabilityGUI_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function ph_Callback(hObject, eventdata, handles)
% hObject    handle to ph (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ph as text
%        str2double(get(hObject,'String')) returns contents of ph as a double


% --- Executes during object creation, after setting all properties.
function ph_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ph (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function solids_Callback(hObject, eventdata, handles)
% hObject    handle to solids (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of solids as text
%        str2double(get(hObject,'String')) returns contents of solids as a double


% --- Executes during object creation, after setting all properties.
function solids_CreateFcn(hObject, eventdata, handles)
% hObject    handle to solids (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function chloramine_Callback(hObject, eventdata, handles)
% hObject    handle to chloramine (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of chloramine as text
%        str2double(get(hObject,'String')) returns contents of chloramine as a double


% --- Executes during object creation, after setting all properties.
function chloramine_CreateFcn(hObject, eventdata, handles)
% hObject    handle to chloramine (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function sulfate_Callback(hObject, eventdata, handles)
% hObject    handle to sulfate (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of sulfate as text
%        str2double(get(hObject,'String')) returns contents of sulfate as a double


% --- Executes during object creation, after setting all properties.
function sulfate_CreateFcn(hObject, eventdata, handles)
% hObject    handle to sulfate (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function conductivity_Callback(hObject, eventdata, handles)
% hObject    handle to conductivity (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of conductivity as text
%        str2double(get(hObject,'String')) returns contents of conductivity as a double


% --- Executes during object creation, after setting all properties.
function conductivity_CreateFcn(hObject, eventdata, handles)
% hObject    handle to conductivity (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ocarbon_Callback(hObject, eventdata, handles)
% hObject    handle to ocarbon (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ocarbon as text
%        str2double(get(hObject,'String')) returns contents of ocarbon as a double


% --- Executes during object creation, after setting all properties.
function ocarbon_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ocarbon (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function trihm_Callback(hObject, eventdata, handles)
% hObject    handle to trihm (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of trihm as text
%        str2double(get(hObject,'String')) returns contents of trihm as a double


% --- Executes during object creation, after setting all properties.
function trihm_CreateFcn(hObject, eventdata, handles)
% hObject    handle to trihm (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function turbidity_Callback(hObject, eventdata, handles)
% hObject    handle to turbidity (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of turbidity as text
%        str2double(get(hObject,'String')) returns contents of turbidity as a double


% --- Executes during object creation, after setting all properties.
function turbidity_CreateFcn(hObject, eventdata, handles)
% hObject    handle to turbidity (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in button.
function button_Callback(hObject, eventdata, handles)
% hObject    handle to button (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
ph =  str2double(get(handles.ph,'string'));
solids =  str2double(get(handles.solids,'string'));
chloramine =  str2double(get(handles.chloramine,'string'));
sulfate =  str2double(get(handles.sulfate,'string'));
conduct =  str2double(get(handles.conductivity,'string'));
ocarbon = str2double(get(handles.ocarbon,'string'));
trihm = str2double(get(handles.trihm,'string'));
turbidity = str2double(get(handles.turbidity,'string'));
global Mdl;
sample = [ ph solids chloramine sulfate conduct ocarbon trihm turbidity];
[answer, score, cost] = predict(Mdl, sample);

if(answer)
   set(handles.hasil,'string',"Dapat Diminum");
   set(handles.hasil,'BackgroundColor', [0,1,0]);
else
   set(handles.hasil,'string',"Tidak Dapat Diminum");
   set(handles.hasil,'BackgroundColor', [1,0,0]);
end
set(handles.tidakLayak,'String', score(1,1));
set(handles.layak,'string', score(1,2));
