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
dense_292/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*!
shared_namedense_292/kernel
u
$dense_292/kernel/Read/ReadVariableOpReadVariableOpdense_292/kernel*
_output_shapes

:
*
dtype0
t
dense_292/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_292/bias
m
"dense_292/bias/Read/ReadVariableOpReadVariableOpdense_292/bias*
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
lstm_876/lstm_cell_876/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*.
shared_namelstm_876/lstm_cell_876/kernel
?
1lstm_876/lstm_cell_876/kernel/Read/ReadVariableOpReadVariableOplstm_876/lstm_cell_876/kernel*
_output_shapes
:	?*
dtype0
?
'lstm_876/lstm_cell_876/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*8
shared_name)'lstm_876/lstm_cell_876/recurrent_kernel
?
;lstm_876/lstm_cell_876/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_876/lstm_cell_876/recurrent_kernel*
_output_shapes
:	d?*
dtype0
?
lstm_876/lstm_cell_876/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_876/lstm_cell_876/bias
?
/lstm_876/lstm_cell_876/bias/Read/ReadVariableOpReadVariableOplstm_876/lstm_cell_876/bias*
_output_shapes	
:?*
dtype0
?
lstm_877/lstm_cell_877/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*.
shared_namelstm_877/lstm_cell_877/kernel
?
1lstm_877/lstm_cell_877/kernel/Read/ReadVariableOpReadVariableOplstm_877/lstm_cell_877/kernel*
_output_shapes
:	d?*
dtype0
?
'lstm_877/lstm_cell_877/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*8
shared_name)'lstm_877/lstm_cell_877/recurrent_kernel
?
;lstm_877/lstm_cell_877/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_877/lstm_cell_877/recurrent_kernel*
_output_shapes
:	2?*
dtype0
?
lstm_877/lstm_cell_877/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_877/lstm_cell_877/bias
?
/lstm_877/lstm_cell_877/bias/Read/ReadVariableOpReadVariableOplstm_877/lstm_cell_877/bias*
_output_shapes	
:?*
dtype0
?
lstm_878/lstm_cell_878/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*.
shared_namelstm_878/lstm_cell_878/kernel
?
1lstm_878/lstm_cell_878/kernel/Read/ReadVariableOpReadVariableOplstm_878/lstm_cell_878/kernel*
_output_shapes

:2(*
dtype0
?
'lstm_878/lstm_cell_878/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*8
shared_name)'lstm_878/lstm_cell_878/recurrent_kernel
?
;lstm_878/lstm_cell_878/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_878/lstm_cell_878/recurrent_kernel*
_output_shapes

