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
dense_255/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*!
shared_namedense_255/kernel
u
$dense_255/kernel/Read/ReadVariableOpReadVariableOpdense_255/kernel*
_output_shapes

:
*
dtype0
t
dense_255/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_255/bias
m
"dense_255/bias/Read/ReadVariableOpReadVariableOpdense_255/bias*
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
lstm_765/lstm_cell_765/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*.
shared_namelstm_765/lstm_cell_765/kernel
?
1lstm_765/lstm_cell_765/kernel/Read/ReadVariableOpReadVariableOplstm_765/lstm_cell_765/kernel*
_output_shapes
:	?*
dtype0
?
'lstm_765/lstm_cell_765/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*8
shared_name)'lstm_765/lstm_cell_765/recurrent_kernel
?
;lstm_765/lstm_cell_765/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_765/lstm_cell_765/recurrent_kernel*
_output_shapes
:	d?*
dtype0
?
lstm_765/lstm_cell_765/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_765/lstm_cell_765/bias
?
/lstm_765/lstm_cell_765/bias/Read/ReadVariableOpReadVariableOplstm_765/lstm_cell_765/bias*
_output_shapes	
:?*
dtype0
?
lstm_766/lstm_cell_766/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*.
shared_namelstm_766/lstm_cell_766/kernel
?
1lstm_766/lstm_cell_766/kernel/Read/ReadVariableOpReadVariableOplstm_766/lstm_cell_766/kernel*
_output_shapes
:	d?*
dtype0
?
'lstm_766/lstm_cell_766/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*8
shared_name)'lstm_766/lstm_cell_766/recurrent_kernel
?
;lstm_766/lstm_cell_766/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_766/lstm_cell_766/recurrent_kernel*
_output_shapes
:	2?*
dtype0
?
lstm_766/lstm_cell_766/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_766/lstm_cell_766/bias
?
/lstm_766/lstm_cell_766/bias/Read/ReadVariableOpReadVariableOplstm_766/lstm_cell_766/bias*
_output_shapes	
:?*
dtype0
?
lstm_767/lstm_cell_767/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*.
shared_namelstm_767/lstm_cell_767/kernel
?
1lstm_767/lstm_cell_767/kernel/Read/ReadVariableOpReadVariableOplstm_767/lstm_cell_767/kernel*
_output_shapes

:2(*
dtype0
?
'lstm_767/lstm_cell_767/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*8
shared_name)'lstm_767/lstm_cell_767/recurrent_kernel
?
;lstm_767/lstm_cell_767/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_767/lstm_cell_767/recurrent_kernel*
_output_shapes

