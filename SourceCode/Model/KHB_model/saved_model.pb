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
dense_236/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*!
shared_namedense_236/kernel
u
$dense_236/kernel/Read/ReadVariableOpReadVariableOpdense_236/kernel*
_output_shapes

:
*
dtype0
t
dense_236/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_236/bias
m
"dense_236/bias/Read/ReadVariableOpReadVariableOpdense_236/bias*
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
lstm_708/lstm_cell_708/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*.
shared_namelstm_708/lstm_cell_708/kernel
?
1lstm_708/lstm_cell_708/kernel/Read/ReadVariableOpReadVariableOplstm_708/lstm_cell_708/kernel*
_output_shapes
:	?*
dtype0
?
'lstm_708/lstm_cell_708/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*8
shared_name)'lstm_708/lstm_cell_708/recurrent_kernel
?
;lstm_708/lstm_cell_708/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_708/lstm_cell_708/recurrent_kernel*
_output_shapes
:	d?*
dtype0
?
lstm_708/lstm_cell_708/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_708/lstm_cell_708/bias
?
/lstm_708/lstm_cell_708/bias/Read/ReadVariableOpReadVariableOplstm_708/lstm_cell_708/bias*
_output_shapes	
:?*
dtype0
?
lstm_709/lstm_cell_709/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*.
shared_namelstm_709/lstm_cell_709/kernel
?
1lstm_709/lstm_cell_709/kernel/Read/ReadVariableOpReadVariableOplstm_709/lstm_cell_709/kernel*
_output_shapes
:	d?*
dtype0
?
'lstm_709/lstm_cell_709/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*8
shared_name)'lstm_709/lstm_cell_709/recurrent_kernel
?
;lstm_709/lstm_cell_709/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_709/lstm_cell_709/recurrent_kernel*
_output_shapes
:	2?*
dtype0
?
lstm_709/lstm_cell_709/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_709/lstm_cell_709/bias
?
/lstm_709/lstm_cell_709/bias/Read/ReadVariableOpReadVariableOplstm_709/lstm_cell_709/bias*
_output_shapes	
:?*
dtype0
?
lstm_710/lstm_cell_710/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*.
shared_namelstm_710/lstm_cell_710/kernel
?
1lstm_710/lstm_cell_710/kernel/Read/ReadVariableOpReadVariableOplstm_710/lstm_cell_710/kernel*
_output_shapes

:2(*
dtype0
?
'lstm_710/lstm_cell_710/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*8
shared_name)'lstm_710/lstm_cell_710/recurrent_kernel
?
;lstm_710/lstm_cell_710/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_710/lstm_cell_710/recurrent_kernel*
_output_shapes

:
(*
dtype0
?
lstm_710/lstm_cell_710/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*,
shared_namelstm_710/lstm_cell_710/bias
?
/lstm_710/lstm_cell_710/bias/Read/ReadVariableOpReadVariableOplstm_710/lstm_cell_710/bias*
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
Adam/dense_236/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_236/kernel/m
?
+Adam/dense_236/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_236/kernel/m*
_output_shapes

:
*
dtype0
?
Adam/dense_236/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_236/bias/m
{
)Adam/dense_236/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_236/bias/m*
_output_shapes
:*
dtype0
?
$Adam/lstm_708/lstm_cell_708/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_708/lstm_cell_708/kernel/m
?
8Adam/lstm_708/lstm_cell_708/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_708/lstm_cell_708/kernel/m*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_708/lstm_cell_708/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_708/lstm_cell_708/recurrent_kernel/m
?
BAdam/lstm_708/lstm_cell_708/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_708/lstm_cell_708/recurrent_kernel/m*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_708/lstm_cell_708/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_708/lstm_cell_708/bias/m
?
6Adam/lstm_708/lstm_cell_708/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_708/lstm_cell_708/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_709/lstm_cell_709/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_709/lstm_cell_709/kernel/m
?
8Adam/lstm_709/lstm_cell_709/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_709/lstm_cell_709/kernel/m*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_709/lstm_cell_709/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_709/lstm_cell_709/recurrent_kernel/m
?
BAdam/lstm_709/lstm_cell_709/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_709/lstm_cell_709/recurrent_kernel/m*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_709/lstm_cell_709/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_709/lstm_cell_709/bias/m
?
6Adam/lstm_709/lstm_cell_709/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_709/lstm_cell_709/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_710/lstm_cell_710/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_710/lstm_cell_710/kernel/m
?
8Adam/lstm_710/lstm_cell_710/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_710/lstm_cell_710/kernel/m*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_710/lstm_cell_710/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_710/lstm_cell_710/recurrent_kernel/m
?
BAdam/lstm_710/lstm_cell_710/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_710/lstm_cell_710/recurrent_kernel/m*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_710/lstm_cell_710/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_710/lstm_cell_710/bias/m
?
6Adam/lstm_710/lstm_cell_710/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_710/lstm_cell_710/bias/m*
_output_shapes
:(*
dtype0
?
Adam/dense_236/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_236/kernel/v
?
+Adam/dense_236/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_236/kernel/v*
_output_shapes

:
*
dtype0
?
Adam/dense_236/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_236/bias/v
{
)Adam/dense_236/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_236/bias/v*
_output_shapes
:*
dtype0
?
$Adam/lstm_708/lstm_cell_708/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_708/lstm_cell_708/kernel/v
?
8Adam/lstm_708/lstm_cell_708/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_708/lstm_cell_708/kernel/v*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_708/lstm_cell_708/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_708/lstm_cell_708/recurrent_kernel/v
?
BAdam/lstm_708/lstm_cell_708/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_708/lstm_cell_708/recurrent_kernel/v*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_708/lstm_cell_708/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_708/lstm_cell_708/bias/v
?
6Adam/lstm_708/lstm_cell_708/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_708/lstm_cell_708/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_709/lstm_cell_709/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_709/lstm_cell_709/kernel/v
?
8Adam/lstm_709/lstm_cell_709/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_709/lstm_cell_709/kernel/v*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_709/lstm_cell_709/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_709/lstm_cell_709/recurrent_kernel/v
?
BAdam/lstm_709/lstm_cell_709/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_709/lstm_cell_709/recurrent_kernel/v*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_709/lstm_cell_709/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_709/lstm_cell_709/bias/v
?
6Adam/lstm_709/lstm_cell_709/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_709/lstm_cell_709/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_710/lstm_cell_710/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_710/lstm_cell_710/kernel/v
?
8Adam/lstm_710/lstm_cell_710/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_710/lstm_cell_710/kernel/v*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_710/lstm_cell_710/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_710/lstm_cell_710/recurrent_kernel/v
?
BAdam/lstm_710/lstm_cell_710/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_710/lstm_cell_710/recurrent_kernel/v*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_710/lstm_cell_710/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_710/lstm_cell_710/bias/v
?
6Adam/lstm_710/lstm_cell_710/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_710/lstm_cell_710/bias/v*
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
VARIABLE_VALUEdense_236/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_236/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUElstm_708/lstm_cell_708/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_708/lstm_cell_708/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_708/lstm_cell_708/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_709/lstm_cell_709/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_709/lstm_cell_709/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_709/lstm_cell_709/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_710/lstm_cell_710/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_710/lstm_cell_710/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_710/lstm_cell_710/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEAdam/dense_236/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_236/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_708/lstm_cell_708/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_708/lstm_cell_708/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_708/lstm_cell_708/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_709/lstm_cell_709/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_709/lstm_cell_709/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_709/lstm_cell_709/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_710/lstm_cell_710/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_710/lstm_cell_710/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_710/lstm_cell_710/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_236/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_236/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_708/lstm_cell_708/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_708/lstm_cell_708/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_708/lstm_cell_708/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_709/lstm_cell_709/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_709/lstm_cell_709/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_709/lstm_cell_709/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_710/lstm_cell_710/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_710/lstm_cell_710/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_710/lstm_cell_710/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_lstm_708_inputPlaceholder*+
_output_shapes
:?????????*
dtype0* 
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_708_inputlstm_708/lstm_cell_708/kernel'lstm_708/lstm_cell_708/recurrent_kernellstm_708/lstm_cell_708/biaslstm_709/lstm_cell_709/kernel'lstm_709/lstm_cell_709/recurrent_kernellstm_709/lstm_cell_709/biaslstm_710/lstm_cell_710/kernel'lstm_710/lstm_cell_710/recurrent_kernellstm_710/lstm_cell_710/biasdense_236/kerneldense_236/bias*
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
%__inference_signature_wrapper_4430682
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$dense_236/kernel/Read/ReadVariableOp"dense_236/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_708/lstm_cell_708/kernel/Read/ReadVariableOp;lstm_708/lstm_cell_708/recurrent_kernel/Read/ReadVariableOp/lstm_708/lstm_cell_708/bias/Read/ReadVariableOp1lstm_709/lstm_cell_709/kernel/Read/ReadVariableOp;lstm_709/lstm_cell_709/recurrent_kernel/Read/ReadVariableOp/lstm_709/lstm_cell_709/bias/Read/ReadVariableOp1lstm_710/lstm_cell_710/kernel/Read/ReadVariableOp;lstm_710/lstm_cell_710/recurrent_kernel/Read/ReadVariableOp/lstm_710/lstm_cell_710/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp+Adam/dense_236/kernel/m/Read/ReadVariableOp)Adam/dense_236/bias/m/Read/ReadVariableOp8Adam/lstm_708/lstm_cell_708/kernel/m/Read/ReadVariableOpBAdam/lstm_708/lstm_cell_708/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_708/lstm_cell_708/bias/m/Read/ReadVariableOp8Adam/lstm_709/lstm_cell_709/kernel/m/Read/ReadVariableOpBAdam/lstm_709/lstm_cell_709/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_709/lstm_cell_709/bias/m/Read/ReadVariableOp8Adam/lstm_710/lstm_cell_710/kernel/m/Read/ReadVariableOpBAdam/lstm_710/lstm_cell_710/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_710/lstm_cell_710/bias/m/Read/ReadVariableOp+Adam/dense_236/kernel/v/Read/ReadVariableOp)Adam/dense_236/bias/v/Read/ReadVariableOp8Adam/lstm_708/lstm_cell_708/kernel/v/Read/ReadVariableOpBAdam/lstm_708/lstm_cell_708/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_708/lstm_cell_708/bias/v/Read/ReadVariableOp8Adam/lstm_709/lstm_cell_709/kernel/v/Read/ReadVariableOpBAdam/lstm_709/lstm_cell_709/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_709/lstm_cell_709/bias/v/Read/ReadVariableOp8Adam/lstm_710/lstm_cell_710/kernel/v/Read/ReadVariableOpBAdam/lstm_710/lstm_cell_710/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_710/lstm_cell_710/bias/v/Read/ReadVariableOpConst*5
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
 __inference__traced_save_4433894
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_236/kerneldense_236/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_708/lstm_cell_708/kernel'lstm_708/lstm_cell_708/recurrent_kernellstm_708/lstm_cell_708/biaslstm_709/lstm_cell_709/kernel'lstm_709/lstm_cell_709/recurrent_kernellstm_709/lstm_cell_709/biaslstm_710/lstm_cell_710/kernel'lstm_710/lstm_cell_710/recurrent_kernellstm_710/lstm_cell_710/biastotalcountAdam/dense_236/kernel/mAdam/dense_236/bias/m$Adam/lstm_708/lstm_cell_708/kernel/m.Adam/lstm_708/lstm_cell_708/recurrent_kernel/m"Adam/lstm_708/lstm_cell_708/bias/m$Adam/lstm_709/lstm_cell_709/kernel/m.Adam/lstm_709/lstm_cell_709/recurrent_kernel/m"Adam/lstm_709/lstm_cell_709/bias/m$Adam/lstm_710/lstm_cell_710/kernel/m.Adam/lstm_710/lstm_cell_710/recurrent_kernel/m"Adam/lstm_710/lstm_cell_710/bias/mAdam/dense_236/kernel/vAdam/dense_236/bias/v$Adam/lstm_708/lstm_cell_708/kernel/v.Adam/lstm_708/lstm_cell_708/recurrent_kernel/v"Adam/lstm_708/lstm_cell_708/bias/v$Adam/lstm_709/lstm_cell_709/kernel/v.Adam/lstm_709/lstm_cell_709/recurrent_kernel/v"Adam/lstm_709/lstm_cell_709/bias/v$Adam/lstm_710/lstm_cell_710/kernel/v.Adam/lstm_710/lstm_cell_710/recurrent_kernel/v"Adam/lstm_710/lstm_cell_710/bias/v*4
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
#__inference__traced_restore_4434024??+
?
?
while_cond_4431978
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4431978___redundant_placeholder05
1while_while_cond_4431978___redundant_placeholder15
1while_while_cond_4431978___redundant_placeholder25
1while_while_cond_4431978___redundant_placeholder3
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
while_cond_4433210
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4433210___redundant_placeholder05
1while_while_cond_4433210___redundant_placeholder15
1while_while_cond_4433210___redundant_placeholder25
1while_while_cond_4433210___redundant_placeholder3
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
?

?
0__inference_sequential_236_layer_call_fn_4430587
lstm_708_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_708_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_236_layer_call_and_return_conditional_losses_4430535o
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
_user_specified_namelstm_708_input
?
?
K__inference_sequential_236_layer_call_and_return_conditional_losses_4429946

inputs#
lstm_708_4429622:	?#
lstm_708_4429624:	d?
lstm_708_4429626:	?#
lstm_709_4429772:	d?#
lstm_709_4429774:	2?
lstm_709_4429776:	?"
lstm_710_4429922:2("
lstm_710_4429924:
(
lstm_710_4429926:(#
dense_236_4429940:

dense_236_4429942:
identity??!dense_236/StatefulPartitionedCall? lstm_708/StatefulPartitionedCall? lstm_709/StatefulPartitionedCall? lstm_710/StatefulPartitionedCall?
 lstm_708/StatefulPartitionedCallStatefulPartitionedCallinputslstm_708_4429622lstm_708_4429624lstm_708_4429626*
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
E__inference_lstm_708_layer_call_and_return_conditional_losses_4429621?
 lstm_709/StatefulPartitionedCallStatefulPartitionedCall)lstm_708/StatefulPartitionedCall:output:0lstm_709_4429772lstm_709_4429774lstm_709_4429776*
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
E__inference_lstm_709_layer_call_and_return_conditional_losses_4429771?
 lstm_710/StatefulPartitionedCallStatefulPartitionedCall)lstm_709/StatefulPartitionedCall:output:0lstm_710_4429922lstm_710_4429924lstm_710_4429926*
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
E__inference_lstm_710_layer_call_and_return_conditional_losses_4429921?
!dense_236/StatefulPartitionedCallStatefulPartitionedCall)lstm_710/StatefulPartitionedCall:output:0dense_236_4429940dense_236_4429942*
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
F__inference_dense_236_layer_call_and_return_conditional_losses_4429939y
IdentityIdentity*dense_236/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_236/StatefulPartitionedCall!^lstm_708/StatefulPartitionedCall!^lstm_709/StatefulPartitionedCall!^lstm_710/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_236/StatefulPartitionedCall!dense_236/StatefulPartitionedCall2D
 lstm_708/StatefulPartitionedCall lstm_708/StatefulPartitionedCall2D
 lstm_709/StatefulPartitionedCall lstm_709/StatefulPartitionedCall2D
 lstm_710/StatefulPartitionedCall lstm_710/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
lstm_709_while_cond_4430933.
*lstm_709_while_lstm_709_while_loop_counter4
0lstm_709_while_lstm_709_while_maximum_iterations
lstm_709_while_placeholder 
lstm_709_while_placeholder_1 
lstm_709_while_placeholder_2 
lstm_709_while_placeholder_30
,lstm_709_while_less_lstm_709_strided_slice_1G
Clstm_709_while_lstm_709_while_cond_4430933___redundant_placeholder0G
Clstm_709_while_lstm_709_while_cond_4430933___redundant_placeholder1G
Clstm_709_while_lstm_709_while_cond_4430933___redundant_placeholder2G
Clstm_709_while_lstm_709_while_cond_4430933___redundant_placeholder3
lstm_709_while_identity
?
lstm_709/while/LessLesslstm_709_while_placeholder,lstm_709_while_less_lstm_709_strided_slice_1*
T0*
_output_shapes
: ]
lstm_709/while/IdentityIdentitylstm_709/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_709_while_identity lstm_709/while/Identity:output:0*(
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
while_body_4431979
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_708_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_708_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_708_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_708_matmul_readvariableop_resource:	?G
4while_lstm_cell_708_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_708_biasadd_readvariableop_resource:	???*while/lstm_cell_708/BiasAdd/ReadVariableOp?)while/lstm_cell_708/MatMul/ReadVariableOp?+while/lstm_cell_708/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_708/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_708_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_708/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_708/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_708/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_708_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_708/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_708/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_708/addAddV2$while/lstm_cell_708/MatMul:product:0&while/lstm_cell_708/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_708/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_708_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_708/BiasAddBiasAddwhile/lstm_cell_708/add:z:02while/lstm_cell_708/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_708/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_708/splitSplit,while/lstm_cell_708/split/split_dim:output:0$while/lstm_cell_708/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_708/SigmoidSigmoid"while/lstm_cell_708/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_708/Sigmoid_1Sigmoid"while/lstm_cell_708/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_708/mulMul!while/lstm_cell_708/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_708/ReluRelu"while/lstm_cell_708/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_708/mul_1Mulwhile/lstm_cell_708/Sigmoid:y:0&while/lstm_cell_708/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_708/add_1AddV2while/lstm_cell_708/mul:z:0while/lstm_cell_708/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_708/Sigmoid_2Sigmoid"while/lstm_cell_708/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_708/Relu_1Reluwhile/lstm_cell_708/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_708/mul_2Mul!while/lstm_cell_708/Sigmoid_2:y:0(while/lstm_cell_708/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_708/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_708/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_708/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_708/BiasAdd/ReadVariableOp*^while/lstm_cell_708/MatMul/ReadVariableOp,^while/lstm_cell_708/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_708_biasadd_readvariableop_resource5while_lstm_cell_708_biasadd_readvariableop_resource_0"n
4while_lstm_cell_708_matmul_1_readvariableop_resource6while_lstm_cell_708_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_708_matmul_readvariableop_resource4while_lstm_cell_708_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_708/BiasAdd/ReadVariableOp*while/lstm_cell_708/BiasAdd/ReadVariableOp2V
)while/lstm_cell_708/MatMul/ReadVariableOp)while/lstm_cell_708/MatMul/ReadVariableOp2Z
+while/lstm_cell_708/MatMul_1/ReadVariableOp+while/lstm_cell_708/MatMul_1/ReadVariableOp: 
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
?
?
+__inference_dense_236_layer_call_fn_4433447

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
F__inference_dense_236_layer_call_and_return_conditional_losses_4429939o
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
?
?
*__inference_lstm_708_layer_call_fn_4431612
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
E__inference_lstm_708_layer_call_and_return_conditional_losses_4428763|
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
?
?
while_cond_4430382
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4430382___redundant_placeholder05
1while_while_cond_4430382___redundant_placeholder15
1while_while_cond_4430382___redundant_placeholder25
1while_while_cond_4430382___redundant_placeholder3
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
lstm_708_while_cond_4430794.
*lstm_708_while_lstm_708_while_loop_counter4
0lstm_708_while_lstm_708_while_maximum_iterations
lstm_708_while_placeholder 
lstm_708_while_placeholder_1 
lstm_708_while_placeholder_2 
lstm_708_while_placeholder_30
,lstm_708_while_less_lstm_708_strided_slice_1G
Clstm_708_while_lstm_708_while_cond_4430794___redundant_placeholder0G
Clstm_708_while_lstm_708_while_cond_4430794___redundant_placeholder1G
Clstm_708_while_lstm_708_while_cond_4430794___redundant_placeholder2G
Clstm_708_while_lstm_708_while_cond_4430794___redundant_placeholder3
lstm_708_while_identity
?
lstm_708/while/LessLesslstm_708_while_placeholder,lstm_708_while_less_lstm_708_strided_slice_1*
T0*
_output_shapes
: ]
lstm_708/while/IdentityIdentitylstm_708/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_708_while_identity lstm_708/while/Identity:output:0*(
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
?
?
J__inference_lstm_cell_709_layer_call_and_return_conditional_losses_4433653

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
?#
?
while_body_4428694
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_708_4428718_0:	?0
while_lstm_cell_708_4428720_0:	d?,
while_lstm_cell_708_4428722_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_708_4428718:	?.
while_lstm_cell_708_4428720:	d?*
while_lstm_cell_708_4428722:	???+while/lstm_cell_708/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_708/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_708_4428718_0while_lstm_cell_708_4428720_0while_lstm_cell_708_4428722_0*
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
J__inference_lstm_cell_708_layer_call_and_return_conditional_losses_4428635?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_708/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_708/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_708/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_708/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_708_4428718while_lstm_cell_708_4428718_0"<
while_lstm_cell_708_4428720while_lstm_cell_708_4428720_0"<
while_lstm_cell_708_4428722while_lstm_cell_708_4428722_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_708/StatefulPartitionedCall+while/lstm_cell_708/StatefulPartitionedCall: 
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
/__inference_lstm_cell_708_layer_call_fn_4433491

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
J__inference_lstm_cell_708_layer_call_and_return_conditional_losses_4428635o
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
?8
?
while_body_4431836
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_708_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_708_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_708_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_708_matmul_readvariableop_resource:	?G
4while_lstm_cell_708_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_708_biasadd_readvariableop_resource:	???*while/lstm_cell_708/BiasAdd/ReadVariableOp?)while/lstm_cell_708/MatMul/ReadVariableOp?+while/lstm_cell_708/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_708/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_708_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_708/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_708/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_708/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_708_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_708/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_708/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_708/addAddV2$while/lstm_cell_708/MatMul:product:0&while/lstm_cell_708/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_708/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_708_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_708/BiasAddBiasAddwhile/lstm_cell_708/add:z:02while/lstm_cell_708/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_708/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_708/splitSplit,while/lstm_cell_708/split/split_dim:output:0$while/lstm_cell_708/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_708/SigmoidSigmoid"while/lstm_cell_708/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_708/Sigmoid_1Sigmoid"while/lstm_cell_708/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_708/mulMul!while/lstm_cell_708/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_708/ReluRelu"while/lstm_cell_708/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_708/mul_1Mulwhile/lstm_cell_708/Sigmoid:y:0&while/lstm_cell_708/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_708/add_1AddV2while/lstm_cell_708/mul:z:0while/lstm_cell_708/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_708/Sigmoid_2Sigmoid"while/lstm_cell_708/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_708/Relu_1Reluwhile/lstm_cell_708/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_708/mul_2Mul!while/lstm_cell_708/Sigmoid_2:y:0(while/lstm_cell_708/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_708/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_708/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_708/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_708/BiasAdd/ReadVariableOp*^while/lstm_cell_708/MatMul/ReadVariableOp,^while/lstm_cell_708/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_708_biasadd_readvariableop_resource5while_lstm_cell_708_biasadd_readvariableop_resource_0"n
4while_lstm_cell_708_matmul_1_readvariableop_resource6while_lstm_cell_708_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_708_matmul_readvariableop_resource4while_lstm_cell_708_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_708/BiasAdd/ReadVariableOp*while/lstm_cell_708/BiasAdd/ReadVariableOp2V
)while/lstm_cell_708/MatMul/ReadVariableOp)while/lstm_cell_708/MatMul/ReadVariableOp2Z
+while/lstm_cell_708/MatMul_1/ReadVariableOp+while/lstm_cell_708/MatMul_1/ReadVariableOp: 
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
*__inference_lstm_710_layer_call_fn_4432833
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
E__inference_lstm_710_layer_call_and_return_conditional_losses_4429272o
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
J__inference_lstm_cell_710_layer_call_and_return_conditional_losses_4429189

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
?