:
(*
dtype0
?
lstm_878/lstm_cell_878/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*,
shared_namelstm_878/lstm_cell_878/bias
?
/lstm_878/lstm_cell_878/bias/Read/ReadVariableOpReadVariableOplstm_878/lstm_cell_878/bias*
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
Adam/dense_292/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_292/kernel/m
?
+Adam/dense_292/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_292/kernel/m*
_output_shapes

:
*
dtype0
?
Adam/dense_292/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_292/bias/m
{
)Adam/dense_292/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_292/bias/m*
_output_shapes
:*
dtype0
?
$Adam/lstm_876/lstm_cell_876/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_876/lstm_cell_876/kernel/m
?
8Adam/lstm_876/lstm_cell_876/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_876/lstm_cell_876/kernel/m*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_876/lstm_cell_876/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_876/lstm_cell_876/recurrent_kernel/m
?
BAdam/lstm_876/lstm_cell_876/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_876/lstm_cell_876/recurrent_kernel/m*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_876/lstm_cell_876/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_876/lstm_cell_876/bias/m
?
6Adam/lstm_876/lstm_cell_876/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_876/lstm_cell_876/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_877/lstm_cell_877/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_877/lstm_cell_877/kernel/m
?
8Adam/lstm_877/lstm_cell_877/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_877/lstm_cell_877/kernel/m*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_877/lstm_cell_877/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_877/lstm_cell_877/recurrent_kernel/m
?
BAdam/lstm_877/lstm_cell_877/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_877/lstm_cell_877/recurrent_kernel/m*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_877/lstm_cell_877/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_877/lstm_cell_877/bias/m
?
6Adam/lstm_877/lstm_cell_877/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_877/lstm_cell_877/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_878/lstm_cell_878/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_878/lstm_cell_878/kernel/m
?
8Adam/lstm_878/lstm_cell_878/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_878/lstm_cell_878/kernel/m*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_878/lstm_cell_878/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_878/lstm_cell_878/recurrent_kernel/m
?
BAdam/lstm_878/lstm_cell_878/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_878/lstm_cell_878/recurrent_kernel/m*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_878/lstm_cell_878/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_878/lstm_cell_878/bias/m
?
6Adam/lstm_878/lstm_cell_878/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_878/lstm_cell_878/bias/m*
_output_shapes
:(*
dtype0
?
Adam/dense_292/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_292/kernel/v
?
+Adam/dense_292/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_292/kernel/v*
_output_shapes

:
*
dtype0
?
Adam/dense_292/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_292/bias/v
{
)Adam/dense_292/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_292/bias/v*
_output_shapes
:*
dtype0
?
$Adam/lstm_876/lstm_cell_876/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_876/lstm_cell_876/kernel/v
?
8Adam/lstm_876/lstm_cell_876/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_876/lstm_cell_876/kernel/v*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_876/lstm_cell_876/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_876/lstm_cell_876/recurrent_kernel/v
?
BAdam/lstm_876/lstm_cell_876/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_876/lstm_cell_876/recurrent_kernel/v*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_876/lstm_cell_876/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_876/lstm_cell_876/bias/v
?
6Adam/lstm_876/lstm_cell_876/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_876/lstm_cell_876/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_877/lstm_cell_877/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_877/lstm_cell_877/kernel/v
?
8Adam/lstm_877/lstm_cell_877/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_877/lstm_cell_877/kernel/v*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_877/lstm_cell_877/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_877/lstm_cell_877/recurrent_kernel/v
?
BAdam/lstm_877/lstm_cell_877/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_877/lstm_cell_877/recurrent_kernel/v*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_877/lstm_cell_877/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_877/lstm_cell_877/bias/v
?
6Adam/lstm_877/lstm_cell_877/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_877/lstm_cell_877/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_878/lstm_cell_878/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_878/lstm_cell_878/kernel/v
?
8Adam/lstm_878/lstm_cell_878/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_878/lstm_cell_878/kernel/v*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_878/lstm_cell_878/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_878/lstm_cell_878/recurrent_kernel/v
?
BAdam/lstm_878/lstm_cell_878/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_878/lstm_cell_878/recurrent_kernel/v*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_878/lstm_cell_878/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_878/lstm_cell_878/bias/v
?
6Adam/lstm_878/lstm_cell_878/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_878/lstm_cell_878/bias/v*
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
VARIABLE_VALUEdense_292/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_292/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUElstm_876/lstm_cell_876/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_876/lstm_cell_876/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_876/lstm_cell_876/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_877/lstm_cell_877/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_877/lstm_cell_877/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_877/lstm_cell_877/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_878/lstm_cell_878/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_878/lstm_cell_878/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_878/lstm_cell_878/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEAdam/dense_292/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_292/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_876/lstm_cell_876/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_876/lstm_cell_876/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_876/lstm_cell_876/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_877/lstm_cell_877/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_877/lstm_cell_877/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_877/lstm_cell_877/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_878/lstm_cell_878/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_878/lstm_cell_878/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_878/lstm_cell_878/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_292/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_292/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_876/lstm_cell_876/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_876/lstm_cell_876/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_876/lstm_cell_876/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_877/lstm_cell_877/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_877/lstm_cell_877/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_877/lstm_cell_877/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_878/lstm_cell_878/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_878/lstm_cell_878/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_878/lstm_cell_878/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_lstm_876_inputPlaceholder*+
_output_shapes
:?????????*
dtype0* 
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_876_inputlstm_876/lstm_cell_876/kernel'lstm_876/lstm_cell_876/recurrent_kernellstm_876/lstm_cell_876/biaslstm_877/lstm_cell_877/kernel'lstm_877/lstm_cell_877/recurrent_kernellstm_877/lstm_cell_877/biaslstm_878/lstm_cell_878/kernel'lstm_878/lstm_cell_878/recurrent_kernellstm_878/lstm_cell_878/biasdense_292/kerneldense_292/bias*
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
%__inference_signature_wrapper_5233409
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$dense_292/kernel/Read/ReadVariableOp"dense_292/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_876/lstm_cell_876/kernel/Read/ReadVariableOp;lstm_876/lstm_cell_876/recurrent_kernel/Read/ReadVariableOp/lstm_876/lstm_cell_876/bias/Read/ReadVariableOp1lstm_877/lstm_cell_877/kernel/Read/ReadVariableOp;lstm_877/lstm_cell_877/recurrent_kernel/Read/ReadVariableOp/lstm_877/lstm_cell_877/bias/Read/ReadVariableOp1lstm_878/lstm_cell_878/kernel/Read/ReadVariableOp;lstm_878/lstm_cell_878/recurrent_kernel/Read/ReadVariableOp/lstm_878/lstm_cell_878/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp+Adam/dense_292/kernel/m/Read/ReadVariableOp)Adam/dense_292/bias/m/Read/ReadVariableOp8Adam/lstm_876/lstm_cell_876/kernel/m/Read/ReadVariableOpBAdam/lstm_876/lstm_cell_876/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_876/lstm_cell_876/bias/m/Read/ReadVariableOp8Adam/lstm_877/lstm_cell_877/kernel/m/Read/ReadVariableOpBAdam/lstm_877/lstm_cell_877/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_877/lstm_cell_877/bias/m/Read/ReadVariableOp8Adam/lstm_878/lstm_cell_878/kernel/m/Read/ReadVariableOpBAdam/lstm_878/lstm_cell_878/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_878/lstm_cell_878/bias/m/Read/ReadVariableOp+Adam/dense_292/kernel/v/Read/ReadVariableOp)Adam/dense_292/bias/v/Read/ReadVariableOp8Adam/lstm_876/lstm_cell_876/kernel/v/Read/ReadVariableOpBAdam/lstm_876/lstm_cell_876/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_876/lstm_cell_876/bias/v/Read/ReadVariableOp8Adam/lstm_877/lstm_cell_877/kernel/v/Read/ReadVariableOpBAdam/lstm_877/lstm_cell_877/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_877/lstm_cell_877/bias/v/Read/ReadVariableOp8Adam/lstm_878/lstm_cell_878/kernel/v/Read/ReadVariableOpBAdam/lstm_878/lstm_cell_878/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_878/lstm_cell_878/bias/v/Read/ReadVariableOpConst*5
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
 __inference__traced_save_5236621
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_292/kerneldense_292/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_876/lstm_cell_876/kernel'lstm_876/lstm_cell_876/recurrent_kernellstm_876/lstm_cell_876/biaslstm_877/lstm_cell_877/kernel'lstm_877/lstm_cell_877/recurrent_kernellstm_877/lstm_cell_877/biaslstm_878/lstm_cell_878/kernel'lstm_878/lstm_cell_878/recurrent_kernellstm_878/lstm_cell_878/biastotalcountAdam/dense_292/kernel/mAdam/dense_292/bias/m$Adam/lstm_876/lstm_cell_876/kernel/m.Adam/lstm_876/lstm_cell_876/recurrent_kernel/m"Adam/lstm_876/lstm_cell_876/bias/m$Adam/lstm_877/lstm_cell_877/kernel/m.Adam/lstm_877/lstm_cell_877/recurrent_kernel/m"Adam/lstm_877/lstm_cell_877/bias/m$Adam/lstm_878/lstm_cell_878/kernel/m.Adam/lstm_878/lstm_cell_878/recurrent_kernel/m"Adam/lstm_878/lstm_cell_878/bias/mAdam/dense_292/kernel/vAdam/dense_292/bias/v$Adam/lstm_876/lstm_cell_876/kernel/v.Adam/lstm_876/lstm_cell_876/recurrent_kernel/v"Adam/lstm_876/lstm_cell_876/bias/v$Adam/lstm_877/lstm_cell_877/kernel/v.Adam/lstm_877/lstm_cell_877/recurrent_kernel/v"Adam/lstm_877/lstm_cell_877/bias/v$Adam/lstm_878/lstm_cell_878/kernel/v.Adam/lstm_878/lstm_cell_878/recurrent_kernel/v"Adam/lstm_878/lstm_cell_878/bias/v*4
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
#__inference__traced_restore_5236751??+
?C
?

lstm_878_while_body_5234227.
*lstm_878_while_lstm_878_while_loop_counter4
0lstm_878_while_lstm_878_while_maximum_iterations
lstm_878_while_placeholder 
lstm_878_while_placeholder_1 
lstm_878_while_placeholder_2 
lstm_878_while_placeholder_3-
)lstm_878_while_lstm_878_strided_slice_1_0i
elstm_878_while_tensorarrayv2read_tensorlistgetitem_lstm_878_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_878_while_lstm_cell_878_matmul_readvariableop_resource_0:2(Q
?lstm_878_while_lstm_cell_878_matmul_1_readvariableop_resource_0:
(L
>lstm_878_while_lstm_cell_878_biasadd_readvariableop_resource_0:(
lstm_878_while_identity
lstm_878_while_identity_1
lstm_878_while_identity_2
lstm_878_while_identity_3
lstm_878_while_identity_4
lstm_878_while_identity_5+
'lstm_878_while_lstm_878_strided_slice_1g
clstm_878_while_tensorarrayv2read_tensorlistgetitem_lstm_878_tensorarrayunstack_tensorlistfromtensorM
;lstm_878_while_lstm_cell_878_matmul_readvariableop_resource:2(O
=lstm_878_while_lstm_cell_878_matmul_1_readvariableop_resource:
(J
<lstm_878_while_lstm_cell_878_biasadd_readvariableop_resource:(??3lstm_878/while/lstm_cell_878/BiasAdd/ReadVariableOp?2lstm_878/while/lstm_cell_878/MatMul/ReadVariableOp?4lstm_878/while/lstm_cell_878/MatMul_1/ReadVariableOp?
@lstm_878/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_878/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_878_while_tensorarrayv2read_tensorlistgetitem_lstm_878_tensorarrayunstack_tensorlistfromtensor_0lstm_878_while_placeholderIlstm_878/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_878/while/lstm_cell_878/MatMul/ReadVariableOpReadVariableOp=lstm_878_while_lstm_cell_878_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_878/while/lstm_cell_878/MatMulMatMul9lstm_878/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_878/while/lstm_cell_878/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_878/while/lstm_cell_878/MatMul_1/ReadVariableOpReadVariableOp?lstm_878_while_lstm_cell_878_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_878/while/lstm_cell_878/MatMul_1MatMullstm_878_while_placeholder_2<lstm_878/while/lstm_cell_878/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_878/while/lstm_cell_878/addAddV2-lstm_878/while/lstm_cell_878/MatMul:product:0/lstm_878/while/lstm_cell_878/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_878/while/lstm_cell_878/BiasAdd/ReadVariableOpReadVariableOp>lstm_878_while_lstm_cell_878_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_878/while/lstm_cell_878/BiasAddBiasAdd$lstm_878/while/lstm_cell_878/add:z:0;lstm_878/while/lstm_cell_878/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_878/while/lstm_cell_878/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_878/while/lstm_cell_878/splitSplit5lstm_878/while/lstm_cell_878/split/split_dim:output:0-lstm_878/while/lstm_cell_878/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_878/while/lstm_cell_878/SigmoidSigmoid+lstm_878/while/lstm_cell_878/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_878/while/lstm_cell_878/Sigmoid_1Sigmoid+lstm_878/while/lstm_cell_878/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_878/while/lstm_cell_878/mulMul*lstm_878/while/lstm_cell_878/Sigmoid_1:y:0lstm_878_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_878/while/lstm_cell_878/ReluRelu+lstm_878/while/lstm_cell_878/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_878/while/lstm_cell_878/mul_1Mul(lstm_878/while/lstm_cell_878/Sigmoid:y:0/lstm_878/while/lstm_cell_878/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_878/while/lstm_cell_878/add_1AddV2$lstm_878/while/lstm_cell_878/mul:z:0&lstm_878/while/lstm_cell_878/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_878/while/lstm_cell_878/Sigmoid_2Sigmoid+lstm_878/while/lstm_cell_878/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_878/while/lstm_cell_878/Relu_1Relu&lstm_878/while/lstm_cell_878/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_878/while/lstm_cell_878/mul_2Mul*lstm_878/while/lstm_cell_878/Sigmoid_2:y:01lstm_878/while/lstm_cell_878/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_878/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_878_while_placeholder_1lstm_878_while_placeholder&lstm_878/while/lstm_cell_878/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_878/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_878/while/addAddV2lstm_878_while_placeholderlstm_878/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_878/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_878/while/add_1AddV2*lstm_878_while_lstm_878_while_loop_counterlstm_878/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_878/while/IdentityIdentitylstm_878/while/add_1:z:0^lstm_878/while/NoOp*
T0*
_output_shapes
: ?
lstm_878/while/Identity_1Identity0lstm_878_while_lstm_878_while_maximum_iterations^lstm_878/while/NoOp*
T0*
_output_shapes
: t
lstm_878/while/Identity_2Identitylstm_878/while/add:z:0^lstm_878/while/NoOp*
T0*
_output_shapes
: ?
lstm_878/while/Identity_3IdentityClstm_878/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_878/while/NoOp*
T0*
_output_shapes
: ?
lstm_878/while/Identity_4Identity&lstm_878/while/lstm_cell_878/mul_2:z:0^lstm_878/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_878/while/Identity_5Identity&lstm_878/while/lstm_cell_878/add_1:z:0^lstm_878/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_878/while/NoOpNoOp4^lstm_878/while/lstm_cell_878/BiasAdd/ReadVariableOp3^lstm_878/while/lstm_cell_878/MatMul/ReadVariableOp5^lstm_878/while/lstm_cell_878/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_878_while_identity lstm_878/while/Identity:output:0"?
lstm_878_while_identity_1"lstm_878/while/Identity_1:output:0"?
lstm_878_while_identity_2"lstm_878/while/Identity_2:output:0"?
lstm_878_while_identity_3"lstm_878/while/Identity_3:output:0"?
lstm_878_while_identity_4"lstm_878/while/Identity_4:output:0"?
lstm_878_while_identity_5"lstm_878/while/Identity_5:output:0"T
'lstm_878_while_lstm_878_strided_slice_1)lstm_878_while_lstm_878_strided_slice_1_0"~
<lstm_878_while_lstm_cell_878_biasadd_readvariableop_resource>lstm_878_while_lstm_cell_878_biasadd_readvariableop_resource_0"?
=lstm_878_while_lstm_cell_878_matmul_1_readvariableop_resource?lstm_878_while_lstm_cell_878_matmul_1_readvariableop_resource_0"|
;lstm_878_while_lstm_cell_878_matmul_readvariableop_resource=lstm_878_while_lstm_cell_878_matmul_readvariableop_resource_0"?
clstm_878_while_tensorarrayv2read_tensorlistgetitem_lstm_878_tensorarrayunstack_tensorlistfromtensorelstm_878_while_tensorarrayv2read_tensorlistgetitem_lstm_878_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_878/while/lstm_cell_878/BiasAdd/ReadVariableOp3lstm_878/while/lstm_cell_878/BiasAdd/ReadVariableOp2h
2lstm_878/while/lstm_cell_878/MatMul/ReadVariableOp2lstm_878/while/lstm_cell_878/MatMul/ReadVariableOp2l
4lstm_878/while/lstm_cell_878/MatMul_1/ReadVariableOp4lstm_878/while/lstm_cell_878/MatMul_1/ReadVariableOp: 
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
J__inference_lstm_cell_876_layer_call_and_return_conditional_losses_5236282

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

?
lstm_878_while_cond_5234226.
*lstm_878_while_lstm_878_while_loop_counter4
0lstm_878_while_lstm_878_while_maximum_iterations
lstm_878_while_placeholder 
lstm_878_while_placeholder_1 
lstm_878_while_placeholder_2 
lstm_878_while_placeholder_30
,lstm_878_while_less_lstm_878_strided_slice_1G
Clstm_878_while_lstm_878_while_cond_5234226___redundant_placeholder0G
Clstm_878_while_lstm_878_while_cond_5234226___redundant_placeholder1G
Clstm_878_while_lstm_878_while_cond_5234226___redundant_placeholder2G
Clstm_878_while_lstm_878_while_cond_5234226___redundant_placeholder3
lstm_878_while_identity
?
lstm_878/while/LessLesslstm_878_while_placeholder,lstm_878_while_less_lstm_878_strided_slice_1*
T0*
_output_shapes
: ]
lstm_878/while/IdentityIdentitylstm_878/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_878_while_identity lstm_878/while/Identity:output:0*(
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

?
lstm_878_while_cond_5233799.
*lstm_878_while_lstm_878_while_loop_counter4
0lstm_878_while_lstm_878_while_maximum_iterations
lstm_878_while_placeholder 
lstm_878_while_placeholder_1 
lstm_878_while_placeholder_2 
lstm_878_while_placeholder_30
,lstm_878_while_less_lstm_878_strided_slice_1G
Clstm_878_while_lstm_878_while_cond_5233799___redundant_placeholder0G
Clstm_878_while_lstm_878_while_cond_5233799___redundant_placeholder1G
Clstm_878_while_lstm_878_while_cond_5233799___redundant_placeholder2G
Clstm_878_while_lstm_878_while_cond_5233799___redundant_placeholder3
lstm_878_while_identity
?
lstm_878/while/LessLesslstm_878_while_placeholder,lstm_878_while_less_lstm_878_strided_slice_1*
T0*
_output_shapes
: ]
lstm_878/while/IdentityIdentitylstm_878/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_878_while_identity lstm_878/while/Identity:output:0*(
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
while_cond_5232413
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5232413___redundant_placeholder05
1while_while_cond_5232413___redundant_placeholder15
1while_while_cond_5232413___redundant_placeholder25
1while_while_cond_5232413___redundant_placeholder3
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
?J
?
E__inference_lstm_877_layer_call_and_return_conditional_losses_5232498

inputs?
,lstm_cell_877_matmul_readvariableop_resource:	d?A
.lstm_cell_877_matmul_1_readvariableop_resource:	2?<
-lstm_cell_877_biasadd_readvariableop_resource:	?
identity??$lstm_cell_877/BiasAdd/ReadVariableOp?#lstm_cell_877/MatMul/ReadVariableOp?%lstm_cell_877/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_877/MatMul/ReadVariableOpReadVariableOp,lstm_cell_877_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_877/MatMulMatMulstrided_slice_2:output:0+lstm_cell_877/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_877/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_877_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_877/MatMul_1MatMulzeros:output:0-lstm_cell_877/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_877/addAddV2lstm_cell_877/MatMul:product:0 lstm_cell_877/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_877/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_877_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_877/BiasAddBiasAddlstm_cell_877/add:z:0,lstm_cell_877/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_877/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_877/splitSplit&lstm_cell_877/split/split_dim:output:0lstm_cell_877/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_877/SigmoidSigmoidlstm_cell_877/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_877/Sigmoid_1Sigmoidlstm_cell_877/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_877/mulMullstm_cell_877/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_877/ReluRelulstm_cell_877/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_877/mul_1Mullstm_cell_877/Sigmoid:y:0 lstm_cell_877/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_877/add_1AddV2lstm_cell_877/mul:z:0lstm_cell_877/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_877/Sigmoid_2Sigmoidlstm_cell_877/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_877/Relu_1Relulstm_cell_877/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_877/mul_2Mullstm_cell_877/Sigmoid_2:y:0"lstm_cell_877/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_877_matmul_readvariableop_resource.lstm_cell_877_matmul_1_readvariableop_resource-lstm_cell_877_biasadd_readvariableop_resource*
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
while_body_5232414*
condR
while_cond_5232413*K
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
NoOpNoOp%^lstm_cell_877/BiasAdd/ReadVariableOp$^lstm_cell_877/MatMul/ReadVariableOp&^lstm_cell_877/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_877/BiasAdd/ReadVariableOp$lstm_cell_877/BiasAdd/ReadVariableOp2J
#lstm_cell_877/MatMul/ReadVariableOp#lstm_cell_877/MatMul/ReadVariableOp2N
%lstm_cell_877/MatMul_1/ReadVariableOp%lstm_cell_877/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?K
?
E__inference_lstm_877_layer_call_and_return_conditional_losses_5235120
inputs_0?
,lstm_cell_877_matmul_readvariableop_resource:	d?A
.lstm_cell_877_matmul_1_readvariableop_resource:	2?<
-lstm_cell_877_biasadd_readvariableop_resource:	?
identity??$lstm_cell_877/BiasAdd/ReadVariableOp?#lstm_cell_877/MatMul/ReadVariableOp?%lstm_cell_877/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_877/MatMul/ReadVariableOpReadVariableOp,lstm_cell_877_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_877/MatMulMatMulstrided_slice_2:output:0+lstm_cell_877/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_877/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_877_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_877/MatMul_1MatMulzeros:output:0-lstm_cell_877/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_877/addAddV2lstm_cell_877/MatMul:product:0 lstm_cell_877/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_877/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_877_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_877/BiasAddBiasAddlstm_cell_877/add:z:0,lstm_cell_877/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_877/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_877/splitSplit&lstm_cell_877/split/split_dim:output:0lstm_cell_877/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_877/SigmoidSigmoidlstm_cell_877/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_877/Sigmoid_1Sigmoidlstm_cell_877/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_877/mulMullstm_cell_877/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_877/ReluRelulstm_cell_877/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_877/mul_1Mullstm_cell_877/Sigmoid:y:0 lstm_cell_877/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_877/add_1AddV2lstm_cell_877/mul:z:0lstm_cell_877/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_877/Sigmoid_2Sigmoidlstm_cell_877/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_877/Relu_1Relulstm_cell_877/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_877/mul_2Mullstm_cell_877/Sigmoid_2:y:0"lstm_cell_877/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_877_matmul_readvariableop_resource.lstm_cell_877_matmul_1_readvariableop_resource-lstm_cell_877_biasadd_readvariableop_resource*
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
while_body_5235036*
condR
while_cond_5235035*K
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
NoOpNoOp%^lstm_cell_877/BiasAdd/ReadVariableOp$^lstm_cell_877/MatMul/ReadVariableOp&^lstm_cell_877/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_877/BiasAdd/ReadVariableOp$lstm_cell_877/BiasAdd/ReadVariableOp2J
#lstm_cell_877/MatMul/ReadVariableOp#lstm_cell_877/MatMul/ReadVariableOp2N
%lstm_cell_877/MatMul_1/ReadVariableOp%lstm_cell_877/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?
?
*__inference_lstm_876_layer_call_fn_5234350

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
E__inference_lstm_876_layer_call_and_return_conditional_losses_5232348s
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
??
?
"__inference__wrapped_model_5231149
lstm_876_inputW
Dsequential_292_lstm_876_lstm_cell_876_matmul_readvariableop_resource:	?Y
Fsequential_292_lstm_876_lstm_cell_876_matmul_1_readvariableop_resource:	d?T
Esequential_292_lstm_876_lstm_cell_876_biasadd_readvariableop_resource:	?W
Dsequential_292_lstm_877_lstm_cell_877_matmul_readvariableop_resource:	d?Y
Fsequential_292_lstm_877_lstm_cell_877_matmul_1_readvariableop_resource:	2?T
Esequential_292_lstm_877_lstm_cell_877_biasadd_readvariableop_resource:	?V
Dsequential_292_lstm_878_lstm_cell_878_matmul_readvariableop_resource:2(X
Fsequential_292_lstm_878_lstm_cell_878_matmul_1_readvariableop_resource:
(S
Esequential_292_lstm_878_lstm_cell_878_biasadd_readvariableop_resource:(I
7sequential_292_dense_292_matmul_readvariableop_resource:
F
8sequential_292_dense_292_biasadd_readvariableop_resource:
identity??/sequential_292/dense_292/BiasAdd/ReadVariableOp?.sequential_292/dense_292/MatMul/ReadVariableOp?<sequential_292/lstm_876/lstm_cell_876/BiasAdd/ReadVariableOp?;sequential_292/lstm_876/lstm_cell_876/MatMul/ReadVariableOp?=sequential_292/lstm_876/lstm_cell_876/MatMul_1/ReadVariableOp?sequential_292/lstm_876/while?<sequential_292/lstm_877/lstm_cell_877/BiasAdd/ReadVariableOp?;sequential_292/lstm_877/lstm_cell_877/MatMul/ReadVariableOp?=sequential_292/lstm_877/lstm_cell_877/MatMul_1/ReadVariableOp?sequential_292/lstm_877/while?<sequential_292/lstm_878/lstm_cell_878/BiasAdd/ReadVariableOp?;sequential_292/lstm_878/lstm_cell_878/MatMul/ReadVariableOp?=sequential_292/lstm_878/lstm_cell_878/MatMul_1/ReadVariableOp?sequential_292/lstm_878/while[
sequential_292/lstm_876/ShapeShapelstm_876_input*
T0*
_output_shapes
:u
+sequential_292/lstm_876/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_292/lstm_876/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_292/lstm_876/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_292/lstm_876/strided_sliceStridedSlice&sequential_292/lstm_876/Shape:output:04sequential_292/lstm_876/strided_slice/stack:output:06sequential_292/lstm_876/strided_slice/stack_1:output:06sequential_292/lstm_876/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_292/lstm_876/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
$sequential_292/lstm_876/zeros/packedPack.sequential_292/lstm_876/strided_slice:output:0/sequential_292/lstm_876/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_292/lstm_876/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_292/lstm_876/zerosFill-sequential_292/lstm_876/zeros/packed:output:0,sequential_292/lstm_876/zeros/Const:output:0*
T0*'
_output_shapes
:?????????dj
(sequential_292/lstm_876/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
&sequential_292/lstm_876/zeros_1/packedPack.sequential_292/lstm_876/strided_slice:output:01sequential_292/lstm_876/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_292/lstm_876/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_292/lstm_876/zeros_1Fill/sequential_292/lstm_876/zeros_1/packed:output:0.sequential_292/lstm_876/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????d{
&sequential_292/lstm_876/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_292/lstm_876/transpose	Transposelstm_876_input/sequential_292/lstm_876/transpose/perm:output:0*
T0*+
_output_shapes
:?????????t
sequential_292/lstm_876/Shape_1Shape%sequential_292/lstm_876/transpose:y:0*
T0*
_output_shapes
:w
-sequential_292/lstm_876/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_292/lstm_876/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_292/lstm_876/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_292/lstm_876/strided_slice_1StridedSlice(sequential_292/lstm_876/Shape_1:output:06sequential_292/lstm_876/strided_slice_1/stack:output:08sequential_292/lstm_876/strided_slice_1/stack_1:output:08sequential_292/lstm_876/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_292/lstm_876/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_292/lstm_876/TensorArrayV2TensorListReserve<sequential_292/lstm_876/TensorArrayV2/element_shape:output:00sequential_292/lstm_876/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_292/lstm_876/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
?sequential_292/lstm_876/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_292/lstm_876/transpose:y:0Vsequential_292/lstm_876/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_292/lstm_876/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_292/lstm_876/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_292/lstm_876/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_292/lstm_876/strided_slice_2StridedSlice%sequential_292/lstm_876/transpose:y:06sequential_292/lstm_876/strided_slice_2/stack:output:08sequential_292/lstm_876/strided_slice_2/stack_1:output:08sequential_292/lstm_876/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
;sequential_292/lstm_876/lstm_cell_876/MatMul/ReadVariableOpReadVariableOpDsequential_292_lstm_876_lstm_cell_876_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
,sequential_292/lstm_876/lstm_cell_876/MatMulMatMul0sequential_292/lstm_876/strided_slice_2:output:0Csequential_292/lstm_876/lstm_cell_876/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_292/lstm_876/lstm_cell_876/MatMul_1/ReadVariableOpReadVariableOpFsequential_292_lstm_876_lstm_cell_876_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
.sequential_292/lstm_876/lstm_cell_876/MatMul_1MatMul&sequential_292/lstm_876/zeros:output:0Esequential_292/lstm_876/lstm_cell_876/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_292/lstm_876/lstm_cell_876/addAddV26sequential_292/lstm_876/lstm_cell_876/MatMul:product:08sequential_292/lstm_876/lstm_cell_876/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_292/lstm_876/lstm_cell_876/BiasAdd/ReadVariableOpReadVariableOpEsequential_292_lstm_876_lstm_cell_876_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_292/lstm_876/lstm_cell_876/BiasAddBiasAdd-sequential_292/lstm_876/lstm_cell_876/add:z:0Dsequential_292/lstm_876/lstm_cell_876/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_292/lstm_876/lstm_cell_876/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_292/lstm_876/lstm_cell_876/splitSplit>sequential_292/lstm_876/lstm_cell_876/split/split_dim:output:06sequential_292/lstm_876/lstm_cell_876/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
-sequential_292/lstm_876/lstm_cell_876/SigmoidSigmoid4sequential_292/lstm_876/lstm_cell_876/split:output:0*
T0*'
_output_shapes
:?????????d?
/sequential_292/lstm_876/lstm_cell_876/Sigmoid_1Sigmoid4sequential_292/lstm_876/lstm_cell_876/split:output:1*
T0*'
_output_shapes
:?????????d?
)sequential_292/lstm_876/lstm_cell_876/mulMul3sequential_292/lstm_876/lstm_cell_876/Sigmoid_1:y:0(sequential_292/lstm_876/zeros_1:output:0*
T0*'
_output_shapes
:?????????d?
*sequential_292/lstm_876/lstm_cell_876/ReluRelu4sequential_292/lstm_876/lstm_cell_876/split:output:2*
T0*'
_output_shapes
:?????????d?
+sequential_292/lstm_876/lstm_cell_876/mul_1Mul1sequential_292/lstm_876/lstm_cell_876/Sigmoid:y:08sequential_292/lstm_876/lstm_cell_876/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
+sequential_292/lstm_876/lstm_cell_876/add_1AddV2-sequential_292/lstm_876/lstm_cell_876/mul:z:0/sequential_292/lstm_876/lstm_cell_876/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
/sequential_292/lstm_876/lstm_cell_876/Sigmoid_2Sigmoid4sequential_292/lstm_876/lstm_cell_876/split:output:3*
T0*'
_output_shapes
:?????????d?
,sequential_292/lstm_876/lstm_cell_876/Relu_1Relu/sequential_292/lstm_876/lstm_cell_876/add_1:z:0*
T0*'
_output_shapes
:?????????d?
+sequential_292/lstm_876/lstm_cell_876/mul_2Mul3sequential_292/lstm_876/lstm_cell_876/Sigmoid_2:y:0:sequential_292/lstm_876/lstm_cell_876/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
5sequential_292/lstm_876/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
'sequential_292/lstm_876/TensorArrayV2_1TensorListReserve>sequential_292/lstm_876/TensorArrayV2_1/element_shape:output:00sequential_292/lstm_876/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_292/lstm_876/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_292/lstm_876/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_292/lstm_876/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_292/lstm_876/whileWhile3sequential_292/lstm_876/while/loop_counter:output:09sequential_292/lstm_876/while/maximum_iterations:output:0%sequential_292/lstm_876/time:output:00sequential_292/lstm_876/TensorArrayV2_1:handle:0&sequential_292/lstm_876/zeros:output:0(sequential_292/lstm_876/zeros_1:output:00sequential_292/lstm_876/strided_slice_1:output:0Osequential_292/lstm_876/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_292_lstm_876_lstm_cell_876_matmul_readvariableop_resourceFsequential_292_lstm_876_lstm_cell_876_matmul_1_readvariableop_resourceEsequential_292_lstm_876_lstm_cell_876_biasadd_readvariableop_resource*
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
*sequential_292_lstm_876_while_body_5230781*6
cond.R,
*sequential_292_lstm_876_while_cond_5230780*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
Hsequential_292/lstm_876/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
:sequential_292/lstm_876/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_292/lstm_876/while:output:3Qsequential_292/lstm_876/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0?
-sequential_292/lstm_876/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_292/lstm_876/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_292/lstm_876/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_292/lstm_876/strided_slice_3StridedSliceCsequential_292/lstm_876/TensorArrayV2Stack/TensorListStack:tensor:06sequential_292/lstm_876/strided_slice_3/stack:output:08sequential_292/lstm_876/strided_slice_3/stack_1:output:08sequential_292/lstm_876/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask}
(sequential_292/lstm_876/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_292/lstm_876/transpose_1	TransposeCsequential_292/lstm_876/TensorArrayV2Stack/TensorListStack:tensor:01sequential_292/lstm_876/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????ds
sequential_292/lstm_876/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_292/lstm_877/ShapeShape'sequential_292/lstm_876/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_292/lstm_877/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_292/lstm_877/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_292/lstm_877/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_292/lstm_877/strided_sliceStridedSlice&sequential_292/lstm_877/Shape:output:04sequential_292/lstm_877/strided_slice/stack:output:06sequential_292/lstm_877/strided_slice/stack_1:output:06sequential_292/lstm_877/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_292/lstm_877/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
$sequential_292/lstm_877/zeros/packedPack.sequential_292/lstm_877/strided_slice:output:0/sequential_292/lstm_877/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_292/lstm_877/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_292/lstm_877/zerosFill-sequential_292/lstm_877/zeros/packed:output:0,sequential_292/lstm_877/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2j
(sequential_292/lstm_877/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
&sequential_292/lstm_877/zeros_1/packedPack.sequential_292/lstm_877/strided_slice:output:01sequential_292/lstm_877/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_292/lstm_877/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_292/lstm_877/zeros_1Fill/sequential_292/lstm_877/zeros_1/packed:output:0.sequential_292/lstm_877/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2{
&sequential_292/lstm_877/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_292/lstm_877/transpose	Transpose'sequential_292/lstm_876/transpose_1:y:0/sequential_292/lstm_877/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dt
sequential_292/lstm_877/Shape_1Shape%sequential_292/lstm_877/transpose:y:0*
T0*
_output_shapes
:w
-sequential_292/lstm_877/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_292/lstm_877/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_292/lstm_877/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_292/lstm_877/strided_slice_1StridedSlice(sequential_292/lstm_877/Shape_1:output:06sequential_292/lstm_877/strided_slice_1/stack:output:08sequential_292/lstm_877/strided_slice_1/stack_1:output:08sequential_292/lstm_877/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_292/lstm_877/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_292/lstm_877/TensorArrayV2TensorListReserve<sequential_292/lstm_877/TensorArrayV2/element_shape:output:00sequential_292/lstm_877/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_292/lstm_877/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
?sequential_292/lstm_877/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_292/lstm_877/transpose:y:0Vsequential_292/lstm_877/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_292/lstm_877/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_292/lstm_877/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_292/lstm_877/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_292/lstm_877/strided_slice_2StridedSlice%sequential_292/lstm_877/transpose:y:06sequential_292/lstm_877/strided_slice_2/stack:output:08sequential_292/lstm_877/strided_slice_2/stack_1:output:08sequential_292/lstm_877/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
;sequential_292/lstm_877/lstm_cell_877/MatMul/ReadVariableOpReadVariableOpDsequential_292_lstm_877_lstm_cell_877_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
,sequential_292/lstm_877/lstm_cell_877/MatMulMatMul0sequential_292/lstm_877/strided_slice_2:output:0Csequential_292/lstm_877/lstm_cell_877/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_292/lstm_877/lstm_cell_877/MatMul_1/ReadVariableOpReadVariableOpFsequential_292_lstm_877_lstm_cell_877_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
.sequential_292/lstm_877/lstm_cell_877/MatMul_1MatMul&sequential_292/lstm_877/zeros:output:0Esequential_292/lstm_877/lstm_cell_877/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_292/lstm_877/lstm_cell_877/addAddV26sequential_292/lstm_877/lstm_cell_877/MatMul:product:08sequential_292/lstm_877/lstm_cell_877/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_292/lstm_877/lstm_cell_877/BiasAdd/ReadVariableOpReadVariableOpEsequential_292_lstm_877_lstm_cell_877_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_292/lstm_877/lstm_cell_877/BiasAddBiasAdd-sequential_292/lstm_877/lstm_cell_877/add:z:0Dsequential_292/lstm_877/lstm_cell_877/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_292/lstm_877/lstm_cell_877/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_292/lstm_877/lstm_cell_877/splitSplit>sequential_292/lstm_877/lstm_cell_877/split/split_dim:output:06sequential_292/lstm_877/lstm_cell_877/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
-sequential_292/lstm_877/lstm_cell_877/SigmoidSigmoid4sequential_292/lstm_877/lstm_cell_877/split:output:0*
T0*'
_output_shapes
:?????????2?
/sequential_292/lstm_877/lstm_cell_877/Sigmoid_1Sigmoid4sequential_292/lstm_877/lstm_cell_877/split:output:1*
T0*'
_output_shapes
:?????????2?
)sequential_292/lstm_877/lstm_cell_877/mulMul3sequential_292/lstm_877/lstm_cell_877/Sigmoid_1:y:0(sequential_292/lstm_877/zeros_1:output:0*
T0*'
_output_shapes
:?????????2?
*sequential_292/lstm_877/lstm_cell_877/ReluRelu4sequential_292/lstm_877/lstm_cell_877/split:output:2*
T0*'
_output_shapes
:?????????2?
+sequential_292/lstm_877/lstm_cell_877/mul_1Mul1sequential_292/lstm_877/lstm_cell_877/Sigmoid:y:08sequential_292/lstm_877/lstm_cell_877/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
+sequential_292/lstm_877/lstm_cell_877/add_1AddV2-sequential_292/lstm_877/lstm_cell_877/mul:z:0/sequential_292/lstm_877/lstm_cell_877/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
/sequential_292/lstm_877/lstm_cell_877/Sigmoid_2Sigmoid4sequential_292/lstm_877/lstm_cell_877/split:output:3*
T0*'
_output_shapes
:?????????2?
,sequential_292/lstm_877/lstm_cell_877/Relu_1Relu/sequential_292/lstm_877/lstm_cell_877/add_1:z:0*
T0*'
_output_shapes
:?????????2?
+sequential_292/lstm_877/lstm_cell_877/mul_2Mul3sequential_292/lstm_877/lstm_cell_877/Sigmoid_2:y:0:sequential_292/lstm_877/lstm_cell_877/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
5sequential_292/lstm_877/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
'sequential_292/lstm_877/TensorArrayV2_1TensorListReserve>sequential_292/lstm_877/TensorArrayV2_1/element_shape:output:00sequential_292/lstm_877/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_292/lstm_877/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_292/lstm_877/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_292/lstm_877/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_292/lstm_877/whileWhile3sequential_292/lstm_877/while/loop_counter:output:09sequential_292/lstm_877/while/maximum_iterations:output:0%sequential_292/lstm_877/time:output:00sequential_292/lstm_877/TensorArrayV2_1:handle:0&sequential_292/lstm_877/zeros:output:0(sequential_292/lstm_877/zeros_1:output:00sequential_292/lstm_877/strided_slice_1:output:0Osequential_292/lstm_877/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_292_lstm_877_lstm_cell_877_matmul_readvariableop_resourceFsequential_292_lstm_877_lstm_cell_877_matmul_1_readvariableop_resourceEsequential_292_lstm_877_lstm_cell_877_biasadd_readvariableop_resource*
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
*sequential_292_lstm_877_while_body_5230920*6
cond.R,
*sequential_292_lstm_877_while_cond_5230919*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
Hsequential_292/lstm_877/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
:sequential_292/lstm_877/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_292/lstm_877/while:output:3Qsequential_292/lstm_877/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0?
-sequential_292/lstm_877/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_292/lstm_877/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_292/lstm_877/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_292/lstm_877/strided_slice_3StridedSliceCsequential_292/lstm_877/TensorArrayV2Stack/TensorListStack:tensor:06sequential_292/lstm_877/strided_slice_3/stack:output:08sequential_292/lstm_877/strided_slice_3/stack_1:output:08sequential_292/lstm_877/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask}
(sequential_292/lstm_877/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_292/lstm_877/transpose_1	TransposeCsequential_292/lstm_877/TensorArrayV2Stack/TensorListStack:tensor:01sequential_292/lstm_877/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2s
sequential_292/lstm_877/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_292/lstm_878/ShapeShape'sequential_292/lstm_877/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_292/lstm_878/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_292/lstm_878/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_292/lstm_878/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_292/lstm_878/strided_sliceStridedSlice&sequential_292/lstm_878/Shape:output:04sequential_292/lstm_878/strided_slice/stack:output:06sequential_292/lstm_878/strided_slice/stack_1:output:06sequential_292/lstm_878/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_292/lstm_878/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
$sequential_292/lstm_878/zeros/packedPack.sequential_292/lstm_878/strided_slice:output:0/sequential_292/lstm_878/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_292/lstm_878/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_292/lstm_878/zerosFill-sequential_292/lstm_878/zeros/packed:output:0,sequential_292/lstm_878/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
j
(sequential_292/lstm_878/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
&sequential_292/lstm_878/zeros_1/packedPack.sequential_292/lstm_878/strided_slice:output:01sequential_292/lstm_878/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_292/lstm_878/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_292/lstm_878/zeros_1Fill/sequential_292/lstm_878/zeros_1/packed:output:0.sequential_292/lstm_878/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
{
&sequential_292/lstm_878/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_292/lstm_878/transpose	Transpose'sequential_292/lstm_877/transpose_1:y:0/sequential_292/lstm_878/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2t
sequential_292/lstm_878/Shape_1Shape%sequential_292/lstm_878/transpose:y:0*
T0*
_output_shapes
:w
-sequential_292/lstm_878/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_292/lstm_878/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_292/lstm_878/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_292/lstm_878/strided_slice_1StridedSlice(sequential_292/lstm_878/Shape_1:output:06sequential_292/lstm_878/strided_slice_1/stack:output:08sequential_292/lstm_878/strided_slice_1/stack_1:output:08sequential_292/lstm_878/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_292/lstm_878/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_292/lstm_878/TensorArrayV2TensorListReserve<sequential_292/lstm_878/TensorArrayV2/element_shape:output:00sequential_292/lstm_878/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_292/lstm_878/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
?sequential_292/lstm_878/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_292/lstm_878/transpose:y:0Vsequential_292/lstm_878/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_292/lstm_878/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_292/lstm_878/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_292/lstm_878/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_292/lstm_878/strided_slice_2StridedSlice%sequential_292/lstm_878/transpose:y:06sequential_292/lstm_878/strided_slice_2/stack:output:08sequential_292/lstm_878/strided_slice_2/stack_1:output:08sequential_292/lstm_878/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
;sequential_292/lstm_878/lstm_cell_878/MatMul/ReadVariableOpReadVariableOpDsequential_292_lstm_878_lstm_cell_878_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
,sequential_292/lstm_878/lstm_cell_878/MatMulMatMul0sequential_292/lstm_878/strided_slice_2:output:0Csequential_292/lstm_878/lstm_cell_878/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
=sequential_292/lstm_878/lstm_cell_878/MatMul_1/ReadVariableOpReadVariableOpFsequential_292_lstm_878_lstm_cell_878_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
.sequential_292/lstm_878/lstm_cell_878/MatMul_1MatMul&sequential_292/lstm_878/zeros:output:0Esequential_292/lstm_878/lstm_cell_878/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
)sequential_292/lstm_878/lstm_cell_878/addAddV26sequential_292/lstm_878/lstm_cell_878/MatMul:product:08sequential_292/lstm_878/lstm_cell_878/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
<sequential_292/lstm_878/lstm_cell_878/BiasAdd/ReadVariableOpReadVariableOpEsequential_292_lstm_878_lstm_cell_878_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
-sequential_292/lstm_878/lstm_cell_878/BiasAddBiasAdd-sequential_292/lstm_878/lstm_cell_878/add:z:0Dsequential_292/lstm_878/lstm_cell_878/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(w
5sequential_292/lstm_878/lstm_cell_878/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_292/lstm_878/lstm_cell_878/splitSplit>sequential_292/lstm_878/lstm_cell_878/split/split_dim:output:06sequential_292/lstm_878/lstm_cell_878/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
-sequential_292/lstm_878/lstm_cell_878/SigmoidSigmoid4sequential_292/lstm_878/lstm_cell_878/split:output:0*
T0*'
_output_shapes
:?????????
?
/sequential_292/lstm_878/lstm_cell_878/Sigmoid_1Sigmoid4sequential_292/lstm_878/lstm_cell_878/split:output:1*
T0*'
_output_shapes
:?????????
?
)sequential_292/lstm_878/lstm_cell_878/mulMul3sequential_292/lstm_878/lstm_cell_878/Sigmoid_1:y:0(sequential_292/lstm_878/zeros_1:output:0*
T0*'
_output_shapes
:?????????
?
*sequential_292/lstm_878/lstm_cell_878/ReluRelu4sequential_292/lstm_878/lstm_cell_878/split:output:2*
T0*'
_output_shapes
:?????????
?
+sequential_292/lstm_878/lstm_cell_878/mul_1Mul1sequential_292/lstm_878/lstm_cell_878/Sigmoid:y:08sequential_292/lstm_878/lstm_cell_878/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
+sequential_292/lstm_878/lstm_cell_878/add_1AddV2-sequential_292/lstm_878/lstm_cell_878/mul:z:0/sequential_292/lstm_878/lstm_cell_878/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
/sequential_292/lstm_878/lstm_cell_878/Sigmoid_2Sigmoid4sequential_292/lstm_878/lstm_cell_878/split:output:3*
T0*'
_output_shapes
:?????????
?
,sequential_292/lstm_878/lstm_cell_878/Relu_1Relu/sequential_292/lstm_878/lstm_cell_878/add_1:z:0*
T0*'
_output_shapes
:?????????
?
+sequential_292/lstm_878/lstm_cell_878/mul_2Mul3sequential_292/lstm_878/lstm_cell_878/Sigmoid_2:y:0:sequential_292/lstm_878/lstm_cell_878/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
5sequential_292/lstm_878/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
'sequential_292/lstm_878/TensorArrayV2_1TensorListReserve>sequential_292/lstm_878/TensorArrayV2_1/element_shape:output:00sequential_292/lstm_878/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_292/lstm_878/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_292/lstm_878/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_292/lstm_878/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_292/lstm_878/whileWhile3sequential_292/lstm_878/while/loop_counter:output:09sequential_292/lstm_878/while/maximum_iterations:output:0%sequential_292/lstm_878/time:output:00sequential_292/lstm_878/TensorArrayV2_1:handle:0&sequential_292/lstm_878/zeros:output:0(sequential_292/lstm_878/zeros_1:output:00sequential_292/lstm_878/strided_slice_1:output:0Osequential_292/lstm_878/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_292_lstm_878_lstm_cell_878_matmul_readvariableop_resourceFsequential_292_lstm_878_lstm_cell_878_matmul_1_readvariableop_resourceEsequential_292_lstm_878_lstm_cell_878_biasadd_readvariableop_resource*
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
*sequential_292_lstm_878_while_body_5231059*6
cond.R,
*sequential_292_lstm_878_while_cond_5231058*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
Hsequential_292/lstm_878/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
:sequential_292/lstm_878/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_292/lstm_878/while:output:3Qsequential_292/lstm_878/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0?
-sequential_292/lstm_878/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_292/lstm_878/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_292/lstm_878/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_292/lstm_878/strided_slice_3StridedSliceCsequential_292/lstm_878/TensorArrayV2Stack/TensorListStack:tensor:06sequential_292/lstm_878/strided_slice_3/stack:output:08sequential_292/lstm_878/strided_slice_3/stack_1:output:08sequential_292/lstm_878/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_mask}
(sequential_292/lstm_878/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_292/lstm_878/transpose_1	TransposeCsequential_292/lstm_878/TensorArrayV2Stack/TensorListStack:tensor:01sequential_292/lstm_878/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
s
sequential_292/lstm_878/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
.sequential_292/dense_292/MatMul/ReadVariableOpReadVariableOp7sequential_292_dense_292_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
sequential_292/dense_292/MatMulMatMul0sequential_292/lstm_878/strided_slice_3:output:06sequential_292/dense_292/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
/sequential_292/dense_292/BiasAdd/ReadVariableOpReadVariableOp8sequential_292_dense_292_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
 sequential_292/dense_292/BiasAddBiasAdd)sequential_292/dense_292/MatMul:product:07sequential_292/dense_292/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x
IdentityIdentity)sequential_292/dense_292/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp0^sequential_292/dense_292/BiasAdd/ReadVariableOp/^sequential_292/dense_292/MatMul/ReadVariableOp=^sequential_292/lstm_876/lstm_cell_876/BiasAdd/ReadVariableOp<^sequential_292/lstm_876/lstm_cell_876/MatMul/ReadVariableOp>^sequential_292/lstm_876/lstm_cell_876/MatMul_1/ReadVariableOp^sequential_292/lstm_876/while=^sequential_292/lstm_877/lstm_cell_877/BiasAdd/ReadVariableOp<^sequential_292/lstm_877/lstm_cell_877/MatMul/ReadVariableOp>^sequential_292/lstm_877/lstm_cell_877/MatMul_1/ReadVariableOp^sequential_292/lstm_877/while=^sequential_292/lstm_878/lstm_cell_878/BiasAdd/ReadVariableOp<^sequential_292/lstm_878/lstm_cell_878/MatMul/ReadVariableOp>^sequential_292/lstm_878/lstm_cell_878/MatMul_1/ReadVariableOp^sequential_292/lstm_878/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2b
/sequential_292/dense_292/BiasAdd/ReadVariableOp/sequential_292/dense_292/BiasAdd/ReadVariableOp2`
.sequential_292/dense_292/MatMul/ReadVariableOp.sequential_292/dense_292/MatMul/ReadVariableOp2|
<sequential_292/lstm_876/lstm_cell_876/BiasAdd/ReadVariableOp<sequential_292/lstm_876/lstm_cell_876/BiasAdd/ReadVariableOp2z
;sequential_292/lstm_876/lstm_cell_876/MatMul/ReadVariableOp;sequential_292/lstm_876/lstm_cell_876/MatMul/ReadVariableOp2~
=sequential_292/lstm_876/lstm_cell_876/MatMul_1/ReadVariableOp=sequential_292/lstm_876/lstm_cell_876/MatMul_1/ReadVariableOp2>
sequential_292/lstm_876/whilesequential_292/lstm_876/while2|
<sequential_292/lstm_877/lstm_cell_877/BiasAdd/ReadVariableOp<sequential_292/lstm_877/lstm_cell_877/BiasAdd/ReadVariableOp2z
;sequential_292/lstm_877/lstm_cell_877/MatMul/ReadVariableOp;sequential_292/lstm_877/lstm_cell_877/MatMul/ReadVariableOp2~
=sequential_292/lstm_877/lstm_cell_877/MatMul_1/ReadVariableOp=sequential_292/lstm_877/lstm_cell_877/MatMul_1/ReadVariableOp2>
sequential_292/lstm_877/whilesequential_292/lstm_877/while2|
<sequential_292/lstm_878/lstm_cell_878/BiasAdd/ReadVariableOp<sequential_292/lstm_878/lstm_cell_878/BiasAdd/ReadVariableOp2z
;sequential_292/lstm_878/lstm_cell_878/MatMul/ReadVariableOp;sequential_292/lstm_878/lstm_cell_878/MatMul/ReadVariableOp2~
=sequential_292/lstm_878/lstm_cell_878/MatMul_1/ReadVariableOp=sequential_292/lstm_878/lstm_cell_878/MatMul_1/ReadVariableOp2>
sequential_292/lstm_878/whilesequential_292/lstm_878/while:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_876_input
?
?
K__inference_sequential_292_layer_call_and_return_conditional_losses_5233344
lstm_876_input#
lstm_876_5233317:	?#
lstm_876_5233319:	d?
lstm_876_5233321:	?#
lstm_877_5233324:	d?#
lstm_877_5233326:	2?
lstm_877_5233328:	?"
lstm_878_5233331:2("
lstm_878_5233333:
(
lstm_878_5233335:(#
dense_292_5233338:

dense_292_5233340:
identity??!dense_292/StatefulPartitionedCall? lstm_876/StatefulPartitionedCall? lstm_877/StatefulPartitionedCall? lstm_878/StatefulPartitionedCall?
 lstm_876/StatefulPartitionedCallStatefulPartitionedCalllstm_876_inputlstm_876_5233317lstm_876_5233319lstm_876_5233321*
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
E__inference_lstm_876_layer_call_and_return_conditional_losses_5232348?
 lstm_877/StatefulPartitionedCallStatefulPartitionedCall)lstm_876/StatefulPartitionedCall:output:0lstm_877_5233324lstm_877_5233326lstm_877_5233328*
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
E__inference_lstm_877_layer_call_and_return_conditional_losses_5232498?
 lstm_878/StatefulPartitionedCallStatefulPartitionedCall)lstm_877/StatefulPartitionedCall:output:0lstm_878_5233331lstm_878_5233333lstm_878_5233335*
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
E__inference_lstm_878_layer_call_and_return_conditional_losses_5232648?
!dense_292/StatefulPartitionedCallStatefulPartitionedCall)lstm_878/StatefulPartitionedCall:output:0dense_292_5233338dense_292_5233340*
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
F__inference_dense_292_layer_call_and_return_conditional_losses_5232666y
IdentityIdentity*dense_292/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_292/StatefulPartitionedCall!^lstm_876/StatefulPartitionedCall!^lstm_877/StatefulPartitionedCall!^lstm_878/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_292/StatefulPartitionedCall!dense_292/StatefulPartitionedCall2D
 lstm_876/StatefulPartitionedCall lstm_876/StatefulPartitionedCall2D
 lstm_877/StatefulPartitionedCall lstm_877/StatefulPartitionedCall2D
 lstm_878/StatefulPartitionedCall lstm_878/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_876_input
?
?
*sequential_292_lstm_876_while_cond_5230780L
Hsequential_292_lstm_876_while_sequential_292_lstm_876_while_loop_counterR
Nsequential_292_lstm_876_while_sequential_292_lstm_876_while_maximum_iterations-
)sequential_292_lstm_876_while_placeholder/
+sequential_292_lstm_876_while_placeholder_1/
+sequential_292_lstm_876_while_placeholder_2/
+sequential_292_lstm_876_while_placeholder_3N
Jsequential_292_lstm_876_while_less_sequential_292_lstm_876_strided_slice_1e
asequential_292_lstm_876_while_sequential_292_lstm_876_while_cond_5230780___redundant_placeholder0e
asequential_292_lstm_876_while_sequential_292_lstm_876_while_cond_5230780___redundant_placeholder1e
asequential_292_lstm_876_while_sequential_292_lstm_876_while_cond_5230780___redundant_placeholder2e
asequential_292_lstm_876_while_sequential_292_lstm_876_while_cond_5230780___redundant_placeholder3*
&sequential_292_lstm_876_while_identity
?
"sequential_292/lstm_876/while/LessLess)sequential_292_lstm_876_while_placeholderJsequential_292_lstm_876_while_less_sequential_292_lstm_876_strided_slice_1*
T0*
_output_shapes
: {
&sequential_292/lstm_876/while/IdentityIdentity&sequential_292/lstm_876/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_292_lstm_876_while_identity/sequential_292/lstm_876/while/Identity:output:0*(
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
?C
?

lstm_876_while_body_5233522.
*lstm_876_while_lstm_876_while_loop_counter4
0lstm_876_while_lstm_876_while_maximum_iterations
lstm_876_while_placeholder 
lstm_876_while_placeholder_1 
lstm_876_while_placeholder_2 
lstm_876_while_placeholder_3-
)lstm_876_while_lstm_876_strided_slice_1_0i
elstm_876_while_tensorarrayv2read_tensorlistgetitem_lstm_876_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_876_while_lstm_cell_876_matmul_readvariableop_resource_0:	?R
?lstm_876_while_lstm_cell_876_matmul_1_readvariableop_resource_0:	d?M
>lstm_876_while_lstm_cell_876_biasadd_readvariableop_resource_0:	?
lstm_876_while_identity
lstm_876_while_identity_1
lstm_876_while_identity_2
lstm_876_while_identity_3
lstm_876_while_identity_4
lstm_876_while_identity_5+
'lstm_876_while_lstm_876_strided_slice_1g
clstm_876_while_tensorarrayv2read_tensorlistgetitem_lstm_876_tensorarrayunstack_tensorlistfromtensorN
;lstm_876_while_lstm_cell_876_matmul_readvariableop_resource:	?P
=lstm_876_while_lstm_cell_876_matmul_1_readvariableop_resource:	d?K
<lstm_876_while_lstm_cell_876_biasadd_readvariableop_resource:	???3lstm_876/while/lstm_cell_876/BiasAdd/ReadVariableOp?2lstm_876/while/lstm_cell_876/MatMul/ReadVariableOp?4lstm_876/while/lstm_cell_876/MatMul_1/ReadVariableOp?
@lstm_876/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_876/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_876_while_tensorarrayv2read_tensorlistgetitem_lstm_876_tensorarrayunstack_tensorlistfromtensor_0lstm_876_while_placeholderIlstm_876/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_876/while/lstm_cell_876/MatMul/ReadVariableOpReadVariableOp=lstm_876_while_lstm_cell_876_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_876/while/lstm_cell_876/MatMulMatMul9lstm_876/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_876/while/lstm_cell_876/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_876/while/lstm_cell_876/MatMul_1/ReadVariableOpReadVariableOp?lstm_876_while_lstm_cell_876_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_876/while/lstm_cell_876/MatMul_1MatMullstm_876_while_placeholder_2<lstm_876/while/lstm_cell_876/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_876/while/lstm_cell_876/addAddV2-lstm_876/while/lstm_cell_876/MatMul:product:0/lstm_876/while/lstm_cell_876/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_876/while/lstm_cell_876/BiasAdd/ReadVariableOpReadVariableOp>lstm_876_while_lstm_cell_876_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_876/while/lstm_cell_876/BiasAddBiasAdd$lstm_876/while/lstm_cell_876/add:z:0;lstm_876/while/lstm_cell_876/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_876/while/lstm_cell_876/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_876/while/lstm_cell_876/splitSplit5lstm_876/while/lstm_cell_876/split/split_dim:output:0-lstm_876/while/lstm_cell_876/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_876/while/lstm_cell_876/SigmoidSigmoid+lstm_876/while/lstm_cell_876/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_876/while/lstm_cell_876/Sigmoid_1Sigmoid+lstm_876/while/lstm_cell_876/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_876/while/lstm_cell_876/mulMul*lstm_876/while/lstm_cell_876/Sigmoid_1:y:0lstm_876_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_876/while/lstm_cell_876/ReluRelu+lstm_876/while/lstm_cell_876/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_876/while/lstm_cell_876/mul_1Mul(lstm_876/while/lstm_cell_876/Sigmoid:y:0/lstm_876/while/lstm_cell_876/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_876/while/lstm_cell_876/add_1AddV2$lstm_876/while/lstm_cell_876/mul:z:0&lstm_876/while/lstm_cell_876/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_876/while/lstm_cell_876/Sigmoid_2Sigmoid+lstm_876/while/lstm_cell_876/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_876/while/lstm_cell_876/Relu_1Relu&lstm_876/while/lstm_cell_876/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_876/while/lstm_cell_876/mul_2Mul*lstm_876/while/lstm_cell_876/Sigmoid_2:y:01lstm_876/while/lstm_cell_876/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_876/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_876_while_placeholder_1lstm_876_while_placeholder&lstm_876/while/lstm_cell_876/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_876/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_876/while/addAddV2lstm_876_while_placeholderlstm_876/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_876/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_876/while/add_1AddV2*lstm_876_while_lstm_876_while_loop_counterlstm_876/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_876/while/IdentityIdentitylstm_876/while/add_1:z:0^lstm_876/while/NoOp*
T0*
_output_shapes
: ?
lstm_876/while/Identity_1Identity0lstm_876_while_lstm_876_while_maximum_iterations^lstm_876/while/NoOp*
T0*
_output_shapes
: t
lstm_876/while/Identity_2Identitylstm_876/while/add:z:0^lstm_876/while/NoOp*
T0*
_output_shapes
: ?
lstm_876/while/Identity_3IdentityClstm_876/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_876/while/NoOp*
T0*
_output_shapes
: ?
lstm_876/while/Identity_4Identity&lstm_876/while/lstm_cell_876/mul_2:z:0^lstm_876/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_876/while/Identity_5Identity&lstm_876/while/lstm_cell_876/add_1:z:0^lstm_876/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_876/while/NoOpNoOp4^lstm_876/while/lstm_cell_876/BiasAdd/ReadVariableOp3^lstm_876/while/lstm_cell_876/MatMul/ReadVariableOp5^lstm_876/while/lstm_cell_876/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_876_while_identity lstm_876/while/Identity:output:0"?
lstm_876_while_identity_1"lstm_876/while/Identity_1:output:0"?
lstm_876_while_identity_2"lstm_876/while/Identity_2:output:0"?
lstm_876_while_identity_3"lstm_876/while/Identity_3:output:0"?
lstm_876_while_identity_4"lstm_876/while/Identity_4:output:0"?
lstm_876_while_identity_5"lstm_876/while/Identity_5:output:0"T
'lstm_876_while_lstm_876_strided_slice_1)lstm_876_while_lstm_876_strided_slice_1_0"~
<lstm_876_while_lstm_cell_876_biasadd_readvariableop_resource>lstm_876_while_lstm_cell_876_biasadd_readvariableop_resource_0"?
=lstm_876_while_lstm_cell_876_matmul_1_readvariableop_resource?lstm_876_while_lstm_cell_876_matmul_1_readvariableop_resource_0"|
;lstm_876_while_lstm_cell_876_matmul_readvariableop_resource=lstm_876_while_lstm_cell_876_matmul_readvariableop_resource_0"?
clstm_876_while_tensorarrayv2read_tensorlistgetitem_lstm_876_tensorarrayunstack_tensorlistfromtensorelstm_876_while_tensorarrayv2read_tensorlistgetitem_lstm_876_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_876/while/lstm_cell_876/BiasAdd/ReadVariableOp3lstm_876/while/lstm_cell_876/BiasAdd/ReadVariableOp2h
2lstm_876/while/lstm_cell_876/MatMul/ReadVariableOp2lstm_876/while/lstm_cell_876/MatMul/ReadVariableOp2l
4lstm_876/while/lstm_cell_876/MatMul_1/ReadVariableOp4lstm_876/while/lstm_cell_876/MatMul_1/ReadVariableOp: 
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
while_cond_5235937
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5235937___redundant_placeholder05
1while_while_cond_5235937___redundant_placeholder15
1while_while_cond_5235937___redundant_placeholder25
1while_while_cond_5235937___redundant_placeholder3
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
while_cond_5231929
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5231929___redundant_placeholder05
1while_while_cond_5231929___redundant_placeholder15
1while_while_cond_5231929___redundant_placeholder25
1while_while_cond_5231929___redundant_placeholder3
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
while_cond_5235651
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5235651___redundant_placeholder05
1while_while_cond_5235651___redundant_placeholder15
1while_while_cond_5235651___redundant_placeholder25
1while_while_cond_5235651___redundant_placeholder3
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
?
?
*__inference_lstm_878_layer_call_fn_5235593

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
E__inference_lstm_878_layer_call_and_return_conditional_losses_5232864o
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
?
?
J__inference_lstm_cell_876_layer_call_and_return_conditional_losses_5231362

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
?K
?
E__inference_lstm_876_layer_call_and_return_conditional_losses_5234504
inputs_0?
,lstm_cell_876_matmul_readvariableop_resource:	?A
.lstm_cell_876_matmul_1_readvariableop_resource:	d?<
-lstm_cell_876_biasadd_readvariableop_resource:	?
identity??$lstm_cell_876/BiasAdd/ReadVariableOp?#lstm_cell_876/MatMul/ReadVariableOp?%lstm_cell_876/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_876/MatMul/ReadVariableOpReadVariableOp,lstm_cell_876_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_876/MatMulMatMulstrided_slice_2:output:0+lstm_cell_876/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_876/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_876_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_876/MatMul_1MatMulzeros:output:0-lstm_cell_876/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_876/addAddV2lstm_cell_876/MatMul:product:0 lstm_cell_876/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_876/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_876_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_876/BiasAddBiasAddlstm_cell_876/add:z:0,lstm_cell_876/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_876/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_876/splitSplit&lstm_cell_876/split/split_dim:output:0lstm_cell_876/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_876/SigmoidSigmoidlstm_cell_876/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_876/Sigmoid_1Sigmoidlstm_cell_876/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_876/mulMullstm_cell_876/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_876/ReluRelulstm_cell_876/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_876/mul_1Mullstm_cell_876/Sigmoid:y:0 lstm_cell_876/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_876/add_1AddV2lstm_cell_876/mul:z:0lstm_cell_876/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_876/Sigmoid_2Sigmoidlstm_cell_876/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_876/Relu_1Relulstm_cell_876/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_876/mul_2Mullstm_cell_876/Sigmoid_2:y:0"lstm_cell_876/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_876_matmul_readvariableop_resource.lstm_cell_876_matmul_1_readvariableop_resource-lstm_cell_876_biasadd_readvariableop_resource*
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
while_body_5234420*
condR
while_cond_5234419*K
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
NoOpNoOp%^lstm_cell_876/BiasAdd/ReadVariableOp$^lstm_cell_876/MatMul/ReadVariableOp&^lstm_cell_876/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_876/BiasAdd/ReadVariableOp$lstm_cell_876/BiasAdd/ReadVariableOp2J
#lstm_cell_876/MatMul/ReadVariableOp#lstm_cell_876/MatMul/ReadVariableOp2N
%lstm_cell_876/MatMul_1/ReadVariableOp%lstm_cell_876/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
/__inference_lstm_cell_878_layer_call_fn_5236397

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
J__inference_lstm_cell_878_layer_call_and_return_conditional_losses_5231916o
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
?8
?
while_body_5232780
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_878_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_878_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_878_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_878_matmul_readvariableop_resource:2(F
4while_lstm_cell_878_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_878_biasadd_readvariableop_resource:(??*while/lstm_cell_878/BiasAdd/ReadVariableOp?)while/lstm_cell_878/MatMul/ReadVariableOp?+while/lstm_cell_878/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_878/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_878_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_878/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_878/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_878/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_878_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_878/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_878/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_878/addAddV2$while/lstm_cell_878/MatMul:product:0&while/lstm_cell_878/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_878/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_878_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_878/BiasAddBiasAddwhile/lstm_cell_878/add:z:02while/lstm_cell_878/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_878/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_878/splitSplit,while/lstm_cell_878/split/split_dim:output:0$while/lstm_cell_878/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_878/SigmoidSigmoid"while/lstm_cell_878/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_878/Sigmoid_1Sigmoid"while/lstm_cell_878/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_878/mulMul!while/lstm_cell_878/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_878/ReluRelu"while/lstm_cell_878/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_878/mul_1Mulwhile/lstm_cell_878/Sigmoid:y:0&while/lstm_cell_878/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_878/add_1AddV2while/lstm_cell_878/mul:z:0while/lstm_cell_878/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_878/Sigmoid_2Sigmoid"while/lstm_cell_878/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_878/Relu_1Reluwhile/lstm_cell_878/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_878/mul_2Mul!while/lstm_cell_878/Sigmoid_2:y:0(while/lstm_cell_878/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_878/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_878/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_878/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_878/BiasAdd/ReadVariableOp*^while/lstm_cell_878/MatMul/ReadVariableOp,^while/lstm_cell_878/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_878_biasadd_readvariableop_resource5while_lstm_cell_878_biasadd_readvariableop_resource_0"n
4while_lstm_cell_878_matmul_1_readvariableop_resource6while_lstm_cell_878_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_878_matmul_readvariableop_resource4while_lstm_cell_878_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_878/BiasAdd/ReadVariableOp*while/lstm_cell_878/BiasAdd/ReadVariableOp2V
)while/lstm_cell_878/MatMul/ReadVariableOp)while/lstm_cell_878/MatMul/ReadVariableOp2Z
+while/lstm_cell_878/MatMul_1/ReadVariableOp+while/lstm_cell_878/MatMul_1/ReadVariableOp: 
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
while_cond_5231229
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5231229___redundant_placeholder05
1while_while_cond_5231229___redundant_placeholder15
1while_while_cond_5231229___redundant_placeholder25
1while_while_cond_5231229___redundant_placeholder3
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
*__inference_lstm_876_layer_call_fn_5234328
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
E__inference_lstm_876_layer_call_and_return_conditional_losses_5231299|
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
?
E__inference_lstm_878_layer_call_and_return_conditional_losses_5231999

inputs'
lstm_cell_878_5231917:2('
lstm_cell_878_5231919:
(#
lstm_cell_878_5231921:(
identity??%lstm_cell_878/StatefulPartitionedCall?while;
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
%lstm_cell_878/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_878_5231917lstm_cell_878_5231919lstm_cell_878_5231921*
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
J__inference_lstm_cell_878_layer_call_and_return_conditional_losses_5231916n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_878_5231917lstm_cell_878_5231919lstm_cell_878_5231921*
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
while_body_5231930*
condR
while_cond_5231929*K
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
NoOpNoOp&^lstm_cell_878/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_878/StatefulPartitionedCall%lstm_cell_878/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?

?
lstm_876_while_cond_5233521.
*lstm_876_while_lstm_876_while_loop_counter4
0lstm_876_while_lstm_876_while_maximum_iterations
lstm_876_while_placeholder 
lstm_876_while_placeholder_1 
lstm_876_while_placeholder_2 
lstm_876_while_placeholder_30
,lstm_876_while_less_lstm_876_strided_slice_1G
Clstm_876_while_lstm_876_while_cond_5233521___redundant_placeholder0G
Clstm_876_while_lstm_876_while_cond_5233521___redundant_placeholder1G
Clstm_876_while_lstm_876_while_cond_5233521___redundant_placeholder2G
Clstm_876_while_lstm_876_while_cond_5233521___redundant_placeholder3
lstm_876_while_identity
?
lstm_876/while/LessLesslstm_876_while_placeholder,lstm_876_while_less_lstm_876_strided_slice_1*
T0*
_output_shapes
: ]
lstm_876/while/IdentityIdentitylstm_876/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_876_while_identity lstm_876/while/Identity:output:0*(
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
F__inference_dense_292_layer_call_and_return_conditional_losses_5232666

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
?
while_body_5232564
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_878_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_878_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_878_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_878_matmul_readvariableop_resource:2(F
4while_lstm_cell_878_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_878_biasadd_readvariableop_resource:(??*while/lstm_cell_878/BiasAdd/ReadVariableOp?)while/lstm_cell_878/MatMul/ReadVariableOp?+while/lstm_cell_878/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_878/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_878_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_878/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_878/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_878/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_878_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_878/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_878/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_878/addAddV2$while/lstm_cell_878/MatMul:product:0&while/lstm_cell_878/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_878/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_878_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_878/BiasAddBiasAddwhile/lstm_cell_878/add:z:02while/lstm_cell_878/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_878/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_878/splitSplit,while/lstm_cell_878/split/split_dim:output:0$while/lstm_cell_878/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_878/SigmoidSigmoid"while/lstm_cell_878/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_878/Sigmoid_1Sigmoid"while/lstm_cell_878/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_878/mulMul!while/lstm_cell_878/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_878/ReluRelu"while/lstm_cell_878/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_878/mul_1Mulwhile/lstm_cell_878/Sigmoid:y:0&while/lstm_cell_878/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_878/add_1AddV2while/lstm_cell_878/mul:z:0while/lstm_cell_878/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_878/Sigmoid_2Sigmoid"while/lstm_cell_878/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_878/Relu_1Reluwhile/lstm_cell_878/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_878/mul_2Mul!while/lstm_cell_878/Sigmoid_2:y:0(while/lstm_cell_878/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_878/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_878/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_878/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_878/BiasAdd/ReadVariableOp*^while/lstm_cell_878/MatMul/ReadVariableOp,^while/lstm_cell_878/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_878_biasadd_readvariableop_resource5while_lstm_cell_878_biasadd_readvariableop_resource_0"n
4while_lstm_cell_878_matmul_1_readvariableop_resource6while_lstm_cell_878_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_878_matmul_readvariableop_resource4while_lstm_cell_878_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_878/BiasAdd/ReadVariableOp*while/lstm_cell_878/BiasAdd/ReadVariableOp2V
)while/lstm_cell_878/MatMul/ReadVariableOp)while/lstm_cell_878/MatMul/ReadVariableOp2Z
+while/lstm_cell_878/MatMul_1/ReadVariableOp+while/lstm_cell_878/MatMul_1/ReadVariableOp: 
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
?
?
K__inference_sequential_292_layer_call_and_return_conditional_losses_5233374
lstm_876_input#
lstm_876_5233347:	?#
lstm_876_5233349:	d?
lstm_876_5233351:	?#
lstm_877_5233354:	d?#
lstm_877_5233356:	2?
lstm_877_5233358:	?"
lstm_878_5233361:2("
lstm_878_5233363:
(
lstm_878_5233365:(#
dense_292_5233368:

dense_292_5233370:
identity??!dense_292/StatefulPartitionedCall? lstm_876/StatefulPartitionedCall? lstm_877/StatefulPartitionedCall? lstm_878/StatefulPartitionedCall?
 lstm_876/StatefulPartitionedCallStatefulPartitionedCalllstm_876_inputlstm_876_5233347lstm_876_5233349lstm_876_5233351*
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
E__inference_lstm_876_layer_call_and_return_conditional_losses_5233194?
 lstm_877/StatefulPartitionedCallStatefulPartitionedCall)lstm_876/StatefulPartitionedCall:output:0lstm_877_5233354lstm_877_5233356lstm_877_5233358*
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
E__inference_lstm_877_layer_call_and_return_conditional_losses_5233029?
 lstm_878/StatefulPartitionedCallStatefulPartitionedCall)lstm_877/StatefulPartitionedCall:output:0lstm_878_5233361lstm_878_5233363lstm_878_5233365*
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
E__inference_lstm_878_layer_call_and_return_conditional_losses_5232864?
!dense_292/StatefulPartitionedCallStatefulPartitionedCall)lstm_878/StatefulPartitionedCall:output:0dense_292_5233368dense_292_5233370*
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
F__inference_dense_292_layer_call_and_return_conditional_losses_5232666y
IdentityIdentity*dense_292/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_292/StatefulPartitionedCall!^lstm_876/StatefulPartitionedCall!^lstm_877/StatefulPartitionedCall!^lstm_878/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_292/StatefulPartitionedCall!dense_292/StatefulPartitionedCall2D
 lstm_876/StatefulPartitionedCall lstm_876/StatefulPartitionedCall2D
 lstm_877/StatefulPartitionedCall lstm_877/StatefulPartitionedCall2D
 lstm_878/StatefulPartitionedCall lstm_878/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_876_input
?8
?
E__inference_lstm_877_layer_call_and_return_conditional_losses_5231840

inputs(
lstm_cell_877_5231758:	d?(
lstm_cell_877_5231760:	2?$
lstm_cell_877_5231762:	?
identity??%lstm_cell_877/StatefulPartitionedCall?while;
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
%lstm_cell_877/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_877_5231758lstm_cell_877_5231760lstm_cell_877_5231762*
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
J__inference_lstm_cell_877_layer_call_and_return_conditional_losses_5231712n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_877_5231758lstm_cell_877_5231760lstm_cell_877_5231762*
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
while_body_5231771*
condR
while_cond_5231770*K
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
NoOpNoOp&^lstm_cell_877/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_877/StatefulPartitionedCall%lstm_cell_877/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?
?
while_cond_5235794
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5235794___redundant_placeholder05
1while_while_cond_5235794___redundant_placeholder15
1while_while_cond_5235794___redundant_placeholder25
1while_while_cond_5235794___redundant_placeholder3
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

?
lstm_877_while_cond_5233660.
*lstm_877_while_lstm_877_while_loop_counter4
0lstm_877_while_lstm_877_while_maximum_iterations
lstm_877_while_placeholder 
lstm_877_while_placeholder_1 
lstm_877_while_placeholder_2 
lstm_877_while_placeholder_30
,lstm_877_while_less_lstm_877_strided_slice_1G
Clstm_877_while_lstm_877_while_cond_5233660___redundant_placeholder0G
Clstm_877_while_lstm_877_while_cond_5233660___redundant_placeholder1G
Clstm_877_while_lstm_877_while_cond_5233660___redundant_placeholder2G
Clstm_877_while_lstm_877_while_cond_5233660___redundant_placeholder3
lstm_877_while_identity
?
lstm_877/while/LessLesslstm_877_while_placeholder,lstm_877_while_less_lstm_877_strided_slice_1*
T0*
_output_shapes
: ]
lstm_877/while/IdentityIdentitylstm_877/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_877_while_identity lstm_877/while/Identity:output:0*(
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
?J
?
E__inference_lstm_877_layer_call_and_return_conditional_losses_5235406

inputs?
,lstm_cell_877_matmul_readvariableop_resource:	d?A
.lstm_cell_877_matmul_1_readvariableop_resource:	2?<
-lstm_cell_877_biasadd_readvariableop_resource:	?
identity??$lstm_cell_877/BiasAdd/ReadVariableOp?#lstm_cell_877/MatMul/ReadVariableOp?%lstm_cell_877/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_877/MatMul/ReadVariableOpReadVariableOp,lstm_cell_877_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_877/MatMulMatMulstrided_slice_2:output:0+lstm_cell_877/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_877/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_877_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_877/MatMul_1MatMulzeros:output:0-lstm_cell_877/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_877/addAddV2lstm_cell_877/MatMul:product:0 lstm_cell_877/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_877/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_877_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_877/BiasAddBiasAddlstm_cell_877/add:z:0,lstm_cell_877/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_877/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_877/splitSplit&lstm_cell_877/split/split_dim:output:0lstm_cell_877/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_877/SigmoidSigmoidlstm_cell_877/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_877/Sigmoid_1Sigmoidlstm_cell_877/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_877/mulMullstm_cell_877/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_877/ReluRelulstm_cell_877/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_877/mul_1Mullstm_cell_877/Sigmoid:y:0 lstm_cell_877/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_877/add_1AddV2lstm_cell_877/mul:z:0lstm_cell_877/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_877/Sigmoid_2Sigmoidlstm_cell_877/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_877/Relu_1Relulstm_cell_877/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_877/mul_2Mullstm_cell_877/Sigmoid_2:y:0"lstm_cell_877/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_877_matmul_readvariableop_resource.lstm_cell_877_matmul_1_readvariableop_resource-lstm_cell_877_biasadd_readvariableop_resource*
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
while_body_5235322*
condR
while_cond_5235321*K
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
NoOpNoOp%^lstm_cell_877/BiasAdd/ReadVariableOp$^lstm_cell_877/MatMul/ReadVariableOp&^lstm_cell_877/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_877/BiasAdd/ReadVariableOp$lstm_cell_877/BiasAdd/ReadVariableOp2J
#lstm_cell_877/MatMul/ReadVariableOp#lstm_cell_877/MatMul/ReadVariableOp2N
%lstm_cell_877/MatMul_1/ReadVariableOp%lstm_cell_877/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
while_cond_5232779
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5232779___redundant_placeholder05
1while_while_cond_5232779___redundant_placeholder15
1while_while_cond_5232779___redundant_placeholder25
1while_while_cond_5232779___redundant_placeholder3
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
?
E__inference_lstm_878_layer_call_and_return_conditional_losses_5232190

inputs'
lstm_cell_878_5232108:2('
lstm_cell_878_5232110:
(#
lstm_cell_878_5232112:(
identity??%lstm_cell_878/StatefulPartitionedCall?while;
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
%lstm_cell_878/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_878_5232108lstm_cell_878_5232110lstm_cell_878_5232112*
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
J__inference_lstm_cell_878_layer_call_and_return_conditional_losses_5232062n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_878_5232108lstm_cell_878_5232110lstm_cell_878_5232112*
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
while_body_5232121*
condR
while_cond_5232120*K
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
NoOpNoOp&^lstm_cell_878/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_878/StatefulPartitionedCall%lstm_cell_878/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?
?
while_cond_5235321
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5235321___redundant_placeholder05
1while_while_cond_5235321___redundant_placeholder15
1while_while_cond_5235321___redundant_placeholder25
1while_while_cond_5235321___redundant_placeholder3
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
while_cond_5236080
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5236080___redundant_placeholder05
1while_while_cond_5236080___redundant_placeholder15
1while_while_cond_5236080___redundant_placeholder25
1while_while_cond_5236080___redundant_placeholder3
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
?#
?
while_body_5231421
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_876_5231445_0:	?0
while_lstm_cell_876_5231447_0:	d?,
while_lstm_cell_876_5231449_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_876_5231445:	?.
while_lstm_cell_876_5231447:	d?*
while_lstm_cell_876_5231449:	???+while/lstm_cell_876/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_876/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_876_5231445_0while_lstm_cell_876_5231447_0while_lstm_cell_876_5231449_0*
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
J__inference_lstm_cell_876_layer_call_and_return_conditional_losses_5231362?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_876/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_876/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_876/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_876/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_876_5231445while_lstm_cell_876_5231445_0"<
while_lstm_cell_876_5231447while_lstm_cell_876_5231447_0"<
while_lstm_cell_876_5231449while_lstm_cell_876_5231449_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_876/StatefulPartitionedCall+while/lstm_cell_876/StatefulPartitionedCall: 
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
while_cond_5231420
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5231420___redundant_placeholder05
1while_while_cond_5231420___redundant_placeholder15
1while_while_cond_5231420___redundant_placeholder25
1while_while_cond_5231420___redundant_placeholder3
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

?
0__inference_sequential_292_layer_call_fn_5233463

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
K__inference_sequential_292_layer_call_and_return_conditional_losses_5233262o
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
?
?
J__inference_lstm_cell_876_layer_call_and_return_conditional_losses_5231216

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
?8
?
while_body_5234849
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_876_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_876_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_876_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_876_matmul_readvariableop_resource:	?G
4while_lstm_cell_876_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_876_biasadd_readvariableop_resource:	???*while/lstm_cell_876/BiasAdd/ReadVariableOp?)while/lstm_cell_876/MatMul/ReadVariableOp?+while/lstm_cell_876/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_876/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_876_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_876/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_876/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_876/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_876_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_876/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_876/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_876/addAddV2$while/lstm_cell_876/MatMul:product:0&while/lstm_cell_876/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_876/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_876_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_876/BiasAddBiasAddwhile/lstm_cell_876/add:z:02while/lstm_cell_876/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_876/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_876/splitSplit,while/lstm_cell_876/split/split_dim:output:0$while/lstm_cell_876/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_876/SigmoidSigmoid"while/lstm_cell_876/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_876/Sigmoid_1Sigmoid"while/lstm_cell_876/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_876/mulMul!while/lstm_cell_876/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_876/ReluRelu"while/lstm_cell_876/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_876/mul_1Mulwhile/lstm_cell_876/Sigmoid:y:0&while/lstm_cell_876/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_876/add_1AddV2while/lstm_cell_876/mul:z:0while/lstm_cell_876/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_876/Sigmoid_2Sigmoid"while/lstm_cell_876/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_876/Relu_1Reluwhile/lstm_cell_876/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_876/mul_2Mul!while/lstm_cell_876/Sigmoid_2:y:0(while/lstm_cell_876/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_876/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_876/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_876/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_876/BiasAdd/ReadVariableOp*^while/lstm_cell_876/MatMul/ReadVariableOp,^while/lstm_cell_876/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_876_biasadd_readvariableop_resource5while_lstm_cell_876_biasadd_readvariableop_resource_0"n
4while_lstm_cell_876_matmul_1_readvariableop_resource6while_lstm_cell_876_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_876_matmul_readvariableop_resource4while_lstm_cell_876_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_876/BiasAdd/ReadVariableOp*while/lstm_cell_876/BiasAdd/ReadVariableOp2V
)while/lstm_cell_876/MatMul/ReadVariableOp)while/lstm_cell_876/MatMul/ReadVariableOp2Z
+while/lstm_cell_876/MatMul_1/ReadVariableOp+while/lstm_cell_876/MatMul_1/ReadVariableOp: 
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
?
?
J__inference_lstm_cell_877_layer_call_and_return_conditional_losses_5231712

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
while_body_5235179
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_877_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_877_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_877_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_877_matmul_readvariableop_resource:	d?G
4while_lstm_cell_877_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_877_biasadd_readvariableop_resource:	???*while/lstm_cell_877/BiasAdd/ReadVariableOp?)while/lstm_cell_877/MatMul/ReadVariableOp?+while/lstm_cell_877/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_877/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_877_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_877/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_877/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_877/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_877_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_877/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_877/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_877/addAddV2$while/lstm_cell_877/MatMul:product:0&while/lstm_cell_877/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_877/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_877_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_877/BiasAddBiasAddwhile/lstm_cell_877/add:z:02while/lstm_cell_877/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_877/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_877/splitSplit,while/lstm_cell_877/split/split_dim:output:0$while/lstm_cell_877/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_877/SigmoidSigmoid"while/lstm_cell_877/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_877/Sigmoid_1Sigmoid"while/lstm_cell_877/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_877/mulMul!while/lstm_cell_877/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_877/ReluRelu"while/lstm_cell_877/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_877/mul_1Mulwhile/lstm_cell_877/Sigmoid:y:0&while/lstm_cell_877/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_877/add_1AddV2while/lstm_cell_877/mul:z:0while/lstm_cell_877/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_877/Sigmoid_2Sigmoid"while/lstm_cell_877/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_877/Relu_1Reluwhile/lstm_cell_877/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_877/mul_2Mul!while/lstm_cell_877/Sigmoid_2:y:0(while/lstm_cell_877/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_877/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_877/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_877/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_877/BiasAdd/ReadVariableOp*^while/lstm_cell_877/MatMul/ReadVariableOp,^while/lstm_cell_877/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_877_biasadd_readvariableop_resource5while_lstm_cell_877_biasadd_readvariableop_resource_0"n
4while_lstm_cell_877_matmul_1_readvariableop_resource6while_lstm_cell_877_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_877_matmul_readvariableop_resource4while_lstm_cell_877_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_877/BiasAdd/ReadVariableOp*while/lstm_cell_877/BiasAdd/ReadVariableOp2V
)while/lstm_cell_877/MatMul/ReadVariableOp)while/lstm_cell_877/MatMul/ReadVariableOp2Z
+while/lstm_cell_877/MatMul_1/ReadVariableOp+while/lstm_cell_877/MatMul_1/ReadVariableOp: 
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
while_cond_5234562
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5234562___redundant_placeholder05
1while_while_cond_5234562___redundant_placeholder15
1while_while_cond_5234562___redundant_placeholder25
1while_while_cond_5234562___redundant_placeholder3
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
while_body_5234706
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_876_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_876_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_876_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_876_matmul_readvariableop_resource:	?G
4while_lstm_cell_876_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_876_biasadd_readvariableop_resource:	???*while/lstm_cell_876/BiasAdd/ReadVariableOp?)while/lstm_cell_876/MatMul/ReadVariableOp?+while/lstm_cell_876/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_876/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_876_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_876/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_876/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_876/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_876_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_876/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_876/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_876/addAddV2$while/lstm_cell_876/MatMul:product:0&while/lstm_cell_876/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_876/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_876_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_876/BiasAddBiasAddwhile/lstm_cell_876/add:z:02while/lstm_cell_876/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_876/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_876/splitSplit,while/lstm_cell_876/split/split_dim:output:0$while/lstm_cell_876/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_876/SigmoidSigmoid"while/lstm_cell_876/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_876/Sigmoid_1Sigmoid"while/lstm_cell_876/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_876/mulMul!while/lstm_cell_876/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_876/ReluRelu"while/lstm_cell_876/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_876/mul_1Mulwhile/lstm_cell_876/Sigmoid:y:0&while/lstm_cell_876/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_876/add_1AddV2while/lstm_cell_876/mul:z:0while/lstm_cell_876/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_876/Sigmoid_2Sigmoid"while/lstm_cell_876/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_876/Relu_1Reluwhile/lstm_cell_876/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_876/mul_2Mul!while/lstm_cell_876/Sigmoid_2:y:0(while/lstm_cell_876/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_876/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_876/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_876/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_876/BiasAdd/ReadVariableOp*^while/lstm_cell_876/MatMul/ReadVariableOp,^while/lstm_cell_876/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_876_biasadd_readvariableop_resource5while_lstm_cell_876_biasadd_readvariableop_resource_0"n
4while_lstm_cell_876_matmul_1_readvariableop_resource6while_lstm_cell_876_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_876_matmul_readvariableop_resource4while_lstm_cell_876_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_876/BiasAdd/ReadVariableOp*while/lstm_cell_876/BiasAdd/ReadVariableOp2V
)while/lstm_cell_876/MatMul/ReadVariableOp)while/lstm_cell_876/MatMul/ReadVariableOp2Z
+while/lstm_cell_876/MatMul_1/ReadVariableOp+while/lstm_cell_876/MatMul_1/ReadVariableOp: 
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
??
?
K__inference_sequential_292_layer_call_and_return_conditional_losses_5233890

inputsH
5lstm_876_lstm_cell_876_matmul_readvariableop_resource:	?J
7lstm_876_lstm_cell_876_matmul_1_readvariableop_resource:	d?E
6lstm_876_lstm_cell_876_biasadd_readvariableop_resource:	?H
5lstm_877_lstm_cell_877_matmul_readvariableop_resource:	d?J
7lstm_877_lstm_cell_877_matmul_1_readvariableop_resource:	2?E
6lstm_877_lstm_cell_877_biasadd_readvariableop_resource:	?G
5lstm_878_lstm_cell_878_matmul_readvariableop_resource:2(I
7lstm_878_lstm_cell_878_matmul_1_readvariableop_resource:
(D
6lstm_878_lstm_cell_878_biasadd_readvariableop_resource:(:
(dense_292_matmul_readvariableop_resource:
7
)dense_292_biasadd_readvariableop_resource:
identity?? dense_292/BiasAdd/ReadVariableOp?dense_292/MatMul/ReadVariableOp?-lstm_876/lstm_cell_876/BiasAdd/ReadVariableOp?,lstm_876/lstm_cell_876/MatMul/ReadVariableOp?.lstm_876/lstm_cell_876/MatMul_1/ReadVariableOp?lstm_876/while?-lstm_877/lstm_cell_877/BiasAdd/ReadVariableOp?,lstm_877/lstm_cell_877/MatMul/ReadVariableOp?.lstm_877/lstm_cell_877/MatMul_1/ReadVariableOp?lstm_877/while?-lstm_878/lstm_cell_878/BiasAdd/ReadVariableOp?,lstm_878/lstm_cell_878/MatMul/ReadVariableOp?.lstm_878/lstm_cell_878/MatMul_1/ReadVariableOp?lstm_878/whileD
lstm_876/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_876/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_876/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_876/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_876/strided_sliceStridedSlicelstm_876/Shape:output:0%lstm_876/strided_slice/stack:output:0'lstm_876/strided_slice/stack_1:output:0'lstm_876/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_876/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_876/zeros/packedPacklstm_876/strided_slice:output:0 lstm_876/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_876/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_876/zerosFilllstm_876/zeros/packed:output:0lstm_876/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_876/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_876/zeros_1/packedPacklstm_876/strided_slice:output:0"lstm_876/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_876/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_876/zeros_1Fill lstm_876/zeros_1/packed:output:0lstm_876/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_876/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_876/transpose	Transposeinputs lstm_876/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_876/Shape_1Shapelstm_876/transpose:y:0*
T0*
_output_shapes
:h
lstm_876/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_876/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_876/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_876/strided_slice_1StridedSlicelstm_876/Shape_1:output:0'lstm_876/strided_slice_1/stack:output:0)lstm_876/strided_slice_1/stack_1:output:0)lstm_876/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_876/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_876/TensorArrayV2TensorListReserve-lstm_876/TensorArrayV2/element_shape:output:0!lstm_876/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_876/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_876/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_876/transpose:y:0Glstm_876/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_876/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_876/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_876/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_876/strided_slice_2StridedSlicelstm_876/transpose:y:0'lstm_876/strided_slice_2/stack:output:0)lstm_876/strided_slice_2/stack_1:output:0)lstm_876/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_876/lstm_cell_876/MatMul/ReadVariableOpReadVariableOp5lstm_876_lstm_cell_876_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_876/lstm_cell_876/MatMulMatMul!lstm_876/strided_slice_2:output:04lstm_876/lstm_cell_876/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_876/lstm_cell_876/MatMul_1/ReadVariableOpReadVariableOp7lstm_876_lstm_cell_876_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_876/lstm_cell_876/MatMul_1MatMullstm_876/zeros:output:06lstm_876/lstm_cell_876/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_876/lstm_cell_876/addAddV2'lstm_876/lstm_cell_876/MatMul:product:0)lstm_876/lstm_cell_876/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_876/lstm_cell_876/BiasAdd/ReadVariableOpReadVariableOp6lstm_876_lstm_cell_876_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_876/lstm_cell_876/BiasAddBiasAddlstm_876/lstm_cell_876/add:z:05lstm_876/lstm_cell_876/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_876/lstm_cell_876/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_876/lstm_cell_876/splitSplit/lstm_876/lstm_cell_876/split/split_dim:output:0'lstm_876/lstm_cell_876/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_876/lstm_cell_876/SigmoidSigmoid%lstm_876/lstm_cell_876/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_876/lstm_cell_876/Sigmoid_1Sigmoid%lstm_876/lstm_cell_876/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_876/lstm_cell_876/mulMul$lstm_876/lstm_cell_876/Sigmoid_1:y:0lstm_876/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_876/lstm_cell_876/ReluRelu%lstm_876/lstm_cell_876/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_876/lstm_cell_876/mul_1Mul"lstm_876/lstm_cell_876/Sigmoid:y:0)lstm_876/lstm_cell_876/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_876/lstm_cell_876/add_1AddV2lstm_876/lstm_cell_876/mul:z:0 lstm_876/lstm_cell_876/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_876/lstm_cell_876/Sigmoid_2Sigmoid%lstm_876/lstm_cell_876/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_876/lstm_cell_876/Relu_1Relu lstm_876/lstm_cell_876/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_876/lstm_cell_876/mul_2Mul$lstm_876/lstm_cell_876/Sigmoid_2:y:0+lstm_876/lstm_cell_876/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_876/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_876/TensorArrayV2_1TensorListReserve/lstm_876/TensorArrayV2_1/element_shape:output:0!lstm_876/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_876/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_876/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_876/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_876/whileWhile$lstm_876/while/loop_counter:output:0*lstm_876/while/maximum_iterations:output:0lstm_876/time:output:0!lstm_876/TensorArrayV2_1:handle:0lstm_876/zeros:output:0lstm_876/zeros_1:output:0!lstm_876/strided_slice_1:output:0@lstm_876/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_876_lstm_cell_876_matmul_readvariableop_resource7lstm_876_lstm_cell_876_matmul_1_readvariableop_resource6lstm_876_lstm_cell_876_biasadd_readvariableop_resource*
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
lstm_876_while_body_5233522*'
condR
lstm_876_while_cond_5233521*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_876/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_876/TensorArrayV2Stack/TensorListStackTensorListStacklstm_876/while:output:3Blstm_876/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_876/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_876/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_876/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_876/strided_slice_3StridedSlice4lstm_876/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_876/strided_slice_3/stack:output:0)lstm_876/strided_slice_3/stack_1:output:0)lstm_876/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_876/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_876/transpose_1	Transpose4lstm_876/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_876/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_876/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_877/ShapeShapelstm_876/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_877/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_877/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_877/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_877/strided_sliceStridedSlicelstm_877/Shape:output:0%lstm_877/strided_slice/stack:output:0'lstm_877/strided_slice/stack_1:output:0'lstm_877/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_877/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_877/zeros/packedPacklstm_877/strided_slice:output:0 lstm_877/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_877/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_877/zerosFilllstm_877/zeros/packed:output:0lstm_877/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_877/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_877/zeros_1/packedPacklstm_877/strided_slice:output:0"lstm_877/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_877/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_877/zeros_1Fill lstm_877/zeros_1/packed:output:0lstm_877/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_877/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_877/transpose	Transposelstm_876/transpose_1:y:0 lstm_877/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_877/Shape_1Shapelstm_877/transpose:y:0*
T0*
_output_shapes
:h
lstm_877/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_877/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_877/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_877/strided_slice_1StridedSlicelstm_877/Shape_1:output:0'lstm_877/strided_slice_1/stack:output:0)lstm_877/strided_slice_1/stack_1:output:0)lstm_877/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_877/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_877/TensorArrayV2TensorListReserve-lstm_877/TensorArrayV2/element_shape:output:0!lstm_877/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_877/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_877/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_877/transpose:y:0Glstm_877/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_877/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_877/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_877/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_877/strided_slice_2StridedSlicelstm_877/transpose:y:0'lstm_877/strided_slice_2/stack:output:0)lstm_877/strided_slice_2/stack_1:output:0)lstm_877/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_877/lstm_cell_877/MatMul/ReadVariableOpReadVariableOp5lstm_877_lstm_cell_877_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_877/lstm_cell_877/MatMulMatMul!lstm_877/strided_slice_2:output:04lstm_877/lstm_cell_877/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_877/lstm_cell_877/MatMul_1/ReadVariableOpReadVariableOp7lstm_877_lstm_cell_877_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_877/lstm_cell_877/MatMul_1MatMullstm_877/zeros:output:06lstm_877/lstm_cell_877/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_877/lstm_cell_877/addAddV2'lstm_877/lstm_cell_877/MatMul:product:0)lstm_877/lstm_cell_877/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_877/lstm_cell_877/BiasAdd/ReadVariableOpReadVariableOp6lstm_877_lstm_cell_877_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_877/lstm_cell_877/BiasAddBiasAddlstm_877/lstm_cell_877/add:z:05lstm_877/lstm_cell_877/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_877/lstm_cell_877/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_877/lstm_cell_877/splitSplit/lstm_877/lstm_cell_877/split/split_dim:output:0'lstm_877/lstm_cell_877/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_877/lstm_cell_877/SigmoidSigmoid%lstm_877/lstm_cell_877/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_877/lstm_cell_877/Sigmoid_1Sigmoid%lstm_877/lstm_cell_877/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_877/lstm_cell_877/mulMul$lstm_877/lstm_cell_877/Sigmoid_1:y:0lstm_877/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_877/lstm_cell_877/ReluRelu%lstm_877/lstm_cell_877/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_877/lstm_cell_877/mul_1Mul"lstm_877/lstm_cell_877/Sigmoid:y:0)lstm_877/lstm_cell_877/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_877/lstm_cell_877/add_1AddV2lstm_877/lstm_cell_877/mul:z:0 lstm_877/lstm_cell_877/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_877/lstm_cell_877/Sigmoid_2Sigmoid%lstm_877/lstm_cell_877/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_877/lstm_cell_877/Relu_1Relu lstm_877/lstm_cell_877/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_877/lstm_cell_877/mul_2Mul$lstm_877/lstm_cell_877/Sigmoid_2:y:0+lstm_877/lstm_cell_877/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_877/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_877/TensorArrayV2_1TensorListReserve/lstm_877/TensorArrayV2_1/element_shape:output:0!lstm_877/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_877/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_877/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_877/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_877/whileWhile$lstm_877/while/loop_counter:output:0*lstm_877/while/maximum_iterations:output:0lstm_877/time:output:0!lstm_877/TensorArrayV2_1:handle:0lstm_877/zeros:output:0lstm_877/zeros_1:output:0!lstm_877/strided_slice_1:output:0@lstm_877/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_877_lstm_cell_877_matmul_readvariableop_resource7lstm_877_lstm_cell_877_matmul_1_readvariableop_resource6lstm_877_lstm_cell_877_biasadd_readvariableop_resource*
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
lstm_877_while_body_5233661*'
condR
lstm_877_while_cond_5233660*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_877/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_877/TensorArrayV2Stack/TensorListStackTensorListStacklstm_877/while:output:3Blstm_877/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_877/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_877/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_877/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_877/strided_slice_3StridedSlice4lstm_877/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_877/strided_slice_3/stack:output:0)lstm_877/strided_slice_3/stack_1:output:0)lstm_877/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_877/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_877/transpose_1	Transpose4lstm_877/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_877/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_877/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_878/ShapeShapelstm_877/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_878/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_878/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_878/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_878/strided_sliceStridedSlicelstm_878/Shape:output:0%lstm_878/strided_slice/stack:output:0'lstm_878/strided_slice/stack_1:output:0'lstm_878/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_878/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_878/zeros/packedPacklstm_878/strided_slice:output:0 lstm_878/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_878/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_878/zerosFilllstm_878/zeros/packed:output:0lstm_878/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_878/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_878/zeros_1/packedPacklstm_878/strided_slice:output:0"lstm_878/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_878/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_878/zeros_1Fill lstm_878/zeros_1/packed:output:0lstm_878/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_878/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_878/transpose	Transposelstm_877/transpose_1:y:0 lstm_878/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_878/Shape_1Shapelstm_878/transpose:y:0*
T0*
_output_shapes
:h
lstm_878/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_878/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_878/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_878/strided_slice_1StridedSlicelstm_878/Shape_1:output:0'lstm_878/strided_slice_1/stack:output:0)lstm_878/strided_slice_1/stack_1:output:0)lstm_878/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_878/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_878/TensorArrayV2TensorListReserve-lstm_878/TensorArrayV2/element_shape:output:0!lstm_878/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_878/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_878/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_878/transpose:y:0Glstm_878/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_878/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_878/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_878/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_878/strided_slice_2StridedSlicelstm_878/transpose:y:0'lstm_878/strided_slice_2/stack:output:0)lstm_878/strided_slice_2/stack_1:output:0)lstm_878/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_878/lstm_cell_878/MatMul/ReadVariableOpReadVariableOp5lstm_878_lstm_cell_878_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_878/lstm_cell_878/MatMulMatMul!lstm_878/strided_slice_2:output:04lstm_878/lstm_cell_878/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_878/lstm_cell_878/MatMul_1/ReadVariableOpReadVariableOp7lstm_878_lstm_cell_878_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_878/lstm_cell_878/MatMul_1MatMullstm_878/zeros:output:06lstm_878/lstm_cell_878/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_878/lstm_cell_878/addAddV2'lstm_878/lstm_cell_878/MatMul:product:0)lstm_878/lstm_cell_878/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_878/lstm_cell_878/BiasAdd/ReadVariableOpReadVariableOp6lstm_878_lstm_cell_878_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_878/lstm_cell_878/BiasAddBiasAddlstm_878/lstm_cell_878/add:z:05lstm_878/lstm_cell_878/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_878/lstm_cell_878/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_878/lstm_cell_878/splitSplit/lstm_878/lstm_cell_878/split/split_dim:output:0'lstm_878/lstm_cell_878/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_878/lstm_cell_878/SigmoidSigmoid%lstm_878/lstm_cell_878/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_878/lstm_cell_878/Sigmoid_1Sigmoid%lstm_878/lstm_cell_878/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_878/lstm_cell_878/mulMul$lstm_878/lstm_cell_878/Sigmoid_1:y:0lstm_878/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_878/lstm_cell_878/ReluRelu%lstm_878/lstm_cell_878/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_878/lstm_cell_878/mul_1Mul"lstm_878/lstm_cell_878/Sigmoid:y:0)lstm_878/lstm_cell_878/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_878/lstm_cell_878/add_1AddV2lstm_878/lstm_cell_878/mul:z:0 lstm_878/lstm_cell_878/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_878/lstm_cell_878/Sigmoid_2Sigmoid%lstm_878/lstm_cell_878/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_878/lstm_cell_878/Relu_1Relu lstm_878/lstm_cell_878/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_878/lstm_cell_878/mul_2Mul$lstm_878/lstm_cell_878/Sigmoid_2:y:0+lstm_878/lstm_cell_878/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_878/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_878/TensorArrayV2_1TensorListReserve/lstm_878/TensorArrayV2_1/element_shape:output:0!lstm_878/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_878/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_878/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_878/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_878/whileWhile$lstm_878/while/loop_counter:output:0*lstm_878/while/maximum_iterations:output:0lstm_878/time:output:0!lstm_878/TensorArrayV2_1:handle:0lstm_878/zeros:output:0lstm_878/zeros_1:output:0!lstm_878/strided_slice_1:output:0@lstm_878/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_878_lstm_cell_878_matmul_readvariableop_resource7lstm_878_lstm_cell_878_matmul_1_readvariableop_resource6lstm_878_lstm_cell_878_biasadd_readvariableop_resource*
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
lstm_878_while_body_5233800*'
condR
lstm_878_while_cond_5233799*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_878/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_878/TensorArrayV2Stack/TensorListStackTensorListStacklstm_878/while:output:3Blstm_878/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_878/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_878/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_878/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_878/strided_slice_3StridedSlice4lstm_878/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_878/strided_slice_3/stack:output:0)lstm_878/strided_slice_3/stack_1:output:0)lstm_878/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_878/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_878/transpose_1	Transpose4lstm_878/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_878/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_878/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_292/MatMul/ReadVariableOpReadVariableOp(dense_292_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_292/MatMulMatMul!lstm_878/strided_slice_3:output:0'dense_292/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_292/BiasAdd/ReadVariableOpReadVariableOp)dense_292_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_292/BiasAddBiasAdddense_292/MatMul:product:0(dense_292/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_292/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_292/BiasAdd/ReadVariableOp ^dense_292/MatMul/ReadVariableOp.^lstm_876/lstm_cell_876/BiasAdd/ReadVariableOp-^lstm_876/lstm_cell_876/MatMul/ReadVariableOp/^lstm_876/lstm_cell_876/MatMul_1/ReadVariableOp^lstm_876/while.^lstm_877/lstm_cell_877/BiasAdd/ReadVariableOp-^lstm_877/lstm_cell_877/MatMul/ReadVariableOp/^lstm_877/lstm_cell_877/MatMul_1/ReadVariableOp^lstm_877/while.^lstm_878/lstm_cell_878/BiasAdd/ReadVariableOp-^lstm_878/lstm_cell_878/MatMul/ReadVariableOp/^lstm_878/lstm_cell_878/MatMul_1/ReadVariableOp^lstm_878/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_292/BiasAdd/ReadVariableOp dense_292/BiasAdd/ReadVariableOp2B
dense_292/MatMul/ReadVariableOpdense_292/MatMul/ReadVariableOp2^
-lstm_876/lstm_cell_876/BiasAdd/ReadVariableOp-lstm_876/lstm_cell_876/BiasAdd/ReadVariableOp2\
,lstm_876/lstm_cell_876/MatMul/ReadVariableOp,lstm_876/lstm_cell_876/MatMul/ReadVariableOp2`
.lstm_876/lstm_cell_876/MatMul_1/ReadVariableOp.lstm_876/lstm_cell_876/MatMul_1/ReadVariableOp2 
lstm_876/whilelstm_876/while2^
-lstm_877/lstm_cell_877/BiasAdd/ReadVariableOp-lstm_877/lstm_cell_877/BiasAdd/ReadVariableOp2\
,lstm_877/lstm_cell_877/MatMul/ReadVariableOp,lstm_877/lstm_cell_877/MatMul/ReadVariableOp2`
.lstm_877/lstm_cell_877/MatMul_1/ReadVariableOp.lstm_877/lstm_cell_877/MatMul_1/ReadVariableOp2 
lstm_877/whilelstm_877/while2^
-lstm_878/lstm_cell_878/BiasAdd/ReadVariableOp-lstm_878/lstm_cell_878/BiasAdd/ReadVariableOp2\
,lstm_878/lstm_cell_878/MatMul/ReadVariableOp,lstm_878/lstm_cell_878/MatMul/ReadVariableOp2`
.lstm_878/lstm_cell_878/MatMul_1/ReadVariableOp.lstm_878/lstm_cell_878/MatMul_1/ReadVariableOp2 
lstm_878/whilelstm_878/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
??
?
#__inference__traced_restore_5236751
file_prefix3
!assignvariableop_dense_292_kernel:
/
!assignvariableop_1_dense_292_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: C
0assignvariableop_7_lstm_876_lstm_cell_876_kernel:	?M
:assignvariableop_8_lstm_876_lstm_cell_876_recurrent_kernel:	d?=
.assignvariableop_9_lstm_876_lstm_cell_876_bias:	?D
1assignvariableop_10_lstm_877_lstm_cell_877_kernel:	d?N
;assignvariableop_11_lstm_877_lstm_cell_877_recurrent_kernel:	2?>
/assignvariableop_12_lstm_877_lstm_cell_877_bias:	?C
1assignvariableop_13_lstm_878_lstm_cell_878_kernel:2(M
;assignvariableop_14_lstm_878_lstm_cell_878_recurrent_kernel:
(=
/assignvariableop_15_lstm_878_lstm_cell_878_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: =
+assignvariableop_18_adam_dense_292_kernel_m:
7
)assignvariableop_19_adam_dense_292_bias_m:K
8assignvariableop_20_adam_lstm_876_lstm_cell_876_kernel_m:	?U
Bassignvariableop_21_adam_lstm_876_lstm_cell_876_recurrent_kernel_m:	d?E
6assignvariableop_22_adam_lstm_876_lstm_cell_876_bias_m:	?K
8assignvariableop_23_adam_lstm_877_lstm_cell_877_kernel_m:	d?U
Bassignvariableop_24_adam_lstm_877_lstm_cell_877_recurrent_kernel_m:	2?E
6assignvariableop_25_adam_lstm_877_lstm_cell_877_bias_m:	?J
8assignvariableop_26_adam_lstm_878_lstm_cell_878_kernel_m:2(T
Bassignvariableop_27_adam_lstm_878_lstm_cell_878_recurrent_kernel_m:
(D
6assignvariableop_28_adam_lstm_878_lstm_cell_878_bias_m:(=
+assignvariableop_29_adam_dense_292_kernel_v:
7
)assignvariableop_30_adam_dense_292_bias_v:K
8assignvariableop_31_adam_lstm_876_lstm_cell_876_kernel_v:	?U
Bassignvariableop_32_adam_lstm_876_lstm_cell_876_recurrent_kernel_v:	d?E
6assignvariableop_33_adam_lstm_876_lstm_cell_876_bias_v:	?K
8assignvariableop_34_adam_lstm_877_lstm_cell_877_kernel_v:	d?U
Bassignvariableop_35_adam_lstm_877_lstm_cell_877_recurrent_kernel_v:	2?E
6assignvariableop_36_adam_lstm_877_lstm_cell_877_bias_v:	?J
8assignvariableop_37_adam_lstm_878_lstm_cell_878_kernel_v:2(T
Bassignvariableop_38_adam_lstm_878_lstm_cell_878_recurrent_kernel_v:
(D
6assignvariableop_39_adam_lstm_878_lstm_cell_878_bias_v:(
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
AssignVariableOpAssignVariableOp!assignvariableop_dense_292_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_292_biasIdentity_1:output:0"/device:CPU:0*
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
AssignVariableOp_7AssignVariableOp0assignvariableop_7_lstm_876_lstm_cell_876_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp:assignvariableop_8_lstm_876_lstm_cell_876_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_876_lstm_cell_876_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp1assignvariableop_10_lstm_877_lstm_cell_877_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp;assignvariableop_11_lstm_877_lstm_cell_877_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp/assignvariableop_12_lstm_877_lstm_cell_877_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp1assignvariableop_13_lstm_878_lstm_cell_878_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp;assignvariableop_14_lstm_878_lstm_cell_878_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp/assignvariableop_15_lstm_878_lstm_cell_878_biasIdentity_15:output:0"/device:CPU:0*
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
AssignVariableOp_18AssignVariableOp+assignvariableop_18_adam_dense_292_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp)assignvariableop_19_adam_dense_292_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp8assignvariableop_20_adam_lstm_876_lstm_cell_876_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOpBassignvariableop_21_adam_lstm_876_lstm_cell_876_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp6assignvariableop_22_adam_lstm_876_lstm_cell_876_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp8assignvariableop_23_adam_lstm_877_lstm_cell_877_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOpBassignvariableop_24_adam_lstm_877_lstm_cell_877_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_877_lstm_cell_877_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp8assignvariableop_26_adam_lstm_878_lstm_cell_878_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOpBassignvariableop_27_adam_lstm_878_lstm_cell_878_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_lstm_878_lstm_cell_878_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp+assignvariableop_29_adam_dense_292_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_dense_292_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp8assignvariableop_31_adam_lstm_876_lstm_cell_876_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOpBassignvariableop_32_adam_lstm_876_lstm_cell_876_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOp6assignvariableop_33_adam_lstm_876_lstm_cell_876_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOp8assignvariableop_34_adam_lstm_877_lstm_cell_877_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOpBassignvariableop_35_adam_lstm_877_lstm_cell_877_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adam_lstm_877_lstm_cell_877_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_37AssignVariableOp8assignvariableop_37_adam_lstm_878_lstm_cell_878_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_38AssignVariableOpBassignvariableop_38_adam_lstm_878_lstm_cell_878_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_lstm_878_lstm_cell_878_bias_vIdentity_39:output:0"/device:CPU:0*
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
?
?
*__inference_lstm_878_layer_call_fn_5235582

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
E__inference_lstm_878_layer_call_and_return_conditional_losses_5232648o
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
?
?
/__inference_lstm_cell_876_layer_call_fn_5236218

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
J__inference_lstm_cell_876_layer_call_and_return_conditional_losses_5231362o
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

?
lstm_876_while_cond_5233948.
*lstm_876_while_lstm_876_while_loop_counter4
0lstm_876_while_lstm_876_while_maximum_iterations
lstm_876_while_placeholder 
lstm_876_while_placeholder_1 
lstm_876_while_placeholder_2 
lstm_876_while_placeholder_30
,lstm_876_while_less_lstm_876_strided_slice_1G
Clstm_876_while_lstm_876_while_cond_5233948___redundant_placeholder0G
Clstm_876_while_lstm_876_while_cond_5233948___redundant_placeholder1G
Clstm_876_while_lstm_876_while_cond_5233948___redundant_placeholder2G
Clstm_876_while_lstm_876_while_cond_5233948___redundant_placeholder3
lstm_876_while_identity
?
lstm_876/while/LessLesslstm_876_while_placeholder,lstm_876_while_less_lstm_876_strided_slice_1*
T0*
_output_shapes
: ]
lstm_876/while/IdentityIdentitylstm_876/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_876_while_identity lstm_876/while/Identity:output:0*(
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
?T
?
*sequential_292_lstm_878_while_body_5231059L
Hsequential_292_lstm_878_while_sequential_292_lstm_878_while_loop_counterR
Nsequential_292_lstm_878_while_sequential_292_lstm_878_while_maximum_iterations-
)sequential_292_lstm_878_while_placeholder/
+sequential_292_lstm_878_while_placeholder_1/
+sequential_292_lstm_878_while_placeholder_2/
+sequential_292_lstm_878_while_placeholder_3K
Gsequential_292_lstm_878_while_sequential_292_lstm_878_strided_slice_1_0?
?sequential_292_lstm_878_while_tensorarrayv2read_tensorlistgetitem_sequential_292_lstm_878_tensorarrayunstack_tensorlistfromtensor_0^
Lsequential_292_lstm_878_while_lstm_cell_878_matmul_readvariableop_resource_0:2(`
Nsequential_292_lstm_878_while_lstm_cell_878_matmul_1_readvariableop_resource_0:
([
Msequential_292_lstm_878_while_lstm_cell_878_biasadd_readvariableop_resource_0:(*
&sequential_292_lstm_878_while_identity,
(sequential_292_lstm_878_while_identity_1,
(sequential_292_lstm_878_while_identity_2,
(sequential_292_lstm_878_while_identity_3,
(sequential_292_lstm_878_while_identity_4,
(sequential_292_lstm_878_while_identity_5I
Esequential_292_lstm_878_while_sequential_292_lstm_878_strided_slice_1?
?sequential_292_lstm_878_while_tensorarrayv2read_tensorlistgetitem_sequential_292_lstm_878_tensorarrayunstack_tensorlistfromtensor\
Jsequential_292_lstm_878_while_lstm_cell_878_matmul_readvariableop_resource:2(^
Lsequential_292_lstm_878_while_lstm_cell_878_matmul_1_readvariableop_resource:
(Y
Ksequential_292_lstm_878_while_lstm_cell_878_biasadd_readvariableop_resource:(??Bsequential_292/lstm_878/while/lstm_cell_878/BiasAdd/ReadVariableOp?Asequential_292/lstm_878/while/lstm_cell_878/MatMul/ReadVariableOp?Csequential_292/lstm_878/while/lstm_cell_878/MatMul_1/ReadVariableOp?
Osequential_292/lstm_878/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
Asequential_292/lstm_878/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_292_lstm_878_while_tensorarrayv2read_tensorlistgetitem_sequential_292_lstm_878_tensorarrayunstack_tensorlistfromtensor_0)sequential_292_lstm_878_while_placeholderXsequential_292/lstm_878/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
Asequential_292/lstm_878/while/lstm_cell_878/MatMul/ReadVariableOpReadVariableOpLsequential_292_lstm_878_while_lstm_cell_878_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
2sequential_292/lstm_878/while/lstm_cell_878/MatMulMatMulHsequential_292/lstm_878/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_292/lstm_878/while/lstm_cell_878/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
Csequential_292/lstm_878/while/lstm_cell_878/MatMul_1/ReadVariableOpReadVariableOpNsequential_292_lstm_878_while_lstm_cell_878_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
4sequential_292/lstm_878/while/lstm_cell_878/MatMul_1MatMul+sequential_292_lstm_878_while_placeholder_2Ksequential_292/lstm_878/while/lstm_cell_878/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
/sequential_292/lstm_878/while/lstm_cell_878/addAddV2<sequential_292/lstm_878/while/lstm_cell_878/MatMul:product:0>sequential_292/lstm_878/while/lstm_cell_878/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
Bsequential_292/lstm_878/while/lstm_cell_878/BiasAdd/ReadVariableOpReadVariableOpMsequential_292_lstm_878_while_lstm_cell_878_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
3sequential_292/lstm_878/while/lstm_cell_878/BiasAddBiasAdd3sequential_292/lstm_878/while/lstm_cell_878/add:z:0Jsequential_292/lstm_878/while/lstm_cell_878/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(}
;sequential_292/lstm_878/while/lstm_cell_878/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_292/lstm_878/while/lstm_cell_878/splitSplitDsequential_292/lstm_878/while/lstm_cell_878/split/split_dim:output:0<sequential_292/lstm_878/while/lstm_cell_878/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
3sequential_292/lstm_878/while/lstm_cell_878/SigmoidSigmoid:sequential_292/lstm_878/while/lstm_cell_878/split:output:0*
T0*'
_output_shapes
:?????????
?
5sequential_292/lstm_878/while/lstm_cell_878/Sigmoid_1Sigmoid:sequential_292/lstm_878/while/lstm_cell_878/split:output:1*
T0*'
_output_shapes
:?????????
?
/sequential_292/lstm_878/while/lstm_cell_878/mulMul9sequential_292/lstm_878/while/lstm_cell_878/Sigmoid_1:y:0+sequential_292_lstm_878_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
0sequential_292/lstm_878/while/lstm_cell_878/ReluRelu:sequential_292/lstm_878/while/lstm_cell_878/split:output:2*
T0*'
_output_shapes
:?????????
?
1sequential_292/lstm_878/while/lstm_cell_878/mul_1Mul7sequential_292/lstm_878/while/lstm_cell_878/Sigmoid:y:0>sequential_292/lstm_878/while/lstm_cell_878/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
1sequential_292/lstm_878/while/lstm_cell_878/add_1AddV23sequential_292/lstm_878/while/lstm_cell_878/mul:z:05sequential_292/lstm_878/while/lstm_cell_878/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
5sequential_292/lstm_878/while/lstm_cell_878/Sigmoid_2Sigmoid:sequential_292/lstm_878/while/lstm_cell_878/split:output:3*
T0*'
_output_shapes
:?????????
?
2sequential_292/lstm_878/while/lstm_cell_878/Relu_1Relu5sequential_292/lstm_878/while/lstm_cell_878/add_1:z:0*
T0*'
_output_shapes
:?????????
?
1sequential_292/lstm_878/while/lstm_cell_878/mul_2Mul9sequential_292/lstm_878/while/lstm_cell_878/Sigmoid_2:y:0@sequential_292/lstm_878/while/lstm_cell_878/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
Bsequential_292/lstm_878/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_292_lstm_878_while_placeholder_1)sequential_292_lstm_878_while_placeholder5sequential_292/lstm_878/while/lstm_cell_878/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_292/lstm_878/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_292/lstm_878/while/addAddV2)sequential_292_lstm_878_while_placeholder,sequential_292/lstm_878/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_292/lstm_878/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_292/lstm_878/while/add_1AddV2Hsequential_292_lstm_878_while_sequential_292_lstm_878_while_loop_counter.sequential_292/lstm_878/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_292/lstm_878/while/IdentityIdentity'sequential_292/lstm_878/while/add_1:z:0#^sequential_292/lstm_878/while/NoOp*
T0*
_output_shapes
: ?
(sequential_292/lstm_878/while/Identity_1IdentityNsequential_292_lstm_878_while_sequential_292_lstm_878_while_maximum_iterations#^sequential_292/lstm_878/while/NoOp*
T0*
_output_shapes
: ?
(sequential_292/lstm_878/while/Identity_2Identity%sequential_292/lstm_878/while/add:z:0#^sequential_292/lstm_878/while/NoOp*
T0*
_output_shapes
: ?
(sequential_292/lstm_878/while/Identity_3IdentityRsequential_292/lstm_878/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_292/lstm_878/while/NoOp*
T0*
_output_shapes
: ?
(sequential_292/lstm_878/while/Identity_4Identity5sequential_292/lstm_878/while/lstm_cell_878/mul_2:z:0#^sequential_292/lstm_878/while/NoOp*
T0*'
_output_shapes
:?????????
?
(sequential_292/lstm_878/while/Identity_5Identity5sequential_292/lstm_878/while/lstm_cell_878/add_1:z:0#^sequential_292/lstm_878/while/NoOp*
T0*'
_output_shapes
:?????????
?
"sequential_292/lstm_878/while/NoOpNoOpC^sequential_292/lstm_878/while/lstm_cell_878/BiasAdd/ReadVariableOpB^sequential_292/lstm_878/while/lstm_cell_878/MatMul/ReadVariableOpD^sequential_292/lstm_878/while/lstm_cell_878/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_292_lstm_878_while_identity/sequential_292/lstm_878/while/Identity:output:0"]
(sequential_292_lstm_878_while_identity_11sequential_292/lstm_878/while/Identity_1:output:0"]
(sequential_292_lstm_878_while_identity_21sequential_292/lstm_878/while/Identity_2:output:0"]
(sequential_292_lstm_878_while_identity_31sequential_292/lstm_878/while/Identity_3:output:0"]
(sequential_292_lstm_878_while_identity_41sequential_292/lstm_878/while/Identity_4:output:0"]
(sequential_292_lstm_878_while_identity_51sequential_292/lstm_878/while/Identity_5:output:0"?
Ksequential_292_lstm_878_while_lstm_cell_878_biasadd_readvariableop_resourceMsequential_292_lstm_878_while_lstm_cell_878_biasadd_readvariableop_resource_0"?
Lsequential_292_lstm_878_while_lstm_cell_878_matmul_1_readvariableop_resourceNsequential_292_lstm_878_while_lstm_cell_878_matmul_1_readvariableop_resource_0"?
Jsequential_292_lstm_878_while_lstm_cell_878_matmul_readvariableop_resourceLsequential_292_lstm_878_while_lstm_cell_878_matmul_readvariableop_resource_0"?
Esequential_292_lstm_878_while_sequential_292_lstm_878_strided_slice_1Gsequential_292_lstm_878_while_sequential_292_lstm_878_strided_slice_1_0"?
?sequential_292_lstm_878_while_tensorarrayv2read_tensorlistgetitem_sequential_292_lstm_878_tensorarrayunstack_tensorlistfromtensor?sequential_292_lstm_878_while_tensorarrayv2read_tensorlistgetitem_sequential_292_lstm_878_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2?
Bsequential_292/lstm_878/while/lstm_cell_878/BiasAdd/ReadVariableOpBsequential_292/lstm_878/while/lstm_cell_878/BiasAdd/ReadVariableOp2?
Asequential_292/lstm_878/while/lstm_cell_878/MatMul/ReadVariableOpAsequential_292/lstm_878/while/lstm_cell_878/MatMul/ReadVariableOp2?
Csequential_292/lstm_878/while/lstm_cell_878/MatMul_1/ReadVariableOpCsequential_292/lstm_878/while/lstm_cell_878/MatMul_1/ReadVariableOp: 
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
?C
?

lstm_877_while_body_5233661.
*lstm_877_while_lstm_877_while_loop_counter4
0lstm_877_while_lstm_877_while_maximum_iterations
lstm_877_while_placeholder 
lstm_877_while_placeholder_1 
lstm_877_while_placeholder_2 
lstm_877_while_placeholder_3-
)lstm_877_while_lstm_877_strided_slice_1_0i
elstm_877_while_tensorarrayv2read_tensorlistgetitem_lstm_877_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_877_while_lstm_cell_877_matmul_readvariableop_resource_0:	d?R
?lstm_877_while_lstm_cell_877_matmul_1_readvariableop_resource_0:	2?M
>lstm_877_while_lstm_cell_877_biasadd_readvariableop_resource_0:	?
lstm_877_while_identity
lstm_877_while_identity_1
lstm_877_while_identity_2
lstm_877_while_identity_3
lstm_877_while_identity_4
lstm_877_while_identity_5+
'lstm_877_while_lstm_877_strided_slice_1g
clstm_877_while_tensorarrayv2read_tensorlistgetitem_lstm_877_tensorarrayunstack_tensorlistfromtensorN
;lstm_877_while_lstm_cell_877_matmul_readvariableop_resource:	d?P
=lstm_877_while_lstm_cell_877_matmul_1_readvariableop_resource:	2?K
<lstm_877_while_lstm_cell_877_biasadd_readvariableop_resource:	???3lstm_877/while/lstm_cell_877/BiasAdd/ReadVariableOp?2lstm_877/while/lstm_cell_877/MatMul/ReadVariableOp?4lstm_877/while/lstm_cell_877/MatMul_1/ReadVariableOp?
@lstm_877/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_877/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_877_while_tensorarrayv2read_tensorlistgetitem_lstm_877_tensorarrayunstack_tensorlistfromtensor_0lstm_877_while_placeholderIlstm_877/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_877/while/lstm_cell_877/MatMul/ReadVariableOpReadVariableOp=lstm_877_while_lstm_cell_877_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_877/while/lstm_cell_877/MatMulMatMul9lstm_877/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_877/while/lstm_cell_877/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_877/while/lstm_cell_877/MatMul_1/ReadVariableOpReadVariableOp?lstm_877_while_lstm_cell_877_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_877/while/lstm_cell_877/MatMul_1MatMullstm_877_while_placeholder_2<lstm_877/while/lstm_cell_877/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_877/while/lstm_cell_877/addAddV2-lstm_877/while/lstm_cell_877/MatMul:product:0/lstm_877/while/lstm_cell_877/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_877/while/lstm_cell_877/BiasAdd/ReadVariableOpReadVariableOp>lstm_877_while_lstm_cell_877_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_877/while/lstm_cell_877/BiasAddBiasAdd$lstm_877/while/lstm_cell_877/add:z:0;lstm_877/while/lstm_cell_877/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_877/while/lstm_cell_877/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_877/while/lstm_cell_877/splitSplit5lstm_877/while/lstm_cell_877/split/split_dim:output:0-lstm_877/while/lstm_cell_877/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_877/while/lstm_cell_877/SigmoidSigmoid+lstm_877/while/lstm_cell_877/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_877/while/lstm_cell_877/Sigmoid_1Sigmoid+lstm_877/while/lstm_cell_877/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_877/while/lstm_cell_877/mulMul*lstm_877/while/lstm_cell_877/Sigmoid_1:y:0lstm_877_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_877/while/lstm_cell_877/ReluRelu+lstm_877/while/lstm_cell_877/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_877/while/lstm_cell_877/mul_1Mul(lstm_877/while/lstm_cell_877/Sigmoid:y:0/lstm_877/while/lstm_cell_877/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_877/while/lstm_cell_877/add_1AddV2$lstm_877/while/lstm_cell_877/mul:z:0&lstm_877/while/lstm_cell_877/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_877/while/lstm_cell_877/Sigmoid_2Sigmoid+lstm_877/while/lstm_cell_877/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_877/while/lstm_cell_877/Relu_1Relu&lstm_877/while/lstm_cell_877/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_877/while/lstm_cell_877/mul_2Mul*lstm_877/while/lstm_cell_877/Sigmoid_2:y:01lstm_877/while/lstm_cell_877/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_877/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_877_while_placeholder_1lstm_877_while_placeholder&lstm_877/while/lstm_cell_877/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_877/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_877/while/addAddV2lstm_877_while_placeholderlstm_877/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_877/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_877/while/add_1AddV2*lstm_877_while_lstm_877_while_loop_counterlstm_877/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_877/while/IdentityIdentitylstm_877/while/add_1:z:0^lstm_877/while/NoOp*
T0*
_output_shapes
: ?
lstm_877/while/Identity_1Identity0lstm_877_while_lstm_877_while_maximum_iterations^lstm_877/while/NoOp*
T0*
_output_shapes
: t
lstm_877/while/Identity_2Identitylstm_877/while/add:z:0^lstm_877/while/NoOp*
T0*
_output_shapes
: ?
lstm_877/while/Identity_3IdentityClstm_877/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_877/while/NoOp*
T0*
_output_shapes
: ?
lstm_877/while/Identity_4Identity&lstm_877/while/lstm_cell_877/mul_2:z:0^lstm_877/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_877/while/Identity_5Identity&lstm_877/while/lstm_cell_877/add_1:z:0^lstm_877/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_877/while/NoOpNoOp4^lstm_877/while/lstm_cell_877/BiasAdd/ReadVariableOp3^lstm_877/while/lstm_cell_877/MatMul/ReadVariableOp5^lstm_877/while/lstm_cell_877/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_877_while_identity lstm_877/while/Identity:output:0"?
lstm_877_while_identity_1"lstm_877/while/Identity_1:output:0"?
lstm_877_while_identity_2"lstm_877/while/Identity_2:output:0"?
lstm_877_while_identity_3"lstm_877/while/Identity_3:output:0"?
lstm_877_while_identity_4"lstm_877/while/Identity_4:output:0"?
lstm_877_while_identity_5"lstm_877/while/Identity_5:output:0"T
'lstm_877_while_lstm_877_strided_slice_1)lstm_877_while_lstm_877_strided_slice_1_0"~
<lstm_877_while_lstm_cell_877_biasadd_readvariableop_resource>lstm_877_while_lstm_cell_877_biasadd_readvariableop_resource_0"?
=lstm_877_while_lstm_cell_877_matmul_1_readvariableop_resource?lstm_877_while_lstm_cell_877_matmul_1_readvariableop_resource_0"|
;lstm_877_while_lstm_cell_877_matmul_readvariableop_resource=lstm_877_while_lstm_cell_877_matmul_readvariableop_resource_0"?
clstm_877_while_tensorarrayv2read_tensorlistgetitem_lstm_877_tensorarrayunstack_tensorlistfromtensorelstm_877_while_tensorarrayv2read_tensorlistgetitem_lstm_877_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_877/while/lstm_cell_877/BiasAdd/ReadVariableOp3lstm_877/while/lstm_cell_877/BiasAdd/ReadVariableOp2h
2lstm_877/while/lstm_cell_877/MatMul/ReadVariableOp2lstm_877/while/lstm_cell_877/MatMul/ReadVariableOp2l
4lstm_877/while/lstm_cell_877/MatMul_1/ReadVariableOp4lstm_877/while/lstm_cell_877/MatMul_1/ReadVariableOp: 
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
J__inference_lstm_cell_878_layer_call_and_return_conditional_losses_5236446

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
while_cond_5231770
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5231770___redundant_placeholder05
1while_while_cond_5231770___redundant_placeholder15
1while_while_cond_5231770___redundant_placeholder25
1while_while_cond_5231770___redundant_placeholder3
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
while_body_5232945
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_877_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_877_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_877_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_877_matmul_readvariableop_resource:	d?G
4while_lstm_cell_877_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_877_biasadd_readvariableop_resource:	???*while/lstm_cell_877/BiasAdd/ReadVariableOp?)while/lstm_cell_877/MatMul/ReadVariableOp?+while/lstm_cell_877/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_877/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_877_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_877/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_877/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_877/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_877_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_877/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_877/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_877/addAddV2$while/lstm_cell_877/MatMul:product:0&while/lstm_cell_877/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_877/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_877_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_877/BiasAddBiasAddwhile/lstm_cell_877/add:z:02while/lstm_cell_877/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_877/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_877/splitSplit,while/lstm_cell_877/split/split_dim:output:0$while/lstm_cell_877/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_877/SigmoidSigmoid"while/lstm_cell_877/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_877/Sigmoid_1Sigmoid"while/lstm_cell_877/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_877/mulMul!while/lstm_cell_877/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_877/ReluRelu"while/lstm_cell_877/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_877/mul_1Mulwhile/lstm_cell_877/Sigmoid:y:0&while/lstm_cell_877/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_877/add_1AddV2while/lstm_cell_877/mul:z:0while/lstm_cell_877/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_877/Sigmoid_2Sigmoid"while/lstm_cell_877/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_877/Relu_1Reluwhile/lstm_cell_877/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_877/mul_2Mul!while/lstm_cell_877/Sigmoid_2:y:0(while/lstm_cell_877/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_877/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_877/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_877/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_877/BiasAdd/ReadVariableOp*^while/lstm_cell_877/MatMul/ReadVariableOp,^while/lstm_cell_877/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_877_biasadd_readvariableop_resource5while_lstm_cell_877_biasadd_readvariableop_resource_0"n
4while_lstm_cell_877_matmul_1_readvariableop_resource6while_lstm_cell_877_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_877_matmul_readvariableop_resource4while_lstm_cell_877_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_877/BiasAdd/ReadVariableOp*while/lstm_cell_877/BiasAdd/ReadVariableOp2V
)while/lstm_cell_877/MatMul/ReadVariableOp)while/lstm_cell_877/MatMul/ReadVariableOp2Z
+while/lstm_cell_877/MatMul_1/ReadVariableOp+while/lstm_cell_877/MatMul_1/ReadVariableOp: 
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
while_body_5231771
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_877_5231795_0:	d?0
while_lstm_cell_877_5231797_0:	2?,
while_lstm_cell_877_5231799_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_877_5231795:	d?.
while_lstm_cell_877_5231797:	2?*
while_lstm_cell_877_5231799:	???+while/lstm_cell_877/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_877/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_877_5231795_0while_lstm_cell_877_5231797_0while_lstm_cell_877_5231799_0*
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
J__inference_lstm_cell_877_layer_call_and_return_conditional_losses_5231712?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_877/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_877/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_877/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_877/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_877_5231795while_lstm_cell_877_5231795_0"<
while_lstm_cell_877_5231797while_lstm_cell_877_5231797_0"<
while_lstm_cell_877_5231799while_lstm_cell_877_5231799_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_877/StatefulPartitionedCall+while/lstm_cell_877/StatefulPartitionedCall: 
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
J__inference_lstm_cell_878_layer_call_and_return_conditional_losses_5236478

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

lstm_878_while_body_5233800.
*lstm_878_while_lstm_878_while_loop_counter4
0lstm_878_while_lstm_878_while_maximum_iterations
lstm_878_while_placeholder 
lstm_878_while_placeholder_1 
lstm_878_while_placeholder_2 
lstm_878_while_placeholder_3-
)lstm_878_while_lstm_878_strided_slice_1_0i
elstm_878_while_tensorarrayv2read_tensorlistgetitem_lstm_878_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_878_while_lstm_cell_878_matmul_readvariableop_resource_0:2(Q
?lstm_878_while_lstm_cell_878_matmul_1_readvariableop_resource_0:
(L
>lstm_878_while_lstm_cell_878_biasadd_readvariableop_resource_0:(
lstm_878_while_identity
lstm_878_while_identity_1
lstm_878_while_identity_2
lstm_878_while_identity_3
lstm_878_while_identity_4
lstm_878_while_identity_5+
'lstm_878_while_lstm_878_strided_slice_1g
clstm_878_while_tensorarrayv2read_tensorlistgetitem_lstm_878_tensorarrayunstack_tensorlistfromtensorM
;lstm_878_while_lstm_cell_878_matmul_readvariableop_resource:2(O
=lstm_878_while_lstm_cell_878_matmul_1_readvariableop_resource:
(J
<lstm_878_while_lstm_cell_878_biasadd_readvariableop_resource:(??3lstm_878/while/lstm_cell_878/BiasAdd/ReadVariableOp?2lstm_878/while/lstm_cell_878/MatMul/ReadVariableOp?4lstm_878/while/lstm_cell_878/MatMul_1/ReadVariableOp?
@lstm_878/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_878/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_878_while_tensorarrayv2read_tensorlistgetitem_lstm_878_tensorarrayunstack_tensorlistfromtensor_0lstm_878_while_placeholderIlstm_878/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_878/while/lstm_cell_878/MatMul/ReadVariableOpReadVariableOp=lstm_878_while_lstm_cell_878_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_878/while/lstm_cell_878/MatMulMatMul9lstm_878/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_878/while/lstm_cell_878/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_878/while/lstm_cell_878/MatMul_1/ReadVariableOpReadVariableOp?lstm_878_while_lstm_cell_878_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_878/while/lstm_cell_878/MatMul_1MatMullstm_878_while_placeholder_2<lstm_878/while/lstm_cell_878/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_878/while/lstm_cell_878/addAddV2-lstm_878/while/lstm_cell_878/MatMul:product:0/lstm_878/while/lstm_cell_878/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_878/while/lstm_cell_878/BiasAdd/ReadVariableOpReadVariableOp>lstm_878_while_lstm_cell_878_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_878/while/lstm_cell_878/BiasAddBiasAdd$lstm_878/while/lstm_cell_878/add:z:0;lstm_878/while/lstm_cell_878/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_878/while/lstm_cell_878/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_878/while/lstm_cell_878/splitSplit5lstm_878/while/lstm_cell_878/split/split_dim:output:0-lstm_878/while/lstm_cell_878/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_878/while/lstm_cell_878/SigmoidSigmoid+lstm_878/while/lstm_cell_878/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_878/while/lstm_cell_878/Sigmoid_1Sigmoid+lstm_878/while/lstm_cell_878/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_878/while/lstm_cell_878/mulMul*lstm_878/while/lstm_cell_878/Sigmoid_1:y:0lstm_878_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_878/while/lstm_cell_878/ReluRelu+lstm_878/while/lstm_cell_878/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_878/while/lstm_cell_878/mul_1Mul(lstm_878/while/lstm_cell_878/Sigmoid:y:0/lstm_878/while/lstm_cell_878/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_878/while/lstm_cell_878/add_1AddV2$lstm_878/while/lstm_cell_878/mul:z:0&lstm_878/while/lstm_cell_878/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_878/while/lstm_cell_878/Sigmoid_2Sigmoid+lstm_878/while/lstm_cell_878/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_878/while/lstm_cell_878/Relu_1Relu&lstm_878/while/lstm_cell_878/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_878/while/lstm_cell_878/mul_2Mul*lstm_878/while/lstm_cell_878/Sigmoid_2:y:01lstm_878/while/lstm_cell_878/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_878/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_878_while_placeholder_1lstm_878_while_placeholder&lstm_878/while/lstm_cell_878/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_878/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_878/while/addAddV2lstm_878_while_placeholderlstm_878/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_878/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_878/while/add_1AddV2*lstm_878_while_lstm_878_while_loop_counterlstm_878/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_878/while/IdentityIdentitylstm_878/while/add_1:z:0^lstm_878/while/NoOp*
T0*
_output_shapes
: ?
lstm_878/while/Identity_1Identity0lstm_878_while_lstm_878_while_maximum_iterations^lstm_878/while/NoOp*
T0*
_output_shapes
: t
lstm_878/while/Identity_2Identitylstm_878/while/add:z:0^lstm_878/while/NoOp*
T0*
_output_shapes
: ?
lstm_878/while/Identity_3IdentityClstm_878/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_878/while/NoOp*
T0*
_output_shapes
: ?
lstm_878/while/Identity_4Identity&lstm_878/while/lstm_cell_878/mul_2:z:0^lstm_878/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_878/while/Identity_5Identity&lstm_878/while/lstm_cell_878/add_1:z:0^lstm_878/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_878/while/NoOpNoOp4^lstm_878/while/lstm_cell_878/BiasAdd/ReadVariableOp3^lstm_878/while/lstm_cell_878/MatMul/ReadVariableOp5^lstm_878/while/lstm_cell_878/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_878_while_identity lstm_878/while/Identity:output:0"?
lstm_878_while_identity_1"lstm_878/while/Identity_1:output:0"?
lstm_878_while_identity_2"lstm_878/while/Identity_2:output:0"?
lstm_878_while_identity_3"lstm_878/while/Identity_3:output:0"?
lstm_878_while_identity_4"lstm_878/while/Identity_4:output:0"?
lstm_878_while_identity_5"lstm_878/while/Identity_5:output:0"T
'lstm_878_while_lstm_878_strided_slice_1)lstm_878_while_lstm_878_strided_slice_1_0"~
<lstm_878_while_lstm_cell_878_biasadd_readvariableop_resource>lstm_878_while_lstm_cell_878_biasadd_readvariableop_resource_0"?
=lstm_878_while_lstm_cell_878_matmul_1_readvariableop_resource?lstm_878_while_lstm_cell_878_matmul_1_readvariableop_resource_0"|
;lstm_878_while_lstm_cell_878_matmul_readvariableop_resource=lstm_878_while_lstm_cell_878_matmul_readvariableop_resource_0"?
clstm_878_while_tensorarrayv2read_tensorlistgetitem_lstm_878_tensorarrayunstack_tensorlistfromtensorelstm_878_while_tensorarrayv2read_tensorlistgetitem_lstm_878_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_878/while/lstm_cell_878/BiasAdd/ReadVariableOp3lstm_878/while/lstm_cell_878/BiasAdd/ReadVariableOp2h
2lstm_878/while/lstm_cell_878/MatMul/ReadVariableOp2lstm_878/while/lstm_cell_878/MatMul/ReadVariableOp2l
4lstm_878/while/lstm_cell_878/MatMul_1/ReadVariableOp4lstm_878/while/lstm_cell_878/MatMul_1/ReadVariableOp: 
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
?
E__inference_lstm_876_layer_call_and_return_conditional_losses_5231490

inputs(
lstm_cell_876_5231408:	?(
lstm_cell_876_5231410:	d?$
lstm_cell_876_5231412:	?
identity??%lstm_cell_876/StatefulPartitionedCall?while;
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
%lstm_cell_876/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_876_5231408lstm_cell_876_5231410lstm_cell_876_5231412*
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
J__inference_lstm_cell_876_layer_call_and_return_conditional_losses_5231362n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_876_5231408lstm_cell_876_5231410lstm_cell_876_5231412*
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
while_body_5231421*
condR
while_cond_5231420*K
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
NoOpNoOp&^lstm_cell_876/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_876/StatefulPartitionedCall%lstm_cell_876/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
while_cond_5232120
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5232120___redundant_placeholder05
1while_while_cond_5232120___redundant_placeholder15
1while_while_cond_5232120___redundant_placeholder25
1while_while_cond_5232120___redundant_placeholder3
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

?
lstm_877_while_cond_5234087.
*lstm_877_while_lstm_877_while_loop_counter4
0lstm_877_while_lstm_877_while_maximum_iterations
lstm_877_while_placeholder 
lstm_877_while_placeholder_1 
lstm_877_while_placeholder_2 
lstm_877_while_placeholder_30
,lstm_877_while_less_lstm_877_strided_slice_1G
Clstm_877_while_lstm_877_while_cond_5234087___redundant_placeholder0G
Clstm_877_while_lstm_877_while_cond_5234087___redundant_placeholder1G
Clstm_877_while_lstm_877_while_cond_5234087___redundant_placeholder2G
Clstm_877_while_lstm_877_while_cond_5234087___redundant_placeholder3
lstm_877_while_identity
?
lstm_877/while/LessLesslstm_877_while_placeholder,lstm_877_while_less_lstm_877_strided_slice_1*
T0*
_output_shapes
: ]
lstm_877/while/IdentityIdentitylstm_877/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_877_while_identity lstm_877/while/Identity:output:0*(
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
while_cond_5235464
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5235464___redundant_placeholder05
1while_while_cond_5235464___redundant_placeholder15
1while_while_cond_5235464___redundant_placeholder25
1while_while_cond_5235464___redundant_placeholder3
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
?T
?
*sequential_292_lstm_876_while_body_5230781L
Hsequential_292_lstm_876_while_sequential_292_lstm_876_while_loop_counterR
Nsequential_292_lstm_876_while_sequential_292_lstm_876_while_maximum_iterations-
)sequential_292_lstm_876_while_placeholder/
+sequential_292_lstm_876_while_placeholder_1/
+sequential_292_lstm_876_while_placeholder_2/
+sequential_292_lstm_876_while_placeholder_3K
Gsequential_292_lstm_876_while_sequential_292_lstm_876_strided_slice_1_0?
?sequential_292_lstm_876_while_tensorarrayv2read_tensorlistgetitem_sequential_292_lstm_876_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_292_lstm_876_while_lstm_cell_876_matmul_readvariableop_resource_0:	?a
Nsequential_292_lstm_876_while_lstm_cell_876_matmul_1_readvariableop_resource_0:	d?\
Msequential_292_lstm_876_while_lstm_cell_876_biasadd_readvariableop_resource_0:	?*
&sequential_292_lstm_876_while_identity,
(sequential_292_lstm_876_while_identity_1,
(sequential_292_lstm_876_while_identity_2,
(sequential_292_lstm_876_while_identity_3,
(sequential_292_lstm_876_while_identity_4,
(sequential_292_lstm_876_while_identity_5I
Esequential_292_lstm_876_while_sequential_292_lstm_876_strided_slice_1?
?sequential_292_lstm_876_while_tensorarrayv2read_tensorlistgetitem_sequential_292_lstm_876_tensorarrayunstack_tensorlistfromtensor]
Jsequential_292_lstm_876_while_lstm_cell_876_matmul_readvariableop_resource:	?_
Lsequential_292_lstm_876_while_lstm_cell_876_matmul_1_readvariableop_resource:	d?Z
Ksequential_292_lstm_876_while_lstm_cell_876_biasadd_readvariableop_resource:	???Bsequential_292/lstm_876/while/lstm_cell_876/BiasAdd/ReadVariableOp?Asequential_292/lstm_876/while/lstm_cell_876/MatMul/ReadVariableOp?Csequential_292/lstm_876/while/lstm_cell_876/MatMul_1/ReadVariableOp?
Osequential_292/lstm_876/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
Asequential_292/lstm_876/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_292_lstm_876_while_tensorarrayv2read_tensorlistgetitem_sequential_292_lstm_876_tensorarrayunstack_tensorlistfromtensor_0)sequential_292_lstm_876_while_placeholderXsequential_292/lstm_876/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
Asequential_292/lstm_876/while/lstm_cell_876/MatMul/ReadVariableOpReadVariableOpLsequential_292_lstm_876_while_lstm_cell_876_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
2sequential_292/lstm_876/while/lstm_cell_876/MatMulMatMulHsequential_292/lstm_876/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_292/lstm_876/while/lstm_cell_876/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_292/lstm_876/while/lstm_cell_876/MatMul_1/ReadVariableOpReadVariableOpNsequential_292_lstm_876_while_lstm_cell_876_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
4sequential_292/lstm_876/while/lstm_cell_876/MatMul_1MatMul+sequential_292_lstm_876_while_placeholder_2Ksequential_292/lstm_876/while/lstm_cell_876/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_292/lstm_876/while/lstm_cell_876/addAddV2<sequential_292/lstm_876/while/lstm_cell_876/MatMul:product:0>sequential_292/lstm_876/while/lstm_cell_876/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_292/lstm_876/while/lstm_cell_876/BiasAdd/ReadVariableOpReadVariableOpMsequential_292_lstm_876_while_lstm_cell_876_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_292/lstm_876/while/lstm_cell_876/BiasAddBiasAdd3sequential_292/lstm_876/while/lstm_cell_876/add:z:0Jsequential_292/lstm_876/while/lstm_cell_876/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_292/lstm_876/while/lstm_cell_876/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_292/lstm_876/while/lstm_cell_876/splitSplitDsequential_292/lstm_876/while/lstm_cell_876/split/split_dim:output:0<sequential_292/lstm_876/while/lstm_cell_876/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
3sequential_292/lstm_876/while/lstm_cell_876/SigmoidSigmoid:sequential_292/lstm_876/while/lstm_cell_876/split:output:0*
T0*'
_output_shapes
:?????????d?
5sequential_292/lstm_876/while/lstm_cell_876/Sigmoid_1Sigmoid:sequential_292/lstm_876/while/lstm_cell_876/split:output:1*
T0*'
_output_shapes
:?????????d?
/sequential_292/lstm_876/while/lstm_cell_876/mulMul9sequential_292/lstm_876/while/lstm_cell_876/Sigmoid_1:y:0+sequential_292_lstm_876_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
0sequential_292/lstm_876/while/lstm_cell_876/ReluRelu:sequential_292/lstm_876/while/lstm_cell_876/split:output:2*
T0*'
_output_shapes
:?????????d?
1sequential_292/lstm_876/while/lstm_cell_876/mul_1Mul7sequential_292/lstm_876/while/lstm_cell_876/Sigmoid:y:0>sequential_292/lstm_876/while/lstm_cell_876/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
1sequential_292/lstm_876/while/lstm_cell_876/add_1AddV23sequential_292/lstm_876/while/lstm_cell_876/mul:z:05sequential_292/lstm_876/while/lstm_cell_876/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
5sequential_292/lstm_876/while/lstm_cell_876/Sigmoid_2Sigmoid:sequential_292/lstm_876/while/lstm_cell_876/split:output:3*
T0*'
_output_shapes
:?????????d?
2sequential_292/lstm_876/while/lstm_cell_876/Relu_1Relu5sequential_292/lstm_876/while/lstm_cell_876/add_1:z:0*
T0*'
_output_shapes
:?????????d?
1sequential_292/lstm_876/while/lstm_cell_876/mul_2Mul9sequential_292/lstm_876/while/lstm_cell_876/Sigmoid_2:y:0@sequential_292/lstm_876/while/lstm_cell_876/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
Bsequential_292/lstm_876/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_292_lstm_876_while_placeholder_1)sequential_292_lstm_876_while_placeholder5sequential_292/lstm_876/while/lstm_cell_876/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_292/lstm_876/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_292/lstm_876/while/addAddV2)sequential_292_lstm_876_while_placeholder,sequential_292/lstm_876/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_292/lstm_876/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_292/lstm_876/while/add_1AddV2Hsequential_292_lstm_876_while_sequential_292_lstm_876_while_loop_counter.sequential_292/lstm_876/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_292/lstm_876/while/IdentityIdentity'sequential_292/lstm_876/while/add_1:z:0#^sequential_292/lstm_876/while/NoOp*
T0*
_output_shapes
: ?
(sequential_292/lstm_876/while/Identity_1IdentityNsequential_292_lstm_876_while_sequential_292_lstm_876_while_maximum_iterations#^sequential_292/lstm_876/while/NoOp*
T0*
_output_shapes
: ?
(sequential_292/lstm_876/while/Identity_2Identity%sequential_292/lstm_876/while/add:z:0#^sequential_292/lstm_876/while/NoOp*
T0*
_output_shapes
: ?
(sequential_292/lstm_876/while/Identity_3IdentityRsequential_292/lstm_876/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_292/lstm_876/while/NoOp*
T0*
_output_shapes
: ?
(sequential_292/lstm_876/while/Identity_4Identity5sequential_292/lstm_876/while/lstm_cell_876/mul_2:z:0#^sequential_292/lstm_876/while/NoOp*
T0*'
_output_shapes
:?????????d?
(sequential_292/lstm_876/while/Identity_5Identity5sequential_292/lstm_876/while/lstm_cell_876/add_1:z:0#^sequential_292/lstm_876/while/NoOp*
T0*'
_output_shapes
:?????????d?
"sequential_292/lstm_876/while/NoOpNoOpC^sequential_292/lstm_876/while/lstm_cell_876/BiasAdd/ReadVariableOpB^sequential_292/lstm_876/while/lstm_cell_876/MatMul/ReadVariableOpD^sequential_292/lstm_876/while/lstm_cell_876/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_292_lstm_876_while_identity/sequential_292/lstm_876/while/Identity:output:0"]
(sequential_292_lstm_876_while_identity_11sequential_292/lstm_876/while/Identity_1:output:0"]
(sequential_292_lstm_876_while_identity_21sequential_292/lstm_876/while/Identity_2:output:0"]
(sequential_292_lstm_876_while_identity_31sequential_292/lstm_876/while/Identity_3:output:0"]
(sequential_292_lstm_876_while_identity_41sequential_292/lstm_876/while/Identity_4:output:0"]
(sequential_292_lstm_876_while_identity_51sequential_292/lstm_876/while/Identity_5:output:0"?
Ksequential_292_lstm_876_while_lstm_cell_876_biasadd_readvariableop_resourceMsequential_292_lstm_876_while_lstm_cell_876_biasadd_readvariableop_resource_0"?
Lsequential_292_lstm_876_while_lstm_cell_876_matmul_1_readvariableop_resourceNsequential_292_lstm_876_while_lstm_cell_876_matmul_1_readvariableop_resource_0"?
Jsequential_292_lstm_876_while_lstm_cell_876_matmul_readvariableop_resourceLsequential_292_lstm_876_while_lstm_cell_876_matmul_readvariableop_resource_0"?
Esequential_292_lstm_876_while_sequential_292_lstm_876_strided_slice_1Gsequential_292_lstm_876_while_sequential_292_lstm_876_strided_slice_1_0"?
?sequential_292_lstm_876_while_tensorarrayv2read_tensorlistgetitem_sequential_292_lstm_876_tensorarrayunstack_tensorlistfromtensor?sequential_292_lstm_876_while_tensorarrayv2read_tensorlistgetitem_sequential_292_lstm_876_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2?
Bsequential_292/lstm_876/while/lstm_cell_876/BiasAdd/ReadVariableOpBsequential_292/lstm_876/while/lstm_cell_876/BiasAdd/ReadVariableOp2?
Asequential_292/lstm_876/while/lstm_cell_876/MatMul/ReadVariableOpAsequential_292/lstm_876/while/lstm_cell_876/MatMul/ReadVariableOp2?
Csequential_292/lstm_876/while/lstm_cell_876/MatMul_1/ReadVariableOpCsequential_292/lstm_876/while/lstm_cell_876/MatMul_1/ReadVariableOp: 
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
E__inference_lstm_876_layer_call_and_return_conditional_losses_5232348

inputs?
,lstm_cell_876_matmul_readvariableop_resource:	?A
.lstm_cell_876_matmul_1_readvariableop_resource:	d?<
-lstm_cell_876_biasadd_readvariableop_resource:	?
identity??$lstm_cell_876/BiasAdd/ReadVariableOp?#lstm_cell_876/MatMul/ReadVariableOp?%lstm_cell_876/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_876/MatMul/ReadVariableOpReadVariableOp,lstm_cell_876_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_876/MatMulMatMulstrided_slice_2:output:0+lstm_cell_876/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_876/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_876_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_876/MatMul_1MatMulzeros:output:0-lstm_cell_876/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_876/addAddV2lstm_cell_876/MatMul:product:0 lstm_cell_876/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_876/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_876_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_876/BiasAddBiasAddlstm_cell_876/add:z:0,lstm_cell_876/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_876/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_876/splitSplit&lstm_cell_876/split/split_dim:output:0lstm_cell_876/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_876/SigmoidSigmoidlstm_cell_876/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_876/Sigmoid_1Sigmoidlstm_cell_876/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_876/mulMullstm_cell_876/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_876/ReluRelulstm_cell_876/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_876/mul_1Mullstm_cell_876/Sigmoid:y:0 lstm_cell_876/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_876/add_1AddV2lstm_cell_876/mul:z:0lstm_cell_876/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_876/Sigmoid_2Sigmoidlstm_cell_876/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_876/Relu_1Relulstm_cell_876/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_876/mul_2Mullstm_cell_876/Sigmoid_2:y:0"lstm_cell_876/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_876_matmul_readvariableop_resource.lstm_cell_876_matmul_1_readvariableop_resource-lstm_cell_876_biasadd_readvariableop_resource*
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
while_body_5232264*
condR
while_cond_5232263*K
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
NoOpNoOp%^lstm_cell_876/BiasAdd/ReadVariableOp$^lstm_cell_876/MatMul/ReadVariableOp&^lstm_cell_876/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_876/BiasAdd/ReadVariableOp$lstm_cell_876/BiasAdd/ReadVariableOp2J
#lstm_cell_876/MatMul/ReadVariableOp#lstm_cell_876/MatMul/ReadVariableOp2N
%lstm_cell_876/MatMul_1/ReadVariableOp%lstm_cell_876/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?#
?
while_body_5231230
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_876_5231254_0:	?0
while_lstm_cell_876_5231256_0:	d?,
while_lstm_cell_876_5231258_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_876_5231254:	?.
while_lstm_cell_876_5231256:	d?*
while_lstm_cell_876_5231258:	???+while/lstm_cell_876/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_876/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_876_5231254_0while_lstm_cell_876_5231256_0while_lstm_cell_876_5231258_0*
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
J__inference_lstm_cell_876_layer_call_and_return_conditional_losses_5231216?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_876/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_876/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_876/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_876/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_876_5231254while_lstm_cell_876_5231254_0"<
while_lstm_cell_876_5231256while_lstm_cell_876_5231256_0"<
while_lstm_cell_876_5231258while_lstm_cell_876_5231258_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_876/StatefulPartitionedCall+while/lstm_cell_876/StatefulPartitionedCall: 
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
??
?
K__inference_sequential_292_layer_call_and_return_conditional_losses_5234317

inputsH
5lstm_876_lstm_cell_876_matmul_readvariableop_resource:	?J
7lstm_876_lstm_cell_876_matmul_1_readvariableop_resource:	d?E
6lstm_876_lstm_cell_876_biasadd_readvariableop_resource:	?H
5lstm_877_lstm_cell_877_matmul_readvariableop_resource:	d?J
7lstm_877_lstm_cell_877_matmul_1_readvariableop_resource:	2?E
6lstm_877_lstm_cell_877_biasadd_readvariableop_resource:	?G
5lstm_878_lstm_cell_878_matmul_readvariableop_resource:2(I
7lstm_878_lstm_cell_878_matmul_1_readvariableop_resource:
(D
6lstm_878_lstm_cell_878_biasadd_readvariableop_resource:(:
(dense_292_matmul_readvariableop_resource:
7
)dense_292_biasadd_readvariableop_resource:
identity?? dense_292/BiasAdd/ReadVariableOp?dense_292/MatMul/ReadVariableOp?-lstm_876/lstm_cell_876/BiasAdd/ReadVariableOp?,lstm_876/lstm_cell_876/MatMul/ReadVariableOp?.lstm_876/lstm_cell_876/MatMul_1/ReadVariableOp?lstm_876/while?-lstm_877/lstm_cell_877/BiasAdd/ReadVariableOp?,lstm_877/lstm_cell_877/MatMul/ReadVariableOp?.lstm_877/lstm_cell_877/MatMul_1/ReadVariableOp?lstm_877/while?-lstm_878/lstm_cell_878/BiasAdd/ReadVariableOp?,lstm_878/lstm_cell_878/MatMul/ReadVariableOp?.lstm_878/lstm_cell_878/MatMul_1/ReadVariableOp?lstm_878/whileD
lstm_876/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_876/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_876/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_876/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_876/strided_sliceStridedSlicelstm_876/Shape:output:0%lstm_876/strided_slice/stack:output:0'lstm_876/strided_slice/stack_1:output:0'lstm_876/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_876/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_876/zeros/packedPacklstm_876/strided_slice:output:0 lstm_876/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_876/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_876/zerosFilllstm_876/zeros/packed:output:0lstm_876/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_876/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_876/zeros_1/packedPacklstm_876/strided_slice:output:0"lstm_876/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_876/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_876/zeros_1Fill lstm_876/zeros_1/packed:output:0lstm_876/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_876/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_876/transpose	Transposeinputs lstm_876/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_876/Shape_1Shapelstm_876/transpose:y:0*
T0*
_output_shapes
:h
lstm_876/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_876/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_876/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_876/strided_slice_1StridedSlicelstm_876/Shape_1:output:0'lstm_876/strided_slice_1/stack:output:0)lstm_876/strided_slice_1/stack_1:output:0)lstm_876/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_876/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_876/TensorArrayV2TensorListReserve-lstm_876/TensorArrayV2/element_shape:output:0!lstm_876/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_876/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_876/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_876/transpose:y:0Glstm_876/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_876/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_876/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_876/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_876/strided_slice_2StridedSlicelstm_876/transpose:y:0'lstm_876/strided_slice_2/stack:output:0)lstm_876/strided_slice_2/stack_1:output:0)lstm_876/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_876/lstm_cell_876/MatMul/ReadVariableOpReadVariableOp5lstm_876_lstm_cell_876_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_876/lstm_cell_876/MatMulMatMul!lstm_876/strided_slice_2:output:04lstm_876/lstm_cell_876/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_876/lstm_cell_876/MatMul_1/ReadVariableOpReadVariableOp7lstm_876_lstm_cell_876_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_876/lstm_cell_876/MatMul_1MatMullstm_876/zeros:output:06lstm_876/lstm_cell_876/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_876/lstm_cell_876/addAddV2'lstm_876/lstm_cell_876/MatMul:product:0)lstm_876/lstm_cell_876/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_876/lstm_cell_876/BiasAdd/ReadVariableOpReadVariableOp6lstm_876_lstm_cell_876_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_876/lstm_cell_876/BiasAddBiasAddlstm_876/lstm_cell_876/add:z:05lstm_876/lstm_cell_876/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_876/lstm_cell_876/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_876/lstm_cell_876/splitSplit/lstm_876/lstm_cell_876/split/split_dim:output:0'lstm_876/lstm_cell_876/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_876/lstm_cell_876/SigmoidSigmoid%lstm_876/lstm_cell_876/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_876/lstm_cell_876/Sigmoid_1Sigmoid%lstm_876/lstm_cell_876/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_876/lstm_cell_876/mulMul$lstm_876/lstm_cell_876/Sigmoid_1:y:0lstm_876/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_876/lstm_cell_876/ReluRelu%lstm_876/lstm_cell_876/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_876/lstm_cell_876/mul_1Mul"lstm_876/lstm_cell_876/Sigmoid:y:0)lstm_876/lstm_cell_876/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_876/lstm_cell_876/add_1AddV2lstm_876/lstm_cell_876/mul:z:0 lstm_876/lstm_cell_876/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_876/lstm_cell_876/Sigmoid_2Sigmoid%lstm_876/lstm_cell_876/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_876/lstm_cell_876/Relu_1Relu lstm_876/lstm_cell_876/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_876/lstm_cell_876/mul_2Mul$lstm_876/lstm_cell_876/Sigmoid_2:y:0+lstm_876/lstm_cell_876/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_876/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_876/TensorArrayV2_1TensorListReserve/lstm_876/TensorArrayV2_1/element_shape:output:0!lstm_876/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_876/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_876/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_876/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_876/whileWhile$lstm_876/while/loop_counter:output:0*lstm_876/while/maximum_iterations:output:0lstm_876/time:output:0!lstm_876/TensorArrayV2_1:handle:0lstm_876/zeros:output:0lstm_876/zeros_1:output:0!lstm_876/strided_slice_1:output:0@lstm_876/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_876_lstm_cell_876_matmul_readvariableop_resource7lstm_876_lstm_cell_876_matmul_1_readvariableop_resource6lstm_876_lstm_cell_876_biasadd_readvariableop_resource*
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
lstm_876_while_body_5233949*'
condR
lstm_876_while_cond_5233948*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_876/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_876/TensorArrayV2Stack/TensorListStackTensorListStacklstm_876/while:output:3Blstm_876/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_876/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_876/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_876/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_876/strided_slice_3StridedSlice4lstm_876/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_876/strided_slice_3/stack:output:0)lstm_876/strided_slice_3/stack_1:output:0)lstm_876/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_876/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_876/transpose_1	Transpose4lstm_876/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_876/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_876/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_877/ShapeShapelstm_876/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_877/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_877/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_877/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_877/strided_sliceStridedSlicelstm_877/Shape:output:0%lstm_877/strided_slice/stack:output:0'lstm_877/strided_slice/stack_1:output:0'lstm_877/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_877/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_877/zeros/packedPacklstm_877/strided_slice:output:0 lstm_877/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_877/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_877/zerosFilllstm_877/zeros/packed:output:0lstm_877/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_877/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_877/zeros_1/packedPacklstm_877/strided_slice:output:0"lstm_877/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_877/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_877/zeros_1Fill lstm_877/zeros_1/packed:output:0lstm_877/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_877/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_877/transpose	Transposelstm_876/transpose_1:y:0 lstm_877/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_877/Shape_1Shapelstm_877/transpose:y:0*
T0*
_output_shapes
:h
lstm_877/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_877/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_877/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_877/strided_slice_1StridedSlicelstm_877/Shape_1:output:0'lstm_877/strided_slice_1/stack:output:0)lstm_877/strided_slice_1/stack_1:output:0)lstm_877/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_877/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_877/TensorArrayV2TensorListReserve-lstm_877/TensorArrayV2/element_shape:output:0!lstm_877/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_877/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_877/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_877/transpose:y:0Glstm_877/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_877/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_877/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_877/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_877/strided_slice_2StridedSlicelstm_877/transpose:y:0'lstm_877/strided_slice_2/stack:output:0)lstm_877/strided_slice_2/stack_1:output:0)lstm_877/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_877/lstm_cell_877/MatMul/ReadVariableOpReadVariableOp5lstm_877_lstm_cell_877_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_877/lstm_cell_877/MatMulMatMul!lstm_877/strided_slice_2:output:04lstm_877/lstm_cell_877/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_877/lstm_cell_877/MatMul_1/ReadVariableOpReadVariableOp7lstm_877_lstm_cell_877_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_877/lstm_cell_877/MatMul_1MatMullstm_877/zeros:output:06lstm_877/lstm_cell_877/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_877/lstm_cell_877/addAddV2'lstm_877/lstm_cell_877/MatMul:product:0)lstm_877/lstm_cell_877/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_877/lstm_cell_877/BiasAdd/ReadVariableOpReadVariableOp6lstm_877_lstm_cell_877_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_877/lstm_cell_877/BiasAddBiasAddlstm_877/lstm_cell_877/add:z:05lstm_877/lstm_cell_877/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_877/lstm_cell_877/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_877/lstm_cell_877/splitSplit/lstm_877/lstm_cell_877/split/split_dim:output:0'lstm_877/lstm_cell_877/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_877/lstm_cell_877/SigmoidSigmoid%lstm_877/lstm_cell_877/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_877/lstm_cell_877/Sigmoid_1Sigmoid%lstm_877/lstm_cell_877/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_877/lstm_cell_877/mulMul$lstm_877/lstm_cell_877/Sigmoid_1:y:0lstm_877/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_877/lstm_cell_877/ReluRelu%lstm_877/lstm_cell_877/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_877/lstm_cell_877/mul_1Mul"lstm_877/lstm_cell_877/Sigmoid:y:0)lstm_877/lstm_cell_877/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_877/lstm_cell_877/add_1AddV2lstm_877/lstm_cell_877/mul:z:0 lstm_877/lstm_cell_877/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_877/lstm_cell_877/Sigmoid_2Sigmoid%lstm_877/lstm_cell_877/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_877/lstm_cell_877/Relu_1Relu lstm_877/lstm_cell_877/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_877/lstm_cell_877/mul_2Mul$lstm_877/lstm_cell_877/Sigmoid_2:y:0+lstm_877/lstm_cell_877/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_877/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_877/TensorArrayV2_1TensorListReserve/lstm_877/TensorArrayV2_1/element_shape:output:0!lstm_877/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_877/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_877/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_877/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_877/whileWhile$lstm_877/while/loop_counter:output:0*lstm_877/while/maximum_iterations:output:0lstm_877/time:output:0!lstm_877/TensorArrayV2_1:handle:0lstm_877/zeros:output:0lstm_877/zeros_1:output:0!lstm_877/strided_slice_1:output:0@lstm_877/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_877_lstm_cell_877_matmul_readvariableop_resource7lstm_877_lstm_cell_877_matmul_1_readvariableop_resource6lstm_877_lstm_cell_877_biasadd_readvariableop_resource*
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
lstm_877_while_body_5234088*'
condR
lstm_877_while_cond_5234087*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_877/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_877/TensorArrayV2Stack/TensorListStackTensorListStacklstm_877/while:output:3Blstm_877/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_877/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_877/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_877/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_877/strided_slice_3StridedSlice4lstm_877/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_877/strided_slice_3/stack:output:0)lstm_877/strided_slice_3/stack_1:output:0)lstm_877/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_877/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_877/transpose_1	Transpose4lstm_877/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_877/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_877/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_878/ShapeShapelstm_877/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_878/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_878/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_878/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_878/strided_sliceStridedSlicelstm_878/Shape:output:0%lstm_878/strided_slice/stack:output:0'lstm_878/strided_slice/stack_1:output:0'lstm_878/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_878/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_878/zeros/packedPacklstm_878/strided_slice:output:0 lstm_878/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_878/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_878/zerosFilllstm_878/zeros/packed:output:0lstm_878/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_878/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_878/zeros_1/packedPacklstm_878/strided_slice:output:0"lstm_878/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_878/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_878/zeros_1Fill lstm_878/zeros_1/packed:output:0lstm_878/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_878/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_878/transpose	Transposelstm_877/transpose_1:y:0 lstm_878/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_878/Shape_1Shapelstm_878/transpose:y:0*
T0*
_output_shapes
:h
lstm_878/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_878/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_878/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_878/strided_slice_1StridedSlicelstm_878/Shape_1:output:0'lstm_878/strided_slice_1/stack:output:0)lstm_878/strided_slice_1/stack_1:output:0)lstm_878/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_878/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_878/TensorArrayV2TensorListReserve-lstm_878/TensorArrayV2/element_shape:output:0!lstm_878/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_878/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_878/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_878/transpose:y:0Glstm_878/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_878/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_878/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_878/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_878/strided_slice_2StridedSlicelstm_878/transpose:y:0'lstm_878/strided_slice_2/stack:output:0)lstm_878/strided_slice_2/stack_1:output:0)lstm_878/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_878/lstm_cell_878/MatMul/ReadVariableOpReadVariableOp5lstm_878_lstm_cell_878_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_878/lstm_cell_878/MatMulMatMul!lstm_878/strided_slice_2:output:04lstm_878/lstm_cell_878/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_878/lstm_cell_878/MatMul_1/ReadVariableOpReadVariableOp7lstm_878_lstm_cell_878_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_878/lstm_cell_878/MatMul_1MatMullstm_878/zeros:output:06lstm_878/lstm_cell_878/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_878/lstm_cell_878/addAddV2'lstm_878/lstm_cell_878/MatMul:product:0)lstm_878/lstm_cell_878/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_878/lstm_cell_878/BiasAdd/ReadVariableOpReadVariableOp6lstm_878_lstm_cell_878_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_878/lstm_cell_878/BiasAddBiasAddlstm_878/lstm_cell_878/add:z:05lstm_878/lstm_cell_878/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_878/lstm_cell_878/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_878/lstm_cell_878/splitSplit/lstm_878/lstm_cell_878/split/split_dim:output:0'lstm_878/lstm_cell_878/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_878/lstm_cell_878/SigmoidSigmoid%lstm_878/lstm_cell_878/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_878/lstm_cell_878/Sigmoid_1Sigmoid%lstm_878/lstm_cell_878/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_878/lstm_cell_878/mulMul$lstm_878/lstm_cell_878/Sigmoid_1:y:0lstm_878/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_878/lstm_cell_878/ReluRelu%lstm_878/lstm_cell_878/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_878/lstm_cell_878/mul_1Mul"lstm_878/lstm_cell_878/Sigmoid:y:0)lstm_878/lstm_cell_878/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_878/lstm_cell_878/add_1AddV2lstm_878/lstm_cell_878/mul:z:0 lstm_878/lstm_cell_878/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_878/lstm_cell_878/Sigmoid_2Sigmoid%lstm_878/lstm_cell_878/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_878/lstm_cell_878/Relu_1Relu lstm_878/lstm_cell_878/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_878/lstm_cell_878/mul_2Mul$lstm_878/lstm_cell_878/Sigmoid_2:y:0+lstm_878/lstm_cell_878/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_878/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_878/TensorArrayV2_1TensorListReserve/lstm_878/TensorArrayV2_1/element_shape:output:0!lstm_878/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_878/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_878/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_878/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_878/whileWhile$lstm_878/while/loop_counter:output:0*lstm_878/while/maximum_iterations:output:0lstm_878/time:output:0!lstm_878/TensorArrayV2_1:handle:0lstm_878/zeros:output:0lstm_878/zeros_1:output:0!lstm_878/strided_slice_1:output:0@lstm_878/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_878_lstm_cell_878_matmul_readvariableop_resource7lstm_878_lstm_cell_878_matmul_1_readvariableop_resource6lstm_878_lstm_cell_878_biasadd_readvariableop_resource*
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
lstm_878_while_body_5234227*'
condR
lstm_878_while_cond_5234226*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_878/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_878/TensorArrayV2Stack/TensorListStackTensorListStacklstm_878/while:output:3Blstm_878/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_878/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_878/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_878/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_878/strided_slice_3StridedSlice4lstm_878/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_878/strided_slice_3/stack:output:0)lstm_878/strided_slice_3/stack_1:output:0)lstm_878/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_878/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_878/transpose_1	Transpose4lstm_878/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_878/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_878/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_292/MatMul/ReadVariableOpReadVariableOp(dense_292_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_292/MatMulMatMul!lstm_878/strided_slice_3:output:0'dense_292/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_292/BiasAdd/ReadVariableOpReadVariableOp)dense_292_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_292/BiasAddBiasAdddense_292/MatMul:product:0(dense_292/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_292/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_292/BiasAdd/ReadVariableOp ^dense_292/MatMul/ReadVariableOp.^lstm_876/lstm_cell_876/BiasAdd/ReadVariableOp-^lstm_876/lstm_cell_876/MatMul/ReadVariableOp/^lstm_876/lstm_cell_876/MatMul_1/ReadVariableOp^lstm_876/while.^lstm_877/lstm_cell_877/BiasAdd/ReadVariableOp-^lstm_877/lstm_cell_877/MatMul/ReadVariableOp/^lstm_877/lstm_cell_877/MatMul_1/ReadVariableOp^lstm_877/while.^lstm_878/lstm_cell_878/BiasAdd/ReadVariableOp-^lstm_878/lstm_cell_878/MatMul/ReadVariableOp/^lstm_878/lstm_cell_878/MatMul_1/ReadVariableOp^lstm_878/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_292/BiasAdd/ReadVariableOp dense_292/BiasAdd/ReadVariableOp2B
dense_292/MatMul/ReadVariableOpdense_292/MatMul/ReadVariableOp2^
-lstm_876/lstm_cell_876/BiasAdd/ReadVariableOp-lstm_876/lstm_cell_876/BiasAdd/ReadVariableOp2\
,lstm_876/lstm_cell_876/MatMul/ReadVariableOp,lstm_876/lstm_cell_876/MatMul/ReadVariableOp2`
.lstm_876/lstm_cell_876/MatMul_1/ReadVariableOp.lstm_876/lstm_cell_876/MatMul_1/ReadVariableOp2 
lstm_876/whilelstm_876/while2^
-lstm_877/lstm_cell_877/BiasAdd/ReadVariableOp-lstm_877/lstm_cell_877/BiasAdd/ReadVariableOp2\
,lstm_877/lstm_cell_877/MatMul/ReadVariableOp,lstm_877/lstm_cell_877/MatMul/ReadVariableOp2`
.lstm_877/lstm_cell_877/MatMul_1/ReadVariableOp.lstm_877/lstm_cell_877/MatMul_1/ReadVariableOp2 
lstm_877/whilelstm_877/while2^
-lstm_878/lstm_cell_878/BiasAdd/ReadVariableOp-lstm_878/lstm_cell_878/BiasAdd/ReadVariableOp2\
,lstm_878/lstm_cell_878/MatMul/ReadVariableOp,lstm_878/lstm_cell_878/MatMul/ReadVariableOp2`
.lstm_878/lstm_cell_878/MatMul_1/ReadVariableOp.lstm_878/lstm_cell_878/MatMul_1/ReadVariableOp2 
lstm_878/whilelstm_878/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?J
?
E__inference_lstm_878_layer_call_and_return_conditional_losses_5236165

inputs>
,lstm_cell_878_matmul_readvariableop_resource:2(@
.lstm_cell_878_matmul_1_readvariableop_resource:
(;
-lstm_cell_878_biasadd_readvariableop_resource:(
identity??$lstm_cell_878/BiasAdd/ReadVariableOp?#lstm_cell_878/MatMul/ReadVariableOp?%lstm_cell_878/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_878/MatMul/ReadVariableOpReadVariableOp,lstm_cell_878_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_878/MatMulMatMulstrided_slice_2:output:0+lstm_cell_878/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_878/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_878_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_878/MatMul_1MatMulzeros:output:0-lstm_cell_878/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_878/addAddV2lstm_cell_878/MatMul:product:0 lstm_cell_878/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_878/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_878_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_878/BiasAddBiasAddlstm_cell_878/add:z:0,lstm_cell_878/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_878/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_878/splitSplit&lstm_cell_878/split/split_dim:output:0lstm_cell_878/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_878/SigmoidSigmoidlstm_cell_878/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_878/Sigmoid_1Sigmoidlstm_cell_878/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_878/mulMullstm_cell_878/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_878/ReluRelulstm_cell_878/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_878/mul_1Mullstm_cell_878/Sigmoid:y:0 lstm_cell_878/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_878/add_1AddV2lstm_cell_878/mul:z:0lstm_cell_878/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_878/Sigmoid_2Sigmoidlstm_cell_878/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_878/Relu_1Relulstm_cell_878/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_878/mul_2Mullstm_cell_878/Sigmoid_2:y:0"lstm_cell_878/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_878_matmul_readvariableop_resource.lstm_cell_878_matmul_1_readvariableop_resource-lstm_cell_878_biasadd_readvariableop_resource*
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
while_body_5236081*
condR
while_cond_5236080*K
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
NoOpNoOp%^lstm_cell_878/BiasAdd/ReadVariableOp$^lstm_cell_878/MatMul/ReadVariableOp&^lstm_cell_878/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_878/BiasAdd/ReadVariableOp$lstm_cell_878/BiasAdd/ReadVariableOp2J
#lstm_cell_878/MatMul/ReadVariableOp#lstm_cell_878/MatMul/ReadVariableOp2N
%lstm_cell_878/MatMul_1/ReadVariableOp%lstm_cell_878/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
while_cond_5235035
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5235035___redundant_placeholder05
1while_while_cond_5235035___redundant_placeholder15
1while_while_cond_5235035___redundant_placeholder25
1while_while_cond_5235035___redundant_placeholder3
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
?J
?
E__inference_lstm_876_layer_call_and_return_conditional_losses_5234933

inputs?
,lstm_cell_876_matmul_readvariableop_resource:	?A
.lstm_cell_876_matmul_1_readvariableop_resource:	d?<
-lstm_cell_876_biasadd_readvariableop_resource:	?
identity??$lstm_cell_876/BiasAdd/ReadVariableOp?#lstm_cell_876/MatMul/ReadVariableOp?%lstm_cell_876/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_876/MatMul/ReadVariableOpReadVariableOp,lstm_cell_876_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_876/MatMulMatMulstrided_slice_2:output:0+lstm_cell_876/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_876/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_876_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_876/MatMul_1MatMulzeros:output:0-lstm_cell_876/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_876/addAddV2lstm_cell_876/MatMul:product:0 lstm_cell_876/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_876/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_876_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_876/BiasAddBiasAddlstm_cell_876/add:z:0,lstm_cell_876/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_876/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_876/splitSplit&lstm_cell_876/split/split_dim:output:0lstm_cell_876/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_876/SigmoidSigmoidlstm_cell_876/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_876/Sigmoid_1Sigmoidlstm_cell_876/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_876/mulMullstm_cell_876/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_876/ReluRelulstm_cell_876/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_876/mul_1Mullstm_cell_876/Sigmoid:y:0 lstm_cell_876/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_876/add_1AddV2lstm_cell_876/mul:z:0lstm_cell_876/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_876/Sigmoid_2Sigmoidlstm_cell_876/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_876/Relu_1Relulstm_cell_876/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_876/mul_2Mullstm_cell_876/Sigmoid_2:y:0"lstm_cell_876/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_876_matmul_readvariableop_resource.lstm_cell_876_matmul_1_readvariableop_resource-lstm_cell_876_biasadd_readvariableop_resource*
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
while_body_5234849*
condR
while_cond_5234848*K
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
NoOpNoOp%^lstm_cell_876/BiasAdd/ReadVariableOp$^lstm_cell_876/MatMul/ReadVariableOp&^lstm_cell_876/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_876/BiasAdd/ReadVariableOp$lstm_cell_876/BiasAdd/ReadVariableOp2J
#lstm_cell_876/MatMul/ReadVariableOp#lstm_cell_876/MatMul/ReadVariableOp2N
%lstm_cell_876/MatMul_1/ReadVariableOp%lstm_cell_876/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?K
?
E__inference_lstm_878_layer_call_and_return_conditional_losses_5235879
inputs_0>
,lstm_cell_878_matmul_readvariableop_resource:2(@
.lstm_cell_878_matmul_1_readvariableop_resource:
(;
-lstm_cell_878_biasadd_readvariableop_resource:(
identity??$lstm_cell_878/BiasAdd/ReadVariableOp?#lstm_cell_878/MatMul/ReadVariableOp?%lstm_cell_878/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_878/MatMul/ReadVariableOpReadVariableOp,lstm_cell_878_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_878/MatMulMatMulstrided_slice_2:output:0+lstm_cell_878/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_878/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_878_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_878/MatMul_1MatMulzeros:output:0-lstm_cell_878/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_878/addAddV2lstm_cell_878/MatMul:product:0 lstm_cell_878/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_878/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_878_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_878/BiasAddBiasAddlstm_cell_878/add:z:0,lstm_cell_878/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_878/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_878/splitSplit&lstm_cell_878/split/split_dim:output:0lstm_cell_878/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_878/SigmoidSigmoidlstm_cell_878/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_878/Sigmoid_1Sigmoidlstm_cell_878/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_878/mulMullstm_cell_878/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_878/ReluRelulstm_cell_878/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_878/mul_1Mullstm_cell_878/Sigmoid:y:0 lstm_cell_878/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_878/add_1AddV2lstm_cell_878/mul:z:0lstm_cell_878/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_878/Sigmoid_2Sigmoidlstm_cell_878/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_878/Relu_1Relulstm_cell_878/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_878/mul_2Mullstm_cell_878/Sigmoid_2:y:0"lstm_cell_878/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_878_matmul_readvariableop_resource.lstm_cell_878_matmul_1_readvariableop_resource-lstm_cell_878_biasadd_readvariableop_resource*
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
while_body_5235795*
condR
while_cond_5235794*K
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
NoOpNoOp%^lstm_cell_878/BiasAdd/ReadVariableOp$^lstm_cell_878/MatMul/ReadVariableOp&^lstm_cell_878/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_878/BiasAdd/ReadVariableOp$lstm_cell_878/BiasAdd/ReadVariableOp2J
#lstm_cell_878/MatMul/ReadVariableOp#lstm_cell_878/MatMul/ReadVariableOp2N
%lstm_cell_878/MatMul_1/ReadVariableOp%lstm_cell_878/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?

?
0__inference_sequential_292_layer_call_fn_5233436

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
K__inference_sequential_292_layer_call_and_return_conditional_losses_5232673o
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
while_cond_5232563
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5232563___redundant_placeholder05
1while_while_cond_5232563___redundant_placeholder15
1while_while_cond_5232563___redundant_placeholder25
1while_while_cond_5232563___redundant_placeholder3
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
*__inference_lstm_878_layer_call_fn_5235560
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
E__inference_lstm_878_layer_call_and_return_conditional_losses_5231999o
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
?J
?
E__inference_lstm_877_layer_call_and_return_conditional_losses_5233029

inputs?
,lstm_cell_877_matmul_readvariableop_resource:	d?A
.lstm_cell_877_matmul_1_readvariableop_resource:	2?<
-lstm_cell_877_biasadd_readvariableop_resource:	?
identity??$lstm_cell_877/BiasAdd/ReadVariableOp?#lstm_cell_877/MatMul/ReadVariableOp?%lstm_cell_877/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_877/MatMul/ReadVariableOpReadVariableOp,lstm_cell_877_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_877/MatMulMatMulstrided_slice_2:output:0+lstm_cell_877/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_877/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_877_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_877/MatMul_1MatMulzeros:output:0-lstm_cell_877/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_877/addAddV2lstm_cell_877/MatMul:product:0 lstm_cell_877/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_877/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_877_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_877/BiasAddBiasAddlstm_cell_877/add:z:0,lstm_cell_877/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_877/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_877/splitSplit&lstm_cell_877/split/split_dim:output:0lstm_cell_877/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_877/SigmoidSigmoidlstm_cell_877/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_877/Sigmoid_1Sigmoidlstm_cell_877/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_877/mulMullstm_cell_877/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_877/ReluRelulstm_cell_877/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_877/mul_1Mullstm_cell_877/Sigmoid:y:0 lstm_cell_877/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_877/add_1AddV2lstm_cell_877/mul:z:0lstm_cell_877/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_877/Sigmoid_2Sigmoidlstm_cell_877/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_877/Relu_1Relulstm_cell_877/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_877/mul_2Mullstm_cell_877/Sigmoid_2:y:0"lstm_cell_877/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_877_matmul_readvariableop_resource.lstm_cell_877_matmul_1_readvariableop_resource-lstm_cell_877_biasadd_readvariableop_resource*
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
while_body_5232945*
condR
while_cond_5232944*K
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
NoOpNoOp%^lstm_cell_877/BiasAdd/ReadVariableOp$^lstm_cell_877/MatMul/ReadVariableOp&^lstm_cell_877/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_877/BiasAdd/ReadVariableOp$lstm_cell_877/BiasAdd/ReadVariableOp2J
#lstm_cell_877/MatMul/ReadVariableOp#lstm_cell_877/MatMul/ReadVariableOp2N
%lstm_cell_877/MatMul_1/ReadVariableOp%lstm_cell_877/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
while_cond_5234705
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5234705___redundant_placeholder05
1while_while_cond_5234705___redundant_placeholder15
1while_while_cond_5234705___redundant_placeholder25
1while_while_cond_5234705___redundant_placeholder3
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
while_body_5235795
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_878_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_878_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_878_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_878_matmul_readvariableop_resource:2(F
4while_lstm_cell_878_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_878_biasadd_readvariableop_resource:(??*while/lstm_cell_878/BiasAdd/ReadVariableOp?)while/lstm_cell_878/MatMul/ReadVariableOp?+while/lstm_cell_878/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_878/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_878_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_878/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_878/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_878/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_878_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_878/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_878/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_878/addAddV2$while/lstm_cell_878/MatMul:product:0&while/lstm_cell_878/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_878/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_878_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_878/BiasAddBiasAddwhile/lstm_cell_878/add:z:02while/lstm_cell_878/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_878/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_878/splitSplit,while/lstm_cell_878/split/split_dim:output:0$while/lstm_cell_878/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_878/SigmoidSigmoid"while/lstm_cell_878/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_878/Sigmoid_1Sigmoid"while/lstm_cell_878/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_878/mulMul!while/lstm_cell_878/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_878/ReluRelu"while/lstm_cell_878/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_878/mul_1Mulwhile/lstm_cell_878/Sigmoid:y:0&while/lstm_cell_878/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_878/add_1AddV2while/lstm_cell_878/mul:z:0while/lstm_cell_878/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_878/Sigmoid_2Sigmoid"while/lstm_cell_878/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_878/Relu_1Reluwhile/lstm_cell_878/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_878/mul_2Mul!while/lstm_cell_878/Sigmoid_2:y:0(while/lstm_cell_878/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_878/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_878/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_878/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_878/BiasAdd/ReadVariableOp*^while/lstm_cell_878/MatMul/ReadVariableOp,^while/lstm_cell_878/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_878_biasadd_readvariableop_resource5while_lstm_cell_878_biasadd_readvariableop_resource_0"n
4while_lstm_cell_878_matmul_1_readvariableop_resource6while_lstm_cell_878_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_878_matmul_readvariableop_resource4while_lstm_cell_878_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_878/BiasAdd/ReadVariableOp*while/lstm_cell_878/BiasAdd/ReadVariableOp2V
)while/lstm_cell_878/MatMul/ReadVariableOp)while/lstm_cell_878/MatMul/ReadVariableOp2Z
+while/lstm_cell_878/MatMul_1/ReadVariableOp+while/lstm_cell_878/MatMul_1/ReadVariableOp: 
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
J__inference_lstm_cell_876_layer_call_and_return_conditional_losses_5236250

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

?
%__inference_signature_wrapper_5233409
lstm_876_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_876_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
"__inference__wrapped_model_5231149o
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
_user_specified_namelstm_876_input
?8
?
while_body_5235036
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_877_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_877_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_877_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_877_matmul_readvariableop_resource:	d?G
4while_lstm_cell_877_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_877_biasadd_readvariableop_resource:	???*while/lstm_cell_877/BiasAdd/ReadVariableOp?)while/lstm_cell_877/MatMul/ReadVariableOp?+while/lstm_cell_877/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_877/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_877_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_877/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_877/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_877/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_877_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_877/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_877/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_877/addAddV2$while/lstm_cell_877/MatMul:product:0&while/lstm_cell_877/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_877/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_877_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_877/BiasAddBiasAddwhile/lstm_cell_877/add:z:02while/lstm_cell_877/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_877/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_877/splitSplit,while/lstm_cell_877/split/split_dim:output:0$while/lstm_cell_877/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_877/SigmoidSigmoid"while/lstm_cell_877/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_877/Sigmoid_1Sigmoid"while/lstm_cell_877/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_877/mulMul!while/lstm_cell_877/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_877/ReluRelu"while/lstm_cell_877/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_877/mul_1Mulwhile/lstm_cell_877/Sigmoid:y:0&while/lstm_cell_877/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_877/add_1AddV2while/lstm_cell_877/mul:z:0while/lstm_cell_877/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_877/Sigmoid_2Sigmoid"while/lstm_cell_877/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_877/Relu_1Reluwhile/lstm_cell_877/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_877/mul_2Mul!while/lstm_cell_877/Sigmoid_2:y:0(while/lstm_cell_877/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_877/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_877/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_877/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_877/BiasAdd/ReadVariableOp*^while/lstm_cell_877/MatMul/ReadVariableOp,^while/lstm_cell_877/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_877_biasadd_readvariableop_resource5while_lstm_cell_877_biasadd_readvariableop_resource_0"n
4while_lstm_cell_877_matmul_1_readvariableop_resource6while_lstm_cell_877_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_877_matmul_readvariableop_resource4while_lstm_cell_877_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_877/BiasAdd/ReadVariableOp*while/lstm_cell_877/BiasAdd/ReadVariableOp2V
)while/lstm_cell_877/MatMul/ReadVariableOp)while/lstm_cell_877/MatMul/ReadVariableOp2Z
+while/lstm_cell_877/MatMul_1/ReadVariableOp+while/lstm_cell_877/MatMul_1/ReadVariableOp: 
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
while_body_5235938
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_878_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_878_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_878_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_878_matmul_readvariableop_resource:2(F
4while_lstm_cell_878_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_878_biasadd_readvariableop_resource:(??*while/lstm_cell_878/BiasAdd/ReadVariableOp?)while/lstm_cell_878/MatMul/ReadVariableOp?+while/lstm_cell_878/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_878/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_878_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_878/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_878/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_878/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_878_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_878/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_878/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_878/addAddV2$while/lstm_cell_878/MatMul:product:0&while/lstm_cell_878/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_878/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_878_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_878/BiasAddBiasAddwhile/lstm_cell_878/add:z:02while/lstm_cell_878/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_878/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_878/splitSplit,while/lstm_cell_878/split/split_dim:output:0$while/lstm_cell_878/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_878/SigmoidSigmoid"while/lstm_cell_878/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_878/Sigmoid_1Sigmoid"while/lstm_cell_878/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_878/mulMul!while/lstm_cell_878/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_878/ReluRelu"while/lstm_cell_878/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_878/mul_1Mulwhile/lstm_cell_878/Sigmoid:y:0&while/lstm_cell_878/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_878/add_1AddV2while/lstm_cell_878/mul:z:0while/lstm_cell_878/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_878/Sigmoid_2Sigmoid"while/lstm_cell_878/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_878/Relu_1Reluwhile/lstm_cell_878/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_878/mul_2Mul!while/lstm_cell_878/Sigmoid_2:y:0(while/lstm_cell_878/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_878/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_878/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_878/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_878/BiasAdd/ReadVariableOp*^while/lstm_cell_878/MatMul/ReadVariableOp,^while/lstm_cell_878/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_878_biasadd_readvariableop_resource5while_lstm_cell_878_biasadd_readvariableop_resource_0"n
4while_lstm_cell_878_matmul_1_readvariableop_resource6while_lstm_cell_878_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_878_matmul_readvariableop_resource4while_lstm_cell_878_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_878/BiasAdd/ReadVariableOp*while/lstm_cell_878/BiasAdd/ReadVariableOp2V
)while/lstm_cell_878/MatMul/ReadVariableOp)while/lstm_cell_878/MatMul/ReadVariableOp2Z
+while/lstm_cell_878/MatMul_1/ReadVariableOp+while/lstm_cell_878/MatMul_1/ReadVariableOp: 
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
E__inference_lstm_878_layer_call_and_return_conditional_losses_5235736
inputs_0>
,lstm_cell_878_matmul_readvariableop_resource:2(@
.lstm_cell_878_matmul_1_readvariableop_resource:
(;
-lstm_cell_878_biasadd_readvariableop_resource:(
identity??$lstm_cell_878/BiasAdd/ReadVariableOp?#lstm_cell_878/MatMul/ReadVariableOp?%lstm_cell_878/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_878/MatMul/ReadVariableOpReadVariableOp,lstm_cell_878_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_878/MatMulMatMulstrided_slice_2:output:0+lstm_cell_878/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_878/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_878_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_878/MatMul_1MatMulzeros:output:0-lstm_cell_878/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_878/addAddV2lstm_cell_878/MatMul:product:0 lstm_cell_878/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_878/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_878_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_878/BiasAddBiasAddlstm_cell_878/add:z:0,lstm_cell_878/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_878/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_878/splitSplit&lstm_cell_878/split/split_dim:output:0lstm_cell_878/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_878/SigmoidSigmoidlstm_cell_878/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_878/Sigmoid_1Sigmoidlstm_cell_878/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_878/mulMullstm_cell_878/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_878/ReluRelulstm_cell_878/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_878/mul_1Mullstm_cell_878/Sigmoid:y:0 lstm_cell_878/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_878/add_1AddV2lstm_cell_878/mul:z:0lstm_cell_878/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_878/Sigmoid_2Sigmoidlstm_cell_878/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_878/Relu_1Relulstm_cell_878/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_878/mul_2Mullstm_cell_878/Sigmoid_2:y:0"lstm_cell_878/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_878_matmul_readvariableop_resource.lstm_cell_878_matmul_1_readvariableop_resource-lstm_cell_878_biasadd_readvariableop_resource*
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
while_body_5235652*
condR
while_cond_5235651*K
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
NoOpNoOp%^lstm_cell_878/BiasAdd/ReadVariableOp$^lstm_cell_878/MatMul/ReadVariableOp&^lstm_cell_878/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_878/BiasAdd/ReadVariableOp$lstm_cell_878/BiasAdd/ReadVariableOp2J
#lstm_cell_878/MatMul/ReadVariableOp#lstm_cell_878/MatMul/ReadVariableOp2N
%lstm_cell_878/MatMul_1/ReadVariableOp%lstm_cell_878/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?
?
*sequential_292_lstm_877_while_cond_5230919L
Hsequential_292_lstm_877_while_sequential_292_lstm_877_while_loop_counterR
Nsequential_292_lstm_877_while_sequential_292_lstm_877_while_maximum_iterations-
)sequential_292_lstm_877_while_placeholder/
+sequential_292_lstm_877_while_placeholder_1/
+sequential_292_lstm_877_while_placeholder_2/
+sequential_292_lstm_877_while_placeholder_3N
Jsequential_292_lstm_877_while_less_sequential_292_lstm_877_strided_slice_1e
asequential_292_lstm_877_while_sequential_292_lstm_877_while_cond_5230919___redundant_placeholder0e
asequential_292_lstm_877_while_sequential_292_lstm_877_while_cond_5230919___redundant_placeholder1e
asequential_292_lstm_877_while_sequential_292_lstm_877_while_cond_5230919___redundant_placeholder2e
asequential_292_lstm_877_while_sequential_292_lstm_877_while_cond_5230919___redundant_placeholder3*
&sequential_292_lstm_877_while_identity
?
"sequential_292/lstm_877/while/LessLess)sequential_292_lstm_877_while_placeholderJsequential_292_lstm_877_while_less_sequential_292_lstm_877_strided_slice_1*
T0*
_output_shapes
: {
&sequential_292/lstm_877/while/IdentityIdentity&sequential_292/lstm_877/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_292_lstm_877_while_identity/sequential_292/lstm_877/while/Identity:output:0*(
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
J__inference_lstm_cell_877_layer_call_and_return_conditional_losses_5236380

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
while_cond_5234419
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5234419___redundant_placeholder05
1while_while_cond_5234419___redundant_placeholder15
1while_while_cond_5234419___redundant_placeholder25
1while_while_cond_5234419___redundant_placeholder3
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
*__inference_lstm_876_layer_call_fn_5234361

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
E__inference_lstm_876_layer_call_and_return_conditional_losses_5233194s
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
while_body_5232414
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_877_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_877_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_877_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_877_matmul_readvariableop_resource:	d?G
4while_lstm_cell_877_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_877_biasadd_readvariableop_resource:	???*while/lstm_cell_877/BiasAdd/ReadVariableOp?)while/lstm_cell_877/MatMul/ReadVariableOp?+while/lstm_cell_877/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_877/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_877_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_877/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_877/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_877/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_877_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_877/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_877/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_877/addAddV2$while/lstm_cell_877/MatMul:product:0&while/lstm_cell_877/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_877/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_877_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_877/BiasAddBiasAddwhile/lstm_cell_877/add:z:02while/lstm_cell_877/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_877/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_877/splitSplit,while/lstm_cell_877/split/split_dim:output:0$while/lstm_cell_877/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_877/SigmoidSigmoid"while/lstm_cell_877/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_877/Sigmoid_1Sigmoid"while/lstm_cell_877/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_877/mulMul!while/lstm_cell_877/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_877/ReluRelu"while/lstm_cell_877/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_877/mul_1Mulwhile/lstm_cell_877/Sigmoid:y:0&while/lstm_cell_877/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_877/add_1AddV2while/lstm_cell_877/mul:z:0while/lstm_cell_877/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_877/Sigmoid_2Sigmoid"while/lstm_cell_877/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_877/Relu_1Reluwhile/lstm_cell_877/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_877/mul_2Mul!while/lstm_cell_877/Sigmoid_2:y:0(while/lstm_cell_877/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_877/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_877/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_877/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_877/BiasAdd/ReadVariableOp*^while/lstm_cell_877/MatMul/ReadVariableOp,^while/lstm_cell_877/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_877_biasadd_readvariableop_resource5while_lstm_cell_877_biasadd_readvariableop_resource_0"n
4while_lstm_cell_877_matmul_1_readvariableop_resource6while_lstm_cell_877_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_877_matmul_readvariableop_resource4while_lstm_cell_877_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_877/BiasAdd/ReadVariableOp*while/lstm_cell_877/BiasAdd/ReadVariableOp2V
)while/lstm_cell_877/MatMul/ReadVariableOp)while/lstm_cell_877/MatMul/ReadVariableOp2Z
+while/lstm_cell_877/MatMul_1/ReadVariableOp+while/lstm_cell_877/MatMul_1/ReadVariableOp: 
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
E__inference_lstm_877_layer_call_and_return_conditional_losses_5235549

inputs?
,lstm_cell_877_matmul_readvariableop_resource:	d?A
.lstm_cell_877_matmul_1_readvariableop_resource:	2?<
-lstm_cell_877_biasadd_readvariableop_resource:	?
identity??$lstm_cell_877/BiasAdd/ReadVariableOp?#lstm_cell_877/MatMul/ReadVariableOp?%lstm_cell_877/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_877/MatMul/ReadVariableOpReadVariableOp,lstm_cell_877_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_877/MatMulMatMulstrided_slice_2:output:0+lstm_cell_877/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_877/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_877_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_877/MatMul_1MatMulzeros:output:0-lstm_cell_877/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_877/addAddV2lstm_cell_877/MatMul:product:0 lstm_cell_877/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_877/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_877_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_877/BiasAddBiasAddlstm_cell_877/add:z:0,lstm_cell_877/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_877/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_877/splitSplit&lstm_cell_877/split/split_dim:output:0lstm_cell_877/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_877/SigmoidSigmoidlstm_cell_877/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_877/Sigmoid_1Sigmoidlstm_cell_877/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_877/mulMullstm_cell_877/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_877/ReluRelulstm_cell_877/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_877/mul_1Mullstm_cell_877/Sigmoid:y:0 lstm_cell_877/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_877/add_1AddV2lstm_cell_877/mul:z:0lstm_cell_877/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_877/Sigmoid_2Sigmoidlstm_cell_877/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_877/Relu_1Relulstm_cell_877/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_877/mul_2Mullstm_cell_877/Sigmoid_2:y:0"lstm_cell_877/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_877_matmul_readvariableop_resource.lstm_cell_877_matmul_1_readvariableop_resource-lstm_cell_877_biasadd_readvariableop_resource*
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
while_body_5235465*
condR
while_cond_5235464*K
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
NoOpNoOp%^lstm_cell_877/BiasAdd/ReadVariableOp$^lstm_cell_877/MatMul/ReadVariableOp&^lstm_cell_877/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_877/BiasAdd/ReadVariableOp$lstm_cell_877/BiasAdd/ReadVariableOp2J
#lstm_cell_877/MatMul/ReadVariableOp#lstm_cell_877/MatMul/ReadVariableOp2N
%lstm_cell_877/MatMul_1/ReadVariableOp%lstm_cell_877/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?8
?
while_body_5233110
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_876_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_876_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_876_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_876_matmul_readvariableop_resource:	?G
4while_lstm_cell_876_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_876_biasadd_readvariableop_resource:	???*while/lstm_cell_876/BiasAdd/ReadVariableOp?)while/lstm_cell_876/MatMul/ReadVariableOp?+while/lstm_cell_876/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_876/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_876_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_876/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_876/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_876/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_876_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_876/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_876/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_876/addAddV2$while/lstm_cell_876/MatMul:product:0&while/lstm_cell_876/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_876/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_876_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_876/BiasAddBiasAddwhile/lstm_cell_876/add:z:02while/lstm_cell_876/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_876/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_876/splitSplit,while/lstm_cell_876/split/split_dim:output:0$while/lstm_cell_876/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_876/SigmoidSigmoid"while/lstm_cell_876/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_876/Sigmoid_1Sigmoid"while/lstm_cell_876/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_876/mulMul!while/lstm_cell_876/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_876/ReluRelu"while/lstm_cell_876/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_876/mul_1Mulwhile/lstm_cell_876/Sigmoid:y:0&while/lstm_cell_876/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_876/add_1AddV2while/lstm_cell_876/mul:z:0while/lstm_cell_876/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_876/Sigmoid_2Sigmoid"while/lstm_cell_876/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_876/Relu_1Reluwhile/lstm_cell_876/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_876/mul_2Mul!while/lstm_cell_876/Sigmoid_2:y:0(while/lstm_cell_876/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_876/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_876/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_876/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_876/BiasAdd/ReadVariableOp*^while/lstm_cell_876/MatMul/ReadVariableOp,^while/lstm_cell_876/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_876_biasadd_readvariableop_resource5while_lstm_cell_876_biasadd_readvariableop_resource_0"n
4while_lstm_cell_876_matmul_1_readvariableop_resource6while_lstm_cell_876_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_876_matmul_readvariableop_resource4while_lstm_cell_876_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_876/BiasAdd/ReadVariableOp*while/lstm_cell_876/BiasAdd/ReadVariableOp2V
)while/lstm_cell_876/MatMul/ReadVariableOp)while/lstm_cell_876/MatMul/ReadVariableOp2Z
+while/lstm_cell_876/MatMul_1/ReadVariableOp+while/lstm_cell_876/MatMul_1/ReadVariableOp: 
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
?
K__inference_sequential_292_layer_call_and_return_conditional_losses_5232673

inputs#
lstm_876_5232349:	?#
lstm_876_5232351:	d?
lstm_876_5232353:	?#
lstm_877_5232499:	d?#
lstm_877_5232501:	2?
lstm_877_5232503:	?"
lstm_878_5232649:2("
lstm_878_5232651:
(
lstm_878_5232653:(#
dense_292_5232667:

dense_292_5232669:
identity??!dense_292/StatefulPartitionedCall? lstm_876/StatefulPartitionedCall? lstm_877/StatefulPartitionedCall? lstm_878/StatefulPartitionedCall?
 lstm_876/StatefulPartitionedCallStatefulPartitionedCallinputslstm_876_5232349lstm_876_5232351lstm_876_5232353*
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
E__inference_lstm_876_layer_call_and_return_conditional_losses_5232348?
 lstm_877/StatefulPartitionedCallStatefulPartitionedCall)lstm_876/StatefulPartitionedCall:output:0lstm_877_5232499lstm_877_5232501lstm_877_5232503*
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
E__inference_lstm_877_layer_call_and_return_conditional_losses_5232498?
 lstm_878/StatefulPartitionedCallStatefulPartitionedCall)lstm_877/StatefulPartitionedCall:output:0lstm_878_5232649lstm_878_5232651lstm_878_5232653*
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
E__inference_lstm_878_layer_call_and_return_conditional_losses_5232648?
!dense_292/StatefulPartitionedCallStatefulPartitionedCall)lstm_878/StatefulPartitionedCall:output:0dense_292_5232667dense_292_5232669*
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
F__inference_dense_292_layer_call_and_return_conditional_losses_5232666y
IdentityIdentity*dense_292/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_292/StatefulPartitionedCall!^lstm_876/StatefulPartitionedCall!^lstm_877/StatefulPartitionedCall!^lstm_878/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_292/StatefulPartitionedCall!dense_292/StatefulPartitionedCall2D
 lstm_876/StatefulPartitionedCall lstm_876/StatefulPartitionedCall2D
 lstm_877/StatefulPartitionedCall lstm_877/StatefulPartitionedCall2D
 lstm_878/StatefulPartitionedCall lstm_878/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?J
?
E__inference_lstm_878_layer_call_and_return_conditional_losses_5232864

inputs>
,lstm_cell_878_matmul_readvariableop_resource:2(@
.lstm_cell_878_matmul_1_readvariableop_resource:
(;
-lstm_cell_878_biasadd_readvariableop_resource:(
identity??$lstm_cell_878/BiasAdd/ReadVariableOp?#lstm_cell_878/MatMul/ReadVariableOp?%lstm_cell_878/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_878/MatMul/ReadVariableOpReadVariableOp,lstm_cell_878_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_878/MatMulMatMulstrided_slice_2:output:0+lstm_cell_878/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_878/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_878_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_878/MatMul_1MatMulzeros:output:0-lstm_cell_878/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_878/addAddV2lstm_cell_878/MatMul:product:0 lstm_cell_878/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_878/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_878_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_878/BiasAddBiasAddlstm_cell_878/add:z:0,lstm_cell_878/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_878/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_878/splitSplit&lstm_cell_878/split/split_dim:output:0lstm_cell_878/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_878/SigmoidSigmoidlstm_cell_878/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_878/Sigmoid_1Sigmoidlstm_cell_878/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_878/mulMullstm_cell_878/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_878/ReluRelulstm_cell_878/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_878/mul_1Mullstm_cell_878/Sigmoid:y:0 lstm_cell_878/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_878/add_1AddV2lstm_cell_878/mul:z:0lstm_cell_878/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_878/Sigmoid_2Sigmoidlstm_cell_878/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_878/Relu_1Relulstm_cell_878/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_878/mul_2Mullstm_cell_878/Sigmoid_2:y:0"lstm_cell_878/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_878_matmul_readvariableop_resource.lstm_cell_878_matmul_1_readvariableop_resource-lstm_cell_878_biasadd_readvariableop_resource*
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
while_body_5232780*
condR
while_cond_5232779*K
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
NoOpNoOp%^lstm_cell_878/BiasAdd/ReadVariableOp$^lstm_cell_878/MatMul/ReadVariableOp&^lstm_cell_878/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_878/BiasAdd/ReadVariableOp$lstm_cell_878/BiasAdd/ReadVariableOp2J
#lstm_cell_878/MatMul/ReadVariableOp#lstm_cell_878/MatMul/ReadVariableOp2N
%lstm_cell_878/MatMul_1/ReadVariableOp%lstm_cell_878/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
while_cond_5232944
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5232944___redundant_placeholder05
1while_while_cond_5232944___redundant_placeholder15
1while_while_cond_5232944___redundant_placeholder25
1while_while_cond_5232944___redundant_placeholder3
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
?K
?
E__inference_lstm_876_layer_call_and_return_conditional_losses_5234647
inputs_0?
,lstm_cell_876_matmul_readvariableop_resource:	?A
.lstm_cell_876_matmul_1_readvariableop_resource:	d?<
-lstm_cell_876_biasadd_readvariableop_resource:	?
identity??$lstm_cell_876/BiasAdd/ReadVariableOp?#lstm_cell_876/MatMul/ReadVariableOp?%lstm_cell_876/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_876/MatMul/ReadVariableOpReadVariableOp,lstm_cell_876_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_876/MatMulMatMulstrided_slice_2:output:0+lstm_cell_876/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_876/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_876_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_876/MatMul_1MatMulzeros:output:0-lstm_cell_876/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_876/addAddV2lstm_cell_876/MatMul:product:0 lstm_cell_876/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_876/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_876_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_876/BiasAddBiasAddlstm_cell_876/add:z:0,lstm_cell_876/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_876/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_876/splitSplit&lstm_cell_876/split/split_dim:output:0lstm_cell_876/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_876/SigmoidSigmoidlstm_cell_876/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_876/Sigmoid_1Sigmoidlstm_cell_876/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_876/mulMullstm_cell_876/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_876/ReluRelulstm_cell_876/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_876/mul_1Mullstm_cell_876/Sigmoid:y:0 lstm_cell_876/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_876/add_1AddV2lstm_cell_876/mul:z:0lstm_cell_876/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_876/Sigmoid_2Sigmoidlstm_cell_876/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_876/Relu_1Relulstm_cell_876/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_876/mul_2Mullstm_cell_876/Sigmoid_2:y:0"lstm_cell_876/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_876_matmul_readvariableop_resource.lstm_cell_876_matmul_1_readvariableop_resource-lstm_cell_876_biasadd_readvariableop_resource*
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
while_body_5234563*
condR
while_cond_5234562*K
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
NoOpNoOp%^lstm_cell_876/BiasAdd/ReadVariableOp$^lstm_cell_876/MatMul/ReadVariableOp&^lstm_cell_876/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_876/BiasAdd/ReadVariableOp$lstm_cell_876/BiasAdd/ReadVariableOp2J
#lstm_cell_876/MatMul/ReadVariableOp#lstm_cell_876/MatMul/ReadVariableOp2N
%lstm_cell_876/MatMul_1/ReadVariableOp%lstm_cell_876/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
while_cond_5231579
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5231579___redundant_placeholder05
1while_while_cond_5231579___redundant_placeholder15
1while_while_cond_5231579___redundant_placeholder25
1while_while_cond_5231579___redundant_placeholder3
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
J__inference_lstm_cell_878_layer_call_and_return_conditional_losses_5231916

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
?J
?
E__inference_lstm_876_layer_call_and_return_conditional_losses_5233194

inputs?
,lstm_cell_876_matmul_readvariableop_resource:	?A
.lstm_cell_876_matmul_1_readvariableop_resource:	d?<
-lstm_cell_876_biasadd_readvariableop_resource:	?
identity??$lstm_cell_876/BiasAdd/ReadVariableOp?#lstm_cell_876/MatMul/ReadVariableOp?%lstm_cell_876/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_876/MatMul/ReadVariableOpReadVariableOp,lstm_cell_876_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_876/MatMulMatMulstrided_slice_2:output:0+lstm_cell_876/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_876/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_876_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_876/MatMul_1MatMulzeros:output:0-lstm_cell_876/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_876/addAddV2lstm_cell_876/MatMul:product:0 lstm_cell_876/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_876/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_876_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_876/BiasAddBiasAddlstm_cell_876/add:z:0,lstm_cell_876/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_876/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_876/splitSplit&lstm_cell_876/split/split_dim:output:0lstm_cell_876/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_876/SigmoidSigmoidlstm_cell_876/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_876/Sigmoid_1Sigmoidlstm_cell_876/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_876/mulMullstm_cell_876/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_876/ReluRelulstm_cell_876/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_876/mul_1Mullstm_cell_876/Sigmoid:y:0 lstm_cell_876/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_876/add_1AddV2lstm_cell_876/mul:z:0lstm_cell_876/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_876/Sigmoid_2Sigmoidlstm_cell_876/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_876/Relu_1Relulstm_cell_876/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_876/mul_2Mullstm_cell_876/Sigmoid_2:y:0"lstm_cell_876/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_876_matmul_readvariableop_resource.lstm_cell_876_matmul_1_readvariableop_resource-lstm_cell_876_biasadd_readvariableop_resource*
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
while_body_5233110*
condR
while_cond_5233109*K
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
NoOpNoOp%^lstm_cell_876/BiasAdd/ReadVariableOp$^lstm_cell_876/MatMul/ReadVariableOp&^lstm_cell_876/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_876/BiasAdd/ReadVariableOp$lstm_cell_876/BiasAdd/ReadVariableOp2J
#lstm_cell_876/MatMul/ReadVariableOp#lstm_cell_876/MatMul/ReadVariableOp2N
%lstm_cell_876/MatMul_1/ReadVariableOp%lstm_cell_876/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?T
?
*sequential_292_lstm_877_while_body_5230920L
Hsequential_292_lstm_877_while_sequential_292_lstm_877_while_loop_counterR
Nsequential_292_lstm_877_while_sequential_292_lstm_877_while_maximum_iterations-
)sequential_292_lstm_877_while_placeholder/
+sequential_292_lstm_877_while_placeholder_1/
+sequential_292_lstm_877_while_placeholder_2/
+sequential_292_lstm_877_while_placeholder_3K
Gsequential_292_lstm_877_while_sequential_292_lstm_877_strided_slice_1_0?
?sequential_292_lstm_877_while_tensorarrayv2read_tensorlistgetitem_sequential_292_lstm_877_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_292_lstm_877_while_lstm_cell_877_matmul_readvariableop_resource_0:	d?a
Nsequential_292_lstm_877_while_lstm_cell_877_matmul_1_readvariableop_resource_0:	2?\
Msequential_292_lstm_877_while_lstm_cell_877_biasadd_readvariableop_resource_0:	?*
&sequential_292_lstm_877_while_identity,
(sequential_292_lstm_877_while_identity_1,
(sequential_292_lstm_877_while_identity_2,
(sequential_292_lstm_877_while_identity_3,
(sequential_292_lstm_877_while_identity_4,
(sequential_292_lstm_877_while_identity_5I
Esequential_292_lstm_877_while_sequential_292_lstm_877_strided_slice_1?
?sequential_292_lstm_877_while_tensorarrayv2read_tensorlistgetitem_sequential_292_lstm_877_tensorarrayunstack_tensorlistfromtensor]
Jsequential_292_lstm_877_while_lstm_cell_877_matmul_readvariableop_resource:	d?_
Lsequential_292_lstm_877_while_lstm_cell_877_matmul_1_readvariableop_resource:	2?Z
Ksequential_292_lstm_877_while_lstm_cell_877_biasadd_readvariableop_resource:	???Bsequential_292/lstm_877/while/lstm_cell_877/BiasAdd/ReadVariableOp?Asequential_292/lstm_877/while/lstm_cell_877/MatMul/ReadVariableOp?Csequential_292/lstm_877/while/lstm_cell_877/MatMul_1/ReadVariableOp?
Osequential_292/lstm_877/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
Asequential_292/lstm_877/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_292_lstm_877_while_tensorarrayv2read_tensorlistgetitem_sequential_292_lstm_877_tensorarrayunstack_tensorlistfromtensor_0)sequential_292_lstm_877_while_placeholderXsequential_292/lstm_877/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
Asequential_292/lstm_877/while/lstm_cell_877/MatMul/ReadVariableOpReadVariableOpLsequential_292_lstm_877_while_lstm_cell_877_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
2sequential_292/lstm_877/while/lstm_cell_877/MatMulMatMulHsequential_292/lstm_877/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_292/lstm_877/while/lstm_cell_877/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_292/lstm_877/while/lstm_cell_877/MatMul_1/ReadVariableOpReadVariableOpNsequential_292_lstm_877_while_lstm_cell_877_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
4sequential_292/lstm_877/while/lstm_cell_877/MatMul_1MatMul+sequential_292_lstm_877_while_placeholder_2Ksequential_292/lstm_877/while/lstm_cell_877/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_292/lstm_877/while/lstm_cell_877/addAddV2<sequential_292/lstm_877/while/lstm_cell_877/MatMul:product:0>sequential_292/lstm_877/while/lstm_cell_877/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_292/lstm_877/while/lstm_cell_877/BiasAdd/ReadVariableOpReadVariableOpMsequential_292_lstm_877_while_lstm_cell_877_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_292/lstm_877/while/lstm_cell_877/BiasAddBiasAdd3sequential_292/lstm_877/while/lstm_cell_877/add:z:0Jsequential_292/lstm_877/while/lstm_cell_877/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_292/lstm_877/while/lstm_cell_877/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_292/lstm_877/while/lstm_cell_877/splitSplitDsequential_292/lstm_877/while/lstm_cell_877/split/split_dim:output:0<sequential_292/lstm_877/while/lstm_cell_877/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
3sequential_292/lstm_877/while/lstm_cell_877/SigmoidSigmoid:sequential_292/lstm_877/while/lstm_cell_877/split:output:0*
T0*'
_output_shapes
:?????????2?
5sequential_292/lstm_877/while/lstm_cell_877/Sigmoid_1Sigmoid:sequential_292/lstm_877/while/lstm_cell_877/split:output:1*
T0*'
_output_shapes
:?????????2?
/sequential_292/lstm_877/while/lstm_cell_877/mulMul9sequential_292/lstm_877/while/lstm_cell_877/Sigmoid_1:y:0+sequential_292_lstm_877_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
0sequential_292/lstm_877/while/lstm_cell_877/ReluRelu:sequential_292/lstm_877/while/lstm_cell_877/split:output:2*
T0*'
_output_shapes
:?????????2?
1sequential_292/lstm_877/while/lstm_cell_877/mul_1Mul7sequential_292/lstm_877/while/lstm_cell_877/Sigmoid:y:0>sequential_292/lstm_877/while/lstm_cell_877/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
1sequential_292/lstm_877/while/lstm_cell_877/add_1AddV23sequential_292/lstm_877/while/lstm_cell_877/mul:z:05sequential_292/lstm_877/while/lstm_cell_877/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
5sequential_292/lstm_877/while/lstm_cell_877/Sigmoid_2Sigmoid:sequential_292/lstm_877/while/lstm_cell_877/split:output:3*
T0*'
_output_shapes
:?????????2?
2sequential_292/lstm_877/while/lstm_cell_877/Relu_1Relu5sequential_292/lstm_877/while/lstm_cell_877/add_1:z:0*
T0*'
_output_shapes
:?????????2?
1sequential_292/lstm_877/while/lstm_cell_877/mul_2Mul9sequential_292/lstm_877/while/lstm_cell_877/Sigmoid_2:y:0@sequential_292/lstm_877/while/lstm_cell_877/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
Bsequential_292/lstm_877/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_292_lstm_877_while_placeholder_1)sequential_292_lstm_877_while_placeholder5sequential_292/lstm_877/while/lstm_cell_877/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_292/lstm_877/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_292/lstm_877/while/addAddV2)sequential_292_lstm_877_while_placeholder,sequential_292/lstm_877/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_292/lstm_877/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_292/lstm_877/while/add_1AddV2Hsequential_292_lstm_877_while_sequential_292_lstm_877_while_loop_counter.sequential_292/lstm_877/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_292/lstm_877/while/IdentityIdentity'sequential_292/lstm_877/while/add_1:z:0#^sequential_292/lstm_877/while/NoOp*
T0*
_output_shapes
: ?
(sequential_292/lstm_877/while/Identity_1IdentityNsequential_292_lstm_877_while_sequential_292_lstm_877_while_maximum_iterations#^sequential_292/lstm_877/while/NoOp*
T0*
_output_shapes
: ?
(sequential_292/lstm_877/while/Identity_2Identity%sequential_292/lstm_877/while/add:z:0#^sequential_292/lstm_877/while/NoOp*
T0*
_output_shapes
: ?
(sequential_292/lstm_877/while/Identity_3IdentityRsequential_292/lstm_877/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_292/lstm_877/while/NoOp*
T0*
_output_shapes
: ?
(sequential_292/lstm_877/while/Identity_4Identity5sequential_292/lstm_877/while/lstm_cell_877/mul_2:z:0#^sequential_292/lstm_877/while/NoOp*
T0*'
_output_shapes
:?????????2?
(sequential_292/lstm_877/while/Identity_5Identity5sequential_292/lstm_877/while/lstm_cell_877/add_1:z:0#^sequential_292/lstm_877/while/NoOp*
T0*'
_output_shapes
:?????????2?
"sequential_292/lstm_877/while/NoOpNoOpC^sequential_292/lstm_877/while/lstm_cell_877/BiasAdd/ReadVariableOpB^sequential_292/lstm_877/while/lstm_cell_877/MatMul/ReadVariableOpD^sequential_292/lstm_877/while/lstm_cell_877/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_292_lstm_877_while_identity/sequential_292/lstm_877/while/Identity:output:0"]
(sequential_292_lstm_877_while_identity_11sequential_292/lstm_877/while/Identity_1:output:0"]
(sequential_292_lstm_877_while_identity_21sequential_292/lstm_877/while/Identity_2:output:0"]
(sequential_292_lstm_877_while_identity_31sequential_292/lstm_877/while/Identity_3:output:0"]
(sequential_292_lstm_877_while_identity_41sequential_292/lstm_877/while/Identity_4:output:0"]
(sequential_292_lstm_877_while_identity_51sequential_292/lstm_877/while/Identity_5:output:0"?
Ksequential_292_lstm_877_while_lstm_cell_877_biasadd_readvariableop_resourceMsequential_292_lstm_877_while_lstm_cell_877_biasadd_readvariableop_resource_0"?
Lsequential_292_lstm_877_while_lstm_cell_877_matmul_1_readvariableop_resourceNsequential_292_lstm_877_while_lstm_cell_877_matmul_1_readvariableop_resource_0"?
Jsequential_292_lstm_877_while_lstm_cell_877_matmul_readvariableop_resourceLsequential_292_lstm_877_while_lstm_cell_877_matmul_readvariableop_resource_0"?
Esequential_292_lstm_877_while_sequential_292_lstm_877_strided_slice_1Gsequential_292_lstm_877_while_sequential_292_lstm_877_strided_slice_1_0"?
?sequential_292_lstm_877_while_tensorarrayv2read_tensorlistgetitem_sequential_292_lstm_877_tensorarrayunstack_tensorlistfromtensor?sequential_292_lstm_877_while_tensorarrayv2read_tensorlistgetitem_sequential_292_lstm_877_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2?
Bsequential_292/lstm_877/while/lstm_cell_877/BiasAdd/ReadVariableOpBsequential_292/lstm_877/while/lstm_cell_877/BiasAdd/ReadVariableOp2?
Asequential_292/lstm_877/while/lstm_cell_877/MatMul/ReadVariableOpAsequential_292/lstm_877/while/lstm_cell_877/MatMul/ReadVariableOp2?
Csequential_292/lstm_877/while/lstm_cell_877/MatMul_1/ReadVariableOpCsequential_292/lstm_877/while/lstm_cell_877/MatMul_1/ReadVariableOp: 
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
E__inference_lstm_878_layer_call_and_return_conditional_losses_5236022

inputs>
,lstm_cell_878_matmul_readvariableop_resource:2(@
.lstm_cell_878_matmul_1_readvariableop_resource:
(;
-lstm_cell_878_biasadd_readvariableop_resource:(
identity??$lstm_cell_878/BiasAdd/ReadVariableOp?#lstm_cell_878/MatMul/ReadVariableOp?%lstm_cell_878/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_878/MatMul/ReadVariableOpReadVariableOp,lstm_cell_878_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_878/MatMulMatMulstrided_slice_2:output:0+lstm_cell_878/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_878/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_878_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_878/MatMul_1MatMulzeros:output:0-lstm_cell_878/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_878/addAddV2lstm_cell_878/MatMul:product:0 lstm_cell_878/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_878/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_878_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_878/BiasAddBiasAddlstm_cell_878/add:z:0,lstm_cell_878/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_878/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_878/splitSplit&lstm_cell_878/split/split_dim:output:0lstm_cell_878/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_878/SigmoidSigmoidlstm_cell_878/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_878/Sigmoid_1Sigmoidlstm_cell_878/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_878/mulMullstm_cell_878/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_878/ReluRelulstm_cell_878/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_878/mul_1Mullstm_cell_878/Sigmoid:y:0 lstm_cell_878/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_878/add_1AddV2lstm_cell_878/mul:z:0lstm_cell_878/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_878/Sigmoid_2Sigmoidlstm_cell_878/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_878/Relu_1Relulstm_cell_878/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_878/mul_2Mullstm_cell_878/Sigmoid_2:y:0"lstm_cell_878/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_878_matmul_readvariableop_resource.lstm_cell_878_matmul_1_readvariableop_resource-lstm_cell_878_biasadd_readvariableop_resource*
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
while_body_5235938*
condR
while_cond_5235937*K
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
NoOpNoOp%^lstm_cell_878/BiasAdd/ReadVariableOp$^lstm_cell_878/MatMul/ReadVariableOp&^lstm_cell_878/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_878/BiasAdd/ReadVariableOp$lstm_cell_878/BiasAdd/ReadVariableOp2J
#lstm_cell_878/MatMul/ReadVariableOp#lstm_cell_878/MatMul/ReadVariableOp2N
%lstm_cell_878/MatMul_1/ReadVariableOp%lstm_cell_878/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?8
?
while_body_5235652
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_878_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_878_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_878_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_878_matmul_readvariableop_resource:2(F
4while_lstm_cell_878_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_878_biasadd_readvariableop_resource:(??*while/lstm_cell_878/BiasAdd/ReadVariableOp?)while/lstm_cell_878/MatMul/ReadVariableOp?+while/lstm_cell_878/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_878/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_878_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_878/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_878/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_878/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_878_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_878/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_878/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_878/addAddV2$while/lstm_cell_878/MatMul:product:0&while/lstm_cell_878/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_878/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_878_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_878/BiasAddBiasAddwhile/lstm_cell_878/add:z:02while/lstm_cell_878/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_878/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_878/splitSplit,while/lstm_cell_878/split/split_dim:output:0$while/lstm_cell_878/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_878/SigmoidSigmoid"while/lstm_cell_878/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_878/Sigmoid_1Sigmoid"while/lstm_cell_878/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_878/mulMul!while/lstm_cell_878/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_878/ReluRelu"while/lstm_cell_878/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_878/mul_1Mulwhile/lstm_cell_878/Sigmoid:y:0&while/lstm_cell_878/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_878/add_1AddV2while/lstm_cell_878/mul:z:0while/lstm_cell_878/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_878/Sigmoid_2Sigmoid"while/lstm_cell_878/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_878/Relu_1Reluwhile/lstm_cell_878/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_878/mul_2Mul!while/lstm_cell_878/Sigmoid_2:y:0(while/lstm_cell_878/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_878/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_878/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_878/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_878/BiasAdd/ReadVariableOp*^while/lstm_cell_878/MatMul/ReadVariableOp,^while/lstm_cell_878/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_878_biasadd_readvariableop_resource5while_lstm_cell_878_biasadd_readvariableop_resource_0"n
4while_lstm_cell_878_matmul_1_readvariableop_resource6while_lstm_cell_878_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_878_matmul_readvariableop_resource4while_lstm_cell_878_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_878/BiasAdd/ReadVariableOp*while/lstm_cell_878/BiasAdd/ReadVariableOp2V
)while/lstm_cell_878/MatMul/ReadVariableOp)while/lstm_cell_878/MatMul/ReadVariableOp2Z
+while/lstm_cell_878/MatMul_1/ReadVariableOp+while/lstm_cell_878/MatMul_1/ReadVariableOp: 
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
*__inference_lstm_877_layer_call_fn_5234966

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
E__inference_lstm_877_layer_call_and_return_conditional_losses_5232498s
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
?
?
*__inference_lstm_877_layer_call_fn_5234955
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
E__inference_lstm_877_layer_call_and_return_conditional_losses_5231840|
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
?
?
while_cond_5233109
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5233109___redundant_placeholder05
1while_while_cond_5233109___redundant_placeholder15
1while_while_cond_5233109___redundant_placeholder25
1while_while_cond_5233109___redundant_placeholder3
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
while_body_5232264
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_876_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_876_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_876_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_876_matmul_readvariableop_resource:	?G
4while_lstm_cell_876_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_876_biasadd_readvariableop_resource:	???*while/lstm_cell_876/BiasAdd/ReadVariableOp?)while/lstm_cell_876/MatMul/ReadVariableOp?+while/lstm_cell_876/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_876/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_876_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_876/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_876/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_876/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_876_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_876/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_876/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_876/addAddV2$while/lstm_cell_876/MatMul:product:0&while/lstm_cell_876/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_876/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_876_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_876/BiasAddBiasAddwhile/lstm_cell_876/add:z:02while/lstm_cell_876/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_876/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_876/splitSplit,while/lstm_cell_876/split/split_dim:output:0$while/lstm_cell_876/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_876/SigmoidSigmoid"while/lstm_cell_876/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_876/Sigmoid_1Sigmoid"while/lstm_cell_876/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_876/mulMul!while/lstm_cell_876/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_876/ReluRelu"while/lstm_cell_876/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_876/mul_1Mulwhile/lstm_cell_876/Sigmoid:y:0&while/lstm_cell_876/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_876/add_1AddV2while/lstm_cell_876/mul:z:0while/lstm_cell_876/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_876/Sigmoid_2Sigmoid"while/lstm_cell_876/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_876/Relu_1Reluwhile/lstm_cell_876/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_876/mul_2Mul!while/lstm_cell_876/Sigmoid_2:y:0(while/lstm_cell_876/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_876/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_876/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_876/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_876/BiasAdd/ReadVariableOp*^while/lstm_cell_876/MatMul/ReadVariableOp,^while/lstm_cell_876/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_876_biasadd_readvariableop_resource5while_lstm_cell_876_biasadd_readvariableop_resource_0"n
4while_lstm_cell_876_matmul_1_readvariableop_resource6while_lstm_cell_876_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_876_matmul_readvariableop_resource4while_lstm_cell_876_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_876/BiasAdd/ReadVariableOp*while/lstm_cell_876/BiasAdd/ReadVariableOp2V
)while/lstm_cell_876/MatMul/ReadVariableOp)while/lstm_cell_876/MatMul/ReadVariableOp2Z
+while/lstm_cell_876/MatMul_1/ReadVariableOp+while/lstm_cell_876/MatMul_1/ReadVariableOp: 
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

lstm_877_while_body_5234088.
*lstm_877_while_lstm_877_while_loop_counter4
0lstm_877_while_lstm_877_while_maximum_iterations
lstm_877_while_placeholder 
lstm_877_while_placeholder_1 
lstm_877_while_placeholder_2 
lstm_877_while_placeholder_3-
)lstm_877_while_lstm_877_strided_slice_1_0i
elstm_877_while_tensorarrayv2read_tensorlistgetitem_lstm_877_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_877_while_lstm_cell_877_matmul_readvariableop_resource_0:	d?R
?lstm_877_while_lstm_cell_877_matmul_1_readvariableop_resource_0:	2?M
>lstm_877_while_lstm_cell_877_biasadd_readvariableop_resource_0:	?
lstm_877_while_identity
lstm_877_while_identity_1
lstm_877_while_identity_2
lstm_877_while_identity_3
lstm_877_while_identity_4
lstm_877_while_identity_5+
'lstm_877_while_lstm_877_strided_slice_1g
clstm_877_while_tensorarrayv2read_tensorlistgetitem_lstm_877_tensorarrayunstack_tensorlistfromtensorN
;lstm_877_while_lstm_cell_877_matmul_readvariableop_resource:	d?P
=lstm_877_while_lstm_cell_877_matmul_1_readvariableop_resource:	2?K
<lstm_877_while_lstm_cell_877_biasadd_readvariableop_resource:	???3lstm_877/while/lstm_cell_877/BiasAdd/ReadVariableOp?2lstm_877/while/lstm_cell_877/MatMul/ReadVariableOp?4lstm_877/while/lstm_cell_877/MatMul_1/ReadVariableOp?
@lstm_877/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_877/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_877_while_tensorarrayv2read_tensorlistgetitem_lstm_877_tensorarrayunstack_tensorlistfromtensor_0lstm_877_while_placeholderIlstm_877/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_877/while/lstm_cell_877/MatMul/ReadVariableOpReadVariableOp=lstm_877_while_lstm_cell_877_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_877/while/lstm_cell_877/MatMulMatMul9lstm_877/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_877/while/lstm_cell_877/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_877/while/lstm_cell_877/MatMul_1/ReadVariableOpReadVariableOp?lstm_877_while_lstm_cell_877_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_877/while/lstm_cell_877/MatMul_1MatMullstm_877_while_placeholder_2<lstm_877/while/lstm_cell_877/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_877/while/lstm_cell_877/addAddV2-lstm_877/while/lstm_cell_877/MatMul:product:0/lstm_877/while/lstm_cell_877/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_877/while/lstm_cell_877/BiasAdd/ReadVariableOpReadVariableOp>lstm_877_while_lstm_cell_877_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_877/while/lstm_cell_877/BiasAddBiasAdd$lstm_877/while/lstm_cell_877/add:z:0;lstm_877/while/lstm_cell_877/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_877/while/lstm_cell_877/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_877/while/lstm_cell_877/splitSplit5lstm_877/while/lstm_cell_877/split/split_dim:output:0-lstm_877/while/lstm_cell_877/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_877/while/lstm_cell_877/SigmoidSigmoid+lstm_877/while/lstm_cell_877/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_877/while/lstm_cell_877/Sigmoid_1Sigmoid+lstm_877/while/lstm_cell_877/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_877/while/lstm_cell_877/mulMul*lstm_877/while/lstm_cell_877/Sigmoid_1:y:0lstm_877_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_877/while/lstm_cell_877/ReluRelu+lstm_877/while/lstm_cell_877/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_877/while/lstm_cell_877/mul_1Mul(lstm_877/while/lstm_cell_877/Sigmoid:y:0/lstm_877/while/lstm_cell_877/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_877/while/lstm_cell_877/add_1AddV2$lstm_877/while/lstm_cell_877/mul:z:0&lstm_877/while/lstm_cell_877/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_877/while/lstm_cell_877/Sigmoid_2Sigmoid+lstm_877/while/lstm_cell_877/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_877/while/lstm_cell_877/Relu_1Relu&lstm_877/while/lstm_cell_877/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_877/while/lstm_cell_877/mul_2Mul*lstm_877/while/lstm_cell_877/Sigmoid_2:y:01lstm_877/while/lstm_cell_877/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_877/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_877_while_placeholder_1lstm_877_while_placeholder&lstm_877/while/lstm_cell_877/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_877/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_877/while/addAddV2lstm_877_while_placeholderlstm_877/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_877/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_877/while/add_1AddV2*lstm_877_while_lstm_877_while_loop_counterlstm_877/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_877/while/IdentityIdentitylstm_877/while/add_1:z:0^lstm_877/while/NoOp*
T0*
_output_shapes
: ?
lstm_877/while/Identity_1Identity0lstm_877_while_lstm_877_while_maximum_iterations^lstm_877/while/NoOp*
T0*
_output_shapes
: t
lstm_877/while/Identity_2Identitylstm_877/while/add:z:0^lstm_877/while/NoOp*
T0*
_output_shapes
: ?
lstm_877/while/Identity_3IdentityClstm_877/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_877/while/NoOp*
T0*
_output_shapes
: ?
lstm_877/while/Identity_4Identity&lstm_877/while/lstm_cell_877/mul_2:z:0^lstm_877/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_877/while/Identity_5Identity&lstm_877/while/lstm_cell_877/add_1:z:0^lstm_877/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_877/while/NoOpNoOp4^lstm_877/while/lstm_cell_877/BiasAdd/ReadVariableOp3^lstm_877/while/lstm_cell_877/MatMul/ReadVariableOp5^lstm_877/while/lstm_cell_877/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_877_while_identity lstm_877/while/Identity:output:0"?
lstm_877_while_identity_1"lstm_877/while/Identity_1:output:0"?
lstm_877_while_identity_2"lstm_877/while/Identity_2:output:0"?
lstm_877_while_identity_3"lstm_877/while/Identity_3:output:0"?
lstm_877_while_identity_4"lstm_877/while/Identity_4:output:0"?
lstm_877_while_identity_5"lstm_877/while/Identity_5:output:0"T
'lstm_877_while_lstm_877_strided_slice_1)lstm_877_while_lstm_877_strided_slice_1_0"~
<lstm_877_while_lstm_cell_877_biasadd_readvariableop_resource>lstm_877_while_lstm_cell_877_biasadd_readvariableop_resource_0"?
=lstm_877_while_lstm_cell_877_matmul_1_readvariableop_resource?lstm_877_while_lstm_cell_877_matmul_1_readvariableop_resource_0"|
;lstm_877_while_lstm_cell_877_matmul_readvariableop_resource=lstm_877_while_lstm_cell_877_matmul_readvariableop_resource_0"?
clstm_877_while_tensorarrayv2read_tensorlistgetitem_lstm_877_tensorarrayunstack_tensorlistfromtensorelstm_877_while_tensorarrayv2read_tensorlistgetitem_lstm_877_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_877/while/lstm_cell_877/BiasAdd/ReadVariableOp3lstm_877/while/lstm_cell_877/BiasAdd/ReadVariableOp2h
2lstm_877/while/lstm_cell_877/MatMul/ReadVariableOp2lstm_877/while/lstm_cell_877/MatMul/ReadVariableOp2l
4lstm_877/while/lstm_cell_877/MatMul_1/ReadVariableOp4lstm_877/while/lstm_cell_877/MatMul_1/ReadVariableOp: 
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
while_body_5234420
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_876_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_876_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_876_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_876_matmul_readvariableop_resource:	?G
4while_lstm_cell_876_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_876_biasadd_readvariableop_resource:	???*while/lstm_cell_876/BiasAdd/ReadVariableOp?)while/lstm_cell_876/MatMul/ReadVariableOp?+while/lstm_cell_876/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_876/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_876_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_876/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_876/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_876/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_876_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_876/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_876/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_876/addAddV2$while/lstm_cell_876/MatMul:product:0&while/lstm_cell_876/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_876/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_876_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_876/BiasAddBiasAddwhile/lstm_cell_876/add:z:02while/lstm_cell_876/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_876/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_876/splitSplit,while/lstm_cell_876/split/split_dim:output:0$while/lstm_cell_876/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_876/SigmoidSigmoid"while/lstm_cell_876/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_876/Sigmoid_1Sigmoid"while/lstm_cell_876/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_876/mulMul!while/lstm_cell_876/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_876/ReluRelu"while/lstm_cell_876/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_876/mul_1Mulwhile/lstm_cell_876/Sigmoid:y:0&while/lstm_cell_876/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_876/add_1AddV2while/lstm_cell_876/mul:z:0while/lstm_cell_876/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_876/Sigmoid_2Sigmoid"while/lstm_cell_876/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_876/Relu_1Reluwhile/lstm_cell_876/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_876/mul_2Mul!while/lstm_cell_876/Sigmoid_2:y:0(while/lstm_cell_876/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_876/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_876/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_876/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_876/BiasAdd/ReadVariableOp*^while/lstm_cell_876/MatMul/ReadVariableOp,^while/lstm_cell_876/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_876_biasadd_readvariableop_resource5while_lstm_cell_876_biasadd_readvariableop_resource_0"n
4while_lstm_cell_876_matmul_1_readvariableop_resource6while_lstm_cell_876_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_876_matmul_readvariableop_resource4while_lstm_cell_876_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_876/BiasAdd/ReadVariableOp*while/lstm_cell_876/BiasAdd/ReadVariableOp2V
)while/lstm_cell_876/MatMul/ReadVariableOp)while/lstm_cell_876/MatMul/ReadVariableOp2Z
+while/lstm_cell_876/MatMul_1/ReadVariableOp+while/lstm_cell_876/MatMul_1/ReadVariableOp: 
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
*__inference_lstm_878_layer_call_fn_5235571
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
E__inference_lstm_878_layer_call_and_return_conditional_losses_5232190o
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
?W
?
 __inference__traced_save_5236621
file_prefix/
+savev2_dense_292_kernel_read_readvariableop-
)savev2_dense_292_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_876_lstm_cell_876_kernel_read_readvariableopF
Bsavev2_lstm_876_lstm_cell_876_recurrent_kernel_read_readvariableop:
6savev2_lstm_876_lstm_cell_876_bias_read_readvariableop<
8savev2_lstm_877_lstm_cell_877_kernel_read_readvariableopF
Bsavev2_lstm_877_lstm_cell_877_recurrent_kernel_read_readvariableop:
6savev2_lstm_877_lstm_cell_877_bias_read_readvariableop<
8savev2_lstm_878_lstm_cell_878_kernel_read_readvariableopF
Bsavev2_lstm_878_lstm_cell_878_recurrent_kernel_read_readvariableop:
6savev2_lstm_878_lstm_cell_878_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop6
2savev2_adam_dense_292_kernel_m_read_readvariableop4
0savev2_adam_dense_292_bias_m_read_readvariableopC
?savev2_adam_lstm_876_lstm_cell_876_kernel_m_read_readvariableopM
Isavev2_adam_lstm_876_lstm_cell_876_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_876_lstm_cell_876_bias_m_read_readvariableopC
?savev2_adam_lstm_877_lstm_cell_877_kernel_m_read_readvariableopM
Isavev2_adam_lstm_877_lstm_cell_877_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_877_lstm_cell_877_bias_m_read_readvariableopC
?savev2_adam_lstm_878_lstm_cell_878_kernel_m_read_readvariableopM
Isavev2_adam_lstm_878_lstm_cell_878_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_878_lstm_cell_878_bias_m_read_readvariableop6
2savev2_adam_dense_292_kernel_v_read_readvariableop4
0savev2_adam_dense_292_bias_v_read_readvariableopC
?savev2_adam_lstm_876_lstm_cell_876_kernel_v_read_readvariableopM
Isavev2_adam_lstm_876_lstm_cell_876_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_876_lstm_cell_876_bias_v_read_readvariableopC
?savev2_adam_lstm_877_lstm_cell_877_kernel_v_read_readvariableopM
Isavev2_adam_lstm_877_lstm_cell_877_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_877_lstm_cell_877_bias_v_read_readvariableopC
?savev2_adam_lstm_878_lstm_cell_878_kernel_v_read_readvariableopM
Isavev2_adam_lstm_878_lstm_cell_878_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_878_lstm_cell_878_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_dense_292_kernel_read_readvariableop)savev2_dense_292_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_876_lstm_cell_876_kernel_read_readvariableopBsavev2_lstm_876_lstm_cell_876_recurrent_kernel_read_readvariableop6savev2_lstm_876_lstm_cell_876_bias_read_readvariableop8savev2_lstm_877_lstm_cell_877_kernel_read_readvariableopBsavev2_lstm_877_lstm_cell_877_recurrent_kernel_read_readvariableop6savev2_lstm_877_lstm_cell_877_bias_read_readvariableop8savev2_lstm_878_lstm_cell_878_kernel_read_readvariableopBsavev2_lstm_878_lstm_cell_878_recurrent_kernel_read_readvariableop6savev2_lstm_878_lstm_cell_878_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop2savev2_adam_dense_292_kernel_m_read_readvariableop0savev2_adam_dense_292_bias_m_read_readvariableop?savev2_adam_lstm_876_lstm_cell_876_kernel_m_read_readvariableopIsavev2_adam_lstm_876_lstm_cell_876_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_876_lstm_cell_876_bias_m_read_readvariableop?savev2_adam_lstm_877_lstm_cell_877_kernel_m_read_readvariableopIsavev2_adam_lstm_877_lstm_cell_877_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_877_lstm_cell_877_bias_m_read_readvariableop?savev2_adam_lstm_878_lstm_cell_878_kernel_m_read_readvariableopIsavev2_adam_lstm_878_lstm_cell_878_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_878_lstm_cell_878_bias_m_read_readvariableop2savev2_adam_dense_292_kernel_v_read_readvariableop0savev2_adam_dense_292_bias_v_read_readvariableop?savev2_adam_lstm_876_lstm_cell_876_kernel_v_read_readvariableopIsavev2_adam_lstm_876_lstm_cell_876_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_876_lstm_cell_876_bias_v_read_readvariableop?savev2_adam_lstm_877_lstm_cell_877_kernel_v_read_readvariableopIsavev2_adam_lstm_877_lstm_cell_877_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_877_lstm_cell_877_bias_v_read_readvariableop?savev2_adam_lstm_878_lstm_cell_878_kernel_v_read_readvariableopIsavev2_adam_lstm_878_lstm_cell_878_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_878_lstm_cell_878_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
?8
?
while_body_5235465
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_877_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_877_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_877_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_877_matmul_readvariableop_resource:	d?G
4while_lstm_cell_877_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_877_biasadd_readvariableop_resource:	???*while/lstm_cell_877/BiasAdd/ReadVariableOp?)while/lstm_cell_877/MatMul/ReadVariableOp?+while/lstm_cell_877/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_877/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_877_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_877/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_877/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_877/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_877_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_877/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_877/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_877/addAddV2$while/lstm_cell_877/MatMul:product:0&while/lstm_cell_877/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_877/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_877_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_877/BiasAddBiasAddwhile/lstm_cell_877/add:z:02while/lstm_cell_877/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_877/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_877/splitSplit,while/lstm_cell_877/split/split_dim:output:0$while/lstm_cell_877/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_877/SigmoidSigmoid"while/lstm_cell_877/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_877/Sigmoid_1Sigmoid"while/lstm_cell_877/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_877/mulMul!while/lstm_cell_877/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_877/ReluRelu"while/lstm_cell_877/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_877/mul_1Mulwhile/lstm_cell_877/Sigmoid:y:0&while/lstm_cell_877/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_877/add_1AddV2while/lstm_cell_877/mul:z:0while/lstm_cell_877/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_877/Sigmoid_2Sigmoid"while/lstm_cell_877/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_877/Relu_1Reluwhile/lstm_cell_877/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_877/mul_2Mul!while/lstm_cell_877/Sigmoid_2:y:0(while/lstm_cell_877/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_877/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_877/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_877/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_877/BiasAdd/ReadVariableOp*^while/lstm_cell_877/MatMul/ReadVariableOp,^while/lstm_cell_877/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_877_biasadd_readvariableop_resource5while_lstm_cell_877_biasadd_readvariableop_resource_0"n
4while_lstm_cell_877_matmul_1_readvariableop_resource6while_lstm_cell_877_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_877_matmul_readvariableop_resource4while_lstm_cell_877_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_877/BiasAdd/ReadVariableOp*while/lstm_cell_877/BiasAdd/ReadVariableOp2V
)while/lstm_cell_877/MatMul/ReadVariableOp)while/lstm_cell_877/MatMul/ReadVariableOp2Z
+while/lstm_cell_877/MatMul_1/ReadVariableOp+while/lstm_cell_877/MatMul_1/ReadVariableOp: 
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

?
0__inference_sequential_292_layer_call_fn_5233314
lstm_876_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_876_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_292_layer_call_and_return_conditional_losses_5233262o
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
_user_specified_namelstm_876_input
?

?
0__inference_sequential_292_layer_call_fn_5232698
lstm_876_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_876_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_292_layer_call_and_return_conditional_losses_5232673o
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
_user_specified_namelstm_876_input
?
?
while_cond_5235178
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5235178___redundant_placeholder05
1while_while_cond_5235178___redundant_placeholder15
1while_while_cond_5235178___redundant_placeholder25
1while_while_cond_5235178___redundant_placeholder3
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
while_body_5234563
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_876_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_876_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_876_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_876_matmul_readvariableop_resource:	?G
4while_lstm_cell_876_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_876_biasadd_readvariableop_resource:	???*while/lstm_cell_876/BiasAdd/ReadVariableOp?)while/lstm_cell_876/MatMul/ReadVariableOp?+while/lstm_cell_876/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_876/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_876_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_876/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_876/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_876/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_876_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_876/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_876/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_876/addAddV2$while/lstm_cell_876/MatMul:product:0&while/lstm_cell_876/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_876/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_876_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_876/BiasAddBiasAddwhile/lstm_cell_876/add:z:02while/lstm_cell_876/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_876/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_876/splitSplit,while/lstm_cell_876/split/split_dim:output:0$while/lstm_cell_876/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_876/SigmoidSigmoid"while/lstm_cell_876/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_876/Sigmoid_1Sigmoid"while/lstm_cell_876/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_876/mulMul!while/lstm_cell_876/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_876/ReluRelu"while/lstm_cell_876/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_876/mul_1Mulwhile/lstm_cell_876/Sigmoid:y:0&while/lstm_cell_876/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_876/add_1AddV2while/lstm_cell_876/mul:z:0while/lstm_cell_876/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_876/Sigmoid_2Sigmoid"while/lstm_cell_876/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_876/Relu_1Reluwhile/lstm_cell_876/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_876/mul_2Mul!while/lstm_cell_876/Sigmoid_2:y:0(while/lstm_cell_876/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_876/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_876/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_876/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_876/BiasAdd/ReadVariableOp*^while/lstm_cell_876/MatMul/ReadVariableOp,^while/lstm_cell_876/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_876_biasadd_readvariableop_resource5while_lstm_cell_876_biasadd_readvariableop_resource_0"n
4while_lstm_cell_876_matmul_1_readvariableop_resource6while_lstm_cell_876_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_876_matmul_readvariableop_resource4while_lstm_cell_876_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_876/BiasAdd/ReadVariableOp*while/lstm_cell_876/BiasAdd/ReadVariableOp2V
)while/lstm_cell_876/MatMul/ReadVariableOp)while/lstm_cell_876/MatMul/ReadVariableOp2Z
+while/lstm_cell_876/MatMul_1/ReadVariableOp+while/lstm_cell_876/MatMul_1/ReadVariableOp: 
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
E__inference_lstm_876_layer_call_and_return_conditional_losses_5234790

inputs?
,lstm_cell_876_matmul_readvariableop_resource:	?A
.lstm_cell_876_matmul_1_readvariableop_resource:	d?<
-lstm_cell_876_biasadd_readvariableop_resource:	?
identity??$lstm_cell_876/BiasAdd/ReadVariableOp?#lstm_cell_876/MatMul/ReadVariableOp?%lstm_cell_876/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_876/MatMul/ReadVariableOpReadVariableOp,lstm_cell_876_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_876/MatMulMatMulstrided_slice_2:output:0+lstm_cell_876/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_876/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_876_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_876/MatMul_1MatMulzeros:output:0-lstm_cell_876/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_876/addAddV2lstm_cell_876/MatMul:product:0 lstm_cell_876/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_876/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_876_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_876/BiasAddBiasAddlstm_cell_876/add:z:0,lstm_cell_876/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_876/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_876/splitSplit&lstm_cell_876/split/split_dim:output:0lstm_cell_876/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_876/SigmoidSigmoidlstm_cell_876/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_876/Sigmoid_1Sigmoidlstm_cell_876/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_876/mulMullstm_cell_876/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_876/ReluRelulstm_cell_876/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_876/mul_1Mullstm_cell_876/Sigmoid:y:0 lstm_cell_876/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_876/add_1AddV2lstm_cell_876/mul:z:0lstm_cell_876/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_876/Sigmoid_2Sigmoidlstm_cell_876/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_876/Relu_1Relulstm_cell_876/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_876/mul_2Mullstm_cell_876/Sigmoid_2:y:0"lstm_cell_876/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_876_matmul_readvariableop_resource.lstm_cell_876_matmul_1_readvariableop_resource-lstm_cell_876_biasadd_readvariableop_resource*
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
while_body_5234706*
condR
while_cond_5234705*K
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
NoOpNoOp%^lstm_cell_876/BiasAdd/ReadVariableOp$^lstm_cell_876/MatMul/ReadVariableOp&^lstm_cell_876/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_876/BiasAdd/ReadVariableOp$lstm_cell_876/BiasAdd/ReadVariableOp2J
#lstm_cell_876/MatMul/ReadVariableOp#lstm_cell_876/MatMul/ReadVariableOp2N
%lstm_cell_876/MatMul_1/ReadVariableOp%lstm_cell_876/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
while_body_5235322
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_877_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_877_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_877_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_877_matmul_readvariableop_resource:	d?G
4while_lstm_cell_877_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_877_biasadd_readvariableop_resource:	???*while/lstm_cell_877/BiasAdd/ReadVariableOp?)while/lstm_cell_877/MatMul/ReadVariableOp?+while/lstm_cell_877/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_877/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_877_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_877/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_877/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_877/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_877_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_877/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_877/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_877/addAddV2$while/lstm_cell_877/MatMul:product:0&while/lstm_cell_877/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_877/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_877_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_877/BiasAddBiasAddwhile/lstm_cell_877/add:z:02while/lstm_cell_877/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_877/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_877/splitSplit,while/lstm_cell_877/split/split_dim:output:0$while/lstm_cell_877/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_877/SigmoidSigmoid"while/lstm_cell_877/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_877/Sigmoid_1Sigmoid"while/lstm_cell_877/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_877/mulMul!while/lstm_cell_877/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_877/ReluRelu"while/lstm_cell_877/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_877/mul_1Mulwhile/lstm_cell_877/Sigmoid:y:0&while/lstm_cell_877/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_877/add_1AddV2while/lstm_cell_877/mul:z:0while/lstm_cell_877/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_877/Sigmoid_2Sigmoid"while/lstm_cell_877/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_877/Relu_1Reluwhile/lstm_cell_877/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_877/mul_2Mul!while/lstm_cell_877/Sigmoid_2:y:0(while/lstm_cell_877/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_877/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_877/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_877/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_877/BiasAdd/ReadVariableOp*^while/lstm_cell_877/MatMul/ReadVariableOp,^while/lstm_cell_877/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_877_biasadd_readvariableop_resource5while_lstm_cell_877_biasadd_readvariableop_resource_0"n
4while_lstm_cell_877_matmul_1_readvariableop_resource6while_lstm_cell_877_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_877_matmul_readvariableop_resource4while_lstm_cell_877_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_877/BiasAdd/ReadVariableOp*while/lstm_cell_877/BiasAdd/ReadVariableOp2V
)while/lstm_cell_877/MatMul/ReadVariableOp)while/lstm_cell_877/MatMul/ReadVariableOp2Z
+while/lstm_cell_877/MatMul_1/ReadVariableOp+while/lstm_cell_877/MatMul_1/ReadVariableOp: 
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
while_body_5236081
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_878_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_878_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_878_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_878_matmul_readvariableop_resource:2(F
4while_lstm_cell_878_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_878_biasadd_readvariableop_resource:(??*while/lstm_cell_878/BiasAdd/ReadVariableOp?)while/lstm_cell_878/MatMul/ReadVariableOp?+while/lstm_cell_878/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_878/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_878_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_878/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_878/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_878/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_878_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_878/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_878/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_878/addAddV2$while/lstm_cell_878/MatMul:product:0&while/lstm_cell_878/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_878/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_878_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_878/BiasAddBiasAddwhile/lstm_cell_878/add:z:02while/lstm_cell_878/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_878/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_878/splitSplit,while/lstm_cell_878/split/split_dim:output:0$while/lstm_cell_878/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_878/SigmoidSigmoid"while/lstm_cell_878/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_878/Sigmoid_1Sigmoid"while/lstm_cell_878/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_878/mulMul!while/lstm_cell_878/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_878/ReluRelu"while/lstm_cell_878/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_878/mul_1Mulwhile/lstm_cell_878/Sigmoid:y:0&while/lstm_cell_878/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_878/add_1AddV2while/lstm_cell_878/mul:z:0while/lstm_cell_878/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_878/Sigmoid_2Sigmoid"while/lstm_cell_878/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_878/Relu_1Reluwhile/lstm_cell_878/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_878/mul_2Mul!while/lstm_cell_878/Sigmoid_2:y:0(while/lstm_cell_878/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_878/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_878/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_878/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_878/BiasAdd/ReadVariableOp*^while/lstm_cell_878/MatMul/ReadVariableOp,^while/lstm_cell_878/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_878_biasadd_readvariableop_resource5while_lstm_cell_878_biasadd_readvariableop_resource_0"n
4while_lstm_cell_878_matmul_1_readvariableop_resource6while_lstm_cell_878_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_878_matmul_readvariableop_resource4while_lstm_cell_878_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_878/BiasAdd/ReadVariableOp*while/lstm_cell_878/BiasAdd/ReadVariableOp2V
)while/lstm_cell_878/MatMul/ReadVariableOp)while/lstm_cell_878/MatMul/ReadVariableOp2Z
+while/lstm_cell_878/MatMul_1/ReadVariableOp+while/lstm_cell_878/MatMul_1/ReadVariableOp: 
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
E__inference_lstm_877_layer_call_and_return_conditional_losses_5235263
inputs_0?
,lstm_cell_877_matmul_readvariableop_resource:	d?A
.lstm_cell_877_matmul_1_readvariableop_resource:	2?<
-lstm_cell_877_biasadd_readvariableop_resource:	?
identity??$lstm_cell_877/BiasAdd/ReadVariableOp?#lstm_cell_877/MatMul/ReadVariableOp?%lstm_cell_877/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_877/MatMul/ReadVariableOpReadVariableOp,lstm_cell_877_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_877/MatMulMatMulstrided_slice_2:output:0+lstm_cell_877/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_877/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_877_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_877/MatMul_1MatMulzeros:output:0-lstm_cell_877/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_877/addAddV2lstm_cell_877/MatMul:product:0 lstm_cell_877/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_877/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_877_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_877/BiasAddBiasAddlstm_cell_877/add:z:0,lstm_cell_877/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_877/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_877/splitSplit&lstm_cell_877/split/split_dim:output:0lstm_cell_877/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_877/SigmoidSigmoidlstm_cell_877/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_877/Sigmoid_1Sigmoidlstm_cell_877/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_877/mulMullstm_cell_877/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_877/ReluRelulstm_cell_877/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_877/mul_1Mullstm_cell_877/Sigmoid:y:0 lstm_cell_877/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_877/add_1AddV2lstm_cell_877/mul:z:0lstm_cell_877/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_877/Sigmoid_2Sigmoidlstm_cell_877/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_877/Relu_1Relulstm_cell_877/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_877/mul_2Mullstm_cell_877/Sigmoid_2:y:0"lstm_cell_877/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_877_matmul_readvariableop_resource.lstm_cell_877_matmul_1_readvariableop_resource-lstm_cell_877_biasadd_readvariableop_resource*
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
while_body_5235179*
condR
while_cond_5235178*K
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
NoOpNoOp%^lstm_cell_877/BiasAdd/ReadVariableOp$^lstm_cell_877/MatMul/ReadVariableOp&^lstm_cell_877/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_877/BiasAdd/ReadVariableOp$lstm_cell_877/BiasAdd/ReadVariableOp2J
#lstm_cell_877/MatMul/ReadVariableOp#lstm_cell_877/MatMul/ReadVariableOp2N
%lstm_cell_877/MatMul_1/ReadVariableOp%lstm_cell_877/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?
?
/__inference_lstm_cell_878_layer_call_fn_5236414

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
J__inference_lstm_cell_878_layer_call_and_return_conditional_losses_5232062o
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
while_body_5232121
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_878_5232145_0:2(/
while_lstm_cell_878_5232147_0:
(+
while_lstm_cell_878_5232149_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_878_5232145:2(-
while_lstm_cell_878_5232147:
()
while_lstm_cell_878_5232149:(??+while/lstm_cell_878/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_878/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_878_5232145_0while_lstm_cell_878_5232147_0while_lstm_cell_878_5232149_0*
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
J__inference_lstm_cell_878_layer_call_and_return_conditional_losses_5232062?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_878/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_878/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_878/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_878/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_878_5232145while_lstm_cell_878_5232145_0"<
while_lstm_cell_878_5232147while_lstm_cell_878_5232147_0"<
while_lstm_cell_878_5232149while_lstm_cell_878_5232149_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_878/StatefulPartitionedCall+while/lstm_cell_878/StatefulPartitionedCall: 
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
+__inference_dense_292_layer_call_fn_5236174

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
F__inference_dense_292_layer_call_and_return_conditional_losses_5232666o
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
?8
?
E__inference_lstm_876_layer_call_and_return_conditional_losses_5231299

inputs(
lstm_cell_876_5231217:	?(
lstm_cell_876_5231219:	d?$
lstm_cell_876_5231221:	?
identity??%lstm_cell_876/StatefulPartitionedCall?while;
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
%lstm_cell_876/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_876_5231217lstm_cell_876_5231219lstm_cell_876_5231221*
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
J__inference_lstm_cell_876_layer_call_and_return_conditional_losses_5231216n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_876_5231217lstm_cell_876_5231219lstm_cell_876_5231221*
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
while_body_5231230*
condR
while_cond_5231229*K
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
NoOpNoOp&^lstm_cell_876/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_876/StatefulPartitionedCall%lstm_cell_876/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
*__inference_lstm_877_layer_call_fn_5234977

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
E__inference_lstm_877_layer_call_and_return_conditional_losses_5233029s
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
?
?
/__inference_lstm_cell_876_layer_call_fn_5236201

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
J__inference_lstm_cell_876_layer_call_and_return_conditional_losses_5231216o
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

lstm_876_while_body_5233949.
*lstm_876_while_lstm_876_while_loop_counter4
0lstm_876_while_lstm_876_while_maximum_iterations
lstm_876_while_placeholder 
lstm_876_while_placeholder_1 
lstm_876_while_placeholder_2 
lstm_876_while_placeholder_3-
)lstm_876_while_lstm_876_strided_slice_1_0i
elstm_876_while_tensorarrayv2read_tensorlistgetitem_lstm_876_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_876_while_lstm_cell_876_matmul_readvariableop_resource_0:	?R
?lstm_876_while_lstm_cell_876_matmul_1_readvariableop_resource_0:	d?M
>lstm_876_while_lstm_cell_876_biasadd_readvariableop_resource_0:	?
lstm_876_while_identity
lstm_876_while_identity_1
lstm_876_while_identity_2
lstm_876_while_identity_3
lstm_876_while_identity_4
lstm_876_while_identity_5+
'lstm_876_while_lstm_876_strided_slice_1g
clstm_876_while_tensorarrayv2read_tensorlistgetitem_lstm_876_tensorarrayunstack_tensorlistfromtensorN
;lstm_876_while_lstm_cell_876_matmul_readvariableop_resource:	?P
=lstm_876_while_lstm_cell_876_matmul_1_readvariableop_resource:	d?K
<lstm_876_while_lstm_cell_876_biasadd_readvariableop_resource:	???3lstm_876/while/lstm_cell_876/BiasAdd/ReadVariableOp?2lstm_876/while/lstm_cell_876/MatMul/ReadVariableOp?4lstm_876/while/lstm_cell_876/MatMul_1/ReadVariableOp?
@lstm_876/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_876/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_876_while_tensorarrayv2read_tensorlistgetitem_lstm_876_tensorarrayunstack_tensorlistfromtensor_0lstm_876_while_placeholderIlstm_876/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_876/while/lstm_cell_876/MatMul/ReadVariableOpReadVariableOp=lstm_876_while_lstm_cell_876_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_876/while/lstm_cell_876/MatMulMatMul9lstm_876/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_876/while/lstm_cell_876/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_876/while/lstm_cell_876/MatMul_1/ReadVariableOpReadVariableOp?lstm_876_while_lstm_cell_876_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_876/while/lstm_cell_876/MatMul_1MatMullstm_876_while_placeholder_2<lstm_876/while/lstm_cell_876/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_876/while/lstm_cell_876/addAddV2-lstm_876/while/lstm_cell_876/MatMul:product:0/lstm_876/while/lstm_cell_876/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_876/while/lstm_cell_876/BiasAdd/ReadVariableOpReadVariableOp>lstm_876_while_lstm_cell_876_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_876/while/lstm_cell_876/BiasAddBiasAdd$lstm_876/while/lstm_cell_876/add:z:0;lstm_876/while/lstm_cell_876/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_876/while/lstm_cell_876/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_876/while/lstm_cell_876/splitSplit5lstm_876/while/lstm_cell_876/split/split_dim:output:0-lstm_876/while/lstm_cell_876/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_876/while/lstm_cell_876/SigmoidSigmoid+lstm_876/while/lstm_cell_876/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_876/while/lstm_cell_876/Sigmoid_1Sigmoid+lstm_876/while/lstm_cell_876/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_876/while/lstm_cell_876/mulMul*lstm_876/while/lstm_cell_876/Sigmoid_1:y:0lstm_876_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_876/while/lstm_cell_876/ReluRelu+lstm_876/while/lstm_cell_876/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_876/while/lstm_cell_876/mul_1Mul(lstm_876/while/lstm_cell_876/Sigmoid:y:0/lstm_876/while/lstm_cell_876/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_876/while/lstm_cell_876/add_1AddV2$lstm_876/while/lstm_cell_876/mul:z:0&lstm_876/while/lstm_cell_876/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_876/while/lstm_cell_876/Sigmoid_2Sigmoid+lstm_876/while/lstm_cell_876/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_876/while/lstm_cell_876/Relu_1Relu&lstm_876/while/lstm_cell_876/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_876/while/lstm_cell_876/mul_2Mul*lstm_876/while/lstm_cell_876/Sigmoid_2:y:01lstm_876/while/lstm_cell_876/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_876/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_876_while_placeholder_1lstm_876_while_placeholder&lstm_876/while/lstm_cell_876/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_876/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_876/while/addAddV2lstm_876_while_placeholderlstm_876/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_876/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_876/while/add_1AddV2*lstm_876_while_lstm_876_while_loop_counterlstm_876/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_876/while/IdentityIdentitylstm_876/while/add_1:z:0^lstm_876/while/NoOp*
T0*
_output_shapes
: ?
lstm_876/while/Identity_1Identity0lstm_876_while_lstm_876_while_maximum_iterations^lstm_876/while/NoOp*
T0*
_output_shapes
: t
lstm_876/while/Identity_2Identitylstm_876/while/add:z:0^lstm_876/while/NoOp*
T0*
_output_shapes
: ?
lstm_876/while/Identity_3IdentityClstm_876/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_876/while/NoOp*
T0*
_output_shapes
: ?
lstm_876/while/Identity_4Identity&lstm_876/while/lstm_cell_876/mul_2:z:0^lstm_876/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_876/while/Identity_5Identity&lstm_876/while/lstm_cell_876/add_1:z:0^lstm_876/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_876/while/NoOpNoOp4^lstm_876/while/lstm_cell_876/BiasAdd/ReadVariableOp3^lstm_876/while/lstm_cell_876/MatMul/ReadVariableOp5^lstm_876/while/lstm_cell_876/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_876_while_identity lstm_876/while/Identity:output:0"?
lstm_876_while_identity_1"lstm_876/while/Identity_1:output:0"?
lstm_876_while_identity_2"lstm_876/while/Identity_2:output:0"?
lstm_876_while_identity_3"lstm_876/while/Identity_3:output:0"?
lstm_876_while_identity_4"lstm_876/while/Identity_4:output:0"?
lstm_876_while_identity_5"lstm_876/while/Identity_5:output:0"T
'lstm_876_while_lstm_876_strided_slice_1)lstm_876_while_lstm_876_strided_slice_1_0"~
<lstm_876_while_lstm_cell_876_biasadd_readvariableop_resource>lstm_876_while_lstm_cell_876_biasadd_readvariableop_resource_0"?
=lstm_876_while_lstm_cell_876_matmul_1_readvariableop_resource?lstm_876_while_lstm_cell_876_matmul_1_readvariableop_resource_0"|
;lstm_876_while_lstm_cell_876_matmul_readvariableop_resource=lstm_876_while_lstm_cell_876_matmul_readvariableop_resource_0"?
clstm_876_while_tensorarrayv2read_tensorlistgetitem_lstm_876_tensorarrayunstack_tensorlistfromtensorelstm_876_while_tensorarrayv2read_tensorlistgetitem_lstm_876_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_876/while/lstm_cell_876/BiasAdd/ReadVariableOp3lstm_876/while/lstm_cell_876/BiasAdd/ReadVariableOp2h
2lstm_876/while/lstm_cell_876/MatMul/ReadVariableOp2lstm_876/while/lstm_cell_876/MatMul/ReadVariableOp2l
4lstm_876/while/lstm_cell_876/MatMul_1/ReadVariableOp4lstm_876/while/lstm_cell_876/MatMul_1/ReadVariableOp: 
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
*__inference_lstm_877_layer_call_fn_5234944
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
E__inference_lstm_877_layer_call_and_return_conditional_losses_5231649|
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
?#
?
while_body_5231930
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_878_5231954_0:2(/
while_lstm_cell_878_5231956_0:
(+
while_lstm_cell_878_5231958_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_878_5231954:2(-
while_lstm_cell_878_5231956:
()
while_lstm_cell_878_5231958:(??+while/lstm_cell_878/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_878/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_878_5231954_0while_lstm_cell_878_5231956_0while_lstm_cell_878_5231958_0*
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
J__inference_lstm_cell_878_layer_call_and_return_conditional_losses_5231916?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_878/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_878/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_878/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_878/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_878_5231954while_lstm_cell_878_5231954_0"<
while_lstm_cell_878_5231956while_lstm_cell_878_5231956_0"<
while_lstm_cell_878_5231958while_lstm_cell_878_5231958_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_878/StatefulPartitionedCall+while/lstm_cell_878/StatefulPartitionedCall: 
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
?
*sequential_292_lstm_878_while_cond_5231058L
Hsequential_292_lstm_878_while_sequential_292_lstm_878_while_loop_counterR
Nsequential_292_lstm_878_while_sequential_292_lstm_878_while_maximum_iterations-
)sequential_292_lstm_878_while_placeholder/
+sequential_292_lstm_878_while_placeholder_1/
+sequential_292_lstm_878_while_placeholder_2/
+sequential_292_lstm_878_while_placeholder_3N
Jsequential_292_lstm_878_while_less_sequential_292_lstm_878_strided_slice_1e
asequential_292_lstm_878_while_sequential_292_lstm_878_while_cond_5231058___redundant_placeholder0e
asequential_292_lstm_878_while_sequential_292_lstm_878_while_cond_5231058___redundant_placeholder1e
asequential_292_lstm_878_while_sequential_292_lstm_878_while_cond_5231058___redundant_placeholder2e
asequential_292_lstm_878_while_sequential_292_lstm_878_while_cond_5231058___redundant_placeholder3*
&sequential_292_lstm_878_while_identity
?
"sequential_292/lstm_878/while/LessLess)sequential_292_lstm_878_while_placeholderJsequential_292_lstm_878_while_less_sequential_292_lstm_878_strided_slice_1*
T0*
_output_shapes
: {
&sequential_292/lstm_878/while/IdentityIdentity&sequential_292/lstm_878/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_292_lstm_878_while_identity/sequential_292/lstm_878/while/Identity:output:0*(
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
J__inference_lstm_cell_877_layer_call_and_return_conditional_losses_5236348

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
?
*__inference_lstm_876_layer_call_fn_5234339
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
E__inference_lstm_876_layer_call_and_return_conditional_losses_5231490|
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
?J
?
E__inference_lstm_878_layer_call_and_return_conditional_losses_5232648

inputs>
,lstm_cell_878_matmul_readvariableop_resource:2(@
.lstm_cell_878_matmul_1_readvariableop_resource:
(;
-lstm_cell_878_biasadd_readvariableop_resource:(
identity??$lstm_cell_878/BiasAdd/ReadVariableOp?#lstm_cell_878/MatMul/ReadVariableOp?%lstm_cell_878/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_878/MatMul/ReadVariableOpReadVariableOp,lstm_cell_878_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_878/MatMulMatMulstrided_slice_2:output:0+lstm_cell_878/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_878/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_878_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_878/MatMul_1MatMulzeros:output:0-lstm_cell_878/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_878/addAddV2lstm_cell_878/MatMul:product:0 lstm_cell_878/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_878/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_878_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_878/BiasAddBiasAddlstm_cell_878/add:z:0,lstm_cell_878/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_878/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_878/splitSplit&lstm_cell_878/split/split_dim:output:0lstm_cell_878/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_878/SigmoidSigmoidlstm_cell_878/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_878/Sigmoid_1Sigmoidlstm_cell_878/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_878/mulMullstm_cell_878/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_878/ReluRelulstm_cell_878/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_878/mul_1Mullstm_cell_878/Sigmoid:y:0 lstm_cell_878/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_878/add_1AddV2lstm_cell_878/mul:z:0lstm_cell_878/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_878/Sigmoid_2Sigmoidlstm_cell_878/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_878/Relu_1Relulstm_cell_878/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_878/mul_2Mullstm_cell_878/Sigmoid_2:y:0"lstm_cell_878/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_878_matmul_readvariableop_resource.lstm_cell_878_matmul_1_readvariableop_resource-lstm_cell_878_biasadd_readvariableop_resource*
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
while_body_5232564*
condR
while_cond_5232563*K
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
NoOpNoOp%^lstm_cell_878/BiasAdd/ReadVariableOp$^lstm_cell_878/MatMul/ReadVariableOp&^lstm_cell_878/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_878/BiasAdd/ReadVariableOp$lstm_cell_878/BiasAdd/ReadVariableOp2J
#lstm_cell_878/MatMul/ReadVariableOp#lstm_cell_878/MatMul/ReadVariableOp2N
%lstm_cell_878/MatMul_1/ReadVariableOp%lstm_cell_878/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?	
?
F__inference_dense_292_layer_call_and_return_conditional_losses_5236184

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
?
?
/__inference_lstm_cell_877_layer_call_fn_5236299

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
J__inference_lstm_cell_877_layer_call_and_return_conditional_losses_5231566o
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
?
?
J__inference_lstm_cell_878_layer_call_and_return_conditional_losses_5232062

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
while_body_5231580
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_877_5231604_0:	d?0
while_lstm_cell_877_5231606_0:	2?,
while_lstm_cell_877_5231608_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_877_5231604:	d?.
while_lstm_cell_877_5231606:	2?*
while_lstm_cell_877_5231608:	???+while/lstm_cell_877/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_877/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_877_5231604_0while_lstm_cell_877_5231606_0while_lstm_cell_877_5231608_0*
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
J__inference_lstm_cell_877_layer_call_and_return_conditional_losses_5231566?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_877/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_877/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_877/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_877/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_877_5231604while_lstm_cell_877_5231604_0"<
while_lstm_cell_877_5231606while_lstm_cell_877_5231606_0"<
while_lstm_cell_877_5231608while_lstm_cell_877_5231608_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_877/StatefulPartitionedCall+while/lstm_cell_877/StatefulPartitionedCall: 
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
while_cond_5232263
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5232263___redundant_placeholder05
1while_while_cond_5232263___redundant_placeholder15
1while_while_cond_5232263___redundant_placeholder25
1while_while_cond_5232263___redundant_placeholder3
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
K__inference_sequential_292_layer_call_and_return_conditional_losses_5233262

inputs#
lstm_876_5233235:	?#
lstm_876_5233237:	d?
lstm_876_5233239:	?#
lstm_877_5233242:	d?#
lstm_877_5233244:	2?
lstm_877_5233246:	?"
lstm_878_5233249:2("
lstm_878_5233251:
(
lstm_878_5233253:(#
dense_292_5233256:

dense_292_5233258:
identity??!dense_292/StatefulPartitionedCall? lstm_876/StatefulPartitionedCall? lstm_877/StatefulPartitionedCall? lstm_878/StatefulPartitionedCall?
 lstm_876/StatefulPartitionedCallStatefulPartitionedCallinputslstm_876_5233235lstm_876_5233237lstm_876_5233239*
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
E__inference_lstm_876_layer_call_and_return_conditional_losses_5233194?
 lstm_877/StatefulPartitionedCallStatefulPartitionedCall)lstm_876/StatefulPartitionedCall:output:0lstm_877_5233242lstm_877_5233244lstm_877_5233246*
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
E__inference_lstm_877_layer_call_and_return_conditional_losses_5233029?
 lstm_878/StatefulPartitionedCallStatefulPartitionedCall)lstm_877/StatefulPartitionedCall:output:0lstm_878_5233249lstm_878_5233251lstm_878_5233253*
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
E__inference_lstm_878_layer_call_and_return_conditional_losses_5232864?
!dense_292/StatefulPartitionedCallStatefulPartitionedCall)lstm_878/StatefulPartitionedCall:output:0dense_292_5233256dense_292_5233258*
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
F__inference_dense_292_layer_call_and_return_conditional_losses_5232666y
IdentityIdentity*dense_292/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_292/StatefulPartitionedCall!^lstm_876/StatefulPartitionedCall!^lstm_877/StatefulPartitionedCall!^lstm_878/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_292/StatefulPartitionedCall!dense_292/StatefulPartitionedCall2D
 lstm_876/StatefulPartitionedCall lstm_876/StatefulPartitionedCall2D
 lstm_877/StatefulPartitionedCall lstm_877/StatefulPartitionedCall2D
 lstm_878/StatefulPartitionedCall lstm_878/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
E__inference_lstm_877_layer_call_and_return_conditional_losses_5231649

inputs(
lstm_cell_877_5231567:	d?(
lstm_cell_877_5231569:	2?$
lstm_cell_877_5231571:	?
identity??%lstm_cell_877/StatefulPartitionedCall?while;
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
%lstm_cell_877/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_877_5231567lstm_cell_877_5231569lstm_cell_877_5231571*
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
J__inference_lstm_cell_877_layer_call_and_return_conditional_losses_5231566n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_877_5231567lstm_cell_877_5231569lstm_cell_877_5231571*
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
while_body_5231580*
condR
while_cond_5231579*K
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
NoOpNoOp&^lstm_cell_877/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_877/StatefulPartitionedCall%lstm_cell_877/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?
?
while_cond_5234848
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5234848___redundant_placeholder05
1while_while_cond_5234848___redundant_placeholder15
1while_while_cond_5234848___redundant_placeholder25
1while_while_cond_5234848___redundant_placeholder3
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
J__inference_lstm_cell_877_layer_call_and_return_conditional_losses_5231566

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
?
?
/__inference_lstm_cell_877_layer_call_fn_5236316

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
J__inference_lstm_cell_877_layer_call_and_return_conditional_losses_5231712o
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
lstm_876_input;
 serving_default_lstm_876_input:0?????????=
	dense_2920
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
2dense_292/kernel
:2dense_292/bias
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
0:.	?2lstm_876/lstm_cell_876/kernel
::8	d?2'lstm_876/lstm_cell_876/recurrent_kernel
*:(?2lstm_876/lstm_cell_876/bias
0:.	d?2lstm_877/lstm_cell_877/kernel
::8	2?2'lstm_877/lstm_cell_877/recurrent_kernel
*:(?2lstm_877/lstm_cell_877/bias
/:-2(2lstm_878/lstm_cell_878/kernel
9:7
(2'lstm_878/lstm_cell_878/recurrent_kernel
):'(2lstm_878/lstm_cell_878/bias
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
2Adam/dense_292/kernel/m
!:2Adam/dense_292/bias/m
5:3	?2$Adam/lstm_876/lstm_cell_876/kernel/m
?:=	d?2.Adam/lstm_876/lstm_cell_876/recurrent_kernel/m
/:-?2"Adam/lstm_876/lstm_cell_876/bias/m
5:3	d?2$Adam/lstm_877/lstm_cell_877/kernel/m
?:=	2?2.Adam/lstm_877/lstm_cell_877/recurrent_kernel/m
/:-?2"Adam/lstm_877/lstm_cell_877/bias/m
4:22(2$Adam/lstm_878/lstm_cell_878/kernel/m
>:<
(2.Adam/lstm_878/lstm_cell_878/recurrent_kernel/m
.:,(2"Adam/lstm_878/lstm_cell_878/bias/m
':%
2Adam/dense_292/kernel/v
!:2Adam/dense_292/bias/v
5:3	?2$Adam/lstm_876/lstm_cell_876/kernel/v
?:=	d?2.Adam/lstm_876/lstm_cell_876/recurrent_kernel/v
/:-?2"Adam/lstm_876/lstm_cell_876/bias/v
5:3	d?2$Adam/lstm_877/lstm_cell_877/kernel/v
?:=	2?2.Adam/lstm_877/lstm_cell_877/recurrent_kernel/v
/:-?2"Adam/lstm_877/lstm_cell_877/bias/v
4:22(2$Adam/lstm_878/lstm_cell_878/kernel/v
>:<
(2.Adam/lstm_878/lstm_cell_878/recurrent_kernel/v
.:,(2"Adam/lstm_878/lstm_cell_878/bias/v
?2?
0__inference_sequential_292_layer_call_fn_5232698
0__inference_sequential_292_layer_call_fn_5233436
0__inference_sequential_292_layer_call_fn_5233463
0__inference_sequential_292_layer_call_fn_5233314?
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
K__inference_sequential_292_layer_call_and_return_conditional_losses_5233890
K__inference_sequential_292_layer_call_and_return_conditional_losses_5234317
K__inference_sequential_292_layer_call_and_return_conditional_losses_5233344
K__inference_sequential_292_layer_call_and_return_conditional_losses_5233374?
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
"__inference__wrapped_model_5231149lstm_876_input"?
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
*__inference_lstm_876_layer_call_fn_5234328
*__inference_lstm_876_layer_call_fn_5234339
*__inference_lstm_876_layer_call_fn_5234350
*__inference_lstm_876_layer_call_fn_5234361?
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
E__inference_lstm_876_layer_call_and_return_conditional_losses_5234504
E__inference_lstm_876_layer_call_and_return_conditional_losses_5234647
E__inference_lstm_876_layer_call_and_return_conditional_losses_5234790
E__inference_lstm_876_layer_call_and_return_conditional_losses_5234933?
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
*__inference_lstm_877_layer_call_fn_5234944
*__inference_lstm_877_layer_call_fn_5234955
*__inference_lstm_877_layer_call_fn_5234966
*__inference_lstm_877_layer_call_fn_5234977?
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
E__inference_lstm_877_layer_call_and_return_conditional_losses_5235120
E__inference_lstm_877_layer_call_and_return_conditional_losses_5235263
E__inference_lstm_877_layer_call_and_return_conditional_losses_5235406
E__inference_lstm_877_layer_call_and_return_conditional_losses_5235549?
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
*__inference_lstm_878_layer_call_fn_5235560
*__inference_lstm_878_layer_call_fn_5235571
*__inference_lstm_878_layer_call_fn_5235582
*__inference_lstm_878_layer_call_fn_5235593?
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
E__inference_lstm_878_layer_call_and_return_conditional_losses_5235736
E__inference_lstm_878_layer_call_and_return_conditional_losses_5235879
E__inference_lstm_878_layer_call_and_return_conditional_losses_5236022
E__inference_lstm_878_layer_call_and_return_conditional_losses_5236165?
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
+__inference_dense_292_layer_call_fn_5236174?
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
F__inference_dense_292_layer_call_and_return_conditional_losses_5236184?
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
%__inference_signature_wrapper_5233409lstm_876_input"?
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
/__inference_lstm_cell_876_layer_call_fn_5236201
/__inference_lstm_cell_876_layer_call_fn_5236218?
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
J__inference_lstm_cell_876_layer_call_and_return_conditional_losses_5236250
J__inference_lstm_cell_876_layer_call_and_return_conditional_losses_5236282?
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
/__inference_lstm_cell_877_layer_call_fn_5236299
/__inference_lstm_cell_877_layer_call_fn_5236316?
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
J__inference_lstm_cell_877_layer_call_and_return_conditional_losses_5236348
J__inference_lstm_cell_877_layer_call_and_return_conditional_losses_5236380?
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
/__inference_lstm_cell_878_layer_call_fn_5236397
/__inference_lstm_cell_878_layer_call_fn_5236414?
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
J__inference_lstm_cell_878_layer_call_and_return_conditional_losses_5236446
J__inference_lstm_cell_878_layer_call_and_return_conditional_losses_5236478?
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
"__inference__wrapped_model_5231149?()*+,-./0;?8
1?.
,?)
lstm_876_input?????????
? "5?2
0
	dense_292#? 
	dense_292??????????
F__inference_dense_292_layer_call_and_return_conditional_losses_5236184\/?,
%?"
 ?
inputs?????????

? "%?"
?
0?????????
? ~
+__inference_dense_292_layer_call_fn_5236174O/?,
%?"
 ?
inputs?????????

? "???????????
E__inference_lstm_876_layer_call_and_return_conditional_losses_5234504?()*O?L
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
E__inference_lstm_876_layer_call_and_return_conditional_losses_5234647?()*O?L
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
E__inference_lstm_876_layer_call_and_return_conditional_losses_5234790q()*??<
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
E__inference_lstm_876_layer_call_and_return_conditional_losses_5234933q()*??<
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
*__inference_lstm_876_layer_call_fn_5234328}()*O?L
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
*__inference_lstm_876_layer_call_fn_5234339}()*O?L
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
*__inference_lstm_876_layer_call_fn_5234350d()*??<
5?2
$?!
inputs?????????

 
p 

 
? "??????????d?
*__inference_lstm_876_layer_call_fn_5234361d()*??<
5?2
$?!
inputs?????????

 
p

 
? "??????????d?
E__inference_lstm_877_layer_call_and_return_conditional_losses_5235120?+,-O?L
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
E__inference_lstm_877_layer_call_and_return_conditional_losses_5235263?+,-O?L
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
E__inference_lstm_877_layer_call_and_return_conditional_losses_5235406q+,-??<
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
E__inference_lstm_877_layer_call_and_return_conditional_losses_5235549q+,-??<
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
*__inference_lstm_877_layer_call_fn_5234944}+,-O?L
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
*__inference_lstm_877_layer_call_fn_5234955}+,-O?L
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
*__inference_lstm_877_layer_call_fn_5234966d+,-??<
5?2
$?!
inputs?????????d

 
p 

 
? "??????????2?
*__inference_lstm_877_layer_call_fn_5234977d+,-??<
5?2
$?!
inputs?????????d

 
p

 
? "??????????2?
E__inference_lstm_878_layer_call_and_return_conditional_losses_5235736}./0O?L
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
E__inference_lstm_878_layer_call_and_return_conditional_losses_5235879}./0O?L
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
E__inference_lstm_878_layer_call_and_return_conditional_losses_5236022m./0??<
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
E__inference_lstm_878_layer_call_and_return_conditional_losses_5236165m./0??<
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
*__inference_lstm_878_layer_call_fn_5235560p./0O?L
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
*__inference_lstm_878_layer_call_fn_5235571p./0O?L
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
*__inference_lstm_878_layer_call_fn_5235582`./0??<
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
*__inference_lstm_878_layer_call_fn_5235593`./0??<
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
J__inference_lstm_cell_876_layer_call_and_return_conditional_losses_5236250?()*??}
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
J__inference_lstm_cell_876_layer_call_and_return_conditional_losses_5236282?()*??}
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
/__inference_lstm_cell_876_layer_call_fn_5236201?()*??}
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
/__inference_lstm_cell_876_layer_call_fn_5236218?()*??}
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
J__inference_lstm_cell_877_layer_call_and_return_conditional_losses_5236348?+,-??}
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
J__inference_lstm_cell_877_layer_call_and_return_conditional_losses_5236380?+,-??}
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
/__inference_lstm_cell_877_layer_call_fn_5236299?+,-??}
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
/__inference_lstm_cell_877_layer_call_fn_5236316?+,-??}
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
J__inference_lstm_cell_878_layer_call_and_return_conditional_losses_5236446?./0??}
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
J__inference_lstm_cell_878_layer_call_and_return_conditional_losses_5236478?./0??}
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
/__inference_lstm_cell_878_layer_call_fn_5236397?./0??}
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
/__inference_lstm_cell_878_layer_call_fn_5236414?./0??}
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
K__inference_sequential_292_layer_call_and_return_conditional_losses_5233344y()*+,-./0C?@
9?6
,?)
lstm_876_input?????????
p 

 
? "%?"
?
0?????????
? ?
K__inference_sequential_292_layer_call_and_return_conditional_losses_5233374y()*+,-./0C?@
9?6
,?)
lstm_876_input?????????
p

 
? "%?"
?
0?????????
? ?
K__inference_sequential_292_layer_call_and_return_conditional_losses_5233890q()*+,-./0;?8
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
K__inference_sequential_292_layer_call_and_return_conditional_losses_5234317q()*+,-./0;?8
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
0__inference_sequential_292_layer_call_fn_5232698l()*+,-./0C?@
9?6
,?)
lstm_876_input?????????
p 

 
? "???????????
0__inference_sequential_292_layer_call_fn_5233314l()*+,-./0C?@
9?6
,?)
lstm_876_input?????????
p

 
? "???????????
0__inference_sequential_292_layer_call_fn_5233436d()*+,-./0;?8
1?.
$?!
inputs?????????
p 

 
? "???????????
0__inference_sequential_292_layer_call_fn_5233463d()*+,-./0;?8
1?.
$?!
inputs?????????
p

 
? "???????????
%__inference_signature_wrapper_5233409?()*+,-./0M?J
? 
C?@
>
lstm_876_input,?)
lstm_876_input?????????"5?2
0
	dense_292#? 
	dense_292?????????