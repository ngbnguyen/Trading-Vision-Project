??/
??
D
AddV2
x"T
y"T
z"T"
Ttype:
2	??
B
AssignVariableOp
resource
value"dtype"
dtypetype?
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?
?
Mul
x"T
y"T
z"T"
Ttype:
2	?

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype?
E
Relu
features"T
activations"T"
Ttype:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
[
Split
	split_dim

value"T
output"T*	num_split"
	num_splitint(0"	
Ttype
?
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ??
@
StaticRegexFullMatch	
input

output
"
patternstring
?
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
?
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type*
output_handle??element_dtype"
element_dtypetype"

shape_typetype:
2	
?
TensorListReserve
element_shape"
shape_type
num_elements#
handle??element_dtype"
element_dtypetype"

shape_typetype:
2	
?
TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsint?????????
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?
?
While

input2T
output2T"
T
list(type)("
condfunc"
bodyfunc" 
output_shapeslist(shape)
 "
parallel_iterationsint
?"serve*2.7.02v2.7.0-rc1-69-gc256c071bb28??-
|
dense_285/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*!
shared_namedense_285/kernel
u
$dense_285/kernel/Read/ReadVariableOpReadVariableOpdense_285/kernel*
_output_shapes

:
*
dtype0
t
dense_285/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_285/bias
m
"dense_285/bias/Read/ReadVariableOpReadVariableOpdense_285/bias*
_output_shapes
:*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
?
lstm_855/lstm_cell_855/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*.
shared_namelstm_855/lstm_cell_855/kernel
?
1lstm_855/lstm_cell_855/kernel/Read/ReadVariableOpReadVariableOplstm_855/lstm_cell_855/kernel*
_output_shapes
:	?*
dtype0
?
'lstm_855/lstm_cell_855/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*8
shared_name)'lstm_855/lstm_cell_855/recurrent_kernel
?
;lstm_855/lstm_cell_855/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_855/lstm_cell_855/recurrent_kernel*
_output_shapes
:	d?*
dtype0
?
lstm_855/lstm_cell_855/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_855/lstm_cell_855/bias
?
/lstm_855/lstm_cell_855/bias/Read/ReadVariableOpReadVariableOplstm_855/lstm_cell_855/bias*
_output_shapes	
:?*
dtype0
?
lstm_856/lstm_cell_856/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*.
shared_namelstm_856/lstm_cell_856/kernel
?
1lstm_856/lstm_cell_856/kernel/Read/ReadVariableOpReadVariableOplstm_856/lstm_cell_856/kernel*
_output_shapes
:	d?*
dtype0
?
'lstm_856/lstm_cell_856/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*8
shared_name)'lstm_856/lstm_cell_856/recurrent_kernel
?
;lstm_856/lstm_cell_856/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_856/lstm_cell_856/recurrent_kernel*
_output_shapes
:	2?*
dtype0
?
lstm_856/lstm_cell_856/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_856/lstm_cell_856/bias
?
/lstm_856/lstm_cell_856/bias/Read/ReadVariableOpReadVariableOplstm_856/lstm_cell_856/bias*
_output_shapes	
:?*
dtype0
?
lstm_857/lstm_cell_857/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*.
shared_namelstm_857/lstm_cell_857/kernel
?
1lstm_857/lstm_cell_857/kernel/Read/ReadVariableOpReadVariableOplstm_857/lstm_cell_857/kernel*
_output_shapes

:2(*
dtype0
?
'lstm_857/lstm_cell_857/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*8
shared_name)'lstm_857/lstm_cell_857/recurrent_kernel
?
;lstm_857/lstm_cell_857/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_857/lstm_cell_857/recurrent_kernel*
_output_shapes

:
(*
dtype0
?
lstm_857/lstm_cell_857/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*,
shared_namelstm_857/lstm_cell_857/bias
?
/lstm_857/lstm_cell_857/bias/Read/ReadVariableOpReadVariableOplstm_857/lstm_cell_857/bias*
_output_shapes
:(*
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
?
Adam/dense_285/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_285/kernel/m
?
+Adam/dense_285/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_285/kernel/m*
_output_shapes

:
*
dtype0
?
Adam/dense_285/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_285/bias/m
{
)Adam/dense_285/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_285/bias/m*
_output_shapes
:*
dtype0
?
$Adam/lstm_855/lstm_cell_855/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_855/lstm_cell_855/kernel/m
?
8Adam/lstm_855/lstm_cell_855/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_855/lstm_cell_855/kernel/m*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_855/lstm_cell_855/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_855/lstm_cell_855/recurrent_kernel/m
?
BAdam/lstm_855/lstm_cell_855/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_855/lstm_cell_855/recurrent_kernel/m*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_855/lstm_cell_855/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_855/lstm_cell_855/bias/m
?
6Adam/lstm_855/lstm_cell_855/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_855/lstm_cell_855/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_856/lstm_cell_856/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_856/lstm_cell_856/kernel/m
?
8Adam/lstm_856/lstm_cell_856/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_856/lstm_cell_856/kernel/m*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_856/lstm_cell_856/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_856/lstm_cell_856/recurrent_kernel/m
?
BAdam/lstm_856/lstm_cell_856/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_856/lstm_cell_856/recurrent_kernel/m*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_856/lstm_cell_856/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_856/lstm_cell_856/bias/m
?
6Adam/lstm_856/lstm_cell_856/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_856/lstm_cell_856/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_857/lstm_cell_857/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_857/lstm_cell_857/kernel/m
?
8Adam/lstm_857/lstm_cell_857/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_857/lstm_cell_857/kernel/m*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_857/lstm_cell_857/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_857/lstm_cell_857/recurrent_kernel/m
?
BAdam/lstm_857/lstm_cell_857/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_857/lstm_cell_857/recurrent_kernel/m*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_857/lstm_cell_857/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_857/lstm_cell_857/bias/m
?
6Adam/lstm_857/lstm_cell_857/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_857/lstm_cell_857/bias/m*
_output_shapes
:(*
dtype0
?
Adam/dense_285/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_285/kernel/v
?
+Adam/dense_285/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_285/kernel/v*
_output_shapes

:
*
dtype0
?
Adam/dense_285/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_285/bias/v
{
)Adam/dense_285/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_285/bias/v*
_output_shapes
:*
dtype0
?
$Adam/lstm_855/lstm_cell_855/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_855/lstm_cell_855/kernel/v
?
8Adam/lstm_855/lstm_cell_855/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_855/lstm_cell_855/kernel/v*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_855/lstm_cell_855/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_855/lstm_cell_855/recurrent_kernel/v
?
BAdam/lstm_855/lstm_cell_855/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_855/lstm_cell_855/recurrent_kernel/v*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_855/lstm_cell_855/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_855/lstm_cell_855/bias/v
?
6Adam/lstm_855/lstm_cell_855/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_855/lstm_cell_855/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_856/lstm_cell_856/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_856/lstm_cell_856/kernel/v
?
8Adam/lstm_856/lstm_cell_856/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_856/lstm_cell_856/kernel/v*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_856/lstm_cell_856/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_856/lstm_cell_856/recurrent_kernel/v
?
BAdam/lstm_856/lstm_cell_856/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_856/lstm_cell_856/recurrent_kernel/v*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_856/lstm_cell_856/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_856/lstm_cell_856/bias/v
?
6Adam/lstm_856/lstm_cell_856/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_856/lstm_cell_856/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_857/lstm_cell_857/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_857/lstm_cell_857/kernel/v
?
8Adam/lstm_857/lstm_cell_857/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_857/lstm_cell_857/kernel/v*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_857/lstm_cell_857/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_857/lstm_cell_857/recurrent_kernel/v
?
BAdam/lstm_857/lstm_cell_857/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_857/lstm_cell_857/recurrent_kernel/v*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_857/lstm_cell_857/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_857/lstm_cell_857/bias/v
?
6Adam/lstm_857/lstm_cell_857/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_857/lstm_cell_857/bias/v*
_output_shapes
:(*
dtype0

NoOpNoOp
??
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?>
value?>B?> B?>
?
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer_with_weights-3
layer-3
	optimizer
	variables
trainable_variables
regularization_losses
		keras_api


signatures
l
cell

state_spec
	variables
trainable_variables
regularization_losses
	keras_api
l
cell

state_spec
	variables
trainable_variables
regularization_losses
	keras_api
l
cell

state_spec
	variables
trainable_variables
regularization_losses
	keras_api
h

kernel
bias
	variables
 trainable_variables
!regularization_losses
"	keras_api
?
#iter

$beta_1

%beta_2
	&decay
'learning_ratempmq(mr)ms*mt+mu,mv-mw.mx/my0mzv{v|(v})v~*v+v?,v?-v?.v?/v?0v?
N
(0
)1
*2
+3
,4
-5
.6
/7
08
9
10
N
(0
)1
*2
+3
,4
-5
.6
/7
08
9
10
 
?
1non_trainable_variables

2layers
3metrics
4layer_regularization_losses
5layer_metrics
	variables
trainable_variables
regularization_losses
 
?
6
state_size

(kernel
)recurrent_kernel
*bias
7	variables
8trainable_variables
9regularization_losses
:	keras_api
 

(0
)1
*2

(0
)1
*2
 
?

;states
<non_trainable_variables

=layers
>metrics
?layer_regularization_losses
@layer_metrics
	variables
trainable_variables
regularization_losses
?
A
state_size

+kernel
,recurrent_kernel
-bias
B	variables
Ctrainable_variables
Dregularization_losses
E	keras_api
 

+0
,1
-2

+0
,1
-2
 
?

Fstates
Gnon_trainable_variables

Hlayers
Imetrics
Jlayer_regularization_losses
Klayer_metrics
	variables
trainable_variables
regularization_losses
?
L
state_size

.kernel
/recurrent_kernel
0bias
M	variables
Ntrainable_variables
Oregularization_losses
P	keras_api
 

.0
/1
02

.0
/1
02
 
?

Qstates
Rnon_trainable_variables

Slayers
Tmetrics
Ulayer_regularization_losses
Vlayer_metrics
	variables
trainable_variables
regularization_losses
\Z
VARIABLE_VALUEdense_285/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_285/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
?
Wnon_trainable_variables

Xlayers
Ymetrics
Zlayer_regularization_losses
[layer_metrics
	variables
 trainable_variables
!regularization_losses
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_855/lstm_cell_855/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_855/lstm_cell_855/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_855/lstm_cell_855/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_856/lstm_cell_856/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_856/lstm_cell_856/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_856/lstm_cell_856/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_857/lstm_cell_857/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_857/lstm_cell_857/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_857/lstm_cell_857/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
 

0
1
2
3

\0
 
 
 

(0
)1
*2

(0
)1
*2
 
?
]non_trainable_variables

^layers
_metrics
`layer_regularization_losses
alayer_metrics
7	variables
8trainable_variables
9regularization_losses
 
 

0
 
 
 
 

+0
,1
-2

+0
,1
-2
 
?
bnon_trainable_variables

clayers
dmetrics
elayer_regularization_losses
flayer_metrics
B	variables
Ctrainable_variables
Dregularization_losses
 
 

0
 
 
 
 

.0
/1
02

.0
/1
02
 
?
gnon_trainable_variables

hlayers
imetrics
jlayer_regularization_losses
klayer_metrics
M	variables
Ntrainable_variables
Oregularization_losses
 
 

0
 
 
 
 
 
 
 
 
4
	ltotal
	mcount
n	variables
o	keras_api
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

l0
m1

n	variables
}
VARIABLE_VALUEAdam/dense_285/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_285/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_855/lstm_cell_855/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_855/lstm_cell_855/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_855/lstm_cell_855/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_856/lstm_cell_856/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_856/lstm_cell_856/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_856/lstm_cell_856/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_857/lstm_cell_857/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_857/lstm_cell_857/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_857/lstm_cell_857/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_285/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_285/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_855/lstm_cell_855/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_855/lstm_cell_855/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_855/lstm_cell_855/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_856/lstm_cell_856/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_856/lstm_cell_856/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_856/lstm_cell_856/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_857/lstm_cell_857/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_857/lstm_cell_857/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_857/lstm_cell_857/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_lstm_855_inputPlaceholder*+
_output_shapes
:?????????*
dtype0* 
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_855_inputlstm_855/lstm_cell_855/kernel'lstm_855/lstm_cell_855/recurrent_kernellstm_855/lstm_cell_855/biaslstm_856/lstm_cell_856/kernel'lstm_856/lstm_cell_856/recurrent_kernellstm_856/lstm_cell_856/biaslstm_857/lstm_cell_857/kernel'lstm_857/lstm_cell_857/recurrent_kernellstm_857/lstm_cell_857/biasdense_285/kerneldense_285/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *.
f)R'
%__inference_signature_wrapper_5134615
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$dense_285/kernel/Read/ReadVariableOp"dense_285/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_855/lstm_cell_855/kernel/Read/ReadVariableOp;lstm_855/lstm_cell_855/recurrent_kernel/Read/ReadVariableOp/lstm_855/lstm_cell_855/bias/Read/ReadVariableOp1lstm_856/lstm_cell_856/kernel/Read/ReadVariableOp;lstm_856/lstm_cell_856/recurrent_kernel/Read/ReadVariableOp/lstm_856/lstm_cell_856/bias/Read/ReadVariableOp1lstm_857/lstm_cell_857/kernel/Read/ReadVariableOp;lstm_857/lstm_cell_857/recurrent_kernel/Read/ReadVariableOp/lstm_857/lstm_cell_857/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp+Adam/dense_285/kernel/m/Read/ReadVariableOp)Adam/dense_285/bias/m/Read/ReadVariableOp8Adam/lstm_855/lstm_cell_855/kernel/m/Read/ReadVariableOpBAdam/lstm_855/lstm_cell_855/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_855/lstm_cell_855/bias/m/Read/ReadVariableOp8Adam/lstm_856/lstm_cell_856/kernel/m/Read/ReadVariableOpBAdam/lstm_856/lstm_cell_856/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_856/lstm_cell_856/bias/m/Read/ReadVariableOp8Adam/lstm_857/lstm_cell_857/kernel/m/Read/ReadVariableOpBAdam/lstm_857/lstm_cell_857/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_857/lstm_cell_857/bias/m/Read/ReadVariableOp+Adam/dense_285/kernel/v/Read/ReadVariableOp)Adam/dense_285/bias/v/Read/ReadVariableOp8Adam/lstm_855/lstm_cell_855/kernel/v/Read/ReadVariableOpBAdam/lstm_855/lstm_cell_855/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_855/lstm_cell_855/bias/v/Read/ReadVariableOp8Adam/lstm_856/lstm_cell_856/kernel/v/Read/ReadVariableOpBAdam/lstm_856/lstm_cell_856/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_856/lstm_cell_856/bias/v/Read/ReadVariableOp8Adam/lstm_857/lstm_cell_857/kernel/v/Read/ReadVariableOpBAdam/lstm_857/lstm_cell_857/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_857/lstm_cell_857/bias/v/Read/ReadVariableOpConst*5
Tin.
,2*	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *)
f$R"
 __inference__traced_save_5137827
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_285/kerneldense_285/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_855/lstm_cell_855/kernel'lstm_855/lstm_cell_855/recurrent_kernellstm_855/lstm_cell_855/biaslstm_856/lstm_cell_856/kernel'lstm_856/lstm_cell_856/recurrent_kernellstm_856/lstm_cell_856/biaslstm_857/lstm_cell_857/kernel'lstm_857/lstm_cell_857/recurrent_kernellstm_857/lstm_cell_857/biastotalcountAdam/dense_285/kernel/mAdam/dense_285/bias/m$Adam/lstm_855/lstm_cell_855/kernel/m.Adam/lstm_855/lstm_cell_855/recurrent_kernel/m"Adam/lstm_855/lstm_cell_855/bias/m$Adam/lstm_856/lstm_cell_856/kernel/m.Adam/lstm_856/lstm_cell_856/recurrent_kernel/m"Adam/lstm_856/lstm_cell_856/bias/m$Adam/lstm_857/lstm_cell_857/kernel/m.Adam/lstm_857/lstm_cell_857/recurrent_kernel/m"Adam/lstm_857/lstm_cell_857/bias/mAdam/dense_285/kernel/vAdam/dense_285/bias/v$Adam/lstm_855/lstm_cell_855/kernel/v.Adam/lstm_855/lstm_cell_855/recurrent_kernel/v"Adam/lstm_855/lstm_cell_855/bias/v$Adam/lstm_856/lstm_cell_856/kernel/v.Adam/lstm_856/lstm_cell_856/recurrent_kernel/v"Adam/lstm_856/lstm_cell_856/bias/v$Adam/lstm_857/lstm_cell_857/kernel/v.Adam/lstm_857/lstm_cell_857/recurrent_kernel/v"Adam/lstm_857/lstm_cell_857/bias/v*4
Tin-
+2)*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *,
f'R%
#__inference__traced_restore_5137957??+
?
?
*sequential_285_lstm_856_while_cond_5132125L
Hsequential_285_lstm_856_while_sequential_285_lstm_856_while_loop_counterR
Nsequential_285_lstm_856_while_sequential_285_lstm_856_while_maximum_iterations-
)sequential_285_lstm_856_while_placeholder/
+sequential_285_lstm_856_while_placeholder_1/
+sequential_285_lstm_856_while_placeholder_2/
+sequential_285_lstm_856_while_placeholder_3N
Jsequential_285_lstm_856_while_less_sequential_285_lstm_856_strided_slice_1e
asequential_285_lstm_856_while_sequential_285_lstm_856_while_cond_5132125___redundant_placeholder0e
asequential_285_lstm_856_while_sequential_285_lstm_856_while_cond_5132125___redundant_placeholder1e
asequential_285_lstm_856_while_sequential_285_lstm_856_while_cond_5132125___redundant_placeholder2e
asequential_285_lstm_856_while_sequential_285_lstm_856_while_cond_5132125___redundant_placeholder3*
&sequential_285_lstm_856_while_identity
?
"sequential_285/lstm_856/while/LessLess)sequential_285_lstm_856_while_placeholderJsequential_285_lstm_856_while_less_sequential_285_lstm_856_strided_slice_1*
T0*
_output_shapes
: {
&sequential_285/lstm_856/while/IdentityIdentity&sequential_285/lstm_856/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_285_lstm_856_while_identity/sequential_285/lstm_856/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????2:?????????2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????2:-)
'
_output_shapes
:?????????2:

_output_shapes
: :

_output_shapes
:
?T
?
*sequential_285_lstm_856_while_body_5132126L
Hsequential_285_lstm_856_while_sequential_285_lstm_856_while_loop_counterR
Nsequential_285_lstm_856_while_sequential_285_lstm_856_while_maximum_iterations-
)sequential_285_lstm_856_while_placeholder/
+sequential_285_lstm_856_while_placeholder_1/
+sequential_285_lstm_856_while_placeholder_2/
+sequential_285_lstm_856_while_placeholder_3K
Gsequential_285_lstm_856_while_sequential_285_lstm_856_strided_slice_1_0?
?sequential_285_lstm_856_while_tensorarrayv2read_tensorlistgetitem_sequential_285_lstm_856_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_285_lstm_856_while_lstm_cell_856_matmul_readvariableop_resource_0:	d?a
Nsequential_285_lstm_856_while_lstm_cell_856_matmul_1_readvariableop_resource_0:	2?\
Msequential_285_lstm_856_while_lstm_cell_856_biasadd_readvariableop_resource_0:	?*
&sequential_285_lstm_856_while_identity,
(sequential_285_lstm_856_while_identity_1,
(sequential_285_lstm_856_while_identity_2,
(sequential_285_lstm_856_while_identity_3,
(sequential_285_lstm_856_while_identity_4,
(sequential_285_lstm_856_while_identity_5I
Esequential_285_lstm_856_while_sequential_285_lstm_856_strided_slice_1?
?sequential_285_lstm_856_while_tensorarrayv2read_tensorlistgetitem_sequential_285_lstm_856_tensorarrayunstack_tensorlistfromtensor]
Jsequential_285_lstm_856_while_lstm_cell_856_matmul_readvariableop_resource:	d?_
Lsequential_285_lstm_856_while_lstm_cell_856_matmul_1_readvariableop_resource:	2?Z
Ksequential_285_lstm_856_while_lstm_cell_856_biasadd_readvariableop_resource:	???Bsequential_285/lstm_856/while/lstm_cell_856/BiasAdd/ReadVariableOp?Asequential_285/lstm_856/while/lstm_cell_856/MatMul/ReadVariableOp?Csequential_285/lstm_856/while/lstm_cell_856/MatMul_1/ReadVariableOp?
Osequential_285/lstm_856/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
Asequential_285/lstm_856/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_285_lstm_856_while_tensorarrayv2read_tensorlistgetitem_sequential_285_lstm_856_tensorarrayunstack_tensorlistfromtensor_0)sequential_285_lstm_856_while_placeholderXsequential_285/lstm_856/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
Asequential_285/lstm_856/while/lstm_cell_856/MatMul/ReadVariableOpReadVariableOpLsequential_285_lstm_856_while_lstm_cell_856_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
2sequential_285/lstm_856/while/lstm_cell_856/MatMulMatMulHsequential_285/lstm_856/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_285/lstm_856/while/lstm_cell_856/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_285/lstm_856/while/lstm_cell_856/MatMul_1/ReadVariableOpReadVariableOpNsequential_285_lstm_856_while_lstm_cell_856_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
4sequential_285/lstm_856/while/lstm_cell_856/MatMul_1MatMul+sequential_285_lstm_856_while_placeholder_2Ksequential_285/lstm_856/while/lstm_cell_856/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_285/lstm_856/while/lstm_cell_856/addAddV2<sequential_285/lstm_856/while/lstm_cell_856/MatMul:product:0>sequential_285/lstm_856/while/lstm_cell_856/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_285/lstm_856/while/lstm_cell_856/BiasAdd/ReadVariableOpReadVariableOpMsequential_285_lstm_856_while_lstm_cell_856_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_285/lstm_856/while/lstm_cell_856/BiasAddBiasAdd3sequential_285/lstm_856/while/lstm_cell_856/add:z:0Jsequential_285/lstm_856/while/lstm_cell_856/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_285/lstm_856/while/lstm_cell_856/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_285/lstm_856/while/lstm_cell_856/splitSplitDsequential_285/lstm_856/while/lstm_cell_856/split/split_dim:output:0<sequential_285/lstm_856/while/lstm_cell_856/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
3sequential_285/lstm_856/while/lstm_cell_856/SigmoidSigmoid:sequential_285/lstm_856/while/lstm_cell_856/split:output:0*
T0*'
_output_shapes
:?????????2?
5sequential_285/lstm_856/while/lstm_cell_856/Sigmoid_1Sigmoid:sequential_285/lstm_856/while/lstm_cell_856/split:output:1*
T0*'
_output_shapes
:?????????2?
/sequential_285/lstm_856/while/lstm_cell_856/mulMul9sequential_285/lstm_856/while/lstm_cell_856/Sigmoid_1:y:0+sequential_285_lstm_856_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
0sequential_285/lstm_856/while/lstm_cell_856/ReluRelu:sequential_285/lstm_856/while/lstm_cell_856/split:output:2*
T0*'
_output_shapes
:?????????2?
1sequential_285/lstm_856/while/lstm_cell_856/mul_1Mul7sequential_285/lstm_856/while/lstm_cell_856/Sigmoid:y:0>sequential_285/lstm_856/while/lstm_cell_856/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
1sequential_285/lstm_856/while/lstm_cell_856/add_1AddV23sequential_285/lstm_856/while/lstm_cell_856/mul:z:05sequential_285/lstm_856/while/lstm_cell_856/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
5sequential_285/lstm_856/while/lstm_cell_856/Sigmoid_2Sigmoid:sequential_285/lstm_856/while/lstm_cell_856/split:output:3*
T0*'
_output_shapes
:?????????2?
2sequential_285/lstm_856/while/lstm_cell_856/Relu_1Relu5sequential_285/lstm_856/while/lstm_cell_856/add_1:z:0*
T0*'
_output_shapes
:?????????2?
1sequential_285/lstm_856/while/lstm_cell_856/mul_2Mul9sequential_285/lstm_856/while/lstm_cell_856/Sigmoid_2:y:0@sequential_285/lstm_856/while/lstm_cell_856/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
Bsequential_285/lstm_856/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_285_lstm_856_while_placeholder_1)sequential_285_lstm_856_while_placeholder5sequential_285/lstm_856/while/lstm_cell_856/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_285/lstm_856/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_285/lstm_856/while/addAddV2)sequential_285_lstm_856_while_placeholder,sequential_285/lstm_856/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_285/lstm_856/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_285/lstm_856/while/add_1AddV2Hsequential_285_lstm_856_while_sequential_285_lstm_856_while_loop_counter.sequential_285/lstm_856/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_285/lstm_856/while/IdentityIdentity'sequential_285/lstm_856/while/add_1:z:0#^sequential_285/lstm_856/while/NoOp*
T0*
_output_shapes
: ?
(sequential_285/lstm_856/while/Identity_1IdentityNsequential_285_lstm_856_while_sequential_285_lstm_856_while_maximum_iterations#^sequential_285/lstm_856/while/NoOp*
T0*
_output_shapes
: ?
(sequential_285/lstm_856/while/Identity_2Identity%sequential_285/lstm_856/while/add:z:0#^sequential_285/lstm_856/while/NoOp*
T0*
_output_shapes
: ?
(sequential_285/lstm_856/while/Identity_3IdentityRsequential_285/lstm_856/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_285/lstm_856/while/NoOp*
T0*
_output_shapes
: ?
(sequential_285/lstm_856/while/Identity_4Identity5sequential_285/lstm_856/while/lstm_cell_856/mul_2:z:0#^sequential_285/lstm_856/while/NoOp*
T0*'
_output_shapes
:?????????2?
(sequential_285/lstm_856/while/Identity_5Identity5sequential_285/lstm_856/while/lstm_cell_856/add_1:z:0#^sequential_285/lstm_856/while/NoOp*
T0*'
_output_shapes
:?????????2?
"sequential_285/lstm_856/while/NoOpNoOpC^sequential_285/lstm_856/while/lstm_cell_856/BiasAdd/ReadVariableOpB^sequential_285/lstm_856/while/lstm_cell_856/MatMul/ReadVariableOpD^sequential_285/lstm_856/while/lstm_cell_856/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_285_lstm_856_while_identity/sequential_285/lstm_856/while/Identity:output:0"]
(sequential_285_lstm_856_while_identity_11sequential_285/lstm_856/while/Identity_1:output:0"]
(sequential_285_lstm_856_while_identity_21sequential_285/lstm_856/while/Identity_2:output:0"]
(sequential_285_lstm_856_while_identity_31sequential_285/lstm_856/while/Identity_3:output:0"]
(sequential_285_lstm_856_while_identity_41sequential_285/lstm_856/while/Identity_4:output:0"]
(sequential_285_lstm_856_while_identity_51sequential_285/lstm_856/while/Identity_5:output:0"?
Ksequential_285_lstm_856_while_lstm_cell_856_biasadd_readvariableop_resourceMsequential_285_lstm_856_while_lstm_cell_856_biasadd_readvariableop_resource_0"?
Lsequential_285_lstm_856_while_lstm_cell_856_matmul_1_readvariableop_resourceNsequential_285_lstm_856_while_lstm_cell_856_matmul_1_readvariableop_resource_0"?
Jsequential_285_lstm_856_while_lstm_cell_856_matmul_readvariableop_resourceLsequential_285_lstm_856_while_lstm_cell_856_matmul_readvariableop_resource_0"?
Esequential_285_lstm_856_while_sequential_285_lstm_856_strided_slice_1Gsequential_285_lstm_856_while_sequential_285_lstm_856_strided_slice_1_0"?
?sequential_285_lstm_856_while_tensorarrayv2read_tensorlistgetitem_sequential_285_lstm_856_tensorarrayunstack_tensorlistfromtensor?sequential_285_lstm_856_while_tensorarrayv2read_tensorlistgetitem_sequential_285_lstm_856_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2?
Bsequential_285/lstm_856/while/lstm_cell_856/BiasAdd/ReadVariableOpBsequential_285/lstm_856/while/lstm_cell_856/BiasAdd/ReadVariableOp2?
Asequential_285/lstm_856/while/lstm_cell_856/MatMul/ReadVariableOpAsequential_285/lstm_856/while/lstm_cell_856/MatMul/ReadVariableOp2?
Csequential_285/lstm_856/while/lstm_cell_856/MatMul_1/ReadVariableOpCsequential_285/lstm_856/while/lstm_cell_856/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????2:-)
'
_output_shapes
:?????????2:

_output_shapes
: :

_output_shapes
: 
?J
?
E__inference_lstm_856_layer_call_and_return_conditional_losses_5136755

inputs?
,lstm_cell_856_matmul_readvariableop_resource:	d?A
.lstm_cell_856_matmul_1_readvariableop_resource:	2?<
-lstm_cell_856_biasadd_readvariableop_resource:	?
identity??$lstm_cell_856/BiasAdd/ReadVariableOp?#lstm_cell_856/MatMul/ReadVariableOp?%lstm_cell_856/MatMul_1/ReadVariableOp?while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????2R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:?????????dD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
#lstm_cell_856/MatMul/ReadVariableOpReadVariableOp,lstm_cell_856_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_856/MatMulMatMulstrided_slice_2:output:0+lstm_cell_856/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_856/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_856_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_856/MatMul_1MatMulzeros:output:0-lstm_cell_856/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_856/addAddV2lstm_cell_856/MatMul:product:0 lstm_cell_856/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_856/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_856_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_856/BiasAddBiasAddlstm_cell_856/add:z:0,lstm_cell_856/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_856/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_856/splitSplit&lstm_cell_856/split/split_dim:output:0lstm_cell_856/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_856/SigmoidSigmoidlstm_cell_856/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_856/Sigmoid_1Sigmoidlstm_cell_856/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_856/mulMullstm_cell_856/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_856/ReluRelulstm_cell_856/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_856/mul_1Mullstm_cell_856/Sigmoid:y:0 lstm_cell_856/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_856/add_1AddV2lstm_cell_856/mul:z:0lstm_cell_856/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_856/Sigmoid_2Sigmoidlstm_cell_856/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_856/Relu_1Relulstm_cell_856/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_856/mul_2Mullstm_cell_856/Sigmoid_2:y:0"lstm_cell_856/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_856_matmul_readvariableop_resource.lstm_cell_856_matmul_1_readvariableop_resource-lstm_cell_856_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????2:?????????2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_5136671*
condR
while_cond_5136670*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:?????????2?
NoOpNoOp%^lstm_cell_856/BiasAdd/ReadVariableOp$^lstm_cell_856/MatMul/ReadVariableOp&^lstm_cell_856/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_856/BiasAdd/ReadVariableOp$lstm_cell_856/BiasAdd/ReadVariableOp2J
#lstm_cell_856/MatMul/ReadVariableOp#lstm_cell_856/MatMul/ReadVariableOp2N
%lstm_cell_856/MatMul_1/ReadVariableOp%lstm_cell_856/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
while_cond_5135768
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5135768___redundant_placeholder05
1while_while_cond_5135768___redundant_placeholder15
1while_while_cond_5135768___redundant_placeholder25
1while_while_cond_5135768___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????d:?????????d: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????d:-)
'
_output_shapes
:?????????d:

_output_shapes
: :

_output_shapes
:
?
?
K__inference_sequential_285_layer_call_and_return_conditional_losses_5134468

inputs#
lstm_855_5134441:	?#
lstm_855_5134443:	d?
lstm_855_5134445:	?#
lstm_856_5134448:	d?#
lstm_856_5134450:	2?
lstm_856_5134452:	?"
lstm_857_5134455:2("
lstm_857_5134457:
(
lstm_857_5134459:(#
dense_285_5134462:

dense_285_5134464:
identity??!dense_285/StatefulPartitionedCall? lstm_855/StatefulPartitionedCall? lstm_856/StatefulPartitionedCall? lstm_857/StatefulPartitionedCall?
 lstm_855/StatefulPartitionedCallStatefulPartitionedCallinputslstm_855_5134441lstm_855_5134443lstm_855_5134445*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_lstm_855_layer_call_and_return_conditional_losses_5134400?
 lstm_856/StatefulPartitionedCallStatefulPartitionedCall)lstm_855/StatefulPartitionedCall:output:0lstm_856_5134448lstm_856_5134450lstm_856_5134452*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_lstm_856_layer_call_and_return_conditional_losses_5134235?
 lstm_857/StatefulPartitionedCallStatefulPartitionedCall)lstm_856/StatefulPartitionedCall:output:0lstm_857_5134455lstm_857_5134457lstm_857_5134459*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_lstm_857_layer_call_and_return_conditional_losses_5134070?
!dense_285/StatefulPartitionedCallStatefulPartitionedCall)lstm_857/StatefulPartitionedCall:output:0dense_285_5134462dense_285_5134464*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dense_285_layer_call_and_return_conditional_losses_5133872y
IdentityIdentity*dense_285/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_285/StatefulPartitionedCall!^lstm_855/StatefulPartitionedCall!^lstm_856/StatefulPartitionedCall!^lstm_857/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_285/StatefulPartitionedCall!dense_285/StatefulPartitionedCall2D
 lstm_855/StatefulPartitionedCall lstm_855/StatefulPartitionedCall2D
 lstm_856/StatefulPartitionedCall lstm_856/StatefulPartitionedCall2D
 lstm_857/StatefulPartitionedCall lstm_857/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?K
?
E__inference_lstm_855_layer_call_and_return_conditional_losses_5135853
inputs_0?
,lstm_cell_855_matmul_readvariableop_resource:	?A
.lstm_cell_855_matmul_1_readvariableop_resource:	d?<
-lstm_cell_855_biasadd_readvariableop_resource:	?
identity??$lstm_cell_855/BiasAdd/ReadVariableOp?#lstm_cell_855/MatMul/ReadVariableOp?%lstm_cell_855/MatMul_1/ReadVariableOp?while=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ds
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????dR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
#lstm_cell_855/MatMul/ReadVariableOpReadVariableOp,lstm_cell_855_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_855/MatMulMatMulstrided_slice_2:output:0+lstm_cell_855/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_855/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_855_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_855/MatMul_1MatMulzeros:output:0-lstm_cell_855/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_855/addAddV2lstm_cell_855/MatMul:product:0 lstm_cell_855/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_855/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_855_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_855/BiasAddBiasAddlstm_cell_855/add:z:0,lstm_cell_855/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_855/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_855/splitSplit&lstm_cell_855/split/split_dim:output:0lstm_cell_855/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_855/SigmoidSigmoidlstm_cell_855/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_855/Sigmoid_1Sigmoidlstm_cell_855/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_855/mulMullstm_cell_855/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_855/ReluRelulstm_cell_855/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_855/mul_1Mullstm_cell_855/Sigmoid:y:0 lstm_cell_855/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_855/add_1AddV2lstm_cell_855/mul:z:0lstm_cell_855/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_855/Sigmoid_2Sigmoidlstm_cell_855/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_855/Relu_1Relulstm_cell_855/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_855/mul_2Mullstm_cell_855/Sigmoid_2:y:0"lstm_cell_855/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_855_matmul_readvariableop_resource.lstm_cell_855_matmul_1_readvariableop_resource-lstm_cell_855_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????d:?????????d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_5135769*
condR
while_cond_5135768*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :??????????????????d*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :??????????????????d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :??????????????????d?
NoOpNoOp%^lstm_cell_855/BiasAdd/ReadVariableOp$^lstm_cell_855/MatMul/ReadVariableOp&^lstm_cell_855/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_855/BiasAdd/ReadVariableOp$lstm_cell_855/BiasAdd/ReadVariableOp2J
#lstm_cell_855/MatMul/ReadVariableOp#lstm_cell_855/MatMul/ReadVariableOp2N
%lstm_cell_855/MatMul_1/ReadVariableOp%lstm_cell_855/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
J__inference_lstm_cell_857_layer_call_and_return_conditional_losses_5133268

inputs

states
states_10
matmul_readvariableop_resource:2(2
 matmul_1_readvariableop_resource:
(-
biasadd_readvariableop_resource:(
identity

identity_1

identity_2??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2(*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0m
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(d
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:?????????(r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:(*
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:?????????
V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:?????????
U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:?????????
N
ReluRelusplit:output:2*
T0*'
_output_shapes
:?????????
_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:?????????
T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:?????????
V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:?????????
K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:?????????
c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:?????????
X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:?????????
Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:?????????
Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:?????????
?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????2:?????????
:?????????
: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:?????????2
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????

 
_user_specified_namestates:OK
'
_output_shapes
:?????????

 
_user_specified_namestates
?C
?

lstm_855_while_body_5134728.
*lstm_855_while_lstm_855_while_loop_counter4
0lstm_855_while_lstm_855_while_maximum_iterations
lstm_855_while_placeholder 
lstm_855_while_placeholder_1 
lstm_855_while_placeholder_2 
lstm_855_while_placeholder_3-
)lstm_855_while_lstm_855_strided_slice_1_0i
elstm_855_while_tensorarrayv2read_tensorlistgetitem_lstm_855_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_855_while_lstm_cell_855_matmul_readvariableop_resource_0:	?R
?lstm_855_while_lstm_cell_855_matmul_1_readvariableop_resource_0:	d?M
>lstm_855_while_lstm_cell_855_biasadd_readvariableop_resource_0:	?
lstm_855_while_identity
lstm_855_while_identity_1
lstm_855_while_identity_2
lstm_855_while_identity_3
lstm_855_while_identity_4
lstm_855_while_identity_5+
'lstm_855_while_lstm_855_strided_slice_1g
clstm_855_while_tensorarrayv2read_tensorlistgetitem_lstm_855_tensorarrayunstack_tensorlistfromtensorN
;lstm_855_while_lstm_cell_855_matmul_readvariableop_resource:	?P
=lstm_855_while_lstm_cell_855_matmul_1_readvariableop_resource:	d?K
<lstm_855_while_lstm_cell_855_biasadd_readvariableop_resource:	???3lstm_855/while/lstm_cell_855/BiasAdd/ReadVariableOp?2lstm_855/while/lstm_cell_855/MatMul/ReadVariableOp?4lstm_855/while/lstm_cell_855/MatMul_1/ReadVariableOp?
@lstm_855/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_855/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_855_while_tensorarrayv2read_tensorlistgetitem_lstm_855_tensorarrayunstack_tensorlistfromtensor_0lstm_855_while_placeholderIlstm_855/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_855/while/lstm_cell_855/MatMul/ReadVariableOpReadVariableOp=lstm_855_while_lstm_cell_855_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_855/while/lstm_cell_855/MatMulMatMul9lstm_855/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_855/while/lstm_cell_855/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_855/while/lstm_cell_855/MatMul_1/ReadVariableOpReadVariableOp?lstm_855_while_lstm_cell_855_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_855/while/lstm_cell_855/MatMul_1MatMullstm_855_while_placeholder_2<lstm_855/while/lstm_cell_855/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_855/while/lstm_cell_855/addAddV2-lstm_855/while/lstm_cell_855/MatMul:product:0/lstm_855/while/lstm_cell_855/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_855/while/lstm_cell_855/BiasAdd/ReadVariableOpReadVariableOp>lstm_855_while_lstm_cell_855_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_855/while/lstm_cell_855/BiasAddBiasAdd$lstm_855/while/lstm_cell_855/add:z:0;lstm_855/while/lstm_cell_855/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_855/while/lstm_cell_855/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_855/while/lstm_cell_855/splitSplit5lstm_855/while/lstm_cell_855/split/split_dim:output:0-lstm_855/while/lstm_cell_855/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_855/while/lstm_cell_855/SigmoidSigmoid+lstm_855/while/lstm_cell_855/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_855/while/lstm_cell_855/Sigmoid_1Sigmoid+lstm_855/while/lstm_cell_855/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_855/while/lstm_cell_855/mulMul*lstm_855/while/lstm_cell_855/Sigmoid_1:y:0lstm_855_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_855/while/lstm_cell_855/ReluRelu+lstm_855/while/lstm_cell_855/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_855/while/lstm_cell_855/mul_1Mul(lstm_855/while/lstm_cell_855/Sigmoid:y:0/lstm_855/while/lstm_cell_855/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_855/while/lstm_cell_855/add_1AddV2$lstm_855/while/lstm_cell_855/mul:z:0&lstm_855/while/lstm_cell_855/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_855/while/lstm_cell_855/Sigmoid_2Sigmoid+lstm_855/while/lstm_cell_855/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_855/while/lstm_cell_855/Relu_1Relu&lstm_855/while/lstm_cell_855/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_855/while/lstm_cell_855/mul_2Mul*lstm_855/while/lstm_cell_855/Sigmoid_2:y:01lstm_855/while/lstm_cell_855/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_855/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_855_while_placeholder_1lstm_855_while_placeholder&lstm_855/while/lstm_cell_855/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_855/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_855/while/addAddV2lstm_855_while_placeholderlstm_855/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_855/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_855/while/add_1AddV2*lstm_855_while_lstm_855_while_loop_counterlstm_855/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_855/while/IdentityIdentitylstm_855/while/add_1:z:0^lstm_855/while/NoOp*
T0*
_output_shapes
: ?
lstm_855/while/Identity_1Identity0lstm_855_while_lstm_855_while_maximum_iterations^lstm_855/while/NoOp*
T0*
_output_shapes
: t
lstm_855/while/Identity_2Identitylstm_855/while/add:z:0^lstm_855/while/NoOp*
T0*
_output_shapes
: ?
lstm_855/while/Identity_3IdentityClstm_855/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_855/while/NoOp*
T0*
_output_shapes
: ?
lstm_855/while/Identity_4Identity&lstm_855/while/lstm_cell_855/mul_2:z:0^lstm_855/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_855/while/Identity_5Identity&lstm_855/while/lstm_cell_855/add_1:z:0^lstm_855/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_855/while/NoOpNoOp4^lstm_855/while/lstm_cell_855/BiasAdd/ReadVariableOp3^lstm_855/while/lstm_cell_855/MatMul/ReadVariableOp5^lstm_855/while/lstm_cell_855/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_855_while_identity lstm_855/while/Identity:output:0"?
lstm_855_while_identity_1"lstm_855/while/Identity_1:output:0"?
lstm_855_while_identity_2"lstm_855/while/Identity_2:output:0"?
lstm_855_while_identity_3"lstm_855/while/Identity_3:output:0"?
lstm_855_while_identity_4"lstm_855/while/Identity_4:output:0"?
lstm_855_while_identity_5"lstm_855/while/Identity_5:output:0"T
'lstm_855_while_lstm_855_strided_slice_1)lstm_855_while_lstm_855_strided_slice_1_0"~
<lstm_855_while_lstm_cell_855_biasadd_readvariableop_resource>lstm_855_while_lstm_cell_855_biasadd_readvariableop_resource_0"?
=lstm_855_while_lstm_cell_855_matmul_1_readvariableop_resource?lstm_855_while_lstm_cell_855_matmul_1_readvariableop_resource_0"|
;lstm_855_while_lstm_cell_855_matmul_readvariableop_resource=lstm_855_while_lstm_cell_855_matmul_readvariableop_resource_0"?
clstm_855_while_tensorarrayv2read_tensorlistgetitem_lstm_855_tensorarrayunstack_tensorlistfromtensorelstm_855_while_tensorarrayv2read_tensorlistgetitem_lstm_855_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_855/while/lstm_cell_855/BiasAdd/ReadVariableOp3lstm_855/while/lstm_cell_855/BiasAdd/ReadVariableOp2h
2lstm_855/while/lstm_cell_855/MatMul/ReadVariableOp2lstm_855/while/lstm_cell_855/MatMul/ReadVariableOp2l
4lstm_855/while/lstm_cell_855/MatMul_1/ReadVariableOp4lstm_855/while/lstm_cell_855/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????d:-)
'
_output_shapes
:?????????d:

_output_shapes
: :

_output_shapes
: 
?
?
while_cond_5136054
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5136054___redundant_placeholder05
1while_while_cond_5136054___redundant_placeholder15
1while_while_cond_5136054___redundant_placeholder25
1while_while_cond_5136054___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????d:?????????d: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????d:-)
'
_output_shapes
:?????????d:

_output_shapes
: :

_output_shapes
:
??
?
#__inference__traced_restore_5137957
file_prefix3
!assignvariableop_dense_285_kernel:
/
!assignvariableop_1_dense_285_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: C
0assignvariableop_7_lstm_855_lstm_cell_855_kernel:	?M
:assignvariableop_8_lstm_855_lstm_cell_855_recurrent_kernel:	d?=
.assignvariableop_9_lstm_855_lstm_cell_855_bias:	?D
1assignvariableop_10_lstm_856_lstm_cell_856_kernel:	d?N
;assignvariableop_11_lstm_856_lstm_cell_856_recurrent_kernel:	2?>
/assignvariableop_12_lstm_856_lstm_cell_856_bias:	?C
1assignvariableop_13_lstm_857_lstm_cell_857_kernel:2(M
;assignvariableop_14_lstm_857_lstm_cell_857_recurrent_kernel:
(=
/assignvariableop_15_lstm_857_lstm_cell_857_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: =
+assignvariableop_18_adam_dense_285_kernel_m:
7
)assignvariableop_19_adam_dense_285_bias_m:K
8assignvariableop_20_adam_lstm_855_lstm_cell_855_kernel_m:	?U
Bassignvariableop_21_adam_lstm_855_lstm_cell_855_recurrent_kernel_m:	d?E
6assignvariableop_22_adam_lstm_855_lstm_cell_855_bias_m:	?K
8assignvariableop_23_adam_lstm_856_lstm_cell_856_kernel_m:	d?U
Bassignvariableop_24_adam_lstm_856_lstm_cell_856_recurrent_kernel_m:	2?E
6assignvariableop_25_adam_lstm_856_lstm_cell_856_bias_m:	?J
8assignvariableop_26_adam_lstm_857_lstm_cell_857_kernel_m:2(T
Bassignvariableop_27_adam_lstm_857_lstm_cell_857_recurrent_kernel_m:
(D
6assignvariableop_28_adam_lstm_857_lstm_cell_857_bias_m:(=
+assignvariableop_29_adam_dense_285_kernel_v:
7
)assignvariableop_30_adam_dense_285_bias_v:K
8assignvariableop_31_adam_lstm_855_lstm_cell_855_kernel_v:	?U
Bassignvariableop_32_adam_lstm_855_lstm_cell_855_recurrent_kernel_v:	d?E
6assignvariableop_33_adam_lstm_855_lstm_cell_855_bias_v:	?K
8assignvariableop_34_adam_lstm_856_lstm_cell_856_kernel_v:	d?U
Bassignvariableop_35_adam_lstm_856_lstm_cell_856_recurrent_kernel_v:	2?E
6assignvariableop_36_adam_lstm_856_lstm_cell_856_bias_v:	?J
8assignvariableop_37_adam_lstm_857_lstm_cell_857_kernel_v:2(T
Bassignvariableop_38_adam_lstm_857_lstm_cell_857_recurrent_kernel_v:
(D
6assignvariableop_39_adam_lstm_857_lstm_cell_857_bias_v:(
identity_41??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_28?AssignVariableOp_29?AssignVariableOp_3?AssignVariableOp_30?AssignVariableOp_31?AssignVariableOp_32?AssignVariableOp_33?AssignVariableOp_34?AssignVariableOp_35?AssignVariableOp_36?AssignVariableOp_37?AssignVariableOp_38?AssignVariableOp_39?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:)*
dtype0*?
value?B?)B6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:)*
dtype0*e
value\BZ)B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapes?
?:::::::::::::::::::::::::::::::::::::::::*7
dtypes-
+2)	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOpAssignVariableOp!assignvariableop_dense_285_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_285_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0	*
_output_shapes
:?
AssignVariableOp_2AssignVariableOpassignvariableop_2_adam_iterIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_3AssignVariableOpassignvariableop_3_adam_beta_1Identity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_4AssignVariableOpassignvariableop_4_adam_beta_2Identity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_5AssignVariableOpassignvariableop_5_adam_decayIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_6AssignVariableOp%assignvariableop_6_adam_learning_rateIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_7AssignVariableOp0assignvariableop_7_lstm_855_lstm_cell_855_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp:assignvariableop_8_lstm_855_lstm_cell_855_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_855_lstm_cell_855_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp1assignvariableop_10_lstm_856_lstm_cell_856_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp;assignvariableop_11_lstm_856_lstm_cell_856_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp/assignvariableop_12_lstm_856_lstm_cell_856_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp1assignvariableop_13_lstm_857_lstm_cell_857_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp;assignvariableop_14_lstm_857_lstm_cell_857_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp/assignvariableop_15_lstm_857_lstm_cell_857_biasIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_16AssignVariableOpassignvariableop_16_totalIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_17AssignVariableOpassignvariableop_17_countIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_18AssignVariableOp+assignvariableop_18_adam_dense_285_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp)assignvariableop_19_adam_dense_285_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp8assignvariableop_20_adam_lstm_855_lstm_cell_855_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOpBassignvariableop_21_adam_lstm_855_lstm_cell_855_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp6assignvariableop_22_adam_lstm_855_lstm_cell_855_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp8assignvariableop_23_adam_lstm_856_lstm_cell_856_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOpBassignvariableop_24_adam_lstm_856_lstm_cell_856_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_856_lstm_cell_856_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp8assignvariableop_26_adam_lstm_857_lstm_cell_857_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOpBassignvariableop_27_adam_lstm_857_lstm_cell_857_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_lstm_857_lstm_cell_857_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp+assignvariableop_29_adam_dense_285_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_dense_285_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp8assignvariableop_31_adam_lstm_855_lstm_cell_855_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOpBassignvariableop_32_adam_lstm_855_lstm_cell_855_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOp6assignvariableop_33_adam_lstm_855_lstm_cell_855_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOp8assignvariableop_34_adam_lstm_856_lstm_cell_856_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOpBassignvariableop_35_adam_lstm_856_lstm_cell_856_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adam_lstm_856_lstm_cell_856_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_37AssignVariableOp8assignvariableop_37_adam_lstm_857_lstm_cell_857_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_38AssignVariableOpBassignvariableop_38_adam_lstm_857_lstm_cell_857_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_lstm_857_lstm_cell_857_bias_vIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ?
Identity_40Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_41IdentityIdentity_40:output:0^NoOp_1*
T0*
_output_shapes
: ?
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_41Identity_41:output:0*e
_input_shapesT
R: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
?C
?

lstm_856_while_body_5135294.
*lstm_856_while_lstm_856_while_loop_counter4
0lstm_856_while_lstm_856_while_maximum_iterations
lstm_856_while_placeholder 
lstm_856_while_placeholder_1 
lstm_856_while_placeholder_2 
lstm_856_while_placeholder_3-
)lstm_856_while_lstm_856_strided_slice_1_0i
elstm_856_while_tensorarrayv2read_tensorlistgetitem_lstm_856_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_856_while_lstm_cell_856_matmul_readvariableop_resource_0:	d?R
?lstm_856_while_lstm_cell_856_matmul_1_readvariableop_resource_0:	2?M
>lstm_856_while_lstm_cell_856_biasadd_readvariableop_resource_0:	?
lstm_856_while_identity
lstm_856_while_identity_1
lstm_856_while_identity_2
lstm_856_while_identity_3
lstm_856_while_identity_4
lstm_856_while_identity_5+
'lstm_856_while_lstm_856_strided_slice_1g
clstm_856_while_tensorarrayv2read_tensorlistgetitem_lstm_856_tensorarrayunstack_tensorlistfromtensorN
;lstm_856_while_lstm_cell_856_matmul_readvariableop_resource:	d?P
=lstm_856_while_lstm_cell_856_matmul_1_readvariableop_resource:	2?K
<lstm_856_while_lstm_cell_856_biasadd_readvariableop_resource:	???3lstm_856/while/lstm_cell_856/BiasAdd/ReadVariableOp?2lstm_856/while/lstm_cell_856/MatMul/ReadVariableOp?4lstm_856/while/lstm_cell_856/MatMul_1/ReadVariableOp?
@lstm_856/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_856/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_856_while_tensorarrayv2read_tensorlistgetitem_lstm_856_tensorarrayunstack_tensorlistfromtensor_0lstm_856_while_placeholderIlstm_856/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_856/while/lstm_cell_856/MatMul/ReadVariableOpReadVariableOp=lstm_856_while_lstm_cell_856_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_856/while/lstm_cell_856/MatMulMatMul9lstm_856/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_856/while/lstm_cell_856/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_856/while/lstm_cell_856/MatMul_1/ReadVariableOpReadVariableOp?lstm_856_while_lstm_cell_856_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_856/while/lstm_cell_856/MatMul_1MatMullstm_856_while_placeholder_2<lstm_856/while/lstm_cell_856/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_856/while/lstm_cell_856/addAddV2-lstm_856/while/lstm_cell_856/MatMul:product:0/lstm_856/while/lstm_cell_856/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_856/while/lstm_cell_856/BiasAdd/ReadVariableOpReadVariableOp>lstm_856_while_lstm_cell_856_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_856/while/lstm_cell_856/BiasAddBiasAdd$lstm_856/while/lstm_cell_856/add:z:0;lstm_856/while/lstm_cell_856/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_856/while/lstm_cell_856/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_856/while/lstm_cell_856/splitSplit5lstm_856/while/lstm_cell_856/split/split_dim:output:0-lstm_856/while/lstm_cell_856/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_856/while/lstm_cell_856/SigmoidSigmoid+lstm_856/while/lstm_cell_856/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_856/while/lstm_cell_856/Sigmoid_1Sigmoid+lstm_856/while/lstm_cell_856/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_856/while/lstm_cell_856/mulMul*lstm_856/while/lstm_cell_856/Sigmoid_1:y:0lstm_856_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_856/while/lstm_cell_856/ReluRelu+lstm_856/while/lstm_cell_856/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_856/while/lstm_cell_856/mul_1Mul(lstm_856/while/lstm_cell_856/Sigmoid:y:0/lstm_856/while/lstm_cell_856/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_856/while/lstm_cell_856/add_1AddV2$lstm_856/while/lstm_cell_856/mul:z:0&lstm_856/while/lstm_cell_856/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_856/while/lstm_cell_856/Sigmoid_2Sigmoid+lstm_856/while/lstm_cell_856/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_856/while/lstm_cell_856/Relu_1Relu&lstm_856/while/lstm_cell_856/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_856/while/lstm_cell_856/mul_2Mul*lstm_856/while/lstm_cell_856/Sigmoid_2:y:01lstm_856/while/lstm_cell_856/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_856/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_856_while_placeholder_1lstm_856_while_placeholder&lstm_856/while/lstm_cell_856/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_856/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_856/while/addAddV2lstm_856_while_placeholderlstm_856/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_856/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_856/while/add_1AddV2*lstm_856_while_lstm_856_while_loop_counterlstm_856/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_856/while/IdentityIdentitylstm_856/while/add_1:z:0^lstm_856/while/NoOp*
T0*
_output_shapes
: ?
lstm_856/while/Identity_1Identity0lstm_856_while_lstm_856_while_maximum_iterations^lstm_856/while/NoOp*
T0*
_output_shapes
: t
lstm_856/while/Identity_2Identitylstm_856/while/add:z:0^lstm_856/while/NoOp*
T0*
_output_shapes
: ?
lstm_856/while/Identity_3IdentityClstm_856/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_856/while/NoOp*
T0*
_output_shapes
: ?
lstm_856/while/Identity_4Identity&lstm_856/while/lstm_cell_856/mul_2:z:0^lstm_856/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_856/while/Identity_5Identity&lstm_856/while/lstm_cell_856/add_1:z:0^lstm_856/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_856/while/NoOpNoOp4^lstm_856/while/lstm_cell_856/BiasAdd/ReadVariableOp3^lstm_856/while/lstm_cell_856/MatMul/ReadVariableOp5^lstm_856/while/lstm_cell_856/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_856_while_identity lstm_856/while/Identity:output:0"?
lstm_856_while_identity_1"lstm_856/while/Identity_1:output:0"?
lstm_856_while_identity_2"lstm_856/while/Identity_2:output:0"?
lstm_856_while_identity_3"lstm_856/while/Identity_3:output:0"?
lstm_856_while_identity_4"lstm_856/while/Identity_4:output:0"?
lstm_856_while_identity_5"lstm_856/while/Identity_5:output:0"T
'lstm_856_while_lstm_856_strided_slice_1)lstm_856_while_lstm_856_strided_slice_1_0"~
<lstm_856_while_lstm_cell_856_biasadd_readvariableop_resource>lstm_856_while_lstm_cell_856_biasadd_readvariableop_resource_0"?
=lstm_856_while_lstm_cell_856_matmul_1_readvariableop_resource?lstm_856_while_lstm_cell_856_matmul_1_readvariableop_resource_0"|
;lstm_856_while_lstm_cell_856_matmul_readvariableop_resource=lstm_856_while_lstm_cell_856_matmul_readvariableop_resource_0"?
clstm_856_while_tensorarrayv2read_tensorlistgetitem_lstm_856_tensorarrayunstack_tensorlistfromtensorelstm_856_while_tensorarrayv2read_tensorlistgetitem_lstm_856_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_856/while/lstm_cell_856/BiasAdd/ReadVariableOp3lstm_856/while/lstm_cell_856/BiasAdd/ReadVariableOp2h
2lstm_856/while/lstm_cell_856/MatMul/ReadVariableOp2lstm_856/while/lstm_cell_856/MatMul/ReadVariableOp2l
4lstm_856/while/lstm_cell_856/MatMul_1/ReadVariableOp4lstm_856/while/lstm_cell_856/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????2:-)
'
_output_shapes
:?????????2:

_output_shapes
: :

_output_shapes
: 
?
?
while_cond_5133135
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5133135___redundant_placeholder05
1while_while_cond_5133135___redundant_placeholder15
1while_while_cond_5133135___redundant_placeholder25
1while_while_cond_5133135___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????
:?????????
: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????
:-)
'
_output_shapes
:?????????
:

_output_shapes
: :

_output_shapes
:
?8
?
while_body_5134316
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_855_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_855_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_855_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_855_matmul_readvariableop_resource:	?G
4while_lstm_cell_855_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_855_biasadd_readvariableop_resource:	???*while/lstm_cell_855/BiasAdd/ReadVariableOp?)while/lstm_cell_855/MatMul/ReadVariableOp?+while/lstm_cell_855/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_855/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_855_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_855/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_855/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_855/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_855_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_855/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_855/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_855/addAddV2$while/lstm_cell_855/MatMul:product:0&while/lstm_cell_855/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_855/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_855_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_855/BiasAddBiasAddwhile/lstm_cell_855/add:z:02while/lstm_cell_855/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_855/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_855/splitSplit,while/lstm_cell_855/split/split_dim:output:0$while/lstm_cell_855/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_855/SigmoidSigmoid"while/lstm_cell_855/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_855/Sigmoid_1Sigmoid"while/lstm_cell_855/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_855/mulMul!while/lstm_cell_855/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_855/ReluRelu"while/lstm_cell_855/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_855/mul_1Mulwhile/lstm_cell_855/Sigmoid:y:0&while/lstm_cell_855/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_855/add_1AddV2while/lstm_cell_855/mul:z:0while/lstm_cell_855/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_855/Sigmoid_2Sigmoid"while/lstm_cell_855/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_855/Relu_1Reluwhile/lstm_cell_855/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_855/mul_2Mul!while/lstm_cell_855/Sigmoid_2:y:0(while/lstm_cell_855/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_855/mul_2:z:0*
_output_shapes
: *
element_dtype0:???M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: ?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_855/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_855/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_855/BiasAdd/ReadVariableOp*^while/lstm_cell_855/MatMul/ReadVariableOp,^while/lstm_cell_855/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_855_biasadd_readvariableop_resource5while_lstm_cell_855_biasadd_readvariableop_resource_0"n
4while_lstm_cell_855_matmul_1_readvariableop_resource6while_lstm_cell_855_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_855_matmul_readvariableop_resource4while_lstm_cell_855_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_855/BiasAdd/ReadVariableOp*while/lstm_cell_855/BiasAdd/ReadVariableOp2V
)while/lstm_cell_855/MatMul/ReadVariableOp)while/lstm_cell_855/MatMul/ReadVariableOp2Z
+while/lstm_cell_855/MatMul_1/ReadVariableOp+while/lstm_cell_855/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????d:-)
'
_output_shapes
:?????????d:

_output_shapes
: :

_output_shapes
: 
?J
?
E__inference_lstm_857_layer_call_and_return_conditional_losses_5137228

inputs>
,lstm_cell_857_matmul_readvariableop_resource:2(@
.lstm_cell_857_matmul_1_readvariableop_resource:
(;
-lstm_cell_857_biasadd_readvariableop_resource:(
identity??$lstm_cell_857/BiasAdd/ReadVariableOp?#lstm_cell_857/MatMul/ReadVariableOp?%lstm_cell_857/MatMul_1/ReadVariableOp?while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????
R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:?????????2D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
#lstm_cell_857/MatMul/ReadVariableOpReadVariableOp,lstm_cell_857_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_857/MatMulMatMulstrided_slice_2:output:0+lstm_cell_857/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_857/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_857_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_857/MatMul_1MatMulzeros:output:0-lstm_cell_857/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_857/addAddV2lstm_cell_857/MatMul:product:0 lstm_cell_857/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_857/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_857_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_857/BiasAddBiasAddlstm_cell_857/add:z:0,lstm_cell_857/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_857/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_857/splitSplit&lstm_cell_857/split/split_dim:output:0lstm_cell_857/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_857/SigmoidSigmoidlstm_cell_857/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_857/Sigmoid_1Sigmoidlstm_cell_857/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_857/mulMullstm_cell_857/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_857/ReluRelulstm_cell_857/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_857/mul_1Mullstm_cell_857/Sigmoid:y:0 lstm_cell_857/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_857/add_1AddV2lstm_cell_857/mul:z:0lstm_cell_857/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_857/Sigmoid_2Sigmoidlstm_cell_857/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_857/Relu_1Relulstm_cell_857/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_857/mul_2Mullstm_cell_857/Sigmoid_2:y:0"lstm_cell_857/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_857_matmul_readvariableop_resource.lstm_cell_857_matmul_1_readvariableop_resource-lstm_cell_857_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????
:?????????
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_5137144*
condR
while_cond_5137143*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:?????????
?
NoOpNoOp%^lstm_cell_857/BiasAdd/ReadVariableOp$^lstm_cell_857/MatMul/ReadVariableOp&^lstm_cell_857/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_857/BiasAdd/ReadVariableOp$lstm_cell_857/BiasAdd/ReadVariableOp2J
#lstm_cell_857/MatMul/ReadVariableOp#lstm_cell_857/MatMul/ReadVariableOp2N
%lstm_cell_857/MatMul_1/ReadVariableOp%lstm_cell_857/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?

?
%__inference_signature_wrapper_5134615
lstm_855_input
unknown:	?
	unknown_0:	d?
	unknown_1:	?
	unknown_2:	d?
	unknown_3:	2?
	unknown_4:	?
	unknown_5:2(
	unknown_6:
(
	unknown_7:(
	unknown_8:

	unknown_9:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalllstm_855_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *+
f&R$
"__inference__wrapped_model_5132355o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_855_input
?J
?
E__inference_lstm_855_layer_call_and_return_conditional_losses_5136139

inputs?
,lstm_cell_855_matmul_readvariableop_resource:	?A
.lstm_cell_855_matmul_1_readvariableop_resource:	d?<
-lstm_cell_855_biasadd_readvariableop_resource:	?
identity??$lstm_cell_855/BiasAdd/ReadVariableOp?#lstm_cell_855/MatMul/ReadVariableOp?%lstm_cell_855/MatMul_1/ReadVariableOp?while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ds
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????dR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:?????????D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
#lstm_cell_855/MatMul/ReadVariableOpReadVariableOp,lstm_cell_855_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_855/MatMulMatMulstrided_slice_2:output:0+lstm_cell_855/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_855/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_855_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_855/MatMul_1MatMulzeros:output:0-lstm_cell_855/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_855/addAddV2lstm_cell_855/MatMul:product:0 lstm_cell_855/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_855/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_855_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_855/BiasAddBiasAddlstm_cell_855/add:z:0,lstm_cell_855/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_855/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_855/splitSplit&lstm_cell_855/split/split_dim:output:0lstm_cell_855/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_855/SigmoidSigmoidlstm_cell_855/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_855/Sigmoid_1Sigmoidlstm_cell_855/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_855/mulMullstm_cell_855/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_855/ReluRelulstm_cell_855/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_855/mul_1Mullstm_cell_855/Sigmoid:y:0 lstm_cell_855/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_855/add_1AddV2lstm_cell_855/mul:z:0lstm_cell_855/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_855/Sigmoid_2Sigmoidlstm_cell_855/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_855/Relu_1Relulstm_cell_855/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_855/mul_2Mullstm_cell_855/Sigmoid_2:y:0"lstm_cell_855/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_855_matmul_readvariableop_resource.lstm_cell_855_matmul_1_readvariableop_resource-lstm_cell_855_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????d:?????????d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_5136055*
condR
while_cond_5136054*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:?????????d?
NoOpNoOp%^lstm_cell_855/BiasAdd/ReadVariableOp$^lstm_cell_855/MatMul/ReadVariableOp&^lstm_cell_855/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_855/BiasAdd/ReadVariableOp$lstm_cell_855/BiasAdd/ReadVariableOp2J
#lstm_cell_855/MatMul/ReadVariableOp#lstm_cell_855/MatMul/ReadVariableOp2N
%lstm_cell_855/MatMul_1/ReadVariableOp%lstm_cell_855/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?K
?
E__inference_lstm_857_layer_call_and_return_conditional_losses_5136942
inputs_0>
,lstm_cell_857_matmul_readvariableop_resource:2(@
.lstm_cell_857_matmul_1_readvariableop_resource:
(;
-lstm_cell_857_biasadd_readvariableop_resource:(
identity??$lstm_cell_857/BiasAdd/ReadVariableOp?#lstm_cell_857/MatMul/ReadVariableOp?%lstm_cell_857/MatMul_1/ReadVariableOp?while=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????
R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????2D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
#lstm_cell_857/MatMul/ReadVariableOpReadVariableOp,lstm_cell_857_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_857/MatMulMatMulstrided_slice_2:output:0+lstm_cell_857/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_857/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_857_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_857/MatMul_1MatMulzeros:output:0-lstm_cell_857/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_857/addAddV2lstm_cell_857/MatMul:product:0 lstm_cell_857/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_857/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_857_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_857/BiasAddBiasAddlstm_cell_857/add:z:0,lstm_cell_857/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_857/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_857/splitSplit&lstm_cell_857/split/split_dim:output:0lstm_cell_857/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_857/SigmoidSigmoidlstm_cell_857/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_857/Sigmoid_1Sigmoidlstm_cell_857/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_857/mulMullstm_cell_857/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_857/ReluRelulstm_cell_857/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_857/mul_1Mullstm_cell_857/Sigmoid:y:0 lstm_cell_857/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_857/add_1AddV2lstm_cell_857/mul:z:0lstm_cell_857/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_857/Sigmoid_2Sigmoidlstm_cell_857/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_857/Relu_1Relulstm_cell_857/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_857/mul_2Mullstm_cell_857/Sigmoid_2:y:0"lstm_cell_857/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_857_matmul_readvariableop_resource.lstm_cell_857_matmul_1_readvariableop_resource-lstm_cell_857_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????
:?????????
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_5136858*
condR
while_cond_5136857*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :??????????????????
*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :??????????????????
[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:?????????
?
NoOpNoOp%^lstm_cell_857/BiasAdd/ReadVariableOp$^lstm_cell_857/MatMul/ReadVariableOp&^lstm_cell_857/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_857/BiasAdd/ReadVariableOp$lstm_cell_857/BiasAdd/ReadVariableOp2J
#lstm_cell_857/MatMul/ReadVariableOp#lstm_cell_857/MatMul/ReadVariableOp2N
%lstm_cell_857/MatMul_1/ReadVariableOp%lstm_cell_857/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
??
?
K__inference_sequential_285_layer_call_and_return_conditional_losses_5135096

inputsH
5lstm_855_lstm_cell_855_matmul_readvariableop_resource:	?J
7lstm_855_lstm_cell_855_matmul_1_readvariableop_resource:	d?E
6lstm_855_lstm_cell_855_biasadd_readvariableop_resource:	?H
5lstm_856_lstm_cell_856_matmul_readvariableop_resource:	d?J
7lstm_856_lstm_cell_856_matmul_1_readvariableop_resource:	2?E
6lstm_856_lstm_cell_856_biasadd_readvariableop_resource:	?G
5lstm_857_lstm_cell_857_matmul_readvariableop_resource:2(I
7lstm_857_lstm_cell_857_matmul_1_readvariableop_resource:
(D
6lstm_857_lstm_cell_857_biasadd_readvariableop_resource:(:
(dense_285_matmul_readvariableop_resource:
7
)dense_285_biasadd_readvariableop_resource:
identity?? dense_285/BiasAdd/ReadVariableOp?dense_285/MatMul/ReadVariableOp?-lstm_855/lstm_cell_855/BiasAdd/ReadVariableOp?,lstm_855/lstm_cell_855/MatMul/ReadVariableOp?.lstm_855/lstm_cell_855/MatMul_1/ReadVariableOp?lstm_855/while?-lstm_856/lstm_cell_856/BiasAdd/ReadVariableOp?,lstm_856/lstm_cell_856/MatMul/ReadVariableOp?.lstm_856/lstm_cell_856/MatMul_1/ReadVariableOp?lstm_856/while?-lstm_857/lstm_cell_857/BiasAdd/ReadVariableOp?,lstm_857/lstm_cell_857/MatMul/ReadVariableOp?.lstm_857/lstm_cell_857/MatMul_1/ReadVariableOp?lstm_857/whileD
lstm_855/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_855/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_855/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_855/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_855/strided_sliceStridedSlicelstm_855/Shape:output:0%lstm_855/strided_slice/stack:output:0'lstm_855/strided_slice/stack_1:output:0'lstm_855/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_855/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_855/zeros/packedPacklstm_855/strided_slice:output:0 lstm_855/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_855/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_855/zerosFilllstm_855/zeros/packed:output:0lstm_855/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_855/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_855/zeros_1/packedPacklstm_855/strided_slice:output:0"lstm_855/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_855/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_855/zeros_1Fill lstm_855/zeros_1/packed:output:0lstm_855/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_855/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_855/transpose	Transposeinputs lstm_855/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_855/Shape_1Shapelstm_855/transpose:y:0*
T0*
_output_shapes
:h
lstm_855/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_855/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_855/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_855/strided_slice_1StridedSlicelstm_855/Shape_1:output:0'lstm_855/strided_slice_1/stack:output:0)lstm_855/strided_slice_1/stack_1:output:0)lstm_855/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_855/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_855/TensorArrayV2TensorListReserve-lstm_855/TensorArrayV2/element_shape:output:0!lstm_855/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_855/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_855/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_855/transpose:y:0Glstm_855/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_855/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_855/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_855/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_855/strided_slice_2StridedSlicelstm_855/transpose:y:0'lstm_855/strided_slice_2/stack:output:0)lstm_855/strided_slice_2/stack_1:output:0)lstm_855/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_855/lstm_cell_855/MatMul/ReadVariableOpReadVariableOp5lstm_855_lstm_cell_855_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_855/lstm_cell_855/MatMulMatMul!lstm_855/strided_slice_2:output:04lstm_855/lstm_cell_855/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_855/lstm_cell_855/MatMul_1/ReadVariableOpReadVariableOp7lstm_855_lstm_cell_855_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_855/lstm_cell_855/MatMul_1MatMullstm_855/zeros:output:06lstm_855/lstm_cell_855/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_855/lstm_cell_855/addAddV2'lstm_855/lstm_cell_855/MatMul:product:0)lstm_855/lstm_cell_855/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_855/lstm_cell_855/BiasAdd/ReadVariableOpReadVariableOp6lstm_855_lstm_cell_855_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_855/lstm_cell_855/BiasAddBiasAddlstm_855/lstm_cell_855/add:z:05lstm_855/lstm_cell_855/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_855/lstm_cell_855/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_855/lstm_cell_855/splitSplit/lstm_855/lstm_cell_855/split/split_dim:output:0'lstm_855/lstm_cell_855/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_855/lstm_cell_855/SigmoidSigmoid%lstm_855/lstm_cell_855/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_855/lstm_cell_855/Sigmoid_1Sigmoid%lstm_855/lstm_cell_855/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_855/lstm_cell_855/mulMul$lstm_855/lstm_cell_855/Sigmoid_1:y:0lstm_855/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_855/lstm_cell_855/ReluRelu%lstm_855/lstm_cell_855/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_855/lstm_cell_855/mul_1Mul"lstm_855/lstm_cell_855/Sigmoid:y:0)lstm_855/lstm_cell_855/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_855/lstm_cell_855/add_1AddV2lstm_855/lstm_cell_855/mul:z:0 lstm_855/lstm_cell_855/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_855/lstm_cell_855/Sigmoid_2Sigmoid%lstm_855/lstm_cell_855/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_855/lstm_cell_855/Relu_1Relu lstm_855/lstm_cell_855/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_855/lstm_cell_855/mul_2Mul$lstm_855/lstm_cell_855/Sigmoid_2:y:0+lstm_855/lstm_cell_855/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_855/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_855/TensorArrayV2_1TensorListReserve/lstm_855/TensorArrayV2_1/element_shape:output:0!lstm_855/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_855/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_855/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_855/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_855/whileWhile$lstm_855/while/loop_counter:output:0*lstm_855/while/maximum_iterations:output:0lstm_855/time:output:0!lstm_855/TensorArrayV2_1:handle:0lstm_855/zeros:output:0lstm_855/zeros_1:output:0!lstm_855/strided_slice_1:output:0@lstm_855/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_855_lstm_cell_855_matmul_readvariableop_resource7lstm_855_lstm_cell_855_matmul_1_readvariableop_resource6lstm_855_lstm_cell_855_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????d:?????????d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *'
bodyR
lstm_855_while_body_5134728*'
condR
lstm_855_while_cond_5134727*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_855/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_855/TensorArrayV2Stack/TensorListStackTensorListStacklstm_855/while:output:3Blstm_855/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_855/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_855/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_855/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_855/strided_slice_3StridedSlice4lstm_855/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_855/strided_slice_3/stack:output:0)lstm_855/strided_slice_3/stack_1:output:0)lstm_855/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_855/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_855/transpose_1	Transpose4lstm_855/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_855/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_855/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_856/ShapeShapelstm_855/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_856/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_856/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_856/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_856/strided_sliceStridedSlicelstm_856/Shape:output:0%lstm_856/strided_slice/stack:output:0'lstm_856/strided_slice/stack_1:output:0'lstm_856/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_856/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_856/zeros/packedPacklstm_856/strided_slice:output:0 lstm_856/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_856/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_856/zerosFilllstm_856/zeros/packed:output:0lstm_856/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_856/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_856/zeros_1/packedPacklstm_856/strided_slice:output:0"lstm_856/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_856/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_856/zeros_1Fill lstm_856/zeros_1/packed:output:0lstm_856/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_856/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_856/transpose	Transposelstm_855/transpose_1:y:0 lstm_856/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_856/Shape_1Shapelstm_856/transpose:y:0*
T0*
_output_shapes
:h
lstm_856/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_856/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_856/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_856/strided_slice_1StridedSlicelstm_856/Shape_1:output:0'lstm_856/strided_slice_1/stack:output:0)lstm_856/strided_slice_1/stack_1:output:0)lstm_856/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_856/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_856/TensorArrayV2TensorListReserve-lstm_856/TensorArrayV2/element_shape:output:0!lstm_856/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_856/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_856/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_856/transpose:y:0Glstm_856/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_856/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_856/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_856/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_856/strided_slice_2StridedSlicelstm_856/transpose:y:0'lstm_856/strided_slice_2/stack:output:0)lstm_856/strided_slice_2/stack_1:output:0)lstm_856/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_856/lstm_cell_856/MatMul/ReadVariableOpReadVariableOp5lstm_856_lstm_cell_856_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_856/lstm_cell_856/MatMulMatMul!lstm_856/strided_slice_2:output:04lstm_856/lstm_cell_856/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_856/lstm_cell_856/MatMul_1/ReadVariableOpReadVariableOp7lstm_856_lstm_cell_856_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_856/lstm_cell_856/MatMul_1MatMullstm_856/zeros:output:06lstm_856/lstm_cell_856/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_856/lstm_cell_856/addAddV2'lstm_856/lstm_cell_856/MatMul:product:0)lstm_856/lstm_cell_856/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_856/lstm_cell_856/BiasAdd/ReadVariableOpReadVariableOp6lstm_856_lstm_cell_856_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_856/lstm_cell_856/BiasAddBiasAddlstm_856/lstm_cell_856/add:z:05lstm_856/lstm_cell_856/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_856/lstm_cell_856/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_856/lstm_cell_856/splitSplit/lstm_856/lstm_cell_856/split/split_dim:output:0'lstm_856/lstm_cell_856/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_856/lstm_cell_856/SigmoidSigmoid%lstm_856/lstm_cell_856/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_856/lstm_cell_856/Sigmoid_1Sigmoid%lstm_856/lstm_cell_856/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_856/lstm_cell_856/mulMul$lstm_856/lstm_cell_856/Sigmoid_1:y:0lstm_856/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_856/lstm_cell_856/ReluRelu%lstm_856/lstm_cell_856/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_856/lstm_cell_856/mul_1Mul"lstm_856/lstm_cell_856/Sigmoid:y:0)lstm_856/lstm_cell_856/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_856/lstm_cell_856/add_1AddV2lstm_856/lstm_cell_856/mul:z:0 lstm_856/lstm_cell_856/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_856/lstm_cell_856/Sigmoid_2Sigmoid%lstm_856/lstm_cell_856/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_856/lstm_cell_856/Relu_1Relu lstm_856/lstm_cell_856/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_856/lstm_cell_856/mul_2Mul$lstm_856/lstm_cell_856/Sigmoid_2:y:0+lstm_856/lstm_cell_856/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_856/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_856/TensorArrayV2_1TensorListReserve/lstm_856/TensorArrayV2_1/element_shape:output:0!lstm_856/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_856/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_856/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_856/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_856/whileWhile$lstm_856/while/loop_counter:output:0*lstm_856/while/maximum_iterations:output:0lstm_856/time:output:0!lstm_856/TensorArrayV2_1:handle:0lstm_856/zeros:output:0lstm_856/zeros_1:output:0!lstm_856/strided_slice_1:output:0@lstm_856/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_856_lstm_cell_856_matmul_readvariableop_resource7lstm_856_lstm_cell_856_matmul_1_readvariableop_resource6lstm_856_lstm_cell_856_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????2:?????????2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *'
bodyR
lstm_856_while_body_5134867*'
condR
lstm_856_while_cond_5134866*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_856/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_856/TensorArrayV2Stack/TensorListStackTensorListStacklstm_856/while:output:3Blstm_856/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_856/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_856/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_856/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_856/strided_slice_3StridedSlice4lstm_856/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_856/strided_slice_3/stack:output:0)lstm_856/strided_slice_3/stack_1:output:0)lstm_856/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_856/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_856/transpose_1	Transpose4lstm_856/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_856/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_856/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_857/ShapeShapelstm_856/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_857/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_857/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_857/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_857/strided_sliceStridedSlicelstm_857/Shape:output:0%lstm_857/strided_slice/stack:output:0'lstm_857/strided_slice/stack_1:output:0'lstm_857/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_857/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_857/zeros/packedPacklstm_857/strided_slice:output:0 lstm_857/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_857/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_857/zerosFilllstm_857/zeros/packed:output:0lstm_857/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_857/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_857/zeros_1/packedPacklstm_857/strided_slice:output:0"lstm_857/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_857/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_857/zeros_1Fill lstm_857/zeros_1/packed:output:0lstm_857/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_857/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_857/transpose	Transposelstm_856/transpose_1:y:0 lstm_857/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_857/Shape_1Shapelstm_857/transpose:y:0*
T0*
_output_shapes
:h
lstm_857/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_857/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_857/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_857/strided_slice_1StridedSlicelstm_857/Shape_1:output:0'lstm_857/strided_slice_1/stack:output:0)lstm_857/strided_slice_1/stack_1:output:0)lstm_857/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_857/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_857/TensorArrayV2TensorListReserve-lstm_857/TensorArrayV2/element_shape:output:0!lstm_857/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_857/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_857/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_857/transpose:y:0Glstm_857/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_857/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_857/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_857/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_857/strided_slice_2StridedSlicelstm_857/transpose:y:0'lstm_857/strided_slice_2/stack:output:0)lstm_857/strided_slice_2/stack_1:output:0)lstm_857/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_857/lstm_cell_857/MatMul/ReadVariableOpReadVariableOp5lstm_857_lstm_cell_857_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_857/lstm_cell_857/MatMulMatMul!lstm_857/strided_slice_2:output:04lstm_857/lstm_cell_857/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_857/lstm_cell_857/MatMul_1/ReadVariableOpReadVariableOp7lstm_857_lstm_cell_857_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_857/lstm_cell_857/MatMul_1MatMullstm_857/zeros:output:06lstm_857/lstm_cell_857/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_857/lstm_cell_857/addAddV2'lstm_857/lstm_cell_857/MatMul:product:0)lstm_857/lstm_cell_857/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_857/lstm_cell_857/BiasAdd/ReadVariableOpReadVariableOp6lstm_857_lstm_cell_857_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_857/lstm_cell_857/BiasAddBiasAddlstm_857/lstm_cell_857/add:z:05lstm_857/lstm_cell_857/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_857/lstm_cell_857/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_857/lstm_cell_857/splitSplit/lstm_857/lstm_cell_857/split/split_dim:output:0'lstm_857/lstm_cell_857/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_857/lstm_cell_857/SigmoidSigmoid%lstm_857/lstm_cell_857/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_857/lstm_cell_857/Sigmoid_1Sigmoid%lstm_857/lstm_cell_857/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_857/lstm_cell_857/mulMul$lstm_857/lstm_cell_857/Sigmoid_1:y:0lstm_857/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_857/lstm_cell_857/ReluRelu%lstm_857/lstm_cell_857/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_857/lstm_cell_857/mul_1Mul"lstm_857/lstm_cell_857/Sigmoid:y:0)lstm_857/lstm_cell_857/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_857/lstm_cell_857/add_1AddV2lstm_857/lstm_cell_857/mul:z:0 lstm_857/lstm_cell_857/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_857/lstm_cell_857/Sigmoid_2Sigmoid%lstm_857/lstm_cell_857/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_857/lstm_cell_857/Relu_1Relu lstm_857/lstm_cell_857/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_857/lstm_cell_857/mul_2Mul$lstm_857/lstm_cell_857/Sigmoid_2:y:0+lstm_857/lstm_cell_857/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_857/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_857/TensorArrayV2_1TensorListReserve/lstm_857/TensorArrayV2_1/element_shape:output:0!lstm_857/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_857/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_857/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_857/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_857/whileWhile$lstm_857/while/loop_counter:output:0*lstm_857/while/maximum_iterations:output:0lstm_857/time:output:0!lstm_857/TensorArrayV2_1:handle:0lstm_857/zeros:output:0lstm_857/zeros_1:output:0!lstm_857/strided_slice_1:output:0@lstm_857/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_857_lstm_cell_857_matmul_readvariableop_resource7lstm_857_lstm_cell_857_matmul_1_readvariableop_resource6lstm_857_lstm_cell_857_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????
:?????????
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *'
bodyR
lstm_857_while_body_5135006*'
condR
lstm_857_while_cond_5135005*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_857/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_857/TensorArrayV2Stack/TensorListStackTensorListStacklstm_857/while:output:3Blstm_857/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_857/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_857/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_857/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_857/strided_slice_3StridedSlice4lstm_857/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_857/strided_slice_3/stack:output:0)lstm_857/strided_slice_3/stack_1:output:0)lstm_857/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_857/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_857/transpose_1	Transpose4lstm_857/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_857/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_857/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_285/MatMul/ReadVariableOpReadVariableOp(dense_285_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_285/MatMulMatMul!lstm_857/strided_slice_3:output:0'dense_285/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_285/BiasAdd/ReadVariableOpReadVariableOp)dense_285_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_285/BiasAddBiasAdddense_285/MatMul:product:0(dense_285/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_285/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_285/BiasAdd/ReadVariableOp ^dense_285/MatMul/ReadVariableOp.^lstm_855/lstm_cell_855/BiasAdd/ReadVariableOp-^lstm_855/lstm_cell_855/MatMul/ReadVariableOp/^lstm_855/lstm_cell_855/MatMul_1/ReadVariableOp^lstm_855/while.^lstm_856/lstm_cell_856/BiasAdd/ReadVariableOp-^lstm_856/lstm_cell_856/MatMul/ReadVariableOp/^lstm_856/lstm_cell_856/MatMul_1/ReadVariableOp^lstm_856/while.^lstm_857/lstm_cell_857/BiasAdd/ReadVariableOp-^lstm_857/lstm_cell_857/MatMul/ReadVariableOp/^lstm_857/lstm_cell_857/MatMul_1/ReadVariableOp^lstm_857/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_285/BiasAdd/ReadVariableOp dense_285/BiasAdd/ReadVariableOp2B
dense_285/MatMul/ReadVariableOpdense_285/MatMul/ReadVariableOp2^
-lstm_855/lstm_cell_855/BiasAdd/ReadVariableOp-lstm_855/lstm_cell_855/BiasAdd/ReadVariableOp2\
,lstm_855/lstm_cell_855/MatMul/ReadVariableOp,lstm_855/lstm_cell_855/MatMul/ReadVariableOp2`
.lstm_855/lstm_cell_855/MatMul_1/ReadVariableOp.lstm_855/lstm_cell_855/MatMul_1/ReadVariableOp2 
lstm_855/whilelstm_855/while2^
-lstm_856/lstm_cell_856/BiasAdd/ReadVariableOp-lstm_856/lstm_cell_856/BiasAdd/ReadVariableOp2\
,lstm_856/lstm_cell_856/MatMul/ReadVariableOp,lstm_856/lstm_cell_856/MatMul/ReadVariableOp2`
.lstm_856/lstm_cell_856/MatMul_1/ReadVariableOp.lstm_856/lstm_cell_856/MatMul_1/ReadVariableOp2 
lstm_856/whilelstm_856/while2^
-lstm_857/lstm_cell_857/BiasAdd/ReadVariableOp-lstm_857/lstm_cell_857/BiasAdd/ReadVariableOp2\
,lstm_857/lstm_cell_857/MatMul/ReadVariableOp,lstm_857/lstm_cell_857/MatMul/ReadVariableOp2`
.lstm_857/lstm_cell_857/MatMul_1/ReadVariableOp.lstm_857/lstm_cell_857/MatMul_1/ReadVariableOp2 
lstm_857/whilelstm_857/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_5136527
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5136527___redundant_placeholder05
1while_while_cond_5136527___redundant_placeholder15
1while_while_cond_5136527___redundant_placeholder25
1while_while_cond_5136527___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????2:?????????2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????2:-)
'
_output_shapes
:?????????2:

_output_shapes
: :

_output_shapes
:
?
?
*sequential_285_lstm_857_while_cond_5132264L
Hsequential_285_lstm_857_while_sequential_285_lstm_857_while_loop_counterR
Nsequential_285_lstm_857_while_sequential_285_lstm_857_while_maximum_iterations-
)sequential_285_lstm_857_while_placeholder/
+sequential_285_lstm_857_while_placeholder_1/
+sequential_285_lstm_857_while_placeholder_2/
+sequential_285_lstm_857_while_placeholder_3N
Jsequential_285_lstm_857_while_less_sequential_285_lstm_857_strided_slice_1e
asequential_285_lstm_857_while_sequential_285_lstm_857_while_cond_5132264___redundant_placeholder0e
asequential_285_lstm_857_while_sequential_285_lstm_857_while_cond_5132264___redundant_placeholder1e
asequential_285_lstm_857_while_sequential_285_lstm_857_while_cond_5132264___redundant_placeholder2e
asequential_285_lstm_857_while_sequential_285_lstm_857_while_cond_5132264___redundant_placeholder3*
&sequential_285_lstm_857_while_identity
?
"sequential_285/lstm_857/while/LessLess)sequential_285_lstm_857_while_placeholderJsequential_285_lstm_857_while_less_sequential_285_lstm_857_strided_slice_1*
T0*
_output_shapes
: {
&sequential_285/lstm_857/while/IdentityIdentity&sequential_285/lstm_857/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_285_lstm_857_while_identity/sequential_285/lstm_857/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????
:?????????
: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????
:-)
'
_output_shapes
:?????????
:

_output_shapes
: :

_output_shapes
:
?
?
while_cond_5132785
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5132785___redundant_placeholder05
1while_while_cond_5132785___redundant_placeholder15
1while_while_cond_5132785___redundant_placeholder25
1while_while_cond_5132785___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????2:?????????2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????2:-)
'
_output_shapes
:?????????2:

_output_shapes
: :

_output_shapes
:
?
?
while_cond_5135911
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5135911___redundant_placeholder05
1while_while_cond_5135911___redundant_placeholder15
1while_while_cond_5135911___redundant_placeholder25
1while_while_cond_5135911___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????d:?????????d: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????d:-)
'
_output_shapes
:?????????d:

_output_shapes
: :

_output_shapes
:
?J
?
E__inference_lstm_857_layer_call_and_return_conditional_losses_5134070

inputs>
,lstm_cell_857_matmul_readvariableop_resource:2(@
.lstm_cell_857_matmul_1_readvariableop_resource:
(;
-lstm_cell_857_biasadd_readvariableop_resource:(
identity??$lstm_cell_857/BiasAdd/ReadVariableOp?#lstm_cell_857/MatMul/ReadVariableOp?%lstm_cell_857/MatMul_1/ReadVariableOp?while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????
R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:?????????2D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
#lstm_cell_857/MatMul/ReadVariableOpReadVariableOp,lstm_cell_857_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_857/MatMulMatMulstrided_slice_2:output:0+lstm_cell_857/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_857/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_857_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_857/MatMul_1MatMulzeros:output:0-lstm_cell_857/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_857/addAddV2lstm_cell_857/MatMul:product:0 lstm_cell_857/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_857/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_857_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_857/BiasAddBiasAddlstm_cell_857/add:z:0,lstm_cell_857/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_857/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_857/splitSplit&lstm_cell_857/split/split_dim:output:0lstm_cell_857/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_857/SigmoidSigmoidlstm_cell_857/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_857/Sigmoid_1Sigmoidlstm_cell_857/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_857/mulMullstm_cell_857/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_857/ReluRelulstm_cell_857/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_857/mul_1Mullstm_cell_857/Sigmoid:y:0 lstm_cell_857/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_857/add_1AddV2lstm_cell_857/mul:z:0lstm_cell_857/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_857/Sigmoid_2Sigmoidlstm_cell_857/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_857/Relu_1Relulstm_cell_857/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_857/mul_2Mullstm_cell_857/Sigmoid_2:y:0"lstm_cell_857/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_857_matmul_readvariableop_resource.lstm_cell_857_matmul_1_readvariableop_resource-lstm_cell_857_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????
:?????????
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_5133986*
condR
while_cond_5133985*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:?????????
?
NoOpNoOp%^lstm_cell_857/BiasAdd/ReadVariableOp$^lstm_cell_857/MatMul/ReadVariableOp&^lstm_cell_857/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_857/BiasAdd/ReadVariableOp$lstm_cell_857/BiasAdd/ReadVariableOp2J
#lstm_cell_857/MatMul/ReadVariableOp#lstm_cell_857/MatMul/ReadVariableOp2N
%lstm_cell_857/MatMul_1/ReadVariableOp%lstm_cell_857/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?#
?
while_body_5133327
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_857_5133351_0:2(/
while_lstm_cell_857_5133353_0:
(+
while_lstm_cell_857_5133355_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_857_5133351:2(-
while_lstm_cell_857_5133353:
()
while_lstm_cell_857_5133355:(??+while/lstm_cell_857/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_857/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_857_5133351_0while_lstm_cell_857_5133353_0while_lstm_cell_857_5133355_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:?????????
:?????????
:?????????
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_lstm_cell_857_layer_call_and_return_conditional_losses_5133268?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_857/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:???M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: ?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: ?
while/Identity_4Identity4while/lstm_cell_857/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_857/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_857/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_857_5133351while_lstm_cell_857_5133351_0"<
while_lstm_cell_857_5133353while_lstm_cell_857_5133353_0"<
while_lstm_cell_857_5133355while_lstm_cell_857_5133355_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_857/StatefulPartitionedCall+while/lstm_cell_857/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????
:-)
'
_output_shapes
:?????????
:

_output_shapes
: :

_output_shapes
: 
?
?
*__inference_lstm_855_layer_call_fn_5135534
inputs_0
unknown:	?
	unknown_0:	d?
	unknown_1:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????????????d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_lstm_855_layer_call_and_return_conditional_losses_5132505|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :??????????????????d`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?K
?
E__inference_lstm_857_layer_call_and_return_conditional_losses_5137085
inputs_0>
,lstm_cell_857_matmul_readvariableop_resource:2(@
.lstm_cell_857_matmul_1_readvariableop_resource:
(;
-lstm_cell_857_biasadd_readvariableop_resource:(
identity??$lstm_cell_857/BiasAdd/ReadVariableOp?#lstm_cell_857/MatMul/ReadVariableOp?%lstm_cell_857/MatMul_1/ReadVariableOp?while=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????
R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????2D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
#lstm_cell_857/MatMul/ReadVariableOpReadVariableOp,lstm_cell_857_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_857/MatMulMatMulstrided_slice_2:output:0+lstm_cell_857/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_857/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_857_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_857/MatMul_1MatMulzeros:output:0-lstm_cell_857/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_857/addAddV2lstm_cell_857/MatMul:product:0 lstm_cell_857/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_857/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_857_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_857/BiasAddBiasAddlstm_cell_857/add:z:0,lstm_cell_857/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_857/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_857/splitSplit&lstm_cell_857/split/split_dim:output:0lstm_cell_857/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_857/SigmoidSigmoidlstm_cell_857/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_857/Sigmoid_1Sigmoidlstm_cell_857/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_857/mulMullstm_cell_857/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_857/ReluRelulstm_cell_857/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_857/mul_1Mullstm_cell_857/Sigmoid:y:0 lstm_cell_857/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_857/add_1AddV2lstm_cell_857/mul:z:0lstm_cell_857/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_857/Sigmoid_2Sigmoidlstm_cell_857/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_857/Relu_1Relulstm_cell_857/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_857/mul_2Mullstm_cell_857/Sigmoid_2:y:0"lstm_cell_857/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_857_matmul_readvariableop_resource.lstm_cell_857_matmul_1_readvariableop_resource-lstm_cell_857_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????
:?????????
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_5137001*
condR
while_cond_5137000*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :??????????????????
*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :??????????????????
[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:?????????
?
NoOpNoOp%^lstm_cell_857/BiasAdd/ReadVariableOp$^lstm_cell_857/MatMul/ReadVariableOp&^lstm_cell_857/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_857/BiasAdd/ReadVariableOp$lstm_cell_857/BiasAdd/ReadVariableOp2J
#lstm_cell_857/MatMul/ReadVariableOp#lstm_cell_857/MatMul/ReadVariableOp2N
%lstm_cell_857/MatMul_1/ReadVariableOp%lstm_cell_857/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?
?
while_cond_5136384
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5136384___redundant_placeholder05
1while_while_cond_5136384___redundant_placeholder15
1while_while_cond_5136384___redundant_placeholder25
1while_while_cond_5136384___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????2:?????????2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????2:-)
'
_output_shapes
:?????????2:

_output_shapes
: :

_output_shapes
:
?
?
while_cond_5135625
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5135625___redundant_placeholder05
1while_while_cond_5135625___redundant_placeholder15
1while_while_cond_5135625___redundant_placeholder25
1while_while_cond_5135625___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????d:?????????d: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????d:-)
'
_output_shapes
:?????????d:

_output_shapes
: :

_output_shapes
:
?
?
/__inference_lstm_cell_857_layer_call_fn_5137603

inputs
states_0
states_1
unknown:2(
	unknown_0:
(
	unknown_1:(
identity

identity_1

identity_2??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:?????????
:?????????
:?????????
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_lstm_cell_857_layer_call_and_return_conditional_losses_5133122o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????
q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:?????????
q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:?????????
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????2:?????????
:?????????
: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????2
 
_user_specified_nameinputs:QM
'
_output_shapes
:?????????

"
_user_specified_name
states/0:QM
'
_output_shapes
:?????????

"
_user_specified_name
states/1
?
?
J__inference_lstm_cell_857_layer_call_and_return_conditional_losses_5137684

inputs
states_0
states_10
matmul_readvariableop_resource:2(2
 matmul_1_readvariableop_resource:
(-
biasadd_readvariableop_resource:(
identity

identity_1

identity_2??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2(*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0o
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(d
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:?????????(r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:(*
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:?????????
V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:?????????
U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:?????????
N
ReluRelusplit:output:2*
T0*'
_output_shapes
:?????????
_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:?????????
T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:?????????
V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:?????????
K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:?????????
c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:?????????
X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:?????????
Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:?????????
Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:?????????
?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????2:?????????
:?????????
: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:?????????2
 
_user_specified_nameinputs:QM
'
_output_shapes
:?????????

"
_user_specified_name
states/0:QM
'
_output_shapes
:?????????

"
_user_specified_name
states/1
?8
?
while_body_5136385
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_856_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_856_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_856_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_856_matmul_readvariableop_resource:	d?G
4while_lstm_cell_856_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_856_biasadd_readvariableop_resource:	???*while/lstm_cell_856/BiasAdd/ReadVariableOp?)while/lstm_cell_856/MatMul/ReadVariableOp?+while/lstm_cell_856/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_856/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_856_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_856/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_856/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_856/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_856_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_856/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_856/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_856/addAddV2$while/lstm_cell_856/MatMul:product:0&while/lstm_cell_856/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_856/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_856_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_856/BiasAddBiasAddwhile/lstm_cell_856/add:z:02while/lstm_cell_856/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_856/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_856/splitSplit,while/lstm_cell_856/split/split_dim:output:0$while/lstm_cell_856/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_856/SigmoidSigmoid"while/lstm_cell_856/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_856/Sigmoid_1Sigmoid"while/lstm_cell_856/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_856/mulMul!while/lstm_cell_856/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_856/ReluRelu"while/lstm_cell_856/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_856/mul_1Mulwhile/lstm_cell_856/Sigmoid:y:0&while/lstm_cell_856/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_856/add_1AddV2while/lstm_cell_856/mul:z:0while/lstm_cell_856/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_856/Sigmoid_2Sigmoid"while/lstm_cell_856/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_856/Relu_1Reluwhile/lstm_cell_856/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_856/mul_2Mul!while/lstm_cell_856/Sigmoid_2:y:0(while/lstm_cell_856/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_856/mul_2:z:0*
_output_shapes
: *
element_dtype0:???M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: ?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_856/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_856/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_856/BiasAdd/ReadVariableOp*^while/lstm_cell_856/MatMul/ReadVariableOp,^while/lstm_cell_856/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_856_biasadd_readvariableop_resource5while_lstm_cell_856_biasadd_readvariableop_resource_0"n
4while_lstm_cell_856_matmul_1_readvariableop_resource6while_lstm_cell_856_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_856_matmul_readvariableop_resource4while_lstm_cell_856_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_856/BiasAdd/ReadVariableOp*while/lstm_cell_856/BiasAdd/ReadVariableOp2V
)while/lstm_cell_856/MatMul/ReadVariableOp)while/lstm_cell_856/MatMul/ReadVariableOp2Z
+while/lstm_cell_856/MatMul_1/ReadVariableOp+while/lstm_cell_856/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????2:-)
'
_output_shapes
:?????????2:

_output_shapes
: :

_output_shapes
: 
?C
?

lstm_857_while_body_5135433.
*lstm_857_while_lstm_857_while_loop_counter4
0lstm_857_while_lstm_857_while_maximum_iterations
lstm_857_while_placeholder 
lstm_857_while_placeholder_1 
lstm_857_while_placeholder_2 
lstm_857_while_placeholder_3-
)lstm_857_while_lstm_857_strided_slice_1_0i
elstm_857_while_tensorarrayv2read_tensorlistgetitem_lstm_857_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_857_while_lstm_cell_857_matmul_readvariableop_resource_0:2(Q
?lstm_857_while_lstm_cell_857_matmul_1_readvariableop_resource_0:
(L
>lstm_857_while_lstm_cell_857_biasadd_readvariableop_resource_0:(
lstm_857_while_identity
lstm_857_while_identity_1
lstm_857_while_identity_2
lstm_857_while_identity_3
lstm_857_while_identity_4
lstm_857_while_identity_5+
'lstm_857_while_lstm_857_strided_slice_1g
clstm_857_while_tensorarrayv2read_tensorlistgetitem_lstm_857_tensorarrayunstack_tensorlistfromtensorM
;lstm_857_while_lstm_cell_857_matmul_readvariableop_resource:2(O
=lstm_857_while_lstm_cell_857_matmul_1_readvariableop_resource:
(J
<lstm_857_while_lstm_cell_857_biasadd_readvariableop_resource:(??3lstm_857/while/lstm_cell_857/BiasAdd/ReadVariableOp?2lstm_857/while/lstm_cell_857/MatMul/ReadVariableOp?4lstm_857/while/lstm_cell_857/MatMul_1/ReadVariableOp?
@lstm_857/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_857/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_857_while_tensorarrayv2read_tensorlistgetitem_lstm_857_tensorarrayunstack_tensorlistfromtensor_0lstm_857_while_placeholderIlstm_857/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_857/while/lstm_cell_857/MatMul/ReadVariableOpReadVariableOp=lstm_857_while_lstm_cell_857_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_857/while/lstm_cell_857/MatMulMatMul9lstm_857/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_857/while/lstm_cell_857/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_857/while/lstm_cell_857/MatMul_1/ReadVariableOpReadVariableOp?lstm_857_while_lstm_cell_857_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_857/while/lstm_cell_857/MatMul_1MatMullstm_857_while_placeholder_2<lstm_857/while/lstm_cell_857/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_857/while/lstm_cell_857/addAddV2-lstm_857/while/lstm_cell_857/MatMul:product:0/lstm_857/while/lstm_cell_857/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_857/while/lstm_cell_857/BiasAdd/ReadVariableOpReadVariableOp>lstm_857_while_lstm_cell_857_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_857/while/lstm_cell_857/BiasAddBiasAdd$lstm_857/while/lstm_cell_857/add:z:0;lstm_857/while/lstm_cell_857/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_857/while/lstm_cell_857/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_857/while/lstm_cell_857/splitSplit5lstm_857/while/lstm_cell_857/split/split_dim:output:0-lstm_857/while/lstm_cell_857/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_857/while/lstm_cell_857/SigmoidSigmoid+lstm_857/while/lstm_cell_857/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_857/while/lstm_cell_857/Sigmoid_1Sigmoid+lstm_857/while/lstm_cell_857/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_857/while/lstm_cell_857/mulMul*lstm_857/while/lstm_cell_857/Sigmoid_1:y:0lstm_857_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_857/while/lstm_cell_857/ReluRelu+lstm_857/while/lstm_cell_857/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_857/while/lstm_cell_857/mul_1Mul(lstm_857/while/lstm_cell_857/Sigmoid:y:0/lstm_857/while/lstm_cell_857/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_857/while/lstm_cell_857/add_1AddV2$lstm_857/while/lstm_cell_857/mul:z:0&lstm_857/while/lstm_cell_857/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_857/while/lstm_cell_857/Sigmoid_2Sigmoid+lstm_857/while/lstm_cell_857/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_857/while/lstm_cell_857/Relu_1Relu&lstm_857/while/lstm_cell_857/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_857/while/lstm_cell_857/mul_2Mul*lstm_857/while/lstm_cell_857/Sigmoid_2:y:01lstm_857/while/lstm_cell_857/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_857/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_857_while_placeholder_1lstm_857_while_placeholder&lstm_857/while/lstm_cell_857/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_857/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_857/while/addAddV2lstm_857_while_placeholderlstm_857/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_857/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_857/while/add_1AddV2*lstm_857_while_lstm_857_while_loop_counterlstm_857/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_857/while/IdentityIdentitylstm_857/while/add_1:z:0^lstm_857/while/NoOp*
T0*
_output_shapes
: ?
lstm_857/while/Identity_1Identity0lstm_857_while_lstm_857_while_maximum_iterations^lstm_857/while/NoOp*
T0*
_output_shapes
: t
lstm_857/while/Identity_2Identitylstm_857/while/add:z:0^lstm_857/while/NoOp*
T0*
_output_shapes
: ?
lstm_857/while/Identity_3IdentityClstm_857/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_857/while/NoOp*
T0*
_output_shapes
: ?
lstm_857/while/Identity_4Identity&lstm_857/while/lstm_cell_857/mul_2:z:0^lstm_857/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_857/while/Identity_5Identity&lstm_857/while/lstm_cell_857/add_1:z:0^lstm_857/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_857/while/NoOpNoOp4^lstm_857/while/lstm_cell_857/BiasAdd/ReadVariableOp3^lstm_857/while/lstm_cell_857/MatMul/ReadVariableOp5^lstm_857/while/lstm_cell_857/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_857_while_identity lstm_857/while/Identity:output:0"?
lstm_857_while_identity_1"lstm_857/while/Identity_1:output:0"?
lstm_857_while_identity_2"lstm_857/while/Identity_2:output:0"?
lstm_857_while_identity_3"lstm_857/while/Identity_3:output:0"?
lstm_857_while_identity_4"lstm_857/while/Identity_4:output:0"?
lstm_857_while_identity_5"lstm_857/while/Identity_5:output:0"T
'lstm_857_while_lstm_857_strided_slice_1)lstm_857_while_lstm_857_strided_slice_1_0"~
<lstm_857_while_lstm_cell_857_biasadd_readvariableop_resource>lstm_857_while_lstm_cell_857_biasadd_readvariableop_resource_0"?
=lstm_857_while_lstm_cell_857_matmul_1_readvariableop_resource?lstm_857_while_lstm_cell_857_matmul_1_readvariableop_resource_0"|
;lstm_857_while_lstm_cell_857_matmul_readvariableop_resource=lstm_857_while_lstm_cell_857_matmul_readvariableop_resource_0"?
clstm_857_while_tensorarrayv2read_tensorlistgetitem_lstm_857_tensorarrayunstack_tensorlistfromtensorelstm_857_while_tensorarrayv2read_tensorlistgetitem_lstm_857_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_857/while/lstm_cell_857/BiasAdd/ReadVariableOp3lstm_857/while/lstm_cell_857/BiasAdd/ReadVariableOp2h
2lstm_857/while/lstm_cell_857/MatMul/ReadVariableOp2lstm_857/while/lstm_cell_857/MatMul/ReadVariableOp2l
4lstm_857/while/lstm_cell_857/MatMul_1/ReadVariableOp4lstm_857/while/lstm_cell_857/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????
:-)
'
_output_shapes
:?????????
:

_output_shapes
: :

_output_shapes
: 
?
?
J__inference_lstm_cell_855_layer_call_and_return_conditional_losses_5132422

inputs

states
states_11
matmul_readvariableop_resource:	?3
 matmul_1_readvariableop_resource:	d?.
biasadd_readvariableop_resource:	?
identity

identity_1

identity_2??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????y
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:??????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:?????????dV
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:?????????dU
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:?????????dN
ReluRelusplit:output:2*
T0*'
_output_shapes
:?????????d_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:?????????dT
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:?????????dV
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:?????????dK
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:?????????dc
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:?????????dX
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:?????????dZ

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:?????????dZ

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:?????????d?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????:?????????d:?????????d: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????d
 
_user_specified_namestates:OK
'
_output_shapes
:?????????d
 
_user_specified_namestates
?
?
while_cond_5133469
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5133469___redundant_placeholder05
1while_while_cond_5133469___redundant_placeholder15
1while_while_cond_5133469___redundant_placeholder25
1while_while_cond_5133469___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????d:?????????d: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????d:-)
'
_output_shapes
:?????????d:

_output_shapes
: :

_output_shapes
:
?
?
while_cond_5133985
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5133985___redundant_placeholder05
1while_while_cond_5133985___redundant_placeholder15
1while_while_cond_5133985___redundant_placeholder25
1while_while_cond_5133985___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????
:?????????
: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????
:-)
'
_output_shapes
:?????????
:

_output_shapes
: :

_output_shapes
:
?J
?
E__inference_lstm_855_layer_call_and_return_conditional_losses_5135996

inputs?
,lstm_cell_855_matmul_readvariableop_resource:	?A
.lstm_cell_855_matmul_1_readvariableop_resource:	d?<
-lstm_cell_855_biasadd_readvariableop_resource:	?
identity??$lstm_cell_855/BiasAdd/ReadVariableOp?#lstm_cell_855/MatMul/ReadVariableOp?%lstm_cell_855/MatMul_1/ReadVariableOp?while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ds
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????dR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:?????????D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
#lstm_cell_855/MatMul/ReadVariableOpReadVariableOp,lstm_cell_855_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_855/MatMulMatMulstrided_slice_2:output:0+lstm_cell_855/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_855/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_855_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_855/MatMul_1MatMulzeros:output:0-lstm_cell_855/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_855/addAddV2lstm_cell_855/MatMul:product:0 lstm_cell_855/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_855/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_855_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_855/BiasAddBiasAddlstm_cell_855/add:z:0,lstm_cell_855/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_855/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_855/splitSplit&lstm_cell_855/split/split_dim:output:0lstm_cell_855/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_855/SigmoidSigmoidlstm_cell_855/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_855/Sigmoid_1Sigmoidlstm_cell_855/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_855/mulMullstm_cell_855/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_855/ReluRelulstm_cell_855/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_855/mul_1Mullstm_cell_855/Sigmoid:y:0 lstm_cell_855/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_855/add_1AddV2lstm_cell_855/mul:z:0lstm_cell_855/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_855/Sigmoid_2Sigmoidlstm_cell_855/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_855/Relu_1Relulstm_cell_855/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_855/mul_2Mullstm_cell_855/Sigmoid_2:y:0"lstm_cell_855/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_855_matmul_readvariableop_resource.lstm_cell_855_matmul_1_readvariableop_resource-lstm_cell_855_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????d:?????????d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_5135912*
condR
while_cond_5135911*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:?????????d?
NoOpNoOp%^lstm_cell_855/BiasAdd/ReadVariableOp$^lstm_cell_855/MatMul/ReadVariableOp&^lstm_cell_855/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_855/BiasAdd/ReadVariableOp$lstm_cell_855/BiasAdd/ReadVariableOp2J
#lstm_cell_855/MatMul/ReadVariableOp#lstm_cell_855/MatMul/ReadVariableOp2N
%lstm_cell_855/MatMul_1/ReadVariableOp%lstm_cell_855/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?C
?

lstm_855_while_body_5135155.
*lstm_855_while_lstm_855_while_loop_counter4
0lstm_855_while_lstm_855_while_maximum_iterations
lstm_855_while_placeholder 
lstm_855_while_placeholder_1 
lstm_855_while_placeholder_2 
lstm_855_while_placeholder_3-
)lstm_855_while_lstm_855_strided_slice_1_0i
elstm_855_while_tensorarrayv2read_tensorlistgetitem_lstm_855_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_855_while_lstm_cell_855_matmul_readvariableop_resource_0:	?R
?lstm_855_while_lstm_cell_855_matmul_1_readvariableop_resource_0:	d?M
>lstm_855_while_lstm_cell_855_biasadd_readvariableop_resource_0:	?
lstm_855_while_identity
lstm_855_while_identity_1
lstm_855_while_identity_2
lstm_855_while_identity_3
lstm_855_while_identity_4
lstm_855_while_identity_5+
'lstm_855_while_lstm_855_strided_slice_1g
clstm_855_while_tensorarrayv2read_tensorlistgetitem_lstm_855_tensorarrayunstack_tensorlistfromtensorN
;lstm_855_while_lstm_cell_855_matmul_readvariableop_resource:	?P
=lstm_855_while_lstm_cell_855_matmul_1_readvariableop_resource:	d?K
<lstm_855_while_lstm_cell_855_biasadd_readvariableop_resource:	???3lstm_855/while/lstm_cell_855/BiasAdd/ReadVariableOp?2lstm_855/while/lstm_cell_855/MatMul/ReadVariableOp?4lstm_855/while/lstm_cell_855/MatMul_1/ReadVariableOp?
@lstm_855/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_855/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_855_while_tensorarrayv2read_tensorlistgetitem_lstm_855_tensorarrayunstack_tensorlistfromtensor_0lstm_855_while_placeholderIlstm_855/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_855/while/lstm_cell_855/MatMul/ReadVariableOpReadVariableOp=lstm_855_while_lstm_cell_855_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_855/while/lstm_cell_855/MatMulMatMul9lstm_855/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_855/while/lstm_cell_855/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_855/while/lstm_cell_855/MatMul_1/ReadVariableOpReadVariableOp?lstm_855_while_lstm_cell_855_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_855/while/lstm_cell_855/MatMul_1MatMullstm_855_while_placeholder_2<lstm_855/while/lstm_cell_855/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_855/while/lstm_cell_855/addAddV2-lstm_855/while/lstm_cell_855/MatMul:product:0/lstm_855/while/lstm_cell_855/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_855/while/lstm_cell_855/BiasAdd/ReadVariableOpReadVariableOp>lstm_855_while_lstm_cell_855_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_855/while/lstm_cell_855/BiasAddBiasAdd$lstm_855/while/lstm_cell_855/add:z:0;lstm_855/while/lstm_cell_855/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_855/while/lstm_cell_855/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_855/while/lstm_cell_855/splitSplit5lstm_855/while/lstm_cell_855/split/split_dim:output:0-lstm_855/while/lstm_cell_855/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_855/while/lstm_cell_855/SigmoidSigmoid+lstm_855/while/lstm_cell_855/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_855/while/lstm_cell_855/Sigmoid_1Sigmoid+lstm_855/while/lstm_cell_855/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_855/while/lstm_cell_855/mulMul*lstm_855/while/lstm_cell_855/Sigmoid_1:y:0lstm_855_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_855/while/lstm_cell_855/ReluRelu+lstm_855/while/lstm_cell_855/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_855/while/lstm_cell_855/mul_1Mul(lstm_855/while/lstm_cell_855/Sigmoid:y:0/lstm_855/while/lstm_cell_855/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_855/while/lstm_cell_855/add_1AddV2$lstm_855/while/lstm_cell_855/mul:z:0&lstm_855/while/lstm_cell_855/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_855/while/lstm_cell_855/Sigmoid_2Sigmoid+lstm_855/while/lstm_cell_855/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_855/while/lstm_cell_855/Relu_1Relu&lstm_855/while/lstm_cell_855/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_855/while/lstm_cell_855/mul_2Mul*lstm_855/while/lstm_cell_855/Sigmoid_2:y:01lstm_855/while/lstm_cell_855/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_855/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_855_while_placeholder_1lstm_855_while_placeholder&lstm_855/while/lstm_cell_855/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_855/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_855/while/addAddV2lstm_855_while_placeholderlstm_855/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_855/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_855/while/add_1AddV2*lstm_855_while_lstm_855_while_loop_counterlstm_855/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_855/while/IdentityIdentitylstm_855/while/add_1:z:0^lstm_855/while/NoOp*
T0*
_output_shapes
: ?
lstm_855/while/Identity_1Identity0lstm_855_while_lstm_855_while_maximum_iterations^lstm_855/while/NoOp*
T0*
_output_shapes
: t
lstm_855/while/Identity_2Identitylstm_855/while/add:z:0^lstm_855/while/NoOp*
T0*
_output_shapes
: ?
lstm_855/while/Identity_3IdentityClstm_855/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_855/while/NoOp*
T0*
_output_shapes
: ?
lstm_855/while/Identity_4Identity&lstm_855/while/lstm_cell_855/mul_2:z:0^lstm_855/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_855/while/Identity_5Identity&lstm_855/while/lstm_cell_855/add_1:z:0^lstm_855/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_855/while/NoOpNoOp4^lstm_855/while/lstm_cell_855/BiasAdd/ReadVariableOp3^lstm_855/while/lstm_cell_855/MatMul/ReadVariableOp5^lstm_855/while/lstm_cell_855/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_855_while_identity lstm_855/while/Identity:output:0"?
lstm_855_while_identity_1"lstm_855/while/Identity_1:output:0"?
lstm_855_while_identity_2"lstm_855/while/Identity_2:output:0"?
lstm_855_while_identity_3"lstm_855/while/Identity_3:output:0"?
lstm_855_while_identity_4"lstm_855/while/Identity_4:output:0"?
lstm_855_while_identity_5"lstm_855/while/Identity_5:output:0"T
'lstm_855_while_lstm_855_strided_slice_1)lstm_855_while_lstm_855_strided_slice_1_0"~
<lstm_855_while_lstm_cell_855_biasadd_readvariableop_resource>lstm_855_while_lstm_cell_855_biasadd_readvariableop_resource_0"?
=lstm_855_while_lstm_cell_855_matmul_1_readvariableop_resource?lstm_855_while_lstm_cell_855_matmul_1_readvariableop_resource_0"|
;lstm_855_while_lstm_cell_855_matmul_readvariableop_resource=lstm_855_while_lstm_cell_855_matmul_readvariableop_resource_0"?
clstm_855_while_tensorarrayv2read_tensorlistgetitem_lstm_855_tensorarrayunstack_tensorlistfromtensorelstm_855_while_tensorarrayv2read_tensorlistgetitem_lstm_855_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_855/while/lstm_cell_855/BiasAdd/ReadVariableOp3lstm_855/while/lstm_cell_855/BiasAdd/ReadVariableOp2h
2lstm_855/while/lstm_cell_855/MatMul/ReadVariableOp2lstm_855/while/lstm_cell_855/MatMul/ReadVariableOp2l
4lstm_855/while/lstm_cell_855/MatMul_1/ReadVariableOp4lstm_855/while/lstm_cell_855/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????d:-)
'
_output_shapes
:?????????d:

_output_shapes
: :

_output_shapes
: 
?

?
lstm_857_while_cond_5135432.
*lstm_857_while_lstm_857_while_loop_counter4
0lstm_857_while_lstm_857_while_maximum_iterations
lstm_857_while_placeholder 
lstm_857_while_placeholder_1 
lstm_857_while_placeholder_2 
lstm_857_while_placeholder_30
,lstm_857_while_less_lstm_857_strided_slice_1G
Clstm_857_while_lstm_857_while_cond_5135432___redundant_placeholder0G
Clstm_857_while_lstm_857_while_cond_5135432___redundant_placeholder1G
Clstm_857_while_lstm_857_while_cond_5135432___redundant_placeholder2G
Clstm_857_while_lstm_857_while_cond_5135432___redundant_placeholder3
lstm_857_while_identity
?
lstm_857/while/LessLesslstm_857_while_placeholder,lstm_857_while_less_lstm_857_strided_slice_1*
T0*
_output_shapes
: ]
lstm_857/while/IdentityIdentitylstm_857/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_857_while_identity lstm_857/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????
:?????????
: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????
:-)
'
_output_shapes
:?????????
:

_output_shapes
: :

_output_shapes
:
?#
?
while_body_5132786
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_856_5132810_0:	d?0
while_lstm_cell_856_5132812_0:	2?,
while_lstm_cell_856_5132814_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_856_5132810:	d?.
while_lstm_cell_856_5132812:	2?*
while_lstm_cell_856_5132814:	???+while/lstm_cell_856/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_856/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_856_5132810_0while_lstm_cell_856_5132812_0while_lstm_cell_856_5132814_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:?????????2:?????????2:?????????2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_lstm_cell_856_layer_call_and_return_conditional_losses_5132772?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_856/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:???M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: ?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: ?
while/Identity_4Identity4while/lstm_cell_856/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_856/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_856/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_856_5132810while_lstm_cell_856_5132810_0"<
while_lstm_cell_856_5132812while_lstm_cell_856_5132812_0"<
while_lstm_cell_856_5132814while_lstm_cell_856_5132814_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_856/StatefulPartitionedCall+while/lstm_cell_856/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????2:-)
'
_output_shapes
:?????????2:

_output_shapes
: :

_output_shapes
: 
?K
?
E__inference_lstm_856_layer_call_and_return_conditional_losses_5136469
inputs_0?
,lstm_cell_856_matmul_readvariableop_resource:	d?A
.lstm_cell_856_matmul_1_readvariableop_resource:	2?<
-lstm_cell_856_biasadd_readvariableop_resource:	?
identity??$lstm_cell_856/BiasAdd/ReadVariableOp?#lstm_cell_856/MatMul/ReadVariableOp?%lstm_cell_856/MatMul_1/ReadVariableOp?while=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????2R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????dD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
#lstm_cell_856/MatMul/ReadVariableOpReadVariableOp,lstm_cell_856_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_856/MatMulMatMulstrided_slice_2:output:0+lstm_cell_856/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_856/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_856_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_856/MatMul_1MatMulzeros:output:0-lstm_cell_856/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_856/addAddV2lstm_cell_856/MatMul:product:0 lstm_cell_856/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_856/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_856_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_856/BiasAddBiasAddlstm_cell_856/add:z:0,lstm_cell_856/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_856/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_856/splitSplit&lstm_cell_856/split/split_dim:output:0lstm_cell_856/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_856/SigmoidSigmoidlstm_cell_856/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_856/Sigmoid_1Sigmoidlstm_cell_856/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_856/mulMullstm_cell_856/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_856/ReluRelulstm_cell_856/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_856/mul_1Mullstm_cell_856/Sigmoid:y:0 lstm_cell_856/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_856/add_1AddV2lstm_cell_856/mul:z:0lstm_cell_856/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_856/Sigmoid_2Sigmoidlstm_cell_856/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_856/Relu_1Relulstm_cell_856/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_856/mul_2Mullstm_cell_856/Sigmoid_2:y:0"lstm_cell_856/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_856_matmul_readvariableop_resource.lstm_cell_856_matmul_1_readvariableop_resource-lstm_cell_856_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????2:?????????2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_5136385*
condR
while_cond_5136384*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :??????????????????2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :??????????????????2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :??????????????????2?
NoOpNoOp%^lstm_cell_856/BiasAdd/ReadVariableOp$^lstm_cell_856/MatMul/ReadVariableOp&^lstm_cell_856/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_856/BiasAdd/ReadVariableOp$lstm_cell_856/BiasAdd/ReadVariableOp2J
#lstm_cell_856/MatMul/ReadVariableOp#lstm_cell_856/MatMul/ReadVariableOp2N
%lstm_cell_856/MatMul_1/ReadVariableOp%lstm_cell_856/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?

?
lstm_855_while_cond_5135154.
*lstm_855_while_lstm_855_while_loop_counter4
0lstm_855_while_lstm_855_while_maximum_iterations
lstm_855_while_placeholder 
lstm_855_while_placeholder_1 
lstm_855_while_placeholder_2 
lstm_855_while_placeholder_30
,lstm_855_while_less_lstm_855_strided_slice_1G
Clstm_855_while_lstm_855_while_cond_5135154___redundant_placeholder0G
Clstm_855_while_lstm_855_while_cond_5135154___redundant_placeholder1G
Clstm_855_while_lstm_855_while_cond_5135154___redundant_placeholder2G
Clstm_855_while_lstm_855_while_cond_5135154___redundant_placeholder3
lstm_855_while_identity
?
lstm_855/while/LessLesslstm_855_while_placeholder,lstm_855_while_less_lstm_855_strided_slice_1*
T0*
_output_shapes
: ]
lstm_855/while/IdentityIdentitylstm_855/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_855_while_identity lstm_855/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????d:?????????d: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????d:-)
'
_output_shapes
:?????????d:

_output_shapes
: :

_output_shapes
:
?8
?
while_body_5133620
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_856_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_856_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_856_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_856_matmul_readvariableop_resource:	d?G
4while_lstm_cell_856_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_856_biasadd_readvariableop_resource:	???*while/lstm_cell_856/BiasAdd/ReadVariableOp?)while/lstm_cell_856/MatMul/ReadVariableOp?+while/lstm_cell_856/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_856/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_856_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_856/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_856/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_856/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_856_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_856/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_856/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_856/addAddV2$while/lstm_cell_856/MatMul:product:0&while/lstm_cell_856/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_856/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_856_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_856/BiasAddBiasAddwhile/lstm_cell_856/add:z:02while/lstm_cell_856/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_856/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_856/splitSplit,while/lstm_cell_856/split/split_dim:output:0$while/lstm_cell_856/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_856/SigmoidSigmoid"while/lstm_cell_856/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_856/Sigmoid_1Sigmoid"while/lstm_cell_856/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_856/mulMul!while/lstm_cell_856/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_856/ReluRelu"while/lstm_cell_856/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_856/mul_1Mulwhile/lstm_cell_856/Sigmoid:y:0&while/lstm_cell_856/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_856/add_1AddV2while/lstm_cell_856/mul:z:0while/lstm_cell_856/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_856/Sigmoid_2Sigmoid"while/lstm_cell_856/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_856/Relu_1Reluwhile/lstm_cell_856/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_856/mul_2Mul!while/lstm_cell_856/Sigmoid_2:y:0(while/lstm_cell_856/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_856/mul_2:z:0*
_output_shapes
: *
element_dtype0:???M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: ?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_856/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_856/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_856/BiasAdd/ReadVariableOp*^while/lstm_cell_856/MatMul/ReadVariableOp,^while/lstm_cell_856/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_856_biasadd_readvariableop_resource5while_lstm_cell_856_biasadd_readvariableop_resource_0"n
4while_lstm_cell_856_matmul_1_readvariableop_resource6while_lstm_cell_856_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_856_matmul_readvariableop_resource4while_lstm_cell_856_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_856/BiasAdd/ReadVariableOp*while/lstm_cell_856/BiasAdd/ReadVariableOp2V
)while/lstm_cell_856/MatMul/ReadVariableOp)while/lstm_cell_856/MatMul/ReadVariableOp2Z
+while/lstm_cell_856/MatMul_1/ReadVariableOp+while/lstm_cell_856/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????2:-)
'
_output_shapes
:?????????2:

_output_shapes
: :

_output_shapes
: 
?8
?
E__inference_lstm_855_layer_call_and_return_conditional_losses_5132696

inputs(
lstm_cell_855_5132614:	?(
lstm_cell_855_5132616:	d?$
lstm_cell_855_5132618:	?
identity??%lstm_cell_855/StatefulPartitionedCall?while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ds
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????dR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
%lstm_cell_855/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_855_5132614lstm_cell_855_5132616lstm_cell_855_5132618*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:?????????d:?????????d:?????????d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_lstm_cell_855_layer_call_and_return_conditional_losses_5132568n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_855_5132614lstm_cell_855_5132616lstm_cell_855_5132618*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????d:?????????d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_5132627*
condR
while_cond_5132626*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :??????????????????d*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :??????????????????d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :??????????????????dv
NoOpNoOp&^lstm_cell_855/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_855/StatefulPartitionedCall%lstm_cell_855/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
*__inference_lstm_856_layer_call_fn_5136150
inputs_0
unknown:	d?
	unknown_0:	2?
	unknown_1:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????????????2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_lstm_856_layer_call_and_return_conditional_losses_5132855|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :??????????????????2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
??
?
"__inference__wrapped_model_5132355
lstm_855_inputW
Dsequential_285_lstm_855_lstm_cell_855_matmul_readvariableop_resource:	?Y
Fsequential_285_lstm_855_lstm_cell_855_matmul_1_readvariableop_resource:	d?T
Esequential_285_lstm_855_lstm_cell_855_biasadd_readvariableop_resource:	?W
Dsequential_285_lstm_856_lstm_cell_856_matmul_readvariableop_resource:	d?Y
Fsequential_285_lstm_856_lstm_cell_856_matmul_1_readvariableop_resource:	2?T
Esequential_285_lstm_856_lstm_cell_856_biasadd_readvariableop_resource:	?V
Dsequential_285_lstm_857_lstm_cell_857_matmul_readvariableop_resource:2(X
Fsequential_285_lstm_857_lstm_cell_857_matmul_1_readvariableop_resource:
(S
Esequential_285_lstm_857_lstm_cell_857_biasadd_readvariableop_resource:(I
7sequential_285_dense_285_matmul_readvariableop_resource:
F
8sequential_285_dense_285_biasadd_readvariableop_resource:
identity??/sequential_285/dense_285/BiasAdd/ReadVariableOp?.sequential_285/dense_285/MatMul/ReadVariableOp?<sequential_285/lstm_855/lstm_cell_855/BiasAdd/ReadVariableOp?;sequential_285/lstm_855/lstm_cell_855/MatMul/ReadVariableOp?=sequential_285/lstm_855/lstm_cell_855/MatMul_1/ReadVariableOp?sequential_285/lstm_855/while?<sequential_285/lstm_856/lstm_cell_856/BiasAdd/ReadVariableOp?;sequential_285/lstm_856/lstm_cell_856/MatMul/ReadVariableOp?=sequential_285/lstm_856/lstm_cell_856/MatMul_1/ReadVariableOp?sequential_285/lstm_856/while?<sequential_285/lstm_857/lstm_cell_857/BiasAdd/ReadVariableOp?;sequential_285/lstm_857/lstm_cell_857/MatMul/ReadVariableOp?=sequential_285/lstm_857/lstm_cell_857/MatMul_1/ReadVariableOp?sequential_285/lstm_857/while[
sequential_285/lstm_855/ShapeShapelstm_855_input*
T0*
_output_shapes
:u
+sequential_285/lstm_855/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_285/lstm_855/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_285/lstm_855/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_285/lstm_855/strided_sliceStridedSlice&sequential_285/lstm_855/Shape:output:04sequential_285/lstm_855/strided_slice/stack:output:06sequential_285/lstm_855/strided_slice/stack_1:output:06sequential_285/lstm_855/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_285/lstm_855/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
$sequential_285/lstm_855/zeros/packedPack.sequential_285/lstm_855/strided_slice:output:0/sequential_285/lstm_855/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_285/lstm_855/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_285/lstm_855/zerosFill-sequential_285/lstm_855/zeros/packed:output:0,sequential_285/lstm_855/zeros/Const:output:0*
T0*'
_output_shapes
:?????????dj
(sequential_285/lstm_855/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
&sequential_285/lstm_855/zeros_1/packedPack.sequential_285/lstm_855/strided_slice:output:01sequential_285/lstm_855/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_285/lstm_855/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_285/lstm_855/zeros_1Fill/sequential_285/lstm_855/zeros_1/packed:output:0.sequential_285/lstm_855/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????d{
&sequential_285/lstm_855/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_285/lstm_855/transpose	Transposelstm_855_input/sequential_285/lstm_855/transpose/perm:output:0*
T0*+
_output_shapes
:?????????t
sequential_285/lstm_855/Shape_1Shape%sequential_285/lstm_855/transpose:y:0*
T0*
_output_shapes
:w
-sequential_285/lstm_855/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_285/lstm_855/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_285/lstm_855/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_285/lstm_855/strided_slice_1StridedSlice(sequential_285/lstm_855/Shape_1:output:06sequential_285/lstm_855/strided_slice_1/stack:output:08sequential_285/lstm_855/strided_slice_1/stack_1:output:08sequential_285/lstm_855/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_285/lstm_855/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_285/lstm_855/TensorArrayV2TensorListReserve<sequential_285/lstm_855/TensorArrayV2/element_shape:output:00sequential_285/lstm_855/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_285/lstm_855/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
?sequential_285/lstm_855/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_285/lstm_855/transpose:y:0Vsequential_285/lstm_855/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_285/lstm_855/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_285/lstm_855/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_285/lstm_855/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_285/lstm_855/strided_slice_2StridedSlice%sequential_285/lstm_855/transpose:y:06sequential_285/lstm_855/strided_slice_2/stack:output:08sequential_285/lstm_855/strided_slice_2/stack_1:output:08sequential_285/lstm_855/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
;sequential_285/lstm_855/lstm_cell_855/MatMul/ReadVariableOpReadVariableOpDsequential_285_lstm_855_lstm_cell_855_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
,sequential_285/lstm_855/lstm_cell_855/MatMulMatMul0sequential_285/lstm_855/strided_slice_2:output:0Csequential_285/lstm_855/lstm_cell_855/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_285/lstm_855/lstm_cell_855/MatMul_1/ReadVariableOpReadVariableOpFsequential_285_lstm_855_lstm_cell_855_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
.sequential_285/lstm_855/lstm_cell_855/MatMul_1MatMul&sequential_285/lstm_855/zeros:output:0Esequential_285/lstm_855/lstm_cell_855/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_285/lstm_855/lstm_cell_855/addAddV26sequential_285/lstm_855/lstm_cell_855/MatMul:product:08sequential_285/lstm_855/lstm_cell_855/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_285/lstm_855/lstm_cell_855/BiasAdd/ReadVariableOpReadVariableOpEsequential_285_lstm_855_lstm_cell_855_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_285/lstm_855/lstm_cell_855/BiasAddBiasAdd-sequential_285/lstm_855/lstm_cell_855/add:z:0Dsequential_285/lstm_855/lstm_cell_855/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_285/lstm_855/lstm_cell_855/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_285/lstm_855/lstm_cell_855/splitSplit>sequential_285/lstm_855/lstm_cell_855/split/split_dim:output:06sequential_285/lstm_855/lstm_cell_855/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
-sequential_285/lstm_855/lstm_cell_855/SigmoidSigmoid4sequential_285/lstm_855/lstm_cell_855/split:output:0*
T0*'
_output_shapes
:?????????d?
/sequential_285/lstm_855/lstm_cell_855/Sigmoid_1Sigmoid4sequential_285/lstm_855/lstm_cell_855/split:output:1*
T0*'
_output_shapes
:?????????d?
)sequential_285/lstm_855/lstm_cell_855/mulMul3sequential_285/lstm_855/lstm_cell_855/Sigmoid_1:y:0(sequential_285/lstm_855/zeros_1:output:0*
T0*'
_output_shapes
:?????????d?
*sequential_285/lstm_855/lstm_cell_855/ReluRelu4sequential_285/lstm_855/lstm_cell_855/split:output:2*
T0*'
_output_shapes
:?????????d?
+sequential_285/lstm_855/lstm_cell_855/mul_1Mul1sequential_285/lstm_855/lstm_cell_855/Sigmoid:y:08sequential_285/lstm_855/lstm_cell_855/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
+sequential_285/lstm_855/lstm_cell_855/add_1AddV2-sequential_285/lstm_855/lstm_cell_855/mul:z:0/sequential_285/lstm_855/lstm_cell_855/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
/sequential_285/lstm_855/lstm_cell_855/Sigmoid_2Sigmoid4sequential_285/lstm_855/lstm_cell_855/split:output:3*
T0*'
_output_shapes
:?????????d?
,sequential_285/lstm_855/lstm_cell_855/Relu_1Relu/sequential_285/lstm_855/lstm_cell_855/add_1:z:0*
T0*'
_output_shapes
:?????????d?
+sequential_285/lstm_855/lstm_cell_855/mul_2Mul3sequential_285/lstm_855/lstm_cell_855/Sigmoid_2:y:0:sequential_285/lstm_855/lstm_cell_855/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
5sequential_285/lstm_855/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
'sequential_285/lstm_855/TensorArrayV2_1TensorListReserve>sequential_285/lstm_855/TensorArrayV2_1/element_shape:output:00sequential_285/lstm_855/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_285/lstm_855/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_285/lstm_855/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_285/lstm_855/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_285/lstm_855/whileWhile3sequential_285/lstm_855/while/loop_counter:output:09sequential_285/lstm_855/while/maximum_iterations:output:0%sequential_285/lstm_855/time:output:00sequential_285/lstm_855/TensorArrayV2_1:handle:0&sequential_285/lstm_855/zeros:output:0(sequential_285/lstm_855/zeros_1:output:00sequential_285/lstm_855/strided_slice_1:output:0Osequential_285/lstm_855/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_285_lstm_855_lstm_cell_855_matmul_readvariableop_resourceFsequential_285_lstm_855_lstm_cell_855_matmul_1_readvariableop_resourceEsequential_285_lstm_855_lstm_cell_855_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????d:?????????d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *6
body.R,
*sequential_285_lstm_855_while_body_5131987*6
cond.R,
*sequential_285_lstm_855_while_cond_5131986*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
Hsequential_285/lstm_855/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
:sequential_285/lstm_855/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_285/lstm_855/while:output:3Qsequential_285/lstm_855/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0?
-sequential_285/lstm_855/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_285/lstm_855/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_285/lstm_855/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_285/lstm_855/strided_slice_3StridedSliceCsequential_285/lstm_855/TensorArrayV2Stack/TensorListStack:tensor:06sequential_285/lstm_855/strided_slice_3/stack:output:08sequential_285/lstm_855/strided_slice_3/stack_1:output:08sequential_285/lstm_855/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask}
(sequential_285/lstm_855/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_285/lstm_855/transpose_1	TransposeCsequential_285/lstm_855/TensorArrayV2Stack/TensorListStack:tensor:01sequential_285/lstm_855/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????ds
sequential_285/lstm_855/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_285/lstm_856/ShapeShape'sequential_285/lstm_855/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_285/lstm_856/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_285/lstm_856/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_285/lstm_856/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_285/lstm_856/strided_sliceStridedSlice&sequential_285/lstm_856/Shape:output:04sequential_285/lstm_856/strided_slice/stack:output:06sequential_285/lstm_856/strided_slice/stack_1:output:06sequential_285/lstm_856/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_285/lstm_856/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
$sequential_285/lstm_856/zeros/packedPack.sequential_285/lstm_856/strided_slice:output:0/sequential_285/lstm_856/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_285/lstm_856/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_285/lstm_856/zerosFill-sequential_285/lstm_856/zeros/packed:output:0,sequential_285/lstm_856/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2j
(sequential_285/lstm_856/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
&sequential_285/lstm_856/zeros_1/packedPack.sequential_285/lstm_856/strided_slice:output:01sequential_285/lstm_856/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_285/lstm_856/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_285/lstm_856/zeros_1Fill/sequential_285/lstm_856/zeros_1/packed:output:0.sequential_285/lstm_856/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2{
&sequential_285/lstm_856/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_285/lstm_856/transpose	Transpose'sequential_285/lstm_855/transpose_1:y:0/sequential_285/lstm_856/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dt
sequential_285/lstm_856/Shape_1Shape%sequential_285/lstm_856/transpose:y:0*
T0*
_output_shapes
:w
-sequential_285/lstm_856/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_285/lstm_856/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_285/lstm_856/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_285/lstm_856/strided_slice_1StridedSlice(sequential_285/lstm_856/Shape_1:output:06sequential_285/lstm_856/strided_slice_1/stack:output:08sequential_285/lstm_856/strided_slice_1/stack_1:output:08sequential_285/lstm_856/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_285/lstm_856/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_285/lstm_856/TensorArrayV2TensorListReserve<sequential_285/lstm_856/TensorArrayV2/element_shape:output:00sequential_285/lstm_856/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_285/lstm_856/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
?sequential_285/lstm_856/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_285/lstm_856/transpose:y:0Vsequential_285/lstm_856/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_285/lstm_856/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_285/lstm_856/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_285/lstm_856/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_285/lstm_856/strided_slice_2StridedSlice%sequential_285/lstm_856/transpose:y:06sequential_285/lstm_856/strided_slice_2/stack:output:08sequential_285/lstm_856/strided_slice_2/stack_1:output:08sequential_285/lstm_856/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
;sequential_285/lstm_856/lstm_cell_856/MatMul/ReadVariableOpReadVariableOpDsequential_285_lstm_856_lstm_cell_856_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
,sequential_285/lstm_856/lstm_cell_856/MatMulMatMul0sequential_285/lstm_856/strided_slice_2:output:0Csequential_285/lstm_856/lstm_cell_856/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_285/lstm_856/lstm_cell_856/MatMul_1/ReadVariableOpReadVariableOpFsequential_285_lstm_856_lstm_cell_856_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
.sequential_285/lstm_856/lstm_cell_856/MatMul_1MatMul&sequential_285/lstm_856/zeros:output:0Esequential_285/lstm_856/lstm_cell_856/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_285/lstm_856/lstm_cell_856/addAddV26sequential_285/lstm_856/lstm_cell_856/MatMul:product:08sequential_285/lstm_856/lstm_cell_856/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_285/lstm_856/lstm_cell_856/BiasAdd/ReadVariableOpReadVariableOpEsequential_285_lstm_856_lstm_cell_856_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_285/lstm_856/lstm_cell_856/BiasAddBiasAdd-sequential_285/lstm_856/lstm_cell_856/add:z:0Dsequential_285/lstm_856/lstm_cell_856/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_285/lstm_856/lstm_cell_856/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_285/lstm_856/lstm_cell_856/splitSplit>sequential_285/lstm_856/lstm_cell_856/split/split_dim:output:06sequential_285/lstm_856/lstm_cell_856/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
-sequential_285/lstm_856/lstm_cell_856/SigmoidSigmoid4sequential_285/lstm_856/lstm_cell_856/split:output:0*
T0*'
_output_shapes
:?????????2?
/sequential_285/lstm_856/lstm_cell_856/Sigmoid_1Sigmoid4sequential_285/lstm_856/lstm_cell_856/split:output:1*
T0*'
_output_shapes
:?????????2?
)sequential_285/lstm_856/lstm_cell_856/mulMul3sequential_285/lstm_856/lstm_cell_856/Sigmoid_1:y:0(sequential_285/lstm_856/zeros_1:output:0*
T0*'
_output_shapes
:?????????2?
*sequential_285/lstm_856/lstm_cell_856/ReluRelu4sequential_285/lstm_856/lstm_cell_856/split:output:2*
T0*'
_output_shapes
:?????????2?
+sequential_285/lstm_856/lstm_cell_856/mul_1Mul1sequential_285/lstm_856/lstm_cell_856/Sigmoid:y:08sequential_285/lstm_856/lstm_cell_856/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
+sequential_285/lstm_856/lstm_cell_856/add_1AddV2-sequential_285/lstm_856/lstm_cell_856/mul:z:0/sequential_285/lstm_856/lstm_cell_856/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
/sequential_285/lstm_856/lstm_cell_856/Sigmoid_2Sigmoid4sequential_285/lstm_856/lstm_cell_856/split:output:3*
T0*'
_output_shapes
:?????????2?
,sequential_285/lstm_856/lstm_cell_856/Relu_1Relu/sequential_285/lstm_856/lstm_cell_856/add_1:z:0*
T0*'
_output_shapes
:?????????2?
+sequential_285/lstm_856/lstm_cell_856/mul_2Mul3sequential_285/lstm_856/lstm_cell_856/Sigmoid_2:y:0:sequential_285/lstm_856/lstm_cell_856/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
5sequential_285/lstm_856/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
'sequential_285/lstm_856/TensorArrayV2_1TensorListReserve>sequential_285/lstm_856/TensorArrayV2_1/element_shape:output:00sequential_285/lstm_856/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_285/lstm_856/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_285/lstm_856/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_285/lstm_856/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_285/lstm_856/whileWhile3sequential_285/lstm_856/while/loop_counter:output:09sequential_285/lstm_856/while/maximum_iterations:output:0%sequential_285/lstm_856/time:output:00sequential_285/lstm_856/TensorArrayV2_1:handle:0&sequential_285/lstm_856/zeros:output:0(sequential_285/lstm_856/zeros_1:output:00sequential_285/lstm_856/strided_slice_1:output:0Osequential_285/lstm_856/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_285_lstm_856_lstm_cell_856_matmul_readvariableop_resourceFsequential_285_lstm_856_lstm_cell_856_matmul_1_readvariableop_resourceEsequential_285_lstm_856_lstm_cell_856_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????2:?????????2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *6
body.R,
*sequential_285_lstm_856_while_body_5132126*6
cond.R,
*sequential_285_lstm_856_while_cond_5132125*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
Hsequential_285/lstm_856/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
:sequential_285/lstm_856/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_285/lstm_856/while:output:3Qsequential_285/lstm_856/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0?
-sequential_285/lstm_856/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_285/lstm_856/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_285/lstm_856/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_285/lstm_856/strided_slice_3StridedSliceCsequential_285/lstm_856/TensorArrayV2Stack/TensorListStack:tensor:06sequential_285/lstm_856/strided_slice_3/stack:output:08sequential_285/lstm_856/strided_slice_3/stack_1:output:08sequential_285/lstm_856/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask}
(sequential_285/lstm_856/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_285/lstm_856/transpose_1	TransposeCsequential_285/lstm_856/TensorArrayV2Stack/TensorListStack:tensor:01sequential_285/lstm_856/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2s
sequential_285/lstm_856/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_285/lstm_857/ShapeShape'sequential_285/lstm_856/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_285/lstm_857/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_285/lstm_857/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_285/lstm_857/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_285/lstm_857/strided_sliceStridedSlice&sequential_285/lstm_857/Shape:output:04sequential_285/lstm_857/strided_slice/stack:output:06sequential_285/lstm_857/strided_slice/stack_1:output:06sequential_285/lstm_857/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_285/lstm_857/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
$sequential_285/lstm_857/zeros/packedPack.sequential_285/lstm_857/strided_slice:output:0/sequential_285/lstm_857/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_285/lstm_857/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_285/lstm_857/zerosFill-sequential_285/lstm_857/zeros/packed:output:0,sequential_285/lstm_857/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
j
(sequential_285/lstm_857/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
&sequential_285/lstm_857/zeros_1/packedPack.sequential_285/lstm_857/strided_slice:output:01sequential_285/lstm_857/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_285/lstm_857/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_285/lstm_857/zeros_1Fill/sequential_285/lstm_857/zeros_1/packed:output:0.sequential_285/lstm_857/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
{
&sequential_285/lstm_857/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_285/lstm_857/transpose	Transpose'sequential_285/lstm_856/transpose_1:y:0/sequential_285/lstm_857/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2t
sequential_285/lstm_857/Shape_1Shape%sequential_285/lstm_857/transpose:y:0*
T0*
_output_shapes
:w
-sequential_285/lstm_857/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_285/lstm_857/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_285/lstm_857/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_285/lstm_857/strided_slice_1StridedSlice(sequential_285/lstm_857/Shape_1:output:06sequential_285/lstm_857/strided_slice_1/stack:output:08sequential_285/lstm_857/strided_slice_1/stack_1:output:08sequential_285/lstm_857/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_285/lstm_857/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_285/lstm_857/TensorArrayV2TensorListReserve<sequential_285/lstm_857/TensorArrayV2/element_shape:output:00sequential_285/lstm_857/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_285/lstm_857/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
?sequential_285/lstm_857/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_285/lstm_857/transpose:y:0Vsequential_285/lstm_857/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_285/lstm_857/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_285/lstm_857/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_285/lstm_857/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_285/lstm_857/strided_slice_2StridedSlice%sequential_285/lstm_857/transpose:y:06sequential_285/lstm_857/strided_slice_2/stack:output:08sequential_285/lstm_857/strided_slice_2/stack_1:output:08sequential_285/lstm_857/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
;sequential_285/lstm_857/lstm_cell_857/MatMul/ReadVariableOpReadVariableOpDsequential_285_lstm_857_lstm_cell_857_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
,sequential_285/lstm_857/lstm_cell_857/MatMulMatMul0sequential_285/lstm_857/strided_slice_2:output:0Csequential_285/lstm_857/lstm_cell_857/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
=sequential_285/lstm_857/lstm_cell_857/MatMul_1/ReadVariableOpReadVariableOpFsequential_285_lstm_857_lstm_cell_857_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
.sequential_285/lstm_857/lstm_cell_857/MatMul_1MatMul&sequential_285/lstm_857/zeros:output:0Esequential_285/lstm_857/lstm_cell_857/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
)sequential_285/lstm_857/lstm_cell_857/addAddV26sequential_285/lstm_857/lstm_cell_857/MatMul:product:08sequential_285/lstm_857/lstm_cell_857/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
<sequential_285/lstm_857/lstm_cell_857/BiasAdd/ReadVariableOpReadVariableOpEsequential_285_lstm_857_lstm_cell_857_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
-sequential_285/lstm_857/lstm_cell_857/BiasAddBiasAdd-sequential_285/lstm_857/lstm_cell_857/add:z:0Dsequential_285/lstm_857/lstm_cell_857/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(w
5sequential_285/lstm_857/lstm_cell_857/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_285/lstm_857/lstm_cell_857/splitSplit>sequential_285/lstm_857/lstm_cell_857/split/split_dim:output:06sequential_285/lstm_857/lstm_cell_857/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
-sequential_285/lstm_857/lstm_cell_857/SigmoidSigmoid4sequential_285/lstm_857/lstm_cell_857/split:output:0*
T0*'
_output_shapes
:?????????
?
/sequential_285/lstm_857/lstm_cell_857/Sigmoid_1Sigmoid4sequential_285/lstm_857/lstm_cell_857/split:output:1*
T0*'
_output_shapes
:?????????
?
)sequential_285/lstm_857/lstm_cell_857/mulMul3sequential_285/lstm_857/lstm_cell_857/Sigmoid_1:y:0(sequential_285/lstm_857/zeros_1:output:0*
T0*'
_output_shapes
:?????????
?
*sequential_285/lstm_857/lstm_cell_857/ReluRelu4sequential_285/lstm_857/lstm_cell_857/split:output:2*
T0*'
_output_shapes
:?????????
?
+sequential_285/lstm_857/lstm_cell_857/mul_1Mul1sequential_285/lstm_857/lstm_cell_857/Sigmoid:y:08sequential_285/lstm_857/lstm_cell_857/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
+sequential_285/lstm_857/lstm_cell_857/add_1AddV2-sequential_285/lstm_857/lstm_cell_857/mul:z:0/sequential_285/lstm_857/lstm_cell_857/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
/sequential_285/lstm_857/lstm_cell_857/Sigmoid_2Sigmoid4sequential_285/lstm_857/lstm_cell_857/split:output:3*
T0*'
_output_shapes
:?????????
?
,sequential_285/lstm_857/lstm_cell_857/Relu_1Relu/sequential_285/lstm_857/lstm_cell_857/add_1:z:0*
T0*'
_output_shapes
:?????????
?
+sequential_285/lstm_857/lstm_cell_857/mul_2Mul3sequential_285/lstm_857/lstm_cell_857/Sigmoid_2:y:0:sequential_285/lstm_857/lstm_cell_857/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
5sequential_285/lstm_857/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
'sequential_285/lstm_857/TensorArrayV2_1TensorListReserve>sequential_285/lstm_857/TensorArrayV2_1/element_shape:output:00sequential_285/lstm_857/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_285/lstm_857/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_285/lstm_857/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_285/lstm_857/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_285/lstm_857/whileWhile3sequential_285/lstm_857/while/loop_counter:output:09sequential_285/lstm_857/while/maximum_iterations:output:0%sequential_285/lstm_857/time:output:00sequential_285/lstm_857/TensorArrayV2_1:handle:0&sequential_285/lstm_857/zeros:output:0(sequential_285/lstm_857/zeros_1:output:00sequential_285/lstm_857/strided_slice_1:output:0Osequential_285/lstm_857/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_285_lstm_857_lstm_cell_857_matmul_readvariableop_resourceFsequential_285_lstm_857_lstm_cell_857_matmul_1_readvariableop_resourceEsequential_285_lstm_857_lstm_cell_857_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????
:?????????
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *6
body.R,
*sequential_285_lstm_857_while_body_5132265*6
cond.R,
*sequential_285_lstm_857_while_cond_5132264*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
Hsequential_285/lstm_857/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
:sequential_285/lstm_857/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_285/lstm_857/while:output:3Qsequential_285/lstm_857/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0?
-sequential_285/lstm_857/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_285/lstm_857/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_285/lstm_857/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_285/lstm_857/strided_slice_3StridedSliceCsequential_285/lstm_857/TensorArrayV2Stack/TensorListStack:tensor:06sequential_285/lstm_857/strided_slice_3/stack:output:08sequential_285/lstm_857/strided_slice_3/stack_1:output:08sequential_285/lstm_857/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_mask}
(sequential_285/lstm_857/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_285/lstm_857/transpose_1	TransposeCsequential_285/lstm_857/TensorArrayV2Stack/TensorListStack:tensor:01sequential_285/lstm_857/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
s
sequential_285/lstm_857/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
.sequential_285/dense_285/MatMul/ReadVariableOpReadVariableOp7sequential_285_dense_285_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
sequential_285/dense_285/MatMulMatMul0sequential_285/lstm_857/strided_slice_3:output:06sequential_285/dense_285/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
/sequential_285/dense_285/BiasAdd/ReadVariableOpReadVariableOp8sequential_285_dense_285_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
 sequential_285/dense_285/BiasAddBiasAdd)sequential_285/dense_285/MatMul:product:07sequential_285/dense_285/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x
IdentityIdentity)sequential_285/dense_285/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp0^sequential_285/dense_285/BiasAdd/ReadVariableOp/^sequential_285/dense_285/MatMul/ReadVariableOp=^sequential_285/lstm_855/lstm_cell_855/BiasAdd/ReadVariableOp<^sequential_285/lstm_855/lstm_cell_855/MatMul/ReadVariableOp>^sequential_285/lstm_855/lstm_cell_855/MatMul_1/ReadVariableOp^sequential_285/lstm_855/while=^sequential_285/lstm_856/lstm_cell_856/BiasAdd/ReadVariableOp<^sequential_285/lstm_856/lstm_cell_856/MatMul/ReadVariableOp>^sequential_285/lstm_856/lstm_cell_856/MatMul_1/ReadVariableOp^sequential_285/lstm_856/while=^sequential_285/lstm_857/lstm_cell_857/BiasAdd/ReadVariableOp<^sequential_285/lstm_857/lstm_cell_857/MatMul/ReadVariableOp>^sequential_285/lstm_857/lstm_cell_857/MatMul_1/ReadVariableOp^sequential_285/lstm_857/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2b
/sequential_285/dense_285/BiasAdd/ReadVariableOp/sequential_285/dense_285/BiasAdd/ReadVariableOp2`
.sequential_285/dense_285/MatMul/ReadVariableOp.sequential_285/dense_285/MatMul/ReadVariableOp2|
<sequential_285/lstm_855/lstm_cell_855/BiasAdd/ReadVariableOp<sequential_285/lstm_855/lstm_cell_855/BiasAdd/ReadVariableOp2z
;sequential_285/lstm_855/lstm_cell_855/MatMul/ReadVariableOp;sequential_285/lstm_855/lstm_cell_855/MatMul/ReadVariableOp2~
=sequential_285/lstm_855/lstm_cell_855/MatMul_1/ReadVariableOp=sequential_285/lstm_855/lstm_cell_855/MatMul_1/ReadVariableOp2>
sequential_285/lstm_855/whilesequential_285/lstm_855/while2|
<sequential_285/lstm_856/lstm_cell_856/BiasAdd/ReadVariableOp<sequential_285/lstm_856/lstm_cell_856/BiasAdd/ReadVariableOp2z
;sequential_285/lstm_856/lstm_cell_856/MatMul/ReadVariableOp;sequential_285/lstm_856/lstm_cell_856/MatMul/ReadVariableOp2~
=sequential_285/lstm_856/lstm_cell_856/MatMul_1/ReadVariableOp=sequential_285/lstm_856/lstm_cell_856/MatMul_1/ReadVariableOp2>
sequential_285/lstm_856/whilesequential_285/lstm_856/while2|
<sequential_285/lstm_857/lstm_cell_857/BiasAdd/ReadVariableOp<sequential_285/lstm_857/lstm_cell_857/BiasAdd/ReadVariableOp2z
;sequential_285/lstm_857/lstm_cell_857/MatMul/ReadVariableOp;sequential_285/lstm_857/lstm_cell_857/MatMul/ReadVariableOp2~
=sequential_285/lstm_857/lstm_cell_857/MatMul_1/ReadVariableOp=sequential_285/lstm_857/lstm_cell_857/MatMul_1/ReadVariableOp2>
sequential_285/lstm_857/whilesequential_285/lstm_857/while:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_855_input
?8
?
E__inference_lstm_856_layer_call_and_return_conditional_losses_5133046

inputs(
lstm_cell_856_5132964:	d?(
lstm_cell_856_5132966:	2?$
lstm_cell_856_5132968:	?
identity??%lstm_cell_856/StatefulPartitionedCall?while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????2R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????dD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
%lstm_cell_856/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_856_5132964lstm_cell_856_5132966lstm_cell_856_5132968*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:?????????2:?????????2:?????????2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_lstm_cell_856_layer_call_and_return_conditional_losses_5132918n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_856_5132964lstm_cell_856_5132966lstm_cell_856_5132968*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????2:?????????2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_5132977*
condR
while_cond_5132976*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :??????????????????2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :??????????????????2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :??????????????????2v
NoOpNoOp&^lstm_cell_856/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_856/StatefulPartitionedCall%lstm_cell_856/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?
?
*__inference_lstm_855_layer_call_fn_5135556

inputs
unknown:	?
	unknown_0:	d?
	unknown_1:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_lstm_855_layer_call_and_return_conditional_losses_5133554s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????d`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
while_body_5135769
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_855_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_855_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_855_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_855_matmul_readvariableop_resource:	?G
4while_lstm_cell_855_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_855_biasadd_readvariableop_resource:	???*while/lstm_cell_855/BiasAdd/ReadVariableOp?)while/lstm_cell_855/MatMul/ReadVariableOp?+while/lstm_cell_855/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_855/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_855_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_855/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_855/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_855/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_855_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_855/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_855/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_855/addAddV2$while/lstm_cell_855/MatMul:product:0&while/lstm_cell_855/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_855/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_855_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_855/BiasAddBiasAddwhile/lstm_cell_855/add:z:02while/lstm_cell_855/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_855/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_855/splitSplit,while/lstm_cell_855/split/split_dim:output:0$while/lstm_cell_855/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_855/SigmoidSigmoid"while/lstm_cell_855/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_855/Sigmoid_1Sigmoid"while/lstm_cell_855/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_855/mulMul!while/lstm_cell_855/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_855/ReluRelu"while/lstm_cell_855/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_855/mul_1Mulwhile/lstm_cell_855/Sigmoid:y:0&while/lstm_cell_855/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_855/add_1AddV2while/lstm_cell_855/mul:z:0while/lstm_cell_855/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_855/Sigmoid_2Sigmoid"while/lstm_cell_855/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_855/Relu_1Reluwhile/lstm_cell_855/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_855/mul_2Mul!while/lstm_cell_855/Sigmoid_2:y:0(while/lstm_cell_855/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_855/mul_2:z:0*
_output_shapes
: *
element_dtype0:???M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: ?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_855/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_855/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_855/BiasAdd/ReadVariableOp*^while/lstm_cell_855/MatMul/ReadVariableOp,^while/lstm_cell_855/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_855_biasadd_readvariableop_resource5while_lstm_cell_855_biasadd_readvariableop_resource_0"n
4while_lstm_cell_855_matmul_1_readvariableop_resource6while_lstm_cell_855_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_855_matmul_readvariableop_resource4while_lstm_cell_855_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_855/BiasAdd/ReadVariableOp*while/lstm_cell_855/BiasAdd/ReadVariableOp2V
)while/lstm_cell_855/MatMul/ReadVariableOp)while/lstm_cell_855/MatMul/ReadVariableOp2Z
+while/lstm_cell_855/MatMul_1/ReadVariableOp+while/lstm_cell_855/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????d:-)
'
_output_shapes
:?????????d:

_output_shapes
: :

_output_shapes
: 
?
?
while_cond_5132626
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5132626___redundant_placeholder05
1while_while_cond_5132626___redundant_placeholder15
1while_while_cond_5132626___redundant_placeholder25
1while_while_cond_5132626___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????d:?????????d: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????d:-)
'
_output_shapes
:?????????d:

_output_shapes
: :

_output_shapes
:
?8
?
while_body_5137144
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_857_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_857_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_857_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_857_matmul_readvariableop_resource:2(F
4while_lstm_cell_857_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_857_biasadd_readvariableop_resource:(??*while/lstm_cell_857/BiasAdd/ReadVariableOp?)while/lstm_cell_857/MatMul/ReadVariableOp?+while/lstm_cell_857/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_857/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_857_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_857/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_857/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_857/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_857_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_857/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_857/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_857/addAddV2$while/lstm_cell_857/MatMul:product:0&while/lstm_cell_857/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_857/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_857_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_857/BiasAddBiasAddwhile/lstm_cell_857/add:z:02while/lstm_cell_857/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_857/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_857/splitSplit,while/lstm_cell_857/split/split_dim:output:0$while/lstm_cell_857/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_857/SigmoidSigmoid"while/lstm_cell_857/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_857/Sigmoid_1Sigmoid"while/lstm_cell_857/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_857/mulMul!while/lstm_cell_857/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_857/ReluRelu"while/lstm_cell_857/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_857/mul_1Mulwhile/lstm_cell_857/Sigmoid:y:0&while/lstm_cell_857/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_857/add_1AddV2while/lstm_cell_857/mul:z:0while/lstm_cell_857/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_857/Sigmoid_2Sigmoid"while/lstm_cell_857/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_857/Relu_1Reluwhile/lstm_cell_857/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_857/mul_2Mul!while/lstm_cell_857/Sigmoid_2:y:0(while/lstm_cell_857/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_857/mul_2:z:0*
_output_shapes
: *
element_dtype0:???M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: ?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_857/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_857/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_857/BiasAdd/ReadVariableOp*^while/lstm_cell_857/MatMul/ReadVariableOp,^while/lstm_cell_857/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_857_biasadd_readvariableop_resource5while_lstm_cell_857_biasadd_readvariableop_resource_0"n
4while_lstm_cell_857_matmul_1_readvariableop_resource6while_lstm_cell_857_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_857_matmul_readvariableop_resource4while_lstm_cell_857_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_857/BiasAdd/ReadVariableOp*while/lstm_cell_857/BiasAdd/ReadVariableOp2V
)while/lstm_cell_857/MatMul/ReadVariableOp)while/lstm_cell_857/MatMul/ReadVariableOp2Z
+while/lstm_cell_857/MatMul_1/ReadVariableOp+while/lstm_cell_857/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????
:-)
'
_output_shapes
:?????????
:

_output_shapes
: :

_output_shapes
: 
?8
?
while_body_5133470
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_855_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_855_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_855_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_855_matmul_readvariableop_resource:	?G
4while_lstm_cell_855_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_855_biasadd_readvariableop_resource:	???*while/lstm_cell_855/BiasAdd/ReadVariableOp?)while/lstm_cell_855/MatMul/ReadVariableOp?+while/lstm_cell_855/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_855/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_855_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_855/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_855/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_855/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_855_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_855/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_855/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_855/addAddV2$while/lstm_cell_855/MatMul:product:0&while/lstm_cell_855/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_855/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_855_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_855/BiasAddBiasAddwhile/lstm_cell_855/add:z:02while/lstm_cell_855/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_855/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_855/splitSplit,while/lstm_cell_855/split/split_dim:output:0$while/lstm_cell_855/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_855/SigmoidSigmoid"while/lstm_cell_855/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_855/Sigmoid_1Sigmoid"while/lstm_cell_855/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_855/mulMul!while/lstm_cell_855/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_855/ReluRelu"while/lstm_cell_855/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_855/mul_1Mulwhile/lstm_cell_855/Sigmoid:y:0&while/lstm_cell_855/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_855/add_1AddV2while/lstm_cell_855/mul:z:0while/lstm_cell_855/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_855/Sigmoid_2Sigmoid"while/lstm_cell_855/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_855/Relu_1Reluwhile/lstm_cell_855/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_855/mul_2Mul!while/lstm_cell_855/Sigmoid_2:y:0(while/lstm_cell_855/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_855/mul_2:z:0*
_output_shapes
: *
element_dtype0:???M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: ?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_855/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_855/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_855/BiasAdd/ReadVariableOp*^while/lstm_cell_855/MatMul/ReadVariableOp,^while/lstm_cell_855/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_855_biasadd_readvariableop_resource5while_lstm_cell_855_biasadd_readvariableop_resource_0"n
4while_lstm_cell_855_matmul_1_readvariableop_resource6while_lstm_cell_855_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_855_matmul_readvariableop_resource4while_lstm_cell_855_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_855/BiasAdd/ReadVariableOp*while/lstm_cell_855/BiasAdd/ReadVariableOp2V
)while/lstm_cell_855/MatMul/ReadVariableOp)while/lstm_cell_855/MatMul/ReadVariableOp2Z
+while/lstm_cell_855/MatMul_1/ReadVariableOp+while/lstm_cell_855/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????d:-)
'
_output_shapes
:?????????d:

_output_shapes
: :

_output_shapes
: 
?
?
K__inference_sequential_285_layer_call_and_return_conditional_losses_5134550
lstm_855_input#
lstm_855_5134523:	?#
lstm_855_5134525:	d?
lstm_855_5134527:	?#
lstm_856_5134530:	d?#
lstm_856_5134532:	2?
lstm_856_5134534:	?"
lstm_857_5134537:2("
lstm_857_5134539:
(
lstm_857_5134541:(#
dense_285_5134544:

dense_285_5134546:
identity??!dense_285/StatefulPartitionedCall? lstm_855/StatefulPartitionedCall? lstm_856/StatefulPartitionedCall? lstm_857/StatefulPartitionedCall?
 lstm_855/StatefulPartitionedCallStatefulPartitionedCalllstm_855_inputlstm_855_5134523lstm_855_5134525lstm_855_5134527*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_lstm_855_layer_call_and_return_conditional_losses_5133554?
 lstm_856/StatefulPartitionedCallStatefulPartitionedCall)lstm_855/StatefulPartitionedCall:output:0lstm_856_5134530lstm_856_5134532lstm_856_5134534*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_lstm_856_layer_call_and_return_conditional_losses_5133704?
 lstm_857/StatefulPartitionedCallStatefulPartitionedCall)lstm_856/StatefulPartitionedCall:output:0lstm_857_5134537lstm_857_5134539lstm_857_5134541*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_lstm_857_layer_call_and_return_conditional_losses_5133854?
!dense_285/StatefulPartitionedCallStatefulPartitionedCall)lstm_857/StatefulPartitionedCall:output:0dense_285_5134544dense_285_5134546*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dense_285_layer_call_and_return_conditional_losses_5133872y
IdentityIdentity*dense_285/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_285/StatefulPartitionedCall!^lstm_855/StatefulPartitionedCall!^lstm_856/StatefulPartitionedCall!^lstm_857/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_285/StatefulPartitionedCall!dense_285/StatefulPartitionedCall2D
 lstm_855/StatefulPartitionedCall lstm_855/StatefulPartitionedCall2D
 lstm_856/StatefulPartitionedCall lstm_856/StatefulPartitionedCall2D
 lstm_857/StatefulPartitionedCall lstm_857/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_855_input
?
?
while_cond_5133326
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5133326___redundant_placeholder05
1while_while_cond_5133326___redundant_placeholder15
1while_while_cond_5133326___redundant_placeholder25
1while_while_cond_5133326___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????
:?????????
: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????
:-)
'
_output_shapes
:?????????
:

_output_shapes
: :

_output_shapes
:
?8
?
while_body_5137001
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_857_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_857_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_857_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_857_matmul_readvariableop_resource:2(F
4while_lstm_cell_857_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_857_biasadd_readvariableop_resource:(??*while/lstm_cell_857/BiasAdd/ReadVariableOp?)while/lstm_cell_857/MatMul/ReadVariableOp?+while/lstm_cell_857/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_857/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_857_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_857/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_857/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_857/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_857_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_857/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_857/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_857/addAddV2$while/lstm_cell_857/MatMul:product:0&while/lstm_cell_857/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_857/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_857_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_857/BiasAddBiasAddwhile/lstm_cell_857/add:z:02while/lstm_cell_857/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_857/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_857/splitSplit,while/lstm_cell_857/split/split_dim:output:0$while/lstm_cell_857/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_857/SigmoidSigmoid"while/lstm_cell_857/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_857/Sigmoid_1Sigmoid"while/lstm_cell_857/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_857/mulMul!while/lstm_cell_857/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_857/ReluRelu"while/lstm_cell_857/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_857/mul_1Mulwhile/lstm_cell_857/Sigmoid:y:0&while/lstm_cell_857/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_857/add_1AddV2while/lstm_cell_857/mul:z:0while/lstm_cell_857/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_857/Sigmoid_2Sigmoid"while/lstm_cell_857/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_857/Relu_1Reluwhile/lstm_cell_857/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_857/mul_2Mul!while/lstm_cell_857/Sigmoid_2:y:0(while/lstm_cell_857/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_857/mul_2:z:0*
_output_shapes
: *
element_dtype0:???M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: ?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_857/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_857/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_857/BiasAdd/ReadVariableOp*^while/lstm_cell_857/MatMul/ReadVariableOp,^while/lstm_cell_857/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_857_biasadd_readvariableop_resource5while_lstm_cell_857_biasadd_readvariableop_resource_0"n
4while_lstm_cell_857_matmul_1_readvariableop_resource6while_lstm_cell_857_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_857_matmul_readvariableop_resource4while_lstm_cell_857_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_857/BiasAdd/ReadVariableOp*while/lstm_cell_857/BiasAdd/ReadVariableOp2V
)while/lstm_cell_857/MatMul/ReadVariableOp)while/lstm_cell_857/MatMul/ReadVariableOp2Z
+while/lstm_cell_857/MatMul_1/ReadVariableOp+while/lstm_cell_857/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????
:-)
'
_output_shapes
:?????????
:

_output_shapes
: :

_output_shapes
: 
?J
?
E__inference_lstm_857_layer_call_and_return_conditional_losses_5137371

inputs>
,lstm_cell_857_matmul_readvariableop_resource:2(@
.lstm_cell_857_matmul_1_readvariableop_resource:
(;
-lstm_cell_857_biasadd_readvariableop_resource:(
identity??$lstm_cell_857/BiasAdd/ReadVariableOp?#lstm_cell_857/MatMul/ReadVariableOp?%lstm_cell_857/MatMul_1/ReadVariableOp?while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????
R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:?????????2D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
#lstm_cell_857/MatMul/ReadVariableOpReadVariableOp,lstm_cell_857_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_857/MatMulMatMulstrided_slice_2:output:0+lstm_cell_857/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_857/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_857_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_857/MatMul_1MatMulzeros:output:0-lstm_cell_857/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_857/addAddV2lstm_cell_857/MatMul:product:0 lstm_cell_857/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_857/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_857_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_857/BiasAddBiasAddlstm_cell_857/add:z:0,lstm_cell_857/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_857/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_857/splitSplit&lstm_cell_857/split/split_dim:output:0lstm_cell_857/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_857/SigmoidSigmoidlstm_cell_857/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_857/Sigmoid_1Sigmoidlstm_cell_857/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_857/mulMullstm_cell_857/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_857/ReluRelulstm_cell_857/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_857/mul_1Mullstm_cell_857/Sigmoid:y:0 lstm_cell_857/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_857/add_1AddV2lstm_cell_857/mul:z:0lstm_cell_857/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_857/Sigmoid_2Sigmoidlstm_cell_857/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_857/Relu_1Relulstm_cell_857/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_857/mul_2Mullstm_cell_857/Sigmoid_2:y:0"lstm_cell_857/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_857_matmul_readvariableop_resource.lstm_cell_857_matmul_1_readvariableop_resource-lstm_cell_857_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????
:?????????
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_5137287*
condR
while_cond_5137286*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:?????????
?
NoOpNoOp%^lstm_cell_857/BiasAdd/ReadVariableOp$^lstm_cell_857/MatMul/ReadVariableOp&^lstm_cell_857/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_857/BiasAdd/ReadVariableOp$lstm_cell_857/BiasAdd/ReadVariableOp2J
#lstm_cell_857/MatMul/ReadVariableOp#lstm_cell_857/MatMul/ReadVariableOp2N
%lstm_cell_857/MatMul_1/ReadVariableOp%lstm_cell_857/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
/__inference_lstm_cell_856_layer_call_fn_5137505

inputs
states_0
states_1
unknown:	d?
	unknown_0:	2?
	unknown_1:	?
identity

identity_1

identity_2??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:?????????2:?????????2:?????????2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_lstm_cell_856_layer_call_and_return_conditional_losses_5132772o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:?????????2q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:?????????2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????d:?????????2:?????????2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs:QM
'
_output_shapes
:?????????2
"
_user_specified_name
states/0:QM
'
_output_shapes
:?????????2
"
_user_specified_name
states/1
?
?
*__inference_lstm_857_layer_call_fn_5136766
inputs_0
unknown:2(
	unknown_0:
(
	unknown_1:(
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_lstm_857_layer_call_and_return_conditional_losses_5133205o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?
?
J__inference_lstm_cell_855_layer_call_and_return_conditional_losses_5137488

inputs
states_0
states_11
matmul_readvariableop_resource:	?3
 matmul_1_readvariableop_resource:	d?.
biasadd_readvariableop_resource:	?
identity

identity_1

identity_2??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????y
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:??????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:?????????dV
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:?????????dU
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:?????????dN
ReluRelusplit:output:2*
T0*'
_output_shapes
:?????????d_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:?????????dT
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:?????????dV
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:?????????dK
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:?????????dc
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:?????????dX
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:?????????dZ

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:?????????dZ

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:?????????d?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????:?????????d:?????????d: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:QM
'
_output_shapes
:?????????d
"
_user_specified_name
states/0:QM
'
_output_shapes
:?????????d
"
_user_specified_name
states/1
?
?
*sequential_285_lstm_855_while_cond_5131986L
Hsequential_285_lstm_855_while_sequential_285_lstm_855_while_loop_counterR
Nsequential_285_lstm_855_while_sequential_285_lstm_855_while_maximum_iterations-
)sequential_285_lstm_855_while_placeholder/
+sequential_285_lstm_855_while_placeholder_1/
+sequential_285_lstm_855_while_placeholder_2/
+sequential_285_lstm_855_while_placeholder_3N
Jsequential_285_lstm_855_while_less_sequential_285_lstm_855_strided_slice_1e
asequential_285_lstm_855_while_sequential_285_lstm_855_while_cond_5131986___redundant_placeholder0e
asequential_285_lstm_855_while_sequential_285_lstm_855_while_cond_5131986___redundant_placeholder1e
asequential_285_lstm_855_while_sequential_285_lstm_855_while_cond_5131986___redundant_placeholder2e
asequential_285_lstm_855_while_sequential_285_lstm_855_while_cond_5131986___redundant_placeholder3*
&sequential_285_lstm_855_while_identity
?
"sequential_285/lstm_855/while/LessLess)sequential_285_lstm_855_while_placeholderJsequential_285_lstm_855_while_less_sequential_285_lstm_855_strided_slice_1*
T0*
_output_shapes
: {
&sequential_285/lstm_855/while/IdentityIdentity&sequential_285/lstm_855/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_285_lstm_855_while_identity/sequential_285/lstm_855/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????d:?????????d: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????d:-)
'
_output_shapes
:?????????d:

_output_shapes
: :

_output_shapes
:
?#
?
while_body_5132627
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_855_5132651_0:	?0
while_lstm_cell_855_5132653_0:	d?,
while_lstm_cell_855_5132655_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_855_5132651:	?.
while_lstm_cell_855_5132653:	d?*
while_lstm_cell_855_5132655:	???+while/lstm_cell_855/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_855/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_855_5132651_0while_lstm_cell_855_5132653_0while_lstm_cell_855_5132655_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:?????????d:?????????d:?????????d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_lstm_cell_855_layer_call_and_return_conditional_losses_5132568?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_855/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:???M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: ?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: ?
while/Identity_4Identity4while/lstm_cell_855/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_855/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_855/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_855_5132651while_lstm_cell_855_5132651_0"<
while_lstm_cell_855_5132653while_lstm_cell_855_5132653_0"<
while_lstm_cell_855_5132655while_lstm_cell_855_5132655_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_855/StatefulPartitionedCall+while/lstm_cell_855/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????d:-)
'
_output_shapes
:?????????d:

_output_shapes
: :

_output_shapes
: 
?8
?
while_body_5135626
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_855_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_855_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_855_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_855_matmul_readvariableop_resource:	?G
4while_lstm_cell_855_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_855_biasadd_readvariableop_resource:	???*while/lstm_cell_855/BiasAdd/ReadVariableOp?)while/lstm_cell_855/MatMul/ReadVariableOp?+while/lstm_cell_855/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_855/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_855_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_855/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_855/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_855/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_855_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_855/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_855/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_855/addAddV2$while/lstm_cell_855/MatMul:product:0&while/lstm_cell_855/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_855/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_855_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_855/BiasAddBiasAddwhile/lstm_cell_855/add:z:02while/lstm_cell_855/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_855/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_855/splitSplit,while/lstm_cell_855/split/split_dim:output:0$while/lstm_cell_855/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_855/SigmoidSigmoid"while/lstm_cell_855/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_855/Sigmoid_1Sigmoid"while/lstm_cell_855/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_855/mulMul!while/lstm_cell_855/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_855/ReluRelu"while/lstm_cell_855/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_855/mul_1Mulwhile/lstm_cell_855/Sigmoid:y:0&while/lstm_cell_855/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_855/add_1AddV2while/lstm_cell_855/mul:z:0while/lstm_cell_855/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_855/Sigmoid_2Sigmoid"while/lstm_cell_855/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_855/Relu_1Reluwhile/lstm_cell_855/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_855/mul_2Mul!while/lstm_cell_855/Sigmoid_2:y:0(while/lstm_cell_855/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_855/mul_2:z:0*
_output_shapes
: *
element_dtype0:???M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: ?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_855/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_855/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_855/BiasAdd/ReadVariableOp*^while/lstm_cell_855/MatMul/ReadVariableOp,^while/lstm_cell_855/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_855_biasadd_readvariableop_resource5while_lstm_cell_855_biasadd_readvariableop_resource_0"n
4while_lstm_cell_855_matmul_1_readvariableop_resource6while_lstm_cell_855_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_855_matmul_readvariableop_resource4while_lstm_cell_855_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_855/BiasAdd/ReadVariableOp*while/lstm_cell_855/BiasAdd/ReadVariableOp2V
)while/lstm_cell_855/MatMul/ReadVariableOp)while/lstm_cell_855/MatMul/ReadVariableOp2Z
+while/lstm_cell_855/MatMul_1/ReadVariableOp+while/lstm_cell_855/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????d:-)
'
_output_shapes
:?????????d:

_output_shapes
: :

_output_shapes
: 
?
?
/__inference_lstm_cell_855_layer_call_fn_5137424

inputs
states_0
states_1
unknown:	?
	unknown_0:	d?
	unknown_1:	?
identity

identity_1

identity_2??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:?????????d:?????????d:?????????d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_lstm_cell_855_layer_call_and_return_conditional_losses_5132568o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????dq

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:?????????dq

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:?????????d`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????:?????????d:?????????d: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:QM
'
_output_shapes
:?????????d
"
_user_specified_name
states/0:QM
'
_output_shapes
:?????????d
"
_user_specified_name
states/1
?C
?

lstm_857_while_body_5135006.
*lstm_857_while_lstm_857_while_loop_counter4
0lstm_857_while_lstm_857_while_maximum_iterations
lstm_857_while_placeholder 
lstm_857_while_placeholder_1 
lstm_857_while_placeholder_2 
lstm_857_while_placeholder_3-
)lstm_857_while_lstm_857_strided_slice_1_0i
elstm_857_while_tensorarrayv2read_tensorlistgetitem_lstm_857_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_857_while_lstm_cell_857_matmul_readvariableop_resource_0:2(Q
?lstm_857_while_lstm_cell_857_matmul_1_readvariableop_resource_0:
(L
>lstm_857_while_lstm_cell_857_biasadd_readvariableop_resource_0:(
lstm_857_while_identity
lstm_857_while_identity_1
lstm_857_while_identity_2
lstm_857_while_identity_3
lstm_857_while_identity_4
lstm_857_while_identity_5+
'lstm_857_while_lstm_857_strided_slice_1g
clstm_857_while_tensorarrayv2read_tensorlistgetitem_lstm_857_tensorarrayunstack_tensorlistfromtensorM
;lstm_857_while_lstm_cell_857_matmul_readvariableop_resource:2(O
=lstm_857_while_lstm_cell_857_matmul_1_readvariableop_resource:
(J
<lstm_857_while_lstm_cell_857_biasadd_readvariableop_resource:(??3lstm_857/while/lstm_cell_857/BiasAdd/ReadVariableOp?2lstm_857/while/lstm_cell_857/MatMul/ReadVariableOp?4lstm_857/while/lstm_cell_857/MatMul_1/ReadVariableOp?
@lstm_857/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_857/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_857_while_tensorarrayv2read_tensorlistgetitem_lstm_857_tensorarrayunstack_tensorlistfromtensor_0lstm_857_while_placeholderIlstm_857/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_857/while/lstm_cell_857/MatMul/ReadVariableOpReadVariableOp=lstm_857_while_lstm_cell_857_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_857/while/lstm_cell_857/MatMulMatMul9lstm_857/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_857/while/lstm_cell_857/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_857/while/lstm_cell_857/MatMul_1/ReadVariableOpReadVariableOp?lstm_857_while_lstm_cell_857_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_857/while/lstm_cell_857/MatMul_1MatMullstm_857_while_placeholder_2<lstm_857/while/lstm_cell_857/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_857/while/lstm_cell_857/addAddV2-lstm_857/while/lstm_cell_857/MatMul:product:0/lstm_857/while/lstm_cell_857/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_857/while/lstm_cell_857/BiasAdd/ReadVariableOpReadVariableOp>lstm_857_while_lstm_cell_857_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_857/while/lstm_cell_857/BiasAddBiasAdd$lstm_857/while/lstm_cell_857/add:z:0;lstm_857/while/lstm_cell_857/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_857/while/lstm_cell_857/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_857/while/lstm_cell_857/splitSplit5lstm_857/while/lstm_cell_857/split/split_dim:output:0-lstm_857/while/lstm_cell_857/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_857/while/lstm_cell_857/SigmoidSigmoid+lstm_857/while/lstm_cell_857/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_857/while/lstm_cell_857/Sigmoid_1Sigmoid+lstm_857/while/lstm_cell_857/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_857/while/lstm_cell_857/mulMul*lstm_857/while/lstm_cell_857/Sigmoid_1:y:0lstm_857_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_857/while/lstm_cell_857/ReluRelu+lstm_857/while/lstm_cell_857/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_857/while/lstm_cell_857/mul_1Mul(lstm_857/while/lstm_cell_857/Sigmoid:y:0/lstm_857/while/lstm_cell_857/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_857/while/lstm_cell_857/add_1AddV2$lstm_857/while/lstm_cell_857/mul:z:0&lstm_857/while/lstm_cell_857/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_857/while/lstm_cell_857/Sigmoid_2Sigmoid+lstm_857/while/lstm_cell_857/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_857/while/lstm_cell_857/Relu_1Relu&lstm_857/while/lstm_cell_857/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_857/while/lstm_cell_857/mul_2Mul*lstm_857/while/lstm_cell_857/Sigmoid_2:y:01lstm_857/while/lstm_cell_857/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_857/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_857_while_placeholder_1lstm_857_while_placeholder&lstm_857/while/lstm_cell_857/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_857/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_857/while/addAddV2lstm_857_while_placeholderlstm_857/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_857/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_857/while/add_1AddV2*lstm_857_while_lstm_857_while_loop_counterlstm_857/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_857/while/IdentityIdentitylstm_857/while/add_1:z:0^lstm_857/while/NoOp*
T0*
_output_shapes
: ?
lstm_857/while/Identity_1Identity0lstm_857_while_lstm_857_while_maximum_iterations^lstm_857/while/NoOp*
T0*
_output_shapes
: t
lstm_857/while/Identity_2Identitylstm_857/while/add:z:0^lstm_857/while/NoOp*
T0*
_output_shapes
: ?
lstm_857/while/Identity_3IdentityClstm_857/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_857/while/NoOp*
T0*
_output_shapes
: ?
lstm_857/while/Identity_4Identity&lstm_857/while/lstm_cell_857/mul_2:z:0^lstm_857/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_857/while/Identity_5Identity&lstm_857/while/lstm_cell_857/add_1:z:0^lstm_857/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_857/while/NoOpNoOp4^lstm_857/while/lstm_cell_857/BiasAdd/ReadVariableOp3^lstm_857/while/lstm_cell_857/MatMul/ReadVariableOp5^lstm_857/while/lstm_cell_857/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_857_while_identity lstm_857/while/Identity:output:0"?
lstm_857_while_identity_1"lstm_857/while/Identity_1:output:0"?
lstm_857_while_identity_2"lstm_857/while/Identity_2:output:0"?
lstm_857_while_identity_3"lstm_857/while/Identity_3:output:0"?
lstm_857_while_identity_4"lstm_857/while/Identity_4:output:0"?
lstm_857_while_identity_5"lstm_857/while/Identity_5:output:0"T
'lstm_857_while_lstm_857_strided_slice_1)lstm_857_while_lstm_857_strided_slice_1_0"~
<lstm_857_while_lstm_cell_857_biasadd_readvariableop_resource>lstm_857_while_lstm_cell_857_biasadd_readvariableop_resource_0"?
=lstm_857_while_lstm_cell_857_matmul_1_readvariableop_resource?lstm_857_while_lstm_cell_857_matmul_1_readvariableop_resource_0"|
;lstm_857_while_lstm_cell_857_matmul_readvariableop_resource=lstm_857_while_lstm_cell_857_matmul_readvariableop_resource_0"?
clstm_857_while_tensorarrayv2read_tensorlistgetitem_lstm_857_tensorarrayunstack_tensorlistfromtensorelstm_857_while_tensorarrayv2read_tensorlistgetitem_lstm_857_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_857/while/lstm_cell_857/BiasAdd/ReadVariableOp3lstm_857/while/lstm_cell_857/BiasAdd/ReadVariableOp2h
2lstm_857/while/lstm_cell_857/MatMul/ReadVariableOp2lstm_857/while/lstm_cell_857/MatMul/ReadVariableOp2l
4lstm_857/while/lstm_cell_857/MatMul_1/ReadVariableOp4lstm_857/while/lstm_cell_857/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????
:-)
'
_output_shapes
:?????????
:

_output_shapes
: :

_output_shapes
: 
?
?
J__inference_lstm_cell_857_layer_call_and_return_conditional_losses_5137652

inputs
states_0
states_10
matmul_readvariableop_resource:2(2
 matmul_1_readvariableop_resource:
(-
biasadd_readvariableop_resource:(
identity

identity_1

identity_2??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2(*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0o
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(d
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:?????????(r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:(*
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:?????????
V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:?????????
U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:?????????
N
ReluRelusplit:output:2*
T0*'
_output_shapes
:?????????
_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:?????????
T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:?????????
V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:?????????
K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:?????????
c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:?????????
X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:?????????
Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:?????????
Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:?????????
?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????2:?????????
:?????????
: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:?????????2
 
_user_specified_nameinputs:QM
'
_output_shapes
:?????????

"
_user_specified_name
states/0:QM
'
_output_shapes
:?????????

"
_user_specified_name
states/1
?
?
while_cond_5134150
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5134150___redundant_placeholder05
1while_while_cond_5134150___redundant_placeholder15
1while_while_cond_5134150___redundant_placeholder25
1while_while_cond_5134150___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????2:?????????2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????2:-)
'
_output_shapes
:?????????2:

_output_shapes
: :

_output_shapes
:
?
?
while_cond_5137143
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5137143___redundant_placeholder05
1while_while_cond_5137143___redundant_placeholder15
1while_while_cond_5137143___redundant_placeholder25
1while_while_cond_5137143___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????
:?????????
: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????
:-)
'
_output_shapes
:?????????
:

_output_shapes
: :

_output_shapes
:
?
?
while_cond_5134315
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5134315___redundant_placeholder05
1while_while_cond_5134315___redundant_placeholder15
1while_while_cond_5134315___redundant_placeholder25
1while_while_cond_5134315___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????d:?????????d: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????d:-)
'
_output_shapes
:?????????d:

_output_shapes
: :

_output_shapes
:
?

?
lstm_856_while_cond_5135293.
*lstm_856_while_lstm_856_while_loop_counter4
0lstm_856_while_lstm_856_while_maximum_iterations
lstm_856_while_placeholder 
lstm_856_while_placeholder_1 
lstm_856_while_placeholder_2 
lstm_856_while_placeholder_30
,lstm_856_while_less_lstm_856_strided_slice_1G
Clstm_856_while_lstm_856_while_cond_5135293___redundant_placeholder0G
Clstm_856_while_lstm_856_while_cond_5135293___redundant_placeholder1G
Clstm_856_while_lstm_856_while_cond_5135293___redundant_placeholder2G
Clstm_856_while_lstm_856_while_cond_5135293___redundant_placeholder3
lstm_856_while_identity
?
lstm_856/while/LessLesslstm_856_while_placeholder,lstm_856_while_less_lstm_856_strided_slice_1*
T0*
_output_shapes
: ]
lstm_856/while/IdentityIdentitylstm_856/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_856_while_identity lstm_856/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????2:?????????2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????2:-)
'
_output_shapes
:?????????2:

_output_shapes
: :

_output_shapes
:
?
?
+__inference_dense_285_layer_call_fn_5137380

inputs
unknown:

	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dense_285_layer_call_and_return_conditional_losses_5133872o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????
: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????

 
_user_specified_nameinputs
?

?
0__inference_sequential_285_layer_call_fn_5134669

inputs
unknown:	?
	unknown_0:	d?
	unknown_1:	?
	unknown_2:	d?
	unknown_3:	2?
	unknown_4:	?
	unknown_5:2(
	unknown_6:
(
	unknown_7:(
	unknown_8:

	unknown_9:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_sequential_285_layer_call_and_return_conditional_losses_5134468o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?K
?
E__inference_lstm_856_layer_call_and_return_conditional_losses_5136326
inputs_0?
,lstm_cell_856_matmul_readvariableop_resource:	d?A
.lstm_cell_856_matmul_1_readvariableop_resource:	2?<
-lstm_cell_856_biasadd_readvariableop_resource:	?
identity??$lstm_cell_856/BiasAdd/ReadVariableOp?#lstm_cell_856/MatMul/ReadVariableOp?%lstm_cell_856/MatMul_1/ReadVariableOp?while=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????2R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????dD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
#lstm_cell_856/MatMul/ReadVariableOpReadVariableOp,lstm_cell_856_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_856/MatMulMatMulstrided_slice_2:output:0+lstm_cell_856/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_856/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_856_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_856/MatMul_1MatMulzeros:output:0-lstm_cell_856/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_856/addAddV2lstm_cell_856/MatMul:product:0 lstm_cell_856/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_856/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_856_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_856/BiasAddBiasAddlstm_cell_856/add:z:0,lstm_cell_856/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_856/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_856/splitSplit&lstm_cell_856/split/split_dim:output:0lstm_cell_856/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_856/SigmoidSigmoidlstm_cell_856/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_856/Sigmoid_1Sigmoidlstm_cell_856/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_856/mulMullstm_cell_856/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_856/ReluRelulstm_cell_856/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_856/mul_1Mullstm_cell_856/Sigmoid:y:0 lstm_cell_856/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_856/add_1AddV2lstm_cell_856/mul:z:0lstm_cell_856/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_856/Sigmoid_2Sigmoidlstm_cell_856/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_856/Relu_1Relulstm_cell_856/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_856/mul_2Mullstm_cell_856/Sigmoid_2:y:0"lstm_cell_856/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_856_matmul_readvariableop_resource.lstm_cell_856_matmul_1_readvariableop_resource-lstm_cell_856_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????2:?????????2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_5136242*
condR
while_cond_5136241*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :??????????????????2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :??????????????????2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :??????????????????2?
NoOpNoOp%^lstm_cell_856/BiasAdd/ReadVariableOp$^lstm_cell_856/MatMul/ReadVariableOp&^lstm_cell_856/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_856/BiasAdd/ReadVariableOp$lstm_cell_856/BiasAdd/ReadVariableOp2J
#lstm_cell_856/MatMul/ReadVariableOp#lstm_cell_856/MatMul/ReadVariableOp2N
%lstm_cell_856/MatMul_1/ReadVariableOp%lstm_cell_856/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?
?
*__inference_lstm_857_layer_call_fn_5136777
inputs_0
unknown:2(
	unknown_0:
(
	unknown_1:(
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_lstm_857_layer_call_and_return_conditional_losses_5133396o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?
?
J__inference_lstm_cell_855_layer_call_and_return_conditional_losses_5137456

inputs
states_0
states_11
matmul_readvariableop_resource:	?3
 matmul_1_readvariableop_resource:	d?.
biasadd_readvariableop_resource:	?
identity

identity_1

identity_2??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????y
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:??????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:?????????dV
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:?????????dU
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:?????????dN
ReluRelusplit:output:2*
T0*'
_output_shapes
:?????????d_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:?????????dT
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:?????????dV
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:?????????dK
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:?????????dc
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:?????????dX
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:?????????dZ

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:?????????dZ

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:?????????d?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????:?????????d:?????????d: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:QM
'
_output_shapes
:?????????d
"
_user_specified_name
states/0:QM
'
_output_shapes
:?????????d
"
_user_specified_name
states/1
?	
?
F__inference_dense_285_layer_call_and_return_conditional_losses_5137390

inputs0
matmul_readvariableop_resource:
-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????
: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????

 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_856_layer_call_and_return_conditional_losses_5132918

inputs

states
states_11
matmul_readvariableop_resource:	d?3
 matmul_1_readvariableop_resource:	2?.
biasadd_readvariableop_resource:	?
identity

identity_1

identity_2??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????y
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:??????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:?????????2V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:?????????2U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:?????????2N
ReluRelusplit:output:2*
T0*'
_output_shapes
:?????????2_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:?????????2T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:?????????2V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:?????????2K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:?????????2c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:?????????2X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:?????????2Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:?????????2Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:?????????2?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????d:?????????2:?????????2: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????2
 
_user_specified_namestates:OK
'
_output_shapes
:?????????2
 
_user_specified_namestates
?
?
while_cond_5132976
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5132976___redundant_placeholder05
1while_while_cond_5132976___redundant_placeholder15
1while_while_cond_5132976___redundant_placeholder25
1while_while_cond_5132976___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????2:?????????2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????2:-)
'
_output_shapes
:?????????2:

_output_shapes
: :

_output_shapes
:
?8
?
while_body_5133770
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_857_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_857_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_857_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_857_matmul_readvariableop_resource:2(F
4while_lstm_cell_857_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_857_biasadd_readvariableop_resource:(??*while/lstm_cell_857/BiasAdd/ReadVariableOp?)while/lstm_cell_857/MatMul/ReadVariableOp?+while/lstm_cell_857/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_857/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_857_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_857/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_857/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_857/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_857_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_857/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_857/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_857/addAddV2$while/lstm_cell_857/MatMul:product:0&while/lstm_cell_857/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_857/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_857_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_857/BiasAddBiasAddwhile/lstm_cell_857/add:z:02while/lstm_cell_857/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_857/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_857/splitSplit,while/lstm_cell_857/split/split_dim:output:0$while/lstm_cell_857/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_857/SigmoidSigmoid"while/lstm_cell_857/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_857/Sigmoid_1Sigmoid"while/lstm_cell_857/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_857/mulMul!while/lstm_cell_857/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_857/ReluRelu"while/lstm_cell_857/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_857/mul_1Mulwhile/lstm_cell_857/Sigmoid:y:0&while/lstm_cell_857/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_857/add_1AddV2while/lstm_cell_857/mul:z:0while/lstm_cell_857/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_857/Sigmoid_2Sigmoid"while/lstm_cell_857/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_857/Relu_1Reluwhile/lstm_cell_857/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_857/mul_2Mul!while/lstm_cell_857/Sigmoid_2:y:0(while/lstm_cell_857/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_857/mul_2:z:0*
_output_shapes
: *
element_dtype0:???M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: ?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_857/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_857/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_857/BiasAdd/ReadVariableOp*^while/lstm_cell_857/MatMul/ReadVariableOp,^while/lstm_cell_857/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_857_biasadd_readvariableop_resource5while_lstm_cell_857_biasadd_readvariableop_resource_0"n
4while_lstm_cell_857_matmul_1_readvariableop_resource6while_lstm_cell_857_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_857_matmul_readvariableop_resource4while_lstm_cell_857_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_857/BiasAdd/ReadVariableOp*while/lstm_cell_857/BiasAdd/ReadVariableOp2V
)while/lstm_cell_857/MatMul/ReadVariableOp)while/lstm_cell_857/MatMul/ReadVariableOp2Z
+while/lstm_cell_857/MatMul_1/ReadVariableOp+while/lstm_cell_857/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????
:-)
'
_output_shapes
:?????????
:

_output_shapes
: :

_output_shapes
: 
?8
?
while_body_5136671
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_856_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_856_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_856_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_856_matmul_readvariableop_resource:	d?G
4while_lstm_cell_856_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_856_biasadd_readvariableop_resource:	???*while/lstm_cell_856/BiasAdd/ReadVariableOp?)while/lstm_cell_856/MatMul/ReadVariableOp?+while/lstm_cell_856/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_856/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_856_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_856/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_856/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_856/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_856_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_856/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_856/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_856/addAddV2$while/lstm_cell_856/MatMul:product:0&while/lstm_cell_856/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_856/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_856_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_856/BiasAddBiasAddwhile/lstm_cell_856/add:z:02while/lstm_cell_856/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_856/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_856/splitSplit,while/lstm_cell_856/split/split_dim:output:0$while/lstm_cell_856/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_856/SigmoidSigmoid"while/lstm_cell_856/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_856/Sigmoid_1Sigmoid"while/lstm_cell_856/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_856/mulMul!while/lstm_cell_856/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_856/ReluRelu"while/lstm_cell_856/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_856/mul_1Mulwhile/lstm_cell_856/Sigmoid:y:0&while/lstm_cell_856/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_856/add_1AddV2while/lstm_cell_856/mul:z:0while/lstm_cell_856/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_856/Sigmoid_2Sigmoid"while/lstm_cell_856/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_856/Relu_1Reluwhile/lstm_cell_856/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_856/mul_2Mul!while/lstm_cell_856/Sigmoid_2:y:0(while/lstm_cell_856/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_856/mul_2:z:0*
_output_shapes
: *
element_dtype0:???M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: ?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_856/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_856/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_856/BiasAdd/ReadVariableOp*^while/lstm_cell_856/MatMul/ReadVariableOp,^while/lstm_cell_856/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_856_biasadd_readvariableop_resource5while_lstm_cell_856_biasadd_readvariableop_resource_0"n
4while_lstm_cell_856_matmul_1_readvariableop_resource6while_lstm_cell_856_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_856_matmul_readvariableop_resource4while_lstm_cell_856_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_856/BiasAdd/ReadVariableOp*while/lstm_cell_856/BiasAdd/ReadVariableOp2V
)while/lstm_cell_856/MatMul/ReadVariableOp)while/lstm_cell_856/MatMul/ReadVariableOp2Z
+while/lstm_cell_856/MatMul_1/ReadVariableOp+while/lstm_cell_856/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????2:-)
'
_output_shapes
:?????????2:

_output_shapes
: :

_output_shapes
: 
?
?
/__inference_lstm_cell_856_layer_call_fn_5137522

inputs
states_0
states_1
unknown:	d?
	unknown_0:	2?
	unknown_1:	?
identity

identity_1

identity_2??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:?????????2:?????????2:?????????2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_lstm_cell_856_layer_call_and_return_conditional_losses_5132918o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:?????????2q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:?????????2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????d:?????????2:?????????2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs:QM
'
_output_shapes
:?????????2
"
_user_specified_name
states/0:QM
'
_output_shapes
:?????????2
"
_user_specified_name
states/1
?

?
0__inference_sequential_285_layer_call_fn_5134642

inputs
unknown:	?
	unknown_0:	d?
	unknown_1:	?
	unknown_2:	d?
	unknown_3:	2?
	unknown_4:	?
	unknown_5:2(
	unknown_6:
(
	unknown_7:(
	unknown_8:

	unknown_9:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_sequential_285_layer_call_and_return_conditional_losses_5133879o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_5136670
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5136670___redundant_placeholder05
1while_while_cond_5136670___redundant_placeholder15
1while_while_cond_5136670___redundant_placeholder25
1while_while_cond_5136670___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????2:?????????2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????2:-)
'
_output_shapes
:?????????2:

_output_shapes
: :

_output_shapes
:
?8
?
while_body_5134151
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_856_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_856_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_856_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_856_matmul_readvariableop_resource:	d?G
4while_lstm_cell_856_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_856_biasadd_readvariableop_resource:	???*while/lstm_cell_856/BiasAdd/ReadVariableOp?)while/lstm_cell_856/MatMul/ReadVariableOp?+while/lstm_cell_856/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_856/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_856_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_856/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_856/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_856/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_856_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_856/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_856/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_856/addAddV2$while/lstm_cell_856/MatMul:product:0&while/lstm_cell_856/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_856/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_856_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_856/BiasAddBiasAddwhile/lstm_cell_856/add:z:02while/lstm_cell_856/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_856/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_856/splitSplit,while/lstm_cell_856/split/split_dim:output:0$while/lstm_cell_856/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_856/SigmoidSigmoid"while/lstm_cell_856/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_856/Sigmoid_1Sigmoid"while/lstm_cell_856/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_856/mulMul!while/lstm_cell_856/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_856/ReluRelu"while/lstm_cell_856/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_856/mul_1Mulwhile/lstm_cell_856/Sigmoid:y:0&while/lstm_cell_856/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_856/add_1AddV2while/lstm_cell_856/mul:z:0while/lstm_cell_856/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_856/Sigmoid_2Sigmoid"while/lstm_cell_856/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_856/Relu_1Reluwhile/lstm_cell_856/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_856/mul_2Mul!while/lstm_cell_856/Sigmoid_2:y:0(while/lstm_cell_856/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_856/mul_2:z:0*
_output_shapes
: *
element_dtype0:???M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: ?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_856/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_856/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_856/BiasAdd/ReadVariableOp*^while/lstm_cell_856/MatMul/ReadVariableOp,^while/lstm_cell_856/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_856_biasadd_readvariableop_resource5while_lstm_cell_856_biasadd_readvariableop_resource_0"n
4while_lstm_cell_856_matmul_1_readvariableop_resource6while_lstm_cell_856_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_856_matmul_readvariableop_resource4while_lstm_cell_856_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_856/BiasAdd/ReadVariableOp*while/lstm_cell_856/BiasAdd/ReadVariableOp2V
)while/lstm_cell_856/MatMul/ReadVariableOp)while/lstm_cell_856/MatMul/ReadVariableOp2Z
+while/lstm_cell_856/MatMul_1/ReadVariableOp+while/lstm_cell_856/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????2:-)
'
_output_shapes
:?????????2:

_output_shapes
: :

_output_shapes
: 
?
?
*__inference_lstm_857_layer_call_fn_5136788

inputs
unknown:2(
	unknown_0:
(
	unknown_1:(
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_lstm_857_layer_call_and_return_conditional_losses_5133854o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?C
?

lstm_856_while_body_5134867.
*lstm_856_while_lstm_856_while_loop_counter4
0lstm_856_while_lstm_856_while_maximum_iterations
lstm_856_while_placeholder 
lstm_856_while_placeholder_1 
lstm_856_while_placeholder_2 
lstm_856_while_placeholder_3-
)lstm_856_while_lstm_856_strided_slice_1_0i
elstm_856_while_tensorarrayv2read_tensorlistgetitem_lstm_856_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_856_while_lstm_cell_856_matmul_readvariableop_resource_0:	d?R
?lstm_856_while_lstm_cell_856_matmul_1_readvariableop_resource_0:	2?M
>lstm_856_while_lstm_cell_856_biasadd_readvariableop_resource_0:	?
lstm_856_while_identity
lstm_856_while_identity_1
lstm_856_while_identity_2
lstm_856_while_identity_3
lstm_856_while_identity_4
lstm_856_while_identity_5+
'lstm_856_while_lstm_856_strided_slice_1g
clstm_856_while_tensorarrayv2read_tensorlistgetitem_lstm_856_tensorarrayunstack_tensorlistfromtensorN
;lstm_856_while_lstm_cell_856_matmul_readvariableop_resource:	d?P
=lstm_856_while_lstm_cell_856_matmul_1_readvariableop_resource:	2?K
<lstm_856_while_lstm_cell_856_biasadd_readvariableop_resource:	???3lstm_856/while/lstm_cell_856/BiasAdd/ReadVariableOp?2lstm_856/while/lstm_cell_856/MatMul/ReadVariableOp?4lstm_856/while/lstm_cell_856/MatMul_1/ReadVariableOp?
@lstm_856/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_856/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_856_while_tensorarrayv2read_tensorlistgetitem_lstm_856_tensorarrayunstack_tensorlistfromtensor_0lstm_856_while_placeholderIlstm_856/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_856/while/lstm_cell_856/MatMul/ReadVariableOpReadVariableOp=lstm_856_while_lstm_cell_856_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_856/while/lstm_cell_856/MatMulMatMul9lstm_856/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_856/while/lstm_cell_856/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_856/while/lstm_cell_856/MatMul_1/ReadVariableOpReadVariableOp?lstm_856_while_lstm_cell_856_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_856/while/lstm_cell_856/MatMul_1MatMullstm_856_while_placeholder_2<lstm_856/while/lstm_cell_856/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_856/while/lstm_cell_856/addAddV2-lstm_856/while/lstm_cell_856/MatMul:product:0/lstm_856/while/lstm_cell_856/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_856/while/lstm_cell_856/BiasAdd/ReadVariableOpReadVariableOp>lstm_856_while_lstm_cell_856_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_856/while/lstm_cell_856/BiasAddBiasAdd$lstm_856/while/lstm_cell_856/add:z:0;lstm_856/while/lstm_cell_856/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_856/while/lstm_cell_856/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_856/while/lstm_cell_856/splitSplit5lstm_856/while/lstm_cell_856/split/split_dim:output:0-lstm_856/while/lstm_cell_856/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_856/while/lstm_cell_856/SigmoidSigmoid+lstm_856/while/lstm_cell_856/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_856/while/lstm_cell_856/Sigmoid_1Sigmoid+lstm_856/while/lstm_cell_856/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_856/while/lstm_cell_856/mulMul*lstm_856/while/lstm_cell_856/Sigmoid_1:y:0lstm_856_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_856/while/lstm_cell_856/ReluRelu+lstm_856/while/lstm_cell_856/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_856/while/lstm_cell_856/mul_1Mul(lstm_856/while/lstm_cell_856/Sigmoid:y:0/lstm_856/while/lstm_cell_856/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_856/while/lstm_cell_856/add_1AddV2$lstm_856/while/lstm_cell_856/mul:z:0&lstm_856/while/lstm_cell_856/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_856/while/lstm_cell_856/Sigmoid_2Sigmoid+lstm_856/while/lstm_cell_856/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_856/while/lstm_cell_856/Relu_1Relu&lstm_856/while/lstm_cell_856/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_856/while/lstm_cell_856/mul_2Mul*lstm_856/while/lstm_cell_856/Sigmoid_2:y:01lstm_856/while/lstm_cell_856/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_856/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_856_while_placeholder_1lstm_856_while_placeholder&lstm_856/while/lstm_cell_856/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_856/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_856/while/addAddV2lstm_856_while_placeholderlstm_856/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_856/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_856/while/add_1AddV2*lstm_856_while_lstm_856_while_loop_counterlstm_856/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_856/while/IdentityIdentitylstm_856/while/add_1:z:0^lstm_856/while/NoOp*
T0*
_output_shapes
: ?
lstm_856/while/Identity_1Identity0lstm_856_while_lstm_856_while_maximum_iterations^lstm_856/while/NoOp*
T0*
_output_shapes
: t
lstm_856/while/Identity_2Identitylstm_856/while/add:z:0^lstm_856/while/NoOp*
T0*
_output_shapes
: ?
lstm_856/while/Identity_3IdentityClstm_856/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_856/while/NoOp*
T0*
_output_shapes
: ?
lstm_856/while/Identity_4Identity&lstm_856/while/lstm_cell_856/mul_2:z:0^lstm_856/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_856/while/Identity_5Identity&lstm_856/while/lstm_cell_856/add_1:z:0^lstm_856/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_856/while/NoOpNoOp4^lstm_856/while/lstm_cell_856/BiasAdd/ReadVariableOp3^lstm_856/while/lstm_cell_856/MatMul/ReadVariableOp5^lstm_856/while/lstm_cell_856/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_856_while_identity lstm_856/while/Identity:output:0"?
lstm_856_while_identity_1"lstm_856/while/Identity_1:output:0"?
lstm_856_while_identity_2"lstm_856/while/Identity_2:output:0"?
lstm_856_while_identity_3"lstm_856/while/Identity_3:output:0"?
lstm_856_while_identity_4"lstm_856/while/Identity_4:output:0"?
lstm_856_while_identity_5"lstm_856/while/Identity_5:output:0"T
'lstm_856_while_lstm_856_strided_slice_1)lstm_856_while_lstm_856_strided_slice_1_0"~
<lstm_856_while_lstm_cell_856_biasadd_readvariableop_resource>lstm_856_while_lstm_cell_856_biasadd_readvariableop_resource_0"?
=lstm_856_while_lstm_cell_856_matmul_1_readvariableop_resource?lstm_856_while_lstm_cell_856_matmul_1_readvariableop_resource_0"|
;lstm_856_while_lstm_cell_856_matmul_readvariableop_resource=lstm_856_while_lstm_cell_856_matmul_readvariableop_resource_0"?
clstm_856_while_tensorarrayv2read_tensorlistgetitem_lstm_856_tensorarrayunstack_tensorlistfromtensorelstm_856_while_tensorarrayv2read_tensorlistgetitem_lstm_856_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_856/while/lstm_cell_856/BiasAdd/ReadVariableOp3lstm_856/while/lstm_cell_856/BiasAdd/ReadVariableOp2h
2lstm_856/while/lstm_cell_856/MatMul/ReadVariableOp2lstm_856/while/lstm_cell_856/MatMul/ReadVariableOp2l
4lstm_856/while/lstm_cell_856/MatMul_1/ReadVariableOp4lstm_856/while/lstm_cell_856/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????2:-)
'
_output_shapes
:?????????2:

_output_shapes
: :

_output_shapes
: 
?

?
lstm_857_while_cond_5135005.
*lstm_857_while_lstm_857_while_loop_counter4
0lstm_857_while_lstm_857_while_maximum_iterations
lstm_857_while_placeholder 
lstm_857_while_placeholder_1 
lstm_857_while_placeholder_2 
lstm_857_while_placeholder_30
,lstm_857_while_less_lstm_857_strided_slice_1G
Clstm_857_while_lstm_857_while_cond_5135005___redundant_placeholder0G
Clstm_857_while_lstm_857_while_cond_5135005___redundant_placeholder1G
Clstm_857_while_lstm_857_while_cond_5135005___redundant_placeholder2G
Clstm_857_while_lstm_857_while_cond_5135005___redundant_placeholder3
lstm_857_while_identity
?
lstm_857/while/LessLesslstm_857_while_placeholder,lstm_857_while_less_lstm_857_strided_slice_1*
T0*
_output_shapes
: ]
lstm_857/while/IdentityIdentitylstm_857/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_857_while_identity lstm_857/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????
:?????????
: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????
:-)
'
_output_shapes
:?????????
:

_output_shapes
: :

_output_shapes
:
?
?
while_cond_5136857
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5136857___redundant_placeholder05
1while_while_cond_5136857___redundant_placeholder15
1while_while_cond_5136857___redundant_placeholder25
1while_while_cond_5136857___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????
:?????????
: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????
:-)
'
_output_shapes
:?????????
:

_output_shapes
: :

_output_shapes
:
?
?
*__inference_lstm_856_layer_call_fn_5136172

inputs
unknown:	d?
	unknown_0:	2?
	unknown_1:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_lstm_856_layer_call_and_return_conditional_losses_5133704s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
K__inference_sequential_285_layer_call_and_return_conditional_losses_5134580
lstm_855_input#
lstm_855_5134553:	?#
lstm_855_5134555:	d?
lstm_855_5134557:	?#
lstm_856_5134560:	d?#
lstm_856_5134562:	2?
lstm_856_5134564:	?"
lstm_857_5134567:2("
lstm_857_5134569:
(
lstm_857_5134571:(#
dense_285_5134574:

dense_285_5134576:
identity??!dense_285/StatefulPartitionedCall? lstm_855/StatefulPartitionedCall? lstm_856/StatefulPartitionedCall? lstm_857/StatefulPartitionedCall?
 lstm_855/StatefulPartitionedCallStatefulPartitionedCalllstm_855_inputlstm_855_5134553lstm_855_5134555lstm_855_5134557*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_lstm_855_layer_call_and_return_conditional_losses_5134400?
 lstm_856/StatefulPartitionedCallStatefulPartitionedCall)lstm_855/StatefulPartitionedCall:output:0lstm_856_5134560lstm_856_5134562lstm_856_5134564*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_lstm_856_layer_call_and_return_conditional_losses_5134235?
 lstm_857/StatefulPartitionedCallStatefulPartitionedCall)lstm_856/StatefulPartitionedCall:output:0lstm_857_5134567lstm_857_5134569lstm_857_5134571*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_lstm_857_layer_call_and_return_conditional_losses_5134070?
!dense_285/StatefulPartitionedCallStatefulPartitionedCall)lstm_857/StatefulPartitionedCall:output:0dense_285_5134574dense_285_5134576*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dense_285_layer_call_and_return_conditional_losses_5133872y
IdentityIdentity*dense_285/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_285/StatefulPartitionedCall!^lstm_855/StatefulPartitionedCall!^lstm_856/StatefulPartitionedCall!^lstm_857/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_285/StatefulPartitionedCall!dense_285/StatefulPartitionedCall2D
 lstm_855/StatefulPartitionedCall lstm_855/StatefulPartitionedCall2D
 lstm_856/StatefulPartitionedCall lstm_856/StatefulPartitionedCall2D
 lstm_857/StatefulPartitionedCall lstm_857/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_855_input
?8
?
E__inference_lstm_857_layer_call_and_return_conditional_losses_5133205

inputs'
lstm_cell_857_5133123:2('
lstm_cell_857_5133125:
(#
lstm_cell_857_5133127:(
identity??%lstm_cell_857/StatefulPartitionedCall?while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????
R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????2D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
%lstm_cell_857/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_857_5133123lstm_cell_857_5133125lstm_cell_857_5133127*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:?????????
:?????????
:?????????
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_lstm_cell_857_layer_call_and_return_conditional_losses_5133122n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_857_5133123lstm_cell_857_5133125lstm_cell_857_5133127*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????
:?????????
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_5133136*
condR
while_cond_5133135*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :??????????????????
*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :??????????????????
[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:?????????
v
NoOpNoOp&^lstm_cell_857/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_857/StatefulPartitionedCall%lstm_cell_857/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?

?
0__inference_sequential_285_layer_call_fn_5133904
lstm_855_input
unknown:	?
	unknown_0:	d?
	unknown_1:	?
	unknown_2:	d?
	unknown_3:	2?
	unknown_4:	?
	unknown_5:2(
	unknown_6:
(
	unknown_7:(
	unknown_8:

	unknown_9:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalllstm_855_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_sequential_285_layer_call_and_return_conditional_losses_5133879o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_855_input
?
?
while_cond_5132435
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5132435___redundant_placeholder05
1while_while_cond_5132435___redundant_placeholder15
1while_while_cond_5132435___redundant_placeholder25
1while_while_cond_5132435___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????d:?????????d: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????d:-)
'
_output_shapes
:?????????d:

_output_shapes
: :

_output_shapes
:
?8
?
E__inference_lstm_857_layer_call_and_return_conditional_losses_5133396

inputs'
lstm_cell_857_5133314:2('
lstm_cell_857_5133316:
(#
lstm_cell_857_5133318:(
identity??%lstm_cell_857/StatefulPartitionedCall?while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????
R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????2D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
%lstm_cell_857/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_857_5133314lstm_cell_857_5133316lstm_cell_857_5133318*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:?????????
:?????????
:?????????
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_lstm_cell_857_layer_call_and_return_conditional_losses_5133268n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_857_5133314lstm_cell_857_5133316lstm_cell_857_5133318*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????
:?????????
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_5133327*
condR
while_cond_5133326*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :??????????????????
*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :??????????????????
[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:?????????
v
NoOpNoOp&^lstm_cell_857/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_857/StatefulPartitionedCall%lstm_cell_857/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?8
?
E__inference_lstm_855_layer_call_and_return_conditional_losses_5132505

inputs(
lstm_cell_855_5132423:	?(
lstm_cell_855_5132425:	d?$
lstm_cell_855_5132427:	?
identity??%lstm_cell_855/StatefulPartitionedCall?while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ds
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????dR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
%lstm_cell_855/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_855_5132423lstm_cell_855_5132425lstm_cell_855_5132427*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:?????????d:?????????d:?????????d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_lstm_cell_855_layer_call_and_return_conditional_losses_5132422n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_855_5132423lstm_cell_855_5132425lstm_cell_855_5132427*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????d:?????????d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_5132436*
condR
while_cond_5132435*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :??????????????????d*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :??????????????????d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :??????????????????dv
NoOpNoOp&^lstm_cell_855/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_855/StatefulPartitionedCall%lstm_cell_855/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
/__inference_lstm_cell_855_layer_call_fn_5137407

inputs
states_0
states_1
unknown:	?
	unknown_0:	d?
	unknown_1:	?
identity

identity_1

identity_2??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:?????????d:?????????d:?????????d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_lstm_cell_855_layer_call_and_return_conditional_losses_5132422o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????dq

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:?????????dq

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:?????????d`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????:?????????d:?????????d: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:QM
'
_output_shapes
:?????????d
"
_user_specified_name
states/0:QM
'
_output_shapes
:?????????d
"
_user_specified_name
states/1
?T
?
*sequential_285_lstm_855_while_body_5131987L
Hsequential_285_lstm_855_while_sequential_285_lstm_855_while_loop_counterR
Nsequential_285_lstm_855_while_sequential_285_lstm_855_while_maximum_iterations-
)sequential_285_lstm_855_while_placeholder/
+sequential_285_lstm_855_while_placeholder_1/
+sequential_285_lstm_855_while_placeholder_2/
+sequential_285_lstm_855_while_placeholder_3K
Gsequential_285_lstm_855_while_sequential_285_lstm_855_strided_slice_1_0?
?sequential_285_lstm_855_while_tensorarrayv2read_tensorlistgetitem_sequential_285_lstm_855_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_285_lstm_855_while_lstm_cell_855_matmul_readvariableop_resource_0:	?a
Nsequential_285_lstm_855_while_lstm_cell_855_matmul_1_readvariableop_resource_0:	d?\
Msequential_285_lstm_855_while_lstm_cell_855_biasadd_readvariableop_resource_0:	?*
&sequential_285_lstm_855_while_identity,
(sequential_285_lstm_855_while_identity_1,
(sequential_285_lstm_855_while_identity_2,
(sequential_285_lstm_855_while_identity_3,
(sequential_285_lstm_855_while_identity_4,
(sequential_285_lstm_855_while_identity_5I
Esequential_285_lstm_855_while_sequential_285_lstm_855_strided_slice_1?
?sequential_285_lstm_855_while_tensorarrayv2read_tensorlistgetitem_sequential_285_lstm_855_tensorarrayunstack_tensorlistfromtensor]
Jsequential_285_lstm_855_while_lstm_cell_855_matmul_readvariableop_resource:	?_
Lsequential_285_lstm_855_while_lstm_cell_855_matmul_1_readvariableop_resource:	d?Z
Ksequential_285_lstm_855_while_lstm_cell_855_biasadd_readvariableop_resource:	???Bsequential_285/lstm_855/while/lstm_cell_855/BiasAdd/ReadVariableOp?Asequential_285/lstm_855/while/lstm_cell_855/MatMul/ReadVariableOp?Csequential_285/lstm_855/while/lstm_cell_855/MatMul_1/ReadVariableOp?
Osequential_285/lstm_855/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
Asequential_285/lstm_855/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_285_lstm_855_while_tensorarrayv2read_tensorlistgetitem_sequential_285_lstm_855_tensorarrayunstack_tensorlistfromtensor_0)sequential_285_lstm_855_while_placeholderXsequential_285/lstm_855/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
Asequential_285/lstm_855/while/lstm_cell_855/MatMul/ReadVariableOpReadVariableOpLsequential_285_lstm_855_while_lstm_cell_855_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
2sequential_285/lstm_855/while/lstm_cell_855/MatMulMatMulHsequential_285/lstm_855/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_285/lstm_855/while/lstm_cell_855/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_285/lstm_855/while/lstm_cell_855/MatMul_1/ReadVariableOpReadVariableOpNsequential_285_lstm_855_while_lstm_cell_855_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
4sequential_285/lstm_855/while/lstm_cell_855/MatMul_1MatMul+sequential_285_lstm_855_while_placeholder_2Ksequential_285/lstm_855/while/lstm_cell_855/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_285/lstm_855/while/lstm_cell_855/addAddV2<sequential_285/lstm_855/while/lstm_cell_855/MatMul:product:0>sequential_285/lstm_855/while/lstm_cell_855/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_285/lstm_855/while/lstm_cell_855/BiasAdd/ReadVariableOpReadVariableOpMsequential_285_lstm_855_while_lstm_cell_855_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_285/lstm_855/while/lstm_cell_855/BiasAddBiasAdd3sequential_285/lstm_855/while/lstm_cell_855/add:z:0Jsequential_285/lstm_855/while/lstm_cell_855/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_285/lstm_855/while/lstm_cell_855/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_285/lstm_855/while/lstm_cell_855/splitSplitDsequential_285/lstm_855/while/lstm_cell_855/split/split_dim:output:0<sequential_285/lstm_855/while/lstm_cell_855/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
3sequential_285/lstm_855/while/lstm_cell_855/SigmoidSigmoid:sequential_285/lstm_855/while/lstm_cell_855/split:output:0*
T0*'
_output_shapes
:?????????d?
5sequential_285/lstm_855/while/lstm_cell_855/Sigmoid_1Sigmoid:sequential_285/lstm_855/while/lstm_cell_855/split:output:1*
T0*'
_output_shapes
:?????????d?
/sequential_285/lstm_855/while/lstm_cell_855/mulMul9sequential_285/lstm_855/while/lstm_cell_855/Sigmoid_1:y:0+sequential_285_lstm_855_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
0sequential_285/lstm_855/while/lstm_cell_855/ReluRelu:sequential_285/lstm_855/while/lstm_cell_855/split:output:2*
T0*'
_output_shapes
:?????????d?
1sequential_285/lstm_855/while/lstm_cell_855/mul_1Mul7sequential_285/lstm_855/while/lstm_cell_855/Sigmoid:y:0>sequential_285/lstm_855/while/lstm_cell_855/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
1sequential_285/lstm_855/while/lstm_cell_855/add_1AddV23sequential_285/lstm_855/while/lstm_cell_855/mul:z:05sequential_285/lstm_855/while/lstm_cell_855/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
5sequential_285/lstm_855/while/lstm_cell_855/Sigmoid_2Sigmoid:sequential_285/lstm_855/while/lstm_cell_855/split:output:3*
T0*'
_output_shapes
:?????????d?
2sequential_285/lstm_855/while/lstm_cell_855/Relu_1Relu5sequential_285/lstm_855/while/lstm_cell_855/add_1:z:0*
T0*'
_output_shapes
:?????????d?
1sequential_285/lstm_855/while/lstm_cell_855/mul_2Mul9sequential_285/lstm_855/while/lstm_cell_855/Sigmoid_2:y:0@sequential_285/lstm_855/while/lstm_cell_855/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
Bsequential_285/lstm_855/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_285_lstm_855_while_placeholder_1)sequential_285_lstm_855_while_placeholder5sequential_285/lstm_855/while/lstm_cell_855/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_285/lstm_855/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_285/lstm_855/while/addAddV2)sequential_285_lstm_855_while_placeholder,sequential_285/lstm_855/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_285/lstm_855/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_285/lstm_855/while/add_1AddV2Hsequential_285_lstm_855_while_sequential_285_lstm_855_while_loop_counter.sequential_285/lstm_855/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_285/lstm_855/while/IdentityIdentity'sequential_285/lstm_855/while/add_1:z:0#^sequential_285/lstm_855/while/NoOp*
T0*
_output_shapes
: ?
(sequential_285/lstm_855/while/Identity_1IdentityNsequential_285_lstm_855_while_sequential_285_lstm_855_while_maximum_iterations#^sequential_285/lstm_855/while/NoOp*
T0*
_output_shapes
: ?
(sequential_285/lstm_855/while/Identity_2Identity%sequential_285/lstm_855/while/add:z:0#^sequential_285/lstm_855/while/NoOp*
T0*
_output_shapes
: ?
(sequential_285/lstm_855/while/Identity_3IdentityRsequential_285/lstm_855/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_285/lstm_855/while/NoOp*
T0*
_output_shapes
: ?
(sequential_285/lstm_855/while/Identity_4Identity5sequential_285/lstm_855/while/lstm_cell_855/mul_2:z:0#^sequential_285/lstm_855/while/NoOp*
T0*'
_output_shapes
:?????????d?
(sequential_285/lstm_855/while/Identity_5Identity5sequential_285/lstm_855/while/lstm_cell_855/add_1:z:0#^sequential_285/lstm_855/while/NoOp*
T0*'
_output_shapes
:?????????d?
"sequential_285/lstm_855/while/NoOpNoOpC^sequential_285/lstm_855/while/lstm_cell_855/BiasAdd/ReadVariableOpB^sequential_285/lstm_855/while/lstm_cell_855/MatMul/ReadVariableOpD^sequential_285/lstm_855/while/lstm_cell_855/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_285_lstm_855_while_identity/sequential_285/lstm_855/while/Identity:output:0"]
(sequential_285_lstm_855_while_identity_11sequential_285/lstm_855/while/Identity_1:output:0"]
(sequential_285_lstm_855_while_identity_21sequential_285/lstm_855/while/Identity_2:output:0"]
(sequential_285_lstm_855_while_identity_31sequential_285/lstm_855/while/Identity_3:output:0"]
(sequential_285_lstm_855_while_identity_41sequential_285/lstm_855/while/Identity_4:output:0"]
(sequential_285_lstm_855_while_identity_51sequential_285/lstm_855/while/Identity_5:output:0"?
Ksequential_285_lstm_855_while_lstm_cell_855_biasadd_readvariableop_resourceMsequential_285_lstm_855_while_lstm_cell_855_biasadd_readvariableop_resource_0"?
Lsequential_285_lstm_855_while_lstm_cell_855_matmul_1_readvariableop_resourceNsequential_285_lstm_855_while_lstm_cell_855_matmul_1_readvariableop_resource_0"?
Jsequential_285_lstm_855_while_lstm_cell_855_matmul_readvariableop_resourceLsequential_285_lstm_855_while_lstm_cell_855_matmul_readvariableop_resource_0"?
Esequential_285_lstm_855_while_sequential_285_lstm_855_strided_slice_1Gsequential_285_lstm_855_while_sequential_285_lstm_855_strided_slice_1_0"?
?sequential_285_lstm_855_while_tensorarrayv2read_tensorlistgetitem_sequential_285_lstm_855_tensorarrayunstack_tensorlistfromtensor?sequential_285_lstm_855_while_tensorarrayv2read_tensorlistgetitem_sequential_285_lstm_855_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2?
Bsequential_285/lstm_855/while/lstm_cell_855/BiasAdd/ReadVariableOpBsequential_285/lstm_855/while/lstm_cell_855/BiasAdd/ReadVariableOp2?
Asequential_285/lstm_855/while/lstm_cell_855/MatMul/ReadVariableOpAsequential_285/lstm_855/while/lstm_cell_855/MatMul/ReadVariableOp2?
Csequential_285/lstm_855/while/lstm_cell_855/MatMul_1/ReadVariableOpCsequential_285/lstm_855/while/lstm_cell_855/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????d:-)
'
_output_shapes
:?????????d:

_output_shapes
: :

_output_shapes
: 
?

?
lstm_856_while_cond_5134866.
*lstm_856_while_lstm_856_while_loop_counter4
0lstm_856_while_lstm_856_while_maximum_iterations
lstm_856_while_placeholder 
lstm_856_while_placeholder_1 
lstm_856_while_placeholder_2 
lstm_856_while_placeholder_30
,lstm_856_while_less_lstm_856_strided_slice_1G
Clstm_856_while_lstm_856_while_cond_5134866___redundant_placeholder0G
Clstm_856_while_lstm_856_while_cond_5134866___redundant_placeholder1G
Clstm_856_while_lstm_856_while_cond_5134866___redundant_placeholder2G
Clstm_856_while_lstm_856_while_cond_5134866___redundant_placeholder3
lstm_856_while_identity
?
lstm_856/while/LessLesslstm_856_while_placeholder,lstm_856_while_less_lstm_856_strided_slice_1*
T0*
_output_shapes
: ]
lstm_856/while/IdentityIdentitylstm_856/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_856_while_identity lstm_856/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????2:?????????2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????2:-)
'
_output_shapes
:?????????2:

_output_shapes
: :

_output_shapes
:
?8
?
E__inference_lstm_856_layer_call_and_return_conditional_losses_5132855

inputs(
lstm_cell_856_5132773:	d?(
lstm_cell_856_5132775:	2?$
lstm_cell_856_5132777:	?
identity??%lstm_cell_856/StatefulPartitionedCall?while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????2R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????dD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
%lstm_cell_856/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_856_5132773lstm_cell_856_5132775lstm_cell_856_5132777*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:?????????2:?????????2:?????????2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_lstm_cell_856_layer_call_and_return_conditional_losses_5132772n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_856_5132773lstm_cell_856_5132775lstm_cell_856_5132777*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????2:?????????2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_5132786*
condR
while_cond_5132785*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :??????????????????2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :??????????????????2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :??????????????????2v
NoOpNoOp&^lstm_cell_856/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_856/StatefulPartitionedCall%lstm_cell_856/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_856_layer_call_and_return_conditional_losses_5132772

inputs

states
states_11
matmul_readvariableop_resource:	d?3
 matmul_1_readvariableop_resource:	2?.
biasadd_readvariableop_resource:	?
identity

identity_1

identity_2??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????y
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:??????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:?????????2V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:?????????2U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:?????????2N
ReluRelusplit:output:2*
T0*'
_output_shapes
:?????????2_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:?????????2T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:?????????2V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:?????????2K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:?????????2c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:?????????2X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:?????????2Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:?????????2Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:?????????2?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????d:?????????2:?????????2: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????2
 
_user_specified_namestates:OK
'
_output_shapes
:?????????2
 
_user_specified_namestates
?#
?
while_body_5132436
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_855_5132460_0:	?0
while_lstm_cell_855_5132462_0:	d?,
while_lstm_cell_855_5132464_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_855_5132460:	?.
while_lstm_cell_855_5132462:	d?*
while_lstm_cell_855_5132464:	???+while/lstm_cell_855/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_855/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_855_5132460_0while_lstm_cell_855_5132462_0while_lstm_cell_855_5132464_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:?????????d:?????????d:?????????d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_lstm_cell_855_layer_call_and_return_conditional_losses_5132422?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_855/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:???M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: ?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: ?
while/Identity_4Identity4while/lstm_cell_855/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_855/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_855/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_855_5132460while_lstm_cell_855_5132460_0"<
while_lstm_cell_855_5132462while_lstm_cell_855_5132462_0"<
while_lstm_cell_855_5132464while_lstm_cell_855_5132464_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_855/StatefulPartitionedCall+while/lstm_cell_855/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????d:-)
'
_output_shapes
:?????????d:

_output_shapes
: :

_output_shapes
: 
?J
?
E__inference_lstm_855_layer_call_and_return_conditional_losses_5133554

inputs?
,lstm_cell_855_matmul_readvariableop_resource:	?A
.lstm_cell_855_matmul_1_readvariableop_resource:	d?<
-lstm_cell_855_biasadd_readvariableop_resource:	?
identity??$lstm_cell_855/BiasAdd/ReadVariableOp?#lstm_cell_855/MatMul/ReadVariableOp?%lstm_cell_855/MatMul_1/ReadVariableOp?while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ds
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????dR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:?????????D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
#lstm_cell_855/MatMul/ReadVariableOpReadVariableOp,lstm_cell_855_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_855/MatMulMatMulstrided_slice_2:output:0+lstm_cell_855/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_855/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_855_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_855/MatMul_1MatMulzeros:output:0-lstm_cell_855/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_855/addAddV2lstm_cell_855/MatMul:product:0 lstm_cell_855/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_855/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_855_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_855/BiasAddBiasAddlstm_cell_855/add:z:0,lstm_cell_855/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_855/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_855/splitSplit&lstm_cell_855/split/split_dim:output:0lstm_cell_855/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_855/SigmoidSigmoidlstm_cell_855/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_855/Sigmoid_1Sigmoidlstm_cell_855/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_855/mulMullstm_cell_855/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_855/ReluRelulstm_cell_855/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_855/mul_1Mullstm_cell_855/Sigmoid:y:0 lstm_cell_855/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_855/add_1AddV2lstm_cell_855/mul:z:0lstm_cell_855/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_855/Sigmoid_2Sigmoidlstm_cell_855/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_855/Relu_1Relulstm_cell_855/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_855/mul_2Mullstm_cell_855/Sigmoid_2:y:0"lstm_cell_855/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_855_matmul_readvariableop_resource.lstm_cell_855_matmul_1_readvariableop_resource-lstm_cell_855_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????d:?????????d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_5133470*
condR
while_cond_5133469*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:?????????d?
NoOpNoOp%^lstm_cell_855/BiasAdd/ReadVariableOp$^lstm_cell_855/MatMul/ReadVariableOp&^lstm_cell_855/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_855/BiasAdd/ReadVariableOp$lstm_cell_855/BiasAdd/ReadVariableOp2J
#lstm_cell_855/MatMul/ReadVariableOp#lstm_cell_855/MatMul/ReadVariableOp2N
%lstm_cell_855/MatMul_1/ReadVariableOp%lstm_cell_855/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_5137000
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5137000___redundant_placeholder05
1while_while_cond_5137000___redundant_placeholder15
1while_while_cond_5137000___redundant_placeholder25
1while_while_cond_5137000___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????
:?????????
: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????
:-)
'
_output_shapes
:?????????
:

_output_shapes
: :

_output_shapes
:
?
?
J__inference_lstm_cell_856_layer_call_and_return_conditional_losses_5137554

inputs
states_0
states_11
matmul_readvariableop_resource:	d?3
 matmul_1_readvariableop_resource:	2?.
biasadd_readvariableop_resource:	?
identity

identity_1

identity_2??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????y
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:??????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:?????????2V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:?????????2U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:?????????2N
ReluRelusplit:output:2*
T0*'
_output_shapes
:?????????2_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:?????????2T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:?????????2V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:?????????2K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:?????????2c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:?????????2X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:?????????2Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:?????????2Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:?????????2?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????d:?????????2:?????????2: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs:QM
'
_output_shapes
:?????????2
"
_user_specified_name
states/0:QM
'
_output_shapes
:?????????2
"
_user_specified_name
states/1
?
?
while_cond_5133769
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5133769___redundant_placeholder05
1while_while_cond_5133769___redundant_placeholder15
1while_while_cond_5133769___redundant_placeholder25
1while_while_cond_5133769___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????
:?????????
: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????
:-)
'
_output_shapes
:?????????
:

_output_shapes
: :

_output_shapes
:
?J
?
E__inference_lstm_856_layer_call_and_return_conditional_losses_5136612

inputs?
,lstm_cell_856_matmul_readvariableop_resource:	d?A
.lstm_cell_856_matmul_1_readvariableop_resource:	2?<
-lstm_cell_856_biasadd_readvariableop_resource:	?
identity??$lstm_cell_856/BiasAdd/ReadVariableOp?#lstm_cell_856/MatMul/ReadVariableOp?%lstm_cell_856/MatMul_1/ReadVariableOp?while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????2R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:?????????dD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
#lstm_cell_856/MatMul/ReadVariableOpReadVariableOp,lstm_cell_856_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_856/MatMulMatMulstrided_slice_2:output:0+lstm_cell_856/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_856/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_856_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_856/MatMul_1MatMulzeros:output:0-lstm_cell_856/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_856/addAddV2lstm_cell_856/MatMul:product:0 lstm_cell_856/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_856/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_856_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_856/BiasAddBiasAddlstm_cell_856/add:z:0,lstm_cell_856/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_856/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_856/splitSplit&lstm_cell_856/split/split_dim:output:0lstm_cell_856/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_856/SigmoidSigmoidlstm_cell_856/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_856/Sigmoid_1Sigmoidlstm_cell_856/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_856/mulMullstm_cell_856/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_856/ReluRelulstm_cell_856/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_856/mul_1Mullstm_cell_856/Sigmoid:y:0 lstm_cell_856/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_856/add_1AddV2lstm_cell_856/mul:z:0lstm_cell_856/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_856/Sigmoid_2Sigmoidlstm_cell_856/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_856/Relu_1Relulstm_cell_856/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_856/mul_2Mullstm_cell_856/Sigmoid_2:y:0"lstm_cell_856/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_856_matmul_readvariableop_resource.lstm_cell_856_matmul_1_readvariableop_resource-lstm_cell_856_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????2:?????????2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_5136528*
condR
while_cond_5136527*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:?????????2?
NoOpNoOp%^lstm_cell_856/BiasAdd/ReadVariableOp$^lstm_cell_856/MatMul/ReadVariableOp&^lstm_cell_856/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_856/BiasAdd/ReadVariableOp$lstm_cell_856/BiasAdd/ReadVariableOp2J
#lstm_cell_856/MatMul/ReadVariableOp#lstm_cell_856/MatMul/ReadVariableOp2N
%lstm_cell_856/MatMul_1/ReadVariableOp%lstm_cell_856/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
*__inference_lstm_855_layer_call_fn_5135545
inputs_0
unknown:	?
	unknown_0:	d?
	unknown_1:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????????????d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_lstm_855_layer_call_and_return_conditional_losses_5132696|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :??????????????????d`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?8
?
while_body_5136858
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_857_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_857_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_857_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_857_matmul_readvariableop_resource:2(F
4while_lstm_cell_857_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_857_biasadd_readvariableop_resource:(??*while/lstm_cell_857/BiasAdd/ReadVariableOp?)while/lstm_cell_857/MatMul/ReadVariableOp?+while/lstm_cell_857/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_857/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_857_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_857/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_857/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_857/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_857_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_857/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_857/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_857/addAddV2$while/lstm_cell_857/MatMul:product:0&while/lstm_cell_857/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_857/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_857_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_857/BiasAddBiasAddwhile/lstm_cell_857/add:z:02while/lstm_cell_857/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_857/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_857/splitSplit,while/lstm_cell_857/split/split_dim:output:0$while/lstm_cell_857/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_857/SigmoidSigmoid"while/lstm_cell_857/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_857/Sigmoid_1Sigmoid"while/lstm_cell_857/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_857/mulMul!while/lstm_cell_857/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_857/ReluRelu"while/lstm_cell_857/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_857/mul_1Mulwhile/lstm_cell_857/Sigmoid:y:0&while/lstm_cell_857/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_857/add_1AddV2while/lstm_cell_857/mul:z:0while/lstm_cell_857/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_857/Sigmoid_2Sigmoid"while/lstm_cell_857/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_857/Relu_1Reluwhile/lstm_cell_857/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_857/mul_2Mul!while/lstm_cell_857/Sigmoid_2:y:0(while/lstm_cell_857/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_857/mul_2:z:0*
_output_shapes
: *
element_dtype0:???M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: ?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_857/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_857/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_857/BiasAdd/ReadVariableOp*^while/lstm_cell_857/MatMul/ReadVariableOp,^while/lstm_cell_857/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_857_biasadd_readvariableop_resource5while_lstm_cell_857_biasadd_readvariableop_resource_0"n
4while_lstm_cell_857_matmul_1_readvariableop_resource6while_lstm_cell_857_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_857_matmul_readvariableop_resource4while_lstm_cell_857_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_857/BiasAdd/ReadVariableOp*while/lstm_cell_857/BiasAdd/ReadVariableOp2V
)while/lstm_cell_857/MatMul/ReadVariableOp)while/lstm_cell_857/MatMul/ReadVariableOp2Z
+while/lstm_cell_857/MatMul_1/ReadVariableOp+while/lstm_cell_857/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????
:-)
'
_output_shapes
:?????????
:

_output_shapes
: :

_output_shapes
: 
?8
?
while_body_5137287
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_857_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_857_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_857_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_857_matmul_readvariableop_resource:2(F
4while_lstm_cell_857_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_857_biasadd_readvariableop_resource:(??*while/lstm_cell_857/BiasAdd/ReadVariableOp?)while/lstm_cell_857/MatMul/ReadVariableOp?+while/lstm_cell_857/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_857/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_857_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_857/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_857/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_857/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_857_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_857/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_857/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_857/addAddV2$while/lstm_cell_857/MatMul:product:0&while/lstm_cell_857/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_857/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_857_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_857/BiasAddBiasAddwhile/lstm_cell_857/add:z:02while/lstm_cell_857/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_857/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_857/splitSplit,while/lstm_cell_857/split/split_dim:output:0$while/lstm_cell_857/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_857/SigmoidSigmoid"while/lstm_cell_857/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_857/Sigmoid_1Sigmoid"while/lstm_cell_857/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_857/mulMul!while/lstm_cell_857/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_857/ReluRelu"while/lstm_cell_857/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_857/mul_1Mulwhile/lstm_cell_857/Sigmoid:y:0&while/lstm_cell_857/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_857/add_1AddV2while/lstm_cell_857/mul:z:0while/lstm_cell_857/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_857/Sigmoid_2Sigmoid"while/lstm_cell_857/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_857/Relu_1Reluwhile/lstm_cell_857/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_857/mul_2Mul!while/lstm_cell_857/Sigmoid_2:y:0(while/lstm_cell_857/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_857/mul_2:z:0*
_output_shapes
: *
element_dtype0:???M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: ?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_857/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_857/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_857/BiasAdd/ReadVariableOp*^while/lstm_cell_857/MatMul/ReadVariableOp,^while/lstm_cell_857/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_857_biasadd_readvariableop_resource5while_lstm_cell_857_biasadd_readvariableop_resource_0"n
4while_lstm_cell_857_matmul_1_readvariableop_resource6while_lstm_cell_857_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_857_matmul_readvariableop_resource4while_lstm_cell_857_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_857/BiasAdd/ReadVariableOp*while/lstm_cell_857/BiasAdd/ReadVariableOp2V
)while/lstm_cell_857/MatMul/ReadVariableOp)while/lstm_cell_857/MatMul/ReadVariableOp2Z
+while/lstm_cell_857/MatMul_1/ReadVariableOp+while/lstm_cell_857/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????
:-)
'
_output_shapes
:?????????
:

_output_shapes
: :

_output_shapes
: 
?

?
lstm_855_while_cond_5134727.
*lstm_855_while_lstm_855_while_loop_counter4
0lstm_855_while_lstm_855_while_maximum_iterations
lstm_855_while_placeholder 
lstm_855_while_placeholder_1 
lstm_855_while_placeholder_2 
lstm_855_while_placeholder_30
,lstm_855_while_less_lstm_855_strided_slice_1G
Clstm_855_while_lstm_855_while_cond_5134727___redundant_placeholder0G
Clstm_855_while_lstm_855_while_cond_5134727___redundant_placeholder1G
Clstm_855_while_lstm_855_while_cond_5134727___redundant_placeholder2G
Clstm_855_while_lstm_855_while_cond_5134727___redundant_placeholder3
lstm_855_while_identity
?
lstm_855/while/LessLesslstm_855_while_placeholder,lstm_855_while_less_lstm_855_strided_slice_1*
T0*
_output_shapes
: ]
lstm_855/while/IdentityIdentitylstm_855/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_855_while_identity lstm_855/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????d:?????????d: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????d:-)
'
_output_shapes
:?????????d:

_output_shapes
: :

_output_shapes
:
?
?
while_cond_5136241
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5136241___redundant_placeholder05
1while_while_cond_5136241___redundant_placeholder15
1while_while_cond_5136241___redundant_placeholder25
1while_while_cond_5136241___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????2:?????????2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????2:-)
'
_output_shapes
:?????????2:

_output_shapes
: :

_output_shapes
:
??
?
K__inference_sequential_285_layer_call_and_return_conditional_losses_5135523

inputsH
5lstm_855_lstm_cell_855_matmul_readvariableop_resource:	?J
7lstm_855_lstm_cell_855_matmul_1_readvariableop_resource:	d?E
6lstm_855_lstm_cell_855_biasadd_readvariableop_resource:	?H
5lstm_856_lstm_cell_856_matmul_readvariableop_resource:	d?J
7lstm_856_lstm_cell_856_matmul_1_readvariableop_resource:	2?E
6lstm_856_lstm_cell_856_biasadd_readvariableop_resource:	?G
5lstm_857_lstm_cell_857_matmul_readvariableop_resource:2(I
7lstm_857_lstm_cell_857_matmul_1_readvariableop_resource:
(D
6lstm_857_lstm_cell_857_biasadd_readvariableop_resource:(:
(dense_285_matmul_readvariableop_resource:
7
)dense_285_biasadd_readvariableop_resource:
identity?? dense_285/BiasAdd/ReadVariableOp?dense_285/MatMul/ReadVariableOp?-lstm_855/lstm_cell_855/BiasAdd/ReadVariableOp?,lstm_855/lstm_cell_855/MatMul/ReadVariableOp?.lstm_855/lstm_cell_855/MatMul_1/ReadVariableOp?lstm_855/while?-lstm_856/lstm_cell_856/BiasAdd/ReadVariableOp?,lstm_856/lstm_cell_856/MatMul/ReadVariableOp?.lstm_856/lstm_cell_856/MatMul_1/ReadVariableOp?lstm_856/while?-lstm_857/lstm_cell_857/BiasAdd/ReadVariableOp?,lstm_857/lstm_cell_857/MatMul/ReadVariableOp?.lstm_857/lstm_cell_857/MatMul_1/ReadVariableOp?lstm_857/whileD
lstm_855/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_855/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_855/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_855/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_855/strided_sliceStridedSlicelstm_855/Shape:output:0%lstm_855/strided_slice/stack:output:0'lstm_855/strided_slice/stack_1:output:0'lstm_855/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_855/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_855/zeros/packedPacklstm_855/strided_slice:output:0 lstm_855/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_855/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_855/zerosFilllstm_855/zeros/packed:output:0lstm_855/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_855/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_855/zeros_1/packedPacklstm_855/strided_slice:output:0"lstm_855/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_855/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_855/zeros_1Fill lstm_855/zeros_1/packed:output:0lstm_855/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_855/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_855/transpose	Transposeinputs lstm_855/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_855/Shape_1Shapelstm_855/transpose:y:0*
T0*
_output_shapes
:h
lstm_855/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_855/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_855/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_855/strided_slice_1StridedSlicelstm_855/Shape_1:output:0'lstm_855/strided_slice_1/stack:output:0)lstm_855/strided_slice_1/stack_1:output:0)lstm_855/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_855/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_855/TensorArrayV2TensorListReserve-lstm_855/TensorArrayV2/element_shape:output:0!lstm_855/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_855/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_855/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_855/transpose:y:0Glstm_855/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_855/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_855/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_855/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_855/strided_slice_2StridedSlicelstm_855/transpose:y:0'lstm_855/strided_slice_2/stack:output:0)lstm_855/strided_slice_2/stack_1:output:0)lstm_855/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_855/lstm_cell_855/MatMul/ReadVariableOpReadVariableOp5lstm_855_lstm_cell_855_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_855/lstm_cell_855/MatMulMatMul!lstm_855/strided_slice_2:output:04lstm_855/lstm_cell_855/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_855/lstm_cell_855/MatMul_1/ReadVariableOpReadVariableOp7lstm_855_lstm_cell_855_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_855/lstm_cell_855/MatMul_1MatMullstm_855/zeros:output:06lstm_855/lstm_cell_855/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_855/lstm_cell_855/addAddV2'lstm_855/lstm_cell_855/MatMul:product:0)lstm_855/lstm_cell_855/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_855/lstm_cell_855/BiasAdd/ReadVariableOpReadVariableOp6lstm_855_lstm_cell_855_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_855/lstm_cell_855/BiasAddBiasAddlstm_855/lstm_cell_855/add:z:05lstm_855/lstm_cell_855/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_855/lstm_cell_855/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_855/lstm_cell_855/splitSplit/lstm_855/lstm_cell_855/split/split_dim:output:0'lstm_855/lstm_cell_855/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_855/lstm_cell_855/SigmoidSigmoid%lstm_855/lstm_cell_855/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_855/lstm_cell_855/Sigmoid_1Sigmoid%lstm_855/lstm_cell_855/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_855/lstm_cell_855/mulMul$lstm_855/lstm_cell_855/Sigmoid_1:y:0lstm_855/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_855/lstm_cell_855/ReluRelu%lstm_855/lstm_cell_855/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_855/lstm_cell_855/mul_1Mul"lstm_855/lstm_cell_855/Sigmoid:y:0)lstm_855/lstm_cell_855/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_855/lstm_cell_855/add_1AddV2lstm_855/lstm_cell_855/mul:z:0 lstm_855/lstm_cell_855/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_855/lstm_cell_855/Sigmoid_2Sigmoid%lstm_855/lstm_cell_855/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_855/lstm_cell_855/Relu_1Relu lstm_855/lstm_cell_855/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_855/lstm_cell_855/mul_2Mul$lstm_855/lstm_cell_855/Sigmoid_2:y:0+lstm_855/lstm_cell_855/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_855/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_855/TensorArrayV2_1TensorListReserve/lstm_855/TensorArrayV2_1/element_shape:output:0!lstm_855/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_855/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_855/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_855/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_855/whileWhile$lstm_855/while/loop_counter:output:0*lstm_855/while/maximum_iterations:output:0lstm_855/time:output:0!lstm_855/TensorArrayV2_1:handle:0lstm_855/zeros:output:0lstm_855/zeros_1:output:0!lstm_855/strided_slice_1:output:0@lstm_855/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_855_lstm_cell_855_matmul_readvariableop_resource7lstm_855_lstm_cell_855_matmul_1_readvariableop_resource6lstm_855_lstm_cell_855_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????d:?????????d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *'
bodyR
lstm_855_while_body_5135155*'
condR
lstm_855_while_cond_5135154*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_855/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_855/TensorArrayV2Stack/TensorListStackTensorListStacklstm_855/while:output:3Blstm_855/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_855/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_855/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_855/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_855/strided_slice_3StridedSlice4lstm_855/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_855/strided_slice_3/stack:output:0)lstm_855/strided_slice_3/stack_1:output:0)lstm_855/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_855/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_855/transpose_1	Transpose4lstm_855/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_855/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_855/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_856/ShapeShapelstm_855/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_856/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_856/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_856/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_856/strided_sliceStridedSlicelstm_856/Shape:output:0%lstm_856/strided_slice/stack:output:0'lstm_856/strided_slice/stack_1:output:0'lstm_856/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_856/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_856/zeros/packedPacklstm_856/strided_slice:output:0 lstm_856/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_856/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_856/zerosFilllstm_856/zeros/packed:output:0lstm_856/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_856/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_856/zeros_1/packedPacklstm_856/strided_slice:output:0"lstm_856/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_856/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_856/zeros_1Fill lstm_856/zeros_1/packed:output:0lstm_856/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_856/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_856/transpose	Transposelstm_855/transpose_1:y:0 lstm_856/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_856/Shape_1Shapelstm_856/transpose:y:0*
T0*
_output_shapes
:h
lstm_856/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_856/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_856/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_856/strided_slice_1StridedSlicelstm_856/Shape_1:output:0'lstm_856/strided_slice_1/stack:output:0)lstm_856/strided_slice_1/stack_1:output:0)lstm_856/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_856/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_856/TensorArrayV2TensorListReserve-lstm_856/TensorArrayV2/element_shape:output:0!lstm_856/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_856/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_856/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_856/transpose:y:0Glstm_856/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_856/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_856/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_856/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_856/strided_slice_2StridedSlicelstm_856/transpose:y:0'lstm_856/strided_slice_2/stack:output:0)lstm_856/strided_slice_2/stack_1:output:0)lstm_856/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_856/lstm_cell_856/MatMul/ReadVariableOpReadVariableOp5lstm_856_lstm_cell_856_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_856/lstm_cell_856/MatMulMatMul!lstm_856/strided_slice_2:output:04lstm_856/lstm_cell_856/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_856/lstm_cell_856/MatMul_1/ReadVariableOpReadVariableOp7lstm_856_lstm_cell_856_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_856/lstm_cell_856/MatMul_1MatMullstm_856/zeros:output:06lstm_856/lstm_cell_856/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_856/lstm_cell_856/addAddV2'lstm_856/lstm_cell_856/MatMul:product:0)lstm_856/lstm_cell_856/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_856/lstm_cell_856/BiasAdd/ReadVariableOpReadVariableOp6lstm_856_lstm_cell_856_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_856/lstm_cell_856/BiasAddBiasAddlstm_856/lstm_cell_856/add:z:05lstm_856/lstm_cell_856/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_856/lstm_cell_856/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_856/lstm_cell_856/splitSplit/lstm_856/lstm_cell_856/split/split_dim:output:0'lstm_856/lstm_cell_856/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_856/lstm_cell_856/SigmoidSigmoid%lstm_856/lstm_cell_856/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_856/lstm_cell_856/Sigmoid_1Sigmoid%lstm_856/lstm_cell_856/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_856/lstm_cell_856/mulMul$lstm_856/lstm_cell_856/Sigmoid_1:y:0lstm_856/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_856/lstm_cell_856/ReluRelu%lstm_856/lstm_cell_856/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_856/lstm_cell_856/mul_1Mul"lstm_856/lstm_cell_856/Sigmoid:y:0)lstm_856/lstm_cell_856/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_856/lstm_cell_856/add_1AddV2lstm_856/lstm_cell_856/mul:z:0 lstm_856/lstm_cell_856/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_856/lstm_cell_856/Sigmoid_2Sigmoid%lstm_856/lstm_cell_856/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_856/lstm_cell_856/Relu_1Relu lstm_856/lstm_cell_856/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_856/lstm_cell_856/mul_2Mul$lstm_856/lstm_cell_856/Sigmoid_2:y:0+lstm_856/lstm_cell_856/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_856/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_856/TensorArrayV2_1TensorListReserve/lstm_856/TensorArrayV2_1/element_shape:output:0!lstm_856/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_856/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_856/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_856/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_856/whileWhile$lstm_856/while/loop_counter:output:0*lstm_856/while/maximum_iterations:output:0lstm_856/time:output:0!lstm_856/TensorArrayV2_1:handle:0lstm_856/zeros:output:0lstm_856/zeros_1:output:0!lstm_856/strided_slice_1:output:0@lstm_856/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_856_lstm_cell_856_matmul_readvariableop_resource7lstm_856_lstm_cell_856_matmul_1_readvariableop_resource6lstm_856_lstm_cell_856_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????2:?????????2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *'
bodyR
lstm_856_while_body_5135294*'
condR
lstm_856_while_cond_5135293*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_856/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_856/TensorArrayV2Stack/TensorListStackTensorListStacklstm_856/while:output:3Blstm_856/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_856/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_856/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_856/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_856/strided_slice_3StridedSlice4lstm_856/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_856/strided_slice_3/stack:output:0)lstm_856/strided_slice_3/stack_1:output:0)lstm_856/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_856/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_856/transpose_1	Transpose4lstm_856/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_856/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_856/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_857/ShapeShapelstm_856/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_857/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_857/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_857/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_857/strided_sliceStridedSlicelstm_857/Shape:output:0%lstm_857/strided_slice/stack:output:0'lstm_857/strided_slice/stack_1:output:0'lstm_857/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_857/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_857/zeros/packedPacklstm_857/strided_slice:output:0 lstm_857/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_857/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_857/zerosFilllstm_857/zeros/packed:output:0lstm_857/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_857/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_857/zeros_1/packedPacklstm_857/strided_slice:output:0"lstm_857/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_857/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_857/zeros_1Fill lstm_857/zeros_1/packed:output:0lstm_857/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_857/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_857/transpose	Transposelstm_856/transpose_1:y:0 lstm_857/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_857/Shape_1Shapelstm_857/transpose:y:0*
T0*
_output_shapes
:h
lstm_857/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_857/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_857/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_857/strided_slice_1StridedSlicelstm_857/Shape_1:output:0'lstm_857/strided_slice_1/stack:output:0)lstm_857/strided_slice_1/stack_1:output:0)lstm_857/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_857/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_857/TensorArrayV2TensorListReserve-lstm_857/TensorArrayV2/element_shape:output:0!lstm_857/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_857/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_857/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_857/transpose:y:0Glstm_857/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_857/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_857/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_857/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_857/strided_slice_2StridedSlicelstm_857/transpose:y:0'lstm_857/strided_slice_2/stack:output:0)lstm_857/strided_slice_2/stack_1:output:0)lstm_857/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_857/lstm_cell_857/MatMul/ReadVariableOpReadVariableOp5lstm_857_lstm_cell_857_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_857/lstm_cell_857/MatMulMatMul!lstm_857/strided_slice_2:output:04lstm_857/lstm_cell_857/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_857/lstm_cell_857/MatMul_1/ReadVariableOpReadVariableOp7lstm_857_lstm_cell_857_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_857/lstm_cell_857/MatMul_1MatMullstm_857/zeros:output:06lstm_857/lstm_cell_857/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_857/lstm_cell_857/addAddV2'lstm_857/lstm_cell_857/MatMul:product:0)lstm_857/lstm_cell_857/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_857/lstm_cell_857/BiasAdd/ReadVariableOpReadVariableOp6lstm_857_lstm_cell_857_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_857/lstm_cell_857/BiasAddBiasAddlstm_857/lstm_cell_857/add:z:05lstm_857/lstm_cell_857/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_857/lstm_cell_857/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_857/lstm_cell_857/splitSplit/lstm_857/lstm_cell_857/split/split_dim:output:0'lstm_857/lstm_cell_857/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_857/lstm_cell_857/SigmoidSigmoid%lstm_857/lstm_cell_857/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_857/lstm_cell_857/Sigmoid_1Sigmoid%lstm_857/lstm_cell_857/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_857/lstm_cell_857/mulMul$lstm_857/lstm_cell_857/Sigmoid_1:y:0lstm_857/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_857/lstm_cell_857/ReluRelu%lstm_857/lstm_cell_857/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_857/lstm_cell_857/mul_1Mul"lstm_857/lstm_cell_857/Sigmoid:y:0)lstm_857/lstm_cell_857/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_857/lstm_cell_857/add_1AddV2lstm_857/lstm_cell_857/mul:z:0 lstm_857/lstm_cell_857/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_857/lstm_cell_857/Sigmoid_2Sigmoid%lstm_857/lstm_cell_857/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_857/lstm_cell_857/Relu_1Relu lstm_857/lstm_cell_857/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_857/lstm_cell_857/mul_2Mul$lstm_857/lstm_cell_857/Sigmoid_2:y:0+lstm_857/lstm_cell_857/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_857/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_857/TensorArrayV2_1TensorListReserve/lstm_857/TensorArrayV2_1/element_shape:output:0!lstm_857/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_857/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_857/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_857/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_857/whileWhile$lstm_857/while/loop_counter:output:0*lstm_857/while/maximum_iterations:output:0lstm_857/time:output:0!lstm_857/TensorArrayV2_1:handle:0lstm_857/zeros:output:0lstm_857/zeros_1:output:0!lstm_857/strided_slice_1:output:0@lstm_857/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_857_lstm_cell_857_matmul_readvariableop_resource7lstm_857_lstm_cell_857_matmul_1_readvariableop_resource6lstm_857_lstm_cell_857_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????
:?????????
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *'
bodyR
lstm_857_while_body_5135433*'
condR
lstm_857_while_cond_5135432*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_857/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_857/TensorArrayV2Stack/TensorListStackTensorListStacklstm_857/while:output:3Blstm_857/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_857/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_857/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_857/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_857/strided_slice_3StridedSlice4lstm_857/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_857/strided_slice_3/stack:output:0)lstm_857/strided_slice_3/stack_1:output:0)lstm_857/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_857/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_857/transpose_1	Transpose4lstm_857/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_857/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_857/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_285/MatMul/ReadVariableOpReadVariableOp(dense_285_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_285/MatMulMatMul!lstm_857/strided_slice_3:output:0'dense_285/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_285/BiasAdd/ReadVariableOpReadVariableOp)dense_285_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_285/BiasAddBiasAdddense_285/MatMul:product:0(dense_285/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_285/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_285/BiasAdd/ReadVariableOp ^dense_285/MatMul/ReadVariableOp.^lstm_855/lstm_cell_855/BiasAdd/ReadVariableOp-^lstm_855/lstm_cell_855/MatMul/ReadVariableOp/^lstm_855/lstm_cell_855/MatMul_1/ReadVariableOp^lstm_855/while.^lstm_856/lstm_cell_856/BiasAdd/ReadVariableOp-^lstm_856/lstm_cell_856/MatMul/ReadVariableOp/^lstm_856/lstm_cell_856/MatMul_1/ReadVariableOp^lstm_856/while.^lstm_857/lstm_cell_857/BiasAdd/ReadVariableOp-^lstm_857/lstm_cell_857/MatMul/ReadVariableOp/^lstm_857/lstm_cell_857/MatMul_1/ReadVariableOp^lstm_857/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_285/BiasAdd/ReadVariableOp dense_285/BiasAdd/ReadVariableOp2B
dense_285/MatMul/ReadVariableOpdense_285/MatMul/ReadVariableOp2^
-lstm_855/lstm_cell_855/BiasAdd/ReadVariableOp-lstm_855/lstm_cell_855/BiasAdd/ReadVariableOp2\
,lstm_855/lstm_cell_855/MatMul/ReadVariableOp,lstm_855/lstm_cell_855/MatMul/ReadVariableOp2`
.lstm_855/lstm_cell_855/MatMul_1/ReadVariableOp.lstm_855/lstm_cell_855/MatMul_1/ReadVariableOp2 
lstm_855/whilelstm_855/while2^
-lstm_856/lstm_cell_856/BiasAdd/ReadVariableOp-lstm_856/lstm_cell_856/BiasAdd/ReadVariableOp2\
,lstm_856/lstm_cell_856/MatMul/ReadVariableOp,lstm_856/lstm_cell_856/MatMul/ReadVariableOp2`
.lstm_856/lstm_cell_856/MatMul_1/ReadVariableOp.lstm_856/lstm_cell_856/MatMul_1/ReadVariableOp2 
lstm_856/whilelstm_856/while2^
-lstm_857/lstm_cell_857/BiasAdd/ReadVariableOp-lstm_857/lstm_cell_857/BiasAdd/ReadVariableOp2\
,lstm_857/lstm_cell_857/MatMul/ReadVariableOp,lstm_857/lstm_cell_857/MatMul/ReadVariableOp2`
.lstm_857/lstm_cell_857/MatMul_1/ReadVariableOp.lstm_857/lstm_cell_857/MatMul_1/ReadVariableOp2 
lstm_857/whilelstm_857/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?W
?
 __inference__traced_save_5137827
file_prefix/
+savev2_dense_285_kernel_read_readvariableop-
)savev2_dense_285_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_855_lstm_cell_855_kernel_read_readvariableopF
Bsavev2_lstm_855_lstm_cell_855_recurrent_kernel_read_readvariableop:
6savev2_lstm_855_lstm_cell_855_bias_read_readvariableop<
8savev2_lstm_856_lstm_cell_856_kernel_read_readvariableopF
Bsavev2_lstm_856_lstm_cell_856_recurrent_kernel_read_readvariableop:
6savev2_lstm_856_lstm_cell_856_bias_read_readvariableop<
8savev2_lstm_857_lstm_cell_857_kernel_read_readvariableopF
Bsavev2_lstm_857_lstm_cell_857_recurrent_kernel_read_readvariableop:
6savev2_lstm_857_lstm_cell_857_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop6
2savev2_adam_dense_285_kernel_m_read_readvariableop4
0savev2_adam_dense_285_bias_m_read_readvariableopC
?savev2_adam_lstm_855_lstm_cell_855_kernel_m_read_readvariableopM
Isavev2_adam_lstm_855_lstm_cell_855_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_855_lstm_cell_855_bias_m_read_readvariableopC
?savev2_adam_lstm_856_lstm_cell_856_kernel_m_read_readvariableopM
Isavev2_adam_lstm_856_lstm_cell_856_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_856_lstm_cell_856_bias_m_read_readvariableopC
?savev2_adam_lstm_857_lstm_cell_857_kernel_m_read_readvariableopM
Isavev2_adam_lstm_857_lstm_cell_857_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_857_lstm_cell_857_bias_m_read_readvariableop6
2savev2_adam_dense_285_kernel_v_read_readvariableop4
0savev2_adam_dense_285_bias_v_read_readvariableopC
?savev2_adam_lstm_855_lstm_cell_855_kernel_v_read_readvariableopM
Isavev2_adam_lstm_855_lstm_cell_855_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_855_lstm_cell_855_bias_v_read_readvariableopC
?savev2_adam_lstm_856_lstm_cell_856_kernel_v_read_readvariableopM
Isavev2_adam_lstm_856_lstm_cell_856_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_856_lstm_cell_856_bias_v_read_readvariableopC
?savev2_adam_lstm_857_lstm_cell_857_kernel_v_read_readvariableopM
Isavev2_adam_lstm_857_lstm_cell_857_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_857_lstm_cell_857_bias_v_read_readvariableop
savev2_const

identity_1??MergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part?
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : ?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: ?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:)*
dtype0*?
value?B?)B6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:)*
dtype0*e
value\BZ)B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_dense_285_kernel_read_readvariableop)savev2_dense_285_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_855_lstm_cell_855_kernel_read_readvariableopBsavev2_lstm_855_lstm_cell_855_recurrent_kernel_read_readvariableop6savev2_lstm_855_lstm_cell_855_bias_read_readvariableop8savev2_lstm_856_lstm_cell_856_kernel_read_readvariableopBsavev2_lstm_856_lstm_cell_856_recurrent_kernel_read_readvariableop6savev2_lstm_856_lstm_cell_856_bias_read_readvariableop8savev2_lstm_857_lstm_cell_857_kernel_read_readvariableopBsavev2_lstm_857_lstm_cell_857_recurrent_kernel_read_readvariableop6savev2_lstm_857_lstm_cell_857_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop2savev2_adam_dense_285_kernel_m_read_readvariableop0savev2_adam_dense_285_bias_m_read_readvariableop?savev2_adam_lstm_855_lstm_cell_855_kernel_m_read_readvariableopIsavev2_adam_lstm_855_lstm_cell_855_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_855_lstm_cell_855_bias_m_read_readvariableop?savev2_adam_lstm_856_lstm_cell_856_kernel_m_read_readvariableopIsavev2_adam_lstm_856_lstm_cell_856_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_856_lstm_cell_856_bias_m_read_readvariableop?savev2_adam_lstm_857_lstm_cell_857_kernel_m_read_readvariableopIsavev2_adam_lstm_857_lstm_cell_857_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_857_lstm_cell_857_bias_m_read_readvariableop2savev2_adam_dense_285_kernel_v_read_readvariableop0savev2_adam_dense_285_bias_v_read_readvariableop?savev2_adam_lstm_855_lstm_cell_855_kernel_v_read_readvariableopIsavev2_adam_lstm_855_lstm_cell_855_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_855_lstm_cell_855_bias_v_read_readvariableop?savev2_adam_lstm_856_lstm_cell_856_kernel_v_read_readvariableopIsavev2_adam_lstm_856_lstm_cell_856_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_856_lstm_cell_856_bias_v_read_readvariableop?savev2_adam_lstm_857_lstm_cell_857_kernel_v_read_readvariableopIsavev2_adam_lstm_857_lstm_cell_857_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_857_lstm_cell_857_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *7
dtypes-
+2)	?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*?
_input_shapes?
?: :
:: : : : : :	?:	d?:?:	d?:	2?:?:2(:
(:(: : :
::	?:	d?:?:	d?:	2?:?:2(:
(:(:
::	?:	d?:?:	d?:	2?:?:2(:
(:(: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

:
: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	?:%	!

_output_shapes
:	d?:!


_output_shapes	
:?:%!

_output_shapes
:	d?:%!

_output_shapes
:	2?:!

_output_shapes	
:?:$ 

_output_shapes

:2(:$ 

_output_shapes

:
(: 

_output_shapes
:(:

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

:
: 

_output_shapes
::%!

_output_shapes
:	?:%!

_output_shapes
:	d?:!

_output_shapes	
:?:%!

_output_shapes
:	d?:%!

_output_shapes
:	2?:!

_output_shapes	
:?:$ 

_output_shapes

:2(:$ 

_output_shapes

:
(: 

_output_shapes
:(:$ 

_output_shapes

:
: 

_output_shapes
::% !

_output_shapes
:	?:%!!

_output_shapes
:	d?:!"

_output_shapes	
:?:%#!

_output_shapes
:	d?:%$!

_output_shapes
:	2?:!%

_output_shapes	
:?:$& 

_output_shapes

:2(:$' 

_output_shapes

:
(: (

_output_shapes
:(:)

_output_shapes
: 
?
?
J__inference_lstm_cell_857_layer_call_and_return_conditional_losses_5133122

inputs

states
states_10
matmul_readvariableop_resource:2(2
 matmul_1_readvariableop_resource:
(-
biasadd_readvariableop_resource:(
identity

identity_1

identity_2??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2(*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0m
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(d
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:?????????(r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:(*
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:?????????
V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:?????????
U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:?????????
N
ReluRelusplit:output:2*
T0*'
_output_shapes
:?????????
_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:?????????
T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:?????????
V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:?????????
K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:?????????
c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:?????????
X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:?????????
Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:?????????
Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:?????????
?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????2:?????????
:?????????
: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:?????????2
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????

 
_user_specified_namestates:OK
'
_output_shapes
:?????????

 
_user_specified_namestates
?
?
J__inference_lstm_cell_855_layer_call_and_return_conditional_losses_5132568

inputs

states
states_11
matmul_readvariableop_resource:	?3
 matmul_1_readvariableop_resource:	d?.
biasadd_readvariableop_resource:	?
identity

identity_1

identity_2??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????y
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:??????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:?????????dV
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:?????????dU
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:?????????dN
ReluRelusplit:output:2*
T0*'
_output_shapes
:?????????d_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:?????????dT
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:?????????dV
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:?????????dK
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:?????????dc
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:?????????dX
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:?????????dZ

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:?????????dZ

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:?????????d?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????:?????????d:?????????d: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????d
 
_user_specified_namestates:OK
'
_output_shapes
:?????????d
 
_user_specified_namestates
?#
?
while_body_5132977
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_856_5133001_0:	d?0
while_lstm_cell_856_5133003_0:	2?,
while_lstm_cell_856_5133005_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_856_5133001:	d?.
while_lstm_cell_856_5133003:	2?*
while_lstm_cell_856_5133005:	???+while/lstm_cell_856/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_856/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_856_5133001_0while_lstm_cell_856_5133003_0while_lstm_cell_856_5133005_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:?????????2:?????????2:?????????2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_lstm_cell_856_layer_call_and_return_conditional_losses_5132918?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_856/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:???M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: ?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: ?
while/Identity_4Identity4while/lstm_cell_856/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_856/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_856/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_856_5133001while_lstm_cell_856_5133001_0"<
while_lstm_cell_856_5133003while_lstm_cell_856_5133003_0"<
while_lstm_cell_856_5133005while_lstm_cell_856_5133005_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_856/StatefulPartitionedCall+while/lstm_cell_856/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????2:-)
'
_output_shapes
:?????????2:

_output_shapes
: :

_output_shapes
: 
?J
?
E__inference_lstm_855_layer_call_and_return_conditional_losses_5134400

inputs?
,lstm_cell_855_matmul_readvariableop_resource:	?A
.lstm_cell_855_matmul_1_readvariableop_resource:	d?<
-lstm_cell_855_biasadd_readvariableop_resource:	?
identity??$lstm_cell_855/BiasAdd/ReadVariableOp?#lstm_cell_855/MatMul/ReadVariableOp?%lstm_cell_855/MatMul_1/ReadVariableOp?while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ds
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????dR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:?????????D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
#lstm_cell_855/MatMul/ReadVariableOpReadVariableOp,lstm_cell_855_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_855/MatMulMatMulstrided_slice_2:output:0+lstm_cell_855/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_855/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_855_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_855/MatMul_1MatMulzeros:output:0-lstm_cell_855/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_855/addAddV2lstm_cell_855/MatMul:product:0 lstm_cell_855/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_855/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_855_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_855/BiasAddBiasAddlstm_cell_855/add:z:0,lstm_cell_855/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_855/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_855/splitSplit&lstm_cell_855/split/split_dim:output:0lstm_cell_855/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_855/SigmoidSigmoidlstm_cell_855/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_855/Sigmoid_1Sigmoidlstm_cell_855/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_855/mulMullstm_cell_855/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_855/ReluRelulstm_cell_855/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_855/mul_1Mullstm_cell_855/Sigmoid:y:0 lstm_cell_855/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_855/add_1AddV2lstm_cell_855/mul:z:0lstm_cell_855/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_855/Sigmoid_2Sigmoidlstm_cell_855/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_855/Relu_1Relulstm_cell_855/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_855/mul_2Mullstm_cell_855/Sigmoid_2:y:0"lstm_cell_855/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_855_matmul_readvariableop_resource.lstm_cell_855_matmul_1_readvariableop_resource-lstm_cell_855_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????d:?????????d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_5134316*
condR
while_cond_5134315*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:?????????d?
NoOpNoOp%^lstm_cell_855/BiasAdd/ReadVariableOp$^lstm_cell_855/MatMul/ReadVariableOp&^lstm_cell_855/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_855/BiasAdd/ReadVariableOp$lstm_cell_855/BiasAdd/ReadVariableOp2J
#lstm_cell_855/MatMul/ReadVariableOp#lstm_cell_855/MatMul/ReadVariableOp2N
%lstm_cell_855/MatMul_1/ReadVariableOp%lstm_cell_855/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?J
?
E__inference_lstm_857_layer_call_and_return_conditional_losses_5133854

inputs>
,lstm_cell_857_matmul_readvariableop_resource:2(@
.lstm_cell_857_matmul_1_readvariableop_resource:
(;
-lstm_cell_857_biasadd_readvariableop_resource:(
identity??$lstm_cell_857/BiasAdd/ReadVariableOp?#lstm_cell_857/MatMul/ReadVariableOp?%lstm_cell_857/MatMul_1/ReadVariableOp?while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????
R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:?????????2D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
#lstm_cell_857/MatMul/ReadVariableOpReadVariableOp,lstm_cell_857_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_857/MatMulMatMulstrided_slice_2:output:0+lstm_cell_857/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_857/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_857_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_857/MatMul_1MatMulzeros:output:0-lstm_cell_857/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_857/addAddV2lstm_cell_857/MatMul:product:0 lstm_cell_857/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_857/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_857_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_857/BiasAddBiasAddlstm_cell_857/add:z:0,lstm_cell_857/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_857/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_857/splitSplit&lstm_cell_857/split/split_dim:output:0lstm_cell_857/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_857/SigmoidSigmoidlstm_cell_857/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_857/Sigmoid_1Sigmoidlstm_cell_857/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_857/mulMullstm_cell_857/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_857/ReluRelulstm_cell_857/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_857/mul_1Mullstm_cell_857/Sigmoid:y:0 lstm_cell_857/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_857/add_1AddV2lstm_cell_857/mul:z:0lstm_cell_857/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_857/Sigmoid_2Sigmoidlstm_cell_857/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_857/Relu_1Relulstm_cell_857/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_857/mul_2Mullstm_cell_857/Sigmoid_2:y:0"lstm_cell_857/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_857_matmul_readvariableop_resource.lstm_cell_857_matmul_1_readvariableop_resource-lstm_cell_857_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????
:?????????
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_5133770*
condR
while_cond_5133769*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:?????????
?
NoOpNoOp%^lstm_cell_857/BiasAdd/ReadVariableOp$^lstm_cell_857/MatMul/ReadVariableOp&^lstm_cell_857/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_857/BiasAdd/ReadVariableOp$lstm_cell_857/BiasAdd/ReadVariableOp2J
#lstm_cell_857/MatMul/ReadVariableOp#lstm_cell_857/MatMul/ReadVariableOp2N
%lstm_cell_857/MatMul_1/ReadVariableOp%lstm_cell_857/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
*__inference_lstm_855_layer_call_fn_5135567

inputs
unknown:	?
	unknown_0:	d?
	unknown_1:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_lstm_855_layer_call_and_return_conditional_losses_5134400s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????d`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
while_body_5133986
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_857_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_857_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_857_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_857_matmul_readvariableop_resource:2(F
4while_lstm_cell_857_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_857_biasadd_readvariableop_resource:(??*while/lstm_cell_857/BiasAdd/ReadVariableOp?)while/lstm_cell_857/MatMul/ReadVariableOp?+while/lstm_cell_857/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_857/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_857_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_857/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_857/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_857/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_857_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_857/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_857/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_857/addAddV2$while/lstm_cell_857/MatMul:product:0&while/lstm_cell_857/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_857/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_857_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_857/BiasAddBiasAddwhile/lstm_cell_857/add:z:02while/lstm_cell_857/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_857/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_857/splitSplit,while/lstm_cell_857/split/split_dim:output:0$while/lstm_cell_857/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_857/SigmoidSigmoid"while/lstm_cell_857/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_857/Sigmoid_1Sigmoid"while/lstm_cell_857/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_857/mulMul!while/lstm_cell_857/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_857/ReluRelu"while/lstm_cell_857/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_857/mul_1Mulwhile/lstm_cell_857/Sigmoid:y:0&while/lstm_cell_857/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_857/add_1AddV2while/lstm_cell_857/mul:z:0while/lstm_cell_857/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_857/Sigmoid_2Sigmoid"while/lstm_cell_857/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_857/Relu_1Reluwhile/lstm_cell_857/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_857/mul_2Mul!while/lstm_cell_857/Sigmoid_2:y:0(while/lstm_cell_857/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_857/mul_2:z:0*
_output_shapes
: *
element_dtype0:???M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: ?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_857/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_857/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_857/BiasAdd/ReadVariableOp*^while/lstm_cell_857/MatMul/ReadVariableOp,^while/lstm_cell_857/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_857_biasadd_readvariableop_resource5while_lstm_cell_857_biasadd_readvariableop_resource_0"n
4while_lstm_cell_857_matmul_1_readvariableop_resource6while_lstm_cell_857_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_857_matmul_readvariableop_resource4while_lstm_cell_857_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_857/BiasAdd/ReadVariableOp*while/lstm_cell_857/BiasAdd/ReadVariableOp2V
)while/lstm_cell_857/MatMul/ReadVariableOp)while/lstm_cell_857/MatMul/ReadVariableOp2Z
+while/lstm_cell_857/MatMul_1/ReadVariableOp+while/lstm_cell_857/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????
:-)
'
_output_shapes
:?????????
:

_output_shapes
: :

_output_shapes
: 
?8
?
while_body_5135912
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_855_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_855_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_855_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_855_matmul_readvariableop_resource:	?G
4while_lstm_cell_855_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_855_biasadd_readvariableop_resource:	???*while/lstm_cell_855/BiasAdd/ReadVariableOp?)while/lstm_cell_855/MatMul/ReadVariableOp?+while/lstm_cell_855/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_855/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_855_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_855/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_855/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_855/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_855_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_855/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_855/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_855/addAddV2$while/lstm_cell_855/MatMul:product:0&while/lstm_cell_855/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_855/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_855_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_855/BiasAddBiasAddwhile/lstm_cell_855/add:z:02while/lstm_cell_855/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_855/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_855/splitSplit,while/lstm_cell_855/split/split_dim:output:0$while/lstm_cell_855/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_855/SigmoidSigmoid"while/lstm_cell_855/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_855/Sigmoid_1Sigmoid"while/lstm_cell_855/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_855/mulMul!while/lstm_cell_855/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_855/ReluRelu"while/lstm_cell_855/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_855/mul_1Mulwhile/lstm_cell_855/Sigmoid:y:0&while/lstm_cell_855/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_855/add_1AddV2while/lstm_cell_855/mul:z:0while/lstm_cell_855/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_855/Sigmoid_2Sigmoid"while/lstm_cell_855/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_855/Relu_1Reluwhile/lstm_cell_855/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_855/mul_2Mul!while/lstm_cell_855/Sigmoid_2:y:0(while/lstm_cell_855/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_855/mul_2:z:0*
_output_shapes
: *
element_dtype0:???M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: ?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_855/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_855/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_855/BiasAdd/ReadVariableOp*^while/lstm_cell_855/MatMul/ReadVariableOp,^while/lstm_cell_855/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_855_biasadd_readvariableop_resource5while_lstm_cell_855_biasadd_readvariableop_resource_0"n
4while_lstm_cell_855_matmul_1_readvariableop_resource6while_lstm_cell_855_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_855_matmul_readvariableop_resource4while_lstm_cell_855_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_855/BiasAdd/ReadVariableOp*while/lstm_cell_855/BiasAdd/ReadVariableOp2V
)while/lstm_cell_855/MatMul/ReadVariableOp)while/lstm_cell_855/MatMul/ReadVariableOp2Z
+while/lstm_cell_855/MatMul_1/ReadVariableOp+while/lstm_cell_855/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????d:-)
'
_output_shapes
:?????????d:

_output_shapes
: :

_output_shapes
: 
?

?
0__inference_sequential_285_layer_call_fn_5134520
lstm_855_input
unknown:	?
	unknown_0:	d?
	unknown_1:	?
	unknown_2:	d?
	unknown_3:	2?
	unknown_4:	?
	unknown_5:2(
	unknown_6:
(
	unknown_7:(
	unknown_8:

	unknown_9:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalllstm_855_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_sequential_285_layer_call_and_return_conditional_losses_5134468o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_855_input
?8
?
while_body_5136528
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_856_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_856_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_856_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_856_matmul_readvariableop_resource:	d?G
4while_lstm_cell_856_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_856_biasadd_readvariableop_resource:	???*while/lstm_cell_856/BiasAdd/ReadVariableOp?)while/lstm_cell_856/MatMul/ReadVariableOp?+while/lstm_cell_856/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_856/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_856_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_856/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_856/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_856/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_856_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_856/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_856/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_856/addAddV2$while/lstm_cell_856/MatMul:product:0&while/lstm_cell_856/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_856/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_856_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_856/BiasAddBiasAddwhile/lstm_cell_856/add:z:02while/lstm_cell_856/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_856/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_856/splitSplit,while/lstm_cell_856/split/split_dim:output:0$while/lstm_cell_856/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_856/SigmoidSigmoid"while/lstm_cell_856/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_856/Sigmoid_1Sigmoid"while/lstm_cell_856/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_856/mulMul!while/lstm_cell_856/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_856/ReluRelu"while/lstm_cell_856/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_856/mul_1Mulwhile/lstm_cell_856/Sigmoid:y:0&while/lstm_cell_856/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_856/add_1AddV2while/lstm_cell_856/mul:z:0while/lstm_cell_856/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_856/Sigmoid_2Sigmoid"while/lstm_cell_856/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_856/Relu_1Reluwhile/lstm_cell_856/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_856/mul_2Mul!while/lstm_cell_856/Sigmoid_2:y:0(while/lstm_cell_856/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_856/mul_2:z:0*
_output_shapes
: *
element_dtype0:???M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: ?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_856/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_856/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_856/BiasAdd/ReadVariableOp*^while/lstm_cell_856/MatMul/ReadVariableOp,^while/lstm_cell_856/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_856_biasadd_readvariableop_resource5while_lstm_cell_856_biasadd_readvariableop_resource_0"n
4while_lstm_cell_856_matmul_1_readvariableop_resource6while_lstm_cell_856_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_856_matmul_readvariableop_resource4while_lstm_cell_856_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_856/BiasAdd/ReadVariableOp*while/lstm_cell_856/BiasAdd/ReadVariableOp2V
)while/lstm_cell_856/MatMul/ReadVariableOp)while/lstm_cell_856/MatMul/ReadVariableOp2Z
+while/lstm_cell_856/MatMul_1/ReadVariableOp+while/lstm_cell_856/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????2:-)
'
_output_shapes
:?????????2:

_output_shapes
: :

_output_shapes
: 
?
?
K__inference_sequential_285_layer_call_and_return_conditional_losses_5133879

inputs#
lstm_855_5133555:	?#
lstm_855_5133557:	d?
lstm_855_5133559:	?#
lstm_856_5133705:	d?#
lstm_856_5133707:	2?
lstm_856_5133709:	?"
lstm_857_5133855:2("
lstm_857_5133857:
(
lstm_857_5133859:(#
dense_285_5133873:

dense_285_5133875:
identity??!dense_285/StatefulPartitionedCall? lstm_855/StatefulPartitionedCall? lstm_856/StatefulPartitionedCall? lstm_857/StatefulPartitionedCall?
 lstm_855/StatefulPartitionedCallStatefulPartitionedCallinputslstm_855_5133555lstm_855_5133557lstm_855_5133559*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_lstm_855_layer_call_and_return_conditional_losses_5133554?
 lstm_856/StatefulPartitionedCallStatefulPartitionedCall)lstm_855/StatefulPartitionedCall:output:0lstm_856_5133705lstm_856_5133707lstm_856_5133709*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_lstm_856_layer_call_and_return_conditional_losses_5133704?
 lstm_857/StatefulPartitionedCallStatefulPartitionedCall)lstm_856/StatefulPartitionedCall:output:0lstm_857_5133855lstm_857_5133857lstm_857_5133859*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_lstm_857_layer_call_and_return_conditional_losses_5133854?
!dense_285/StatefulPartitionedCallStatefulPartitionedCall)lstm_857/StatefulPartitionedCall:output:0dense_285_5133873dense_285_5133875*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dense_285_layer_call_and_return_conditional_losses_5133872y
IdentityIdentity*dense_285/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_285/StatefulPartitionedCall!^lstm_855/StatefulPartitionedCall!^lstm_856/StatefulPartitionedCall!^lstm_857/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_285/StatefulPartitionedCall!dense_285/StatefulPartitionedCall2D
 lstm_855/StatefulPartitionedCall lstm_855/StatefulPartitionedCall2D
 lstm_856/StatefulPartitionedCall lstm_856/StatefulPartitionedCall2D
 lstm_857/StatefulPartitionedCall lstm_857/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_5137286
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5137286___redundant_placeholder05
1while_while_cond_5137286___redundant_placeholder15
1while_while_cond_5137286___redundant_placeholder25
1while_while_cond_5137286___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????
:?????????
: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????
:-)
'
_output_shapes
:?????????
:

_output_shapes
: :

_output_shapes
:
?8
?
while_body_5136055
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_855_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_855_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_855_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_855_matmul_readvariableop_resource:	?G
4while_lstm_cell_855_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_855_biasadd_readvariableop_resource:	???*while/lstm_cell_855/BiasAdd/ReadVariableOp?)while/lstm_cell_855/MatMul/ReadVariableOp?+while/lstm_cell_855/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_855/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_855_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_855/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_855/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_855/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_855_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_855/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_855/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_855/addAddV2$while/lstm_cell_855/MatMul:product:0&while/lstm_cell_855/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_855/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_855_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_855/BiasAddBiasAddwhile/lstm_cell_855/add:z:02while/lstm_cell_855/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_855/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_855/splitSplit,while/lstm_cell_855/split/split_dim:output:0$while/lstm_cell_855/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_855/SigmoidSigmoid"while/lstm_cell_855/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_855/Sigmoid_1Sigmoid"while/lstm_cell_855/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_855/mulMul!while/lstm_cell_855/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_855/ReluRelu"while/lstm_cell_855/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_855/mul_1Mulwhile/lstm_cell_855/Sigmoid:y:0&while/lstm_cell_855/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_855/add_1AddV2while/lstm_cell_855/mul:z:0while/lstm_cell_855/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_855/Sigmoid_2Sigmoid"while/lstm_cell_855/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_855/Relu_1Reluwhile/lstm_cell_855/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_855/mul_2Mul!while/lstm_cell_855/Sigmoid_2:y:0(while/lstm_cell_855/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_855/mul_2:z:0*
_output_shapes
: *
element_dtype0:???M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: ?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_855/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_855/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_855/BiasAdd/ReadVariableOp*^while/lstm_cell_855/MatMul/ReadVariableOp,^while/lstm_cell_855/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_855_biasadd_readvariableop_resource5while_lstm_cell_855_biasadd_readvariableop_resource_0"n
4while_lstm_cell_855_matmul_1_readvariableop_resource6while_lstm_cell_855_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_855_matmul_readvariableop_resource4while_lstm_cell_855_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_855/BiasAdd/ReadVariableOp*while/lstm_cell_855/BiasAdd/ReadVariableOp2V
)while/lstm_cell_855/MatMul/ReadVariableOp)while/lstm_cell_855/MatMul/ReadVariableOp2Z
+while/lstm_cell_855/MatMul_1/ReadVariableOp+while/lstm_cell_855/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????d:-)
'
_output_shapes
:?????????d:

_output_shapes
: :

_output_shapes
: 
?
?
*__inference_lstm_856_layer_call_fn_5136161
inputs_0
unknown:	d?
	unknown_0:	2?
	unknown_1:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????????????2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_lstm_856_layer_call_and_return_conditional_losses_5133046|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :??????????????????2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?
?
*__inference_lstm_857_layer_call_fn_5136799

inputs
unknown:2(
	unknown_0:
(
	unknown_1:(
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_lstm_857_layer_call_and_return_conditional_losses_5134070o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
*__inference_lstm_856_layer_call_fn_5136183

inputs
unknown:	d?
	unknown_0:	2?
	unknown_1:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_lstm_856_layer_call_and_return_conditional_losses_5134235s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?K
?
E__inference_lstm_855_layer_call_and_return_conditional_losses_5135710
inputs_0?
,lstm_cell_855_matmul_readvariableop_resource:	?A
.lstm_cell_855_matmul_1_readvariableop_resource:	d?<
-lstm_cell_855_biasadd_readvariableop_resource:	?
identity??$lstm_cell_855/BiasAdd/ReadVariableOp?#lstm_cell_855/MatMul/ReadVariableOp?%lstm_cell_855/MatMul_1/ReadVariableOp?while=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ds
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????dR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
#lstm_cell_855/MatMul/ReadVariableOpReadVariableOp,lstm_cell_855_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_855/MatMulMatMulstrided_slice_2:output:0+lstm_cell_855/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_855/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_855_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_855/MatMul_1MatMulzeros:output:0-lstm_cell_855/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_855/addAddV2lstm_cell_855/MatMul:product:0 lstm_cell_855/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_855/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_855_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_855/BiasAddBiasAddlstm_cell_855/add:z:0,lstm_cell_855/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_855/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_855/splitSplit&lstm_cell_855/split/split_dim:output:0lstm_cell_855/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_855/SigmoidSigmoidlstm_cell_855/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_855/Sigmoid_1Sigmoidlstm_cell_855/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_855/mulMullstm_cell_855/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_855/ReluRelulstm_cell_855/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_855/mul_1Mullstm_cell_855/Sigmoid:y:0 lstm_cell_855/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_855/add_1AddV2lstm_cell_855/mul:z:0lstm_cell_855/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_855/Sigmoid_2Sigmoidlstm_cell_855/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_855/Relu_1Relulstm_cell_855/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_855/mul_2Mullstm_cell_855/Sigmoid_2:y:0"lstm_cell_855/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_855_matmul_readvariableop_resource.lstm_cell_855_matmul_1_readvariableop_resource-lstm_cell_855_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????d:?????????d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_5135626*
condR
while_cond_5135625*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :??????????????????d*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :??????????????????d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :??????????????????d?
NoOpNoOp%^lstm_cell_855/BiasAdd/ReadVariableOp$^lstm_cell_855/MatMul/ReadVariableOp&^lstm_cell_855/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_855/BiasAdd/ReadVariableOp$lstm_cell_855/BiasAdd/ReadVariableOp2J
#lstm_cell_855/MatMul/ReadVariableOp#lstm_cell_855/MatMul/ReadVariableOp2N
%lstm_cell_855/MatMul_1/ReadVariableOp%lstm_cell_855/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?J
?
E__inference_lstm_856_layer_call_and_return_conditional_losses_5134235

inputs?
,lstm_cell_856_matmul_readvariableop_resource:	d?A
.lstm_cell_856_matmul_1_readvariableop_resource:	2?<
-lstm_cell_856_biasadd_readvariableop_resource:	?
identity??$lstm_cell_856/BiasAdd/ReadVariableOp?#lstm_cell_856/MatMul/ReadVariableOp?%lstm_cell_856/MatMul_1/ReadVariableOp?while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????2R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:?????????dD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
#lstm_cell_856/MatMul/ReadVariableOpReadVariableOp,lstm_cell_856_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_856/MatMulMatMulstrided_slice_2:output:0+lstm_cell_856/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_856/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_856_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_856/MatMul_1MatMulzeros:output:0-lstm_cell_856/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_856/addAddV2lstm_cell_856/MatMul:product:0 lstm_cell_856/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_856/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_856_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_856/BiasAddBiasAddlstm_cell_856/add:z:0,lstm_cell_856/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_856/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_856/splitSplit&lstm_cell_856/split/split_dim:output:0lstm_cell_856/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_856/SigmoidSigmoidlstm_cell_856/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_856/Sigmoid_1Sigmoidlstm_cell_856/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_856/mulMullstm_cell_856/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_856/ReluRelulstm_cell_856/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_856/mul_1Mullstm_cell_856/Sigmoid:y:0 lstm_cell_856/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_856/add_1AddV2lstm_cell_856/mul:z:0lstm_cell_856/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_856/Sigmoid_2Sigmoidlstm_cell_856/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_856/Relu_1Relulstm_cell_856/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_856/mul_2Mullstm_cell_856/Sigmoid_2:y:0"lstm_cell_856/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_856_matmul_readvariableop_resource.lstm_cell_856_matmul_1_readvariableop_resource-lstm_cell_856_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????2:?????????2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_5134151*
condR
while_cond_5134150*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:?????????2?
NoOpNoOp%^lstm_cell_856/BiasAdd/ReadVariableOp$^lstm_cell_856/MatMul/ReadVariableOp&^lstm_cell_856/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_856/BiasAdd/ReadVariableOp$lstm_cell_856/BiasAdd/ReadVariableOp2J
#lstm_cell_856/MatMul/ReadVariableOp#lstm_cell_856/MatMul/ReadVariableOp2N
%lstm_cell_856/MatMul_1/ReadVariableOp%lstm_cell_856/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?#
?
while_body_5133136
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_857_5133160_0:2(/
while_lstm_cell_857_5133162_0:
(+
while_lstm_cell_857_5133164_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_857_5133160:2(-
while_lstm_cell_857_5133162:
()
while_lstm_cell_857_5133164:(??+while/lstm_cell_857/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_857/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_857_5133160_0while_lstm_cell_857_5133162_0while_lstm_cell_857_5133164_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:?????????
:?????????
:?????????
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_lstm_cell_857_layer_call_and_return_conditional_losses_5133122?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_857/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:???M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: ?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: ?
while/Identity_4Identity4while/lstm_cell_857/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_857/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_857/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_857_5133160while_lstm_cell_857_5133160_0"<
while_lstm_cell_857_5133162while_lstm_cell_857_5133162_0"<
while_lstm_cell_857_5133164while_lstm_cell_857_5133164_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_857/StatefulPartitionedCall+while/lstm_cell_857/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????
:-)
'
_output_shapes
:?????????
:

_output_shapes
: :

_output_shapes
: 
?8
?
while_body_5136242
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_856_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_856_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_856_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_856_matmul_readvariableop_resource:	d?G
4while_lstm_cell_856_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_856_biasadd_readvariableop_resource:	???*while/lstm_cell_856/BiasAdd/ReadVariableOp?)while/lstm_cell_856/MatMul/ReadVariableOp?+while/lstm_cell_856/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_856/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_856_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_856/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_856/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_856/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_856_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_856/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_856/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_856/addAddV2$while/lstm_cell_856/MatMul:product:0&while/lstm_cell_856/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_856/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_856_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_856/BiasAddBiasAddwhile/lstm_cell_856/add:z:02while/lstm_cell_856/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_856/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_856/splitSplit,while/lstm_cell_856/split/split_dim:output:0$while/lstm_cell_856/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_856/SigmoidSigmoid"while/lstm_cell_856/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_856/Sigmoid_1Sigmoid"while/lstm_cell_856/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_856/mulMul!while/lstm_cell_856/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_856/ReluRelu"while/lstm_cell_856/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_856/mul_1Mulwhile/lstm_cell_856/Sigmoid:y:0&while/lstm_cell_856/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_856/add_1AddV2while/lstm_cell_856/mul:z:0while/lstm_cell_856/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_856/Sigmoid_2Sigmoid"while/lstm_cell_856/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_856/Relu_1Reluwhile/lstm_cell_856/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_856/mul_2Mul!while/lstm_cell_856/Sigmoid_2:y:0(while/lstm_cell_856/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_856/mul_2:z:0*
_output_shapes
: *
element_dtype0:???M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: ?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_856/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_856/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_856/BiasAdd/ReadVariableOp*^while/lstm_cell_856/MatMul/ReadVariableOp,^while/lstm_cell_856/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_856_biasadd_readvariableop_resource5while_lstm_cell_856_biasadd_readvariableop_resource_0"n
4while_lstm_cell_856_matmul_1_readvariableop_resource6while_lstm_cell_856_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_856_matmul_readvariableop_resource4while_lstm_cell_856_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_856/BiasAdd/ReadVariableOp*while/lstm_cell_856/BiasAdd/ReadVariableOp2V
)while/lstm_cell_856/MatMul/ReadVariableOp)while/lstm_cell_856/MatMul/ReadVariableOp2Z
+while/lstm_cell_856/MatMul_1/ReadVariableOp+while/lstm_cell_856/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????2:-)
'
_output_shapes
:?????????2:

_output_shapes
: :

_output_shapes
: 
?	
?
F__inference_dense_285_layer_call_and_return_conditional_losses_5133872

inputs0
matmul_readvariableop_resource:
-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????
: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????

 
_user_specified_nameinputs
?
?
while_cond_5133619
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5133619___redundant_placeholder05
1while_while_cond_5133619___redundant_placeholder15
1while_while_cond_5133619___redundant_placeholder25
1while_while_cond_5133619___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????2:?????????2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????2:-)
'
_output_shapes
:?????????2:

_output_shapes
: :

_output_shapes
:
?
?
J__inference_lstm_cell_856_layer_call_and_return_conditional_losses_5137586

inputs
states_0
states_11
matmul_readvariableop_resource:	d?3
 matmul_1_readvariableop_resource:	2?.
biasadd_readvariableop_resource:	?
identity

identity_1

identity_2??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????y
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:??????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:?????????2V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:?????????2U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:?????????2N
ReluRelusplit:output:2*
T0*'
_output_shapes
:?????????2_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:?????????2T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:?????????2V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:?????????2K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:?????????2c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:?????????2X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:?????????2Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:?????????2Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:?????????2?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????d:?????????2:?????????2: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs:QM
'
_output_shapes
:?????????2
"
_user_specified_name
states/0:QM
'
_output_shapes
:?????????2
"
_user_specified_name
states/1
?T
?
*sequential_285_lstm_857_while_body_5132265L
Hsequential_285_lstm_857_while_sequential_285_lstm_857_while_loop_counterR
Nsequential_285_lstm_857_while_sequential_285_lstm_857_while_maximum_iterations-
)sequential_285_lstm_857_while_placeholder/
+sequential_285_lstm_857_while_placeholder_1/
+sequential_285_lstm_857_while_placeholder_2/
+sequential_285_lstm_857_while_placeholder_3K
Gsequential_285_lstm_857_while_sequential_285_lstm_857_strided_slice_1_0?
?sequential_285_lstm_857_while_tensorarrayv2read_tensorlistgetitem_sequential_285_lstm_857_tensorarrayunstack_tensorlistfromtensor_0^
Lsequential_285_lstm_857_while_lstm_cell_857_matmul_readvariableop_resource_0:2(`
Nsequential_285_lstm_857_while_lstm_cell_857_matmul_1_readvariableop_resource_0:
([
Msequential_285_lstm_857_while_lstm_cell_857_biasadd_readvariableop_resource_0:(*
&sequential_285_lstm_857_while_identity,
(sequential_285_lstm_857_while_identity_1,
(sequential_285_lstm_857_while_identity_2,
(sequential_285_lstm_857_while_identity_3,
(sequential_285_lstm_857_while_identity_4,
(sequential_285_lstm_857_while_identity_5I
Esequential_285_lstm_857_while_sequential_285_lstm_857_strided_slice_1?
?sequential_285_lstm_857_while_tensorarrayv2read_tensorlistgetitem_sequential_285_lstm_857_tensorarrayunstack_tensorlistfromtensor\
Jsequential_285_lstm_857_while_lstm_cell_857_matmul_readvariableop_resource:2(^
Lsequential_285_lstm_857_while_lstm_cell_857_matmul_1_readvariableop_resource:
(Y
Ksequential_285_lstm_857_while_lstm_cell_857_biasadd_readvariableop_resource:(??Bsequential_285/lstm_857/while/lstm_cell_857/BiasAdd/ReadVariableOp?Asequential_285/lstm_857/while/lstm_cell_857/MatMul/ReadVariableOp?Csequential_285/lstm_857/while/lstm_cell_857/MatMul_1/ReadVariableOp?
Osequential_285/lstm_857/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
Asequential_285/lstm_857/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_285_lstm_857_while_tensorarrayv2read_tensorlistgetitem_sequential_285_lstm_857_tensorarrayunstack_tensorlistfromtensor_0)sequential_285_lstm_857_while_placeholderXsequential_285/lstm_857/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
Asequential_285/lstm_857/while/lstm_cell_857/MatMul/ReadVariableOpReadVariableOpLsequential_285_lstm_857_while_lstm_cell_857_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
2sequential_285/lstm_857/while/lstm_cell_857/MatMulMatMulHsequential_285/lstm_857/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_285/lstm_857/while/lstm_cell_857/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
Csequential_285/lstm_857/while/lstm_cell_857/MatMul_1/ReadVariableOpReadVariableOpNsequential_285_lstm_857_while_lstm_cell_857_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
4sequential_285/lstm_857/while/lstm_cell_857/MatMul_1MatMul+sequential_285_lstm_857_while_placeholder_2Ksequential_285/lstm_857/while/lstm_cell_857/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
/sequential_285/lstm_857/while/lstm_cell_857/addAddV2<sequential_285/lstm_857/while/lstm_cell_857/MatMul:product:0>sequential_285/lstm_857/while/lstm_cell_857/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
Bsequential_285/lstm_857/while/lstm_cell_857/BiasAdd/ReadVariableOpReadVariableOpMsequential_285_lstm_857_while_lstm_cell_857_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
3sequential_285/lstm_857/while/lstm_cell_857/BiasAddBiasAdd3sequential_285/lstm_857/while/lstm_cell_857/add:z:0Jsequential_285/lstm_857/while/lstm_cell_857/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(}
;sequential_285/lstm_857/while/lstm_cell_857/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_285/lstm_857/while/lstm_cell_857/splitSplitDsequential_285/lstm_857/while/lstm_cell_857/split/split_dim:output:0<sequential_285/lstm_857/while/lstm_cell_857/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
3sequential_285/lstm_857/while/lstm_cell_857/SigmoidSigmoid:sequential_285/lstm_857/while/lstm_cell_857/split:output:0*
T0*'
_output_shapes
:?????????
?
5sequential_285/lstm_857/while/lstm_cell_857/Sigmoid_1Sigmoid:sequential_285/lstm_857/while/lstm_cell_857/split:output:1*
T0*'
_output_shapes
:?????????
?
/sequential_285/lstm_857/while/lstm_cell_857/mulMul9sequential_285/lstm_857/while/lstm_cell_857/Sigmoid_1:y:0+sequential_285_lstm_857_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
0sequential_285/lstm_857/while/lstm_cell_857/ReluRelu:sequential_285/lstm_857/while/lstm_cell_857/split:output:2*
T0*'
_output_shapes
:?????????
?
1sequential_285/lstm_857/while/lstm_cell_857/mul_1Mul7sequential_285/lstm_857/while/lstm_cell_857/Sigmoid:y:0>sequential_285/lstm_857/while/lstm_cell_857/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
1sequential_285/lstm_857/while/lstm_cell_857/add_1AddV23sequential_285/lstm_857/while/lstm_cell_857/mul:z:05sequential_285/lstm_857/while/lstm_cell_857/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
5sequential_285/lstm_857/while/lstm_cell_857/Sigmoid_2Sigmoid:sequential_285/lstm_857/while/lstm_cell_857/split:output:3*
T0*'
_output_shapes
:?????????
?
2sequential_285/lstm_857/while/lstm_cell_857/Relu_1Relu5sequential_285/lstm_857/while/lstm_cell_857/add_1:z:0*
T0*'
_output_shapes
:?????????
?
1sequential_285/lstm_857/while/lstm_cell_857/mul_2Mul9sequential_285/lstm_857/while/lstm_cell_857/Sigmoid_2:y:0@sequential_285/lstm_857/while/lstm_cell_857/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
Bsequential_285/lstm_857/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_285_lstm_857_while_placeholder_1)sequential_285_lstm_857_while_placeholder5sequential_285/lstm_857/while/lstm_cell_857/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_285/lstm_857/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_285/lstm_857/while/addAddV2)sequential_285_lstm_857_while_placeholder,sequential_285/lstm_857/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_285/lstm_857/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_285/lstm_857/while/add_1AddV2Hsequential_285_lstm_857_while_sequential_285_lstm_857_while_loop_counter.sequential_285/lstm_857/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_285/lstm_857/while/IdentityIdentity'sequential_285/lstm_857/while/add_1:z:0#^sequential_285/lstm_857/while/NoOp*
T0*
_output_shapes
: ?
(sequential_285/lstm_857/while/Identity_1IdentityNsequential_285_lstm_857_while_sequential_285_lstm_857_while_maximum_iterations#^sequential_285/lstm_857/while/NoOp*
T0*
_output_shapes
: ?
(sequential_285/lstm_857/while/Identity_2Identity%sequential_285/lstm_857/while/add:z:0#^sequential_285/lstm_857/while/NoOp*
T0*
_output_shapes
: ?
(sequential_285/lstm_857/while/Identity_3IdentityRsequential_285/lstm_857/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_285/lstm_857/while/NoOp*
T0*
_output_shapes
: ?
(sequential_285/lstm_857/while/Identity_4Identity5sequential_285/lstm_857/while/lstm_cell_857/mul_2:z:0#^sequential_285/lstm_857/while/NoOp*
T0*'
_output_shapes
:?????????
?
(sequential_285/lstm_857/while/Identity_5Identity5sequential_285/lstm_857/while/lstm_cell_857/add_1:z:0#^sequential_285/lstm_857/while/NoOp*
T0*'
_output_shapes
:?????????
?
"sequential_285/lstm_857/while/NoOpNoOpC^sequential_285/lstm_857/while/lstm_cell_857/BiasAdd/ReadVariableOpB^sequential_285/lstm_857/while/lstm_cell_857/MatMul/ReadVariableOpD^sequential_285/lstm_857/while/lstm_cell_857/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_285_lstm_857_while_identity/sequential_285/lstm_857/while/Identity:output:0"]
(sequential_285_lstm_857_while_identity_11sequential_285/lstm_857/while/Identity_1:output:0"]
(sequential_285_lstm_857_while_identity_21sequential_285/lstm_857/while/Identity_2:output:0"]
(sequential_285_lstm_857_while_identity_31sequential_285/lstm_857/while/Identity_3:output:0"]
(sequential_285_lstm_857_while_identity_41sequential_285/lstm_857/while/Identity_4:output:0"]
(sequential_285_lstm_857_while_identity_51sequential_285/lstm_857/while/Identity_5:output:0"?
Ksequential_285_lstm_857_while_lstm_cell_857_biasadd_readvariableop_resourceMsequential_285_lstm_857_while_lstm_cell_857_biasadd_readvariableop_resource_0"?
Lsequential_285_lstm_857_while_lstm_cell_857_matmul_1_readvariableop_resourceNsequential_285_lstm_857_while_lstm_cell_857_matmul_1_readvariableop_resource_0"?
Jsequential_285_lstm_857_while_lstm_cell_857_matmul_readvariableop_resourceLsequential_285_lstm_857_while_lstm_cell_857_matmul_readvariableop_resource_0"?
Esequential_285_lstm_857_while_sequential_285_lstm_857_strided_slice_1Gsequential_285_lstm_857_while_sequential_285_lstm_857_strided_slice_1_0"?
?sequential_285_lstm_857_while_tensorarrayv2read_tensorlistgetitem_sequential_285_lstm_857_tensorarrayunstack_tensorlistfromtensor?sequential_285_lstm_857_while_tensorarrayv2read_tensorlistgetitem_sequential_285_lstm_857_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2?
Bsequential_285/lstm_857/while/lstm_cell_857/BiasAdd/ReadVariableOpBsequential_285/lstm_857/while/lstm_cell_857/BiasAdd/ReadVariableOp2?
Asequential_285/lstm_857/while/lstm_cell_857/MatMul/ReadVariableOpAsequential_285/lstm_857/while/lstm_cell_857/MatMul/ReadVariableOp2?
Csequential_285/lstm_857/while/lstm_cell_857/MatMul_1/ReadVariableOpCsequential_285/lstm_857/while/lstm_cell_857/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????
:-)
'
_output_shapes
:?????????
:

_output_shapes
: :

_output_shapes
: 
?J
?
E__inference_lstm_856_layer_call_and_return_conditional_losses_5133704

inputs?
,lstm_cell_856_matmul_readvariableop_resource:	d?A
.lstm_cell_856_matmul_1_readvariableop_resource:	2?<
-lstm_cell_856_biasadd_readvariableop_resource:	?
identity??$lstm_cell_856/BiasAdd/ReadVariableOp?#lstm_cell_856/MatMul/ReadVariableOp?%lstm_cell_856/MatMul_1/ReadVariableOp?while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????2R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:?????????dD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
#lstm_cell_856/MatMul/ReadVariableOpReadVariableOp,lstm_cell_856_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_856/MatMulMatMulstrided_slice_2:output:0+lstm_cell_856/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_856/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_856_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_856/MatMul_1MatMulzeros:output:0-lstm_cell_856/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_856/addAddV2lstm_cell_856/MatMul:product:0 lstm_cell_856/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_856/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_856_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_856/BiasAddBiasAddlstm_cell_856/add:z:0,lstm_cell_856/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_856/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_856/splitSplit&lstm_cell_856/split/split_dim:output:0lstm_cell_856/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_856/SigmoidSigmoidlstm_cell_856/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_856/Sigmoid_1Sigmoidlstm_cell_856/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_856/mulMullstm_cell_856/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_856/ReluRelulstm_cell_856/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_856/mul_1Mullstm_cell_856/Sigmoid:y:0 lstm_cell_856/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_856/add_1AddV2lstm_cell_856/mul:z:0lstm_cell_856/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_856/Sigmoid_2Sigmoidlstm_cell_856/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_856/Relu_1Relulstm_cell_856/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_856/mul_2Mullstm_cell_856/Sigmoid_2:y:0"lstm_cell_856/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_856_matmul_readvariableop_resource.lstm_cell_856_matmul_1_readvariableop_resource-lstm_cell_856_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????2:?????????2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_5133620*
condR
while_cond_5133619*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:?????????2?
NoOpNoOp%^lstm_cell_856/BiasAdd/ReadVariableOp$^lstm_cell_856/MatMul/ReadVariableOp&^lstm_cell_856/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_856/BiasAdd/ReadVariableOp$lstm_cell_856/BiasAdd/ReadVariableOp2J
#lstm_cell_856/MatMul/ReadVariableOp#lstm_cell_856/MatMul/ReadVariableOp2N
%lstm_cell_856/MatMul_1/ReadVariableOp%lstm_cell_856/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
/__inference_lstm_cell_857_layer_call_fn_5137620

inputs
states_0
states_1
unknown:2(
	unknown_0:
(
	unknown_1:(
identity

identity_1

identity_2??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:?????????
:?????????
:?????????
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_lstm_cell_857_layer_call_and_return_conditional_losses_5133268o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????
q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:?????????
q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:?????????
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????2:?????????
:?????????
: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????2
 
_user_specified_nameinputs:QM
'
_output_shapes
:?????????

"
_user_specified_name
states/0:QM
'
_output_shapes
:?????????

"
_user_specified_name
states/1"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
M
lstm_855_input;
 serving_default_lstm_855_input:0?????????=
	dense_2850
StatefulPartitionedCall:0?????????tensorflow/serving/predict:??
?
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer_with_weights-3
layer-3
	optimizer
	variables
trainable_variables
regularization_losses
		keras_api


signatures
?__call__
+?&call_and_return_all_conditional_losses
?_default_save_signature"
_tf_keras_sequential
?
cell

state_spec
	variables
trainable_variables
regularization_losses
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_rnn_layer
?
cell

state_spec
	variables
trainable_variables
regularization_losses
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_rnn_layer
?
cell

state_spec
	variables
trainable_variables
regularization_losses
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_rnn_layer
?

kernel
bias
	variables
 trainable_variables
!regularization_losses
"	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
#iter

$beta_1

%beta_2
	&decay
'learning_ratempmq(mr)ms*mt+mu,mv-mw.mx/my0mzv{v|(v})v~*v+v?,v?-v?.v?/v?0v?"
	optimizer
n
(0
)1
*2
+3
,4
-5
.6
/7
08
9
10"
trackable_list_wrapper
n
(0
)1
*2
+3
,4
-5
.6
/7
08
9
10"
trackable_list_wrapper
 "
trackable_list_wrapper
?
1non_trainable_variables

2layers
3metrics
4layer_regularization_losses
5layer_metrics
	variables
trainable_variables
regularization_losses
?__call__
?_default_save_signature
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
-
?serving_default"
signature_map
?
6
state_size

(kernel
)recurrent_kernel
*bias
7	variables
8trainable_variables
9regularization_losses
:	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
5
(0
)1
*2"
trackable_list_wrapper
5
(0
)1
*2"
trackable_list_wrapper
 "
trackable_list_wrapper
?

;states
<non_trainable_variables

=layers
>metrics
?layer_regularization_losses
@layer_metrics
	variables
trainable_variables
regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?
A
state_size

+kernel
,recurrent_kernel
-bias
B	variables
Ctrainable_variables
Dregularization_losses
E	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
5
+0
,1
-2"
trackable_list_wrapper
5
+0
,1
-2"
trackable_list_wrapper
 "
trackable_list_wrapper
?

Fstates
Gnon_trainable_variables

Hlayers
Imetrics
Jlayer_regularization_losses
Klayer_metrics
	variables
trainable_variables
regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?
L
state_size

.kernel
/recurrent_kernel
0bias
M	variables
Ntrainable_variables
Oregularization_losses
P	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
5
.0
/1
02"
trackable_list_wrapper
5
.0
/1
02"
trackable_list_wrapper
 "
trackable_list_wrapper
?

Qstates
Rnon_trainable_variables

Slayers
Tmetrics
Ulayer_regularization_losses
Vlayer_metrics
	variables
trainable_variables
regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
": 
2dense_285/kernel
:2dense_285/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
Wnon_trainable_variables

Xlayers
Ymetrics
Zlayer_regularization_losses
[layer_metrics
	variables
 trainable_variables
!regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
0:.	?2lstm_855/lstm_cell_855/kernel
::8	d?2'lstm_855/lstm_cell_855/recurrent_kernel
*:(?2lstm_855/lstm_cell_855/bias
0:.	d?2lstm_856/lstm_cell_856/kernel
::8	2?2'lstm_856/lstm_cell_856/recurrent_kernel
*:(?2lstm_856/lstm_cell_856/bias
/:-2(2lstm_857/lstm_cell_857/kernel
9:7
(2'lstm_857/lstm_cell_857/recurrent_kernel
):'(2lstm_857/lstm_cell_857/bias
 "
trackable_list_wrapper
<
0
1
2
3"
trackable_list_wrapper
'
\0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
5
(0
)1
*2"
trackable_list_wrapper
5
(0
)1
*2"
trackable_list_wrapper
 "
trackable_list_wrapper
?
]non_trainable_variables

^layers
_metrics
`layer_regularization_losses
alayer_metrics
7	variables
8trainable_variables
9regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
5
+0
,1
-2"
trackable_list_wrapper
5
+0
,1
-2"
trackable_list_wrapper
 "
trackable_list_wrapper
?
bnon_trainable_variables

clayers
dmetrics
elayer_regularization_losses
flayer_metrics
B	variables
Ctrainable_variables
Dregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
5
.0
/1
02"
trackable_list_wrapper
5
.0
/1
02"
trackable_list_wrapper
 "
trackable_list_wrapper
?
gnon_trainable_variables

hlayers
imetrics
jlayer_regularization_losses
klayer_metrics
M	variables
Ntrainable_variables
Oregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
N
	ltotal
	mcount
n	variables
o	keras_api"
_tf_keras_metric
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
:  (2total
:  (2count
.
l0
m1"
trackable_list_wrapper
-
n	variables"
_generic_user_object
':%
2Adam/dense_285/kernel/m
!:2Adam/dense_285/bias/m
5:3	?2$Adam/lstm_855/lstm_cell_855/kernel/m
?:=	d?2.Adam/lstm_855/lstm_cell_855/recurrent_kernel/m
/:-?2"Adam/lstm_855/lstm_cell_855/bias/m
5:3	d?2$Adam/lstm_856/lstm_cell_856/kernel/m
?:=	2?2.Adam/lstm_856/lstm_cell_856/recurrent_kernel/m
/:-?2"Adam/lstm_856/lstm_cell_856/bias/m
4:22(2$Adam/lstm_857/lstm_cell_857/kernel/m
>:<
(2.Adam/lstm_857/lstm_cell_857/recurrent_kernel/m
.:,(2"Adam/lstm_857/lstm_cell_857/bias/m
':%
2Adam/dense_285/kernel/v
!:2Adam/dense_285/bias/v
5:3	?2$Adam/lstm_855/lstm_cell_855/kernel/v
?:=	d?2.Adam/lstm_855/lstm_cell_855/recurrent_kernel/v
/:-?2"Adam/lstm_855/lstm_cell_855/bias/v
5:3	d?2$Adam/lstm_856/lstm_cell_856/kernel/v
?:=	2?2.Adam/lstm_856/lstm_cell_856/recurrent_kernel/v
/:-?2"Adam/lstm_856/lstm_cell_856/bias/v
4:22(2$Adam/lstm_857/lstm_cell_857/kernel/v
>:<
(2.Adam/lstm_857/lstm_cell_857/recurrent_kernel/v
.:,(2"Adam/lstm_857/lstm_cell_857/bias/v
?2?
0__inference_sequential_285_layer_call_fn_5133904
0__inference_sequential_285_layer_call_fn_5134642
0__inference_sequential_285_layer_call_fn_5134669
0__inference_sequential_285_layer_call_fn_5134520?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
K__inference_sequential_285_layer_call_and_return_conditional_losses_5135096
K__inference_sequential_285_layer_call_and_return_conditional_losses_5135523
K__inference_sequential_285_layer_call_and_return_conditional_losses_5134550
K__inference_sequential_285_layer_call_and_return_conditional_losses_5134580?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
"__inference__wrapped_model_5132355lstm_855_input"?
???
FullArgSpec
args? 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
*__inference_lstm_855_layer_call_fn_5135534
*__inference_lstm_855_layer_call_fn_5135545
*__inference_lstm_855_layer_call_fn_5135556
*__inference_lstm_855_layer_call_fn_5135567?
???
FullArgSpecB
args:?7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults?

 
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
E__inference_lstm_855_layer_call_and_return_conditional_losses_5135710
E__inference_lstm_855_layer_call_and_return_conditional_losses_5135853
E__inference_lstm_855_layer_call_and_return_conditional_losses_5135996
E__inference_lstm_855_layer_call_and_return_conditional_losses_5136139?
???
FullArgSpecB
args:?7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults?

 
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
*__inference_lstm_856_layer_call_fn_5136150
*__inference_lstm_856_layer_call_fn_5136161
*__inference_lstm_856_layer_call_fn_5136172
*__inference_lstm_856_layer_call_fn_5136183?
???
FullArgSpecB
args:?7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults?

 
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
E__inference_lstm_856_layer_call_and_return_conditional_losses_5136326
E__inference_lstm_856_layer_call_and_return_conditional_losses_5136469
E__inference_lstm_856_layer_call_and_return_conditional_losses_5136612
E__inference_lstm_856_layer_call_and_return_conditional_losses_5136755?
???
FullArgSpecB
args:?7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults?

 
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
*__inference_lstm_857_layer_call_fn_5136766
*__inference_lstm_857_layer_call_fn_5136777
*__inference_lstm_857_layer_call_fn_5136788
*__inference_lstm_857_layer_call_fn_5136799?
???
FullArgSpecB
args:?7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults?

 
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
E__inference_lstm_857_layer_call_and_return_conditional_losses_5136942
E__inference_lstm_857_layer_call_and_return_conditional_losses_5137085
E__inference_lstm_857_layer_call_and_return_conditional_losses_5137228
E__inference_lstm_857_layer_call_and_return_conditional_losses_5137371?
???
FullArgSpecB
args:?7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults?

 
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
+__inference_dense_285_layer_call_fn_5137380?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
F__inference_dense_285_layer_call_and_return_conditional_losses_5137390?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
%__inference_signature_wrapper_5134615lstm_855_input"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
/__inference_lstm_cell_855_layer_call_fn_5137407
/__inference_lstm_cell_855_layer_call_fn_5137424?
???
FullArgSpec3
args+?(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
J__inference_lstm_cell_855_layer_call_and_return_conditional_losses_5137456
J__inference_lstm_cell_855_layer_call_and_return_conditional_losses_5137488?
???
FullArgSpec3
args+?(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
/__inference_lstm_cell_856_layer_call_fn_5137505
/__inference_lstm_cell_856_layer_call_fn_5137522?
???
FullArgSpec3
args+?(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
J__inference_lstm_cell_856_layer_call_and_return_conditional_losses_5137554
J__inference_lstm_cell_856_layer_call_and_return_conditional_losses_5137586?
???
FullArgSpec3
args+?(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
/__inference_lstm_cell_857_layer_call_fn_5137603
/__inference_lstm_cell_857_layer_call_fn_5137620?
???
FullArgSpec3
args+?(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
J__inference_lstm_cell_857_layer_call_and_return_conditional_losses_5137652
J__inference_lstm_cell_857_layer_call_and_return_conditional_losses_5137684?
???
FullArgSpec3
args+?(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 ?
"__inference__wrapped_model_5132355?()*+,-./0;?8
1?.
,?)
lstm_855_input?????????
? "5?2
0
	dense_285#? 
	dense_285??????????
F__inference_dense_285_layer_call_and_return_conditional_losses_5137390\/?,
%?"
 ?
inputs?????????

? "%?"
?
0?????????
? ~
+__inference_dense_285_layer_call_fn_5137380O/?,
%?"
 ?
inputs?????????

? "???????????
E__inference_lstm_855_layer_call_and_return_conditional_losses_5135710?()*O?L
E?B
4?1
/?,
inputs/0??????????????????

 
p 

 
? "2?/
(?%
0??????????????????d
? ?
E__inference_lstm_855_layer_call_and_return_conditional_losses_5135853?()*O?L
E?B
4?1
/?,
inputs/0??????????????????

 
p

 
? "2?/
(?%
0??????????????????d
? ?
E__inference_lstm_855_layer_call_and_return_conditional_losses_5135996q()*??<
5?2
$?!
inputs?????????

 
p 

 
? ")?&
?
0?????????d
? ?
E__inference_lstm_855_layer_call_and_return_conditional_losses_5136139q()*??<
5?2
$?!
inputs?????????

 
p

 
? ")?&
?
0?????????d
? ?
*__inference_lstm_855_layer_call_fn_5135534}()*O?L
E?B
4?1
/?,
inputs/0??????????????????

 
p 

 
? "%?"??????????????????d?
*__inference_lstm_855_layer_call_fn_5135545}()*O?L
E?B
4?1
/?,
inputs/0??????????????????

 
p

 
? "%?"??????????????????d?
*__inference_lstm_855_layer_call_fn_5135556d()*??<
5?2
$?!
inputs?????????

 
p 

 
? "??????????d?
*__inference_lstm_855_layer_call_fn_5135567d()*??<
5?2
$?!
inputs?????????

 
p

 
? "??????????d?
E__inference_lstm_856_layer_call_and_return_conditional_losses_5136326?+,-O?L
E?B
4?1
/?,
inputs/0??????????????????d

 
p 

 
? "2?/
(?%
0??????????????????2
? ?
E__inference_lstm_856_layer_call_and_return_conditional_losses_5136469?+,-O?L
E?B
4?1
/?,
inputs/0??????????????????d

 
p

 
? "2?/
(?%
0??????????????????2
? ?
E__inference_lstm_856_layer_call_and_return_conditional_losses_5136612q+,-??<
5?2
$?!
inputs?????????d

 
p 

 
? ")?&
?
0?????????2
? ?
E__inference_lstm_856_layer_call_and_return_conditional_losses_5136755q+,-??<
5?2
$?!
inputs?????????d

 
p

 
? ")?&
?
0?????????2
? ?
*__inference_lstm_856_layer_call_fn_5136150}+,-O?L
E?B
4?1
/?,
inputs/0??????????????????d

 
p 

 
? "%?"??????????????????2?
*__inference_lstm_856_layer_call_fn_5136161}+,-O?L
E?B
4?1
/?,
inputs/0??????????????????d

 
p

 
? "%?"??????????????????2?
*__inference_lstm_856_layer_call_fn_5136172d+,-??<
5?2
$?!
inputs?????????d

 
p 

 
? "??????????2?
*__inference_lstm_856_layer_call_fn_5136183d+,-??<
5?2
$?!
inputs?????????d

 
p

 
? "??????????2?
E__inference_lstm_857_layer_call_and_return_conditional_losses_5136942}./0O?L
E?B
4?1
/?,
inputs/0??????????????????2

 
p 

 
? "%?"
?
0?????????

? ?
E__inference_lstm_857_layer_call_and_return_conditional_losses_5137085}./0O?L
E?B
4?1
/?,
inputs/0??????????????????2

 
p

 
? "%?"
?
0?????????

? ?
E__inference_lstm_857_layer_call_and_return_conditional_losses_5137228m./0??<
5?2
$?!
inputs?????????2

 
p 

 
? "%?"
?
0?????????

? ?
E__inference_lstm_857_layer_call_and_return_conditional_losses_5137371m./0??<
5?2
$?!
inputs?????????2

 
p

 
? "%?"
?
0?????????

? ?
*__inference_lstm_857_layer_call_fn_5136766p./0O?L
E?B
4?1
/?,
inputs/0??????????????????2

 
p 

 
? "??????????
?
*__inference_lstm_857_layer_call_fn_5136777p./0O?L
E?B
4?1
/?,
inputs/0??????????????????2

 
p

 
? "??????????
?
*__inference_lstm_857_layer_call_fn_5136788`./0??<
5?2
$?!
inputs?????????2

 
p 

 
? "??????????
?
*__inference_lstm_857_layer_call_fn_5136799`./0??<
5?2
$?!
inputs?????????2

 
p

 
? "??????????
?
J__inference_lstm_cell_855_layer_call_and_return_conditional_losses_5137456?()*??}
v?s
 ?
inputs?????????
K?H
"?
states/0?????????d
"?
states/1?????????d
p 
? "s?p
i?f
?
0/0?????????d
E?B
?
0/1/0?????????d
?
0/1/1?????????d
? ?
J__inference_lstm_cell_855_layer_call_and_return_conditional_losses_5137488?()*??}
v?s
 ?
inputs?????????
K?H
"?
states/0?????????d
"?
states/1?????????d
p
? "s?p
i?f
?
0/0?????????d
E?B
?
0/1/0?????????d
?
0/1/1?????????d
? ?
/__inference_lstm_cell_855_layer_call_fn_5137407?()*??}
v?s
 ?
inputs?????????
K?H
"?
states/0?????????d
"?
states/1?????????d
p 
? "c?`
?
0?????????d
A?>
?
1/0?????????d
?
1/1?????????d?
/__inference_lstm_cell_855_layer_call_fn_5137424?()*??}
v?s
 ?
inputs?????????
K?H
"?
states/0?????????d
"?
states/1?????????d
p
? "c?`
?
0?????????d
A?>
?
1/0?????????d
?
1/1?????????d?
J__inference_lstm_cell_856_layer_call_and_return_conditional_losses_5137554?+,-??}
v?s
 ?
inputs?????????d
K?H
"?
states/0?????????2
"?
states/1?????????2
p 
? "s?p
i?f
?
0/0?????????2
E?B
?
0/1/0?????????2
?
0/1/1?????????2
? ?
J__inference_lstm_cell_856_layer_call_and_return_conditional_losses_5137586?+,-??}
v?s
 ?
inputs?????????d
K?H
"?
states/0?????????2
"?
states/1?????????2
p
? "s?p
i?f
?
0/0?????????2
E?B
?
0/1/0?????????2
?
0/1/1?????????2
? ?
/__inference_lstm_cell_856_layer_call_fn_5137505?+,-??}
v?s
 ?
inputs?????????d
K?H
"?
states/0?????????2
"?
states/1?????????2
p 
? "c?`
?
0?????????2
A?>
?
1/0?????????2
?
1/1?????????2?
/__inference_lstm_cell_856_layer_call_fn_5137522?+,-??}
v?s
 ?
inputs?????????d
K?H
"?
states/0?????????2
"?
states/1?????????2
p
? "c?`
?
0?????????2
A?>
?
1/0?????????2
?
1/1?????????2?
J__inference_lstm_cell_857_layer_call_and_return_conditional_losses_5137652?./0??}
v?s
 ?
inputs?????????2
K?H
"?
states/0?????????

"?
states/1?????????

p 
? "s?p
i?f
?
0/0?????????

E?B
?
0/1/0?????????

?
0/1/1?????????

? ?
J__inference_lstm_cell_857_layer_call_and_return_conditional_losses_5137684?./0??}
v?s
 ?
inputs?????????2
K?H
"?
states/0?????????

"?
states/1?????????

p
? "s?p
i?f
?
0/0?????????

E?B
?
0/1/0?????????

?
0/1/1?????????

? ?
/__inference_lstm_cell_857_layer_call_fn_5137603?./0??}
v?s
 ?
inputs?????????2
K?H
"?
states/0?????????

"?
states/1?????????

p 
? "c?`
?
0?????????

A?>
?
1/0?????????

?
1/1?????????
?
/__inference_lstm_cell_857_layer_call_fn_5137620?./0??}
v?s
 ?
inputs?????????2
K?H
"?
states/0?????????

"?
states/1?????????

p
? "c?`
?
0?????????

A?>
?
1/0?????????

?
1/1?????????
?
K__inference_sequential_285_layer_call_and_return_conditional_losses_5134550y()*+,-./0C?@
9?6
,?)
lstm_855_input?????????
p 

 
? "%?"
?
0?????????
? ?
K__inference_sequential_285_layer_call_and_return_conditional_losses_5134580y()*+,-./0C?@
9?6
,?)
lstm_855_input?????????
p

 
? "%?"
?
0?????????
? ?
K__inference_sequential_285_layer_call_and_return_conditional_losses_5135096q()*+,-./0;?8
1?.
$?!
inputs?????????
p 

 
? "%?"
?
0?????????
? ?
K__inference_sequential_285_layer_call_and_return_conditional_losses_5135523q()*+,-./0;?8
1?.
$?!
inputs?????????
p

 
? "%?"
?
0?????????
? ?
0__inference_sequential_285_layer_call_fn_5133904l()*+,-./0C?@
9?6
,?)
lstm_855_input?????????
p 

 
? "???????????
0__inference_sequential_285_layer_call_fn_5134520l()*+,-./0C?@
9?6
,?)
lstm_855_input?????????
p

 
? "???????????
0__inference_sequential_285_layer_call_fn_5134642d()*+,-./0;?8
1?.
$?!
inputs?????????
p 

 
? "???????????
0__inference_sequential_285_layer_call_fn_5134669d()*+,-./0;?8
1?.
$?!
inputs?????????
p

 
? "???????????
%__inference_signature_wrapper_5134615?()*+,-./0M?J
? 
C?@
>
lstm_855_input,?)
lstm_855_input?????????"5?2
0
	dense_285#? 
	dense_285?????????