?
lstm_708_while_cond_4431221.
*lstm_708_while_lstm_708_while_loop_counter4
0lstm_708_while_lstm_708_while_maximum_iterations
lstm_708_while_placeholder 
lstm_708_while_placeholder_1 
lstm_708_while_placeholder_2 
lstm_708_while_placeholder_30
,lstm_708_while_less_lstm_708_strided_slice_1G
Clstm_708_while_lstm_708_while_cond_4431221___redundant_placeholder0G
Clstm_708_while_lstm_708_while_cond_4431221___redundant_placeholder1G
Clstm_708_while_lstm_708_while_cond_4431221___redundant_placeholder2G
Clstm_708_while_lstm_708_while_cond_4431221___redundant_placeholder3
lstm_708_while_identity
?
lstm_708/while/LessLesslstm_708_while_placeholder,lstm_708_while_less_lstm_708_strided_slice_1*
T0*
_output_shapes
: ]
lstm_708/while/IdentityIdentitylstm_708/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_708_while_identity lstm_708/while/Identity:output:0*(
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
E__inference_lstm_710_layer_call_and_return_conditional_losses_4429463

inputs'
lstm_cell_710_4429381:2('
lstm_cell_710_4429383:
(#
lstm_cell_710_4429385:(
identity??%lstm_cell_710/StatefulPartitionedCall?while;
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
%lstm_cell_710/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_710_4429381lstm_cell_710_4429383lstm_cell_710_4429385*
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
J__inference_lstm_cell_710_layer_call_and_return_conditional_losses_4429335n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_710_4429381lstm_cell_710_4429383lstm_cell_710_4429385*
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
while_body_4429394*
condR
while_cond_4429393*K
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
NoOpNoOp&^lstm_cell_710/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_710/StatefulPartitionedCall%lstm_cell_710/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?T
?
*sequential_236_lstm_708_while_body_4428054L
Hsequential_236_lstm_708_while_sequential_236_lstm_708_while_loop_counterR
Nsequential_236_lstm_708_while_sequential_236_lstm_708_while_maximum_iterations-
)sequential_236_lstm_708_while_placeholder/
+sequential_236_lstm_708_while_placeholder_1/
+sequential_236_lstm_708_while_placeholder_2/
+sequential_236_lstm_708_while_placeholder_3K
Gsequential_236_lstm_708_while_sequential_236_lstm_708_strided_slice_1_0?
?sequential_236_lstm_708_while_tensorarrayv2read_tensorlistgetitem_sequential_236_lstm_708_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_236_lstm_708_while_lstm_cell_708_matmul_readvariableop_resource_0:	?a
Nsequential_236_lstm_708_while_lstm_cell_708_matmul_1_readvariableop_resource_0:	d?\
Msequential_236_lstm_708_while_lstm_cell_708_biasadd_readvariableop_resource_0:	?*
&sequential_236_lstm_708_while_identity,
(sequential_236_lstm_708_while_identity_1,
(sequential_236_lstm_708_while_identity_2,
(sequential_236_lstm_708_while_identity_3,
(sequential_236_lstm_708_while_identity_4,
(sequential_236_lstm_708_while_identity_5I
Esequential_236_lstm_708_while_sequential_236_lstm_708_strided_slice_1?
?sequential_236_lstm_708_while_tensorarrayv2read_tensorlistgetitem_sequential_236_lstm_708_tensorarrayunstack_tensorlistfromtensor]
Jsequential_236_lstm_708_while_lstm_cell_708_matmul_readvariableop_resource:	?_
Lsequential_236_lstm_708_while_lstm_cell_708_matmul_1_readvariableop_resource:	d?Z
Ksequential_236_lstm_708_while_lstm_cell_708_biasadd_readvariableop_resource:	???Bsequential_236/lstm_708/while/lstm_cell_708/BiasAdd/ReadVariableOp?Asequential_236/lstm_708/while/lstm_cell_708/MatMul/ReadVariableOp?Csequential_236/lstm_708/while/lstm_cell_708/MatMul_1/ReadVariableOp?
Osequential_236/lstm_708/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
Asequential_236/lstm_708/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_236_lstm_708_while_tensorarrayv2read_tensorlistgetitem_sequential_236_lstm_708_tensorarrayunstack_tensorlistfromtensor_0)sequential_236_lstm_708_while_placeholderXsequential_236/lstm_708/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
Asequential_236/lstm_708/while/lstm_cell_708/MatMul/ReadVariableOpReadVariableOpLsequential_236_lstm_708_while_lstm_cell_708_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
2sequential_236/lstm_708/while/lstm_cell_708/MatMulMatMulHsequential_236/lstm_708/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_236/lstm_708/while/lstm_cell_708/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_236/lstm_708/while/lstm_cell_708/MatMul_1/ReadVariableOpReadVariableOpNsequential_236_lstm_708_while_lstm_cell_708_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
4sequential_236/lstm_708/while/lstm_cell_708/MatMul_1MatMul+sequential_236_lstm_708_while_placeholder_2Ksequential_236/lstm_708/while/lstm_cell_708/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_236/lstm_708/while/lstm_cell_708/addAddV2<sequential_236/lstm_708/while/lstm_cell_708/MatMul:product:0>sequential_236/lstm_708/while/lstm_cell_708/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_236/lstm_708/while/lstm_cell_708/BiasAdd/ReadVariableOpReadVariableOpMsequential_236_lstm_708_while_lstm_cell_708_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_236/lstm_708/while/lstm_cell_708/BiasAddBiasAdd3sequential_236/lstm_708/while/lstm_cell_708/add:z:0Jsequential_236/lstm_708/while/lstm_cell_708/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_236/lstm_708/while/lstm_cell_708/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_236/lstm_708/while/lstm_cell_708/splitSplitDsequential_236/lstm_708/while/lstm_cell_708/split/split_dim:output:0<sequential_236/lstm_708/while/lstm_cell_708/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
3sequential_236/lstm_708/while/lstm_cell_708/SigmoidSigmoid:sequential_236/lstm_708/while/lstm_cell_708/split:output:0*
T0*'
_output_shapes
:?????????d?
5sequential_236/lstm_708/while/lstm_cell_708/Sigmoid_1Sigmoid:sequential_236/lstm_708/while/lstm_cell_708/split:output:1*
T0*'
_output_shapes
:?????????d?
/sequential_236/lstm_708/while/lstm_cell_708/mulMul9sequential_236/lstm_708/while/lstm_cell_708/Sigmoid_1:y:0+sequential_236_lstm_708_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
0sequential_236/lstm_708/while/lstm_cell_708/ReluRelu:sequential_236/lstm_708/while/lstm_cell_708/split:output:2*
T0*'
_output_shapes
:?????????d?
1sequential_236/lstm_708/while/lstm_cell_708/mul_1Mul7sequential_236/lstm_708/while/lstm_cell_708/Sigmoid:y:0>sequential_236/lstm_708/while/lstm_cell_708/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
1sequential_236/lstm_708/while/lstm_cell_708/add_1AddV23sequential_236/lstm_708/while/lstm_cell_708/mul:z:05sequential_236/lstm_708/while/lstm_cell_708/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
5sequential_236/lstm_708/while/lstm_cell_708/Sigmoid_2Sigmoid:sequential_236/lstm_708/while/lstm_cell_708/split:output:3*
T0*'
_output_shapes
:?????????d?
2sequential_236/lstm_708/while/lstm_cell_708/Relu_1Relu5sequential_236/lstm_708/while/lstm_cell_708/add_1:z:0*
T0*'
_output_shapes
:?????????d?
1sequential_236/lstm_708/while/lstm_cell_708/mul_2Mul9sequential_236/lstm_708/while/lstm_cell_708/Sigmoid_2:y:0@sequential_236/lstm_708/while/lstm_cell_708/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
Bsequential_236/lstm_708/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_236_lstm_708_while_placeholder_1)sequential_236_lstm_708_while_placeholder5sequential_236/lstm_708/while/lstm_cell_708/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_236/lstm_708/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_236/lstm_708/while/addAddV2)sequential_236_lstm_708_while_placeholder,sequential_236/lstm_708/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_236/lstm_708/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_236/lstm_708/while/add_1AddV2Hsequential_236_lstm_708_while_sequential_236_lstm_708_while_loop_counter.sequential_236/lstm_708/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_236/lstm_708/while/IdentityIdentity'sequential_236/lstm_708/while/add_1:z:0#^sequential_236/lstm_708/while/NoOp*
T0*
_output_shapes
: ?
(sequential_236/lstm_708/while/Identity_1IdentityNsequential_236_lstm_708_while_sequential_236_lstm_708_while_maximum_iterations#^sequential_236/lstm_708/while/NoOp*
T0*
_output_shapes
: ?
(sequential_236/lstm_708/while/Identity_2Identity%sequential_236/lstm_708/while/add:z:0#^sequential_236/lstm_708/while/NoOp*
T0*
_output_shapes
: ?
(sequential_236/lstm_708/while/Identity_3IdentityRsequential_236/lstm_708/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_236/lstm_708/while/NoOp*
T0*
_output_shapes
: ?
(sequential_236/lstm_708/while/Identity_4Identity5sequential_236/lstm_708/while/lstm_cell_708/mul_2:z:0#^sequential_236/lstm_708/while/NoOp*
T0*'
_output_shapes
:?????????d?
(sequential_236/lstm_708/while/Identity_5Identity5sequential_236/lstm_708/while/lstm_cell_708/add_1:z:0#^sequential_236/lstm_708/while/NoOp*
T0*'
_output_shapes
:?????????d?
"sequential_236/lstm_708/while/NoOpNoOpC^sequential_236/lstm_708/while/lstm_cell_708/BiasAdd/ReadVariableOpB^sequential_236/lstm_708/while/lstm_cell_708/MatMul/ReadVariableOpD^sequential_236/lstm_708/while/lstm_cell_708/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_236_lstm_708_while_identity/sequential_236/lstm_708/while/Identity:output:0"]
(sequential_236_lstm_708_while_identity_11sequential_236/lstm_708/while/Identity_1:output:0"]
(sequential_236_lstm_708_while_identity_21sequential_236/lstm_708/while/Identity_2:output:0"]
(sequential_236_lstm_708_while_identity_31sequential_236/lstm_708/while/Identity_3:output:0"]
(sequential_236_lstm_708_while_identity_41sequential_236/lstm_708/while/Identity_4:output:0"]
(sequential_236_lstm_708_while_identity_51sequential_236/lstm_708/while/Identity_5:output:0"?
Ksequential_236_lstm_708_while_lstm_cell_708_biasadd_readvariableop_resourceMsequential_236_lstm_708_while_lstm_cell_708_biasadd_readvariableop_resource_0"?
Lsequential_236_lstm_708_while_lstm_cell_708_matmul_1_readvariableop_resourceNsequential_236_lstm_708_while_lstm_cell_708_matmul_1_readvariableop_resource_0"?
Jsequential_236_lstm_708_while_lstm_cell_708_matmul_readvariableop_resourceLsequential_236_lstm_708_while_lstm_cell_708_matmul_readvariableop_resource_0"?
Esequential_236_lstm_708_while_sequential_236_lstm_708_strided_slice_1Gsequential_236_lstm_708_while_sequential_236_lstm_708_strided_slice_1_0"?
?sequential_236_lstm_708_while_tensorarrayv2read_tensorlistgetitem_sequential_236_lstm_708_tensorarrayunstack_tensorlistfromtensor?sequential_236_lstm_708_while_tensorarrayv2read_tensorlistgetitem_sequential_236_lstm_708_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2?
Bsequential_236/lstm_708/while/lstm_cell_708/BiasAdd/ReadVariableOpBsequential_236/lstm_708/while/lstm_cell_708/BiasAdd/ReadVariableOp2?
Asequential_236/lstm_708/while/lstm_cell_708/MatMul/ReadVariableOpAsequential_236/lstm_708/while/lstm_cell_708/MatMul/ReadVariableOp2?
Csequential_236/lstm_708/while/lstm_cell_708/MatMul_1/ReadVariableOpCsequential_236/lstm_708/while/lstm_cell_708/MatMul_1/ReadVariableOp: 
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
*__inference_lstm_708_layer_call_fn_4431634

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
E__inference_lstm_708_layer_call_and_return_conditional_losses_4430467s
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
?
?
K__inference_sequential_236_layer_call_and_return_conditional_losses_4430647
lstm_708_input#
lstm_708_4430620:	?#
lstm_708_4430622:	d?
lstm_708_4430624:	?#
lstm_709_4430627:	d?#
lstm_709_4430629:	2?
lstm_709_4430631:	?"
lstm_710_4430634:2("
lstm_710_4430636:
(
lstm_710_4430638:(#
dense_236_4430641:

dense_236_4430643:
identity??!dense_236/StatefulPartitionedCall? lstm_708/StatefulPartitionedCall? lstm_709/StatefulPartitionedCall? lstm_710/StatefulPartitionedCall?
 lstm_708/StatefulPartitionedCallStatefulPartitionedCalllstm_708_inputlstm_708_4430620lstm_708_4430622lstm_708_4430624*
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
E__inference_lstm_708_layer_call_and_return_conditional_losses_4430467?
 lstm_709/StatefulPartitionedCallStatefulPartitionedCall)lstm_708/StatefulPartitionedCall:output:0lstm_709_4430627lstm_709_4430629lstm_709_4430631*
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
E__inference_lstm_709_layer_call_and_return_conditional_losses_4430302?
 lstm_710/StatefulPartitionedCallStatefulPartitionedCall)lstm_709/StatefulPartitionedCall:output:0lstm_710_4430634lstm_710_4430636lstm_710_4430638*
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
E__inference_lstm_710_layer_call_and_return_conditional_losses_4430137?
!dense_236/StatefulPartitionedCallStatefulPartitionedCall)lstm_710/StatefulPartitionedCall:output:0dense_236_4430641dense_236_4430643*
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
F__inference_dense_236_layer_call_and_return_conditional_losses_4429939y
IdentityIdentity*dense_236/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_236/StatefulPartitionedCall!^lstm_708/StatefulPartitionedCall!^lstm_709/StatefulPartitionedCall!^lstm_710/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_236/StatefulPartitionedCall!dense_236/StatefulPartitionedCall2D
 lstm_708/StatefulPartitionedCall lstm_708/StatefulPartitionedCall2D
 lstm_709/StatefulPartitionedCall lstm_709/StatefulPartitionedCall2D
 lstm_710/StatefulPartitionedCall lstm_710/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_708_input
?J
?
E__inference_lstm_708_layer_call_and_return_conditional_losses_4432063

inputs?
,lstm_cell_708_matmul_readvariableop_resource:	?A
.lstm_cell_708_matmul_1_readvariableop_resource:	d?<
-lstm_cell_708_biasadd_readvariableop_resource:	?
identity??$lstm_cell_708/BiasAdd/ReadVariableOp?#lstm_cell_708/MatMul/ReadVariableOp?%lstm_cell_708/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_708/MatMul/ReadVariableOpReadVariableOp,lstm_cell_708_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_708/MatMulMatMulstrided_slice_2:output:0+lstm_cell_708/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_708/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_708_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_708/MatMul_1MatMulzeros:output:0-lstm_cell_708/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_708/addAddV2lstm_cell_708/MatMul:product:0 lstm_cell_708/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_708/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_708_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_708/BiasAddBiasAddlstm_cell_708/add:z:0,lstm_cell_708/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_708/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_708/splitSplit&lstm_cell_708/split/split_dim:output:0lstm_cell_708/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_708/SigmoidSigmoidlstm_cell_708/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_708/Sigmoid_1Sigmoidlstm_cell_708/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_708/mulMullstm_cell_708/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_708/ReluRelulstm_cell_708/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_708/mul_1Mullstm_cell_708/Sigmoid:y:0 lstm_cell_708/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_708/add_1AddV2lstm_cell_708/mul:z:0lstm_cell_708/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_708/Sigmoid_2Sigmoidlstm_cell_708/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_708/Relu_1Relulstm_cell_708/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_708/mul_2Mullstm_cell_708/Sigmoid_2:y:0"lstm_cell_708/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_708_matmul_readvariableop_resource.lstm_cell_708_matmul_1_readvariableop_resource-lstm_cell_708_biasadd_readvariableop_resource*
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
while_body_4431979*
condR
while_cond_4431978*K
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
NoOpNoOp%^lstm_cell_708/BiasAdd/ReadVariableOp$^lstm_cell_708/MatMul/ReadVariableOp&^lstm_cell_708/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_708/BiasAdd/ReadVariableOp$lstm_cell_708/BiasAdd/ReadVariableOp2J
#lstm_cell_708/MatMul/ReadVariableOp#lstm_cell_708/MatMul/ReadVariableOp2N
%lstm_cell_708/MatMul_1/ReadVariableOp%lstm_cell_708/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
lstm_710_while_cond_4431072.
*lstm_710_while_lstm_710_while_loop_counter4
0lstm_710_while_lstm_710_while_maximum_iterations
lstm_710_while_placeholder 
lstm_710_while_placeholder_1 
lstm_710_while_placeholder_2 
lstm_710_while_placeholder_30
,lstm_710_while_less_lstm_710_strided_slice_1G
Clstm_710_while_lstm_710_while_cond_4431072___redundant_placeholder0G
Clstm_710_while_lstm_710_while_cond_4431072___redundant_placeholder1G
Clstm_710_while_lstm_710_while_cond_4431072___redundant_placeholder2G
Clstm_710_while_lstm_710_while_cond_4431072___redundant_placeholder3
lstm_710_while_identity
?
lstm_710/while/LessLesslstm_710_while_placeholder,lstm_710_while_less_lstm_710_strided_slice_1*
T0*
_output_shapes
: ]
lstm_710/while/IdentityIdentitylstm_710/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_710_while_identity lstm_710/while/Identity:output:0*(
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
?
?
*__inference_lstm_710_layer_call_fn_4432866

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
E__inference_lstm_710_layer_call_and_return_conditional_losses_4430137o
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
??
?
#__inference__traced_restore_4434024
file_prefix3
!assignvariableop_dense_236_kernel:
/
!assignvariableop_1_dense_236_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: C
0assignvariableop_7_lstm_708_lstm_cell_708_kernel:	?M
:assignvariableop_8_lstm_708_lstm_cell_708_recurrent_kernel:	d?=
.assignvariableop_9_lstm_708_lstm_cell_708_bias:	?D
1assignvariableop_10_lstm_709_lstm_cell_709_kernel:	d?N
;assignvariableop_11_lstm_709_lstm_cell_709_recurrent_kernel:	2?>
/assignvariableop_12_lstm_709_lstm_cell_709_bias:	?C
1assignvariableop_13_lstm_710_lstm_cell_710_kernel:2(M
;assignvariableop_14_lstm_710_lstm_cell_710_recurrent_kernel:
(=
/assignvariableop_15_lstm_710_lstm_cell_710_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: =
+assignvariableop_18_adam_dense_236_kernel_m:
7
)assignvariableop_19_adam_dense_236_bias_m:K
8assignvariableop_20_adam_lstm_708_lstm_cell_708_kernel_m:	?U
Bassignvariableop_21_adam_lstm_708_lstm_cell_708_recurrent_kernel_m:	d?E
6assignvariableop_22_adam_lstm_708_lstm_cell_708_bias_m:	?K
8assignvariableop_23_adam_lstm_709_lstm_cell_709_kernel_m:	d?U
Bassignvariableop_24_adam_lstm_709_lstm_cell_709_recurrent_kernel_m:	2?E
6assignvariableop_25_adam_lstm_709_lstm_cell_709_bias_m:	?J
8assignvariableop_26_adam_lstm_710_lstm_cell_710_kernel_m:2(T
Bassignvariableop_27_adam_lstm_710_lstm_cell_710_recurrent_kernel_m:
(D
6assignvariableop_28_adam_lstm_710_lstm_cell_710_bias_m:(=
+assignvariableop_29_adam_dense_236_kernel_v:
7
)assignvariableop_30_adam_dense_236_bias_v:K
8assignvariableop_31_adam_lstm_708_lstm_cell_708_kernel_v:	?U
Bassignvariableop_32_adam_lstm_708_lstm_cell_708_recurrent_kernel_v:	d?E
6assignvariableop_33_adam_lstm_708_lstm_cell_708_bias_v:	?K
8assignvariableop_34_adam_lstm_709_lstm_cell_709_kernel_v:	d?U
Bassignvariableop_35_adam_lstm_709_lstm_cell_709_recurrent_kernel_v:	2?E
6assignvariableop_36_adam_lstm_709_lstm_cell_709_bias_v:	?J
8assignvariableop_37_adam_lstm_710_lstm_cell_710_kernel_v:2(T
Bassignvariableop_38_adam_lstm_710_lstm_cell_710_recurrent_kernel_v:
(D
6assignvariableop_39_adam_lstm_710_lstm_cell_710_bias_v:(
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
AssignVariableOpAssignVariableOp!assignvariableop_dense_236_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_236_biasIdentity_1:output:0"/device:CPU:0*
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
AssignVariableOp_7AssignVariableOp0assignvariableop_7_lstm_708_lstm_cell_708_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp:assignvariableop_8_lstm_708_lstm_cell_708_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_708_lstm_cell_708_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp1assignvariableop_10_lstm_709_lstm_cell_709_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp;assignvariableop_11_lstm_709_lstm_cell_709_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp/assignvariableop_12_lstm_709_lstm_cell_709_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp1assignvariableop_13_lstm_710_lstm_cell_710_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp;assignvariableop_14_lstm_710_lstm_cell_710_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp/assignvariableop_15_lstm_710_lstm_cell_710_biasIdentity_15:output:0"/device:CPU:0*
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
AssignVariableOp_18AssignVariableOp+assignvariableop_18_adam_dense_236_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp)assignvariableop_19_adam_dense_236_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp8assignvariableop_20_adam_lstm_708_lstm_cell_708_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOpBassignvariableop_21_adam_lstm_708_lstm_cell_708_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp6assignvariableop_22_adam_lstm_708_lstm_cell_708_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp8assignvariableop_23_adam_lstm_709_lstm_cell_709_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOpBassignvariableop_24_adam_lstm_709_lstm_cell_709_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_709_lstm_cell_709_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp8assignvariableop_26_adam_lstm_710_lstm_cell_710_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOpBassignvariableop_27_adam_lstm_710_lstm_cell_710_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_lstm_710_lstm_cell_710_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp+assignvariableop_29_adam_dense_236_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_dense_236_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp8assignvariableop_31_adam_lstm_708_lstm_cell_708_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOpBassignvariableop_32_adam_lstm_708_lstm_cell_708_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOp6assignvariableop_33_adam_lstm_708_lstm_cell_708_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOp8assignvariableop_34_adam_lstm_709_lstm_cell_709_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOpBassignvariableop_35_adam_lstm_709_lstm_cell_709_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adam_lstm_709_lstm_cell_709_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_37AssignVariableOp8assignvariableop_37_adam_lstm_710_lstm_cell_710_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_38AssignVariableOpBassignvariableop_38_adam_lstm_710_lstm_cell_710_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_lstm_710_lstm_cell_710_bias_vIdentity_39:output:0"/device:CPU:0*
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
?J
?
E__inference_lstm_709_layer_call_and_return_conditional_losses_4429771

inputs?
,lstm_cell_709_matmul_readvariableop_resource:	d?A
.lstm_cell_709_matmul_1_readvariableop_resource:	2?<
-lstm_cell_709_biasadd_readvariableop_resource:	?
identity??$lstm_cell_709/BiasAdd/ReadVariableOp?#lstm_cell_709/MatMul/ReadVariableOp?%lstm_cell_709/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_709/MatMul/ReadVariableOpReadVariableOp,lstm_cell_709_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_709/MatMulMatMulstrided_slice_2:output:0+lstm_cell_709/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_709/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_709_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_709/MatMul_1MatMulzeros:output:0-lstm_cell_709/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_709/addAddV2lstm_cell_709/MatMul:product:0 lstm_cell_709/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_709/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_709_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_709/BiasAddBiasAddlstm_cell_709/add:z:0,lstm_cell_709/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_709/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_709/splitSplit&lstm_cell_709/split/split_dim:output:0lstm_cell_709/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_709/SigmoidSigmoidlstm_cell_709/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_709/Sigmoid_1Sigmoidlstm_cell_709/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_709/mulMullstm_cell_709/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_709/ReluRelulstm_cell_709/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_709/mul_1Mullstm_cell_709/Sigmoid:y:0 lstm_cell_709/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_709/add_1AddV2lstm_cell_709/mul:z:0lstm_cell_709/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_709/Sigmoid_2Sigmoidlstm_cell_709/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_709/Relu_1Relulstm_cell_709/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_709/mul_2Mullstm_cell_709/Sigmoid_2:y:0"lstm_cell_709/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_709_matmul_readvariableop_resource.lstm_cell_709_matmul_1_readvariableop_resource-lstm_cell_709_biasadd_readvariableop_resource*
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
while_body_4429687*
condR
while_cond_4429686*K
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
NoOpNoOp%^lstm_cell_709/BiasAdd/ReadVariableOp$^lstm_cell_709/MatMul/ReadVariableOp&^lstm_cell_709/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_709/BiasAdd/ReadVariableOp$lstm_cell_709/BiasAdd/ReadVariableOp2J
#lstm_cell_709/MatMul/ReadVariableOp#lstm_cell_709/MatMul/ReadVariableOp2N
%lstm_cell_709/MatMul_1/ReadVariableOp%lstm_cell_709/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?8
?
while_body_4430383
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_708_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_708_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_708_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_708_matmul_readvariableop_resource:	?G
4while_lstm_cell_708_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_708_biasadd_readvariableop_resource:	???*while/lstm_cell_708/BiasAdd/ReadVariableOp?)while/lstm_cell_708/MatMul/ReadVariableOp?+while/lstm_cell_708/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_708/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_708_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_708/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_708/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_708/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_708_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_708/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_708/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_708/addAddV2$while/lstm_cell_708/MatMul:product:0&while/lstm_cell_708/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_708/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_708_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_708/BiasAddBiasAddwhile/lstm_cell_708/add:z:02while/lstm_cell_708/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_708/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_708/splitSplit,while/lstm_cell_708/split/split_dim:output:0$while/lstm_cell_708/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_708/SigmoidSigmoid"while/lstm_cell_708/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_708/Sigmoid_1Sigmoid"while/lstm_cell_708/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_708/mulMul!while/lstm_cell_708/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_708/ReluRelu"while/lstm_cell_708/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_708/mul_1Mulwhile/lstm_cell_708/Sigmoid:y:0&while/lstm_cell_708/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_708/add_1AddV2while/lstm_cell_708/mul:z:0while/lstm_cell_708/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_708/Sigmoid_2Sigmoid"while/lstm_cell_708/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_708/Relu_1Reluwhile/lstm_cell_708/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_708/mul_2Mul!while/lstm_cell_708/Sigmoid_2:y:0(while/lstm_cell_708/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_708/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_708/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_708/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_708/BiasAdd/ReadVariableOp*^while/lstm_cell_708/MatMul/ReadVariableOp,^while/lstm_cell_708/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_708_biasadd_readvariableop_resource5while_lstm_cell_708_biasadd_readvariableop_resource_0"n
4while_lstm_cell_708_matmul_1_readvariableop_resource6while_lstm_cell_708_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_708_matmul_readvariableop_resource4while_lstm_cell_708_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_708/BiasAdd/ReadVariableOp*while/lstm_cell_708/BiasAdd/ReadVariableOp2V
)while/lstm_cell_708/MatMul/ReadVariableOp)while/lstm_cell_708/MatMul/ReadVariableOp2Z
+while/lstm_cell_708/MatMul_1/ReadVariableOp+while/lstm_cell_708/MatMul_1/ReadVariableOp: 
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
F__inference_dense_236_layer_call_and_return_conditional_losses_4433457

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
?8
?
E__inference_lstm_709_layer_call_and_return_conditional_losses_4429113

inputs(
lstm_cell_709_4429031:	d?(
lstm_cell_709_4429033:	2?$
lstm_cell_709_4429035:	?
identity??%lstm_cell_709/StatefulPartitionedCall?while;
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
%lstm_cell_709/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_709_4429031lstm_cell_709_4429033lstm_cell_709_4429035*
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
J__inference_lstm_cell_709_layer_call_and_return_conditional_losses_4428985n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_709_4429031lstm_cell_709_4429033lstm_cell_709_4429035*
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
while_body_4429044*
condR
while_cond_4429043*K
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
NoOpNoOp&^lstm_cell_709/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_709/StatefulPartitionedCall%lstm_cell_709/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?
?
while_cond_4428693
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4428693___redundant_placeholder05
1while_while_cond_4428693___redundant_placeholder15
1while_while_cond_4428693___redundant_placeholder25
1while_while_cond_4428693___redundant_placeholder3
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
lstm_710_while_cond_4431499.
*lstm_710_while_lstm_710_while_loop_counter4
0lstm_710_while_lstm_710_while_maximum_iterations
lstm_710_while_placeholder 
lstm_710_while_placeholder_1 
lstm_710_while_placeholder_2 
lstm_710_while_placeholder_30
,lstm_710_while_less_lstm_710_strided_slice_1G
Clstm_710_while_lstm_710_while_cond_4431499___redundant_placeholder0G
Clstm_710_while_lstm_710_while_cond_4431499___redundant_placeholder1G
Clstm_710_while_lstm_710_while_cond_4431499___redundant_placeholder2G
Clstm_710_while_lstm_710_while_cond_4431499___redundant_placeholder3
lstm_710_while_identity
?
lstm_710/while/LessLesslstm_710_while_placeholder,lstm_710_while_less_lstm_710_strided_slice_1*
T0*
_output_shapes
: ]
lstm_710/while/IdentityIdentitylstm_710/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_710_while_identity lstm_710/while/Identity:output:0*(
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
while_cond_4433353
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4433353___redundant_placeholder05
1while_while_cond_4433353___redundant_placeholder15
1while_while_cond_4433353___redundant_placeholder25
1while_while_cond_4433353___redundant_placeholder3
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
?C
?

lstm_708_while_body_4431222.
*lstm_708_while_lstm_708_while_loop_counter4
0lstm_708_while_lstm_708_while_maximum_iterations
lstm_708_while_placeholder 
lstm_708_while_placeholder_1 
lstm_708_while_placeholder_2 
lstm_708_while_placeholder_3-
)lstm_708_while_lstm_708_strided_slice_1_0i
elstm_708_while_tensorarrayv2read_tensorlistgetitem_lstm_708_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_708_while_lstm_cell_708_matmul_readvariableop_resource_0:	?R
?lstm_708_while_lstm_cell_708_matmul_1_readvariableop_resource_0:	d?M
>lstm_708_while_lstm_cell_708_biasadd_readvariableop_resource_0:	?
lstm_708_while_identity
lstm_708_while_identity_1
lstm_708_while_identity_2
lstm_708_while_identity_3
lstm_708_while_identity_4
lstm_708_while_identity_5+
'lstm_708_while_lstm_708_strided_slice_1g
clstm_708_while_tensorarrayv2read_tensorlistgetitem_lstm_708_tensorarrayunstack_tensorlistfromtensorN
;lstm_708_while_lstm_cell_708_matmul_readvariableop_resource:	?P
=lstm_708_while_lstm_cell_708_matmul_1_readvariableop_resource:	d?K
<lstm_708_while_lstm_cell_708_biasadd_readvariableop_resource:	???3lstm_708/while/lstm_cell_708/BiasAdd/ReadVariableOp?2lstm_708/while/lstm_cell_708/MatMul/ReadVariableOp?4lstm_708/while/lstm_cell_708/MatMul_1/ReadVariableOp?
@lstm_708/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_708/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_708_while_tensorarrayv2read_tensorlistgetitem_lstm_708_tensorarrayunstack_tensorlistfromtensor_0lstm_708_while_placeholderIlstm_708/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_708/while/lstm_cell_708/MatMul/ReadVariableOpReadVariableOp=lstm_708_while_lstm_cell_708_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_708/while/lstm_cell_708/MatMulMatMul9lstm_708/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_708/while/lstm_cell_708/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_708/while/lstm_cell_708/MatMul_1/ReadVariableOpReadVariableOp?lstm_708_while_lstm_cell_708_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_708/while/lstm_cell_708/MatMul_1MatMullstm_708_while_placeholder_2<lstm_708/while/lstm_cell_708/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_708/while/lstm_cell_708/addAddV2-lstm_708/while/lstm_cell_708/MatMul:product:0/lstm_708/while/lstm_cell_708/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_708/while/lstm_cell_708/BiasAdd/ReadVariableOpReadVariableOp>lstm_708_while_lstm_cell_708_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_708/while/lstm_cell_708/BiasAddBiasAdd$lstm_708/while/lstm_cell_708/add:z:0;lstm_708/while/lstm_cell_708/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_708/while/lstm_cell_708/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_708/while/lstm_cell_708/splitSplit5lstm_708/while/lstm_cell_708/split/split_dim:output:0-lstm_708/while/lstm_cell_708/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_708/while/lstm_cell_708/SigmoidSigmoid+lstm_708/while/lstm_cell_708/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_708/while/lstm_cell_708/Sigmoid_1Sigmoid+lstm_708/while/lstm_cell_708/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_708/while/lstm_cell_708/mulMul*lstm_708/while/lstm_cell_708/Sigmoid_1:y:0lstm_708_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_708/while/lstm_cell_708/ReluRelu+lstm_708/while/lstm_cell_708/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_708/while/lstm_cell_708/mul_1Mul(lstm_708/while/lstm_cell_708/Sigmoid:y:0/lstm_708/while/lstm_cell_708/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_708/while/lstm_cell_708/add_1AddV2$lstm_708/while/lstm_cell_708/mul:z:0&lstm_708/while/lstm_cell_708/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_708/while/lstm_cell_708/Sigmoid_2Sigmoid+lstm_708/while/lstm_cell_708/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_708/while/lstm_cell_708/Relu_1Relu&lstm_708/while/lstm_cell_708/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_708/while/lstm_cell_708/mul_2Mul*lstm_708/while/lstm_cell_708/Sigmoid_2:y:01lstm_708/while/lstm_cell_708/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_708/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_708_while_placeholder_1lstm_708_while_placeholder&lstm_708/while/lstm_cell_708/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_708/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_708/while/addAddV2lstm_708_while_placeholderlstm_708/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_708/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_708/while/add_1AddV2*lstm_708_while_lstm_708_while_loop_counterlstm_708/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_708/while/IdentityIdentitylstm_708/while/add_1:z:0^lstm_708/while/NoOp*
T0*
_output_shapes
: ?
lstm_708/while/Identity_1Identity0lstm_708_while_lstm_708_while_maximum_iterations^lstm_708/while/NoOp*
T0*
_output_shapes
: t
lstm_708/while/Identity_2Identitylstm_708/while/add:z:0^lstm_708/while/NoOp*
T0*
_output_shapes
: ?
lstm_708/while/Identity_3IdentityClstm_708/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_708/while/NoOp*
T0*
_output_shapes
: ?
lstm_708/while/Identity_4Identity&lstm_708/while/lstm_cell_708/mul_2:z:0^lstm_708/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_708/while/Identity_5Identity&lstm_708/while/lstm_cell_708/add_1:z:0^lstm_708/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_708/while/NoOpNoOp4^lstm_708/while/lstm_cell_708/BiasAdd/ReadVariableOp3^lstm_708/while/lstm_cell_708/MatMul/ReadVariableOp5^lstm_708/while/lstm_cell_708/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_708_while_identity lstm_708/while/Identity:output:0"?
lstm_708_while_identity_1"lstm_708/while/Identity_1:output:0"?
lstm_708_while_identity_2"lstm_708/while/Identity_2:output:0"?
lstm_708_while_identity_3"lstm_708/while/Identity_3:output:0"?
lstm_708_while_identity_4"lstm_708/while/Identity_4:output:0"?
lstm_708_while_identity_5"lstm_708/while/Identity_5:output:0"T
'lstm_708_while_lstm_708_strided_slice_1)lstm_708_while_lstm_708_strided_slice_1_0"~
<lstm_708_while_lstm_cell_708_biasadd_readvariableop_resource>lstm_708_while_lstm_cell_708_biasadd_readvariableop_resource_0"?
=lstm_708_while_lstm_cell_708_matmul_1_readvariableop_resource?lstm_708_while_lstm_cell_708_matmul_1_readvariableop_resource_0"|
;lstm_708_while_lstm_cell_708_matmul_readvariableop_resource=lstm_708_while_lstm_cell_708_matmul_readvariableop_resource_0"?
clstm_708_while_tensorarrayv2read_tensorlistgetitem_lstm_708_tensorarrayunstack_tensorlistfromtensorelstm_708_while_tensorarrayv2read_tensorlistgetitem_lstm_708_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_708/while/lstm_cell_708/BiasAdd/ReadVariableOp3lstm_708/while/lstm_cell_708/BiasAdd/ReadVariableOp2h
2lstm_708/while/lstm_cell_708/MatMul/ReadVariableOp2lstm_708/while/lstm_cell_708/MatMul/ReadVariableOp2l
4lstm_708/while/lstm_cell_708/MatMul_1/ReadVariableOp4lstm_708/while/lstm_cell_708/MatMul_1/ReadVariableOp: 
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
?
E__inference_lstm_710_layer_call_and_return_conditional_losses_4429272

inputs'
lstm_cell_710_4429190:2('
lstm_cell_710_4429192:
(#
lstm_cell_710_4429194:(
identity??%lstm_cell_710/StatefulPartitionedCall?while;
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
%lstm_cell_710/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_710_4429190lstm_cell_710_4429192lstm_cell_710_4429194*
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
J__inference_lstm_cell_710_layer_call_and_return_conditional_losses_4429189n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_710_4429190lstm_cell_710_4429192lstm_cell_710_4429194*
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
while_body_4429203*
condR
while_cond_4429202*K
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
NoOpNoOp&^lstm_cell_710/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_710/StatefulPartitionedCall%lstm_cell_710/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?8
?
E__inference_lstm_708_layer_call_and_return_conditional_losses_4428763

inputs(
lstm_cell_708_4428681:	?(
lstm_cell_708_4428683:	d?$
lstm_cell_708_4428685:	?
identity??%lstm_cell_708/StatefulPartitionedCall?while;
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
%lstm_cell_708/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_708_4428681lstm_cell_708_4428683lstm_cell_708_4428685*
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
J__inference_lstm_cell_708_layer_call_and_return_conditional_losses_4428635n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_708_4428681lstm_cell_708_4428683lstm_cell_708_4428685*
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
while_body_4428694*
condR
while_cond_4428693*K
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
NoOpNoOp&^lstm_cell_708/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_708/StatefulPartitionedCall%lstm_cell_708/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
*__inference_lstm_709_layer_call_fn_4432228
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
E__inference_lstm_709_layer_call_and_return_conditional_losses_4429113|
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
?

?
0__inference_sequential_236_layer_call_fn_4430736

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
K__inference_sequential_236_layer_call_and_return_conditional_losses_4430535o
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
??
?
K__inference_sequential_236_layer_call_and_return_conditional_losses_4431590

inputsH
5lstm_708_lstm_cell_708_matmul_readvariableop_resource:	?J
7lstm_708_lstm_cell_708_matmul_1_readvariableop_resource:	d?E
6lstm_708_lstm_cell_708_biasadd_readvariableop_resource:	?H
5lstm_709_lstm_cell_709_matmul_readvariableop_resource:	d?J
7lstm_709_lstm_cell_709_matmul_1_readvariableop_resource:	2?E
6lstm_709_lstm_cell_709_biasadd_readvariableop_resource:	?G
5lstm_710_lstm_cell_710_matmul_readvariableop_resource:2(I
7lstm_710_lstm_cell_710_matmul_1_readvariableop_resource:
(D
6lstm_710_lstm_cell_710_biasadd_readvariableop_resource:(:
(dense_236_matmul_readvariableop_resource:
7
)dense_236_biasadd_readvariableop_resource:
identity?? dense_236/BiasAdd/ReadVariableOp?dense_236/MatMul/ReadVariableOp?-lstm_708/lstm_cell_708/BiasAdd/ReadVariableOp?,lstm_708/lstm_cell_708/MatMul/ReadVariableOp?.lstm_708/lstm_cell_708/MatMul_1/ReadVariableOp?lstm_708/while?-lstm_709/lstm_cell_709/BiasAdd/ReadVariableOp?,lstm_709/lstm_cell_709/MatMul/ReadVariableOp?.lstm_709/lstm_cell_709/MatMul_1/ReadVariableOp?lstm_709/while?-lstm_710/lstm_cell_710/BiasAdd/ReadVariableOp?,lstm_710/lstm_cell_710/MatMul/ReadVariableOp?.lstm_710/lstm_cell_710/MatMul_1/ReadVariableOp?lstm_710/whileD
lstm_708/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_708/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_708/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_708/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_708/strided_sliceStridedSlicelstm_708/Shape:output:0%lstm_708/strided_slice/stack:output:0'lstm_708/strided_slice/stack_1:output:0'lstm_708/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_708/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_708/zeros/packedPacklstm_708/strided_slice:output:0 lstm_708/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_708/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_708/zerosFilllstm_708/zeros/packed:output:0lstm_708/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_708/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_708/zeros_1/packedPacklstm_708/strided_slice:output:0"lstm_708/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_708/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_708/zeros_1Fill lstm_708/zeros_1/packed:output:0lstm_708/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_708/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_708/transpose	Transposeinputs lstm_708/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_708/Shape_1Shapelstm_708/transpose:y:0*
T0*
_output_shapes
:h
lstm_708/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_708/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_708/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_708/strided_slice_1StridedSlicelstm_708/Shape_1:output:0'lstm_708/strided_slice_1/stack:output:0)lstm_708/strided_slice_1/stack_1:output:0)lstm_708/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_708/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_708/TensorArrayV2TensorListReserve-lstm_708/TensorArrayV2/element_shape:output:0!lstm_708/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_708/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_708/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_708/transpose:y:0Glstm_708/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_708/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_708/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_708/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_708/strided_slice_2StridedSlicelstm_708/transpose:y:0'lstm_708/strided_slice_2/stack:output:0)lstm_708/strided_slice_2/stack_1:output:0)lstm_708/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_708/lstm_cell_708/MatMul/ReadVariableOpReadVariableOp5lstm_708_lstm_cell_708_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_708/lstm_cell_708/MatMulMatMul!lstm_708/strided_slice_2:output:04lstm_708/lstm_cell_708/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_708/lstm_cell_708/MatMul_1/ReadVariableOpReadVariableOp7lstm_708_lstm_cell_708_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_708/lstm_cell_708/MatMul_1MatMullstm_708/zeros:output:06lstm_708/lstm_cell_708/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_708/lstm_cell_708/addAddV2'lstm_708/lstm_cell_708/MatMul:product:0)lstm_708/lstm_cell_708/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_708/lstm_cell_708/BiasAdd/ReadVariableOpReadVariableOp6lstm_708_lstm_cell_708_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_708/lstm_cell_708/BiasAddBiasAddlstm_708/lstm_cell_708/add:z:05lstm_708/lstm_cell_708/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_708/lstm_cell_708/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_708/lstm_cell_708/splitSplit/lstm_708/lstm_cell_708/split/split_dim:output:0'lstm_708/lstm_cell_708/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_708/lstm_cell_708/SigmoidSigmoid%lstm_708/lstm_cell_708/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_708/lstm_cell_708/Sigmoid_1Sigmoid%lstm_708/lstm_cell_708/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_708/lstm_cell_708/mulMul$lstm_708/lstm_cell_708/Sigmoid_1:y:0lstm_708/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_708/lstm_cell_708/ReluRelu%lstm_708/lstm_cell_708/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_708/lstm_cell_708/mul_1Mul"lstm_708/lstm_cell_708/Sigmoid:y:0)lstm_708/lstm_cell_708/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_708/lstm_cell_708/add_1AddV2lstm_708/lstm_cell_708/mul:z:0 lstm_708/lstm_cell_708/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_708/lstm_cell_708/Sigmoid_2Sigmoid%lstm_708/lstm_cell_708/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_708/lstm_cell_708/Relu_1Relu lstm_708/lstm_cell_708/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_708/lstm_cell_708/mul_2Mul$lstm_708/lstm_cell_708/Sigmoid_2:y:0+lstm_708/lstm_cell_708/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_708/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_708/TensorArrayV2_1TensorListReserve/lstm_708/TensorArrayV2_1/element_shape:output:0!lstm_708/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_708/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_708/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_708/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_708/whileWhile$lstm_708/while/loop_counter:output:0*lstm_708/while/maximum_iterations:output:0lstm_708/time:output:0!lstm_708/TensorArrayV2_1:handle:0lstm_708/zeros:output:0lstm_708/zeros_1:output:0!lstm_708/strided_slice_1:output:0@lstm_708/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_708_lstm_cell_708_matmul_readvariableop_resource7lstm_708_lstm_cell_708_matmul_1_readvariableop_resource6lstm_708_lstm_cell_708_biasadd_readvariableop_resource*
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
lstm_708_while_body_4431222*'
condR
lstm_708_while_cond_4431221*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_708/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_708/TensorArrayV2Stack/TensorListStackTensorListStacklstm_708/while:output:3Blstm_708/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_708/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_708/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_708/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_708/strided_slice_3StridedSlice4lstm_708/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_708/strided_slice_3/stack:output:0)lstm_708/strided_slice_3/stack_1:output:0)lstm_708/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_708/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_708/transpose_1	Transpose4lstm_708/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_708/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_708/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_709/ShapeShapelstm_708/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_709/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_709/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_709/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_709/strided_sliceStridedSlicelstm_709/Shape:output:0%lstm_709/strided_slice/stack:output:0'lstm_709/strided_slice/stack_1:output:0'lstm_709/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_709/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_709/zeros/packedPacklstm_709/strided_slice:output:0 lstm_709/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_709/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_709/zerosFilllstm_709/zeros/packed:output:0lstm_709/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_709/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_709/zeros_1/packedPacklstm_709/strided_slice:output:0"lstm_709/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_709/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_709/zeros_1Fill lstm_709/zeros_1/packed:output:0lstm_709/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_709/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_709/transpose	Transposelstm_708/transpose_1:y:0 lstm_709/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_709/Shape_1Shapelstm_709/transpose:y:0*
T0*
_output_shapes
:h
lstm_709/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_709/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_709/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_709/strided_slice_1StridedSlicelstm_709/Shape_1:output:0'lstm_709/strided_slice_1/stack:output:0)lstm_709/strided_slice_1/stack_1:output:0)lstm_709/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_709/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_709/TensorArrayV2TensorListReserve-lstm_709/TensorArrayV2/element_shape:output:0!lstm_709/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_709/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_709/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_709/transpose:y:0Glstm_709/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_709/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_709/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_709/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_709/strided_slice_2StridedSlicelstm_709/transpose:y:0'lstm_709/strided_slice_2/stack:output:0)lstm_709/strided_slice_2/stack_1:output:0)lstm_709/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_709/lstm_cell_709/MatMul/ReadVariableOpReadVariableOp5lstm_709_lstm_cell_709_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_709/lstm_cell_709/MatMulMatMul!lstm_709/strided_slice_2:output:04lstm_709/lstm_cell_709/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_709/lstm_cell_709/MatMul_1/ReadVariableOpReadVariableOp7lstm_709_lstm_cell_709_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_709/lstm_cell_709/MatMul_1MatMullstm_709/zeros:output:06lstm_709/lstm_cell_709/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_709/lstm_cell_709/addAddV2'lstm_709/lstm_cell_709/MatMul:product:0)lstm_709/lstm_cell_709/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_709/lstm_cell_709/BiasAdd/ReadVariableOpReadVariableOp6lstm_709_lstm_cell_709_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_709/lstm_cell_709/BiasAddBiasAddlstm_709/lstm_cell_709/add:z:05lstm_709/lstm_cell_709/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_709/lstm_cell_709/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_709/lstm_cell_709/splitSplit/lstm_709/lstm_cell_709/split/split_dim:output:0'lstm_709/lstm_cell_709/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_709/lstm_cell_709/SigmoidSigmoid%lstm_709/lstm_cell_709/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_709/lstm_cell_709/Sigmoid_1Sigmoid%lstm_709/lstm_cell_709/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_709/lstm_cell_709/mulMul$lstm_709/lstm_cell_709/Sigmoid_1:y:0lstm_709/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_709/lstm_cell_709/ReluRelu%lstm_709/lstm_cell_709/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_709/lstm_cell_709/mul_1Mul"lstm_709/lstm_cell_709/Sigmoid:y:0)lstm_709/lstm_cell_709/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_709/lstm_cell_709/add_1AddV2lstm_709/lstm_cell_709/mul:z:0 lstm_709/lstm_cell_709/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_709/lstm_cell_709/Sigmoid_2Sigmoid%lstm_709/lstm_cell_709/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_709/lstm_cell_709/Relu_1Relu lstm_709/lstm_cell_709/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_709/lstm_cell_709/mul_2Mul$lstm_709/lstm_cell_709/Sigmoid_2:y:0+lstm_709/lstm_cell_709/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_709/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_709/TensorArrayV2_1TensorListReserve/lstm_709/TensorArrayV2_1/element_shape:output:0!lstm_709/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_709/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_709/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_709/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_709/whileWhile$lstm_709/while/loop_counter:output:0*lstm_709/while/maximum_iterations:output:0lstm_709/time:output:0!lstm_709/TensorArrayV2_1:handle:0lstm_709/zeros:output:0lstm_709/zeros_1:output:0!lstm_709/strided_slice_1:output:0@lstm_709/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_709_lstm_cell_709_matmul_readvariableop_resource7lstm_709_lstm_cell_709_matmul_1_readvariableop_resource6lstm_709_lstm_cell_709_biasadd_readvariableop_resource*
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
lstm_709_while_body_4431361*'
condR
lstm_709_while_cond_4431360*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_709/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_709/TensorArrayV2Stack/TensorListStackTensorListStacklstm_709/while:output:3Blstm_709/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_709/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_709/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_709/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_709/strided_slice_3StridedSlice4lstm_709/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_709/strided_slice_3/stack:output:0)lstm_709/strided_slice_3/stack_1:output:0)lstm_709/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_709/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_709/transpose_1	Transpose4lstm_709/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_709/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_709/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_710/ShapeShapelstm_709/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_710/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_710/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_710/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_710/strided_sliceStridedSlicelstm_710/Shape:output:0%lstm_710/strided_slice/stack:output:0'lstm_710/strided_slice/stack_1:output:0'lstm_710/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_710/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_710/zeros/packedPacklstm_710/strided_slice:output:0 lstm_710/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_710/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_710/zerosFilllstm_710/zeros/packed:output:0lstm_710/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_710/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_710/zeros_1/packedPacklstm_710/strided_slice:output:0"lstm_710/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_710/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_710/zeros_1Fill lstm_710/zeros_1/packed:output:0lstm_710/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_710/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_710/transpose	Transposelstm_709/transpose_1:y:0 lstm_710/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_710/Shape_1Shapelstm_710/transpose:y:0*
T0*
_output_shapes
:h
lstm_710/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_710/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_710/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_710/strided_slice_1StridedSlicelstm_710/Shape_1:output:0'lstm_710/strided_slice_1/stack:output:0)lstm_710/strided_slice_1/stack_1:output:0)lstm_710/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_710/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_710/TensorArrayV2TensorListReserve-lstm_710/TensorArrayV2/element_shape:output:0!lstm_710/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_710/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_710/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_710/transpose:y:0Glstm_710/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_710/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_710/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_710/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_710/strided_slice_2StridedSlicelstm_710/transpose:y:0'lstm_710/strided_slice_2/stack:output:0)lstm_710/strided_slice_2/stack_1:output:0)lstm_710/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_710/lstm_cell_710/MatMul/ReadVariableOpReadVariableOp5lstm_710_lstm_cell_710_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_710/lstm_cell_710/MatMulMatMul!lstm_710/strided_slice_2:output:04lstm_710/lstm_cell_710/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_710/lstm_cell_710/MatMul_1/ReadVariableOpReadVariableOp7lstm_710_lstm_cell_710_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_710/lstm_cell_710/MatMul_1MatMullstm_710/zeros:output:06lstm_710/lstm_cell_710/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_710/lstm_cell_710/addAddV2'lstm_710/lstm_cell_710/MatMul:product:0)lstm_710/lstm_cell_710/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_710/lstm_cell_710/BiasAdd/ReadVariableOpReadVariableOp6lstm_710_lstm_cell_710_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_710/lstm_cell_710/BiasAddBiasAddlstm_710/lstm_cell_710/add:z:05lstm_710/lstm_cell_710/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_710/lstm_cell_710/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_710/lstm_cell_710/splitSplit/lstm_710/lstm_cell_710/split/split_dim:output:0'lstm_710/lstm_cell_710/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_710/lstm_cell_710/SigmoidSigmoid%lstm_710/lstm_cell_710/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_710/lstm_cell_710/Sigmoid_1Sigmoid%lstm_710/lstm_cell_710/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_710/lstm_cell_710/mulMul$lstm_710/lstm_cell_710/Sigmoid_1:y:0lstm_710/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_710/lstm_cell_710/ReluRelu%lstm_710/lstm_cell_710/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_710/lstm_cell_710/mul_1Mul"lstm_710/lstm_cell_710/Sigmoid:y:0)lstm_710/lstm_cell_710/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_710/lstm_cell_710/add_1AddV2lstm_710/lstm_cell_710/mul:z:0 lstm_710/lstm_cell_710/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_710/lstm_cell_710/Sigmoid_2Sigmoid%lstm_710/lstm_cell_710/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_710/lstm_cell_710/Relu_1Relu lstm_710/lstm_cell_710/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_710/lstm_cell_710/mul_2Mul$lstm_710/lstm_cell_710/Sigmoid_2:y:0+lstm_710/lstm_cell_710/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_710/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_710/TensorArrayV2_1TensorListReserve/lstm_710/TensorArrayV2_1/element_shape:output:0!lstm_710/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_710/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_710/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_710/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_710/whileWhile$lstm_710/while/loop_counter:output:0*lstm_710/while/maximum_iterations:output:0lstm_710/time:output:0!lstm_710/TensorArrayV2_1:handle:0lstm_710/zeros:output:0lstm_710/zeros_1:output:0!lstm_710/strided_slice_1:output:0@lstm_710/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_710_lstm_cell_710_matmul_readvariableop_resource7lstm_710_lstm_cell_710_matmul_1_readvariableop_resource6lstm_710_lstm_cell_710_biasadd_readvariableop_resource*
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
lstm_710_while_body_4431500*'
condR
lstm_710_while_cond_4431499*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_710/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_710/TensorArrayV2Stack/TensorListStackTensorListStacklstm_710/while:output:3Blstm_710/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_710/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_710/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_710/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_710/strided_slice_3StridedSlice4lstm_710/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_710/strided_slice_3/stack:output:0)lstm_710/strided_slice_3/stack_1:output:0)lstm_710/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_710/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_710/transpose_1	Transpose4lstm_710/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_710/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_710/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_236/MatMul/ReadVariableOpReadVariableOp(dense_236_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_236/MatMulMatMul!lstm_710/strided_slice_3:output:0'dense_236/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_236/BiasAdd/ReadVariableOpReadVariableOp)dense_236_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_236/BiasAddBiasAdddense_236/MatMul:product:0(dense_236/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_236/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_236/BiasAdd/ReadVariableOp ^dense_236/MatMul/ReadVariableOp.^lstm_708/lstm_cell_708/BiasAdd/ReadVariableOp-^lstm_708/lstm_cell_708/MatMul/ReadVariableOp/^lstm_708/lstm_cell_708/MatMul_1/ReadVariableOp^lstm_708/while.^lstm_709/lstm_cell_709/BiasAdd/ReadVariableOp-^lstm_709/lstm_cell_709/MatMul/ReadVariableOp/^lstm_709/lstm_cell_709/MatMul_1/ReadVariableOp^lstm_709/while.^lstm_710/lstm_cell_710/BiasAdd/ReadVariableOp-^lstm_710/lstm_cell_710/MatMul/ReadVariableOp/^lstm_710/lstm_cell_710/MatMul_1/ReadVariableOp^lstm_710/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_236/BiasAdd/ReadVariableOp dense_236/BiasAdd/ReadVariableOp2B
dense_236/MatMul/ReadVariableOpdense_236/MatMul/ReadVariableOp2^
-lstm_708/lstm_cell_708/BiasAdd/ReadVariableOp-lstm_708/lstm_cell_708/BiasAdd/ReadVariableOp2\
,lstm_708/lstm_cell_708/MatMul/ReadVariableOp,lstm_708/lstm_cell_708/MatMul/ReadVariableOp2`
.lstm_708/lstm_cell_708/MatMul_1/ReadVariableOp.lstm_708/lstm_cell_708/MatMul_1/ReadVariableOp2 
lstm_708/whilelstm_708/while2^
-lstm_709/lstm_cell_709/BiasAdd/ReadVariableOp-lstm_709/lstm_cell_709/BiasAdd/ReadVariableOp2\
,lstm_709/lstm_cell_709/MatMul/ReadVariableOp,lstm_709/lstm_cell_709/MatMul/ReadVariableOp2`
.lstm_709/lstm_cell_709/MatMul_1/ReadVariableOp.lstm_709/lstm_cell_709/MatMul_1/ReadVariableOp2 
lstm_709/whilelstm_709/while2^
-lstm_710/lstm_cell_710/BiasAdd/ReadVariableOp-lstm_710/lstm_cell_710/BiasAdd/ReadVariableOp2\
,lstm_710/lstm_cell_710/MatMul/ReadVariableOp,lstm_710/lstm_cell_710/MatMul/ReadVariableOp2`
.lstm_710/lstm_cell_710/MatMul_1/ReadVariableOp.lstm_710/lstm_cell_710/MatMul_1/ReadVariableOp2 
lstm_710/whilelstm_710/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?W
?
 __inference__traced_save_4433894
file_prefix/
+savev2_dense_236_kernel_read_readvariableop-
)savev2_dense_236_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_708_lstm_cell_708_kernel_read_readvariableopF
Bsavev2_lstm_708_lstm_cell_708_recurrent_kernel_read_readvariableop:
6savev2_lstm_708_lstm_cell_708_bias_read_readvariableop<
8savev2_lstm_709_lstm_cell_709_kernel_read_readvariableopF
Bsavev2_lstm_709_lstm_cell_709_recurrent_kernel_read_readvariableop:
6savev2_lstm_709_lstm_cell_709_bias_read_readvariableop<
8savev2_lstm_710_lstm_cell_710_kernel_read_readvariableopF
Bsavev2_lstm_710_lstm_cell_710_recurrent_kernel_read_readvariableop:
6savev2_lstm_710_lstm_cell_710_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop6
2savev2_adam_dense_236_kernel_m_read_readvariableop4
0savev2_adam_dense_236_bias_m_read_readvariableopC
?savev2_adam_lstm_708_lstm_cell_708_kernel_m_read_readvariableopM
Isavev2_adam_lstm_708_lstm_cell_708_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_708_lstm_cell_708_bias_m_read_readvariableopC
?savev2_adam_lstm_709_lstm_cell_709_kernel_m_read_readvariableopM
Isavev2_adam_lstm_709_lstm_cell_709_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_709_lstm_cell_709_bias_m_read_readvariableopC
?savev2_adam_lstm_710_lstm_cell_710_kernel_m_read_readvariableopM
Isavev2_adam_lstm_710_lstm_cell_710_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_710_lstm_cell_710_bias_m_read_readvariableop6
2savev2_adam_dense_236_kernel_v_read_readvariableop4
0savev2_adam_dense_236_bias_v_read_readvariableopC
?savev2_adam_lstm_708_lstm_cell_708_kernel_v_read_readvariableopM
Isavev2_adam_lstm_708_lstm_cell_708_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_708_lstm_cell_708_bias_v_read_readvariableopC
?savev2_adam_lstm_709_lstm_cell_709_kernel_v_read_readvariableopM
Isavev2_adam_lstm_709_lstm_cell_709_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_709_lstm_cell_709_bias_v_read_readvariableopC
?savev2_adam_lstm_710_lstm_cell_710_kernel_v_read_readvariableopM
Isavev2_adam_lstm_710_lstm_cell_710_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_710_lstm_cell_710_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_dense_236_kernel_read_readvariableop)savev2_dense_236_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_708_lstm_cell_708_kernel_read_readvariableopBsavev2_lstm_708_lstm_cell_708_recurrent_kernel_read_readvariableop6savev2_lstm_708_lstm_cell_708_bias_read_readvariableop8savev2_lstm_709_lstm_cell_709_kernel_read_readvariableopBsavev2_lstm_709_lstm_cell_709_recurrent_kernel_read_readvariableop6savev2_lstm_709_lstm_cell_709_bias_read_readvariableop8savev2_lstm_710_lstm_cell_710_kernel_read_readvariableopBsavev2_lstm_710_lstm_cell_710_recurrent_kernel_read_readvariableop6savev2_lstm_710_lstm_cell_710_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop2savev2_adam_dense_236_kernel_m_read_readvariableop0savev2_adam_dense_236_bias_m_read_readvariableop?savev2_adam_lstm_708_lstm_cell_708_kernel_m_read_readvariableopIsavev2_adam_lstm_708_lstm_cell_708_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_708_lstm_cell_708_bias_m_read_readvariableop?savev2_adam_lstm_709_lstm_cell_709_kernel_m_read_readvariableopIsavev2_adam_lstm_709_lstm_cell_709_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_709_lstm_cell_709_bias_m_read_readvariableop?savev2_adam_lstm_710_lstm_cell_710_kernel_m_read_readvariableopIsavev2_adam_lstm_710_lstm_cell_710_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_710_lstm_cell_710_bias_m_read_readvariableop2savev2_adam_dense_236_kernel_v_read_readvariableop0savev2_adam_dense_236_bias_v_read_readvariableop?savev2_adam_lstm_708_lstm_cell_708_kernel_v_read_readvariableopIsavev2_adam_lstm_708_lstm_cell_708_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_708_lstm_cell_708_bias_v_read_readvariableop?savev2_adam_lstm_709_lstm_cell_709_kernel_v_read_readvariableopIsavev2_adam_lstm_709_lstm_cell_709_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_709_lstm_cell_709_bias_v_read_readvariableop?savev2_adam_lstm_710_lstm_cell_710_kernel_v_read_readvariableopIsavev2_adam_lstm_710_lstm_cell_710_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_710_lstm_cell_710_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
?
?
/__inference_lstm_cell_710_layer_call_fn_4433687

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
J__inference_lstm_cell_710_layer_call_and_return_conditional_losses_4429335o
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
?#
?
while_body_4429044
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_709_4429068_0:	d?0
while_lstm_cell_709_4429070_0:	2?,
while_lstm_cell_709_4429072_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_709_4429068:	d?.
while_lstm_cell_709_4429070:	2?*
while_lstm_cell_709_4429072:	???+while/lstm_cell_709/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_709/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_709_4429068_0while_lstm_cell_709_4429070_0while_lstm_cell_709_4429072_0*
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
J__inference_lstm_cell_709_layer_call_and_return_conditional_losses_4428985?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_709/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_709/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_709/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_709/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_709_4429068while_lstm_cell_709_4429068_0"<
while_lstm_cell_709_4429070while_lstm_cell_709_4429070_0"<
while_lstm_cell_709_4429072while_lstm_cell_709_4429072_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_709/StatefulPartitionedCall+while/lstm_cell_709/StatefulPartitionedCall: 
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
while_cond_4429393
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4429393___redundant_placeholder05
1while_while_cond_4429393___redundant_placeholder15
1while_while_cond_4429393___redundant_placeholder25
1while_while_cond_4429393___redundant_placeholder3
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
while_body_4429537
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_708_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_708_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_708_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_708_matmul_readvariableop_resource:	?G
4while_lstm_cell_708_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_708_biasadd_readvariableop_resource:	???*while/lstm_cell_708/BiasAdd/ReadVariableOp?)while/lstm_cell_708/MatMul/ReadVariableOp?+while/lstm_cell_708/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_708/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_708_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_708/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_708/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_708/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_708_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_708/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_708/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_708/addAddV2$while/lstm_cell_708/MatMul:product:0&while/lstm_cell_708/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_708/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_708_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_708/BiasAddBiasAddwhile/lstm_cell_708/add:z:02while/lstm_cell_708/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_708/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_708/splitSplit,while/lstm_cell_708/split/split_dim:output:0$while/lstm_cell_708/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_708/SigmoidSigmoid"while/lstm_cell_708/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_708/Sigmoid_1Sigmoid"while/lstm_cell_708/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_708/mulMul!while/lstm_cell_708/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_708/ReluRelu"while/lstm_cell_708/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_708/mul_1Mulwhile/lstm_cell_708/Sigmoid:y:0&while/lstm_cell_708/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_708/add_1AddV2while/lstm_cell_708/mul:z:0while/lstm_cell_708/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_708/Sigmoid_2Sigmoid"while/lstm_cell_708/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_708/Relu_1Reluwhile/lstm_cell_708/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_708/mul_2Mul!while/lstm_cell_708/Sigmoid_2:y:0(while/lstm_cell_708/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_708/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_708/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_708/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_708/BiasAdd/ReadVariableOp*^while/lstm_cell_708/MatMul/ReadVariableOp,^while/lstm_cell_708/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_708_biasadd_readvariableop_resource5while_lstm_cell_708_biasadd_readvariableop_resource_0"n
4while_lstm_cell_708_matmul_1_readvariableop_resource6while_lstm_cell_708_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_708_matmul_readvariableop_resource4while_lstm_cell_708_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_708/BiasAdd/ReadVariableOp*while/lstm_cell_708/BiasAdd/ReadVariableOp2V
)while/lstm_cell_708/MatMul/ReadVariableOp)while/lstm_cell_708/MatMul/ReadVariableOp2Z
+while/lstm_cell_708/MatMul_1/ReadVariableOp+while/lstm_cell_708/MatMul_1/ReadVariableOp: 
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
?K
?
E__inference_lstm_709_layer_call_and_return_conditional_losses_4432536
inputs_0?
,lstm_cell_709_matmul_readvariableop_resource:	d?A
.lstm_cell_709_matmul_1_readvariableop_resource:	2?<
-lstm_cell_709_biasadd_readvariableop_resource:	?
identity??$lstm_cell_709/BiasAdd/ReadVariableOp?#lstm_cell_709/MatMul/ReadVariableOp?%lstm_cell_709/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_709/MatMul/ReadVariableOpReadVariableOp,lstm_cell_709_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_709/MatMulMatMulstrided_slice_2:output:0+lstm_cell_709/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_709/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_709_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_709/MatMul_1MatMulzeros:output:0-lstm_cell_709/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_709/addAddV2lstm_cell_709/MatMul:product:0 lstm_cell_709/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_709/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_709_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_709/BiasAddBiasAddlstm_cell_709/add:z:0,lstm_cell_709/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_709/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_709/splitSplit&lstm_cell_709/split/split_dim:output:0lstm_cell_709/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_709/SigmoidSigmoidlstm_cell_709/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_709/Sigmoid_1Sigmoidlstm_cell_709/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_709/mulMullstm_cell_709/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_709/ReluRelulstm_cell_709/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_709/mul_1Mullstm_cell_709/Sigmoid:y:0 lstm_cell_709/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_709/add_1AddV2lstm_cell_709/mul:z:0lstm_cell_709/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_709/Sigmoid_2Sigmoidlstm_cell_709/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_709/Relu_1Relulstm_cell_709/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_709/mul_2Mullstm_cell_709/Sigmoid_2:y:0"lstm_cell_709/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_709_matmul_readvariableop_resource.lstm_cell_709_matmul_1_readvariableop_resource-lstm_cell_709_biasadd_readvariableop_resource*
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
while_body_4432452*
condR
while_cond_4432451*K
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
NoOpNoOp%^lstm_cell_709/BiasAdd/ReadVariableOp$^lstm_cell_709/MatMul/ReadVariableOp&^lstm_cell_709/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_709/BiasAdd/ReadVariableOp$lstm_cell_709/BiasAdd/ReadVariableOp2J
#lstm_cell_709/MatMul/ReadVariableOp#lstm_cell_709/MatMul/ReadVariableOp2N
%lstm_cell_709/MatMul_1/ReadVariableOp%lstm_cell_709/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?8
?
while_body_4432925
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_710_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_710_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_710_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_710_matmul_readvariableop_resource:2(F
4while_lstm_cell_710_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_710_biasadd_readvariableop_resource:(??*while/lstm_cell_710/BiasAdd/ReadVariableOp?)while/lstm_cell_710/MatMul/ReadVariableOp?+while/lstm_cell_710/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_710/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_710_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_710/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_710/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_710/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_710_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_710/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_710/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_710/addAddV2$while/lstm_cell_710/MatMul:product:0&while/lstm_cell_710/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_710/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_710_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_710/BiasAddBiasAddwhile/lstm_cell_710/add:z:02while/lstm_cell_710/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_710/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_710/splitSplit,while/lstm_cell_710/split/split_dim:output:0$while/lstm_cell_710/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_710/SigmoidSigmoid"while/lstm_cell_710/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_710/Sigmoid_1Sigmoid"while/lstm_cell_710/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_710/mulMul!while/lstm_cell_710/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_710/ReluRelu"while/lstm_cell_710/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_710/mul_1Mulwhile/lstm_cell_710/Sigmoid:y:0&while/lstm_cell_710/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_710/add_1AddV2while/lstm_cell_710/mul:z:0while/lstm_cell_710/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_710/Sigmoid_2Sigmoid"while/lstm_cell_710/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_710/Relu_1Reluwhile/lstm_cell_710/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_710/mul_2Mul!while/lstm_cell_710/Sigmoid_2:y:0(while/lstm_cell_710/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_710/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_710/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_710/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_710/BiasAdd/ReadVariableOp*^while/lstm_cell_710/MatMul/ReadVariableOp,^while/lstm_cell_710/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_710_biasadd_readvariableop_resource5while_lstm_cell_710_biasadd_readvariableop_resource_0"n
4while_lstm_cell_710_matmul_1_readvariableop_resource6while_lstm_cell_710_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_710_matmul_readvariableop_resource4while_lstm_cell_710_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_710/BiasAdd/ReadVariableOp*while/lstm_cell_710/BiasAdd/ReadVariableOp2V
)while/lstm_cell_710/MatMul/ReadVariableOp)while/lstm_cell_710/MatMul/ReadVariableOp2Z
+while/lstm_cell_710/MatMul_1/ReadVariableOp+while/lstm_cell_710/MatMul_1/ReadVariableOp: 
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
?
while_cond_4432451
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4432451___redundant_placeholder05
1while_while_cond_4432451___redundant_placeholder15
1while_while_cond_4432451___redundant_placeholder25
1while_while_cond_4432451___redundant_placeholder3
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
?C
?

lstm_708_while_body_4430795.
*lstm_708_while_lstm_708_while_loop_counter4
0lstm_708_while_lstm_708_while_maximum_iterations
lstm_708_while_placeholder 
lstm_708_while_placeholder_1 
lstm_708_while_placeholder_2 
lstm_708_while_placeholder_3-
)lstm_708_while_lstm_708_strided_slice_1_0i
elstm_708_while_tensorarrayv2read_tensorlistgetitem_lstm_708_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_708_while_lstm_cell_708_matmul_readvariableop_resource_0:	?R
?lstm_708_while_lstm_cell_708_matmul_1_readvariableop_resource_0:	d?M
>lstm_708_while_lstm_cell_708_biasadd_readvariableop_resource_0:	?
lstm_708_while_identity
lstm_708_while_identity_1
lstm_708_while_identity_2
lstm_708_while_identity_3
lstm_708_while_identity_4
lstm_708_while_identity_5+
'lstm_708_while_lstm_708_strided_slice_1g
clstm_708_while_tensorarrayv2read_tensorlistgetitem_lstm_708_tensorarrayunstack_tensorlistfromtensorN
;lstm_708_while_lstm_cell_708_matmul_readvariableop_resource:	?P
=lstm_708_while_lstm_cell_708_matmul_1_readvariableop_resource:	d?K
<lstm_708_while_lstm_cell_708_biasadd_readvariableop_resource:	???3lstm_708/while/lstm_cell_708/BiasAdd/ReadVariableOp?2lstm_708/while/lstm_cell_708/MatMul/ReadVariableOp?4lstm_708/while/lstm_cell_708/MatMul_1/ReadVariableOp?
@lstm_708/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_708/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_708_while_tensorarrayv2read_tensorlistgetitem_lstm_708_tensorarrayunstack_tensorlistfromtensor_0lstm_708_while_placeholderIlstm_708/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_708/while/lstm_cell_708/MatMul/ReadVariableOpReadVariableOp=lstm_708_while_lstm_cell_708_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_708/while/lstm_cell_708/MatMulMatMul9lstm_708/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_708/while/lstm_cell_708/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_708/while/lstm_cell_708/MatMul_1/ReadVariableOpReadVariableOp?lstm_708_while_lstm_cell_708_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_708/while/lstm_cell_708/MatMul_1MatMullstm_708_while_placeholder_2<lstm_708/while/lstm_cell_708/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_708/while/lstm_cell_708/addAddV2-lstm_708/while/lstm_cell_708/MatMul:product:0/lstm_708/while/lstm_cell_708/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_708/while/lstm_cell_708/BiasAdd/ReadVariableOpReadVariableOp>lstm_708_while_lstm_cell_708_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_708/while/lstm_cell_708/BiasAddBiasAdd$lstm_708/while/lstm_cell_708/add:z:0;lstm_708/while/lstm_cell_708/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_708/while/lstm_cell_708/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_708/while/lstm_cell_708/splitSplit5lstm_708/while/lstm_cell_708/split/split_dim:output:0-lstm_708/while/lstm_cell_708/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_708/while/lstm_cell_708/SigmoidSigmoid+lstm_708/while/lstm_cell_708/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_708/while/lstm_cell_708/Sigmoid_1Sigmoid+lstm_708/while/lstm_cell_708/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_708/while/lstm_cell_708/mulMul*lstm_708/while/lstm_cell_708/Sigmoid_1:y:0lstm_708_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_708/while/lstm_cell_708/ReluRelu+lstm_708/while/lstm_cell_708/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_708/while/lstm_cell_708/mul_1Mul(lstm_708/while/lstm_cell_708/Sigmoid:y:0/lstm_708/while/lstm_cell_708/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_708/while/lstm_cell_708/add_1AddV2$lstm_708/while/lstm_cell_708/mul:z:0&lstm_708/while/lstm_cell_708/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_708/while/lstm_cell_708/Sigmoid_2Sigmoid+lstm_708/while/lstm_cell_708/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_708/while/lstm_cell_708/Relu_1Relu&lstm_708/while/lstm_cell_708/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_708/while/lstm_cell_708/mul_2Mul*lstm_708/while/lstm_cell_708/Sigmoid_2:y:01lstm_708/while/lstm_cell_708/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_708/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_708_while_placeholder_1lstm_708_while_placeholder&lstm_708/while/lstm_cell_708/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_708/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_708/while/addAddV2lstm_708_while_placeholderlstm_708/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_708/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_708/while/add_1AddV2*lstm_708_while_lstm_708_while_loop_counterlstm_708/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_708/while/IdentityIdentitylstm_708/while/add_1:z:0^lstm_708/while/NoOp*
T0*
_output_shapes
: ?
lstm_708/while/Identity_1Identity0lstm_708_while_lstm_708_while_maximum_iterations^lstm_708/while/NoOp*
T0*
_output_shapes
: t
lstm_708/while/Identity_2Identitylstm_708/while/add:z:0^lstm_708/while/NoOp*
T0*
_output_shapes
: ?
lstm_708/while/Identity_3IdentityClstm_708/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_708/while/NoOp*
T0*
_output_shapes
: ?
lstm_708/while/Identity_4Identity&lstm_708/while/lstm_cell_708/mul_2:z:0^lstm_708/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_708/while/Identity_5Identity&lstm_708/while/lstm_cell_708/add_1:z:0^lstm_708/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_708/while/NoOpNoOp4^lstm_708/while/lstm_cell_708/BiasAdd/ReadVariableOp3^lstm_708/while/lstm_cell_708/MatMul/ReadVariableOp5^lstm_708/while/lstm_cell_708/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_708_while_identity lstm_708/while/Identity:output:0"?
lstm_708_while_identity_1"lstm_708/while/Identity_1:output:0"?
lstm_708_while_identity_2"lstm_708/while/Identity_2:output:0"?
lstm_708_while_identity_3"lstm_708/while/Identity_3:output:0"?
lstm_708_while_identity_4"lstm_708/while/Identity_4:output:0"?
lstm_708_while_identity_5"lstm_708/while/Identity_5:output:0"T
'lstm_708_while_lstm_708_strided_slice_1)lstm_708_while_lstm_708_strided_slice_1_0"~
<lstm_708_while_lstm_cell_708_biasadd_readvariableop_resource>lstm_708_while_lstm_cell_708_biasadd_readvariableop_resource_0"?
=lstm_708_while_lstm_cell_708_matmul_1_readvariableop_resource?lstm_708_while_lstm_cell_708_matmul_1_readvariableop_resource_0"|
;lstm_708_while_lstm_cell_708_matmul_readvariableop_resource=lstm_708_while_lstm_cell_708_matmul_readvariableop_resource_0"?
clstm_708_while_tensorarrayv2read_tensorlistgetitem_lstm_708_tensorarrayunstack_tensorlistfromtensorelstm_708_while_tensorarrayv2read_tensorlistgetitem_lstm_708_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_708/while/lstm_cell_708/BiasAdd/ReadVariableOp3lstm_708/while/lstm_cell_708/BiasAdd/ReadVariableOp2h
2lstm_708/while/lstm_cell_708/MatMul/ReadVariableOp2lstm_708/while/lstm_cell_708/MatMul/ReadVariableOp2l
4lstm_708/while/lstm_cell_708/MatMul_1/ReadVariableOp4lstm_708/while/lstm_cell_708/MatMul_1/ReadVariableOp: 
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
?C
?

lstm_709_while_body_4430934.
*lstm_709_while_lstm_709_while_loop_counter4
0lstm_709_while_lstm_709_while_maximum_iterations
lstm_709_while_placeholder 
lstm_709_while_placeholder_1 
lstm_709_while_placeholder_2 
lstm_709_while_placeholder_3-
)lstm_709_while_lstm_709_strided_slice_1_0i
elstm_709_while_tensorarrayv2read_tensorlistgetitem_lstm_709_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_709_while_lstm_cell_709_matmul_readvariableop_resource_0:	d?R
?lstm_709_while_lstm_cell_709_matmul_1_readvariableop_resource_0:	2?M
>lstm_709_while_lstm_cell_709_biasadd_readvariableop_resource_0:	?
lstm_709_while_identity
lstm_709_while_identity_1
lstm_709_while_identity_2
lstm_709_while_identity_3
lstm_709_while_identity_4
lstm_709_while_identity_5+
'lstm_709_while_lstm_709_strided_slice_1g
clstm_709_while_tensorarrayv2read_tensorlistgetitem_lstm_709_tensorarrayunstack_tensorlistfromtensorN
;lstm_709_while_lstm_cell_709_matmul_readvariableop_resource:	d?P
=lstm_709_while_lstm_cell_709_matmul_1_readvariableop_resource:	2?K
<lstm_709_while_lstm_cell_709_biasadd_readvariableop_resource:	???3lstm_709/while/lstm_cell_709/BiasAdd/ReadVariableOp?2lstm_709/while/lstm_cell_709/MatMul/ReadVariableOp?4lstm_709/while/lstm_cell_709/MatMul_1/ReadVariableOp?
@lstm_709/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_709/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_709_while_tensorarrayv2read_tensorlistgetitem_lstm_709_tensorarrayunstack_tensorlistfromtensor_0lstm_709_while_placeholderIlstm_709/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_709/while/lstm_cell_709/MatMul/ReadVariableOpReadVariableOp=lstm_709_while_lstm_cell_709_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_709/while/lstm_cell_709/MatMulMatMul9lstm_709/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_709/while/lstm_cell_709/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_709/while/lstm_cell_709/MatMul_1/ReadVariableOpReadVariableOp?lstm_709_while_lstm_cell_709_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_709/while/lstm_cell_709/MatMul_1MatMullstm_709_while_placeholder_2<lstm_709/while/lstm_cell_709/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_709/while/lstm_cell_709/addAddV2-lstm_709/while/lstm_cell_709/MatMul:product:0/lstm_709/while/lstm_cell_709/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_709/while/lstm_cell_709/BiasAdd/ReadVariableOpReadVariableOp>lstm_709_while_lstm_cell_709_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_709/while/lstm_cell_709/BiasAddBiasAdd$lstm_709/while/lstm_cell_709/add:z:0;lstm_709/while/lstm_cell_709/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_709/while/lstm_cell_709/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_709/while/lstm_cell_709/splitSplit5lstm_709/while/lstm_cell_709/split/split_dim:output:0-lstm_709/while/lstm_cell_709/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_709/while/lstm_cell_709/SigmoidSigmoid+lstm_709/while/lstm_cell_709/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_709/while/lstm_cell_709/Sigmoid_1Sigmoid+lstm_709/while/lstm_cell_709/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_709/while/lstm_cell_709/mulMul*lstm_709/while/lstm_cell_709/Sigmoid_1:y:0lstm_709_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_709/while/lstm_cell_709/ReluRelu+lstm_709/while/lstm_cell_709/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_709/while/lstm_cell_709/mul_1Mul(lstm_709/while/lstm_cell_709/Sigmoid:y:0/lstm_709/while/lstm_cell_709/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_709/while/lstm_cell_709/add_1AddV2$lstm_709/while/lstm_cell_709/mul:z:0&lstm_709/while/lstm_cell_709/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_709/while/lstm_cell_709/Sigmoid_2Sigmoid+lstm_709/while/lstm_cell_709/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_709/while/lstm_cell_709/Relu_1Relu&lstm_709/while/lstm_cell_709/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_709/while/lstm_cell_709/mul_2Mul*lstm_709/while/lstm_cell_709/Sigmoid_2:y:01lstm_709/while/lstm_cell_709/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_709/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_709_while_placeholder_1lstm_709_while_placeholder&lstm_709/while/lstm_cell_709/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_709/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_709/while/addAddV2lstm_709_while_placeholderlstm_709/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_709/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_709/while/add_1AddV2*lstm_709_while_lstm_709_while_loop_counterlstm_709/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_709/while/IdentityIdentitylstm_709/while/add_1:z:0^lstm_709/while/NoOp*
T0*
_output_shapes
: ?
lstm_709/while/Identity_1Identity0lstm_709_while_lstm_709_while_maximum_iterations^lstm_709/while/NoOp*
T0*
_output_shapes
: t
lstm_709/while/Identity_2Identitylstm_709/while/add:z:0^lstm_709/while/NoOp*
T0*
_output_shapes
: ?
lstm_709/while/Identity_3IdentityClstm_709/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_709/while/NoOp*
T0*
_output_shapes
: ?
lstm_709/while/Identity_4Identity&lstm_709/while/lstm_cell_709/mul_2:z:0^lstm_709/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_709/while/Identity_5Identity&lstm_709/while/lstm_cell_709/add_1:z:0^lstm_709/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_709/while/NoOpNoOp4^lstm_709/while/lstm_cell_709/BiasAdd/ReadVariableOp3^lstm_709/while/lstm_cell_709/MatMul/ReadVariableOp5^lstm_709/while/lstm_cell_709/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_709_while_identity lstm_709/while/Identity:output:0"?
lstm_709_while_identity_1"lstm_709/while/Identity_1:output:0"?
lstm_709_while_identity_2"lstm_709/while/Identity_2:output:0"?
lstm_709_while_identity_3"lstm_709/while/Identity_3:output:0"?
lstm_709_while_identity_4"lstm_709/while/Identity_4:output:0"?
lstm_709_while_identity_5"lstm_709/while/Identity_5:output:0"T
'lstm_709_while_lstm_709_strided_slice_1)lstm_709_while_lstm_709_strided_slice_1_0"~
<lstm_709_while_lstm_cell_709_biasadd_readvariableop_resource>lstm_709_while_lstm_cell_709_biasadd_readvariableop_resource_0"?
=lstm_709_while_lstm_cell_709_matmul_1_readvariableop_resource?lstm_709_while_lstm_cell_709_matmul_1_readvariableop_resource_0"|
;lstm_709_while_lstm_cell_709_matmul_readvariableop_resource=lstm_709_while_lstm_cell_709_matmul_readvariableop_resource_0"?
clstm_709_while_tensorarrayv2read_tensorlistgetitem_lstm_709_tensorarrayunstack_tensorlistfromtensorelstm_709_while_tensorarrayv2read_tensorlistgetitem_lstm_709_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_709/while/lstm_cell_709/BiasAdd/ReadVariableOp3lstm_709/while/lstm_cell_709/BiasAdd/ReadVariableOp2h
2lstm_709/while/lstm_cell_709/MatMul/ReadVariableOp2lstm_709/while/lstm_cell_709/MatMul/ReadVariableOp2l
4lstm_709/while/lstm_cell_709/MatMul_1/ReadVariableOp4lstm_709/while/lstm_cell_709/MatMul_1/ReadVariableOp: 
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
/__inference_lstm_cell_708_layer_call_fn_4433474

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
J__inference_lstm_cell_708_layer_call_and_return_conditional_losses_4428489o
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
?
?
*sequential_236_lstm_709_while_cond_4428192L
Hsequential_236_lstm_709_while_sequential_236_lstm_709_while_loop_counterR
Nsequential_236_lstm_709_while_sequential_236_lstm_709_while_maximum_iterations-
)sequential_236_lstm_709_while_placeholder/
+sequential_236_lstm_709_while_placeholder_1/
+sequential_236_lstm_709_while_placeholder_2/
+sequential_236_lstm_709_while_placeholder_3N
Jsequential_236_lstm_709_while_less_sequential_236_lstm_709_strided_slice_1e
asequential_236_lstm_709_while_sequential_236_lstm_709_while_cond_4428192___redundant_placeholder0e
asequential_236_lstm_709_while_sequential_236_lstm_709_while_cond_4428192___redundant_placeholder1e
asequential_236_lstm_709_while_sequential_236_lstm_709_while_cond_4428192___redundant_placeholder2e
asequential_236_lstm_709_while_sequential_236_lstm_709_while_cond_4428192___redundant_placeholder3*
&sequential_236_lstm_709_while_identity
?
"sequential_236/lstm_709/while/LessLess)sequential_236_lstm_709_while_placeholderJsequential_236_lstm_709_while_less_sequential_236_lstm_709_strided_slice_1*
T0*
_output_shapes
: {
&sequential_236/lstm_709/while/IdentityIdentity&sequential_236/lstm_709/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_236_lstm_709_while_identity/sequential_236/lstm_709/while/Identity:output:0*(
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
J__inference_lstm_cell_708_layer_call_and_return_conditional_losses_4428489

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
?
?
J__inference_lstm_cell_709_layer_call_and_return_conditional_losses_4433621

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
?#
?
while_body_4428853
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_709_4428877_0:	d?0
while_lstm_cell_709_4428879_0:	2?,
while_lstm_cell_709_4428881_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_709_4428877:	d?.
while_lstm_cell_709_4428879:	2?*
while_lstm_cell_709_4428881:	???+while/lstm_cell_709/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_709/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_709_4428877_0while_lstm_cell_709_4428879_0while_lstm_cell_709_4428881_0*
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
J__inference_lstm_cell_709_layer_call_and_return_conditional_losses_4428839?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_709/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_709/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_709/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_709/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_709_4428877while_lstm_cell_709_4428877_0"<
while_lstm_cell_709_4428879while_lstm_cell_709_4428879_0"<
while_lstm_cell_709_4428881while_lstm_cell_709_4428881_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_709/StatefulPartitionedCall+while/lstm_cell_709/StatefulPartitionedCall: 
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
?
?
J__inference_lstm_cell_710_layer_call_and_return_conditional_losses_4433719

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
?
?
*sequential_236_lstm_710_while_cond_4428331L
Hsequential_236_lstm_710_while_sequential_236_lstm_710_while_loop_counterR
Nsequential_236_lstm_710_while_sequential_236_lstm_710_while_maximum_iterations-
)sequential_236_lstm_710_while_placeholder/
+sequential_236_lstm_710_while_placeholder_1/
+sequential_236_lstm_710_while_placeholder_2/
+sequential_236_lstm_710_while_placeholder_3N
Jsequential_236_lstm_710_while_less_sequential_236_lstm_710_strided_slice_1e
asequential_236_lstm_710_while_sequential_236_lstm_710_while_cond_4428331___redundant_placeholder0e
asequential_236_lstm_710_while_sequential_236_lstm_710_while_cond_4428331___redundant_placeholder1e
asequential_236_lstm_710_while_sequential_236_lstm_710_while_cond_4428331___redundant_placeholder2e
asequential_236_lstm_710_while_sequential_236_lstm_710_while_cond_4428331___redundant_placeholder3*
&sequential_236_lstm_710_while_identity
?
"sequential_236/lstm_710/while/LessLess)sequential_236_lstm_710_while_placeholderJsequential_236_lstm_710_while_less_sequential_236_lstm_710_strided_slice_1*
T0*
_output_shapes
: {
&sequential_236/lstm_710/while/IdentityIdentity&sequential_236/lstm_710/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_236_lstm_710_while_identity/sequential_236/lstm_710/while/Identity:output:0*(
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
E__inference_lstm_710_layer_call_and_return_conditional_losses_4433438

inputs>
,lstm_cell_710_matmul_readvariableop_resource:2(@
.lstm_cell_710_matmul_1_readvariableop_resource:
(;
-lstm_cell_710_biasadd_readvariableop_resource:(
identity??$lstm_cell_710/BiasAdd/ReadVariableOp?#lstm_cell_710/MatMul/ReadVariableOp?%lstm_cell_710/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_710/MatMul/ReadVariableOpReadVariableOp,lstm_cell_710_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_710/MatMulMatMulstrided_slice_2:output:0+lstm_cell_710/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_710/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_710_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_710/MatMul_1MatMulzeros:output:0-lstm_cell_710/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_710/addAddV2lstm_cell_710/MatMul:product:0 lstm_cell_710/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_710/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_710_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_710/BiasAddBiasAddlstm_cell_710/add:z:0,lstm_cell_710/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_710/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_710/splitSplit&lstm_cell_710/split/split_dim:output:0lstm_cell_710/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_710/SigmoidSigmoidlstm_cell_710/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_710/Sigmoid_1Sigmoidlstm_cell_710/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_710/mulMullstm_cell_710/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_710/ReluRelulstm_cell_710/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_710/mul_1Mullstm_cell_710/Sigmoid:y:0 lstm_cell_710/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_710/add_1AddV2lstm_cell_710/mul:z:0lstm_cell_710/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_710/Sigmoid_2Sigmoidlstm_cell_710/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_710/Relu_1Relulstm_cell_710/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_710/mul_2Mullstm_cell_710/Sigmoid_2:y:0"lstm_cell_710/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_710_matmul_readvariableop_resource.lstm_cell_710_matmul_1_readvariableop_resource-lstm_cell_710_biasadd_readvariableop_resource*
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
while_body_4433354*
condR
while_cond_4433353*K
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
NoOpNoOp%^lstm_cell_710/BiasAdd/ReadVariableOp$^lstm_cell_710/MatMul/ReadVariableOp&^lstm_cell_710/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_710/BiasAdd/ReadVariableOp$lstm_cell_710/BiasAdd/ReadVariableOp2J
#lstm_cell_710/MatMul/ReadVariableOp#lstm_cell_710/MatMul/ReadVariableOp2N
%lstm_cell_710/MatMul_1/ReadVariableOp%lstm_cell_710/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
*sequential_236_lstm_708_while_cond_4428053L
Hsequential_236_lstm_708_while_sequential_236_lstm_708_while_loop_counterR
Nsequential_236_lstm_708_while_sequential_236_lstm_708_while_maximum_iterations-
)sequential_236_lstm_708_while_placeholder/
+sequential_236_lstm_708_while_placeholder_1/
+sequential_236_lstm_708_while_placeholder_2/
+sequential_236_lstm_708_while_placeholder_3N
Jsequential_236_lstm_708_while_less_sequential_236_lstm_708_strided_slice_1e
asequential_236_lstm_708_while_sequential_236_lstm_708_while_cond_4428053___redundant_placeholder0e
asequential_236_lstm_708_while_sequential_236_lstm_708_while_cond_4428053___redundant_placeholder1e
asequential_236_lstm_708_while_sequential_236_lstm_708_while_cond_4428053___redundant_placeholder2e
asequential_236_lstm_708_while_sequential_236_lstm_708_while_cond_4428053___redundant_placeholder3*
&sequential_236_lstm_708_while_identity
?
"sequential_236/lstm_708/while/LessLess)sequential_236_lstm_708_while_placeholderJsequential_236_lstm_708_while_less_sequential_236_lstm_708_strided_slice_1*
T0*
_output_shapes
: {
&sequential_236/lstm_708/while/IdentityIdentity&sequential_236/lstm_708/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_236_lstm_708_while_identity/sequential_236/lstm_708/while/Identity:output:0*(
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
E__inference_lstm_708_layer_call_and_return_conditional_losses_4430467

inputs?
,lstm_cell_708_matmul_readvariableop_resource:	?A
.lstm_cell_708_matmul_1_readvariableop_resource:	d?<
-lstm_cell_708_biasadd_readvariableop_resource:	?
identity??$lstm_cell_708/BiasAdd/ReadVariableOp?#lstm_cell_708/MatMul/ReadVariableOp?%lstm_cell_708/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_708/MatMul/ReadVariableOpReadVariableOp,lstm_cell_708_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_708/MatMulMatMulstrided_slice_2:output:0+lstm_cell_708/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_708/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_708_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_708/MatMul_1MatMulzeros:output:0-lstm_cell_708/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_708/addAddV2lstm_cell_708/MatMul:product:0 lstm_cell_708/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_708/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_708_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_708/BiasAddBiasAddlstm_cell_708/add:z:0,lstm_cell_708/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_708/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_708/splitSplit&lstm_cell_708/split/split_dim:output:0lstm_cell_708/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_708/SigmoidSigmoidlstm_cell_708/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_708/Sigmoid_1Sigmoidlstm_cell_708/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_708/mulMullstm_cell_708/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_708/ReluRelulstm_cell_708/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_708/mul_1Mullstm_cell_708/Sigmoid:y:0 lstm_cell_708/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_708/add_1AddV2lstm_cell_708/mul:z:0lstm_cell_708/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_708/Sigmoid_2Sigmoidlstm_cell_708/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_708/Relu_1Relulstm_cell_708/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_708/mul_2Mullstm_cell_708/Sigmoid_2:y:0"lstm_cell_708/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_708_matmul_readvariableop_resource.lstm_cell_708_matmul_1_readvariableop_resource-lstm_cell_708_biasadd_readvariableop_resource*
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
while_body_4430383*
condR
while_cond_4430382*K
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
NoOpNoOp%^lstm_cell_708/BiasAdd/ReadVariableOp$^lstm_cell_708/MatMul/ReadVariableOp&^lstm_cell_708/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_708/BiasAdd/ReadVariableOp$lstm_cell_708/BiasAdd/ReadVariableOp2J
#lstm_cell_708/MatMul/ReadVariableOp#lstm_cell_708/MatMul/ReadVariableOp2N
%lstm_cell_708/MatMul_1/ReadVariableOp%lstm_cell_708/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?J
?
E__inference_lstm_708_layer_call_and_return_conditional_losses_4429621

inputs?
,lstm_cell_708_matmul_readvariableop_resource:	?A
.lstm_cell_708_matmul_1_readvariableop_resource:	d?<
-lstm_cell_708_biasadd_readvariableop_resource:	?
identity??$lstm_cell_708/BiasAdd/ReadVariableOp?#lstm_cell_708/MatMul/ReadVariableOp?%lstm_cell_708/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_708/MatMul/ReadVariableOpReadVariableOp,lstm_cell_708_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_708/MatMulMatMulstrided_slice_2:output:0+lstm_cell_708/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_708/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_708_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_708/MatMul_1MatMulzeros:output:0-lstm_cell_708/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_708/addAddV2lstm_cell_708/MatMul:product:0 lstm_cell_708/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_708/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_708_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_708/BiasAddBiasAddlstm_cell_708/add:z:0,lstm_cell_708/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_708/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_708/splitSplit&lstm_cell_708/split/split_dim:output:0lstm_cell_708/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_708/SigmoidSigmoidlstm_cell_708/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_708/Sigmoid_1Sigmoidlstm_cell_708/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_708/mulMullstm_cell_708/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_708/ReluRelulstm_cell_708/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_708/mul_1Mullstm_cell_708/Sigmoid:y:0 lstm_cell_708/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_708/add_1AddV2lstm_cell_708/mul:z:0lstm_cell_708/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_708/Sigmoid_2Sigmoidlstm_cell_708/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_708/Relu_1Relulstm_cell_708/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_708/mul_2Mullstm_cell_708/Sigmoid_2:y:0"lstm_cell_708/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_708_matmul_readvariableop_resource.lstm_cell_708_matmul_1_readvariableop_resource-lstm_cell_708_biasadd_readvariableop_resource*
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
while_body_4429537*
condR
while_cond_4429536*K
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
NoOpNoOp%^lstm_cell_708/BiasAdd/ReadVariableOp$^lstm_cell_708/MatMul/ReadVariableOp&^lstm_cell_708/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_708/BiasAdd/ReadVariableOp$lstm_cell_708/BiasAdd/ReadVariableOp2J
#lstm_cell_708/MatMul/ReadVariableOp#lstm_cell_708/MatMul/ReadVariableOp2N
%lstm_cell_708/MatMul_1/ReadVariableOp%lstm_cell_708/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
0__inference_sequential_236_layer_call_fn_4429971
lstm_708_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_708_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_236_layer_call_and_return_conditional_losses_4429946o
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
_user_specified_namelstm_708_input
?J
?
E__inference_lstm_710_layer_call_and_return_conditional_losses_4429921

inputs>
,lstm_cell_710_matmul_readvariableop_resource:2(@
.lstm_cell_710_matmul_1_readvariableop_resource:
(;
-lstm_cell_710_biasadd_readvariableop_resource:(
identity??$lstm_cell_710/BiasAdd/ReadVariableOp?#lstm_cell_710/MatMul/ReadVariableOp?%lstm_cell_710/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_710/MatMul/ReadVariableOpReadVariableOp,lstm_cell_710_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_710/MatMulMatMulstrided_slice_2:output:0+lstm_cell_710/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_710/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_710_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_710/MatMul_1MatMulzeros:output:0-lstm_cell_710/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_710/addAddV2lstm_cell_710/MatMul:product:0 lstm_cell_710/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_710/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_710_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_710/BiasAddBiasAddlstm_cell_710/add:z:0,lstm_cell_710/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_710/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_710/splitSplit&lstm_cell_710/split/split_dim:output:0lstm_cell_710/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_710/SigmoidSigmoidlstm_cell_710/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_710/Sigmoid_1Sigmoidlstm_cell_710/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_710/mulMullstm_cell_710/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_710/ReluRelulstm_cell_710/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_710/mul_1Mullstm_cell_710/Sigmoid:y:0 lstm_cell_710/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_710/add_1AddV2lstm_cell_710/mul:z:0lstm_cell_710/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_710/Sigmoid_2Sigmoidlstm_cell_710/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_710/Relu_1Relulstm_cell_710/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_710/mul_2Mullstm_cell_710/Sigmoid_2:y:0"lstm_cell_710/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_710_matmul_readvariableop_resource.lstm_cell_710_matmul_1_readvariableop_resource-lstm_cell_710_biasadd_readvariableop_resource*
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
while_body_4429837*
condR
while_cond_4429836*K
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
NoOpNoOp%^lstm_cell_710/BiasAdd/ReadVariableOp$^lstm_cell_710/MatMul/ReadVariableOp&^lstm_cell_710/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_710/BiasAdd/ReadVariableOp$lstm_cell_710/BiasAdd/ReadVariableOp2J
#lstm_cell_710/MatMul/ReadVariableOp#lstm_cell_710/MatMul/ReadVariableOp2N
%lstm_cell_710/MatMul_1/ReadVariableOp%lstm_cell_710/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?8
?
while_body_4430053
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_710_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_710_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_710_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_710_matmul_readvariableop_resource:2(F
4while_lstm_cell_710_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_710_biasadd_readvariableop_resource:(??*while/lstm_cell_710/BiasAdd/ReadVariableOp?)while/lstm_cell_710/MatMul/ReadVariableOp?+while/lstm_cell_710/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_710/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_710_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_710/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_710/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_710/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_710_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_710/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_710/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_710/addAddV2$while/lstm_cell_710/MatMul:product:0&while/lstm_cell_710/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_710/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_710_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_710/BiasAddBiasAddwhile/lstm_cell_710/add:z:02while/lstm_cell_710/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_710/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_710/splitSplit,while/lstm_cell_710/split/split_dim:output:0$while/lstm_cell_710/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_710/SigmoidSigmoid"while/lstm_cell_710/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_710/Sigmoid_1Sigmoid"while/lstm_cell_710/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_710/mulMul!while/lstm_cell_710/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_710/ReluRelu"while/lstm_cell_710/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_710/mul_1Mulwhile/lstm_cell_710/Sigmoid:y:0&while/lstm_cell_710/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_710/add_1AddV2while/lstm_cell_710/mul:z:0while/lstm_cell_710/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_710/Sigmoid_2Sigmoid"while/lstm_cell_710/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_710/Relu_1Reluwhile/lstm_cell_710/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_710/mul_2Mul!while/lstm_cell_710/Sigmoid_2:y:0(while/lstm_cell_710/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_710/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_710/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_710/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_710/BiasAdd/ReadVariableOp*^while/lstm_cell_710/MatMul/ReadVariableOp,^while/lstm_cell_710/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_710_biasadd_readvariableop_resource5while_lstm_cell_710_biasadd_readvariableop_resource_0"n
4while_lstm_cell_710_matmul_1_readvariableop_resource6while_lstm_cell_710_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_710_matmul_readvariableop_resource4while_lstm_cell_710_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_710/BiasAdd/ReadVariableOp*while/lstm_cell_710/BiasAdd/ReadVariableOp2V
)while/lstm_cell_710/MatMul/ReadVariableOp)while/lstm_cell_710/MatMul/ReadVariableOp2Z
+while/lstm_cell_710/MatMul_1/ReadVariableOp+while/lstm_cell_710/MatMul_1/ReadVariableOp: 
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
?
?
*__inference_lstm_710_layer_call_fn_4432855

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
E__inference_lstm_710_layer_call_and_return_conditional_losses_4429921o
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
?8
?
E__inference_lstm_708_layer_call_and_return_conditional_losses_4428572

inputs(
lstm_cell_708_4428490:	?(
lstm_cell_708_4428492:	d?$
lstm_cell_708_4428494:	?
identity??%lstm_cell_708/StatefulPartitionedCall?while;
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
%lstm_cell_708/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_708_4428490lstm_cell_708_4428492lstm_cell_708_4428494*
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
J__inference_lstm_cell_708_layer_call_and_return_conditional_losses_4428489n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_708_4428490lstm_cell_708_4428492lstm_cell_708_4428494*
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
while_body_4428503*
condR
while_cond_4428502*K
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
NoOpNoOp&^lstm_cell_708/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_708/StatefulPartitionedCall%lstm_cell_708/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?

?
0__inference_sequential_236_layer_call_fn_4430709

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
K__inference_sequential_236_layer_call_and_return_conditional_losses_4429946o
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
while_cond_4429686
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4429686___redundant_placeholder05
1while_while_cond_4429686___redundant_placeholder15
1while_while_cond_4429686___redundant_placeholder25
1while_while_cond_4429686___redundant_placeholder3
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
while_body_4431693
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_708_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_708_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_708_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_708_matmul_readvariableop_resource:	?G
4while_lstm_cell_708_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_708_biasadd_readvariableop_resource:	???*while/lstm_cell_708/BiasAdd/ReadVariableOp?)while/lstm_cell_708/MatMul/ReadVariableOp?+while/lstm_cell_708/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_708/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_708_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_708/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_708/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_708/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_708_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_708/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_708/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_708/addAddV2$while/lstm_cell_708/MatMul:product:0&while/lstm_cell_708/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_708/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_708_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_708/BiasAddBiasAddwhile/lstm_cell_708/add:z:02while/lstm_cell_708/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_708/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_708/splitSplit,while/lstm_cell_708/split/split_dim:output:0$while/lstm_cell_708/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_708/SigmoidSigmoid"while/lstm_cell_708/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_708/Sigmoid_1Sigmoid"while/lstm_cell_708/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_708/mulMul!while/lstm_cell_708/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_708/ReluRelu"while/lstm_cell_708/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_708/mul_1Mulwhile/lstm_cell_708/Sigmoid:y:0&while/lstm_cell_708/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_708/add_1AddV2while/lstm_cell_708/mul:z:0while/lstm_cell_708/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_708/Sigmoid_2Sigmoid"while/lstm_cell_708/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_708/Relu_1Reluwhile/lstm_cell_708/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_708/mul_2Mul!while/lstm_cell_708/Sigmoid_2:y:0(while/lstm_cell_708/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_708/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_708/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_708/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_708/BiasAdd/ReadVariableOp*^while/lstm_cell_708/MatMul/ReadVariableOp,^while/lstm_cell_708/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_708_biasadd_readvariableop_resource5while_lstm_cell_708_biasadd_readvariableop_resource_0"n
4while_lstm_cell_708_matmul_1_readvariableop_resource6while_lstm_cell_708_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_708_matmul_readvariableop_resource4while_lstm_cell_708_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_708/BiasAdd/ReadVariableOp*while/lstm_cell_708/BiasAdd/ReadVariableOp2V
)while/lstm_cell_708/MatMul/ReadVariableOp)while/lstm_cell_708/MatMul/ReadVariableOp2Z
+while/lstm_cell_708/MatMul_1/ReadVariableOp+while/lstm_cell_708/MatMul_1/ReadVariableOp: 
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
?K
?
E__inference_lstm_708_layer_call_and_return_conditional_losses_4431920
inputs_0?
,lstm_cell_708_matmul_readvariableop_resource:	?A
.lstm_cell_708_matmul_1_readvariableop_resource:	d?<
-lstm_cell_708_biasadd_readvariableop_resource:	?
identity??$lstm_cell_708/BiasAdd/ReadVariableOp?#lstm_cell_708/MatMul/ReadVariableOp?%lstm_cell_708/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_708/MatMul/ReadVariableOpReadVariableOp,lstm_cell_708_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_708/MatMulMatMulstrided_slice_2:output:0+lstm_cell_708/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_708/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_708_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_708/MatMul_1MatMulzeros:output:0-lstm_cell_708/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_708/addAddV2lstm_cell_708/MatMul:product:0 lstm_cell_708/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_708/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_708_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_708/BiasAddBiasAddlstm_cell_708/add:z:0,lstm_cell_708/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_708/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_708/splitSplit&lstm_cell_708/split/split_dim:output:0lstm_cell_708/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_708/SigmoidSigmoidlstm_cell_708/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_708/Sigmoid_1Sigmoidlstm_cell_708/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_708/mulMullstm_cell_708/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_708/ReluRelulstm_cell_708/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_708/mul_1Mullstm_cell_708/Sigmoid:y:0 lstm_cell_708/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_708/add_1AddV2lstm_cell_708/mul:z:0lstm_cell_708/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_708/Sigmoid_2Sigmoidlstm_cell_708/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_708/Relu_1Relulstm_cell_708/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_708/mul_2Mullstm_cell_708/Sigmoid_2:y:0"lstm_cell_708/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_708_matmul_readvariableop_resource.lstm_cell_708_matmul_1_readvariableop_resource-lstm_cell_708_biasadd_readvariableop_resource*
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
while_body_4431836*
condR
while_cond_4431835*K
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
NoOpNoOp%^lstm_cell_708/BiasAdd/ReadVariableOp$^lstm_cell_708/MatMul/ReadVariableOp&^lstm_cell_708/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_708/BiasAdd/ReadVariableOp$lstm_cell_708/BiasAdd/ReadVariableOp2J
#lstm_cell_708/MatMul/ReadVariableOp#lstm_cell_708/MatMul/ReadVariableOp2N
%lstm_cell_708/MatMul_1/ReadVariableOp%lstm_cell_708/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
while_cond_4428852
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4428852___redundant_placeholder05
1while_while_cond_4428852___redundant_placeholder15
1while_while_cond_4428852___redundant_placeholder25
1while_while_cond_4428852___redundant_placeholder3
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
?
*__inference_lstm_710_layer_call_fn_4432844
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
E__inference_lstm_710_layer_call_and_return_conditional_losses_4429463o
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
?C
?

lstm_710_while_body_4431073.
*lstm_710_while_lstm_710_while_loop_counter4
0lstm_710_while_lstm_710_while_maximum_iterations
lstm_710_while_placeholder 
lstm_710_while_placeholder_1 
lstm_710_while_placeholder_2 
lstm_710_while_placeholder_3-
)lstm_710_while_lstm_710_strided_slice_1_0i
elstm_710_while_tensorarrayv2read_tensorlistgetitem_lstm_710_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_710_while_lstm_cell_710_matmul_readvariableop_resource_0:2(Q
?lstm_710_while_lstm_cell_710_matmul_1_readvariableop_resource_0:
(L
>lstm_710_while_lstm_cell_710_biasadd_readvariableop_resource_0:(
lstm_710_while_identity
lstm_710_while_identity_1
lstm_710_while_identity_2
lstm_710_while_identity_3
lstm_710_while_identity_4
lstm_710_while_identity_5+
'lstm_710_while_lstm_710_strided_slice_1g
clstm_710_while_tensorarrayv2read_tensorlistgetitem_lstm_710_tensorarrayunstack_tensorlistfromtensorM
;lstm_710_while_lstm_cell_710_matmul_readvariableop_resource:2(O
=lstm_710_while_lstm_cell_710_matmul_1_readvariableop_resource:
(J
<lstm_710_while_lstm_cell_710_biasadd_readvariableop_resource:(??3lstm_710/while/lstm_cell_710/BiasAdd/ReadVariableOp?2lstm_710/while/lstm_cell_710/MatMul/ReadVariableOp?4lstm_710/while/lstm_cell_710/MatMul_1/ReadVariableOp?
@lstm_710/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_710/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_710_while_tensorarrayv2read_tensorlistgetitem_lstm_710_tensorarrayunstack_tensorlistfromtensor_0lstm_710_while_placeholderIlstm_710/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_710/while/lstm_cell_710/MatMul/ReadVariableOpReadVariableOp=lstm_710_while_lstm_cell_710_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_710/while/lstm_cell_710/MatMulMatMul9lstm_710/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_710/while/lstm_cell_710/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_710/while/lstm_cell_710/MatMul_1/ReadVariableOpReadVariableOp?lstm_710_while_lstm_cell_710_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_710/while/lstm_cell_710/MatMul_1MatMullstm_710_while_placeholder_2<lstm_710/while/lstm_cell_710/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_710/while/lstm_cell_710/addAddV2-lstm_710/while/lstm_cell_710/MatMul:product:0/lstm_710/while/lstm_cell_710/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_710/while/lstm_cell_710/BiasAdd/ReadVariableOpReadVariableOp>lstm_710_while_lstm_cell_710_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_710/while/lstm_cell_710/BiasAddBiasAdd$lstm_710/while/lstm_cell_710/add:z:0;lstm_710/while/lstm_cell_710/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_710/while/lstm_cell_710/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_710/while/lstm_cell_710/splitSplit5lstm_710/while/lstm_cell_710/split/split_dim:output:0-lstm_710/while/lstm_cell_710/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_710/while/lstm_cell_710/SigmoidSigmoid+lstm_710/while/lstm_cell_710/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_710/while/lstm_cell_710/Sigmoid_1Sigmoid+lstm_710/while/lstm_cell_710/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_710/while/lstm_cell_710/mulMul*lstm_710/while/lstm_cell_710/Sigmoid_1:y:0lstm_710_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_710/while/lstm_cell_710/ReluRelu+lstm_710/while/lstm_cell_710/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_710/while/lstm_cell_710/mul_1Mul(lstm_710/while/lstm_cell_710/Sigmoid:y:0/lstm_710/while/lstm_cell_710/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_710/while/lstm_cell_710/add_1AddV2$lstm_710/while/lstm_cell_710/mul:z:0&lstm_710/while/lstm_cell_710/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_710/while/lstm_cell_710/Sigmoid_2Sigmoid+lstm_710/while/lstm_cell_710/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_710/while/lstm_cell_710/Relu_1Relu&lstm_710/while/lstm_cell_710/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_710/while/lstm_cell_710/mul_2Mul*lstm_710/while/lstm_cell_710/Sigmoid_2:y:01lstm_710/while/lstm_cell_710/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_710/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_710_while_placeholder_1lstm_710_while_placeholder&lstm_710/while/lstm_cell_710/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_710/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_710/while/addAddV2lstm_710_while_placeholderlstm_710/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_710/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_710/while/add_1AddV2*lstm_710_while_lstm_710_while_loop_counterlstm_710/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_710/while/IdentityIdentitylstm_710/while/add_1:z:0^lstm_710/while/NoOp*
T0*
_output_shapes
: ?
lstm_710/while/Identity_1Identity0lstm_710_while_lstm_710_while_maximum_iterations^lstm_710/while/NoOp*
T0*
_output_shapes
: t
lstm_710/while/Identity_2Identitylstm_710/while/add:z:0^lstm_710/while/NoOp*
T0*
_output_shapes
: ?
lstm_710/while/Identity_3IdentityClstm_710/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_710/while/NoOp*
T0*
_output_shapes
: ?
lstm_710/while/Identity_4Identity&lstm_710/while/lstm_cell_710/mul_2:z:0^lstm_710/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_710/while/Identity_5Identity&lstm_710/while/lstm_cell_710/add_1:z:0^lstm_710/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_710/while/NoOpNoOp4^lstm_710/while/lstm_cell_710/BiasAdd/ReadVariableOp3^lstm_710/while/lstm_cell_710/MatMul/ReadVariableOp5^lstm_710/while/lstm_cell_710/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_710_while_identity lstm_710/while/Identity:output:0"?
lstm_710_while_identity_1"lstm_710/while/Identity_1:output:0"?
lstm_710_while_identity_2"lstm_710/while/Identity_2:output:0"?
lstm_710_while_identity_3"lstm_710/while/Identity_3:output:0"?
lstm_710_while_identity_4"lstm_710/while/Identity_4:output:0"?
lstm_710_while_identity_5"lstm_710/while/Identity_5:output:0"T
'lstm_710_while_lstm_710_strided_slice_1)lstm_710_while_lstm_710_strided_slice_1_0"~
<lstm_710_while_lstm_cell_710_biasadd_readvariableop_resource>lstm_710_while_lstm_cell_710_biasadd_readvariableop_resource_0"?
=lstm_710_while_lstm_cell_710_matmul_1_readvariableop_resource?lstm_710_while_lstm_cell_710_matmul_1_readvariableop_resource_0"|
;lstm_710_while_lstm_cell_710_matmul_readvariableop_resource=lstm_710_while_lstm_cell_710_matmul_readvariableop_resource_0"?
clstm_710_while_tensorarrayv2read_tensorlistgetitem_lstm_710_tensorarrayunstack_tensorlistfromtensorelstm_710_while_tensorarrayv2read_tensorlistgetitem_lstm_710_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_710/while/lstm_cell_710/BiasAdd/ReadVariableOp3lstm_710/while/lstm_cell_710/BiasAdd/ReadVariableOp2h
2lstm_710/while/lstm_cell_710/MatMul/ReadVariableOp2lstm_710/while/lstm_cell_710/MatMul/ReadVariableOp2l
4lstm_710/while/lstm_cell_710/MatMul_1/ReadVariableOp4lstm_710/while/lstm_cell_710/MatMul_1/ReadVariableOp: 
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
?K
?
E__inference_lstm_709_layer_call_and_return_conditional_losses_4432393
inputs_0?
,lstm_cell_709_matmul_readvariableop_resource:	d?A
.lstm_cell_709_matmul_1_readvariableop_resource:	2?<
-lstm_cell_709_biasadd_readvariableop_resource:	?
identity??$lstm_cell_709/BiasAdd/ReadVariableOp?#lstm_cell_709/MatMul/ReadVariableOp?%lstm_cell_709/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_709/MatMul/ReadVariableOpReadVariableOp,lstm_cell_709_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_709/MatMulMatMulstrided_slice_2:output:0+lstm_cell_709/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_709/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_709_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_709/MatMul_1MatMulzeros:output:0-lstm_cell_709/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_709/addAddV2lstm_cell_709/MatMul:product:0 lstm_cell_709/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_709/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_709_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_709/BiasAddBiasAddlstm_cell_709/add:z:0,lstm_cell_709/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_709/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_709/splitSplit&lstm_cell_709/split/split_dim:output:0lstm_cell_709/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_709/SigmoidSigmoidlstm_cell_709/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_709/Sigmoid_1Sigmoidlstm_cell_709/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_709/mulMullstm_cell_709/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_709/ReluRelulstm_cell_709/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_709/mul_1Mullstm_cell_709/Sigmoid:y:0 lstm_cell_709/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_709/add_1AddV2lstm_cell_709/mul:z:0lstm_cell_709/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_709/Sigmoid_2Sigmoidlstm_cell_709/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_709/Relu_1Relulstm_cell_709/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_709/mul_2Mullstm_cell_709/Sigmoid_2:y:0"lstm_cell_709/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_709_matmul_readvariableop_resource.lstm_cell_709_matmul_1_readvariableop_resource-lstm_cell_709_biasadd_readvariableop_resource*
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
while_body_4432309*
condR
while_cond_4432308*K
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
NoOpNoOp%^lstm_cell_709/BiasAdd/ReadVariableOp$^lstm_cell_709/MatMul/ReadVariableOp&^lstm_cell_709/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_709/BiasAdd/ReadVariableOp$lstm_cell_709/BiasAdd/ReadVariableOp2J
#lstm_cell_709/MatMul/ReadVariableOp#lstm_cell_709/MatMul/ReadVariableOp2N
%lstm_cell_709/MatMul_1/ReadVariableOp%lstm_cell_709/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?
?
while_cond_4429043
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4429043___redundant_placeholder05
1while_while_cond_4429043___redundant_placeholder15
1while_while_cond_4429043___redundant_placeholder25
1while_while_cond_4429043___redundant_placeholder3
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

?
%__inference_signature_wrapper_4430682
lstm_708_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_708_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
"__inference__wrapped_model_4428422o
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
_user_specified_namelstm_708_input
??
?
K__inference_sequential_236_layer_call_and_return_conditional_losses_4431163

inputsH
5lstm_708_lstm_cell_708_matmul_readvariableop_resource:	?J
7lstm_708_lstm_cell_708_matmul_1_readvariableop_resource:	d?E
6lstm_708_lstm_cell_708_biasadd_readvariableop_resource:	?H
5lstm_709_lstm_cell_709_matmul_readvariableop_resource:	d?J
7lstm_709_lstm_cell_709_matmul_1_readvariableop_resource:	2?E
6lstm_709_lstm_cell_709_biasadd_readvariableop_resource:	?G
5lstm_710_lstm_cell_710_matmul_readvariableop_resource:2(I
7lstm_710_lstm_cell_710_matmul_1_readvariableop_resource:
(D
6lstm_710_lstm_cell_710_biasadd_readvariableop_resource:(:
(dense_236_matmul_readvariableop_resource:
7
)dense_236_biasadd_readvariableop_resource:
identity?? dense_236/BiasAdd/ReadVariableOp?dense_236/MatMul/ReadVariableOp?-lstm_708/lstm_cell_708/BiasAdd/ReadVariableOp?,lstm_708/lstm_cell_708/MatMul/ReadVariableOp?.lstm_708/lstm_cell_708/MatMul_1/ReadVariableOp?lstm_708/while?-lstm_709/lstm_cell_709/BiasAdd/ReadVariableOp?,lstm_709/lstm_cell_709/MatMul/ReadVariableOp?.lstm_709/lstm_cell_709/MatMul_1/ReadVariableOp?lstm_709/while?-lstm_710/lstm_cell_710/BiasAdd/ReadVariableOp?,lstm_710/lstm_cell_710/MatMul/ReadVariableOp?.lstm_710/lstm_cell_710/MatMul_1/ReadVariableOp?lstm_710/whileD
lstm_708/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_708/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_708/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_708/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_708/strided_sliceStridedSlicelstm_708/Shape:output:0%lstm_708/strided_slice/stack:output:0'lstm_708/strided_slice/stack_1:output:0'lstm_708/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_708/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_708/zeros/packedPacklstm_708/strided_slice:output:0 lstm_708/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_708/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_708/zerosFilllstm_708/zeros/packed:output:0lstm_708/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_708/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_708/zeros_1/packedPacklstm_708/strided_slice:output:0"lstm_708/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_708/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_708/zeros_1Fill lstm_708/zeros_1/packed:output:0lstm_708/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_708/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_708/transpose	Transposeinputs lstm_708/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_708/Shape_1Shapelstm_708/transpose:y:0*
T0*
_output_shapes
:h
lstm_708/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_708/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_708/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_708/strided_slice_1StridedSlicelstm_708/Shape_1:output:0'lstm_708/strided_slice_1/stack:output:0)lstm_708/strided_slice_1/stack_1:output:0)lstm_708/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_708/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_708/TensorArrayV2TensorListReserve-lstm_708/TensorArrayV2/element_shape:output:0!lstm_708/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_708/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_708/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_708/transpose:y:0Glstm_708/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_708/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_708/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_708/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_708/strided_slice_2StridedSlicelstm_708/transpose:y:0'lstm_708/strided_slice_2/stack:output:0)lstm_708/strided_slice_2/stack_1:output:0)lstm_708/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_708/lstm_cell_708/MatMul/ReadVariableOpReadVariableOp5lstm_708_lstm_cell_708_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_708/lstm_cell_708/MatMulMatMul!lstm_708/strided_slice_2:output:04lstm_708/lstm_cell_708/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_708/lstm_cell_708/MatMul_1/ReadVariableOpReadVariableOp7lstm_708_lstm_cell_708_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_708/lstm_cell_708/MatMul_1MatMullstm_708/zeros:output:06lstm_708/lstm_cell_708/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_708/lstm_cell_708/addAddV2'lstm_708/lstm_cell_708/MatMul:product:0)lstm_708/lstm_cell_708/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_708/lstm_cell_708/BiasAdd/ReadVariableOpReadVariableOp6lstm_708_lstm_cell_708_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_708/lstm_cell_708/BiasAddBiasAddlstm_708/lstm_cell_708/add:z:05lstm_708/lstm_cell_708/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_708/lstm_cell_708/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_708/lstm_cell_708/splitSplit/lstm_708/lstm_cell_708/split/split_dim:output:0'lstm_708/lstm_cell_708/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_708/lstm_cell_708/SigmoidSigmoid%lstm_708/lstm_cell_708/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_708/lstm_cell_708/Sigmoid_1Sigmoid%lstm_708/lstm_cell_708/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_708/lstm_cell_708/mulMul$lstm_708/lstm_cell_708/Sigmoid_1:y:0lstm_708/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_708/lstm_cell_708/ReluRelu%lstm_708/lstm_cell_708/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_708/lstm_cell_708/mul_1Mul"lstm_708/lstm_cell_708/Sigmoid:y:0)lstm_708/lstm_cell_708/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_708/lstm_cell_708/add_1AddV2lstm_708/lstm_cell_708/mul:z:0 lstm_708/lstm_cell_708/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_708/lstm_cell_708/Sigmoid_2Sigmoid%lstm_708/lstm_cell_708/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_708/lstm_cell_708/Relu_1Relu lstm_708/lstm_cell_708/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_708/lstm_cell_708/mul_2Mul$lstm_708/lstm_cell_708/Sigmoid_2:y:0+lstm_708/lstm_cell_708/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_708/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_708/TensorArrayV2_1TensorListReserve/lstm_708/TensorArrayV2_1/element_shape:output:0!lstm_708/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_708/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_708/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_708/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_708/whileWhile$lstm_708/while/loop_counter:output:0*lstm_708/while/maximum_iterations:output:0lstm_708/time:output:0!lstm_708/TensorArrayV2_1:handle:0lstm_708/zeros:output:0lstm_708/zeros_1:output:0!lstm_708/strided_slice_1:output:0@lstm_708/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_708_lstm_cell_708_matmul_readvariableop_resource7lstm_708_lstm_cell_708_matmul_1_readvariableop_resource6lstm_708_lstm_cell_708_biasadd_readvariableop_resource*
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
lstm_708_while_body_4430795*'
condR
lstm_708_while_cond_4430794*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_708/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_708/TensorArrayV2Stack/TensorListStackTensorListStacklstm_708/while:output:3Blstm_708/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_708/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_708/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_708/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_708/strided_slice_3StridedSlice4lstm_708/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_708/strided_slice_3/stack:output:0)lstm_708/strided_slice_3/stack_1:output:0)lstm_708/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_708/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_708/transpose_1	Transpose4lstm_708/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_708/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_708/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_709/ShapeShapelstm_708/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_709/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_709/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_709/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_709/strided_sliceStridedSlicelstm_709/Shape:output:0%lstm_709/strided_slice/stack:output:0'lstm_709/strided_slice/stack_1:output:0'lstm_709/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_709/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_709/zeros/packedPacklstm_709/strided_slice:output:0 lstm_709/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_709/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_709/zerosFilllstm_709/zeros/packed:output:0lstm_709/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_709/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_709/zeros_1/packedPacklstm_709/strided_slice:output:0"lstm_709/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_709/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_709/zeros_1Fill lstm_709/zeros_1/packed:output:0lstm_709/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_709/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_709/transpose	Transposelstm_708/transpose_1:y:0 lstm_709/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_709/Shape_1Shapelstm_709/transpose:y:0*
T0*
_output_shapes
:h
lstm_709/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_709/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_709/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_709/strided_slice_1StridedSlicelstm_709/Shape_1:output:0'lstm_709/strided_slice_1/stack:output:0)lstm_709/strided_slice_1/stack_1:output:0)lstm_709/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_709/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_709/TensorArrayV2TensorListReserve-lstm_709/TensorArrayV2/element_shape:output:0!lstm_709/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_709/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_709/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_709/transpose:y:0Glstm_709/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_709/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_709/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_709/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_709/strided_slice_2StridedSlicelstm_709/transpose:y:0'lstm_709/strided_slice_2/stack:output:0)lstm_709/strided_slice_2/stack_1:output:0)lstm_709/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_709/lstm_cell_709/MatMul/ReadVariableOpReadVariableOp5lstm_709_lstm_cell_709_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_709/lstm_cell_709/MatMulMatMul!lstm_709/strided_slice_2:output:04lstm_709/lstm_cell_709/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_709/lstm_cell_709/MatMul_1/ReadVariableOpReadVariableOp7lstm_709_lstm_cell_709_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_709/lstm_cell_709/MatMul_1MatMullstm_709/zeros:output:06lstm_709/lstm_cell_709/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_709/lstm_cell_709/addAddV2'lstm_709/lstm_cell_709/MatMul:product:0)lstm_709/lstm_cell_709/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_709/lstm_cell_709/BiasAdd/ReadVariableOpReadVariableOp6lstm_709_lstm_cell_709_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_709/lstm_cell_709/BiasAddBiasAddlstm_709/lstm_cell_709/add:z:05lstm_709/lstm_cell_709/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_709/lstm_cell_709/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_709/lstm_cell_709/splitSplit/lstm_709/lstm_cell_709/split/split_dim:output:0'lstm_709/lstm_cell_709/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_709/lstm_cell_709/SigmoidSigmoid%lstm_709/lstm_cell_709/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_709/lstm_cell_709/Sigmoid_1Sigmoid%lstm_709/lstm_cell_709/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_709/lstm_cell_709/mulMul$lstm_709/lstm_cell_709/Sigmoid_1:y:0lstm_709/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_709/lstm_cell_709/ReluRelu%lstm_709/lstm_cell_709/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_709/lstm_cell_709/mul_1Mul"lstm_709/lstm_cell_709/Sigmoid:y:0)lstm_709/lstm_cell_709/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_709/lstm_cell_709/add_1AddV2lstm_709/lstm_cell_709/mul:z:0 lstm_709/lstm_cell_709/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_709/lstm_cell_709/Sigmoid_2Sigmoid%lstm_709/lstm_cell_709/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_709/lstm_cell_709/Relu_1Relu lstm_709/lstm_cell_709/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_709/lstm_cell_709/mul_2Mul$lstm_709/lstm_cell_709/Sigmoid_2:y:0+lstm_709/lstm_cell_709/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_709/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_709/TensorArrayV2_1TensorListReserve/lstm_709/TensorArrayV2_1/element_shape:output:0!lstm_709/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_709/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_709/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_709/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_709/whileWhile$lstm_709/while/loop_counter:output:0*lstm_709/while/maximum_iterations:output:0lstm_709/time:output:0!lstm_709/TensorArrayV2_1:handle:0lstm_709/zeros:output:0lstm_709/zeros_1:output:0!lstm_709/strided_slice_1:output:0@lstm_709/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_709_lstm_cell_709_matmul_readvariableop_resource7lstm_709_lstm_cell_709_matmul_1_readvariableop_resource6lstm_709_lstm_cell_709_biasadd_readvariableop_resource*
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
lstm_709_while_body_4430934*'
condR
lstm_709_while_cond_4430933*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_709/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_709/TensorArrayV2Stack/TensorListStackTensorListStacklstm_709/while:output:3Blstm_709/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_709/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_709/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_709/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_709/strided_slice_3StridedSlice4lstm_709/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_709/strided_slice_3/stack:output:0)lstm_709/strided_slice_3/stack_1:output:0)lstm_709/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_709/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_709/transpose_1	Transpose4lstm_709/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_709/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_709/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_710/ShapeShapelstm_709/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_710/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_710/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_710/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_710/strided_sliceStridedSlicelstm_710/Shape:output:0%lstm_710/strided_slice/stack:output:0'lstm_710/strided_slice/stack_1:output:0'lstm_710/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_710/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_710/zeros/packedPacklstm_710/strided_slice:output:0 lstm_710/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_710/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_710/zerosFilllstm_710/zeros/packed:output:0lstm_710/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_710/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_710/zeros_1/packedPacklstm_710/strided_slice:output:0"lstm_710/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_710/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_710/zeros_1Fill lstm_710/zeros_1/packed:output:0lstm_710/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_710/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_710/transpose	Transposelstm_709/transpose_1:y:0 lstm_710/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_710/Shape_1Shapelstm_710/transpose:y:0*
T0*
_output_shapes
:h
lstm_710/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_710/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_710/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_710/strided_slice_1StridedSlicelstm_710/Shape_1:output:0'lstm_710/strided_slice_1/stack:output:0)lstm_710/strided_slice_1/stack_1:output:0)lstm_710/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_710/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_710/TensorArrayV2TensorListReserve-lstm_710/TensorArrayV2/element_shape:output:0!lstm_710/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_710/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_710/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_710/transpose:y:0Glstm_710/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_710/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_710/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_710/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_710/strided_slice_2StridedSlicelstm_710/transpose:y:0'lstm_710/strided_slice_2/stack:output:0)lstm_710/strided_slice_2/stack_1:output:0)lstm_710/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_710/lstm_cell_710/MatMul/ReadVariableOpReadVariableOp5lstm_710_lstm_cell_710_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_710/lstm_cell_710/MatMulMatMul!lstm_710/strided_slice_2:output:04lstm_710/lstm_cell_710/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_710/lstm_cell_710/MatMul_1/ReadVariableOpReadVariableOp7lstm_710_lstm_cell_710_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_710/lstm_cell_710/MatMul_1MatMullstm_710/zeros:output:06lstm_710/lstm_cell_710/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_710/lstm_cell_710/addAddV2'lstm_710/lstm_cell_710/MatMul:product:0)lstm_710/lstm_cell_710/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_710/lstm_cell_710/BiasAdd/ReadVariableOpReadVariableOp6lstm_710_lstm_cell_710_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_710/lstm_cell_710/BiasAddBiasAddlstm_710/lstm_cell_710/add:z:05lstm_710/lstm_cell_710/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_710/lstm_cell_710/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_710/lstm_cell_710/splitSplit/lstm_710/lstm_cell_710/split/split_dim:output:0'lstm_710/lstm_cell_710/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_710/lstm_cell_710/SigmoidSigmoid%lstm_710/lstm_cell_710/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_710/lstm_cell_710/Sigmoid_1Sigmoid%lstm_710/lstm_cell_710/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_710/lstm_cell_710/mulMul$lstm_710/lstm_cell_710/Sigmoid_1:y:0lstm_710/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_710/lstm_cell_710/ReluRelu%lstm_710/lstm_cell_710/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_710/lstm_cell_710/mul_1Mul"lstm_710/lstm_cell_710/Sigmoid:y:0)lstm_710/lstm_cell_710/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_710/lstm_cell_710/add_1AddV2lstm_710/lstm_cell_710/mul:z:0 lstm_710/lstm_cell_710/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_710/lstm_cell_710/Sigmoid_2Sigmoid%lstm_710/lstm_cell_710/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_710/lstm_cell_710/Relu_1Relu lstm_710/lstm_cell_710/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_710/lstm_cell_710/mul_2Mul$lstm_710/lstm_cell_710/Sigmoid_2:y:0+lstm_710/lstm_cell_710/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_710/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_710/TensorArrayV2_1TensorListReserve/lstm_710/TensorArrayV2_1/element_shape:output:0!lstm_710/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_710/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_710/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_710/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_710/whileWhile$lstm_710/while/loop_counter:output:0*lstm_710/while/maximum_iterations:output:0lstm_710/time:output:0!lstm_710/TensorArrayV2_1:handle:0lstm_710/zeros:output:0lstm_710/zeros_1:output:0!lstm_710/strided_slice_1:output:0@lstm_710/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_710_lstm_cell_710_matmul_readvariableop_resource7lstm_710_lstm_cell_710_matmul_1_readvariableop_resource6lstm_710_lstm_cell_710_biasadd_readvariableop_resource*
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
lstm_710_while_body_4431073*'
condR
lstm_710_while_cond_4431072*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_710/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_710/TensorArrayV2Stack/TensorListStackTensorListStacklstm_710/while:output:3Blstm_710/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_710/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_710/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_710/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_710/strided_slice_3StridedSlice4lstm_710/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_710/strided_slice_3/stack:output:0)lstm_710/strided_slice_3/stack_1:output:0)lstm_710/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_710/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_710/transpose_1	Transpose4lstm_710/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_710/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_710/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_236/MatMul/ReadVariableOpReadVariableOp(dense_236_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_236/MatMulMatMul!lstm_710/strided_slice_3:output:0'dense_236/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_236/BiasAdd/ReadVariableOpReadVariableOp)dense_236_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_236/BiasAddBiasAdddense_236/MatMul:product:0(dense_236/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_236/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_236/BiasAdd/ReadVariableOp ^dense_236/MatMul/ReadVariableOp.^lstm_708/lstm_cell_708/BiasAdd/ReadVariableOp-^lstm_708/lstm_cell_708/MatMul/ReadVariableOp/^lstm_708/lstm_cell_708/MatMul_1/ReadVariableOp^lstm_708/while.^lstm_709/lstm_cell_709/BiasAdd/ReadVariableOp-^lstm_709/lstm_cell_709/MatMul/ReadVariableOp/^lstm_709/lstm_cell_709/MatMul_1/ReadVariableOp^lstm_709/while.^lstm_710/lstm_cell_710/BiasAdd/ReadVariableOp-^lstm_710/lstm_cell_710/MatMul/ReadVariableOp/^lstm_710/lstm_cell_710/MatMul_1/ReadVariableOp^lstm_710/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_236/BiasAdd/ReadVariableOp dense_236/BiasAdd/ReadVariableOp2B
dense_236/MatMul/ReadVariableOpdense_236/MatMul/ReadVariableOp2^
-lstm_708/lstm_cell_708/BiasAdd/ReadVariableOp-lstm_708/lstm_cell_708/BiasAdd/ReadVariableOp2\
,lstm_708/lstm_cell_708/MatMul/ReadVariableOp,lstm_708/lstm_cell_708/MatMul/ReadVariableOp2`
.lstm_708/lstm_cell_708/MatMul_1/ReadVariableOp.lstm_708/lstm_cell_708/MatMul_1/ReadVariableOp2 
lstm_708/whilelstm_708/while2^
-lstm_709/lstm_cell_709/BiasAdd/ReadVariableOp-lstm_709/lstm_cell_709/BiasAdd/ReadVariableOp2\
,lstm_709/lstm_cell_709/MatMul/ReadVariableOp,lstm_709/lstm_cell_709/MatMul/ReadVariableOp2`
.lstm_709/lstm_cell_709/MatMul_1/ReadVariableOp.lstm_709/lstm_cell_709/MatMul_1/ReadVariableOp2 
lstm_709/whilelstm_709/while2^
-lstm_710/lstm_cell_710/BiasAdd/ReadVariableOp-lstm_710/lstm_cell_710/BiasAdd/ReadVariableOp2\
,lstm_710/lstm_cell_710/MatMul/ReadVariableOp,lstm_710/lstm_cell_710/MatMul/ReadVariableOp2`
.lstm_710/lstm_cell_710/MatMul_1/ReadVariableOp.lstm_710/lstm_cell_710/MatMul_1/ReadVariableOp2 
lstm_710/whilelstm_710/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_709_layer_call_and_return_conditional_losses_4428985

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
?8
?
while_body_4430218
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_709_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_709_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_709_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_709_matmul_readvariableop_resource:	d?G
4while_lstm_cell_709_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_709_biasadd_readvariableop_resource:	???*while/lstm_cell_709/BiasAdd/ReadVariableOp?)while/lstm_cell_709/MatMul/ReadVariableOp?+while/lstm_cell_709/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_709/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_709_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_709/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_709/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_709/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_709_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_709/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_709/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_709/addAddV2$while/lstm_cell_709/MatMul:product:0&while/lstm_cell_709/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_709/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_709_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_709/BiasAddBiasAddwhile/lstm_cell_709/add:z:02while/lstm_cell_709/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_709/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_709/splitSplit,while/lstm_cell_709/split/split_dim:output:0$while/lstm_cell_709/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_709/SigmoidSigmoid"while/lstm_cell_709/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_709/Sigmoid_1Sigmoid"while/lstm_cell_709/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_709/mulMul!while/lstm_cell_709/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_709/ReluRelu"while/lstm_cell_709/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_709/mul_1Mulwhile/lstm_cell_709/Sigmoid:y:0&while/lstm_cell_709/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_709/add_1AddV2while/lstm_cell_709/mul:z:0while/lstm_cell_709/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_709/Sigmoid_2Sigmoid"while/lstm_cell_709/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_709/Relu_1Reluwhile/lstm_cell_709/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_709/mul_2Mul!while/lstm_cell_709/Sigmoid_2:y:0(while/lstm_cell_709/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_709/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_709/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_709/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_709/BiasAdd/ReadVariableOp*^while/lstm_cell_709/MatMul/ReadVariableOp,^while/lstm_cell_709/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_709_biasadd_readvariableop_resource5while_lstm_cell_709_biasadd_readvariableop_resource_0"n
4while_lstm_cell_709_matmul_1_readvariableop_resource6while_lstm_cell_709_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_709_matmul_readvariableop_resource4while_lstm_cell_709_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_709/BiasAdd/ReadVariableOp*while/lstm_cell_709/BiasAdd/ReadVariableOp2V
)while/lstm_cell_709/MatMul/ReadVariableOp)while/lstm_cell_709/MatMul/ReadVariableOp2Z
+while/lstm_cell_709/MatMul_1/ReadVariableOp+while/lstm_cell_709/MatMul_1/ReadVariableOp: 
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
while_cond_4432594
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4432594___redundant_placeholder05
1while_while_cond_4432594___redundant_placeholder15
1while_while_cond_4432594___redundant_placeholder25
1while_while_cond_4432594___redundant_placeholder3
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
while_cond_4431835
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4431835___redundant_placeholder05
1while_while_cond_4431835___redundant_placeholder15
1while_while_cond_4431835___redundant_placeholder25
1while_while_cond_4431835___redundant_placeholder3
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
?
*__inference_lstm_708_layer_call_fn_4431601
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
E__inference_lstm_708_layer_call_and_return_conditional_losses_4428572|
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
while_body_4432452
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_709_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_709_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_709_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_709_matmul_readvariableop_resource:	d?G
4while_lstm_cell_709_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_709_biasadd_readvariableop_resource:	???*while/lstm_cell_709/BiasAdd/ReadVariableOp?)while/lstm_cell_709/MatMul/ReadVariableOp?+while/lstm_cell_709/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_709/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_709_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_709/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_709/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_709/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_709_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_709/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_709/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_709/addAddV2$while/lstm_cell_709/MatMul:product:0&while/lstm_cell_709/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_709/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_709_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_709/BiasAddBiasAddwhile/lstm_cell_709/add:z:02while/lstm_cell_709/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_709/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_709/splitSplit,while/lstm_cell_709/split/split_dim:output:0$while/lstm_cell_709/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_709/SigmoidSigmoid"while/lstm_cell_709/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_709/Sigmoid_1Sigmoid"while/lstm_cell_709/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_709/mulMul!while/lstm_cell_709/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_709/ReluRelu"while/lstm_cell_709/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_709/mul_1Mulwhile/lstm_cell_709/Sigmoid:y:0&while/lstm_cell_709/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_709/add_1AddV2while/lstm_cell_709/mul:z:0while/lstm_cell_709/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_709/Sigmoid_2Sigmoid"while/lstm_cell_709/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_709/Relu_1Reluwhile/lstm_cell_709/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_709/mul_2Mul!while/lstm_cell_709/Sigmoid_2:y:0(while/lstm_cell_709/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_709/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_709/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_709/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_709/BiasAdd/ReadVariableOp*^while/lstm_cell_709/MatMul/ReadVariableOp,^while/lstm_cell_709/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_709_biasadd_readvariableop_resource5while_lstm_cell_709_biasadd_readvariableop_resource_0"n
4while_lstm_cell_709_matmul_1_readvariableop_resource6while_lstm_cell_709_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_709_matmul_readvariableop_resource4while_lstm_cell_709_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_709/BiasAdd/ReadVariableOp*while/lstm_cell_709/BiasAdd/ReadVariableOp2V
)while/lstm_cell_709/MatMul/ReadVariableOp)while/lstm_cell_709/MatMul/ReadVariableOp2Z
+while/lstm_cell_709/MatMul_1/ReadVariableOp+while/lstm_cell_709/MatMul_1/ReadVariableOp: 
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
E__inference_lstm_709_layer_call_and_return_conditional_losses_4428922

inputs(
lstm_cell_709_4428840:	d?(
lstm_cell_709_4428842:	2?$
lstm_cell_709_4428844:	?
identity??%lstm_cell_709/StatefulPartitionedCall?while;
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
%lstm_cell_709/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_709_4428840lstm_cell_709_4428842lstm_cell_709_4428844*
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
J__inference_lstm_cell_709_layer_call_and_return_conditional_losses_4428839n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_709_4428840lstm_cell_709_4428842lstm_cell_709_4428844*
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
while_body_4428853*
condR
while_cond_4428852*K
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
NoOpNoOp&^lstm_cell_709/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_709/StatefulPartitionedCall%lstm_cell_709/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?
?
*__inference_lstm_709_layer_call_fn_4432217
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
E__inference_lstm_709_layer_call_and_return_conditional_losses_4428922|
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
?	
?
F__inference_dense_236_layer_call_and_return_conditional_losses_4429939

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
while_cond_4429536
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4429536___redundant_placeholder05
1while_while_cond_4429536___redundant_placeholder15
1while_while_cond_4429536___redundant_placeholder25
1while_while_cond_4429536___redundant_placeholder3
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
while_cond_4432737
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4432737___redundant_placeholder05
1while_while_cond_4432737___redundant_placeholder15
1while_while_cond_4432737___redundant_placeholder25
1while_while_cond_4432737___redundant_placeholder3
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
while_cond_4432121
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4432121___redundant_placeholder05
1while_while_cond_4432121___redundant_placeholder15
1while_while_cond_4432121___redundant_placeholder25
1while_while_cond_4432121___redundant_placeholder3
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
?
?
J__inference_lstm_cell_708_layer_call_and_return_conditional_losses_4433523

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
??
?
"__inference__wrapped_model_4428422
lstm_708_inputW
Dsequential_236_lstm_708_lstm_cell_708_matmul_readvariableop_resource:	?Y
Fsequential_236_lstm_708_lstm_cell_708_matmul_1_readvariableop_resource:	d?T
Esequential_236_lstm_708_lstm_cell_708_biasadd_readvariableop_resource:	?W
Dsequential_236_lstm_709_lstm_cell_709_matmul_readvariableop_resource:	d?Y
Fsequential_236_lstm_709_lstm_cell_709_matmul_1_readvariableop_resource:	2?T
Esequential_236_lstm_709_lstm_cell_709_biasadd_readvariableop_resource:	?V
Dsequential_236_lstm_710_lstm_cell_710_matmul_readvariableop_resource:2(X
Fsequential_236_lstm_710_lstm_cell_710_matmul_1_readvariableop_resource:
(S
Esequential_236_lstm_710_lstm_cell_710_biasadd_readvariableop_resource:(I
7sequential_236_dense_236_matmul_readvariableop_resource:
F
8sequential_236_dense_236_biasadd_readvariableop_resource:
identity??/sequential_236/dense_236/BiasAdd/ReadVariableOp?.sequential_236/dense_236/MatMul/ReadVariableOp?<sequential_236/lstm_708/lstm_cell_708/BiasAdd/ReadVariableOp?;sequential_236/lstm_708/lstm_cell_708/MatMul/ReadVariableOp?=sequential_236/lstm_708/lstm_cell_708/MatMul_1/ReadVariableOp?sequential_236/lstm_708/while?<sequential_236/lstm_709/lstm_cell_709/BiasAdd/ReadVariableOp?;sequential_236/lstm_709/lstm_cell_709/MatMul/ReadVariableOp?=sequential_236/lstm_709/lstm_cell_709/MatMul_1/ReadVariableOp?sequential_236/lstm_709/while?<sequential_236/lstm_710/lstm_cell_710/BiasAdd/ReadVariableOp?;sequential_236/lstm_710/lstm_cell_710/MatMul/ReadVariableOp?=sequential_236/lstm_710/lstm_cell_710/MatMul_1/ReadVariableOp?sequential_236/lstm_710/while[
sequential_236/lstm_708/ShapeShapelstm_708_input*
T0*
_output_shapes
:u
+sequential_236/lstm_708/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_236/lstm_708/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_236/lstm_708/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_236/lstm_708/strided_sliceStridedSlice&sequential_236/lstm_708/Shape:output:04sequential_236/lstm_708/strided_slice/stack:output:06sequential_236/lstm_708/strided_slice/stack_1:output:06sequential_236/lstm_708/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_236/lstm_708/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
$sequential_236/lstm_708/zeros/packedPack.sequential_236/lstm_708/strided_slice:output:0/sequential_236/lstm_708/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_236/lstm_708/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_236/lstm_708/zerosFill-sequential_236/lstm_708/zeros/packed:output:0,sequential_236/lstm_708/zeros/Const:output:0*
T0*'
_output_shapes
:?????????dj
(sequential_236/lstm_708/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
&sequential_236/lstm_708/zeros_1/packedPack.sequential_236/lstm_708/strided_slice:output:01sequential_236/lstm_708/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_236/lstm_708/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_236/lstm_708/zeros_1Fill/sequential_236/lstm_708/zeros_1/packed:output:0.sequential_236/lstm_708/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????d{
&sequential_236/lstm_708/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_236/lstm_708/transpose	Transposelstm_708_input/sequential_236/lstm_708/transpose/perm:output:0*
T0*+
_output_shapes
:?????????t
sequential_236/lstm_708/Shape_1Shape%sequential_236/lstm_708/transpose:y:0*
T0*
_output_shapes
:w
-sequential_236/lstm_708/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_236/lstm_708/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_236/lstm_708/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_236/lstm_708/strided_slice_1StridedSlice(sequential_236/lstm_708/Shape_1:output:06sequential_236/lstm_708/strided_slice_1/stack:output:08sequential_236/lstm_708/strided_slice_1/stack_1:output:08sequential_236/lstm_708/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_236/lstm_708/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_236/lstm_708/TensorArrayV2TensorListReserve<sequential_236/lstm_708/TensorArrayV2/element_shape:output:00sequential_236/lstm_708/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_236/lstm_708/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
?sequential_236/lstm_708/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_236/lstm_708/transpose:y:0Vsequential_236/lstm_708/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_236/lstm_708/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_236/lstm_708/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_236/lstm_708/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_236/lstm_708/strided_slice_2StridedSlice%sequential_236/lstm_708/transpose:y:06sequential_236/lstm_708/strided_slice_2/stack:output:08sequential_236/lstm_708/strided_slice_2/stack_1:output:08sequential_236/lstm_708/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
;sequential_236/lstm_708/lstm_cell_708/MatMul/ReadVariableOpReadVariableOpDsequential_236_lstm_708_lstm_cell_708_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
,sequential_236/lstm_708/lstm_cell_708/MatMulMatMul0sequential_236/lstm_708/strided_slice_2:output:0Csequential_236/lstm_708/lstm_cell_708/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_236/lstm_708/lstm_cell_708/MatMul_1/ReadVariableOpReadVariableOpFsequential_236_lstm_708_lstm_cell_708_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
.sequential_236/lstm_708/lstm_cell_708/MatMul_1MatMul&sequential_236/lstm_708/zeros:output:0Esequential_236/lstm_708/lstm_cell_708/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_236/lstm_708/lstm_cell_708/addAddV26sequential_236/lstm_708/lstm_cell_708/MatMul:product:08sequential_236/lstm_708/lstm_cell_708/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_236/lstm_708/lstm_cell_708/BiasAdd/ReadVariableOpReadVariableOpEsequential_236_lstm_708_lstm_cell_708_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_236/lstm_708/lstm_cell_708/BiasAddBiasAdd-sequential_236/lstm_708/lstm_cell_708/add:z:0Dsequential_236/lstm_708/lstm_cell_708/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_236/lstm_708/lstm_cell_708/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_236/lstm_708/lstm_cell_708/splitSplit>sequential_236/lstm_708/lstm_cell_708/split/split_dim:output:06sequential_236/lstm_708/lstm_cell_708/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
-sequential_236/lstm_708/lstm_cell_708/SigmoidSigmoid4sequential_236/lstm_708/lstm_cell_708/split:output:0*
T0*'
_output_shapes
:?????????d?
/sequential_236/lstm_708/lstm_cell_708/Sigmoid_1Sigmoid4sequential_236/lstm_708/lstm_cell_708/split:output:1*
T0*'
_output_shapes
:?????????d?
)sequential_236/lstm_708/lstm_cell_708/mulMul3sequential_236/lstm_708/lstm_cell_708/Sigmoid_1:y:0(sequential_236/lstm_708/zeros_1:output:0*
T0*'
_output_shapes
:?????????d?
*sequential_236/lstm_708/lstm_cell_708/ReluRelu4sequential_236/lstm_708/lstm_cell_708/split:output:2*
T0*'
_output_shapes
:?????????d?
+sequential_236/lstm_708/lstm_cell_708/mul_1Mul1sequential_236/lstm_708/lstm_cell_708/Sigmoid:y:08sequential_236/lstm_708/lstm_cell_708/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
+sequential_236/lstm_708/lstm_cell_708/add_1AddV2-sequential_236/lstm_708/lstm_cell_708/mul:z:0/sequential_236/lstm_708/lstm_cell_708/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
/sequential_236/lstm_708/lstm_cell_708/Sigmoid_2Sigmoid4sequential_236/lstm_708/lstm_cell_708/split:output:3*
T0*'
_output_shapes
:?????????d?
,sequential_236/lstm_708/lstm_cell_708/Relu_1Relu/sequential_236/lstm_708/lstm_cell_708/add_1:z:0*
T0*'
_output_shapes
:?????????d?
+sequential_236/lstm_708/lstm_cell_708/mul_2Mul3sequential_236/lstm_708/lstm_cell_708/Sigmoid_2:y:0:sequential_236/lstm_708/lstm_cell_708/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
5sequential_236/lstm_708/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
'sequential_236/lstm_708/TensorArrayV2_1TensorListReserve>sequential_236/lstm_708/TensorArrayV2_1/element_shape:output:00sequential_236/lstm_708/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_236/lstm_708/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_236/lstm_708/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_236/lstm_708/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_236/lstm_708/whileWhile3sequential_236/lstm_708/while/loop_counter:output:09sequential_236/lstm_708/while/maximum_iterations:output:0%sequential_236/lstm_708/time:output:00sequential_236/lstm_708/TensorArrayV2_1:handle:0&sequential_236/lstm_708/zeros:output:0(sequential_236/lstm_708/zeros_1:output:00sequential_236/lstm_708/strided_slice_1:output:0Osequential_236/lstm_708/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_236_lstm_708_lstm_cell_708_matmul_readvariableop_resourceFsequential_236_lstm_708_lstm_cell_708_matmul_1_readvariableop_resourceEsequential_236_lstm_708_lstm_cell_708_biasadd_readvariableop_resource*
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
*sequential_236_lstm_708_while_body_4428054*6
cond.R,
*sequential_236_lstm_708_while_cond_4428053*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
Hsequential_236/lstm_708/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
:sequential_236/lstm_708/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_236/lstm_708/while:output:3Qsequential_236/lstm_708/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0?
-sequential_236/lstm_708/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_236/lstm_708/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_236/lstm_708/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_236/lstm_708/strided_slice_3StridedSliceCsequential_236/lstm_708/TensorArrayV2Stack/TensorListStack:tensor:06sequential_236/lstm_708/strided_slice_3/stack:output:08sequential_236/lstm_708/strided_slice_3/stack_1:output:08sequential_236/lstm_708/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask}
(sequential_236/lstm_708/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_236/lstm_708/transpose_1	TransposeCsequential_236/lstm_708/TensorArrayV2Stack/TensorListStack:tensor:01sequential_236/lstm_708/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????ds
sequential_236/lstm_708/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_236/lstm_709/ShapeShape'sequential_236/lstm_708/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_236/lstm_709/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_236/lstm_709/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_236/lstm_709/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_236/lstm_709/strided_sliceStridedSlice&sequential_236/lstm_709/Shape:output:04sequential_236/lstm_709/strided_slice/stack:output:06sequential_236/lstm_709/strided_slice/stack_1:output:06sequential_236/lstm_709/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_236/lstm_709/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
$sequential_236/lstm_709/zeros/packedPack.sequential_236/lstm_709/strided_slice:output:0/sequential_236/lstm_709/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_236/lstm_709/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_236/lstm_709/zerosFill-sequential_236/lstm_709/zeros/packed:output:0,sequential_236/lstm_709/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2j
(sequential_236/lstm_709/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
&sequential_236/lstm_709/zeros_1/packedPack.sequential_236/lstm_709/strided_slice:output:01sequential_236/lstm_709/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_236/lstm_709/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_236/lstm_709/zeros_1Fill/sequential_236/lstm_709/zeros_1/packed:output:0.sequential_236/lstm_709/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2{
&sequential_236/lstm_709/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_236/lstm_709/transpose	Transpose'sequential_236/lstm_708/transpose_1:y:0/sequential_236/lstm_709/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dt
sequential_236/lstm_709/Shape_1Shape%sequential_236/lstm_709/transpose:y:0*
T0*
_output_shapes
:w
-sequential_236/lstm_709/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_236/lstm_709/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_236/lstm_709/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_236/lstm_709/strided_slice_1StridedSlice(sequential_236/lstm_709/Shape_1:output:06sequential_236/lstm_709/strided_slice_1/stack:output:08sequential_236/lstm_709/strided_slice_1/stack_1:output:08sequential_236/lstm_709/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_236/lstm_709/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_236/lstm_709/TensorArrayV2TensorListReserve<sequential_236/lstm_709/TensorArrayV2/element_shape:output:00sequential_236/lstm_709/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_236/lstm_709/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
?sequential_236/lstm_709/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_236/lstm_709/transpose:y:0Vsequential_236/lstm_709/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_236/lstm_709/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_236/lstm_709/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_236/lstm_709/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_236/lstm_709/strided_slice_2StridedSlice%sequential_236/lstm_709/transpose:y:06sequential_236/lstm_709/strided_slice_2/stack:output:08sequential_236/lstm_709/strided_slice_2/stack_1:output:08sequential_236/lstm_709/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
;sequential_236/lstm_709/lstm_cell_709/MatMul/ReadVariableOpReadVariableOpDsequential_236_lstm_709_lstm_cell_709_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
,sequential_236/lstm_709/lstm_cell_709/MatMulMatMul0sequential_236/lstm_709/strided_slice_2:output:0Csequential_236/lstm_709/lstm_cell_709/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_236/lstm_709/lstm_cell_709/MatMul_1/ReadVariableOpReadVariableOpFsequential_236_lstm_709_lstm_cell_709_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
.sequential_236/lstm_709/lstm_cell_709/MatMul_1MatMul&sequential_236/lstm_709/zeros:output:0Esequential_236/lstm_709/lstm_cell_709/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_236/lstm_709/lstm_cell_709/addAddV26sequential_236/lstm_709/lstm_cell_709/MatMul:product:08sequential_236/lstm_709/lstm_cell_709/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_236/lstm_709/lstm_cell_709/BiasAdd/ReadVariableOpReadVariableOpEsequential_236_lstm_709_lstm_cell_709_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_236/lstm_709/lstm_cell_709/BiasAddBiasAdd-sequential_236/lstm_709/lstm_cell_709/add:z:0Dsequential_236/lstm_709/lstm_cell_709/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_236/lstm_709/lstm_cell_709/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_236/lstm_709/lstm_cell_709/splitSplit>sequential_236/lstm_709/lstm_cell_709/split/split_dim:output:06sequential_236/lstm_709/lstm_cell_709/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
-sequential_236/lstm_709/lstm_cell_709/SigmoidSigmoid4sequential_236/lstm_709/lstm_cell_709/split:output:0*
T0*'
_output_shapes
:?????????2?
/sequential_236/lstm_709/lstm_cell_709/Sigmoid_1Sigmoid4sequential_236/lstm_709/lstm_cell_709/split:output:1*
T0*'
_output_shapes
:?????????2?
)sequential_236/lstm_709/lstm_cell_709/mulMul3sequential_236/lstm_709/lstm_cell_709/Sigmoid_1:y:0(sequential_236/lstm_709/zeros_1:output:0*
T0*'
_output_shapes
:?????????2?
*sequential_236/lstm_709/lstm_cell_709/ReluRelu4sequential_236/lstm_709/lstm_cell_709/split:output:2*
T0*'
_output_shapes
:?????????2?
+sequential_236/lstm_709/lstm_cell_709/mul_1Mul1sequential_236/lstm_709/lstm_cell_709/Sigmoid:y:08sequential_236/lstm_709/lstm_cell_709/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
+sequential_236/lstm_709/lstm_cell_709/add_1AddV2-sequential_236/lstm_709/lstm_cell_709/mul:z:0/sequential_236/lstm_709/lstm_cell_709/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
/sequential_236/lstm_709/lstm_cell_709/Sigmoid_2Sigmoid4sequential_236/lstm_709/lstm_cell_709/split:output:3*
T0*'
_output_shapes
:?????????2?
,sequential_236/lstm_709/lstm_cell_709/Relu_1Relu/sequential_236/lstm_709/lstm_cell_709/add_1:z:0*
T0*'
_output_shapes
:?????????2?
+sequential_236/lstm_709/lstm_cell_709/mul_2Mul3sequential_236/lstm_709/lstm_cell_709/Sigmoid_2:y:0:sequential_236/lstm_709/lstm_cell_709/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
5sequential_236/lstm_709/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
'sequential_236/lstm_709/TensorArrayV2_1TensorListReserve>sequential_236/lstm_709/TensorArrayV2_1/element_shape:output:00sequential_236/lstm_709/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_236/lstm_709/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_236/lstm_709/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_236/lstm_709/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_236/lstm_709/whileWhile3sequential_236/lstm_709/while/loop_counter:output:09sequential_236/lstm_709/while/maximum_iterations:output:0%sequential_236/lstm_709/time:output:00sequential_236/lstm_709/TensorArrayV2_1:handle:0&sequential_236/lstm_709/zeros:output:0(sequential_236/lstm_709/zeros_1:output:00sequential_236/lstm_709/strided_slice_1:output:0Osequential_236/lstm_709/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_236_lstm_709_lstm_cell_709_matmul_readvariableop_resourceFsequential_236_lstm_709_lstm_cell_709_matmul_1_readvariableop_resourceEsequential_236_lstm_709_lstm_cell_709_biasadd_readvariableop_resource*
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
*sequential_236_lstm_709_while_body_4428193*6
cond.R,
*sequential_236_lstm_709_while_cond_4428192*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
Hsequential_236/lstm_709/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
:sequential_236/lstm_709/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_236/lstm_709/while:output:3Qsequential_236/lstm_709/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0?
-sequential_236/lstm_709/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_236/lstm_709/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_236/lstm_709/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_236/lstm_709/strided_slice_3StridedSliceCsequential_236/lstm_709/TensorArrayV2Stack/TensorListStack:tensor:06sequential_236/lstm_709/strided_slice_3/stack:output:08sequential_236/lstm_709/strided_slice_3/stack_1:output:08sequential_236/lstm_709/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask}
(sequential_236/lstm_709/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_236/lstm_709/transpose_1	TransposeCsequential_236/lstm_709/TensorArrayV2Stack/TensorListStack:tensor:01sequential_236/lstm_709/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2s
sequential_236/lstm_709/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_236/lstm_710/ShapeShape'sequential_236/lstm_709/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_236/lstm_710/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_236/lstm_710/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_236/lstm_710/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_236/lstm_710/strided_sliceStridedSlice&sequential_236/lstm_710/Shape:output:04sequential_236/lstm_710/strided_slice/stack:output:06sequential_236/lstm_710/strided_slice/stack_1:output:06sequential_236/lstm_710/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_236/lstm_710/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
$sequential_236/lstm_710/zeros/packedPack.sequential_236/lstm_710/strided_slice:output:0/sequential_236/lstm_710/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_236/lstm_710/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_236/lstm_710/zerosFill-sequential_236/lstm_710/zeros/packed:output:0,sequential_236/lstm_710/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
j
(sequential_236/lstm_710/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
&sequential_236/lstm_710/zeros_1/packedPack.sequential_236/lstm_710/strided_slice:output:01sequential_236/lstm_710/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_236/lstm_710/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_236/lstm_710/zeros_1Fill/sequential_236/lstm_710/zeros_1/packed:output:0.sequential_236/lstm_710/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
{
&sequential_236/lstm_710/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_236/lstm_710/transpose	Transpose'sequential_236/lstm_709/transpose_1:y:0/sequential_236/lstm_710/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2t
sequential_236/lstm_710/Shape_1Shape%sequential_236/lstm_710/transpose:y:0*
T0*
_output_shapes
:w
-sequential_236/lstm_710/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_236/lstm_710/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_236/lstm_710/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_236/lstm_710/strided_slice_1StridedSlice(sequential_236/lstm_710/Shape_1:output:06sequential_236/lstm_710/strided_slice_1/stack:output:08sequential_236/lstm_710/strided_slice_1/stack_1:output:08sequential_236/lstm_710/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_236/lstm_710/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_236/lstm_710/TensorArrayV2TensorListReserve<sequential_236/lstm_710/TensorArrayV2/element_shape:output:00sequential_236/lstm_710/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_236/lstm_710/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
?sequential_236/lstm_710/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_236/lstm_710/transpose:y:0Vsequential_236/lstm_710/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_236/lstm_710/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_236/lstm_710/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_236/lstm_710/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_236/lstm_710/strided_slice_2StridedSlice%sequential_236/lstm_710/transpose:y:06sequential_236/lstm_710/strided_slice_2/stack:output:08sequential_236/lstm_710/strided_slice_2/stack_1:output:08sequential_236/lstm_710/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
;sequential_236/lstm_710/lstm_cell_710/MatMul/ReadVariableOpReadVariableOpDsequential_236_lstm_710_lstm_cell_710_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
,sequential_236/lstm_710/lstm_cell_710/MatMulMatMul0sequential_236/lstm_710/strided_slice_2:output:0Csequential_236/lstm_710/lstm_cell_710/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
=sequential_236/lstm_710/lstm_cell_710/MatMul_1/ReadVariableOpReadVariableOpFsequential_236_lstm_710_lstm_cell_710_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
.sequential_236/lstm_710/lstm_cell_710/MatMul_1MatMul&sequential_236/lstm_710/zeros:output:0Esequential_236/lstm_710/lstm_cell_710/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
)sequential_236/lstm_710/lstm_cell_710/addAddV26sequential_236/lstm_710/lstm_cell_710/MatMul:product:08sequential_236/lstm_710/lstm_cell_710/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
<sequential_236/lstm_710/lstm_cell_710/BiasAdd/ReadVariableOpReadVariableOpEsequential_236_lstm_710_lstm_cell_710_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
-sequential_236/lstm_710/lstm_cell_710/BiasAddBiasAdd-sequential_236/lstm_710/lstm_cell_710/add:z:0Dsequential_236/lstm_710/lstm_cell_710/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(w
5sequential_236/lstm_710/lstm_cell_710/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_236/lstm_710/lstm_cell_710/splitSplit>sequential_236/lstm_710/lstm_cell_710/split/split_dim:output:06sequential_236/lstm_710/lstm_cell_710/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
-sequential_236/lstm_710/lstm_cell_710/SigmoidSigmoid4sequential_236/lstm_710/lstm_cell_710/split:output:0*
T0*'
_output_shapes
:?????????
?
/sequential_236/lstm_710/lstm_cell_710/Sigmoid_1Sigmoid4sequential_236/lstm_710/lstm_cell_710/split:output:1*
T0*'
_output_shapes
:?????????
?
)sequential_236/lstm_710/lstm_cell_710/mulMul3sequential_236/lstm_710/lstm_cell_710/Sigmoid_1:y:0(sequential_236/lstm_710/zeros_1:output:0*
T0*'
_output_shapes
:?????????
?
*sequential_236/lstm_710/lstm_cell_710/ReluRelu4sequential_236/lstm_710/lstm_cell_710/split:output:2*
T0*'
_output_shapes
:?????????
?
+sequential_236/lstm_710/lstm_cell_710/mul_1Mul1sequential_236/lstm_710/lstm_cell_710/Sigmoid:y:08sequential_236/lstm_710/lstm_cell_710/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
+sequential_236/lstm_710/lstm_cell_710/add_1AddV2-sequential_236/lstm_710/lstm_cell_710/mul:z:0/sequential_236/lstm_710/lstm_cell_710/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
/sequential_236/lstm_710/lstm_cell_710/Sigmoid_2Sigmoid4sequential_236/lstm_710/lstm_cell_710/split:output:3*
T0*'
_output_shapes
:?????????
?
,sequential_236/lstm_710/lstm_cell_710/Relu_1Relu/sequential_236/lstm_710/lstm_cell_710/add_1:z:0*
T0*'
_output_shapes
:?????????
?
+sequential_236/lstm_710/lstm_cell_710/mul_2Mul3sequential_236/lstm_710/lstm_cell_710/Sigmoid_2:y:0:sequential_236/lstm_710/lstm_cell_710/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
5sequential_236/lstm_710/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
'sequential_236/lstm_710/TensorArrayV2_1TensorListReserve>sequential_236/lstm_710/TensorArrayV2_1/element_shape:output:00sequential_236/lstm_710/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_236/lstm_710/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_236/lstm_710/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_236/lstm_710/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_236/lstm_710/whileWhile3sequential_236/lstm_710/while/loop_counter:output:09sequential_236/lstm_710/while/maximum_iterations:output:0%sequential_236/lstm_710/time:output:00sequential_236/lstm_710/TensorArrayV2_1:handle:0&sequential_236/lstm_710/zeros:output:0(sequential_236/lstm_710/zeros_1:output:00sequential_236/lstm_710/strided_slice_1:output:0Osequential_236/lstm_710/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_236_lstm_710_lstm_cell_710_matmul_readvariableop_resourceFsequential_236_lstm_710_lstm_cell_710_matmul_1_readvariableop_resourceEsequential_236_lstm_710_lstm_cell_710_biasadd_readvariableop_resource*
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
*sequential_236_lstm_710_while_body_4428332*6
cond.R,
*sequential_236_lstm_710_while_cond_4428331*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
Hsequential_236/lstm_710/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
:sequential_236/lstm_710/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_236/lstm_710/while:output:3Qsequential_236/lstm_710/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0?
-sequential_236/lstm_710/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_236/lstm_710/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_236/lstm_710/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_236/lstm_710/strided_slice_3StridedSliceCsequential_236/lstm_710/TensorArrayV2Stack/TensorListStack:tensor:06sequential_236/lstm_710/strided_slice_3/stack:output:08sequential_236/lstm_710/strided_slice_3/stack_1:output:08sequential_236/lstm_710/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_mask}
(sequential_236/lstm_710/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_236/lstm_710/transpose_1	TransposeCsequential_236/lstm_710/TensorArrayV2Stack/TensorListStack:tensor:01sequential_236/lstm_710/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
s
sequential_236/lstm_710/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
.sequential_236/dense_236/MatMul/ReadVariableOpReadVariableOp7sequential_236_dense_236_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
sequential_236/dense_236/MatMulMatMul0sequential_236/lstm_710/strided_slice_3:output:06sequential_236/dense_236/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
/sequential_236/dense_236/BiasAdd/ReadVariableOpReadVariableOp8sequential_236_dense_236_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
 sequential_236/dense_236/BiasAddBiasAdd)sequential_236/dense_236/MatMul:product:07sequential_236/dense_236/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x
IdentityIdentity)sequential_236/dense_236/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp0^sequential_236/dense_236/BiasAdd/ReadVariableOp/^sequential_236/dense_236/MatMul/ReadVariableOp=^sequential_236/lstm_708/lstm_cell_708/BiasAdd/ReadVariableOp<^sequential_236/lstm_708/lstm_cell_708/MatMul/ReadVariableOp>^sequential_236/lstm_708/lstm_cell_708/MatMul_1/ReadVariableOp^sequential_236/lstm_708/while=^sequential_236/lstm_709/lstm_cell_709/BiasAdd/ReadVariableOp<^sequential_236/lstm_709/lstm_cell_709/MatMul/ReadVariableOp>^sequential_236/lstm_709/lstm_cell_709/MatMul_1/ReadVariableOp^sequential_236/lstm_709/while=^sequential_236/lstm_710/lstm_cell_710/BiasAdd/ReadVariableOp<^sequential_236/lstm_710/lstm_cell_710/MatMul/ReadVariableOp>^sequential_236/lstm_710/lstm_cell_710/MatMul_1/ReadVariableOp^sequential_236/lstm_710/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2b
/sequential_236/dense_236/BiasAdd/ReadVariableOp/sequential_236/dense_236/BiasAdd/ReadVariableOp2`
.sequential_236/dense_236/MatMul/ReadVariableOp.sequential_236/dense_236/MatMul/ReadVariableOp2|
<sequential_236/lstm_708/lstm_cell_708/BiasAdd/ReadVariableOp<sequential_236/lstm_708/lstm_cell_708/BiasAdd/ReadVariableOp2z
;sequential_236/lstm_708/lstm_cell_708/MatMul/ReadVariableOp;sequential_236/lstm_708/lstm_cell_708/MatMul/ReadVariableOp2~
=sequential_236/lstm_708/lstm_cell_708/MatMul_1/ReadVariableOp=sequential_236/lstm_708/lstm_cell_708/MatMul_1/ReadVariableOp2>
sequential_236/lstm_708/whilesequential_236/lstm_708/while2|
<sequential_236/lstm_709/lstm_cell_709/BiasAdd/ReadVariableOp<sequential_236/lstm_709/lstm_cell_709/BiasAdd/ReadVariableOp2z
;sequential_236/lstm_709/lstm_cell_709/MatMul/ReadVariableOp;sequential_236/lstm_709/lstm_cell_709/MatMul/ReadVariableOp2~
=sequential_236/lstm_709/lstm_cell_709/MatMul_1/ReadVariableOp=sequential_236/lstm_709/lstm_cell_709/MatMul_1/ReadVariableOp2>
sequential_236/lstm_709/whilesequential_236/lstm_709/while2|
<sequential_236/lstm_710/lstm_cell_710/BiasAdd/ReadVariableOp<sequential_236/lstm_710/lstm_cell_710/BiasAdd/ReadVariableOp2z
;sequential_236/lstm_710/lstm_cell_710/MatMul/ReadVariableOp;sequential_236/lstm_710/lstm_cell_710/MatMul/ReadVariableOp2~
=sequential_236/lstm_710/lstm_cell_710/MatMul_1/ReadVariableOp=sequential_236/lstm_710/lstm_cell_710/MatMul_1/ReadVariableOp2>
sequential_236/lstm_710/whilesequential_236/lstm_710/while:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_708_input
?
?
K__inference_sequential_236_layer_call_and_return_conditional_losses_4430617
lstm_708_input#
lstm_708_4430590:	?#
lstm_708_4430592:	d?
lstm_708_4430594:	?#
lstm_709_4430597:	d?#
lstm_709_4430599:	2?
lstm_709_4430601:	?"
lstm_710_4430604:2("
lstm_710_4430606:
(
lstm_710_4430608:(#
dense_236_4430611:

dense_236_4430613:
identity??!dense_236/StatefulPartitionedCall? lstm_708/StatefulPartitionedCall? lstm_709/StatefulPartitionedCall? lstm_710/StatefulPartitionedCall?
 lstm_708/StatefulPartitionedCallStatefulPartitionedCalllstm_708_inputlstm_708_4430590lstm_708_4430592lstm_708_4430594*
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
E__inference_lstm_708_layer_call_and_return_conditional_losses_4429621?
 lstm_709/StatefulPartitionedCallStatefulPartitionedCall)lstm_708/StatefulPartitionedCall:output:0lstm_709_4430597lstm_709_4430599lstm_709_4430601*
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
E__inference_lstm_709_layer_call_and_return_conditional_losses_4429771?
 lstm_710/StatefulPartitionedCallStatefulPartitionedCall)lstm_709/StatefulPartitionedCall:output:0lstm_710_4430604lstm_710_4430606lstm_710_4430608*
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
E__inference_lstm_710_layer_call_and_return_conditional_losses_4429921?
!dense_236/StatefulPartitionedCallStatefulPartitionedCall)lstm_710/StatefulPartitionedCall:output:0dense_236_4430611dense_236_4430613*
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
F__inference_dense_236_layer_call_and_return_conditional_losses_4429939y
IdentityIdentity*dense_236/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_236/StatefulPartitionedCall!^lstm_708/StatefulPartitionedCall!^lstm_709/StatefulPartitionedCall!^lstm_710/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_236/StatefulPartitionedCall!dense_236/StatefulPartitionedCall2D
 lstm_708/StatefulPartitionedCall lstm_708/StatefulPartitionedCall2D
 lstm_709/StatefulPartitionedCall lstm_709/StatefulPartitionedCall2D
 lstm_710/StatefulPartitionedCall lstm_710/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_708_input
?J
?
E__inference_lstm_709_layer_call_and_return_conditional_losses_4432822

inputs?
,lstm_cell_709_matmul_readvariableop_resource:	d?A
.lstm_cell_709_matmul_1_readvariableop_resource:	2?<
-lstm_cell_709_biasadd_readvariableop_resource:	?
identity??$lstm_cell_709/BiasAdd/ReadVariableOp?#lstm_cell_709/MatMul/ReadVariableOp?%lstm_cell_709/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_709/MatMul/ReadVariableOpReadVariableOp,lstm_cell_709_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_709/MatMulMatMulstrided_slice_2:output:0+lstm_cell_709/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_709/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_709_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_709/MatMul_1MatMulzeros:output:0-lstm_cell_709/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_709/addAddV2lstm_cell_709/MatMul:product:0 lstm_cell_709/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_709/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_709_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_709/BiasAddBiasAddlstm_cell_709/add:z:0,lstm_cell_709/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_709/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_709/splitSplit&lstm_cell_709/split/split_dim:output:0lstm_cell_709/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_709/SigmoidSigmoidlstm_cell_709/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_709/Sigmoid_1Sigmoidlstm_cell_709/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_709/mulMullstm_cell_709/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_709/ReluRelulstm_cell_709/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_709/mul_1Mullstm_cell_709/Sigmoid:y:0 lstm_cell_709/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_709/add_1AddV2lstm_cell_709/mul:z:0lstm_cell_709/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_709/Sigmoid_2Sigmoidlstm_cell_709/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_709/Relu_1Relulstm_cell_709/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_709/mul_2Mullstm_cell_709/Sigmoid_2:y:0"lstm_cell_709/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_709_matmul_readvariableop_resource.lstm_cell_709_matmul_1_readvariableop_resource-lstm_cell_709_biasadd_readvariableop_resource*
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
while_body_4432738*
condR
while_cond_4432737*K
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
NoOpNoOp%^lstm_cell_709/BiasAdd/ReadVariableOp$^lstm_cell_709/MatMul/ReadVariableOp&^lstm_cell_709/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_709/BiasAdd/ReadVariableOp$lstm_cell_709/BiasAdd/ReadVariableOp2J
#lstm_cell_709/MatMul/ReadVariableOp#lstm_cell_709/MatMul/ReadVariableOp2N
%lstm_cell_709/MatMul_1/ReadVariableOp%lstm_cell_709/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?J
?
E__inference_lstm_710_layer_call_and_return_conditional_losses_4430137

inputs>
,lstm_cell_710_matmul_readvariableop_resource:2(@
.lstm_cell_710_matmul_1_readvariableop_resource:
(;
-lstm_cell_710_biasadd_readvariableop_resource:(
identity??$lstm_cell_710/BiasAdd/ReadVariableOp?#lstm_cell_710/MatMul/ReadVariableOp?%lstm_cell_710/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_710/MatMul/ReadVariableOpReadVariableOp,lstm_cell_710_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_710/MatMulMatMulstrided_slice_2:output:0+lstm_cell_710/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_710/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_710_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_710/MatMul_1MatMulzeros:output:0-lstm_cell_710/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_710/addAddV2lstm_cell_710/MatMul:product:0 lstm_cell_710/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_710/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_710_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_710/BiasAddBiasAddlstm_cell_710/add:z:0,lstm_cell_710/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_710/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_710/splitSplit&lstm_cell_710/split/split_dim:output:0lstm_cell_710/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_710/SigmoidSigmoidlstm_cell_710/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_710/Sigmoid_1Sigmoidlstm_cell_710/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_710/mulMullstm_cell_710/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_710/ReluRelulstm_cell_710/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_710/mul_1Mullstm_cell_710/Sigmoid:y:0 lstm_cell_710/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_710/add_1AddV2lstm_cell_710/mul:z:0lstm_cell_710/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_710/Sigmoid_2Sigmoidlstm_cell_710/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_710/Relu_1Relulstm_cell_710/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_710/mul_2Mullstm_cell_710/Sigmoid_2:y:0"lstm_cell_710/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_710_matmul_readvariableop_resource.lstm_cell_710_matmul_1_readvariableop_resource-lstm_cell_710_biasadd_readvariableop_resource*
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
while_body_4430053*
condR
while_cond_4430052*K
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
NoOpNoOp%^lstm_cell_710/BiasAdd/ReadVariableOp$^lstm_cell_710/MatMul/ReadVariableOp&^lstm_cell_710/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_710/BiasAdd/ReadVariableOp$lstm_cell_710/BiasAdd/ReadVariableOp2J
#lstm_cell_710/MatMul/ReadVariableOp#lstm_cell_710/MatMul/ReadVariableOp2N
%lstm_cell_710/MatMul_1/ReadVariableOp%lstm_cell_710/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?C
?

lstm_709_while_body_4431361.
*lstm_709_while_lstm_709_while_loop_counter4
0lstm_709_while_lstm_709_while_maximum_iterations
lstm_709_while_placeholder 
lstm_709_while_placeholder_1 
lstm_709_while_placeholder_2 
lstm_709_while_placeholder_3-
)lstm_709_while_lstm_709_strided_slice_1_0i
elstm_709_while_tensorarrayv2read_tensorlistgetitem_lstm_709_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_709_while_lstm_cell_709_matmul_readvariableop_resource_0:	d?R
?lstm_709_while_lstm_cell_709_matmul_1_readvariableop_resource_0:	2?M
>lstm_709_while_lstm_cell_709_biasadd_readvariableop_resource_0:	?
lstm_709_while_identity
lstm_709_while_identity_1
lstm_709_while_identity_2
lstm_709_while_identity_3
lstm_709_while_identity_4
lstm_709_while_identity_5+
'lstm_709_while_lstm_709_strided_slice_1g
clstm_709_while_tensorarrayv2read_tensorlistgetitem_lstm_709_tensorarrayunstack_tensorlistfromtensorN
;lstm_709_while_lstm_cell_709_matmul_readvariableop_resource:	d?P
=lstm_709_while_lstm_cell_709_matmul_1_readvariableop_resource:	2?K
<lstm_709_while_lstm_cell_709_biasadd_readvariableop_resource:	???3lstm_709/while/lstm_cell_709/BiasAdd/ReadVariableOp?2lstm_709/while/lstm_cell_709/MatMul/ReadVariableOp?4lstm_709/while/lstm_cell_709/MatMul_1/ReadVariableOp?
@lstm_709/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_709/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_709_while_tensorarrayv2read_tensorlistgetitem_lstm_709_tensorarrayunstack_tensorlistfromtensor_0lstm_709_while_placeholderIlstm_709/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_709/while/lstm_cell_709/MatMul/ReadVariableOpReadVariableOp=lstm_709_while_lstm_cell_709_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_709/while/lstm_cell_709/MatMulMatMul9lstm_709/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_709/while/lstm_cell_709/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_709/while/lstm_cell_709/MatMul_1/ReadVariableOpReadVariableOp?lstm_709_while_lstm_cell_709_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_709/while/lstm_cell_709/MatMul_1MatMullstm_709_while_placeholder_2<lstm_709/while/lstm_cell_709/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_709/while/lstm_cell_709/addAddV2-lstm_709/while/lstm_cell_709/MatMul:product:0/lstm_709/while/lstm_cell_709/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_709/while/lstm_cell_709/BiasAdd/ReadVariableOpReadVariableOp>lstm_709_while_lstm_cell_709_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_709/while/lstm_cell_709/BiasAddBiasAdd$lstm_709/while/lstm_cell_709/add:z:0;lstm_709/while/lstm_cell_709/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_709/while/lstm_cell_709/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_709/while/lstm_cell_709/splitSplit5lstm_709/while/lstm_cell_709/split/split_dim:output:0-lstm_709/while/lstm_cell_709/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_709/while/lstm_cell_709/SigmoidSigmoid+lstm_709/while/lstm_cell_709/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_709/while/lstm_cell_709/Sigmoid_1Sigmoid+lstm_709/while/lstm_cell_709/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_709/while/lstm_cell_709/mulMul*lstm_709/while/lstm_cell_709/Sigmoid_1:y:0lstm_709_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_709/while/lstm_cell_709/ReluRelu+lstm_709/while/lstm_cell_709/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_709/while/lstm_cell_709/mul_1Mul(lstm_709/while/lstm_cell_709/Sigmoid:y:0/lstm_709/while/lstm_cell_709/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_709/while/lstm_cell_709/add_1AddV2$lstm_709/while/lstm_cell_709/mul:z:0&lstm_709/while/lstm_cell_709/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_709/while/lstm_cell_709/Sigmoid_2Sigmoid+lstm_709/while/lstm_cell_709/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_709/while/lstm_cell_709/Relu_1Relu&lstm_709/while/lstm_cell_709/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_709/while/lstm_cell_709/mul_2Mul*lstm_709/while/lstm_cell_709/Sigmoid_2:y:01lstm_709/while/lstm_cell_709/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_709/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_709_while_placeholder_1lstm_709_while_placeholder&lstm_709/while/lstm_cell_709/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_709/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_709/while/addAddV2lstm_709_while_placeholderlstm_709/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_709/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_709/while/add_1AddV2*lstm_709_while_lstm_709_while_loop_counterlstm_709/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_709/while/IdentityIdentitylstm_709/while/add_1:z:0^lstm_709/while/NoOp*
T0*
_output_shapes
: ?
lstm_709/while/Identity_1Identity0lstm_709_while_lstm_709_while_maximum_iterations^lstm_709/while/NoOp*
T0*
_output_shapes
: t
lstm_709/while/Identity_2Identitylstm_709/while/add:z:0^lstm_709/while/NoOp*
T0*
_output_shapes
: ?
lstm_709/while/Identity_3IdentityClstm_709/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_709/while/NoOp*
T0*
_output_shapes
: ?
lstm_709/while/Identity_4Identity&lstm_709/while/lstm_cell_709/mul_2:z:0^lstm_709/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_709/while/Identity_5Identity&lstm_709/while/lstm_cell_709/add_1:z:0^lstm_709/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_709/while/NoOpNoOp4^lstm_709/while/lstm_cell_709/BiasAdd/ReadVariableOp3^lstm_709/while/lstm_cell_709/MatMul/ReadVariableOp5^lstm_709/while/lstm_cell_709/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_709_while_identity lstm_709/while/Identity:output:0"?
lstm_709_while_identity_1"lstm_709/while/Identity_1:output:0"?
lstm_709_while_identity_2"lstm_709/while/Identity_2:output:0"?
lstm_709_while_identity_3"lstm_709/while/Identity_3:output:0"?
lstm_709_while_identity_4"lstm_709/while/Identity_4:output:0"?
lstm_709_while_identity_5"lstm_709/while/Identity_5:output:0"T
'lstm_709_while_lstm_709_strided_slice_1)lstm_709_while_lstm_709_strided_slice_1_0"~
<lstm_709_while_lstm_cell_709_biasadd_readvariableop_resource>lstm_709_while_lstm_cell_709_biasadd_readvariableop_resource_0"?
=lstm_709_while_lstm_cell_709_matmul_1_readvariableop_resource?lstm_709_while_lstm_cell_709_matmul_1_readvariableop_resource_0"|
;lstm_709_while_lstm_cell_709_matmul_readvariableop_resource=lstm_709_while_lstm_cell_709_matmul_readvariableop_resource_0"?
clstm_709_while_tensorarrayv2read_tensorlistgetitem_lstm_709_tensorarrayunstack_tensorlistfromtensorelstm_709_while_tensorarrayv2read_tensorlistgetitem_lstm_709_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_709/while/lstm_cell_709/BiasAdd/ReadVariableOp3lstm_709/while/lstm_cell_709/BiasAdd/ReadVariableOp2h
2lstm_709/while/lstm_cell_709/MatMul/ReadVariableOp2lstm_709/while/lstm_cell_709/MatMul/ReadVariableOp2l
4lstm_709/while/lstm_cell_709/MatMul_1/ReadVariableOp4lstm_709/while/lstm_cell_709/MatMul_1/ReadVariableOp: 
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
?#
?
while_body_4428503
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_708_4428527_0:	?0
while_lstm_cell_708_4428529_0:	d?,
while_lstm_cell_708_4428531_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_708_4428527:	?.
while_lstm_cell_708_4428529:	d?*
while_lstm_cell_708_4428531:	???+while/lstm_cell_708/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_708/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_708_4428527_0while_lstm_cell_708_4428529_0while_lstm_cell_708_4428531_0*
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
J__inference_lstm_cell_708_layer_call_and_return_conditional_losses_4428489?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_708/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_708/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_708/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_708/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_708_4428527while_lstm_cell_708_4428527_0"<
while_lstm_cell_708_4428529while_lstm_cell_708_4428529_0"<
while_lstm_cell_708_4428531while_lstm_cell_708_4428531_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_708/StatefulPartitionedCall+while/lstm_cell_708/StatefulPartitionedCall: 
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
/__inference_lstm_cell_709_layer_call_fn_4433589

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
J__inference_lstm_cell_709_layer_call_and_return_conditional_losses_4428985o
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
?
while_cond_4428502
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4428502___redundant_placeholder05
1while_while_cond_4428502___redundant_placeholder15
1while_while_cond_4428502___redundant_placeholder25
1while_while_cond_4428502___redundant_placeholder3
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
while_body_4432309
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_709_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_709_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_709_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_709_matmul_readvariableop_resource:	d?G
4while_lstm_cell_709_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_709_biasadd_readvariableop_resource:	???*while/lstm_cell_709/BiasAdd/ReadVariableOp?)while/lstm_cell_709/MatMul/ReadVariableOp?+while/lstm_cell_709/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_709/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_709_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_709/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_709/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_709/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_709_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_709/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_709/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_709/addAddV2$while/lstm_cell_709/MatMul:product:0&while/lstm_cell_709/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_709/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_709_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_709/BiasAddBiasAddwhile/lstm_cell_709/add:z:02while/lstm_cell_709/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_709/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_709/splitSplit,while/lstm_cell_709/split/split_dim:output:0$while/lstm_cell_709/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_709/SigmoidSigmoid"while/lstm_cell_709/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_709/Sigmoid_1Sigmoid"while/lstm_cell_709/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_709/mulMul!while/lstm_cell_709/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_709/ReluRelu"while/lstm_cell_709/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_709/mul_1Mulwhile/lstm_cell_709/Sigmoid:y:0&while/lstm_cell_709/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_709/add_1AddV2while/lstm_cell_709/mul:z:0while/lstm_cell_709/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_709/Sigmoid_2Sigmoid"while/lstm_cell_709/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_709/Relu_1Reluwhile/lstm_cell_709/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_709/mul_2Mul!while/lstm_cell_709/Sigmoid_2:y:0(while/lstm_cell_709/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_709/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_709/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_709/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_709/BiasAdd/ReadVariableOp*^while/lstm_cell_709/MatMul/ReadVariableOp,^while/lstm_cell_709/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_709_biasadd_readvariableop_resource5while_lstm_cell_709_biasadd_readvariableop_resource_0"n
4while_lstm_cell_709_matmul_1_readvariableop_resource6while_lstm_cell_709_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_709_matmul_readvariableop_resource4while_lstm_cell_709_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_709/BiasAdd/ReadVariableOp*while/lstm_cell_709/BiasAdd/ReadVariableOp2V
)while/lstm_cell_709/MatMul/ReadVariableOp)while/lstm_cell_709/MatMul/ReadVariableOp2Z
+while/lstm_cell_709/MatMul_1/ReadVariableOp+while/lstm_cell_709/MatMul_1/ReadVariableOp: 
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
?
?
J__inference_lstm_cell_708_layer_call_and_return_conditional_losses_4428635

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
?
?
/__inference_lstm_cell_710_layer_call_fn_4433670

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
J__inference_lstm_cell_710_layer_call_and_return_conditional_losses_4429189o
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
?
?
while_cond_4429202
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4429202___redundant_placeholder05
1while_while_cond_4429202___redundant_placeholder15
1while_while_cond_4429202___redundant_placeholder25
1while_while_cond_4429202___redundant_placeholder3
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
while_cond_4430217
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4430217___redundant_placeholder05
1while_while_cond_4430217___redundant_placeholder15
1while_while_cond_4430217___redundant_placeholder25
1while_while_cond_4430217___redundant_placeholder3
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
while_cond_4433067
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4433067___redundant_placeholder05
1while_while_cond_4433067___redundant_placeholder15
1while_while_cond_4433067___redundant_placeholder25
1while_while_cond_4433067___redundant_placeholder3
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
while_cond_4429836
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4429836___redundant_placeholder05
1while_while_cond_4429836___redundant_placeholder15
1while_while_cond_4429836___redundant_placeholder25
1while_while_cond_4429836___redundant_placeholder3
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
?T
?
*sequential_236_lstm_710_while_body_4428332L
Hsequential_236_lstm_710_while_sequential_236_lstm_710_while_loop_counterR
Nsequential_236_lstm_710_while_sequential_236_lstm_710_while_maximum_iterations-
)sequential_236_lstm_710_while_placeholder/
+sequential_236_lstm_710_while_placeholder_1/
+sequential_236_lstm_710_while_placeholder_2/
+sequential_236_lstm_710_while_placeholder_3K
Gsequential_236_lstm_710_while_sequential_236_lstm_710_strided_slice_1_0?
?sequential_236_lstm_710_while_tensorarrayv2read_tensorlistgetitem_sequential_236_lstm_710_tensorarrayunstack_tensorlistfromtensor_0^
Lsequential_236_lstm_710_while_lstm_cell_710_matmul_readvariableop_resource_0:2(`
Nsequential_236_lstm_710_while_lstm_cell_710_matmul_1_readvariableop_resource_0:
([
Msequential_236_lstm_710_while_lstm_cell_710_biasadd_readvariableop_resource_0:(*
&sequential_236_lstm_710_while_identity,
(sequential_236_lstm_710_while_identity_1,
(sequential_236_lstm_710_while_identity_2,
(sequential_236_lstm_710_while_identity_3,
(sequential_236_lstm_710_while_identity_4,
(sequential_236_lstm_710_while_identity_5I
Esequential_236_lstm_710_while_sequential_236_lstm_710_strided_slice_1?
?sequential_236_lstm_710_while_tensorarrayv2read_tensorlistgetitem_sequential_236_lstm_710_tensorarrayunstack_tensorlistfromtensor\
Jsequential_236_lstm_710_while_lstm_cell_710_matmul_readvariableop_resource:2(^
Lsequential_236_lstm_710_while_lstm_cell_710_matmul_1_readvariableop_resource:
(Y
Ksequential_236_lstm_710_while_lstm_cell_710_biasadd_readvariableop_resource:(??Bsequential_236/lstm_710/while/lstm_cell_710/BiasAdd/ReadVariableOp?Asequential_236/lstm_710/while/lstm_cell_710/MatMul/ReadVariableOp?Csequential_236/lstm_710/while/lstm_cell_710/MatMul_1/ReadVariableOp?
Osequential_236/lstm_710/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
Asequential_236/lstm_710/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_236_lstm_710_while_tensorarrayv2read_tensorlistgetitem_sequential_236_lstm_710_tensorarrayunstack_tensorlistfromtensor_0)sequential_236_lstm_710_while_placeholderXsequential_236/lstm_710/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
Asequential_236/lstm_710/while/lstm_cell_710/MatMul/ReadVariableOpReadVariableOpLsequential_236_lstm_710_while_lstm_cell_710_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
2sequential_236/lstm_710/while/lstm_cell_710/MatMulMatMulHsequential_236/lstm_710/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_236/lstm_710/while/lstm_cell_710/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
Csequential_236/lstm_710/while/lstm_cell_710/MatMul_1/ReadVariableOpReadVariableOpNsequential_236_lstm_710_while_lstm_cell_710_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
4sequential_236/lstm_710/while/lstm_cell_710/MatMul_1MatMul+sequential_236_lstm_710_while_placeholder_2Ksequential_236/lstm_710/while/lstm_cell_710/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
/sequential_236/lstm_710/while/lstm_cell_710/addAddV2<sequential_236/lstm_710/while/lstm_cell_710/MatMul:product:0>sequential_236/lstm_710/while/lstm_cell_710/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
Bsequential_236/lstm_710/while/lstm_cell_710/BiasAdd/ReadVariableOpReadVariableOpMsequential_236_lstm_710_while_lstm_cell_710_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
3sequential_236/lstm_710/while/lstm_cell_710/BiasAddBiasAdd3sequential_236/lstm_710/while/lstm_cell_710/add:z:0Jsequential_236/lstm_710/while/lstm_cell_710/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(}
;sequential_236/lstm_710/while/lstm_cell_710/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_236/lstm_710/while/lstm_cell_710/splitSplitDsequential_236/lstm_710/while/lstm_cell_710/split/split_dim:output:0<sequential_236/lstm_710/while/lstm_cell_710/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
3sequential_236/lstm_710/while/lstm_cell_710/SigmoidSigmoid:sequential_236/lstm_710/while/lstm_cell_710/split:output:0*
T0*'
_output_shapes
:?????????
?
5sequential_236/lstm_710/while/lstm_cell_710/Sigmoid_1Sigmoid:sequential_236/lstm_710/while/lstm_cell_710/split:output:1*
T0*'
_output_shapes
:?????????
?
/sequential_236/lstm_710/while/lstm_cell_710/mulMul9sequential_236/lstm_710/while/lstm_cell_710/Sigmoid_1:y:0+sequential_236_lstm_710_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
0sequential_236/lstm_710/while/lstm_cell_710/ReluRelu:sequential_236/lstm_710/while/lstm_cell_710/split:output:2*
T0*'
_output_shapes
:?????????
?
1sequential_236/lstm_710/while/lstm_cell_710/mul_1Mul7sequential_236/lstm_710/while/lstm_cell_710/Sigmoid:y:0>sequential_236/lstm_710/while/lstm_cell_710/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
1sequential_236/lstm_710/while/lstm_cell_710/add_1AddV23sequential_236/lstm_710/while/lstm_cell_710/mul:z:05sequential_236/lstm_710/while/lstm_cell_710/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
5sequential_236/lstm_710/while/lstm_cell_710/Sigmoid_2Sigmoid:sequential_236/lstm_710/while/lstm_cell_710/split:output:3*
T0*'
_output_shapes
:?????????
?
2sequential_236/lstm_710/while/lstm_cell_710/Relu_1Relu5sequential_236/lstm_710/while/lstm_cell_710/add_1:z:0*
T0*'
_output_shapes
:?????????
?
1sequential_236/lstm_710/while/lstm_cell_710/mul_2Mul9sequential_236/lstm_710/while/lstm_cell_710/Sigmoid_2:y:0@sequential_236/lstm_710/while/lstm_cell_710/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
Bsequential_236/lstm_710/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_236_lstm_710_while_placeholder_1)sequential_236_lstm_710_while_placeholder5sequential_236/lstm_710/while/lstm_cell_710/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_236/lstm_710/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_236/lstm_710/while/addAddV2)sequential_236_lstm_710_while_placeholder,sequential_236/lstm_710/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_236/lstm_710/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_236/lstm_710/while/add_1AddV2Hsequential_236_lstm_710_while_sequential_236_lstm_710_while_loop_counter.sequential_236/lstm_710/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_236/lstm_710/while/IdentityIdentity'sequential_236/lstm_710/while/add_1:z:0#^sequential_236/lstm_710/while/NoOp*
T0*
_output_shapes
: ?
(sequential_236/lstm_710/while/Identity_1IdentityNsequential_236_lstm_710_while_sequential_236_lstm_710_while_maximum_iterations#^sequential_236/lstm_710/while/NoOp*
T0*
_output_shapes
: ?
(sequential_236/lstm_710/while/Identity_2Identity%sequential_236/lstm_710/while/add:z:0#^sequential_236/lstm_710/while/NoOp*
T0*
_output_shapes
: ?
(sequential_236/lstm_710/while/Identity_3IdentityRsequential_236/lstm_710/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_236/lstm_710/while/NoOp*
T0*
_output_shapes
: ?
(sequential_236/lstm_710/while/Identity_4Identity5sequential_236/lstm_710/while/lstm_cell_710/mul_2:z:0#^sequential_236/lstm_710/while/NoOp*
T0*'
_output_shapes
:?????????
?
(sequential_236/lstm_710/while/Identity_5Identity5sequential_236/lstm_710/while/lstm_cell_710/add_1:z:0#^sequential_236/lstm_710/while/NoOp*
T0*'
_output_shapes
:?????????
?
"sequential_236/lstm_710/while/NoOpNoOpC^sequential_236/lstm_710/while/lstm_cell_710/BiasAdd/ReadVariableOpB^sequential_236/lstm_710/while/lstm_cell_710/MatMul/ReadVariableOpD^sequential_236/lstm_710/while/lstm_cell_710/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_236_lstm_710_while_identity/sequential_236/lstm_710/while/Identity:output:0"]
(sequential_236_lstm_710_while_identity_11sequential_236/lstm_710/while/Identity_1:output:0"]
(sequential_236_lstm_710_while_identity_21sequential_236/lstm_710/while/Identity_2:output:0"]
(sequential_236_lstm_710_while_identity_31sequential_236/lstm_710/while/Identity_3:output:0"]
(sequential_236_lstm_710_while_identity_41sequential_236/lstm_710/while/Identity_4:output:0"]
(sequential_236_lstm_710_while_identity_51sequential_236/lstm_710/while/Identity_5:output:0"?
Ksequential_236_lstm_710_while_lstm_cell_710_biasadd_readvariableop_resourceMsequential_236_lstm_710_while_lstm_cell_710_biasadd_readvariableop_resource_0"?
Lsequential_236_lstm_710_while_lstm_cell_710_matmul_1_readvariableop_resourceNsequential_236_lstm_710_while_lstm_cell_710_matmul_1_readvariableop_resource_0"?
Jsequential_236_lstm_710_while_lstm_cell_710_matmul_readvariableop_resourceLsequential_236_lstm_710_while_lstm_cell_710_matmul_readvariableop_resource_0"?
Esequential_236_lstm_710_while_sequential_236_lstm_710_strided_slice_1Gsequential_236_lstm_710_while_sequential_236_lstm_710_strided_slice_1_0"?
?sequential_236_lstm_710_while_tensorarrayv2read_tensorlistgetitem_sequential_236_lstm_710_tensorarrayunstack_tensorlistfromtensor?sequential_236_lstm_710_while_tensorarrayv2read_tensorlistgetitem_sequential_236_lstm_710_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2?
Bsequential_236/lstm_710/while/lstm_cell_710/BiasAdd/ReadVariableOpBsequential_236/lstm_710/while/lstm_cell_710/BiasAdd/ReadVariableOp2?
Asequential_236/lstm_710/while/lstm_cell_710/MatMul/ReadVariableOpAsequential_236/lstm_710/while/lstm_cell_710/MatMul/ReadVariableOp2?
Csequential_236/lstm_710/while/lstm_cell_710/MatMul_1/ReadVariableOpCsequential_236/lstm_710/while/lstm_cell_710/MatMul_1/ReadVariableOp: 
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
*__inference_lstm_709_layer_call_fn_4432239

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
E__inference_lstm_709_layer_call_and_return_conditional_losses_4429771s
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
E__inference_lstm_710_layer_call_and_return_conditional_losses_4433009
inputs_0>
,lstm_cell_710_matmul_readvariableop_resource:2(@
.lstm_cell_710_matmul_1_readvariableop_resource:
(;
-lstm_cell_710_biasadd_readvariableop_resource:(
identity??$lstm_cell_710/BiasAdd/ReadVariableOp?#lstm_cell_710/MatMul/ReadVariableOp?%lstm_cell_710/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_710/MatMul/ReadVariableOpReadVariableOp,lstm_cell_710_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_710/MatMulMatMulstrided_slice_2:output:0+lstm_cell_710/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_710/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_710_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_710/MatMul_1MatMulzeros:output:0-lstm_cell_710/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_710/addAddV2lstm_cell_710/MatMul:product:0 lstm_cell_710/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_710/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_710_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_710/BiasAddBiasAddlstm_cell_710/add:z:0,lstm_cell_710/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_710/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_710/splitSplit&lstm_cell_710/split/split_dim:output:0lstm_cell_710/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_710/SigmoidSigmoidlstm_cell_710/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_710/Sigmoid_1Sigmoidlstm_cell_710/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_710/mulMullstm_cell_710/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_710/ReluRelulstm_cell_710/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_710/mul_1Mullstm_cell_710/Sigmoid:y:0 lstm_cell_710/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_710/add_1AddV2lstm_cell_710/mul:z:0lstm_cell_710/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_710/Sigmoid_2Sigmoidlstm_cell_710/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_710/Relu_1Relulstm_cell_710/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_710/mul_2Mullstm_cell_710/Sigmoid_2:y:0"lstm_cell_710/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_710_matmul_readvariableop_resource.lstm_cell_710_matmul_1_readvariableop_resource-lstm_cell_710_biasadd_readvariableop_resource*
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
while_body_4432925*
condR
while_cond_4432924*K
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
NoOpNoOp%^lstm_cell_710/BiasAdd/ReadVariableOp$^lstm_cell_710/MatMul/ReadVariableOp&^lstm_cell_710/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_710/BiasAdd/ReadVariableOp$lstm_cell_710/BiasAdd/ReadVariableOp2J
#lstm_cell_710/MatMul/ReadVariableOp#lstm_cell_710/MatMul/ReadVariableOp2N
%lstm_cell_710/MatMul_1/ReadVariableOp%lstm_cell_710/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?

?
lstm_709_while_cond_4431360.
*lstm_709_while_lstm_709_while_loop_counter4
0lstm_709_while_lstm_709_while_maximum_iterations
lstm_709_while_placeholder 
lstm_709_while_placeholder_1 
lstm_709_while_placeholder_2 
lstm_709_while_placeholder_30
,lstm_709_while_less_lstm_709_strided_slice_1G
Clstm_709_while_lstm_709_while_cond_4431360___redundant_placeholder0G
Clstm_709_while_lstm_709_while_cond_4431360___redundant_placeholder1G
Clstm_709_while_lstm_709_while_cond_4431360___redundant_placeholder2G
Clstm_709_while_lstm_709_while_cond_4431360___redundant_placeholder3
lstm_709_while_identity
?
lstm_709/while/LessLesslstm_709_while_placeholder,lstm_709_while_less_lstm_709_strided_slice_1*
T0*
_output_shapes
: ]
lstm_709/while/IdentityIdentitylstm_709/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_709_while_identity lstm_709/while/Identity:output:0*(
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
while_body_4433354
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_710_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_710_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_710_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_710_matmul_readvariableop_resource:2(F
4while_lstm_cell_710_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_710_biasadd_readvariableop_resource:(??*while/lstm_cell_710/BiasAdd/ReadVariableOp?)while/lstm_cell_710/MatMul/ReadVariableOp?+while/lstm_cell_710/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_710/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_710_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_710/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_710/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_710/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_710_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_710/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_710/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_710/addAddV2$while/lstm_cell_710/MatMul:product:0&while/lstm_cell_710/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_710/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_710_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_710/BiasAddBiasAddwhile/lstm_cell_710/add:z:02while/lstm_cell_710/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_710/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_710/splitSplit,while/lstm_cell_710/split/split_dim:output:0$while/lstm_cell_710/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_710/SigmoidSigmoid"while/lstm_cell_710/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_710/Sigmoid_1Sigmoid"while/lstm_cell_710/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_710/mulMul!while/lstm_cell_710/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_710/ReluRelu"while/lstm_cell_710/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_710/mul_1Mulwhile/lstm_cell_710/Sigmoid:y:0&while/lstm_cell_710/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_710/add_1AddV2while/lstm_cell_710/mul:z:0while/lstm_cell_710/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_710/Sigmoid_2Sigmoid"while/lstm_cell_710/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_710/Relu_1Reluwhile/lstm_cell_710/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_710/mul_2Mul!while/lstm_cell_710/Sigmoid_2:y:0(while/lstm_cell_710/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_710/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_710/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_710/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_710/BiasAdd/ReadVariableOp*^while/lstm_cell_710/MatMul/ReadVariableOp,^while/lstm_cell_710/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_710_biasadd_readvariableop_resource5while_lstm_cell_710_biasadd_readvariableop_resource_0"n
4while_lstm_cell_710_matmul_1_readvariableop_resource6while_lstm_cell_710_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_710_matmul_readvariableop_resource4while_lstm_cell_710_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_710/BiasAdd/ReadVariableOp*while/lstm_cell_710/BiasAdd/ReadVariableOp2V
)while/lstm_cell_710/MatMul/ReadVariableOp)while/lstm_cell_710/MatMul/ReadVariableOp2Z
+while/lstm_cell_710/MatMul_1/ReadVariableOp+while/lstm_cell_710/MatMul_1/ReadVariableOp: 
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
?#
?
while_body_4429394
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_710_4429418_0:2(/
while_lstm_cell_710_4429420_0:
(+
while_lstm_cell_710_4429422_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_710_4429418:2(-
while_lstm_cell_710_4429420:
()
while_lstm_cell_710_4429422:(??+while/lstm_cell_710/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_710/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_710_4429418_0while_lstm_cell_710_4429420_0while_lstm_cell_710_4429422_0*
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
J__inference_lstm_cell_710_layer_call_and_return_conditional_losses_4429335?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_710/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_710/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_710/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_710/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_710_4429418while_lstm_cell_710_4429418_0"<
while_lstm_cell_710_4429420while_lstm_cell_710_4429420_0"<
while_lstm_cell_710_4429422while_lstm_cell_710_4429422_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_710/StatefulPartitionedCall+while/lstm_cell_710/StatefulPartitionedCall: 
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
E__inference_lstm_709_layer_call_and_return_conditional_losses_4430302

inputs?
,lstm_cell_709_matmul_readvariableop_resource:	d?A
.lstm_cell_709_matmul_1_readvariableop_resource:	2?<
-lstm_cell_709_biasadd_readvariableop_resource:	?
identity??$lstm_cell_709/BiasAdd/ReadVariableOp?#lstm_cell_709/MatMul/ReadVariableOp?%lstm_cell_709/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_709/MatMul/ReadVariableOpReadVariableOp,lstm_cell_709_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_709/MatMulMatMulstrided_slice_2:output:0+lstm_cell_709/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_709/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_709_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_709/MatMul_1MatMulzeros:output:0-lstm_cell_709/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_709/addAddV2lstm_cell_709/MatMul:product:0 lstm_cell_709/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_709/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_709_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_709/BiasAddBiasAddlstm_cell_709/add:z:0,lstm_cell_709/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_709/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_709/splitSplit&lstm_cell_709/split/split_dim:output:0lstm_cell_709/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_709/SigmoidSigmoidlstm_cell_709/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_709/Sigmoid_1Sigmoidlstm_cell_709/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_709/mulMullstm_cell_709/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_709/ReluRelulstm_cell_709/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_709/mul_1Mullstm_cell_709/Sigmoid:y:0 lstm_cell_709/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_709/add_1AddV2lstm_cell_709/mul:z:0lstm_cell_709/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_709/Sigmoid_2Sigmoidlstm_cell_709/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_709/Relu_1Relulstm_cell_709/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_709/mul_2Mullstm_cell_709/Sigmoid_2:y:0"lstm_cell_709/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_709_matmul_readvariableop_resource.lstm_cell_709_matmul_1_readvariableop_resource-lstm_cell_709_biasadd_readvariableop_resource*
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
while_body_4430218*
condR
while_cond_4430217*K
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
NoOpNoOp%^lstm_cell_709/BiasAdd/ReadVariableOp$^lstm_cell_709/MatMul/ReadVariableOp&^lstm_cell_709/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_709/BiasAdd/ReadVariableOp$lstm_cell_709/BiasAdd/ReadVariableOp2J
#lstm_cell_709/MatMul/ReadVariableOp#lstm_cell_709/MatMul/ReadVariableOp2N
%lstm_cell_709/MatMul_1/ReadVariableOp%lstm_cell_709/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
*__inference_lstm_708_layer_call_fn_4431623

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
E__inference_lstm_708_layer_call_and_return_conditional_losses_4429621s
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
?
?
J__inference_lstm_cell_709_layer_call_and_return_conditional_losses_4428839

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
?8
?
while_body_4429687
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_709_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_709_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_709_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_709_matmul_readvariableop_resource:	d?G
4while_lstm_cell_709_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_709_biasadd_readvariableop_resource:	???*while/lstm_cell_709/BiasAdd/ReadVariableOp?)while/lstm_cell_709/MatMul/ReadVariableOp?+while/lstm_cell_709/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_709/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_709_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_709/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_709/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_709/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_709_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_709/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_709/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_709/addAddV2$while/lstm_cell_709/MatMul:product:0&while/lstm_cell_709/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_709/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_709_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_709/BiasAddBiasAddwhile/lstm_cell_709/add:z:02while/lstm_cell_709/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_709/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_709/splitSplit,while/lstm_cell_709/split/split_dim:output:0$while/lstm_cell_709/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_709/SigmoidSigmoid"while/lstm_cell_709/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_709/Sigmoid_1Sigmoid"while/lstm_cell_709/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_709/mulMul!while/lstm_cell_709/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_709/ReluRelu"while/lstm_cell_709/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_709/mul_1Mulwhile/lstm_cell_709/Sigmoid:y:0&while/lstm_cell_709/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_709/add_1AddV2while/lstm_cell_709/mul:z:0while/lstm_cell_709/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_709/Sigmoid_2Sigmoid"while/lstm_cell_709/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_709/Relu_1Reluwhile/lstm_cell_709/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_709/mul_2Mul!while/lstm_cell_709/Sigmoid_2:y:0(while/lstm_cell_709/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_709/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_709/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_709/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_709/BiasAdd/ReadVariableOp*^while/lstm_cell_709/MatMul/ReadVariableOp,^while/lstm_cell_709/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_709_biasadd_readvariableop_resource5while_lstm_cell_709_biasadd_readvariableop_resource_0"n
4while_lstm_cell_709_matmul_1_readvariableop_resource6while_lstm_cell_709_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_709_matmul_readvariableop_resource4while_lstm_cell_709_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_709/BiasAdd/ReadVariableOp*while/lstm_cell_709/BiasAdd/ReadVariableOp2V
)while/lstm_cell_709/MatMul/ReadVariableOp)while/lstm_cell_709/MatMul/ReadVariableOp2Z
+while/lstm_cell_709/MatMul_1/ReadVariableOp+while/lstm_cell_709/MatMul_1/ReadVariableOp: 
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
?
while_body_4433211
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_710_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_710_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_710_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_710_matmul_readvariableop_resource:2(F
4while_lstm_cell_710_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_710_biasadd_readvariableop_resource:(??*while/lstm_cell_710/BiasAdd/ReadVariableOp?)while/lstm_cell_710/MatMul/ReadVariableOp?+while/lstm_cell_710/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_710/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_710_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_710/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_710/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_710/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_710_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_710/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_710/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_710/addAddV2$while/lstm_cell_710/MatMul:product:0&while/lstm_cell_710/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_710/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_710_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_710/BiasAddBiasAddwhile/lstm_cell_710/add:z:02while/lstm_cell_710/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_710/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_710/splitSplit,while/lstm_cell_710/split/split_dim:output:0$while/lstm_cell_710/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_710/SigmoidSigmoid"while/lstm_cell_710/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_710/Sigmoid_1Sigmoid"while/lstm_cell_710/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_710/mulMul!while/lstm_cell_710/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_710/ReluRelu"while/lstm_cell_710/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_710/mul_1Mulwhile/lstm_cell_710/Sigmoid:y:0&while/lstm_cell_710/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_710/add_1AddV2while/lstm_cell_710/mul:z:0while/lstm_cell_710/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_710/Sigmoid_2Sigmoid"while/lstm_cell_710/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_710/Relu_1Reluwhile/lstm_cell_710/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_710/mul_2Mul!while/lstm_cell_710/Sigmoid_2:y:0(while/lstm_cell_710/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_710/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_710/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_710/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_710/BiasAdd/ReadVariableOp*^while/lstm_cell_710/MatMul/ReadVariableOp,^while/lstm_cell_710/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_710_biasadd_readvariableop_resource5while_lstm_cell_710_biasadd_readvariableop_resource_0"n
4while_lstm_cell_710_matmul_1_readvariableop_resource6while_lstm_cell_710_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_710_matmul_readvariableop_resource4while_lstm_cell_710_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_710/BiasAdd/ReadVariableOp*while/lstm_cell_710/BiasAdd/ReadVariableOp2V
)while/lstm_cell_710/MatMul/ReadVariableOp)while/lstm_cell_710/MatMul/ReadVariableOp2Z
+while/lstm_cell_710/MatMul_1/ReadVariableOp+while/lstm_cell_710/MatMul_1/ReadVariableOp: 
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
J__inference_lstm_cell_708_layer_call_and_return_conditional_losses_4433555

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
?
?
while_cond_4432308
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4432308___redundant_placeholder05
1while_while_cond_4432308___redundant_placeholder15
1while_while_cond_4432308___redundant_placeholder25
1while_while_cond_4432308___redundant_placeholder3
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
while_cond_4430052
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4430052___redundant_placeholder05
1while_while_cond_4430052___redundant_placeholder15
1while_while_cond_4430052___redundant_placeholder25
1while_while_cond_4430052___redundant_placeholder3
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
E__inference_lstm_708_layer_call_and_return_conditional_losses_4432206

inputs?
,lstm_cell_708_matmul_readvariableop_resource:	?A
.lstm_cell_708_matmul_1_readvariableop_resource:	d?<
-lstm_cell_708_biasadd_readvariableop_resource:	?
identity??$lstm_cell_708/BiasAdd/ReadVariableOp?#lstm_cell_708/MatMul/ReadVariableOp?%lstm_cell_708/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_708/MatMul/ReadVariableOpReadVariableOp,lstm_cell_708_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_708/MatMulMatMulstrided_slice_2:output:0+lstm_cell_708/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_708/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_708_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_708/MatMul_1MatMulzeros:output:0-lstm_cell_708/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_708/addAddV2lstm_cell_708/MatMul:product:0 lstm_cell_708/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_708/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_708_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_708/BiasAddBiasAddlstm_cell_708/add:z:0,lstm_cell_708/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_708/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_708/splitSplit&lstm_cell_708/split/split_dim:output:0lstm_cell_708/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_708/SigmoidSigmoidlstm_cell_708/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_708/Sigmoid_1Sigmoidlstm_cell_708/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_708/mulMullstm_cell_708/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_708/ReluRelulstm_cell_708/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_708/mul_1Mullstm_cell_708/Sigmoid:y:0 lstm_cell_708/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_708/add_1AddV2lstm_cell_708/mul:z:0lstm_cell_708/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_708/Sigmoid_2Sigmoidlstm_cell_708/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_708/Relu_1Relulstm_cell_708/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_708/mul_2Mullstm_cell_708/Sigmoid_2:y:0"lstm_cell_708/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_708_matmul_readvariableop_resource.lstm_cell_708_matmul_1_readvariableop_resource-lstm_cell_708_biasadd_readvariableop_resource*
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
while_body_4432122*
condR
while_cond_4432121*K
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
NoOpNoOp%^lstm_cell_708/BiasAdd/ReadVariableOp$^lstm_cell_708/MatMul/ReadVariableOp&^lstm_cell_708/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_708/BiasAdd/ReadVariableOp$lstm_cell_708/BiasAdd/ReadVariableOp2J
#lstm_cell_708/MatMul/ReadVariableOp#lstm_cell_708/MatMul/ReadVariableOp2N
%lstm_cell_708/MatMul_1/ReadVariableOp%lstm_cell_708/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?K
?
E__inference_lstm_708_layer_call_and_return_conditional_losses_4431777
inputs_0?
,lstm_cell_708_matmul_readvariableop_resource:	?A
.lstm_cell_708_matmul_1_readvariableop_resource:	d?<
-lstm_cell_708_biasadd_readvariableop_resource:	?
identity??$lstm_cell_708/BiasAdd/ReadVariableOp?#lstm_cell_708/MatMul/ReadVariableOp?%lstm_cell_708/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_708/MatMul/ReadVariableOpReadVariableOp,lstm_cell_708_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_708/MatMulMatMulstrided_slice_2:output:0+lstm_cell_708/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_708/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_708_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_708/MatMul_1MatMulzeros:output:0-lstm_cell_708/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_708/addAddV2lstm_cell_708/MatMul:product:0 lstm_cell_708/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_708/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_708_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_708/BiasAddBiasAddlstm_cell_708/add:z:0,lstm_cell_708/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_708/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_708/splitSplit&lstm_cell_708/split/split_dim:output:0lstm_cell_708/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_708/SigmoidSigmoidlstm_cell_708/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_708/Sigmoid_1Sigmoidlstm_cell_708/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_708/mulMullstm_cell_708/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_708/ReluRelulstm_cell_708/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_708/mul_1Mullstm_cell_708/Sigmoid:y:0 lstm_cell_708/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_708/add_1AddV2lstm_cell_708/mul:z:0lstm_cell_708/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_708/Sigmoid_2Sigmoidlstm_cell_708/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_708/Relu_1Relulstm_cell_708/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_708/mul_2Mullstm_cell_708/Sigmoid_2:y:0"lstm_cell_708/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_708_matmul_readvariableop_resource.lstm_cell_708_matmul_1_readvariableop_resource-lstm_cell_708_biasadd_readvariableop_resource*
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
while_body_4431693*
condR
while_cond_4431692*K
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
NoOpNoOp%^lstm_cell_708/BiasAdd/ReadVariableOp$^lstm_cell_708/MatMul/ReadVariableOp&^lstm_cell_708/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_708/BiasAdd/ReadVariableOp$lstm_cell_708/BiasAdd/ReadVariableOp2J
#lstm_cell_708/MatMul/ReadVariableOp#lstm_cell_708/MatMul/ReadVariableOp2N
%lstm_cell_708/MatMul_1/ReadVariableOp%lstm_cell_708/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
while_cond_4432924
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4432924___redundant_placeholder05
1while_while_cond_4432924___redundant_placeholder15
1while_while_cond_4432924___redundant_placeholder25
1while_while_cond_4432924___redundant_placeholder3
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
while_body_4433068
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_710_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_710_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_710_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_710_matmul_readvariableop_resource:2(F
4while_lstm_cell_710_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_710_biasadd_readvariableop_resource:(??*while/lstm_cell_710/BiasAdd/ReadVariableOp?)while/lstm_cell_710/MatMul/ReadVariableOp?+while/lstm_cell_710/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_710/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_710_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_710/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_710/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_710/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_710_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_710/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_710/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_710/addAddV2$while/lstm_cell_710/MatMul:product:0&while/lstm_cell_710/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_710/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_710_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_710/BiasAddBiasAddwhile/lstm_cell_710/add:z:02while/lstm_cell_710/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_710/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_710/splitSplit,while/lstm_cell_710/split/split_dim:output:0$while/lstm_cell_710/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_710/SigmoidSigmoid"while/lstm_cell_710/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_710/Sigmoid_1Sigmoid"while/lstm_cell_710/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_710/mulMul!while/lstm_cell_710/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_710/ReluRelu"while/lstm_cell_710/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_710/mul_1Mulwhile/lstm_cell_710/Sigmoid:y:0&while/lstm_cell_710/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_710/add_1AddV2while/lstm_cell_710/mul:z:0while/lstm_cell_710/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_710/Sigmoid_2Sigmoid"while/lstm_cell_710/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_710/Relu_1Reluwhile/lstm_cell_710/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_710/mul_2Mul!while/lstm_cell_710/Sigmoid_2:y:0(while/lstm_cell_710/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_710/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_710/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_710/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_710/BiasAdd/ReadVariableOp*^while/lstm_cell_710/MatMul/ReadVariableOp,^while/lstm_cell_710/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_710_biasadd_readvariableop_resource5while_lstm_cell_710_biasadd_readvariableop_resource_0"n
4while_lstm_cell_710_matmul_1_readvariableop_resource6while_lstm_cell_710_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_710_matmul_readvariableop_resource4while_lstm_cell_710_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_710/BiasAdd/ReadVariableOp*while/lstm_cell_710/BiasAdd/ReadVariableOp2V
)while/lstm_cell_710/MatMul/ReadVariableOp)while/lstm_cell_710/MatMul/ReadVariableOp2Z
+while/lstm_cell_710/MatMul_1/ReadVariableOp+while/lstm_cell_710/MatMul_1/ReadVariableOp: 
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
J__inference_lstm_cell_710_layer_call_and_return_conditional_losses_4433751

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
?C
?

lstm_710_while_body_4431500.
*lstm_710_while_lstm_710_while_loop_counter4
0lstm_710_while_lstm_710_while_maximum_iterations
lstm_710_while_placeholder 
lstm_710_while_placeholder_1 
lstm_710_while_placeholder_2 
lstm_710_while_placeholder_3-
)lstm_710_while_lstm_710_strided_slice_1_0i
elstm_710_while_tensorarrayv2read_tensorlistgetitem_lstm_710_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_710_while_lstm_cell_710_matmul_readvariableop_resource_0:2(Q
?lstm_710_while_lstm_cell_710_matmul_1_readvariableop_resource_0:
(L
>lstm_710_while_lstm_cell_710_biasadd_readvariableop_resource_0:(
lstm_710_while_identity
lstm_710_while_identity_1
lstm_710_while_identity_2
lstm_710_while_identity_3
lstm_710_while_identity_4
lstm_710_while_identity_5+
'lstm_710_while_lstm_710_strided_slice_1g
clstm_710_while_tensorarrayv2read_tensorlistgetitem_lstm_710_tensorarrayunstack_tensorlistfromtensorM
;lstm_710_while_lstm_cell_710_matmul_readvariableop_resource:2(O
=lstm_710_while_lstm_cell_710_matmul_1_readvariableop_resource:
(J
<lstm_710_while_lstm_cell_710_biasadd_readvariableop_resource:(??3lstm_710/while/lstm_cell_710/BiasAdd/ReadVariableOp?2lstm_710/while/lstm_cell_710/MatMul/ReadVariableOp?4lstm_710/while/lstm_cell_710/MatMul_1/ReadVariableOp?
@lstm_710/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_710/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_710_while_tensorarrayv2read_tensorlistgetitem_lstm_710_tensorarrayunstack_tensorlistfromtensor_0lstm_710_while_placeholderIlstm_710/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_710/while/lstm_cell_710/MatMul/ReadVariableOpReadVariableOp=lstm_710_while_lstm_cell_710_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_710/while/lstm_cell_710/MatMulMatMul9lstm_710/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_710/while/lstm_cell_710/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_710/while/lstm_cell_710/MatMul_1/ReadVariableOpReadVariableOp?lstm_710_while_lstm_cell_710_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_710/while/lstm_cell_710/MatMul_1MatMullstm_710_while_placeholder_2<lstm_710/while/lstm_cell_710/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_710/while/lstm_cell_710/addAddV2-lstm_710/while/lstm_cell_710/MatMul:product:0/lstm_710/while/lstm_cell_710/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_710/while/lstm_cell_710/BiasAdd/ReadVariableOpReadVariableOp>lstm_710_while_lstm_cell_710_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_710/while/lstm_cell_710/BiasAddBiasAdd$lstm_710/while/lstm_cell_710/add:z:0;lstm_710/while/lstm_cell_710/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_710/while/lstm_cell_710/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_710/while/lstm_cell_710/splitSplit5lstm_710/while/lstm_cell_710/split/split_dim:output:0-lstm_710/while/lstm_cell_710/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_710/while/lstm_cell_710/SigmoidSigmoid+lstm_710/while/lstm_cell_710/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_710/while/lstm_cell_710/Sigmoid_1Sigmoid+lstm_710/while/lstm_cell_710/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_710/while/lstm_cell_710/mulMul*lstm_710/while/lstm_cell_710/Sigmoid_1:y:0lstm_710_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_710/while/lstm_cell_710/ReluRelu+lstm_710/while/lstm_cell_710/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_710/while/lstm_cell_710/mul_1Mul(lstm_710/while/lstm_cell_710/Sigmoid:y:0/lstm_710/while/lstm_cell_710/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_710/while/lstm_cell_710/add_1AddV2$lstm_710/while/lstm_cell_710/mul:z:0&lstm_710/while/lstm_cell_710/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_710/while/lstm_cell_710/Sigmoid_2Sigmoid+lstm_710/while/lstm_cell_710/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_710/while/lstm_cell_710/Relu_1Relu&lstm_710/while/lstm_cell_710/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_710/while/lstm_cell_710/mul_2Mul*lstm_710/while/lstm_cell_710/Sigmoid_2:y:01lstm_710/while/lstm_cell_710/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_710/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_710_while_placeholder_1lstm_710_while_placeholder&lstm_710/while/lstm_cell_710/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_710/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_710/while/addAddV2lstm_710_while_placeholderlstm_710/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_710/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_710/while/add_1AddV2*lstm_710_while_lstm_710_while_loop_counterlstm_710/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_710/while/IdentityIdentitylstm_710/while/add_1:z:0^lstm_710/while/NoOp*
T0*
_output_shapes
: ?
lstm_710/while/Identity_1Identity0lstm_710_while_lstm_710_while_maximum_iterations^lstm_710/while/NoOp*
T0*
_output_shapes
: t
lstm_710/while/Identity_2Identitylstm_710/while/add:z:0^lstm_710/while/NoOp*
T0*
_output_shapes
: ?
lstm_710/while/Identity_3IdentityClstm_710/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_710/while/NoOp*
T0*
_output_shapes
: ?
lstm_710/while/Identity_4Identity&lstm_710/while/lstm_cell_710/mul_2:z:0^lstm_710/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_710/while/Identity_5Identity&lstm_710/while/lstm_cell_710/add_1:z:0^lstm_710/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_710/while/NoOpNoOp4^lstm_710/while/lstm_cell_710/BiasAdd/ReadVariableOp3^lstm_710/while/lstm_cell_710/MatMul/ReadVariableOp5^lstm_710/while/lstm_cell_710/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_710_while_identity lstm_710/while/Identity:output:0"?
lstm_710_while_identity_1"lstm_710/while/Identity_1:output:0"?
lstm_710_while_identity_2"lstm_710/while/Identity_2:output:0"?
lstm_710_while_identity_3"lstm_710/while/Identity_3:output:0"?
lstm_710_while_identity_4"lstm_710/while/Identity_4:output:0"?
lstm_710_while_identity_5"lstm_710/while/Identity_5:output:0"T
'lstm_710_while_lstm_710_strided_slice_1)lstm_710_while_lstm_710_strided_slice_1_0"~
<lstm_710_while_lstm_cell_710_biasadd_readvariableop_resource>lstm_710_while_lstm_cell_710_biasadd_readvariableop_resource_0"?
=lstm_710_while_lstm_cell_710_matmul_1_readvariableop_resource?lstm_710_while_lstm_cell_710_matmul_1_readvariableop_resource_0"|
;lstm_710_while_lstm_cell_710_matmul_readvariableop_resource=lstm_710_while_lstm_cell_710_matmul_readvariableop_resource_0"?
clstm_710_while_tensorarrayv2read_tensorlistgetitem_lstm_710_tensorarrayunstack_tensorlistfromtensorelstm_710_while_tensorarrayv2read_tensorlistgetitem_lstm_710_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_710/while/lstm_cell_710/BiasAdd/ReadVariableOp3lstm_710/while/lstm_cell_710/BiasAdd/ReadVariableOp2h
2lstm_710/while/lstm_cell_710/MatMul/ReadVariableOp2lstm_710/while/lstm_cell_710/MatMul/ReadVariableOp2l
4lstm_710/while/lstm_cell_710/MatMul_1/ReadVariableOp4lstm_710/while/lstm_cell_710/MatMul_1/ReadVariableOp: 
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
while_body_4432738
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_709_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_709_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_709_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_709_matmul_readvariableop_resource:	d?G
4while_lstm_cell_709_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_709_biasadd_readvariableop_resource:	???*while/lstm_cell_709/BiasAdd/ReadVariableOp?)while/lstm_cell_709/MatMul/ReadVariableOp?+while/lstm_cell_709/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_709/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_709_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_709/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_709/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_709/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_709_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_709/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_709/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_709/addAddV2$while/lstm_cell_709/MatMul:product:0&while/lstm_cell_709/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_709/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_709_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_709/BiasAddBiasAddwhile/lstm_cell_709/add:z:02while/lstm_cell_709/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_709/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_709/splitSplit,while/lstm_cell_709/split/split_dim:output:0$while/lstm_cell_709/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_709/SigmoidSigmoid"while/lstm_cell_709/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_709/Sigmoid_1Sigmoid"while/lstm_cell_709/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_709/mulMul!while/lstm_cell_709/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_709/ReluRelu"while/lstm_cell_709/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_709/mul_1Mulwhile/lstm_cell_709/Sigmoid:y:0&while/lstm_cell_709/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_709/add_1AddV2while/lstm_cell_709/mul:z:0while/lstm_cell_709/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_709/Sigmoid_2Sigmoid"while/lstm_cell_709/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_709/Relu_1Reluwhile/lstm_cell_709/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_709/mul_2Mul!while/lstm_cell_709/Sigmoid_2:y:0(while/lstm_cell_709/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_709/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_709/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_709/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_709/BiasAdd/ReadVariableOp*^while/lstm_cell_709/MatMul/ReadVariableOp,^while/lstm_cell_709/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_709_biasadd_readvariableop_resource5while_lstm_cell_709_biasadd_readvariableop_resource_0"n
4while_lstm_cell_709_matmul_1_readvariableop_resource6while_lstm_cell_709_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_709_matmul_readvariableop_resource4while_lstm_cell_709_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_709/BiasAdd/ReadVariableOp*while/lstm_cell_709/BiasAdd/ReadVariableOp2V
)while/lstm_cell_709/MatMul/ReadVariableOp)while/lstm_cell_709/MatMul/ReadVariableOp2Z
+while/lstm_cell_709/MatMul_1/ReadVariableOp+while/lstm_cell_709/MatMul_1/ReadVariableOp: 
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
K__inference_sequential_236_layer_call_and_return_conditional_losses_4430535

inputs#
lstm_708_4430508:	?#
lstm_708_4430510:	d?
lstm_708_4430512:	?#
lstm_709_4430515:	d?#
lstm_709_4430517:	2?
lstm_709_4430519:	?"
lstm_710_4430522:2("
lstm_710_4430524:
(
lstm_710_4430526:(#
dense_236_4430529:

dense_236_4430531:
identity??!dense_236/StatefulPartitionedCall? lstm_708/StatefulPartitionedCall? lstm_709/StatefulPartitionedCall? lstm_710/StatefulPartitionedCall?
 lstm_708/StatefulPartitionedCallStatefulPartitionedCallinputslstm_708_4430508lstm_708_4430510lstm_708_4430512*
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
E__inference_lstm_708_layer_call_and_return_conditional_losses_4430467?
 lstm_709/StatefulPartitionedCallStatefulPartitionedCall)lstm_708/StatefulPartitionedCall:output:0lstm_709_4430515lstm_709_4430517lstm_709_4430519*
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
E__inference_lstm_709_layer_call_and_return_conditional_losses_4430302?
 lstm_710/StatefulPartitionedCallStatefulPartitionedCall)lstm_709/StatefulPartitionedCall:output:0lstm_710_4430522lstm_710_4430524lstm_710_4430526*
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
E__inference_lstm_710_layer_call_and_return_conditional_losses_4430137?
!dense_236/StatefulPartitionedCallStatefulPartitionedCall)lstm_710/StatefulPartitionedCall:output:0dense_236_4430529dense_236_4430531*
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
F__inference_dense_236_layer_call_and_return_conditional_losses_4429939y
IdentityIdentity*dense_236/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_236/StatefulPartitionedCall!^lstm_708/StatefulPartitionedCall!^lstm_709/StatefulPartitionedCall!^lstm_710/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_236/StatefulPartitionedCall!dense_236/StatefulPartitionedCall2D
 lstm_708/StatefulPartitionedCall lstm_708/StatefulPartitionedCall2D
 lstm_709/StatefulPartitionedCall lstm_709/StatefulPartitionedCall2D
 lstm_710/StatefulPartitionedCall lstm_710/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_710_layer_call_and_return_conditional_losses_4429335

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
?#
?
while_body_4429203
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_710_4429227_0:2(/
while_lstm_cell_710_4429229_0:
(+
while_lstm_cell_710_4429231_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_710_4429227:2(-
while_lstm_cell_710_4429229:
()
while_lstm_cell_710_4429231:(??+while/lstm_cell_710/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_710/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_710_4429227_0while_lstm_cell_710_4429229_0while_lstm_cell_710_4429231_0*
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
J__inference_lstm_cell_710_layer_call_and_return_conditional_losses_4429189?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_710/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_710/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_710/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_710/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_710_4429227while_lstm_cell_710_4429227_0"<
while_lstm_cell_710_4429229while_lstm_cell_710_4429229_0"<
while_lstm_cell_710_4429231while_lstm_cell_710_4429231_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_710/StatefulPartitionedCall+while/lstm_cell_710/StatefulPartitionedCall: 
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
while_body_4432595
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_709_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_709_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_709_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_709_matmul_readvariableop_resource:	d?G
4while_lstm_cell_709_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_709_biasadd_readvariableop_resource:	???*while/lstm_cell_709/BiasAdd/ReadVariableOp?)while/lstm_cell_709/MatMul/ReadVariableOp?+while/lstm_cell_709/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_709/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_709_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_709/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_709/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_709/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_709_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_709/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_709/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_709/addAddV2$while/lstm_cell_709/MatMul:product:0&while/lstm_cell_709/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_709/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_709_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_709/BiasAddBiasAddwhile/lstm_cell_709/add:z:02while/lstm_cell_709/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_709/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_709/splitSplit,while/lstm_cell_709/split/split_dim:output:0$while/lstm_cell_709/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_709/SigmoidSigmoid"while/lstm_cell_709/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_709/Sigmoid_1Sigmoid"while/lstm_cell_709/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_709/mulMul!while/lstm_cell_709/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_709/ReluRelu"while/lstm_cell_709/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_709/mul_1Mulwhile/lstm_cell_709/Sigmoid:y:0&while/lstm_cell_709/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_709/add_1AddV2while/lstm_cell_709/mul:z:0while/lstm_cell_709/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_709/Sigmoid_2Sigmoid"while/lstm_cell_709/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_709/Relu_1Reluwhile/lstm_cell_709/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_709/mul_2Mul!while/lstm_cell_709/Sigmoid_2:y:0(while/lstm_cell_709/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_709/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_709/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_709/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_709/BiasAdd/ReadVariableOp*^while/lstm_cell_709/MatMul/ReadVariableOp,^while/lstm_cell_709/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_709_biasadd_readvariableop_resource5while_lstm_cell_709_biasadd_readvariableop_resource_0"n
4while_lstm_cell_709_matmul_1_readvariableop_resource6while_lstm_cell_709_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_709_matmul_readvariableop_resource4while_lstm_cell_709_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_709/BiasAdd/ReadVariableOp*while/lstm_cell_709/BiasAdd/ReadVariableOp2V
)while/lstm_cell_709/MatMul/ReadVariableOp)while/lstm_cell_709/MatMul/ReadVariableOp2Z
+while/lstm_cell_709/MatMul_1/ReadVariableOp+while/lstm_cell_709/MatMul_1/ReadVariableOp: 
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
?
*__inference_lstm_709_layer_call_fn_4432250

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
E__inference_lstm_709_layer_call_and_return_conditional_losses_4430302s
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
?T
?
*sequential_236_lstm_709_while_body_4428193L
Hsequential_236_lstm_709_while_sequential_236_lstm_709_while_loop_counterR
Nsequential_236_lstm_709_while_sequential_236_lstm_709_while_maximum_iterations-
)sequential_236_lstm_709_while_placeholder/
+sequential_236_lstm_709_while_placeholder_1/
+sequential_236_lstm_709_while_placeholder_2/
+sequential_236_lstm_709_while_placeholder_3K
Gsequential_236_lstm_709_while_sequential_236_lstm_709_strided_slice_1_0?
?sequential_236_lstm_709_while_tensorarrayv2read_tensorlistgetitem_sequential_236_lstm_709_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_236_lstm_709_while_lstm_cell_709_matmul_readvariableop_resource_0:	d?a
Nsequential_236_lstm_709_while_lstm_cell_709_matmul_1_readvariableop_resource_0:	2?\
Msequential_236_lstm_709_while_lstm_cell_709_biasadd_readvariableop_resource_0:	?*
&sequential_236_lstm_709_while_identity,
(sequential_236_lstm_709_while_identity_1,
(sequential_236_lstm_709_while_identity_2,
(sequential_236_lstm_709_while_identity_3,
(sequential_236_lstm_709_while_identity_4,
(sequential_236_lstm_709_while_identity_5I
Esequential_236_lstm_709_while_sequential_236_lstm_709_strided_slice_1?
?sequential_236_lstm_709_while_tensorarrayv2read_tensorlistgetitem_sequential_236_lstm_709_tensorarrayunstack_tensorlistfromtensor]
Jsequential_236_lstm_709_while_lstm_cell_709_matmul_readvariableop_resource:	d?_
Lsequential_236_lstm_709_while_lstm_cell_709_matmul_1_readvariableop_resource:	2?Z
Ksequential_236_lstm_709_while_lstm_cell_709_biasadd_readvariableop_resource:	???Bsequential_236/lstm_709/while/lstm_cell_709/BiasAdd/ReadVariableOp?Asequential_236/lstm_709/while/lstm_cell_709/MatMul/ReadVariableOp?Csequential_236/lstm_709/while/lstm_cell_709/MatMul_1/ReadVariableOp?
Osequential_236/lstm_709/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
Asequential_236/lstm_709/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_236_lstm_709_while_tensorarrayv2read_tensorlistgetitem_sequential_236_lstm_709_tensorarrayunstack_tensorlistfromtensor_0)sequential_236_lstm_709_while_placeholderXsequential_236/lstm_709/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
Asequential_236/lstm_709/while/lstm_cell_709/MatMul/ReadVariableOpReadVariableOpLsequential_236_lstm_709_while_lstm_cell_709_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
2sequential_236/lstm_709/while/lstm_cell_709/MatMulMatMulHsequential_236/lstm_709/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_236/lstm_709/while/lstm_cell_709/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_236/lstm_709/while/lstm_cell_709/MatMul_1/ReadVariableOpReadVariableOpNsequential_236_lstm_709_while_lstm_cell_709_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
4sequential_236/lstm_709/while/lstm_cell_709/MatMul_1MatMul+sequential_236_lstm_709_while_placeholder_2Ksequential_236/lstm_709/while/lstm_cell_709/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_236/lstm_709/while/lstm_cell_709/addAddV2<sequential_236/lstm_709/while/lstm_cell_709/MatMul:product:0>sequential_236/lstm_709/while/lstm_cell_709/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_236/lstm_709/while/lstm_cell_709/BiasAdd/ReadVariableOpReadVariableOpMsequential_236_lstm_709_while_lstm_cell_709_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_236/lstm_709/while/lstm_cell_709/BiasAddBiasAdd3sequential_236/lstm_709/while/lstm_cell_709/add:z:0Jsequential_236/lstm_709/while/lstm_cell_709/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_236/lstm_709/while/lstm_cell_709/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_236/lstm_709/while/lstm_cell_709/splitSplitDsequential_236/lstm_709/while/lstm_cell_709/split/split_dim:output:0<sequential_236/lstm_709/while/lstm_cell_709/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
3sequential_236/lstm_709/while/lstm_cell_709/SigmoidSigmoid:sequential_236/lstm_709/while/lstm_cell_709/split:output:0*
T0*'
_output_shapes
:?????????2?
5sequential_236/lstm_709/while/lstm_cell_709/Sigmoid_1Sigmoid:sequential_236/lstm_709/while/lstm_cell_709/split:output:1*
T0*'
_output_shapes
:?????????2?
/sequential_236/lstm_709/while/lstm_cell_709/mulMul9sequential_236/lstm_709/while/lstm_cell_709/Sigmoid_1:y:0+sequential_236_lstm_709_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
0sequential_236/lstm_709/while/lstm_cell_709/ReluRelu:sequential_236/lstm_709/while/lstm_cell_709/split:output:2*
T0*'
_output_shapes
:?????????2?
1sequential_236/lstm_709/while/lstm_cell_709/mul_1Mul7sequential_236/lstm_709/while/lstm_cell_709/Sigmoid:y:0>sequential_236/lstm_709/while/lstm_cell_709/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
1sequential_236/lstm_709/while/lstm_cell_709/add_1AddV23sequential_236/lstm_709/while/lstm_cell_709/mul:z:05sequential_236/lstm_709/while/lstm_cell_709/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
5sequential_236/lstm_709/while/lstm_cell_709/Sigmoid_2Sigmoid:sequential_236/lstm_709/while/lstm_cell_709/split:output:3*
T0*'
_output_shapes
:?????????2?
2sequential_236/lstm_709/while/lstm_cell_709/Relu_1Relu5sequential_236/lstm_709/while/lstm_cell_709/add_1:z:0*
T0*'
_output_shapes
:?????????2?
1sequential_236/lstm_709/while/lstm_cell_709/mul_2Mul9sequential_236/lstm_709/while/lstm_cell_709/Sigmoid_2:y:0@sequential_236/lstm_709/while/lstm_cell_709/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
Bsequential_236/lstm_709/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_236_lstm_709_while_placeholder_1)sequential_236_lstm_709_while_placeholder5sequential_236/lstm_709/while/lstm_cell_709/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_236/lstm_709/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_236/lstm_709/while/addAddV2)sequential_236_lstm_709_while_placeholder,sequential_236/lstm_709/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_236/lstm_709/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_236/lstm_709/while/add_1AddV2Hsequential_236_lstm_709_while_sequential_236_lstm_709_while_loop_counter.sequential_236/lstm_709/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_236/lstm_709/while/IdentityIdentity'sequential_236/lstm_709/while/add_1:z:0#^sequential_236/lstm_709/while/NoOp*
T0*
_output_shapes
: ?
(sequential_236/lstm_709/while/Identity_1IdentityNsequential_236_lstm_709_while_sequential_236_lstm_709_while_maximum_iterations#^sequential_236/lstm_709/while/NoOp*
T0*
_output_shapes
: ?
(sequential_236/lstm_709/while/Identity_2Identity%sequential_236/lstm_709/while/add:z:0#^sequential_236/lstm_709/while/NoOp*
T0*
_output_shapes
: ?
(sequential_236/lstm_709/while/Identity_3IdentityRsequential_236/lstm_709/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_236/lstm_709/while/NoOp*
T0*
_output_shapes
: ?
(sequential_236/lstm_709/while/Identity_4Identity5sequential_236/lstm_709/while/lstm_cell_709/mul_2:z:0#^sequential_236/lstm_709/while/NoOp*
T0*'
_output_shapes
:?????????2?
(sequential_236/lstm_709/while/Identity_5Identity5sequential_236/lstm_709/while/lstm_cell_709/add_1:z:0#^sequential_236/lstm_709/while/NoOp*
T0*'
_output_shapes
:?????????2?
"sequential_236/lstm_709/while/NoOpNoOpC^sequential_236/lstm_709/while/lstm_cell_709/BiasAdd/ReadVariableOpB^sequential_236/lstm_709/while/lstm_cell_709/MatMul/ReadVariableOpD^sequential_236/lstm_709/while/lstm_cell_709/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_236_lstm_709_while_identity/sequential_236/lstm_709/while/Identity:output:0"]
(sequential_236_lstm_709_while_identity_11sequential_236/lstm_709/while/Identity_1:output:0"]
(sequential_236_lstm_709_while_identity_21sequential_236/lstm_709/while/Identity_2:output:0"]
(sequential_236_lstm_709_while_identity_31sequential_236/lstm_709/while/Identity_3:output:0"]
(sequential_236_lstm_709_while_identity_41sequential_236/lstm_709/while/Identity_4:output:0"]
(sequential_236_lstm_709_while_identity_51sequential_236/lstm_709/while/Identity_5:output:0"?
Ksequential_236_lstm_709_while_lstm_cell_709_biasadd_readvariableop_resourceMsequential_236_lstm_709_while_lstm_cell_709_biasadd_readvariableop_resource_0"?
Lsequential_236_lstm_709_while_lstm_cell_709_matmul_1_readvariableop_resourceNsequential_236_lstm_709_while_lstm_cell_709_matmul_1_readvariableop_resource_0"?
Jsequential_236_lstm_709_while_lstm_cell_709_matmul_readvariableop_resourceLsequential_236_lstm_709_while_lstm_cell_709_matmul_readvariableop_resource_0"?
Esequential_236_lstm_709_while_sequential_236_lstm_709_strided_slice_1Gsequential_236_lstm_709_while_sequential_236_lstm_709_strided_slice_1_0"?
?sequential_236_lstm_709_while_tensorarrayv2read_tensorlistgetitem_sequential_236_lstm_709_tensorarrayunstack_tensorlistfromtensor?sequential_236_lstm_709_while_tensorarrayv2read_tensorlistgetitem_sequential_236_lstm_709_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2?
Bsequential_236/lstm_709/while/lstm_cell_709/BiasAdd/ReadVariableOpBsequential_236/lstm_709/while/lstm_cell_709/BiasAdd/ReadVariableOp2?
Asequential_236/lstm_709/while/lstm_cell_709/MatMul/ReadVariableOpAsequential_236/lstm_709/while/lstm_cell_709/MatMul/ReadVariableOp2?
Csequential_236/lstm_709/while/lstm_cell_709/MatMul_1/ReadVariableOpCsequential_236/lstm_709/while/lstm_cell_709/MatMul_1/ReadVariableOp: 
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
E__inference_lstm_709_layer_call_and_return_conditional_losses_4432679

inputs?
,lstm_cell_709_matmul_readvariableop_resource:	d?A
.lstm_cell_709_matmul_1_readvariableop_resource:	2?<
-lstm_cell_709_biasadd_readvariableop_resource:	?
identity??$lstm_cell_709/BiasAdd/ReadVariableOp?#lstm_cell_709/MatMul/ReadVariableOp?%lstm_cell_709/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_709/MatMul/ReadVariableOpReadVariableOp,lstm_cell_709_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_709/MatMulMatMulstrided_slice_2:output:0+lstm_cell_709/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_709/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_709_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_709/MatMul_1MatMulzeros:output:0-lstm_cell_709/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_709/addAddV2lstm_cell_709/MatMul:product:0 lstm_cell_709/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_709/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_709_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_709/BiasAddBiasAddlstm_cell_709/add:z:0,lstm_cell_709/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_709/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_709/splitSplit&lstm_cell_709/split/split_dim:output:0lstm_cell_709/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_709/SigmoidSigmoidlstm_cell_709/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_709/Sigmoid_1Sigmoidlstm_cell_709/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_709/mulMullstm_cell_709/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_709/ReluRelulstm_cell_709/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_709/mul_1Mullstm_cell_709/Sigmoid:y:0 lstm_cell_709/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_709/add_1AddV2lstm_cell_709/mul:z:0lstm_cell_709/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_709/Sigmoid_2Sigmoidlstm_cell_709/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_709/Relu_1Relulstm_cell_709/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_709/mul_2Mullstm_cell_709/Sigmoid_2:y:0"lstm_cell_709/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_709_matmul_readvariableop_resource.lstm_cell_709_matmul_1_readvariableop_resource-lstm_cell_709_biasadd_readvariableop_resource*
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
while_body_4432595*
condR
while_cond_4432594*K
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
NoOpNoOp%^lstm_cell_709/BiasAdd/ReadVariableOp$^lstm_cell_709/MatMul/ReadVariableOp&^lstm_cell_709/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_709/BiasAdd/ReadVariableOp$lstm_cell_709/BiasAdd/ReadVariableOp2J
#lstm_cell_709/MatMul/ReadVariableOp#lstm_cell_709/MatMul/ReadVariableOp2N
%lstm_cell_709/MatMul_1/ReadVariableOp%lstm_cell_709/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?8
?
while_body_4432122
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_708_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_708_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_708_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_708_matmul_readvariableop_resource:	?G
4while_lstm_cell_708_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_708_biasadd_readvariableop_resource:	???*while/lstm_cell_708/BiasAdd/ReadVariableOp?)while/lstm_cell_708/MatMul/ReadVariableOp?+while/lstm_cell_708/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_708/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_708_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_708/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_708/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_708/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_708_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_708/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_708/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_708/addAddV2$while/lstm_cell_708/MatMul:product:0&while/lstm_cell_708/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_708/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_708_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_708/BiasAddBiasAddwhile/lstm_cell_708/add:z:02while/lstm_cell_708/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_708/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_708/splitSplit,while/lstm_cell_708/split/split_dim:output:0$while/lstm_cell_708/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_708/SigmoidSigmoid"while/lstm_cell_708/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_708/Sigmoid_1Sigmoid"while/lstm_cell_708/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_708/mulMul!while/lstm_cell_708/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_708/ReluRelu"while/lstm_cell_708/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_708/mul_1Mulwhile/lstm_cell_708/Sigmoid:y:0&while/lstm_cell_708/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_708/add_1AddV2while/lstm_cell_708/mul:z:0while/lstm_cell_708/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_708/Sigmoid_2Sigmoid"while/lstm_cell_708/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_708/Relu_1Reluwhile/lstm_cell_708/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_708/mul_2Mul!while/lstm_cell_708/Sigmoid_2:y:0(while/lstm_cell_708/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_708/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_708/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_708/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_708/BiasAdd/ReadVariableOp*^while/lstm_cell_708/MatMul/ReadVariableOp,^while/lstm_cell_708/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_708_biasadd_readvariableop_resource5while_lstm_cell_708_biasadd_readvariableop_resource_0"n
4while_lstm_cell_708_matmul_1_readvariableop_resource6while_lstm_cell_708_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_708_matmul_readvariableop_resource4while_lstm_cell_708_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_708/BiasAdd/ReadVariableOp*while/lstm_cell_708/BiasAdd/ReadVariableOp2V
)while/lstm_cell_708/MatMul/ReadVariableOp)while/lstm_cell_708/MatMul/ReadVariableOp2Z
+while/lstm_cell_708/MatMul_1/ReadVariableOp+while/lstm_cell_708/MatMul_1/ReadVariableOp: 
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
E__inference_lstm_710_layer_call_and_return_conditional_losses_4433295

inputs>
,lstm_cell_710_matmul_readvariableop_resource:2(@
.lstm_cell_710_matmul_1_readvariableop_resource:
(;
-lstm_cell_710_biasadd_readvariableop_resource:(
identity??$lstm_cell_710/BiasAdd/ReadVariableOp?#lstm_cell_710/MatMul/ReadVariableOp?%lstm_cell_710/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_710/MatMul/ReadVariableOpReadVariableOp,lstm_cell_710_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_710/MatMulMatMulstrided_slice_2:output:0+lstm_cell_710/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_710/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_710_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_710/MatMul_1MatMulzeros:output:0-lstm_cell_710/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_710/addAddV2lstm_cell_710/MatMul:product:0 lstm_cell_710/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_710/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_710_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_710/BiasAddBiasAddlstm_cell_710/add:z:0,lstm_cell_710/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_710/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_710/splitSplit&lstm_cell_710/split/split_dim:output:0lstm_cell_710/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_710/SigmoidSigmoidlstm_cell_710/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_710/Sigmoid_1Sigmoidlstm_cell_710/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_710/mulMullstm_cell_710/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_710/ReluRelulstm_cell_710/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_710/mul_1Mullstm_cell_710/Sigmoid:y:0 lstm_cell_710/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_710/add_1AddV2lstm_cell_710/mul:z:0lstm_cell_710/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_710/Sigmoid_2Sigmoidlstm_cell_710/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_710/Relu_1Relulstm_cell_710/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_710/mul_2Mullstm_cell_710/Sigmoid_2:y:0"lstm_cell_710/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_710_matmul_readvariableop_resource.lstm_cell_710_matmul_1_readvariableop_resource-lstm_cell_710_biasadd_readvariableop_resource*
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
while_body_4433211*
condR
while_cond_4433210*K
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
NoOpNoOp%^lstm_cell_710/BiasAdd/ReadVariableOp$^lstm_cell_710/MatMul/ReadVariableOp&^lstm_cell_710/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_710/BiasAdd/ReadVariableOp$lstm_cell_710/BiasAdd/ReadVariableOp2J
#lstm_cell_710/MatMul/ReadVariableOp#lstm_cell_710/MatMul/ReadVariableOp2N
%lstm_cell_710/MatMul_1/ReadVariableOp%lstm_cell_710/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
/__inference_lstm_cell_709_layer_call_fn_4433572

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
J__inference_lstm_cell_709_layer_call_and_return_conditional_losses_4428839o
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
?K
?
E__inference_lstm_710_layer_call_and_return_conditional_losses_4433152
inputs_0>
,lstm_cell_710_matmul_readvariableop_resource:2(@
.lstm_cell_710_matmul_1_readvariableop_resource:
(;
-lstm_cell_710_biasadd_readvariableop_resource:(
identity??$lstm_cell_710/BiasAdd/ReadVariableOp?#lstm_cell_710/MatMul/ReadVariableOp?%lstm_cell_710/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_710/MatMul/ReadVariableOpReadVariableOp,lstm_cell_710_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_710/MatMulMatMulstrided_slice_2:output:0+lstm_cell_710/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_710/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_710_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_710/MatMul_1MatMulzeros:output:0-lstm_cell_710/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_710/addAddV2lstm_cell_710/MatMul:product:0 lstm_cell_710/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_710/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_710_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_710/BiasAddBiasAddlstm_cell_710/add:z:0,lstm_cell_710/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_710/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_710/splitSplit&lstm_cell_710/split/split_dim:output:0lstm_cell_710/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_710/SigmoidSigmoidlstm_cell_710/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_710/Sigmoid_1Sigmoidlstm_cell_710/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_710/mulMullstm_cell_710/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_710/ReluRelulstm_cell_710/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_710/mul_1Mullstm_cell_710/Sigmoid:y:0 lstm_cell_710/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_710/add_1AddV2lstm_cell_710/mul:z:0lstm_cell_710/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_710/Sigmoid_2Sigmoidlstm_cell_710/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_710/Relu_1Relulstm_cell_710/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_710/mul_2Mullstm_cell_710/Sigmoid_2:y:0"lstm_cell_710/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_710_matmul_readvariableop_resource.lstm_cell_710_matmul_1_readvariableop_resource-lstm_cell_710_biasadd_readvariableop_resource*
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
while_body_4433068*
condR
while_cond_4433067*K
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
NoOpNoOp%^lstm_cell_710/BiasAdd/ReadVariableOp$^lstm_cell_710/MatMul/ReadVariableOp&^lstm_cell_710/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_710/BiasAdd/ReadVariableOp$lstm_cell_710/BiasAdd/ReadVariableOp2J
#lstm_cell_710/MatMul/ReadVariableOp#lstm_cell_710/MatMul/ReadVariableOp2N
%lstm_cell_710/MatMul_1/ReadVariableOp%lstm_cell_710/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?8
?
while_body_4429837
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_710_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_710_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_710_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_710_matmul_readvariableop_resource:2(F
4while_lstm_cell_710_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_710_biasadd_readvariableop_resource:(??*while/lstm_cell_710/BiasAdd/ReadVariableOp?)while/lstm_cell_710/MatMul/ReadVariableOp?+while/lstm_cell_710/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_710/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_710_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_710/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_710/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_710/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_710_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_710/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_710/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_710/addAddV2$while/lstm_cell_710/MatMul:product:0&while/lstm_cell_710/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_710/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_710_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_710/BiasAddBiasAddwhile/lstm_cell_710/add:z:02while/lstm_cell_710/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_710/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_710/splitSplit,while/lstm_cell_710/split/split_dim:output:0$while/lstm_cell_710/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_710/SigmoidSigmoid"while/lstm_cell_710/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_710/Sigmoid_1Sigmoid"while/lstm_cell_710/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_710/mulMul!while/lstm_cell_710/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_710/ReluRelu"while/lstm_cell_710/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_710/mul_1Mulwhile/lstm_cell_710/Sigmoid:y:0&while/lstm_cell_710/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_710/add_1AddV2while/lstm_cell_710/mul:z:0while/lstm_cell_710/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_710/Sigmoid_2Sigmoid"while/lstm_cell_710/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_710/Relu_1Reluwhile/lstm_cell_710/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_710/mul_2Mul!while/lstm_cell_710/Sigmoid_2:y:0(while/lstm_cell_710/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_710/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_710/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_710/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_710/BiasAdd/ReadVariableOp*^while/lstm_cell_710/MatMul/ReadVariableOp,^while/lstm_cell_710/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_710_biasadd_readvariableop_resource5while_lstm_cell_710_biasadd_readvariableop_resource_0"n
4while_lstm_cell_710_matmul_1_readvariableop_resource6while_lstm_cell_710_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_710_matmul_readvariableop_resource4while_lstm_cell_710_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_710/BiasAdd/ReadVariableOp*while/lstm_cell_710/BiasAdd/ReadVariableOp2V
)while/lstm_cell_710/MatMul/ReadVariableOp)while/lstm_cell_710/MatMul/ReadVariableOp2Z
+while/lstm_cell_710/MatMul_1/ReadVariableOp+while/lstm_cell_710/MatMul_1/ReadVariableOp: 
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
?
while_cond_4431692
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4431692___redundant_placeholder05
1while_while_cond_4431692___redundant_placeholder15
1while_while_cond_4431692___redundant_placeholder25
1while_while_cond_4431692___redundant_placeholder3
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
:"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
M
lstm_708_input;
 serving_default_lstm_708_input:0?????????=
	dense_2360
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
2dense_236/kernel
:2dense_236/bias
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
0:.	?2lstm_708/lstm_cell_708/kernel
::8	d?2'lstm_708/lstm_cell_708/recurrent_kernel
*:(?2lstm_708/lstm_cell_708/bias
0:.	d?2lstm_709/lstm_cell_709/kernel
::8	2?2'lstm_709/lstm_cell_709/recurrent_kernel
*:(?2lstm_709/lstm_cell_709/bias
/:-2(2lstm_710/lstm_cell_710/kernel
9:7
(2'lstm_710/lstm_cell_710/recurrent_kernel
):'(2lstm_710/lstm_cell_710/bias
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
2Adam/dense_236/kernel/m
!:2Adam/dense_236/bias/m
5:3	?2$Adam/lstm_708/lstm_cell_708/kernel/m
?:=	d?2.Adam/lstm_708/lstm_cell_708/recurrent_kernel/m
/:-?2"Adam/lstm_708/lstm_cell_708/bias/m
5:3	d?2$Adam/lstm_709/lstm_cell_709/kernel/m
?:=	2?2.Adam/lstm_709/lstm_cell_709/recurrent_kernel/m
/:-?2"Adam/lstm_709/lstm_cell_709/bias/m
4:22(2$Adam/lstm_710/lstm_cell_710/kernel/m
>:<
(2.Adam/lstm_710/lstm_cell_710/recurrent_kernel/m
.:,(2"Adam/lstm_710/lstm_cell_710/bias/m
':%
2Adam/dense_236/kernel/v
!:2Adam/dense_236/bias/v
5:3	?2$Adam/lstm_708/lstm_cell_708/kernel/v
?:=	d?2.Adam/lstm_708/lstm_cell_708/recurrent_kernel/v
/:-?2"Adam/lstm_708/lstm_cell_708/bias/v
5:3	d?2$Adam/lstm_709/lstm_cell_709/kernel/v
?:=	2?2.Adam/lstm_709/lstm_cell_709/recurrent_kernel/v
/:-?2"Adam/lstm_709/lstm_cell_709/bias/v
4:22(2$Adam/lstm_710/lstm_cell_710/kernel/v
>:<
(2.Adam/lstm_710/lstm_cell_710/recurrent_kernel/v
.:,(2"Adam/lstm_710/lstm_cell_710/bias/v
?2?
0__inference_sequential_236_layer_call_fn_4429971
0__inference_sequential_236_layer_call_fn_4430709
0__inference_sequential_236_layer_call_fn_4430736
0__inference_sequential_236_layer_call_fn_4430587?
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
K__inference_sequential_236_layer_call_and_return_conditional_losses_4431163
K__inference_sequential_236_layer_call_and_return_conditional_losses_4431590
K__inference_sequential_236_layer_call_and_return_conditional_losses_4430617
K__inference_sequential_236_layer_call_and_return_conditional_losses_4430647?
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
"__inference__wrapped_model_4428422lstm_708_input"?
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
*__inference_lstm_708_layer_call_fn_4431601
*__inference_lstm_708_layer_call_fn_4431612
*__inference_lstm_708_layer_call_fn_4431623
*__inference_lstm_708_layer_call_fn_4431634?
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
E__inference_lstm_708_layer_call_and_return_conditional_losses_4431777
E__inference_lstm_708_layer_call_and_return_conditional_losses_4431920
E__inference_lstm_708_layer_call_and_return_conditional_losses_4432063
E__inference_lstm_708_layer_call_and_return_conditional_losses_4432206?
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
*__inference_lstm_709_layer_call_fn_4432217
*__inference_lstm_709_layer_call_fn_4432228
*__inference_lstm_709_layer_call_fn_4432239
*__inference_lstm_709_layer_call_fn_4432250?
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
E__inference_lstm_709_layer_call_and_return_conditional_losses_4432393
E__inference_lstm_709_layer_call_and_return_conditional_losses_4432536
E__inference_lstm_709_layer_call_and_return_conditional_losses_4432679
E__inference_lstm_709_layer_call_and_return_conditional_losses_4432822?
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
*__inference_lstm_710_layer_call_fn_4432833
*__inference_lstm_710_layer_call_fn_4432844
*__inference_lstm_710_layer_call_fn_4432855
*__inference_lstm_710_layer_call_fn_4432866?
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
E__inference_lstm_710_layer_call_and_return_conditional_losses_4433009
E__inference_lstm_710_layer_call_and_return_conditional_losses_4433152
E__inference_lstm_710_layer_call_and_return_conditional_losses_4433295
E__inference_lstm_710_layer_call_and_return_conditional_losses_4433438?
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
+__inference_dense_236_layer_call_fn_4433447?
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
F__inference_dense_236_layer_call_and_return_conditional_losses_4433457?
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
%__inference_signature_wrapper_4430682lstm_708_input"?
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
/__inference_lstm_cell_708_layer_call_fn_4433474
/__inference_lstm_cell_708_layer_call_fn_4433491?
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
J__inference_lstm_cell_708_layer_call_and_return_conditional_losses_4433523
J__inference_lstm_cell_708_layer_call_and_return_conditional_losses_4433555?
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
/__inference_lstm_cell_709_layer_call_fn_4433572
/__inference_lstm_cell_709_layer_call_fn_4433589?
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
J__inference_lstm_cell_709_layer_call_and_return_conditional_losses_4433621
J__inference_lstm_cell_709_layer_call_and_return_conditional_losses_4433653?
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
/__inference_lstm_cell_710_layer_call_fn_4433670
/__inference_lstm_cell_710_layer_call_fn_4433687?
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
J__inference_lstm_cell_710_layer_call_and_return_conditional_losses_4433719
J__inference_lstm_cell_710_layer_call_and_return_conditional_losses_4433751?
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
"__inference__wrapped_model_4428422?()*+,-./0;?8
1?.
,?)
lstm_708_input?????????
? "5?2
0
	dense_236#? 
	dense_236??????????
F__inference_dense_236_layer_call_and_return_conditional_losses_4433457\/?,
%?"
 ?
inputs?????????

? "%?"
?
0?????????
? ~
+__inference_dense_236_layer_call_fn_4433447O/?,
%?"
 ?
inputs?????????

? "???????????
E__inference_lstm_708_layer_call_and_return_conditional_losses_4431777?()*O?L
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
E__inference_lstm_708_layer_call_and_return_conditional_losses_4431920?()*O?L
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
E__inference_lstm_708_layer_call_and_return_conditional_losses_4432063q()*??<
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
E__inference_lstm_708_layer_call_and_return_conditional_losses_4432206q()*??<
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
*__inference_lstm_708_layer_call_fn_4431601}()*O?L
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
*__inference_lstm_708_layer_call_fn_4431612}()*O?L
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
*__inference_lstm_708_layer_call_fn_4431623d()*??<
5?2
$?!
inputs?????????

 
p 

 
? "??????????d?
*__inference_lstm_708_layer_call_fn_4431634d()*??<
5?2
$?!
inputs?????????

 
p

 
? "??????????d?
E__inference_lstm_709_layer_call_and_return_conditional_losses_4432393?+,-O?L
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
E__inference_lstm_709_layer_call_and_return_conditional_losses_4432536?+,-O?L
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
E__inference_lstm_709_layer_call_and_return_conditional_losses_4432679q+,-??<
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
E__inference_lstm_709_layer_call_and_return_conditional_losses_4432822q+,-??<
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
*__inference_lstm_709_layer_call_fn_4432217}+,-O?L
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
*__inference_lstm_709_layer_call_fn_4432228}+,-O?L
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
*__inference_lstm_709_layer_call_fn_4432239d+,-??<
5?2
$?!
inputs?????????d

 
p 

 
? "??????????2?
*__inference_lstm_709_layer_call_fn_4432250d+,-??<
5?2
$?!
inputs?????????d

 
p

 
? "??????????2?
E__inference_lstm_710_layer_call_and_return_conditional_losses_4433009}./0O?L
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
E__inference_lstm_710_layer_call_and_return_conditional_losses_4433152}./0O?L
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
E__inference_lstm_710_layer_call_and_return_conditional_losses_4433295m./0??<
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
E__inference_lstm_710_layer_call_and_return_conditional_losses_4433438m./0??<
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
*__inference_lstm_710_layer_call_fn_4432833p./0O?L
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
*__inference_lstm_710_layer_call_fn_4432844p./0O?L
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
*__inference_lstm_710_layer_call_fn_4432855`./0??<
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
*__inference_lstm_710_layer_call_fn_4432866`./0??<
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
J__inference_lstm_cell_708_layer_call_and_return_conditional_losses_4433523?()*??}
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
J__inference_lstm_cell_708_layer_call_and_return_conditional_losses_4433555?()*??}
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
/__inference_lstm_cell_708_layer_call_fn_4433474?()*??}
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
/__inference_lstm_cell_708_layer_call_fn_4433491?()*??}
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
J__inference_lstm_cell_709_layer_call_and_return_conditional_losses_4433621?+,-??}
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
J__inference_lstm_cell_709_layer_call_and_return_conditional_losses_4433653?+,-??}
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
/__inference_lstm_cell_709_layer_call_fn_4433572?+,-??}
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
/__inference_lstm_cell_709_layer_call_fn_4433589?+,-??}
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
J__inference_lstm_cell_710_layer_call_and_return_conditional_losses_4433719?./0??}
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
J__inference_lstm_cell_710_layer_call_and_return_conditional_losses_4433751?./0??}
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
/__inference_lstm_cell_710_layer_call_fn_4433670?./0??}
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
/__inference_lstm_cell_710_layer_call_fn_4433687?./0??}
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
K__inference_sequential_236_layer_call_and_return_conditional_losses_4430617y()*+,-./0C?@
9?6
,?)
lstm_708_input?????????
p 

 
? "%?"
?
0?????????
? ?
K__inference_sequential_236_layer_call_and_return_conditional_losses_4430647y()*+,-./0C?@
9?6
,?)
lstm_708_input?????????
p

 
? "%?"
?
0?????????
? ?
K__inference_sequential_236_layer_call_and_return_conditional_losses_4431163q()*+,-./0;?8
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
K__inference_sequential_236_layer_call_and_return_conditional_losses_4431590q()*+,-./0;?8
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
0__inference_sequential_236_layer_call_fn_4429971l()*+,-./0C?@
9?6
,?)
lstm_708_input?????????
p 

 
? "???????????
0__inference_sequential_236_layer_call_fn_4430587l()*+,-./0C?@
9?6
,?)
lstm_708_input?????????
p

 
? "???????????
0__inference_sequential_236_layer_call_fn_4430709d()*+,-./0;?8
1?.
$?!
inputs?????????
p 

 
? "???????????
0__inference_sequential_236_layer_call_fn_4430736d()*+,-./0;?8
1?.
$?!
inputs?????????
p

 
? "???????????
%__inference_signature_wrapper_4430682?()*+,-./0M?J
? 
C?@
>
lstm_708_input,?)
lstm_708_input?????????"5?2
0
	dense_236#? 
	dense_236?????????