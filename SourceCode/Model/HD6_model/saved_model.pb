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
dense_229/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*!
shared_namedense_229/kernel
u
$dense_229/kernel/Read/ReadVariableOpReadVariableOpdense_229/kernel*
_output_shapes

:
*
dtype0
t
dense_229/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_229/bias
m
"dense_229/bias/Read/ReadVariableOpReadVariableOpdense_229/bias*
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
lstm_687/lstm_cell_687/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*.
shared_namelstm_687/lstm_cell_687/kernel
?
1lstm_687/lstm_cell_687/kernel/Read/ReadVariableOpReadVariableOplstm_687/lstm_cell_687/kernel*
_output_shapes
:	?*
dtype0
?
'lstm_687/lstm_cell_687/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*8
shared_name)'lstm_687/lstm_cell_687/recurrent_kernel
?
;lstm_687/lstm_cell_687/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_687/lstm_cell_687/recurrent_kernel*
_output_shapes
:	d?*
dtype0
?
lstm_687/lstm_cell_687/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_687/lstm_cell_687/bias
?
/lstm_687/lstm_cell_687/bias/Read/ReadVariableOpReadVariableOplstm_687/lstm_cell_687/bias*
_output_shapes	
:?*
dtype0
?
lstm_688/lstm_cell_688/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*.
shared_namelstm_688/lstm_cell_688/kernel
?
1lstm_688/lstm_cell_688/kernel/Read/ReadVariableOpReadVariableOplstm_688/lstm_cell_688/kernel*
_output_shapes
:	d?*
dtype0
?
'lstm_688/lstm_cell_688/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*8
shared_name)'lstm_688/lstm_cell_688/recurrent_kernel
?
;lstm_688/lstm_cell_688/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_688/lstm_cell_688/recurrent_kernel*
_output_shapes
:	2?*
dtype0
?
lstm_688/lstm_cell_688/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_688/lstm_cell_688/bias
?
/lstm_688/lstm_cell_688/bias/Read/ReadVariableOpReadVariableOplstm_688/lstm_cell_688/bias*
_output_shapes	
:?*
dtype0
?
lstm_689/lstm_cell_689/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*.
shared_namelstm_689/lstm_cell_689/kernel
?
1lstm_689/lstm_cell_689/kernel/Read/ReadVariableOpReadVariableOplstm_689/lstm_cell_689/kernel*
_output_shapes

:2(*
dtype0
?
'lstm_689/lstm_cell_689/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*8
shared_name)'lstm_689/lstm_cell_689/recurrent_kernel
?
;lstm_689/lstm_cell_689/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_689/lstm_cell_689/recurrent_kernel*
_output_shapes