:
(*
dtype0
?
lstm_767/lstm_cell_767/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*,
shared_namelstm_767/lstm_cell_767/bias
?
/lstm_767/lstm_cell_767/bias/Read/ReadVariableOpReadVariableOplstm_767/lstm_cell_767/bias*
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
Adam/dense_255/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_255/kernel/m
?
+Adam/dense_255/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_255/kernel/m*
_output_shapes

:
*
dtype0
?
Adam/dense_255/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_255/bias/m
{
)Adam/dense_255/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_255/bias/m*
_output_shapes
:*
dtype0
?
$Adam/lstm_765/lstm_cell_765/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_765/lstm_cell_765/kernel/m
?
8Adam/lstm_765/lstm_cell_765/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_765/lstm_cell_765/kernel/m*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_765/lstm_cell_765/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_765/lstm_cell_765/recurrent_kernel/m
?
BAdam/lstm_765/lstm_cell_765/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_765/lstm_cell_765/recurrent_kernel/m*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_765/lstm_cell_765/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_765/lstm_cell_765/bias/m
?
6Adam/lstm_765/lstm_cell_765/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_765/lstm_cell_765/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_766/lstm_cell_766/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_766/lstm_cell_766/kernel/m
?
8Adam/lstm_766/lstm_cell_766/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_766/lstm_cell_766/kernel/m*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_766/lstm_cell_766/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_766/lstm_cell_766/recurrent_kernel/m
?
BAdam/lstm_766/lstm_cell_766/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_766/lstm_cell_766/recurrent_kernel/m*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_766/lstm_cell_766/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_766/lstm_cell_766/bias/m
?
6Adam/lstm_766/lstm_cell_766/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_766/lstm_cell_766/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_767/lstm_cell_767/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_767/lstm_cell_767/kernel/m
?
8Adam/lstm_767/lstm_cell_767/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_767/lstm_cell_767/kernel/m*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_767/lstm_cell_767/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_767/lstm_cell_767/recurrent_kernel/m
?
BAdam/lstm_767/lstm_cell_767/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_767/lstm_cell_767/recurrent_kernel/m*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_767/lstm_cell_767/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_767/lstm_cell_767/bias/m
?
6Adam/lstm_767/lstm_cell_767/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_767/lstm_cell_767/bias/m*
_output_shapes
:(*
dtype0
?
Adam/dense_255/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_255/kernel/v
?
+Adam/dense_255/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_255/kernel/v*
_output_shapes

:
*
dtype0
?
Adam/dense_255/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_255/bias/v
{
)Adam/dense_255/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_255/bias/v*
_output_shapes
:*
dtype0
?
$Adam/lstm_765/lstm_cell_765/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_765/lstm_cell_765/kernel/v
?
8Adam/lstm_765/lstm_cell_765/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_765/lstm_cell_765/kernel/v*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_765/lstm_cell_765/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_765/lstm_cell_765/recurrent_kernel/v
?
BAdam/lstm_765/lstm_cell_765/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_765/lstm_cell_765/recurrent_kernel/v*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_765/lstm_cell_765/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_765/lstm_cell_765/bias/v
?
6Adam/lstm_765/lstm_cell_765/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_765/lstm_cell_765/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_766/lstm_cell_766/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_766/lstm_cell_766/kernel/v
?
8Adam/lstm_766/lstm_cell_766/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_766/lstm_cell_766/kernel/v*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_766/lstm_cell_766/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_766/lstm_cell_766/recurrent_kernel/v
?
BAdam/lstm_766/lstm_cell_766/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_766/lstm_cell_766/recurrent_kernel/v*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_766/lstm_cell_766/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_766/lstm_cell_766/bias/v
?
6Adam/lstm_766/lstm_cell_766/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_766/lstm_cell_766/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_767/lstm_cell_767/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_767/lstm_cell_767/kernel/v
?
8Adam/lstm_767/lstm_cell_767/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_767/lstm_cell_767/kernel/v*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_767/lstm_cell_767/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_767/lstm_cell_767/recurrent_kernel/v
?
BAdam/lstm_767/lstm_cell_767/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_767/lstm_cell_767/recurrent_kernel/v*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_767/lstm_cell_767/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_767/lstm_cell_767/bias/v
?
6Adam/lstm_767/lstm_cell_767/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_767/lstm_cell_767/bias/v*
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
VARIABLE_VALUEdense_255/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_255/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUElstm_765/lstm_cell_765/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_765/lstm_cell_765/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_765/lstm_cell_765/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_766/lstm_cell_766/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_766/lstm_cell_766/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_766/lstm_cell_766/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_767/lstm_cell_767/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_767/lstm_cell_767/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_767/lstm_cell_767/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEAdam/dense_255/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_255/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_765/lstm_cell_765/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_765/lstm_cell_765/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_765/lstm_cell_765/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_766/lstm_cell_766/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_766/lstm_cell_766/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_766/lstm_cell_766/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_767/lstm_cell_767/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_767/lstm_cell_767/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_767/lstm_cell_767/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_255/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_255/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_765/lstm_cell_765/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_765/lstm_cell_765/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_765/lstm_cell_765/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_766/lstm_cell_766/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_766/lstm_cell_766/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_766/lstm_cell_766/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_767/lstm_cell_767/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_767/lstm_cell_767/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_767/lstm_cell_767/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_lstm_765_inputPlaceholder*+
_output_shapes
:?????????*
dtype0* 
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_765_inputlstm_765/lstm_cell_765/kernel'lstm_765/lstm_cell_765/recurrent_kernellstm_765/lstm_cell_765/biaslstm_766/lstm_cell_766/kernel'lstm_766/lstm_cell_766/recurrent_kernellstm_766/lstm_cell_766/biaslstm_767/lstm_cell_767/kernel'lstm_767/lstm_cell_767/recurrent_kernellstm_767/lstm_cell_767/biasdense_255/kerneldense_255/bias*
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
%__inference_signature_wrapper_4696555
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$dense_255/kernel/Read/ReadVariableOp"dense_255/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_765/lstm_cell_765/kernel/Read/ReadVariableOp;lstm_765/lstm_cell_765/recurrent_kernel/Read/ReadVariableOp/lstm_765/lstm_cell_765/bias/Read/ReadVariableOp1lstm_766/lstm_cell_766/kernel/Read/ReadVariableOp;lstm_766/lstm_cell_766/recurrent_kernel/Read/ReadVariableOp/lstm_766/lstm_cell_766/bias/Read/ReadVariableOp1lstm_767/lstm_cell_767/kernel/Read/ReadVariableOp;lstm_767/lstm_cell_767/recurrent_kernel/Read/ReadVariableOp/lstm_767/lstm_cell_767/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp+Adam/dense_255/kernel/m/Read/ReadVariableOp)Adam/dense_255/bias/m/Read/ReadVariableOp8Adam/lstm_765/lstm_cell_765/kernel/m/Read/ReadVariableOpBAdam/lstm_765/lstm_cell_765/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_765/lstm_cell_765/bias/m/Read/ReadVariableOp8Adam/lstm_766/lstm_cell_766/kernel/m/Read/ReadVariableOpBAdam/lstm_766/lstm_cell_766/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_766/lstm_cell_766/bias/m/Read/ReadVariableOp8Adam/lstm_767/lstm_cell_767/kernel/m/Read/ReadVariableOpBAdam/lstm_767/lstm_cell_767/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_767/lstm_cell_767/bias/m/Read/ReadVariableOp+Adam/dense_255/kernel/v/Read/ReadVariableOp)Adam/dense_255/bias/v/Read/ReadVariableOp8Adam/lstm_765/lstm_cell_765/kernel/v/Read/ReadVariableOpBAdam/lstm_765/lstm_cell_765/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_765/lstm_cell_765/bias/v/Read/ReadVariableOp8Adam/lstm_766/lstm_cell_766/kernel/v/Read/ReadVariableOpBAdam/lstm_766/lstm_cell_766/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_766/lstm_cell_766/bias/v/Read/ReadVariableOp8Adam/lstm_767/lstm_cell_767/kernel/v/Read/ReadVariableOpBAdam/lstm_767/lstm_cell_767/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_767/lstm_cell_767/bias/v/Read/ReadVariableOpConst*5
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
 __inference__traced_save_4699767
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_255/kerneldense_255/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_765/lstm_cell_765/kernel'lstm_765/lstm_cell_765/recurrent_kernellstm_765/lstm_cell_765/biaslstm_766/lstm_cell_766/kernel'lstm_766/lstm_cell_766/recurrent_kernellstm_766/lstm_cell_766/biaslstm_767/lstm_cell_767/kernel'lstm_767/lstm_cell_767/recurrent_kernellstm_767/lstm_cell_767/biastotalcountAdam/dense_255/kernel/mAdam/dense_255/bias/m$Adam/lstm_765/lstm_cell_765/kernel/m.Adam/lstm_765/lstm_cell_765/recurrent_kernel/m"Adam/lstm_765/lstm_cell_765/bias/m$Adam/lstm_766/lstm_cell_766/kernel/m.Adam/lstm_766/lstm_cell_766/recurrent_kernel/m"Adam/lstm_766/lstm_cell_766/bias/m$Adam/lstm_767/lstm_cell_767/kernel/m.Adam/lstm_767/lstm_cell_767/recurrent_kernel/m"Adam/lstm_767/lstm_cell_767/bias/mAdam/dense_255/kernel/vAdam/dense_255/bias/v$Adam/lstm_765/lstm_cell_765/kernel/v.Adam/lstm_765/lstm_cell_765/recurrent_kernel/v"Adam/lstm_765/lstm_cell_765/bias/v$Adam/lstm_766/lstm_cell_766/kernel/v.Adam/lstm_766/lstm_cell_766/recurrent_kernel/v"Adam/lstm_766/lstm_cell_766/bias/v$Adam/lstm_767/lstm_cell_767/kernel/v.Adam/lstm_767/lstm_cell_767/recurrent_kernel/v"Adam/lstm_767/lstm_cell_767/bias/v*4
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
#__inference__traced_restore_4699897??+
?
?
while_cond_4695709
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4695709___redundant_placeholder05
1while_while_cond_4695709___redundant_placeholder15
1while_while_cond_4695709___redundant_placeholder25
1while_while_cond_4695709___redundant_placeholder3
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
E__inference_lstm_766_layer_call_and_return_conditional_losses_4696175

inputs?
,lstm_cell_766_matmul_readvariableop_resource:	d?A
.lstm_cell_766_matmul_1_readvariableop_resource:	2?<
-lstm_cell_766_biasadd_readvariableop_resource:	?
identity??$lstm_cell_766/BiasAdd/ReadVariableOp?#lstm_cell_766/MatMul/ReadVariableOp?%lstm_cell_766/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_766/MatMul/ReadVariableOpReadVariableOp,lstm_cell_766_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_766/MatMulMatMulstrided_slice_2:output:0+lstm_cell_766/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_766/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_766_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_766/MatMul_1MatMulzeros:output:0-lstm_cell_766/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_766/addAddV2lstm_cell_766/MatMul:product:0 lstm_cell_766/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_766/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_766_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_766/BiasAddBiasAddlstm_cell_766/add:z:0,lstm_cell_766/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_766/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_766/splitSplit&lstm_cell_766/split/split_dim:output:0lstm_cell_766/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_766/SigmoidSigmoidlstm_cell_766/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_766/Sigmoid_1Sigmoidlstm_cell_766/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_766/mulMullstm_cell_766/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_766/ReluRelulstm_cell_766/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_766/mul_1Mullstm_cell_766/Sigmoid:y:0 lstm_cell_766/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_766/add_1AddV2lstm_cell_766/mul:z:0lstm_cell_766/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_766/Sigmoid_2Sigmoidlstm_cell_766/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_766/Relu_1Relulstm_cell_766/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_766/mul_2Mullstm_cell_766/Sigmoid_2:y:0"lstm_cell_766/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_766_matmul_readvariableop_resource.lstm_cell_766_matmul_1_readvariableop_resource-lstm_cell_766_biasadd_readvariableop_resource*
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
while_body_4696091*
condR
while_cond_4696090*K
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
NoOpNoOp%^lstm_cell_766/BiasAdd/ReadVariableOp$^lstm_cell_766/MatMul/ReadVariableOp&^lstm_cell_766/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_766/BiasAdd/ReadVariableOp$lstm_cell_766/BiasAdd/ReadVariableOp2J
#lstm_cell_766/MatMul/ReadVariableOp#lstm_cell_766/MatMul/ReadVariableOp2N
%lstm_cell_766/MatMul_1/ReadVariableOp%lstm_cell_766/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
*__inference_lstm_765_layer_call_fn_4697474
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
E__inference_lstm_765_layer_call_and_return_conditional_losses_4694445|
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
?
?
J__inference_lstm_cell_767_layer_call_and_return_conditional_losses_4699592

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
?J
?
E__inference_lstm_765_layer_call_and_return_conditional_losses_4695494

inputs?
,lstm_cell_765_matmul_readvariableop_resource:	?A
.lstm_cell_765_matmul_1_readvariableop_resource:	d?<
-lstm_cell_765_biasadd_readvariableop_resource:	?
identity??$lstm_cell_765/BiasAdd/ReadVariableOp?#lstm_cell_765/MatMul/ReadVariableOp?%lstm_cell_765/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_765/MatMul/ReadVariableOpReadVariableOp,lstm_cell_765_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_765/MatMulMatMulstrided_slice_2:output:0+lstm_cell_765/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_765/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_765_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_765/MatMul_1MatMulzeros:output:0-lstm_cell_765/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_765/addAddV2lstm_cell_765/MatMul:product:0 lstm_cell_765/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_765/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_765_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_765/BiasAddBiasAddlstm_cell_765/add:z:0,lstm_cell_765/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_765/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_765/splitSplit&lstm_cell_765/split/split_dim:output:0lstm_cell_765/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_765/SigmoidSigmoidlstm_cell_765/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_765/Sigmoid_1Sigmoidlstm_cell_765/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_765/mulMullstm_cell_765/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_765/ReluRelulstm_cell_765/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_765/mul_1Mullstm_cell_765/Sigmoid:y:0 lstm_cell_765/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_765/add_1AddV2lstm_cell_765/mul:z:0lstm_cell_765/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_765/Sigmoid_2Sigmoidlstm_cell_765/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_765/Relu_1Relulstm_cell_765/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_765/mul_2Mullstm_cell_765/Sigmoid_2:y:0"lstm_cell_765/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_765_matmul_readvariableop_resource.lstm_cell_765_matmul_1_readvariableop_resource-lstm_cell_765_biasadd_readvariableop_resource*
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
while_body_4695410*
condR
while_cond_4695409*K
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
NoOpNoOp%^lstm_cell_765/BiasAdd/ReadVariableOp$^lstm_cell_765/MatMul/ReadVariableOp&^lstm_cell_765/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_765/BiasAdd/ReadVariableOp$lstm_cell_765/BiasAdd/ReadVariableOp2J
#lstm_cell_765/MatMul/ReadVariableOp#lstm_cell_765/MatMul/ReadVariableOp2N
%lstm_cell_765/MatMul_1/ReadVariableOp%lstm_cell_765/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_4696090
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4696090___redundant_placeholder05
1while_while_cond_4696090___redundant_placeholder15
1while_while_cond_4696090___redundant_placeholder25
1while_while_cond_4696090___redundant_placeholder3
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

lstm_766_while_body_4697234.
*lstm_766_while_lstm_766_while_loop_counter4
0lstm_766_while_lstm_766_while_maximum_iterations
lstm_766_while_placeholder 
lstm_766_while_placeholder_1 
lstm_766_while_placeholder_2 
lstm_766_while_placeholder_3-
)lstm_766_while_lstm_766_strided_slice_1_0i
elstm_766_while_tensorarrayv2read_tensorlistgetitem_lstm_766_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_766_while_lstm_cell_766_matmul_readvariableop_resource_0:	d?R
?lstm_766_while_lstm_cell_766_matmul_1_readvariableop_resource_0:	2?M
>lstm_766_while_lstm_cell_766_biasadd_readvariableop_resource_0:	?
lstm_766_while_identity
lstm_766_while_identity_1
lstm_766_while_identity_2
lstm_766_while_identity_3
lstm_766_while_identity_4
lstm_766_while_identity_5+
'lstm_766_while_lstm_766_strided_slice_1g
clstm_766_while_tensorarrayv2read_tensorlistgetitem_lstm_766_tensorarrayunstack_tensorlistfromtensorN
;lstm_766_while_lstm_cell_766_matmul_readvariableop_resource:	d?P
=lstm_766_while_lstm_cell_766_matmul_1_readvariableop_resource:	2?K
<lstm_766_while_lstm_cell_766_biasadd_readvariableop_resource:	???3lstm_766/while/lstm_cell_766/BiasAdd/ReadVariableOp?2lstm_766/while/lstm_cell_766/MatMul/ReadVariableOp?4lstm_766/while/lstm_cell_766/MatMul_1/ReadVariableOp?
@lstm_766/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_766/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_766_while_tensorarrayv2read_tensorlistgetitem_lstm_766_tensorarrayunstack_tensorlistfromtensor_0lstm_766_while_placeholderIlstm_766/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_766/while/lstm_cell_766/MatMul/ReadVariableOpReadVariableOp=lstm_766_while_lstm_cell_766_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_766/while/lstm_cell_766/MatMulMatMul9lstm_766/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_766/while/lstm_cell_766/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_766/while/lstm_cell_766/MatMul_1/ReadVariableOpReadVariableOp?lstm_766_while_lstm_cell_766_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_766/while/lstm_cell_766/MatMul_1MatMullstm_766_while_placeholder_2<lstm_766/while/lstm_cell_766/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_766/while/lstm_cell_766/addAddV2-lstm_766/while/lstm_cell_766/MatMul:product:0/lstm_766/while/lstm_cell_766/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_766/while/lstm_cell_766/BiasAdd/ReadVariableOpReadVariableOp>lstm_766_while_lstm_cell_766_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_766/while/lstm_cell_766/BiasAddBiasAdd$lstm_766/while/lstm_cell_766/add:z:0;lstm_766/while/lstm_cell_766/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_766/while/lstm_cell_766/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_766/while/lstm_cell_766/splitSplit5lstm_766/while/lstm_cell_766/split/split_dim:output:0-lstm_766/while/lstm_cell_766/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_766/while/lstm_cell_766/SigmoidSigmoid+lstm_766/while/lstm_cell_766/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_766/while/lstm_cell_766/Sigmoid_1Sigmoid+lstm_766/while/lstm_cell_766/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_766/while/lstm_cell_766/mulMul*lstm_766/while/lstm_cell_766/Sigmoid_1:y:0lstm_766_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_766/while/lstm_cell_766/ReluRelu+lstm_766/while/lstm_cell_766/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_766/while/lstm_cell_766/mul_1Mul(lstm_766/while/lstm_cell_766/Sigmoid:y:0/lstm_766/while/lstm_cell_766/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_766/while/lstm_cell_766/add_1AddV2$lstm_766/while/lstm_cell_766/mul:z:0&lstm_766/while/lstm_cell_766/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_766/while/lstm_cell_766/Sigmoid_2Sigmoid+lstm_766/while/lstm_cell_766/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_766/while/lstm_cell_766/Relu_1Relu&lstm_766/while/lstm_cell_766/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_766/while/lstm_cell_766/mul_2Mul*lstm_766/while/lstm_cell_766/Sigmoid_2:y:01lstm_766/while/lstm_cell_766/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_766/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_766_while_placeholder_1lstm_766_while_placeholder&lstm_766/while/lstm_cell_766/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_766/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_766/while/addAddV2lstm_766_while_placeholderlstm_766/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_766/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_766/while/add_1AddV2*lstm_766_while_lstm_766_while_loop_counterlstm_766/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_766/while/IdentityIdentitylstm_766/while/add_1:z:0^lstm_766/while/NoOp*
T0*
_output_shapes
: ?
lstm_766/while/Identity_1Identity0lstm_766_while_lstm_766_while_maximum_iterations^lstm_766/while/NoOp*
T0*
_output_shapes
: t
lstm_766/while/Identity_2Identitylstm_766/while/add:z:0^lstm_766/while/NoOp*
T0*
_output_shapes
: ?
lstm_766/while/Identity_3IdentityClstm_766/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_766/while/NoOp*
T0*
_output_shapes
: ?
lstm_766/while/Identity_4Identity&lstm_766/while/lstm_cell_766/mul_2:z:0^lstm_766/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_766/while/Identity_5Identity&lstm_766/while/lstm_cell_766/add_1:z:0^lstm_766/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_766/while/NoOpNoOp4^lstm_766/while/lstm_cell_766/BiasAdd/ReadVariableOp3^lstm_766/while/lstm_cell_766/MatMul/ReadVariableOp5^lstm_766/while/lstm_cell_766/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_766_while_identity lstm_766/while/Identity:output:0"?
lstm_766_while_identity_1"lstm_766/while/Identity_1:output:0"?
lstm_766_while_identity_2"lstm_766/while/Identity_2:output:0"?
lstm_766_while_identity_3"lstm_766/while/Identity_3:output:0"?
lstm_766_while_identity_4"lstm_766/while/Identity_4:output:0"?
lstm_766_while_identity_5"lstm_766/while/Identity_5:output:0"T
'lstm_766_while_lstm_766_strided_slice_1)lstm_766_while_lstm_766_strided_slice_1_0"~
<lstm_766_while_lstm_cell_766_biasadd_readvariableop_resource>lstm_766_while_lstm_cell_766_biasadd_readvariableop_resource_0"?
=lstm_766_while_lstm_cell_766_matmul_1_readvariableop_resource?lstm_766_while_lstm_cell_766_matmul_1_readvariableop_resource_0"|
;lstm_766_while_lstm_cell_766_matmul_readvariableop_resource=lstm_766_while_lstm_cell_766_matmul_readvariableop_resource_0"?
clstm_766_while_tensorarrayv2read_tensorlistgetitem_lstm_766_tensorarrayunstack_tensorlistfromtensorelstm_766_while_tensorarrayv2read_tensorlistgetitem_lstm_766_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_766/while/lstm_cell_766/BiasAdd/ReadVariableOp3lstm_766/while/lstm_cell_766/BiasAdd/ReadVariableOp2h
2lstm_766/while/lstm_cell_766/MatMul/ReadVariableOp2lstm_766/while/lstm_cell_766/MatMul/ReadVariableOp2l
4lstm_766/while/lstm_cell_766/MatMul_1/ReadVariableOp4lstm_766/while/lstm_cell_766/MatMul_1/ReadVariableOp: 
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

lstm_767_while_body_4697373.
*lstm_767_while_lstm_767_while_loop_counter4
0lstm_767_while_lstm_767_while_maximum_iterations
lstm_767_while_placeholder 
lstm_767_while_placeholder_1 
lstm_767_while_placeholder_2 
lstm_767_while_placeholder_3-
)lstm_767_while_lstm_767_strided_slice_1_0i
elstm_767_while_tensorarrayv2read_tensorlistgetitem_lstm_767_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_767_while_lstm_cell_767_matmul_readvariableop_resource_0:2(Q
?lstm_767_while_lstm_cell_767_matmul_1_readvariableop_resource_0:
(L
>lstm_767_while_lstm_cell_767_biasadd_readvariableop_resource_0:(
lstm_767_while_identity
lstm_767_while_identity_1
lstm_767_while_identity_2
lstm_767_while_identity_3
lstm_767_while_identity_4
lstm_767_while_identity_5+
'lstm_767_while_lstm_767_strided_slice_1g
clstm_767_while_tensorarrayv2read_tensorlistgetitem_lstm_767_tensorarrayunstack_tensorlistfromtensorM
;lstm_767_while_lstm_cell_767_matmul_readvariableop_resource:2(O
=lstm_767_while_lstm_cell_767_matmul_1_readvariableop_resource:
(J
<lstm_767_while_lstm_cell_767_biasadd_readvariableop_resource:(??3lstm_767/while/lstm_cell_767/BiasAdd/ReadVariableOp?2lstm_767/while/lstm_cell_767/MatMul/ReadVariableOp?4lstm_767/while/lstm_cell_767/MatMul_1/ReadVariableOp?
@lstm_767/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_767/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_767_while_tensorarrayv2read_tensorlistgetitem_lstm_767_tensorarrayunstack_tensorlistfromtensor_0lstm_767_while_placeholderIlstm_767/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_767/while/lstm_cell_767/MatMul/ReadVariableOpReadVariableOp=lstm_767_while_lstm_cell_767_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_767/while/lstm_cell_767/MatMulMatMul9lstm_767/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_767/while/lstm_cell_767/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_767/while/lstm_cell_767/MatMul_1/ReadVariableOpReadVariableOp?lstm_767_while_lstm_cell_767_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_767/while/lstm_cell_767/MatMul_1MatMullstm_767_while_placeholder_2<lstm_767/while/lstm_cell_767/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_767/while/lstm_cell_767/addAddV2-lstm_767/while/lstm_cell_767/MatMul:product:0/lstm_767/while/lstm_cell_767/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_767/while/lstm_cell_767/BiasAdd/ReadVariableOpReadVariableOp>lstm_767_while_lstm_cell_767_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_767/while/lstm_cell_767/BiasAddBiasAdd$lstm_767/while/lstm_cell_767/add:z:0;lstm_767/while/lstm_cell_767/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_767/while/lstm_cell_767/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_767/while/lstm_cell_767/splitSplit5lstm_767/while/lstm_cell_767/split/split_dim:output:0-lstm_767/while/lstm_cell_767/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_767/while/lstm_cell_767/SigmoidSigmoid+lstm_767/while/lstm_cell_767/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_767/while/lstm_cell_767/Sigmoid_1Sigmoid+lstm_767/while/lstm_cell_767/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_767/while/lstm_cell_767/mulMul*lstm_767/while/lstm_cell_767/Sigmoid_1:y:0lstm_767_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_767/while/lstm_cell_767/ReluRelu+lstm_767/while/lstm_cell_767/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_767/while/lstm_cell_767/mul_1Mul(lstm_767/while/lstm_cell_767/Sigmoid:y:0/lstm_767/while/lstm_cell_767/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_767/while/lstm_cell_767/add_1AddV2$lstm_767/while/lstm_cell_767/mul:z:0&lstm_767/while/lstm_cell_767/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_767/while/lstm_cell_767/Sigmoid_2Sigmoid+lstm_767/while/lstm_cell_767/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_767/while/lstm_cell_767/Relu_1Relu&lstm_767/while/lstm_cell_767/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_767/while/lstm_cell_767/mul_2Mul*lstm_767/while/lstm_cell_767/Sigmoid_2:y:01lstm_767/while/lstm_cell_767/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_767/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_767_while_placeholder_1lstm_767_while_placeholder&lstm_767/while/lstm_cell_767/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_767/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_767/while/addAddV2lstm_767_while_placeholderlstm_767/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_767/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_767/while/add_1AddV2*lstm_767_while_lstm_767_while_loop_counterlstm_767/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_767/while/IdentityIdentitylstm_767/while/add_1:z:0^lstm_767/while/NoOp*
T0*
_output_shapes
: ?
lstm_767/while/Identity_1Identity0lstm_767_while_lstm_767_while_maximum_iterations^lstm_767/while/NoOp*
T0*
_output_shapes
: t
lstm_767/while/Identity_2Identitylstm_767/while/add:z:0^lstm_767/while/NoOp*
T0*
_output_shapes
: ?
lstm_767/while/Identity_3IdentityClstm_767/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_767/while/NoOp*
T0*
_output_shapes
: ?
lstm_767/while/Identity_4Identity&lstm_767/while/lstm_cell_767/mul_2:z:0^lstm_767/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_767/while/Identity_5Identity&lstm_767/while/lstm_cell_767/add_1:z:0^lstm_767/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_767/while/NoOpNoOp4^lstm_767/while/lstm_cell_767/BiasAdd/ReadVariableOp3^lstm_767/while/lstm_cell_767/MatMul/ReadVariableOp5^lstm_767/while/lstm_cell_767/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_767_while_identity lstm_767/while/Identity:output:0"?
lstm_767_while_identity_1"lstm_767/while/Identity_1:output:0"?
lstm_767_while_identity_2"lstm_767/while/Identity_2:output:0"?
lstm_767_while_identity_3"lstm_767/while/Identity_3:output:0"?
lstm_767_while_identity_4"lstm_767/while/Identity_4:output:0"?
lstm_767_while_identity_5"lstm_767/while/Identity_5:output:0"T
'lstm_767_while_lstm_767_strided_slice_1)lstm_767_while_lstm_767_strided_slice_1_0"~
<lstm_767_while_lstm_cell_767_biasadd_readvariableop_resource>lstm_767_while_lstm_cell_767_biasadd_readvariableop_resource_0"?
=lstm_767_while_lstm_cell_767_matmul_1_readvariableop_resource?lstm_767_while_lstm_cell_767_matmul_1_readvariableop_resource_0"|
;lstm_767_while_lstm_cell_767_matmul_readvariableop_resource=lstm_767_while_lstm_cell_767_matmul_readvariableop_resource_0"?
clstm_767_while_tensorarrayv2read_tensorlistgetitem_lstm_767_tensorarrayunstack_tensorlistfromtensorelstm_767_while_tensorarrayv2read_tensorlistgetitem_lstm_767_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_767/while/lstm_cell_767/BiasAdd/ReadVariableOp3lstm_767/while/lstm_cell_767/BiasAdd/ReadVariableOp2h
2lstm_767/while/lstm_cell_767/MatMul/ReadVariableOp2lstm_767/while/lstm_cell_767/MatMul/ReadVariableOp2l
4lstm_767/while/lstm_cell_767/MatMul_1/ReadVariableOp4lstm_767/while/lstm_cell_767/MatMul_1/ReadVariableOp: 
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
*__inference_lstm_766_layer_call_fn_4698112

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
E__inference_lstm_766_layer_call_and_return_conditional_losses_4695644s
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
?J
?
E__inference_lstm_767_layer_call_and_return_conditional_losses_4699311

inputs>
,lstm_cell_767_matmul_readvariableop_resource:2(@
.lstm_cell_767_matmul_1_readvariableop_resource:
(;
-lstm_cell_767_biasadd_readvariableop_resource:(
identity??$lstm_cell_767/BiasAdd/ReadVariableOp?#lstm_cell_767/MatMul/ReadVariableOp?%lstm_cell_767/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_767/MatMul/ReadVariableOpReadVariableOp,lstm_cell_767_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_767/MatMulMatMulstrided_slice_2:output:0+lstm_cell_767/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_767/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_767_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_767/MatMul_1MatMulzeros:output:0-lstm_cell_767/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_767/addAddV2lstm_cell_767/MatMul:product:0 lstm_cell_767/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_767/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_767_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_767/BiasAddBiasAddlstm_cell_767/add:z:0,lstm_cell_767/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_767/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_767/splitSplit&lstm_cell_767/split/split_dim:output:0lstm_cell_767/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_767/SigmoidSigmoidlstm_cell_767/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_767/Sigmoid_1Sigmoidlstm_cell_767/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_767/mulMullstm_cell_767/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_767/ReluRelulstm_cell_767/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_767/mul_1Mullstm_cell_767/Sigmoid:y:0 lstm_cell_767/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_767/add_1AddV2lstm_cell_767/mul:z:0lstm_cell_767/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_767/Sigmoid_2Sigmoidlstm_cell_767/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_767/Relu_1Relulstm_cell_767/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_767/mul_2Mullstm_cell_767/Sigmoid_2:y:0"lstm_cell_767/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_767_matmul_readvariableop_resource.lstm_cell_767_matmul_1_readvariableop_resource-lstm_cell_767_biasadd_readvariableop_resource*
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
while_body_4699227*
condR
while_cond_4699226*K
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
NoOpNoOp%^lstm_cell_767/BiasAdd/ReadVariableOp$^lstm_cell_767/MatMul/ReadVariableOp&^lstm_cell_767/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_767/BiasAdd/ReadVariableOp$lstm_cell_767/BiasAdd/ReadVariableOp2J
#lstm_cell_767/MatMul/ReadVariableOp#lstm_cell_767/MatMul/ReadVariableOp2N
%lstm_cell_767/MatMul_1/ReadVariableOp%lstm_cell_767/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
while_cond_4694375
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4694375___redundant_placeholder05
1while_while_cond_4694375___redundant_placeholder15
1while_while_cond_4694375___redundant_placeholder25
1while_while_cond_4694375___redundant_placeholder3
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
E__inference_lstm_765_layer_call_and_return_conditional_losses_4694445

inputs(
lstm_cell_765_4694363:	?(
lstm_cell_765_4694365:	d?$
lstm_cell_765_4694367:	?
identity??%lstm_cell_765/StatefulPartitionedCall?while;
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
%lstm_cell_765/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_765_4694363lstm_cell_765_4694365lstm_cell_765_4694367*
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
J__inference_lstm_cell_765_layer_call_and_return_conditional_losses_4694362n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_765_4694363lstm_cell_765_4694365lstm_cell_765_4694367*
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
while_body_4694376*
condR
while_cond_4694375*K
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
NoOpNoOp&^lstm_cell_765/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_765/StatefulPartitionedCall%lstm_cell_765/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?W
?
 __inference__traced_save_4699767
file_prefix/
+savev2_dense_255_kernel_read_readvariableop-
)savev2_dense_255_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_765_lstm_cell_765_kernel_read_readvariableopF
Bsavev2_lstm_765_lstm_cell_765_recurrent_kernel_read_readvariableop:
6savev2_lstm_765_lstm_cell_765_bias_read_readvariableop<
8savev2_lstm_766_lstm_cell_766_kernel_read_readvariableopF
Bsavev2_lstm_766_lstm_cell_766_recurrent_kernel_read_readvariableop:
6savev2_lstm_766_lstm_cell_766_bias_read_readvariableop<
8savev2_lstm_767_lstm_cell_767_kernel_read_readvariableopF
Bsavev2_lstm_767_lstm_cell_767_recurrent_kernel_read_readvariableop:
6savev2_lstm_767_lstm_cell_767_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop6
2savev2_adam_dense_255_kernel_m_read_readvariableop4
0savev2_adam_dense_255_bias_m_read_readvariableopC
?savev2_adam_lstm_765_lstm_cell_765_kernel_m_read_readvariableopM
Isavev2_adam_lstm_765_lstm_cell_765_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_765_lstm_cell_765_bias_m_read_readvariableopC
?savev2_adam_lstm_766_lstm_cell_766_kernel_m_read_readvariableopM
Isavev2_adam_lstm_766_lstm_cell_766_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_766_lstm_cell_766_bias_m_read_readvariableopC
?savev2_adam_lstm_767_lstm_cell_767_kernel_m_read_readvariableopM
Isavev2_adam_lstm_767_lstm_cell_767_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_767_lstm_cell_767_bias_m_read_readvariableop6
2savev2_adam_dense_255_kernel_v_read_readvariableop4
0savev2_adam_dense_255_bias_v_read_readvariableopC
?savev2_adam_lstm_765_lstm_cell_765_kernel_v_read_readvariableopM
Isavev2_adam_lstm_765_lstm_cell_765_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_765_lstm_cell_765_bias_v_read_readvariableopC
?savev2_adam_lstm_766_lstm_cell_766_kernel_v_read_readvariableopM
Isavev2_adam_lstm_766_lstm_cell_766_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_766_lstm_cell_766_bias_v_read_readvariableopC
?savev2_adam_lstm_767_lstm_cell_767_kernel_v_read_readvariableopM
Isavev2_adam_lstm_767_lstm_cell_767_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_767_lstm_cell_767_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_dense_255_kernel_read_readvariableop)savev2_dense_255_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_765_lstm_cell_765_kernel_read_readvariableopBsavev2_lstm_765_lstm_cell_765_recurrent_kernel_read_readvariableop6savev2_lstm_765_lstm_cell_765_bias_read_readvariableop8savev2_lstm_766_lstm_cell_766_kernel_read_readvariableopBsavev2_lstm_766_lstm_cell_766_recurrent_kernel_read_readvariableop6savev2_lstm_766_lstm_cell_766_bias_read_readvariableop8savev2_lstm_767_lstm_cell_767_kernel_read_readvariableopBsavev2_lstm_767_lstm_cell_767_recurrent_kernel_read_readvariableop6savev2_lstm_767_lstm_cell_767_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop2savev2_adam_dense_255_kernel_m_read_readvariableop0savev2_adam_dense_255_bias_m_read_readvariableop?savev2_adam_lstm_765_lstm_cell_765_kernel_m_read_readvariableopIsavev2_adam_lstm_765_lstm_cell_765_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_765_lstm_cell_765_bias_m_read_readvariableop?savev2_adam_lstm_766_lstm_cell_766_kernel_m_read_readvariableopIsavev2_adam_lstm_766_lstm_cell_766_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_766_lstm_cell_766_bias_m_read_readvariableop?savev2_adam_lstm_767_lstm_cell_767_kernel_m_read_readvariableopIsavev2_adam_lstm_767_lstm_cell_767_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_767_lstm_cell_767_bias_m_read_readvariableop2savev2_adam_dense_255_kernel_v_read_readvariableop0savev2_adam_dense_255_bias_v_read_readvariableop?savev2_adam_lstm_765_lstm_cell_765_kernel_v_read_readvariableopIsavev2_adam_lstm_765_lstm_cell_765_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_765_lstm_cell_765_bias_v_read_readvariableop?savev2_adam_lstm_766_lstm_cell_766_kernel_v_read_readvariableopIsavev2_adam_lstm_766_lstm_cell_766_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_766_lstm_cell_766_bias_v_read_readvariableop?savev2_adam_lstm_767_lstm_cell_767_kernel_v_read_readvariableopIsavev2_adam_lstm_767_lstm_cell_767_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_767_lstm_cell_767_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
F__inference_dense_255_layer_call_and_return_conditional_losses_4699330

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

?
lstm_767_while_cond_4697372.
*lstm_767_while_lstm_767_while_loop_counter4
0lstm_767_while_lstm_767_while_maximum_iterations
lstm_767_while_placeholder 
lstm_767_while_placeholder_1 
lstm_767_while_placeholder_2 
lstm_767_while_placeholder_30
,lstm_767_while_less_lstm_767_strided_slice_1G
Clstm_767_while_lstm_767_while_cond_4697372___redundant_placeholder0G
Clstm_767_while_lstm_767_while_cond_4697372___redundant_placeholder1G
Clstm_767_while_lstm_767_while_cond_4697372___redundant_placeholder2G
Clstm_767_while_lstm_767_while_cond_4697372___redundant_placeholder3
lstm_767_while_identity
?
lstm_767/while/LessLesslstm_767_while_placeholder,lstm_767_while_less_lstm_767_strided_slice_1*
T0*
_output_shapes
: ]
lstm_767/while/IdentityIdentitylstm_767/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_767_while_identity lstm_767/while/Identity:output:0*(
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
*__inference_lstm_766_layer_call_fn_4698101
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
E__inference_lstm_766_layer_call_and_return_conditional_losses_4694986|
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
?
?
J__inference_lstm_cell_765_layer_call_and_return_conditional_losses_4699396

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
?8
?
while_body_4697566
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_765_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_765_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_765_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_765_matmul_readvariableop_resource:	?G
4while_lstm_cell_765_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_765_biasadd_readvariableop_resource:	???*while/lstm_cell_765/BiasAdd/ReadVariableOp?)while/lstm_cell_765/MatMul/ReadVariableOp?+while/lstm_cell_765/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_765/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_765_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_765/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_765/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_765/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_765_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_765/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_765/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_765/addAddV2$while/lstm_cell_765/MatMul:product:0&while/lstm_cell_765/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_765/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_765_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_765/BiasAddBiasAddwhile/lstm_cell_765/add:z:02while/lstm_cell_765/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_765/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_765/splitSplit,while/lstm_cell_765/split/split_dim:output:0$while/lstm_cell_765/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_765/SigmoidSigmoid"while/lstm_cell_765/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_765/Sigmoid_1Sigmoid"while/lstm_cell_765/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_765/mulMul!while/lstm_cell_765/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_765/ReluRelu"while/lstm_cell_765/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_765/mul_1Mulwhile/lstm_cell_765/Sigmoid:y:0&while/lstm_cell_765/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_765/add_1AddV2while/lstm_cell_765/mul:z:0while/lstm_cell_765/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_765/Sigmoid_2Sigmoid"while/lstm_cell_765/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_765/Relu_1Reluwhile/lstm_cell_765/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_765/mul_2Mul!while/lstm_cell_765/Sigmoid_2:y:0(while/lstm_cell_765/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_765/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_765/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_765/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_765/BiasAdd/ReadVariableOp*^while/lstm_cell_765/MatMul/ReadVariableOp,^while/lstm_cell_765/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_765_biasadd_readvariableop_resource5while_lstm_cell_765_biasadd_readvariableop_resource_0"n
4while_lstm_cell_765_matmul_1_readvariableop_resource6while_lstm_cell_765_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_765_matmul_readvariableop_resource4while_lstm_cell_765_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_765/BiasAdd/ReadVariableOp*while/lstm_cell_765/BiasAdd/ReadVariableOp2V
)while/lstm_cell_765/MatMul/ReadVariableOp)while/lstm_cell_765/MatMul/ReadVariableOp2Z
+while/lstm_cell_765/MatMul_1/ReadVariableOp+while/lstm_cell_765/MatMul_1/ReadVariableOp: 
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
??
?
#__inference__traced_restore_4699897
file_prefix3
!assignvariableop_dense_255_kernel:
/
!assignvariableop_1_dense_255_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: C
0assignvariableop_7_lstm_765_lstm_cell_765_kernel:	?M
:assignvariableop_8_lstm_765_lstm_cell_765_recurrent_kernel:	d?=
.assignvariableop_9_lstm_765_lstm_cell_765_bias:	?D
1assignvariableop_10_lstm_766_lstm_cell_766_kernel:	d?N
;assignvariableop_11_lstm_766_lstm_cell_766_recurrent_kernel:	2?>
/assignvariableop_12_lstm_766_lstm_cell_766_bias:	?C
1assignvariableop_13_lstm_767_lstm_cell_767_kernel:2(M
;assignvariableop_14_lstm_767_lstm_cell_767_recurrent_kernel:
(=
/assignvariableop_15_lstm_767_lstm_cell_767_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: =
+assignvariableop_18_adam_dense_255_kernel_m:
7
)assignvariableop_19_adam_dense_255_bias_m:K
8assignvariableop_20_adam_lstm_765_lstm_cell_765_kernel_m:	?U
Bassignvariableop_21_adam_lstm_765_lstm_cell_765_recurrent_kernel_m:	d?E
6assignvariableop_22_adam_lstm_765_lstm_cell_765_bias_m:	?K
8assignvariableop_23_adam_lstm_766_lstm_cell_766_kernel_m:	d?U
Bassignvariableop_24_adam_lstm_766_lstm_cell_766_recurrent_kernel_m:	2?E
6assignvariableop_25_adam_lstm_766_lstm_cell_766_bias_m:	?J
8assignvariableop_26_adam_lstm_767_lstm_cell_767_kernel_m:2(T
Bassignvariableop_27_adam_lstm_767_lstm_cell_767_recurrent_kernel_m:
(D
6assignvariableop_28_adam_lstm_767_lstm_cell_767_bias_m:(=
+assignvariableop_29_adam_dense_255_kernel_v:
7
)assignvariableop_30_adam_dense_255_bias_v:K
8assignvariableop_31_adam_lstm_765_lstm_cell_765_kernel_v:	?U
Bassignvariableop_32_adam_lstm_765_lstm_cell_765_recurrent_kernel_v:	d?E
6assignvariableop_33_adam_lstm_765_lstm_cell_765_bias_v:	?K
8assignvariableop_34_adam_lstm_766_lstm_cell_766_kernel_v:	d?U
Bassignvariableop_35_adam_lstm_766_lstm_cell_766_recurrent_kernel_v:	2?E
6assignvariableop_36_adam_lstm_766_lstm_cell_766_bias_v:	?J
8assignvariableop_37_adam_lstm_767_lstm_cell_767_kernel_v:2(T
Bassignvariableop_38_adam_lstm_767_lstm_cell_767_recurrent_kernel_v:
(D
6assignvariableop_39_adam_lstm_767_lstm_cell_767_bias_v:(
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
AssignVariableOpAssignVariableOp!assignvariableop_dense_255_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_255_biasIdentity_1:output:0"/device:CPU:0*
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
AssignVariableOp_7AssignVariableOp0assignvariableop_7_lstm_765_lstm_cell_765_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp:assignvariableop_8_lstm_765_lstm_cell_765_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_765_lstm_cell_765_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp1assignvariableop_10_lstm_766_lstm_cell_766_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp;assignvariableop_11_lstm_766_lstm_cell_766_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp/assignvariableop_12_lstm_766_lstm_cell_766_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp1assignvariableop_13_lstm_767_lstm_cell_767_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp;assignvariableop_14_lstm_767_lstm_cell_767_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp/assignvariableop_15_lstm_767_lstm_cell_767_biasIdentity_15:output:0"/device:CPU:0*
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
AssignVariableOp_18AssignVariableOp+assignvariableop_18_adam_dense_255_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp)assignvariableop_19_adam_dense_255_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp8assignvariableop_20_adam_lstm_765_lstm_cell_765_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOpBassignvariableop_21_adam_lstm_765_lstm_cell_765_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp6assignvariableop_22_adam_lstm_765_lstm_cell_765_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp8assignvariableop_23_adam_lstm_766_lstm_cell_766_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOpBassignvariableop_24_adam_lstm_766_lstm_cell_766_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_766_lstm_cell_766_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp8assignvariableop_26_adam_lstm_767_lstm_cell_767_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOpBassignvariableop_27_adam_lstm_767_lstm_cell_767_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_lstm_767_lstm_cell_767_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp+assignvariableop_29_adam_dense_255_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_dense_255_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp8assignvariableop_31_adam_lstm_765_lstm_cell_765_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOpBassignvariableop_32_adam_lstm_765_lstm_cell_765_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOp6assignvariableop_33_adam_lstm_765_lstm_cell_765_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOp8assignvariableop_34_adam_lstm_766_lstm_cell_766_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOpBassignvariableop_35_adam_lstm_766_lstm_cell_766_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adam_lstm_766_lstm_cell_766_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_37AssignVariableOp8assignvariableop_37_adam_lstm_767_lstm_cell_767_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_38AssignVariableOpBassignvariableop_38_adam_lstm_767_lstm_cell_767_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_lstm_767_lstm_cell_767_bias_vIdentity_39:output:0"/device:CPU:0*
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
?#
?
while_body_4694726
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_766_4694750_0:	d?0
while_lstm_cell_766_4694752_0:	2?,
while_lstm_cell_766_4694754_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_766_4694750:	d?.
while_lstm_cell_766_4694752:	2?*
while_lstm_cell_766_4694754:	???+while/lstm_cell_766/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_766/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_766_4694750_0while_lstm_cell_766_4694752_0while_lstm_cell_766_4694754_0*
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
J__inference_lstm_cell_766_layer_call_and_return_conditional_losses_4694712?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_766/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_766/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_766/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_766/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_766_4694750while_lstm_cell_766_4694750_0"<
while_lstm_cell_766_4694752while_lstm_cell_766_4694752_0"<
while_lstm_cell_766_4694754while_lstm_cell_766_4694754_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_766/StatefulPartitionedCall+while/lstm_cell_766/StatefulPartitionedCall: 
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
while_cond_4694566
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4694566___redundant_placeholder05
1while_while_cond_4694566___redundant_placeholder15
1while_while_cond_4694566___redundant_placeholder25
1while_while_cond_4694566___redundant_placeholder3
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
%__inference_signature_wrapper_4696555
lstm_765_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_765_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
"__inference__wrapped_model_4694295o
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
_user_specified_namelstm_765_input
?

?
lstm_765_while_cond_4697094.
*lstm_765_while_lstm_765_while_loop_counter4
0lstm_765_while_lstm_765_while_maximum_iterations
lstm_765_while_placeholder 
lstm_765_while_placeholder_1 
lstm_765_while_placeholder_2 
lstm_765_while_placeholder_30
,lstm_765_while_less_lstm_765_strided_slice_1G
Clstm_765_while_lstm_765_while_cond_4697094___redundant_placeholder0G
Clstm_765_while_lstm_765_while_cond_4697094___redundant_placeholder1G
Clstm_765_while_lstm_765_while_cond_4697094___redundant_placeholder2G
Clstm_765_while_lstm_765_while_cond_4697094___redundant_placeholder3
lstm_765_while_identity
?
lstm_765/while/LessLesslstm_765_while_placeholder,lstm_765_while_less_lstm_765_strided_slice_1*
T0*
_output_shapes
: ]
lstm_765/while/IdentityIdentitylstm_765/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_765_while_identity lstm_765/while/Identity:output:0*(
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
while_cond_4697851
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4697851___redundant_placeholder05
1while_while_cond_4697851___redundant_placeholder15
1while_while_cond_4697851___redundant_placeholder25
1while_while_cond_4697851___redundant_placeholder3
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
?#
?
while_body_4694376
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_765_4694400_0:	?0
while_lstm_cell_765_4694402_0:	d?,
while_lstm_cell_765_4694404_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_765_4694400:	?.
while_lstm_cell_765_4694402:	d?*
while_lstm_cell_765_4694404:	???+while/lstm_cell_765/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_765/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_765_4694400_0while_lstm_cell_765_4694402_0while_lstm_cell_765_4694404_0*
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
J__inference_lstm_cell_765_layer_call_and_return_conditional_losses_4694362?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_765/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_765/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_765/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_765/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_765_4694400while_lstm_cell_765_4694400_0"<
while_lstm_cell_765_4694402while_lstm_cell_765_4694402_0"<
while_lstm_cell_765_4694404while_lstm_cell_765_4694404_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_765/StatefulPartitionedCall+while/lstm_cell_765/StatefulPartitionedCall: 
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
*__inference_lstm_767_layer_call_fn_4698728

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
E__inference_lstm_767_layer_call_and_return_conditional_losses_4695794o
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
*__inference_lstm_765_layer_call_fn_4697485
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
E__inference_lstm_765_layer_call_and_return_conditional_losses_4694636|
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
?
?
/__inference_lstm_cell_766_layer_call_fn_4699462

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
J__inference_lstm_cell_766_layer_call_and_return_conditional_losses_4694858o
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
?T
?
*sequential_255_lstm_766_while_body_4694066L
Hsequential_255_lstm_766_while_sequential_255_lstm_766_while_loop_counterR
Nsequential_255_lstm_766_while_sequential_255_lstm_766_while_maximum_iterations-
)sequential_255_lstm_766_while_placeholder/
+sequential_255_lstm_766_while_placeholder_1/
+sequential_255_lstm_766_while_placeholder_2/
+sequential_255_lstm_766_while_placeholder_3K
Gsequential_255_lstm_766_while_sequential_255_lstm_766_strided_slice_1_0?
?sequential_255_lstm_766_while_tensorarrayv2read_tensorlistgetitem_sequential_255_lstm_766_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_255_lstm_766_while_lstm_cell_766_matmul_readvariableop_resource_0:	d?a
Nsequential_255_lstm_766_while_lstm_cell_766_matmul_1_readvariableop_resource_0:	2?\
Msequential_255_lstm_766_while_lstm_cell_766_biasadd_readvariableop_resource_0:	?*
&sequential_255_lstm_766_while_identity,
(sequential_255_lstm_766_while_identity_1,
(sequential_255_lstm_766_while_identity_2,
(sequential_255_lstm_766_while_identity_3,
(sequential_255_lstm_766_while_identity_4,
(sequential_255_lstm_766_while_identity_5I
Esequential_255_lstm_766_while_sequential_255_lstm_766_strided_slice_1?
?sequential_255_lstm_766_while_tensorarrayv2read_tensorlistgetitem_sequential_255_lstm_766_tensorarrayunstack_tensorlistfromtensor]
Jsequential_255_lstm_766_while_lstm_cell_766_matmul_readvariableop_resource:	d?_
Lsequential_255_lstm_766_while_lstm_cell_766_matmul_1_readvariableop_resource:	2?Z
Ksequential_255_lstm_766_while_lstm_cell_766_biasadd_readvariableop_resource:	???Bsequential_255/lstm_766/while/lstm_cell_766/BiasAdd/ReadVariableOp?Asequential_255/lstm_766/while/lstm_cell_766/MatMul/ReadVariableOp?Csequential_255/lstm_766/while/lstm_cell_766/MatMul_1/ReadVariableOp?
Osequential_255/lstm_766/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
Asequential_255/lstm_766/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_255_lstm_766_while_tensorarrayv2read_tensorlistgetitem_sequential_255_lstm_766_tensorarrayunstack_tensorlistfromtensor_0)sequential_255_lstm_766_while_placeholderXsequential_255/lstm_766/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
Asequential_255/lstm_766/while/lstm_cell_766/MatMul/ReadVariableOpReadVariableOpLsequential_255_lstm_766_while_lstm_cell_766_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
2sequential_255/lstm_766/while/lstm_cell_766/MatMulMatMulHsequential_255/lstm_766/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_255/lstm_766/while/lstm_cell_766/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_255/lstm_766/while/lstm_cell_766/MatMul_1/ReadVariableOpReadVariableOpNsequential_255_lstm_766_while_lstm_cell_766_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
4sequential_255/lstm_766/while/lstm_cell_766/MatMul_1MatMul+sequential_255_lstm_766_while_placeholder_2Ksequential_255/lstm_766/while/lstm_cell_766/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_255/lstm_766/while/lstm_cell_766/addAddV2<sequential_255/lstm_766/while/lstm_cell_766/MatMul:product:0>sequential_255/lstm_766/while/lstm_cell_766/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_255/lstm_766/while/lstm_cell_766/BiasAdd/ReadVariableOpReadVariableOpMsequential_255_lstm_766_while_lstm_cell_766_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_255/lstm_766/while/lstm_cell_766/BiasAddBiasAdd3sequential_255/lstm_766/while/lstm_cell_766/add:z:0Jsequential_255/lstm_766/while/lstm_cell_766/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_255/lstm_766/while/lstm_cell_766/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_255/lstm_766/while/lstm_cell_766/splitSplitDsequential_255/lstm_766/while/lstm_cell_766/split/split_dim:output:0<sequential_255/lstm_766/while/lstm_cell_766/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
3sequential_255/lstm_766/while/lstm_cell_766/SigmoidSigmoid:sequential_255/lstm_766/while/lstm_cell_766/split:output:0*
T0*'
_output_shapes
:?????????2?
5sequential_255/lstm_766/while/lstm_cell_766/Sigmoid_1Sigmoid:sequential_255/lstm_766/while/lstm_cell_766/split:output:1*
T0*'
_output_shapes
:?????????2?
/sequential_255/lstm_766/while/lstm_cell_766/mulMul9sequential_255/lstm_766/while/lstm_cell_766/Sigmoid_1:y:0+sequential_255_lstm_766_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
0sequential_255/lstm_766/while/lstm_cell_766/ReluRelu:sequential_255/lstm_766/while/lstm_cell_766/split:output:2*
T0*'
_output_shapes
:?????????2?
1sequential_255/lstm_766/while/lstm_cell_766/mul_1Mul7sequential_255/lstm_766/while/lstm_cell_766/Sigmoid:y:0>sequential_255/lstm_766/while/lstm_cell_766/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
1sequential_255/lstm_766/while/lstm_cell_766/add_1AddV23sequential_255/lstm_766/while/lstm_cell_766/mul:z:05sequential_255/lstm_766/while/lstm_cell_766/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
5sequential_255/lstm_766/while/lstm_cell_766/Sigmoid_2Sigmoid:sequential_255/lstm_766/while/lstm_cell_766/split:output:3*
T0*'
_output_shapes
:?????????2?
2sequential_255/lstm_766/while/lstm_cell_766/Relu_1Relu5sequential_255/lstm_766/while/lstm_cell_766/add_1:z:0*
T0*'
_output_shapes
:?????????2?
1sequential_255/lstm_766/while/lstm_cell_766/mul_2Mul9sequential_255/lstm_766/while/lstm_cell_766/Sigmoid_2:y:0@sequential_255/lstm_766/while/lstm_cell_766/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
Bsequential_255/lstm_766/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_255_lstm_766_while_placeholder_1)sequential_255_lstm_766_while_placeholder5sequential_255/lstm_766/while/lstm_cell_766/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_255/lstm_766/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_255/lstm_766/while/addAddV2)sequential_255_lstm_766_while_placeholder,sequential_255/lstm_766/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_255/lstm_766/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_255/lstm_766/while/add_1AddV2Hsequential_255_lstm_766_while_sequential_255_lstm_766_while_loop_counter.sequential_255/lstm_766/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_255/lstm_766/while/IdentityIdentity'sequential_255/lstm_766/while/add_1:z:0#^sequential_255/lstm_766/while/NoOp*
T0*
_output_shapes
: ?
(sequential_255/lstm_766/while/Identity_1IdentityNsequential_255_lstm_766_while_sequential_255_lstm_766_while_maximum_iterations#^sequential_255/lstm_766/while/NoOp*
T0*
_output_shapes
: ?
(sequential_255/lstm_766/while/Identity_2Identity%sequential_255/lstm_766/while/add:z:0#^sequential_255/lstm_766/while/NoOp*
T0*
_output_shapes
: ?
(sequential_255/lstm_766/while/Identity_3IdentityRsequential_255/lstm_766/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_255/lstm_766/while/NoOp*
T0*
_output_shapes
: ?
(sequential_255/lstm_766/while/Identity_4Identity5sequential_255/lstm_766/while/lstm_cell_766/mul_2:z:0#^sequential_255/lstm_766/while/NoOp*
T0*'
_output_shapes
:?????????2?
(sequential_255/lstm_766/while/Identity_5Identity5sequential_255/lstm_766/while/lstm_cell_766/add_1:z:0#^sequential_255/lstm_766/while/NoOp*
T0*'
_output_shapes
:?????????2?
"sequential_255/lstm_766/while/NoOpNoOpC^sequential_255/lstm_766/while/lstm_cell_766/BiasAdd/ReadVariableOpB^sequential_255/lstm_766/while/lstm_cell_766/MatMul/ReadVariableOpD^sequential_255/lstm_766/while/lstm_cell_766/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_255_lstm_766_while_identity/sequential_255/lstm_766/while/Identity:output:0"]
(sequential_255_lstm_766_while_identity_11sequential_255/lstm_766/while/Identity_1:output:0"]
(sequential_255_lstm_766_while_identity_21sequential_255/lstm_766/while/Identity_2:output:0"]
(sequential_255_lstm_766_while_identity_31sequential_255/lstm_766/while/Identity_3:output:0"]
(sequential_255_lstm_766_while_identity_41sequential_255/lstm_766/while/Identity_4:output:0"]
(sequential_255_lstm_766_while_identity_51sequential_255/lstm_766/while/Identity_5:output:0"?
Ksequential_255_lstm_766_while_lstm_cell_766_biasadd_readvariableop_resourceMsequential_255_lstm_766_while_lstm_cell_766_biasadd_readvariableop_resource_0"?
Lsequential_255_lstm_766_while_lstm_cell_766_matmul_1_readvariableop_resourceNsequential_255_lstm_766_while_lstm_cell_766_matmul_1_readvariableop_resource_0"?
Jsequential_255_lstm_766_while_lstm_cell_766_matmul_readvariableop_resourceLsequential_255_lstm_766_while_lstm_cell_766_matmul_readvariableop_resource_0"?
Esequential_255_lstm_766_while_sequential_255_lstm_766_strided_slice_1Gsequential_255_lstm_766_while_sequential_255_lstm_766_strided_slice_1_0"?
?sequential_255_lstm_766_while_tensorarrayv2read_tensorlistgetitem_sequential_255_lstm_766_tensorarrayunstack_tensorlistfromtensor?sequential_255_lstm_766_while_tensorarrayv2read_tensorlistgetitem_sequential_255_lstm_766_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2?
Bsequential_255/lstm_766/while/lstm_cell_766/BiasAdd/ReadVariableOpBsequential_255/lstm_766/while/lstm_cell_766/BiasAdd/ReadVariableOp2?
Asequential_255/lstm_766/while/lstm_cell_766/MatMul/ReadVariableOpAsequential_255/lstm_766/while/lstm_cell_766/MatMul/ReadVariableOp2?
Csequential_255/lstm_766/while/lstm_cell_766/MatMul_1/ReadVariableOpCsequential_255/lstm_766/while/lstm_cell_766/MatMul_1/ReadVariableOp: 
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
while_body_4695410
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_765_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_765_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_765_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_765_matmul_readvariableop_resource:	?G
4while_lstm_cell_765_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_765_biasadd_readvariableop_resource:	???*while/lstm_cell_765/BiasAdd/ReadVariableOp?)while/lstm_cell_765/MatMul/ReadVariableOp?+while/lstm_cell_765/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_765/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_765_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_765/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_765/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_765/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_765_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_765/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_765/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_765/addAddV2$while/lstm_cell_765/MatMul:product:0&while/lstm_cell_765/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_765/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_765_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_765/BiasAddBiasAddwhile/lstm_cell_765/add:z:02while/lstm_cell_765/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_765/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_765/splitSplit,while/lstm_cell_765/split/split_dim:output:0$while/lstm_cell_765/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_765/SigmoidSigmoid"while/lstm_cell_765/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_765/Sigmoid_1Sigmoid"while/lstm_cell_765/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_765/mulMul!while/lstm_cell_765/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_765/ReluRelu"while/lstm_cell_765/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_765/mul_1Mulwhile/lstm_cell_765/Sigmoid:y:0&while/lstm_cell_765/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_765/add_1AddV2while/lstm_cell_765/mul:z:0while/lstm_cell_765/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_765/Sigmoid_2Sigmoid"while/lstm_cell_765/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_765/Relu_1Reluwhile/lstm_cell_765/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_765/mul_2Mul!while/lstm_cell_765/Sigmoid_2:y:0(while/lstm_cell_765/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_765/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_765/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_765/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_765/BiasAdd/ReadVariableOp*^while/lstm_cell_765/MatMul/ReadVariableOp,^while/lstm_cell_765/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_765_biasadd_readvariableop_resource5while_lstm_cell_765_biasadd_readvariableop_resource_0"n
4while_lstm_cell_765_matmul_1_readvariableop_resource6while_lstm_cell_765_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_765_matmul_readvariableop_resource4while_lstm_cell_765_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_765/BiasAdd/ReadVariableOp*while/lstm_cell_765/BiasAdd/ReadVariableOp2V
)while/lstm_cell_765/MatMul/ReadVariableOp)while/lstm_cell_765/MatMul/ReadVariableOp2Z
+while/lstm_cell_765/MatMul_1/ReadVariableOp+while/lstm_cell_765/MatMul_1/ReadVariableOp: 
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
while_cond_4697994
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4697994___redundant_placeholder05
1while_while_cond_4697994___redundant_placeholder15
1while_while_cond_4697994___redundant_placeholder25
1while_while_cond_4697994___redundant_placeholder3
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
*__inference_lstm_767_layer_call_fn_4698706
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
E__inference_lstm_767_layer_call_and_return_conditional_losses_4695145o
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
?8
?
E__inference_lstm_765_layer_call_and_return_conditional_losses_4694636

inputs(
lstm_cell_765_4694554:	?(
lstm_cell_765_4694556:	d?$
lstm_cell_765_4694558:	?
identity??%lstm_cell_765/StatefulPartitionedCall?while;
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
%lstm_cell_765/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_765_4694554lstm_cell_765_4694556lstm_cell_765_4694558*
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
J__inference_lstm_cell_765_layer_call_and_return_conditional_losses_4694508n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_765_4694554lstm_cell_765_4694556lstm_cell_765_4694558*
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
while_body_4694567*
condR
while_cond_4694566*K
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
NoOpNoOp&^lstm_cell_765/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_765/StatefulPartitionedCall%lstm_cell_765/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
K__inference_sequential_255_layer_call_and_return_conditional_losses_4696408

inputs#
lstm_765_4696381:	?#
lstm_765_4696383:	d?
lstm_765_4696385:	?#
lstm_766_4696388:	d?#
lstm_766_4696390:	2?
lstm_766_4696392:	?"
lstm_767_4696395:2("
lstm_767_4696397:
(
lstm_767_4696399:(#
dense_255_4696402:

dense_255_4696404:
identity??!dense_255/StatefulPartitionedCall? lstm_765/StatefulPartitionedCall? lstm_766/StatefulPartitionedCall? lstm_767/StatefulPartitionedCall?
 lstm_765/StatefulPartitionedCallStatefulPartitionedCallinputslstm_765_4696381lstm_765_4696383lstm_765_4696385*
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
E__inference_lstm_765_layer_call_and_return_conditional_losses_4696340?
 lstm_766/StatefulPartitionedCallStatefulPartitionedCall)lstm_765/StatefulPartitionedCall:output:0lstm_766_4696388lstm_766_4696390lstm_766_4696392*
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
E__inference_lstm_766_layer_call_and_return_conditional_losses_4696175?
 lstm_767/StatefulPartitionedCallStatefulPartitionedCall)lstm_766/StatefulPartitionedCall:output:0lstm_767_4696395lstm_767_4696397lstm_767_4696399*
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
E__inference_lstm_767_layer_call_and_return_conditional_losses_4696010?
!dense_255/StatefulPartitionedCallStatefulPartitionedCall)lstm_767/StatefulPartitionedCall:output:0dense_255_4696402dense_255_4696404*
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
F__inference_dense_255_layer_call_and_return_conditional_losses_4695812y
IdentityIdentity*dense_255/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_255/StatefulPartitionedCall!^lstm_765/StatefulPartitionedCall!^lstm_766/StatefulPartitionedCall!^lstm_767/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_255/StatefulPartitionedCall!dense_255/StatefulPartitionedCall2D
 lstm_765/StatefulPartitionedCall lstm_765/StatefulPartitionedCall2D
 lstm_766/StatefulPartitionedCall lstm_766/StatefulPartitionedCall2D
 lstm_767/StatefulPartitionedCall lstm_767/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_766_layer_call_and_return_conditional_losses_4694712

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
while_cond_4698610
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4698610___redundant_placeholder05
1while_while_cond_4698610___redundant_placeholder15
1while_while_cond_4698610___redundant_placeholder25
1while_while_cond_4698610___redundant_placeholder3
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
?
E__inference_lstm_767_layer_call_and_return_conditional_losses_4695336

inputs'
lstm_cell_767_4695254:2('
lstm_cell_767_4695256:
(#
lstm_cell_767_4695258:(
identity??%lstm_cell_767/StatefulPartitionedCall?while;
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
%lstm_cell_767/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_767_4695254lstm_cell_767_4695256lstm_cell_767_4695258*
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
J__inference_lstm_cell_767_layer_call_and_return_conditional_losses_4695208n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_767_4695254lstm_cell_767_4695256lstm_cell_767_4695258*
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
while_body_4695267*
condR
while_cond_4695266*K
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
NoOpNoOp&^lstm_cell_767/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_767/StatefulPartitionedCall%lstm_cell_767/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?
?
while_cond_4698797
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4698797___redundant_placeholder05
1while_while_cond_4698797___redundant_placeholder15
1while_while_cond_4698797___redundant_placeholder25
1while_while_cond_4698797___redundant_placeholder3
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

lstm_767_while_body_4696946.
*lstm_767_while_lstm_767_while_loop_counter4
0lstm_767_while_lstm_767_while_maximum_iterations
lstm_767_while_placeholder 
lstm_767_while_placeholder_1 
lstm_767_while_placeholder_2 
lstm_767_while_placeholder_3-
)lstm_767_while_lstm_767_strided_slice_1_0i
elstm_767_while_tensorarrayv2read_tensorlistgetitem_lstm_767_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_767_while_lstm_cell_767_matmul_readvariableop_resource_0:2(Q
?lstm_767_while_lstm_cell_767_matmul_1_readvariableop_resource_0:
(L
>lstm_767_while_lstm_cell_767_biasadd_readvariableop_resource_0:(
lstm_767_while_identity
lstm_767_while_identity_1
lstm_767_while_identity_2
lstm_767_while_identity_3
lstm_767_while_identity_4
lstm_767_while_identity_5+
'lstm_767_while_lstm_767_strided_slice_1g
clstm_767_while_tensorarrayv2read_tensorlistgetitem_lstm_767_tensorarrayunstack_tensorlistfromtensorM
;lstm_767_while_lstm_cell_767_matmul_readvariableop_resource:2(O
=lstm_767_while_lstm_cell_767_matmul_1_readvariableop_resource:
(J
<lstm_767_while_lstm_cell_767_biasadd_readvariableop_resource:(??3lstm_767/while/lstm_cell_767/BiasAdd/ReadVariableOp?2lstm_767/while/lstm_cell_767/MatMul/ReadVariableOp?4lstm_767/while/lstm_cell_767/MatMul_1/ReadVariableOp?
@lstm_767/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_767/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_767_while_tensorarrayv2read_tensorlistgetitem_lstm_767_tensorarrayunstack_tensorlistfromtensor_0lstm_767_while_placeholderIlstm_767/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_767/while/lstm_cell_767/MatMul/ReadVariableOpReadVariableOp=lstm_767_while_lstm_cell_767_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_767/while/lstm_cell_767/MatMulMatMul9lstm_767/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_767/while/lstm_cell_767/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_767/while/lstm_cell_767/MatMul_1/ReadVariableOpReadVariableOp?lstm_767_while_lstm_cell_767_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_767/while/lstm_cell_767/MatMul_1MatMullstm_767_while_placeholder_2<lstm_767/while/lstm_cell_767/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_767/while/lstm_cell_767/addAddV2-lstm_767/while/lstm_cell_767/MatMul:product:0/lstm_767/while/lstm_cell_767/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_767/while/lstm_cell_767/BiasAdd/ReadVariableOpReadVariableOp>lstm_767_while_lstm_cell_767_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_767/while/lstm_cell_767/BiasAddBiasAdd$lstm_767/while/lstm_cell_767/add:z:0;lstm_767/while/lstm_cell_767/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_767/while/lstm_cell_767/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_767/while/lstm_cell_767/splitSplit5lstm_767/while/lstm_cell_767/split/split_dim:output:0-lstm_767/while/lstm_cell_767/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_767/while/lstm_cell_767/SigmoidSigmoid+lstm_767/while/lstm_cell_767/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_767/while/lstm_cell_767/Sigmoid_1Sigmoid+lstm_767/while/lstm_cell_767/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_767/while/lstm_cell_767/mulMul*lstm_767/while/lstm_cell_767/Sigmoid_1:y:0lstm_767_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_767/while/lstm_cell_767/ReluRelu+lstm_767/while/lstm_cell_767/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_767/while/lstm_cell_767/mul_1Mul(lstm_767/while/lstm_cell_767/Sigmoid:y:0/lstm_767/while/lstm_cell_767/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_767/while/lstm_cell_767/add_1AddV2$lstm_767/while/lstm_cell_767/mul:z:0&lstm_767/while/lstm_cell_767/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_767/while/lstm_cell_767/Sigmoid_2Sigmoid+lstm_767/while/lstm_cell_767/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_767/while/lstm_cell_767/Relu_1Relu&lstm_767/while/lstm_cell_767/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_767/while/lstm_cell_767/mul_2Mul*lstm_767/while/lstm_cell_767/Sigmoid_2:y:01lstm_767/while/lstm_cell_767/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_767/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_767_while_placeholder_1lstm_767_while_placeholder&lstm_767/while/lstm_cell_767/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_767/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_767/while/addAddV2lstm_767_while_placeholderlstm_767/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_767/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_767/while/add_1AddV2*lstm_767_while_lstm_767_while_loop_counterlstm_767/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_767/while/IdentityIdentitylstm_767/while/add_1:z:0^lstm_767/while/NoOp*
T0*
_output_shapes
: ?
lstm_767/while/Identity_1Identity0lstm_767_while_lstm_767_while_maximum_iterations^lstm_767/while/NoOp*
T0*
_output_shapes
: t
lstm_767/while/Identity_2Identitylstm_767/while/add:z:0^lstm_767/while/NoOp*
T0*
_output_shapes
: ?
lstm_767/while/Identity_3IdentityClstm_767/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_767/while/NoOp*
T0*
_output_shapes
: ?
lstm_767/while/Identity_4Identity&lstm_767/while/lstm_cell_767/mul_2:z:0^lstm_767/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_767/while/Identity_5Identity&lstm_767/while/lstm_cell_767/add_1:z:0^lstm_767/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_767/while/NoOpNoOp4^lstm_767/while/lstm_cell_767/BiasAdd/ReadVariableOp3^lstm_767/while/lstm_cell_767/MatMul/ReadVariableOp5^lstm_767/while/lstm_cell_767/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_767_while_identity lstm_767/while/Identity:output:0"?
lstm_767_while_identity_1"lstm_767/while/Identity_1:output:0"?
lstm_767_while_identity_2"lstm_767/while/Identity_2:output:0"?
lstm_767_while_identity_3"lstm_767/while/Identity_3:output:0"?
lstm_767_while_identity_4"lstm_767/while/Identity_4:output:0"?
lstm_767_while_identity_5"lstm_767/while/Identity_5:output:0"T
'lstm_767_while_lstm_767_strided_slice_1)lstm_767_while_lstm_767_strided_slice_1_0"~
<lstm_767_while_lstm_cell_767_biasadd_readvariableop_resource>lstm_767_while_lstm_cell_767_biasadd_readvariableop_resource_0"?
=lstm_767_while_lstm_cell_767_matmul_1_readvariableop_resource?lstm_767_while_lstm_cell_767_matmul_1_readvariableop_resource_0"|
;lstm_767_while_lstm_cell_767_matmul_readvariableop_resource=lstm_767_while_lstm_cell_767_matmul_readvariableop_resource_0"?
clstm_767_while_tensorarrayv2read_tensorlistgetitem_lstm_767_tensorarrayunstack_tensorlistfromtensorelstm_767_while_tensorarrayv2read_tensorlistgetitem_lstm_767_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_767/while/lstm_cell_767/BiasAdd/ReadVariableOp3lstm_767/while/lstm_cell_767/BiasAdd/ReadVariableOp2h
2lstm_767/while/lstm_cell_767/MatMul/ReadVariableOp2lstm_767/while/lstm_cell_767/MatMul/ReadVariableOp2l
4lstm_767/while/lstm_cell_767/MatMul_1/ReadVariableOp4lstm_767/while/lstm_cell_767/MatMul_1/ReadVariableOp: 
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
E__inference_lstm_766_layer_call_and_return_conditional_losses_4695644

inputs?
,lstm_cell_766_matmul_readvariableop_resource:	d?A
.lstm_cell_766_matmul_1_readvariableop_resource:	2?<
-lstm_cell_766_biasadd_readvariableop_resource:	?
identity??$lstm_cell_766/BiasAdd/ReadVariableOp?#lstm_cell_766/MatMul/ReadVariableOp?%lstm_cell_766/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_766/MatMul/ReadVariableOpReadVariableOp,lstm_cell_766_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_766/MatMulMatMulstrided_slice_2:output:0+lstm_cell_766/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_766/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_766_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_766/MatMul_1MatMulzeros:output:0-lstm_cell_766/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_766/addAddV2lstm_cell_766/MatMul:product:0 lstm_cell_766/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_766/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_766_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_766/BiasAddBiasAddlstm_cell_766/add:z:0,lstm_cell_766/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_766/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_766/splitSplit&lstm_cell_766/split/split_dim:output:0lstm_cell_766/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_766/SigmoidSigmoidlstm_cell_766/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_766/Sigmoid_1Sigmoidlstm_cell_766/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_766/mulMullstm_cell_766/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_766/ReluRelulstm_cell_766/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_766/mul_1Mullstm_cell_766/Sigmoid:y:0 lstm_cell_766/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_766/add_1AddV2lstm_cell_766/mul:z:0lstm_cell_766/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_766/Sigmoid_2Sigmoidlstm_cell_766/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_766/Relu_1Relulstm_cell_766/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_766/mul_2Mullstm_cell_766/Sigmoid_2:y:0"lstm_cell_766/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_766_matmul_readvariableop_resource.lstm_cell_766_matmul_1_readvariableop_resource-lstm_cell_766_biasadd_readvariableop_resource*
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
while_body_4695560*
condR
while_cond_4695559*K
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
NoOpNoOp%^lstm_cell_766/BiasAdd/ReadVariableOp$^lstm_cell_766/MatMul/ReadVariableOp&^lstm_cell_766/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_766/BiasAdd/ReadVariableOp$lstm_cell_766/BiasAdd/ReadVariableOp2J
#lstm_cell_766/MatMul/ReadVariableOp#lstm_cell_766/MatMul/ReadVariableOp2N
%lstm_cell_766/MatMul_1/ReadVariableOp%lstm_cell_766/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?

?
0__inference_sequential_255_layer_call_fn_4696582

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
K__inference_sequential_255_layer_call_and_return_conditional_losses_4695819o
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
?
?
*sequential_255_lstm_765_while_cond_4693926L
Hsequential_255_lstm_765_while_sequential_255_lstm_765_while_loop_counterR
Nsequential_255_lstm_765_while_sequential_255_lstm_765_while_maximum_iterations-
)sequential_255_lstm_765_while_placeholder/
+sequential_255_lstm_765_while_placeholder_1/
+sequential_255_lstm_765_while_placeholder_2/
+sequential_255_lstm_765_while_placeholder_3N
Jsequential_255_lstm_765_while_less_sequential_255_lstm_765_strided_slice_1e
asequential_255_lstm_765_while_sequential_255_lstm_765_while_cond_4693926___redundant_placeholder0e
asequential_255_lstm_765_while_sequential_255_lstm_765_while_cond_4693926___redundant_placeholder1e
asequential_255_lstm_765_while_sequential_255_lstm_765_while_cond_4693926___redundant_placeholder2e
asequential_255_lstm_765_while_sequential_255_lstm_765_while_cond_4693926___redundant_placeholder3*
&sequential_255_lstm_765_while_identity
?
"sequential_255/lstm_765/while/LessLess)sequential_255_lstm_765_while_placeholderJsequential_255_lstm_765_while_less_sequential_255_lstm_765_strided_slice_1*
T0*
_output_shapes
: {
&sequential_255/lstm_765/while/IdentityIdentity&sequential_255/lstm_765/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_255_lstm_765_while_identity/sequential_255/lstm_765/while/Identity:output:0*(
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
?K
?
E__inference_lstm_767_layer_call_and_return_conditional_losses_4698882
inputs_0>
,lstm_cell_767_matmul_readvariableop_resource:2(@
.lstm_cell_767_matmul_1_readvariableop_resource:
(;
-lstm_cell_767_biasadd_readvariableop_resource:(
identity??$lstm_cell_767/BiasAdd/ReadVariableOp?#lstm_cell_767/MatMul/ReadVariableOp?%lstm_cell_767/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_767/MatMul/ReadVariableOpReadVariableOp,lstm_cell_767_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_767/MatMulMatMulstrided_slice_2:output:0+lstm_cell_767/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_767/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_767_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_767/MatMul_1MatMulzeros:output:0-lstm_cell_767/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_767/addAddV2lstm_cell_767/MatMul:product:0 lstm_cell_767/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_767/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_767_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_767/BiasAddBiasAddlstm_cell_767/add:z:0,lstm_cell_767/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_767/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_767/splitSplit&lstm_cell_767/split/split_dim:output:0lstm_cell_767/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_767/SigmoidSigmoidlstm_cell_767/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_767/Sigmoid_1Sigmoidlstm_cell_767/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_767/mulMullstm_cell_767/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_767/ReluRelulstm_cell_767/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_767/mul_1Mullstm_cell_767/Sigmoid:y:0 lstm_cell_767/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_767/add_1AddV2lstm_cell_767/mul:z:0lstm_cell_767/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_767/Sigmoid_2Sigmoidlstm_cell_767/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_767/Relu_1Relulstm_cell_767/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_767/mul_2Mullstm_cell_767/Sigmoid_2:y:0"lstm_cell_767/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_767_matmul_readvariableop_resource.lstm_cell_767_matmul_1_readvariableop_resource-lstm_cell_767_biasadd_readvariableop_resource*
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
while_body_4698798*
condR
while_cond_4698797*K
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
NoOpNoOp%^lstm_cell_767/BiasAdd/ReadVariableOp$^lstm_cell_767/MatMul/ReadVariableOp&^lstm_cell_767/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_767/BiasAdd/ReadVariableOp$lstm_cell_767/BiasAdd/ReadVariableOp2J
#lstm_cell_767/MatMul/ReadVariableOp#lstm_cell_767/MatMul/ReadVariableOp2N
%lstm_cell_767/MatMul_1/ReadVariableOp%lstm_cell_767/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?T
?
*sequential_255_lstm_767_while_body_4694205L
Hsequential_255_lstm_767_while_sequential_255_lstm_767_while_loop_counterR
Nsequential_255_lstm_767_while_sequential_255_lstm_767_while_maximum_iterations-
)sequential_255_lstm_767_while_placeholder/
+sequential_255_lstm_767_while_placeholder_1/
+sequential_255_lstm_767_while_placeholder_2/
+sequential_255_lstm_767_while_placeholder_3K
Gsequential_255_lstm_767_while_sequential_255_lstm_767_strided_slice_1_0?
?sequential_255_lstm_767_while_tensorarrayv2read_tensorlistgetitem_sequential_255_lstm_767_tensorarrayunstack_tensorlistfromtensor_0^
Lsequential_255_lstm_767_while_lstm_cell_767_matmul_readvariableop_resource_0:2(`
Nsequential_255_lstm_767_while_lstm_cell_767_matmul_1_readvariableop_resource_0:
([
Msequential_255_lstm_767_while_lstm_cell_767_biasadd_readvariableop_resource_0:(*
&sequential_255_lstm_767_while_identity,
(sequential_255_lstm_767_while_identity_1,
(sequential_255_lstm_767_while_identity_2,
(sequential_255_lstm_767_while_identity_3,
(sequential_255_lstm_767_while_identity_4,
(sequential_255_lstm_767_while_identity_5I
Esequential_255_lstm_767_while_sequential_255_lstm_767_strided_slice_1?
?sequential_255_lstm_767_while_tensorarrayv2read_tensorlistgetitem_sequential_255_lstm_767_tensorarrayunstack_tensorlistfromtensor\
Jsequential_255_lstm_767_while_lstm_cell_767_matmul_readvariableop_resource:2(^
Lsequential_255_lstm_767_while_lstm_cell_767_matmul_1_readvariableop_resource:
(Y
Ksequential_255_lstm_767_while_lstm_cell_767_biasadd_readvariableop_resource:(??Bsequential_255/lstm_767/while/lstm_cell_767/BiasAdd/ReadVariableOp?Asequential_255/lstm_767/while/lstm_cell_767/MatMul/ReadVariableOp?Csequential_255/lstm_767/while/lstm_cell_767/MatMul_1/ReadVariableOp?
Osequential_255/lstm_767/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
Asequential_255/lstm_767/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_255_lstm_767_while_tensorarrayv2read_tensorlistgetitem_sequential_255_lstm_767_tensorarrayunstack_tensorlistfromtensor_0)sequential_255_lstm_767_while_placeholderXsequential_255/lstm_767/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
Asequential_255/lstm_767/while/lstm_cell_767/MatMul/ReadVariableOpReadVariableOpLsequential_255_lstm_767_while_lstm_cell_767_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
2sequential_255/lstm_767/while/lstm_cell_767/MatMulMatMulHsequential_255/lstm_767/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_255/lstm_767/while/lstm_cell_767/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
Csequential_255/lstm_767/while/lstm_cell_767/MatMul_1/ReadVariableOpReadVariableOpNsequential_255_lstm_767_while_lstm_cell_767_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
4sequential_255/lstm_767/while/lstm_cell_767/MatMul_1MatMul+sequential_255_lstm_767_while_placeholder_2Ksequential_255/lstm_767/while/lstm_cell_767/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
/sequential_255/lstm_767/while/lstm_cell_767/addAddV2<sequential_255/lstm_767/while/lstm_cell_767/MatMul:product:0>sequential_255/lstm_767/while/lstm_cell_767/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
Bsequential_255/lstm_767/while/lstm_cell_767/BiasAdd/ReadVariableOpReadVariableOpMsequential_255_lstm_767_while_lstm_cell_767_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
3sequential_255/lstm_767/while/lstm_cell_767/BiasAddBiasAdd3sequential_255/lstm_767/while/lstm_cell_767/add:z:0Jsequential_255/lstm_767/while/lstm_cell_767/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(}
;sequential_255/lstm_767/while/lstm_cell_767/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_255/lstm_767/while/lstm_cell_767/splitSplitDsequential_255/lstm_767/while/lstm_cell_767/split/split_dim:output:0<sequential_255/lstm_767/while/lstm_cell_767/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
3sequential_255/lstm_767/while/lstm_cell_767/SigmoidSigmoid:sequential_255/lstm_767/while/lstm_cell_767/split:output:0*
T0*'
_output_shapes
:?????????
?
5sequential_255/lstm_767/while/lstm_cell_767/Sigmoid_1Sigmoid:sequential_255/lstm_767/while/lstm_cell_767/split:output:1*
T0*'
_output_shapes
:?????????
?
/sequential_255/lstm_767/while/lstm_cell_767/mulMul9sequential_255/lstm_767/while/lstm_cell_767/Sigmoid_1:y:0+sequential_255_lstm_767_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
0sequential_255/lstm_767/while/lstm_cell_767/ReluRelu:sequential_255/lstm_767/while/lstm_cell_767/split:output:2*
T0*'
_output_shapes
:?????????
?
1sequential_255/lstm_767/while/lstm_cell_767/mul_1Mul7sequential_255/lstm_767/while/lstm_cell_767/Sigmoid:y:0>sequential_255/lstm_767/while/lstm_cell_767/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
1sequential_255/lstm_767/while/lstm_cell_767/add_1AddV23sequential_255/lstm_767/while/lstm_cell_767/mul:z:05sequential_255/lstm_767/while/lstm_cell_767/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
5sequential_255/lstm_767/while/lstm_cell_767/Sigmoid_2Sigmoid:sequential_255/lstm_767/while/lstm_cell_767/split:output:3*
T0*'
_output_shapes
:?????????
?
2sequential_255/lstm_767/while/lstm_cell_767/Relu_1Relu5sequential_255/lstm_767/while/lstm_cell_767/add_1:z:0*
T0*'
_output_shapes
:?????????
?
1sequential_255/lstm_767/while/lstm_cell_767/mul_2Mul9sequential_255/lstm_767/while/lstm_cell_767/Sigmoid_2:y:0@sequential_255/lstm_767/while/lstm_cell_767/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
Bsequential_255/lstm_767/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_255_lstm_767_while_placeholder_1)sequential_255_lstm_767_while_placeholder5sequential_255/lstm_767/while/lstm_cell_767/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_255/lstm_767/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_255/lstm_767/while/addAddV2)sequential_255_lstm_767_while_placeholder,sequential_255/lstm_767/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_255/lstm_767/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_255/lstm_767/while/add_1AddV2Hsequential_255_lstm_767_while_sequential_255_lstm_767_while_loop_counter.sequential_255/lstm_767/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_255/lstm_767/while/IdentityIdentity'sequential_255/lstm_767/while/add_1:z:0#^sequential_255/lstm_767/while/NoOp*
T0*
_output_shapes
: ?
(sequential_255/lstm_767/while/Identity_1IdentityNsequential_255_lstm_767_while_sequential_255_lstm_767_while_maximum_iterations#^sequential_255/lstm_767/while/NoOp*
T0*
_output_shapes
: ?
(sequential_255/lstm_767/while/Identity_2Identity%sequential_255/lstm_767/while/add:z:0#^sequential_255/lstm_767/while/NoOp*
T0*
_output_shapes
: ?
(sequential_255/lstm_767/while/Identity_3IdentityRsequential_255/lstm_767/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_255/lstm_767/while/NoOp*
T0*
_output_shapes
: ?
(sequential_255/lstm_767/while/Identity_4Identity5sequential_255/lstm_767/while/lstm_cell_767/mul_2:z:0#^sequential_255/lstm_767/while/NoOp*
T0*'
_output_shapes
:?????????
?
(sequential_255/lstm_767/while/Identity_5Identity5sequential_255/lstm_767/while/lstm_cell_767/add_1:z:0#^sequential_255/lstm_767/while/NoOp*
T0*'
_output_shapes
:?????????
?
"sequential_255/lstm_767/while/NoOpNoOpC^sequential_255/lstm_767/while/lstm_cell_767/BiasAdd/ReadVariableOpB^sequential_255/lstm_767/while/lstm_cell_767/MatMul/ReadVariableOpD^sequential_255/lstm_767/while/lstm_cell_767/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_255_lstm_767_while_identity/sequential_255/lstm_767/while/Identity:output:0"]
(sequential_255_lstm_767_while_identity_11sequential_255/lstm_767/while/Identity_1:output:0"]
(sequential_255_lstm_767_while_identity_21sequential_255/lstm_767/while/Identity_2:output:0"]
(sequential_255_lstm_767_while_identity_31sequential_255/lstm_767/while/Identity_3:output:0"]
(sequential_255_lstm_767_while_identity_41sequential_255/lstm_767/while/Identity_4:output:0"]
(sequential_255_lstm_767_while_identity_51sequential_255/lstm_767/while/Identity_5:output:0"?
Ksequential_255_lstm_767_while_lstm_cell_767_biasadd_readvariableop_resourceMsequential_255_lstm_767_while_lstm_cell_767_biasadd_readvariableop_resource_0"?
Lsequential_255_lstm_767_while_lstm_cell_767_matmul_1_readvariableop_resourceNsequential_255_lstm_767_while_lstm_cell_767_matmul_1_readvariableop_resource_0"?
Jsequential_255_lstm_767_while_lstm_cell_767_matmul_readvariableop_resourceLsequential_255_lstm_767_while_lstm_cell_767_matmul_readvariableop_resource_0"?
Esequential_255_lstm_767_while_sequential_255_lstm_767_strided_slice_1Gsequential_255_lstm_767_while_sequential_255_lstm_767_strided_slice_1_0"?
?sequential_255_lstm_767_while_tensorarrayv2read_tensorlistgetitem_sequential_255_lstm_767_tensorarrayunstack_tensorlistfromtensor?sequential_255_lstm_767_while_tensorarrayv2read_tensorlistgetitem_sequential_255_lstm_767_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2?
Bsequential_255/lstm_767/while/lstm_cell_767/BiasAdd/ReadVariableOpBsequential_255/lstm_767/while/lstm_cell_767/BiasAdd/ReadVariableOp2?
Asequential_255/lstm_767/while/lstm_cell_767/MatMul/ReadVariableOpAsequential_255/lstm_767/while/lstm_cell_767/MatMul/ReadVariableOp2?
Csequential_255/lstm_767/while/lstm_cell_767/MatMul_1/ReadVariableOpCsequential_255/lstm_767/while/lstm_cell_767/MatMul_1/ReadVariableOp: 
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
*__inference_lstm_765_layer_call_fn_4697507

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
E__inference_lstm_765_layer_call_and_return_conditional_losses_4696340s
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
?#
?
while_body_4695267
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_767_4695291_0:2(/
while_lstm_cell_767_4695293_0:
(+
while_lstm_cell_767_4695295_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_767_4695291:2(-
while_lstm_cell_767_4695293:
()
while_lstm_cell_767_4695295:(??+while/lstm_cell_767/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_767/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_767_4695291_0while_lstm_cell_767_4695293_0while_lstm_cell_767_4695295_0*
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
J__inference_lstm_cell_767_layer_call_and_return_conditional_losses_4695208?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_767/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_767/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_767/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_767/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_767_4695291while_lstm_cell_767_4695291_0"<
while_lstm_cell_767_4695293while_lstm_cell_767_4695293_0"<
while_lstm_cell_767_4695295while_lstm_cell_767_4695295_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_767/StatefulPartitionedCall+while/lstm_cell_767/StatefulPartitionedCall: 
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
while_body_4699227
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_767_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_767_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_767_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_767_matmul_readvariableop_resource:2(F
4while_lstm_cell_767_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_767_biasadd_readvariableop_resource:(??*while/lstm_cell_767/BiasAdd/ReadVariableOp?)while/lstm_cell_767/MatMul/ReadVariableOp?+while/lstm_cell_767/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_767/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_767_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_767/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_767/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_767/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_767_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_767/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_767/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_767/addAddV2$while/lstm_cell_767/MatMul:product:0&while/lstm_cell_767/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_767/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_767_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_767/BiasAddBiasAddwhile/lstm_cell_767/add:z:02while/lstm_cell_767/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_767/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_767/splitSplit,while/lstm_cell_767/split/split_dim:output:0$while/lstm_cell_767/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_767/SigmoidSigmoid"while/lstm_cell_767/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_767/Sigmoid_1Sigmoid"while/lstm_cell_767/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_767/mulMul!while/lstm_cell_767/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_767/ReluRelu"while/lstm_cell_767/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_767/mul_1Mulwhile/lstm_cell_767/Sigmoid:y:0&while/lstm_cell_767/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_767/add_1AddV2while/lstm_cell_767/mul:z:0while/lstm_cell_767/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_767/Sigmoid_2Sigmoid"while/lstm_cell_767/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_767/Relu_1Reluwhile/lstm_cell_767/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_767/mul_2Mul!while/lstm_cell_767/Sigmoid_2:y:0(while/lstm_cell_767/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_767/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_767/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_767/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_767/BiasAdd/ReadVariableOp*^while/lstm_cell_767/MatMul/ReadVariableOp,^while/lstm_cell_767/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_767_biasadd_readvariableop_resource5while_lstm_cell_767_biasadd_readvariableop_resource_0"n
4while_lstm_cell_767_matmul_1_readvariableop_resource6while_lstm_cell_767_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_767_matmul_readvariableop_resource4while_lstm_cell_767_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_767/BiasAdd/ReadVariableOp*while/lstm_cell_767/BiasAdd/ReadVariableOp2V
)while/lstm_cell_767/MatMul/ReadVariableOp)while/lstm_cell_767/MatMul/ReadVariableOp2Z
+while/lstm_cell_767/MatMul_1/ReadVariableOp+while/lstm_cell_767/MatMul_1/ReadVariableOp: 
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
while_cond_4695925
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4695925___redundant_placeholder05
1while_while_cond_4695925___redundant_placeholder15
1while_while_cond_4695925___redundant_placeholder25
1while_while_cond_4695925___redundant_placeholder3
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
lstm_766_while_cond_4696806.
*lstm_766_while_lstm_766_while_loop_counter4
0lstm_766_while_lstm_766_while_maximum_iterations
lstm_766_while_placeholder 
lstm_766_while_placeholder_1 
lstm_766_while_placeholder_2 
lstm_766_while_placeholder_30
,lstm_766_while_less_lstm_766_strided_slice_1G
Clstm_766_while_lstm_766_while_cond_4696806___redundant_placeholder0G
Clstm_766_while_lstm_766_while_cond_4696806___redundant_placeholder1G
Clstm_766_while_lstm_766_while_cond_4696806___redundant_placeholder2G
Clstm_766_while_lstm_766_while_cond_4696806___redundant_placeholder3
lstm_766_while_identity
?
lstm_766/while/LessLesslstm_766_while_placeholder,lstm_766_while_less_lstm_766_strided_slice_1*
T0*
_output_shapes
: ]
lstm_766/while/IdentityIdentitylstm_766/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_766_while_identity lstm_766/while/Identity:output:0*(
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
J__inference_lstm_cell_767_layer_call_and_return_conditional_losses_4695208

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
J__inference_lstm_cell_766_layer_call_and_return_conditional_losses_4694858

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
?
E__inference_lstm_766_layer_call_and_return_conditional_losses_4694795

inputs(
lstm_cell_766_4694713:	d?(
lstm_cell_766_4694715:	2?$
lstm_cell_766_4694717:	?
identity??%lstm_cell_766/StatefulPartitionedCall?while;
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
%lstm_cell_766/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_766_4694713lstm_cell_766_4694715lstm_cell_766_4694717*
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
J__inference_lstm_cell_766_layer_call_and_return_conditional_losses_4694712n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_766_4694713lstm_cell_766_4694715lstm_cell_766_4694717*
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
while_body_4694726*
condR
while_cond_4694725*K
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
NoOpNoOp&^lstm_cell_766/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_766/StatefulPartitionedCall%lstm_cell_766/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?

?
0__inference_sequential_255_layer_call_fn_4696460
lstm_765_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_765_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_255_layer_call_and_return_conditional_losses_4696408o
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
_user_specified_namelstm_765_input
?
?
while_cond_4695266
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4695266___redundant_placeholder05
1while_while_cond_4695266___redundant_placeholder15
1while_while_cond_4695266___redundant_placeholder25
1while_while_cond_4695266___redundant_placeholder3
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
E__inference_lstm_767_layer_call_and_return_conditional_losses_4699168

inputs>
,lstm_cell_767_matmul_readvariableop_resource:2(@
.lstm_cell_767_matmul_1_readvariableop_resource:
(;
-lstm_cell_767_biasadd_readvariableop_resource:(
identity??$lstm_cell_767/BiasAdd/ReadVariableOp?#lstm_cell_767/MatMul/ReadVariableOp?%lstm_cell_767/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_767/MatMul/ReadVariableOpReadVariableOp,lstm_cell_767_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_767/MatMulMatMulstrided_slice_2:output:0+lstm_cell_767/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_767/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_767_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_767/MatMul_1MatMulzeros:output:0-lstm_cell_767/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_767/addAddV2lstm_cell_767/MatMul:product:0 lstm_cell_767/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_767/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_767_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_767/BiasAddBiasAddlstm_cell_767/add:z:0,lstm_cell_767/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_767/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_767/splitSplit&lstm_cell_767/split/split_dim:output:0lstm_cell_767/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_767/SigmoidSigmoidlstm_cell_767/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_767/Sigmoid_1Sigmoidlstm_cell_767/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_767/mulMullstm_cell_767/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_767/ReluRelulstm_cell_767/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_767/mul_1Mullstm_cell_767/Sigmoid:y:0 lstm_cell_767/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_767/add_1AddV2lstm_cell_767/mul:z:0lstm_cell_767/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_767/Sigmoid_2Sigmoidlstm_cell_767/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_767/Relu_1Relulstm_cell_767/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_767/mul_2Mullstm_cell_767/Sigmoid_2:y:0"lstm_cell_767/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_767_matmul_readvariableop_resource.lstm_cell_767_matmul_1_readvariableop_resource-lstm_cell_767_biasadd_readvariableop_resource*
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
while_body_4699084*
condR
while_cond_4699083*K
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
NoOpNoOp%^lstm_cell_767/BiasAdd/ReadVariableOp$^lstm_cell_767/MatMul/ReadVariableOp&^lstm_cell_767/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_767/BiasAdd/ReadVariableOp$lstm_cell_767/BiasAdd/ReadVariableOp2J
#lstm_cell_767/MatMul/ReadVariableOp#lstm_cell_767/MatMul/ReadVariableOp2N
%lstm_cell_767/MatMul_1/ReadVariableOp%lstm_cell_767/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?C
?

lstm_765_while_body_4696668.
*lstm_765_while_lstm_765_while_loop_counter4
0lstm_765_while_lstm_765_while_maximum_iterations
lstm_765_while_placeholder 
lstm_765_while_placeholder_1 
lstm_765_while_placeholder_2 
lstm_765_while_placeholder_3-
)lstm_765_while_lstm_765_strided_slice_1_0i
elstm_765_while_tensorarrayv2read_tensorlistgetitem_lstm_765_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_765_while_lstm_cell_765_matmul_readvariableop_resource_0:	?R
?lstm_765_while_lstm_cell_765_matmul_1_readvariableop_resource_0:	d?M
>lstm_765_while_lstm_cell_765_biasadd_readvariableop_resource_0:	?
lstm_765_while_identity
lstm_765_while_identity_1
lstm_765_while_identity_2
lstm_765_while_identity_3
lstm_765_while_identity_4
lstm_765_while_identity_5+
'lstm_765_while_lstm_765_strided_slice_1g
clstm_765_while_tensorarrayv2read_tensorlistgetitem_lstm_765_tensorarrayunstack_tensorlistfromtensorN
;lstm_765_while_lstm_cell_765_matmul_readvariableop_resource:	?P
=lstm_765_while_lstm_cell_765_matmul_1_readvariableop_resource:	d?K
<lstm_765_while_lstm_cell_765_biasadd_readvariableop_resource:	???3lstm_765/while/lstm_cell_765/BiasAdd/ReadVariableOp?2lstm_765/while/lstm_cell_765/MatMul/ReadVariableOp?4lstm_765/while/lstm_cell_765/MatMul_1/ReadVariableOp?
@lstm_765/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_765/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_765_while_tensorarrayv2read_tensorlistgetitem_lstm_765_tensorarrayunstack_tensorlistfromtensor_0lstm_765_while_placeholderIlstm_765/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_765/while/lstm_cell_765/MatMul/ReadVariableOpReadVariableOp=lstm_765_while_lstm_cell_765_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_765/while/lstm_cell_765/MatMulMatMul9lstm_765/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_765/while/lstm_cell_765/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_765/while/lstm_cell_765/MatMul_1/ReadVariableOpReadVariableOp?lstm_765_while_lstm_cell_765_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_765/while/lstm_cell_765/MatMul_1MatMullstm_765_while_placeholder_2<lstm_765/while/lstm_cell_765/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_765/while/lstm_cell_765/addAddV2-lstm_765/while/lstm_cell_765/MatMul:product:0/lstm_765/while/lstm_cell_765/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_765/while/lstm_cell_765/BiasAdd/ReadVariableOpReadVariableOp>lstm_765_while_lstm_cell_765_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_765/while/lstm_cell_765/BiasAddBiasAdd$lstm_765/while/lstm_cell_765/add:z:0;lstm_765/while/lstm_cell_765/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_765/while/lstm_cell_765/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_765/while/lstm_cell_765/splitSplit5lstm_765/while/lstm_cell_765/split/split_dim:output:0-lstm_765/while/lstm_cell_765/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_765/while/lstm_cell_765/SigmoidSigmoid+lstm_765/while/lstm_cell_765/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_765/while/lstm_cell_765/Sigmoid_1Sigmoid+lstm_765/while/lstm_cell_765/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_765/while/lstm_cell_765/mulMul*lstm_765/while/lstm_cell_765/Sigmoid_1:y:0lstm_765_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_765/while/lstm_cell_765/ReluRelu+lstm_765/while/lstm_cell_765/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_765/while/lstm_cell_765/mul_1Mul(lstm_765/while/lstm_cell_765/Sigmoid:y:0/lstm_765/while/lstm_cell_765/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_765/while/lstm_cell_765/add_1AddV2$lstm_765/while/lstm_cell_765/mul:z:0&lstm_765/while/lstm_cell_765/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_765/while/lstm_cell_765/Sigmoid_2Sigmoid+lstm_765/while/lstm_cell_765/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_765/while/lstm_cell_765/Relu_1Relu&lstm_765/while/lstm_cell_765/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_765/while/lstm_cell_765/mul_2Mul*lstm_765/while/lstm_cell_765/Sigmoid_2:y:01lstm_765/while/lstm_cell_765/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_765/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_765_while_placeholder_1lstm_765_while_placeholder&lstm_765/while/lstm_cell_765/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_765/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_765/while/addAddV2lstm_765_while_placeholderlstm_765/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_765/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_765/while/add_1AddV2*lstm_765_while_lstm_765_while_loop_counterlstm_765/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_765/while/IdentityIdentitylstm_765/while/add_1:z:0^lstm_765/while/NoOp*
T0*
_output_shapes
: ?
lstm_765/while/Identity_1Identity0lstm_765_while_lstm_765_while_maximum_iterations^lstm_765/while/NoOp*
T0*
_output_shapes
: t
lstm_765/while/Identity_2Identitylstm_765/while/add:z:0^lstm_765/while/NoOp*
T0*
_output_shapes
: ?
lstm_765/while/Identity_3IdentityClstm_765/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_765/while/NoOp*
T0*
_output_shapes
: ?
lstm_765/while/Identity_4Identity&lstm_765/while/lstm_cell_765/mul_2:z:0^lstm_765/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_765/while/Identity_5Identity&lstm_765/while/lstm_cell_765/add_1:z:0^lstm_765/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_765/while/NoOpNoOp4^lstm_765/while/lstm_cell_765/BiasAdd/ReadVariableOp3^lstm_765/while/lstm_cell_765/MatMul/ReadVariableOp5^lstm_765/while/lstm_cell_765/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_765_while_identity lstm_765/while/Identity:output:0"?
lstm_765_while_identity_1"lstm_765/while/Identity_1:output:0"?
lstm_765_while_identity_2"lstm_765/while/Identity_2:output:0"?
lstm_765_while_identity_3"lstm_765/while/Identity_3:output:0"?
lstm_765_while_identity_4"lstm_765/while/Identity_4:output:0"?
lstm_765_while_identity_5"lstm_765/while/Identity_5:output:0"T
'lstm_765_while_lstm_765_strided_slice_1)lstm_765_while_lstm_765_strided_slice_1_0"~
<lstm_765_while_lstm_cell_765_biasadd_readvariableop_resource>lstm_765_while_lstm_cell_765_biasadd_readvariableop_resource_0"?
=lstm_765_while_lstm_cell_765_matmul_1_readvariableop_resource?lstm_765_while_lstm_cell_765_matmul_1_readvariableop_resource_0"|
;lstm_765_while_lstm_cell_765_matmul_readvariableop_resource=lstm_765_while_lstm_cell_765_matmul_readvariableop_resource_0"?
clstm_765_while_tensorarrayv2read_tensorlistgetitem_lstm_765_tensorarrayunstack_tensorlistfromtensorelstm_765_while_tensorarrayv2read_tensorlistgetitem_lstm_765_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_765/while/lstm_cell_765/BiasAdd/ReadVariableOp3lstm_765/while/lstm_cell_765/BiasAdd/ReadVariableOp2h
2lstm_765/while/lstm_cell_765/MatMul/ReadVariableOp2lstm_765/while/lstm_cell_765/MatMul/ReadVariableOp2l
4lstm_765/while/lstm_cell_765/MatMul_1/ReadVariableOp4lstm_765/while/lstm_cell_765/MatMul_1/ReadVariableOp: 
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
E__inference_lstm_765_layer_call_and_return_conditional_losses_4697793
inputs_0?
,lstm_cell_765_matmul_readvariableop_resource:	?A
.lstm_cell_765_matmul_1_readvariableop_resource:	d?<
-lstm_cell_765_biasadd_readvariableop_resource:	?
identity??$lstm_cell_765/BiasAdd/ReadVariableOp?#lstm_cell_765/MatMul/ReadVariableOp?%lstm_cell_765/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_765/MatMul/ReadVariableOpReadVariableOp,lstm_cell_765_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_765/MatMulMatMulstrided_slice_2:output:0+lstm_cell_765/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_765/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_765_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_765/MatMul_1MatMulzeros:output:0-lstm_cell_765/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_765/addAddV2lstm_cell_765/MatMul:product:0 lstm_cell_765/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_765/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_765_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_765/BiasAddBiasAddlstm_cell_765/add:z:0,lstm_cell_765/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_765/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_765/splitSplit&lstm_cell_765/split/split_dim:output:0lstm_cell_765/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_765/SigmoidSigmoidlstm_cell_765/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_765/Sigmoid_1Sigmoidlstm_cell_765/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_765/mulMullstm_cell_765/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_765/ReluRelulstm_cell_765/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_765/mul_1Mullstm_cell_765/Sigmoid:y:0 lstm_cell_765/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_765/add_1AddV2lstm_cell_765/mul:z:0lstm_cell_765/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_765/Sigmoid_2Sigmoidlstm_cell_765/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_765/Relu_1Relulstm_cell_765/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_765/mul_2Mullstm_cell_765/Sigmoid_2:y:0"lstm_cell_765/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_765_matmul_readvariableop_resource.lstm_cell_765_matmul_1_readvariableop_resource-lstm_cell_765_biasadd_readvariableop_resource*
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
while_body_4697709*
condR
while_cond_4697708*K
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
NoOpNoOp%^lstm_cell_765/BiasAdd/ReadVariableOp$^lstm_cell_765/MatMul/ReadVariableOp&^lstm_cell_765/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_765/BiasAdd/ReadVariableOp$lstm_cell_765/BiasAdd/ReadVariableOp2J
#lstm_cell_765/MatMul/ReadVariableOp#lstm_cell_765/MatMul/ReadVariableOp2N
%lstm_cell_765/MatMul_1/ReadVariableOp%lstm_cell_765/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?

?
0__inference_sequential_255_layer_call_fn_4695844
lstm_765_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_765_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_255_layer_call_and_return_conditional_losses_4695819o
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
_user_specified_namelstm_765_input
?J
?
E__inference_lstm_766_layer_call_and_return_conditional_losses_4698552

inputs?
,lstm_cell_766_matmul_readvariableop_resource:	d?A
.lstm_cell_766_matmul_1_readvariableop_resource:	2?<
-lstm_cell_766_biasadd_readvariableop_resource:	?
identity??$lstm_cell_766/BiasAdd/ReadVariableOp?#lstm_cell_766/MatMul/ReadVariableOp?%lstm_cell_766/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_766/MatMul/ReadVariableOpReadVariableOp,lstm_cell_766_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_766/MatMulMatMulstrided_slice_2:output:0+lstm_cell_766/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_766/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_766_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_766/MatMul_1MatMulzeros:output:0-lstm_cell_766/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_766/addAddV2lstm_cell_766/MatMul:product:0 lstm_cell_766/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_766/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_766_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_766/BiasAddBiasAddlstm_cell_766/add:z:0,lstm_cell_766/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_766/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_766/splitSplit&lstm_cell_766/split/split_dim:output:0lstm_cell_766/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_766/SigmoidSigmoidlstm_cell_766/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_766/Sigmoid_1Sigmoidlstm_cell_766/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_766/mulMullstm_cell_766/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_766/ReluRelulstm_cell_766/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_766/mul_1Mullstm_cell_766/Sigmoid:y:0 lstm_cell_766/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_766/add_1AddV2lstm_cell_766/mul:z:0lstm_cell_766/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_766/Sigmoid_2Sigmoidlstm_cell_766/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_766/Relu_1Relulstm_cell_766/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_766/mul_2Mullstm_cell_766/Sigmoid_2:y:0"lstm_cell_766/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_766_matmul_readvariableop_resource.lstm_cell_766_matmul_1_readvariableop_resource-lstm_cell_766_biasadd_readvariableop_resource*
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
while_body_4698468*
condR
while_cond_4698467*K
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
NoOpNoOp%^lstm_cell_766/BiasAdd/ReadVariableOp$^lstm_cell_766/MatMul/ReadVariableOp&^lstm_cell_766/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_766/BiasAdd/ReadVariableOp$lstm_cell_766/BiasAdd/ReadVariableOp2J
#lstm_cell_766/MatMul/ReadVariableOp#lstm_cell_766/MatMul/ReadVariableOp2N
%lstm_cell_766/MatMul_1/ReadVariableOp%lstm_cell_766/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?J
?
E__inference_lstm_765_layer_call_and_return_conditional_losses_4696340

inputs?
,lstm_cell_765_matmul_readvariableop_resource:	?A
.lstm_cell_765_matmul_1_readvariableop_resource:	d?<
-lstm_cell_765_biasadd_readvariableop_resource:	?
identity??$lstm_cell_765/BiasAdd/ReadVariableOp?#lstm_cell_765/MatMul/ReadVariableOp?%lstm_cell_765/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_765/MatMul/ReadVariableOpReadVariableOp,lstm_cell_765_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_765/MatMulMatMulstrided_slice_2:output:0+lstm_cell_765/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_765/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_765_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_765/MatMul_1MatMulzeros:output:0-lstm_cell_765/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_765/addAddV2lstm_cell_765/MatMul:product:0 lstm_cell_765/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_765/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_765_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_765/BiasAddBiasAddlstm_cell_765/add:z:0,lstm_cell_765/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_765/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_765/splitSplit&lstm_cell_765/split/split_dim:output:0lstm_cell_765/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_765/SigmoidSigmoidlstm_cell_765/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_765/Sigmoid_1Sigmoidlstm_cell_765/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_765/mulMullstm_cell_765/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_765/ReluRelulstm_cell_765/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_765/mul_1Mullstm_cell_765/Sigmoid:y:0 lstm_cell_765/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_765/add_1AddV2lstm_cell_765/mul:z:0lstm_cell_765/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_765/Sigmoid_2Sigmoidlstm_cell_765/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_765/Relu_1Relulstm_cell_765/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_765/mul_2Mullstm_cell_765/Sigmoid_2:y:0"lstm_cell_765/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_765_matmul_readvariableop_resource.lstm_cell_765_matmul_1_readvariableop_resource-lstm_cell_765_biasadd_readvariableop_resource*
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
while_body_4696256*
condR
while_cond_4696255*K
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
NoOpNoOp%^lstm_cell_765/BiasAdd/ReadVariableOp$^lstm_cell_765/MatMul/ReadVariableOp&^lstm_cell_765/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_765/BiasAdd/ReadVariableOp$lstm_cell_765/BiasAdd/ReadVariableOp2J
#lstm_cell_765/MatMul/ReadVariableOp#lstm_cell_765/MatMul/ReadVariableOp2N
%lstm_cell_765/MatMul_1/ReadVariableOp%lstm_cell_765/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
while_body_4696256
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_765_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_765_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_765_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_765_matmul_readvariableop_resource:	?G
4while_lstm_cell_765_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_765_biasadd_readvariableop_resource:	???*while/lstm_cell_765/BiasAdd/ReadVariableOp?)while/lstm_cell_765/MatMul/ReadVariableOp?+while/lstm_cell_765/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_765/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_765_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_765/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_765/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_765/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_765_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_765/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_765/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_765/addAddV2$while/lstm_cell_765/MatMul:product:0&while/lstm_cell_765/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_765/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_765_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_765/BiasAddBiasAddwhile/lstm_cell_765/add:z:02while/lstm_cell_765/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_765/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_765/splitSplit,while/lstm_cell_765/split/split_dim:output:0$while/lstm_cell_765/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_765/SigmoidSigmoid"while/lstm_cell_765/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_765/Sigmoid_1Sigmoid"while/lstm_cell_765/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_765/mulMul!while/lstm_cell_765/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_765/ReluRelu"while/lstm_cell_765/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_765/mul_1Mulwhile/lstm_cell_765/Sigmoid:y:0&while/lstm_cell_765/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_765/add_1AddV2while/lstm_cell_765/mul:z:0while/lstm_cell_765/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_765/Sigmoid_2Sigmoid"while/lstm_cell_765/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_765/Relu_1Reluwhile/lstm_cell_765/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_765/mul_2Mul!while/lstm_cell_765/Sigmoid_2:y:0(while/lstm_cell_765/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_765/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_765/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_765/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_765/BiasAdd/ReadVariableOp*^while/lstm_cell_765/MatMul/ReadVariableOp,^while/lstm_cell_765/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_765_biasadd_readvariableop_resource5while_lstm_cell_765_biasadd_readvariableop_resource_0"n
4while_lstm_cell_765_matmul_1_readvariableop_resource6while_lstm_cell_765_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_765_matmul_readvariableop_resource4while_lstm_cell_765_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_765/BiasAdd/ReadVariableOp*while/lstm_cell_765/BiasAdd/ReadVariableOp2V
)while/lstm_cell_765/MatMul/ReadVariableOp)while/lstm_cell_765/MatMul/ReadVariableOp2Z
+while/lstm_cell_765/MatMul_1/ReadVariableOp+while/lstm_cell_765/MatMul_1/ReadVariableOp: 
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
lstm_765_while_cond_4696667.
*lstm_765_while_lstm_765_while_loop_counter4
0lstm_765_while_lstm_765_while_maximum_iterations
lstm_765_while_placeholder 
lstm_765_while_placeholder_1 
lstm_765_while_placeholder_2 
lstm_765_while_placeholder_30
,lstm_765_while_less_lstm_765_strided_slice_1G
Clstm_765_while_lstm_765_while_cond_4696667___redundant_placeholder0G
Clstm_765_while_lstm_765_while_cond_4696667___redundant_placeholder1G
Clstm_765_while_lstm_765_while_cond_4696667___redundant_placeholder2G
Clstm_765_while_lstm_765_while_cond_4696667___redundant_placeholder3
lstm_765_while_identity
?
lstm_765/while/LessLesslstm_765_while_placeholder,lstm_765_while_less_lstm_765_strided_slice_1*
T0*
_output_shapes
: ]
lstm_765/while/IdentityIdentitylstm_765/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_765_while_identity lstm_765/while/Identity:output:0*(
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
E__inference_lstm_765_layer_call_and_return_conditional_losses_4698079

inputs?
,lstm_cell_765_matmul_readvariableop_resource:	?A
.lstm_cell_765_matmul_1_readvariableop_resource:	d?<
-lstm_cell_765_biasadd_readvariableop_resource:	?
identity??$lstm_cell_765/BiasAdd/ReadVariableOp?#lstm_cell_765/MatMul/ReadVariableOp?%lstm_cell_765/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_765/MatMul/ReadVariableOpReadVariableOp,lstm_cell_765_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_765/MatMulMatMulstrided_slice_2:output:0+lstm_cell_765/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_765/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_765_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_765/MatMul_1MatMulzeros:output:0-lstm_cell_765/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_765/addAddV2lstm_cell_765/MatMul:product:0 lstm_cell_765/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_765/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_765_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_765/BiasAddBiasAddlstm_cell_765/add:z:0,lstm_cell_765/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_765/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_765/splitSplit&lstm_cell_765/split/split_dim:output:0lstm_cell_765/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_765/SigmoidSigmoidlstm_cell_765/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_765/Sigmoid_1Sigmoidlstm_cell_765/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_765/mulMullstm_cell_765/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_765/ReluRelulstm_cell_765/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_765/mul_1Mullstm_cell_765/Sigmoid:y:0 lstm_cell_765/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_765/add_1AddV2lstm_cell_765/mul:z:0lstm_cell_765/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_765/Sigmoid_2Sigmoidlstm_cell_765/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_765/Relu_1Relulstm_cell_765/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_765/mul_2Mullstm_cell_765/Sigmoid_2:y:0"lstm_cell_765/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_765_matmul_readvariableop_resource.lstm_cell_765_matmul_1_readvariableop_resource-lstm_cell_765_biasadd_readvariableop_resource*
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
while_body_4697995*
condR
while_cond_4697994*K
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
NoOpNoOp%^lstm_cell_765/BiasAdd/ReadVariableOp$^lstm_cell_765/MatMul/ReadVariableOp&^lstm_cell_765/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_765/BiasAdd/ReadVariableOp$lstm_cell_765/BiasAdd/ReadVariableOp2J
#lstm_cell_765/MatMul/ReadVariableOp#lstm_cell_765/MatMul/ReadVariableOp2N
%lstm_cell_765/MatMul_1/ReadVariableOp%lstm_cell_765/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_4697565
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4697565___redundant_placeholder05
1while_while_cond_4697565___redundant_placeholder15
1while_while_cond_4697565___redundant_placeholder25
1while_while_cond_4697565___redundant_placeholder3
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
while_cond_4694725
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4694725___redundant_placeholder05
1while_while_cond_4694725___redundant_placeholder15
1while_while_cond_4694725___redundant_placeholder25
1while_while_cond_4694725___redundant_placeholder3
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
J__inference_lstm_cell_767_layer_call_and_return_conditional_losses_4695062

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
?
?
*__inference_lstm_767_layer_call_fn_4698739

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
E__inference_lstm_767_layer_call_and_return_conditional_losses_4696010o
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
?J
?
E__inference_lstm_766_layer_call_and_return_conditional_losses_4698695

inputs?
,lstm_cell_766_matmul_readvariableop_resource:	d?A
.lstm_cell_766_matmul_1_readvariableop_resource:	2?<
-lstm_cell_766_biasadd_readvariableop_resource:	?
identity??$lstm_cell_766/BiasAdd/ReadVariableOp?#lstm_cell_766/MatMul/ReadVariableOp?%lstm_cell_766/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_766/MatMul/ReadVariableOpReadVariableOp,lstm_cell_766_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_766/MatMulMatMulstrided_slice_2:output:0+lstm_cell_766/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_766/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_766_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_766/MatMul_1MatMulzeros:output:0-lstm_cell_766/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_766/addAddV2lstm_cell_766/MatMul:product:0 lstm_cell_766/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_766/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_766_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_766/BiasAddBiasAddlstm_cell_766/add:z:0,lstm_cell_766/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_766/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_766/splitSplit&lstm_cell_766/split/split_dim:output:0lstm_cell_766/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_766/SigmoidSigmoidlstm_cell_766/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_766/Sigmoid_1Sigmoidlstm_cell_766/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_766/mulMullstm_cell_766/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_766/ReluRelulstm_cell_766/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_766/mul_1Mullstm_cell_766/Sigmoid:y:0 lstm_cell_766/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_766/add_1AddV2lstm_cell_766/mul:z:0lstm_cell_766/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_766/Sigmoid_2Sigmoidlstm_cell_766/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_766/Relu_1Relulstm_cell_766/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_766/mul_2Mullstm_cell_766/Sigmoid_2:y:0"lstm_cell_766/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_766_matmul_readvariableop_resource.lstm_cell_766_matmul_1_readvariableop_resource-lstm_cell_766_biasadd_readvariableop_resource*
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
while_body_4698611*
condR
while_cond_4698610*K
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
NoOpNoOp%^lstm_cell_766/BiasAdd/ReadVariableOp$^lstm_cell_766/MatMul/ReadVariableOp&^lstm_cell_766/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_766/BiasAdd/ReadVariableOp$lstm_cell_766/BiasAdd/ReadVariableOp2J
#lstm_cell_766/MatMul/ReadVariableOp#lstm_cell_766/MatMul/ReadVariableOp2N
%lstm_cell_766/MatMul_1/ReadVariableOp%lstm_cell_766/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_765_layer_call_and_return_conditional_losses_4694508

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
E__inference_lstm_767_layer_call_and_return_conditional_losses_4699025
inputs_0>
,lstm_cell_767_matmul_readvariableop_resource:2(@
.lstm_cell_767_matmul_1_readvariableop_resource:
(;
-lstm_cell_767_biasadd_readvariableop_resource:(
identity??$lstm_cell_767/BiasAdd/ReadVariableOp?#lstm_cell_767/MatMul/ReadVariableOp?%lstm_cell_767/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_767/MatMul/ReadVariableOpReadVariableOp,lstm_cell_767_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_767/MatMulMatMulstrided_slice_2:output:0+lstm_cell_767/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_767/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_767_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_767/MatMul_1MatMulzeros:output:0-lstm_cell_767/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_767/addAddV2lstm_cell_767/MatMul:product:0 lstm_cell_767/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_767/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_767_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_767/BiasAddBiasAddlstm_cell_767/add:z:0,lstm_cell_767/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_767/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_767/splitSplit&lstm_cell_767/split/split_dim:output:0lstm_cell_767/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_767/SigmoidSigmoidlstm_cell_767/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_767/Sigmoid_1Sigmoidlstm_cell_767/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_767/mulMullstm_cell_767/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_767/ReluRelulstm_cell_767/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_767/mul_1Mullstm_cell_767/Sigmoid:y:0 lstm_cell_767/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_767/add_1AddV2lstm_cell_767/mul:z:0lstm_cell_767/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_767/Sigmoid_2Sigmoidlstm_cell_767/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_767/Relu_1Relulstm_cell_767/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_767/mul_2Mullstm_cell_767/Sigmoid_2:y:0"lstm_cell_767/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_767_matmul_readvariableop_resource.lstm_cell_767_matmul_1_readvariableop_resource-lstm_cell_767_biasadd_readvariableop_resource*
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
while_body_4698941*
condR
while_cond_4698940*K
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
NoOpNoOp%^lstm_cell_767/BiasAdd/ReadVariableOp$^lstm_cell_767/MatMul/ReadVariableOp&^lstm_cell_767/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_767/BiasAdd/ReadVariableOp$lstm_cell_767/BiasAdd/ReadVariableOp2J
#lstm_cell_767/MatMul/ReadVariableOp#lstm_cell_767/MatMul/ReadVariableOp2N
%lstm_cell_767/MatMul_1/ReadVariableOp%lstm_cell_767/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?
?
/__inference_lstm_cell_767_layer_call_fn_4699560

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
J__inference_lstm_cell_767_layer_call_and_return_conditional_losses_4695208o
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
?
?
/__inference_lstm_cell_765_layer_call_fn_4699347

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
J__inference_lstm_cell_765_layer_call_and_return_conditional_losses_4694362o
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
while_body_4695926
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_767_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_767_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_767_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_767_matmul_readvariableop_resource:2(F
4while_lstm_cell_767_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_767_biasadd_readvariableop_resource:(??*while/lstm_cell_767/BiasAdd/ReadVariableOp?)while/lstm_cell_767/MatMul/ReadVariableOp?+while/lstm_cell_767/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_767/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_767_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_767/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_767/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_767/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_767_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_767/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_767/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_767/addAddV2$while/lstm_cell_767/MatMul:product:0&while/lstm_cell_767/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_767/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_767_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_767/BiasAddBiasAddwhile/lstm_cell_767/add:z:02while/lstm_cell_767/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_767/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_767/splitSplit,while/lstm_cell_767/split/split_dim:output:0$while/lstm_cell_767/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_767/SigmoidSigmoid"while/lstm_cell_767/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_767/Sigmoid_1Sigmoid"while/lstm_cell_767/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_767/mulMul!while/lstm_cell_767/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_767/ReluRelu"while/lstm_cell_767/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_767/mul_1Mulwhile/lstm_cell_767/Sigmoid:y:0&while/lstm_cell_767/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_767/add_1AddV2while/lstm_cell_767/mul:z:0while/lstm_cell_767/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_767/Sigmoid_2Sigmoid"while/lstm_cell_767/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_767/Relu_1Reluwhile/lstm_cell_767/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_767/mul_2Mul!while/lstm_cell_767/Sigmoid_2:y:0(while/lstm_cell_767/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_767/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_767/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_767/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_767/BiasAdd/ReadVariableOp*^while/lstm_cell_767/MatMul/ReadVariableOp,^while/lstm_cell_767/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_767_biasadd_readvariableop_resource5while_lstm_cell_767_biasadd_readvariableop_resource_0"n
4while_lstm_cell_767_matmul_1_readvariableop_resource6while_lstm_cell_767_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_767_matmul_readvariableop_resource4while_lstm_cell_767_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_767/BiasAdd/ReadVariableOp*while/lstm_cell_767/BiasAdd/ReadVariableOp2V
)while/lstm_cell_767/MatMul/ReadVariableOp)while/lstm_cell_767/MatMul/ReadVariableOp2Z
+while/lstm_cell_767/MatMul_1/ReadVariableOp+while/lstm_cell_767/MatMul_1/ReadVariableOp: 
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
E__inference_lstm_766_layer_call_and_return_conditional_losses_4698409
inputs_0?
,lstm_cell_766_matmul_readvariableop_resource:	d?A
.lstm_cell_766_matmul_1_readvariableop_resource:	2?<
-lstm_cell_766_biasadd_readvariableop_resource:	?
identity??$lstm_cell_766/BiasAdd/ReadVariableOp?#lstm_cell_766/MatMul/ReadVariableOp?%lstm_cell_766/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_766/MatMul/ReadVariableOpReadVariableOp,lstm_cell_766_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_766/MatMulMatMulstrided_slice_2:output:0+lstm_cell_766/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_766/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_766_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_766/MatMul_1MatMulzeros:output:0-lstm_cell_766/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_766/addAddV2lstm_cell_766/MatMul:product:0 lstm_cell_766/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_766/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_766_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_766/BiasAddBiasAddlstm_cell_766/add:z:0,lstm_cell_766/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_766/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_766/splitSplit&lstm_cell_766/split/split_dim:output:0lstm_cell_766/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_766/SigmoidSigmoidlstm_cell_766/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_766/Sigmoid_1Sigmoidlstm_cell_766/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_766/mulMullstm_cell_766/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_766/ReluRelulstm_cell_766/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_766/mul_1Mullstm_cell_766/Sigmoid:y:0 lstm_cell_766/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_766/add_1AddV2lstm_cell_766/mul:z:0lstm_cell_766/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_766/Sigmoid_2Sigmoidlstm_cell_766/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_766/Relu_1Relulstm_cell_766/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_766/mul_2Mullstm_cell_766/Sigmoid_2:y:0"lstm_cell_766/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_766_matmul_readvariableop_resource.lstm_cell_766_matmul_1_readvariableop_resource-lstm_cell_766_biasadd_readvariableop_resource*
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
while_body_4698325*
condR
while_cond_4698324*K
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
NoOpNoOp%^lstm_cell_766/BiasAdd/ReadVariableOp$^lstm_cell_766/MatMul/ReadVariableOp&^lstm_cell_766/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_766/BiasAdd/ReadVariableOp$lstm_cell_766/BiasAdd/ReadVariableOp2J
#lstm_cell_766/MatMul/ReadVariableOp#lstm_cell_766/MatMul/ReadVariableOp2N
%lstm_cell_766/MatMul_1/ReadVariableOp%lstm_cell_766/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?
?
K__inference_sequential_255_layer_call_and_return_conditional_losses_4696520
lstm_765_input#
lstm_765_4696493:	?#
lstm_765_4696495:	d?
lstm_765_4696497:	?#
lstm_766_4696500:	d?#
lstm_766_4696502:	2?
lstm_766_4696504:	?"
lstm_767_4696507:2("
lstm_767_4696509:
(
lstm_767_4696511:(#
dense_255_4696514:

dense_255_4696516:
identity??!dense_255/StatefulPartitionedCall? lstm_765/StatefulPartitionedCall? lstm_766/StatefulPartitionedCall? lstm_767/StatefulPartitionedCall?
 lstm_765/StatefulPartitionedCallStatefulPartitionedCalllstm_765_inputlstm_765_4696493lstm_765_4696495lstm_765_4696497*
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
E__inference_lstm_765_layer_call_and_return_conditional_losses_4696340?
 lstm_766/StatefulPartitionedCallStatefulPartitionedCall)lstm_765/StatefulPartitionedCall:output:0lstm_766_4696500lstm_766_4696502lstm_766_4696504*
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
E__inference_lstm_766_layer_call_and_return_conditional_losses_4696175?
 lstm_767/StatefulPartitionedCallStatefulPartitionedCall)lstm_766/StatefulPartitionedCall:output:0lstm_767_4696507lstm_767_4696509lstm_767_4696511*
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
E__inference_lstm_767_layer_call_and_return_conditional_losses_4696010?
!dense_255/StatefulPartitionedCallStatefulPartitionedCall)lstm_767/StatefulPartitionedCall:output:0dense_255_4696514dense_255_4696516*
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
F__inference_dense_255_layer_call_and_return_conditional_losses_4695812y
IdentityIdentity*dense_255/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_255/StatefulPartitionedCall!^lstm_765/StatefulPartitionedCall!^lstm_766/StatefulPartitionedCall!^lstm_767/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_255/StatefulPartitionedCall!dense_255/StatefulPartitionedCall2D
 lstm_765/StatefulPartitionedCall lstm_765/StatefulPartitionedCall2D
 lstm_766/StatefulPartitionedCall lstm_766/StatefulPartitionedCall2D
 lstm_767/StatefulPartitionedCall lstm_767/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_765_input
?8
?
while_body_4697852
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_765_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_765_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_765_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_765_matmul_readvariableop_resource:	?G
4while_lstm_cell_765_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_765_biasadd_readvariableop_resource:	???*while/lstm_cell_765/BiasAdd/ReadVariableOp?)while/lstm_cell_765/MatMul/ReadVariableOp?+while/lstm_cell_765/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_765/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_765_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_765/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_765/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_765/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_765_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_765/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_765/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_765/addAddV2$while/lstm_cell_765/MatMul:product:0&while/lstm_cell_765/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_765/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_765_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_765/BiasAddBiasAddwhile/lstm_cell_765/add:z:02while/lstm_cell_765/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_765/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_765/splitSplit,while/lstm_cell_765/split/split_dim:output:0$while/lstm_cell_765/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_765/SigmoidSigmoid"while/lstm_cell_765/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_765/Sigmoid_1Sigmoid"while/lstm_cell_765/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_765/mulMul!while/lstm_cell_765/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_765/ReluRelu"while/lstm_cell_765/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_765/mul_1Mulwhile/lstm_cell_765/Sigmoid:y:0&while/lstm_cell_765/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_765/add_1AddV2while/lstm_cell_765/mul:z:0while/lstm_cell_765/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_765/Sigmoid_2Sigmoid"while/lstm_cell_765/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_765/Relu_1Reluwhile/lstm_cell_765/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_765/mul_2Mul!while/lstm_cell_765/Sigmoid_2:y:0(while/lstm_cell_765/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_765/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_765/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_765/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_765/BiasAdd/ReadVariableOp*^while/lstm_cell_765/MatMul/ReadVariableOp,^while/lstm_cell_765/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_765_biasadd_readvariableop_resource5while_lstm_cell_765_biasadd_readvariableop_resource_0"n
4while_lstm_cell_765_matmul_1_readvariableop_resource6while_lstm_cell_765_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_765_matmul_readvariableop_resource4while_lstm_cell_765_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_765/BiasAdd/ReadVariableOp*while/lstm_cell_765/BiasAdd/ReadVariableOp2V
)while/lstm_cell_765/MatMul/ReadVariableOp)while/lstm_cell_765/MatMul/ReadVariableOp2Z
+while/lstm_cell_765/MatMul_1/ReadVariableOp+while/lstm_cell_765/MatMul_1/ReadVariableOp: 
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
*__inference_lstm_765_layer_call_fn_4697496

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
E__inference_lstm_765_layer_call_and_return_conditional_losses_4695494s
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
while_body_4698468
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_766_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_766_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_766_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_766_matmul_readvariableop_resource:	d?G
4while_lstm_cell_766_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_766_biasadd_readvariableop_resource:	???*while/lstm_cell_766/BiasAdd/ReadVariableOp?)while/lstm_cell_766/MatMul/ReadVariableOp?+while/lstm_cell_766/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_766/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_766_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_766/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_766/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_766/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_766_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_766/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_766/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_766/addAddV2$while/lstm_cell_766/MatMul:product:0&while/lstm_cell_766/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_766/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_766_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_766/BiasAddBiasAddwhile/lstm_cell_766/add:z:02while/lstm_cell_766/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_766/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_766/splitSplit,while/lstm_cell_766/split/split_dim:output:0$while/lstm_cell_766/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_766/SigmoidSigmoid"while/lstm_cell_766/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_766/Sigmoid_1Sigmoid"while/lstm_cell_766/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_766/mulMul!while/lstm_cell_766/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_766/ReluRelu"while/lstm_cell_766/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_766/mul_1Mulwhile/lstm_cell_766/Sigmoid:y:0&while/lstm_cell_766/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_766/add_1AddV2while/lstm_cell_766/mul:z:0while/lstm_cell_766/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_766/Sigmoid_2Sigmoid"while/lstm_cell_766/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_766/Relu_1Reluwhile/lstm_cell_766/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_766/mul_2Mul!while/lstm_cell_766/Sigmoid_2:y:0(while/lstm_cell_766/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_766/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_766/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_766/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_766/BiasAdd/ReadVariableOp*^while/lstm_cell_766/MatMul/ReadVariableOp,^while/lstm_cell_766/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_766_biasadd_readvariableop_resource5while_lstm_cell_766_biasadd_readvariableop_resource_0"n
4while_lstm_cell_766_matmul_1_readvariableop_resource6while_lstm_cell_766_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_766_matmul_readvariableop_resource4while_lstm_cell_766_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_766/BiasAdd/ReadVariableOp*while/lstm_cell_766/BiasAdd/ReadVariableOp2V
)while/lstm_cell_766/MatMul/ReadVariableOp)while/lstm_cell_766/MatMul/ReadVariableOp2Z
+while/lstm_cell_766/MatMul_1/ReadVariableOp+while/lstm_cell_766/MatMul_1/ReadVariableOp: 
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
while_body_4696091
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_766_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_766_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_766_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_766_matmul_readvariableop_resource:	d?G
4while_lstm_cell_766_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_766_biasadd_readvariableop_resource:	???*while/lstm_cell_766/BiasAdd/ReadVariableOp?)while/lstm_cell_766/MatMul/ReadVariableOp?+while/lstm_cell_766/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_766/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_766_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_766/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_766/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_766/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_766_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_766/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_766/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_766/addAddV2$while/lstm_cell_766/MatMul:product:0&while/lstm_cell_766/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_766/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_766_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_766/BiasAddBiasAddwhile/lstm_cell_766/add:z:02while/lstm_cell_766/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_766/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_766/splitSplit,while/lstm_cell_766/split/split_dim:output:0$while/lstm_cell_766/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_766/SigmoidSigmoid"while/lstm_cell_766/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_766/Sigmoid_1Sigmoid"while/lstm_cell_766/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_766/mulMul!while/lstm_cell_766/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_766/ReluRelu"while/lstm_cell_766/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_766/mul_1Mulwhile/lstm_cell_766/Sigmoid:y:0&while/lstm_cell_766/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_766/add_1AddV2while/lstm_cell_766/mul:z:0while/lstm_cell_766/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_766/Sigmoid_2Sigmoid"while/lstm_cell_766/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_766/Relu_1Reluwhile/lstm_cell_766/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_766/mul_2Mul!while/lstm_cell_766/Sigmoid_2:y:0(while/lstm_cell_766/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_766/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_766/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_766/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_766/BiasAdd/ReadVariableOp*^while/lstm_cell_766/MatMul/ReadVariableOp,^while/lstm_cell_766/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_766_biasadd_readvariableop_resource5while_lstm_cell_766_biasadd_readvariableop_resource_0"n
4while_lstm_cell_766_matmul_1_readvariableop_resource6while_lstm_cell_766_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_766_matmul_readvariableop_resource4while_lstm_cell_766_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_766/BiasAdd/ReadVariableOp*while/lstm_cell_766/BiasAdd/ReadVariableOp2V
)while/lstm_cell_766/MatMul/ReadVariableOp)while/lstm_cell_766/MatMul/ReadVariableOp2Z
+while/lstm_cell_766/MatMul_1/ReadVariableOp+while/lstm_cell_766/MatMul_1/ReadVariableOp: 
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
while_cond_4699226
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4699226___redundant_placeholder05
1while_while_cond_4699226___redundant_placeholder15
1while_while_cond_4699226___redundant_placeholder25
1while_while_cond_4699226___redundant_placeholder3
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
while_body_4698798
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_767_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_767_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_767_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_767_matmul_readvariableop_resource:2(F
4while_lstm_cell_767_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_767_biasadd_readvariableop_resource:(??*while/lstm_cell_767/BiasAdd/ReadVariableOp?)while/lstm_cell_767/MatMul/ReadVariableOp?+while/lstm_cell_767/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_767/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_767_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_767/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_767/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_767/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_767_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_767/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_767/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_767/addAddV2$while/lstm_cell_767/MatMul:product:0&while/lstm_cell_767/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_767/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_767_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_767/BiasAddBiasAddwhile/lstm_cell_767/add:z:02while/lstm_cell_767/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_767/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_767/splitSplit,while/lstm_cell_767/split/split_dim:output:0$while/lstm_cell_767/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_767/SigmoidSigmoid"while/lstm_cell_767/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_767/Sigmoid_1Sigmoid"while/lstm_cell_767/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_767/mulMul!while/lstm_cell_767/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_767/ReluRelu"while/lstm_cell_767/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_767/mul_1Mulwhile/lstm_cell_767/Sigmoid:y:0&while/lstm_cell_767/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_767/add_1AddV2while/lstm_cell_767/mul:z:0while/lstm_cell_767/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_767/Sigmoid_2Sigmoid"while/lstm_cell_767/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_767/Relu_1Reluwhile/lstm_cell_767/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_767/mul_2Mul!while/lstm_cell_767/Sigmoid_2:y:0(while/lstm_cell_767/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_767/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_767/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_767/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_767/BiasAdd/ReadVariableOp*^while/lstm_cell_767/MatMul/ReadVariableOp,^while/lstm_cell_767/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_767_biasadd_readvariableop_resource5while_lstm_cell_767_biasadd_readvariableop_resource_0"n
4while_lstm_cell_767_matmul_1_readvariableop_resource6while_lstm_cell_767_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_767_matmul_readvariableop_resource4while_lstm_cell_767_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_767/BiasAdd/ReadVariableOp*while/lstm_cell_767/BiasAdd/ReadVariableOp2V
)while/lstm_cell_767/MatMul/ReadVariableOp)while/lstm_cell_767/MatMul/ReadVariableOp2Z
+while/lstm_cell_767/MatMul_1/ReadVariableOp+while/lstm_cell_767/MatMul_1/ReadVariableOp: 
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
while_body_4695710
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_767_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_767_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_767_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_767_matmul_readvariableop_resource:2(F
4while_lstm_cell_767_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_767_biasadd_readvariableop_resource:(??*while/lstm_cell_767/BiasAdd/ReadVariableOp?)while/lstm_cell_767/MatMul/ReadVariableOp?+while/lstm_cell_767/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_767/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_767_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_767/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_767/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_767/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_767_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_767/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_767/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_767/addAddV2$while/lstm_cell_767/MatMul:product:0&while/lstm_cell_767/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_767/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_767_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_767/BiasAddBiasAddwhile/lstm_cell_767/add:z:02while/lstm_cell_767/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_767/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_767/splitSplit,while/lstm_cell_767/split/split_dim:output:0$while/lstm_cell_767/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_767/SigmoidSigmoid"while/lstm_cell_767/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_767/Sigmoid_1Sigmoid"while/lstm_cell_767/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_767/mulMul!while/lstm_cell_767/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_767/ReluRelu"while/lstm_cell_767/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_767/mul_1Mulwhile/lstm_cell_767/Sigmoid:y:0&while/lstm_cell_767/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_767/add_1AddV2while/lstm_cell_767/mul:z:0while/lstm_cell_767/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_767/Sigmoid_2Sigmoid"while/lstm_cell_767/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_767/Relu_1Reluwhile/lstm_cell_767/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_767/mul_2Mul!while/lstm_cell_767/Sigmoid_2:y:0(while/lstm_cell_767/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_767/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_767/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_767/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_767/BiasAdd/ReadVariableOp*^while/lstm_cell_767/MatMul/ReadVariableOp,^while/lstm_cell_767/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_767_biasadd_readvariableop_resource5while_lstm_cell_767_biasadd_readvariableop_resource_0"n
4while_lstm_cell_767_matmul_1_readvariableop_resource6while_lstm_cell_767_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_767_matmul_readvariableop_resource4while_lstm_cell_767_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_767/BiasAdd/ReadVariableOp*while/lstm_cell_767/BiasAdd/ReadVariableOp2V
)while/lstm_cell_767/MatMul/ReadVariableOp)while/lstm_cell_767/MatMul/ReadVariableOp2Z
+while/lstm_cell_767/MatMul_1/ReadVariableOp+while/lstm_cell_767/MatMul_1/ReadVariableOp: 
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
while_cond_4695409
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4695409___redundant_placeholder05
1while_while_cond_4695409___redundant_placeholder15
1while_while_cond_4695409___redundant_placeholder25
1while_while_cond_4695409___redundant_placeholder3
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
J__inference_lstm_cell_766_layer_call_and_return_conditional_losses_4699526

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
?
?
/__inference_lstm_cell_766_layer_call_fn_4699445

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
J__inference_lstm_cell_766_layer_call_and_return_conditional_losses_4694712o
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
?
/__inference_lstm_cell_765_layer_call_fn_4699364

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
J__inference_lstm_cell_765_layer_call_and_return_conditional_losses_4694508o
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
?
?
J__inference_lstm_cell_766_layer_call_and_return_conditional_losses_4699494

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
??
?
"__inference__wrapped_model_4694295
lstm_765_inputW
Dsequential_255_lstm_765_lstm_cell_765_matmul_readvariableop_resource:	?Y
Fsequential_255_lstm_765_lstm_cell_765_matmul_1_readvariableop_resource:	d?T
Esequential_255_lstm_765_lstm_cell_765_biasadd_readvariableop_resource:	?W
Dsequential_255_lstm_766_lstm_cell_766_matmul_readvariableop_resource:	d?Y
Fsequential_255_lstm_766_lstm_cell_766_matmul_1_readvariableop_resource:	2?T
Esequential_255_lstm_766_lstm_cell_766_biasadd_readvariableop_resource:	?V
Dsequential_255_lstm_767_lstm_cell_767_matmul_readvariableop_resource:2(X
Fsequential_255_lstm_767_lstm_cell_767_matmul_1_readvariableop_resource:
(S
Esequential_255_lstm_767_lstm_cell_767_biasadd_readvariableop_resource:(I
7sequential_255_dense_255_matmul_readvariableop_resource:
F
8sequential_255_dense_255_biasadd_readvariableop_resource:
identity??/sequential_255/dense_255/BiasAdd/ReadVariableOp?.sequential_255/dense_255/MatMul/ReadVariableOp?<sequential_255/lstm_765/lstm_cell_765/BiasAdd/ReadVariableOp?;sequential_255/lstm_765/lstm_cell_765/MatMul/ReadVariableOp?=sequential_255/lstm_765/lstm_cell_765/MatMul_1/ReadVariableOp?sequential_255/lstm_765/while?<sequential_255/lstm_766/lstm_cell_766/BiasAdd/ReadVariableOp?;sequential_255/lstm_766/lstm_cell_766/MatMul/ReadVariableOp?=sequential_255/lstm_766/lstm_cell_766/MatMul_1/ReadVariableOp?sequential_255/lstm_766/while?<sequential_255/lstm_767/lstm_cell_767/BiasAdd/ReadVariableOp?;sequential_255/lstm_767/lstm_cell_767/MatMul/ReadVariableOp?=sequential_255/lstm_767/lstm_cell_767/MatMul_1/ReadVariableOp?sequential_255/lstm_767/while[
sequential_255/lstm_765/ShapeShapelstm_765_input*
T0*
_output_shapes
:u
+sequential_255/lstm_765/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_255/lstm_765/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_255/lstm_765/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_255/lstm_765/strided_sliceStridedSlice&sequential_255/lstm_765/Shape:output:04sequential_255/lstm_765/strided_slice/stack:output:06sequential_255/lstm_765/strided_slice/stack_1:output:06sequential_255/lstm_765/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_255/lstm_765/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
$sequential_255/lstm_765/zeros/packedPack.sequential_255/lstm_765/strided_slice:output:0/sequential_255/lstm_765/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_255/lstm_765/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_255/lstm_765/zerosFill-sequential_255/lstm_765/zeros/packed:output:0,sequential_255/lstm_765/zeros/Const:output:0*
T0*'
_output_shapes
:?????????dj
(sequential_255/lstm_765/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
&sequential_255/lstm_765/zeros_1/packedPack.sequential_255/lstm_765/strided_slice:output:01sequential_255/lstm_765/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_255/lstm_765/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_255/lstm_765/zeros_1Fill/sequential_255/lstm_765/zeros_1/packed:output:0.sequential_255/lstm_765/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????d{
&sequential_255/lstm_765/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_255/lstm_765/transpose	Transposelstm_765_input/sequential_255/lstm_765/transpose/perm:output:0*
T0*+
_output_shapes
:?????????t
sequential_255/lstm_765/Shape_1Shape%sequential_255/lstm_765/transpose:y:0*
T0*
_output_shapes
:w
-sequential_255/lstm_765/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_255/lstm_765/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_255/lstm_765/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_255/lstm_765/strided_slice_1StridedSlice(sequential_255/lstm_765/Shape_1:output:06sequential_255/lstm_765/strided_slice_1/stack:output:08sequential_255/lstm_765/strided_slice_1/stack_1:output:08sequential_255/lstm_765/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_255/lstm_765/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_255/lstm_765/TensorArrayV2TensorListReserve<sequential_255/lstm_765/TensorArrayV2/element_shape:output:00sequential_255/lstm_765/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_255/lstm_765/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
?sequential_255/lstm_765/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_255/lstm_765/transpose:y:0Vsequential_255/lstm_765/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_255/lstm_765/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_255/lstm_765/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_255/lstm_765/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_255/lstm_765/strided_slice_2StridedSlice%sequential_255/lstm_765/transpose:y:06sequential_255/lstm_765/strided_slice_2/stack:output:08sequential_255/lstm_765/strided_slice_2/stack_1:output:08sequential_255/lstm_765/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
;sequential_255/lstm_765/lstm_cell_765/MatMul/ReadVariableOpReadVariableOpDsequential_255_lstm_765_lstm_cell_765_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
,sequential_255/lstm_765/lstm_cell_765/MatMulMatMul0sequential_255/lstm_765/strided_slice_2:output:0Csequential_255/lstm_765/lstm_cell_765/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_255/lstm_765/lstm_cell_765/MatMul_1/ReadVariableOpReadVariableOpFsequential_255_lstm_765_lstm_cell_765_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
.sequential_255/lstm_765/lstm_cell_765/MatMul_1MatMul&sequential_255/lstm_765/zeros:output:0Esequential_255/lstm_765/lstm_cell_765/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_255/lstm_765/lstm_cell_765/addAddV26sequential_255/lstm_765/lstm_cell_765/MatMul:product:08sequential_255/lstm_765/lstm_cell_765/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_255/lstm_765/lstm_cell_765/BiasAdd/ReadVariableOpReadVariableOpEsequential_255_lstm_765_lstm_cell_765_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_255/lstm_765/lstm_cell_765/BiasAddBiasAdd-sequential_255/lstm_765/lstm_cell_765/add:z:0Dsequential_255/lstm_765/lstm_cell_765/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_255/lstm_765/lstm_cell_765/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_255/lstm_765/lstm_cell_765/splitSplit>sequential_255/lstm_765/lstm_cell_765/split/split_dim:output:06sequential_255/lstm_765/lstm_cell_765/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
-sequential_255/lstm_765/lstm_cell_765/SigmoidSigmoid4sequential_255/lstm_765/lstm_cell_765/split:output:0*
T0*'
_output_shapes
:?????????d?
/sequential_255/lstm_765/lstm_cell_765/Sigmoid_1Sigmoid4sequential_255/lstm_765/lstm_cell_765/split:output:1*
T0*'
_output_shapes
:?????????d?
)sequential_255/lstm_765/lstm_cell_765/mulMul3sequential_255/lstm_765/lstm_cell_765/Sigmoid_1:y:0(sequential_255/lstm_765/zeros_1:output:0*
T0*'
_output_shapes
:?????????d?
*sequential_255/lstm_765/lstm_cell_765/ReluRelu4sequential_255/lstm_765/lstm_cell_765/split:output:2*
T0*'
_output_shapes
:?????????d?
+sequential_255/lstm_765/lstm_cell_765/mul_1Mul1sequential_255/lstm_765/lstm_cell_765/Sigmoid:y:08sequential_255/lstm_765/lstm_cell_765/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
+sequential_255/lstm_765/lstm_cell_765/add_1AddV2-sequential_255/lstm_765/lstm_cell_765/mul:z:0/sequential_255/lstm_765/lstm_cell_765/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
/sequential_255/lstm_765/lstm_cell_765/Sigmoid_2Sigmoid4sequential_255/lstm_765/lstm_cell_765/split:output:3*
T0*'
_output_shapes
:?????????d?
,sequential_255/lstm_765/lstm_cell_765/Relu_1Relu/sequential_255/lstm_765/lstm_cell_765/add_1:z:0*
T0*'
_output_shapes
:?????????d?
+sequential_255/lstm_765/lstm_cell_765/mul_2Mul3sequential_255/lstm_765/lstm_cell_765/Sigmoid_2:y:0:sequential_255/lstm_765/lstm_cell_765/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
5sequential_255/lstm_765/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
'sequential_255/lstm_765/TensorArrayV2_1TensorListReserve>sequential_255/lstm_765/TensorArrayV2_1/element_shape:output:00sequential_255/lstm_765/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_255/lstm_765/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_255/lstm_765/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_255/lstm_765/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_255/lstm_765/whileWhile3sequential_255/lstm_765/while/loop_counter:output:09sequential_255/lstm_765/while/maximum_iterations:output:0%sequential_255/lstm_765/time:output:00sequential_255/lstm_765/TensorArrayV2_1:handle:0&sequential_255/lstm_765/zeros:output:0(sequential_255/lstm_765/zeros_1:output:00sequential_255/lstm_765/strided_slice_1:output:0Osequential_255/lstm_765/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_255_lstm_765_lstm_cell_765_matmul_readvariableop_resourceFsequential_255_lstm_765_lstm_cell_765_matmul_1_readvariableop_resourceEsequential_255_lstm_765_lstm_cell_765_biasadd_readvariableop_resource*
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
*sequential_255_lstm_765_while_body_4693927*6
cond.R,
*sequential_255_lstm_765_while_cond_4693926*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
Hsequential_255/lstm_765/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
:sequential_255/lstm_765/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_255/lstm_765/while:output:3Qsequential_255/lstm_765/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0?
-sequential_255/lstm_765/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_255/lstm_765/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_255/lstm_765/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_255/lstm_765/strided_slice_3StridedSliceCsequential_255/lstm_765/TensorArrayV2Stack/TensorListStack:tensor:06sequential_255/lstm_765/strided_slice_3/stack:output:08sequential_255/lstm_765/strided_slice_3/stack_1:output:08sequential_255/lstm_765/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask}
(sequential_255/lstm_765/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_255/lstm_765/transpose_1	TransposeCsequential_255/lstm_765/TensorArrayV2Stack/TensorListStack:tensor:01sequential_255/lstm_765/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????ds
sequential_255/lstm_765/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_255/lstm_766/ShapeShape'sequential_255/lstm_765/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_255/lstm_766/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_255/lstm_766/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_255/lstm_766/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_255/lstm_766/strided_sliceStridedSlice&sequential_255/lstm_766/Shape:output:04sequential_255/lstm_766/strided_slice/stack:output:06sequential_255/lstm_766/strided_slice/stack_1:output:06sequential_255/lstm_766/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_255/lstm_766/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
$sequential_255/lstm_766/zeros/packedPack.sequential_255/lstm_766/strided_slice:output:0/sequential_255/lstm_766/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_255/lstm_766/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_255/lstm_766/zerosFill-sequential_255/lstm_766/zeros/packed:output:0,sequential_255/lstm_766/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2j
(sequential_255/lstm_766/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
&sequential_255/lstm_766/zeros_1/packedPack.sequential_255/lstm_766/strided_slice:output:01sequential_255/lstm_766/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_255/lstm_766/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_255/lstm_766/zeros_1Fill/sequential_255/lstm_766/zeros_1/packed:output:0.sequential_255/lstm_766/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2{
&sequential_255/lstm_766/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_255/lstm_766/transpose	Transpose'sequential_255/lstm_765/transpose_1:y:0/sequential_255/lstm_766/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dt
sequential_255/lstm_766/Shape_1Shape%sequential_255/lstm_766/transpose:y:0*
T0*
_output_shapes
:w
-sequential_255/lstm_766/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_255/lstm_766/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_255/lstm_766/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_255/lstm_766/strided_slice_1StridedSlice(sequential_255/lstm_766/Shape_1:output:06sequential_255/lstm_766/strided_slice_1/stack:output:08sequential_255/lstm_766/strided_slice_1/stack_1:output:08sequential_255/lstm_766/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_255/lstm_766/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_255/lstm_766/TensorArrayV2TensorListReserve<sequential_255/lstm_766/TensorArrayV2/element_shape:output:00sequential_255/lstm_766/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_255/lstm_766/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
?sequential_255/lstm_766/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_255/lstm_766/transpose:y:0Vsequential_255/lstm_766/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_255/lstm_766/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_255/lstm_766/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_255/lstm_766/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_255/lstm_766/strided_slice_2StridedSlice%sequential_255/lstm_766/transpose:y:06sequential_255/lstm_766/strided_slice_2/stack:output:08sequential_255/lstm_766/strided_slice_2/stack_1:output:08sequential_255/lstm_766/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
;sequential_255/lstm_766/lstm_cell_766/MatMul/ReadVariableOpReadVariableOpDsequential_255_lstm_766_lstm_cell_766_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
,sequential_255/lstm_766/lstm_cell_766/MatMulMatMul0sequential_255/lstm_766/strided_slice_2:output:0Csequential_255/lstm_766/lstm_cell_766/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_255/lstm_766/lstm_cell_766/MatMul_1/ReadVariableOpReadVariableOpFsequential_255_lstm_766_lstm_cell_766_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
.sequential_255/lstm_766/lstm_cell_766/MatMul_1MatMul&sequential_255/lstm_766/zeros:output:0Esequential_255/lstm_766/lstm_cell_766/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_255/lstm_766/lstm_cell_766/addAddV26sequential_255/lstm_766/lstm_cell_766/MatMul:product:08sequential_255/lstm_766/lstm_cell_766/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_255/lstm_766/lstm_cell_766/BiasAdd/ReadVariableOpReadVariableOpEsequential_255_lstm_766_lstm_cell_766_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_255/lstm_766/lstm_cell_766/BiasAddBiasAdd-sequential_255/lstm_766/lstm_cell_766/add:z:0Dsequential_255/lstm_766/lstm_cell_766/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_255/lstm_766/lstm_cell_766/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_255/lstm_766/lstm_cell_766/splitSplit>sequential_255/lstm_766/lstm_cell_766/split/split_dim:output:06sequential_255/lstm_766/lstm_cell_766/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
-sequential_255/lstm_766/lstm_cell_766/SigmoidSigmoid4sequential_255/lstm_766/lstm_cell_766/split:output:0*
T0*'
_output_shapes
:?????????2?
/sequential_255/lstm_766/lstm_cell_766/Sigmoid_1Sigmoid4sequential_255/lstm_766/lstm_cell_766/split:output:1*
T0*'
_output_shapes
:?????????2?
)sequential_255/lstm_766/lstm_cell_766/mulMul3sequential_255/lstm_766/lstm_cell_766/Sigmoid_1:y:0(sequential_255/lstm_766/zeros_1:output:0*
T0*'
_output_shapes
:?????????2?
*sequential_255/lstm_766/lstm_cell_766/ReluRelu4sequential_255/lstm_766/lstm_cell_766/split:output:2*
T0*'
_output_shapes
:?????????2?
+sequential_255/lstm_766/lstm_cell_766/mul_1Mul1sequential_255/lstm_766/lstm_cell_766/Sigmoid:y:08sequential_255/lstm_766/lstm_cell_766/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
+sequential_255/lstm_766/lstm_cell_766/add_1AddV2-sequential_255/lstm_766/lstm_cell_766/mul:z:0/sequential_255/lstm_766/lstm_cell_766/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
/sequential_255/lstm_766/lstm_cell_766/Sigmoid_2Sigmoid4sequential_255/lstm_766/lstm_cell_766/split:output:3*
T0*'
_output_shapes
:?????????2?
,sequential_255/lstm_766/lstm_cell_766/Relu_1Relu/sequential_255/lstm_766/lstm_cell_766/add_1:z:0*
T0*'
_output_shapes
:?????????2?
+sequential_255/lstm_766/lstm_cell_766/mul_2Mul3sequential_255/lstm_766/lstm_cell_766/Sigmoid_2:y:0:sequential_255/lstm_766/lstm_cell_766/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
5sequential_255/lstm_766/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
'sequential_255/lstm_766/TensorArrayV2_1TensorListReserve>sequential_255/lstm_766/TensorArrayV2_1/element_shape:output:00sequential_255/lstm_766/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_255/lstm_766/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_255/lstm_766/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_255/lstm_766/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_255/lstm_766/whileWhile3sequential_255/lstm_766/while/loop_counter:output:09sequential_255/lstm_766/while/maximum_iterations:output:0%sequential_255/lstm_766/time:output:00sequential_255/lstm_766/TensorArrayV2_1:handle:0&sequential_255/lstm_766/zeros:output:0(sequential_255/lstm_766/zeros_1:output:00sequential_255/lstm_766/strided_slice_1:output:0Osequential_255/lstm_766/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_255_lstm_766_lstm_cell_766_matmul_readvariableop_resourceFsequential_255_lstm_766_lstm_cell_766_matmul_1_readvariableop_resourceEsequential_255_lstm_766_lstm_cell_766_biasadd_readvariableop_resource*
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
*sequential_255_lstm_766_while_body_4694066*6
cond.R,
*sequential_255_lstm_766_while_cond_4694065*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
Hsequential_255/lstm_766/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
:sequential_255/lstm_766/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_255/lstm_766/while:output:3Qsequential_255/lstm_766/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0?
-sequential_255/lstm_766/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_255/lstm_766/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_255/lstm_766/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_255/lstm_766/strided_slice_3StridedSliceCsequential_255/lstm_766/TensorArrayV2Stack/TensorListStack:tensor:06sequential_255/lstm_766/strided_slice_3/stack:output:08sequential_255/lstm_766/strided_slice_3/stack_1:output:08sequential_255/lstm_766/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask}
(sequential_255/lstm_766/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_255/lstm_766/transpose_1	TransposeCsequential_255/lstm_766/TensorArrayV2Stack/TensorListStack:tensor:01sequential_255/lstm_766/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2s
sequential_255/lstm_766/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_255/lstm_767/ShapeShape'sequential_255/lstm_766/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_255/lstm_767/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_255/lstm_767/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_255/lstm_767/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_255/lstm_767/strided_sliceStridedSlice&sequential_255/lstm_767/Shape:output:04sequential_255/lstm_767/strided_slice/stack:output:06sequential_255/lstm_767/strided_slice/stack_1:output:06sequential_255/lstm_767/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_255/lstm_767/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
$sequential_255/lstm_767/zeros/packedPack.sequential_255/lstm_767/strided_slice:output:0/sequential_255/lstm_767/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_255/lstm_767/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_255/lstm_767/zerosFill-sequential_255/lstm_767/zeros/packed:output:0,sequential_255/lstm_767/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
j
(sequential_255/lstm_767/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
&sequential_255/lstm_767/zeros_1/packedPack.sequential_255/lstm_767/strided_slice:output:01sequential_255/lstm_767/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_255/lstm_767/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_255/lstm_767/zeros_1Fill/sequential_255/lstm_767/zeros_1/packed:output:0.sequential_255/lstm_767/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
{
&sequential_255/lstm_767/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_255/lstm_767/transpose	Transpose'sequential_255/lstm_766/transpose_1:y:0/sequential_255/lstm_767/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2t
sequential_255/lstm_767/Shape_1Shape%sequential_255/lstm_767/transpose:y:0*
T0*
_output_shapes
:w
-sequential_255/lstm_767/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_255/lstm_767/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_255/lstm_767/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_255/lstm_767/strided_slice_1StridedSlice(sequential_255/lstm_767/Shape_1:output:06sequential_255/lstm_767/strided_slice_1/stack:output:08sequential_255/lstm_767/strided_slice_1/stack_1:output:08sequential_255/lstm_767/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_255/lstm_767/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_255/lstm_767/TensorArrayV2TensorListReserve<sequential_255/lstm_767/TensorArrayV2/element_shape:output:00sequential_255/lstm_767/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_255/lstm_767/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
?sequential_255/lstm_767/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_255/lstm_767/transpose:y:0Vsequential_255/lstm_767/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_255/lstm_767/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_255/lstm_767/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_255/lstm_767/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_255/lstm_767/strided_slice_2StridedSlice%sequential_255/lstm_767/transpose:y:06sequential_255/lstm_767/strided_slice_2/stack:output:08sequential_255/lstm_767/strided_slice_2/stack_1:output:08sequential_255/lstm_767/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
;sequential_255/lstm_767/lstm_cell_767/MatMul/ReadVariableOpReadVariableOpDsequential_255_lstm_767_lstm_cell_767_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
,sequential_255/lstm_767/lstm_cell_767/MatMulMatMul0sequential_255/lstm_767/strided_slice_2:output:0Csequential_255/lstm_767/lstm_cell_767/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
=sequential_255/lstm_767/lstm_cell_767/MatMul_1/ReadVariableOpReadVariableOpFsequential_255_lstm_767_lstm_cell_767_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
.sequential_255/lstm_767/lstm_cell_767/MatMul_1MatMul&sequential_255/lstm_767/zeros:output:0Esequential_255/lstm_767/lstm_cell_767/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
)sequential_255/lstm_767/lstm_cell_767/addAddV26sequential_255/lstm_767/lstm_cell_767/MatMul:product:08sequential_255/lstm_767/lstm_cell_767/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
<sequential_255/lstm_767/lstm_cell_767/BiasAdd/ReadVariableOpReadVariableOpEsequential_255_lstm_767_lstm_cell_767_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
-sequential_255/lstm_767/lstm_cell_767/BiasAddBiasAdd-sequential_255/lstm_767/lstm_cell_767/add:z:0Dsequential_255/lstm_767/lstm_cell_767/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(w
5sequential_255/lstm_767/lstm_cell_767/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_255/lstm_767/lstm_cell_767/splitSplit>sequential_255/lstm_767/lstm_cell_767/split/split_dim:output:06sequential_255/lstm_767/lstm_cell_767/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
-sequential_255/lstm_767/lstm_cell_767/SigmoidSigmoid4sequential_255/lstm_767/lstm_cell_767/split:output:0*
T0*'
_output_shapes
:?????????
?
/sequential_255/lstm_767/lstm_cell_767/Sigmoid_1Sigmoid4sequential_255/lstm_767/lstm_cell_767/split:output:1*
T0*'
_output_shapes
:?????????
?
)sequential_255/lstm_767/lstm_cell_767/mulMul3sequential_255/lstm_767/lstm_cell_767/Sigmoid_1:y:0(sequential_255/lstm_767/zeros_1:output:0*
T0*'
_output_shapes
:?????????
?
*sequential_255/lstm_767/lstm_cell_767/ReluRelu4sequential_255/lstm_767/lstm_cell_767/split:output:2*
T0*'
_output_shapes
:?????????
?
+sequential_255/lstm_767/lstm_cell_767/mul_1Mul1sequential_255/lstm_767/lstm_cell_767/Sigmoid:y:08sequential_255/lstm_767/lstm_cell_767/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
+sequential_255/lstm_767/lstm_cell_767/add_1AddV2-sequential_255/lstm_767/lstm_cell_767/mul:z:0/sequential_255/lstm_767/lstm_cell_767/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
/sequential_255/lstm_767/lstm_cell_767/Sigmoid_2Sigmoid4sequential_255/lstm_767/lstm_cell_767/split:output:3*
T0*'
_output_shapes
:?????????
?
,sequential_255/lstm_767/lstm_cell_767/Relu_1Relu/sequential_255/lstm_767/lstm_cell_767/add_1:z:0*
T0*'
_output_shapes
:?????????
?
+sequential_255/lstm_767/lstm_cell_767/mul_2Mul3sequential_255/lstm_767/lstm_cell_767/Sigmoid_2:y:0:sequential_255/lstm_767/lstm_cell_767/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
5sequential_255/lstm_767/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
'sequential_255/lstm_767/TensorArrayV2_1TensorListReserve>sequential_255/lstm_767/TensorArrayV2_1/element_shape:output:00sequential_255/lstm_767/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_255/lstm_767/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_255/lstm_767/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_255/lstm_767/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_255/lstm_767/whileWhile3sequential_255/lstm_767/while/loop_counter:output:09sequential_255/lstm_767/while/maximum_iterations:output:0%sequential_255/lstm_767/time:output:00sequential_255/lstm_767/TensorArrayV2_1:handle:0&sequential_255/lstm_767/zeros:output:0(sequential_255/lstm_767/zeros_1:output:00sequential_255/lstm_767/strided_slice_1:output:0Osequential_255/lstm_767/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_255_lstm_767_lstm_cell_767_matmul_readvariableop_resourceFsequential_255_lstm_767_lstm_cell_767_matmul_1_readvariableop_resourceEsequential_255_lstm_767_lstm_cell_767_biasadd_readvariableop_resource*
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
*sequential_255_lstm_767_while_body_4694205*6
cond.R,
*sequential_255_lstm_767_while_cond_4694204*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
Hsequential_255/lstm_767/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
:sequential_255/lstm_767/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_255/lstm_767/while:output:3Qsequential_255/lstm_767/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0?
-sequential_255/lstm_767/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_255/lstm_767/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_255/lstm_767/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_255/lstm_767/strided_slice_3StridedSliceCsequential_255/lstm_767/TensorArrayV2Stack/TensorListStack:tensor:06sequential_255/lstm_767/strided_slice_3/stack:output:08sequential_255/lstm_767/strided_slice_3/stack_1:output:08sequential_255/lstm_767/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_mask}
(sequential_255/lstm_767/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_255/lstm_767/transpose_1	TransposeCsequential_255/lstm_767/TensorArrayV2Stack/TensorListStack:tensor:01sequential_255/lstm_767/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
s
sequential_255/lstm_767/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
.sequential_255/dense_255/MatMul/ReadVariableOpReadVariableOp7sequential_255_dense_255_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
sequential_255/dense_255/MatMulMatMul0sequential_255/lstm_767/strided_slice_3:output:06sequential_255/dense_255/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
/sequential_255/dense_255/BiasAdd/ReadVariableOpReadVariableOp8sequential_255_dense_255_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
 sequential_255/dense_255/BiasAddBiasAdd)sequential_255/dense_255/MatMul:product:07sequential_255/dense_255/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x
IdentityIdentity)sequential_255/dense_255/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp0^sequential_255/dense_255/BiasAdd/ReadVariableOp/^sequential_255/dense_255/MatMul/ReadVariableOp=^sequential_255/lstm_765/lstm_cell_765/BiasAdd/ReadVariableOp<^sequential_255/lstm_765/lstm_cell_765/MatMul/ReadVariableOp>^sequential_255/lstm_765/lstm_cell_765/MatMul_1/ReadVariableOp^sequential_255/lstm_765/while=^sequential_255/lstm_766/lstm_cell_766/BiasAdd/ReadVariableOp<^sequential_255/lstm_766/lstm_cell_766/MatMul/ReadVariableOp>^sequential_255/lstm_766/lstm_cell_766/MatMul_1/ReadVariableOp^sequential_255/lstm_766/while=^sequential_255/lstm_767/lstm_cell_767/BiasAdd/ReadVariableOp<^sequential_255/lstm_767/lstm_cell_767/MatMul/ReadVariableOp>^sequential_255/lstm_767/lstm_cell_767/MatMul_1/ReadVariableOp^sequential_255/lstm_767/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2b
/sequential_255/dense_255/BiasAdd/ReadVariableOp/sequential_255/dense_255/BiasAdd/ReadVariableOp2`
.sequential_255/dense_255/MatMul/ReadVariableOp.sequential_255/dense_255/MatMul/ReadVariableOp2|
<sequential_255/lstm_765/lstm_cell_765/BiasAdd/ReadVariableOp<sequential_255/lstm_765/lstm_cell_765/BiasAdd/ReadVariableOp2z
;sequential_255/lstm_765/lstm_cell_765/MatMul/ReadVariableOp;sequential_255/lstm_765/lstm_cell_765/MatMul/ReadVariableOp2~
=sequential_255/lstm_765/lstm_cell_765/MatMul_1/ReadVariableOp=sequential_255/lstm_765/lstm_cell_765/MatMul_1/ReadVariableOp2>
sequential_255/lstm_765/whilesequential_255/lstm_765/while2|
<sequential_255/lstm_766/lstm_cell_766/BiasAdd/ReadVariableOp<sequential_255/lstm_766/lstm_cell_766/BiasAdd/ReadVariableOp2z
;sequential_255/lstm_766/lstm_cell_766/MatMul/ReadVariableOp;sequential_255/lstm_766/lstm_cell_766/MatMul/ReadVariableOp2~
=sequential_255/lstm_766/lstm_cell_766/MatMul_1/ReadVariableOp=sequential_255/lstm_766/lstm_cell_766/MatMul_1/ReadVariableOp2>
sequential_255/lstm_766/whilesequential_255/lstm_766/while2|
<sequential_255/lstm_767/lstm_cell_767/BiasAdd/ReadVariableOp<sequential_255/lstm_767/lstm_cell_767/BiasAdd/ReadVariableOp2z
;sequential_255/lstm_767/lstm_cell_767/MatMul/ReadVariableOp;sequential_255/lstm_767/lstm_cell_767/MatMul/ReadVariableOp2~
=sequential_255/lstm_767/lstm_cell_767/MatMul_1/ReadVariableOp=sequential_255/lstm_767/lstm_cell_767/MatMul_1/ReadVariableOp2>
sequential_255/lstm_767/whilesequential_255/lstm_767/while:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_765_input
?	
?
F__inference_dense_255_layer_call_and_return_conditional_losses_4695812

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
while_body_4699084
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_767_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_767_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_767_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_767_matmul_readvariableop_resource:2(F
4while_lstm_cell_767_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_767_biasadd_readvariableop_resource:(??*while/lstm_cell_767/BiasAdd/ReadVariableOp?)while/lstm_cell_767/MatMul/ReadVariableOp?+while/lstm_cell_767/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_767/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_767_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_767/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_767/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_767/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_767_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_767/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_767/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_767/addAddV2$while/lstm_cell_767/MatMul:product:0&while/lstm_cell_767/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_767/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_767_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_767/BiasAddBiasAddwhile/lstm_cell_767/add:z:02while/lstm_cell_767/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_767/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_767/splitSplit,while/lstm_cell_767/split/split_dim:output:0$while/lstm_cell_767/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_767/SigmoidSigmoid"while/lstm_cell_767/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_767/Sigmoid_1Sigmoid"while/lstm_cell_767/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_767/mulMul!while/lstm_cell_767/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_767/ReluRelu"while/lstm_cell_767/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_767/mul_1Mulwhile/lstm_cell_767/Sigmoid:y:0&while/lstm_cell_767/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_767/add_1AddV2while/lstm_cell_767/mul:z:0while/lstm_cell_767/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_767/Sigmoid_2Sigmoid"while/lstm_cell_767/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_767/Relu_1Reluwhile/lstm_cell_767/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_767/mul_2Mul!while/lstm_cell_767/Sigmoid_2:y:0(while/lstm_cell_767/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_767/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_767/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_767/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_767/BiasAdd/ReadVariableOp*^while/lstm_cell_767/MatMul/ReadVariableOp,^while/lstm_cell_767/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_767_biasadd_readvariableop_resource5while_lstm_cell_767_biasadd_readvariableop_resource_0"n
4while_lstm_cell_767_matmul_1_readvariableop_resource6while_lstm_cell_767_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_767_matmul_readvariableop_resource4while_lstm_cell_767_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_767/BiasAdd/ReadVariableOp*while/lstm_cell_767/BiasAdd/ReadVariableOp2V
)while/lstm_cell_767/MatMul/ReadVariableOp)while/lstm_cell_767/MatMul/ReadVariableOp2Z
+while/lstm_cell_767/MatMul_1/ReadVariableOp+while/lstm_cell_767/MatMul_1/ReadVariableOp: 
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
?T
?
*sequential_255_lstm_765_while_body_4693927L
Hsequential_255_lstm_765_while_sequential_255_lstm_765_while_loop_counterR
Nsequential_255_lstm_765_while_sequential_255_lstm_765_while_maximum_iterations-
)sequential_255_lstm_765_while_placeholder/
+sequential_255_lstm_765_while_placeholder_1/
+sequential_255_lstm_765_while_placeholder_2/
+sequential_255_lstm_765_while_placeholder_3K
Gsequential_255_lstm_765_while_sequential_255_lstm_765_strided_slice_1_0?
?sequential_255_lstm_765_while_tensorarrayv2read_tensorlistgetitem_sequential_255_lstm_765_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_255_lstm_765_while_lstm_cell_765_matmul_readvariableop_resource_0:	?a
Nsequential_255_lstm_765_while_lstm_cell_765_matmul_1_readvariableop_resource_0:	d?\
Msequential_255_lstm_765_while_lstm_cell_765_biasadd_readvariableop_resource_0:	?*
&sequential_255_lstm_765_while_identity,
(sequential_255_lstm_765_while_identity_1,
(sequential_255_lstm_765_while_identity_2,
(sequential_255_lstm_765_while_identity_3,
(sequential_255_lstm_765_while_identity_4,
(sequential_255_lstm_765_while_identity_5I
Esequential_255_lstm_765_while_sequential_255_lstm_765_strided_slice_1?
?sequential_255_lstm_765_while_tensorarrayv2read_tensorlistgetitem_sequential_255_lstm_765_tensorarrayunstack_tensorlistfromtensor]
Jsequential_255_lstm_765_while_lstm_cell_765_matmul_readvariableop_resource:	?_
Lsequential_255_lstm_765_while_lstm_cell_765_matmul_1_readvariableop_resource:	d?Z
Ksequential_255_lstm_765_while_lstm_cell_765_biasadd_readvariableop_resource:	???Bsequential_255/lstm_765/while/lstm_cell_765/BiasAdd/ReadVariableOp?Asequential_255/lstm_765/while/lstm_cell_765/MatMul/ReadVariableOp?Csequential_255/lstm_765/while/lstm_cell_765/MatMul_1/ReadVariableOp?
Osequential_255/lstm_765/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
Asequential_255/lstm_765/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_255_lstm_765_while_tensorarrayv2read_tensorlistgetitem_sequential_255_lstm_765_tensorarrayunstack_tensorlistfromtensor_0)sequential_255_lstm_765_while_placeholderXsequential_255/lstm_765/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
Asequential_255/lstm_765/while/lstm_cell_765/MatMul/ReadVariableOpReadVariableOpLsequential_255_lstm_765_while_lstm_cell_765_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
2sequential_255/lstm_765/while/lstm_cell_765/MatMulMatMulHsequential_255/lstm_765/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_255/lstm_765/while/lstm_cell_765/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_255/lstm_765/while/lstm_cell_765/MatMul_1/ReadVariableOpReadVariableOpNsequential_255_lstm_765_while_lstm_cell_765_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
4sequential_255/lstm_765/while/lstm_cell_765/MatMul_1MatMul+sequential_255_lstm_765_while_placeholder_2Ksequential_255/lstm_765/while/lstm_cell_765/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_255/lstm_765/while/lstm_cell_765/addAddV2<sequential_255/lstm_765/while/lstm_cell_765/MatMul:product:0>sequential_255/lstm_765/while/lstm_cell_765/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_255/lstm_765/while/lstm_cell_765/BiasAdd/ReadVariableOpReadVariableOpMsequential_255_lstm_765_while_lstm_cell_765_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_255/lstm_765/while/lstm_cell_765/BiasAddBiasAdd3sequential_255/lstm_765/while/lstm_cell_765/add:z:0Jsequential_255/lstm_765/while/lstm_cell_765/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_255/lstm_765/while/lstm_cell_765/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_255/lstm_765/while/lstm_cell_765/splitSplitDsequential_255/lstm_765/while/lstm_cell_765/split/split_dim:output:0<sequential_255/lstm_765/while/lstm_cell_765/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
3sequential_255/lstm_765/while/lstm_cell_765/SigmoidSigmoid:sequential_255/lstm_765/while/lstm_cell_765/split:output:0*
T0*'
_output_shapes
:?????????d?
5sequential_255/lstm_765/while/lstm_cell_765/Sigmoid_1Sigmoid:sequential_255/lstm_765/while/lstm_cell_765/split:output:1*
T0*'
_output_shapes
:?????????d?
/sequential_255/lstm_765/while/lstm_cell_765/mulMul9sequential_255/lstm_765/while/lstm_cell_765/Sigmoid_1:y:0+sequential_255_lstm_765_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
0sequential_255/lstm_765/while/lstm_cell_765/ReluRelu:sequential_255/lstm_765/while/lstm_cell_765/split:output:2*
T0*'
_output_shapes
:?????????d?
1sequential_255/lstm_765/while/lstm_cell_765/mul_1Mul7sequential_255/lstm_765/while/lstm_cell_765/Sigmoid:y:0>sequential_255/lstm_765/while/lstm_cell_765/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
1sequential_255/lstm_765/while/lstm_cell_765/add_1AddV23sequential_255/lstm_765/while/lstm_cell_765/mul:z:05sequential_255/lstm_765/while/lstm_cell_765/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
5sequential_255/lstm_765/while/lstm_cell_765/Sigmoid_2Sigmoid:sequential_255/lstm_765/while/lstm_cell_765/split:output:3*
T0*'
_output_shapes
:?????????d?
2sequential_255/lstm_765/while/lstm_cell_765/Relu_1Relu5sequential_255/lstm_765/while/lstm_cell_765/add_1:z:0*
T0*'
_output_shapes
:?????????d?
1sequential_255/lstm_765/while/lstm_cell_765/mul_2Mul9sequential_255/lstm_765/while/lstm_cell_765/Sigmoid_2:y:0@sequential_255/lstm_765/while/lstm_cell_765/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
Bsequential_255/lstm_765/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_255_lstm_765_while_placeholder_1)sequential_255_lstm_765_while_placeholder5sequential_255/lstm_765/while/lstm_cell_765/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_255/lstm_765/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_255/lstm_765/while/addAddV2)sequential_255_lstm_765_while_placeholder,sequential_255/lstm_765/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_255/lstm_765/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_255/lstm_765/while/add_1AddV2Hsequential_255_lstm_765_while_sequential_255_lstm_765_while_loop_counter.sequential_255/lstm_765/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_255/lstm_765/while/IdentityIdentity'sequential_255/lstm_765/while/add_1:z:0#^sequential_255/lstm_765/while/NoOp*
T0*
_output_shapes
: ?
(sequential_255/lstm_765/while/Identity_1IdentityNsequential_255_lstm_765_while_sequential_255_lstm_765_while_maximum_iterations#^sequential_255/lstm_765/while/NoOp*
T0*
_output_shapes
: ?
(sequential_255/lstm_765/while/Identity_2Identity%sequential_255/lstm_765/while/add:z:0#^sequential_255/lstm_765/while/NoOp*
T0*
_output_shapes
: ?
(sequential_255/lstm_765/while/Identity_3IdentityRsequential_255/lstm_765/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_255/lstm_765/while/NoOp*
T0*
_output_shapes
: ?
(sequential_255/lstm_765/while/Identity_4Identity5sequential_255/lstm_765/while/lstm_cell_765/mul_2:z:0#^sequential_255/lstm_765/while/NoOp*
T0*'
_output_shapes
:?????????d?
(sequential_255/lstm_765/while/Identity_5Identity5sequential_255/lstm_765/while/lstm_cell_765/add_1:z:0#^sequential_255/lstm_765/while/NoOp*
T0*'
_output_shapes
:?????????d?
"sequential_255/lstm_765/while/NoOpNoOpC^sequential_255/lstm_765/while/lstm_cell_765/BiasAdd/ReadVariableOpB^sequential_255/lstm_765/while/lstm_cell_765/MatMul/ReadVariableOpD^sequential_255/lstm_765/while/lstm_cell_765/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_255_lstm_765_while_identity/sequential_255/lstm_765/while/Identity:output:0"]
(sequential_255_lstm_765_while_identity_11sequential_255/lstm_765/while/Identity_1:output:0"]
(sequential_255_lstm_765_while_identity_21sequential_255/lstm_765/while/Identity_2:output:0"]
(sequential_255_lstm_765_while_identity_31sequential_255/lstm_765/while/Identity_3:output:0"]
(sequential_255_lstm_765_while_identity_41sequential_255/lstm_765/while/Identity_4:output:0"]
(sequential_255_lstm_765_while_identity_51sequential_255/lstm_765/while/Identity_5:output:0"?
Ksequential_255_lstm_765_while_lstm_cell_765_biasadd_readvariableop_resourceMsequential_255_lstm_765_while_lstm_cell_765_biasadd_readvariableop_resource_0"?
Lsequential_255_lstm_765_while_lstm_cell_765_matmul_1_readvariableop_resourceNsequential_255_lstm_765_while_lstm_cell_765_matmul_1_readvariableop_resource_0"?
Jsequential_255_lstm_765_while_lstm_cell_765_matmul_readvariableop_resourceLsequential_255_lstm_765_while_lstm_cell_765_matmul_readvariableop_resource_0"?
Esequential_255_lstm_765_while_sequential_255_lstm_765_strided_slice_1Gsequential_255_lstm_765_while_sequential_255_lstm_765_strided_slice_1_0"?
?sequential_255_lstm_765_while_tensorarrayv2read_tensorlistgetitem_sequential_255_lstm_765_tensorarrayunstack_tensorlistfromtensor?sequential_255_lstm_765_while_tensorarrayv2read_tensorlistgetitem_sequential_255_lstm_765_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2?
Bsequential_255/lstm_765/while/lstm_cell_765/BiasAdd/ReadVariableOpBsequential_255/lstm_765/while/lstm_cell_765/BiasAdd/ReadVariableOp2?
Asequential_255/lstm_765/while/lstm_cell_765/MatMul/ReadVariableOpAsequential_255/lstm_765/while/lstm_cell_765/MatMul/ReadVariableOp2?
Csequential_255/lstm_765/while/lstm_cell_765/MatMul_1/ReadVariableOpCsequential_255/lstm_765/while/lstm_cell_765/MatMul_1/ReadVariableOp: 
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
while_cond_4694916
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4694916___redundant_placeholder05
1while_while_cond_4694916___redundant_placeholder15
1while_while_cond_4694916___redundant_placeholder25
1while_while_cond_4694916___redundant_placeholder3
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
J__inference_lstm_cell_767_layer_call_and_return_conditional_losses_4699624

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
?J
?
E__inference_lstm_767_layer_call_and_return_conditional_losses_4696010

inputs>
,lstm_cell_767_matmul_readvariableop_resource:2(@
.lstm_cell_767_matmul_1_readvariableop_resource:
(;
-lstm_cell_767_biasadd_readvariableop_resource:(
identity??$lstm_cell_767/BiasAdd/ReadVariableOp?#lstm_cell_767/MatMul/ReadVariableOp?%lstm_cell_767/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_767/MatMul/ReadVariableOpReadVariableOp,lstm_cell_767_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_767/MatMulMatMulstrided_slice_2:output:0+lstm_cell_767/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_767/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_767_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_767/MatMul_1MatMulzeros:output:0-lstm_cell_767/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_767/addAddV2lstm_cell_767/MatMul:product:0 lstm_cell_767/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_767/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_767_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_767/BiasAddBiasAddlstm_cell_767/add:z:0,lstm_cell_767/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_767/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_767/splitSplit&lstm_cell_767/split/split_dim:output:0lstm_cell_767/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_767/SigmoidSigmoidlstm_cell_767/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_767/Sigmoid_1Sigmoidlstm_cell_767/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_767/mulMullstm_cell_767/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_767/ReluRelulstm_cell_767/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_767/mul_1Mullstm_cell_767/Sigmoid:y:0 lstm_cell_767/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_767/add_1AddV2lstm_cell_767/mul:z:0lstm_cell_767/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_767/Sigmoid_2Sigmoidlstm_cell_767/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_767/Relu_1Relulstm_cell_767/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_767/mul_2Mullstm_cell_767/Sigmoid_2:y:0"lstm_cell_767/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_767_matmul_readvariableop_resource.lstm_cell_767_matmul_1_readvariableop_resource-lstm_cell_767_biasadd_readvariableop_resource*
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
while_body_4695926*
condR
while_cond_4695925*K
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
NoOpNoOp%^lstm_cell_767/BiasAdd/ReadVariableOp$^lstm_cell_767/MatMul/ReadVariableOp&^lstm_cell_767/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_767/BiasAdd/ReadVariableOp$lstm_cell_767/BiasAdd/ReadVariableOp2J
#lstm_cell_767/MatMul/ReadVariableOp#lstm_cell_767/MatMul/ReadVariableOp2N
%lstm_cell_767/MatMul_1/ReadVariableOp%lstm_cell_767/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
while_cond_4698181
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4698181___redundant_placeholder05
1while_while_cond_4698181___redundant_placeholder15
1while_while_cond_4698181___redundant_placeholder25
1while_while_cond_4698181___redundant_placeholder3
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
*sequential_255_lstm_766_while_cond_4694065L
Hsequential_255_lstm_766_while_sequential_255_lstm_766_while_loop_counterR
Nsequential_255_lstm_766_while_sequential_255_lstm_766_while_maximum_iterations-
)sequential_255_lstm_766_while_placeholder/
+sequential_255_lstm_766_while_placeholder_1/
+sequential_255_lstm_766_while_placeholder_2/
+sequential_255_lstm_766_while_placeholder_3N
Jsequential_255_lstm_766_while_less_sequential_255_lstm_766_strided_slice_1e
asequential_255_lstm_766_while_sequential_255_lstm_766_while_cond_4694065___redundant_placeholder0e
asequential_255_lstm_766_while_sequential_255_lstm_766_while_cond_4694065___redundant_placeholder1e
asequential_255_lstm_766_while_sequential_255_lstm_766_while_cond_4694065___redundant_placeholder2e
asequential_255_lstm_766_while_sequential_255_lstm_766_while_cond_4694065___redundant_placeholder3*
&sequential_255_lstm_766_while_identity
?
"sequential_255/lstm_766/while/LessLess)sequential_255_lstm_766_while_placeholderJsequential_255_lstm_766_while_less_sequential_255_lstm_766_strided_slice_1*
T0*
_output_shapes
: {
&sequential_255/lstm_766/while/IdentityIdentity&sequential_255/lstm_766/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_255_lstm_766_while_identity/sequential_255/lstm_766/while/Identity:output:0*(
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
while_cond_4695075
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4695075___redundant_placeholder05
1while_while_cond_4695075___redundant_placeholder15
1while_while_cond_4695075___redundant_placeholder25
1while_while_cond_4695075___redundant_placeholder3
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
while_body_4698611
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_766_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_766_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_766_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_766_matmul_readvariableop_resource:	d?G
4while_lstm_cell_766_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_766_biasadd_readvariableop_resource:	???*while/lstm_cell_766/BiasAdd/ReadVariableOp?)while/lstm_cell_766/MatMul/ReadVariableOp?+while/lstm_cell_766/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_766/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_766_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_766/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_766/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_766/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_766_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_766/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_766/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_766/addAddV2$while/lstm_cell_766/MatMul:product:0&while/lstm_cell_766/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_766/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_766_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_766/BiasAddBiasAddwhile/lstm_cell_766/add:z:02while/lstm_cell_766/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_766/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_766/splitSplit,while/lstm_cell_766/split/split_dim:output:0$while/lstm_cell_766/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_766/SigmoidSigmoid"while/lstm_cell_766/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_766/Sigmoid_1Sigmoid"while/lstm_cell_766/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_766/mulMul!while/lstm_cell_766/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_766/ReluRelu"while/lstm_cell_766/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_766/mul_1Mulwhile/lstm_cell_766/Sigmoid:y:0&while/lstm_cell_766/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_766/add_1AddV2while/lstm_cell_766/mul:z:0while/lstm_cell_766/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_766/Sigmoid_2Sigmoid"while/lstm_cell_766/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_766/Relu_1Reluwhile/lstm_cell_766/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_766/mul_2Mul!while/lstm_cell_766/Sigmoid_2:y:0(while/lstm_cell_766/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_766/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_766/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_766/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_766/BiasAdd/ReadVariableOp*^while/lstm_cell_766/MatMul/ReadVariableOp,^while/lstm_cell_766/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_766_biasadd_readvariableop_resource5while_lstm_cell_766_biasadd_readvariableop_resource_0"n
4while_lstm_cell_766_matmul_1_readvariableop_resource6while_lstm_cell_766_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_766_matmul_readvariableop_resource4while_lstm_cell_766_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_766/BiasAdd/ReadVariableOp*while/lstm_cell_766/BiasAdd/ReadVariableOp2V
)while/lstm_cell_766/MatMul/ReadVariableOp)while/lstm_cell_766/MatMul/ReadVariableOp2Z
+while/lstm_cell_766/MatMul_1/ReadVariableOp+while/lstm_cell_766/MatMul_1/ReadVariableOp: 
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
while_body_4697709
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_765_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_765_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_765_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_765_matmul_readvariableop_resource:	?G
4while_lstm_cell_765_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_765_biasadd_readvariableop_resource:	???*while/lstm_cell_765/BiasAdd/ReadVariableOp?)while/lstm_cell_765/MatMul/ReadVariableOp?+while/lstm_cell_765/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_765/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_765_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_765/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_765/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_765/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_765_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_765/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_765/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_765/addAddV2$while/lstm_cell_765/MatMul:product:0&while/lstm_cell_765/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_765/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_765_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_765/BiasAddBiasAddwhile/lstm_cell_765/add:z:02while/lstm_cell_765/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_765/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_765/splitSplit,while/lstm_cell_765/split/split_dim:output:0$while/lstm_cell_765/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_765/SigmoidSigmoid"while/lstm_cell_765/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_765/Sigmoid_1Sigmoid"while/lstm_cell_765/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_765/mulMul!while/lstm_cell_765/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_765/ReluRelu"while/lstm_cell_765/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_765/mul_1Mulwhile/lstm_cell_765/Sigmoid:y:0&while/lstm_cell_765/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_765/add_1AddV2while/lstm_cell_765/mul:z:0while/lstm_cell_765/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_765/Sigmoid_2Sigmoid"while/lstm_cell_765/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_765/Relu_1Reluwhile/lstm_cell_765/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_765/mul_2Mul!while/lstm_cell_765/Sigmoid_2:y:0(while/lstm_cell_765/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_765/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_765/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_765/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_765/BiasAdd/ReadVariableOp*^while/lstm_cell_765/MatMul/ReadVariableOp,^while/lstm_cell_765/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_765_biasadd_readvariableop_resource5while_lstm_cell_765_biasadd_readvariableop_resource_0"n
4while_lstm_cell_765_matmul_1_readvariableop_resource6while_lstm_cell_765_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_765_matmul_readvariableop_resource4while_lstm_cell_765_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_765/BiasAdd/ReadVariableOp*while/lstm_cell_765/BiasAdd/ReadVariableOp2V
)while/lstm_cell_765/MatMul/ReadVariableOp)while/lstm_cell_765/MatMul/ReadVariableOp2Z
+while/lstm_cell_765/MatMul_1/ReadVariableOp+while/lstm_cell_765/MatMul_1/ReadVariableOp: 
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
while_body_4698325
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_766_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_766_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_766_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_766_matmul_readvariableop_resource:	d?G
4while_lstm_cell_766_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_766_biasadd_readvariableop_resource:	???*while/lstm_cell_766/BiasAdd/ReadVariableOp?)while/lstm_cell_766/MatMul/ReadVariableOp?+while/lstm_cell_766/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_766/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_766_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_766/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_766/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_766/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_766_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_766/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_766/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_766/addAddV2$while/lstm_cell_766/MatMul:product:0&while/lstm_cell_766/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_766/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_766_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_766/BiasAddBiasAddwhile/lstm_cell_766/add:z:02while/lstm_cell_766/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_766/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_766/splitSplit,while/lstm_cell_766/split/split_dim:output:0$while/lstm_cell_766/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_766/SigmoidSigmoid"while/lstm_cell_766/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_766/Sigmoid_1Sigmoid"while/lstm_cell_766/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_766/mulMul!while/lstm_cell_766/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_766/ReluRelu"while/lstm_cell_766/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_766/mul_1Mulwhile/lstm_cell_766/Sigmoid:y:0&while/lstm_cell_766/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_766/add_1AddV2while/lstm_cell_766/mul:z:0while/lstm_cell_766/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_766/Sigmoid_2Sigmoid"while/lstm_cell_766/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_766/Relu_1Reluwhile/lstm_cell_766/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_766/mul_2Mul!while/lstm_cell_766/Sigmoid_2:y:0(while/lstm_cell_766/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_766/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_766/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_766/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_766/BiasAdd/ReadVariableOp*^while/lstm_cell_766/MatMul/ReadVariableOp,^while/lstm_cell_766/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_766_biasadd_readvariableop_resource5while_lstm_cell_766_biasadd_readvariableop_resource_0"n
4while_lstm_cell_766_matmul_1_readvariableop_resource6while_lstm_cell_766_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_766_matmul_readvariableop_resource4while_lstm_cell_766_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_766/BiasAdd/ReadVariableOp*while/lstm_cell_766/BiasAdd/ReadVariableOp2V
)while/lstm_cell_766/MatMul/ReadVariableOp)while/lstm_cell_766/MatMul/ReadVariableOp2Z
+while/lstm_cell_766/MatMul_1/ReadVariableOp+while/lstm_cell_766/MatMul_1/ReadVariableOp: 
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
J__inference_lstm_cell_765_layer_call_and_return_conditional_losses_4694362

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
while_cond_4698940
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4698940___redundant_placeholder05
1while_while_cond_4698940___redundant_placeholder15
1while_while_cond_4698940___redundant_placeholder25
1while_while_cond_4698940___redundant_placeholder3
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
lstm_766_while_cond_4697233.
*lstm_766_while_lstm_766_while_loop_counter4
0lstm_766_while_lstm_766_while_maximum_iterations
lstm_766_while_placeholder 
lstm_766_while_placeholder_1 
lstm_766_while_placeholder_2 
lstm_766_while_placeholder_30
,lstm_766_while_less_lstm_766_strided_slice_1G
Clstm_766_while_lstm_766_while_cond_4697233___redundant_placeholder0G
Clstm_766_while_lstm_766_while_cond_4697233___redundant_placeholder1G
Clstm_766_while_lstm_766_while_cond_4697233___redundant_placeholder2G
Clstm_766_while_lstm_766_while_cond_4697233___redundant_placeholder3
lstm_766_while_identity
?
lstm_766/while/LessLesslstm_766_while_placeholder,lstm_766_while_less_lstm_766_strided_slice_1*
T0*
_output_shapes
: ]
lstm_766/while/IdentityIdentitylstm_766/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_766_while_identity lstm_766/while/Identity:output:0*(
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
+__inference_dense_255_layer_call_fn_4699320

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
F__inference_dense_255_layer_call_and_return_conditional_losses_4695812o
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
?
?
K__inference_sequential_255_layer_call_and_return_conditional_losses_4695819

inputs#
lstm_765_4695495:	?#
lstm_765_4695497:	d?
lstm_765_4695499:	?#
lstm_766_4695645:	d?#
lstm_766_4695647:	2?
lstm_766_4695649:	?"
lstm_767_4695795:2("
lstm_767_4695797:
(
lstm_767_4695799:(#
dense_255_4695813:

dense_255_4695815:
identity??!dense_255/StatefulPartitionedCall? lstm_765/StatefulPartitionedCall? lstm_766/StatefulPartitionedCall? lstm_767/StatefulPartitionedCall?
 lstm_765/StatefulPartitionedCallStatefulPartitionedCallinputslstm_765_4695495lstm_765_4695497lstm_765_4695499*
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
E__inference_lstm_765_layer_call_and_return_conditional_losses_4695494?
 lstm_766/StatefulPartitionedCallStatefulPartitionedCall)lstm_765/StatefulPartitionedCall:output:0lstm_766_4695645lstm_766_4695647lstm_766_4695649*
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
E__inference_lstm_766_layer_call_and_return_conditional_losses_4695644?
 lstm_767/StatefulPartitionedCallStatefulPartitionedCall)lstm_766/StatefulPartitionedCall:output:0lstm_767_4695795lstm_767_4695797lstm_767_4695799*
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
E__inference_lstm_767_layer_call_and_return_conditional_losses_4695794?
!dense_255/StatefulPartitionedCallStatefulPartitionedCall)lstm_767/StatefulPartitionedCall:output:0dense_255_4695813dense_255_4695815*
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
F__inference_dense_255_layer_call_and_return_conditional_losses_4695812y
IdentityIdentity*dense_255/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_255/StatefulPartitionedCall!^lstm_765/StatefulPartitionedCall!^lstm_766/StatefulPartitionedCall!^lstm_767/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_255/StatefulPartitionedCall!dense_255/StatefulPartitionedCall2D
 lstm_765/StatefulPartitionedCall lstm_765/StatefulPartitionedCall2D
 lstm_766/StatefulPartitionedCall lstm_766/StatefulPartitionedCall2D
 lstm_767/StatefulPartitionedCall lstm_767/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
while_body_4695560
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_766_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_766_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_766_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_766_matmul_readvariableop_resource:	d?G
4while_lstm_cell_766_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_766_biasadd_readvariableop_resource:	???*while/lstm_cell_766/BiasAdd/ReadVariableOp?)while/lstm_cell_766/MatMul/ReadVariableOp?+while/lstm_cell_766/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_766/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_766_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_766/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_766/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_766/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_766_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_766/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_766/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_766/addAddV2$while/lstm_cell_766/MatMul:product:0&while/lstm_cell_766/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_766/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_766_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_766/BiasAddBiasAddwhile/lstm_cell_766/add:z:02while/lstm_cell_766/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_766/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_766/splitSplit,while/lstm_cell_766/split/split_dim:output:0$while/lstm_cell_766/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_766/SigmoidSigmoid"while/lstm_cell_766/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_766/Sigmoid_1Sigmoid"while/lstm_cell_766/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_766/mulMul!while/lstm_cell_766/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_766/ReluRelu"while/lstm_cell_766/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_766/mul_1Mulwhile/lstm_cell_766/Sigmoid:y:0&while/lstm_cell_766/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_766/add_1AddV2while/lstm_cell_766/mul:z:0while/lstm_cell_766/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_766/Sigmoid_2Sigmoid"while/lstm_cell_766/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_766/Relu_1Reluwhile/lstm_cell_766/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_766/mul_2Mul!while/lstm_cell_766/Sigmoid_2:y:0(while/lstm_cell_766/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_766/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_766/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_766/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_766/BiasAdd/ReadVariableOp*^while/lstm_cell_766/MatMul/ReadVariableOp,^while/lstm_cell_766/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_766_biasadd_readvariableop_resource5while_lstm_cell_766_biasadd_readvariableop_resource_0"n
4while_lstm_cell_766_matmul_1_readvariableop_resource6while_lstm_cell_766_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_766_matmul_readvariableop_resource4while_lstm_cell_766_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_766/BiasAdd/ReadVariableOp*while/lstm_cell_766/BiasAdd/ReadVariableOp2V
)while/lstm_cell_766/MatMul/ReadVariableOp)while/lstm_cell_766/MatMul/ReadVariableOp2Z
+while/lstm_cell_766/MatMul_1/ReadVariableOp+while/lstm_cell_766/MatMul_1/ReadVariableOp: 
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
E__inference_lstm_766_layer_call_and_return_conditional_losses_4698266
inputs_0?
,lstm_cell_766_matmul_readvariableop_resource:	d?A
.lstm_cell_766_matmul_1_readvariableop_resource:	2?<
-lstm_cell_766_biasadd_readvariableop_resource:	?
identity??$lstm_cell_766/BiasAdd/ReadVariableOp?#lstm_cell_766/MatMul/ReadVariableOp?%lstm_cell_766/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_766/MatMul/ReadVariableOpReadVariableOp,lstm_cell_766_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_766/MatMulMatMulstrided_slice_2:output:0+lstm_cell_766/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_766/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_766_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_766/MatMul_1MatMulzeros:output:0-lstm_cell_766/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_766/addAddV2lstm_cell_766/MatMul:product:0 lstm_cell_766/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_766/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_766_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_766/BiasAddBiasAddlstm_cell_766/add:z:0,lstm_cell_766/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_766/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_766/splitSplit&lstm_cell_766/split/split_dim:output:0lstm_cell_766/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_766/SigmoidSigmoidlstm_cell_766/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_766/Sigmoid_1Sigmoidlstm_cell_766/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_766/mulMullstm_cell_766/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_766/ReluRelulstm_cell_766/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_766/mul_1Mullstm_cell_766/Sigmoid:y:0 lstm_cell_766/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_766/add_1AddV2lstm_cell_766/mul:z:0lstm_cell_766/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_766/Sigmoid_2Sigmoidlstm_cell_766/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_766/Relu_1Relulstm_cell_766/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_766/mul_2Mullstm_cell_766/Sigmoid_2:y:0"lstm_cell_766/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_766_matmul_readvariableop_resource.lstm_cell_766_matmul_1_readvariableop_resource-lstm_cell_766_biasadd_readvariableop_resource*
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
while_body_4698182*
condR
while_cond_4698181*K
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
NoOpNoOp%^lstm_cell_766/BiasAdd/ReadVariableOp$^lstm_cell_766/MatMul/ReadVariableOp&^lstm_cell_766/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_766/BiasAdd/ReadVariableOp$lstm_cell_766/BiasAdd/ReadVariableOp2J
#lstm_cell_766/MatMul/ReadVariableOp#lstm_cell_766/MatMul/ReadVariableOp2N
%lstm_cell_766/MatMul_1/ReadVariableOp%lstm_cell_766/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?
?
while_cond_4699083
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4699083___redundant_placeholder05
1while_while_cond_4699083___redundant_placeholder15
1while_while_cond_4699083___redundant_placeholder25
1while_while_cond_4699083___redundant_placeholder3
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
while_cond_4695559
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4695559___redundant_placeholder05
1while_while_cond_4695559___redundant_placeholder15
1while_while_cond_4695559___redundant_placeholder25
1while_while_cond_4695559___redundant_placeholder3
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

lstm_766_while_body_4696807.
*lstm_766_while_lstm_766_while_loop_counter4
0lstm_766_while_lstm_766_while_maximum_iterations
lstm_766_while_placeholder 
lstm_766_while_placeholder_1 
lstm_766_while_placeholder_2 
lstm_766_while_placeholder_3-
)lstm_766_while_lstm_766_strided_slice_1_0i
elstm_766_while_tensorarrayv2read_tensorlistgetitem_lstm_766_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_766_while_lstm_cell_766_matmul_readvariableop_resource_0:	d?R
?lstm_766_while_lstm_cell_766_matmul_1_readvariableop_resource_0:	2?M
>lstm_766_while_lstm_cell_766_biasadd_readvariableop_resource_0:	?
lstm_766_while_identity
lstm_766_while_identity_1
lstm_766_while_identity_2
lstm_766_while_identity_3
lstm_766_while_identity_4
lstm_766_while_identity_5+
'lstm_766_while_lstm_766_strided_slice_1g
clstm_766_while_tensorarrayv2read_tensorlistgetitem_lstm_766_tensorarrayunstack_tensorlistfromtensorN
;lstm_766_while_lstm_cell_766_matmul_readvariableop_resource:	d?P
=lstm_766_while_lstm_cell_766_matmul_1_readvariableop_resource:	2?K
<lstm_766_while_lstm_cell_766_biasadd_readvariableop_resource:	???3lstm_766/while/lstm_cell_766/BiasAdd/ReadVariableOp?2lstm_766/while/lstm_cell_766/MatMul/ReadVariableOp?4lstm_766/while/lstm_cell_766/MatMul_1/ReadVariableOp?
@lstm_766/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_766/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_766_while_tensorarrayv2read_tensorlistgetitem_lstm_766_tensorarrayunstack_tensorlistfromtensor_0lstm_766_while_placeholderIlstm_766/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_766/while/lstm_cell_766/MatMul/ReadVariableOpReadVariableOp=lstm_766_while_lstm_cell_766_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_766/while/lstm_cell_766/MatMulMatMul9lstm_766/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_766/while/lstm_cell_766/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_766/while/lstm_cell_766/MatMul_1/ReadVariableOpReadVariableOp?lstm_766_while_lstm_cell_766_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_766/while/lstm_cell_766/MatMul_1MatMullstm_766_while_placeholder_2<lstm_766/while/lstm_cell_766/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_766/while/lstm_cell_766/addAddV2-lstm_766/while/lstm_cell_766/MatMul:product:0/lstm_766/while/lstm_cell_766/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_766/while/lstm_cell_766/BiasAdd/ReadVariableOpReadVariableOp>lstm_766_while_lstm_cell_766_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_766/while/lstm_cell_766/BiasAddBiasAdd$lstm_766/while/lstm_cell_766/add:z:0;lstm_766/while/lstm_cell_766/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_766/while/lstm_cell_766/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_766/while/lstm_cell_766/splitSplit5lstm_766/while/lstm_cell_766/split/split_dim:output:0-lstm_766/while/lstm_cell_766/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_766/while/lstm_cell_766/SigmoidSigmoid+lstm_766/while/lstm_cell_766/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_766/while/lstm_cell_766/Sigmoid_1Sigmoid+lstm_766/while/lstm_cell_766/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_766/while/lstm_cell_766/mulMul*lstm_766/while/lstm_cell_766/Sigmoid_1:y:0lstm_766_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_766/while/lstm_cell_766/ReluRelu+lstm_766/while/lstm_cell_766/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_766/while/lstm_cell_766/mul_1Mul(lstm_766/while/lstm_cell_766/Sigmoid:y:0/lstm_766/while/lstm_cell_766/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_766/while/lstm_cell_766/add_1AddV2$lstm_766/while/lstm_cell_766/mul:z:0&lstm_766/while/lstm_cell_766/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_766/while/lstm_cell_766/Sigmoid_2Sigmoid+lstm_766/while/lstm_cell_766/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_766/while/lstm_cell_766/Relu_1Relu&lstm_766/while/lstm_cell_766/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_766/while/lstm_cell_766/mul_2Mul*lstm_766/while/lstm_cell_766/Sigmoid_2:y:01lstm_766/while/lstm_cell_766/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_766/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_766_while_placeholder_1lstm_766_while_placeholder&lstm_766/while/lstm_cell_766/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_766/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_766/while/addAddV2lstm_766_while_placeholderlstm_766/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_766/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_766/while/add_1AddV2*lstm_766_while_lstm_766_while_loop_counterlstm_766/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_766/while/IdentityIdentitylstm_766/while/add_1:z:0^lstm_766/while/NoOp*
T0*
_output_shapes
: ?
lstm_766/while/Identity_1Identity0lstm_766_while_lstm_766_while_maximum_iterations^lstm_766/while/NoOp*
T0*
_output_shapes
: t
lstm_766/while/Identity_2Identitylstm_766/while/add:z:0^lstm_766/while/NoOp*
T0*
_output_shapes
: ?
lstm_766/while/Identity_3IdentityClstm_766/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_766/while/NoOp*
T0*
_output_shapes
: ?
lstm_766/while/Identity_4Identity&lstm_766/while/lstm_cell_766/mul_2:z:0^lstm_766/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_766/while/Identity_5Identity&lstm_766/while/lstm_cell_766/add_1:z:0^lstm_766/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_766/while/NoOpNoOp4^lstm_766/while/lstm_cell_766/BiasAdd/ReadVariableOp3^lstm_766/while/lstm_cell_766/MatMul/ReadVariableOp5^lstm_766/while/lstm_cell_766/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_766_while_identity lstm_766/while/Identity:output:0"?
lstm_766_while_identity_1"lstm_766/while/Identity_1:output:0"?
lstm_766_while_identity_2"lstm_766/while/Identity_2:output:0"?
lstm_766_while_identity_3"lstm_766/while/Identity_3:output:0"?
lstm_766_while_identity_4"lstm_766/while/Identity_4:output:0"?
lstm_766_while_identity_5"lstm_766/while/Identity_5:output:0"T
'lstm_766_while_lstm_766_strided_slice_1)lstm_766_while_lstm_766_strided_slice_1_0"~
<lstm_766_while_lstm_cell_766_biasadd_readvariableop_resource>lstm_766_while_lstm_cell_766_biasadd_readvariableop_resource_0"?
=lstm_766_while_lstm_cell_766_matmul_1_readvariableop_resource?lstm_766_while_lstm_cell_766_matmul_1_readvariableop_resource_0"|
;lstm_766_while_lstm_cell_766_matmul_readvariableop_resource=lstm_766_while_lstm_cell_766_matmul_readvariableop_resource_0"?
clstm_766_while_tensorarrayv2read_tensorlistgetitem_lstm_766_tensorarrayunstack_tensorlistfromtensorelstm_766_while_tensorarrayv2read_tensorlistgetitem_lstm_766_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_766/while/lstm_cell_766/BiasAdd/ReadVariableOp3lstm_766/while/lstm_cell_766/BiasAdd/ReadVariableOp2h
2lstm_766/while/lstm_cell_766/MatMul/ReadVariableOp2lstm_766/while/lstm_cell_766/MatMul/ReadVariableOp2l
4lstm_766/while/lstm_cell_766/MatMul_1/ReadVariableOp4lstm_766/while/lstm_cell_766/MatMul_1/ReadVariableOp: 
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
while_body_4695076
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_767_4695100_0:2(/
while_lstm_cell_767_4695102_0:
(+
while_lstm_cell_767_4695104_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_767_4695100:2(-
while_lstm_cell_767_4695102:
()
while_lstm_cell_767_4695104:(??+while/lstm_cell_767/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_767/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_767_4695100_0while_lstm_cell_767_4695102_0while_lstm_cell_767_4695104_0*
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
J__inference_lstm_cell_767_layer_call_and_return_conditional_losses_4695062?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_767/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_767/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_767/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_767/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_767_4695100while_lstm_cell_767_4695100_0"<
while_lstm_cell_767_4695102while_lstm_cell_767_4695102_0"<
while_lstm_cell_767_4695104while_lstm_cell_767_4695104_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_767/StatefulPartitionedCall+while/lstm_cell_767/StatefulPartitionedCall: 
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

lstm_765_while_body_4697095.
*lstm_765_while_lstm_765_while_loop_counter4
0lstm_765_while_lstm_765_while_maximum_iterations
lstm_765_while_placeholder 
lstm_765_while_placeholder_1 
lstm_765_while_placeholder_2 
lstm_765_while_placeholder_3-
)lstm_765_while_lstm_765_strided_slice_1_0i
elstm_765_while_tensorarrayv2read_tensorlistgetitem_lstm_765_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_765_while_lstm_cell_765_matmul_readvariableop_resource_0:	?R
?lstm_765_while_lstm_cell_765_matmul_1_readvariableop_resource_0:	d?M
>lstm_765_while_lstm_cell_765_biasadd_readvariableop_resource_0:	?
lstm_765_while_identity
lstm_765_while_identity_1
lstm_765_while_identity_2
lstm_765_while_identity_3
lstm_765_while_identity_4
lstm_765_while_identity_5+
'lstm_765_while_lstm_765_strided_slice_1g
clstm_765_while_tensorarrayv2read_tensorlistgetitem_lstm_765_tensorarrayunstack_tensorlistfromtensorN
;lstm_765_while_lstm_cell_765_matmul_readvariableop_resource:	?P
=lstm_765_while_lstm_cell_765_matmul_1_readvariableop_resource:	d?K
<lstm_765_while_lstm_cell_765_biasadd_readvariableop_resource:	???3lstm_765/while/lstm_cell_765/BiasAdd/ReadVariableOp?2lstm_765/while/lstm_cell_765/MatMul/ReadVariableOp?4lstm_765/while/lstm_cell_765/MatMul_1/ReadVariableOp?
@lstm_765/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_765/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_765_while_tensorarrayv2read_tensorlistgetitem_lstm_765_tensorarrayunstack_tensorlistfromtensor_0lstm_765_while_placeholderIlstm_765/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_765/while/lstm_cell_765/MatMul/ReadVariableOpReadVariableOp=lstm_765_while_lstm_cell_765_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_765/while/lstm_cell_765/MatMulMatMul9lstm_765/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_765/while/lstm_cell_765/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_765/while/lstm_cell_765/MatMul_1/ReadVariableOpReadVariableOp?lstm_765_while_lstm_cell_765_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_765/while/lstm_cell_765/MatMul_1MatMullstm_765_while_placeholder_2<lstm_765/while/lstm_cell_765/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_765/while/lstm_cell_765/addAddV2-lstm_765/while/lstm_cell_765/MatMul:product:0/lstm_765/while/lstm_cell_765/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_765/while/lstm_cell_765/BiasAdd/ReadVariableOpReadVariableOp>lstm_765_while_lstm_cell_765_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_765/while/lstm_cell_765/BiasAddBiasAdd$lstm_765/while/lstm_cell_765/add:z:0;lstm_765/while/lstm_cell_765/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_765/while/lstm_cell_765/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_765/while/lstm_cell_765/splitSplit5lstm_765/while/lstm_cell_765/split/split_dim:output:0-lstm_765/while/lstm_cell_765/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_765/while/lstm_cell_765/SigmoidSigmoid+lstm_765/while/lstm_cell_765/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_765/while/lstm_cell_765/Sigmoid_1Sigmoid+lstm_765/while/lstm_cell_765/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_765/while/lstm_cell_765/mulMul*lstm_765/while/lstm_cell_765/Sigmoid_1:y:0lstm_765_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_765/while/lstm_cell_765/ReluRelu+lstm_765/while/lstm_cell_765/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_765/while/lstm_cell_765/mul_1Mul(lstm_765/while/lstm_cell_765/Sigmoid:y:0/lstm_765/while/lstm_cell_765/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_765/while/lstm_cell_765/add_1AddV2$lstm_765/while/lstm_cell_765/mul:z:0&lstm_765/while/lstm_cell_765/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_765/while/lstm_cell_765/Sigmoid_2Sigmoid+lstm_765/while/lstm_cell_765/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_765/while/lstm_cell_765/Relu_1Relu&lstm_765/while/lstm_cell_765/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_765/while/lstm_cell_765/mul_2Mul*lstm_765/while/lstm_cell_765/Sigmoid_2:y:01lstm_765/while/lstm_cell_765/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_765/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_765_while_placeholder_1lstm_765_while_placeholder&lstm_765/while/lstm_cell_765/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_765/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_765/while/addAddV2lstm_765_while_placeholderlstm_765/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_765/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_765/while/add_1AddV2*lstm_765_while_lstm_765_while_loop_counterlstm_765/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_765/while/IdentityIdentitylstm_765/while/add_1:z:0^lstm_765/while/NoOp*
T0*
_output_shapes
: ?
lstm_765/while/Identity_1Identity0lstm_765_while_lstm_765_while_maximum_iterations^lstm_765/while/NoOp*
T0*
_output_shapes
: t
lstm_765/while/Identity_2Identitylstm_765/while/add:z:0^lstm_765/while/NoOp*
T0*
_output_shapes
: ?
lstm_765/while/Identity_3IdentityClstm_765/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_765/while/NoOp*
T0*
_output_shapes
: ?
lstm_765/while/Identity_4Identity&lstm_765/while/lstm_cell_765/mul_2:z:0^lstm_765/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_765/while/Identity_5Identity&lstm_765/while/lstm_cell_765/add_1:z:0^lstm_765/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_765/while/NoOpNoOp4^lstm_765/while/lstm_cell_765/BiasAdd/ReadVariableOp3^lstm_765/while/lstm_cell_765/MatMul/ReadVariableOp5^lstm_765/while/lstm_cell_765/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_765_while_identity lstm_765/while/Identity:output:0"?
lstm_765_while_identity_1"lstm_765/while/Identity_1:output:0"?
lstm_765_while_identity_2"lstm_765/while/Identity_2:output:0"?
lstm_765_while_identity_3"lstm_765/while/Identity_3:output:0"?
lstm_765_while_identity_4"lstm_765/while/Identity_4:output:0"?
lstm_765_while_identity_5"lstm_765/while/Identity_5:output:0"T
'lstm_765_while_lstm_765_strided_slice_1)lstm_765_while_lstm_765_strided_slice_1_0"~
<lstm_765_while_lstm_cell_765_biasadd_readvariableop_resource>lstm_765_while_lstm_cell_765_biasadd_readvariableop_resource_0"?
=lstm_765_while_lstm_cell_765_matmul_1_readvariableop_resource?lstm_765_while_lstm_cell_765_matmul_1_readvariableop_resource_0"|
;lstm_765_while_lstm_cell_765_matmul_readvariableop_resource=lstm_765_while_lstm_cell_765_matmul_readvariableop_resource_0"?
clstm_765_while_tensorarrayv2read_tensorlistgetitem_lstm_765_tensorarrayunstack_tensorlistfromtensorelstm_765_while_tensorarrayv2read_tensorlistgetitem_lstm_765_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_765/while/lstm_cell_765/BiasAdd/ReadVariableOp3lstm_765/while/lstm_cell_765/BiasAdd/ReadVariableOp2h
2lstm_765/while/lstm_cell_765/MatMul/ReadVariableOp2lstm_765/while/lstm_cell_765/MatMul/ReadVariableOp2l
4lstm_765/while/lstm_cell_765/MatMul_1/ReadVariableOp4lstm_765/while/lstm_cell_765/MatMul_1/ReadVariableOp: 
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
while_body_4697995
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_765_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_765_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_765_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_765_matmul_readvariableop_resource:	?G
4while_lstm_cell_765_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_765_biasadd_readvariableop_resource:	???*while/lstm_cell_765/BiasAdd/ReadVariableOp?)while/lstm_cell_765/MatMul/ReadVariableOp?+while/lstm_cell_765/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_765/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_765_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_765/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_765/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_765/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_765_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_765/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_765/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_765/addAddV2$while/lstm_cell_765/MatMul:product:0&while/lstm_cell_765/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_765/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_765_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_765/BiasAddBiasAddwhile/lstm_cell_765/add:z:02while/lstm_cell_765/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_765/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_765/splitSplit,while/lstm_cell_765/split/split_dim:output:0$while/lstm_cell_765/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_765/SigmoidSigmoid"while/lstm_cell_765/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_765/Sigmoid_1Sigmoid"while/lstm_cell_765/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_765/mulMul!while/lstm_cell_765/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_765/ReluRelu"while/lstm_cell_765/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_765/mul_1Mulwhile/lstm_cell_765/Sigmoid:y:0&while/lstm_cell_765/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_765/add_1AddV2while/lstm_cell_765/mul:z:0while/lstm_cell_765/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_765/Sigmoid_2Sigmoid"while/lstm_cell_765/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_765/Relu_1Reluwhile/lstm_cell_765/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_765/mul_2Mul!while/lstm_cell_765/Sigmoid_2:y:0(while/lstm_cell_765/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_765/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_765/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_765/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_765/BiasAdd/ReadVariableOp*^while/lstm_cell_765/MatMul/ReadVariableOp,^while/lstm_cell_765/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_765_biasadd_readvariableop_resource5while_lstm_cell_765_biasadd_readvariableop_resource_0"n
4while_lstm_cell_765_matmul_1_readvariableop_resource6while_lstm_cell_765_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_765_matmul_readvariableop_resource4while_lstm_cell_765_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_765/BiasAdd/ReadVariableOp*while/lstm_cell_765/BiasAdd/ReadVariableOp2V
)while/lstm_cell_765/MatMul/ReadVariableOp)while/lstm_cell_765/MatMul/ReadVariableOp2Z
+while/lstm_cell_765/MatMul_1/ReadVariableOp+while/lstm_cell_765/MatMul_1/ReadVariableOp: 
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
?
*sequential_255_lstm_767_while_cond_4694204L
Hsequential_255_lstm_767_while_sequential_255_lstm_767_while_loop_counterR
Nsequential_255_lstm_767_while_sequential_255_lstm_767_while_maximum_iterations-
)sequential_255_lstm_767_while_placeholder/
+sequential_255_lstm_767_while_placeholder_1/
+sequential_255_lstm_767_while_placeholder_2/
+sequential_255_lstm_767_while_placeholder_3N
Jsequential_255_lstm_767_while_less_sequential_255_lstm_767_strided_slice_1e
asequential_255_lstm_767_while_sequential_255_lstm_767_while_cond_4694204___redundant_placeholder0e
asequential_255_lstm_767_while_sequential_255_lstm_767_while_cond_4694204___redundant_placeholder1e
asequential_255_lstm_767_while_sequential_255_lstm_767_while_cond_4694204___redundant_placeholder2e
asequential_255_lstm_767_while_sequential_255_lstm_767_while_cond_4694204___redundant_placeholder3*
&sequential_255_lstm_767_while_identity
?
"sequential_255/lstm_767/while/LessLess)sequential_255_lstm_767_while_placeholderJsequential_255_lstm_767_while_less_sequential_255_lstm_767_strided_slice_1*
T0*
_output_shapes
: {
&sequential_255/lstm_767/while/IdentityIdentity&sequential_255/lstm_767/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_255_lstm_767_while_identity/sequential_255/lstm_767/while/Identity:output:0*(
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
E__inference_lstm_766_layer_call_and_return_conditional_losses_4694986

inputs(
lstm_cell_766_4694904:	d?(
lstm_cell_766_4694906:	2?$
lstm_cell_766_4694908:	?
identity??%lstm_cell_766/StatefulPartitionedCall?while;
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
%lstm_cell_766/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_766_4694904lstm_cell_766_4694906lstm_cell_766_4694908*
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
J__inference_lstm_cell_766_layer_call_and_return_conditional_losses_4694858n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_766_4694904lstm_cell_766_4694906lstm_cell_766_4694908*
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
while_body_4694917*
condR
while_cond_4694916*K
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
NoOpNoOp&^lstm_cell_766/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_766/StatefulPartitionedCall%lstm_cell_766/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?#
?
while_body_4694567
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_765_4694591_0:	?0
while_lstm_cell_765_4694593_0:	d?,
while_lstm_cell_765_4694595_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_765_4694591:	?.
while_lstm_cell_765_4694593:	d?*
while_lstm_cell_765_4694595:	???+while/lstm_cell_765/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_765/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_765_4694591_0while_lstm_cell_765_4694593_0while_lstm_cell_765_4694595_0*
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
J__inference_lstm_cell_765_layer_call_and_return_conditional_losses_4694508?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_765/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_765/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_765/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_765/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_765_4694591while_lstm_cell_765_4694591_0"<
while_lstm_cell_765_4694593while_lstm_cell_765_4694593_0"<
while_lstm_cell_765_4694595while_lstm_cell_765_4694595_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_765/StatefulPartitionedCall+while/lstm_cell_765/StatefulPartitionedCall: 
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
while_cond_4697708
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4697708___redundant_placeholder05
1while_while_cond_4697708___redundant_placeholder15
1while_while_cond_4697708___redundant_placeholder25
1while_while_cond_4697708___redundant_placeholder3
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
lstm_767_while_cond_4696945.
*lstm_767_while_lstm_767_while_loop_counter4
0lstm_767_while_lstm_767_while_maximum_iterations
lstm_767_while_placeholder 
lstm_767_while_placeholder_1 
lstm_767_while_placeholder_2 
lstm_767_while_placeholder_30
,lstm_767_while_less_lstm_767_strided_slice_1G
Clstm_767_while_lstm_767_while_cond_4696945___redundant_placeholder0G
Clstm_767_while_lstm_767_while_cond_4696945___redundant_placeholder1G
Clstm_767_while_lstm_767_while_cond_4696945___redundant_placeholder2G
Clstm_767_while_lstm_767_while_cond_4696945___redundant_placeholder3
lstm_767_while_identity
?
lstm_767/while/LessLesslstm_767_while_placeholder,lstm_767_while_less_lstm_767_strided_slice_1*
T0*
_output_shapes
: ]
lstm_767/while/IdentityIdentitylstm_767/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_767_while_identity lstm_767/while/Identity:output:0*(
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
while_cond_4696255
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4696255___redundant_placeholder05
1while_while_cond_4696255___redundant_placeholder15
1while_while_cond_4696255___redundant_placeholder25
1while_while_cond_4696255___redundant_placeholder3
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
J__inference_lstm_cell_765_layer_call_and_return_conditional_losses_4699428

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
?#
?
while_body_4694917
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_766_4694941_0:	d?0
while_lstm_cell_766_4694943_0:	2?,
while_lstm_cell_766_4694945_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_766_4694941:	d?.
while_lstm_cell_766_4694943:	2?*
while_lstm_cell_766_4694945:	???+while/lstm_cell_766/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_766/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_766_4694941_0while_lstm_cell_766_4694943_0while_lstm_cell_766_4694945_0*
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
J__inference_lstm_cell_766_layer_call_and_return_conditional_losses_4694858?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_766/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_766/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_766/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_766/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_766_4694941while_lstm_cell_766_4694941_0"<
while_lstm_cell_766_4694943while_lstm_cell_766_4694943_0"<
while_lstm_cell_766_4694945while_lstm_cell_766_4694945_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_766/StatefulPartitionedCall+while/lstm_cell_766/StatefulPartitionedCall: 
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
while_body_4698182
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_766_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_766_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_766_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_766_matmul_readvariableop_resource:	d?G
4while_lstm_cell_766_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_766_biasadd_readvariableop_resource:	???*while/lstm_cell_766/BiasAdd/ReadVariableOp?)while/lstm_cell_766/MatMul/ReadVariableOp?+while/lstm_cell_766/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_766/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_766_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_766/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_766/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_766/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_766_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_766/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_766/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_766/addAddV2$while/lstm_cell_766/MatMul:product:0&while/lstm_cell_766/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_766/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_766_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_766/BiasAddBiasAddwhile/lstm_cell_766/add:z:02while/lstm_cell_766/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_766/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_766/splitSplit,while/lstm_cell_766/split/split_dim:output:0$while/lstm_cell_766/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_766/SigmoidSigmoid"while/lstm_cell_766/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_766/Sigmoid_1Sigmoid"while/lstm_cell_766/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_766/mulMul!while/lstm_cell_766/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_766/ReluRelu"while/lstm_cell_766/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_766/mul_1Mulwhile/lstm_cell_766/Sigmoid:y:0&while/lstm_cell_766/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_766/add_1AddV2while/lstm_cell_766/mul:z:0while/lstm_cell_766/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_766/Sigmoid_2Sigmoid"while/lstm_cell_766/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_766/Relu_1Reluwhile/lstm_cell_766/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_766/mul_2Mul!while/lstm_cell_766/Sigmoid_2:y:0(while/lstm_cell_766/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_766/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_766/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_766/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_766/BiasAdd/ReadVariableOp*^while/lstm_cell_766/MatMul/ReadVariableOp,^while/lstm_cell_766/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_766_biasadd_readvariableop_resource5while_lstm_cell_766_biasadd_readvariableop_resource_0"n
4while_lstm_cell_766_matmul_1_readvariableop_resource6while_lstm_cell_766_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_766_matmul_readvariableop_resource4while_lstm_cell_766_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_766/BiasAdd/ReadVariableOp*while/lstm_cell_766/BiasAdd/ReadVariableOp2V
)while/lstm_cell_766/MatMul/ReadVariableOp)while/lstm_cell_766/MatMul/ReadVariableOp2Z
+while/lstm_cell_766/MatMul_1/ReadVariableOp+while/lstm_cell_766/MatMul_1/ReadVariableOp: 
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
/__inference_lstm_cell_767_layer_call_fn_4699543

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
J__inference_lstm_cell_767_layer_call_and_return_conditional_losses_4695062o
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
?
*__inference_lstm_766_layer_call_fn_4698090
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
E__inference_lstm_766_layer_call_and_return_conditional_losses_4694795|
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
?8
?
E__inference_lstm_767_layer_call_and_return_conditional_losses_4695145

inputs'
lstm_cell_767_4695063:2('
lstm_cell_767_4695065:
(#
lstm_cell_767_4695067:(
identity??%lstm_cell_767/StatefulPartitionedCall?while;
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
%lstm_cell_767/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_767_4695063lstm_cell_767_4695065lstm_cell_767_4695067*
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
J__inference_lstm_cell_767_layer_call_and_return_conditional_losses_4695062n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_767_4695063lstm_cell_767_4695065lstm_cell_767_4695067*
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
while_body_4695076*
condR
while_cond_4695075*K
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
NoOpNoOp&^lstm_cell_767/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_767/StatefulPartitionedCall%lstm_cell_767/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?
?
*__inference_lstm_766_layer_call_fn_4698123

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
E__inference_lstm_766_layer_call_and_return_conditional_losses_4696175s
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
E__inference_lstm_765_layer_call_and_return_conditional_losses_4697650
inputs_0?
,lstm_cell_765_matmul_readvariableop_resource:	?A
.lstm_cell_765_matmul_1_readvariableop_resource:	d?<
-lstm_cell_765_biasadd_readvariableop_resource:	?
identity??$lstm_cell_765/BiasAdd/ReadVariableOp?#lstm_cell_765/MatMul/ReadVariableOp?%lstm_cell_765/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_765/MatMul/ReadVariableOpReadVariableOp,lstm_cell_765_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_765/MatMulMatMulstrided_slice_2:output:0+lstm_cell_765/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_765/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_765_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_765/MatMul_1MatMulzeros:output:0-lstm_cell_765/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_765/addAddV2lstm_cell_765/MatMul:product:0 lstm_cell_765/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_765/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_765_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_765/BiasAddBiasAddlstm_cell_765/add:z:0,lstm_cell_765/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_765/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_765/splitSplit&lstm_cell_765/split/split_dim:output:0lstm_cell_765/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_765/SigmoidSigmoidlstm_cell_765/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_765/Sigmoid_1Sigmoidlstm_cell_765/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_765/mulMullstm_cell_765/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_765/ReluRelulstm_cell_765/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_765/mul_1Mullstm_cell_765/Sigmoid:y:0 lstm_cell_765/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_765/add_1AddV2lstm_cell_765/mul:z:0lstm_cell_765/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_765/Sigmoid_2Sigmoidlstm_cell_765/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_765/Relu_1Relulstm_cell_765/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_765/mul_2Mullstm_cell_765/Sigmoid_2:y:0"lstm_cell_765/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_765_matmul_readvariableop_resource.lstm_cell_765_matmul_1_readvariableop_resource-lstm_cell_765_biasadd_readvariableop_resource*
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
while_body_4697566*
condR
while_cond_4697565*K
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
NoOpNoOp%^lstm_cell_765/BiasAdd/ReadVariableOp$^lstm_cell_765/MatMul/ReadVariableOp&^lstm_cell_765/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_765/BiasAdd/ReadVariableOp$lstm_cell_765/BiasAdd/ReadVariableOp2J
#lstm_cell_765/MatMul/ReadVariableOp#lstm_cell_765/MatMul/ReadVariableOp2N
%lstm_cell_765/MatMul_1/ReadVariableOp%lstm_cell_765/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
while_cond_4698324
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4698324___redundant_placeholder05
1while_while_cond_4698324___redundant_placeholder15
1while_while_cond_4698324___redundant_placeholder25
1while_while_cond_4698324___redundant_placeholder3
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
*__inference_lstm_767_layer_call_fn_4698717
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
E__inference_lstm_767_layer_call_and_return_conditional_losses_4695336o
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
??
?
K__inference_sequential_255_layer_call_and_return_conditional_losses_4697036

inputsH
5lstm_765_lstm_cell_765_matmul_readvariableop_resource:	?J
7lstm_765_lstm_cell_765_matmul_1_readvariableop_resource:	d?E
6lstm_765_lstm_cell_765_biasadd_readvariableop_resource:	?H
5lstm_766_lstm_cell_766_matmul_readvariableop_resource:	d?J
7lstm_766_lstm_cell_766_matmul_1_readvariableop_resource:	2?E
6lstm_766_lstm_cell_766_biasadd_readvariableop_resource:	?G
5lstm_767_lstm_cell_767_matmul_readvariableop_resource:2(I
7lstm_767_lstm_cell_767_matmul_1_readvariableop_resource:
(D
6lstm_767_lstm_cell_767_biasadd_readvariableop_resource:(:
(dense_255_matmul_readvariableop_resource:
7
)dense_255_biasadd_readvariableop_resource:
identity?? dense_255/BiasAdd/ReadVariableOp?dense_255/MatMul/ReadVariableOp?-lstm_765/lstm_cell_765/BiasAdd/ReadVariableOp?,lstm_765/lstm_cell_765/MatMul/ReadVariableOp?.lstm_765/lstm_cell_765/MatMul_1/ReadVariableOp?lstm_765/while?-lstm_766/lstm_cell_766/BiasAdd/ReadVariableOp?,lstm_766/lstm_cell_766/MatMul/ReadVariableOp?.lstm_766/lstm_cell_766/MatMul_1/ReadVariableOp?lstm_766/while?-lstm_767/lstm_cell_767/BiasAdd/ReadVariableOp?,lstm_767/lstm_cell_767/MatMul/ReadVariableOp?.lstm_767/lstm_cell_767/MatMul_1/ReadVariableOp?lstm_767/whileD
lstm_765/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_765/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_765/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_765/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_765/strided_sliceStridedSlicelstm_765/Shape:output:0%lstm_765/strided_slice/stack:output:0'lstm_765/strided_slice/stack_1:output:0'lstm_765/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_765/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_765/zeros/packedPacklstm_765/strided_slice:output:0 lstm_765/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_765/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_765/zerosFilllstm_765/zeros/packed:output:0lstm_765/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_765/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_765/zeros_1/packedPacklstm_765/strided_slice:output:0"lstm_765/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_765/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_765/zeros_1Fill lstm_765/zeros_1/packed:output:0lstm_765/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_765/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_765/transpose	Transposeinputs lstm_765/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_765/Shape_1Shapelstm_765/transpose:y:0*
T0*
_output_shapes
:h
lstm_765/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_765/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_765/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_765/strided_slice_1StridedSlicelstm_765/Shape_1:output:0'lstm_765/strided_slice_1/stack:output:0)lstm_765/strided_slice_1/stack_1:output:0)lstm_765/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_765/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_765/TensorArrayV2TensorListReserve-lstm_765/TensorArrayV2/element_shape:output:0!lstm_765/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_765/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_765/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_765/transpose:y:0Glstm_765/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_765/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_765/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_765/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_765/strided_slice_2StridedSlicelstm_765/transpose:y:0'lstm_765/strided_slice_2/stack:output:0)lstm_765/strided_slice_2/stack_1:output:0)lstm_765/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_765/lstm_cell_765/MatMul/ReadVariableOpReadVariableOp5lstm_765_lstm_cell_765_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_765/lstm_cell_765/MatMulMatMul!lstm_765/strided_slice_2:output:04lstm_765/lstm_cell_765/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_765/lstm_cell_765/MatMul_1/ReadVariableOpReadVariableOp7lstm_765_lstm_cell_765_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_765/lstm_cell_765/MatMul_1MatMullstm_765/zeros:output:06lstm_765/lstm_cell_765/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_765/lstm_cell_765/addAddV2'lstm_765/lstm_cell_765/MatMul:product:0)lstm_765/lstm_cell_765/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_765/lstm_cell_765/BiasAdd/ReadVariableOpReadVariableOp6lstm_765_lstm_cell_765_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_765/lstm_cell_765/BiasAddBiasAddlstm_765/lstm_cell_765/add:z:05lstm_765/lstm_cell_765/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_765/lstm_cell_765/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_765/lstm_cell_765/splitSplit/lstm_765/lstm_cell_765/split/split_dim:output:0'lstm_765/lstm_cell_765/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_765/lstm_cell_765/SigmoidSigmoid%lstm_765/lstm_cell_765/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_765/lstm_cell_765/Sigmoid_1Sigmoid%lstm_765/lstm_cell_765/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_765/lstm_cell_765/mulMul$lstm_765/lstm_cell_765/Sigmoid_1:y:0lstm_765/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_765/lstm_cell_765/ReluRelu%lstm_765/lstm_cell_765/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_765/lstm_cell_765/mul_1Mul"lstm_765/lstm_cell_765/Sigmoid:y:0)lstm_765/lstm_cell_765/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_765/lstm_cell_765/add_1AddV2lstm_765/lstm_cell_765/mul:z:0 lstm_765/lstm_cell_765/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_765/lstm_cell_765/Sigmoid_2Sigmoid%lstm_765/lstm_cell_765/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_765/lstm_cell_765/Relu_1Relu lstm_765/lstm_cell_765/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_765/lstm_cell_765/mul_2Mul$lstm_765/lstm_cell_765/Sigmoid_2:y:0+lstm_765/lstm_cell_765/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_765/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_765/TensorArrayV2_1TensorListReserve/lstm_765/TensorArrayV2_1/element_shape:output:0!lstm_765/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_765/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_765/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_765/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_765/whileWhile$lstm_765/while/loop_counter:output:0*lstm_765/while/maximum_iterations:output:0lstm_765/time:output:0!lstm_765/TensorArrayV2_1:handle:0lstm_765/zeros:output:0lstm_765/zeros_1:output:0!lstm_765/strided_slice_1:output:0@lstm_765/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_765_lstm_cell_765_matmul_readvariableop_resource7lstm_765_lstm_cell_765_matmul_1_readvariableop_resource6lstm_765_lstm_cell_765_biasadd_readvariableop_resource*
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
lstm_765_while_body_4696668*'
condR
lstm_765_while_cond_4696667*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_765/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_765/TensorArrayV2Stack/TensorListStackTensorListStacklstm_765/while:output:3Blstm_765/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_765/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_765/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_765/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_765/strided_slice_3StridedSlice4lstm_765/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_765/strided_slice_3/stack:output:0)lstm_765/strided_slice_3/stack_1:output:0)lstm_765/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_765/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_765/transpose_1	Transpose4lstm_765/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_765/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_765/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_766/ShapeShapelstm_765/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_766/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_766/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_766/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_766/strided_sliceStridedSlicelstm_766/Shape:output:0%lstm_766/strided_slice/stack:output:0'lstm_766/strided_slice/stack_1:output:0'lstm_766/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_766/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_766/zeros/packedPacklstm_766/strided_slice:output:0 lstm_766/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_766/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_766/zerosFilllstm_766/zeros/packed:output:0lstm_766/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_766/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_766/zeros_1/packedPacklstm_766/strided_slice:output:0"lstm_766/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_766/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_766/zeros_1Fill lstm_766/zeros_1/packed:output:0lstm_766/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_766/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_766/transpose	Transposelstm_765/transpose_1:y:0 lstm_766/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_766/Shape_1Shapelstm_766/transpose:y:0*
T0*
_output_shapes
:h
lstm_766/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_766/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_766/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_766/strided_slice_1StridedSlicelstm_766/Shape_1:output:0'lstm_766/strided_slice_1/stack:output:0)lstm_766/strided_slice_1/stack_1:output:0)lstm_766/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_766/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_766/TensorArrayV2TensorListReserve-lstm_766/TensorArrayV2/element_shape:output:0!lstm_766/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_766/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_766/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_766/transpose:y:0Glstm_766/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_766/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_766/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_766/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_766/strided_slice_2StridedSlicelstm_766/transpose:y:0'lstm_766/strided_slice_2/stack:output:0)lstm_766/strided_slice_2/stack_1:output:0)lstm_766/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_766/lstm_cell_766/MatMul/ReadVariableOpReadVariableOp5lstm_766_lstm_cell_766_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_766/lstm_cell_766/MatMulMatMul!lstm_766/strided_slice_2:output:04lstm_766/lstm_cell_766/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_766/lstm_cell_766/MatMul_1/ReadVariableOpReadVariableOp7lstm_766_lstm_cell_766_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_766/lstm_cell_766/MatMul_1MatMullstm_766/zeros:output:06lstm_766/lstm_cell_766/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_766/lstm_cell_766/addAddV2'lstm_766/lstm_cell_766/MatMul:product:0)lstm_766/lstm_cell_766/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_766/lstm_cell_766/BiasAdd/ReadVariableOpReadVariableOp6lstm_766_lstm_cell_766_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_766/lstm_cell_766/BiasAddBiasAddlstm_766/lstm_cell_766/add:z:05lstm_766/lstm_cell_766/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_766/lstm_cell_766/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_766/lstm_cell_766/splitSplit/lstm_766/lstm_cell_766/split/split_dim:output:0'lstm_766/lstm_cell_766/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_766/lstm_cell_766/SigmoidSigmoid%lstm_766/lstm_cell_766/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_766/lstm_cell_766/Sigmoid_1Sigmoid%lstm_766/lstm_cell_766/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_766/lstm_cell_766/mulMul$lstm_766/lstm_cell_766/Sigmoid_1:y:0lstm_766/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_766/lstm_cell_766/ReluRelu%lstm_766/lstm_cell_766/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_766/lstm_cell_766/mul_1Mul"lstm_766/lstm_cell_766/Sigmoid:y:0)lstm_766/lstm_cell_766/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_766/lstm_cell_766/add_1AddV2lstm_766/lstm_cell_766/mul:z:0 lstm_766/lstm_cell_766/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_766/lstm_cell_766/Sigmoid_2Sigmoid%lstm_766/lstm_cell_766/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_766/lstm_cell_766/Relu_1Relu lstm_766/lstm_cell_766/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_766/lstm_cell_766/mul_2Mul$lstm_766/lstm_cell_766/Sigmoid_2:y:0+lstm_766/lstm_cell_766/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_766/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_766/TensorArrayV2_1TensorListReserve/lstm_766/TensorArrayV2_1/element_shape:output:0!lstm_766/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_766/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_766/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_766/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_766/whileWhile$lstm_766/while/loop_counter:output:0*lstm_766/while/maximum_iterations:output:0lstm_766/time:output:0!lstm_766/TensorArrayV2_1:handle:0lstm_766/zeros:output:0lstm_766/zeros_1:output:0!lstm_766/strided_slice_1:output:0@lstm_766/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_766_lstm_cell_766_matmul_readvariableop_resource7lstm_766_lstm_cell_766_matmul_1_readvariableop_resource6lstm_766_lstm_cell_766_biasadd_readvariableop_resource*
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
lstm_766_while_body_4696807*'
condR
lstm_766_while_cond_4696806*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_766/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_766/TensorArrayV2Stack/TensorListStackTensorListStacklstm_766/while:output:3Blstm_766/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_766/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_766/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_766/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_766/strided_slice_3StridedSlice4lstm_766/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_766/strided_slice_3/stack:output:0)lstm_766/strided_slice_3/stack_1:output:0)lstm_766/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_766/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_766/transpose_1	Transpose4lstm_766/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_766/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_766/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_767/ShapeShapelstm_766/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_767/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_767/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_767/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_767/strided_sliceStridedSlicelstm_767/Shape:output:0%lstm_767/strided_slice/stack:output:0'lstm_767/strided_slice/stack_1:output:0'lstm_767/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_767/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_767/zeros/packedPacklstm_767/strided_slice:output:0 lstm_767/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_767/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_767/zerosFilllstm_767/zeros/packed:output:0lstm_767/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_767/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_767/zeros_1/packedPacklstm_767/strided_slice:output:0"lstm_767/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_767/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_767/zeros_1Fill lstm_767/zeros_1/packed:output:0lstm_767/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_767/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_767/transpose	Transposelstm_766/transpose_1:y:0 lstm_767/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_767/Shape_1Shapelstm_767/transpose:y:0*
T0*
_output_shapes
:h
lstm_767/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_767/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_767/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_767/strided_slice_1StridedSlicelstm_767/Shape_1:output:0'lstm_767/strided_slice_1/stack:output:0)lstm_767/strided_slice_1/stack_1:output:0)lstm_767/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_767/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_767/TensorArrayV2TensorListReserve-lstm_767/TensorArrayV2/element_shape:output:0!lstm_767/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_767/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_767/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_767/transpose:y:0Glstm_767/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_767/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_767/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_767/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_767/strided_slice_2StridedSlicelstm_767/transpose:y:0'lstm_767/strided_slice_2/stack:output:0)lstm_767/strided_slice_2/stack_1:output:0)lstm_767/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_767/lstm_cell_767/MatMul/ReadVariableOpReadVariableOp5lstm_767_lstm_cell_767_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_767/lstm_cell_767/MatMulMatMul!lstm_767/strided_slice_2:output:04lstm_767/lstm_cell_767/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_767/lstm_cell_767/MatMul_1/ReadVariableOpReadVariableOp7lstm_767_lstm_cell_767_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_767/lstm_cell_767/MatMul_1MatMullstm_767/zeros:output:06lstm_767/lstm_cell_767/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_767/lstm_cell_767/addAddV2'lstm_767/lstm_cell_767/MatMul:product:0)lstm_767/lstm_cell_767/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_767/lstm_cell_767/BiasAdd/ReadVariableOpReadVariableOp6lstm_767_lstm_cell_767_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_767/lstm_cell_767/BiasAddBiasAddlstm_767/lstm_cell_767/add:z:05lstm_767/lstm_cell_767/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_767/lstm_cell_767/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_767/lstm_cell_767/splitSplit/lstm_767/lstm_cell_767/split/split_dim:output:0'lstm_767/lstm_cell_767/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_767/lstm_cell_767/SigmoidSigmoid%lstm_767/lstm_cell_767/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_767/lstm_cell_767/Sigmoid_1Sigmoid%lstm_767/lstm_cell_767/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_767/lstm_cell_767/mulMul$lstm_767/lstm_cell_767/Sigmoid_1:y:0lstm_767/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_767/lstm_cell_767/ReluRelu%lstm_767/lstm_cell_767/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_767/lstm_cell_767/mul_1Mul"lstm_767/lstm_cell_767/Sigmoid:y:0)lstm_767/lstm_cell_767/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_767/lstm_cell_767/add_1AddV2lstm_767/lstm_cell_767/mul:z:0 lstm_767/lstm_cell_767/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_767/lstm_cell_767/Sigmoid_2Sigmoid%lstm_767/lstm_cell_767/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_767/lstm_cell_767/Relu_1Relu lstm_767/lstm_cell_767/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_767/lstm_cell_767/mul_2Mul$lstm_767/lstm_cell_767/Sigmoid_2:y:0+lstm_767/lstm_cell_767/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_767/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_767/TensorArrayV2_1TensorListReserve/lstm_767/TensorArrayV2_1/element_shape:output:0!lstm_767/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_767/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_767/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_767/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_767/whileWhile$lstm_767/while/loop_counter:output:0*lstm_767/while/maximum_iterations:output:0lstm_767/time:output:0!lstm_767/TensorArrayV2_1:handle:0lstm_767/zeros:output:0lstm_767/zeros_1:output:0!lstm_767/strided_slice_1:output:0@lstm_767/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_767_lstm_cell_767_matmul_readvariableop_resource7lstm_767_lstm_cell_767_matmul_1_readvariableop_resource6lstm_767_lstm_cell_767_biasadd_readvariableop_resource*
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
lstm_767_while_body_4696946*'
condR
lstm_767_while_cond_4696945*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_767/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_767/TensorArrayV2Stack/TensorListStackTensorListStacklstm_767/while:output:3Blstm_767/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_767/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_767/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_767/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_767/strided_slice_3StridedSlice4lstm_767/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_767/strided_slice_3/stack:output:0)lstm_767/strided_slice_3/stack_1:output:0)lstm_767/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_767/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_767/transpose_1	Transpose4lstm_767/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_767/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_767/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_255/MatMul/ReadVariableOpReadVariableOp(dense_255_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_255/MatMulMatMul!lstm_767/strided_slice_3:output:0'dense_255/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_255/BiasAdd/ReadVariableOpReadVariableOp)dense_255_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_255/BiasAddBiasAdddense_255/MatMul:product:0(dense_255/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_255/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_255/BiasAdd/ReadVariableOp ^dense_255/MatMul/ReadVariableOp.^lstm_765/lstm_cell_765/BiasAdd/ReadVariableOp-^lstm_765/lstm_cell_765/MatMul/ReadVariableOp/^lstm_765/lstm_cell_765/MatMul_1/ReadVariableOp^lstm_765/while.^lstm_766/lstm_cell_766/BiasAdd/ReadVariableOp-^lstm_766/lstm_cell_766/MatMul/ReadVariableOp/^lstm_766/lstm_cell_766/MatMul_1/ReadVariableOp^lstm_766/while.^lstm_767/lstm_cell_767/BiasAdd/ReadVariableOp-^lstm_767/lstm_cell_767/MatMul/ReadVariableOp/^lstm_767/lstm_cell_767/MatMul_1/ReadVariableOp^lstm_767/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_255/BiasAdd/ReadVariableOp dense_255/BiasAdd/ReadVariableOp2B
dense_255/MatMul/ReadVariableOpdense_255/MatMul/ReadVariableOp2^
-lstm_765/lstm_cell_765/BiasAdd/ReadVariableOp-lstm_765/lstm_cell_765/BiasAdd/ReadVariableOp2\
,lstm_765/lstm_cell_765/MatMul/ReadVariableOp,lstm_765/lstm_cell_765/MatMul/ReadVariableOp2`
.lstm_765/lstm_cell_765/MatMul_1/ReadVariableOp.lstm_765/lstm_cell_765/MatMul_1/ReadVariableOp2 
lstm_765/whilelstm_765/while2^
-lstm_766/lstm_cell_766/BiasAdd/ReadVariableOp-lstm_766/lstm_cell_766/BiasAdd/ReadVariableOp2\
,lstm_766/lstm_cell_766/MatMul/ReadVariableOp,lstm_766/lstm_cell_766/MatMul/ReadVariableOp2`
.lstm_766/lstm_cell_766/MatMul_1/ReadVariableOp.lstm_766/lstm_cell_766/MatMul_1/ReadVariableOp2 
lstm_766/whilelstm_766/while2^
-lstm_767/lstm_cell_767/BiasAdd/ReadVariableOp-lstm_767/lstm_cell_767/BiasAdd/ReadVariableOp2\
,lstm_767/lstm_cell_767/MatMul/ReadVariableOp,lstm_767/lstm_cell_767/MatMul/ReadVariableOp2`
.lstm_767/lstm_cell_767/MatMul_1/ReadVariableOp.lstm_767/lstm_cell_767/MatMul_1/ReadVariableOp2 
lstm_767/whilelstm_767/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
while_body_4698941
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_767_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_767_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_767_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_767_matmul_readvariableop_resource:2(F
4while_lstm_cell_767_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_767_biasadd_readvariableop_resource:(??*while/lstm_cell_767/BiasAdd/ReadVariableOp?)while/lstm_cell_767/MatMul/ReadVariableOp?+while/lstm_cell_767/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_767/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_767_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_767/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_767/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_767/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_767_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_767/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_767/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_767/addAddV2$while/lstm_cell_767/MatMul:product:0&while/lstm_cell_767/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_767/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_767_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_767/BiasAddBiasAddwhile/lstm_cell_767/add:z:02while/lstm_cell_767/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_767/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_767/splitSplit,while/lstm_cell_767/split/split_dim:output:0$while/lstm_cell_767/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_767/SigmoidSigmoid"while/lstm_cell_767/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_767/Sigmoid_1Sigmoid"while/lstm_cell_767/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_767/mulMul!while/lstm_cell_767/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_767/ReluRelu"while/lstm_cell_767/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_767/mul_1Mulwhile/lstm_cell_767/Sigmoid:y:0&while/lstm_cell_767/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_767/add_1AddV2while/lstm_cell_767/mul:z:0while/lstm_cell_767/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_767/Sigmoid_2Sigmoid"while/lstm_cell_767/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_767/Relu_1Reluwhile/lstm_cell_767/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_767/mul_2Mul!while/lstm_cell_767/Sigmoid_2:y:0(while/lstm_cell_767/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_767/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_767/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_767/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_767/BiasAdd/ReadVariableOp*^while/lstm_cell_767/MatMul/ReadVariableOp,^while/lstm_cell_767/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_767_biasadd_readvariableop_resource5while_lstm_cell_767_biasadd_readvariableop_resource_0"n
4while_lstm_cell_767_matmul_1_readvariableop_resource6while_lstm_cell_767_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_767_matmul_readvariableop_resource4while_lstm_cell_767_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_767/BiasAdd/ReadVariableOp*while/lstm_cell_767/BiasAdd/ReadVariableOp2V
)while/lstm_cell_767/MatMul/ReadVariableOp)while/lstm_cell_767/MatMul/ReadVariableOp2Z
+while/lstm_cell_767/MatMul_1/ReadVariableOp+while/lstm_cell_767/MatMul_1/ReadVariableOp: 
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
??
?
K__inference_sequential_255_layer_call_and_return_conditional_losses_4697463

inputsH
5lstm_765_lstm_cell_765_matmul_readvariableop_resource:	?J
7lstm_765_lstm_cell_765_matmul_1_readvariableop_resource:	d?E
6lstm_765_lstm_cell_765_biasadd_readvariableop_resource:	?H
5lstm_766_lstm_cell_766_matmul_readvariableop_resource:	d?J
7lstm_766_lstm_cell_766_matmul_1_readvariableop_resource:	2?E
6lstm_766_lstm_cell_766_biasadd_readvariableop_resource:	?G
5lstm_767_lstm_cell_767_matmul_readvariableop_resource:2(I
7lstm_767_lstm_cell_767_matmul_1_readvariableop_resource:
(D
6lstm_767_lstm_cell_767_biasadd_readvariableop_resource:(:
(dense_255_matmul_readvariableop_resource:
7
)dense_255_biasadd_readvariableop_resource:
identity?? dense_255/BiasAdd/ReadVariableOp?dense_255/MatMul/ReadVariableOp?-lstm_765/lstm_cell_765/BiasAdd/ReadVariableOp?,lstm_765/lstm_cell_765/MatMul/ReadVariableOp?.lstm_765/lstm_cell_765/MatMul_1/ReadVariableOp?lstm_765/while?-lstm_766/lstm_cell_766/BiasAdd/ReadVariableOp?,lstm_766/lstm_cell_766/MatMul/ReadVariableOp?.lstm_766/lstm_cell_766/MatMul_1/ReadVariableOp?lstm_766/while?-lstm_767/lstm_cell_767/BiasAdd/ReadVariableOp?,lstm_767/lstm_cell_767/MatMul/ReadVariableOp?.lstm_767/lstm_cell_767/MatMul_1/ReadVariableOp?lstm_767/whileD
lstm_765/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_765/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_765/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_765/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_765/strided_sliceStridedSlicelstm_765/Shape:output:0%lstm_765/strided_slice/stack:output:0'lstm_765/strided_slice/stack_1:output:0'lstm_765/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_765/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_765/zeros/packedPacklstm_765/strided_slice:output:0 lstm_765/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_765/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_765/zerosFilllstm_765/zeros/packed:output:0lstm_765/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_765/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_765/zeros_1/packedPacklstm_765/strided_slice:output:0"lstm_765/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_765/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_765/zeros_1Fill lstm_765/zeros_1/packed:output:0lstm_765/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_765/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_765/transpose	Transposeinputs lstm_765/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_765/Shape_1Shapelstm_765/transpose:y:0*
T0*
_output_shapes
:h
lstm_765/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_765/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_765/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_765/strided_slice_1StridedSlicelstm_765/Shape_1:output:0'lstm_765/strided_slice_1/stack:output:0)lstm_765/strided_slice_1/stack_1:output:0)lstm_765/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_765/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_765/TensorArrayV2TensorListReserve-lstm_765/TensorArrayV2/element_shape:output:0!lstm_765/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_765/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_765/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_765/transpose:y:0Glstm_765/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_765/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_765/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_765/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_765/strided_slice_2StridedSlicelstm_765/transpose:y:0'lstm_765/strided_slice_2/stack:output:0)lstm_765/strided_slice_2/stack_1:output:0)lstm_765/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_765/lstm_cell_765/MatMul/ReadVariableOpReadVariableOp5lstm_765_lstm_cell_765_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_765/lstm_cell_765/MatMulMatMul!lstm_765/strided_slice_2:output:04lstm_765/lstm_cell_765/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_765/lstm_cell_765/MatMul_1/ReadVariableOpReadVariableOp7lstm_765_lstm_cell_765_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_765/lstm_cell_765/MatMul_1MatMullstm_765/zeros:output:06lstm_765/lstm_cell_765/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_765/lstm_cell_765/addAddV2'lstm_765/lstm_cell_765/MatMul:product:0)lstm_765/lstm_cell_765/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_765/lstm_cell_765/BiasAdd/ReadVariableOpReadVariableOp6lstm_765_lstm_cell_765_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_765/lstm_cell_765/BiasAddBiasAddlstm_765/lstm_cell_765/add:z:05lstm_765/lstm_cell_765/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_765/lstm_cell_765/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_765/lstm_cell_765/splitSplit/lstm_765/lstm_cell_765/split/split_dim:output:0'lstm_765/lstm_cell_765/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_765/lstm_cell_765/SigmoidSigmoid%lstm_765/lstm_cell_765/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_765/lstm_cell_765/Sigmoid_1Sigmoid%lstm_765/lstm_cell_765/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_765/lstm_cell_765/mulMul$lstm_765/lstm_cell_765/Sigmoid_1:y:0lstm_765/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_765/lstm_cell_765/ReluRelu%lstm_765/lstm_cell_765/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_765/lstm_cell_765/mul_1Mul"lstm_765/lstm_cell_765/Sigmoid:y:0)lstm_765/lstm_cell_765/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_765/lstm_cell_765/add_1AddV2lstm_765/lstm_cell_765/mul:z:0 lstm_765/lstm_cell_765/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_765/lstm_cell_765/Sigmoid_2Sigmoid%lstm_765/lstm_cell_765/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_765/lstm_cell_765/Relu_1Relu lstm_765/lstm_cell_765/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_765/lstm_cell_765/mul_2Mul$lstm_765/lstm_cell_765/Sigmoid_2:y:0+lstm_765/lstm_cell_765/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_765/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_765/TensorArrayV2_1TensorListReserve/lstm_765/TensorArrayV2_1/element_shape:output:0!lstm_765/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_765/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_765/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_765/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_765/whileWhile$lstm_765/while/loop_counter:output:0*lstm_765/while/maximum_iterations:output:0lstm_765/time:output:0!lstm_765/TensorArrayV2_1:handle:0lstm_765/zeros:output:0lstm_765/zeros_1:output:0!lstm_765/strided_slice_1:output:0@lstm_765/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_765_lstm_cell_765_matmul_readvariableop_resource7lstm_765_lstm_cell_765_matmul_1_readvariableop_resource6lstm_765_lstm_cell_765_biasadd_readvariableop_resource*
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
lstm_765_while_body_4697095*'
condR
lstm_765_while_cond_4697094*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_765/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_765/TensorArrayV2Stack/TensorListStackTensorListStacklstm_765/while:output:3Blstm_765/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_765/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_765/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_765/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_765/strided_slice_3StridedSlice4lstm_765/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_765/strided_slice_3/stack:output:0)lstm_765/strided_slice_3/stack_1:output:0)lstm_765/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_765/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_765/transpose_1	Transpose4lstm_765/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_765/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_765/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_766/ShapeShapelstm_765/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_766/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_766/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_766/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_766/strided_sliceStridedSlicelstm_766/Shape:output:0%lstm_766/strided_slice/stack:output:0'lstm_766/strided_slice/stack_1:output:0'lstm_766/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_766/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_766/zeros/packedPacklstm_766/strided_slice:output:0 lstm_766/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_766/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_766/zerosFilllstm_766/zeros/packed:output:0lstm_766/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_766/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_766/zeros_1/packedPacklstm_766/strided_slice:output:0"lstm_766/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_766/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_766/zeros_1Fill lstm_766/zeros_1/packed:output:0lstm_766/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_766/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_766/transpose	Transposelstm_765/transpose_1:y:0 lstm_766/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_766/Shape_1Shapelstm_766/transpose:y:0*
T0*
_output_shapes
:h
lstm_766/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_766/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_766/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_766/strided_slice_1StridedSlicelstm_766/Shape_1:output:0'lstm_766/strided_slice_1/stack:output:0)lstm_766/strided_slice_1/stack_1:output:0)lstm_766/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_766/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_766/TensorArrayV2TensorListReserve-lstm_766/TensorArrayV2/element_shape:output:0!lstm_766/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_766/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_766/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_766/transpose:y:0Glstm_766/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_766/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_766/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_766/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_766/strided_slice_2StridedSlicelstm_766/transpose:y:0'lstm_766/strided_slice_2/stack:output:0)lstm_766/strided_slice_2/stack_1:output:0)lstm_766/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_766/lstm_cell_766/MatMul/ReadVariableOpReadVariableOp5lstm_766_lstm_cell_766_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_766/lstm_cell_766/MatMulMatMul!lstm_766/strided_slice_2:output:04lstm_766/lstm_cell_766/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_766/lstm_cell_766/MatMul_1/ReadVariableOpReadVariableOp7lstm_766_lstm_cell_766_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_766/lstm_cell_766/MatMul_1MatMullstm_766/zeros:output:06lstm_766/lstm_cell_766/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_766/lstm_cell_766/addAddV2'lstm_766/lstm_cell_766/MatMul:product:0)lstm_766/lstm_cell_766/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_766/lstm_cell_766/BiasAdd/ReadVariableOpReadVariableOp6lstm_766_lstm_cell_766_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_766/lstm_cell_766/BiasAddBiasAddlstm_766/lstm_cell_766/add:z:05lstm_766/lstm_cell_766/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_766/lstm_cell_766/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_766/lstm_cell_766/splitSplit/lstm_766/lstm_cell_766/split/split_dim:output:0'lstm_766/lstm_cell_766/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_766/lstm_cell_766/SigmoidSigmoid%lstm_766/lstm_cell_766/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_766/lstm_cell_766/Sigmoid_1Sigmoid%lstm_766/lstm_cell_766/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_766/lstm_cell_766/mulMul$lstm_766/lstm_cell_766/Sigmoid_1:y:0lstm_766/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_766/lstm_cell_766/ReluRelu%lstm_766/lstm_cell_766/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_766/lstm_cell_766/mul_1Mul"lstm_766/lstm_cell_766/Sigmoid:y:0)lstm_766/lstm_cell_766/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_766/lstm_cell_766/add_1AddV2lstm_766/lstm_cell_766/mul:z:0 lstm_766/lstm_cell_766/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_766/lstm_cell_766/Sigmoid_2Sigmoid%lstm_766/lstm_cell_766/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_766/lstm_cell_766/Relu_1Relu lstm_766/lstm_cell_766/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_766/lstm_cell_766/mul_2Mul$lstm_766/lstm_cell_766/Sigmoid_2:y:0+lstm_766/lstm_cell_766/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_766/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_766/TensorArrayV2_1TensorListReserve/lstm_766/TensorArrayV2_1/element_shape:output:0!lstm_766/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_766/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_766/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_766/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_766/whileWhile$lstm_766/while/loop_counter:output:0*lstm_766/while/maximum_iterations:output:0lstm_766/time:output:0!lstm_766/TensorArrayV2_1:handle:0lstm_766/zeros:output:0lstm_766/zeros_1:output:0!lstm_766/strided_slice_1:output:0@lstm_766/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_766_lstm_cell_766_matmul_readvariableop_resource7lstm_766_lstm_cell_766_matmul_1_readvariableop_resource6lstm_766_lstm_cell_766_biasadd_readvariableop_resource*
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
lstm_766_while_body_4697234*'
condR
lstm_766_while_cond_4697233*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_766/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_766/TensorArrayV2Stack/TensorListStackTensorListStacklstm_766/while:output:3Blstm_766/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_766/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_766/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_766/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_766/strided_slice_3StridedSlice4lstm_766/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_766/strided_slice_3/stack:output:0)lstm_766/strided_slice_3/stack_1:output:0)lstm_766/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_766/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_766/transpose_1	Transpose4lstm_766/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_766/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_766/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_767/ShapeShapelstm_766/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_767/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_767/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_767/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_767/strided_sliceStridedSlicelstm_767/Shape:output:0%lstm_767/strided_slice/stack:output:0'lstm_767/strided_slice/stack_1:output:0'lstm_767/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_767/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_767/zeros/packedPacklstm_767/strided_slice:output:0 lstm_767/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_767/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_767/zerosFilllstm_767/zeros/packed:output:0lstm_767/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_767/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_767/zeros_1/packedPacklstm_767/strided_slice:output:0"lstm_767/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_767/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_767/zeros_1Fill lstm_767/zeros_1/packed:output:0lstm_767/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_767/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_767/transpose	Transposelstm_766/transpose_1:y:0 lstm_767/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_767/Shape_1Shapelstm_767/transpose:y:0*
T0*
_output_shapes
:h
lstm_767/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_767/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_767/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_767/strided_slice_1StridedSlicelstm_767/Shape_1:output:0'lstm_767/strided_slice_1/stack:output:0)lstm_767/strided_slice_1/stack_1:output:0)lstm_767/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_767/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_767/TensorArrayV2TensorListReserve-lstm_767/TensorArrayV2/element_shape:output:0!lstm_767/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_767/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_767/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_767/transpose:y:0Glstm_767/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_767/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_767/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_767/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_767/strided_slice_2StridedSlicelstm_767/transpose:y:0'lstm_767/strided_slice_2/stack:output:0)lstm_767/strided_slice_2/stack_1:output:0)lstm_767/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_767/lstm_cell_767/MatMul/ReadVariableOpReadVariableOp5lstm_767_lstm_cell_767_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_767/lstm_cell_767/MatMulMatMul!lstm_767/strided_slice_2:output:04lstm_767/lstm_cell_767/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_767/lstm_cell_767/MatMul_1/ReadVariableOpReadVariableOp7lstm_767_lstm_cell_767_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_767/lstm_cell_767/MatMul_1MatMullstm_767/zeros:output:06lstm_767/lstm_cell_767/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_767/lstm_cell_767/addAddV2'lstm_767/lstm_cell_767/MatMul:product:0)lstm_767/lstm_cell_767/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_767/lstm_cell_767/BiasAdd/ReadVariableOpReadVariableOp6lstm_767_lstm_cell_767_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_767/lstm_cell_767/BiasAddBiasAddlstm_767/lstm_cell_767/add:z:05lstm_767/lstm_cell_767/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_767/lstm_cell_767/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_767/lstm_cell_767/splitSplit/lstm_767/lstm_cell_767/split/split_dim:output:0'lstm_767/lstm_cell_767/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_767/lstm_cell_767/SigmoidSigmoid%lstm_767/lstm_cell_767/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_767/lstm_cell_767/Sigmoid_1Sigmoid%lstm_767/lstm_cell_767/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_767/lstm_cell_767/mulMul$lstm_767/lstm_cell_767/Sigmoid_1:y:0lstm_767/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_767/lstm_cell_767/ReluRelu%lstm_767/lstm_cell_767/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_767/lstm_cell_767/mul_1Mul"lstm_767/lstm_cell_767/Sigmoid:y:0)lstm_767/lstm_cell_767/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_767/lstm_cell_767/add_1AddV2lstm_767/lstm_cell_767/mul:z:0 lstm_767/lstm_cell_767/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_767/lstm_cell_767/Sigmoid_2Sigmoid%lstm_767/lstm_cell_767/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_767/lstm_cell_767/Relu_1Relu lstm_767/lstm_cell_767/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_767/lstm_cell_767/mul_2Mul$lstm_767/lstm_cell_767/Sigmoid_2:y:0+lstm_767/lstm_cell_767/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_767/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_767/TensorArrayV2_1TensorListReserve/lstm_767/TensorArrayV2_1/element_shape:output:0!lstm_767/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_767/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_767/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_767/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_767/whileWhile$lstm_767/while/loop_counter:output:0*lstm_767/while/maximum_iterations:output:0lstm_767/time:output:0!lstm_767/TensorArrayV2_1:handle:0lstm_767/zeros:output:0lstm_767/zeros_1:output:0!lstm_767/strided_slice_1:output:0@lstm_767/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_767_lstm_cell_767_matmul_readvariableop_resource7lstm_767_lstm_cell_767_matmul_1_readvariableop_resource6lstm_767_lstm_cell_767_biasadd_readvariableop_resource*
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
lstm_767_while_body_4697373*'
condR
lstm_767_while_cond_4697372*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_767/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_767/TensorArrayV2Stack/TensorListStackTensorListStacklstm_767/while:output:3Blstm_767/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_767/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_767/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_767/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_767/strided_slice_3StridedSlice4lstm_767/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_767/strided_slice_3/stack:output:0)lstm_767/strided_slice_3/stack_1:output:0)lstm_767/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_767/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_767/transpose_1	Transpose4lstm_767/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_767/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_767/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_255/MatMul/ReadVariableOpReadVariableOp(dense_255_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_255/MatMulMatMul!lstm_767/strided_slice_3:output:0'dense_255/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_255/BiasAdd/ReadVariableOpReadVariableOp)dense_255_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_255/BiasAddBiasAdddense_255/MatMul:product:0(dense_255/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_255/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_255/BiasAdd/ReadVariableOp ^dense_255/MatMul/ReadVariableOp.^lstm_765/lstm_cell_765/BiasAdd/ReadVariableOp-^lstm_765/lstm_cell_765/MatMul/ReadVariableOp/^lstm_765/lstm_cell_765/MatMul_1/ReadVariableOp^lstm_765/while.^lstm_766/lstm_cell_766/BiasAdd/ReadVariableOp-^lstm_766/lstm_cell_766/MatMul/ReadVariableOp/^lstm_766/lstm_cell_766/MatMul_1/ReadVariableOp^lstm_766/while.^lstm_767/lstm_cell_767/BiasAdd/ReadVariableOp-^lstm_767/lstm_cell_767/MatMul/ReadVariableOp/^lstm_767/lstm_cell_767/MatMul_1/ReadVariableOp^lstm_767/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_255/BiasAdd/ReadVariableOp dense_255/BiasAdd/ReadVariableOp2B
dense_255/MatMul/ReadVariableOpdense_255/MatMul/ReadVariableOp2^
-lstm_765/lstm_cell_765/BiasAdd/ReadVariableOp-lstm_765/lstm_cell_765/BiasAdd/ReadVariableOp2\
,lstm_765/lstm_cell_765/MatMul/ReadVariableOp,lstm_765/lstm_cell_765/MatMul/ReadVariableOp2`
.lstm_765/lstm_cell_765/MatMul_1/ReadVariableOp.lstm_765/lstm_cell_765/MatMul_1/ReadVariableOp2 
lstm_765/whilelstm_765/while2^
-lstm_766/lstm_cell_766/BiasAdd/ReadVariableOp-lstm_766/lstm_cell_766/BiasAdd/ReadVariableOp2\
,lstm_766/lstm_cell_766/MatMul/ReadVariableOp,lstm_766/lstm_cell_766/MatMul/ReadVariableOp2`
.lstm_766/lstm_cell_766/MatMul_1/ReadVariableOp.lstm_766/lstm_cell_766/MatMul_1/ReadVariableOp2 
lstm_766/whilelstm_766/while2^
-lstm_767/lstm_cell_767/BiasAdd/ReadVariableOp-lstm_767/lstm_cell_767/BiasAdd/ReadVariableOp2\
,lstm_767/lstm_cell_767/MatMul/ReadVariableOp,lstm_767/lstm_cell_767/MatMul/ReadVariableOp2`
.lstm_767/lstm_cell_767/MatMul_1/ReadVariableOp.lstm_767/lstm_cell_767/MatMul_1/ReadVariableOp2 
lstm_767/whilelstm_767/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?J
?
E__inference_lstm_767_layer_call_and_return_conditional_losses_4695794

inputs>
,lstm_cell_767_matmul_readvariableop_resource:2(@
.lstm_cell_767_matmul_1_readvariableop_resource:
(;
-lstm_cell_767_biasadd_readvariableop_resource:(
identity??$lstm_cell_767/BiasAdd/ReadVariableOp?#lstm_cell_767/MatMul/ReadVariableOp?%lstm_cell_767/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_767/MatMul/ReadVariableOpReadVariableOp,lstm_cell_767_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_767/MatMulMatMulstrided_slice_2:output:0+lstm_cell_767/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_767/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_767_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_767/MatMul_1MatMulzeros:output:0-lstm_cell_767/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_767/addAddV2lstm_cell_767/MatMul:product:0 lstm_cell_767/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_767/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_767_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_767/BiasAddBiasAddlstm_cell_767/add:z:0,lstm_cell_767/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_767/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_767/splitSplit&lstm_cell_767/split/split_dim:output:0lstm_cell_767/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_767/SigmoidSigmoidlstm_cell_767/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_767/Sigmoid_1Sigmoidlstm_cell_767/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_767/mulMullstm_cell_767/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_767/ReluRelulstm_cell_767/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_767/mul_1Mullstm_cell_767/Sigmoid:y:0 lstm_cell_767/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_767/add_1AddV2lstm_cell_767/mul:z:0lstm_cell_767/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_767/Sigmoid_2Sigmoidlstm_cell_767/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_767/Relu_1Relulstm_cell_767/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_767/mul_2Mullstm_cell_767/Sigmoid_2:y:0"lstm_cell_767/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_767_matmul_readvariableop_resource.lstm_cell_767_matmul_1_readvariableop_resource-lstm_cell_767_biasadd_readvariableop_resource*
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
while_body_4695710*
condR
while_cond_4695709*K
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
NoOpNoOp%^lstm_cell_767/BiasAdd/ReadVariableOp$^lstm_cell_767/MatMul/ReadVariableOp&^lstm_cell_767/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_767/BiasAdd/ReadVariableOp$lstm_cell_767/BiasAdd/ReadVariableOp2J
#lstm_cell_767/MatMul/ReadVariableOp#lstm_cell_767/MatMul/ReadVariableOp2N
%lstm_cell_767/MatMul_1/ReadVariableOp%lstm_cell_767/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?J
?
E__inference_lstm_765_layer_call_and_return_conditional_losses_4697936

inputs?
,lstm_cell_765_matmul_readvariableop_resource:	?A
.lstm_cell_765_matmul_1_readvariableop_resource:	d?<
-lstm_cell_765_biasadd_readvariableop_resource:	?
identity??$lstm_cell_765/BiasAdd/ReadVariableOp?#lstm_cell_765/MatMul/ReadVariableOp?%lstm_cell_765/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_765/MatMul/ReadVariableOpReadVariableOp,lstm_cell_765_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_765/MatMulMatMulstrided_slice_2:output:0+lstm_cell_765/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_765/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_765_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_765/MatMul_1MatMulzeros:output:0-lstm_cell_765/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_765/addAddV2lstm_cell_765/MatMul:product:0 lstm_cell_765/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_765/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_765_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_765/BiasAddBiasAddlstm_cell_765/add:z:0,lstm_cell_765/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_765/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_765/splitSplit&lstm_cell_765/split/split_dim:output:0lstm_cell_765/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_765/SigmoidSigmoidlstm_cell_765/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_765/Sigmoid_1Sigmoidlstm_cell_765/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_765/mulMullstm_cell_765/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_765/ReluRelulstm_cell_765/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_765/mul_1Mullstm_cell_765/Sigmoid:y:0 lstm_cell_765/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_765/add_1AddV2lstm_cell_765/mul:z:0lstm_cell_765/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_765/Sigmoid_2Sigmoidlstm_cell_765/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_765/Relu_1Relulstm_cell_765/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_765/mul_2Mullstm_cell_765/Sigmoid_2:y:0"lstm_cell_765/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_765_matmul_readvariableop_resource.lstm_cell_765_matmul_1_readvariableop_resource-lstm_cell_765_biasadd_readvariableop_resource*
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
while_body_4697852*
condR
while_cond_4697851*K
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
NoOpNoOp%^lstm_cell_765/BiasAdd/ReadVariableOp$^lstm_cell_765/MatMul/ReadVariableOp&^lstm_cell_765/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_765/BiasAdd/ReadVariableOp$lstm_cell_765/BiasAdd/ReadVariableOp2J
#lstm_cell_765/MatMul/ReadVariableOp#lstm_cell_765/MatMul/ReadVariableOp2N
%lstm_cell_765/MatMul_1/ReadVariableOp%lstm_cell_765/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
0__inference_sequential_255_layer_call_fn_4696609

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
K__inference_sequential_255_layer_call_and_return_conditional_losses_4696408o
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
?
?
K__inference_sequential_255_layer_call_and_return_conditional_losses_4696490
lstm_765_input#
lstm_765_4696463:	?#
lstm_765_4696465:	d?
lstm_765_4696467:	?#
lstm_766_4696470:	d?#
lstm_766_4696472:	2?
lstm_766_4696474:	?"
lstm_767_4696477:2("
lstm_767_4696479:
(
lstm_767_4696481:(#
dense_255_4696484:

dense_255_4696486:
identity??!dense_255/StatefulPartitionedCall? lstm_765/StatefulPartitionedCall? lstm_766/StatefulPartitionedCall? lstm_767/StatefulPartitionedCall?
 lstm_765/StatefulPartitionedCallStatefulPartitionedCalllstm_765_inputlstm_765_4696463lstm_765_4696465lstm_765_4696467*
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
E__inference_lstm_765_layer_call_and_return_conditional_losses_4695494?
 lstm_766/StatefulPartitionedCallStatefulPartitionedCall)lstm_765/StatefulPartitionedCall:output:0lstm_766_4696470lstm_766_4696472lstm_766_4696474*
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
E__inference_lstm_766_layer_call_and_return_conditional_losses_4695644?
 lstm_767/StatefulPartitionedCallStatefulPartitionedCall)lstm_766/StatefulPartitionedCall:output:0lstm_767_4696477lstm_767_4696479lstm_767_4696481*
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
E__inference_lstm_767_layer_call_and_return_conditional_losses_4695794?
!dense_255/StatefulPartitionedCallStatefulPartitionedCall)lstm_767/StatefulPartitionedCall:output:0dense_255_4696484dense_255_4696486*
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
F__inference_dense_255_layer_call_and_return_conditional_losses_4695812y
IdentityIdentity*dense_255/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_255/StatefulPartitionedCall!^lstm_765/StatefulPartitionedCall!^lstm_766/StatefulPartitionedCall!^lstm_767/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_255/StatefulPartitionedCall!dense_255/StatefulPartitionedCall2D
 lstm_765/StatefulPartitionedCall lstm_765/StatefulPartitionedCall2D
 lstm_766/StatefulPartitionedCall lstm_766/StatefulPartitionedCall2D
 lstm_767/StatefulPartitionedCall lstm_767/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_765_input
?
?
while_cond_4698467
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4698467___redundant_placeholder05
1while_while_cond_4698467___redundant_placeholder15
1while_while_cond_4698467___redundant_placeholder25
1while_while_cond_4698467___redundant_placeholder3
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
lstm_765_input;
 serving_default_lstm_765_input:0?????????=
	dense_2550
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
2dense_255/kernel
:2dense_255/bias
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
0:.	?2lstm_765/lstm_cell_765/kernel
::8	d?2'lstm_765/lstm_cell_765/recurrent_kernel
*:(?2lstm_765/lstm_cell_765/bias
0:.	d?2lstm_766/lstm_cell_766/kernel
::8	2?2'lstm_766/lstm_cell_766/recurrent_kernel
*:(?2lstm_766/lstm_cell_766/bias
/:-2(2lstm_767/lstm_cell_767/kernel
9:7
(2'lstm_767/lstm_cell_767/recurrent_kernel
):'(2lstm_767/lstm_cell_767/bias
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
2Adam/dense_255/kernel/m
!:2Adam/dense_255/bias/m
5:3	?2$Adam/lstm_765/lstm_cell_765/kernel/m
?:=	d?2.Adam/lstm_765/lstm_cell_765/recurrent_kernel/m
/:-?2"Adam/lstm_765/lstm_cell_765/bias/m
5:3	d?2$Adam/lstm_766/lstm_cell_766/kernel/m
?:=	2?2.Adam/lstm_766/lstm_cell_766/recurrent_kernel/m
/:-?2"Adam/lstm_766/lstm_cell_766/bias/m
4:22(2$Adam/lstm_767/lstm_cell_767/kernel/m
>:<
(2.Adam/lstm_767/lstm_cell_767/recurrent_kernel/m
.:,(2"Adam/lstm_767/lstm_cell_767/bias/m
':%
2Adam/dense_255/kernel/v
!:2Adam/dense_255/bias/v
5:3	?2$Adam/lstm_765/lstm_cell_765/kernel/v
?:=	d?2.Adam/lstm_765/lstm_cell_765/recurrent_kernel/v
/:-?2"Adam/lstm_765/lstm_cell_765/bias/v
5:3	d?2$Adam/lstm_766/lstm_cell_766/kernel/v
?:=	2?2.Adam/lstm_766/lstm_cell_766/recurrent_kernel/v
/:-?2"Adam/lstm_766/lstm_cell_766/bias/v
4:22(2$Adam/lstm_767/lstm_cell_767/kernel/v
>:<
(2.Adam/lstm_767/lstm_cell_767/recurrent_kernel/v
.:,(2"Adam/lstm_767/lstm_cell_767/bias/v
?2?
0__inference_sequential_255_layer_call_fn_4695844
0__inference_sequential_255_layer_call_fn_4696582
0__inference_sequential_255_layer_call_fn_4696609
0__inference_sequential_255_layer_call_fn_4696460?
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
K__inference_sequential_255_layer_call_and_return_conditional_losses_4697036
K__inference_sequential_255_layer_call_and_return_conditional_losses_4697463
K__inference_sequential_255_layer_call_and_return_conditional_losses_4696490
K__inference_sequential_255_layer_call_and_return_conditional_losses_4696520?
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
"__inference__wrapped_model_4694295lstm_765_input"?
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
*__inference_lstm_765_layer_call_fn_4697474
*__inference_lstm_765_layer_call_fn_4697485
*__inference_lstm_765_layer_call_fn_4697496
*__inference_lstm_765_layer_call_fn_4697507?
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
E__inference_lstm_765_layer_call_and_return_conditional_losses_4697650
E__inference_lstm_765_layer_call_and_return_conditional_losses_4697793
E__inference_lstm_765_layer_call_and_return_conditional_losses_4697936
E__inference_lstm_765_layer_call_and_return_conditional_losses_4698079?
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
*__inference_lstm_766_layer_call_fn_4698090
*__inference_lstm_766_layer_call_fn_4698101
*__inference_lstm_766_layer_call_fn_4698112
*__inference_lstm_766_layer_call_fn_4698123?
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
E__inference_lstm_766_layer_call_and_return_conditional_losses_4698266
E__inference_lstm_766_layer_call_and_return_conditional_losses_4698409
E__inference_lstm_766_layer_call_and_return_conditional_losses_4698552
E__inference_lstm_766_layer_call_and_return_conditional_losses_4698695?
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
*__inference_lstm_767_layer_call_fn_4698706
*__inference_lstm_767_layer_call_fn_4698717
*__inference_lstm_767_layer_call_fn_4698728
*__inference_lstm_767_layer_call_fn_4698739?
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
E__inference_lstm_767_layer_call_and_return_conditional_losses_4698882
E__inference_lstm_767_layer_call_and_return_conditional_losses_4699025
E__inference_lstm_767_layer_call_and_return_conditional_losses_4699168
E__inference_lstm_767_layer_call_and_return_conditional_losses_4699311?
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
+__inference_dense_255_layer_call_fn_4699320?
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
F__inference_dense_255_layer_call_and_return_conditional_losses_4699330?
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
%__inference_signature_wrapper_4696555lstm_765_input"?
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
/__inference_lstm_cell_765_layer_call_fn_4699347
/__inference_lstm_cell_765_layer_call_fn_4699364?
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
J__inference_lstm_cell_765_layer_call_and_return_conditional_losses_4699396
J__inference_lstm_cell_765_layer_call_and_return_conditional_losses_4699428?
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
/__inference_lstm_cell_766_layer_call_fn_4699445
/__inference_lstm_cell_766_layer_call_fn_4699462?
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
J__inference_lstm_cell_766_layer_call_and_return_conditional_losses_4699494
J__inference_lstm_cell_766_layer_call_and_return_conditional_losses_4699526?
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
/__inference_lstm_cell_767_layer_call_fn_4699543
/__inference_lstm_cell_767_layer_call_fn_4699560?
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
J__inference_lstm_cell_767_layer_call_and_return_conditional_losses_4699592
J__inference_lstm_cell_767_layer_call_and_return_conditional_losses_4699624?
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
"__inference__wrapped_model_4694295?()*+,-./0;?8
1?.
,?)
lstm_765_input?????????
? "5?2
0
	dense_255#? 
	dense_255??????????
F__inference_dense_255_layer_call_and_return_conditional_losses_4699330\/?,
%?"
 ?
inputs?????????

? "%?"
?
0?????????
? ~
+__inference_dense_255_layer_call_fn_4699320O/?,
%?"
 ?
inputs?????????

? "???????????
E__inference_lstm_765_layer_call_and_return_conditional_losses_4697650?()*O?L
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
E__inference_lstm_765_layer_call_and_return_conditional_losses_4697793?()*O?L
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
E__inference_lstm_765_layer_call_and_return_conditional_losses_4697936q()*??<
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
E__inference_lstm_765_layer_call_and_return_conditional_losses_4698079q()*??<
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
*__inference_lstm_765_layer_call_fn_4697474}()*O?L
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
*__inference_lstm_765_layer_call_fn_4697485}()*O?L
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
*__inference_lstm_765_layer_call_fn_4697496d()*??<
5?2
$?!
inputs?????????

 
p 

 
? "??????????d?
*__inference_lstm_765_layer_call_fn_4697507d()*??<
5?2
$?!
inputs?????????

 
p

 
? "??????????d?
E__inference_lstm_766_layer_call_and_return_conditional_losses_4698266?+,-O?L
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
E__inference_lstm_766_layer_call_and_return_conditional_losses_4698409?+,-O?L
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
E__inference_lstm_766_layer_call_and_return_conditional_losses_4698552q+,-??<
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
E__inference_lstm_766_layer_call_and_return_conditional_losses_4698695q+,-??<
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
*__inference_lstm_766_layer_call_fn_4698090}+,-O?L
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
*__inference_lstm_766_layer_call_fn_4698101}+,-O?L
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
*__inference_lstm_766_layer_call_fn_4698112d+,-??<
5?2
$?!
inputs?????????d

 
p 

 
? "??????????2?
*__inference_lstm_766_layer_call_fn_4698123d+,-??<
5?2
$?!
inputs?????????d

 
p

 
? "??????????2?
E__inference_lstm_767_layer_call_and_return_conditional_losses_4698882}./0O?L
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
E__inference_lstm_767_layer_call_and_return_conditional_losses_4699025}./0O?L
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
E__inference_lstm_767_layer_call_and_return_conditional_losses_4699168m./0??<
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
E__inference_lstm_767_layer_call_and_return_conditional_losses_4699311m./0??<
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
*__inference_lstm_767_layer_call_fn_4698706p./0O?L
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
*__inference_lstm_767_layer_call_fn_4698717p./0O?L
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
*__inference_lstm_767_layer_call_fn_4698728`./0??<
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
*__inference_lstm_767_layer_call_fn_4698739`./0??<
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
J__inference_lstm_cell_765_layer_call_and_return_conditional_losses_4699396?()*??}
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
J__inference_lstm_cell_765_layer_call_and_return_conditional_losses_4699428?()*??}
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
/__inference_lstm_cell_765_layer_call_fn_4699347?()*??}
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
/__inference_lstm_cell_765_layer_call_fn_4699364?()*??}
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
J__inference_lstm_cell_766_layer_call_and_return_conditional_losses_4699494?+,-??}
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
J__inference_lstm_cell_766_layer_call_and_return_conditional_losses_4699526?+,-??}
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
/__inference_lstm_cell_766_layer_call_fn_4699445?+,-??}
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
/__inference_lstm_cell_766_layer_call_fn_4699462?+,-??}
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
J__inference_lstm_cell_767_layer_call_and_return_conditional_losses_4699592?./0??}
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
J__inference_lstm_cell_767_layer_call_and_return_conditional_losses_4699624?./0??}
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
/__inference_lstm_cell_767_layer_call_fn_4699543?./0??}
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
/__inference_lstm_cell_767_layer_call_fn_4699560?./0??}
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
K__inference_sequential_255_layer_call_and_return_conditional_losses_4696490y()*+,-./0C?@
9?6
,?)
lstm_765_input?????????
p 

 
? "%?"
?
0?????????
? ?
K__inference_sequential_255_layer_call_and_return_conditional_losses_4696520y()*+,-./0C?@
9?6
,?)
lstm_765_input?????????
p

 
? "%?"
?
0?????????
? ?
K__inference_sequential_255_layer_call_and_return_conditional_losses_4697036q()*+,-./0;?8
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
K__inference_sequential_255_layer_call_and_return_conditional_losses_4697463q()*+,-./0;?8
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
0__inference_sequential_255_layer_call_fn_4695844l()*+,-./0C?@
9?6
,?)
lstm_765_input?????????
p 

 
? "???????????
0__inference_sequential_255_layer_call_fn_4696460l()*+,-./0C?@
9?6
,?)
lstm_765_input?????????
p

 
? "???????????
0__inference_sequential_255_layer_call_fn_4696582d()*+,-./0;?8
1?.
$?!
inputs?????????
p 

 
? "???????????
0__inference_sequential_255_layer_call_fn_4696609d()*+,-./0;?8
1?.
$?!
inputs?????????
p

 
? "???????????
%__inference_signature_wrapper_4696555?()*+,-./0M?J
? 
C?@
>
lstm_765_input,?)
lstm_765_input?????????"5?2
0
	dense_255#? 
	dense_255?????????