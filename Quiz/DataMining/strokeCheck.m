function varargout = strokeCheck(varargin)
% STROKECHECK MATLAB code for strokeCheck.fig
%      STROKECHECK, by itself, creates a new STROKECHECK or raises the existing
%      singleton*.
%
%      H = STROKECHECK returns the handle to a new STROKECHECK or the handle to
%      the existing singleton*.
%
%      STROKECHECK('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in STROKECHECK.M with the given input arguments.
%
%      STROKECHECK('Property','Value',...) creates a new STROKECHECK or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before strokeCheck_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to strokeCheck_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help strokeCheck

% Last Modified by GUIDE v2.5 22-Apr-2021 20:33:49

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @strokeCheck_OpeningFcn, ...
                   'gui_OutputFcn',  @strokeCheck_OutputFcn, ...
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


% --- Executes just before strokeCheck is made visible.
function strokeCheck_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user datatable (see GUIDATA)
% varargin   command line arguments to strokeCheck (see VARARGIN)

% Choose default command line output for strokeCheck
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes strokeCheck wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = strokeCheck_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user datatable (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in jantung.
function jantung_Callback(hObject, eventdata, handles)
% hObject    handle to jantung (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user datatable (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of jantung


% --- Executes on button press in checkbox2.
function checkbox2_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user datatable (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox2


% --- Executes on button press in hipertensi.
function hipertensi_Callback(hObject, eventdata, handles)
% hObject    handle to hipertensi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user datatable (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of hipertensi



function age_Callback(hObject, eventdata, handles)
% hObject    handle to age (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user datatable (see GUIDATA)

% Hints: get(hObject,'String') returns contents of age as text
%        str2double(get(hObject,'String')) returns contents of age as a double


% --- Executes during object creation, after setting all properties.
function age_CreateFcn(hObject, eventdata, handles)
% hObject    handle to age (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu1.
function popupmenu1_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user datatable (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu1


% --- Executes during object creation, after setting all properties.
function popupmenu1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function glukosa_Callback(hObject, eventdata, handles)
% hObject    handle to glukosa (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user datatable (see GUIDATA)

% Hints: get(hObject,'String') returns contents of glukosa as text
%        str2double(get(hObject,'String')) returns contents of glukosa as a double


% --- Executes during object creation, after setting all properties.
function glukosa_CreateFcn(hObject, eventdata, handles)
% hObject    handle to glukosa (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in gender.
function Gender_Callback(hObject, eventdata, handles)
% hObject    handle to gender (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user datatable (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns gender contents as cell array
%        contents{get(hObject,'Value')} returns selected item from gender


% --- Executes during object creation, after setting all properties.
function gender_CreateFcn(hObject, eventdata, handles)
% hObject    handle to gender (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function bmi_Callback(hObject, eventdata, handles)
% hObject    handle to bmi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user datatable (see GUIDATA)

% Hints: get(hObject,'String') returns contents of bmi as text
%        str2double(get(hObject,'String')) returns contents of bmi as a double


% --- Executes during object creation, after setting all properties.
function bmi_CreateFcn(hObject, eventdata, handles)
% hObject    handle to bmi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in merokok.
function merokok_Callback(hObject, eventdata, handles)
% hObject    handle to merokok (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user datatable (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns merokok contents as cell array
%        contents{get(hObject,'Value')} returns selected item from merokok


% --- Executes during object creation, after setting all properties.
function merokok_CreateFcn(hObject, eventdata, handles)
% hObject    handle to merokok (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in menikah.
function menikah_Callback(hObject, eventdata, handles)
% hObject    handle to menikah (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user datatable (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns menikah contents as cell array
%        contents{get(hObject,'Value')} returns selected item from menikah


% --- Executes during object creation, after setting all properties.
function menikah_CreateFcn(hObject, eventdata, handles)
% hObject    handle to menikah (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in lihat.
function lihat_Callback(hObject, eventdata, handles)
% hObject    handle to lihat (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user datatable (see GUIDATA)
opt = detectImportOptions('dataset-stroke.csv');
opt.SelectedVariableNames = {
'gender', 'age', 'hypertension', 'heart_disease', 'ever_married', 'avg_glucose_level', 'bmi', 'smoking_status', 'stroke'  
};
%varNames = opt.VariableNames;
%varTypes = {'categorical', 'categorical','integer','boolean','boolean','categorical','categorical','categorical','double','double','categorical','boolean'};
%opt = setvartype(opt,varNames,varTypes);

data = readtable('dataset-stroke.csv', opt);
data = table2cell(data);
set(handles.datatable,'Data',data);

% --- Executes on button press in check.
function check_Callback(hObject, eventdata, handles)
% hObject    handle to check (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user datatable (see GUIDATA)\\
gender =  get(handles.gender,'string');
age = str2double(get(handles.age,'string'));
glukosa = str2double(get(handles.glukosa,'string'));
bmi = str2double(get(handles.bmi,'string'));
merokok =get(handles.merokok,'string');
menikah = get(handles.menikah,'string');
hipertensi = str2double(get(handles.hipertensi,'string'));
jantung = str2double(get(handles.jantung,'string'));

sample = [gender age hipertensi jantung menikah glukosa bmi merokok];

opt = detectImportOptions('dataset-stroke.csv');
opt.SelectedVariableNames = {
'gender', 'age', 'hypertension', 'heart_disease', 'ever_married', 'avg_glucose_level', 'bmi', 'smoking_status'  
};
training = readtable('dataset-stroke.csv', opt);
%training = table2cell(training);

opt.SelectedVariableNames = {'stroke'};
group = readtable('dataset-stroke.csv', opt);
%group = table2cell(group);

class = fitcknn(training,group, 'NumNeighbors', 4);
klasifikasi = predict(class, sample);

%if(klasifikasi == '1')
%    klasifikasi = "Stroke";
%else
%    klasifikasi = "Tidak";
% end
set(handles.hasil,'string',klasifikasi);
 
 
% --- Executes during object creation, after setting all properties.
function datatable_CreateFcn(hObject, eventdata, handles)
% hObject    handle to datatable (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called



function gender_Callback(hObject, eventdata, handles)
% hObject    handle to gender (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of gender as text
%        str2double(get(hObject,'String')) returns contents of gender as a double


% --- Executes during object creation, after setting all properties.
function jantung_CreateFcn(hObject, eventdata, handles)
% hObject    handle to jantung (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