:
(*
dtype0
?
lstm_689/lstm_cell_689/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*,
shared_namelstm_689/lstm_cell_689/bias
?
/lstm_689/lstm_cell_689/bias/Read/ReadVariableOpReadVariableOplstm_689/lstm_cell_689/bias*
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
Adam/dense_229/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_229/kernel/m
?
+Adam/dense_229/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_229/kernel/m*
_output_shapes

:
*
dtype0
?
Adam/dense_229/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_229/bias/m
{
)Adam/dense_229/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_229/bias/m*
_output_shapes
:*
dtype0
?
$Adam/lstm_687/lstm_cell_687/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_687/lstm_cell_687/kernel/m
?
8Adam/lstm_687/lstm_cell_687/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_687/lstm_cell_687/kernel/m*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_687/lstm_cell_687/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_687/lstm_cell_687/recurrent_kernel/m
?
BAdam/lstm_687/lstm_cell_687/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_687/lstm_cell_687/recurrent_kernel/m*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_687/lstm_cell_687/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_687/lstm_cell_687/bias/m
?
6Adam/lstm_687/lstm_cell_687/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_687/lstm_cell_687/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_688/lstm_cell_688/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_688/lstm_cell_688/kernel/m
?
8Adam/lstm_688/lstm_cell_688/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_688/lstm_cell_688/kernel/m*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_688/lstm_cell_688/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_688/lstm_cell_688/recurrent_kernel/m
?
BAdam/lstm_688/lstm_cell_688/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_688/lstm_cell_688/recurrent_kernel/m*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_688/lstm_cell_688/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_688/lstm_cell_688/bias/m
?
6Adam/lstm_688/lstm_cell_688/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_688/lstm_cell_688/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_689/lstm_cell_689/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_689/lstm_cell_689/kernel/m
?
8Adam/lstm_689/lstm_cell_689/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_689/lstm_cell_689/kernel/m*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_689/lstm_cell_689/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_689/lstm_cell_689/recurrent_kernel/m
?
BAdam/lstm_689/lstm_cell_689/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_689/lstm_cell_689/recurrent_kernel/m*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_689/lstm_cell_689/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_689/lstm_cell_689/bias/m
?
6Adam/lstm_689/lstm_cell_689/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_689/lstm_cell_689/bias/m*
_output_shapes
:(*
dtype0
?
Adam/dense_229/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_229/kernel/v
?
+Adam/dense_229/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_229/kernel/v*
_output_shapes

:
*
dtype0
?
Adam/dense_229/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_229/bias/v
{
)Adam/dense_229/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_229/bias/v*
_output_shapes
:*
dtype0
?
$Adam/lstm_687/lstm_cell_687/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_687/lstm_cell_687/kernel/v
?
8Adam/lstm_687/lstm_cell_687/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_687/lstm_cell_687/kernel/v*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_687/lstm_cell_687/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_687/lstm_cell_687/recurrent_kernel/v
?
BAdam/lstm_687/lstm_cell_687/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_687/lstm_cell_687/recurrent_kernel/v*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_687/lstm_cell_687/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_687/lstm_cell_687/bias/v
?
6Adam/lstm_687/lstm_cell_687/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_687/lstm_cell_687/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_688/lstm_cell_688/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_688/lstm_cell_688/kernel/v
?
8Adam/lstm_688/lstm_cell_688/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_688/lstm_cell_688/kernel/v*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_688/lstm_cell_688/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_688/lstm_cell_688/recurrent_kernel/v
?
BAdam/lstm_688/lstm_cell_688/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_688/lstm_cell_688/recurrent_kernel/v*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_688/lstm_cell_688/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_688/lstm_cell_688/bias/v
?
6Adam/lstm_688/lstm_cell_688/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_688/lstm_cell_688/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_689/lstm_cell_689/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_689/lstm_cell_689/kernel/v
?
8Adam/lstm_689/lstm_cell_689/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_689/lstm_cell_689/kernel/v*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_689/lstm_cell_689/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_689/lstm_cell_689/recurrent_kernel/v
?
BAdam/lstm_689/lstm_cell_689/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_689/lstm_cell_689/recurrent_kernel/v*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_689/lstm_cell_689/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_689/lstm_cell_689/bias/v
?
6Adam/lstm_689/lstm_cell_689/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_689/lstm_cell_689/bias/v*
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
VARIABLE_VALUEdense_229/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_229/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUElstm_687/lstm_cell_687/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_687/lstm_cell_687/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_687/lstm_cell_687/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_688/lstm_cell_688/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_688/lstm_cell_688/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_688/lstm_cell_688/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_689/lstm_cell_689/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_689/lstm_cell_689/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_689/lstm_cell_689/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEAdam/dense_229/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_229/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_687/lstm_cell_687/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_687/lstm_cell_687/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_687/lstm_cell_687/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_688/lstm_cell_688/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_688/lstm_cell_688/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_688/lstm_cell_688/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_689/lstm_cell_689/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_689/lstm_cell_689/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_689/lstm_cell_689/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_229/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_229/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_687/lstm_cell_687/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_687/lstm_cell_687/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_687/lstm_cell_687/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_688/lstm_cell_688/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_688/lstm_cell_688/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_688/lstm_cell_688/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_689/lstm_cell_689/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_689/lstm_cell_689/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_689/lstm_cell_689/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_lstm_687_inputPlaceholder*+
_output_shapes
:?????????*
dtype0* 
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_687_inputlstm_687/lstm_cell_687/kernel'lstm_687/lstm_cell_687/recurrent_kernellstm_687/lstm_cell_687/biaslstm_688/lstm_cell_688/kernel'lstm_688/lstm_cell_688/recurrent_kernellstm_688/lstm_cell_688/biaslstm_689/lstm_cell_689/kernel'lstm_689/lstm_cell_689/recurrent_kernellstm_689/lstm_cell_689/biasdense_229/kerneldense_229/bias*
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
%__inference_signature_wrapper_4335188
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$dense_229/kernel/Read/ReadVariableOp"dense_229/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_687/lstm_cell_687/kernel/Read/ReadVariableOp;lstm_687/lstm_cell_687/recurrent_kernel/Read/ReadVariableOp/lstm_687/lstm_cell_687/bias/Read/ReadVariableOp1lstm_688/lstm_cell_688/kernel/Read/ReadVariableOp;lstm_688/lstm_cell_688/recurrent_kernel/Read/ReadVariableOp/lstm_688/lstm_cell_688/bias/Read/ReadVariableOp1lstm_689/lstm_cell_689/kernel/Read/ReadVariableOp;lstm_689/lstm_cell_689/recurrent_kernel/Read/ReadVariableOp/lstm_689/lstm_cell_689/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp+Adam/dense_229/kernel/m/Read/ReadVariableOp)Adam/dense_229/bias/m/Read/ReadVariableOp8Adam/lstm_687/lstm_cell_687/kernel/m/Read/ReadVariableOpBAdam/lstm_687/lstm_cell_687/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_687/lstm_cell_687/bias/m/Read/ReadVariableOp8Adam/lstm_688/lstm_cell_688/kernel/m/Read/ReadVariableOpBAdam/lstm_688/lstm_cell_688/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_688/lstm_cell_688/bias/m/Read/ReadVariableOp8Adam/lstm_689/lstm_cell_689/kernel/m/Read/ReadVariableOpBAdam/lstm_689/lstm_cell_689/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_689/lstm_cell_689/bias/m/Read/ReadVariableOp+Adam/dense_229/kernel/v/Read/ReadVariableOp)Adam/dense_229/bias/v/Read/ReadVariableOp8Adam/lstm_687/lstm_cell_687/kernel/v/Read/ReadVariableOpBAdam/lstm_687/lstm_cell_687/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_687/lstm_cell_687/bias/v/Read/ReadVariableOp8Adam/lstm_688/lstm_cell_688/kernel/v/Read/ReadVariableOpBAdam/lstm_688/lstm_cell_688/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_688/lstm_cell_688/bias/v/Read/ReadVariableOp8Adam/lstm_689/lstm_cell_689/kernel/v/Read/ReadVariableOpBAdam/lstm_689/lstm_cell_689/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_689/lstm_cell_689/bias/v/Read/ReadVariableOpConst*5
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
 __inference__traced_save_4338400
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_229/kerneldense_229/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_687/lstm_cell_687/kernel'lstm_687/lstm_cell_687/recurrent_kernellstm_687/lstm_cell_687/biaslstm_688/lstm_cell_688/kernel'lstm_688/lstm_cell_688/recurrent_kernellstm_688/lstm_cell_688/biaslstm_689/lstm_cell_689/kernel'lstm_689/lstm_cell_689/recurrent_kernellstm_689/lstm_cell_689/biastotalcountAdam/dense_229/kernel/mAdam/dense_229/bias/m$Adam/lstm_687/lstm_cell_687/kernel/m.Adam/lstm_687/lstm_cell_687/recurrent_kernel/m"Adam/lstm_687/lstm_cell_687/bias/m$Adam/lstm_688/lstm_cell_688/kernel/m.Adam/lstm_688/lstm_cell_688/recurrent_kernel/m"Adam/lstm_688/lstm_cell_688/bias/m$Adam/lstm_689/lstm_cell_689/kernel/m.Adam/lstm_689/lstm_cell_689/recurrent_kernel/m"Adam/lstm_689/lstm_cell_689/bias/mAdam/dense_229/kernel/vAdam/dense_229/bias/v$Adam/lstm_687/lstm_cell_687/kernel/v.Adam/lstm_687/lstm_cell_687/recurrent_kernel/v"Adam/lstm_687/lstm_cell_687/bias/v$Adam/lstm_688/lstm_cell_688/kernel/v.Adam/lstm_688/lstm_cell_688/recurrent_kernel/v"Adam/lstm_688/lstm_cell_688/bias/v$Adam/lstm_689/lstm_cell_689/kernel/v.Adam/lstm_689/lstm_cell_689/recurrent_kernel/v"Adam/lstm_689/lstm_cell_689/bias/v*4
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
#__inference__traced_restore_4338530??+
?
?
*__inference_lstm_688_layer_call_fn_4336723
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
E__inference_lstm_688_layer_call_and_return_conditional_losses_4333428|
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
?
while_body_4337574
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_689_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_689_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_689_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_689_matmul_readvariableop_resource:2(F
4while_lstm_cell_689_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_689_biasadd_readvariableop_resource:(??*while/lstm_cell_689/BiasAdd/ReadVariableOp?)while/lstm_cell_689/MatMul/ReadVariableOp?+while/lstm_cell_689/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_689/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_689_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_689/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_689/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_689/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_689_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_689/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_689/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_689/addAddV2$while/lstm_cell_689/MatMul:product:0&while/lstm_cell_689/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_689/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_689_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_689/BiasAddBiasAddwhile/lstm_cell_689/add:z:02while/lstm_cell_689/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_689/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_689/splitSplit,while/lstm_cell_689/split/split_dim:output:0$while/lstm_cell_689/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_689/SigmoidSigmoid"while/lstm_cell_689/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_689/Sigmoid_1Sigmoid"while/lstm_cell_689/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_689/mulMul!while/lstm_cell_689/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_689/ReluRelu"while/lstm_cell_689/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_689/mul_1Mulwhile/lstm_cell_689/Sigmoid:y:0&while/lstm_cell_689/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_689/add_1AddV2while/lstm_cell_689/mul:z:0while/lstm_cell_689/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_689/Sigmoid_2Sigmoid"while/lstm_cell_689/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_689/Relu_1Reluwhile/lstm_cell_689/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_689/mul_2Mul!while/lstm_cell_689/Sigmoid_2:y:0(while/lstm_cell_689/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_689/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_689/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_689/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_689/BiasAdd/ReadVariableOp*^while/lstm_cell_689/MatMul/ReadVariableOp,^while/lstm_cell_689/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_689_biasadd_readvariableop_resource5while_lstm_cell_689_biasadd_readvariableop_resource_0"n
4while_lstm_cell_689_matmul_1_readvariableop_resource6while_lstm_cell_689_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_689_matmul_readvariableop_resource4while_lstm_cell_689_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_689/BiasAdd/ReadVariableOp*while/lstm_cell_689/BiasAdd/ReadVariableOp2V
)while/lstm_cell_689/MatMul/ReadVariableOp)while/lstm_cell_689/MatMul/ReadVariableOp2Z
+while/lstm_cell_689/MatMul_1/ReadVariableOp+while/lstm_cell_689/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_689_layer_call_and_return_conditional_losses_4338257

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

?
lstm_687_while_cond_4335300.
*lstm_687_while_lstm_687_while_loop_counter4
0lstm_687_while_lstm_687_while_maximum_iterations
lstm_687_while_placeholder 
lstm_687_while_placeholder_1 
lstm_687_while_placeholder_2 
lstm_687_while_placeholder_30
,lstm_687_while_less_lstm_687_strided_slice_1G
Clstm_687_while_lstm_687_while_cond_4335300___redundant_placeholder0G
Clstm_687_while_lstm_687_while_cond_4335300___redundant_placeholder1G
Clstm_687_while_lstm_687_while_cond_4335300___redundant_placeholder2G
Clstm_687_while_lstm_687_while_cond_4335300___redundant_placeholder3
lstm_687_while_identity
?
lstm_687/while/LessLesslstm_687_while_placeholder,lstm_687_while_less_lstm_687_strided_slice_1*
T0*
_output_shapes
: ]
lstm_687/while/IdentityIdentitylstm_687/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_687_while_identity lstm_687/while/Identity:output:0*(
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
?
K__inference_sequential_229_layer_call_and_return_conditional_losses_4335123
lstm_687_input#
lstm_687_4335096:	?#
lstm_687_4335098:	d?
lstm_687_4335100:	?#
lstm_688_4335103:	d?#
lstm_688_4335105:	2?
lstm_688_4335107:	?"
lstm_689_4335110:2("
lstm_689_4335112:
(
lstm_689_4335114:(#
dense_229_4335117:

dense_229_4335119:
identity??!dense_229/StatefulPartitionedCall? lstm_687/StatefulPartitionedCall? lstm_688/StatefulPartitionedCall? lstm_689/StatefulPartitionedCall?
 lstm_687/StatefulPartitionedCallStatefulPartitionedCalllstm_687_inputlstm_687_4335096lstm_687_4335098lstm_687_4335100*
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
E__inference_lstm_687_layer_call_and_return_conditional_losses_4334127?
 lstm_688/StatefulPartitionedCallStatefulPartitionedCall)lstm_687/StatefulPartitionedCall:output:0lstm_688_4335103lstm_688_4335105lstm_688_4335107*
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
E__inference_lstm_688_layer_call_and_return_conditional_losses_4334277?
 lstm_689/StatefulPartitionedCallStatefulPartitionedCall)lstm_688/StatefulPartitionedCall:output:0lstm_689_4335110lstm_689_4335112lstm_689_4335114*
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
E__inference_lstm_689_layer_call_and_return_conditional_losses_4334427?
!dense_229/StatefulPartitionedCallStatefulPartitionedCall)lstm_689/StatefulPartitionedCall:output:0dense_229_4335117dense_229_4335119*
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
F__inference_dense_229_layer_call_and_return_conditional_losses_4334445y
IdentityIdentity*dense_229/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_229/StatefulPartitionedCall!^lstm_687/StatefulPartitionedCall!^lstm_688/StatefulPartitionedCall!^lstm_689/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_229/StatefulPartitionedCall!dense_229/StatefulPartitionedCall2D
 lstm_687/StatefulPartitionedCall lstm_687/StatefulPartitionedCall2D
 lstm_688/StatefulPartitionedCall lstm_688/StatefulPartitionedCall2D
 lstm_689/StatefulPartitionedCall lstm_689/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_687_input
?
?
K__inference_sequential_229_layer_call_and_return_conditional_losses_4335153
lstm_687_input#
lstm_687_4335126:	?#
lstm_687_4335128:	d?
lstm_687_4335130:	?#
lstm_688_4335133:	d?#
lstm_688_4335135:	2?
lstm_688_4335137:	?"
lstm_689_4335140:2("
lstm_689_4335142:
(
lstm_689_4335144:(#
dense_229_4335147:

dense_229_4335149:
identity??!dense_229/StatefulPartitionedCall? lstm_687/StatefulPartitionedCall? lstm_688/StatefulPartitionedCall? lstm_689/StatefulPartitionedCall?
 lstm_687/StatefulPartitionedCallStatefulPartitionedCalllstm_687_inputlstm_687_4335126lstm_687_4335128lstm_687_4335130*
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
E__inference_lstm_687_layer_call_and_return_conditional_losses_4334973?
 lstm_688/StatefulPartitionedCallStatefulPartitionedCall)lstm_687/StatefulPartitionedCall:output:0lstm_688_4335133lstm_688_4335135lstm_688_4335137*
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
E__inference_lstm_688_layer_call_and_return_conditional_losses_4334808?
 lstm_689/StatefulPartitionedCallStatefulPartitionedCall)lstm_688/StatefulPartitionedCall:output:0lstm_689_4335140lstm_689_4335142lstm_689_4335144*
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
E__inference_lstm_689_layer_call_and_return_conditional_losses_4334643?
!dense_229/StatefulPartitionedCallStatefulPartitionedCall)lstm_689/StatefulPartitionedCall:output:0dense_229_4335147dense_229_4335149*
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
F__inference_dense_229_layer_call_and_return_conditional_losses_4334445y
IdentityIdentity*dense_229/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_229/StatefulPartitionedCall!^lstm_687/StatefulPartitionedCall!^lstm_688/StatefulPartitionedCall!^lstm_689/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_229/StatefulPartitionedCall!dense_229/StatefulPartitionedCall2D
 lstm_687/StatefulPartitionedCall lstm_687/StatefulPartitionedCall2D
 lstm_688/StatefulPartitionedCall lstm_688/StatefulPartitionedCall2D
 lstm_689/StatefulPartitionedCall lstm_689/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_687_input
?
?
*__inference_lstm_688_layer_call_fn_4336756

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
E__inference_lstm_688_layer_call_and_return_conditional_losses_4334808s
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
?
?
J__inference_lstm_cell_689_layer_call_and_return_conditional_losses_4338225

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
?K
?
E__inference_lstm_687_layer_call_and_return_conditional_losses_4336283
inputs_0?
,lstm_cell_687_matmul_readvariableop_resource:	?A
.lstm_cell_687_matmul_1_readvariableop_resource:	d?<
-lstm_cell_687_biasadd_readvariableop_resource:	?
identity??$lstm_cell_687/BiasAdd/ReadVariableOp?#lstm_cell_687/MatMul/ReadVariableOp?%lstm_cell_687/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_687/MatMul/ReadVariableOpReadVariableOp,lstm_cell_687_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_687/MatMulMatMulstrided_slice_2:output:0+lstm_cell_687/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_687/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_687_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_687/MatMul_1MatMulzeros:output:0-lstm_cell_687/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_687/addAddV2lstm_cell_687/MatMul:product:0 lstm_cell_687/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_687/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_687_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_687/BiasAddBiasAddlstm_cell_687/add:z:0,lstm_cell_687/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_687/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_687/splitSplit&lstm_cell_687/split/split_dim:output:0lstm_cell_687/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_687/SigmoidSigmoidlstm_cell_687/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_687/Sigmoid_1Sigmoidlstm_cell_687/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_687/mulMullstm_cell_687/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_687/ReluRelulstm_cell_687/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_687/mul_1Mullstm_cell_687/Sigmoid:y:0 lstm_cell_687/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_687/add_1AddV2lstm_cell_687/mul:z:0lstm_cell_687/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_687/Sigmoid_2Sigmoidlstm_cell_687/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_687/Relu_1Relulstm_cell_687/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_687/mul_2Mullstm_cell_687/Sigmoid_2:y:0"lstm_cell_687/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_687_matmul_readvariableop_resource.lstm_cell_687_matmul_1_readvariableop_resource-lstm_cell_687_biasadd_readvariableop_resource*
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
while_body_4336199*
condR
while_cond_4336198*K
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
NoOpNoOp%^lstm_cell_687/BiasAdd/ReadVariableOp$^lstm_cell_687/MatMul/ReadVariableOp&^lstm_cell_687/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_687/BiasAdd/ReadVariableOp$lstm_cell_687/BiasAdd/ReadVariableOp2J
#lstm_cell_687/MatMul/ReadVariableOp#lstm_cell_687/MatMul/ReadVariableOp2N
%lstm_cell_687/MatMul_1/ReadVariableOp%lstm_cell_687/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
while_cond_4334192
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4334192___redundant_placeholder05
1while_while_cond_4334192___redundant_placeholder15
1while_while_cond_4334192___redundant_placeholder25
1while_while_cond_4334192___redundant_placeholder3
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

?
lstm_689_while_cond_4336005.
*lstm_689_while_lstm_689_while_loop_counter4
0lstm_689_while_lstm_689_while_maximum_iterations
lstm_689_while_placeholder 
lstm_689_while_placeholder_1 
lstm_689_while_placeholder_2 
lstm_689_while_placeholder_30
,lstm_689_while_less_lstm_689_strided_slice_1G
Clstm_689_while_lstm_689_while_cond_4336005___redundant_placeholder0G
Clstm_689_while_lstm_689_while_cond_4336005___redundant_placeholder1G
Clstm_689_while_lstm_689_while_cond_4336005___redundant_placeholder2G
Clstm_689_while_lstm_689_while_cond_4336005___redundant_placeholder3
lstm_689_while_identity
?
lstm_689/while/LessLesslstm_689_while_placeholder,lstm_689_while_less_lstm_689_strided_slice_1*
T0*
_output_shapes
: ]
lstm_689/while/IdentityIdentitylstm_689/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_689_while_identity lstm_689/while/Identity:output:0*(
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

lstm_687_while_body_4335301.
*lstm_687_while_lstm_687_while_loop_counter4
0lstm_687_while_lstm_687_while_maximum_iterations
lstm_687_while_placeholder 
lstm_687_while_placeholder_1 
lstm_687_while_placeholder_2 
lstm_687_while_placeholder_3-
)lstm_687_while_lstm_687_strided_slice_1_0i
elstm_687_while_tensorarrayv2read_tensorlistgetitem_lstm_687_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_687_while_lstm_cell_687_matmul_readvariableop_resource_0:	?R
?lstm_687_while_lstm_cell_687_matmul_1_readvariableop_resource_0:	d?M
>lstm_687_while_lstm_cell_687_biasadd_readvariableop_resource_0:	?
lstm_687_while_identity
lstm_687_while_identity_1
lstm_687_while_identity_2
lstm_687_while_identity_3
lstm_687_while_identity_4
lstm_687_while_identity_5+
'lstm_687_while_lstm_687_strided_slice_1g
clstm_687_while_tensorarrayv2read_tensorlistgetitem_lstm_687_tensorarrayunstack_tensorlistfromtensorN
;lstm_687_while_lstm_cell_687_matmul_readvariableop_resource:	?P
=lstm_687_while_lstm_cell_687_matmul_1_readvariableop_resource:	d?K
<lstm_687_while_lstm_cell_687_biasadd_readvariableop_resource:	???3lstm_687/while/lstm_cell_687/BiasAdd/ReadVariableOp?2lstm_687/while/lstm_cell_687/MatMul/ReadVariableOp?4lstm_687/while/lstm_cell_687/MatMul_1/ReadVariableOp?
@lstm_687/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_687/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_687_while_tensorarrayv2read_tensorlistgetitem_lstm_687_tensorarrayunstack_tensorlistfromtensor_0lstm_687_while_placeholderIlstm_687/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_687/while/lstm_cell_687/MatMul/ReadVariableOpReadVariableOp=lstm_687_while_lstm_cell_687_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_687/while/lstm_cell_687/MatMulMatMul9lstm_687/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_687/while/lstm_cell_687/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_687/while/lstm_cell_687/MatMul_1/ReadVariableOpReadVariableOp?lstm_687_while_lstm_cell_687_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_687/while/lstm_cell_687/MatMul_1MatMullstm_687_while_placeholder_2<lstm_687/while/lstm_cell_687/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_687/while/lstm_cell_687/addAddV2-lstm_687/while/lstm_cell_687/MatMul:product:0/lstm_687/while/lstm_cell_687/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_687/while/lstm_cell_687/BiasAdd/ReadVariableOpReadVariableOp>lstm_687_while_lstm_cell_687_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_687/while/lstm_cell_687/BiasAddBiasAdd$lstm_687/while/lstm_cell_687/add:z:0;lstm_687/while/lstm_cell_687/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_687/while/lstm_cell_687/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_687/while/lstm_cell_687/splitSplit5lstm_687/while/lstm_cell_687/split/split_dim:output:0-lstm_687/while/lstm_cell_687/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_687/while/lstm_cell_687/SigmoidSigmoid+lstm_687/while/lstm_cell_687/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_687/while/lstm_cell_687/Sigmoid_1Sigmoid+lstm_687/while/lstm_cell_687/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_687/while/lstm_cell_687/mulMul*lstm_687/while/lstm_cell_687/Sigmoid_1:y:0lstm_687_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_687/while/lstm_cell_687/ReluRelu+lstm_687/while/lstm_cell_687/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_687/while/lstm_cell_687/mul_1Mul(lstm_687/while/lstm_cell_687/Sigmoid:y:0/lstm_687/while/lstm_cell_687/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_687/while/lstm_cell_687/add_1AddV2$lstm_687/while/lstm_cell_687/mul:z:0&lstm_687/while/lstm_cell_687/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_687/while/lstm_cell_687/Sigmoid_2Sigmoid+lstm_687/while/lstm_cell_687/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_687/while/lstm_cell_687/Relu_1Relu&lstm_687/while/lstm_cell_687/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_687/while/lstm_cell_687/mul_2Mul*lstm_687/while/lstm_cell_687/Sigmoid_2:y:01lstm_687/while/lstm_cell_687/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_687/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_687_while_placeholder_1lstm_687_while_placeholder&lstm_687/while/lstm_cell_687/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_687/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_687/while/addAddV2lstm_687_while_placeholderlstm_687/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_687/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_687/while/add_1AddV2*lstm_687_while_lstm_687_while_loop_counterlstm_687/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_687/while/IdentityIdentitylstm_687/while/add_1:z:0^lstm_687/while/NoOp*
T0*
_output_shapes
: ?
lstm_687/while/Identity_1Identity0lstm_687_while_lstm_687_while_maximum_iterations^lstm_687/while/NoOp*
T0*
_output_shapes
: t
lstm_687/while/Identity_2Identitylstm_687/while/add:z:0^lstm_687/while/NoOp*
T0*
_output_shapes
: ?
lstm_687/while/Identity_3IdentityClstm_687/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_687/while/NoOp*
T0*
_output_shapes
: ?
lstm_687/while/Identity_4Identity&lstm_687/while/lstm_cell_687/mul_2:z:0^lstm_687/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_687/while/Identity_5Identity&lstm_687/while/lstm_cell_687/add_1:z:0^lstm_687/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_687/while/NoOpNoOp4^lstm_687/while/lstm_cell_687/BiasAdd/ReadVariableOp3^lstm_687/while/lstm_cell_687/MatMul/ReadVariableOp5^lstm_687/while/lstm_cell_687/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_687_while_identity lstm_687/while/Identity:output:0"?
lstm_687_while_identity_1"lstm_687/while/Identity_1:output:0"?
lstm_687_while_identity_2"lstm_687/while/Identity_2:output:0"?
lstm_687_while_identity_3"lstm_687/while/Identity_3:output:0"?
lstm_687_while_identity_4"lstm_687/while/Identity_4:output:0"?
lstm_687_while_identity_5"lstm_687/while/Identity_5:output:0"T
'lstm_687_while_lstm_687_strided_slice_1)lstm_687_while_lstm_687_strided_slice_1_0"~
<lstm_687_while_lstm_cell_687_biasadd_readvariableop_resource>lstm_687_while_lstm_cell_687_biasadd_readvariableop_resource_0"?
=lstm_687_while_lstm_cell_687_matmul_1_readvariableop_resource?lstm_687_while_lstm_cell_687_matmul_1_readvariableop_resource_0"|
;lstm_687_while_lstm_cell_687_matmul_readvariableop_resource=lstm_687_while_lstm_cell_687_matmul_readvariableop_resource_0"?
clstm_687_while_tensorarrayv2read_tensorlistgetitem_lstm_687_tensorarrayunstack_tensorlistfromtensorelstm_687_while_tensorarrayv2read_tensorlistgetitem_lstm_687_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_687/while/lstm_cell_687/BiasAdd/ReadVariableOp3lstm_687/while/lstm_cell_687/BiasAdd/ReadVariableOp2h
2lstm_687/while/lstm_cell_687/MatMul/ReadVariableOp2lstm_687/while/lstm_cell_687/MatMul/ReadVariableOp2l
4lstm_687/while/lstm_cell_687/MatMul_1/ReadVariableOp4lstm_687/while/lstm_cell_687/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_4333199
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4333199___redundant_placeholder05
1while_while_cond_4333199___redundant_placeholder15
1while_while_cond_4333199___redundant_placeholder25
1while_while_cond_4333199___redundant_placeholder3
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
?T
?
*sequential_229_lstm_687_while_body_4332560L
Hsequential_229_lstm_687_while_sequential_229_lstm_687_while_loop_counterR
Nsequential_229_lstm_687_while_sequential_229_lstm_687_while_maximum_iterations-
)sequential_229_lstm_687_while_placeholder/
+sequential_229_lstm_687_while_placeholder_1/
+sequential_229_lstm_687_while_placeholder_2/
+sequential_229_lstm_687_while_placeholder_3K
Gsequential_229_lstm_687_while_sequential_229_lstm_687_strided_slice_1_0?
?sequential_229_lstm_687_while_tensorarrayv2read_tensorlistgetitem_sequential_229_lstm_687_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_229_lstm_687_while_lstm_cell_687_matmul_readvariableop_resource_0:	?a
Nsequential_229_lstm_687_while_lstm_cell_687_matmul_1_readvariableop_resource_0:	d?\
Msequential_229_lstm_687_while_lstm_cell_687_biasadd_readvariableop_resource_0:	?*
&sequential_229_lstm_687_while_identity,
(sequential_229_lstm_687_while_identity_1,
(sequential_229_lstm_687_while_identity_2,
(sequential_229_lstm_687_while_identity_3,
(sequential_229_lstm_687_while_identity_4,
(sequential_229_lstm_687_while_identity_5I
Esequential_229_lstm_687_while_sequential_229_lstm_687_strided_slice_1?
?sequential_229_lstm_687_while_tensorarrayv2read_tensorlistgetitem_sequential_229_lstm_687_tensorarrayunstack_tensorlistfromtensor]
Jsequential_229_lstm_687_while_lstm_cell_687_matmul_readvariableop_resource:	?_
Lsequential_229_lstm_687_while_lstm_cell_687_matmul_1_readvariableop_resource:	d?Z
Ksequential_229_lstm_687_while_lstm_cell_687_biasadd_readvariableop_resource:	???Bsequential_229/lstm_687/while/lstm_cell_687/BiasAdd/ReadVariableOp?Asequential_229/lstm_687/while/lstm_cell_687/MatMul/ReadVariableOp?Csequential_229/lstm_687/while/lstm_cell_687/MatMul_1/ReadVariableOp?
Osequential_229/lstm_687/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
Asequential_229/lstm_687/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_229_lstm_687_while_tensorarrayv2read_tensorlistgetitem_sequential_229_lstm_687_tensorarrayunstack_tensorlistfromtensor_0)sequential_229_lstm_687_while_placeholderXsequential_229/lstm_687/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
Asequential_229/lstm_687/while/lstm_cell_687/MatMul/ReadVariableOpReadVariableOpLsequential_229_lstm_687_while_lstm_cell_687_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
2sequential_229/lstm_687/while/lstm_cell_687/MatMulMatMulHsequential_229/lstm_687/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_229/lstm_687/while/lstm_cell_687/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_229/lstm_687/while/lstm_cell_687/MatMul_1/ReadVariableOpReadVariableOpNsequential_229_lstm_687_while_lstm_cell_687_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
4sequential_229/lstm_687/while/lstm_cell_687/MatMul_1MatMul+sequential_229_lstm_687_while_placeholder_2Ksequential_229/lstm_687/while/lstm_cell_687/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_229/lstm_687/while/lstm_cell_687/addAddV2<sequential_229/lstm_687/while/lstm_cell_687/MatMul:product:0>sequential_229/lstm_687/while/lstm_cell_687/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_229/lstm_687/while/lstm_cell_687/BiasAdd/ReadVariableOpReadVariableOpMsequential_229_lstm_687_while_lstm_cell_687_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_229/lstm_687/while/lstm_cell_687/BiasAddBiasAdd3sequential_229/lstm_687/while/lstm_cell_687/add:z:0Jsequential_229/lstm_687/while/lstm_cell_687/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_229/lstm_687/while/lstm_cell_687/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_229/lstm_687/while/lstm_cell_687/splitSplitDsequential_229/lstm_687/while/lstm_cell_687/split/split_dim:output:0<sequential_229/lstm_687/while/lstm_cell_687/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
3sequential_229/lstm_687/while/lstm_cell_687/SigmoidSigmoid:sequential_229/lstm_687/while/lstm_cell_687/split:output:0*
T0*'
_output_shapes
:?????????d?
5sequential_229/lstm_687/while/lstm_cell_687/Sigmoid_1Sigmoid:sequential_229/lstm_687/while/lstm_cell_687/split:output:1*
T0*'
_output_shapes
:?????????d?
/sequential_229/lstm_687/while/lstm_cell_687/mulMul9sequential_229/lstm_687/while/lstm_cell_687/Sigmoid_1:y:0+sequential_229_lstm_687_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
0sequential_229/lstm_687/while/lstm_cell_687/ReluRelu:sequential_229/lstm_687/while/lstm_cell_687/split:output:2*
T0*'
_output_shapes
:?????????d?
1sequential_229/lstm_687/while/lstm_cell_687/mul_1Mul7sequential_229/lstm_687/while/lstm_cell_687/Sigmoid:y:0>sequential_229/lstm_687/while/lstm_cell_687/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
1sequential_229/lstm_687/while/lstm_cell_687/add_1AddV23sequential_229/lstm_687/while/lstm_cell_687/mul:z:05sequential_229/lstm_687/while/lstm_cell_687/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
5sequential_229/lstm_687/while/lstm_cell_687/Sigmoid_2Sigmoid:sequential_229/lstm_687/while/lstm_cell_687/split:output:3*
T0*'
_output_shapes
:?????????d?
2sequential_229/lstm_687/while/lstm_cell_687/Relu_1Relu5sequential_229/lstm_687/while/lstm_cell_687/add_1:z:0*
T0*'
_output_shapes
:?????????d?
1sequential_229/lstm_687/while/lstm_cell_687/mul_2Mul9sequential_229/lstm_687/while/lstm_cell_687/Sigmoid_2:y:0@sequential_229/lstm_687/while/lstm_cell_687/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
Bsequential_229/lstm_687/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_229_lstm_687_while_placeholder_1)sequential_229_lstm_687_while_placeholder5sequential_229/lstm_687/while/lstm_cell_687/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_229/lstm_687/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_229/lstm_687/while/addAddV2)sequential_229_lstm_687_while_placeholder,sequential_229/lstm_687/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_229/lstm_687/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_229/lstm_687/while/add_1AddV2Hsequential_229_lstm_687_while_sequential_229_lstm_687_while_loop_counter.sequential_229/lstm_687/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_229/lstm_687/while/IdentityIdentity'sequential_229/lstm_687/while/add_1:z:0#^sequential_229/lstm_687/while/NoOp*
T0*
_output_shapes
: ?
(sequential_229/lstm_687/while/Identity_1IdentityNsequential_229_lstm_687_while_sequential_229_lstm_687_while_maximum_iterations#^sequential_229/lstm_687/while/NoOp*
T0*
_output_shapes
: ?
(sequential_229/lstm_687/while/Identity_2Identity%sequential_229/lstm_687/while/add:z:0#^sequential_229/lstm_687/while/NoOp*
T0*
_output_shapes
: ?
(sequential_229/lstm_687/while/Identity_3IdentityRsequential_229/lstm_687/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_229/lstm_687/while/NoOp*
T0*
_output_shapes
: ?
(sequential_229/lstm_687/while/Identity_4Identity5sequential_229/lstm_687/while/lstm_cell_687/mul_2:z:0#^sequential_229/lstm_687/while/NoOp*
T0*'
_output_shapes
:?????????d?
(sequential_229/lstm_687/while/Identity_5Identity5sequential_229/lstm_687/while/lstm_cell_687/add_1:z:0#^sequential_229/lstm_687/while/NoOp*
T0*'
_output_shapes
:?????????d?
"sequential_229/lstm_687/while/NoOpNoOpC^sequential_229/lstm_687/while/lstm_cell_687/BiasAdd/ReadVariableOpB^sequential_229/lstm_687/while/lstm_cell_687/MatMul/ReadVariableOpD^sequential_229/lstm_687/while/lstm_cell_687/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_229_lstm_687_while_identity/sequential_229/lstm_687/while/Identity:output:0"]
(sequential_229_lstm_687_while_identity_11sequential_229/lstm_687/while/Identity_1:output:0"]
(sequential_229_lstm_687_while_identity_21sequential_229/lstm_687/while/Identity_2:output:0"]
(sequential_229_lstm_687_while_identity_31sequential_229/lstm_687/while/Identity_3:output:0"]
(sequential_229_lstm_687_while_identity_41sequential_229/lstm_687/while/Identity_4:output:0"]
(sequential_229_lstm_687_while_identity_51sequential_229/lstm_687/while/Identity_5:output:0"?
Ksequential_229_lstm_687_while_lstm_cell_687_biasadd_readvariableop_resourceMsequential_229_lstm_687_while_lstm_cell_687_biasadd_readvariableop_resource_0"?
Lsequential_229_lstm_687_while_lstm_cell_687_matmul_1_readvariableop_resourceNsequential_229_lstm_687_while_lstm_cell_687_matmul_1_readvariableop_resource_0"?
Jsequential_229_lstm_687_while_lstm_cell_687_matmul_readvariableop_resourceLsequential_229_lstm_687_while_lstm_cell_687_matmul_readvariableop_resource_0"?
Esequential_229_lstm_687_while_sequential_229_lstm_687_strided_slice_1Gsequential_229_lstm_687_while_sequential_229_lstm_687_strided_slice_1_0"?
?sequential_229_lstm_687_while_tensorarrayv2read_tensorlistgetitem_sequential_229_lstm_687_tensorarrayunstack_tensorlistfromtensor?sequential_229_lstm_687_while_tensorarrayv2read_tensorlistgetitem_sequential_229_lstm_687_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2?
Bsequential_229/lstm_687/while/lstm_cell_687/BiasAdd/ReadVariableOpBsequential_229/lstm_687/while/lstm_cell_687/BiasAdd/ReadVariableOp2?
Asequential_229/lstm_687/while/lstm_cell_687/MatMul/ReadVariableOpAsequential_229/lstm_687/while/lstm_cell_687/MatMul/ReadVariableOp2?
Csequential_229/lstm_687/while/lstm_cell_687/MatMul_1/ReadVariableOpCsequential_229/lstm_687/while/lstm_cell_687/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_688_layer_call_and_return_conditional_losses_4334808

inputs?
,lstm_cell_688_matmul_readvariableop_resource:	d?A
.lstm_cell_688_matmul_1_readvariableop_resource:	2?<
-lstm_cell_688_biasadd_readvariableop_resource:	?
identity??$lstm_cell_688/BiasAdd/ReadVariableOp?#lstm_cell_688/MatMul/ReadVariableOp?%lstm_cell_688/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_688/MatMul/ReadVariableOpReadVariableOp,lstm_cell_688_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_688/MatMulMatMulstrided_slice_2:output:0+lstm_cell_688/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_688/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_688_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_688/MatMul_1MatMulzeros:output:0-lstm_cell_688/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_688/addAddV2lstm_cell_688/MatMul:product:0 lstm_cell_688/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_688/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_688_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_688/BiasAddBiasAddlstm_cell_688/add:z:0,lstm_cell_688/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_688/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_688/splitSplit&lstm_cell_688/split/split_dim:output:0lstm_cell_688/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_688/SigmoidSigmoidlstm_cell_688/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_688/Sigmoid_1Sigmoidlstm_cell_688/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_688/mulMullstm_cell_688/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_688/ReluRelulstm_cell_688/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_688/mul_1Mullstm_cell_688/Sigmoid:y:0 lstm_cell_688/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_688/add_1AddV2lstm_cell_688/mul:z:0lstm_cell_688/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_688/Sigmoid_2Sigmoidlstm_cell_688/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_688/Relu_1Relulstm_cell_688/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_688/mul_2Mullstm_cell_688/Sigmoid_2:y:0"lstm_cell_688/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_688_matmul_readvariableop_resource.lstm_cell_688_matmul_1_readvariableop_resource-lstm_cell_688_biasadd_readvariableop_resource*
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
while_body_4334724*
condR
while_cond_4334723*K
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
NoOpNoOp%^lstm_cell_688/BiasAdd/ReadVariableOp$^lstm_cell_688/MatMul/ReadVariableOp&^lstm_cell_688/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_688/BiasAdd/ReadVariableOp$lstm_cell_688/BiasAdd/ReadVariableOp2J
#lstm_cell_688/MatMul/ReadVariableOp#lstm_cell_688/MatMul/ReadVariableOp2N
%lstm_cell_688/MatMul_1/ReadVariableOp%lstm_cell_688/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?

?
lstm_689_while_cond_4335578.
*lstm_689_while_lstm_689_while_loop_counter4
0lstm_689_while_lstm_689_while_maximum_iterations
lstm_689_while_placeholder 
lstm_689_while_placeholder_1 
lstm_689_while_placeholder_2 
lstm_689_while_placeholder_30
,lstm_689_while_less_lstm_689_strided_slice_1G
Clstm_689_while_lstm_689_while_cond_4335578___redundant_placeholder0G
Clstm_689_while_lstm_689_while_cond_4335578___redundant_placeholder1G
Clstm_689_while_lstm_689_while_cond_4335578___redundant_placeholder2G
Clstm_689_while_lstm_689_while_cond_4335578___redundant_placeholder3
lstm_689_while_identity
?
lstm_689/while/LessLesslstm_689_while_placeholder,lstm_689_while_less_lstm_689_strided_slice_1*
T0*
_output_shapes
: ]
lstm_689/while/IdentityIdentitylstm_689/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_689_while_identity lstm_689/while/Identity:output:0*(
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

lstm_688_while_body_4335440.
*lstm_688_while_lstm_688_while_loop_counter4
0lstm_688_while_lstm_688_while_maximum_iterations
lstm_688_while_placeholder 
lstm_688_while_placeholder_1 
lstm_688_while_placeholder_2 
lstm_688_while_placeholder_3-
)lstm_688_while_lstm_688_strided_slice_1_0i
elstm_688_while_tensorarrayv2read_tensorlistgetitem_lstm_688_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_688_while_lstm_cell_688_matmul_readvariableop_resource_0:	d?R
?lstm_688_while_lstm_cell_688_matmul_1_readvariableop_resource_0:	2?M
>lstm_688_while_lstm_cell_688_biasadd_readvariableop_resource_0:	?
lstm_688_while_identity
lstm_688_while_identity_1
lstm_688_while_identity_2
lstm_688_while_identity_3
lstm_688_while_identity_4
lstm_688_while_identity_5+
'lstm_688_while_lstm_688_strided_slice_1g
clstm_688_while_tensorarrayv2read_tensorlistgetitem_lstm_688_tensorarrayunstack_tensorlistfromtensorN
;lstm_688_while_lstm_cell_688_matmul_readvariableop_resource:	d?P
=lstm_688_while_lstm_cell_688_matmul_1_readvariableop_resource:	2?K
<lstm_688_while_lstm_cell_688_biasadd_readvariableop_resource:	???3lstm_688/while/lstm_cell_688/BiasAdd/ReadVariableOp?2lstm_688/while/lstm_cell_688/MatMul/ReadVariableOp?4lstm_688/while/lstm_cell_688/MatMul_1/ReadVariableOp?
@lstm_688/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_688/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_688_while_tensorarrayv2read_tensorlistgetitem_lstm_688_tensorarrayunstack_tensorlistfromtensor_0lstm_688_while_placeholderIlstm_688/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_688/while/lstm_cell_688/MatMul/ReadVariableOpReadVariableOp=lstm_688_while_lstm_cell_688_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_688/while/lstm_cell_688/MatMulMatMul9lstm_688/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_688/while/lstm_cell_688/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_688/while/lstm_cell_688/MatMul_1/ReadVariableOpReadVariableOp?lstm_688_while_lstm_cell_688_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_688/while/lstm_cell_688/MatMul_1MatMullstm_688_while_placeholder_2<lstm_688/while/lstm_cell_688/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_688/while/lstm_cell_688/addAddV2-lstm_688/while/lstm_cell_688/MatMul:product:0/lstm_688/while/lstm_cell_688/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_688/while/lstm_cell_688/BiasAdd/ReadVariableOpReadVariableOp>lstm_688_while_lstm_cell_688_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_688/while/lstm_cell_688/BiasAddBiasAdd$lstm_688/while/lstm_cell_688/add:z:0;lstm_688/while/lstm_cell_688/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_688/while/lstm_cell_688/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_688/while/lstm_cell_688/splitSplit5lstm_688/while/lstm_cell_688/split/split_dim:output:0-lstm_688/while/lstm_cell_688/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_688/while/lstm_cell_688/SigmoidSigmoid+lstm_688/while/lstm_cell_688/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_688/while/lstm_cell_688/Sigmoid_1Sigmoid+lstm_688/while/lstm_cell_688/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_688/while/lstm_cell_688/mulMul*lstm_688/while/lstm_cell_688/Sigmoid_1:y:0lstm_688_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_688/while/lstm_cell_688/ReluRelu+lstm_688/while/lstm_cell_688/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_688/while/lstm_cell_688/mul_1Mul(lstm_688/while/lstm_cell_688/Sigmoid:y:0/lstm_688/while/lstm_cell_688/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_688/while/lstm_cell_688/add_1AddV2$lstm_688/while/lstm_cell_688/mul:z:0&lstm_688/while/lstm_cell_688/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_688/while/lstm_cell_688/Sigmoid_2Sigmoid+lstm_688/while/lstm_cell_688/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_688/while/lstm_cell_688/Relu_1Relu&lstm_688/while/lstm_cell_688/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_688/while/lstm_cell_688/mul_2Mul*lstm_688/while/lstm_cell_688/Sigmoid_2:y:01lstm_688/while/lstm_cell_688/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_688/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_688_while_placeholder_1lstm_688_while_placeholder&lstm_688/while/lstm_cell_688/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_688/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_688/while/addAddV2lstm_688_while_placeholderlstm_688/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_688/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_688/while/add_1AddV2*lstm_688_while_lstm_688_while_loop_counterlstm_688/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_688/while/IdentityIdentitylstm_688/while/add_1:z:0^lstm_688/while/NoOp*
T0*
_output_shapes
: ?
lstm_688/while/Identity_1Identity0lstm_688_while_lstm_688_while_maximum_iterations^lstm_688/while/NoOp*
T0*
_output_shapes
: t
lstm_688/while/Identity_2Identitylstm_688/while/add:z:0^lstm_688/while/NoOp*
T0*
_output_shapes
: ?
lstm_688/while/Identity_3IdentityClstm_688/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_688/while/NoOp*
T0*
_output_shapes
: ?
lstm_688/while/Identity_4Identity&lstm_688/while/lstm_cell_688/mul_2:z:0^lstm_688/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_688/while/Identity_5Identity&lstm_688/while/lstm_cell_688/add_1:z:0^lstm_688/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_688/while/NoOpNoOp4^lstm_688/while/lstm_cell_688/BiasAdd/ReadVariableOp3^lstm_688/while/lstm_cell_688/MatMul/ReadVariableOp5^lstm_688/while/lstm_cell_688/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_688_while_identity lstm_688/while/Identity:output:0"?
lstm_688_while_identity_1"lstm_688/while/Identity_1:output:0"?
lstm_688_while_identity_2"lstm_688/while/Identity_2:output:0"?
lstm_688_while_identity_3"lstm_688/while/Identity_3:output:0"?
lstm_688_while_identity_4"lstm_688/while/Identity_4:output:0"?
lstm_688_while_identity_5"lstm_688/while/Identity_5:output:0"T
'lstm_688_while_lstm_688_strided_slice_1)lstm_688_while_lstm_688_strided_slice_1_0"~
<lstm_688_while_lstm_cell_688_biasadd_readvariableop_resource>lstm_688_while_lstm_cell_688_biasadd_readvariableop_resource_0"?
=lstm_688_while_lstm_cell_688_matmul_1_readvariableop_resource?lstm_688_while_lstm_cell_688_matmul_1_readvariableop_resource_0"|
;lstm_688_while_lstm_cell_688_matmul_readvariableop_resource=lstm_688_while_lstm_cell_688_matmul_readvariableop_resource_0"?
clstm_688_while_tensorarrayv2read_tensorlistgetitem_lstm_688_tensorarrayunstack_tensorlistfromtensorelstm_688_while_tensorarrayv2read_tensorlistgetitem_lstm_688_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_688/while/lstm_cell_688/BiasAdd/ReadVariableOp3lstm_688/while/lstm_cell_688/BiasAdd/ReadVariableOp2h
2lstm_688/while/lstm_cell_688/MatMul/ReadVariableOp2lstm_688/while/lstm_cell_688/MatMul/ReadVariableOp2l
4lstm_688/while/lstm_cell_688/MatMul_1/ReadVariableOp4lstm_688/while/lstm_cell_688/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_688_layer_call_fn_4338095

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
J__inference_lstm_cell_688_layer_call_and_return_conditional_losses_4333491o
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
0__inference_sequential_229_layer_call_fn_4335242

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
K__inference_sequential_229_layer_call_and_return_conditional_losses_4335041o
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

?
lstm_688_while_cond_4335866.
*lstm_688_while_lstm_688_while_loop_counter4
0lstm_688_while_lstm_688_while_maximum_iterations
lstm_688_while_placeholder 
lstm_688_while_placeholder_1 
lstm_688_while_placeholder_2 
lstm_688_while_placeholder_30
,lstm_688_while_less_lstm_688_strided_slice_1G
Clstm_688_while_lstm_688_while_cond_4335866___redundant_placeholder0G
Clstm_688_while_lstm_688_while_cond_4335866___redundant_placeholder1G
Clstm_688_while_lstm_688_while_cond_4335866___redundant_placeholder2G
Clstm_688_while_lstm_688_while_cond_4335866___redundant_placeholder3
lstm_688_while_identity
?
lstm_688/while/LessLesslstm_688_while_placeholder,lstm_688_while_less_lstm_688_strided_slice_1*
T0*
_output_shapes
: ]
lstm_688/while/IdentityIdentitylstm_688/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_688_while_identity lstm_688/while/Identity:output:0*(
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
J__inference_lstm_cell_687_layer_call_and_return_conditional_losses_4333141

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
F__inference_dense_229_layer_call_and_return_conditional_losses_4337963

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

?
0__inference_sequential_229_layer_call_fn_4335215

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
K__inference_sequential_229_layer_call_and_return_conditional_losses_4334452o
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
while_cond_4333008
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4333008___redundant_placeholder05
1while_while_cond_4333008___redundant_placeholder15
1while_while_cond_4333008___redundant_placeholder25
1while_while_cond_4333008___redundant_placeholder3
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
E__inference_lstm_689_layer_call_and_return_conditional_losses_4333969

inputs'
lstm_cell_689_4333887:2('
lstm_cell_689_4333889:
(#
lstm_cell_689_4333891:(
identity??%lstm_cell_689/StatefulPartitionedCall?while;
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
%lstm_cell_689/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_689_4333887lstm_cell_689_4333889lstm_cell_689_4333891*
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
J__inference_lstm_cell_689_layer_call_and_return_conditional_losses_4333841n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_689_4333887lstm_cell_689_4333889lstm_cell_689_4333891*
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
while_body_4333900*
condR
while_cond_4333899*K
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
NoOpNoOp&^lstm_cell_689/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_689/StatefulPartitionedCall%lstm_cell_689/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?8
?
while_body_4334043
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_687_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_687_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_687_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_687_matmul_readvariableop_resource:	?G
4while_lstm_cell_687_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_687_biasadd_readvariableop_resource:	???*while/lstm_cell_687/BiasAdd/ReadVariableOp?)while/lstm_cell_687/MatMul/ReadVariableOp?+while/lstm_cell_687/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_687/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_687_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_687/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_687/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_687/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_687_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_687/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_687/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_687/addAddV2$while/lstm_cell_687/MatMul:product:0&while/lstm_cell_687/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_687/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_687_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_687/BiasAddBiasAddwhile/lstm_cell_687/add:z:02while/lstm_cell_687/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_687/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_687/splitSplit,while/lstm_cell_687/split/split_dim:output:0$while/lstm_cell_687/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_687/SigmoidSigmoid"while/lstm_cell_687/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_687/Sigmoid_1Sigmoid"while/lstm_cell_687/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_687/mulMul!while/lstm_cell_687/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_687/ReluRelu"while/lstm_cell_687/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_687/mul_1Mulwhile/lstm_cell_687/Sigmoid:y:0&while/lstm_cell_687/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_687/add_1AddV2while/lstm_cell_687/mul:z:0while/lstm_cell_687/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_687/Sigmoid_2Sigmoid"while/lstm_cell_687/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_687/Relu_1Reluwhile/lstm_cell_687/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_687/mul_2Mul!while/lstm_cell_687/Sigmoid_2:y:0(while/lstm_cell_687/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_687/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_687/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_687/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_687/BiasAdd/ReadVariableOp*^while/lstm_cell_687/MatMul/ReadVariableOp,^while/lstm_cell_687/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_687_biasadd_readvariableop_resource5while_lstm_cell_687_biasadd_readvariableop_resource_0"n
4while_lstm_cell_687_matmul_1_readvariableop_resource6while_lstm_cell_687_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_687_matmul_readvariableop_resource4while_lstm_cell_687_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_687/BiasAdd/ReadVariableOp*while/lstm_cell_687/BiasAdd/ReadVariableOp2V
)while/lstm_cell_687/MatMul/ReadVariableOp)while/lstm_cell_687/MatMul/ReadVariableOp2Z
+while/lstm_cell_687/MatMul_1/ReadVariableOp+while/lstm_cell_687/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_4336485
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_687_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_687_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_687_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_687_matmul_readvariableop_resource:	?G
4while_lstm_cell_687_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_687_biasadd_readvariableop_resource:	???*while/lstm_cell_687/BiasAdd/ReadVariableOp?)while/lstm_cell_687/MatMul/ReadVariableOp?+while/lstm_cell_687/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_687/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_687_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_687/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_687/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_687/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_687_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_687/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_687/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_687/addAddV2$while/lstm_cell_687/MatMul:product:0&while/lstm_cell_687/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_687/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_687_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_687/BiasAddBiasAddwhile/lstm_cell_687/add:z:02while/lstm_cell_687/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_687/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_687/splitSplit,while/lstm_cell_687/split/split_dim:output:0$while/lstm_cell_687/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_687/SigmoidSigmoid"while/lstm_cell_687/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_687/Sigmoid_1Sigmoid"while/lstm_cell_687/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_687/mulMul!while/lstm_cell_687/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_687/ReluRelu"while/lstm_cell_687/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_687/mul_1Mulwhile/lstm_cell_687/Sigmoid:y:0&while/lstm_cell_687/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_687/add_1AddV2while/lstm_cell_687/mul:z:0while/lstm_cell_687/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_687/Sigmoid_2Sigmoid"while/lstm_cell_687/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_687/Relu_1Reluwhile/lstm_cell_687/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_687/mul_2Mul!while/lstm_cell_687/Sigmoid_2:y:0(while/lstm_cell_687/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_687/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_687/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_687/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_687/BiasAdd/ReadVariableOp*^while/lstm_cell_687/MatMul/ReadVariableOp,^while/lstm_cell_687/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_687_biasadd_readvariableop_resource5while_lstm_cell_687_biasadd_readvariableop_resource_0"n
4while_lstm_cell_687_matmul_1_readvariableop_resource6while_lstm_cell_687_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_687_matmul_readvariableop_resource4while_lstm_cell_687_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_687/BiasAdd/ReadVariableOp*while/lstm_cell_687/BiasAdd/ReadVariableOp2V
)while/lstm_cell_687/MatMul/ReadVariableOp)while/lstm_cell_687/MatMul/ReadVariableOp2Z
+while/lstm_cell_687/MatMul_1/ReadVariableOp+while/lstm_cell_687/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_689_layer_call_fn_4337361

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
E__inference_lstm_689_layer_call_and_return_conditional_losses_4334427o
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
?
while_body_4334193
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_688_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_688_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_688_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_688_matmul_readvariableop_resource:	d?G
4while_lstm_cell_688_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_688_biasadd_readvariableop_resource:	???*while/lstm_cell_688/BiasAdd/ReadVariableOp?)while/lstm_cell_688/MatMul/ReadVariableOp?+while/lstm_cell_688/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_688/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_688_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_688/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_688/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_688/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_688_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_688/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_688/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_688/addAddV2$while/lstm_cell_688/MatMul:product:0&while/lstm_cell_688/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_688/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_688_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_688/BiasAddBiasAddwhile/lstm_cell_688/add:z:02while/lstm_cell_688/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_688/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_688/splitSplit,while/lstm_cell_688/split/split_dim:output:0$while/lstm_cell_688/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_688/SigmoidSigmoid"while/lstm_cell_688/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_688/Sigmoid_1Sigmoid"while/lstm_cell_688/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_688/mulMul!while/lstm_cell_688/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_688/ReluRelu"while/lstm_cell_688/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_688/mul_1Mulwhile/lstm_cell_688/Sigmoid:y:0&while/lstm_cell_688/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_688/add_1AddV2while/lstm_cell_688/mul:z:0while/lstm_cell_688/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_688/Sigmoid_2Sigmoid"while/lstm_cell_688/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_688/Relu_1Reluwhile/lstm_cell_688/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_688/mul_2Mul!while/lstm_cell_688/Sigmoid_2:y:0(while/lstm_cell_688/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_688/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_688/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_688/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_688/BiasAdd/ReadVariableOp*^while/lstm_cell_688/MatMul/ReadVariableOp,^while/lstm_cell_688/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_688_biasadd_readvariableop_resource5while_lstm_cell_688_biasadd_readvariableop_resource_0"n
4while_lstm_cell_688_matmul_1_readvariableop_resource6while_lstm_cell_688_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_688_matmul_readvariableop_resource4while_lstm_cell_688_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_688/BiasAdd/ReadVariableOp*while/lstm_cell_688/BiasAdd/ReadVariableOp2V
)while/lstm_cell_688/MatMul/ReadVariableOp)while/lstm_cell_688/MatMul/ReadVariableOp2Z
+while/lstm_cell_688/MatMul_1/ReadVariableOp+while/lstm_cell_688/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_4336484
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4336484___redundant_placeholder05
1while_while_cond_4336484___redundant_placeholder15
1while_while_cond_4336484___redundant_placeholder25
1while_while_cond_4336484___redundant_placeholder3
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
while_body_4333200
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_687_4333224_0:	?0
while_lstm_cell_687_4333226_0:	d?,
while_lstm_cell_687_4333228_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_687_4333224:	?.
while_lstm_cell_687_4333226:	d?*
while_lstm_cell_687_4333228:	???+while/lstm_cell_687/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_687/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_687_4333224_0while_lstm_cell_687_4333226_0while_lstm_cell_687_4333228_0*
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
J__inference_lstm_cell_687_layer_call_and_return_conditional_losses_4333141?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_687/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_687/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_687/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_687/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_687_4333224while_lstm_cell_687_4333224_0"<
while_lstm_cell_687_4333226while_lstm_cell_687_4333226_0"<
while_lstm_cell_687_4333228while_lstm_cell_687_4333228_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_687/StatefulPartitionedCall+while/lstm_cell_687/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_cond_4334558
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4334558___redundant_placeholder05
1while_while_cond_4334558___redundant_placeholder15
1while_while_cond_4334558___redundant_placeholder25
1while_while_cond_4334558___redundant_placeholder3
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
while_body_4334559
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_689_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_689_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_689_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_689_matmul_readvariableop_resource:2(F
4while_lstm_cell_689_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_689_biasadd_readvariableop_resource:(??*while/lstm_cell_689/BiasAdd/ReadVariableOp?)while/lstm_cell_689/MatMul/ReadVariableOp?+while/lstm_cell_689/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_689/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_689_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_689/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_689/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_689/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_689_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_689/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_689/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_689/addAddV2$while/lstm_cell_689/MatMul:product:0&while/lstm_cell_689/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_689/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_689_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_689/BiasAddBiasAddwhile/lstm_cell_689/add:z:02while/lstm_cell_689/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_689/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_689/splitSplit,while/lstm_cell_689/split/split_dim:output:0$while/lstm_cell_689/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_689/SigmoidSigmoid"while/lstm_cell_689/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_689/Sigmoid_1Sigmoid"while/lstm_cell_689/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_689/mulMul!while/lstm_cell_689/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_689/ReluRelu"while/lstm_cell_689/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_689/mul_1Mulwhile/lstm_cell_689/Sigmoid:y:0&while/lstm_cell_689/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_689/add_1AddV2while/lstm_cell_689/mul:z:0while/lstm_cell_689/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_689/Sigmoid_2Sigmoid"while/lstm_cell_689/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_689/Relu_1Reluwhile/lstm_cell_689/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_689/mul_2Mul!while/lstm_cell_689/Sigmoid_2:y:0(while/lstm_cell_689/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_689/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_689/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_689/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_689/BiasAdd/ReadVariableOp*^while/lstm_cell_689/MatMul/ReadVariableOp,^while/lstm_cell_689/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_689_biasadd_readvariableop_resource5while_lstm_cell_689_biasadd_readvariableop_resource_0"n
4while_lstm_cell_689_matmul_1_readvariableop_resource6while_lstm_cell_689_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_689_matmul_readvariableop_resource4while_lstm_cell_689_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_689/BiasAdd/ReadVariableOp*while/lstm_cell_689/BiasAdd/ReadVariableOp2V
)while/lstm_cell_689/MatMul/ReadVariableOp)while/lstm_cell_689/MatMul/ReadVariableOp2Z
+while/lstm_cell_689/MatMul_1/ReadVariableOp+while/lstm_cell_689/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_4336957
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4336957___redundant_placeholder05
1while_while_cond_4336957___redundant_placeholder15
1while_while_cond_4336957___redundant_placeholder25
1while_while_cond_4336957___redundant_placeholder3
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
while_body_4337244
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_688_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_688_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_688_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_688_matmul_readvariableop_resource:	d?G
4while_lstm_cell_688_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_688_biasadd_readvariableop_resource:	???*while/lstm_cell_688/BiasAdd/ReadVariableOp?)while/lstm_cell_688/MatMul/ReadVariableOp?+while/lstm_cell_688/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_688/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_688_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_688/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_688/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_688/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_688_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_688/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_688/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_688/addAddV2$while/lstm_cell_688/MatMul:product:0&while/lstm_cell_688/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_688/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_688_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_688/BiasAddBiasAddwhile/lstm_cell_688/add:z:02while/lstm_cell_688/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_688/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_688/splitSplit,while/lstm_cell_688/split/split_dim:output:0$while/lstm_cell_688/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_688/SigmoidSigmoid"while/lstm_cell_688/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_688/Sigmoid_1Sigmoid"while/lstm_cell_688/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_688/mulMul!while/lstm_cell_688/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_688/ReluRelu"while/lstm_cell_688/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_688/mul_1Mulwhile/lstm_cell_688/Sigmoid:y:0&while/lstm_cell_688/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_688/add_1AddV2while/lstm_cell_688/mul:z:0while/lstm_cell_688/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_688/Sigmoid_2Sigmoid"while/lstm_cell_688/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_688/Relu_1Reluwhile/lstm_cell_688/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_688/mul_2Mul!while/lstm_cell_688/Sigmoid_2:y:0(while/lstm_cell_688/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_688/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_688/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_688/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_688/BiasAdd/ReadVariableOp*^while/lstm_cell_688/MatMul/ReadVariableOp,^while/lstm_cell_688/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_688_biasadd_readvariableop_resource5while_lstm_cell_688_biasadd_readvariableop_resource_0"n
4while_lstm_cell_688_matmul_1_readvariableop_resource6while_lstm_cell_688_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_688_matmul_readvariableop_resource4while_lstm_cell_688_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_688/BiasAdd/ReadVariableOp*while/lstm_cell_688/BiasAdd/ReadVariableOp2V
)while/lstm_cell_688/MatMul/ReadVariableOp)while/lstm_cell_688/MatMul/ReadVariableOp2Z
+while/lstm_cell_688/MatMul_1/ReadVariableOp+while/lstm_cell_688/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_688_layer_call_and_return_conditional_losses_4338127

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
?
?
*__inference_lstm_689_layer_call_fn_4337372

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
E__inference_lstm_689_layer_call_and_return_conditional_losses_4334643o
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
?
while_cond_4334042
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4334042___redundant_placeholder05
1while_while_cond_4334042___redundant_placeholder15
1while_while_cond_4334042___redundant_placeholder25
1while_while_cond_4334042___redundant_placeholder3
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
*__inference_lstm_687_layer_call_fn_4336107
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
E__inference_lstm_687_layer_call_and_return_conditional_losses_4333078|
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
E__inference_lstm_687_layer_call_and_return_conditional_losses_4336426
inputs_0?
,lstm_cell_687_matmul_readvariableop_resource:	?A
.lstm_cell_687_matmul_1_readvariableop_resource:	d?<
-lstm_cell_687_biasadd_readvariableop_resource:	?
identity??$lstm_cell_687/BiasAdd/ReadVariableOp?#lstm_cell_687/MatMul/ReadVariableOp?%lstm_cell_687/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_687/MatMul/ReadVariableOpReadVariableOp,lstm_cell_687_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_687/MatMulMatMulstrided_slice_2:output:0+lstm_cell_687/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_687/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_687_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_687/MatMul_1MatMulzeros:output:0-lstm_cell_687/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_687/addAddV2lstm_cell_687/MatMul:product:0 lstm_cell_687/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_687/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_687_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_687/BiasAddBiasAddlstm_cell_687/add:z:0,lstm_cell_687/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_687/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_687/splitSplit&lstm_cell_687/split/split_dim:output:0lstm_cell_687/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_687/SigmoidSigmoidlstm_cell_687/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_687/Sigmoid_1Sigmoidlstm_cell_687/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_687/mulMullstm_cell_687/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_687/ReluRelulstm_cell_687/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_687/mul_1Mullstm_cell_687/Sigmoid:y:0 lstm_cell_687/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_687/add_1AddV2lstm_cell_687/mul:z:0lstm_cell_687/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_687/Sigmoid_2Sigmoidlstm_cell_687/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_687/Relu_1Relulstm_cell_687/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_687/mul_2Mullstm_cell_687/Sigmoid_2:y:0"lstm_cell_687/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_687_matmul_readvariableop_resource.lstm_cell_687_matmul_1_readvariableop_resource-lstm_cell_687_biasadd_readvariableop_resource*
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
while_body_4336342*
condR
while_cond_4336341*K
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
NoOpNoOp%^lstm_cell_687/BiasAdd/ReadVariableOp$^lstm_cell_687/MatMul/ReadVariableOp&^lstm_cell_687/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_687/BiasAdd/ReadVariableOp$lstm_cell_687/BiasAdd/ReadVariableOp2J
#lstm_cell_687/MatMul/ReadVariableOp#lstm_cell_687/MatMul/ReadVariableOp2N
%lstm_cell_687/MatMul_1/ReadVariableOp%lstm_cell_687/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
+__inference_dense_229_layer_call_fn_4337953

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
F__inference_dense_229_layer_call_and_return_conditional_losses_4334445o
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
?#
?
while_body_4333550
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_688_4333574_0:	d?0
while_lstm_cell_688_4333576_0:	2?,
while_lstm_cell_688_4333578_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_688_4333574:	d?.
while_lstm_cell_688_4333576:	2?*
while_lstm_cell_688_4333578:	???+while/lstm_cell_688/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_688/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_688_4333574_0while_lstm_cell_688_4333576_0while_lstm_cell_688_4333578_0*
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
J__inference_lstm_cell_688_layer_call_and_return_conditional_losses_4333491?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_688/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_688/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_688/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_688/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_688_4333574while_lstm_cell_688_4333574_0"<
while_lstm_cell_688_4333576while_lstm_cell_688_4333576_0"<
while_lstm_cell_688_4333578while_lstm_cell_688_4333578_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_688/StatefulPartitionedCall+while/lstm_cell_688/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_body_4336815
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_688_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_688_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_688_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_688_matmul_readvariableop_resource:	d?G
4while_lstm_cell_688_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_688_biasadd_readvariableop_resource:	???*while/lstm_cell_688/BiasAdd/ReadVariableOp?)while/lstm_cell_688/MatMul/ReadVariableOp?+while/lstm_cell_688/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_688/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_688_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_688/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_688/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_688/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_688_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_688/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_688/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_688/addAddV2$while/lstm_cell_688/MatMul:product:0&while/lstm_cell_688/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_688/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_688_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_688/BiasAddBiasAddwhile/lstm_cell_688/add:z:02while/lstm_cell_688/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_688/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_688/splitSplit,while/lstm_cell_688/split/split_dim:output:0$while/lstm_cell_688/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_688/SigmoidSigmoid"while/lstm_cell_688/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_688/Sigmoid_1Sigmoid"while/lstm_cell_688/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_688/mulMul!while/lstm_cell_688/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_688/ReluRelu"while/lstm_cell_688/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_688/mul_1Mulwhile/lstm_cell_688/Sigmoid:y:0&while/lstm_cell_688/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_688/add_1AddV2while/lstm_cell_688/mul:z:0while/lstm_cell_688/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_688/Sigmoid_2Sigmoid"while/lstm_cell_688/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_688/Relu_1Reluwhile/lstm_cell_688/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_688/mul_2Mul!while/lstm_cell_688/Sigmoid_2:y:0(while/lstm_cell_688/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_688/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_688/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_688/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_688/BiasAdd/ReadVariableOp*^while/lstm_cell_688/MatMul/ReadVariableOp,^while/lstm_cell_688/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_688_biasadd_readvariableop_resource5while_lstm_cell_688_biasadd_readvariableop_resource_0"n
4while_lstm_cell_688_matmul_1_readvariableop_resource6while_lstm_cell_688_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_688_matmul_readvariableop_resource4while_lstm_cell_688_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_688/BiasAdd/ReadVariableOp*while/lstm_cell_688/BiasAdd/ReadVariableOp2V
)while/lstm_cell_688/MatMul/ReadVariableOp)while/lstm_cell_688/MatMul/ReadVariableOp2Z
+while/lstm_cell_688/MatMul_1/ReadVariableOp+while/lstm_cell_688/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
0__inference_sequential_229_layer_call_fn_4334477
lstm_687_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_687_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_229_layer_call_and_return_conditional_losses_4334452o
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
_user_specified_namelstm_687_input
?T
?
*sequential_229_lstm_689_while_body_4332838L
Hsequential_229_lstm_689_while_sequential_229_lstm_689_while_loop_counterR
Nsequential_229_lstm_689_while_sequential_229_lstm_689_while_maximum_iterations-
)sequential_229_lstm_689_while_placeholder/
+sequential_229_lstm_689_while_placeholder_1/
+sequential_229_lstm_689_while_placeholder_2/
+sequential_229_lstm_689_while_placeholder_3K
Gsequential_229_lstm_689_while_sequential_229_lstm_689_strided_slice_1_0?
?sequential_229_lstm_689_while_tensorarrayv2read_tensorlistgetitem_sequential_229_lstm_689_tensorarrayunstack_tensorlistfromtensor_0^
Lsequential_229_lstm_689_while_lstm_cell_689_matmul_readvariableop_resource_0:2(`
Nsequential_229_lstm_689_while_lstm_cell_689_matmul_1_readvariableop_resource_0:
([
Msequential_229_lstm_689_while_lstm_cell_689_biasadd_readvariableop_resource_0:(*
&sequential_229_lstm_689_while_identity,
(sequential_229_lstm_689_while_identity_1,
(sequential_229_lstm_689_while_identity_2,
(sequential_229_lstm_689_while_identity_3,
(sequential_229_lstm_689_while_identity_4,
(sequential_229_lstm_689_while_identity_5I
Esequential_229_lstm_689_while_sequential_229_lstm_689_strided_slice_1?
?sequential_229_lstm_689_while_tensorarrayv2read_tensorlistgetitem_sequential_229_lstm_689_tensorarrayunstack_tensorlistfromtensor\
Jsequential_229_lstm_689_while_lstm_cell_689_matmul_readvariableop_resource:2(^
Lsequential_229_lstm_689_while_lstm_cell_689_matmul_1_readvariableop_resource:
(Y
Ksequential_229_lstm_689_while_lstm_cell_689_biasadd_readvariableop_resource:(??Bsequential_229/lstm_689/while/lstm_cell_689/BiasAdd/ReadVariableOp?Asequential_229/lstm_689/while/lstm_cell_689/MatMul/ReadVariableOp?Csequential_229/lstm_689/while/lstm_cell_689/MatMul_1/ReadVariableOp?
Osequential_229/lstm_689/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
Asequential_229/lstm_689/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_229_lstm_689_while_tensorarrayv2read_tensorlistgetitem_sequential_229_lstm_689_tensorarrayunstack_tensorlistfromtensor_0)sequential_229_lstm_689_while_placeholderXsequential_229/lstm_689/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
Asequential_229/lstm_689/while/lstm_cell_689/MatMul/ReadVariableOpReadVariableOpLsequential_229_lstm_689_while_lstm_cell_689_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
2sequential_229/lstm_689/while/lstm_cell_689/MatMulMatMulHsequential_229/lstm_689/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_229/lstm_689/while/lstm_cell_689/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
Csequential_229/lstm_689/while/lstm_cell_689/MatMul_1/ReadVariableOpReadVariableOpNsequential_229_lstm_689_while_lstm_cell_689_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
4sequential_229/lstm_689/while/lstm_cell_689/MatMul_1MatMul+sequential_229_lstm_689_while_placeholder_2Ksequential_229/lstm_689/while/lstm_cell_689/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
/sequential_229/lstm_689/while/lstm_cell_689/addAddV2<sequential_229/lstm_689/while/lstm_cell_689/MatMul:product:0>sequential_229/lstm_689/while/lstm_cell_689/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
Bsequential_229/lstm_689/while/lstm_cell_689/BiasAdd/ReadVariableOpReadVariableOpMsequential_229_lstm_689_while_lstm_cell_689_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
3sequential_229/lstm_689/while/lstm_cell_689/BiasAddBiasAdd3sequential_229/lstm_689/while/lstm_cell_689/add:z:0Jsequential_229/lstm_689/while/lstm_cell_689/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(}
;sequential_229/lstm_689/while/lstm_cell_689/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_229/lstm_689/while/lstm_cell_689/splitSplitDsequential_229/lstm_689/while/lstm_cell_689/split/split_dim:output:0<sequential_229/lstm_689/while/lstm_cell_689/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
3sequential_229/lstm_689/while/lstm_cell_689/SigmoidSigmoid:sequential_229/lstm_689/while/lstm_cell_689/split:output:0*
T0*'
_output_shapes
:?????????
?
5sequential_229/lstm_689/while/lstm_cell_689/Sigmoid_1Sigmoid:sequential_229/lstm_689/while/lstm_cell_689/split:output:1*
T0*'
_output_shapes
:?????????
?
/sequential_229/lstm_689/while/lstm_cell_689/mulMul9sequential_229/lstm_689/while/lstm_cell_689/Sigmoid_1:y:0+sequential_229_lstm_689_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
0sequential_229/lstm_689/while/lstm_cell_689/ReluRelu:sequential_229/lstm_689/while/lstm_cell_689/split:output:2*
T0*'
_output_shapes
:?????????
?
1sequential_229/lstm_689/while/lstm_cell_689/mul_1Mul7sequential_229/lstm_689/while/lstm_cell_689/Sigmoid:y:0>sequential_229/lstm_689/while/lstm_cell_689/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
1sequential_229/lstm_689/while/lstm_cell_689/add_1AddV23sequential_229/lstm_689/while/lstm_cell_689/mul:z:05sequential_229/lstm_689/while/lstm_cell_689/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
5sequential_229/lstm_689/while/lstm_cell_689/Sigmoid_2Sigmoid:sequential_229/lstm_689/while/lstm_cell_689/split:output:3*
T0*'
_output_shapes
:?????????
?
2sequential_229/lstm_689/while/lstm_cell_689/Relu_1Relu5sequential_229/lstm_689/while/lstm_cell_689/add_1:z:0*
T0*'
_output_shapes
:?????????
?
1sequential_229/lstm_689/while/lstm_cell_689/mul_2Mul9sequential_229/lstm_689/while/lstm_cell_689/Sigmoid_2:y:0@sequential_229/lstm_689/while/lstm_cell_689/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
Bsequential_229/lstm_689/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_229_lstm_689_while_placeholder_1)sequential_229_lstm_689_while_placeholder5sequential_229/lstm_689/while/lstm_cell_689/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_229/lstm_689/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_229/lstm_689/while/addAddV2)sequential_229_lstm_689_while_placeholder,sequential_229/lstm_689/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_229/lstm_689/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_229/lstm_689/while/add_1AddV2Hsequential_229_lstm_689_while_sequential_229_lstm_689_while_loop_counter.sequential_229/lstm_689/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_229/lstm_689/while/IdentityIdentity'sequential_229/lstm_689/while/add_1:z:0#^sequential_229/lstm_689/while/NoOp*
T0*
_output_shapes
: ?
(sequential_229/lstm_689/while/Identity_1IdentityNsequential_229_lstm_689_while_sequential_229_lstm_689_while_maximum_iterations#^sequential_229/lstm_689/while/NoOp*
T0*
_output_shapes
: ?
(sequential_229/lstm_689/while/Identity_2Identity%sequential_229/lstm_689/while/add:z:0#^sequential_229/lstm_689/while/NoOp*
T0*
_output_shapes
: ?
(sequential_229/lstm_689/while/Identity_3IdentityRsequential_229/lstm_689/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_229/lstm_689/while/NoOp*
T0*
_output_shapes
: ?
(sequential_229/lstm_689/while/Identity_4Identity5sequential_229/lstm_689/while/lstm_cell_689/mul_2:z:0#^sequential_229/lstm_689/while/NoOp*
T0*'
_output_shapes
:?????????
?
(sequential_229/lstm_689/while/Identity_5Identity5sequential_229/lstm_689/while/lstm_cell_689/add_1:z:0#^sequential_229/lstm_689/while/NoOp*
T0*'
_output_shapes
:?????????
?
"sequential_229/lstm_689/while/NoOpNoOpC^sequential_229/lstm_689/while/lstm_cell_689/BiasAdd/ReadVariableOpB^sequential_229/lstm_689/while/lstm_cell_689/MatMul/ReadVariableOpD^sequential_229/lstm_689/while/lstm_cell_689/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_229_lstm_689_while_identity/sequential_229/lstm_689/while/Identity:output:0"]
(sequential_229_lstm_689_while_identity_11sequential_229/lstm_689/while/Identity_1:output:0"]
(sequential_229_lstm_689_while_identity_21sequential_229/lstm_689/while/Identity_2:output:0"]
(sequential_229_lstm_689_while_identity_31sequential_229/lstm_689/while/Identity_3:output:0"]
(sequential_229_lstm_689_while_identity_41sequential_229/lstm_689/while/Identity_4:output:0"]
(sequential_229_lstm_689_while_identity_51sequential_229/lstm_689/while/Identity_5:output:0"?
Ksequential_229_lstm_689_while_lstm_cell_689_biasadd_readvariableop_resourceMsequential_229_lstm_689_while_lstm_cell_689_biasadd_readvariableop_resource_0"?
Lsequential_229_lstm_689_while_lstm_cell_689_matmul_1_readvariableop_resourceNsequential_229_lstm_689_while_lstm_cell_689_matmul_1_readvariableop_resource_0"?
Jsequential_229_lstm_689_while_lstm_cell_689_matmul_readvariableop_resourceLsequential_229_lstm_689_while_lstm_cell_689_matmul_readvariableop_resource_0"?
Esequential_229_lstm_689_while_sequential_229_lstm_689_strided_slice_1Gsequential_229_lstm_689_while_sequential_229_lstm_689_strided_slice_1_0"?
?sequential_229_lstm_689_while_tensorarrayv2read_tensorlistgetitem_sequential_229_lstm_689_tensorarrayunstack_tensorlistfromtensor?sequential_229_lstm_689_while_tensorarrayv2read_tensorlistgetitem_sequential_229_lstm_689_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2?
Bsequential_229/lstm_689/while/lstm_cell_689/BiasAdd/ReadVariableOpBsequential_229/lstm_689/while/lstm_cell_689/BiasAdd/ReadVariableOp2?
Asequential_229/lstm_689/while/lstm_cell_689/MatMul/ReadVariableOpAsequential_229/lstm_689/while/lstm_cell_689/MatMul/ReadVariableOp2?
Csequential_229/lstm_689/while/lstm_cell_689/MatMul_1/ReadVariableOpCsequential_229/lstm_689/while/lstm_cell_689/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_4337243
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4337243___redundant_placeholder05
1while_while_cond_4337243___redundant_placeholder15
1while_while_cond_4337243___redundant_placeholder25
1while_while_cond_4337243___redundant_placeholder3
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
E__inference_lstm_688_layer_call_and_return_conditional_losses_4337185

inputs?
,lstm_cell_688_matmul_readvariableop_resource:	d?A
.lstm_cell_688_matmul_1_readvariableop_resource:	2?<
-lstm_cell_688_biasadd_readvariableop_resource:	?
identity??$lstm_cell_688/BiasAdd/ReadVariableOp?#lstm_cell_688/MatMul/ReadVariableOp?%lstm_cell_688/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_688/MatMul/ReadVariableOpReadVariableOp,lstm_cell_688_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_688/MatMulMatMulstrided_slice_2:output:0+lstm_cell_688/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_688/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_688_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_688/MatMul_1MatMulzeros:output:0-lstm_cell_688/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_688/addAddV2lstm_cell_688/MatMul:product:0 lstm_cell_688/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_688/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_688_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_688/BiasAddBiasAddlstm_cell_688/add:z:0,lstm_cell_688/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_688/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_688/splitSplit&lstm_cell_688/split/split_dim:output:0lstm_cell_688/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_688/SigmoidSigmoidlstm_cell_688/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_688/Sigmoid_1Sigmoidlstm_cell_688/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_688/mulMullstm_cell_688/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_688/ReluRelulstm_cell_688/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_688/mul_1Mullstm_cell_688/Sigmoid:y:0 lstm_cell_688/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_688/add_1AddV2lstm_cell_688/mul:z:0lstm_cell_688/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_688/Sigmoid_2Sigmoidlstm_cell_688/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_688/Relu_1Relulstm_cell_688/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_688/mul_2Mullstm_cell_688/Sigmoid_2:y:0"lstm_cell_688/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_688_matmul_readvariableop_resource.lstm_cell_688_matmul_1_readvariableop_resource-lstm_cell_688_biasadd_readvariableop_resource*
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
while_body_4337101*
condR
while_cond_4337100*K
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
NoOpNoOp%^lstm_cell_688/BiasAdd/ReadVariableOp$^lstm_cell_688/MatMul/ReadVariableOp&^lstm_cell_688/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_688/BiasAdd/ReadVariableOp$lstm_cell_688/BiasAdd/ReadVariableOp2J
#lstm_cell_688/MatMul/ReadVariableOp#lstm_cell_688/MatMul/ReadVariableOp2N
%lstm_cell_688/MatMul_1/ReadVariableOp%lstm_cell_688/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
K__inference_sequential_229_layer_call_and_return_conditional_losses_4334452

inputs#
lstm_687_4334128:	?#
lstm_687_4334130:	d?
lstm_687_4334132:	?#
lstm_688_4334278:	d?#
lstm_688_4334280:	2?
lstm_688_4334282:	?"
lstm_689_4334428:2("
lstm_689_4334430:
(
lstm_689_4334432:(#
dense_229_4334446:

dense_229_4334448:
identity??!dense_229/StatefulPartitionedCall? lstm_687/StatefulPartitionedCall? lstm_688/StatefulPartitionedCall? lstm_689/StatefulPartitionedCall?
 lstm_687/StatefulPartitionedCallStatefulPartitionedCallinputslstm_687_4334128lstm_687_4334130lstm_687_4334132*
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
E__inference_lstm_687_layer_call_and_return_conditional_losses_4334127?
 lstm_688/StatefulPartitionedCallStatefulPartitionedCall)lstm_687/StatefulPartitionedCall:output:0lstm_688_4334278lstm_688_4334280lstm_688_4334282*
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
E__inference_lstm_688_layer_call_and_return_conditional_losses_4334277?
 lstm_689/StatefulPartitionedCallStatefulPartitionedCall)lstm_688/StatefulPartitionedCall:output:0lstm_689_4334428lstm_689_4334430lstm_689_4334432*
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
E__inference_lstm_689_layer_call_and_return_conditional_losses_4334427?
!dense_229/StatefulPartitionedCallStatefulPartitionedCall)lstm_689/StatefulPartitionedCall:output:0dense_229_4334446dense_229_4334448*
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
F__inference_dense_229_layer_call_and_return_conditional_losses_4334445y
IdentityIdentity*dense_229/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_229/StatefulPartitionedCall!^lstm_687/StatefulPartitionedCall!^lstm_688/StatefulPartitionedCall!^lstm_689/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_229/StatefulPartitionedCall!dense_229/StatefulPartitionedCall2D
 lstm_687/StatefulPartitionedCall lstm_687/StatefulPartitionedCall2D
 lstm_688/StatefulPartitionedCall lstm_688/StatefulPartitionedCall2D
 lstm_689/StatefulPartitionedCall lstm_689/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?C
?

lstm_688_while_body_4335867.
*lstm_688_while_lstm_688_while_loop_counter4
0lstm_688_while_lstm_688_while_maximum_iterations
lstm_688_while_placeholder 
lstm_688_while_placeholder_1 
lstm_688_while_placeholder_2 
lstm_688_while_placeholder_3-
)lstm_688_while_lstm_688_strided_slice_1_0i
elstm_688_while_tensorarrayv2read_tensorlistgetitem_lstm_688_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_688_while_lstm_cell_688_matmul_readvariableop_resource_0:	d?R
?lstm_688_while_lstm_cell_688_matmul_1_readvariableop_resource_0:	2?M
>lstm_688_while_lstm_cell_688_biasadd_readvariableop_resource_0:	?
lstm_688_while_identity
lstm_688_while_identity_1
lstm_688_while_identity_2
lstm_688_while_identity_3
lstm_688_while_identity_4
lstm_688_while_identity_5+
'lstm_688_while_lstm_688_strided_slice_1g
clstm_688_while_tensorarrayv2read_tensorlistgetitem_lstm_688_tensorarrayunstack_tensorlistfromtensorN
;lstm_688_while_lstm_cell_688_matmul_readvariableop_resource:	d?P
=lstm_688_while_lstm_cell_688_matmul_1_readvariableop_resource:	2?K
<lstm_688_while_lstm_cell_688_biasadd_readvariableop_resource:	???3lstm_688/while/lstm_cell_688/BiasAdd/ReadVariableOp?2lstm_688/while/lstm_cell_688/MatMul/ReadVariableOp?4lstm_688/while/lstm_cell_688/MatMul_1/ReadVariableOp?
@lstm_688/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_688/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_688_while_tensorarrayv2read_tensorlistgetitem_lstm_688_tensorarrayunstack_tensorlistfromtensor_0lstm_688_while_placeholderIlstm_688/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_688/while/lstm_cell_688/MatMul/ReadVariableOpReadVariableOp=lstm_688_while_lstm_cell_688_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_688/while/lstm_cell_688/MatMulMatMul9lstm_688/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_688/while/lstm_cell_688/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_688/while/lstm_cell_688/MatMul_1/ReadVariableOpReadVariableOp?lstm_688_while_lstm_cell_688_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_688/while/lstm_cell_688/MatMul_1MatMullstm_688_while_placeholder_2<lstm_688/while/lstm_cell_688/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_688/while/lstm_cell_688/addAddV2-lstm_688/while/lstm_cell_688/MatMul:product:0/lstm_688/while/lstm_cell_688/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_688/while/lstm_cell_688/BiasAdd/ReadVariableOpReadVariableOp>lstm_688_while_lstm_cell_688_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_688/while/lstm_cell_688/BiasAddBiasAdd$lstm_688/while/lstm_cell_688/add:z:0;lstm_688/while/lstm_cell_688/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_688/while/lstm_cell_688/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_688/while/lstm_cell_688/splitSplit5lstm_688/while/lstm_cell_688/split/split_dim:output:0-lstm_688/while/lstm_cell_688/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_688/while/lstm_cell_688/SigmoidSigmoid+lstm_688/while/lstm_cell_688/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_688/while/lstm_cell_688/Sigmoid_1Sigmoid+lstm_688/while/lstm_cell_688/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_688/while/lstm_cell_688/mulMul*lstm_688/while/lstm_cell_688/Sigmoid_1:y:0lstm_688_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_688/while/lstm_cell_688/ReluRelu+lstm_688/while/lstm_cell_688/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_688/while/lstm_cell_688/mul_1Mul(lstm_688/while/lstm_cell_688/Sigmoid:y:0/lstm_688/while/lstm_cell_688/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_688/while/lstm_cell_688/add_1AddV2$lstm_688/while/lstm_cell_688/mul:z:0&lstm_688/while/lstm_cell_688/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_688/while/lstm_cell_688/Sigmoid_2Sigmoid+lstm_688/while/lstm_cell_688/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_688/while/lstm_cell_688/Relu_1Relu&lstm_688/while/lstm_cell_688/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_688/while/lstm_cell_688/mul_2Mul*lstm_688/while/lstm_cell_688/Sigmoid_2:y:01lstm_688/while/lstm_cell_688/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_688/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_688_while_placeholder_1lstm_688_while_placeholder&lstm_688/while/lstm_cell_688/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_688/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_688/while/addAddV2lstm_688_while_placeholderlstm_688/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_688/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_688/while/add_1AddV2*lstm_688_while_lstm_688_while_loop_counterlstm_688/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_688/while/IdentityIdentitylstm_688/while/add_1:z:0^lstm_688/while/NoOp*
T0*
_output_shapes
: ?
lstm_688/while/Identity_1Identity0lstm_688_while_lstm_688_while_maximum_iterations^lstm_688/while/NoOp*
T0*
_output_shapes
: t
lstm_688/while/Identity_2Identitylstm_688/while/add:z:0^lstm_688/while/NoOp*
T0*
_output_shapes
: ?
lstm_688/while/Identity_3IdentityClstm_688/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_688/while/NoOp*
T0*
_output_shapes
: ?
lstm_688/while/Identity_4Identity&lstm_688/while/lstm_cell_688/mul_2:z:0^lstm_688/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_688/while/Identity_5Identity&lstm_688/while/lstm_cell_688/add_1:z:0^lstm_688/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_688/while/NoOpNoOp4^lstm_688/while/lstm_cell_688/BiasAdd/ReadVariableOp3^lstm_688/while/lstm_cell_688/MatMul/ReadVariableOp5^lstm_688/while/lstm_cell_688/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_688_while_identity lstm_688/while/Identity:output:0"?
lstm_688_while_identity_1"lstm_688/while/Identity_1:output:0"?
lstm_688_while_identity_2"lstm_688/while/Identity_2:output:0"?
lstm_688_while_identity_3"lstm_688/while/Identity_3:output:0"?
lstm_688_while_identity_4"lstm_688/while/Identity_4:output:0"?
lstm_688_while_identity_5"lstm_688/while/Identity_5:output:0"T
'lstm_688_while_lstm_688_strided_slice_1)lstm_688_while_lstm_688_strided_slice_1_0"~
<lstm_688_while_lstm_cell_688_biasadd_readvariableop_resource>lstm_688_while_lstm_cell_688_biasadd_readvariableop_resource_0"?
=lstm_688_while_lstm_cell_688_matmul_1_readvariableop_resource?lstm_688_while_lstm_cell_688_matmul_1_readvariableop_resource_0"|
;lstm_688_while_lstm_cell_688_matmul_readvariableop_resource=lstm_688_while_lstm_cell_688_matmul_readvariableop_resource_0"?
clstm_688_while_tensorarrayv2read_tensorlistgetitem_lstm_688_tensorarrayunstack_tensorlistfromtensorelstm_688_while_tensorarrayv2read_tensorlistgetitem_lstm_688_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_688/while/lstm_cell_688/BiasAdd/ReadVariableOp3lstm_688/while/lstm_cell_688/BiasAdd/ReadVariableOp2h
2lstm_688/while/lstm_cell_688/MatMul/ReadVariableOp2lstm_688/while/lstm_cell_688/MatMul/ReadVariableOp2l
4lstm_688/while/lstm_cell_688/MatMul_1/ReadVariableOp4lstm_688/while/lstm_cell_688/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_688_layer_call_and_return_conditional_losses_4337328

inputs?
,lstm_cell_688_matmul_readvariableop_resource:	d?A
.lstm_cell_688_matmul_1_readvariableop_resource:	2?<
-lstm_cell_688_biasadd_readvariableop_resource:	?
identity??$lstm_cell_688/BiasAdd/ReadVariableOp?#lstm_cell_688/MatMul/ReadVariableOp?%lstm_cell_688/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_688/MatMul/ReadVariableOpReadVariableOp,lstm_cell_688_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_688/MatMulMatMulstrided_slice_2:output:0+lstm_cell_688/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_688/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_688_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_688/MatMul_1MatMulzeros:output:0-lstm_cell_688/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_688/addAddV2lstm_cell_688/MatMul:product:0 lstm_cell_688/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_688/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_688_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_688/BiasAddBiasAddlstm_cell_688/add:z:0,lstm_cell_688/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_688/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_688/splitSplit&lstm_cell_688/split/split_dim:output:0lstm_cell_688/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_688/SigmoidSigmoidlstm_cell_688/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_688/Sigmoid_1Sigmoidlstm_cell_688/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_688/mulMullstm_cell_688/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_688/ReluRelulstm_cell_688/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_688/mul_1Mullstm_cell_688/Sigmoid:y:0 lstm_cell_688/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_688/add_1AddV2lstm_cell_688/mul:z:0lstm_cell_688/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_688/Sigmoid_2Sigmoidlstm_cell_688/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_688/Relu_1Relulstm_cell_688/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_688/mul_2Mullstm_cell_688/Sigmoid_2:y:0"lstm_cell_688/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_688_matmul_readvariableop_resource.lstm_cell_688_matmul_1_readvariableop_resource-lstm_cell_688_biasadd_readvariableop_resource*
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
while_body_4337244*
condR
while_cond_4337243*K
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
NoOpNoOp%^lstm_cell_688/BiasAdd/ReadVariableOp$^lstm_cell_688/MatMul/ReadVariableOp&^lstm_cell_688/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_688/BiasAdd/ReadVariableOp$lstm_cell_688/BiasAdd/ReadVariableOp2J
#lstm_cell_688/MatMul/ReadVariableOp#lstm_cell_688/MatMul/ReadVariableOp2N
%lstm_cell_688/MatMul_1/ReadVariableOp%lstm_cell_688/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_687_layer_call_and_return_conditional_losses_4338061

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
while_body_4333709
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_689_4333733_0:2(/
while_lstm_cell_689_4333735_0:
(+
while_lstm_cell_689_4333737_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_689_4333733:2(-
while_lstm_cell_689_4333735:
()
while_lstm_cell_689_4333737:(??+while/lstm_cell_689/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_689/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_689_4333733_0while_lstm_cell_689_4333735_0while_lstm_cell_689_4333737_0*
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
J__inference_lstm_cell_689_layer_call_and_return_conditional_losses_4333695?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_689/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_689/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_689/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_689/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_689_4333733while_lstm_cell_689_4333733_0"<
while_lstm_cell_689_4333735while_lstm_cell_689_4333735_0"<
while_lstm_cell_689_4333737while_lstm_cell_689_4333737_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_689/StatefulPartitionedCall+while/lstm_cell_689/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_688_layer_call_fn_4336734
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
E__inference_lstm_688_layer_call_and_return_conditional_losses_4333619|
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
E__inference_lstm_689_layer_call_and_return_conditional_losses_4333778

inputs'
lstm_cell_689_4333696:2('
lstm_cell_689_4333698:
(#
lstm_cell_689_4333700:(
identity??%lstm_cell_689/StatefulPartitionedCall?while;
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
%lstm_cell_689/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_689_4333696lstm_cell_689_4333698lstm_cell_689_4333700*
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
J__inference_lstm_cell_689_layer_call_and_return_conditional_losses_4333695n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_689_4333696lstm_cell_689_4333698lstm_cell_689_4333700*
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
while_body_4333709*
condR
while_cond_4333708*K
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
NoOpNoOp&^lstm_cell_689/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_689/StatefulPartitionedCall%lstm_cell_689/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?
?
*__inference_lstm_689_layer_call_fn_4337350
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
E__inference_lstm_689_layer_call_and_return_conditional_losses_4333969o
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
?
?
/__inference_lstm_cell_689_layer_call_fn_4338193

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
J__inference_lstm_cell_689_layer_call_and_return_conditional_losses_4333841o
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
/__inference_lstm_cell_687_layer_call_fn_4337980

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
J__inference_lstm_cell_687_layer_call_and_return_conditional_losses_4332995o
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
J__inference_lstm_cell_687_layer_call_and_return_conditional_losses_4332995

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
E__inference_lstm_689_layer_call_and_return_conditional_losses_4337658
inputs_0>
,lstm_cell_689_matmul_readvariableop_resource:2(@
.lstm_cell_689_matmul_1_readvariableop_resource:
(;
-lstm_cell_689_biasadd_readvariableop_resource:(
identity??$lstm_cell_689/BiasAdd/ReadVariableOp?#lstm_cell_689/MatMul/ReadVariableOp?%lstm_cell_689/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_689/MatMul/ReadVariableOpReadVariableOp,lstm_cell_689_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_689/MatMulMatMulstrided_slice_2:output:0+lstm_cell_689/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_689/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_689_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_689/MatMul_1MatMulzeros:output:0-lstm_cell_689/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_689/addAddV2lstm_cell_689/MatMul:product:0 lstm_cell_689/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_689/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_689_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_689/BiasAddBiasAddlstm_cell_689/add:z:0,lstm_cell_689/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_689/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_689/splitSplit&lstm_cell_689/split/split_dim:output:0lstm_cell_689/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_689/SigmoidSigmoidlstm_cell_689/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_689/Sigmoid_1Sigmoidlstm_cell_689/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_689/mulMullstm_cell_689/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_689/ReluRelulstm_cell_689/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_689/mul_1Mullstm_cell_689/Sigmoid:y:0 lstm_cell_689/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_689/add_1AddV2lstm_cell_689/mul:z:0lstm_cell_689/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_689/Sigmoid_2Sigmoidlstm_cell_689/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_689/Relu_1Relulstm_cell_689/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_689/mul_2Mullstm_cell_689/Sigmoid_2:y:0"lstm_cell_689/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_689_matmul_readvariableop_resource.lstm_cell_689_matmul_1_readvariableop_resource-lstm_cell_689_biasadd_readvariableop_resource*
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
while_body_4337574*
condR
while_cond_4337573*K
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
NoOpNoOp%^lstm_cell_689/BiasAdd/ReadVariableOp$^lstm_cell_689/MatMul/ReadVariableOp&^lstm_cell_689/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_689/BiasAdd/ReadVariableOp$lstm_cell_689/BiasAdd/ReadVariableOp2J
#lstm_cell_689/MatMul/ReadVariableOp#lstm_cell_689/MatMul/ReadVariableOp2N
%lstm_cell_689/MatMul_1/ReadVariableOp%lstm_cell_689/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?8
?
while_body_4336342
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_687_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_687_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_687_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_687_matmul_readvariableop_resource:	?G
4while_lstm_cell_687_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_687_biasadd_readvariableop_resource:	???*while/lstm_cell_687/BiasAdd/ReadVariableOp?)while/lstm_cell_687/MatMul/ReadVariableOp?+while/lstm_cell_687/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_687/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_687_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_687/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_687/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_687/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_687_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_687/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_687/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_687/addAddV2$while/lstm_cell_687/MatMul:product:0&while/lstm_cell_687/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_687/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_687_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_687/BiasAddBiasAddwhile/lstm_cell_687/add:z:02while/lstm_cell_687/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_687/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_687/splitSplit,while/lstm_cell_687/split/split_dim:output:0$while/lstm_cell_687/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_687/SigmoidSigmoid"while/lstm_cell_687/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_687/Sigmoid_1Sigmoid"while/lstm_cell_687/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_687/mulMul!while/lstm_cell_687/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_687/ReluRelu"while/lstm_cell_687/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_687/mul_1Mulwhile/lstm_cell_687/Sigmoid:y:0&while/lstm_cell_687/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_687/add_1AddV2while/lstm_cell_687/mul:z:0while/lstm_cell_687/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_687/Sigmoid_2Sigmoid"while/lstm_cell_687/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_687/Relu_1Reluwhile/lstm_cell_687/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_687/mul_2Mul!while/lstm_cell_687/Sigmoid_2:y:0(while/lstm_cell_687/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_687/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_687/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_687/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_687/BiasAdd/ReadVariableOp*^while/lstm_cell_687/MatMul/ReadVariableOp,^while/lstm_cell_687/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_687_biasadd_readvariableop_resource5while_lstm_cell_687_biasadd_readvariableop_resource_0"n
4while_lstm_cell_687_matmul_1_readvariableop_resource6while_lstm_cell_687_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_687_matmul_readvariableop_resource4while_lstm_cell_687_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_687/BiasAdd/ReadVariableOp*while/lstm_cell_687/BiasAdd/ReadVariableOp2V
)while/lstm_cell_687/MatMul/ReadVariableOp)while/lstm_cell_687/MatMul/ReadVariableOp2Z
+while/lstm_cell_687/MatMul_1/ReadVariableOp+while/lstm_cell_687/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
?#
?
while_body_4333359
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_688_4333383_0:	d?0
while_lstm_cell_688_4333385_0:	2?,
while_lstm_cell_688_4333387_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_688_4333383:	d?.
while_lstm_cell_688_4333385:	2?*
while_lstm_cell_688_4333387:	???+while/lstm_cell_688/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_688/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_688_4333383_0while_lstm_cell_688_4333385_0while_lstm_cell_688_4333387_0*
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
J__inference_lstm_cell_688_layer_call_and_return_conditional_losses_4333345?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_688/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_688/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_688/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_688/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_688_4333383while_lstm_cell_688_4333383_0"<
while_lstm_cell_688_4333385while_lstm_cell_688_4333385_0"<
while_lstm_cell_688_4333387while_lstm_cell_688_4333387_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_688/StatefulPartitionedCall+while/lstm_cell_688/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_688_layer_call_and_return_conditional_losses_4338159

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
?K
?
E__inference_lstm_688_layer_call_and_return_conditional_losses_4336899
inputs_0?
,lstm_cell_688_matmul_readvariableop_resource:	d?A
.lstm_cell_688_matmul_1_readvariableop_resource:	2?<
-lstm_cell_688_biasadd_readvariableop_resource:	?
identity??$lstm_cell_688/BiasAdd/ReadVariableOp?#lstm_cell_688/MatMul/ReadVariableOp?%lstm_cell_688/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_688/MatMul/ReadVariableOpReadVariableOp,lstm_cell_688_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_688/MatMulMatMulstrided_slice_2:output:0+lstm_cell_688/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_688/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_688_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_688/MatMul_1MatMulzeros:output:0-lstm_cell_688/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_688/addAddV2lstm_cell_688/MatMul:product:0 lstm_cell_688/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_688/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_688_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_688/BiasAddBiasAddlstm_cell_688/add:z:0,lstm_cell_688/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_688/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_688/splitSplit&lstm_cell_688/split/split_dim:output:0lstm_cell_688/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_688/SigmoidSigmoidlstm_cell_688/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_688/Sigmoid_1Sigmoidlstm_cell_688/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_688/mulMullstm_cell_688/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_688/ReluRelulstm_cell_688/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_688/mul_1Mullstm_cell_688/Sigmoid:y:0 lstm_cell_688/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_688/add_1AddV2lstm_cell_688/mul:z:0lstm_cell_688/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_688/Sigmoid_2Sigmoidlstm_cell_688/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_688/Relu_1Relulstm_cell_688/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_688/mul_2Mullstm_cell_688/Sigmoid_2:y:0"lstm_cell_688/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_688_matmul_readvariableop_resource.lstm_cell_688_matmul_1_readvariableop_resource-lstm_cell_688_biasadd_readvariableop_resource*
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
while_body_4336815*
condR
while_cond_4336814*K
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
NoOpNoOp%^lstm_cell_688/BiasAdd/ReadVariableOp$^lstm_cell_688/MatMul/ReadVariableOp&^lstm_cell_688/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_688/BiasAdd/ReadVariableOp$lstm_cell_688/BiasAdd/ReadVariableOp2J
#lstm_cell_688/MatMul/ReadVariableOp#lstm_cell_688/MatMul/ReadVariableOp2N
%lstm_cell_688/MatMul_1/ReadVariableOp%lstm_cell_688/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?
?
*__inference_lstm_688_layer_call_fn_4336745

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
E__inference_lstm_688_layer_call_and_return_conditional_losses_4334277s
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

?
lstm_688_while_cond_4335439.
*lstm_688_while_lstm_688_while_loop_counter4
0lstm_688_while_lstm_688_while_maximum_iterations
lstm_688_while_placeholder 
lstm_688_while_placeholder_1 
lstm_688_while_placeholder_2 
lstm_688_while_placeholder_30
,lstm_688_while_less_lstm_688_strided_slice_1G
Clstm_688_while_lstm_688_while_cond_4335439___redundant_placeholder0G
Clstm_688_while_lstm_688_while_cond_4335439___redundant_placeholder1G
Clstm_688_while_lstm_688_while_cond_4335439___redundant_placeholder2G
Clstm_688_while_lstm_688_while_cond_4335439___redundant_placeholder3
lstm_688_while_identity
?
lstm_688/while/LessLesslstm_688_while_placeholder,lstm_688_while_less_lstm_688_strided_slice_1*
T0*
_output_shapes
: ]
lstm_688/while/IdentityIdentitylstm_688/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_688_while_identity lstm_688/while/Identity:output:0*(
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
*sequential_229_lstm_688_while_body_4332699L
Hsequential_229_lstm_688_while_sequential_229_lstm_688_while_loop_counterR
Nsequential_229_lstm_688_while_sequential_229_lstm_688_while_maximum_iterations-
)sequential_229_lstm_688_while_placeholder/
+sequential_229_lstm_688_while_placeholder_1/
+sequential_229_lstm_688_while_placeholder_2/
+sequential_229_lstm_688_while_placeholder_3K
Gsequential_229_lstm_688_while_sequential_229_lstm_688_strided_slice_1_0?
?sequential_229_lstm_688_while_tensorarrayv2read_tensorlistgetitem_sequential_229_lstm_688_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_229_lstm_688_while_lstm_cell_688_matmul_readvariableop_resource_0:	d?a
Nsequential_229_lstm_688_while_lstm_cell_688_matmul_1_readvariableop_resource_0:	2?\
Msequential_229_lstm_688_while_lstm_cell_688_biasadd_readvariableop_resource_0:	?*
&sequential_229_lstm_688_while_identity,
(sequential_229_lstm_688_while_identity_1,
(sequential_229_lstm_688_while_identity_2,
(sequential_229_lstm_688_while_identity_3,
(sequential_229_lstm_688_while_identity_4,
(sequential_229_lstm_688_while_identity_5I
Esequential_229_lstm_688_while_sequential_229_lstm_688_strided_slice_1?
?sequential_229_lstm_688_while_tensorarrayv2read_tensorlistgetitem_sequential_229_lstm_688_tensorarrayunstack_tensorlistfromtensor]
Jsequential_229_lstm_688_while_lstm_cell_688_matmul_readvariableop_resource:	d?_
Lsequential_229_lstm_688_while_lstm_cell_688_matmul_1_readvariableop_resource:	2?Z
Ksequential_229_lstm_688_while_lstm_cell_688_biasadd_readvariableop_resource:	???Bsequential_229/lstm_688/while/lstm_cell_688/BiasAdd/ReadVariableOp?Asequential_229/lstm_688/while/lstm_cell_688/MatMul/ReadVariableOp?Csequential_229/lstm_688/while/lstm_cell_688/MatMul_1/ReadVariableOp?
Osequential_229/lstm_688/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
Asequential_229/lstm_688/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_229_lstm_688_while_tensorarrayv2read_tensorlistgetitem_sequential_229_lstm_688_tensorarrayunstack_tensorlistfromtensor_0)sequential_229_lstm_688_while_placeholderXsequential_229/lstm_688/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
Asequential_229/lstm_688/while/lstm_cell_688/MatMul/ReadVariableOpReadVariableOpLsequential_229_lstm_688_while_lstm_cell_688_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
2sequential_229/lstm_688/while/lstm_cell_688/MatMulMatMulHsequential_229/lstm_688/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_229/lstm_688/while/lstm_cell_688/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_229/lstm_688/while/lstm_cell_688/MatMul_1/ReadVariableOpReadVariableOpNsequential_229_lstm_688_while_lstm_cell_688_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
4sequential_229/lstm_688/while/lstm_cell_688/MatMul_1MatMul+sequential_229_lstm_688_while_placeholder_2Ksequential_229/lstm_688/while/lstm_cell_688/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_229/lstm_688/while/lstm_cell_688/addAddV2<sequential_229/lstm_688/while/lstm_cell_688/MatMul:product:0>sequential_229/lstm_688/while/lstm_cell_688/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_229/lstm_688/while/lstm_cell_688/BiasAdd/ReadVariableOpReadVariableOpMsequential_229_lstm_688_while_lstm_cell_688_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_229/lstm_688/while/lstm_cell_688/BiasAddBiasAdd3sequential_229/lstm_688/while/lstm_cell_688/add:z:0Jsequential_229/lstm_688/while/lstm_cell_688/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_229/lstm_688/while/lstm_cell_688/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_229/lstm_688/while/lstm_cell_688/splitSplitDsequential_229/lstm_688/while/lstm_cell_688/split/split_dim:output:0<sequential_229/lstm_688/while/lstm_cell_688/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
3sequential_229/lstm_688/while/lstm_cell_688/SigmoidSigmoid:sequential_229/lstm_688/while/lstm_cell_688/split:output:0*
T0*'
_output_shapes
:?????????2?
5sequential_229/lstm_688/while/lstm_cell_688/Sigmoid_1Sigmoid:sequential_229/lstm_688/while/lstm_cell_688/split:output:1*
T0*'
_output_shapes
:?????????2?
/sequential_229/lstm_688/while/lstm_cell_688/mulMul9sequential_229/lstm_688/while/lstm_cell_688/Sigmoid_1:y:0+sequential_229_lstm_688_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
0sequential_229/lstm_688/while/lstm_cell_688/ReluRelu:sequential_229/lstm_688/while/lstm_cell_688/split:output:2*
T0*'
_output_shapes
:?????????2?
1sequential_229/lstm_688/while/lstm_cell_688/mul_1Mul7sequential_229/lstm_688/while/lstm_cell_688/Sigmoid:y:0>sequential_229/lstm_688/while/lstm_cell_688/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
1sequential_229/lstm_688/while/lstm_cell_688/add_1AddV23sequential_229/lstm_688/while/lstm_cell_688/mul:z:05sequential_229/lstm_688/while/lstm_cell_688/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
5sequential_229/lstm_688/while/lstm_cell_688/Sigmoid_2Sigmoid:sequential_229/lstm_688/while/lstm_cell_688/split:output:3*
T0*'
_output_shapes
:?????????2?
2sequential_229/lstm_688/while/lstm_cell_688/Relu_1Relu5sequential_229/lstm_688/while/lstm_cell_688/add_1:z:0*
T0*'
_output_shapes
:?????????2?
1sequential_229/lstm_688/while/lstm_cell_688/mul_2Mul9sequential_229/lstm_688/while/lstm_cell_688/Sigmoid_2:y:0@sequential_229/lstm_688/while/lstm_cell_688/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
Bsequential_229/lstm_688/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_229_lstm_688_while_placeholder_1)sequential_229_lstm_688_while_placeholder5sequential_229/lstm_688/while/lstm_cell_688/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_229/lstm_688/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_229/lstm_688/while/addAddV2)sequential_229_lstm_688_while_placeholder,sequential_229/lstm_688/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_229/lstm_688/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_229/lstm_688/while/add_1AddV2Hsequential_229_lstm_688_while_sequential_229_lstm_688_while_loop_counter.sequential_229/lstm_688/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_229/lstm_688/while/IdentityIdentity'sequential_229/lstm_688/while/add_1:z:0#^sequential_229/lstm_688/while/NoOp*
T0*
_output_shapes
: ?
(sequential_229/lstm_688/while/Identity_1IdentityNsequential_229_lstm_688_while_sequential_229_lstm_688_while_maximum_iterations#^sequential_229/lstm_688/while/NoOp*
T0*
_output_shapes
: ?
(sequential_229/lstm_688/while/Identity_2Identity%sequential_229/lstm_688/while/add:z:0#^sequential_229/lstm_688/while/NoOp*
T0*
_output_shapes
: ?
(sequential_229/lstm_688/while/Identity_3IdentityRsequential_229/lstm_688/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_229/lstm_688/while/NoOp*
T0*
_output_shapes
: ?
(sequential_229/lstm_688/while/Identity_4Identity5sequential_229/lstm_688/while/lstm_cell_688/mul_2:z:0#^sequential_229/lstm_688/while/NoOp*
T0*'
_output_shapes
:?????????2?
(sequential_229/lstm_688/while/Identity_5Identity5sequential_229/lstm_688/while/lstm_cell_688/add_1:z:0#^sequential_229/lstm_688/while/NoOp*
T0*'
_output_shapes
:?????????2?
"sequential_229/lstm_688/while/NoOpNoOpC^sequential_229/lstm_688/while/lstm_cell_688/BiasAdd/ReadVariableOpB^sequential_229/lstm_688/while/lstm_cell_688/MatMul/ReadVariableOpD^sequential_229/lstm_688/while/lstm_cell_688/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_229_lstm_688_while_identity/sequential_229/lstm_688/while/Identity:output:0"]
(sequential_229_lstm_688_while_identity_11sequential_229/lstm_688/while/Identity_1:output:0"]
(sequential_229_lstm_688_while_identity_21sequential_229/lstm_688/while/Identity_2:output:0"]
(sequential_229_lstm_688_while_identity_31sequential_229/lstm_688/while/Identity_3:output:0"]
(sequential_229_lstm_688_while_identity_41sequential_229/lstm_688/while/Identity_4:output:0"]
(sequential_229_lstm_688_while_identity_51sequential_229/lstm_688/while/Identity_5:output:0"?
Ksequential_229_lstm_688_while_lstm_cell_688_biasadd_readvariableop_resourceMsequential_229_lstm_688_while_lstm_cell_688_biasadd_readvariableop_resource_0"?
Lsequential_229_lstm_688_while_lstm_cell_688_matmul_1_readvariableop_resourceNsequential_229_lstm_688_while_lstm_cell_688_matmul_1_readvariableop_resource_0"?
Jsequential_229_lstm_688_while_lstm_cell_688_matmul_readvariableop_resourceLsequential_229_lstm_688_while_lstm_cell_688_matmul_readvariableop_resource_0"?
Esequential_229_lstm_688_while_sequential_229_lstm_688_strided_slice_1Gsequential_229_lstm_688_while_sequential_229_lstm_688_strided_slice_1_0"?
?sequential_229_lstm_688_while_tensorarrayv2read_tensorlistgetitem_sequential_229_lstm_688_tensorarrayunstack_tensorlistfromtensor?sequential_229_lstm_688_while_tensorarrayv2read_tensorlistgetitem_sequential_229_lstm_688_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2?
Bsequential_229/lstm_688/while/lstm_cell_688/BiasAdd/ReadVariableOpBsequential_229/lstm_688/while/lstm_cell_688/BiasAdd/ReadVariableOp2?
Asequential_229/lstm_688/while/lstm_cell_688/MatMul/ReadVariableOpAsequential_229/lstm_688/while/lstm_cell_688/MatMul/ReadVariableOp2?
Csequential_229/lstm_688/while/lstm_cell_688/MatMul_1/ReadVariableOpCsequential_229/lstm_688/while/lstm_cell_688/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_4334888
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4334888___redundant_placeholder05
1while_while_cond_4334888___redundant_placeholder15
1while_while_cond_4334888___redundant_placeholder25
1while_while_cond_4334888___redundant_placeholder3
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
while_body_4337860
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_689_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_689_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_689_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_689_matmul_readvariableop_resource:2(F
4while_lstm_cell_689_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_689_biasadd_readvariableop_resource:(??*while/lstm_cell_689/BiasAdd/ReadVariableOp?)while/lstm_cell_689/MatMul/ReadVariableOp?+while/lstm_cell_689/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_689/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_689_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_689/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_689/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_689/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_689_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_689/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_689/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_689/addAddV2$while/lstm_cell_689/MatMul:product:0&while/lstm_cell_689/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_689/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_689_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_689/BiasAddBiasAddwhile/lstm_cell_689/add:z:02while/lstm_cell_689/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_689/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_689/splitSplit,while/lstm_cell_689/split/split_dim:output:0$while/lstm_cell_689/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_689/SigmoidSigmoid"while/lstm_cell_689/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_689/Sigmoid_1Sigmoid"while/lstm_cell_689/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_689/mulMul!while/lstm_cell_689/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_689/ReluRelu"while/lstm_cell_689/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_689/mul_1Mulwhile/lstm_cell_689/Sigmoid:y:0&while/lstm_cell_689/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_689/add_1AddV2while/lstm_cell_689/mul:z:0while/lstm_cell_689/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_689/Sigmoid_2Sigmoid"while/lstm_cell_689/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_689/Relu_1Reluwhile/lstm_cell_689/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_689/mul_2Mul!while/lstm_cell_689/Sigmoid_2:y:0(while/lstm_cell_689/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_689/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_689/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_689/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_689/BiasAdd/ReadVariableOp*^while/lstm_cell_689/MatMul/ReadVariableOp,^while/lstm_cell_689/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_689_biasadd_readvariableop_resource5while_lstm_cell_689_biasadd_readvariableop_resource_0"n
4while_lstm_cell_689_matmul_1_readvariableop_resource6while_lstm_cell_689_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_689_matmul_readvariableop_resource4while_lstm_cell_689_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_689/BiasAdd/ReadVariableOp*while/lstm_cell_689/BiasAdd/ReadVariableOp2V
)while/lstm_cell_689/MatMul/ReadVariableOp)while/lstm_cell_689/MatMul/ReadVariableOp2Z
+while/lstm_cell_689/MatMul_1/ReadVariableOp+while/lstm_cell_689/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_4334724
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_688_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_688_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_688_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_688_matmul_readvariableop_resource:	d?G
4while_lstm_cell_688_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_688_biasadd_readvariableop_resource:	???*while/lstm_cell_688/BiasAdd/ReadVariableOp?)while/lstm_cell_688/MatMul/ReadVariableOp?+while/lstm_cell_688/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_688/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_688_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_688/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_688/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_688/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_688_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_688/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_688/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_688/addAddV2$while/lstm_cell_688/MatMul:product:0&while/lstm_cell_688/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_688/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_688_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_688/BiasAddBiasAddwhile/lstm_cell_688/add:z:02while/lstm_cell_688/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_688/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_688/splitSplit,while/lstm_cell_688/split/split_dim:output:0$while/lstm_cell_688/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_688/SigmoidSigmoid"while/lstm_cell_688/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_688/Sigmoid_1Sigmoid"while/lstm_cell_688/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_688/mulMul!while/lstm_cell_688/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_688/ReluRelu"while/lstm_cell_688/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_688/mul_1Mulwhile/lstm_cell_688/Sigmoid:y:0&while/lstm_cell_688/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_688/add_1AddV2while/lstm_cell_688/mul:z:0while/lstm_cell_688/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_688/Sigmoid_2Sigmoid"while/lstm_cell_688/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_688/Relu_1Reluwhile/lstm_cell_688/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_688/mul_2Mul!while/lstm_cell_688/Sigmoid_2:y:0(while/lstm_cell_688/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_688/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_688/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_688/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_688/BiasAdd/ReadVariableOp*^while/lstm_cell_688/MatMul/ReadVariableOp,^while/lstm_cell_688/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_688_biasadd_readvariableop_resource5while_lstm_cell_688_biasadd_readvariableop_resource_0"n
4while_lstm_cell_688_matmul_1_readvariableop_resource6while_lstm_cell_688_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_688_matmul_readvariableop_resource4while_lstm_cell_688_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_688/BiasAdd/ReadVariableOp*while/lstm_cell_688/BiasAdd/ReadVariableOp2V
)while/lstm_cell_688/MatMul/ReadVariableOp)while/lstm_cell_688/MatMul/ReadVariableOp2Z
+while/lstm_cell_688/MatMul_1/ReadVariableOp+while/lstm_cell_688/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_687_layer_call_fn_4336129

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
E__inference_lstm_687_layer_call_and_return_conditional_losses_4334127s
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
?J
?
E__inference_lstm_688_layer_call_and_return_conditional_losses_4334277

inputs?
,lstm_cell_688_matmul_readvariableop_resource:	d?A
.lstm_cell_688_matmul_1_readvariableop_resource:	2?<
-lstm_cell_688_biasadd_readvariableop_resource:	?
identity??$lstm_cell_688/BiasAdd/ReadVariableOp?#lstm_cell_688/MatMul/ReadVariableOp?%lstm_cell_688/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_688/MatMul/ReadVariableOpReadVariableOp,lstm_cell_688_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_688/MatMulMatMulstrided_slice_2:output:0+lstm_cell_688/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_688/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_688_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_688/MatMul_1MatMulzeros:output:0-lstm_cell_688/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_688/addAddV2lstm_cell_688/MatMul:product:0 lstm_cell_688/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_688/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_688_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_688/BiasAddBiasAddlstm_cell_688/add:z:0,lstm_cell_688/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_688/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_688/splitSplit&lstm_cell_688/split/split_dim:output:0lstm_cell_688/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_688/SigmoidSigmoidlstm_cell_688/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_688/Sigmoid_1Sigmoidlstm_cell_688/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_688/mulMullstm_cell_688/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_688/ReluRelulstm_cell_688/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_688/mul_1Mullstm_cell_688/Sigmoid:y:0 lstm_cell_688/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_688/add_1AddV2lstm_cell_688/mul:z:0lstm_cell_688/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_688/Sigmoid_2Sigmoidlstm_cell_688/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_688/Relu_1Relulstm_cell_688/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_688/mul_2Mullstm_cell_688/Sigmoid_2:y:0"lstm_cell_688/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_688_matmul_readvariableop_resource.lstm_cell_688_matmul_1_readvariableop_resource-lstm_cell_688_biasadd_readvariableop_resource*
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
while_body_4334193*
condR
while_cond_4334192*K
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
NoOpNoOp%^lstm_cell_688/BiasAdd/ReadVariableOp$^lstm_cell_688/MatMul/ReadVariableOp&^lstm_cell_688/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_688/BiasAdd/ReadVariableOp$lstm_cell_688/BiasAdd/ReadVariableOp2J
#lstm_cell_688/MatMul/ReadVariableOp#lstm_cell_688/MatMul/ReadVariableOp2N
%lstm_cell_688/MatMul_1/ReadVariableOp%lstm_cell_688/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
??
?
K__inference_sequential_229_layer_call_and_return_conditional_losses_4336096

inputsH
5lstm_687_lstm_cell_687_matmul_readvariableop_resource:	?J
7lstm_687_lstm_cell_687_matmul_1_readvariableop_resource:	d?E
6lstm_687_lstm_cell_687_biasadd_readvariableop_resource:	?H
5lstm_688_lstm_cell_688_matmul_readvariableop_resource:	d?J
7lstm_688_lstm_cell_688_matmul_1_readvariableop_resource:	2?E
6lstm_688_lstm_cell_688_biasadd_readvariableop_resource:	?G
5lstm_689_lstm_cell_689_matmul_readvariableop_resource:2(I
7lstm_689_lstm_cell_689_matmul_1_readvariableop_resource:
(D
6lstm_689_lstm_cell_689_biasadd_readvariableop_resource:(:
(dense_229_matmul_readvariableop_resource:
7
)dense_229_biasadd_readvariableop_resource:
identity?? dense_229/BiasAdd/ReadVariableOp?dense_229/MatMul/ReadVariableOp?-lstm_687/lstm_cell_687/BiasAdd/ReadVariableOp?,lstm_687/lstm_cell_687/MatMul/ReadVariableOp?.lstm_687/lstm_cell_687/MatMul_1/ReadVariableOp?lstm_687/while?-lstm_688/lstm_cell_688/BiasAdd/ReadVariableOp?,lstm_688/lstm_cell_688/MatMul/ReadVariableOp?.lstm_688/lstm_cell_688/MatMul_1/ReadVariableOp?lstm_688/while?-lstm_689/lstm_cell_689/BiasAdd/ReadVariableOp?,lstm_689/lstm_cell_689/MatMul/ReadVariableOp?.lstm_689/lstm_cell_689/MatMul_1/ReadVariableOp?lstm_689/whileD
lstm_687/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_687/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_687/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_687/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_687/strided_sliceStridedSlicelstm_687/Shape:output:0%lstm_687/strided_slice/stack:output:0'lstm_687/strided_slice/stack_1:output:0'lstm_687/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_687/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_687/zeros/packedPacklstm_687/strided_slice:output:0 lstm_687/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_687/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_687/zerosFilllstm_687/zeros/packed:output:0lstm_687/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_687/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_687/zeros_1/packedPacklstm_687/strided_slice:output:0"lstm_687/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_687/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_687/zeros_1Fill lstm_687/zeros_1/packed:output:0lstm_687/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_687/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_687/transpose	Transposeinputs lstm_687/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_687/Shape_1Shapelstm_687/transpose:y:0*
T0*
_output_shapes
:h
lstm_687/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_687/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_687/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_687/strided_slice_1StridedSlicelstm_687/Shape_1:output:0'lstm_687/strided_slice_1/stack:output:0)lstm_687/strided_slice_1/stack_1:output:0)lstm_687/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_687/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_687/TensorArrayV2TensorListReserve-lstm_687/TensorArrayV2/element_shape:output:0!lstm_687/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_687/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_687/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_687/transpose:y:0Glstm_687/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_687/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_687/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_687/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_687/strided_slice_2StridedSlicelstm_687/transpose:y:0'lstm_687/strided_slice_2/stack:output:0)lstm_687/strided_slice_2/stack_1:output:0)lstm_687/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_687/lstm_cell_687/MatMul/ReadVariableOpReadVariableOp5lstm_687_lstm_cell_687_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_687/lstm_cell_687/MatMulMatMul!lstm_687/strided_slice_2:output:04lstm_687/lstm_cell_687/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_687/lstm_cell_687/MatMul_1/ReadVariableOpReadVariableOp7lstm_687_lstm_cell_687_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_687/lstm_cell_687/MatMul_1MatMullstm_687/zeros:output:06lstm_687/lstm_cell_687/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_687/lstm_cell_687/addAddV2'lstm_687/lstm_cell_687/MatMul:product:0)lstm_687/lstm_cell_687/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_687/lstm_cell_687/BiasAdd/ReadVariableOpReadVariableOp6lstm_687_lstm_cell_687_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_687/lstm_cell_687/BiasAddBiasAddlstm_687/lstm_cell_687/add:z:05lstm_687/lstm_cell_687/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_687/lstm_cell_687/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_687/lstm_cell_687/splitSplit/lstm_687/lstm_cell_687/split/split_dim:output:0'lstm_687/lstm_cell_687/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_687/lstm_cell_687/SigmoidSigmoid%lstm_687/lstm_cell_687/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_687/lstm_cell_687/Sigmoid_1Sigmoid%lstm_687/lstm_cell_687/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_687/lstm_cell_687/mulMul$lstm_687/lstm_cell_687/Sigmoid_1:y:0lstm_687/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_687/lstm_cell_687/ReluRelu%lstm_687/lstm_cell_687/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_687/lstm_cell_687/mul_1Mul"lstm_687/lstm_cell_687/Sigmoid:y:0)lstm_687/lstm_cell_687/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_687/lstm_cell_687/add_1AddV2lstm_687/lstm_cell_687/mul:z:0 lstm_687/lstm_cell_687/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_687/lstm_cell_687/Sigmoid_2Sigmoid%lstm_687/lstm_cell_687/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_687/lstm_cell_687/Relu_1Relu lstm_687/lstm_cell_687/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_687/lstm_cell_687/mul_2Mul$lstm_687/lstm_cell_687/Sigmoid_2:y:0+lstm_687/lstm_cell_687/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_687/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_687/TensorArrayV2_1TensorListReserve/lstm_687/TensorArrayV2_1/element_shape:output:0!lstm_687/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_687/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_687/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_687/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_687/whileWhile$lstm_687/while/loop_counter:output:0*lstm_687/while/maximum_iterations:output:0lstm_687/time:output:0!lstm_687/TensorArrayV2_1:handle:0lstm_687/zeros:output:0lstm_687/zeros_1:output:0!lstm_687/strided_slice_1:output:0@lstm_687/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_687_lstm_cell_687_matmul_readvariableop_resource7lstm_687_lstm_cell_687_matmul_1_readvariableop_resource6lstm_687_lstm_cell_687_biasadd_readvariableop_resource*
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
lstm_687_while_body_4335728*'
condR
lstm_687_while_cond_4335727*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_687/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_687/TensorArrayV2Stack/TensorListStackTensorListStacklstm_687/while:output:3Blstm_687/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_687/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_687/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_687/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_687/strided_slice_3StridedSlice4lstm_687/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_687/strided_slice_3/stack:output:0)lstm_687/strided_slice_3/stack_1:output:0)lstm_687/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_687/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_687/transpose_1	Transpose4lstm_687/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_687/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_687/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_688/ShapeShapelstm_687/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_688/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_688/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_688/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_688/strided_sliceStridedSlicelstm_688/Shape:output:0%lstm_688/strided_slice/stack:output:0'lstm_688/strided_slice/stack_1:output:0'lstm_688/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_688/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_688/zeros/packedPacklstm_688/strided_slice:output:0 lstm_688/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_688/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_688/zerosFilllstm_688/zeros/packed:output:0lstm_688/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_688/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_688/zeros_1/packedPacklstm_688/strided_slice:output:0"lstm_688/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_688/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_688/zeros_1Fill lstm_688/zeros_1/packed:output:0lstm_688/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_688/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_688/transpose	Transposelstm_687/transpose_1:y:0 lstm_688/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_688/Shape_1Shapelstm_688/transpose:y:0*
T0*
_output_shapes
:h
lstm_688/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_688/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_688/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_688/strided_slice_1StridedSlicelstm_688/Shape_1:output:0'lstm_688/strided_slice_1/stack:output:0)lstm_688/strided_slice_1/stack_1:output:0)lstm_688/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_688/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_688/TensorArrayV2TensorListReserve-lstm_688/TensorArrayV2/element_shape:output:0!lstm_688/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_688/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_688/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_688/transpose:y:0Glstm_688/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_688/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_688/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_688/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_688/strided_slice_2StridedSlicelstm_688/transpose:y:0'lstm_688/strided_slice_2/stack:output:0)lstm_688/strided_slice_2/stack_1:output:0)lstm_688/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_688/lstm_cell_688/MatMul/ReadVariableOpReadVariableOp5lstm_688_lstm_cell_688_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_688/lstm_cell_688/MatMulMatMul!lstm_688/strided_slice_2:output:04lstm_688/lstm_cell_688/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_688/lstm_cell_688/MatMul_1/ReadVariableOpReadVariableOp7lstm_688_lstm_cell_688_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_688/lstm_cell_688/MatMul_1MatMullstm_688/zeros:output:06lstm_688/lstm_cell_688/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_688/lstm_cell_688/addAddV2'lstm_688/lstm_cell_688/MatMul:product:0)lstm_688/lstm_cell_688/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_688/lstm_cell_688/BiasAdd/ReadVariableOpReadVariableOp6lstm_688_lstm_cell_688_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_688/lstm_cell_688/BiasAddBiasAddlstm_688/lstm_cell_688/add:z:05lstm_688/lstm_cell_688/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_688/lstm_cell_688/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_688/lstm_cell_688/splitSplit/lstm_688/lstm_cell_688/split/split_dim:output:0'lstm_688/lstm_cell_688/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_688/lstm_cell_688/SigmoidSigmoid%lstm_688/lstm_cell_688/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_688/lstm_cell_688/Sigmoid_1Sigmoid%lstm_688/lstm_cell_688/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_688/lstm_cell_688/mulMul$lstm_688/lstm_cell_688/Sigmoid_1:y:0lstm_688/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_688/lstm_cell_688/ReluRelu%lstm_688/lstm_cell_688/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_688/lstm_cell_688/mul_1Mul"lstm_688/lstm_cell_688/Sigmoid:y:0)lstm_688/lstm_cell_688/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_688/lstm_cell_688/add_1AddV2lstm_688/lstm_cell_688/mul:z:0 lstm_688/lstm_cell_688/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_688/lstm_cell_688/Sigmoid_2Sigmoid%lstm_688/lstm_cell_688/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_688/lstm_cell_688/Relu_1Relu lstm_688/lstm_cell_688/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_688/lstm_cell_688/mul_2Mul$lstm_688/lstm_cell_688/Sigmoid_2:y:0+lstm_688/lstm_cell_688/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_688/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_688/TensorArrayV2_1TensorListReserve/lstm_688/TensorArrayV2_1/element_shape:output:0!lstm_688/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_688/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_688/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_688/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_688/whileWhile$lstm_688/while/loop_counter:output:0*lstm_688/while/maximum_iterations:output:0lstm_688/time:output:0!lstm_688/TensorArrayV2_1:handle:0lstm_688/zeros:output:0lstm_688/zeros_1:output:0!lstm_688/strided_slice_1:output:0@lstm_688/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_688_lstm_cell_688_matmul_readvariableop_resource7lstm_688_lstm_cell_688_matmul_1_readvariableop_resource6lstm_688_lstm_cell_688_biasadd_readvariableop_resource*
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
lstm_688_while_body_4335867*'
condR
lstm_688_while_cond_4335866*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_688/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_688/TensorArrayV2Stack/TensorListStackTensorListStacklstm_688/while:output:3Blstm_688/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_688/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_688/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_688/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_688/strided_slice_3StridedSlice4lstm_688/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_688/strided_slice_3/stack:output:0)lstm_688/strided_slice_3/stack_1:output:0)lstm_688/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_688/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_688/transpose_1	Transpose4lstm_688/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_688/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_688/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_689/ShapeShapelstm_688/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_689/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_689/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_689/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_689/strided_sliceStridedSlicelstm_689/Shape:output:0%lstm_689/strided_slice/stack:output:0'lstm_689/strided_slice/stack_1:output:0'lstm_689/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_689/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_689/zeros/packedPacklstm_689/strided_slice:output:0 lstm_689/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_689/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_689/zerosFilllstm_689/zeros/packed:output:0lstm_689/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_689/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_689/zeros_1/packedPacklstm_689/strided_slice:output:0"lstm_689/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_689/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_689/zeros_1Fill lstm_689/zeros_1/packed:output:0lstm_689/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_689/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_689/transpose	Transposelstm_688/transpose_1:y:0 lstm_689/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_689/Shape_1Shapelstm_689/transpose:y:0*
T0*
_output_shapes
:h
lstm_689/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_689/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_689/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_689/strided_slice_1StridedSlicelstm_689/Shape_1:output:0'lstm_689/strided_slice_1/stack:output:0)lstm_689/strided_slice_1/stack_1:output:0)lstm_689/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_689/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_689/TensorArrayV2TensorListReserve-lstm_689/TensorArrayV2/element_shape:output:0!lstm_689/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_689/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_689/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_689/transpose:y:0Glstm_689/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_689/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_689/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_689/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_689/strided_slice_2StridedSlicelstm_689/transpose:y:0'lstm_689/strided_slice_2/stack:output:0)lstm_689/strided_slice_2/stack_1:output:0)lstm_689/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_689/lstm_cell_689/MatMul/ReadVariableOpReadVariableOp5lstm_689_lstm_cell_689_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_689/lstm_cell_689/MatMulMatMul!lstm_689/strided_slice_2:output:04lstm_689/lstm_cell_689/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_689/lstm_cell_689/MatMul_1/ReadVariableOpReadVariableOp7lstm_689_lstm_cell_689_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_689/lstm_cell_689/MatMul_1MatMullstm_689/zeros:output:06lstm_689/lstm_cell_689/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_689/lstm_cell_689/addAddV2'lstm_689/lstm_cell_689/MatMul:product:0)lstm_689/lstm_cell_689/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_689/lstm_cell_689/BiasAdd/ReadVariableOpReadVariableOp6lstm_689_lstm_cell_689_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_689/lstm_cell_689/BiasAddBiasAddlstm_689/lstm_cell_689/add:z:05lstm_689/lstm_cell_689/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_689/lstm_cell_689/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_689/lstm_cell_689/splitSplit/lstm_689/lstm_cell_689/split/split_dim:output:0'lstm_689/lstm_cell_689/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_689/lstm_cell_689/SigmoidSigmoid%lstm_689/lstm_cell_689/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_689/lstm_cell_689/Sigmoid_1Sigmoid%lstm_689/lstm_cell_689/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_689/lstm_cell_689/mulMul$lstm_689/lstm_cell_689/Sigmoid_1:y:0lstm_689/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_689/lstm_cell_689/ReluRelu%lstm_689/lstm_cell_689/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_689/lstm_cell_689/mul_1Mul"lstm_689/lstm_cell_689/Sigmoid:y:0)lstm_689/lstm_cell_689/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_689/lstm_cell_689/add_1AddV2lstm_689/lstm_cell_689/mul:z:0 lstm_689/lstm_cell_689/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_689/lstm_cell_689/Sigmoid_2Sigmoid%lstm_689/lstm_cell_689/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_689/lstm_cell_689/Relu_1Relu lstm_689/lstm_cell_689/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_689/lstm_cell_689/mul_2Mul$lstm_689/lstm_cell_689/Sigmoid_2:y:0+lstm_689/lstm_cell_689/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_689/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_689/TensorArrayV2_1TensorListReserve/lstm_689/TensorArrayV2_1/element_shape:output:0!lstm_689/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_689/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_689/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_689/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_689/whileWhile$lstm_689/while/loop_counter:output:0*lstm_689/while/maximum_iterations:output:0lstm_689/time:output:0!lstm_689/TensorArrayV2_1:handle:0lstm_689/zeros:output:0lstm_689/zeros_1:output:0!lstm_689/strided_slice_1:output:0@lstm_689/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_689_lstm_cell_689_matmul_readvariableop_resource7lstm_689_lstm_cell_689_matmul_1_readvariableop_resource6lstm_689_lstm_cell_689_biasadd_readvariableop_resource*
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
lstm_689_while_body_4336006*'
condR
lstm_689_while_cond_4336005*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_689/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_689/TensorArrayV2Stack/TensorListStackTensorListStacklstm_689/while:output:3Blstm_689/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_689/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_689/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_689/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_689/strided_slice_3StridedSlice4lstm_689/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_689/strided_slice_3/stack:output:0)lstm_689/strided_slice_3/stack_1:output:0)lstm_689/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_689/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_689/transpose_1	Transpose4lstm_689/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_689/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_689/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_229/MatMul/ReadVariableOpReadVariableOp(dense_229_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_229/MatMulMatMul!lstm_689/strided_slice_3:output:0'dense_229/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_229/BiasAdd/ReadVariableOpReadVariableOp)dense_229_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_229/BiasAddBiasAdddense_229/MatMul:product:0(dense_229/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_229/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_229/BiasAdd/ReadVariableOp ^dense_229/MatMul/ReadVariableOp.^lstm_687/lstm_cell_687/BiasAdd/ReadVariableOp-^lstm_687/lstm_cell_687/MatMul/ReadVariableOp/^lstm_687/lstm_cell_687/MatMul_1/ReadVariableOp^lstm_687/while.^lstm_688/lstm_cell_688/BiasAdd/ReadVariableOp-^lstm_688/lstm_cell_688/MatMul/ReadVariableOp/^lstm_688/lstm_cell_688/MatMul_1/ReadVariableOp^lstm_688/while.^lstm_689/lstm_cell_689/BiasAdd/ReadVariableOp-^lstm_689/lstm_cell_689/MatMul/ReadVariableOp/^lstm_689/lstm_cell_689/MatMul_1/ReadVariableOp^lstm_689/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_229/BiasAdd/ReadVariableOp dense_229/BiasAdd/ReadVariableOp2B
dense_229/MatMul/ReadVariableOpdense_229/MatMul/ReadVariableOp2^
-lstm_687/lstm_cell_687/BiasAdd/ReadVariableOp-lstm_687/lstm_cell_687/BiasAdd/ReadVariableOp2\
,lstm_687/lstm_cell_687/MatMul/ReadVariableOp,lstm_687/lstm_cell_687/MatMul/ReadVariableOp2`
.lstm_687/lstm_cell_687/MatMul_1/ReadVariableOp.lstm_687/lstm_cell_687/MatMul_1/ReadVariableOp2 
lstm_687/whilelstm_687/while2^
-lstm_688/lstm_cell_688/BiasAdd/ReadVariableOp-lstm_688/lstm_cell_688/BiasAdd/ReadVariableOp2\
,lstm_688/lstm_cell_688/MatMul/ReadVariableOp,lstm_688/lstm_cell_688/MatMul/ReadVariableOp2`
.lstm_688/lstm_cell_688/MatMul_1/ReadVariableOp.lstm_688/lstm_cell_688/MatMul_1/ReadVariableOp2 
lstm_688/whilelstm_688/while2^
-lstm_689/lstm_cell_689/BiasAdd/ReadVariableOp-lstm_689/lstm_cell_689/BiasAdd/ReadVariableOp2\
,lstm_689/lstm_cell_689/MatMul/ReadVariableOp,lstm_689/lstm_cell_689/MatMul/ReadVariableOp2`
.lstm_689/lstm_cell_689/MatMul_1/ReadVariableOp.lstm_689/lstm_cell_689/MatMul_1/ReadVariableOp2 
lstm_689/whilelstm_689/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
E__inference_lstm_688_layer_call_and_return_conditional_losses_4333619

inputs(
lstm_cell_688_4333537:	d?(
lstm_cell_688_4333539:	2?$
lstm_cell_688_4333541:	?
identity??%lstm_cell_688/StatefulPartitionedCall?while;
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
%lstm_cell_688/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_688_4333537lstm_cell_688_4333539lstm_cell_688_4333541*
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
J__inference_lstm_cell_688_layer_call_and_return_conditional_losses_4333491n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_688_4333537lstm_cell_688_4333539lstm_cell_688_4333541*
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
while_body_4333550*
condR
while_cond_4333549*K
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
NoOpNoOp&^lstm_cell_688/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_688/StatefulPartitionedCall%lstm_cell_688/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?8
?
E__inference_lstm_687_layer_call_and_return_conditional_losses_4333269

inputs(
lstm_cell_687_4333187:	?(
lstm_cell_687_4333189:	d?$
lstm_cell_687_4333191:	?
identity??%lstm_cell_687/StatefulPartitionedCall?while;
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
%lstm_cell_687/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_687_4333187lstm_cell_687_4333189lstm_cell_687_4333191*
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
J__inference_lstm_cell_687_layer_call_and_return_conditional_losses_4333141n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_687_4333187lstm_cell_687_4333189lstm_cell_687_4333191*
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
while_body_4333200*
condR
while_cond_4333199*K
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
NoOpNoOp&^lstm_cell_687/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_687/StatefulPartitionedCall%lstm_cell_687/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?J
?
E__inference_lstm_687_layer_call_and_return_conditional_losses_4336712

inputs?
,lstm_cell_687_matmul_readvariableop_resource:	?A
.lstm_cell_687_matmul_1_readvariableop_resource:	d?<
-lstm_cell_687_biasadd_readvariableop_resource:	?
identity??$lstm_cell_687/BiasAdd/ReadVariableOp?#lstm_cell_687/MatMul/ReadVariableOp?%lstm_cell_687/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_687/MatMul/ReadVariableOpReadVariableOp,lstm_cell_687_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_687/MatMulMatMulstrided_slice_2:output:0+lstm_cell_687/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_687/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_687_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_687/MatMul_1MatMulzeros:output:0-lstm_cell_687/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_687/addAddV2lstm_cell_687/MatMul:product:0 lstm_cell_687/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_687/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_687_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_687/BiasAddBiasAddlstm_cell_687/add:z:0,lstm_cell_687/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_687/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_687/splitSplit&lstm_cell_687/split/split_dim:output:0lstm_cell_687/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_687/SigmoidSigmoidlstm_cell_687/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_687/Sigmoid_1Sigmoidlstm_cell_687/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_687/mulMullstm_cell_687/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_687/ReluRelulstm_cell_687/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_687/mul_1Mullstm_cell_687/Sigmoid:y:0 lstm_cell_687/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_687/add_1AddV2lstm_cell_687/mul:z:0lstm_cell_687/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_687/Sigmoid_2Sigmoidlstm_cell_687/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_687/Relu_1Relulstm_cell_687/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_687/mul_2Mullstm_cell_687/Sigmoid_2:y:0"lstm_cell_687/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_687_matmul_readvariableop_resource.lstm_cell_687_matmul_1_readvariableop_resource-lstm_cell_687_biasadd_readvariableop_resource*
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
while_body_4336628*
condR
while_cond_4336627*K
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
NoOpNoOp%^lstm_cell_687/BiasAdd/ReadVariableOp$^lstm_cell_687/MatMul/ReadVariableOp&^lstm_cell_687/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_687/BiasAdd/ReadVariableOp$lstm_cell_687/BiasAdd/ReadVariableOp2J
#lstm_cell_687/MatMul/ReadVariableOp#lstm_cell_687/MatMul/ReadVariableOp2N
%lstm_cell_687/MatMul_1/ReadVariableOp%lstm_cell_687/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_4336198
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4336198___redundant_placeholder05
1while_while_cond_4336198___redundant_placeholder15
1while_while_cond_4336198___redundant_placeholder25
1while_while_cond_4336198___redundant_placeholder3
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
?C
?

lstm_689_while_body_4336006.
*lstm_689_while_lstm_689_while_loop_counter4
0lstm_689_while_lstm_689_while_maximum_iterations
lstm_689_while_placeholder 
lstm_689_while_placeholder_1 
lstm_689_while_placeholder_2 
lstm_689_while_placeholder_3-
)lstm_689_while_lstm_689_strided_slice_1_0i
elstm_689_while_tensorarrayv2read_tensorlistgetitem_lstm_689_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_689_while_lstm_cell_689_matmul_readvariableop_resource_0:2(Q
?lstm_689_while_lstm_cell_689_matmul_1_readvariableop_resource_0:
(L
>lstm_689_while_lstm_cell_689_biasadd_readvariableop_resource_0:(
lstm_689_while_identity
lstm_689_while_identity_1
lstm_689_while_identity_2
lstm_689_while_identity_3
lstm_689_while_identity_4
lstm_689_while_identity_5+
'lstm_689_while_lstm_689_strided_slice_1g
clstm_689_while_tensorarrayv2read_tensorlistgetitem_lstm_689_tensorarrayunstack_tensorlistfromtensorM
;lstm_689_while_lstm_cell_689_matmul_readvariableop_resource:2(O
=lstm_689_while_lstm_cell_689_matmul_1_readvariableop_resource:
(J
<lstm_689_while_lstm_cell_689_biasadd_readvariableop_resource:(??3lstm_689/while/lstm_cell_689/BiasAdd/ReadVariableOp?2lstm_689/while/lstm_cell_689/MatMul/ReadVariableOp?4lstm_689/while/lstm_cell_689/MatMul_1/ReadVariableOp?
@lstm_689/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_689/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_689_while_tensorarrayv2read_tensorlistgetitem_lstm_689_tensorarrayunstack_tensorlistfromtensor_0lstm_689_while_placeholderIlstm_689/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_689/while/lstm_cell_689/MatMul/ReadVariableOpReadVariableOp=lstm_689_while_lstm_cell_689_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_689/while/lstm_cell_689/MatMulMatMul9lstm_689/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_689/while/lstm_cell_689/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_689/while/lstm_cell_689/MatMul_1/ReadVariableOpReadVariableOp?lstm_689_while_lstm_cell_689_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_689/while/lstm_cell_689/MatMul_1MatMullstm_689_while_placeholder_2<lstm_689/while/lstm_cell_689/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_689/while/lstm_cell_689/addAddV2-lstm_689/while/lstm_cell_689/MatMul:product:0/lstm_689/while/lstm_cell_689/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_689/while/lstm_cell_689/BiasAdd/ReadVariableOpReadVariableOp>lstm_689_while_lstm_cell_689_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_689/while/lstm_cell_689/BiasAddBiasAdd$lstm_689/while/lstm_cell_689/add:z:0;lstm_689/while/lstm_cell_689/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_689/while/lstm_cell_689/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_689/while/lstm_cell_689/splitSplit5lstm_689/while/lstm_cell_689/split/split_dim:output:0-lstm_689/while/lstm_cell_689/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_689/while/lstm_cell_689/SigmoidSigmoid+lstm_689/while/lstm_cell_689/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_689/while/lstm_cell_689/Sigmoid_1Sigmoid+lstm_689/while/lstm_cell_689/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_689/while/lstm_cell_689/mulMul*lstm_689/while/lstm_cell_689/Sigmoid_1:y:0lstm_689_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_689/while/lstm_cell_689/ReluRelu+lstm_689/while/lstm_cell_689/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_689/while/lstm_cell_689/mul_1Mul(lstm_689/while/lstm_cell_689/Sigmoid:y:0/lstm_689/while/lstm_cell_689/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_689/while/lstm_cell_689/add_1AddV2$lstm_689/while/lstm_cell_689/mul:z:0&lstm_689/while/lstm_cell_689/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_689/while/lstm_cell_689/Sigmoid_2Sigmoid+lstm_689/while/lstm_cell_689/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_689/while/lstm_cell_689/Relu_1Relu&lstm_689/while/lstm_cell_689/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_689/while/lstm_cell_689/mul_2Mul*lstm_689/while/lstm_cell_689/Sigmoid_2:y:01lstm_689/while/lstm_cell_689/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_689/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_689_while_placeholder_1lstm_689_while_placeholder&lstm_689/while/lstm_cell_689/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_689/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_689/while/addAddV2lstm_689_while_placeholderlstm_689/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_689/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_689/while/add_1AddV2*lstm_689_while_lstm_689_while_loop_counterlstm_689/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_689/while/IdentityIdentitylstm_689/while/add_1:z:0^lstm_689/while/NoOp*
T0*
_output_shapes
: ?
lstm_689/while/Identity_1Identity0lstm_689_while_lstm_689_while_maximum_iterations^lstm_689/while/NoOp*
T0*
_output_shapes
: t
lstm_689/while/Identity_2Identitylstm_689/while/add:z:0^lstm_689/while/NoOp*
T0*
_output_shapes
: ?
lstm_689/while/Identity_3IdentityClstm_689/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_689/while/NoOp*
T0*
_output_shapes
: ?
lstm_689/while/Identity_4Identity&lstm_689/while/lstm_cell_689/mul_2:z:0^lstm_689/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_689/while/Identity_5Identity&lstm_689/while/lstm_cell_689/add_1:z:0^lstm_689/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_689/while/NoOpNoOp4^lstm_689/while/lstm_cell_689/BiasAdd/ReadVariableOp3^lstm_689/while/lstm_cell_689/MatMul/ReadVariableOp5^lstm_689/while/lstm_cell_689/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_689_while_identity lstm_689/while/Identity:output:0"?
lstm_689_while_identity_1"lstm_689/while/Identity_1:output:0"?
lstm_689_while_identity_2"lstm_689/while/Identity_2:output:0"?
lstm_689_while_identity_3"lstm_689/while/Identity_3:output:0"?
lstm_689_while_identity_4"lstm_689/while/Identity_4:output:0"?
lstm_689_while_identity_5"lstm_689/while/Identity_5:output:0"T
'lstm_689_while_lstm_689_strided_slice_1)lstm_689_while_lstm_689_strided_slice_1_0"~
<lstm_689_while_lstm_cell_689_biasadd_readvariableop_resource>lstm_689_while_lstm_cell_689_biasadd_readvariableop_resource_0"?
=lstm_689_while_lstm_cell_689_matmul_1_readvariableop_resource?lstm_689_while_lstm_cell_689_matmul_1_readvariableop_resource_0"|
;lstm_689_while_lstm_cell_689_matmul_readvariableop_resource=lstm_689_while_lstm_cell_689_matmul_readvariableop_resource_0"?
clstm_689_while_tensorarrayv2read_tensorlistgetitem_lstm_689_tensorarrayunstack_tensorlistfromtensorelstm_689_while_tensorarrayv2read_tensorlistgetitem_lstm_689_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_689/while/lstm_cell_689/BiasAdd/ReadVariableOp3lstm_689/while/lstm_cell_689/BiasAdd/ReadVariableOp2h
2lstm_689/while/lstm_cell_689/MatMul/ReadVariableOp2lstm_689/while/lstm_cell_689/MatMul/ReadVariableOp2l
4lstm_689/while/lstm_cell_689/MatMul_1/ReadVariableOp4lstm_689/while/lstm_cell_689/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*sequential_229_lstm_688_while_cond_4332698L
Hsequential_229_lstm_688_while_sequential_229_lstm_688_while_loop_counterR
Nsequential_229_lstm_688_while_sequential_229_lstm_688_while_maximum_iterations-
)sequential_229_lstm_688_while_placeholder/
+sequential_229_lstm_688_while_placeholder_1/
+sequential_229_lstm_688_while_placeholder_2/
+sequential_229_lstm_688_while_placeholder_3N
Jsequential_229_lstm_688_while_less_sequential_229_lstm_688_strided_slice_1e
asequential_229_lstm_688_while_sequential_229_lstm_688_while_cond_4332698___redundant_placeholder0e
asequential_229_lstm_688_while_sequential_229_lstm_688_while_cond_4332698___redundant_placeholder1e
asequential_229_lstm_688_while_sequential_229_lstm_688_while_cond_4332698___redundant_placeholder2e
asequential_229_lstm_688_while_sequential_229_lstm_688_while_cond_4332698___redundant_placeholder3*
&sequential_229_lstm_688_while_identity
?
"sequential_229/lstm_688/while/LessLess)sequential_229_lstm_688_while_placeholderJsequential_229_lstm_688_while_less_sequential_229_lstm_688_strided_slice_1*
T0*
_output_shapes
: {
&sequential_229/lstm_688/while/IdentityIdentity&sequential_229/lstm_688/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_229_lstm_688_while_identity/sequential_229/lstm_688/while/Identity:output:0*(
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
while_cond_4336341
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4336341___redundant_placeholder05
1while_while_cond_4336341___redundant_placeholder15
1while_while_cond_4336341___redundant_placeholder25
1while_while_cond_4336341___redundant_placeholder3
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
??
?
"__inference__wrapped_model_4332928
lstm_687_inputW
Dsequential_229_lstm_687_lstm_cell_687_matmul_readvariableop_resource:	?Y
Fsequential_229_lstm_687_lstm_cell_687_matmul_1_readvariableop_resource:	d?T
Esequential_229_lstm_687_lstm_cell_687_biasadd_readvariableop_resource:	?W
Dsequential_229_lstm_688_lstm_cell_688_matmul_readvariableop_resource:	d?Y
Fsequential_229_lstm_688_lstm_cell_688_matmul_1_readvariableop_resource:	2?T
Esequential_229_lstm_688_lstm_cell_688_biasadd_readvariableop_resource:	?V
Dsequential_229_lstm_689_lstm_cell_689_matmul_readvariableop_resource:2(X
Fsequential_229_lstm_689_lstm_cell_689_matmul_1_readvariableop_resource:
(S
Esequential_229_lstm_689_lstm_cell_689_biasadd_readvariableop_resource:(I
7sequential_229_dense_229_matmul_readvariableop_resource:
F
8sequential_229_dense_229_biasadd_readvariableop_resource:
identity??/sequential_229/dense_229/BiasAdd/ReadVariableOp?.sequential_229/dense_229/MatMul/ReadVariableOp?<sequential_229/lstm_687/lstm_cell_687/BiasAdd/ReadVariableOp?;sequential_229/lstm_687/lstm_cell_687/MatMul/ReadVariableOp?=sequential_229/lstm_687/lstm_cell_687/MatMul_1/ReadVariableOp?sequential_229/lstm_687/while?<sequential_229/lstm_688/lstm_cell_688/BiasAdd/ReadVariableOp?;sequential_229/lstm_688/lstm_cell_688/MatMul/ReadVariableOp?=sequential_229/lstm_688/lstm_cell_688/MatMul_1/ReadVariableOp?sequential_229/lstm_688/while?<sequential_229/lstm_689/lstm_cell_689/BiasAdd/ReadVariableOp?;sequential_229/lstm_689/lstm_cell_689/MatMul/ReadVariableOp?=sequential_229/lstm_689/lstm_cell_689/MatMul_1/ReadVariableOp?sequential_229/lstm_689/while[
sequential_229/lstm_687/ShapeShapelstm_687_input*
T0*
_output_shapes
:u
+sequential_229/lstm_687/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_229/lstm_687/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_229/lstm_687/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_229/lstm_687/strided_sliceStridedSlice&sequential_229/lstm_687/Shape:output:04sequential_229/lstm_687/strided_slice/stack:output:06sequential_229/lstm_687/strided_slice/stack_1:output:06sequential_229/lstm_687/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_229/lstm_687/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
$sequential_229/lstm_687/zeros/packedPack.sequential_229/lstm_687/strided_slice:output:0/sequential_229/lstm_687/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_229/lstm_687/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_229/lstm_687/zerosFill-sequential_229/lstm_687/zeros/packed:output:0,sequential_229/lstm_687/zeros/Const:output:0*
T0*'
_output_shapes
:?????????dj
(sequential_229/lstm_687/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
&sequential_229/lstm_687/zeros_1/packedPack.sequential_229/lstm_687/strided_slice:output:01sequential_229/lstm_687/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_229/lstm_687/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_229/lstm_687/zeros_1Fill/sequential_229/lstm_687/zeros_1/packed:output:0.sequential_229/lstm_687/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????d{
&sequential_229/lstm_687/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_229/lstm_687/transpose	Transposelstm_687_input/sequential_229/lstm_687/transpose/perm:output:0*
T0*+
_output_shapes
:?????????t
sequential_229/lstm_687/Shape_1Shape%sequential_229/lstm_687/transpose:y:0*
T0*
_output_shapes
:w
-sequential_229/lstm_687/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_229/lstm_687/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_229/lstm_687/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_229/lstm_687/strided_slice_1StridedSlice(sequential_229/lstm_687/Shape_1:output:06sequential_229/lstm_687/strided_slice_1/stack:output:08sequential_229/lstm_687/strided_slice_1/stack_1:output:08sequential_229/lstm_687/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_229/lstm_687/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_229/lstm_687/TensorArrayV2TensorListReserve<sequential_229/lstm_687/TensorArrayV2/element_shape:output:00sequential_229/lstm_687/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_229/lstm_687/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
?sequential_229/lstm_687/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_229/lstm_687/transpose:y:0Vsequential_229/lstm_687/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_229/lstm_687/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_229/lstm_687/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_229/lstm_687/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_229/lstm_687/strided_slice_2StridedSlice%sequential_229/lstm_687/transpose:y:06sequential_229/lstm_687/strided_slice_2/stack:output:08sequential_229/lstm_687/strided_slice_2/stack_1:output:08sequential_229/lstm_687/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
;sequential_229/lstm_687/lstm_cell_687/MatMul/ReadVariableOpReadVariableOpDsequential_229_lstm_687_lstm_cell_687_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
,sequential_229/lstm_687/lstm_cell_687/MatMulMatMul0sequential_229/lstm_687/strided_slice_2:output:0Csequential_229/lstm_687/lstm_cell_687/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_229/lstm_687/lstm_cell_687/MatMul_1/ReadVariableOpReadVariableOpFsequential_229_lstm_687_lstm_cell_687_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
.sequential_229/lstm_687/lstm_cell_687/MatMul_1MatMul&sequential_229/lstm_687/zeros:output:0Esequential_229/lstm_687/lstm_cell_687/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_229/lstm_687/lstm_cell_687/addAddV26sequential_229/lstm_687/lstm_cell_687/MatMul:product:08sequential_229/lstm_687/lstm_cell_687/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_229/lstm_687/lstm_cell_687/BiasAdd/ReadVariableOpReadVariableOpEsequential_229_lstm_687_lstm_cell_687_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_229/lstm_687/lstm_cell_687/BiasAddBiasAdd-sequential_229/lstm_687/lstm_cell_687/add:z:0Dsequential_229/lstm_687/lstm_cell_687/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_229/lstm_687/lstm_cell_687/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_229/lstm_687/lstm_cell_687/splitSplit>sequential_229/lstm_687/lstm_cell_687/split/split_dim:output:06sequential_229/lstm_687/lstm_cell_687/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
-sequential_229/lstm_687/lstm_cell_687/SigmoidSigmoid4sequential_229/lstm_687/lstm_cell_687/split:output:0*
T0*'
_output_shapes
:?????????d?
/sequential_229/lstm_687/lstm_cell_687/Sigmoid_1Sigmoid4sequential_229/lstm_687/lstm_cell_687/split:output:1*
T0*'
_output_shapes
:?????????d?
)sequential_229/lstm_687/lstm_cell_687/mulMul3sequential_229/lstm_687/lstm_cell_687/Sigmoid_1:y:0(sequential_229/lstm_687/zeros_1:output:0*
T0*'
_output_shapes
:?????????d?
*sequential_229/lstm_687/lstm_cell_687/ReluRelu4sequential_229/lstm_687/lstm_cell_687/split:output:2*
T0*'
_output_shapes
:?????????d?
+sequential_229/lstm_687/lstm_cell_687/mul_1Mul1sequential_229/lstm_687/lstm_cell_687/Sigmoid:y:08sequential_229/lstm_687/lstm_cell_687/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
+sequential_229/lstm_687/lstm_cell_687/add_1AddV2-sequential_229/lstm_687/lstm_cell_687/mul:z:0/sequential_229/lstm_687/lstm_cell_687/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
/sequential_229/lstm_687/lstm_cell_687/Sigmoid_2Sigmoid4sequential_229/lstm_687/lstm_cell_687/split:output:3*
T0*'
_output_shapes
:?????????d?
,sequential_229/lstm_687/lstm_cell_687/Relu_1Relu/sequential_229/lstm_687/lstm_cell_687/add_1:z:0*
T0*'
_output_shapes
:?????????d?
+sequential_229/lstm_687/lstm_cell_687/mul_2Mul3sequential_229/lstm_687/lstm_cell_687/Sigmoid_2:y:0:sequential_229/lstm_687/lstm_cell_687/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
5sequential_229/lstm_687/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
'sequential_229/lstm_687/TensorArrayV2_1TensorListReserve>sequential_229/lstm_687/TensorArrayV2_1/element_shape:output:00sequential_229/lstm_687/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_229/lstm_687/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_229/lstm_687/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_229/lstm_687/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_229/lstm_687/whileWhile3sequential_229/lstm_687/while/loop_counter:output:09sequential_229/lstm_687/while/maximum_iterations:output:0%sequential_229/lstm_687/time:output:00sequential_229/lstm_687/TensorArrayV2_1:handle:0&sequential_229/lstm_687/zeros:output:0(sequential_229/lstm_687/zeros_1:output:00sequential_229/lstm_687/strided_slice_1:output:0Osequential_229/lstm_687/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_229_lstm_687_lstm_cell_687_matmul_readvariableop_resourceFsequential_229_lstm_687_lstm_cell_687_matmul_1_readvariableop_resourceEsequential_229_lstm_687_lstm_cell_687_biasadd_readvariableop_resource*
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
*sequential_229_lstm_687_while_body_4332560*6
cond.R,
*sequential_229_lstm_687_while_cond_4332559*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
Hsequential_229/lstm_687/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
:sequential_229/lstm_687/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_229/lstm_687/while:output:3Qsequential_229/lstm_687/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0?
-sequential_229/lstm_687/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_229/lstm_687/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_229/lstm_687/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_229/lstm_687/strided_slice_3StridedSliceCsequential_229/lstm_687/TensorArrayV2Stack/TensorListStack:tensor:06sequential_229/lstm_687/strided_slice_3/stack:output:08sequential_229/lstm_687/strided_slice_3/stack_1:output:08sequential_229/lstm_687/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask}
(sequential_229/lstm_687/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_229/lstm_687/transpose_1	TransposeCsequential_229/lstm_687/TensorArrayV2Stack/TensorListStack:tensor:01sequential_229/lstm_687/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????ds
sequential_229/lstm_687/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_229/lstm_688/ShapeShape'sequential_229/lstm_687/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_229/lstm_688/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_229/lstm_688/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_229/lstm_688/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_229/lstm_688/strided_sliceStridedSlice&sequential_229/lstm_688/Shape:output:04sequential_229/lstm_688/strided_slice/stack:output:06sequential_229/lstm_688/strided_slice/stack_1:output:06sequential_229/lstm_688/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_229/lstm_688/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
$sequential_229/lstm_688/zeros/packedPack.sequential_229/lstm_688/strided_slice:output:0/sequential_229/lstm_688/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_229/lstm_688/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_229/lstm_688/zerosFill-sequential_229/lstm_688/zeros/packed:output:0,sequential_229/lstm_688/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2j
(sequential_229/lstm_688/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
&sequential_229/lstm_688/zeros_1/packedPack.sequential_229/lstm_688/strided_slice:output:01sequential_229/lstm_688/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_229/lstm_688/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_229/lstm_688/zeros_1Fill/sequential_229/lstm_688/zeros_1/packed:output:0.sequential_229/lstm_688/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2{
&sequential_229/lstm_688/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_229/lstm_688/transpose	Transpose'sequential_229/lstm_687/transpose_1:y:0/sequential_229/lstm_688/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dt
sequential_229/lstm_688/Shape_1Shape%sequential_229/lstm_688/transpose:y:0*
T0*
_output_shapes
:w
-sequential_229/lstm_688/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_229/lstm_688/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_229/lstm_688/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_229/lstm_688/strided_slice_1StridedSlice(sequential_229/lstm_688/Shape_1:output:06sequential_229/lstm_688/strided_slice_1/stack:output:08sequential_229/lstm_688/strided_slice_1/stack_1:output:08sequential_229/lstm_688/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_229/lstm_688/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_229/lstm_688/TensorArrayV2TensorListReserve<sequential_229/lstm_688/TensorArrayV2/element_shape:output:00sequential_229/lstm_688/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_229/lstm_688/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
?sequential_229/lstm_688/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_229/lstm_688/transpose:y:0Vsequential_229/lstm_688/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_229/lstm_688/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_229/lstm_688/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_229/lstm_688/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_229/lstm_688/strided_slice_2StridedSlice%sequential_229/lstm_688/transpose:y:06sequential_229/lstm_688/strided_slice_2/stack:output:08sequential_229/lstm_688/strided_slice_2/stack_1:output:08sequential_229/lstm_688/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
;sequential_229/lstm_688/lstm_cell_688/MatMul/ReadVariableOpReadVariableOpDsequential_229_lstm_688_lstm_cell_688_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
,sequential_229/lstm_688/lstm_cell_688/MatMulMatMul0sequential_229/lstm_688/strided_slice_2:output:0Csequential_229/lstm_688/lstm_cell_688/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_229/lstm_688/lstm_cell_688/MatMul_1/ReadVariableOpReadVariableOpFsequential_229_lstm_688_lstm_cell_688_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
.sequential_229/lstm_688/lstm_cell_688/MatMul_1MatMul&sequential_229/lstm_688/zeros:output:0Esequential_229/lstm_688/lstm_cell_688/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_229/lstm_688/lstm_cell_688/addAddV26sequential_229/lstm_688/lstm_cell_688/MatMul:product:08sequential_229/lstm_688/lstm_cell_688/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_229/lstm_688/lstm_cell_688/BiasAdd/ReadVariableOpReadVariableOpEsequential_229_lstm_688_lstm_cell_688_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_229/lstm_688/lstm_cell_688/BiasAddBiasAdd-sequential_229/lstm_688/lstm_cell_688/add:z:0Dsequential_229/lstm_688/lstm_cell_688/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_229/lstm_688/lstm_cell_688/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_229/lstm_688/lstm_cell_688/splitSplit>sequential_229/lstm_688/lstm_cell_688/split/split_dim:output:06sequential_229/lstm_688/lstm_cell_688/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
-sequential_229/lstm_688/lstm_cell_688/SigmoidSigmoid4sequential_229/lstm_688/lstm_cell_688/split:output:0*
T0*'
_output_shapes
:?????????2?
/sequential_229/lstm_688/lstm_cell_688/Sigmoid_1Sigmoid4sequential_229/lstm_688/lstm_cell_688/split:output:1*
T0*'
_output_shapes
:?????????2?
)sequential_229/lstm_688/lstm_cell_688/mulMul3sequential_229/lstm_688/lstm_cell_688/Sigmoid_1:y:0(sequential_229/lstm_688/zeros_1:output:0*
T0*'
_output_shapes
:?????????2?
*sequential_229/lstm_688/lstm_cell_688/ReluRelu4sequential_229/lstm_688/lstm_cell_688/split:output:2*
T0*'
_output_shapes
:?????????2?
+sequential_229/lstm_688/lstm_cell_688/mul_1Mul1sequential_229/lstm_688/lstm_cell_688/Sigmoid:y:08sequential_229/lstm_688/lstm_cell_688/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
+sequential_229/lstm_688/lstm_cell_688/add_1AddV2-sequential_229/lstm_688/lstm_cell_688/mul:z:0/sequential_229/lstm_688/lstm_cell_688/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
/sequential_229/lstm_688/lstm_cell_688/Sigmoid_2Sigmoid4sequential_229/lstm_688/lstm_cell_688/split:output:3*
T0*'
_output_shapes
:?????????2?
,sequential_229/lstm_688/lstm_cell_688/Relu_1Relu/sequential_229/lstm_688/lstm_cell_688/add_1:z:0*
T0*'
_output_shapes
:?????????2?
+sequential_229/lstm_688/lstm_cell_688/mul_2Mul3sequential_229/lstm_688/lstm_cell_688/Sigmoid_2:y:0:sequential_229/lstm_688/lstm_cell_688/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
5sequential_229/lstm_688/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
'sequential_229/lstm_688/TensorArrayV2_1TensorListReserve>sequential_229/lstm_688/TensorArrayV2_1/element_shape:output:00sequential_229/lstm_688/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_229/lstm_688/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_229/lstm_688/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_229/lstm_688/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_229/lstm_688/whileWhile3sequential_229/lstm_688/while/loop_counter:output:09sequential_229/lstm_688/while/maximum_iterations:output:0%sequential_229/lstm_688/time:output:00sequential_229/lstm_688/TensorArrayV2_1:handle:0&sequential_229/lstm_688/zeros:output:0(sequential_229/lstm_688/zeros_1:output:00sequential_229/lstm_688/strided_slice_1:output:0Osequential_229/lstm_688/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_229_lstm_688_lstm_cell_688_matmul_readvariableop_resourceFsequential_229_lstm_688_lstm_cell_688_matmul_1_readvariableop_resourceEsequential_229_lstm_688_lstm_cell_688_biasadd_readvariableop_resource*
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
*sequential_229_lstm_688_while_body_4332699*6
cond.R,
*sequential_229_lstm_688_while_cond_4332698*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
Hsequential_229/lstm_688/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
:sequential_229/lstm_688/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_229/lstm_688/while:output:3Qsequential_229/lstm_688/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0?
-sequential_229/lstm_688/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_229/lstm_688/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_229/lstm_688/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_229/lstm_688/strided_slice_3StridedSliceCsequential_229/lstm_688/TensorArrayV2Stack/TensorListStack:tensor:06sequential_229/lstm_688/strided_slice_3/stack:output:08sequential_229/lstm_688/strided_slice_3/stack_1:output:08sequential_229/lstm_688/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask}
(sequential_229/lstm_688/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_229/lstm_688/transpose_1	TransposeCsequential_229/lstm_688/TensorArrayV2Stack/TensorListStack:tensor:01sequential_229/lstm_688/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2s
sequential_229/lstm_688/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_229/lstm_689/ShapeShape'sequential_229/lstm_688/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_229/lstm_689/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_229/lstm_689/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_229/lstm_689/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_229/lstm_689/strided_sliceStridedSlice&sequential_229/lstm_689/Shape:output:04sequential_229/lstm_689/strided_slice/stack:output:06sequential_229/lstm_689/strided_slice/stack_1:output:06sequential_229/lstm_689/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_229/lstm_689/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
$sequential_229/lstm_689/zeros/packedPack.sequential_229/lstm_689/strided_slice:output:0/sequential_229/lstm_689/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_229/lstm_689/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_229/lstm_689/zerosFill-sequential_229/lstm_689/zeros/packed:output:0,sequential_229/lstm_689/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
j
(sequential_229/lstm_689/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
&sequential_229/lstm_689/zeros_1/packedPack.sequential_229/lstm_689/strided_slice:output:01sequential_229/lstm_689/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_229/lstm_689/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_229/lstm_689/zeros_1Fill/sequential_229/lstm_689/zeros_1/packed:output:0.sequential_229/lstm_689/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
{
&sequential_229/lstm_689/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_229/lstm_689/transpose	Transpose'sequential_229/lstm_688/transpose_1:y:0/sequential_229/lstm_689/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2t
sequential_229/lstm_689/Shape_1Shape%sequential_229/lstm_689/transpose:y:0*
T0*
_output_shapes
:w
-sequential_229/lstm_689/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_229/lstm_689/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_229/lstm_689/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_229/lstm_689/strided_slice_1StridedSlice(sequential_229/lstm_689/Shape_1:output:06sequential_229/lstm_689/strided_slice_1/stack:output:08sequential_229/lstm_689/strided_slice_1/stack_1:output:08sequential_229/lstm_689/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_229/lstm_689/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_229/lstm_689/TensorArrayV2TensorListReserve<sequential_229/lstm_689/TensorArrayV2/element_shape:output:00sequential_229/lstm_689/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_229/lstm_689/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
?sequential_229/lstm_689/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_229/lstm_689/transpose:y:0Vsequential_229/lstm_689/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_229/lstm_689/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_229/lstm_689/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_229/lstm_689/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_229/lstm_689/strided_slice_2StridedSlice%sequential_229/lstm_689/transpose:y:06sequential_229/lstm_689/strided_slice_2/stack:output:08sequential_229/lstm_689/strided_slice_2/stack_1:output:08sequential_229/lstm_689/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
;sequential_229/lstm_689/lstm_cell_689/MatMul/ReadVariableOpReadVariableOpDsequential_229_lstm_689_lstm_cell_689_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
,sequential_229/lstm_689/lstm_cell_689/MatMulMatMul0sequential_229/lstm_689/strided_slice_2:output:0Csequential_229/lstm_689/lstm_cell_689/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
=sequential_229/lstm_689/lstm_cell_689/MatMul_1/ReadVariableOpReadVariableOpFsequential_229_lstm_689_lstm_cell_689_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
.sequential_229/lstm_689/lstm_cell_689/MatMul_1MatMul&sequential_229/lstm_689/zeros:output:0Esequential_229/lstm_689/lstm_cell_689/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
)sequential_229/lstm_689/lstm_cell_689/addAddV26sequential_229/lstm_689/lstm_cell_689/MatMul:product:08sequential_229/lstm_689/lstm_cell_689/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
<sequential_229/lstm_689/lstm_cell_689/BiasAdd/ReadVariableOpReadVariableOpEsequential_229_lstm_689_lstm_cell_689_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
-sequential_229/lstm_689/lstm_cell_689/BiasAddBiasAdd-sequential_229/lstm_689/lstm_cell_689/add:z:0Dsequential_229/lstm_689/lstm_cell_689/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(w
5sequential_229/lstm_689/lstm_cell_689/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_229/lstm_689/lstm_cell_689/splitSplit>sequential_229/lstm_689/lstm_cell_689/split/split_dim:output:06sequential_229/lstm_689/lstm_cell_689/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
-sequential_229/lstm_689/lstm_cell_689/SigmoidSigmoid4sequential_229/lstm_689/lstm_cell_689/split:output:0*
T0*'
_output_shapes
:?????????
?
/sequential_229/lstm_689/lstm_cell_689/Sigmoid_1Sigmoid4sequential_229/lstm_689/lstm_cell_689/split:output:1*
T0*'
_output_shapes
:?????????
?
)sequential_229/lstm_689/lstm_cell_689/mulMul3sequential_229/lstm_689/lstm_cell_689/Sigmoid_1:y:0(sequential_229/lstm_689/zeros_1:output:0*
T0*'
_output_shapes
:?????????
?
*sequential_229/lstm_689/lstm_cell_689/ReluRelu4sequential_229/lstm_689/lstm_cell_689/split:output:2*
T0*'
_output_shapes
:?????????
?
+sequential_229/lstm_689/lstm_cell_689/mul_1Mul1sequential_229/lstm_689/lstm_cell_689/Sigmoid:y:08sequential_229/lstm_689/lstm_cell_689/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
+sequential_229/lstm_689/lstm_cell_689/add_1AddV2-sequential_229/lstm_689/lstm_cell_689/mul:z:0/sequential_229/lstm_689/lstm_cell_689/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
/sequential_229/lstm_689/lstm_cell_689/Sigmoid_2Sigmoid4sequential_229/lstm_689/lstm_cell_689/split:output:3*
T0*'
_output_shapes
:?????????
?
,sequential_229/lstm_689/lstm_cell_689/Relu_1Relu/sequential_229/lstm_689/lstm_cell_689/add_1:z:0*
T0*'
_output_shapes
:?????????
?
+sequential_229/lstm_689/lstm_cell_689/mul_2Mul3sequential_229/lstm_689/lstm_cell_689/Sigmoid_2:y:0:sequential_229/lstm_689/lstm_cell_689/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
5sequential_229/lstm_689/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
'sequential_229/lstm_689/TensorArrayV2_1TensorListReserve>sequential_229/lstm_689/TensorArrayV2_1/element_shape:output:00sequential_229/lstm_689/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_229/lstm_689/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_229/lstm_689/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_229/lstm_689/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_229/lstm_689/whileWhile3sequential_229/lstm_689/while/loop_counter:output:09sequential_229/lstm_689/while/maximum_iterations:output:0%sequential_229/lstm_689/time:output:00sequential_229/lstm_689/TensorArrayV2_1:handle:0&sequential_229/lstm_689/zeros:output:0(sequential_229/lstm_689/zeros_1:output:00sequential_229/lstm_689/strided_slice_1:output:0Osequential_229/lstm_689/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_229_lstm_689_lstm_cell_689_matmul_readvariableop_resourceFsequential_229_lstm_689_lstm_cell_689_matmul_1_readvariableop_resourceEsequential_229_lstm_689_lstm_cell_689_biasadd_readvariableop_resource*
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
*sequential_229_lstm_689_while_body_4332838*6
cond.R,
*sequential_229_lstm_689_while_cond_4332837*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
Hsequential_229/lstm_689/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
:sequential_229/lstm_689/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_229/lstm_689/while:output:3Qsequential_229/lstm_689/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0?
-sequential_229/lstm_689/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_229/lstm_689/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_229/lstm_689/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_229/lstm_689/strided_slice_3StridedSliceCsequential_229/lstm_689/TensorArrayV2Stack/TensorListStack:tensor:06sequential_229/lstm_689/strided_slice_3/stack:output:08sequential_229/lstm_689/strided_slice_3/stack_1:output:08sequential_229/lstm_689/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_mask}
(sequential_229/lstm_689/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_229/lstm_689/transpose_1	TransposeCsequential_229/lstm_689/TensorArrayV2Stack/TensorListStack:tensor:01sequential_229/lstm_689/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
s
sequential_229/lstm_689/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
.sequential_229/dense_229/MatMul/ReadVariableOpReadVariableOp7sequential_229_dense_229_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
sequential_229/dense_229/MatMulMatMul0sequential_229/lstm_689/strided_slice_3:output:06sequential_229/dense_229/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
/sequential_229/dense_229/BiasAdd/ReadVariableOpReadVariableOp8sequential_229_dense_229_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
 sequential_229/dense_229/BiasAddBiasAdd)sequential_229/dense_229/MatMul:product:07sequential_229/dense_229/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x
IdentityIdentity)sequential_229/dense_229/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp0^sequential_229/dense_229/BiasAdd/ReadVariableOp/^sequential_229/dense_229/MatMul/ReadVariableOp=^sequential_229/lstm_687/lstm_cell_687/BiasAdd/ReadVariableOp<^sequential_229/lstm_687/lstm_cell_687/MatMul/ReadVariableOp>^sequential_229/lstm_687/lstm_cell_687/MatMul_1/ReadVariableOp^sequential_229/lstm_687/while=^sequential_229/lstm_688/lstm_cell_688/BiasAdd/ReadVariableOp<^sequential_229/lstm_688/lstm_cell_688/MatMul/ReadVariableOp>^sequential_229/lstm_688/lstm_cell_688/MatMul_1/ReadVariableOp^sequential_229/lstm_688/while=^sequential_229/lstm_689/lstm_cell_689/BiasAdd/ReadVariableOp<^sequential_229/lstm_689/lstm_cell_689/MatMul/ReadVariableOp>^sequential_229/lstm_689/lstm_cell_689/MatMul_1/ReadVariableOp^sequential_229/lstm_689/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2b
/sequential_229/dense_229/BiasAdd/ReadVariableOp/sequential_229/dense_229/BiasAdd/ReadVariableOp2`
.sequential_229/dense_229/MatMul/ReadVariableOp.sequential_229/dense_229/MatMul/ReadVariableOp2|
<sequential_229/lstm_687/lstm_cell_687/BiasAdd/ReadVariableOp<sequential_229/lstm_687/lstm_cell_687/BiasAdd/ReadVariableOp2z
;sequential_229/lstm_687/lstm_cell_687/MatMul/ReadVariableOp;sequential_229/lstm_687/lstm_cell_687/MatMul/ReadVariableOp2~
=sequential_229/lstm_687/lstm_cell_687/MatMul_1/ReadVariableOp=sequential_229/lstm_687/lstm_cell_687/MatMul_1/ReadVariableOp2>
sequential_229/lstm_687/whilesequential_229/lstm_687/while2|
<sequential_229/lstm_688/lstm_cell_688/BiasAdd/ReadVariableOp<sequential_229/lstm_688/lstm_cell_688/BiasAdd/ReadVariableOp2z
;sequential_229/lstm_688/lstm_cell_688/MatMul/ReadVariableOp;sequential_229/lstm_688/lstm_cell_688/MatMul/ReadVariableOp2~
=sequential_229/lstm_688/lstm_cell_688/MatMul_1/ReadVariableOp=sequential_229/lstm_688/lstm_cell_688/MatMul_1/ReadVariableOp2>
sequential_229/lstm_688/whilesequential_229/lstm_688/while2|
<sequential_229/lstm_689/lstm_cell_689/BiasAdd/ReadVariableOp<sequential_229/lstm_689/lstm_cell_689/BiasAdd/ReadVariableOp2z
;sequential_229/lstm_689/lstm_cell_689/MatMul/ReadVariableOp;sequential_229/lstm_689/lstm_cell_689/MatMul/ReadVariableOp2~
=sequential_229/lstm_689/lstm_cell_689/MatMul_1/ReadVariableOp=sequential_229/lstm_689/lstm_cell_689/MatMul_1/ReadVariableOp2>
sequential_229/lstm_689/whilesequential_229/lstm_689/while:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_687_input
?8
?
while_body_4336628
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_687_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_687_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_687_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_687_matmul_readvariableop_resource:	?G
4while_lstm_cell_687_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_687_biasadd_readvariableop_resource:	???*while/lstm_cell_687/BiasAdd/ReadVariableOp?)while/lstm_cell_687/MatMul/ReadVariableOp?+while/lstm_cell_687/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_687/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_687_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_687/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_687/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_687/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_687_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_687/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_687/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_687/addAddV2$while/lstm_cell_687/MatMul:product:0&while/lstm_cell_687/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_687/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_687_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_687/BiasAddBiasAddwhile/lstm_cell_687/add:z:02while/lstm_cell_687/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_687/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_687/splitSplit,while/lstm_cell_687/split/split_dim:output:0$while/lstm_cell_687/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_687/SigmoidSigmoid"while/lstm_cell_687/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_687/Sigmoid_1Sigmoid"while/lstm_cell_687/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_687/mulMul!while/lstm_cell_687/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_687/ReluRelu"while/lstm_cell_687/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_687/mul_1Mulwhile/lstm_cell_687/Sigmoid:y:0&while/lstm_cell_687/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_687/add_1AddV2while/lstm_cell_687/mul:z:0while/lstm_cell_687/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_687/Sigmoid_2Sigmoid"while/lstm_cell_687/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_687/Relu_1Reluwhile/lstm_cell_687/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_687/mul_2Mul!while/lstm_cell_687/Sigmoid_2:y:0(while/lstm_cell_687/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_687/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_687/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_687/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_687/BiasAdd/ReadVariableOp*^while/lstm_cell_687/MatMul/ReadVariableOp,^while/lstm_cell_687/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_687_biasadd_readvariableop_resource5while_lstm_cell_687_biasadd_readvariableop_resource_0"n
4while_lstm_cell_687_matmul_1_readvariableop_resource6while_lstm_cell_687_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_687_matmul_readvariableop_resource4while_lstm_cell_687_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_687/BiasAdd/ReadVariableOp*while/lstm_cell_687/BiasAdd/ReadVariableOp2V
)while/lstm_cell_687/MatMul/ReadVariableOp)while/lstm_cell_687/MatMul/ReadVariableOp2Z
+while/lstm_cell_687/MatMul_1/ReadVariableOp+while/lstm_cell_687/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
?#
?
while_body_4333900
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_689_4333924_0:2(/
while_lstm_cell_689_4333926_0:
(+
while_lstm_cell_689_4333928_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_689_4333924:2(-
while_lstm_cell_689_4333926:
()
while_lstm_cell_689_4333928:(??+while/lstm_cell_689/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_689/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_689_4333924_0while_lstm_cell_689_4333926_0while_lstm_cell_689_4333928_0*
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
J__inference_lstm_cell_689_layer_call_and_return_conditional_losses_4333841?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_689/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_689/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_689/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_689/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_689_4333924while_lstm_cell_689_4333924_0"<
while_lstm_cell_689_4333926while_lstm_cell_689_4333926_0"<
while_lstm_cell_689_4333928while_lstm_cell_689_4333928_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_689/StatefulPartitionedCall+while/lstm_cell_689/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
?
K__inference_sequential_229_layer_call_and_return_conditional_losses_4335041

inputs#
lstm_687_4335014:	?#
lstm_687_4335016:	d?
lstm_687_4335018:	?#
lstm_688_4335021:	d?#
lstm_688_4335023:	2?
lstm_688_4335025:	?"
lstm_689_4335028:2("
lstm_689_4335030:
(
lstm_689_4335032:(#
dense_229_4335035:

dense_229_4335037:
identity??!dense_229/StatefulPartitionedCall? lstm_687/StatefulPartitionedCall? lstm_688/StatefulPartitionedCall? lstm_689/StatefulPartitionedCall?
 lstm_687/StatefulPartitionedCallStatefulPartitionedCallinputslstm_687_4335014lstm_687_4335016lstm_687_4335018*
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
E__inference_lstm_687_layer_call_and_return_conditional_losses_4334973?
 lstm_688/StatefulPartitionedCallStatefulPartitionedCall)lstm_687/StatefulPartitionedCall:output:0lstm_688_4335021lstm_688_4335023lstm_688_4335025*
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
E__inference_lstm_688_layer_call_and_return_conditional_losses_4334808?
 lstm_689/StatefulPartitionedCallStatefulPartitionedCall)lstm_688/StatefulPartitionedCall:output:0lstm_689_4335028lstm_689_4335030lstm_689_4335032*
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
E__inference_lstm_689_layer_call_and_return_conditional_losses_4334643?
!dense_229/StatefulPartitionedCallStatefulPartitionedCall)lstm_689/StatefulPartitionedCall:output:0dense_229_4335035dense_229_4335037*
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
F__inference_dense_229_layer_call_and_return_conditional_losses_4334445y
IdentityIdentity*dense_229/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_229/StatefulPartitionedCall!^lstm_687/StatefulPartitionedCall!^lstm_688/StatefulPartitionedCall!^lstm_689/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_229/StatefulPartitionedCall!dense_229/StatefulPartitionedCall2D
 lstm_687/StatefulPartitionedCall lstm_687/StatefulPartitionedCall2D
 lstm_688/StatefulPartitionedCall lstm_688/StatefulPartitionedCall2D
 lstm_689/StatefulPartitionedCall lstm_689/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?J
?
E__inference_lstm_687_layer_call_and_return_conditional_losses_4334973

inputs?
,lstm_cell_687_matmul_readvariableop_resource:	?A
.lstm_cell_687_matmul_1_readvariableop_resource:	d?<
-lstm_cell_687_biasadd_readvariableop_resource:	?
identity??$lstm_cell_687/BiasAdd/ReadVariableOp?#lstm_cell_687/MatMul/ReadVariableOp?%lstm_cell_687/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_687/MatMul/ReadVariableOpReadVariableOp,lstm_cell_687_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_687/MatMulMatMulstrided_slice_2:output:0+lstm_cell_687/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_687/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_687_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_687/MatMul_1MatMulzeros:output:0-lstm_cell_687/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_687/addAddV2lstm_cell_687/MatMul:product:0 lstm_cell_687/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_687/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_687_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_687/BiasAddBiasAddlstm_cell_687/add:z:0,lstm_cell_687/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_687/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_687/splitSplit&lstm_cell_687/split/split_dim:output:0lstm_cell_687/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_687/SigmoidSigmoidlstm_cell_687/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_687/Sigmoid_1Sigmoidlstm_cell_687/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_687/mulMullstm_cell_687/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_687/ReluRelulstm_cell_687/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_687/mul_1Mullstm_cell_687/Sigmoid:y:0 lstm_cell_687/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_687/add_1AddV2lstm_cell_687/mul:z:0lstm_cell_687/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_687/Sigmoid_2Sigmoidlstm_cell_687/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_687/Relu_1Relulstm_cell_687/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_687/mul_2Mullstm_cell_687/Sigmoid_2:y:0"lstm_cell_687/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_687_matmul_readvariableop_resource.lstm_cell_687_matmul_1_readvariableop_resource-lstm_cell_687_biasadd_readvariableop_resource*
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
while_body_4334889*
condR
while_cond_4334888*K
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
NoOpNoOp%^lstm_cell_687/BiasAdd/ReadVariableOp$^lstm_cell_687/MatMul/ReadVariableOp&^lstm_cell_687/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_687/BiasAdd/ReadVariableOp$lstm_cell_687/BiasAdd/ReadVariableOp2J
#lstm_cell_687/MatMul/ReadVariableOp#lstm_cell_687/MatMul/ReadVariableOp2N
%lstm_cell_687/MatMul_1/ReadVariableOp%lstm_cell_687/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
while_body_4337717
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_689_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_689_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_689_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_689_matmul_readvariableop_resource:2(F
4while_lstm_cell_689_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_689_biasadd_readvariableop_resource:(??*while/lstm_cell_689/BiasAdd/ReadVariableOp?)while/lstm_cell_689/MatMul/ReadVariableOp?+while/lstm_cell_689/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_689/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_689_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_689/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_689/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_689/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_689_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_689/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_689/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_689/addAddV2$while/lstm_cell_689/MatMul:product:0&while/lstm_cell_689/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_689/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_689_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_689/BiasAddBiasAddwhile/lstm_cell_689/add:z:02while/lstm_cell_689/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_689/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_689/splitSplit,while/lstm_cell_689/split/split_dim:output:0$while/lstm_cell_689/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_689/SigmoidSigmoid"while/lstm_cell_689/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_689/Sigmoid_1Sigmoid"while/lstm_cell_689/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_689/mulMul!while/lstm_cell_689/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_689/ReluRelu"while/lstm_cell_689/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_689/mul_1Mulwhile/lstm_cell_689/Sigmoid:y:0&while/lstm_cell_689/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_689/add_1AddV2while/lstm_cell_689/mul:z:0while/lstm_cell_689/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_689/Sigmoid_2Sigmoid"while/lstm_cell_689/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_689/Relu_1Reluwhile/lstm_cell_689/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_689/mul_2Mul!while/lstm_cell_689/Sigmoid_2:y:0(while/lstm_cell_689/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_689/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_689/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_689/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_689/BiasAdd/ReadVariableOp*^while/lstm_cell_689/MatMul/ReadVariableOp,^while/lstm_cell_689/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_689_biasadd_readvariableop_resource5while_lstm_cell_689_biasadd_readvariableop_resource_0"n
4while_lstm_cell_689_matmul_1_readvariableop_resource6while_lstm_cell_689_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_689_matmul_readvariableop_resource4while_lstm_cell_689_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_689/BiasAdd/ReadVariableOp*while/lstm_cell_689/BiasAdd/ReadVariableOp2V
)while/lstm_cell_689/MatMul/ReadVariableOp)while/lstm_cell_689/MatMul/ReadVariableOp2Z
+while/lstm_cell_689/MatMul_1/ReadVariableOp+while/lstm_cell_689/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

lstm_689_while_body_4335579.
*lstm_689_while_lstm_689_while_loop_counter4
0lstm_689_while_lstm_689_while_maximum_iterations
lstm_689_while_placeholder 
lstm_689_while_placeholder_1 
lstm_689_while_placeholder_2 
lstm_689_while_placeholder_3-
)lstm_689_while_lstm_689_strided_slice_1_0i
elstm_689_while_tensorarrayv2read_tensorlistgetitem_lstm_689_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_689_while_lstm_cell_689_matmul_readvariableop_resource_0:2(Q
?lstm_689_while_lstm_cell_689_matmul_1_readvariableop_resource_0:
(L
>lstm_689_while_lstm_cell_689_biasadd_readvariableop_resource_0:(
lstm_689_while_identity
lstm_689_while_identity_1
lstm_689_while_identity_2
lstm_689_while_identity_3
lstm_689_while_identity_4
lstm_689_while_identity_5+
'lstm_689_while_lstm_689_strided_slice_1g
clstm_689_while_tensorarrayv2read_tensorlistgetitem_lstm_689_tensorarrayunstack_tensorlistfromtensorM
;lstm_689_while_lstm_cell_689_matmul_readvariableop_resource:2(O
=lstm_689_while_lstm_cell_689_matmul_1_readvariableop_resource:
(J
<lstm_689_while_lstm_cell_689_biasadd_readvariableop_resource:(??3lstm_689/while/lstm_cell_689/BiasAdd/ReadVariableOp?2lstm_689/while/lstm_cell_689/MatMul/ReadVariableOp?4lstm_689/while/lstm_cell_689/MatMul_1/ReadVariableOp?
@lstm_689/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_689/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_689_while_tensorarrayv2read_tensorlistgetitem_lstm_689_tensorarrayunstack_tensorlistfromtensor_0lstm_689_while_placeholderIlstm_689/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_689/while/lstm_cell_689/MatMul/ReadVariableOpReadVariableOp=lstm_689_while_lstm_cell_689_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_689/while/lstm_cell_689/MatMulMatMul9lstm_689/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_689/while/lstm_cell_689/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_689/while/lstm_cell_689/MatMul_1/ReadVariableOpReadVariableOp?lstm_689_while_lstm_cell_689_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_689/while/lstm_cell_689/MatMul_1MatMullstm_689_while_placeholder_2<lstm_689/while/lstm_cell_689/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_689/while/lstm_cell_689/addAddV2-lstm_689/while/lstm_cell_689/MatMul:product:0/lstm_689/while/lstm_cell_689/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_689/while/lstm_cell_689/BiasAdd/ReadVariableOpReadVariableOp>lstm_689_while_lstm_cell_689_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_689/while/lstm_cell_689/BiasAddBiasAdd$lstm_689/while/lstm_cell_689/add:z:0;lstm_689/while/lstm_cell_689/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_689/while/lstm_cell_689/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_689/while/lstm_cell_689/splitSplit5lstm_689/while/lstm_cell_689/split/split_dim:output:0-lstm_689/while/lstm_cell_689/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_689/while/lstm_cell_689/SigmoidSigmoid+lstm_689/while/lstm_cell_689/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_689/while/lstm_cell_689/Sigmoid_1Sigmoid+lstm_689/while/lstm_cell_689/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_689/while/lstm_cell_689/mulMul*lstm_689/while/lstm_cell_689/Sigmoid_1:y:0lstm_689_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_689/while/lstm_cell_689/ReluRelu+lstm_689/while/lstm_cell_689/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_689/while/lstm_cell_689/mul_1Mul(lstm_689/while/lstm_cell_689/Sigmoid:y:0/lstm_689/while/lstm_cell_689/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_689/while/lstm_cell_689/add_1AddV2$lstm_689/while/lstm_cell_689/mul:z:0&lstm_689/while/lstm_cell_689/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_689/while/lstm_cell_689/Sigmoid_2Sigmoid+lstm_689/while/lstm_cell_689/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_689/while/lstm_cell_689/Relu_1Relu&lstm_689/while/lstm_cell_689/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_689/while/lstm_cell_689/mul_2Mul*lstm_689/while/lstm_cell_689/Sigmoid_2:y:01lstm_689/while/lstm_cell_689/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_689/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_689_while_placeholder_1lstm_689_while_placeholder&lstm_689/while/lstm_cell_689/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_689/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_689/while/addAddV2lstm_689_while_placeholderlstm_689/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_689/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_689/while/add_1AddV2*lstm_689_while_lstm_689_while_loop_counterlstm_689/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_689/while/IdentityIdentitylstm_689/while/add_1:z:0^lstm_689/while/NoOp*
T0*
_output_shapes
: ?
lstm_689/while/Identity_1Identity0lstm_689_while_lstm_689_while_maximum_iterations^lstm_689/while/NoOp*
T0*
_output_shapes
: t
lstm_689/while/Identity_2Identitylstm_689/while/add:z:0^lstm_689/while/NoOp*
T0*
_output_shapes
: ?
lstm_689/while/Identity_3IdentityClstm_689/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_689/while/NoOp*
T0*
_output_shapes
: ?
lstm_689/while/Identity_4Identity&lstm_689/while/lstm_cell_689/mul_2:z:0^lstm_689/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_689/while/Identity_5Identity&lstm_689/while/lstm_cell_689/add_1:z:0^lstm_689/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_689/while/NoOpNoOp4^lstm_689/while/lstm_cell_689/BiasAdd/ReadVariableOp3^lstm_689/while/lstm_cell_689/MatMul/ReadVariableOp5^lstm_689/while/lstm_cell_689/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_689_while_identity lstm_689/while/Identity:output:0"?
lstm_689_while_identity_1"lstm_689/while/Identity_1:output:0"?
lstm_689_while_identity_2"lstm_689/while/Identity_2:output:0"?
lstm_689_while_identity_3"lstm_689/while/Identity_3:output:0"?
lstm_689_while_identity_4"lstm_689/while/Identity_4:output:0"?
lstm_689_while_identity_5"lstm_689/while/Identity_5:output:0"T
'lstm_689_while_lstm_689_strided_slice_1)lstm_689_while_lstm_689_strided_slice_1_0"~
<lstm_689_while_lstm_cell_689_biasadd_readvariableop_resource>lstm_689_while_lstm_cell_689_biasadd_readvariableop_resource_0"?
=lstm_689_while_lstm_cell_689_matmul_1_readvariableop_resource?lstm_689_while_lstm_cell_689_matmul_1_readvariableop_resource_0"|
;lstm_689_while_lstm_cell_689_matmul_readvariableop_resource=lstm_689_while_lstm_cell_689_matmul_readvariableop_resource_0"?
clstm_689_while_tensorarrayv2read_tensorlistgetitem_lstm_689_tensorarrayunstack_tensorlistfromtensorelstm_689_while_tensorarrayv2read_tensorlistgetitem_lstm_689_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_689/while/lstm_cell_689/BiasAdd/ReadVariableOp3lstm_689/while/lstm_cell_689/BiasAdd/ReadVariableOp2h
2lstm_689/while/lstm_cell_689/MatMul/ReadVariableOp2lstm_689/while/lstm_cell_689/MatMul/ReadVariableOp2l
4lstm_689/while/lstm_cell_689/MatMul_1/ReadVariableOp4lstm_689/while/lstm_cell_689/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

?
%__inference_signature_wrapper_4335188
lstm_687_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_687_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
"__inference__wrapped_model_4332928o
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
_user_specified_namelstm_687_input
??
?
K__inference_sequential_229_layer_call_and_return_conditional_losses_4335669

inputsH
5lstm_687_lstm_cell_687_matmul_readvariableop_resource:	?J
7lstm_687_lstm_cell_687_matmul_1_readvariableop_resource:	d?E
6lstm_687_lstm_cell_687_biasadd_readvariableop_resource:	?H
5lstm_688_lstm_cell_688_matmul_readvariableop_resource:	d?J
7lstm_688_lstm_cell_688_matmul_1_readvariableop_resource:	2?E
6lstm_688_lstm_cell_688_biasadd_readvariableop_resource:	?G
5lstm_689_lstm_cell_689_matmul_readvariableop_resource:2(I
7lstm_689_lstm_cell_689_matmul_1_readvariableop_resource:
(D
6lstm_689_lstm_cell_689_biasadd_readvariableop_resource:(:
(dense_229_matmul_readvariableop_resource:
7
)dense_229_biasadd_readvariableop_resource:
identity?? dense_229/BiasAdd/ReadVariableOp?dense_229/MatMul/ReadVariableOp?-lstm_687/lstm_cell_687/BiasAdd/ReadVariableOp?,lstm_687/lstm_cell_687/MatMul/ReadVariableOp?.lstm_687/lstm_cell_687/MatMul_1/ReadVariableOp?lstm_687/while?-lstm_688/lstm_cell_688/BiasAdd/ReadVariableOp?,lstm_688/lstm_cell_688/MatMul/ReadVariableOp?.lstm_688/lstm_cell_688/MatMul_1/ReadVariableOp?lstm_688/while?-lstm_689/lstm_cell_689/BiasAdd/ReadVariableOp?,lstm_689/lstm_cell_689/MatMul/ReadVariableOp?.lstm_689/lstm_cell_689/MatMul_1/ReadVariableOp?lstm_689/whileD
lstm_687/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_687/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_687/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_687/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_687/strided_sliceStridedSlicelstm_687/Shape:output:0%lstm_687/strided_slice/stack:output:0'lstm_687/strided_slice/stack_1:output:0'lstm_687/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_687/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_687/zeros/packedPacklstm_687/strided_slice:output:0 lstm_687/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_687/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_687/zerosFilllstm_687/zeros/packed:output:0lstm_687/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_687/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_687/zeros_1/packedPacklstm_687/strided_slice:output:0"lstm_687/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_687/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_687/zeros_1Fill lstm_687/zeros_1/packed:output:0lstm_687/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_687/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_687/transpose	Transposeinputs lstm_687/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_687/Shape_1Shapelstm_687/transpose:y:0*
T0*
_output_shapes
:h
lstm_687/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_687/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_687/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_687/strided_slice_1StridedSlicelstm_687/Shape_1:output:0'lstm_687/strided_slice_1/stack:output:0)lstm_687/strided_slice_1/stack_1:output:0)lstm_687/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_687/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_687/TensorArrayV2TensorListReserve-lstm_687/TensorArrayV2/element_shape:output:0!lstm_687/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_687/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_687/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_687/transpose:y:0Glstm_687/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_687/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_687/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_687/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_687/strided_slice_2StridedSlicelstm_687/transpose:y:0'lstm_687/strided_slice_2/stack:output:0)lstm_687/strided_slice_2/stack_1:output:0)lstm_687/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_687/lstm_cell_687/MatMul/ReadVariableOpReadVariableOp5lstm_687_lstm_cell_687_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_687/lstm_cell_687/MatMulMatMul!lstm_687/strided_slice_2:output:04lstm_687/lstm_cell_687/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_687/lstm_cell_687/MatMul_1/ReadVariableOpReadVariableOp7lstm_687_lstm_cell_687_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_687/lstm_cell_687/MatMul_1MatMullstm_687/zeros:output:06lstm_687/lstm_cell_687/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_687/lstm_cell_687/addAddV2'lstm_687/lstm_cell_687/MatMul:product:0)lstm_687/lstm_cell_687/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_687/lstm_cell_687/BiasAdd/ReadVariableOpReadVariableOp6lstm_687_lstm_cell_687_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_687/lstm_cell_687/BiasAddBiasAddlstm_687/lstm_cell_687/add:z:05lstm_687/lstm_cell_687/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_687/lstm_cell_687/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_687/lstm_cell_687/splitSplit/lstm_687/lstm_cell_687/split/split_dim:output:0'lstm_687/lstm_cell_687/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_687/lstm_cell_687/SigmoidSigmoid%lstm_687/lstm_cell_687/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_687/lstm_cell_687/Sigmoid_1Sigmoid%lstm_687/lstm_cell_687/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_687/lstm_cell_687/mulMul$lstm_687/lstm_cell_687/Sigmoid_1:y:0lstm_687/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_687/lstm_cell_687/ReluRelu%lstm_687/lstm_cell_687/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_687/lstm_cell_687/mul_1Mul"lstm_687/lstm_cell_687/Sigmoid:y:0)lstm_687/lstm_cell_687/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_687/lstm_cell_687/add_1AddV2lstm_687/lstm_cell_687/mul:z:0 lstm_687/lstm_cell_687/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_687/lstm_cell_687/Sigmoid_2Sigmoid%lstm_687/lstm_cell_687/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_687/lstm_cell_687/Relu_1Relu lstm_687/lstm_cell_687/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_687/lstm_cell_687/mul_2Mul$lstm_687/lstm_cell_687/Sigmoid_2:y:0+lstm_687/lstm_cell_687/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_687/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_687/TensorArrayV2_1TensorListReserve/lstm_687/TensorArrayV2_1/element_shape:output:0!lstm_687/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_687/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_687/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_687/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_687/whileWhile$lstm_687/while/loop_counter:output:0*lstm_687/while/maximum_iterations:output:0lstm_687/time:output:0!lstm_687/TensorArrayV2_1:handle:0lstm_687/zeros:output:0lstm_687/zeros_1:output:0!lstm_687/strided_slice_1:output:0@lstm_687/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_687_lstm_cell_687_matmul_readvariableop_resource7lstm_687_lstm_cell_687_matmul_1_readvariableop_resource6lstm_687_lstm_cell_687_biasadd_readvariableop_resource*
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
lstm_687_while_body_4335301*'
condR
lstm_687_while_cond_4335300*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_687/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_687/TensorArrayV2Stack/TensorListStackTensorListStacklstm_687/while:output:3Blstm_687/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_687/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_687/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_687/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_687/strided_slice_3StridedSlice4lstm_687/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_687/strided_slice_3/stack:output:0)lstm_687/strided_slice_3/stack_1:output:0)lstm_687/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_687/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_687/transpose_1	Transpose4lstm_687/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_687/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_687/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_688/ShapeShapelstm_687/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_688/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_688/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_688/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_688/strided_sliceStridedSlicelstm_688/Shape:output:0%lstm_688/strided_slice/stack:output:0'lstm_688/strided_slice/stack_1:output:0'lstm_688/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_688/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_688/zeros/packedPacklstm_688/strided_slice:output:0 lstm_688/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_688/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_688/zerosFilllstm_688/zeros/packed:output:0lstm_688/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_688/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_688/zeros_1/packedPacklstm_688/strided_slice:output:0"lstm_688/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_688/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_688/zeros_1Fill lstm_688/zeros_1/packed:output:0lstm_688/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_688/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_688/transpose	Transposelstm_687/transpose_1:y:0 lstm_688/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_688/Shape_1Shapelstm_688/transpose:y:0*
T0*
_output_shapes
:h
lstm_688/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_688/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_688/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_688/strided_slice_1StridedSlicelstm_688/Shape_1:output:0'lstm_688/strided_slice_1/stack:output:0)lstm_688/strided_slice_1/stack_1:output:0)lstm_688/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_688/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_688/TensorArrayV2TensorListReserve-lstm_688/TensorArrayV2/element_shape:output:0!lstm_688/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_688/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_688/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_688/transpose:y:0Glstm_688/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_688/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_688/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_688/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_688/strided_slice_2StridedSlicelstm_688/transpose:y:0'lstm_688/strided_slice_2/stack:output:0)lstm_688/strided_slice_2/stack_1:output:0)lstm_688/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_688/lstm_cell_688/MatMul/ReadVariableOpReadVariableOp5lstm_688_lstm_cell_688_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_688/lstm_cell_688/MatMulMatMul!lstm_688/strided_slice_2:output:04lstm_688/lstm_cell_688/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_688/lstm_cell_688/MatMul_1/ReadVariableOpReadVariableOp7lstm_688_lstm_cell_688_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_688/lstm_cell_688/MatMul_1MatMullstm_688/zeros:output:06lstm_688/lstm_cell_688/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_688/lstm_cell_688/addAddV2'lstm_688/lstm_cell_688/MatMul:product:0)lstm_688/lstm_cell_688/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_688/lstm_cell_688/BiasAdd/ReadVariableOpReadVariableOp6lstm_688_lstm_cell_688_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_688/lstm_cell_688/BiasAddBiasAddlstm_688/lstm_cell_688/add:z:05lstm_688/lstm_cell_688/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_688/lstm_cell_688/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_688/lstm_cell_688/splitSplit/lstm_688/lstm_cell_688/split/split_dim:output:0'lstm_688/lstm_cell_688/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_688/lstm_cell_688/SigmoidSigmoid%lstm_688/lstm_cell_688/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_688/lstm_cell_688/Sigmoid_1Sigmoid%lstm_688/lstm_cell_688/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_688/lstm_cell_688/mulMul$lstm_688/lstm_cell_688/Sigmoid_1:y:0lstm_688/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_688/lstm_cell_688/ReluRelu%lstm_688/lstm_cell_688/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_688/lstm_cell_688/mul_1Mul"lstm_688/lstm_cell_688/Sigmoid:y:0)lstm_688/lstm_cell_688/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_688/lstm_cell_688/add_1AddV2lstm_688/lstm_cell_688/mul:z:0 lstm_688/lstm_cell_688/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_688/lstm_cell_688/Sigmoid_2Sigmoid%lstm_688/lstm_cell_688/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_688/lstm_cell_688/Relu_1Relu lstm_688/lstm_cell_688/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_688/lstm_cell_688/mul_2Mul$lstm_688/lstm_cell_688/Sigmoid_2:y:0+lstm_688/lstm_cell_688/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_688/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_688/TensorArrayV2_1TensorListReserve/lstm_688/TensorArrayV2_1/element_shape:output:0!lstm_688/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_688/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_688/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_688/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_688/whileWhile$lstm_688/while/loop_counter:output:0*lstm_688/while/maximum_iterations:output:0lstm_688/time:output:0!lstm_688/TensorArrayV2_1:handle:0lstm_688/zeros:output:0lstm_688/zeros_1:output:0!lstm_688/strided_slice_1:output:0@lstm_688/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_688_lstm_cell_688_matmul_readvariableop_resource7lstm_688_lstm_cell_688_matmul_1_readvariableop_resource6lstm_688_lstm_cell_688_biasadd_readvariableop_resource*
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
lstm_688_while_body_4335440*'
condR
lstm_688_while_cond_4335439*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_688/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_688/TensorArrayV2Stack/TensorListStackTensorListStacklstm_688/while:output:3Blstm_688/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_688/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_688/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_688/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_688/strided_slice_3StridedSlice4lstm_688/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_688/strided_slice_3/stack:output:0)lstm_688/strided_slice_3/stack_1:output:0)lstm_688/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_688/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_688/transpose_1	Transpose4lstm_688/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_688/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_688/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_689/ShapeShapelstm_688/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_689/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_689/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_689/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_689/strided_sliceStridedSlicelstm_689/Shape:output:0%lstm_689/strided_slice/stack:output:0'lstm_689/strided_slice/stack_1:output:0'lstm_689/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_689/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_689/zeros/packedPacklstm_689/strided_slice:output:0 lstm_689/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_689/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_689/zerosFilllstm_689/zeros/packed:output:0lstm_689/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_689/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_689/zeros_1/packedPacklstm_689/strided_slice:output:0"lstm_689/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_689/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_689/zeros_1Fill lstm_689/zeros_1/packed:output:0lstm_689/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_689/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_689/transpose	Transposelstm_688/transpose_1:y:0 lstm_689/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_689/Shape_1Shapelstm_689/transpose:y:0*
T0*
_output_shapes
:h
lstm_689/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_689/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_689/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_689/strided_slice_1StridedSlicelstm_689/Shape_1:output:0'lstm_689/strided_slice_1/stack:output:0)lstm_689/strided_slice_1/stack_1:output:0)lstm_689/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_689/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_689/TensorArrayV2TensorListReserve-lstm_689/TensorArrayV2/element_shape:output:0!lstm_689/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_689/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_689/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_689/transpose:y:0Glstm_689/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_689/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_689/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_689/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_689/strided_slice_2StridedSlicelstm_689/transpose:y:0'lstm_689/strided_slice_2/stack:output:0)lstm_689/strided_slice_2/stack_1:output:0)lstm_689/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_689/lstm_cell_689/MatMul/ReadVariableOpReadVariableOp5lstm_689_lstm_cell_689_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_689/lstm_cell_689/MatMulMatMul!lstm_689/strided_slice_2:output:04lstm_689/lstm_cell_689/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_689/lstm_cell_689/MatMul_1/ReadVariableOpReadVariableOp7lstm_689_lstm_cell_689_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_689/lstm_cell_689/MatMul_1MatMullstm_689/zeros:output:06lstm_689/lstm_cell_689/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_689/lstm_cell_689/addAddV2'lstm_689/lstm_cell_689/MatMul:product:0)lstm_689/lstm_cell_689/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_689/lstm_cell_689/BiasAdd/ReadVariableOpReadVariableOp6lstm_689_lstm_cell_689_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_689/lstm_cell_689/BiasAddBiasAddlstm_689/lstm_cell_689/add:z:05lstm_689/lstm_cell_689/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_689/lstm_cell_689/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_689/lstm_cell_689/splitSplit/lstm_689/lstm_cell_689/split/split_dim:output:0'lstm_689/lstm_cell_689/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_689/lstm_cell_689/SigmoidSigmoid%lstm_689/lstm_cell_689/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_689/lstm_cell_689/Sigmoid_1Sigmoid%lstm_689/lstm_cell_689/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_689/lstm_cell_689/mulMul$lstm_689/lstm_cell_689/Sigmoid_1:y:0lstm_689/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_689/lstm_cell_689/ReluRelu%lstm_689/lstm_cell_689/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_689/lstm_cell_689/mul_1Mul"lstm_689/lstm_cell_689/Sigmoid:y:0)lstm_689/lstm_cell_689/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_689/lstm_cell_689/add_1AddV2lstm_689/lstm_cell_689/mul:z:0 lstm_689/lstm_cell_689/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_689/lstm_cell_689/Sigmoid_2Sigmoid%lstm_689/lstm_cell_689/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_689/lstm_cell_689/Relu_1Relu lstm_689/lstm_cell_689/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_689/lstm_cell_689/mul_2Mul$lstm_689/lstm_cell_689/Sigmoid_2:y:0+lstm_689/lstm_cell_689/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_689/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_689/TensorArrayV2_1TensorListReserve/lstm_689/TensorArrayV2_1/element_shape:output:0!lstm_689/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_689/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_689/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_689/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_689/whileWhile$lstm_689/while/loop_counter:output:0*lstm_689/while/maximum_iterations:output:0lstm_689/time:output:0!lstm_689/TensorArrayV2_1:handle:0lstm_689/zeros:output:0lstm_689/zeros_1:output:0!lstm_689/strided_slice_1:output:0@lstm_689/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_689_lstm_cell_689_matmul_readvariableop_resource7lstm_689_lstm_cell_689_matmul_1_readvariableop_resource6lstm_689_lstm_cell_689_biasadd_readvariableop_resource*
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
lstm_689_while_body_4335579*'
condR
lstm_689_while_cond_4335578*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_689/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_689/TensorArrayV2Stack/TensorListStackTensorListStacklstm_689/while:output:3Blstm_689/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_689/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_689/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_689/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_689/strided_slice_3StridedSlice4lstm_689/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_689/strided_slice_3/stack:output:0)lstm_689/strided_slice_3/stack_1:output:0)lstm_689/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_689/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_689/transpose_1	Transpose4lstm_689/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_689/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_689/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_229/MatMul/ReadVariableOpReadVariableOp(dense_229_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_229/MatMulMatMul!lstm_689/strided_slice_3:output:0'dense_229/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_229/BiasAdd/ReadVariableOpReadVariableOp)dense_229_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_229/BiasAddBiasAdddense_229/MatMul:product:0(dense_229/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_229/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_229/BiasAdd/ReadVariableOp ^dense_229/MatMul/ReadVariableOp.^lstm_687/lstm_cell_687/BiasAdd/ReadVariableOp-^lstm_687/lstm_cell_687/MatMul/ReadVariableOp/^lstm_687/lstm_cell_687/MatMul_1/ReadVariableOp^lstm_687/while.^lstm_688/lstm_cell_688/BiasAdd/ReadVariableOp-^lstm_688/lstm_cell_688/MatMul/ReadVariableOp/^lstm_688/lstm_cell_688/MatMul_1/ReadVariableOp^lstm_688/while.^lstm_689/lstm_cell_689/BiasAdd/ReadVariableOp-^lstm_689/lstm_cell_689/MatMul/ReadVariableOp/^lstm_689/lstm_cell_689/MatMul_1/ReadVariableOp^lstm_689/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_229/BiasAdd/ReadVariableOp dense_229/BiasAdd/ReadVariableOp2B
dense_229/MatMul/ReadVariableOpdense_229/MatMul/ReadVariableOp2^
-lstm_687/lstm_cell_687/BiasAdd/ReadVariableOp-lstm_687/lstm_cell_687/BiasAdd/ReadVariableOp2\
,lstm_687/lstm_cell_687/MatMul/ReadVariableOp,lstm_687/lstm_cell_687/MatMul/ReadVariableOp2`
.lstm_687/lstm_cell_687/MatMul_1/ReadVariableOp.lstm_687/lstm_cell_687/MatMul_1/ReadVariableOp2 
lstm_687/whilelstm_687/while2^
-lstm_688/lstm_cell_688/BiasAdd/ReadVariableOp-lstm_688/lstm_cell_688/BiasAdd/ReadVariableOp2\
,lstm_688/lstm_cell_688/MatMul/ReadVariableOp,lstm_688/lstm_cell_688/MatMul/ReadVariableOp2`
.lstm_688/lstm_cell_688/MatMul_1/ReadVariableOp.lstm_688/lstm_cell_688/MatMul_1/ReadVariableOp2 
lstm_688/whilelstm_688/while2^
-lstm_689/lstm_cell_689/BiasAdd/ReadVariableOp-lstm_689/lstm_cell_689/BiasAdd/ReadVariableOp2\
,lstm_689/lstm_cell_689/MatMul/ReadVariableOp,lstm_689/lstm_cell_689/MatMul/ReadVariableOp2`
.lstm_689/lstm_cell_689/MatMul_1/ReadVariableOp.lstm_689/lstm_cell_689/MatMul_1/ReadVariableOp2 
lstm_689/whilelstm_689/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
while_body_4336199
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_687_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_687_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_687_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_687_matmul_readvariableop_resource:	?G
4while_lstm_cell_687_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_687_biasadd_readvariableop_resource:	???*while/lstm_cell_687/BiasAdd/ReadVariableOp?)while/lstm_cell_687/MatMul/ReadVariableOp?+while/lstm_cell_687/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_687/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_687_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_687/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_687/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_687/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_687_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_687/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_687/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_687/addAddV2$while/lstm_cell_687/MatMul:product:0&while/lstm_cell_687/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_687/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_687_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_687/BiasAddBiasAddwhile/lstm_cell_687/add:z:02while/lstm_cell_687/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_687/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_687/splitSplit,while/lstm_cell_687/split/split_dim:output:0$while/lstm_cell_687/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_687/SigmoidSigmoid"while/lstm_cell_687/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_687/Sigmoid_1Sigmoid"while/lstm_cell_687/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_687/mulMul!while/lstm_cell_687/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_687/ReluRelu"while/lstm_cell_687/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_687/mul_1Mulwhile/lstm_cell_687/Sigmoid:y:0&while/lstm_cell_687/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_687/add_1AddV2while/lstm_cell_687/mul:z:0while/lstm_cell_687/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_687/Sigmoid_2Sigmoid"while/lstm_cell_687/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_687/Relu_1Reluwhile/lstm_cell_687/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_687/mul_2Mul!while/lstm_cell_687/Sigmoid_2:y:0(while/lstm_cell_687/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_687/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_687/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_687/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_687/BiasAdd/ReadVariableOp*^while/lstm_cell_687/MatMul/ReadVariableOp,^while/lstm_cell_687/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_687_biasadd_readvariableop_resource5while_lstm_cell_687_biasadd_readvariableop_resource_0"n
4while_lstm_cell_687_matmul_1_readvariableop_resource6while_lstm_cell_687_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_687_matmul_readvariableop_resource4while_lstm_cell_687_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_687/BiasAdd/ReadVariableOp*while/lstm_cell_687/BiasAdd/ReadVariableOp2V
)while/lstm_cell_687/MatMul/ReadVariableOp)while/lstm_cell_687/MatMul/ReadVariableOp2Z
+while/lstm_cell_687/MatMul_1/ReadVariableOp+while/lstm_cell_687/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_4334342
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4334342___redundant_placeholder05
1while_while_cond_4334342___redundant_placeholder15
1while_while_cond_4334342___redundant_placeholder25
1while_while_cond_4334342___redundant_placeholder3
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
while_body_4337431
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_689_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_689_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_689_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_689_matmul_readvariableop_resource:2(F
4while_lstm_cell_689_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_689_biasadd_readvariableop_resource:(??*while/lstm_cell_689/BiasAdd/ReadVariableOp?)while/lstm_cell_689/MatMul/ReadVariableOp?+while/lstm_cell_689/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_689/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_689_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_689/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_689/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_689/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_689_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_689/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_689/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_689/addAddV2$while/lstm_cell_689/MatMul:product:0&while/lstm_cell_689/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_689/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_689_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_689/BiasAddBiasAddwhile/lstm_cell_689/add:z:02while/lstm_cell_689/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_689/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_689/splitSplit,while/lstm_cell_689/split/split_dim:output:0$while/lstm_cell_689/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_689/SigmoidSigmoid"while/lstm_cell_689/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_689/Sigmoid_1Sigmoid"while/lstm_cell_689/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_689/mulMul!while/lstm_cell_689/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_689/ReluRelu"while/lstm_cell_689/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_689/mul_1Mulwhile/lstm_cell_689/Sigmoid:y:0&while/lstm_cell_689/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_689/add_1AddV2while/lstm_cell_689/mul:z:0while/lstm_cell_689/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_689/Sigmoid_2Sigmoid"while/lstm_cell_689/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_689/Relu_1Reluwhile/lstm_cell_689/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_689/mul_2Mul!while/lstm_cell_689/Sigmoid_2:y:0(while/lstm_cell_689/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_689/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_689/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_689/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_689/BiasAdd/ReadVariableOp*^while/lstm_cell_689/MatMul/ReadVariableOp,^while/lstm_cell_689/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_689_biasadd_readvariableop_resource5while_lstm_cell_689_biasadd_readvariableop_resource_0"n
4while_lstm_cell_689_matmul_1_readvariableop_resource6while_lstm_cell_689_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_689_matmul_readvariableop_resource4while_lstm_cell_689_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_689/BiasAdd/ReadVariableOp*while/lstm_cell_689/BiasAdd/ReadVariableOp2V
)while/lstm_cell_689/MatMul/ReadVariableOp)while/lstm_cell_689/MatMul/ReadVariableOp2Z
+while/lstm_cell_689/MatMul_1/ReadVariableOp+while/lstm_cell_689/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*sequential_229_lstm_689_while_cond_4332837L
Hsequential_229_lstm_689_while_sequential_229_lstm_689_while_loop_counterR
Nsequential_229_lstm_689_while_sequential_229_lstm_689_while_maximum_iterations-
)sequential_229_lstm_689_while_placeholder/
+sequential_229_lstm_689_while_placeholder_1/
+sequential_229_lstm_689_while_placeholder_2/
+sequential_229_lstm_689_while_placeholder_3N
Jsequential_229_lstm_689_while_less_sequential_229_lstm_689_strided_slice_1e
asequential_229_lstm_689_while_sequential_229_lstm_689_while_cond_4332837___redundant_placeholder0e
asequential_229_lstm_689_while_sequential_229_lstm_689_while_cond_4332837___redundant_placeholder1e
asequential_229_lstm_689_while_sequential_229_lstm_689_while_cond_4332837___redundant_placeholder2e
asequential_229_lstm_689_while_sequential_229_lstm_689_while_cond_4332837___redundant_placeholder3*
&sequential_229_lstm_689_while_identity
?
"sequential_229/lstm_689/while/LessLess)sequential_229_lstm_689_while_placeholderJsequential_229_lstm_689_while_less_sequential_229_lstm_689_strided_slice_1*
T0*
_output_shapes
: {
&sequential_229/lstm_689/while/IdentityIdentity&sequential_229/lstm_689/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_229_lstm_689_while_identity/sequential_229/lstm_689/while/Identity:output:0*(
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
while_cond_4337100
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4337100___redundant_placeholder05
1while_while_cond_4337100___redundant_placeholder15
1while_while_cond_4337100___redundant_placeholder25
1while_while_cond_4337100___redundant_placeholder3
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
*__inference_lstm_689_layer_call_fn_4337339
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
E__inference_lstm_689_layer_call_and_return_conditional_losses_4333778o
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
?
?
while_cond_4333708
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4333708___redundant_placeholder05
1while_while_cond_4333708___redundant_placeholder15
1while_while_cond_4333708___redundant_placeholder25
1while_while_cond_4333708___redundant_placeholder3
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
E__inference_lstm_689_layer_call_and_return_conditional_losses_4334427

inputs>
,lstm_cell_689_matmul_readvariableop_resource:2(@
.lstm_cell_689_matmul_1_readvariableop_resource:
(;
-lstm_cell_689_biasadd_readvariableop_resource:(
identity??$lstm_cell_689/BiasAdd/ReadVariableOp?#lstm_cell_689/MatMul/ReadVariableOp?%lstm_cell_689/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_689/MatMul/ReadVariableOpReadVariableOp,lstm_cell_689_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_689/MatMulMatMulstrided_slice_2:output:0+lstm_cell_689/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_689/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_689_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_689/MatMul_1MatMulzeros:output:0-lstm_cell_689/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_689/addAddV2lstm_cell_689/MatMul:product:0 lstm_cell_689/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_689/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_689_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_689/BiasAddBiasAddlstm_cell_689/add:z:0,lstm_cell_689/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_689/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_689/splitSplit&lstm_cell_689/split/split_dim:output:0lstm_cell_689/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_689/SigmoidSigmoidlstm_cell_689/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_689/Sigmoid_1Sigmoidlstm_cell_689/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_689/mulMullstm_cell_689/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_689/ReluRelulstm_cell_689/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_689/mul_1Mullstm_cell_689/Sigmoid:y:0 lstm_cell_689/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_689/add_1AddV2lstm_cell_689/mul:z:0lstm_cell_689/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_689/Sigmoid_2Sigmoidlstm_cell_689/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_689/Relu_1Relulstm_cell_689/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_689/mul_2Mullstm_cell_689/Sigmoid_2:y:0"lstm_cell_689/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_689_matmul_readvariableop_resource.lstm_cell_689_matmul_1_readvariableop_resource-lstm_cell_689_biasadd_readvariableop_resource*
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
while_body_4334343*
condR
while_cond_4334342*K
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
NoOpNoOp%^lstm_cell_689/BiasAdd/ReadVariableOp$^lstm_cell_689/MatMul/ReadVariableOp&^lstm_cell_689/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_689/BiasAdd/ReadVariableOp$lstm_cell_689/BiasAdd/ReadVariableOp2J
#lstm_cell_689/MatMul/ReadVariableOp#lstm_cell_689/MatMul/ReadVariableOp2N
%lstm_cell_689/MatMul_1/ReadVariableOp%lstm_cell_689/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?

?
0__inference_sequential_229_layer_call_fn_4335093
lstm_687_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_687_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_229_layer_call_and_return_conditional_losses_4335041o
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
_user_specified_namelstm_687_input
?J
?
E__inference_lstm_687_layer_call_and_return_conditional_losses_4334127

inputs?
,lstm_cell_687_matmul_readvariableop_resource:	?A
.lstm_cell_687_matmul_1_readvariableop_resource:	d?<
-lstm_cell_687_biasadd_readvariableop_resource:	?
identity??$lstm_cell_687/BiasAdd/ReadVariableOp?#lstm_cell_687/MatMul/ReadVariableOp?%lstm_cell_687/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_687/MatMul/ReadVariableOpReadVariableOp,lstm_cell_687_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_687/MatMulMatMulstrided_slice_2:output:0+lstm_cell_687/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_687/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_687_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_687/MatMul_1MatMulzeros:output:0-lstm_cell_687/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_687/addAddV2lstm_cell_687/MatMul:product:0 lstm_cell_687/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_687/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_687_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_687/BiasAddBiasAddlstm_cell_687/add:z:0,lstm_cell_687/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_687/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_687/splitSplit&lstm_cell_687/split/split_dim:output:0lstm_cell_687/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_687/SigmoidSigmoidlstm_cell_687/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_687/Sigmoid_1Sigmoidlstm_cell_687/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_687/mulMullstm_cell_687/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_687/ReluRelulstm_cell_687/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_687/mul_1Mullstm_cell_687/Sigmoid:y:0 lstm_cell_687/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_687/add_1AddV2lstm_cell_687/mul:z:0lstm_cell_687/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_687/Sigmoid_2Sigmoidlstm_cell_687/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_687/Relu_1Relulstm_cell_687/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_687/mul_2Mullstm_cell_687/Sigmoid_2:y:0"lstm_cell_687/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_687_matmul_readvariableop_resource.lstm_cell_687_matmul_1_readvariableop_resource-lstm_cell_687_biasadd_readvariableop_resource*
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
while_body_4334043*
condR
while_cond_4334042*K
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
NoOpNoOp%^lstm_cell_687/BiasAdd/ReadVariableOp$^lstm_cell_687/MatMul/ReadVariableOp&^lstm_cell_687/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_687/BiasAdd/ReadVariableOp$lstm_cell_687/BiasAdd/ReadVariableOp2J
#lstm_cell_687/MatMul/ReadVariableOp#lstm_cell_687/MatMul/ReadVariableOp2N
%lstm_cell_687/MatMul_1/ReadVariableOp%lstm_cell_687/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
E__inference_lstm_687_layer_call_and_return_conditional_losses_4333078

inputs(
lstm_cell_687_4332996:	?(
lstm_cell_687_4332998:	d?$
lstm_cell_687_4333000:	?
identity??%lstm_cell_687/StatefulPartitionedCall?while;
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
%lstm_cell_687/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_687_4332996lstm_cell_687_4332998lstm_cell_687_4333000*
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
J__inference_lstm_cell_687_layer_call_and_return_conditional_losses_4332995n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_687_4332996lstm_cell_687_4332998lstm_cell_687_4333000*
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
while_body_4333009*
condR
while_cond_4333008*K
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
NoOpNoOp&^lstm_cell_687/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_687/StatefulPartitionedCall%lstm_cell_687/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
*__inference_lstm_687_layer_call_fn_4336118
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
E__inference_lstm_687_layer_call_and_return_conditional_losses_4333269|
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
while_cond_4336627
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4336627___redundant_placeholder05
1while_while_cond_4336627___redundant_placeholder15
1while_while_cond_4336627___redundant_placeholder25
1while_while_cond_4336627___redundant_placeholder3
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
E__inference_lstm_689_layer_call_and_return_conditional_losses_4337944

inputs>
,lstm_cell_689_matmul_readvariableop_resource:2(@
.lstm_cell_689_matmul_1_readvariableop_resource:
(;
-lstm_cell_689_biasadd_readvariableop_resource:(
identity??$lstm_cell_689/BiasAdd/ReadVariableOp?#lstm_cell_689/MatMul/ReadVariableOp?%lstm_cell_689/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_689/MatMul/ReadVariableOpReadVariableOp,lstm_cell_689_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_689/MatMulMatMulstrided_slice_2:output:0+lstm_cell_689/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_689/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_689_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_689/MatMul_1MatMulzeros:output:0-lstm_cell_689/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_689/addAddV2lstm_cell_689/MatMul:product:0 lstm_cell_689/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_689/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_689_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_689/BiasAddBiasAddlstm_cell_689/add:z:0,lstm_cell_689/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_689/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_689/splitSplit&lstm_cell_689/split/split_dim:output:0lstm_cell_689/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_689/SigmoidSigmoidlstm_cell_689/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_689/Sigmoid_1Sigmoidlstm_cell_689/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_689/mulMullstm_cell_689/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_689/ReluRelulstm_cell_689/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_689/mul_1Mullstm_cell_689/Sigmoid:y:0 lstm_cell_689/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_689/add_1AddV2lstm_cell_689/mul:z:0lstm_cell_689/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_689/Sigmoid_2Sigmoidlstm_cell_689/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_689/Relu_1Relulstm_cell_689/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_689/mul_2Mullstm_cell_689/Sigmoid_2:y:0"lstm_cell_689/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_689_matmul_readvariableop_resource.lstm_cell_689_matmul_1_readvariableop_resource-lstm_cell_689_biasadd_readvariableop_resource*
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
while_body_4337860*
condR
while_cond_4337859*K
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
NoOpNoOp%^lstm_cell_689/BiasAdd/ReadVariableOp$^lstm_cell_689/MatMul/ReadVariableOp&^lstm_cell_689/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_689/BiasAdd/ReadVariableOp$lstm_cell_689/BiasAdd/ReadVariableOp2J
#lstm_cell_689/MatMul/ReadVariableOp#lstm_cell_689/MatMul/ReadVariableOp2N
%lstm_cell_689/MatMul_1/ReadVariableOp%lstm_cell_689/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
while_cond_4336814
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4336814___redundant_placeholder05
1while_while_cond_4336814___redundant_placeholder15
1while_while_cond_4336814___redundant_placeholder25
1while_while_cond_4336814___redundant_placeholder3
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
J__inference_lstm_cell_687_layer_call_and_return_conditional_losses_4338029

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
F__inference_dense_229_layer_call_and_return_conditional_losses_4334445

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
?J
?
E__inference_lstm_689_layer_call_and_return_conditional_losses_4334643

inputs>
,lstm_cell_689_matmul_readvariableop_resource:2(@
.lstm_cell_689_matmul_1_readvariableop_resource:
(;
-lstm_cell_689_biasadd_readvariableop_resource:(
identity??$lstm_cell_689/BiasAdd/ReadVariableOp?#lstm_cell_689/MatMul/ReadVariableOp?%lstm_cell_689/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_689/MatMul/ReadVariableOpReadVariableOp,lstm_cell_689_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_689/MatMulMatMulstrided_slice_2:output:0+lstm_cell_689/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_689/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_689_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_689/MatMul_1MatMulzeros:output:0-lstm_cell_689/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_689/addAddV2lstm_cell_689/MatMul:product:0 lstm_cell_689/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_689/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_689_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_689/BiasAddBiasAddlstm_cell_689/add:z:0,lstm_cell_689/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_689/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_689/splitSplit&lstm_cell_689/split/split_dim:output:0lstm_cell_689/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_689/SigmoidSigmoidlstm_cell_689/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_689/Sigmoid_1Sigmoidlstm_cell_689/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_689/mulMullstm_cell_689/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_689/ReluRelulstm_cell_689/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_689/mul_1Mullstm_cell_689/Sigmoid:y:0 lstm_cell_689/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_689/add_1AddV2lstm_cell_689/mul:z:0lstm_cell_689/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_689/Sigmoid_2Sigmoidlstm_cell_689/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_689/Relu_1Relulstm_cell_689/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_689/mul_2Mullstm_cell_689/Sigmoid_2:y:0"lstm_cell_689/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_689_matmul_readvariableop_resource.lstm_cell_689_matmul_1_readvariableop_resource-lstm_cell_689_biasadd_readvariableop_resource*
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
while_body_4334559*
condR
while_cond_4334558*K
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
NoOpNoOp%^lstm_cell_689/BiasAdd/ReadVariableOp$^lstm_cell_689/MatMul/ReadVariableOp&^lstm_cell_689/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_689/BiasAdd/ReadVariableOp$lstm_cell_689/BiasAdd/ReadVariableOp2J
#lstm_cell_689/MatMul/ReadVariableOp#lstm_cell_689/MatMul/ReadVariableOp2N
%lstm_cell_689/MatMul_1/ReadVariableOp%lstm_cell_689/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
*sequential_229_lstm_687_while_cond_4332559L
Hsequential_229_lstm_687_while_sequential_229_lstm_687_while_loop_counterR
Nsequential_229_lstm_687_while_sequential_229_lstm_687_while_maximum_iterations-
)sequential_229_lstm_687_while_placeholder/
+sequential_229_lstm_687_while_placeholder_1/
+sequential_229_lstm_687_while_placeholder_2/
+sequential_229_lstm_687_while_placeholder_3N
Jsequential_229_lstm_687_while_less_sequential_229_lstm_687_strided_slice_1e
asequential_229_lstm_687_while_sequential_229_lstm_687_while_cond_4332559___redundant_placeholder0e
asequential_229_lstm_687_while_sequential_229_lstm_687_while_cond_4332559___redundant_placeholder1e
asequential_229_lstm_687_while_sequential_229_lstm_687_while_cond_4332559___redundant_placeholder2e
asequential_229_lstm_687_while_sequential_229_lstm_687_while_cond_4332559___redundant_placeholder3*
&sequential_229_lstm_687_while_identity
?
"sequential_229/lstm_687/while/LessLess)sequential_229_lstm_687_while_placeholderJsequential_229_lstm_687_while_less_sequential_229_lstm_687_strided_slice_1*
T0*
_output_shapes
: {
&sequential_229/lstm_687/while/IdentityIdentity&sequential_229/lstm_687/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_229_lstm_687_while_identity/sequential_229/lstm_687/while/Identity:output:0*(
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
J__inference_lstm_cell_688_layer_call_and_return_conditional_losses_4333345

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
while_cond_4333549
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4333549___redundant_placeholder05
1while_while_cond_4333549___redundant_placeholder15
1while_while_cond_4333549___redundant_placeholder25
1while_while_cond_4333549___redundant_placeholder3
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
while_cond_4337859
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4337859___redundant_placeholder05
1while_while_cond_4337859___redundant_placeholder15
1while_while_cond_4337859___redundant_placeholder25
1while_while_cond_4337859___redundant_placeholder3
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
?
/__inference_lstm_cell_688_layer_call_fn_4338078

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
J__inference_lstm_cell_688_layer_call_and_return_conditional_losses_4333345o
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
?J
?
E__inference_lstm_687_layer_call_and_return_conditional_losses_4336569

inputs?
,lstm_cell_687_matmul_readvariableop_resource:	?A
.lstm_cell_687_matmul_1_readvariableop_resource:	d?<
-lstm_cell_687_biasadd_readvariableop_resource:	?
identity??$lstm_cell_687/BiasAdd/ReadVariableOp?#lstm_cell_687/MatMul/ReadVariableOp?%lstm_cell_687/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_687/MatMul/ReadVariableOpReadVariableOp,lstm_cell_687_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_687/MatMulMatMulstrided_slice_2:output:0+lstm_cell_687/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_687/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_687_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_687/MatMul_1MatMulzeros:output:0-lstm_cell_687/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_687/addAddV2lstm_cell_687/MatMul:product:0 lstm_cell_687/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_687/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_687_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_687/BiasAddBiasAddlstm_cell_687/add:z:0,lstm_cell_687/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_687/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_687/splitSplit&lstm_cell_687/split/split_dim:output:0lstm_cell_687/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_687/SigmoidSigmoidlstm_cell_687/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_687/Sigmoid_1Sigmoidlstm_cell_687/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_687/mulMullstm_cell_687/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_687/ReluRelulstm_cell_687/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_687/mul_1Mullstm_cell_687/Sigmoid:y:0 lstm_cell_687/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_687/add_1AddV2lstm_cell_687/mul:z:0lstm_cell_687/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_687/Sigmoid_2Sigmoidlstm_cell_687/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_687/Relu_1Relulstm_cell_687/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_687/mul_2Mullstm_cell_687/Sigmoid_2:y:0"lstm_cell_687/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_687_matmul_readvariableop_resource.lstm_cell_687_matmul_1_readvariableop_resource-lstm_cell_687_biasadd_readvariableop_resource*
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
while_body_4336485*
condR
while_cond_4336484*K
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
NoOpNoOp%^lstm_cell_687/BiasAdd/ReadVariableOp$^lstm_cell_687/MatMul/ReadVariableOp&^lstm_cell_687/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_687/BiasAdd/ReadVariableOp$lstm_cell_687/BiasAdd/ReadVariableOp2J
#lstm_cell_687/MatMul/ReadVariableOp#lstm_cell_687/MatMul/ReadVariableOp2N
%lstm_cell_687/MatMul_1/ReadVariableOp%lstm_cell_687/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_4337430
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4337430___redundant_placeholder05
1while_while_cond_4337430___redundant_placeholder15
1while_while_cond_4337430___redundant_placeholder25
1while_while_cond_4337430___redundant_placeholder3
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
J__inference_lstm_cell_689_layer_call_and_return_conditional_losses_4333695

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
?W
?
 __inference__traced_save_4338400
file_prefix/
+savev2_dense_229_kernel_read_readvariableop-
)savev2_dense_229_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_687_lstm_cell_687_kernel_read_readvariableopF
Bsavev2_lstm_687_lstm_cell_687_recurrent_kernel_read_readvariableop:
6savev2_lstm_687_lstm_cell_687_bias_read_readvariableop<
8savev2_lstm_688_lstm_cell_688_kernel_read_readvariableopF
Bsavev2_lstm_688_lstm_cell_688_recurrent_kernel_read_readvariableop:
6savev2_lstm_688_lstm_cell_688_bias_read_readvariableop<
8savev2_lstm_689_lstm_cell_689_kernel_read_readvariableopF
Bsavev2_lstm_689_lstm_cell_689_recurrent_kernel_read_readvariableop:
6savev2_lstm_689_lstm_cell_689_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop6
2savev2_adam_dense_229_kernel_m_read_readvariableop4
0savev2_adam_dense_229_bias_m_read_readvariableopC
?savev2_adam_lstm_687_lstm_cell_687_kernel_m_read_readvariableopM
Isavev2_adam_lstm_687_lstm_cell_687_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_687_lstm_cell_687_bias_m_read_readvariableopC
?savev2_adam_lstm_688_lstm_cell_688_kernel_m_read_readvariableopM
Isavev2_adam_lstm_688_lstm_cell_688_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_688_lstm_cell_688_bias_m_read_readvariableopC
?savev2_adam_lstm_689_lstm_cell_689_kernel_m_read_readvariableopM
Isavev2_adam_lstm_689_lstm_cell_689_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_689_lstm_cell_689_bias_m_read_readvariableop6
2savev2_adam_dense_229_kernel_v_read_readvariableop4
0savev2_adam_dense_229_bias_v_read_readvariableopC
?savev2_adam_lstm_687_lstm_cell_687_kernel_v_read_readvariableopM
Isavev2_adam_lstm_687_lstm_cell_687_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_687_lstm_cell_687_bias_v_read_readvariableopC
?savev2_adam_lstm_688_lstm_cell_688_kernel_v_read_readvariableopM
Isavev2_adam_lstm_688_lstm_cell_688_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_688_lstm_cell_688_bias_v_read_readvariableopC
?savev2_adam_lstm_689_lstm_cell_689_kernel_v_read_readvariableopM
Isavev2_adam_lstm_689_lstm_cell_689_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_689_lstm_cell_689_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_dense_229_kernel_read_readvariableop)savev2_dense_229_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_687_lstm_cell_687_kernel_read_readvariableopBsavev2_lstm_687_lstm_cell_687_recurrent_kernel_read_readvariableop6savev2_lstm_687_lstm_cell_687_bias_read_readvariableop8savev2_lstm_688_lstm_cell_688_kernel_read_readvariableopBsavev2_lstm_688_lstm_cell_688_recurrent_kernel_read_readvariableop6savev2_lstm_688_lstm_cell_688_bias_read_readvariableop8savev2_lstm_689_lstm_cell_689_kernel_read_readvariableopBsavev2_lstm_689_lstm_cell_689_recurrent_kernel_read_readvariableop6savev2_lstm_689_lstm_cell_689_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop2savev2_adam_dense_229_kernel_m_read_readvariableop0savev2_adam_dense_229_bias_m_read_readvariableop?savev2_adam_lstm_687_lstm_cell_687_kernel_m_read_readvariableopIsavev2_adam_lstm_687_lstm_cell_687_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_687_lstm_cell_687_bias_m_read_readvariableop?savev2_adam_lstm_688_lstm_cell_688_kernel_m_read_readvariableopIsavev2_adam_lstm_688_lstm_cell_688_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_688_lstm_cell_688_bias_m_read_readvariableop?savev2_adam_lstm_689_lstm_cell_689_kernel_m_read_readvariableopIsavev2_adam_lstm_689_lstm_cell_689_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_689_lstm_cell_689_bias_m_read_readvariableop2savev2_adam_dense_229_kernel_v_read_readvariableop0savev2_adam_dense_229_bias_v_read_readvariableop?savev2_adam_lstm_687_lstm_cell_687_kernel_v_read_readvariableopIsavev2_adam_lstm_687_lstm_cell_687_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_687_lstm_cell_687_bias_v_read_readvariableop?savev2_adam_lstm_688_lstm_cell_688_kernel_v_read_readvariableopIsavev2_adam_lstm_688_lstm_cell_688_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_688_lstm_cell_688_bias_v_read_readvariableop?savev2_adam_lstm_689_lstm_cell_689_kernel_v_read_readvariableopIsavev2_adam_lstm_689_lstm_cell_689_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_689_lstm_cell_689_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
?K
?
E__inference_lstm_689_layer_call_and_return_conditional_losses_4337515
inputs_0>
,lstm_cell_689_matmul_readvariableop_resource:2(@
.lstm_cell_689_matmul_1_readvariableop_resource:
(;
-lstm_cell_689_biasadd_readvariableop_resource:(
identity??$lstm_cell_689/BiasAdd/ReadVariableOp?#lstm_cell_689/MatMul/ReadVariableOp?%lstm_cell_689/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_689/MatMul/ReadVariableOpReadVariableOp,lstm_cell_689_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_689/MatMulMatMulstrided_slice_2:output:0+lstm_cell_689/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_689/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_689_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_689/MatMul_1MatMulzeros:output:0-lstm_cell_689/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_689/addAddV2lstm_cell_689/MatMul:product:0 lstm_cell_689/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_689/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_689_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_689/BiasAddBiasAddlstm_cell_689/add:z:0,lstm_cell_689/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_689/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_689/splitSplit&lstm_cell_689/split/split_dim:output:0lstm_cell_689/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_689/SigmoidSigmoidlstm_cell_689/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_689/Sigmoid_1Sigmoidlstm_cell_689/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_689/mulMullstm_cell_689/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_689/ReluRelulstm_cell_689/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_689/mul_1Mullstm_cell_689/Sigmoid:y:0 lstm_cell_689/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_689/add_1AddV2lstm_cell_689/mul:z:0lstm_cell_689/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_689/Sigmoid_2Sigmoidlstm_cell_689/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_689/Relu_1Relulstm_cell_689/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_689/mul_2Mullstm_cell_689/Sigmoid_2:y:0"lstm_cell_689/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_689_matmul_readvariableop_resource.lstm_cell_689_matmul_1_readvariableop_resource-lstm_cell_689_biasadd_readvariableop_resource*
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
while_body_4337431*
condR
while_cond_4337430*K
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
NoOpNoOp%^lstm_cell_689/BiasAdd/ReadVariableOp$^lstm_cell_689/MatMul/ReadVariableOp&^lstm_cell_689/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_689/BiasAdd/ReadVariableOp$lstm_cell_689/BiasAdd/ReadVariableOp2J
#lstm_cell_689/MatMul/ReadVariableOp#lstm_cell_689/MatMul/ReadVariableOp2N
%lstm_cell_689/MatMul_1/ReadVariableOp%lstm_cell_689/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?

?
lstm_687_while_cond_4335727.
*lstm_687_while_lstm_687_while_loop_counter4
0lstm_687_while_lstm_687_while_maximum_iterations
lstm_687_while_placeholder 
lstm_687_while_placeholder_1 
lstm_687_while_placeholder_2 
lstm_687_while_placeholder_30
,lstm_687_while_less_lstm_687_strided_slice_1G
Clstm_687_while_lstm_687_while_cond_4335727___redundant_placeholder0G
Clstm_687_while_lstm_687_while_cond_4335727___redundant_placeholder1G
Clstm_687_while_lstm_687_while_cond_4335727___redundant_placeholder2G
Clstm_687_while_lstm_687_while_cond_4335727___redundant_placeholder3
lstm_687_while_identity
?
lstm_687/while/LessLesslstm_687_while_placeholder,lstm_687_while_less_lstm_687_strided_slice_1*
T0*
_output_shapes
: ]
lstm_687/while/IdentityIdentitylstm_687/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_687_while_identity lstm_687/while/Identity:output:0*(
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
/__inference_lstm_cell_687_layer_call_fn_4337997

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
J__inference_lstm_cell_687_layer_call_and_return_conditional_losses_4333141o
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
?
?
while_cond_4334723
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4334723___redundant_placeholder05
1while_while_cond_4334723___redundant_placeholder15
1while_while_cond_4334723___redundant_placeholder25
1while_while_cond_4334723___redundant_placeholder3
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
?#
?
while_body_4333009
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_687_4333033_0:	?0
while_lstm_cell_687_4333035_0:	d?,
while_lstm_cell_687_4333037_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_687_4333033:	?.
while_lstm_cell_687_4333035:	d?*
while_lstm_cell_687_4333037:	???+while/lstm_cell_687/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_687/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_687_4333033_0while_lstm_cell_687_4333035_0while_lstm_cell_687_4333037_0*
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
J__inference_lstm_cell_687_layer_call_and_return_conditional_losses_4332995?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_687/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_687/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_687/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_687/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_687_4333033while_lstm_cell_687_4333033_0"<
while_lstm_cell_687_4333035while_lstm_cell_687_4333035_0"<
while_lstm_cell_687_4333037while_lstm_cell_687_4333037_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_687/StatefulPartitionedCall+while/lstm_cell_687/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_688_layer_call_and_return_conditional_losses_4337042
inputs_0?
,lstm_cell_688_matmul_readvariableop_resource:	d?A
.lstm_cell_688_matmul_1_readvariableop_resource:	2?<
-lstm_cell_688_biasadd_readvariableop_resource:	?
identity??$lstm_cell_688/BiasAdd/ReadVariableOp?#lstm_cell_688/MatMul/ReadVariableOp?%lstm_cell_688/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_688/MatMul/ReadVariableOpReadVariableOp,lstm_cell_688_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_688/MatMulMatMulstrided_slice_2:output:0+lstm_cell_688/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_688/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_688_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_688/MatMul_1MatMulzeros:output:0-lstm_cell_688/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_688/addAddV2lstm_cell_688/MatMul:product:0 lstm_cell_688/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_688/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_688_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_688/BiasAddBiasAddlstm_cell_688/add:z:0,lstm_cell_688/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_688/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_688/splitSplit&lstm_cell_688/split/split_dim:output:0lstm_cell_688/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_688/SigmoidSigmoidlstm_cell_688/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_688/Sigmoid_1Sigmoidlstm_cell_688/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_688/mulMullstm_cell_688/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_688/ReluRelulstm_cell_688/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_688/mul_1Mullstm_cell_688/Sigmoid:y:0 lstm_cell_688/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_688/add_1AddV2lstm_cell_688/mul:z:0lstm_cell_688/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_688/Sigmoid_2Sigmoidlstm_cell_688/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_688/Relu_1Relulstm_cell_688/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_688/mul_2Mullstm_cell_688/Sigmoid_2:y:0"lstm_cell_688/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_688_matmul_readvariableop_resource.lstm_cell_688_matmul_1_readvariableop_resource-lstm_cell_688_biasadd_readvariableop_resource*
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
while_body_4336958*
condR
while_cond_4336957*K
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
NoOpNoOp%^lstm_cell_688/BiasAdd/ReadVariableOp$^lstm_cell_688/MatMul/ReadVariableOp&^lstm_cell_688/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_688/BiasAdd/ReadVariableOp$lstm_cell_688/BiasAdd/ReadVariableOp2J
#lstm_cell_688/MatMul/ReadVariableOp#lstm_cell_688/MatMul/ReadVariableOp2N
%lstm_cell_688/MatMul_1/ReadVariableOp%lstm_cell_688/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?
?
J__inference_lstm_cell_689_layer_call_and_return_conditional_losses_4333841

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
?
?
*__inference_lstm_687_layer_call_fn_4336140

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
E__inference_lstm_687_layer_call_and_return_conditional_losses_4334973s
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
?
?
while_cond_4333358
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4333358___redundant_placeholder05
1while_while_cond_4333358___redundant_placeholder15
1while_while_cond_4333358___redundant_placeholder25
1while_while_cond_4333358___redundant_placeholder3
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
while_body_4334889
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_687_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_687_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_687_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_687_matmul_readvariableop_resource:	?G
4while_lstm_cell_687_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_687_biasadd_readvariableop_resource:	???*while/lstm_cell_687/BiasAdd/ReadVariableOp?)while/lstm_cell_687/MatMul/ReadVariableOp?+while/lstm_cell_687/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_687/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_687_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_687/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_687/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_687/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_687_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_687/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_687/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_687/addAddV2$while/lstm_cell_687/MatMul:product:0&while/lstm_cell_687/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_687/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_687_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_687/BiasAddBiasAddwhile/lstm_cell_687/add:z:02while/lstm_cell_687/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_687/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_687/splitSplit,while/lstm_cell_687/split/split_dim:output:0$while/lstm_cell_687/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_687/SigmoidSigmoid"while/lstm_cell_687/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_687/Sigmoid_1Sigmoid"while/lstm_cell_687/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_687/mulMul!while/lstm_cell_687/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_687/ReluRelu"while/lstm_cell_687/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_687/mul_1Mulwhile/lstm_cell_687/Sigmoid:y:0&while/lstm_cell_687/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_687/add_1AddV2while/lstm_cell_687/mul:z:0while/lstm_cell_687/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_687/Sigmoid_2Sigmoid"while/lstm_cell_687/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_687/Relu_1Reluwhile/lstm_cell_687/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_687/mul_2Mul!while/lstm_cell_687/Sigmoid_2:y:0(while/lstm_cell_687/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_687/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_687/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_687/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_687/BiasAdd/ReadVariableOp*^while/lstm_cell_687/MatMul/ReadVariableOp,^while/lstm_cell_687/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_687_biasadd_readvariableop_resource5while_lstm_cell_687_biasadd_readvariableop_resource_0"n
4while_lstm_cell_687_matmul_1_readvariableop_resource6while_lstm_cell_687_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_687_matmul_readvariableop_resource4while_lstm_cell_687_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_687/BiasAdd/ReadVariableOp*while/lstm_cell_687/BiasAdd/ReadVariableOp2V
)while/lstm_cell_687/MatMul/ReadVariableOp)while/lstm_cell_687/MatMul/ReadVariableOp2Z
+while/lstm_cell_687/MatMul_1/ReadVariableOp+while/lstm_cell_687/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_4336958
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_688_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_688_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_688_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_688_matmul_readvariableop_resource:	d?G
4while_lstm_cell_688_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_688_biasadd_readvariableop_resource:	???*while/lstm_cell_688/BiasAdd/ReadVariableOp?)while/lstm_cell_688/MatMul/ReadVariableOp?+while/lstm_cell_688/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_688/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_688_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_688/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_688/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_688/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_688_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_688/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_688/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_688/addAddV2$while/lstm_cell_688/MatMul:product:0&while/lstm_cell_688/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_688/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_688_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_688/BiasAddBiasAddwhile/lstm_cell_688/add:z:02while/lstm_cell_688/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_688/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_688/splitSplit,while/lstm_cell_688/split/split_dim:output:0$while/lstm_cell_688/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_688/SigmoidSigmoid"while/lstm_cell_688/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_688/Sigmoid_1Sigmoid"while/lstm_cell_688/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_688/mulMul!while/lstm_cell_688/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_688/ReluRelu"while/lstm_cell_688/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_688/mul_1Mulwhile/lstm_cell_688/Sigmoid:y:0&while/lstm_cell_688/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_688/add_1AddV2while/lstm_cell_688/mul:z:0while/lstm_cell_688/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_688/Sigmoid_2Sigmoid"while/lstm_cell_688/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_688/Relu_1Reluwhile/lstm_cell_688/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_688/mul_2Mul!while/lstm_cell_688/Sigmoid_2:y:0(while/lstm_cell_688/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_688/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_688/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_688/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_688/BiasAdd/ReadVariableOp*^while/lstm_cell_688/MatMul/ReadVariableOp,^while/lstm_cell_688/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_688_biasadd_readvariableop_resource5while_lstm_cell_688_biasadd_readvariableop_resource_0"n
4while_lstm_cell_688_matmul_1_readvariableop_resource6while_lstm_cell_688_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_688_matmul_readvariableop_resource4while_lstm_cell_688_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_688/BiasAdd/ReadVariableOp*while/lstm_cell_688/BiasAdd/ReadVariableOp2V
)while/lstm_cell_688/MatMul/ReadVariableOp)while/lstm_cell_688/MatMul/ReadVariableOp2Z
+while/lstm_cell_688/MatMul_1/ReadVariableOp+while/lstm_cell_688/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_4337101
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_688_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_688_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_688_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_688_matmul_readvariableop_resource:	d?G
4while_lstm_cell_688_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_688_biasadd_readvariableop_resource:	???*while/lstm_cell_688/BiasAdd/ReadVariableOp?)while/lstm_cell_688/MatMul/ReadVariableOp?+while/lstm_cell_688/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_688/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_688_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_688/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_688/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_688/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_688_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_688/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_688/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_688/addAddV2$while/lstm_cell_688/MatMul:product:0&while/lstm_cell_688/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_688/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_688_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_688/BiasAddBiasAddwhile/lstm_cell_688/add:z:02while/lstm_cell_688/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_688/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_688/splitSplit,while/lstm_cell_688/split/split_dim:output:0$while/lstm_cell_688/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_688/SigmoidSigmoid"while/lstm_cell_688/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_688/Sigmoid_1Sigmoid"while/lstm_cell_688/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_688/mulMul!while/lstm_cell_688/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_688/ReluRelu"while/lstm_cell_688/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_688/mul_1Mulwhile/lstm_cell_688/Sigmoid:y:0&while/lstm_cell_688/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_688/add_1AddV2while/lstm_cell_688/mul:z:0while/lstm_cell_688/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_688/Sigmoid_2Sigmoid"while/lstm_cell_688/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_688/Relu_1Reluwhile/lstm_cell_688/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_688/mul_2Mul!while/lstm_cell_688/Sigmoid_2:y:0(while/lstm_cell_688/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_688/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_688/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_688/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_688/BiasAdd/ReadVariableOp*^while/lstm_cell_688/MatMul/ReadVariableOp,^while/lstm_cell_688/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_688_biasadd_readvariableop_resource5while_lstm_cell_688_biasadd_readvariableop_resource_0"n
4while_lstm_cell_688_matmul_1_readvariableop_resource6while_lstm_cell_688_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_688_matmul_readvariableop_resource4while_lstm_cell_688_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_688/BiasAdd/ReadVariableOp*while/lstm_cell_688/BiasAdd/ReadVariableOp2V
)while/lstm_cell_688/MatMul/ReadVariableOp)while/lstm_cell_688/MatMul/ReadVariableOp2Z
+while/lstm_cell_688/MatMul_1/ReadVariableOp+while/lstm_cell_688/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_688_layer_call_and_return_conditional_losses_4333491

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
/__inference_lstm_cell_689_layer_call_fn_4338176

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
J__inference_lstm_cell_689_layer_call_and_return_conditional_losses_4333695o
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
?J
?
E__inference_lstm_689_layer_call_and_return_conditional_losses_4337801

inputs>
,lstm_cell_689_matmul_readvariableop_resource:2(@
.lstm_cell_689_matmul_1_readvariableop_resource:
(;
-lstm_cell_689_biasadd_readvariableop_resource:(
identity??$lstm_cell_689/BiasAdd/ReadVariableOp?#lstm_cell_689/MatMul/ReadVariableOp?%lstm_cell_689/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_689/MatMul/ReadVariableOpReadVariableOp,lstm_cell_689_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_689/MatMulMatMulstrided_slice_2:output:0+lstm_cell_689/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_689/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_689_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_689/MatMul_1MatMulzeros:output:0-lstm_cell_689/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_689/addAddV2lstm_cell_689/MatMul:product:0 lstm_cell_689/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_689/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_689_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_689/BiasAddBiasAddlstm_cell_689/add:z:0,lstm_cell_689/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_689/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_689/splitSplit&lstm_cell_689/split/split_dim:output:0lstm_cell_689/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_689/SigmoidSigmoidlstm_cell_689/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_689/Sigmoid_1Sigmoidlstm_cell_689/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_689/mulMullstm_cell_689/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_689/ReluRelulstm_cell_689/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_689/mul_1Mullstm_cell_689/Sigmoid:y:0 lstm_cell_689/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_689/add_1AddV2lstm_cell_689/mul:z:0lstm_cell_689/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_689/Sigmoid_2Sigmoidlstm_cell_689/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_689/Relu_1Relulstm_cell_689/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_689/mul_2Mullstm_cell_689/Sigmoid_2:y:0"lstm_cell_689/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_689_matmul_readvariableop_resource.lstm_cell_689_matmul_1_readvariableop_resource-lstm_cell_689_biasadd_readvariableop_resource*
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
while_body_4337717*
condR
while_cond_4337716*K
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
NoOpNoOp%^lstm_cell_689/BiasAdd/ReadVariableOp$^lstm_cell_689/MatMul/ReadVariableOp&^lstm_cell_689/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_689/BiasAdd/ReadVariableOp$lstm_cell_689/BiasAdd/ReadVariableOp2J
#lstm_cell_689/MatMul/ReadVariableOp#lstm_cell_689/MatMul/ReadVariableOp2N
%lstm_cell_689/MatMul_1/ReadVariableOp%lstm_cell_689/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?8
?
while_body_4334343
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_689_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_689_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_689_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_689_matmul_readvariableop_resource:2(F
4while_lstm_cell_689_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_689_biasadd_readvariableop_resource:(??*while/lstm_cell_689/BiasAdd/ReadVariableOp?)while/lstm_cell_689/MatMul/ReadVariableOp?+while/lstm_cell_689/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_689/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_689_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_689/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_689/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_689/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_689_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_689/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_689/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_689/addAddV2$while/lstm_cell_689/MatMul:product:0&while/lstm_cell_689/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_689/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_689_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_689/BiasAddBiasAddwhile/lstm_cell_689/add:z:02while/lstm_cell_689/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_689/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_689/splitSplit,while/lstm_cell_689/split/split_dim:output:0$while/lstm_cell_689/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_689/SigmoidSigmoid"while/lstm_cell_689/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_689/Sigmoid_1Sigmoid"while/lstm_cell_689/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_689/mulMul!while/lstm_cell_689/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_689/ReluRelu"while/lstm_cell_689/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_689/mul_1Mulwhile/lstm_cell_689/Sigmoid:y:0&while/lstm_cell_689/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_689/add_1AddV2while/lstm_cell_689/mul:z:0while/lstm_cell_689/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_689/Sigmoid_2Sigmoid"while/lstm_cell_689/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_689/Relu_1Reluwhile/lstm_cell_689/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_689/mul_2Mul!while/lstm_cell_689/Sigmoid_2:y:0(while/lstm_cell_689/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_689/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_689/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_689/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_689/BiasAdd/ReadVariableOp*^while/lstm_cell_689/MatMul/ReadVariableOp,^while/lstm_cell_689/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_689_biasadd_readvariableop_resource5while_lstm_cell_689_biasadd_readvariableop_resource_0"n
4while_lstm_cell_689_matmul_1_readvariableop_resource6while_lstm_cell_689_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_689_matmul_readvariableop_resource4while_lstm_cell_689_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_689/BiasAdd/ReadVariableOp*while/lstm_cell_689/BiasAdd/ReadVariableOp2V
)while/lstm_cell_689/MatMul/ReadVariableOp)while/lstm_cell_689/MatMul/ReadVariableOp2Z
+while/lstm_cell_689/MatMul_1/ReadVariableOp+while/lstm_cell_689/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

lstm_687_while_body_4335728.
*lstm_687_while_lstm_687_while_loop_counter4
0lstm_687_while_lstm_687_while_maximum_iterations
lstm_687_while_placeholder 
lstm_687_while_placeholder_1 
lstm_687_while_placeholder_2 
lstm_687_while_placeholder_3-
)lstm_687_while_lstm_687_strided_slice_1_0i
elstm_687_while_tensorarrayv2read_tensorlistgetitem_lstm_687_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_687_while_lstm_cell_687_matmul_readvariableop_resource_0:	?R
?lstm_687_while_lstm_cell_687_matmul_1_readvariableop_resource_0:	d?M
>lstm_687_while_lstm_cell_687_biasadd_readvariableop_resource_0:	?
lstm_687_while_identity
lstm_687_while_identity_1
lstm_687_while_identity_2
lstm_687_while_identity_3
lstm_687_while_identity_4
lstm_687_while_identity_5+
'lstm_687_while_lstm_687_strided_slice_1g
clstm_687_while_tensorarrayv2read_tensorlistgetitem_lstm_687_tensorarrayunstack_tensorlistfromtensorN
;lstm_687_while_lstm_cell_687_matmul_readvariableop_resource:	?P
=lstm_687_while_lstm_cell_687_matmul_1_readvariableop_resource:	d?K
<lstm_687_while_lstm_cell_687_biasadd_readvariableop_resource:	???3lstm_687/while/lstm_cell_687/BiasAdd/ReadVariableOp?2lstm_687/while/lstm_cell_687/MatMul/ReadVariableOp?4lstm_687/while/lstm_cell_687/MatMul_1/ReadVariableOp?
@lstm_687/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_687/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_687_while_tensorarrayv2read_tensorlistgetitem_lstm_687_tensorarrayunstack_tensorlistfromtensor_0lstm_687_while_placeholderIlstm_687/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_687/while/lstm_cell_687/MatMul/ReadVariableOpReadVariableOp=lstm_687_while_lstm_cell_687_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_687/while/lstm_cell_687/MatMulMatMul9lstm_687/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_687/while/lstm_cell_687/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_687/while/lstm_cell_687/MatMul_1/ReadVariableOpReadVariableOp?lstm_687_while_lstm_cell_687_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_687/while/lstm_cell_687/MatMul_1MatMullstm_687_while_placeholder_2<lstm_687/while/lstm_cell_687/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_687/while/lstm_cell_687/addAddV2-lstm_687/while/lstm_cell_687/MatMul:product:0/lstm_687/while/lstm_cell_687/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_687/while/lstm_cell_687/BiasAdd/ReadVariableOpReadVariableOp>lstm_687_while_lstm_cell_687_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_687/while/lstm_cell_687/BiasAddBiasAdd$lstm_687/while/lstm_cell_687/add:z:0;lstm_687/while/lstm_cell_687/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_687/while/lstm_cell_687/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_687/while/lstm_cell_687/splitSplit5lstm_687/while/lstm_cell_687/split/split_dim:output:0-lstm_687/while/lstm_cell_687/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_687/while/lstm_cell_687/SigmoidSigmoid+lstm_687/while/lstm_cell_687/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_687/while/lstm_cell_687/Sigmoid_1Sigmoid+lstm_687/while/lstm_cell_687/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_687/while/lstm_cell_687/mulMul*lstm_687/while/lstm_cell_687/Sigmoid_1:y:0lstm_687_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_687/while/lstm_cell_687/ReluRelu+lstm_687/while/lstm_cell_687/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_687/while/lstm_cell_687/mul_1Mul(lstm_687/while/lstm_cell_687/Sigmoid:y:0/lstm_687/while/lstm_cell_687/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_687/while/lstm_cell_687/add_1AddV2$lstm_687/while/lstm_cell_687/mul:z:0&lstm_687/while/lstm_cell_687/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_687/while/lstm_cell_687/Sigmoid_2Sigmoid+lstm_687/while/lstm_cell_687/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_687/while/lstm_cell_687/Relu_1Relu&lstm_687/while/lstm_cell_687/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_687/while/lstm_cell_687/mul_2Mul*lstm_687/while/lstm_cell_687/Sigmoid_2:y:01lstm_687/while/lstm_cell_687/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_687/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_687_while_placeholder_1lstm_687_while_placeholder&lstm_687/while/lstm_cell_687/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_687/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_687/while/addAddV2lstm_687_while_placeholderlstm_687/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_687/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_687/while/add_1AddV2*lstm_687_while_lstm_687_while_loop_counterlstm_687/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_687/while/IdentityIdentitylstm_687/while/add_1:z:0^lstm_687/while/NoOp*
T0*
_output_shapes
: ?
lstm_687/while/Identity_1Identity0lstm_687_while_lstm_687_while_maximum_iterations^lstm_687/while/NoOp*
T0*
_output_shapes
: t
lstm_687/while/Identity_2Identitylstm_687/while/add:z:0^lstm_687/while/NoOp*
T0*
_output_shapes
: ?
lstm_687/while/Identity_3IdentityClstm_687/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_687/while/NoOp*
T0*
_output_shapes
: ?
lstm_687/while/Identity_4Identity&lstm_687/while/lstm_cell_687/mul_2:z:0^lstm_687/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_687/while/Identity_5Identity&lstm_687/while/lstm_cell_687/add_1:z:0^lstm_687/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_687/while/NoOpNoOp4^lstm_687/while/lstm_cell_687/BiasAdd/ReadVariableOp3^lstm_687/while/lstm_cell_687/MatMul/ReadVariableOp5^lstm_687/while/lstm_cell_687/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_687_while_identity lstm_687/while/Identity:output:0"?
lstm_687_while_identity_1"lstm_687/while/Identity_1:output:0"?
lstm_687_while_identity_2"lstm_687/while/Identity_2:output:0"?
lstm_687_while_identity_3"lstm_687/while/Identity_3:output:0"?
lstm_687_while_identity_4"lstm_687/while/Identity_4:output:0"?
lstm_687_while_identity_5"lstm_687/while/Identity_5:output:0"T
'lstm_687_while_lstm_687_strided_slice_1)lstm_687_while_lstm_687_strided_slice_1_0"~
<lstm_687_while_lstm_cell_687_biasadd_readvariableop_resource>lstm_687_while_lstm_cell_687_biasadd_readvariableop_resource_0"?
=lstm_687_while_lstm_cell_687_matmul_1_readvariableop_resource?lstm_687_while_lstm_cell_687_matmul_1_readvariableop_resource_0"|
;lstm_687_while_lstm_cell_687_matmul_readvariableop_resource=lstm_687_while_lstm_cell_687_matmul_readvariableop_resource_0"?
clstm_687_while_tensorarrayv2read_tensorlistgetitem_lstm_687_tensorarrayunstack_tensorlistfromtensorelstm_687_while_tensorarrayv2read_tensorlistgetitem_lstm_687_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_687/while/lstm_cell_687/BiasAdd/ReadVariableOp3lstm_687/while/lstm_cell_687/BiasAdd/ReadVariableOp2h
2lstm_687/while/lstm_cell_687/MatMul/ReadVariableOp2lstm_687/while/lstm_cell_687/MatMul/ReadVariableOp2l
4lstm_687/while/lstm_cell_687/MatMul_1/ReadVariableOp4lstm_687/while/lstm_cell_687/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_688_layer_call_and_return_conditional_losses_4333428

inputs(
lstm_cell_688_4333346:	d?(
lstm_cell_688_4333348:	2?$
lstm_cell_688_4333350:	?
identity??%lstm_cell_688/StatefulPartitionedCall?while;
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
%lstm_cell_688/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_688_4333346lstm_cell_688_4333348lstm_cell_688_4333350*
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
J__inference_lstm_cell_688_layer_call_and_return_conditional_losses_4333345n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_688_4333346lstm_cell_688_4333348lstm_cell_688_4333350*
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
while_body_4333359*
condR
while_cond_4333358*K
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
NoOpNoOp&^lstm_cell_688/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_688/StatefulPartitionedCall%lstm_cell_688/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?
?
while_cond_4337573
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4337573___redundant_placeholder05
1while_while_cond_4337573___redundant_placeholder15
1while_while_cond_4337573___redundant_placeholder25
1while_while_cond_4337573___redundant_placeholder3
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
while_cond_4337716
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4337716___redundant_placeholder05
1while_while_cond_4337716___redundant_placeholder15
1while_while_cond_4337716___redundant_placeholder25
1while_while_cond_4337716___redundant_placeholder3
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
??
?
#__inference__traced_restore_4338530
file_prefix3
!assignvariableop_dense_229_kernel:
/
!assignvariableop_1_dense_229_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: C
0assignvariableop_7_lstm_687_lstm_cell_687_kernel:	?M
:assignvariableop_8_lstm_687_lstm_cell_687_recurrent_kernel:	d?=
.assignvariableop_9_lstm_687_lstm_cell_687_bias:	?D
1assignvariableop_10_lstm_688_lstm_cell_688_kernel:	d?N
;assignvariableop_11_lstm_688_lstm_cell_688_recurrent_kernel:	2?>
/assignvariableop_12_lstm_688_lstm_cell_688_bias:	?C
1assignvariableop_13_lstm_689_lstm_cell_689_kernel:2(M
;assignvariableop_14_lstm_689_lstm_cell_689_recurrent_kernel:
(=
/assignvariableop_15_lstm_689_lstm_cell_689_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: =
+assignvariableop_18_adam_dense_229_kernel_m:
7
)assignvariableop_19_adam_dense_229_bias_m:K
8assignvariableop_20_adam_lstm_687_lstm_cell_687_kernel_m:	?U
Bassignvariableop_21_adam_lstm_687_lstm_cell_687_recurrent_kernel_m:	d?E
6assignvariableop_22_adam_lstm_687_lstm_cell_687_bias_m:	?K
8assignvariableop_23_adam_lstm_688_lstm_cell_688_kernel_m:	d?U
Bassignvariableop_24_adam_lstm_688_lstm_cell_688_recurrent_kernel_m:	2?E
6assignvariableop_25_adam_lstm_688_lstm_cell_688_bias_m:	?J
8assignvariableop_26_adam_lstm_689_lstm_cell_689_kernel_m:2(T
Bassignvariableop_27_adam_lstm_689_lstm_cell_689_recurrent_kernel_m:
(D
6assignvariableop_28_adam_lstm_689_lstm_cell_689_bias_m:(=
+assignvariableop_29_adam_dense_229_kernel_v:
7
)assignvariableop_30_adam_dense_229_bias_v:K
8assignvariableop_31_adam_lstm_687_lstm_cell_687_kernel_v:	?U
Bassignvariableop_32_adam_lstm_687_lstm_cell_687_recurrent_kernel_v:	d?E
6assignvariableop_33_adam_lstm_687_lstm_cell_687_bias_v:	?K
8assignvariableop_34_adam_lstm_688_lstm_cell_688_kernel_v:	d?U
Bassignvariableop_35_adam_lstm_688_lstm_cell_688_recurrent_kernel_v:	2?E
6assignvariableop_36_adam_lstm_688_lstm_cell_688_bias_v:	?J
8assignvariableop_37_adam_lstm_689_lstm_cell_689_kernel_v:2(T
Bassignvariableop_38_adam_lstm_689_lstm_cell_689_recurrent_kernel_v:
(D
6assignvariableop_39_adam_lstm_689_lstm_cell_689_bias_v:(
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
AssignVariableOpAssignVariableOp!assignvariableop_dense_229_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_229_biasIdentity_1:output:0"/device:CPU:0*
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
AssignVariableOp_7AssignVariableOp0assignvariableop_7_lstm_687_lstm_cell_687_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp:assignvariableop_8_lstm_687_lstm_cell_687_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_687_lstm_cell_687_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp1assignvariableop_10_lstm_688_lstm_cell_688_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp;assignvariableop_11_lstm_688_lstm_cell_688_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp/assignvariableop_12_lstm_688_lstm_cell_688_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp1assignvariableop_13_lstm_689_lstm_cell_689_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp;assignvariableop_14_lstm_689_lstm_cell_689_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp/assignvariableop_15_lstm_689_lstm_cell_689_biasIdentity_15:output:0"/device:CPU:0*
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
AssignVariableOp_18AssignVariableOp+assignvariableop_18_adam_dense_229_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp)assignvariableop_19_adam_dense_229_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp8assignvariableop_20_adam_lstm_687_lstm_cell_687_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOpBassignvariableop_21_adam_lstm_687_lstm_cell_687_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp6assignvariableop_22_adam_lstm_687_lstm_cell_687_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp8assignvariableop_23_adam_lstm_688_lstm_cell_688_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOpBassignvariableop_24_adam_lstm_688_lstm_cell_688_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_688_lstm_cell_688_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp8assignvariableop_26_adam_lstm_689_lstm_cell_689_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOpBassignvariableop_27_adam_lstm_689_lstm_cell_689_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_lstm_689_lstm_cell_689_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp+assignvariableop_29_adam_dense_229_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_dense_229_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp8assignvariableop_31_adam_lstm_687_lstm_cell_687_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOpBassignvariableop_32_adam_lstm_687_lstm_cell_687_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOp6assignvariableop_33_adam_lstm_687_lstm_cell_687_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOp8assignvariableop_34_adam_lstm_688_lstm_cell_688_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOpBassignvariableop_35_adam_lstm_688_lstm_cell_688_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adam_lstm_688_lstm_cell_688_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_37AssignVariableOp8assignvariableop_37_adam_lstm_689_lstm_cell_689_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_38AssignVariableOpBassignvariableop_38_adam_lstm_689_lstm_cell_689_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_lstm_689_lstm_cell_689_bias_vIdentity_39:output:0"/device:CPU:0*
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
?
?
while_cond_4333899
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4333899___redundant_placeholder05
1while_while_cond_4333899___redundant_placeholder15
1while_while_cond_4333899___redundant_placeholder25
1while_while_cond_4333899___redundant_placeholder3
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
lstm_687_input;
 serving_default_lstm_687_input:0?????????=
	dense_2290
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
2dense_229/kernel
:2dense_229/bias
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
0:.	?2lstm_687/lstm_cell_687/kernel
::8	d?2'lstm_687/lstm_cell_687/recurrent_kernel
*:(?2lstm_687/lstm_cell_687/bias
0:.	d?2lstm_688/lstm_cell_688/kernel
::8	2?2'lstm_688/lstm_cell_688/recurrent_kernel
*:(?2lstm_688/lstm_cell_688/bias
/:-2(2lstm_689/lstm_cell_689/kernel
9:7
(2'lstm_689/lstm_cell_689/recurrent_kernel
):'(2lstm_689/lstm_cell_689/bias
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
2Adam/dense_229/kernel/m
!:2Adam/dense_229/bias/m
5:3	?2$Adam/lstm_687/lstm_cell_687/kernel/m
?:=	d?2.Adam/lstm_687/lstm_cell_687/recurrent_kernel/m
/:-?2"Adam/lstm_687/lstm_cell_687/bias/m
5:3	d?2$Adam/lstm_688/lstm_cell_688/kernel/m
?:=	2?2.Adam/lstm_688/lstm_cell_688/recurrent_kernel/m
/:-?2"Adam/lstm_688/lstm_cell_688/bias/m
4:22(2$Adam/lstm_689/lstm_cell_689/kernel/m
>:<
(2.Adam/lstm_689/lstm_cell_689/recurrent_kernel/m
.:,(2"Adam/lstm_689/lstm_cell_689/bias/m
':%
2Adam/dense_229/kernel/v
!:2Adam/dense_229/bias/v
5:3	?2$Adam/lstm_687/lstm_cell_687/kernel/v
?:=	d?2.Adam/lstm_687/lstm_cell_687/recurrent_kernel/v
/:-?2"Adam/lstm_687/lstm_cell_687/bias/v
5:3	d?2$Adam/lstm_688/lstm_cell_688/kernel/v
?:=	2?2.Adam/lstm_688/lstm_cell_688/recurrent_kernel/v
/:-?2"Adam/lstm_688/lstm_cell_688/bias/v
4:22(2$Adam/lstm_689/lstm_cell_689/kernel/v
>:<
(2.Adam/lstm_689/lstm_cell_689/recurrent_kernel/v
.:,(2"Adam/lstm_689/lstm_cell_689/bias/v
?2?
0__inference_sequential_229_layer_call_fn_4334477
0__inference_sequential_229_layer_call_fn_4335215
0__inference_sequential_229_layer_call_fn_4335242
0__inference_sequential_229_layer_call_fn_4335093?
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
K__inference_sequential_229_layer_call_and_return_conditional_losses_4335669
K__inference_sequential_229_layer_call_and_return_conditional_losses_4336096
K__inference_sequential_229_layer_call_and_return_conditional_losses_4335123
K__inference_sequential_229_layer_call_and_return_conditional_losses_4335153?
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
"__inference__wrapped_model_4332928lstm_687_input"?
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
*__inference_lstm_687_layer_call_fn_4336107
*__inference_lstm_687_layer_call_fn_4336118
*__inference_lstm_687_layer_call_fn_4336129
*__inference_lstm_687_layer_call_fn_4336140?
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
E__inference_lstm_687_layer_call_and_return_conditional_losses_4336283
E__inference_lstm_687_layer_call_and_return_conditional_losses_4336426
E__inference_lstm_687_layer_call_and_return_conditional_losses_4336569
E__inference_lstm_687_layer_call_and_return_conditional_losses_4336712?
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
*__inference_lstm_688_layer_call_fn_4336723
*__inference_lstm_688_layer_call_fn_4336734
*__inference_lstm_688_layer_call_fn_4336745
*__inference_lstm_688_layer_call_fn_4336756?
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
E__inference_lstm_688_layer_call_and_return_conditional_losses_4336899
E__inference_lstm_688_layer_call_and_return_conditional_losses_4337042
E__inference_lstm_688_layer_call_and_return_conditional_losses_4337185
E__inference_lstm_688_layer_call_and_return_conditional_losses_4337328?
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
*__inference_lstm_689_layer_call_fn_4337339
*__inference_lstm_689_layer_call_fn_4337350
*__inference_lstm_689_layer_call_fn_4337361
*__inference_lstm_689_layer_call_fn_4337372?
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
E__inference_lstm_689_layer_call_and_return_conditional_losses_4337515
E__inference_lstm_689_layer_call_and_return_conditional_losses_4337658
E__inference_lstm_689_layer_call_and_return_conditional_losses_4337801
E__inference_lstm_689_layer_call_and_return_conditional_losses_4337944?
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
+__inference_dense_229_layer_call_fn_4337953?
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
F__inference_dense_229_layer_call_and_return_conditional_losses_4337963?
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
%__inference_signature_wrapper_4335188lstm_687_input"?
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
/__inference_lstm_cell_687_layer_call_fn_4337980
/__inference_lstm_cell_687_layer_call_fn_4337997?
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
J__inference_lstm_cell_687_layer_call_and_return_conditional_losses_4338029
J__inference_lstm_cell_687_layer_call_and_return_conditional_losses_4338061?
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
/__inference_lstm_cell_688_layer_call_fn_4338078
/__inference_lstm_cell_688_layer_call_fn_4338095?
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
J__inference_lstm_cell_688_layer_call_and_return_conditional_losses_4338127
J__inference_lstm_cell_688_layer_call_and_return_conditional_losses_4338159?
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
/__inference_lstm_cell_689_layer_call_fn_4338176
/__inference_lstm_cell_689_layer_call_fn_4338193?
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
J__inference_lstm_cell_689_layer_call_and_return_conditional_losses_4338225
J__inference_lstm_cell_689_layer_call_and_return_conditional_losses_4338257?
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
"__inference__wrapped_model_4332928?()*+,-./0;?8
1?.
,?)
lstm_687_input?????????
? "5?2
0
	dense_229#? 
	dense_229??????????
F__inference_dense_229_layer_call_and_return_conditional_losses_4337963\/?,
%?"
 ?
inputs?????????

? "%?"
?
0?????????
? ~
+__inference_dense_229_layer_call_fn_4337953O/?,
%?"
 ?
inputs?????????

? "???????????
E__inference_lstm_687_layer_call_and_return_conditional_losses_4336283?()*O?L
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
E__inference_lstm_687_layer_call_and_return_conditional_losses_4336426?()*O?L
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
E__inference_lstm_687_layer_call_and_return_conditional_losses_4336569q()*??<
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
E__inference_lstm_687_layer_call_and_return_conditional_losses_4336712q()*??<
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
*__inference_lstm_687_layer_call_fn_4336107}()*O?L
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
*__inference_lstm_687_layer_call_fn_4336118}()*O?L
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
*__inference_lstm_687_layer_call_fn_4336129d()*??<
5?2
$?!
inputs?????????

 
p 

 
? "??????????d?
*__inference_lstm_687_layer_call_fn_4336140d()*??<
5?2
$?!
inputs?????????

 
p

 
? "??????????d?
E__inference_lstm_688_layer_call_and_return_conditional_losses_4336899?+,-O?L
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
E__inference_lstm_688_layer_call_and_return_conditional_losses_4337042?+,-O?L
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
E__inference_lstm_688_layer_call_and_return_conditional_losses_4337185q+,-??<
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
E__inference_lstm_688_layer_call_and_return_conditional_losses_4337328q+,-??<
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
*__inference_lstm_688_layer_call_fn_4336723}+,-O?L
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
*__inference_lstm_688_layer_call_fn_4336734}+,-O?L
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
*__inference_lstm_688_layer_call_fn_4336745d+,-??<
5?2
$?!
inputs?????????d

 
p 

 
? "??????????2?
*__inference_lstm_688_layer_call_fn_4336756d+,-??<
5?2
$?!
inputs?????????d

 
p

 
? "??????????2?
E__inference_lstm_689_layer_call_and_return_conditional_losses_4337515}./0O?L
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
E__inference_lstm_689_layer_call_and_return_conditional_losses_4337658}./0O?L
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
E__inference_lstm_689_layer_call_and_return_conditional_losses_4337801m./0??<
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
E__inference_lstm_689_layer_call_and_return_conditional_losses_4337944m./0??<
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
*__inference_lstm_689_layer_call_fn_4337339p./0O?L
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
*__inference_lstm_689_layer_call_fn_4337350p./0O?L
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
*__inference_lstm_689_layer_call_fn_4337361`./0??<
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
*__inference_lstm_689_layer_call_fn_4337372`./0??<
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
J__inference_lstm_cell_687_layer_call_and_return_conditional_losses_4338029?()*??}
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
J__inference_lstm_cell_687_layer_call_and_return_conditional_losses_4338061?()*??}
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
/__inference_lstm_cell_687_layer_call_fn_4337980?()*??}
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
/__inference_lstm_cell_687_layer_call_fn_4337997?()*??}
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
J__inference_lstm_cell_688_layer_call_and_return_conditional_losses_4338127?+,-??}
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
J__inference_lstm_cell_688_layer_call_and_return_conditional_losses_4338159?+,-??}
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
/__inference_lstm_cell_688_layer_call_fn_4338078?+,-??}
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
/__inference_lstm_cell_688_layer_call_fn_4338095?+,-??}
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
J__inference_lstm_cell_689_layer_call_and_return_conditional_losses_4338225?./0??}
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
J__inference_lstm_cell_689_layer_call_and_return_conditional_losses_4338257?./0??}
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
/__inference_lstm_cell_689_layer_call_fn_4338176?./0??}
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
/__inference_lstm_cell_689_layer_call_fn_4338193?./0??}
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
K__inference_sequential_229_layer_call_and_return_conditional_losses_4335123y()*+,-./0C?@
9?6
,?)
lstm_687_input?????????
p 

 
? "%?"
?
0?????????
? ?
K__inference_sequential_229_layer_call_and_return_conditional_losses_4335153y()*+,-./0C?@
9?6
,?)
lstm_687_input?????????
p

 
? "%?"
?
0?????????
? ?
K__inference_sequential_229_layer_call_and_return_conditional_losses_4335669q()*+,-./0;?8
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
K__inference_sequential_229_layer_call_and_return_conditional_losses_4336096q()*+,-./0;?8
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
0__inference_sequential_229_layer_call_fn_4334477l()*+,-./0C?@
9?6
,?)
lstm_687_input?????????
p 

 
? "???????????
0__inference_sequential_229_layer_call_fn_4335093l()*+,-./0C?@
9?6
,?)
lstm_687_input?????????
p

 
? "???????????
0__inference_sequential_229_layer_call_fn_4335215d()*+,-./0;?8
1?.
$?!
inputs?????????
p 

 
? "???????????
0__inference_sequential_229_layer_call_fn_4335242d()*+,-./0;?8
1?.
$?!
inputs?????????
p

 
? "???????????
%__inference_signature_wrapper_4335188?()*+,-./0M?J
? 
C?@
>
lstm_687_input,?)
lstm_687_input?????????"5?2
0
	dense_229#? 
	dense_229?????????