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
dense_258/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*!
shared_namedense_258/kernel
u
$dense_258/kernel/Read/ReadVariableOpReadVariableOpdense_258/kernel*
_output_shapes

:
*
dtype0
t
dense_258/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_258/bias
m
"dense_258/bias/Read/ReadVariableOpReadVariableOpdense_258/bias*
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
lstm_774/lstm_cell_774/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*.
shared_namelstm_774/lstm_cell_774/kernel
?
1lstm_774/lstm_cell_774/kernel/Read/ReadVariableOpReadVariableOplstm_774/lstm_cell_774/kernel*
_output_shapes
:	?*
dtype0
?
'lstm_774/lstm_cell_774/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*8
shared_name)'lstm_774/lstm_cell_774/recurrent_kernel
?
;lstm_774/lstm_cell_774/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_774/lstm_cell_774/recurrent_kernel*
_output_shapes
:	d?*
dtype0
?
lstm_774/lstm_cell_774/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_774/lstm_cell_774/bias
?
/lstm_774/lstm_cell_774/bias/Read/ReadVariableOpReadVariableOplstm_774/lstm_cell_774/bias*
_output_shapes	
:?*
dtype0
?
lstm_775/lstm_cell_775/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*.
shared_namelstm_775/lstm_cell_775/kernel
?
1lstm_775/lstm_cell_775/kernel/Read/ReadVariableOpReadVariableOplstm_775/lstm_cell_775/kernel*
_output_shapes
:	d?*
dtype0
?
'lstm_775/lstm_cell_775/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*8
shared_name)'lstm_775/lstm_cell_775/recurrent_kernel
?
;lstm_775/lstm_cell_775/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_775/lstm_cell_775/recurrent_kernel*
_output_shapes
:	2?*
dtype0
?
lstm_775/lstm_cell_775/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_775/lstm_cell_775/bias
?
/lstm_775/lstm_cell_775/bias/Read/ReadVariableOpReadVariableOplstm_775/lstm_cell_775/bias*
_output_shapes	
:?*
dtype0
?
lstm_776/lstm_cell_776/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*.
shared_namelstm_776/lstm_cell_776/kernel
?
1lstm_776/lstm_cell_776/kernel/Read/ReadVariableOpReadVariableOplstm_776/lstm_cell_776/kernel*
_output_shapes

:2(*
dtype0
?
'lstm_776/lstm_cell_776/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*8
shared_name)'lstm_776/lstm_cell_776/recurrent_kernel
?
;lstm_776/lstm_cell_776/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_776/lstm_cell_776/recurrent_kernel*
_output_shapes

:
(*
dtype0
?
lstm_776/lstm_cell_776/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*,
shared_namelstm_776/lstm_cell_776/bias
?
/lstm_776/lstm_cell_776/bias/Read/ReadVariableOpReadVariableOplstm_776/lstm_cell_776/bias*
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
Adam/dense_258/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_258/kernel/m
?
+Adam/dense_258/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_258/kernel/m*
_output_shapes

:
*
dtype0
?
Adam/dense_258/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_258/bias/m
{
)Adam/dense_258/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_258/bias/m*
_output_shapes
:*
dtype0
?
$Adam/lstm_774/lstm_cell_774/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_774/lstm_cell_774/kernel/m
?
8Adam/lstm_774/lstm_cell_774/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_774/lstm_cell_774/kernel/m*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_774/lstm_cell_774/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_774/lstm_cell_774/recurrent_kernel/m
?
BAdam/lstm_774/lstm_cell_774/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_774/lstm_cell_774/recurrent_kernel/m*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_774/lstm_cell_774/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_774/lstm_cell_774/bias/m
?
6Adam/lstm_774/lstm_cell_774/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_774/lstm_cell_774/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_775/lstm_cell_775/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_775/lstm_cell_775/kernel/m
?
8Adam/lstm_775/lstm_cell_775/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_775/lstm_cell_775/kernel/m*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_775/lstm_cell_775/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_775/lstm_cell_775/recurrent_kernel/m
?
BAdam/lstm_775/lstm_cell_775/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_775/lstm_cell_775/recurrent_kernel/m*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_775/lstm_cell_775/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_775/lstm_cell_775/bias/m
?
6Adam/lstm_775/lstm_cell_775/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_775/lstm_cell_775/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_776/lstm_cell_776/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_776/lstm_cell_776/kernel/m
?
8Adam/lstm_776/lstm_cell_776/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_776/lstm_cell_776/kernel/m*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_776/lstm_cell_776/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_776/lstm_cell_776/recurrent_kernel/m
?
BAdam/lstm_776/lstm_cell_776/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_776/lstm_cell_776/recurrent_kernel/m*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_776/lstm_cell_776/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_776/lstm_cell_776/bias/m
?
6Adam/lstm_776/lstm_cell_776/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_776/lstm_cell_776/bias/m*
_output_shapes
:(*
dtype0
?
Adam/dense_258/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_258/kernel/v
?
+Adam/dense_258/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_258/kernel/v*
_output_shapes

:
*
dtype0
?
Adam/dense_258/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_258/bias/v
{
)Adam/dense_258/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_258/bias/v*
_output_shapes
:*
dtype0
?
$Adam/lstm_774/lstm_cell_774/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_774/lstm_cell_774/kernel/v
?
8Adam/lstm_774/lstm_cell_774/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_774/lstm_cell_774/kernel/v*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_774/lstm_cell_774/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_774/lstm_cell_774/recurrent_kernel/v
?
BAdam/lstm_774/lstm_cell_774/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_774/lstm_cell_774/recurrent_kernel/v*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_774/lstm_cell_774/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_774/lstm_cell_774/bias/v
?
6Adam/lstm_774/lstm_cell_774/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_774/lstm_cell_774/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_775/lstm_cell_775/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_775/lstm_cell_775/kernel/v
?
8Adam/lstm_775/lstm_cell_775/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_775/lstm_cell_775/kernel/v*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_775/lstm_cell_775/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_775/lstm_cell_775/recurrent_kernel/v
?
BAdam/lstm_775/lstm_cell_775/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_775/lstm_cell_775/recurrent_kernel/v*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_775/lstm_cell_775/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_775/lstm_cell_775/bias/v
?
6Adam/lstm_775/lstm_cell_775/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_775/lstm_cell_775/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_776/lstm_cell_776/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_776/lstm_cell_776/kernel/v
?
8Adam/lstm_776/lstm_cell_776/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_776/lstm_cell_776/kernel/v*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_776/lstm_cell_776/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_776/lstm_cell_776/recurrent_kernel/v
?
BAdam/lstm_776/lstm_cell_776/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_776/lstm_cell_776/recurrent_kernel/v*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_776/lstm_cell_776/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_776/lstm_cell_776/bias/v
?
6Adam/lstm_776/lstm_cell_776/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_776/lstm_cell_776/bias/v*
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
VARIABLE_VALUEdense_258/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_258/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUElstm_774/lstm_cell_774/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_774/lstm_cell_774/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_774/lstm_cell_774/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_775/lstm_cell_775/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_775/lstm_cell_775/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_775/lstm_cell_775/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_776/lstm_cell_776/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_776/lstm_cell_776/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_776/lstm_cell_776/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEAdam/dense_258/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_258/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_774/lstm_cell_774/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_774/lstm_cell_774/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_774/lstm_cell_774/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_775/lstm_cell_775/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_775/lstm_cell_775/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_775/lstm_cell_775/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_776/lstm_cell_776/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_776/lstm_cell_776/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_776/lstm_cell_776/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_258/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_258/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_774/lstm_cell_774/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_774/lstm_cell_774/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_774/lstm_cell_774/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_775/lstm_cell_775/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_775/lstm_cell_775/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_775/lstm_cell_775/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_776/lstm_cell_776/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_776/lstm_cell_776/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_776/lstm_cell_776/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_lstm_774_inputPlaceholder*+
_output_shapes
:?????????*
dtype0* 
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_774_inputlstm_774/lstm_cell_774/kernel'lstm_774/lstm_cell_774/recurrent_kernellstm_774/lstm_cell_774/biaslstm_775/lstm_cell_775/kernel'lstm_775/lstm_cell_775/recurrent_kernellstm_775/lstm_cell_775/biaslstm_776/lstm_cell_776/kernel'lstm_776/lstm_cell_776/recurrent_kernellstm_776/lstm_cell_776/biasdense_258/kerneldense_258/bias*
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
%__inference_signature_wrapper_4738531
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$dense_258/kernel/Read/ReadVariableOp"dense_258/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_774/lstm_cell_774/kernel/Read/ReadVariableOp;lstm_774/lstm_cell_774/recurrent_kernel/Read/ReadVariableOp/lstm_774/lstm_cell_774/bias/Read/ReadVariableOp1lstm_775/lstm_cell_775/kernel/Read/ReadVariableOp;lstm_775/lstm_cell_775/recurrent_kernel/Read/ReadVariableOp/lstm_775/lstm_cell_775/bias/Read/ReadVariableOp1lstm_776/lstm_cell_776/kernel/Read/ReadVariableOp;lstm_776/lstm_cell_776/recurrent_kernel/Read/ReadVariableOp/lstm_776/lstm_cell_776/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp+Adam/dense_258/kernel/m/Read/ReadVariableOp)Adam/dense_258/bias/m/Read/ReadVariableOp8Adam/lstm_774/lstm_cell_774/kernel/m/Read/ReadVariableOpBAdam/lstm_774/lstm_cell_774/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_774/lstm_cell_774/bias/m/Read/ReadVariableOp8Adam/lstm_775/lstm_cell_775/kernel/m/Read/ReadVariableOpBAdam/lstm_775/lstm_cell_775/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_775/lstm_cell_775/bias/m/Read/ReadVariableOp8Adam/lstm_776/lstm_cell_776/kernel/m/Read/ReadVariableOpBAdam/lstm_776/lstm_cell_776/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_776/lstm_cell_776/bias/m/Read/ReadVariableOp+Adam/dense_258/kernel/v/Read/ReadVariableOp)Adam/dense_258/bias/v/Read/ReadVariableOp8Adam/lstm_774/lstm_cell_774/kernel/v/Read/ReadVariableOpBAdam/lstm_774/lstm_cell_774/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_774/lstm_cell_774/bias/v/Read/ReadVariableOp8Adam/lstm_775/lstm_cell_775/kernel/v/Read/ReadVariableOpBAdam/lstm_775/lstm_cell_775/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_775/lstm_cell_775/bias/v/Read/ReadVariableOp8Adam/lstm_776/lstm_cell_776/kernel/v/Read/ReadVariableOpBAdam/lstm_776/lstm_cell_776/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_776/lstm_cell_776/bias/v/Read/ReadVariableOpConst*5
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
 __inference__traced_save_4741743
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_258/kerneldense_258/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_774/lstm_cell_774/kernel'lstm_774/lstm_cell_774/recurrent_kernellstm_774/lstm_cell_774/biaslstm_775/lstm_cell_775/kernel'lstm_775/lstm_cell_775/recurrent_kernellstm_775/lstm_cell_775/biaslstm_776/lstm_cell_776/kernel'lstm_776/lstm_cell_776/recurrent_kernellstm_776/lstm_cell_776/biastotalcountAdam/dense_258/kernel/mAdam/dense_258/bias/m$Adam/lstm_774/lstm_cell_774/kernel/m.Adam/lstm_774/lstm_cell_774/recurrent_kernel/m"Adam/lstm_774/lstm_cell_774/bias/m$Adam/lstm_775/lstm_cell_775/kernel/m.Adam/lstm_775/lstm_cell_775/recurrent_kernel/m"Adam/lstm_775/lstm_cell_775/bias/m$Adam/lstm_776/lstm_cell_776/kernel/m.Adam/lstm_776/lstm_cell_776/recurrent_kernel/m"Adam/lstm_776/lstm_cell_776/bias/mAdam/dense_258/kernel/vAdam/dense_258/bias/v$Adam/lstm_774/lstm_cell_774/kernel/v.Adam/lstm_774/lstm_cell_774/recurrent_kernel/v"Adam/lstm_774/lstm_cell_774/bias/v$Adam/lstm_775/lstm_cell_775/kernel/v.Adam/lstm_775/lstm_cell_775/recurrent_kernel/v"Adam/lstm_775/lstm_cell_775/bias/v$Adam/lstm_776/lstm_cell_776/kernel/v.Adam/lstm_776/lstm_cell_776/recurrent_kernel/v"Adam/lstm_776/lstm_cell_776/bias/v*4
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
#__inference__traced_restore_4741873??+
?

?
0__inference_sequential_258_layer_call_fn_4738558

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
K__inference_sequential_258_layer_call_and_return_conditional_losses_4737795o
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
?8
?
while_body_4740444
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_775_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_775_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_775_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_775_matmul_readvariableop_resource:	d?G
4while_lstm_cell_775_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_775_biasadd_readvariableop_resource:	???*while/lstm_cell_775/BiasAdd/ReadVariableOp?)while/lstm_cell_775/MatMul/ReadVariableOp?+while/lstm_cell_775/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_775/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_775_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_775/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_775/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_775/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_775_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_775/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_775/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_775/addAddV2$while/lstm_cell_775/MatMul:product:0&while/lstm_cell_775/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_775/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_775_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_775/BiasAddBiasAddwhile/lstm_cell_775/add:z:02while/lstm_cell_775/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_775/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_775/splitSplit,while/lstm_cell_775/split/split_dim:output:0$while/lstm_cell_775/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_775/SigmoidSigmoid"while/lstm_cell_775/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_775/Sigmoid_1Sigmoid"while/lstm_cell_775/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_775/mulMul!while/lstm_cell_775/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_775/ReluRelu"while/lstm_cell_775/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_775/mul_1Mulwhile/lstm_cell_775/Sigmoid:y:0&while/lstm_cell_775/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_775/add_1AddV2while/lstm_cell_775/mul:z:0while/lstm_cell_775/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_775/Sigmoid_2Sigmoid"while/lstm_cell_775/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_775/Relu_1Reluwhile/lstm_cell_775/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_775/mul_2Mul!while/lstm_cell_775/Sigmoid_2:y:0(while/lstm_cell_775/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_775/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_775/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_775/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_775/BiasAdd/ReadVariableOp*^while/lstm_cell_775/MatMul/ReadVariableOp,^while/lstm_cell_775/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_775_biasadd_readvariableop_resource5while_lstm_cell_775_biasadd_readvariableop_resource_0"n
4while_lstm_cell_775_matmul_1_readvariableop_resource6while_lstm_cell_775_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_775_matmul_readvariableop_resource4while_lstm_cell_775_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_775/BiasAdd/ReadVariableOp*while/lstm_cell_775/BiasAdd/ReadVariableOp2V
)while/lstm_cell_775/MatMul/ReadVariableOp)while/lstm_cell_775/MatMul/ReadVariableOp2Z
+while/lstm_cell_775/MatMul_1/ReadVariableOp+while/lstm_cell_775/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
?T
?
*sequential_258_lstm_774_while_body_4735903L
Hsequential_258_lstm_774_while_sequential_258_lstm_774_while_loop_counterR
Nsequential_258_lstm_774_while_sequential_258_lstm_774_while_maximum_iterations-
)sequential_258_lstm_774_while_placeholder/
+sequential_258_lstm_774_while_placeholder_1/
+sequential_258_lstm_774_while_placeholder_2/
+sequential_258_lstm_774_while_placeholder_3K
Gsequential_258_lstm_774_while_sequential_258_lstm_774_strided_slice_1_0?
?sequential_258_lstm_774_while_tensorarrayv2read_tensorlistgetitem_sequential_258_lstm_774_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_258_lstm_774_while_lstm_cell_774_matmul_readvariableop_resource_0:	?a
Nsequential_258_lstm_774_while_lstm_cell_774_matmul_1_readvariableop_resource_0:	d?\
Msequential_258_lstm_774_while_lstm_cell_774_biasadd_readvariableop_resource_0:	?*
&sequential_258_lstm_774_while_identity,
(sequential_258_lstm_774_while_identity_1,
(sequential_258_lstm_774_while_identity_2,
(sequential_258_lstm_774_while_identity_3,
(sequential_258_lstm_774_while_identity_4,
(sequential_258_lstm_774_while_identity_5I
Esequential_258_lstm_774_while_sequential_258_lstm_774_strided_slice_1?
?sequential_258_lstm_774_while_tensorarrayv2read_tensorlistgetitem_sequential_258_lstm_774_tensorarrayunstack_tensorlistfromtensor]
Jsequential_258_lstm_774_while_lstm_cell_774_matmul_readvariableop_resource:	?_
Lsequential_258_lstm_774_while_lstm_cell_774_matmul_1_readvariableop_resource:	d?Z
Ksequential_258_lstm_774_while_lstm_cell_774_biasadd_readvariableop_resource:	???Bsequential_258/lstm_774/while/lstm_cell_774/BiasAdd/ReadVariableOp?Asequential_258/lstm_774/while/lstm_cell_774/MatMul/ReadVariableOp?Csequential_258/lstm_774/while/lstm_cell_774/MatMul_1/ReadVariableOp?
Osequential_258/lstm_774/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
Asequential_258/lstm_774/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_258_lstm_774_while_tensorarrayv2read_tensorlistgetitem_sequential_258_lstm_774_tensorarrayunstack_tensorlistfromtensor_0)sequential_258_lstm_774_while_placeholderXsequential_258/lstm_774/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
Asequential_258/lstm_774/while/lstm_cell_774/MatMul/ReadVariableOpReadVariableOpLsequential_258_lstm_774_while_lstm_cell_774_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
2sequential_258/lstm_774/while/lstm_cell_774/MatMulMatMulHsequential_258/lstm_774/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_258/lstm_774/while/lstm_cell_774/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_258/lstm_774/while/lstm_cell_774/MatMul_1/ReadVariableOpReadVariableOpNsequential_258_lstm_774_while_lstm_cell_774_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
4sequential_258/lstm_774/while/lstm_cell_774/MatMul_1MatMul+sequential_258_lstm_774_while_placeholder_2Ksequential_258/lstm_774/while/lstm_cell_774/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_258/lstm_774/while/lstm_cell_774/addAddV2<sequential_258/lstm_774/while/lstm_cell_774/MatMul:product:0>sequential_258/lstm_774/while/lstm_cell_774/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_258/lstm_774/while/lstm_cell_774/BiasAdd/ReadVariableOpReadVariableOpMsequential_258_lstm_774_while_lstm_cell_774_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_258/lstm_774/while/lstm_cell_774/BiasAddBiasAdd3sequential_258/lstm_774/while/lstm_cell_774/add:z:0Jsequential_258/lstm_774/while/lstm_cell_774/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_258/lstm_774/while/lstm_cell_774/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_258/lstm_774/while/lstm_cell_774/splitSplitDsequential_258/lstm_774/while/lstm_cell_774/split/split_dim:output:0<sequential_258/lstm_774/while/lstm_cell_774/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
3sequential_258/lstm_774/while/lstm_cell_774/SigmoidSigmoid:sequential_258/lstm_774/while/lstm_cell_774/split:output:0*
T0*'
_output_shapes
:?????????d?
5sequential_258/lstm_774/while/lstm_cell_774/Sigmoid_1Sigmoid:sequential_258/lstm_774/while/lstm_cell_774/split:output:1*
T0*'
_output_shapes
:?????????d?
/sequential_258/lstm_774/while/lstm_cell_774/mulMul9sequential_258/lstm_774/while/lstm_cell_774/Sigmoid_1:y:0+sequential_258_lstm_774_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
0sequential_258/lstm_774/while/lstm_cell_774/ReluRelu:sequential_258/lstm_774/while/lstm_cell_774/split:output:2*
T0*'
_output_shapes
:?????????d?
1sequential_258/lstm_774/while/lstm_cell_774/mul_1Mul7sequential_258/lstm_774/while/lstm_cell_774/Sigmoid:y:0>sequential_258/lstm_774/while/lstm_cell_774/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
1sequential_258/lstm_774/while/lstm_cell_774/add_1AddV23sequential_258/lstm_774/while/lstm_cell_774/mul:z:05sequential_258/lstm_774/while/lstm_cell_774/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
5sequential_258/lstm_774/while/lstm_cell_774/Sigmoid_2Sigmoid:sequential_258/lstm_774/while/lstm_cell_774/split:output:3*
T0*'
_output_shapes
:?????????d?
2sequential_258/lstm_774/while/lstm_cell_774/Relu_1Relu5sequential_258/lstm_774/while/lstm_cell_774/add_1:z:0*
T0*'
_output_shapes
:?????????d?
1sequential_258/lstm_774/while/lstm_cell_774/mul_2Mul9sequential_258/lstm_774/while/lstm_cell_774/Sigmoid_2:y:0@sequential_258/lstm_774/while/lstm_cell_774/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
Bsequential_258/lstm_774/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_258_lstm_774_while_placeholder_1)sequential_258_lstm_774_while_placeholder5sequential_258/lstm_774/while/lstm_cell_774/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_258/lstm_774/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_258/lstm_774/while/addAddV2)sequential_258_lstm_774_while_placeholder,sequential_258/lstm_774/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_258/lstm_774/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_258/lstm_774/while/add_1AddV2Hsequential_258_lstm_774_while_sequential_258_lstm_774_while_loop_counter.sequential_258/lstm_774/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_258/lstm_774/while/IdentityIdentity'sequential_258/lstm_774/while/add_1:z:0#^sequential_258/lstm_774/while/NoOp*
T0*
_output_shapes
: ?
(sequential_258/lstm_774/while/Identity_1IdentityNsequential_258_lstm_774_while_sequential_258_lstm_774_while_maximum_iterations#^sequential_258/lstm_774/while/NoOp*
T0*
_output_shapes
: ?
(sequential_258/lstm_774/while/Identity_2Identity%sequential_258/lstm_774/while/add:z:0#^sequential_258/lstm_774/while/NoOp*
T0*
_output_shapes
: ?
(sequential_258/lstm_774/while/Identity_3IdentityRsequential_258/lstm_774/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_258/lstm_774/while/NoOp*
T0*
_output_shapes
: ?
(sequential_258/lstm_774/while/Identity_4Identity5sequential_258/lstm_774/while/lstm_cell_774/mul_2:z:0#^sequential_258/lstm_774/while/NoOp*
T0*'
_output_shapes
:?????????d?
(sequential_258/lstm_774/while/Identity_5Identity5sequential_258/lstm_774/while/lstm_cell_774/add_1:z:0#^sequential_258/lstm_774/while/NoOp*
T0*'
_output_shapes
:?????????d?
"sequential_258/lstm_774/while/NoOpNoOpC^sequential_258/lstm_774/while/lstm_cell_774/BiasAdd/ReadVariableOpB^sequential_258/lstm_774/while/lstm_cell_774/MatMul/ReadVariableOpD^sequential_258/lstm_774/while/lstm_cell_774/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_258_lstm_774_while_identity/sequential_258/lstm_774/while/Identity:output:0"]
(sequential_258_lstm_774_while_identity_11sequential_258/lstm_774/while/Identity_1:output:0"]
(sequential_258_lstm_774_while_identity_21sequential_258/lstm_774/while/Identity_2:output:0"]
(sequential_258_lstm_774_while_identity_31sequential_258/lstm_774/while/Identity_3:output:0"]
(sequential_258_lstm_774_while_identity_41sequential_258/lstm_774/while/Identity_4:output:0"]
(sequential_258_lstm_774_while_identity_51sequential_258/lstm_774/while/Identity_5:output:0"?
Ksequential_258_lstm_774_while_lstm_cell_774_biasadd_readvariableop_resourceMsequential_258_lstm_774_while_lstm_cell_774_biasadd_readvariableop_resource_0"?
Lsequential_258_lstm_774_while_lstm_cell_774_matmul_1_readvariableop_resourceNsequential_258_lstm_774_while_lstm_cell_774_matmul_1_readvariableop_resource_0"?
Jsequential_258_lstm_774_while_lstm_cell_774_matmul_readvariableop_resourceLsequential_258_lstm_774_while_lstm_cell_774_matmul_readvariableop_resource_0"?
Esequential_258_lstm_774_while_sequential_258_lstm_774_strided_slice_1Gsequential_258_lstm_774_while_sequential_258_lstm_774_strided_slice_1_0"?
?sequential_258_lstm_774_while_tensorarrayv2read_tensorlistgetitem_sequential_258_lstm_774_tensorarrayunstack_tensorlistfromtensor?sequential_258_lstm_774_while_tensorarrayv2read_tensorlistgetitem_sequential_258_lstm_774_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2?
Bsequential_258/lstm_774/while/lstm_cell_774/BiasAdd/ReadVariableOpBsequential_258/lstm_774/while/lstm_cell_774/BiasAdd/ReadVariableOp2?
Asequential_258/lstm_774/while/lstm_cell_774/MatMul/ReadVariableOpAsequential_258/lstm_774/while/lstm_cell_774/MatMul/ReadVariableOp2?
Csequential_258/lstm_774/while/lstm_cell_774/MatMul_1/ReadVariableOpCsequential_258/lstm_774/while/lstm_cell_774/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_4737051
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4737051___redundant_placeholder05
1while_while_cond_4737051___redundant_placeholder15
1while_while_cond_4737051___redundant_placeholder25
1while_while_cond_4737051___redundant_placeholder3
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
while_body_4736702
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_775_4736726_0:	d?0
while_lstm_cell_775_4736728_0:	2?,
while_lstm_cell_775_4736730_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_775_4736726:	d?.
while_lstm_cell_775_4736728:	2?*
while_lstm_cell_775_4736730:	???+while/lstm_cell_775/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_775/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_775_4736726_0while_lstm_cell_775_4736728_0while_lstm_cell_775_4736730_0*
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
J__inference_lstm_cell_775_layer_call_and_return_conditional_losses_4736688?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_775/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_775/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_775/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_775/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_775_4736726while_lstm_cell_775_4736726_0"<
while_lstm_cell_775_4736728while_lstm_cell_775_4736728_0"<
while_lstm_cell_775_4736730while_lstm_cell_775_4736730_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_775/StatefulPartitionedCall+while/lstm_cell_775/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_body_4738232
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_774_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_774_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_774_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_774_matmul_readvariableop_resource:	?G
4while_lstm_cell_774_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_774_biasadd_readvariableop_resource:	???*while/lstm_cell_774/BiasAdd/ReadVariableOp?)while/lstm_cell_774/MatMul/ReadVariableOp?+while/lstm_cell_774/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_774/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_774_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_774/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_774/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_774/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_774_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_774/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_774/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_774/addAddV2$while/lstm_cell_774/MatMul:product:0&while/lstm_cell_774/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_774/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_774_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_774/BiasAddBiasAddwhile/lstm_cell_774/add:z:02while/lstm_cell_774/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_774/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_774/splitSplit,while/lstm_cell_774/split/split_dim:output:0$while/lstm_cell_774/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_774/SigmoidSigmoid"while/lstm_cell_774/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_774/Sigmoid_1Sigmoid"while/lstm_cell_774/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_774/mulMul!while/lstm_cell_774/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_774/ReluRelu"while/lstm_cell_774/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_774/mul_1Mulwhile/lstm_cell_774/Sigmoid:y:0&while/lstm_cell_774/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_774/add_1AddV2while/lstm_cell_774/mul:z:0while/lstm_cell_774/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_774/Sigmoid_2Sigmoid"while/lstm_cell_774/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_774/Relu_1Reluwhile/lstm_cell_774/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_774/mul_2Mul!while/lstm_cell_774/Sigmoid_2:y:0(while/lstm_cell_774/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_774/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_774/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_774/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_774/BiasAdd/ReadVariableOp*^while/lstm_cell_774/MatMul/ReadVariableOp,^while/lstm_cell_774/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_774_biasadd_readvariableop_resource5while_lstm_cell_774_biasadd_readvariableop_resource_0"n
4while_lstm_cell_774_matmul_1_readvariableop_resource6while_lstm_cell_774_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_774_matmul_readvariableop_resource4while_lstm_cell_774_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_774/BiasAdd/ReadVariableOp*while/lstm_cell_774/BiasAdd/ReadVariableOp2V
)while/lstm_cell_774/MatMul/ReadVariableOp)while/lstm_cell_774/MatMul/ReadVariableOp2Z
+while/lstm_cell_774/MatMul_1/ReadVariableOp+while/lstm_cell_774/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_4740300
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4740300___redundant_placeholder05
1while_while_cond_4740300___redundant_placeholder15
1while_while_cond_4740300___redundant_placeholder25
1while_while_cond_4740300___redundant_placeholder3
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
while_body_4741203
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_776_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_776_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_776_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_776_matmul_readvariableop_resource:2(F
4while_lstm_cell_776_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_776_biasadd_readvariableop_resource:(??*while/lstm_cell_776/BiasAdd/ReadVariableOp?)while/lstm_cell_776/MatMul/ReadVariableOp?+while/lstm_cell_776/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_776/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_776_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_776/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_776/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_776/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_776_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_776/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_776/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_776/addAddV2$while/lstm_cell_776/MatMul:product:0&while/lstm_cell_776/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_776/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_776_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_776/BiasAddBiasAddwhile/lstm_cell_776/add:z:02while/lstm_cell_776/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_776/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_776/splitSplit,while/lstm_cell_776/split/split_dim:output:0$while/lstm_cell_776/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_776/SigmoidSigmoid"while/lstm_cell_776/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_776/Sigmoid_1Sigmoid"while/lstm_cell_776/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_776/mulMul!while/lstm_cell_776/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_776/ReluRelu"while/lstm_cell_776/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_776/mul_1Mulwhile/lstm_cell_776/Sigmoid:y:0&while/lstm_cell_776/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_776/add_1AddV2while/lstm_cell_776/mul:z:0while/lstm_cell_776/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_776/Sigmoid_2Sigmoid"while/lstm_cell_776/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_776/Relu_1Reluwhile/lstm_cell_776/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_776/mul_2Mul!while/lstm_cell_776/Sigmoid_2:y:0(while/lstm_cell_776/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_776/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_776/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_776/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_776/BiasAdd/ReadVariableOp*^while/lstm_cell_776/MatMul/ReadVariableOp,^while/lstm_cell_776/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_776_biasadd_readvariableop_resource5while_lstm_cell_776_biasadd_readvariableop_resource_0"n
4while_lstm_cell_776_matmul_1_readvariableop_resource6while_lstm_cell_776_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_776_matmul_readvariableop_resource4while_lstm_cell_776_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_776/BiasAdd/ReadVariableOp*while/lstm_cell_776/BiasAdd/ReadVariableOp2V
)while/lstm_cell_776/MatMul/ReadVariableOp)while/lstm_cell_776/MatMul/ReadVariableOp2Z
+while/lstm_cell_776/MatMul_1/ReadVariableOp+while/lstm_cell_776/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
??
?
#__inference__traced_restore_4741873
file_prefix3
!assignvariableop_dense_258_kernel:
/
!assignvariableop_1_dense_258_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: C
0assignvariableop_7_lstm_774_lstm_cell_774_kernel:	?M
:assignvariableop_8_lstm_774_lstm_cell_774_recurrent_kernel:	d?=
.assignvariableop_9_lstm_774_lstm_cell_774_bias:	?D
1assignvariableop_10_lstm_775_lstm_cell_775_kernel:	d?N
;assignvariableop_11_lstm_775_lstm_cell_775_recurrent_kernel:	2?>
/assignvariableop_12_lstm_775_lstm_cell_775_bias:	?C
1assignvariableop_13_lstm_776_lstm_cell_776_kernel:2(M
;assignvariableop_14_lstm_776_lstm_cell_776_recurrent_kernel:
(=
/assignvariableop_15_lstm_776_lstm_cell_776_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: =
+assignvariableop_18_adam_dense_258_kernel_m:
7
)assignvariableop_19_adam_dense_258_bias_m:K
8assignvariableop_20_adam_lstm_774_lstm_cell_774_kernel_m:	?U
Bassignvariableop_21_adam_lstm_774_lstm_cell_774_recurrent_kernel_m:	d?E
6assignvariableop_22_adam_lstm_774_lstm_cell_774_bias_m:	?K
8assignvariableop_23_adam_lstm_775_lstm_cell_775_kernel_m:	d?U
Bassignvariableop_24_adam_lstm_775_lstm_cell_775_recurrent_kernel_m:	2?E
6assignvariableop_25_adam_lstm_775_lstm_cell_775_bias_m:	?J
8assignvariableop_26_adam_lstm_776_lstm_cell_776_kernel_m:2(T
Bassignvariableop_27_adam_lstm_776_lstm_cell_776_recurrent_kernel_m:
(D
6assignvariableop_28_adam_lstm_776_lstm_cell_776_bias_m:(=
+assignvariableop_29_adam_dense_258_kernel_v:
7
)assignvariableop_30_adam_dense_258_bias_v:K
8assignvariableop_31_adam_lstm_774_lstm_cell_774_kernel_v:	?U
Bassignvariableop_32_adam_lstm_774_lstm_cell_774_recurrent_kernel_v:	d?E
6assignvariableop_33_adam_lstm_774_lstm_cell_774_bias_v:	?K
8assignvariableop_34_adam_lstm_775_lstm_cell_775_kernel_v:	d?U
Bassignvariableop_35_adam_lstm_775_lstm_cell_775_recurrent_kernel_v:	2?E
6assignvariableop_36_adam_lstm_775_lstm_cell_775_bias_v:	?J
8assignvariableop_37_adam_lstm_776_lstm_cell_776_kernel_v:2(T
Bassignvariableop_38_adam_lstm_776_lstm_cell_776_recurrent_kernel_v:
(D
6assignvariableop_39_adam_lstm_776_lstm_cell_776_bias_v:(
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
AssignVariableOpAssignVariableOp!assignvariableop_dense_258_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_258_biasIdentity_1:output:0"/device:CPU:0*
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
AssignVariableOp_7AssignVariableOp0assignvariableop_7_lstm_774_lstm_cell_774_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp:assignvariableop_8_lstm_774_lstm_cell_774_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_774_lstm_cell_774_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp1assignvariableop_10_lstm_775_lstm_cell_775_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp;assignvariableop_11_lstm_775_lstm_cell_775_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp/assignvariableop_12_lstm_775_lstm_cell_775_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp1assignvariableop_13_lstm_776_lstm_cell_776_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp;assignvariableop_14_lstm_776_lstm_cell_776_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp/assignvariableop_15_lstm_776_lstm_cell_776_biasIdentity_15:output:0"/device:CPU:0*
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
AssignVariableOp_18AssignVariableOp+assignvariableop_18_adam_dense_258_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp)assignvariableop_19_adam_dense_258_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp8assignvariableop_20_adam_lstm_774_lstm_cell_774_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOpBassignvariableop_21_adam_lstm_774_lstm_cell_774_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp6assignvariableop_22_adam_lstm_774_lstm_cell_774_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp8assignvariableop_23_adam_lstm_775_lstm_cell_775_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOpBassignvariableop_24_adam_lstm_775_lstm_cell_775_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_775_lstm_cell_775_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp8assignvariableop_26_adam_lstm_776_lstm_cell_776_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOpBassignvariableop_27_adam_lstm_776_lstm_cell_776_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_lstm_776_lstm_cell_776_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp+assignvariableop_29_adam_dense_258_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_dense_258_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp8assignvariableop_31_adam_lstm_774_lstm_cell_774_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOpBassignvariableop_32_adam_lstm_774_lstm_cell_774_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOp6assignvariableop_33_adam_lstm_774_lstm_cell_774_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOp8assignvariableop_34_adam_lstm_775_lstm_cell_775_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOpBassignvariableop_35_adam_lstm_775_lstm_cell_775_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adam_lstm_775_lstm_cell_775_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_37AssignVariableOp8assignvariableop_37_adam_lstm_776_lstm_cell_776_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_38AssignVariableOpBassignvariableop_38_adam_lstm_776_lstm_cell_776_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_lstm_776_lstm_cell_776_bias_vIdentity_39:output:0"/device:CPU:0*
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
?
?
K__inference_sequential_258_layer_call_and_return_conditional_losses_4738496
lstm_774_input#
lstm_774_4738469:	?#
lstm_774_4738471:	d?
lstm_774_4738473:	?#
lstm_775_4738476:	d?#
lstm_775_4738478:	2?
lstm_775_4738480:	?"
lstm_776_4738483:2("
lstm_776_4738485:
(
lstm_776_4738487:(#
dense_258_4738490:

dense_258_4738492:
identity??!dense_258/StatefulPartitionedCall? lstm_774/StatefulPartitionedCall? lstm_775/StatefulPartitionedCall? lstm_776/StatefulPartitionedCall?
 lstm_774/StatefulPartitionedCallStatefulPartitionedCalllstm_774_inputlstm_774_4738469lstm_774_4738471lstm_774_4738473*
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
E__inference_lstm_774_layer_call_and_return_conditional_losses_4738316?
 lstm_775/StatefulPartitionedCallStatefulPartitionedCall)lstm_774/StatefulPartitionedCall:output:0lstm_775_4738476lstm_775_4738478lstm_775_4738480*
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
E__inference_lstm_775_layer_call_and_return_conditional_losses_4738151?
 lstm_776/StatefulPartitionedCallStatefulPartitionedCall)lstm_775/StatefulPartitionedCall:output:0lstm_776_4738483lstm_776_4738485lstm_776_4738487*
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
E__inference_lstm_776_layer_call_and_return_conditional_losses_4737986?
!dense_258/StatefulPartitionedCallStatefulPartitionedCall)lstm_776/StatefulPartitionedCall:output:0dense_258_4738490dense_258_4738492*
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
F__inference_dense_258_layer_call_and_return_conditional_losses_4737788y
IdentityIdentity*dense_258/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_258/StatefulPartitionedCall!^lstm_774/StatefulPartitionedCall!^lstm_775/StatefulPartitionedCall!^lstm_776/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_258/StatefulPartitionedCall!dense_258/StatefulPartitionedCall2D
 lstm_774/StatefulPartitionedCall lstm_774/StatefulPartitionedCall2D
 lstm_775/StatefulPartitionedCall lstm_775/StatefulPartitionedCall2D
 lstm_776/StatefulPartitionedCall lstm_776/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_774_input
?8
?
E__inference_lstm_775_layer_call_and_return_conditional_losses_4736962

inputs(
lstm_cell_775_4736880:	d?(
lstm_cell_775_4736882:	2?$
lstm_cell_775_4736884:	?
identity??%lstm_cell_775/StatefulPartitionedCall?while;
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
%lstm_cell_775/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_775_4736880lstm_cell_775_4736882lstm_cell_775_4736884*
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
J__inference_lstm_cell_775_layer_call_and_return_conditional_losses_4736834n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_775_4736880lstm_cell_775_4736882lstm_cell_775_4736884*
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
while_body_4736893*
condR
while_cond_4736892*K
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
NoOpNoOp&^lstm_cell_775/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_775/StatefulPartitionedCall%lstm_cell_775/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?8
?
while_body_4737686
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_776_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_776_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_776_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_776_matmul_readvariableop_resource:2(F
4while_lstm_cell_776_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_776_biasadd_readvariableop_resource:(??*while/lstm_cell_776/BiasAdd/ReadVariableOp?)while/lstm_cell_776/MatMul/ReadVariableOp?+while/lstm_cell_776/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_776/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_776_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_776/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_776/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_776/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_776_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_776/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_776/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_776/addAddV2$while/lstm_cell_776/MatMul:product:0&while/lstm_cell_776/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_776/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_776_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_776/BiasAddBiasAddwhile/lstm_cell_776/add:z:02while/lstm_cell_776/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_776/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_776/splitSplit,while/lstm_cell_776/split/split_dim:output:0$while/lstm_cell_776/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_776/SigmoidSigmoid"while/lstm_cell_776/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_776/Sigmoid_1Sigmoid"while/lstm_cell_776/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_776/mulMul!while/lstm_cell_776/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_776/ReluRelu"while/lstm_cell_776/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_776/mul_1Mulwhile/lstm_cell_776/Sigmoid:y:0&while/lstm_cell_776/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_776/add_1AddV2while/lstm_cell_776/mul:z:0while/lstm_cell_776/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_776/Sigmoid_2Sigmoid"while/lstm_cell_776/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_776/Relu_1Reluwhile/lstm_cell_776/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_776/mul_2Mul!while/lstm_cell_776/Sigmoid_2:y:0(while/lstm_cell_776/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_776/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_776/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_776/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_776/BiasAdd/ReadVariableOp*^while/lstm_cell_776/MatMul/ReadVariableOp,^while/lstm_cell_776/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_776_biasadd_readvariableop_resource5while_lstm_cell_776_biasadd_readvariableop_resource_0"n
4while_lstm_cell_776_matmul_1_readvariableop_resource6while_lstm_cell_776_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_776_matmul_readvariableop_resource4while_lstm_cell_776_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_776/BiasAdd/ReadVariableOp*while/lstm_cell_776/BiasAdd/ReadVariableOp2V
)while/lstm_cell_776/MatMul/ReadVariableOp)while/lstm_cell_776/MatMul/ReadVariableOp2Z
+while/lstm_cell_776/MatMul_1/ReadVariableOp+while/lstm_cell_776/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_4738231
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4738231___redundant_placeholder05
1while_while_cond_4738231___redundant_placeholder15
1while_while_cond_4738231___redundant_placeholder25
1while_while_cond_4738231___redundant_placeholder3
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
J__inference_lstm_cell_774_layer_call_and_return_conditional_losses_4736484

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
while_body_4736543
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_774_4736567_0:	?0
while_lstm_cell_774_4736569_0:	d?,
while_lstm_cell_774_4736571_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_774_4736567:	?.
while_lstm_cell_774_4736569:	d?*
while_lstm_cell_774_4736571:	???+while/lstm_cell_774/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_774/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_774_4736567_0while_lstm_cell_774_4736569_0while_lstm_cell_774_4736571_0*
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
J__inference_lstm_cell_774_layer_call_and_return_conditional_losses_4736484?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_774/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_774/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_774/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_774/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_774_4736567while_lstm_cell_774_4736567_0"<
while_lstm_cell_774_4736569while_lstm_cell_774_4736569_0"<
while_lstm_cell_774_4736571while_lstm_cell_774_4736571_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_774/StatefulPartitionedCall+while/lstm_cell_774/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_775_layer_call_and_return_conditional_losses_4737620

inputs?
,lstm_cell_775_matmul_readvariableop_resource:	d?A
.lstm_cell_775_matmul_1_readvariableop_resource:	2?<
-lstm_cell_775_biasadd_readvariableop_resource:	?
identity??$lstm_cell_775/BiasAdd/ReadVariableOp?#lstm_cell_775/MatMul/ReadVariableOp?%lstm_cell_775/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_775/MatMul/ReadVariableOpReadVariableOp,lstm_cell_775_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_775/MatMulMatMulstrided_slice_2:output:0+lstm_cell_775/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_775/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_775_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_775/MatMul_1MatMulzeros:output:0-lstm_cell_775/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_775/addAddV2lstm_cell_775/MatMul:product:0 lstm_cell_775/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_775/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_775_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_775/BiasAddBiasAddlstm_cell_775/add:z:0,lstm_cell_775/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_775/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_775/splitSplit&lstm_cell_775/split/split_dim:output:0lstm_cell_775/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_775/SigmoidSigmoidlstm_cell_775/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_775/Sigmoid_1Sigmoidlstm_cell_775/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_775/mulMullstm_cell_775/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_775/ReluRelulstm_cell_775/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_775/mul_1Mullstm_cell_775/Sigmoid:y:0 lstm_cell_775/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_775/add_1AddV2lstm_cell_775/mul:z:0lstm_cell_775/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_775/Sigmoid_2Sigmoidlstm_cell_775/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_775/Relu_1Relulstm_cell_775/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_775/mul_2Mullstm_cell_775/Sigmoid_2:y:0"lstm_cell_775/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_775_matmul_readvariableop_resource.lstm_cell_775_matmul_1_readvariableop_resource-lstm_cell_775_biasadd_readvariableop_resource*
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
while_body_4737536*
condR
while_cond_4737535*K
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
NoOpNoOp%^lstm_cell_775/BiasAdd/ReadVariableOp$^lstm_cell_775/MatMul/ReadVariableOp&^lstm_cell_775/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_775/BiasAdd/ReadVariableOp$lstm_cell_775/BiasAdd/ReadVariableOp2J
#lstm_cell_775/MatMul/ReadVariableOp#lstm_cell_775/MatMul/ReadVariableOp2N
%lstm_cell_775/MatMul_1/ReadVariableOp%lstm_cell_775/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
while_cond_4736542
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4736542___redundant_placeholder05
1while_while_cond_4736542___redundant_placeholder15
1while_while_cond_4736542___redundant_placeholder25
1while_while_cond_4736542___redundant_placeholder3
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
0__inference_sequential_258_layer_call_fn_4738436
lstm_774_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_774_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_258_layer_call_and_return_conditional_losses_4738384o
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
_user_specified_namelstm_774_input
??
?
K__inference_sequential_258_layer_call_and_return_conditional_losses_4739012

inputsH
5lstm_774_lstm_cell_774_matmul_readvariableop_resource:	?J
7lstm_774_lstm_cell_774_matmul_1_readvariableop_resource:	d?E
6lstm_774_lstm_cell_774_biasadd_readvariableop_resource:	?H
5lstm_775_lstm_cell_775_matmul_readvariableop_resource:	d?J
7lstm_775_lstm_cell_775_matmul_1_readvariableop_resource:	2?E
6lstm_775_lstm_cell_775_biasadd_readvariableop_resource:	?G
5lstm_776_lstm_cell_776_matmul_readvariableop_resource:2(I
7lstm_776_lstm_cell_776_matmul_1_readvariableop_resource:
(D
6lstm_776_lstm_cell_776_biasadd_readvariableop_resource:(:
(dense_258_matmul_readvariableop_resource:
7
)dense_258_biasadd_readvariableop_resource:
identity?? dense_258/BiasAdd/ReadVariableOp?dense_258/MatMul/ReadVariableOp?-lstm_774/lstm_cell_774/BiasAdd/ReadVariableOp?,lstm_774/lstm_cell_774/MatMul/ReadVariableOp?.lstm_774/lstm_cell_774/MatMul_1/ReadVariableOp?lstm_774/while?-lstm_775/lstm_cell_775/BiasAdd/ReadVariableOp?,lstm_775/lstm_cell_775/MatMul/ReadVariableOp?.lstm_775/lstm_cell_775/MatMul_1/ReadVariableOp?lstm_775/while?-lstm_776/lstm_cell_776/BiasAdd/ReadVariableOp?,lstm_776/lstm_cell_776/MatMul/ReadVariableOp?.lstm_776/lstm_cell_776/MatMul_1/ReadVariableOp?lstm_776/whileD
lstm_774/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_774/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_774/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_774/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_774/strided_sliceStridedSlicelstm_774/Shape:output:0%lstm_774/strided_slice/stack:output:0'lstm_774/strided_slice/stack_1:output:0'lstm_774/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_774/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_774/zeros/packedPacklstm_774/strided_slice:output:0 lstm_774/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_774/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_774/zerosFilllstm_774/zeros/packed:output:0lstm_774/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_774/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_774/zeros_1/packedPacklstm_774/strided_slice:output:0"lstm_774/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_774/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_774/zeros_1Fill lstm_774/zeros_1/packed:output:0lstm_774/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_774/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_774/transpose	Transposeinputs lstm_774/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_774/Shape_1Shapelstm_774/transpose:y:0*
T0*
_output_shapes
:h
lstm_774/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_774/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_774/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_774/strided_slice_1StridedSlicelstm_774/Shape_1:output:0'lstm_774/strided_slice_1/stack:output:0)lstm_774/strided_slice_1/stack_1:output:0)lstm_774/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_774/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_774/TensorArrayV2TensorListReserve-lstm_774/TensorArrayV2/element_shape:output:0!lstm_774/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_774/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_774/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_774/transpose:y:0Glstm_774/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_774/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_774/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_774/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_774/strided_slice_2StridedSlicelstm_774/transpose:y:0'lstm_774/strided_slice_2/stack:output:0)lstm_774/strided_slice_2/stack_1:output:0)lstm_774/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_774/lstm_cell_774/MatMul/ReadVariableOpReadVariableOp5lstm_774_lstm_cell_774_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_774/lstm_cell_774/MatMulMatMul!lstm_774/strided_slice_2:output:04lstm_774/lstm_cell_774/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_774/lstm_cell_774/MatMul_1/ReadVariableOpReadVariableOp7lstm_774_lstm_cell_774_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_774/lstm_cell_774/MatMul_1MatMullstm_774/zeros:output:06lstm_774/lstm_cell_774/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_774/lstm_cell_774/addAddV2'lstm_774/lstm_cell_774/MatMul:product:0)lstm_774/lstm_cell_774/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_774/lstm_cell_774/BiasAdd/ReadVariableOpReadVariableOp6lstm_774_lstm_cell_774_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_774/lstm_cell_774/BiasAddBiasAddlstm_774/lstm_cell_774/add:z:05lstm_774/lstm_cell_774/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_774/lstm_cell_774/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_774/lstm_cell_774/splitSplit/lstm_774/lstm_cell_774/split/split_dim:output:0'lstm_774/lstm_cell_774/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_774/lstm_cell_774/SigmoidSigmoid%lstm_774/lstm_cell_774/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_774/lstm_cell_774/Sigmoid_1Sigmoid%lstm_774/lstm_cell_774/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_774/lstm_cell_774/mulMul$lstm_774/lstm_cell_774/Sigmoid_1:y:0lstm_774/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_774/lstm_cell_774/ReluRelu%lstm_774/lstm_cell_774/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_774/lstm_cell_774/mul_1Mul"lstm_774/lstm_cell_774/Sigmoid:y:0)lstm_774/lstm_cell_774/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_774/lstm_cell_774/add_1AddV2lstm_774/lstm_cell_774/mul:z:0 lstm_774/lstm_cell_774/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_774/lstm_cell_774/Sigmoid_2Sigmoid%lstm_774/lstm_cell_774/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_774/lstm_cell_774/Relu_1Relu lstm_774/lstm_cell_774/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_774/lstm_cell_774/mul_2Mul$lstm_774/lstm_cell_774/Sigmoid_2:y:0+lstm_774/lstm_cell_774/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_774/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_774/TensorArrayV2_1TensorListReserve/lstm_774/TensorArrayV2_1/element_shape:output:0!lstm_774/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_774/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_774/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_774/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_774/whileWhile$lstm_774/while/loop_counter:output:0*lstm_774/while/maximum_iterations:output:0lstm_774/time:output:0!lstm_774/TensorArrayV2_1:handle:0lstm_774/zeros:output:0lstm_774/zeros_1:output:0!lstm_774/strided_slice_1:output:0@lstm_774/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_774_lstm_cell_774_matmul_readvariableop_resource7lstm_774_lstm_cell_774_matmul_1_readvariableop_resource6lstm_774_lstm_cell_774_biasadd_readvariableop_resource*
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
lstm_774_while_body_4738644*'
condR
lstm_774_while_cond_4738643*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_774/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_774/TensorArrayV2Stack/TensorListStackTensorListStacklstm_774/while:output:3Blstm_774/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_774/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_774/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_774/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_774/strided_slice_3StridedSlice4lstm_774/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_774/strided_slice_3/stack:output:0)lstm_774/strided_slice_3/stack_1:output:0)lstm_774/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_774/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_774/transpose_1	Transpose4lstm_774/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_774/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_774/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_775/ShapeShapelstm_774/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_775/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_775/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_775/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_775/strided_sliceStridedSlicelstm_775/Shape:output:0%lstm_775/strided_slice/stack:output:0'lstm_775/strided_slice/stack_1:output:0'lstm_775/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_775/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_775/zeros/packedPacklstm_775/strided_slice:output:0 lstm_775/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_775/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_775/zerosFilllstm_775/zeros/packed:output:0lstm_775/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_775/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_775/zeros_1/packedPacklstm_775/strided_slice:output:0"lstm_775/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_775/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_775/zeros_1Fill lstm_775/zeros_1/packed:output:0lstm_775/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_775/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_775/transpose	Transposelstm_774/transpose_1:y:0 lstm_775/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_775/Shape_1Shapelstm_775/transpose:y:0*
T0*
_output_shapes
:h
lstm_775/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_775/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_775/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_775/strided_slice_1StridedSlicelstm_775/Shape_1:output:0'lstm_775/strided_slice_1/stack:output:0)lstm_775/strided_slice_1/stack_1:output:0)lstm_775/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_775/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_775/TensorArrayV2TensorListReserve-lstm_775/TensorArrayV2/element_shape:output:0!lstm_775/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_775/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_775/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_775/transpose:y:0Glstm_775/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_775/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_775/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_775/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_775/strided_slice_2StridedSlicelstm_775/transpose:y:0'lstm_775/strided_slice_2/stack:output:0)lstm_775/strided_slice_2/stack_1:output:0)lstm_775/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_775/lstm_cell_775/MatMul/ReadVariableOpReadVariableOp5lstm_775_lstm_cell_775_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_775/lstm_cell_775/MatMulMatMul!lstm_775/strided_slice_2:output:04lstm_775/lstm_cell_775/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_775/lstm_cell_775/MatMul_1/ReadVariableOpReadVariableOp7lstm_775_lstm_cell_775_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_775/lstm_cell_775/MatMul_1MatMullstm_775/zeros:output:06lstm_775/lstm_cell_775/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_775/lstm_cell_775/addAddV2'lstm_775/lstm_cell_775/MatMul:product:0)lstm_775/lstm_cell_775/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_775/lstm_cell_775/BiasAdd/ReadVariableOpReadVariableOp6lstm_775_lstm_cell_775_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_775/lstm_cell_775/BiasAddBiasAddlstm_775/lstm_cell_775/add:z:05lstm_775/lstm_cell_775/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_775/lstm_cell_775/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_775/lstm_cell_775/splitSplit/lstm_775/lstm_cell_775/split/split_dim:output:0'lstm_775/lstm_cell_775/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_775/lstm_cell_775/SigmoidSigmoid%lstm_775/lstm_cell_775/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_775/lstm_cell_775/Sigmoid_1Sigmoid%lstm_775/lstm_cell_775/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_775/lstm_cell_775/mulMul$lstm_775/lstm_cell_775/Sigmoid_1:y:0lstm_775/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_775/lstm_cell_775/ReluRelu%lstm_775/lstm_cell_775/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_775/lstm_cell_775/mul_1Mul"lstm_775/lstm_cell_775/Sigmoid:y:0)lstm_775/lstm_cell_775/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_775/lstm_cell_775/add_1AddV2lstm_775/lstm_cell_775/mul:z:0 lstm_775/lstm_cell_775/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_775/lstm_cell_775/Sigmoid_2Sigmoid%lstm_775/lstm_cell_775/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_775/lstm_cell_775/Relu_1Relu lstm_775/lstm_cell_775/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_775/lstm_cell_775/mul_2Mul$lstm_775/lstm_cell_775/Sigmoid_2:y:0+lstm_775/lstm_cell_775/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_775/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_775/TensorArrayV2_1TensorListReserve/lstm_775/TensorArrayV2_1/element_shape:output:0!lstm_775/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_775/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_775/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_775/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_775/whileWhile$lstm_775/while/loop_counter:output:0*lstm_775/while/maximum_iterations:output:0lstm_775/time:output:0!lstm_775/TensorArrayV2_1:handle:0lstm_775/zeros:output:0lstm_775/zeros_1:output:0!lstm_775/strided_slice_1:output:0@lstm_775/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_775_lstm_cell_775_matmul_readvariableop_resource7lstm_775_lstm_cell_775_matmul_1_readvariableop_resource6lstm_775_lstm_cell_775_biasadd_readvariableop_resource*
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
lstm_775_while_body_4738783*'
condR
lstm_775_while_cond_4738782*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_775/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_775/TensorArrayV2Stack/TensorListStackTensorListStacklstm_775/while:output:3Blstm_775/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_775/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_775/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_775/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_775/strided_slice_3StridedSlice4lstm_775/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_775/strided_slice_3/stack:output:0)lstm_775/strided_slice_3/stack_1:output:0)lstm_775/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_775/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_775/transpose_1	Transpose4lstm_775/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_775/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_775/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_776/ShapeShapelstm_775/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_776/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_776/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_776/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_776/strided_sliceStridedSlicelstm_776/Shape:output:0%lstm_776/strided_slice/stack:output:0'lstm_776/strided_slice/stack_1:output:0'lstm_776/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_776/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_776/zeros/packedPacklstm_776/strided_slice:output:0 lstm_776/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_776/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_776/zerosFilllstm_776/zeros/packed:output:0lstm_776/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_776/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_776/zeros_1/packedPacklstm_776/strided_slice:output:0"lstm_776/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_776/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_776/zeros_1Fill lstm_776/zeros_1/packed:output:0lstm_776/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_776/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_776/transpose	Transposelstm_775/transpose_1:y:0 lstm_776/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_776/Shape_1Shapelstm_776/transpose:y:0*
T0*
_output_shapes
:h
lstm_776/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_776/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_776/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_776/strided_slice_1StridedSlicelstm_776/Shape_1:output:0'lstm_776/strided_slice_1/stack:output:0)lstm_776/strided_slice_1/stack_1:output:0)lstm_776/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_776/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_776/TensorArrayV2TensorListReserve-lstm_776/TensorArrayV2/element_shape:output:0!lstm_776/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_776/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_776/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_776/transpose:y:0Glstm_776/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_776/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_776/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_776/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_776/strided_slice_2StridedSlicelstm_776/transpose:y:0'lstm_776/strided_slice_2/stack:output:0)lstm_776/strided_slice_2/stack_1:output:0)lstm_776/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_776/lstm_cell_776/MatMul/ReadVariableOpReadVariableOp5lstm_776_lstm_cell_776_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_776/lstm_cell_776/MatMulMatMul!lstm_776/strided_slice_2:output:04lstm_776/lstm_cell_776/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_776/lstm_cell_776/MatMul_1/ReadVariableOpReadVariableOp7lstm_776_lstm_cell_776_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_776/lstm_cell_776/MatMul_1MatMullstm_776/zeros:output:06lstm_776/lstm_cell_776/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_776/lstm_cell_776/addAddV2'lstm_776/lstm_cell_776/MatMul:product:0)lstm_776/lstm_cell_776/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_776/lstm_cell_776/BiasAdd/ReadVariableOpReadVariableOp6lstm_776_lstm_cell_776_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_776/lstm_cell_776/BiasAddBiasAddlstm_776/lstm_cell_776/add:z:05lstm_776/lstm_cell_776/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_776/lstm_cell_776/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_776/lstm_cell_776/splitSplit/lstm_776/lstm_cell_776/split/split_dim:output:0'lstm_776/lstm_cell_776/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_776/lstm_cell_776/SigmoidSigmoid%lstm_776/lstm_cell_776/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_776/lstm_cell_776/Sigmoid_1Sigmoid%lstm_776/lstm_cell_776/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_776/lstm_cell_776/mulMul$lstm_776/lstm_cell_776/Sigmoid_1:y:0lstm_776/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_776/lstm_cell_776/ReluRelu%lstm_776/lstm_cell_776/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_776/lstm_cell_776/mul_1Mul"lstm_776/lstm_cell_776/Sigmoid:y:0)lstm_776/lstm_cell_776/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_776/lstm_cell_776/add_1AddV2lstm_776/lstm_cell_776/mul:z:0 lstm_776/lstm_cell_776/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_776/lstm_cell_776/Sigmoid_2Sigmoid%lstm_776/lstm_cell_776/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_776/lstm_cell_776/Relu_1Relu lstm_776/lstm_cell_776/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_776/lstm_cell_776/mul_2Mul$lstm_776/lstm_cell_776/Sigmoid_2:y:0+lstm_776/lstm_cell_776/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_776/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_776/TensorArrayV2_1TensorListReserve/lstm_776/TensorArrayV2_1/element_shape:output:0!lstm_776/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_776/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_776/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_776/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_776/whileWhile$lstm_776/while/loop_counter:output:0*lstm_776/while/maximum_iterations:output:0lstm_776/time:output:0!lstm_776/TensorArrayV2_1:handle:0lstm_776/zeros:output:0lstm_776/zeros_1:output:0!lstm_776/strided_slice_1:output:0@lstm_776/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_776_lstm_cell_776_matmul_readvariableop_resource7lstm_776_lstm_cell_776_matmul_1_readvariableop_resource6lstm_776_lstm_cell_776_biasadd_readvariableop_resource*
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
lstm_776_while_body_4738922*'
condR
lstm_776_while_cond_4738921*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_776/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_776/TensorArrayV2Stack/TensorListStackTensorListStacklstm_776/while:output:3Blstm_776/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_776/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_776/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_776/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_776/strided_slice_3StridedSlice4lstm_776/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_776/strided_slice_3/stack:output:0)lstm_776/strided_slice_3/stack_1:output:0)lstm_776/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_776/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_776/transpose_1	Transpose4lstm_776/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_776/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_776/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_258/MatMul/ReadVariableOpReadVariableOp(dense_258_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_258/MatMulMatMul!lstm_776/strided_slice_3:output:0'dense_258/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_258/BiasAdd/ReadVariableOpReadVariableOp)dense_258_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_258/BiasAddBiasAdddense_258/MatMul:product:0(dense_258/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_258/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_258/BiasAdd/ReadVariableOp ^dense_258/MatMul/ReadVariableOp.^lstm_774/lstm_cell_774/BiasAdd/ReadVariableOp-^lstm_774/lstm_cell_774/MatMul/ReadVariableOp/^lstm_774/lstm_cell_774/MatMul_1/ReadVariableOp^lstm_774/while.^lstm_775/lstm_cell_775/BiasAdd/ReadVariableOp-^lstm_775/lstm_cell_775/MatMul/ReadVariableOp/^lstm_775/lstm_cell_775/MatMul_1/ReadVariableOp^lstm_775/while.^lstm_776/lstm_cell_776/BiasAdd/ReadVariableOp-^lstm_776/lstm_cell_776/MatMul/ReadVariableOp/^lstm_776/lstm_cell_776/MatMul_1/ReadVariableOp^lstm_776/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_258/BiasAdd/ReadVariableOp dense_258/BiasAdd/ReadVariableOp2B
dense_258/MatMul/ReadVariableOpdense_258/MatMul/ReadVariableOp2^
-lstm_774/lstm_cell_774/BiasAdd/ReadVariableOp-lstm_774/lstm_cell_774/BiasAdd/ReadVariableOp2\
,lstm_774/lstm_cell_774/MatMul/ReadVariableOp,lstm_774/lstm_cell_774/MatMul/ReadVariableOp2`
.lstm_774/lstm_cell_774/MatMul_1/ReadVariableOp.lstm_774/lstm_cell_774/MatMul_1/ReadVariableOp2 
lstm_774/whilelstm_774/while2^
-lstm_775/lstm_cell_775/BiasAdd/ReadVariableOp-lstm_775/lstm_cell_775/BiasAdd/ReadVariableOp2\
,lstm_775/lstm_cell_775/MatMul/ReadVariableOp,lstm_775/lstm_cell_775/MatMul/ReadVariableOp2`
.lstm_775/lstm_cell_775/MatMul_1/ReadVariableOp.lstm_775/lstm_cell_775/MatMul_1/ReadVariableOp2 
lstm_775/whilelstm_775/while2^
-lstm_776/lstm_cell_776/BiasAdd/ReadVariableOp-lstm_776/lstm_cell_776/BiasAdd/ReadVariableOp2\
,lstm_776/lstm_cell_776/MatMul/ReadVariableOp,lstm_776/lstm_cell_776/MatMul/ReadVariableOp2`
.lstm_776/lstm_cell_776/MatMul_1/ReadVariableOp.lstm_776/lstm_cell_776/MatMul_1/ReadVariableOp2 
lstm_776/whilelstm_776/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?J
?
E__inference_lstm_775_layer_call_and_return_conditional_losses_4740528

inputs?
,lstm_cell_775_matmul_readvariableop_resource:	d?A
.lstm_cell_775_matmul_1_readvariableop_resource:	2?<
-lstm_cell_775_biasadd_readvariableop_resource:	?
identity??$lstm_cell_775/BiasAdd/ReadVariableOp?#lstm_cell_775/MatMul/ReadVariableOp?%lstm_cell_775/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_775/MatMul/ReadVariableOpReadVariableOp,lstm_cell_775_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_775/MatMulMatMulstrided_slice_2:output:0+lstm_cell_775/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_775/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_775_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_775/MatMul_1MatMulzeros:output:0-lstm_cell_775/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_775/addAddV2lstm_cell_775/MatMul:product:0 lstm_cell_775/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_775/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_775_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_775/BiasAddBiasAddlstm_cell_775/add:z:0,lstm_cell_775/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_775/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_775/splitSplit&lstm_cell_775/split/split_dim:output:0lstm_cell_775/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_775/SigmoidSigmoidlstm_cell_775/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_775/Sigmoid_1Sigmoidlstm_cell_775/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_775/mulMullstm_cell_775/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_775/ReluRelulstm_cell_775/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_775/mul_1Mullstm_cell_775/Sigmoid:y:0 lstm_cell_775/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_775/add_1AddV2lstm_cell_775/mul:z:0lstm_cell_775/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_775/Sigmoid_2Sigmoidlstm_cell_775/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_775/Relu_1Relulstm_cell_775/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_775/mul_2Mullstm_cell_775/Sigmoid_2:y:0"lstm_cell_775/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_775_matmul_readvariableop_resource.lstm_cell_775_matmul_1_readvariableop_resource-lstm_cell_775_biasadd_readvariableop_resource*
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
while_body_4740444*
condR
while_cond_4740443*K
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
NoOpNoOp%^lstm_cell_775/BiasAdd/ReadVariableOp$^lstm_cell_775/MatMul/ReadVariableOp&^lstm_cell_775/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_775/BiasAdd/ReadVariableOp$lstm_cell_775/BiasAdd/ReadVariableOp2J
#lstm_cell_775/MatMul/ReadVariableOp#lstm_cell_775/MatMul/ReadVariableOp2N
%lstm_cell_775/MatMul_1/ReadVariableOp%lstm_cell_775/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
*__inference_lstm_776_layer_call_fn_4740682
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
E__inference_lstm_776_layer_call_and_return_conditional_losses_4737121o
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
E__inference_lstm_775_layer_call_and_return_conditional_losses_4736771

inputs(
lstm_cell_775_4736689:	d?(
lstm_cell_775_4736691:	2?$
lstm_cell_775_4736693:	?
identity??%lstm_cell_775/StatefulPartitionedCall?while;
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
%lstm_cell_775/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_775_4736689lstm_cell_775_4736691lstm_cell_775_4736693*
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
J__inference_lstm_cell_775_layer_call_and_return_conditional_losses_4736688n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_775_4736689lstm_cell_775_4736691lstm_cell_775_4736693*
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
while_body_4736702*
condR
while_cond_4736701*K
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
NoOpNoOp&^lstm_cell_775/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_775/StatefulPartitionedCall%lstm_cell_775/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?8
?
while_body_4740158
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_775_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_775_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_775_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_775_matmul_readvariableop_resource:	d?G
4while_lstm_cell_775_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_775_biasadd_readvariableop_resource:	???*while/lstm_cell_775/BiasAdd/ReadVariableOp?)while/lstm_cell_775/MatMul/ReadVariableOp?+while/lstm_cell_775/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_775/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_775_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_775/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_775/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_775/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_775_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_775/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_775/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_775/addAddV2$while/lstm_cell_775/MatMul:product:0&while/lstm_cell_775/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_775/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_775_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_775/BiasAddBiasAddwhile/lstm_cell_775/add:z:02while/lstm_cell_775/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_775/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_775/splitSplit,while/lstm_cell_775/split/split_dim:output:0$while/lstm_cell_775/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_775/SigmoidSigmoid"while/lstm_cell_775/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_775/Sigmoid_1Sigmoid"while/lstm_cell_775/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_775/mulMul!while/lstm_cell_775/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_775/ReluRelu"while/lstm_cell_775/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_775/mul_1Mulwhile/lstm_cell_775/Sigmoid:y:0&while/lstm_cell_775/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_775/add_1AddV2while/lstm_cell_775/mul:z:0while/lstm_cell_775/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_775/Sigmoid_2Sigmoid"while/lstm_cell_775/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_775/Relu_1Reluwhile/lstm_cell_775/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_775/mul_2Mul!while/lstm_cell_775/Sigmoid_2:y:0(while/lstm_cell_775/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_775/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_775/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_775/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_775/BiasAdd/ReadVariableOp*^while/lstm_cell_775/MatMul/ReadVariableOp,^while/lstm_cell_775/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_775_biasadd_readvariableop_resource5while_lstm_cell_775_biasadd_readvariableop_resource_0"n
4while_lstm_cell_775_matmul_1_readvariableop_resource6while_lstm_cell_775_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_775_matmul_readvariableop_resource4while_lstm_cell_775_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_775/BiasAdd/ReadVariableOp*while/lstm_cell_775/BiasAdd/ReadVariableOp2V
)while/lstm_cell_775/MatMul/ReadVariableOp)while/lstm_cell_775/MatMul/ReadVariableOp2Z
+while/lstm_cell_775/MatMul_1/ReadVariableOp+while/lstm_cell_775/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_776_layer_call_fn_4741536

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
J__inference_lstm_cell_776_layer_call_and_return_conditional_losses_4737184o
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

?
0__inference_sequential_258_layer_call_fn_4737820
lstm_774_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_774_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_258_layer_call_and_return_conditional_losses_4737795o
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
_user_specified_namelstm_774_input
?
?
J__inference_lstm_cell_775_layer_call_and_return_conditional_losses_4736688

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
while_body_4737902
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_776_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_776_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_776_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_776_matmul_readvariableop_resource:2(F
4while_lstm_cell_776_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_776_biasadd_readvariableop_resource:(??*while/lstm_cell_776/BiasAdd/ReadVariableOp?)while/lstm_cell_776/MatMul/ReadVariableOp?+while/lstm_cell_776/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_776/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_776_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_776/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_776/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_776/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_776_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_776/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_776/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_776/addAddV2$while/lstm_cell_776/MatMul:product:0&while/lstm_cell_776/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_776/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_776_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_776/BiasAddBiasAddwhile/lstm_cell_776/add:z:02while/lstm_cell_776/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_776/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_776/splitSplit,while/lstm_cell_776/split/split_dim:output:0$while/lstm_cell_776/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_776/SigmoidSigmoid"while/lstm_cell_776/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_776/Sigmoid_1Sigmoid"while/lstm_cell_776/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_776/mulMul!while/lstm_cell_776/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_776/ReluRelu"while/lstm_cell_776/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_776/mul_1Mulwhile/lstm_cell_776/Sigmoid:y:0&while/lstm_cell_776/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_776/add_1AddV2while/lstm_cell_776/mul:z:0while/lstm_cell_776/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_776/Sigmoid_2Sigmoid"while/lstm_cell_776/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_776/Relu_1Reluwhile/lstm_cell_776/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_776/mul_2Mul!while/lstm_cell_776/Sigmoid_2:y:0(while/lstm_cell_776/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_776/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_776/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_776/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_776/BiasAdd/ReadVariableOp*^while/lstm_cell_776/MatMul/ReadVariableOp,^while/lstm_cell_776/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_776_biasadd_readvariableop_resource5while_lstm_cell_776_biasadd_readvariableop_resource_0"n
4while_lstm_cell_776_matmul_1_readvariableop_resource6while_lstm_cell_776_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_776_matmul_readvariableop_resource4while_lstm_cell_776_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_776/BiasAdd/ReadVariableOp*while/lstm_cell_776/BiasAdd/ReadVariableOp2V
)while/lstm_cell_776/MatMul/ReadVariableOp)while/lstm_cell_776/MatMul/ReadVariableOp2Z
+while/lstm_cell_776/MatMul_1/ReadVariableOp+while/lstm_cell_776/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*sequential_258_lstm_774_while_cond_4735902L
Hsequential_258_lstm_774_while_sequential_258_lstm_774_while_loop_counterR
Nsequential_258_lstm_774_while_sequential_258_lstm_774_while_maximum_iterations-
)sequential_258_lstm_774_while_placeholder/
+sequential_258_lstm_774_while_placeholder_1/
+sequential_258_lstm_774_while_placeholder_2/
+sequential_258_lstm_774_while_placeholder_3N
Jsequential_258_lstm_774_while_less_sequential_258_lstm_774_strided_slice_1e
asequential_258_lstm_774_while_sequential_258_lstm_774_while_cond_4735902___redundant_placeholder0e
asequential_258_lstm_774_while_sequential_258_lstm_774_while_cond_4735902___redundant_placeholder1e
asequential_258_lstm_774_while_sequential_258_lstm_774_while_cond_4735902___redundant_placeholder2e
asequential_258_lstm_774_while_sequential_258_lstm_774_while_cond_4735902___redundant_placeholder3*
&sequential_258_lstm_774_while_identity
?
"sequential_258/lstm_774/while/LessLess)sequential_258_lstm_774_while_placeholderJsequential_258_lstm_774_while_less_sequential_258_lstm_774_strided_slice_1*
T0*
_output_shapes
: {
&sequential_258/lstm_774/while/IdentityIdentity&sequential_258/lstm_774/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_258_lstm_774_while_identity/sequential_258/lstm_774/while/Identity:output:0*(
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
%__inference_signature_wrapper_4738531
lstm_774_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_774_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
"__inference__wrapped_model_4736271o
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
_user_specified_namelstm_774_input
?
?
while_cond_4739541
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4739541___redundant_placeholder05
1while_while_cond_4739541___redundant_placeholder15
1while_while_cond_4739541___redundant_placeholder25
1while_while_cond_4739541___redundant_placeholder3
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
while_body_4739971
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_774_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_774_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_774_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_774_matmul_readvariableop_resource:	?G
4while_lstm_cell_774_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_774_biasadd_readvariableop_resource:	???*while/lstm_cell_774/BiasAdd/ReadVariableOp?)while/lstm_cell_774/MatMul/ReadVariableOp?+while/lstm_cell_774/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_774/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_774_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_774/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_774/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_774/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_774_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_774/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_774/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_774/addAddV2$while/lstm_cell_774/MatMul:product:0&while/lstm_cell_774/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_774/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_774_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_774/BiasAddBiasAddwhile/lstm_cell_774/add:z:02while/lstm_cell_774/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_774/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_774/splitSplit,while/lstm_cell_774/split/split_dim:output:0$while/lstm_cell_774/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_774/SigmoidSigmoid"while/lstm_cell_774/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_774/Sigmoid_1Sigmoid"while/lstm_cell_774/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_774/mulMul!while/lstm_cell_774/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_774/ReluRelu"while/lstm_cell_774/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_774/mul_1Mulwhile/lstm_cell_774/Sigmoid:y:0&while/lstm_cell_774/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_774/add_1AddV2while/lstm_cell_774/mul:z:0while/lstm_cell_774/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_774/Sigmoid_2Sigmoid"while/lstm_cell_774/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_774/Relu_1Reluwhile/lstm_cell_774/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_774/mul_2Mul!while/lstm_cell_774/Sigmoid_2:y:0(while/lstm_cell_774/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_774/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_774/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_774/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_774/BiasAdd/ReadVariableOp*^while/lstm_cell_774/MatMul/ReadVariableOp,^while/lstm_cell_774/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_774_biasadd_readvariableop_resource5while_lstm_cell_774_biasadd_readvariableop_resource_0"n
4while_lstm_cell_774_matmul_1_readvariableop_resource6while_lstm_cell_774_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_774_matmul_readvariableop_resource4while_lstm_cell_774_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_774/BiasAdd/ReadVariableOp*while/lstm_cell_774/BiasAdd/ReadVariableOp2V
)while/lstm_cell_774/MatMul/ReadVariableOp)while/lstm_cell_774/MatMul/ReadVariableOp2Z
+while/lstm_cell_774/MatMul_1/ReadVariableOp+while/lstm_cell_774/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_774_layer_call_and_return_conditional_losses_4739626
inputs_0?
,lstm_cell_774_matmul_readvariableop_resource:	?A
.lstm_cell_774_matmul_1_readvariableop_resource:	d?<
-lstm_cell_774_biasadd_readvariableop_resource:	?
identity??$lstm_cell_774/BiasAdd/ReadVariableOp?#lstm_cell_774/MatMul/ReadVariableOp?%lstm_cell_774/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_774/MatMul/ReadVariableOpReadVariableOp,lstm_cell_774_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_774/MatMulMatMulstrided_slice_2:output:0+lstm_cell_774/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_774/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_774_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_774/MatMul_1MatMulzeros:output:0-lstm_cell_774/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_774/addAddV2lstm_cell_774/MatMul:product:0 lstm_cell_774/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_774/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_774_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_774/BiasAddBiasAddlstm_cell_774/add:z:0,lstm_cell_774/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_774/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_774/splitSplit&lstm_cell_774/split/split_dim:output:0lstm_cell_774/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_774/SigmoidSigmoidlstm_cell_774/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_774/Sigmoid_1Sigmoidlstm_cell_774/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_774/mulMullstm_cell_774/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_774/ReluRelulstm_cell_774/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_774/mul_1Mullstm_cell_774/Sigmoid:y:0 lstm_cell_774/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_774/add_1AddV2lstm_cell_774/mul:z:0lstm_cell_774/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_774/Sigmoid_2Sigmoidlstm_cell_774/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_774/Relu_1Relulstm_cell_774/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_774/mul_2Mullstm_cell_774/Sigmoid_2:y:0"lstm_cell_774/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_774_matmul_readvariableop_resource.lstm_cell_774_matmul_1_readvariableop_resource-lstm_cell_774_biasadd_readvariableop_resource*
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
while_body_4739542*
condR
while_cond_4739541*K
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
NoOpNoOp%^lstm_cell_774/BiasAdd/ReadVariableOp$^lstm_cell_774/MatMul/ReadVariableOp&^lstm_cell_774/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_774/BiasAdd/ReadVariableOp$lstm_cell_774/BiasAdd/ReadVariableOp2J
#lstm_cell_774/MatMul/ReadVariableOp#lstm_cell_774/MatMul/ReadVariableOp2N
%lstm_cell_774/MatMul_1/ReadVariableOp%lstm_cell_774/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
while_cond_4736892
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4736892___redundant_placeholder05
1while_while_cond_4736892___redundant_placeholder15
1while_while_cond_4736892___redundant_placeholder25
1while_while_cond_4736892___redundant_placeholder3
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
while_body_4737243
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_776_4737267_0:2(/
while_lstm_cell_776_4737269_0:
(+
while_lstm_cell_776_4737271_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_776_4737267:2(-
while_lstm_cell_776_4737269:
()
while_lstm_cell_776_4737271:(??+while/lstm_cell_776/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_776/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_776_4737267_0while_lstm_cell_776_4737269_0while_lstm_cell_776_4737271_0*
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
J__inference_lstm_cell_776_layer_call_and_return_conditional_losses_4737184?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_776/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_776/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_776/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_776/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_776_4737267while_lstm_cell_776_4737267_0"<
while_lstm_cell_776_4737269while_lstm_cell_776_4737269_0"<
while_lstm_cell_776_4737271while_lstm_cell_776_4737271_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_776/StatefulPartitionedCall+while/lstm_cell_776/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_776_layer_call_and_return_conditional_losses_4741001
inputs_0>
,lstm_cell_776_matmul_readvariableop_resource:2(@
.lstm_cell_776_matmul_1_readvariableop_resource:
(;
-lstm_cell_776_biasadd_readvariableop_resource:(
identity??$lstm_cell_776/BiasAdd/ReadVariableOp?#lstm_cell_776/MatMul/ReadVariableOp?%lstm_cell_776/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_776/MatMul/ReadVariableOpReadVariableOp,lstm_cell_776_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_776/MatMulMatMulstrided_slice_2:output:0+lstm_cell_776/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_776/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_776_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_776/MatMul_1MatMulzeros:output:0-lstm_cell_776/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_776/addAddV2lstm_cell_776/MatMul:product:0 lstm_cell_776/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_776/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_776_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_776/BiasAddBiasAddlstm_cell_776/add:z:0,lstm_cell_776/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_776/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_776/splitSplit&lstm_cell_776/split/split_dim:output:0lstm_cell_776/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_776/SigmoidSigmoidlstm_cell_776/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_776/Sigmoid_1Sigmoidlstm_cell_776/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_776/mulMullstm_cell_776/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_776/ReluRelulstm_cell_776/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_776/mul_1Mullstm_cell_776/Sigmoid:y:0 lstm_cell_776/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_776/add_1AddV2lstm_cell_776/mul:z:0lstm_cell_776/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_776/Sigmoid_2Sigmoidlstm_cell_776/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_776/Relu_1Relulstm_cell_776/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_776/mul_2Mullstm_cell_776/Sigmoid_2:y:0"lstm_cell_776/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_776_matmul_readvariableop_resource.lstm_cell_776_matmul_1_readvariableop_resource-lstm_cell_776_biasadd_readvariableop_resource*
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
while_body_4740917*
condR
while_cond_4740916*K
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
NoOpNoOp%^lstm_cell_776/BiasAdd/ReadVariableOp$^lstm_cell_776/MatMul/ReadVariableOp&^lstm_cell_776/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_776/BiasAdd/ReadVariableOp$lstm_cell_776/BiasAdd/ReadVariableOp2J
#lstm_cell_776/MatMul/ReadVariableOp#lstm_cell_776/MatMul/ReadVariableOp2N
%lstm_cell_776/MatMul_1/ReadVariableOp%lstm_cell_776/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?
?
*__inference_lstm_776_layer_call_fn_4740704

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
E__inference_lstm_776_layer_call_and_return_conditional_losses_4737770o
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
J__inference_lstm_cell_776_layer_call_and_return_conditional_losses_4737184

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
+__inference_dense_258_layer_call_fn_4741296

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
F__inference_dense_258_layer_call_and_return_conditional_losses_4737788o
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
?J
?
E__inference_lstm_774_layer_call_and_return_conditional_losses_4737470

inputs?
,lstm_cell_774_matmul_readvariableop_resource:	?A
.lstm_cell_774_matmul_1_readvariableop_resource:	d?<
-lstm_cell_774_biasadd_readvariableop_resource:	?
identity??$lstm_cell_774/BiasAdd/ReadVariableOp?#lstm_cell_774/MatMul/ReadVariableOp?%lstm_cell_774/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_774/MatMul/ReadVariableOpReadVariableOp,lstm_cell_774_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_774/MatMulMatMulstrided_slice_2:output:0+lstm_cell_774/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_774/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_774_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_774/MatMul_1MatMulzeros:output:0-lstm_cell_774/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_774/addAddV2lstm_cell_774/MatMul:product:0 lstm_cell_774/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_774/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_774_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_774/BiasAddBiasAddlstm_cell_774/add:z:0,lstm_cell_774/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_774/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_774/splitSplit&lstm_cell_774/split/split_dim:output:0lstm_cell_774/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_774/SigmoidSigmoidlstm_cell_774/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_774/Sigmoid_1Sigmoidlstm_cell_774/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_774/mulMullstm_cell_774/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_774/ReluRelulstm_cell_774/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_774/mul_1Mullstm_cell_774/Sigmoid:y:0 lstm_cell_774/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_774/add_1AddV2lstm_cell_774/mul:z:0lstm_cell_774/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_774/Sigmoid_2Sigmoidlstm_cell_774/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_774/Relu_1Relulstm_cell_774/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_774/mul_2Mullstm_cell_774/Sigmoid_2:y:0"lstm_cell_774/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_774_matmul_readvariableop_resource.lstm_cell_774_matmul_1_readvariableop_resource-lstm_cell_774_biasadd_readvariableop_resource*
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
while_body_4737386*
condR
while_cond_4737385*K
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
NoOpNoOp%^lstm_cell_774/BiasAdd/ReadVariableOp$^lstm_cell_774/MatMul/ReadVariableOp&^lstm_cell_774/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_774/BiasAdd/ReadVariableOp$lstm_cell_774/BiasAdd/ReadVariableOp2J
#lstm_cell_774/MatMul/ReadVariableOp#lstm_cell_774/MatMul/ReadVariableOp2N
%lstm_cell_774/MatMul_1/ReadVariableOp%lstm_cell_774/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
while_body_4740587
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_775_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_775_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_775_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_775_matmul_readvariableop_resource:	d?G
4while_lstm_cell_775_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_775_biasadd_readvariableop_resource:	???*while/lstm_cell_775/BiasAdd/ReadVariableOp?)while/lstm_cell_775/MatMul/ReadVariableOp?+while/lstm_cell_775/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_775/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_775_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_775/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_775/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_775/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_775_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_775/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_775/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_775/addAddV2$while/lstm_cell_775/MatMul:product:0&while/lstm_cell_775/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_775/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_775_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_775/BiasAddBiasAddwhile/lstm_cell_775/add:z:02while/lstm_cell_775/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_775/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_775/splitSplit,while/lstm_cell_775/split/split_dim:output:0$while/lstm_cell_775/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_775/SigmoidSigmoid"while/lstm_cell_775/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_775/Sigmoid_1Sigmoid"while/lstm_cell_775/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_775/mulMul!while/lstm_cell_775/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_775/ReluRelu"while/lstm_cell_775/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_775/mul_1Mulwhile/lstm_cell_775/Sigmoid:y:0&while/lstm_cell_775/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_775/add_1AddV2while/lstm_cell_775/mul:z:0while/lstm_cell_775/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_775/Sigmoid_2Sigmoid"while/lstm_cell_775/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_775/Relu_1Reluwhile/lstm_cell_775/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_775/mul_2Mul!while/lstm_cell_775/Sigmoid_2:y:0(while/lstm_cell_775/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_775/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_775/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_775/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_775/BiasAdd/ReadVariableOp*^while/lstm_cell_775/MatMul/ReadVariableOp,^while/lstm_cell_775/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_775_biasadd_readvariableop_resource5while_lstm_cell_775_biasadd_readvariableop_resource_0"n
4while_lstm_cell_775_matmul_1_readvariableop_resource6while_lstm_cell_775_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_775_matmul_readvariableop_resource4while_lstm_cell_775_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_775/BiasAdd/ReadVariableOp*while/lstm_cell_775/BiasAdd/ReadVariableOp2V
)while/lstm_cell_775/MatMul/ReadVariableOp)while/lstm_cell_775/MatMul/ReadVariableOp2Z
+while/lstm_cell_775/MatMul_1/ReadVariableOp+while/lstm_cell_775/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_774_layer_call_fn_4739472

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
E__inference_lstm_774_layer_call_and_return_conditional_losses_4737470s
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
?
*__inference_lstm_776_layer_call_fn_4740693
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
E__inference_lstm_776_layer_call_and_return_conditional_losses_4737312o
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

?
lstm_774_while_cond_4738643.
*lstm_774_while_lstm_774_while_loop_counter4
0lstm_774_while_lstm_774_while_maximum_iterations
lstm_774_while_placeholder 
lstm_774_while_placeholder_1 
lstm_774_while_placeholder_2 
lstm_774_while_placeholder_30
,lstm_774_while_less_lstm_774_strided_slice_1G
Clstm_774_while_lstm_774_while_cond_4738643___redundant_placeholder0G
Clstm_774_while_lstm_774_while_cond_4738643___redundant_placeholder1G
Clstm_774_while_lstm_774_while_cond_4738643___redundant_placeholder2G
Clstm_774_while_lstm_774_while_cond_4738643___redundant_placeholder3
lstm_774_while_identity
?
lstm_774/while/LessLesslstm_774_while_placeholder,lstm_774_while_less_lstm_774_strided_slice_1*
T0*
_output_shapes
: ]
lstm_774/while/IdentityIdentitylstm_774/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_774_while_identity lstm_774/while/Identity:output:0*(
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
lstm_775_while_cond_4739209.
*lstm_775_while_lstm_775_while_loop_counter4
0lstm_775_while_lstm_775_while_maximum_iterations
lstm_775_while_placeholder 
lstm_775_while_placeholder_1 
lstm_775_while_placeholder_2 
lstm_775_while_placeholder_30
,lstm_775_while_less_lstm_775_strided_slice_1G
Clstm_775_while_lstm_775_while_cond_4739209___redundant_placeholder0G
Clstm_775_while_lstm_775_while_cond_4739209___redundant_placeholder1G
Clstm_775_while_lstm_775_while_cond_4739209___redundant_placeholder2G
Clstm_775_while_lstm_775_while_cond_4739209___redundant_placeholder3
lstm_775_while_identity
?
lstm_775/while/LessLesslstm_775_while_placeholder,lstm_775_while_less_lstm_775_strided_slice_1*
T0*
_output_shapes
: ]
lstm_775/while/IdentityIdentitylstm_775/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_775_while_identity lstm_775/while/Identity:output:0*(
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
E__inference_lstm_774_layer_call_and_return_conditional_losses_4736612

inputs(
lstm_cell_774_4736530:	?(
lstm_cell_774_4736532:	d?$
lstm_cell_774_4736534:	?
identity??%lstm_cell_774/StatefulPartitionedCall?while;
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
%lstm_cell_774/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_774_4736530lstm_cell_774_4736532lstm_cell_774_4736534*
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
J__inference_lstm_cell_774_layer_call_and_return_conditional_losses_4736484n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_774_4736530lstm_cell_774_4736532lstm_cell_774_4736534*
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
while_body_4736543*
condR
while_cond_4736542*K
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
NoOpNoOp&^lstm_cell_774/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_774/StatefulPartitionedCall%lstm_cell_774/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
??
?
K__inference_sequential_258_layer_call_and_return_conditional_losses_4739439

inputsH
5lstm_774_lstm_cell_774_matmul_readvariableop_resource:	?J
7lstm_774_lstm_cell_774_matmul_1_readvariableop_resource:	d?E
6lstm_774_lstm_cell_774_biasadd_readvariableop_resource:	?H
5lstm_775_lstm_cell_775_matmul_readvariableop_resource:	d?J
7lstm_775_lstm_cell_775_matmul_1_readvariableop_resource:	2?E
6lstm_775_lstm_cell_775_biasadd_readvariableop_resource:	?G
5lstm_776_lstm_cell_776_matmul_readvariableop_resource:2(I
7lstm_776_lstm_cell_776_matmul_1_readvariableop_resource:
(D
6lstm_776_lstm_cell_776_biasadd_readvariableop_resource:(:
(dense_258_matmul_readvariableop_resource:
7
)dense_258_biasadd_readvariableop_resource:
identity?? dense_258/BiasAdd/ReadVariableOp?dense_258/MatMul/ReadVariableOp?-lstm_774/lstm_cell_774/BiasAdd/ReadVariableOp?,lstm_774/lstm_cell_774/MatMul/ReadVariableOp?.lstm_774/lstm_cell_774/MatMul_1/ReadVariableOp?lstm_774/while?-lstm_775/lstm_cell_775/BiasAdd/ReadVariableOp?,lstm_775/lstm_cell_775/MatMul/ReadVariableOp?.lstm_775/lstm_cell_775/MatMul_1/ReadVariableOp?lstm_775/while?-lstm_776/lstm_cell_776/BiasAdd/ReadVariableOp?,lstm_776/lstm_cell_776/MatMul/ReadVariableOp?.lstm_776/lstm_cell_776/MatMul_1/ReadVariableOp?lstm_776/whileD
lstm_774/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_774/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_774/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_774/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_774/strided_sliceStridedSlicelstm_774/Shape:output:0%lstm_774/strided_slice/stack:output:0'lstm_774/strided_slice/stack_1:output:0'lstm_774/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_774/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_774/zeros/packedPacklstm_774/strided_slice:output:0 lstm_774/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_774/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_774/zerosFilllstm_774/zeros/packed:output:0lstm_774/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_774/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_774/zeros_1/packedPacklstm_774/strided_slice:output:0"lstm_774/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_774/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_774/zeros_1Fill lstm_774/zeros_1/packed:output:0lstm_774/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_774/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_774/transpose	Transposeinputs lstm_774/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_774/Shape_1Shapelstm_774/transpose:y:0*
T0*
_output_shapes
:h
lstm_774/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_774/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_774/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_774/strided_slice_1StridedSlicelstm_774/Shape_1:output:0'lstm_774/strided_slice_1/stack:output:0)lstm_774/strided_slice_1/stack_1:output:0)lstm_774/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_774/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_774/TensorArrayV2TensorListReserve-lstm_774/TensorArrayV2/element_shape:output:0!lstm_774/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_774/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_774/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_774/transpose:y:0Glstm_774/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_774/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_774/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_774/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_774/strided_slice_2StridedSlicelstm_774/transpose:y:0'lstm_774/strided_slice_2/stack:output:0)lstm_774/strided_slice_2/stack_1:output:0)lstm_774/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_774/lstm_cell_774/MatMul/ReadVariableOpReadVariableOp5lstm_774_lstm_cell_774_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_774/lstm_cell_774/MatMulMatMul!lstm_774/strided_slice_2:output:04lstm_774/lstm_cell_774/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_774/lstm_cell_774/MatMul_1/ReadVariableOpReadVariableOp7lstm_774_lstm_cell_774_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_774/lstm_cell_774/MatMul_1MatMullstm_774/zeros:output:06lstm_774/lstm_cell_774/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_774/lstm_cell_774/addAddV2'lstm_774/lstm_cell_774/MatMul:product:0)lstm_774/lstm_cell_774/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_774/lstm_cell_774/BiasAdd/ReadVariableOpReadVariableOp6lstm_774_lstm_cell_774_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_774/lstm_cell_774/BiasAddBiasAddlstm_774/lstm_cell_774/add:z:05lstm_774/lstm_cell_774/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_774/lstm_cell_774/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_774/lstm_cell_774/splitSplit/lstm_774/lstm_cell_774/split/split_dim:output:0'lstm_774/lstm_cell_774/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_774/lstm_cell_774/SigmoidSigmoid%lstm_774/lstm_cell_774/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_774/lstm_cell_774/Sigmoid_1Sigmoid%lstm_774/lstm_cell_774/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_774/lstm_cell_774/mulMul$lstm_774/lstm_cell_774/Sigmoid_1:y:0lstm_774/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_774/lstm_cell_774/ReluRelu%lstm_774/lstm_cell_774/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_774/lstm_cell_774/mul_1Mul"lstm_774/lstm_cell_774/Sigmoid:y:0)lstm_774/lstm_cell_774/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_774/lstm_cell_774/add_1AddV2lstm_774/lstm_cell_774/mul:z:0 lstm_774/lstm_cell_774/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_774/lstm_cell_774/Sigmoid_2Sigmoid%lstm_774/lstm_cell_774/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_774/lstm_cell_774/Relu_1Relu lstm_774/lstm_cell_774/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_774/lstm_cell_774/mul_2Mul$lstm_774/lstm_cell_774/Sigmoid_2:y:0+lstm_774/lstm_cell_774/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_774/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_774/TensorArrayV2_1TensorListReserve/lstm_774/TensorArrayV2_1/element_shape:output:0!lstm_774/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_774/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_774/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_774/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_774/whileWhile$lstm_774/while/loop_counter:output:0*lstm_774/while/maximum_iterations:output:0lstm_774/time:output:0!lstm_774/TensorArrayV2_1:handle:0lstm_774/zeros:output:0lstm_774/zeros_1:output:0!lstm_774/strided_slice_1:output:0@lstm_774/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_774_lstm_cell_774_matmul_readvariableop_resource7lstm_774_lstm_cell_774_matmul_1_readvariableop_resource6lstm_774_lstm_cell_774_biasadd_readvariableop_resource*
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
lstm_774_while_body_4739071*'
condR
lstm_774_while_cond_4739070*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_774/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_774/TensorArrayV2Stack/TensorListStackTensorListStacklstm_774/while:output:3Blstm_774/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_774/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_774/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_774/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_774/strided_slice_3StridedSlice4lstm_774/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_774/strided_slice_3/stack:output:0)lstm_774/strided_slice_3/stack_1:output:0)lstm_774/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_774/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_774/transpose_1	Transpose4lstm_774/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_774/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_774/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_775/ShapeShapelstm_774/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_775/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_775/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_775/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_775/strided_sliceStridedSlicelstm_775/Shape:output:0%lstm_775/strided_slice/stack:output:0'lstm_775/strided_slice/stack_1:output:0'lstm_775/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_775/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_775/zeros/packedPacklstm_775/strided_slice:output:0 lstm_775/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_775/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_775/zerosFilllstm_775/zeros/packed:output:0lstm_775/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_775/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_775/zeros_1/packedPacklstm_775/strided_slice:output:0"lstm_775/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_775/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_775/zeros_1Fill lstm_775/zeros_1/packed:output:0lstm_775/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_775/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_775/transpose	Transposelstm_774/transpose_1:y:0 lstm_775/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_775/Shape_1Shapelstm_775/transpose:y:0*
T0*
_output_shapes
:h
lstm_775/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_775/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_775/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_775/strided_slice_1StridedSlicelstm_775/Shape_1:output:0'lstm_775/strided_slice_1/stack:output:0)lstm_775/strided_slice_1/stack_1:output:0)lstm_775/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_775/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_775/TensorArrayV2TensorListReserve-lstm_775/TensorArrayV2/element_shape:output:0!lstm_775/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_775/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_775/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_775/transpose:y:0Glstm_775/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_775/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_775/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_775/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_775/strided_slice_2StridedSlicelstm_775/transpose:y:0'lstm_775/strided_slice_2/stack:output:0)lstm_775/strided_slice_2/stack_1:output:0)lstm_775/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_775/lstm_cell_775/MatMul/ReadVariableOpReadVariableOp5lstm_775_lstm_cell_775_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_775/lstm_cell_775/MatMulMatMul!lstm_775/strided_slice_2:output:04lstm_775/lstm_cell_775/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_775/lstm_cell_775/MatMul_1/ReadVariableOpReadVariableOp7lstm_775_lstm_cell_775_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_775/lstm_cell_775/MatMul_1MatMullstm_775/zeros:output:06lstm_775/lstm_cell_775/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_775/lstm_cell_775/addAddV2'lstm_775/lstm_cell_775/MatMul:product:0)lstm_775/lstm_cell_775/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_775/lstm_cell_775/BiasAdd/ReadVariableOpReadVariableOp6lstm_775_lstm_cell_775_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_775/lstm_cell_775/BiasAddBiasAddlstm_775/lstm_cell_775/add:z:05lstm_775/lstm_cell_775/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_775/lstm_cell_775/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_775/lstm_cell_775/splitSplit/lstm_775/lstm_cell_775/split/split_dim:output:0'lstm_775/lstm_cell_775/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_775/lstm_cell_775/SigmoidSigmoid%lstm_775/lstm_cell_775/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_775/lstm_cell_775/Sigmoid_1Sigmoid%lstm_775/lstm_cell_775/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_775/lstm_cell_775/mulMul$lstm_775/lstm_cell_775/Sigmoid_1:y:0lstm_775/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_775/lstm_cell_775/ReluRelu%lstm_775/lstm_cell_775/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_775/lstm_cell_775/mul_1Mul"lstm_775/lstm_cell_775/Sigmoid:y:0)lstm_775/lstm_cell_775/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_775/lstm_cell_775/add_1AddV2lstm_775/lstm_cell_775/mul:z:0 lstm_775/lstm_cell_775/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_775/lstm_cell_775/Sigmoid_2Sigmoid%lstm_775/lstm_cell_775/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_775/lstm_cell_775/Relu_1Relu lstm_775/lstm_cell_775/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_775/lstm_cell_775/mul_2Mul$lstm_775/lstm_cell_775/Sigmoid_2:y:0+lstm_775/lstm_cell_775/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_775/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_775/TensorArrayV2_1TensorListReserve/lstm_775/TensorArrayV2_1/element_shape:output:0!lstm_775/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_775/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_775/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_775/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_775/whileWhile$lstm_775/while/loop_counter:output:0*lstm_775/while/maximum_iterations:output:0lstm_775/time:output:0!lstm_775/TensorArrayV2_1:handle:0lstm_775/zeros:output:0lstm_775/zeros_1:output:0!lstm_775/strided_slice_1:output:0@lstm_775/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_775_lstm_cell_775_matmul_readvariableop_resource7lstm_775_lstm_cell_775_matmul_1_readvariableop_resource6lstm_775_lstm_cell_775_biasadd_readvariableop_resource*
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
lstm_775_while_body_4739210*'
condR
lstm_775_while_cond_4739209*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_775/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_775/TensorArrayV2Stack/TensorListStackTensorListStacklstm_775/while:output:3Blstm_775/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_775/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_775/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_775/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_775/strided_slice_3StridedSlice4lstm_775/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_775/strided_slice_3/stack:output:0)lstm_775/strided_slice_3/stack_1:output:0)lstm_775/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_775/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_775/transpose_1	Transpose4lstm_775/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_775/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_775/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_776/ShapeShapelstm_775/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_776/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_776/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_776/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_776/strided_sliceStridedSlicelstm_776/Shape:output:0%lstm_776/strided_slice/stack:output:0'lstm_776/strided_slice/stack_1:output:0'lstm_776/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_776/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_776/zeros/packedPacklstm_776/strided_slice:output:0 lstm_776/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_776/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_776/zerosFilllstm_776/zeros/packed:output:0lstm_776/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_776/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_776/zeros_1/packedPacklstm_776/strided_slice:output:0"lstm_776/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_776/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_776/zeros_1Fill lstm_776/zeros_1/packed:output:0lstm_776/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_776/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_776/transpose	Transposelstm_775/transpose_1:y:0 lstm_776/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_776/Shape_1Shapelstm_776/transpose:y:0*
T0*
_output_shapes
:h
lstm_776/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_776/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_776/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_776/strided_slice_1StridedSlicelstm_776/Shape_1:output:0'lstm_776/strided_slice_1/stack:output:0)lstm_776/strided_slice_1/stack_1:output:0)lstm_776/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_776/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_776/TensorArrayV2TensorListReserve-lstm_776/TensorArrayV2/element_shape:output:0!lstm_776/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_776/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_776/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_776/transpose:y:0Glstm_776/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_776/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_776/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_776/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_776/strided_slice_2StridedSlicelstm_776/transpose:y:0'lstm_776/strided_slice_2/stack:output:0)lstm_776/strided_slice_2/stack_1:output:0)lstm_776/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_776/lstm_cell_776/MatMul/ReadVariableOpReadVariableOp5lstm_776_lstm_cell_776_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_776/lstm_cell_776/MatMulMatMul!lstm_776/strided_slice_2:output:04lstm_776/lstm_cell_776/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_776/lstm_cell_776/MatMul_1/ReadVariableOpReadVariableOp7lstm_776_lstm_cell_776_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_776/lstm_cell_776/MatMul_1MatMullstm_776/zeros:output:06lstm_776/lstm_cell_776/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_776/lstm_cell_776/addAddV2'lstm_776/lstm_cell_776/MatMul:product:0)lstm_776/lstm_cell_776/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_776/lstm_cell_776/BiasAdd/ReadVariableOpReadVariableOp6lstm_776_lstm_cell_776_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_776/lstm_cell_776/BiasAddBiasAddlstm_776/lstm_cell_776/add:z:05lstm_776/lstm_cell_776/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_776/lstm_cell_776/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_776/lstm_cell_776/splitSplit/lstm_776/lstm_cell_776/split/split_dim:output:0'lstm_776/lstm_cell_776/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_776/lstm_cell_776/SigmoidSigmoid%lstm_776/lstm_cell_776/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_776/lstm_cell_776/Sigmoid_1Sigmoid%lstm_776/lstm_cell_776/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_776/lstm_cell_776/mulMul$lstm_776/lstm_cell_776/Sigmoid_1:y:0lstm_776/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_776/lstm_cell_776/ReluRelu%lstm_776/lstm_cell_776/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_776/lstm_cell_776/mul_1Mul"lstm_776/lstm_cell_776/Sigmoid:y:0)lstm_776/lstm_cell_776/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_776/lstm_cell_776/add_1AddV2lstm_776/lstm_cell_776/mul:z:0 lstm_776/lstm_cell_776/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_776/lstm_cell_776/Sigmoid_2Sigmoid%lstm_776/lstm_cell_776/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_776/lstm_cell_776/Relu_1Relu lstm_776/lstm_cell_776/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_776/lstm_cell_776/mul_2Mul$lstm_776/lstm_cell_776/Sigmoid_2:y:0+lstm_776/lstm_cell_776/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_776/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_776/TensorArrayV2_1TensorListReserve/lstm_776/TensorArrayV2_1/element_shape:output:0!lstm_776/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_776/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_776/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_776/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_776/whileWhile$lstm_776/while/loop_counter:output:0*lstm_776/while/maximum_iterations:output:0lstm_776/time:output:0!lstm_776/TensorArrayV2_1:handle:0lstm_776/zeros:output:0lstm_776/zeros_1:output:0!lstm_776/strided_slice_1:output:0@lstm_776/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_776_lstm_cell_776_matmul_readvariableop_resource7lstm_776_lstm_cell_776_matmul_1_readvariableop_resource6lstm_776_lstm_cell_776_biasadd_readvariableop_resource*
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
lstm_776_while_body_4739349*'
condR
lstm_776_while_cond_4739348*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_776/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_776/TensorArrayV2Stack/TensorListStackTensorListStacklstm_776/while:output:3Blstm_776/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_776/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_776/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_776/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_776/strided_slice_3StridedSlice4lstm_776/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_776/strided_slice_3/stack:output:0)lstm_776/strided_slice_3/stack_1:output:0)lstm_776/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_776/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_776/transpose_1	Transpose4lstm_776/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_776/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_776/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_258/MatMul/ReadVariableOpReadVariableOp(dense_258_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_258/MatMulMatMul!lstm_776/strided_slice_3:output:0'dense_258/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_258/BiasAdd/ReadVariableOpReadVariableOp)dense_258_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_258/BiasAddBiasAdddense_258/MatMul:product:0(dense_258/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_258/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_258/BiasAdd/ReadVariableOp ^dense_258/MatMul/ReadVariableOp.^lstm_774/lstm_cell_774/BiasAdd/ReadVariableOp-^lstm_774/lstm_cell_774/MatMul/ReadVariableOp/^lstm_774/lstm_cell_774/MatMul_1/ReadVariableOp^lstm_774/while.^lstm_775/lstm_cell_775/BiasAdd/ReadVariableOp-^lstm_775/lstm_cell_775/MatMul/ReadVariableOp/^lstm_775/lstm_cell_775/MatMul_1/ReadVariableOp^lstm_775/while.^lstm_776/lstm_cell_776/BiasAdd/ReadVariableOp-^lstm_776/lstm_cell_776/MatMul/ReadVariableOp/^lstm_776/lstm_cell_776/MatMul_1/ReadVariableOp^lstm_776/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_258/BiasAdd/ReadVariableOp dense_258/BiasAdd/ReadVariableOp2B
dense_258/MatMul/ReadVariableOpdense_258/MatMul/ReadVariableOp2^
-lstm_774/lstm_cell_774/BiasAdd/ReadVariableOp-lstm_774/lstm_cell_774/BiasAdd/ReadVariableOp2\
,lstm_774/lstm_cell_774/MatMul/ReadVariableOp,lstm_774/lstm_cell_774/MatMul/ReadVariableOp2`
.lstm_774/lstm_cell_774/MatMul_1/ReadVariableOp.lstm_774/lstm_cell_774/MatMul_1/ReadVariableOp2 
lstm_774/whilelstm_774/while2^
-lstm_775/lstm_cell_775/BiasAdd/ReadVariableOp-lstm_775/lstm_cell_775/BiasAdd/ReadVariableOp2\
,lstm_775/lstm_cell_775/MatMul/ReadVariableOp,lstm_775/lstm_cell_775/MatMul/ReadVariableOp2`
.lstm_775/lstm_cell_775/MatMul_1/ReadVariableOp.lstm_775/lstm_cell_775/MatMul_1/ReadVariableOp2 
lstm_775/whilelstm_775/while2^
-lstm_776/lstm_cell_776/BiasAdd/ReadVariableOp-lstm_776/lstm_cell_776/BiasAdd/ReadVariableOp2\
,lstm_776/lstm_cell_776/MatMul/ReadVariableOp,lstm_776/lstm_cell_776/MatMul/ReadVariableOp2`
.lstm_776/lstm_cell_776/MatMul_1/ReadVariableOp.lstm_776/lstm_cell_776/MatMul_1/ReadVariableOp2 
lstm_776/whilelstm_776/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?#
?
while_body_4736352
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_774_4736376_0:	?0
while_lstm_cell_774_4736378_0:	d?,
while_lstm_cell_774_4736380_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_774_4736376:	?.
while_lstm_cell_774_4736378:	d?*
while_lstm_cell_774_4736380:	???+while/lstm_cell_774/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_774/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_774_4736376_0while_lstm_cell_774_4736378_0while_lstm_cell_774_4736380_0*
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
J__inference_lstm_cell_774_layer_call_and_return_conditional_losses_4736338?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_774/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_774/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_774/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_774/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_774_4736376while_lstm_cell_774_4736376_0"<
while_lstm_cell_774_4736378while_lstm_cell_774_4736378_0"<
while_lstm_cell_774_4736380while_lstm_cell_774_4736380_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_774/StatefulPartitionedCall+while/lstm_cell_774/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_776_layer_call_and_return_conditional_losses_4737121

inputs'
lstm_cell_776_4737039:2('
lstm_cell_776_4737041:
(#
lstm_cell_776_4737043:(
identity??%lstm_cell_776/StatefulPartitionedCall?while;
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
%lstm_cell_776/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_776_4737039lstm_cell_776_4737041lstm_cell_776_4737043*
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
J__inference_lstm_cell_776_layer_call_and_return_conditional_losses_4737038n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_776_4737039lstm_cell_776_4737041lstm_cell_776_4737043*
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
while_body_4737052*
condR
while_cond_4737051*K
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
NoOpNoOp&^lstm_cell_776/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_776/StatefulPartitionedCall%lstm_cell_776/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?
?
while_cond_4740916
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4740916___redundant_placeholder05
1while_while_cond_4740916___redundant_placeholder15
1while_while_cond_4740916___redundant_placeholder25
1while_while_cond_4740916___redundant_placeholder3
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

lstm_774_while_body_4738644.
*lstm_774_while_lstm_774_while_loop_counter4
0lstm_774_while_lstm_774_while_maximum_iterations
lstm_774_while_placeholder 
lstm_774_while_placeholder_1 
lstm_774_while_placeholder_2 
lstm_774_while_placeholder_3-
)lstm_774_while_lstm_774_strided_slice_1_0i
elstm_774_while_tensorarrayv2read_tensorlistgetitem_lstm_774_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_774_while_lstm_cell_774_matmul_readvariableop_resource_0:	?R
?lstm_774_while_lstm_cell_774_matmul_1_readvariableop_resource_0:	d?M
>lstm_774_while_lstm_cell_774_biasadd_readvariableop_resource_0:	?
lstm_774_while_identity
lstm_774_while_identity_1
lstm_774_while_identity_2
lstm_774_while_identity_3
lstm_774_while_identity_4
lstm_774_while_identity_5+
'lstm_774_while_lstm_774_strided_slice_1g
clstm_774_while_tensorarrayv2read_tensorlistgetitem_lstm_774_tensorarrayunstack_tensorlistfromtensorN
;lstm_774_while_lstm_cell_774_matmul_readvariableop_resource:	?P
=lstm_774_while_lstm_cell_774_matmul_1_readvariableop_resource:	d?K
<lstm_774_while_lstm_cell_774_biasadd_readvariableop_resource:	???3lstm_774/while/lstm_cell_774/BiasAdd/ReadVariableOp?2lstm_774/while/lstm_cell_774/MatMul/ReadVariableOp?4lstm_774/while/lstm_cell_774/MatMul_1/ReadVariableOp?
@lstm_774/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_774/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_774_while_tensorarrayv2read_tensorlistgetitem_lstm_774_tensorarrayunstack_tensorlistfromtensor_0lstm_774_while_placeholderIlstm_774/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_774/while/lstm_cell_774/MatMul/ReadVariableOpReadVariableOp=lstm_774_while_lstm_cell_774_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_774/while/lstm_cell_774/MatMulMatMul9lstm_774/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_774/while/lstm_cell_774/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_774/while/lstm_cell_774/MatMul_1/ReadVariableOpReadVariableOp?lstm_774_while_lstm_cell_774_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_774/while/lstm_cell_774/MatMul_1MatMullstm_774_while_placeholder_2<lstm_774/while/lstm_cell_774/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_774/while/lstm_cell_774/addAddV2-lstm_774/while/lstm_cell_774/MatMul:product:0/lstm_774/while/lstm_cell_774/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_774/while/lstm_cell_774/BiasAdd/ReadVariableOpReadVariableOp>lstm_774_while_lstm_cell_774_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_774/while/lstm_cell_774/BiasAddBiasAdd$lstm_774/while/lstm_cell_774/add:z:0;lstm_774/while/lstm_cell_774/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_774/while/lstm_cell_774/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_774/while/lstm_cell_774/splitSplit5lstm_774/while/lstm_cell_774/split/split_dim:output:0-lstm_774/while/lstm_cell_774/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_774/while/lstm_cell_774/SigmoidSigmoid+lstm_774/while/lstm_cell_774/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_774/while/lstm_cell_774/Sigmoid_1Sigmoid+lstm_774/while/lstm_cell_774/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_774/while/lstm_cell_774/mulMul*lstm_774/while/lstm_cell_774/Sigmoid_1:y:0lstm_774_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_774/while/lstm_cell_774/ReluRelu+lstm_774/while/lstm_cell_774/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_774/while/lstm_cell_774/mul_1Mul(lstm_774/while/lstm_cell_774/Sigmoid:y:0/lstm_774/while/lstm_cell_774/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_774/while/lstm_cell_774/add_1AddV2$lstm_774/while/lstm_cell_774/mul:z:0&lstm_774/while/lstm_cell_774/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_774/while/lstm_cell_774/Sigmoid_2Sigmoid+lstm_774/while/lstm_cell_774/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_774/while/lstm_cell_774/Relu_1Relu&lstm_774/while/lstm_cell_774/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_774/while/lstm_cell_774/mul_2Mul*lstm_774/while/lstm_cell_774/Sigmoid_2:y:01lstm_774/while/lstm_cell_774/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_774/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_774_while_placeholder_1lstm_774_while_placeholder&lstm_774/while/lstm_cell_774/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_774/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_774/while/addAddV2lstm_774_while_placeholderlstm_774/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_774/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_774/while/add_1AddV2*lstm_774_while_lstm_774_while_loop_counterlstm_774/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_774/while/IdentityIdentitylstm_774/while/add_1:z:0^lstm_774/while/NoOp*
T0*
_output_shapes
: ?
lstm_774/while/Identity_1Identity0lstm_774_while_lstm_774_while_maximum_iterations^lstm_774/while/NoOp*
T0*
_output_shapes
: t
lstm_774/while/Identity_2Identitylstm_774/while/add:z:0^lstm_774/while/NoOp*
T0*
_output_shapes
: ?
lstm_774/while/Identity_3IdentityClstm_774/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_774/while/NoOp*
T0*
_output_shapes
: ?
lstm_774/while/Identity_4Identity&lstm_774/while/lstm_cell_774/mul_2:z:0^lstm_774/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_774/while/Identity_5Identity&lstm_774/while/lstm_cell_774/add_1:z:0^lstm_774/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_774/while/NoOpNoOp4^lstm_774/while/lstm_cell_774/BiasAdd/ReadVariableOp3^lstm_774/while/lstm_cell_774/MatMul/ReadVariableOp5^lstm_774/while/lstm_cell_774/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_774_while_identity lstm_774/while/Identity:output:0"?
lstm_774_while_identity_1"lstm_774/while/Identity_1:output:0"?
lstm_774_while_identity_2"lstm_774/while/Identity_2:output:0"?
lstm_774_while_identity_3"lstm_774/while/Identity_3:output:0"?
lstm_774_while_identity_4"lstm_774/while/Identity_4:output:0"?
lstm_774_while_identity_5"lstm_774/while/Identity_5:output:0"T
'lstm_774_while_lstm_774_strided_slice_1)lstm_774_while_lstm_774_strided_slice_1_0"~
<lstm_774_while_lstm_cell_774_biasadd_readvariableop_resource>lstm_774_while_lstm_cell_774_biasadd_readvariableop_resource_0"?
=lstm_774_while_lstm_cell_774_matmul_1_readvariableop_resource?lstm_774_while_lstm_cell_774_matmul_1_readvariableop_resource_0"|
;lstm_774_while_lstm_cell_774_matmul_readvariableop_resource=lstm_774_while_lstm_cell_774_matmul_readvariableop_resource_0"?
clstm_774_while_tensorarrayv2read_tensorlistgetitem_lstm_774_tensorarrayunstack_tensorlistfromtensorelstm_774_while_tensorarrayv2read_tensorlistgetitem_lstm_774_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_774/while/lstm_cell_774/BiasAdd/ReadVariableOp3lstm_774/while/lstm_cell_774/BiasAdd/ReadVariableOp2h
2lstm_774/while/lstm_cell_774/MatMul/ReadVariableOp2lstm_774/while/lstm_cell_774/MatMul/ReadVariableOp2l
4lstm_774/while/lstm_cell_774/MatMul_1/ReadVariableOp4lstm_774/while/lstm_cell_774/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_774_layer_call_fn_4739483

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
E__inference_lstm_774_layer_call_and_return_conditional_losses_4738316s
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
while_cond_4739970
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4739970___redundant_placeholder05
1while_while_cond_4739970___redundant_placeholder15
1while_while_cond_4739970___redundant_placeholder25
1while_while_cond_4739970___redundant_placeholder3
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
F__inference_dense_258_layer_call_and_return_conditional_losses_4741306

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
while_body_4739685
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_774_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_774_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_774_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_774_matmul_readvariableop_resource:	?G
4while_lstm_cell_774_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_774_biasadd_readvariableop_resource:	???*while/lstm_cell_774/BiasAdd/ReadVariableOp?)while/lstm_cell_774/MatMul/ReadVariableOp?+while/lstm_cell_774/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_774/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_774_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_774/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_774/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_774/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_774_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_774/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_774/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_774/addAddV2$while/lstm_cell_774/MatMul:product:0&while/lstm_cell_774/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_774/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_774_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_774/BiasAddBiasAddwhile/lstm_cell_774/add:z:02while/lstm_cell_774/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_774/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_774/splitSplit,while/lstm_cell_774/split/split_dim:output:0$while/lstm_cell_774/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_774/SigmoidSigmoid"while/lstm_cell_774/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_774/Sigmoid_1Sigmoid"while/lstm_cell_774/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_774/mulMul!while/lstm_cell_774/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_774/ReluRelu"while/lstm_cell_774/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_774/mul_1Mulwhile/lstm_cell_774/Sigmoid:y:0&while/lstm_cell_774/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_774/add_1AddV2while/lstm_cell_774/mul:z:0while/lstm_cell_774/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_774/Sigmoid_2Sigmoid"while/lstm_cell_774/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_774/Relu_1Reluwhile/lstm_cell_774/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_774/mul_2Mul!while/lstm_cell_774/Sigmoid_2:y:0(while/lstm_cell_774/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_774/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_774/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_774/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_774/BiasAdd/ReadVariableOp*^while/lstm_cell_774/MatMul/ReadVariableOp,^while/lstm_cell_774/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_774_biasadd_readvariableop_resource5while_lstm_cell_774_biasadd_readvariableop_resource_0"n
4while_lstm_cell_774_matmul_1_readvariableop_resource6while_lstm_cell_774_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_774_matmul_readvariableop_resource4while_lstm_cell_774_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_774/BiasAdd/ReadVariableOp*while/lstm_cell_774/BiasAdd/ReadVariableOp2V
)while/lstm_cell_774/MatMul/ReadVariableOp)while/lstm_cell_774/MatMul/ReadVariableOp2Z
+while/lstm_cell_774/MatMul_1/ReadVariableOp+while/lstm_cell_774/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_774_layer_call_and_return_conditional_losses_4741404

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
?J
?
E__inference_lstm_775_layer_call_and_return_conditional_losses_4740671

inputs?
,lstm_cell_775_matmul_readvariableop_resource:	d?A
.lstm_cell_775_matmul_1_readvariableop_resource:	2?<
-lstm_cell_775_biasadd_readvariableop_resource:	?
identity??$lstm_cell_775/BiasAdd/ReadVariableOp?#lstm_cell_775/MatMul/ReadVariableOp?%lstm_cell_775/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_775/MatMul/ReadVariableOpReadVariableOp,lstm_cell_775_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_775/MatMulMatMulstrided_slice_2:output:0+lstm_cell_775/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_775/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_775_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_775/MatMul_1MatMulzeros:output:0-lstm_cell_775/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_775/addAddV2lstm_cell_775/MatMul:product:0 lstm_cell_775/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_775/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_775_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_775/BiasAddBiasAddlstm_cell_775/add:z:0,lstm_cell_775/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_775/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_775/splitSplit&lstm_cell_775/split/split_dim:output:0lstm_cell_775/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_775/SigmoidSigmoidlstm_cell_775/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_775/Sigmoid_1Sigmoidlstm_cell_775/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_775/mulMullstm_cell_775/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_775/ReluRelulstm_cell_775/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_775/mul_1Mullstm_cell_775/Sigmoid:y:0 lstm_cell_775/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_775/add_1AddV2lstm_cell_775/mul:z:0lstm_cell_775/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_775/Sigmoid_2Sigmoidlstm_cell_775/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_775/Relu_1Relulstm_cell_775/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_775/mul_2Mullstm_cell_775/Sigmoid_2:y:0"lstm_cell_775/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_775_matmul_readvariableop_resource.lstm_cell_775_matmul_1_readvariableop_resource-lstm_cell_775_biasadd_readvariableop_resource*
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
while_body_4740587*
condR
while_cond_4740586*K
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
NoOpNoOp%^lstm_cell_775/BiasAdd/ReadVariableOp$^lstm_cell_775/MatMul/ReadVariableOp&^lstm_cell_775/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_775/BiasAdd/ReadVariableOp$lstm_cell_775/BiasAdd/ReadVariableOp2J
#lstm_cell_775/MatMul/ReadVariableOp#lstm_cell_775/MatMul/ReadVariableOp2N
%lstm_cell_775/MatMul_1/ReadVariableOp%lstm_cell_775/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_776_layer_call_and_return_conditional_losses_4737038

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
?
while_cond_4740773
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4740773___redundant_placeholder05
1while_while_cond_4740773___redundant_placeholder15
1while_while_cond_4740773___redundant_placeholder25
1while_while_cond_4740773___redundant_placeholder3
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
E__inference_lstm_775_layer_call_and_return_conditional_losses_4738151

inputs?
,lstm_cell_775_matmul_readvariableop_resource:	d?A
.lstm_cell_775_matmul_1_readvariableop_resource:	2?<
-lstm_cell_775_biasadd_readvariableop_resource:	?
identity??$lstm_cell_775/BiasAdd/ReadVariableOp?#lstm_cell_775/MatMul/ReadVariableOp?%lstm_cell_775/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_775/MatMul/ReadVariableOpReadVariableOp,lstm_cell_775_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_775/MatMulMatMulstrided_slice_2:output:0+lstm_cell_775/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_775/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_775_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_775/MatMul_1MatMulzeros:output:0-lstm_cell_775/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_775/addAddV2lstm_cell_775/MatMul:product:0 lstm_cell_775/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_775/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_775_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_775/BiasAddBiasAddlstm_cell_775/add:z:0,lstm_cell_775/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_775/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_775/splitSplit&lstm_cell_775/split/split_dim:output:0lstm_cell_775/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_775/SigmoidSigmoidlstm_cell_775/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_775/Sigmoid_1Sigmoidlstm_cell_775/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_775/mulMullstm_cell_775/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_775/ReluRelulstm_cell_775/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_775/mul_1Mullstm_cell_775/Sigmoid:y:0 lstm_cell_775/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_775/add_1AddV2lstm_cell_775/mul:z:0lstm_cell_775/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_775/Sigmoid_2Sigmoidlstm_cell_775/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_775/Relu_1Relulstm_cell_775/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_775/mul_2Mullstm_cell_775/Sigmoid_2:y:0"lstm_cell_775/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_775_matmul_readvariableop_resource.lstm_cell_775_matmul_1_readvariableop_resource-lstm_cell_775_biasadd_readvariableop_resource*
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
while_body_4738067*
condR
while_cond_4738066*K
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
NoOpNoOp%^lstm_cell_775/BiasAdd/ReadVariableOp$^lstm_cell_775/MatMul/ReadVariableOp&^lstm_cell_775/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_775/BiasAdd/ReadVariableOp$lstm_cell_775/BiasAdd/ReadVariableOp2J
#lstm_cell_775/MatMul/ReadVariableOp#lstm_cell_775/MatMul/ReadVariableOp2N
%lstm_cell_775/MatMul_1/ReadVariableOp%lstm_cell_775/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
while_cond_4737242
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4737242___redundant_placeholder05
1while_while_cond_4737242___redundant_placeholder15
1while_while_cond_4737242___redundant_placeholder25
1while_while_cond_4737242___redundant_placeholder3
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
*sequential_258_lstm_776_while_body_4736181L
Hsequential_258_lstm_776_while_sequential_258_lstm_776_while_loop_counterR
Nsequential_258_lstm_776_while_sequential_258_lstm_776_while_maximum_iterations-
)sequential_258_lstm_776_while_placeholder/
+sequential_258_lstm_776_while_placeholder_1/
+sequential_258_lstm_776_while_placeholder_2/
+sequential_258_lstm_776_while_placeholder_3K
Gsequential_258_lstm_776_while_sequential_258_lstm_776_strided_slice_1_0?
?sequential_258_lstm_776_while_tensorarrayv2read_tensorlistgetitem_sequential_258_lstm_776_tensorarrayunstack_tensorlistfromtensor_0^
Lsequential_258_lstm_776_while_lstm_cell_776_matmul_readvariableop_resource_0:2(`
Nsequential_258_lstm_776_while_lstm_cell_776_matmul_1_readvariableop_resource_0:
([
Msequential_258_lstm_776_while_lstm_cell_776_biasadd_readvariableop_resource_0:(*
&sequential_258_lstm_776_while_identity,
(sequential_258_lstm_776_while_identity_1,
(sequential_258_lstm_776_while_identity_2,
(sequential_258_lstm_776_while_identity_3,
(sequential_258_lstm_776_while_identity_4,
(sequential_258_lstm_776_while_identity_5I
Esequential_258_lstm_776_while_sequential_258_lstm_776_strided_slice_1?
?sequential_258_lstm_776_while_tensorarrayv2read_tensorlistgetitem_sequential_258_lstm_776_tensorarrayunstack_tensorlistfromtensor\
Jsequential_258_lstm_776_while_lstm_cell_776_matmul_readvariableop_resource:2(^
Lsequential_258_lstm_776_while_lstm_cell_776_matmul_1_readvariableop_resource:
(Y
Ksequential_258_lstm_776_while_lstm_cell_776_biasadd_readvariableop_resource:(??Bsequential_258/lstm_776/while/lstm_cell_776/BiasAdd/ReadVariableOp?Asequential_258/lstm_776/while/lstm_cell_776/MatMul/ReadVariableOp?Csequential_258/lstm_776/while/lstm_cell_776/MatMul_1/ReadVariableOp?
Osequential_258/lstm_776/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
Asequential_258/lstm_776/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_258_lstm_776_while_tensorarrayv2read_tensorlistgetitem_sequential_258_lstm_776_tensorarrayunstack_tensorlistfromtensor_0)sequential_258_lstm_776_while_placeholderXsequential_258/lstm_776/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
Asequential_258/lstm_776/while/lstm_cell_776/MatMul/ReadVariableOpReadVariableOpLsequential_258_lstm_776_while_lstm_cell_776_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
2sequential_258/lstm_776/while/lstm_cell_776/MatMulMatMulHsequential_258/lstm_776/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_258/lstm_776/while/lstm_cell_776/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
Csequential_258/lstm_776/while/lstm_cell_776/MatMul_1/ReadVariableOpReadVariableOpNsequential_258_lstm_776_while_lstm_cell_776_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
4sequential_258/lstm_776/while/lstm_cell_776/MatMul_1MatMul+sequential_258_lstm_776_while_placeholder_2Ksequential_258/lstm_776/while/lstm_cell_776/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
/sequential_258/lstm_776/while/lstm_cell_776/addAddV2<sequential_258/lstm_776/while/lstm_cell_776/MatMul:product:0>sequential_258/lstm_776/while/lstm_cell_776/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
Bsequential_258/lstm_776/while/lstm_cell_776/BiasAdd/ReadVariableOpReadVariableOpMsequential_258_lstm_776_while_lstm_cell_776_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
3sequential_258/lstm_776/while/lstm_cell_776/BiasAddBiasAdd3sequential_258/lstm_776/while/lstm_cell_776/add:z:0Jsequential_258/lstm_776/while/lstm_cell_776/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(}
;sequential_258/lstm_776/while/lstm_cell_776/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_258/lstm_776/while/lstm_cell_776/splitSplitDsequential_258/lstm_776/while/lstm_cell_776/split/split_dim:output:0<sequential_258/lstm_776/while/lstm_cell_776/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
3sequential_258/lstm_776/while/lstm_cell_776/SigmoidSigmoid:sequential_258/lstm_776/while/lstm_cell_776/split:output:0*
T0*'
_output_shapes
:?????????
?
5sequential_258/lstm_776/while/lstm_cell_776/Sigmoid_1Sigmoid:sequential_258/lstm_776/while/lstm_cell_776/split:output:1*
T0*'
_output_shapes
:?????????
?
/sequential_258/lstm_776/while/lstm_cell_776/mulMul9sequential_258/lstm_776/while/lstm_cell_776/Sigmoid_1:y:0+sequential_258_lstm_776_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
0sequential_258/lstm_776/while/lstm_cell_776/ReluRelu:sequential_258/lstm_776/while/lstm_cell_776/split:output:2*
T0*'
_output_shapes
:?????????
?
1sequential_258/lstm_776/while/lstm_cell_776/mul_1Mul7sequential_258/lstm_776/while/lstm_cell_776/Sigmoid:y:0>sequential_258/lstm_776/while/lstm_cell_776/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
1sequential_258/lstm_776/while/lstm_cell_776/add_1AddV23sequential_258/lstm_776/while/lstm_cell_776/mul:z:05sequential_258/lstm_776/while/lstm_cell_776/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
5sequential_258/lstm_776/while/lstm_cell_776/Sigmoid_2Sigmoid:sequential_258/lstm_776/while/lstm_cell_776/split:output:3*
T0*'
_output_shapes
:?????????
?
2sequential_258/lstm_776/while/lstm_cell_776/Relu_1Relu5sequential_258/lstm_776/while/lstm_cell_776/add_1:z:0*
T0*'
_output_shapes
:?????????
?
1sequential_258/lstm_776/while/lstm_cell_776/mul_2Mul9sequential_258/lstm_776/while/lstm_cell_776/Sigmoid_2:y:0@sequential_258/lstm_776/while/lstm_cell_776/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
Bsequential_258/lstm_776/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_258_lstm_776_while_placeholder_1)sequential_258_lstm_776_while_placeholder5sequential_258/lstm_776/while/lstm_cell_776/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_258/lstm_776/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_258/lstm_776/while/addAddV2)sequential_258_lstm_776_while_placeholder,sequential_258/lstm_776/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_258/lstm_776/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_258/lstm_776/while/add_1AddV2Hsequential_258_lstm_776_while_sequential_258_lstm_776_while_loop_counter.sequential_258/lstm_776/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_258/lstm_776/while/IdentityIdentity'sequential_258/lstm_776/while/add_1:z:0#^sequential_258/lstm_776/while/NoOp*
T0*
_output_shapes
: ?
(sequential_258/lstm_776/while/Identity_1IdentityNsequential_258_lstm_776_while_sequential_258_lstm_776_while_maximum_iterations#^sequential_258/lstm_776/while/NoOp*
T0*
_output_shapes
: ?
(sequential_258/lstm_776/while/Identity_2Identity%sequential_258/lstm_776/while/add:z:0#^sequential_258/lstm_776/while/NoOp*
T0*
_output_shapes
: ?
(sequential_258/lstm_776/while/Identity_3IdentityRsequential_258/lstm_776/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_258/lstm_776/while/NoOp*
T0*
_output_shapes
: ?
(sequential_258/lstm_776/while/Identity_4Identity5sequential_258/lstm_776/while/lstm_cell_776/mul_2:z:0#^sequential_258/lstm_776/while/NoOp*
T0*'
_output_shapes
:?????????
?
(sequential_258/lstm_776/while/Identity_5Identity5sequential_258/lstm_776/while/lstm_cell_776/add_1:z:0#^sequential_258/lstm_776/while/NoOp*
T0*'
_output_shapes
:?????????
?
"sequential_258/lstm_776/while/NoOpNoOpC^sequential_258/lstm_776/while/lstm_cell_776/BiasAdd/ReadVariableOpB^sequential_258/lstm_776/while/lstm_cell_776/MatMul/ReadVariableOpD^sequential_258/lstm_776/while/lstm_cell_776/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_258_lstm_776_while_identity/sequential_258/lstm_776/while/Identity:output:0"]
(sequential_258_lstm_776_while_identity_11sequential_258/lstm_776/while/Identity_1:output:0"]
(sequential_258_lstm_776_while_identity_21sequential_258/lstm_776/while/Identity_2:output:0"]
(sequential_258_lstm_776_while_identity_31sequential_258/lstm_776/while/Identity_3:output:0"]
(sequential_258_lstm_776_while_identity_41sequential_258/lstm_776/while/Identity_4:output:0"]
(sequential_258_lstm_776_while_identity_51sequential_258/lstm_776/while/Identity_5:output:0"?
Ksequential_258_lstm_776_while_lstm_cell_776_biasadd_readvariableop_resourceMsequential_258_lstm_776_while_lstm_cell_776_biasadd_readvariableop_resource_0"?
Lsequential_258_lstm_776_while_lstm_cell_776_matmul_1_readvariableop_resourceNsequential_258_lstm_776_while_lstm_cell_776_matmul_1_readvariableop_resource_0"?
Jsequential_258_lstm_776_while_lstm_cell_776_matmul_readvariableop_resourceLsequential_258_lstm_776_while_lstm_cell_776_matmul_readvariableop_resource_0"?
Esequential_258_lstm_776_while_sequential_258_lstm_776_strided_slice_1Gsequential_258_lstm_776_while_sequential_258_lstm_776_strided_slice_1_0"?
?sequential_258_lstm_776_while_tensorarrayv2read_tensorlistgetitem_sequential_258_lstm_776_tensorarrayunstack_tensorlistfromtensor?sequential_258_lstm_776_while_tensorarrayv2read_tensorlistgetitem_sequential_258_lstm_776_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2?
Bsequential_258/lstm_776/while/lstm_cell_776/BiasAdd/ReadVariableOpBsequential_258/lstm_776/while/lstm_cell_776/BiasAdd/ReadVariableOp2?
Asequential_258/lstm_776/while/lstm_cell_776/MatMul/ReadVariableOpAsequential_258/lstm_776/while/lstm_cell_776/MatMul/ReadVariableOp2?
Csequential_258/lstm_776/while/lstm_cell_776/MatMul_1/ReadVariableOpCsequential_258/lstm_776/while/lstm_cell_776/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
?
/__inference_lstm_cell_776_layer_call_fn_4741519

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
J__inference_lstm_cell_776_layer_call_and_return_conditional_losses_4737038o
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
while_cond_4740157
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4740157___redundant_placeholder05
1while_while_cond_4740157___redundant_placeholder15
1while_while_cond_4740157___redundant_placeholder25
1while_while_cond_4740157___redundant_placeholder3
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
E__inference_lstm_776_layer_call_and_return_conditional_losses_4737770

inputs>
,lstm_cell_776_matmul_readvariableop_resource:2(@
.lstm_cell_776_matmul_1_readvariableop_resource:
(;
-lstm_cell_776_biasadd_readvariableop_resource:(
identity??$lstm_cell_776/BiasAdd/ReadVariableOp?#lstm_cell_776/MatMul/ReadVariableOp?%lstm_cell_776/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_776/MatMul/ReadVariableOpReadVariableOp,lstm_cell_776_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_776/MatMulMatMulstrided_slice_2:output:0+lstm_cell_776/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_776/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_776_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_776/MatMul_1MatMulzeros:output:0-lstm_cell_776/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_776/addAddV2lstm_cell_776/MatMul:product:0 lstm_cell_776/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_776/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_776_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_776/BiasAddBiasAddlstm_cell_776/add:z:0,lstm_cell_776/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_776/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_776/splitSplit&lstm_cell_776/split/split_dim:output:0lstm_cell_776/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_776/SigmoidSigmoidlstm_cell_776/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_776/Sigmoid_1Sigmoidlstm_cell_776/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_776/mulMullstm_cell_776/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_776/ReluRelulstm_cell_776/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_776/mul_1Mullstm_cell_776/Sigmoid:y:0 lstm_cell_776/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_776/add_1AddV2lstm_cell_776/mul:z:0lstm_cell_776/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_776/Sigmoid_2Sigmoidlstm_cell_776/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_776/Relu_1Relulstm_cell_776/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_776/mul_2Mullstm_cell_776/Sigmoid_2:y:0"lstm_cell_776/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_776_matmul_readvariableop_resource.lstm_cell_776_matmul_1_readvariableop_resource-lstm_cell_776_biasadd_readvariableop_resource*
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
while_body_4737686*
condR
while_cond_4737685*K
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
NoOpNoOp%^lstm_cell_776/BiasAdd/ReadVariableOp$^lstm_cell_776/MatMul/ReadVariableOp&^lstm_cell_776/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_776/BiasAdd/ReadVariableOp$lstm_cell_776/BiasAdd/ReadVariableOp2J
#lstm_cell_776/MatMul/ReadVariableOp#lstm_cell_776/MatMul/ReadVariableOp2N
%lstm_cell_776/MatMul_1/ReadVariableOp%lstm_cell_776/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
while_cond_4737385
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4737385___redundant_placeholder05
1while_while_cond_4737385___redundant_placeholder15
1while_while_cond_4737385___redundant_placeholder25
1while_while_cond_4737385___redundant_placeholder3
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
while_cond_4740586
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4740586___redundant_placeholder05
1while_while_cond_4740586___redundant_placeholder15
1while_while_cond_4740586___redundant_placeholder25
1while_while_cond_4740586___redundant_placeholder3
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
E__inference_lstm_774_layer_call_and_return_conditional_losses_4739769
inputs_0?
,lstm_cell_774_matmul_readvariableop_resource:	?A
.lstm_cell_774_matmul_1_readvariableop_resource:	d?<
-lstm_cell_774_biasadd_readvariableop_resource:	?
identity??$lstm_cell_774/BiasAdd/ReadVariableOp?#lstm_cell_774/MatMul/ReadVariableOp?%lstm_cell_774/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_774/MatMul/ReadVariableOpReadVariableOp,lstm_cell_774_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_774/MatMulMatMulstrided_slice_2:output:0+lstm_cell_774/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_774/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_774_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_774/MatMul_1MatMulzeros:output:0-lstm_cell_774/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_774/addAddV2lstm_cell_774/MatMul:product:0 lstm_cell_774/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_774/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_774_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_774/BiasAddBiasAddlstm_cell_774/add:z:0,lstm_cell_774/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_774/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_774/splitSplit&lstm_cell_774/split/split_dim:output:0lstm_cell_774/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_774/SigmoidSigmoidlstm_cell_774/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_774/Sigmoid_1Sigmoidlstm_cell_774/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_774/mulMullstm_cell_774/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_774/ReluRelulstm_cell_774/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_774/mul_1Mullstm_cell_774/Sigmoid:y:0 lstm_cell_774/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_774/add_1AddV2lstm_cell_774/mul:z:0lstm_cell_774/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_774/Sigmoid_2Sigmoidlstm_cell_774/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_774/Relu_1Relulstm_cell_774/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_774/mul_2Mullstm_cell_774/Sigmoid_2:y:0"lstm_cell_774/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_774_matmul_readvariableop_resource.lstm_cell_774_matmul_1_readvariableop_resource-lstm_cell_774_biasadd_readvariableop_resource*
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
while_body_4739685*
condR
while_cond_4739684*K
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
NoOpNoOp%^lstm_cell_774/BiasAdd/ReadVariableOp$^lstm_cell_774/MatMul/ReadVariableOp&^lstm_cell_774/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_774/BiasAdd/ReadVariableOp$lstm_cell_774/BiasAdd/ReadVariableOp2J
#lstm_cell_774/MatMul/ReadVariableOp#lstm_cell_774/MatMul/ReadVariableOp2N
%lstm_cell_774/MatMul_1/ReadVariableOp%lstm_cell_774/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
*__inference_lstm_775_layer_call_fn_4740088

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
E__inference_lstm_775_layer_call_and_return_conditional_losses_4737620s
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
?8
?
E__inference_lstm_776_layer_call_and_return_conditional_losses_4737312

inputs'
lstm_cell_776_4737230:2('
lstm_cell_776_4737232:
(#
lstm_cell_776_4737234:(
identity??%lstm_cell_776/StatefulPartitionedCall?while;
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
%lstm_cell_776/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_776_4737230lstm_cell_776_4737232lstm_cell_776_4737234*
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
J__inference_lstm_cell_776_layer_call_and_return_conditional_losses_4737184n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_776_4737230lstm_cell_776_4737232lstm_cell_776_4737234*
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
while_body_4737243*
condR
while_cond_4737242*K
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
NoOpNoOp&^lstm_cell_776/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_776/StatefulPartitionedCall%lstm_cell_776/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_776_layer_call_and_return_conditional_losses_4741600

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
?#
?
while_body_4737052
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_776_4737076_0:2(/
while_lstm_cell_776_4737078_0:
(+
while_lstm_cell_776_4737080_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_776_4737076:2(-
while_lstm_cell_776_4737078:
()
while_lstm_cell_776_4737080:(??+while/lstm_cell_776/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_776/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_776_4737076_0while_lstm_cell_776_4737078_0while_lstm_cell_776_4737080_0*
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
J__inference_lstm_cell_776_layer_call_and_return_conditional_losses_4737038?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_776/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_776/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_776/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_776/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_776_4737076while_lstm_cell_776_4737076_0"<
while_lstm_cell_776_4737078while_lstm_cell_776_4737078_0"<
while_lstm_cell_776_4737080while_lstm_cell_776_4737080_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_776/StatefulPartitionedCall+while/lstm_cell_776/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
?
F__inference_dense_258_layer_call_and_return_conditional_losses_4737788

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
while_body_4741060
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_776_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_776_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_776_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_776_matmul_readvariableop_resource:2(F
4while_lstm_cell_776_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_776_biasadd_readvariableop_resource:(??*while/lstm_cell_776/BiasAdd/ReadVariableOp?)while/lstm_cell_776/MatMul/ReadVariableOp?+while/lstm_cell_776/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_776/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_776_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_776/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_776/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_776/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_776_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_776/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_776/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_776/addAddV2$while/lstm_cell_776/MatMul:product:0&while/lstm_cell_776/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_776/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_776_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_776/BiasAddBiasAddwhile/lstm_cell_776/add:z:02while/lstm_cell_776/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_776/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_776/splitSplit,while/lstm_cell_776/split/split_dim:output:0$while/lstm_cell_776/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_776/SigmoidSigmoid"while/lstm_cell_776/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_776/Sigmoid_1Sigmoid"while/lstm_cell_776/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_776/mulMul!while/lstm_cell_776/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_776/ReluRelu"while/lstm_cell_776/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_776/mul_1Mulwhile/lstm_cell_776/Sigmoid:y:0&while/lstm_cell_776/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_776/add_1AddV2while/lstm_cell_776/mul:z:0while/lstm_cell_776/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_776/Sigmoid_2Sigmoid"while/lstm_cell_776/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_776/Relu_1Reluwhile/lstm_cell_776/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_776/mul_2Mul!while/lstm_cell_776/Sigmoid_2:y:0(while/lstm_cell_776/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_776/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_776/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_776/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_776/BiasAdd/ReadVariableOp*^while/lstm_cell_776/MatMul/ReadVariableOp,^while/lstm_cell_776/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_776_biasadd_readvariableop_resource5while_lstm_cell_776_biasadd_readvariableop_resource_0"n
4while_lstm_cell_776_matmul_1_readvariableop_resource6while_lstm_cell_776_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_776_matmul_readvariableop_resource4while_lstm_cell_776_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_776/BiasAdd/ReadVariableOp*while/lstm_cell_776/BiasAdd/ReadVariableOp2V
)while/lstm_cell_776/MatMul/ReadVariableOp)while/lstm_cell_776/MatMul/ReadVariableOp2Z
+while/lstm_cell_776/MatMul_1/ReadVariableOp+while/lstm_cell_776/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
K__inference_sequential_258_layer_call_and_return_conditional_losses_4738384

inputs#
lstm_774_4738357:	?#
lstm_774_4738359:	d?
lstm_774_4738361:	?#
lstm_775_4738364:	d?#
lstm_775_4738366:	2?
lstm_775_4738368:	?"
lstm_776_4738371:2("
lstm_776_4738373:
(
lstm_776_4738375:(#
dense_258_4738378:

dense_258_4738380:
identity??!dense_258/StatefulPartitionedCall? lstm_774/StatefulPartitionedCall? lstm_775/StatefulPartitionedCall? lstm_776/StatefulPartitionedCall?
 lstm_774/StatefulPartitionedCallStatefulPartitionedCallinputslstm_774_4738357lstm_774_4738359lstm_774_4738361*
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
E__inference_lstm_774_layer_call_and_return_conditional_losses_4738316?
 lstm_775/StatefulPartitionedCallStatefulPartitionedCall)lstm_774/StatefulPartitionedCall:output:0lstm_775_4738364lstm_775_4738366lstm_775_4738368*
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
E__inference_lstm_775_layer_call_and_return_conditional_losses_4738151?
 lstm_776/StatefulPartitionedCallStatefulPartitionedCall)lstm_775/StatefulPartitionedCall:output:0lstm_776_4738371lstm_776_4738373lstm_776_4738375*
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
E__inference_lstm_776_layer_call_and_return_conditional_losses_4737986?
!dense_258/StatefulPartitionedCallStatefulPartitionedCall)lstm_776/StatefulPartitionedCall:output:0dense_258_4738378dense_258_4738380*
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
F__inference_dense_258_layer_call_and_return_conditional_losses_4737788y
IdentityIdentity*dense_258/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_258/StatefulPartitionedCall!^lstm_774/StatefulPartitionedCall!^lstm_775/StatefulPartitionedCall!^lstm_776/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_258/StatefulPartitionedCall!dense_258/StatefulPartitionedCall2D
 lstm_774/StatefulPartitionedCall lstm_774/StatefulPartitionedCall2D
 lstm_775/StatefulPartitionedCall lstm_775/StatefulPartitionedCall2D
 lstm_776/StatefulPartitionedCall lstm_776/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_4741059
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4741059___redundant_placeholder05
1while_while_cond_4741059___redundant_placeholder15
1while_while_cond_4741059___redundant_placeholder25
1while_while_cond_4741059___redundant_placeholder3
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
*__inference_lstm_775_layer_call_fn_4740066
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
E__inference_lstm_775_layer_call_and_return_conditional_losses_4736771|
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
while_cond_4736351
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4736351___redundant_placeholder05
1while_while_cond_4736351___redundant_placeholder15
1while_while_cond_4736351___redundant_placeholder25
1while_while_cond_4736351___redundant_placeholder3
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
E__inference_lstm_774_layer_call_and_return_conditional_losses_4739912

inputs?
,lstm_cell_774_matmul_readvariableop_resource:	?A
.lstm_cell_774_matmul_1_readvariableop_resource:	d?<
-lstm_cell_774_biasadd_readvariableop_resource:	?
identity??$lstm_cell_774/BiasAdd/ReadVariableOp?#lstm_cell_774/MatMul/ReadVariableOp?%lstm_cell_774/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_774/MatMul/ReadVariableOpReadVariableOp,lstm_cell_774_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_774/MatMulMatMulstrided_slice_2:output:0+lstm_cell_774/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_774/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_774_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_774/MatMul_1MatMulzeros:output:0-lstm_cell_774/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_774/addAddV2lstm_cell_774/MatMul:product:0 lstm_cell_774/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_774/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_774_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_774/BiasAddBiasAddlstm_cell_774/add:z:0,lstm_cell_774/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_774/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_774/splitSplit&lstm_cell_774/split/split_dim:output:0lstm_cell_774/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_774/SigmoidSigmoidlstm_cell_774/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_774/Sigmoid_1Sigmoidlstm_cell_774/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_774/mulMullstm_cell_774/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_774/ReluRelulstm_cell_774/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_774/mul_1Mullstm_cell_774/Sigmoid:y:0 lstm_cell_774/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_774/add_1AddV2lstm_cell_774/mul:z:0lstm_cell_774/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_774/Sigmoid_2Sigmoidlstm_cell_774/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_774/Relu_1Relulstm_cell_774/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_774/mul_2Mullstm_cell_774/Sigmoid_2:y:0"lstm_cell_774/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_774_matmul_readvariableop_resource.lstm_cell_774_matmul_1_readvariableop_resource-lstm_cell_774_biasadd_readvariableop_resource*
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
while_body_4739828*
condR
while_cond_4739827*K
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
NoOpNoOp%^lstm_cell_774/BiasAdd/ReadVariableOp$^lstm_cell_774/MatMul/ReadVariableOp&^lstm_cell_774/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_774/BiasAdd/ReadVariableOp$lstm_cell_774/BiasAdd/ReadVariableOp2J
#lstm_cell_774/MatMul/ReadVariableOp#lstm_cell_774/MatMul/ReadVariableOp2N
%lstm_cell_774/MatMul_1/ReadVariableOp%lstm_cell_774/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
*__inference_lstm_774_layer_call_fn_4739450
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
E__inference_lstm_774_layer_call_and_return_conditional_losses_4736421|
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
while_cond_4736701
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4736701___redundant_placeholder05
1while_while_cond_4736701___redundant_placeholder15
1while_while_cond_4736701___redundant_placeholder25
1while_while_cond_4736701___redundant_placeholder3
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

lstm_775_while_body_4739210.
*lstm_775_while_lstm_775_while_loop_counter4
0lstm_775_while_lstm_775_while_maximum_iterations
lstm_775_while_placeholder 
lstm_775_while_placeholder_1 
lstm_775_while_placeholder_2 
lstm_775_while_placeholder_3-
)lstm_775_while_lstm_775_strided_slice_1_0i
elstm_775_while_tensorarrayv2read_tensorlistgetitem_lstm_775_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_775_while_lstm_cell_775_matmul_readvariableop_resource_0:	d?R
?lstm_775_while_lstm_cell_775_matmul_1_readvariableop_resource_0:	2?M
>lstm_775_while_lstm_cell_775_biasadd_readvariableop_resource_0:	?
lstm_775_while_identity
lstm_775_while_identity_1
lstm_775_while_identity_2
lstm_775_while_identity_3
lstm_775_while_identity_4
lstm_775_while_identity_5+
'lstm_775_while_lstm_775_strided_slice_1g
clstm_775_while_tensorarrayv2read_tensorlistgetitem_lstm_775_tensorarrayunstack_tensorlistfromtensorN
;lstm_775_while_lstm_cell_775_matmul_readvariableop_resource:	d?P
=lstm_775_while_lstm_cell_775_matmul_1_readvariableop_resource:	2?K
<lstm_775_while_lstm_cell_775_biasadd_readvariableop_resource:	???3lstm_775/while/lstm_cell_775/BiasAdd/ReadVariableOp?2lstm_775/while/lstm_cell_775/MatMul/ReadVariableOp?4lstm_775/while/lstm_cell_775/MatMul_1/ReadVariableOp?
@lstm_775/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_775/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_775_while_tensorarrayv2read_tensorlistgetitem_lstm_775_tensorarrayunstack_tensorlistfromtensor_0lstm_775_while_placeholderIlstm_775/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_775/while/lstm_cell_775/MatMul/ReadVariableOpReadVariableOp=lstm_775_while_lstm_cell_775_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_775/while/lstm_cell_775/MatMulMatMul9lstm_775/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_775/while/lstm_cell_775/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_775/while/lstm_cell_775/MatMul_1/ReadVariableOpReadVariableOp?lstm_775_while_lstm_cell_775_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_775/while/lstm_cell_775/MatMul_1MatMullstm_775_while_placeholder_2<lstm_775/while/lstm_cell_775/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_775/while/lstm_cell_775/addAddV2-lstm_775/while/lstm_cell_775/MatMul:product:0/lstm_775/while/lstm_cell_775/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_775/while/lstm_cell_775/BiasAdd/ReadVariableOpReadVariableOp>lstm_775_while_lstm_cell_775_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_775/while/lstm_cell_775/BiasAddBiasAdd$lstm_775/while/lstm_cell_775/add:z:0;lstm_775/while/lstm_cell_775/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_775/while/lstm_cell_775/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_775/while/lstm_cell_775/splitSplit5lstm_775/while/lstm_cell_775/split/split_dim:output:0-lstm_775/while/lstm_cell_775/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_775/while/lstm_cell_775/SigmoidSigmoid+lstm_775/while/lstm_cell_775/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_775/while/lstm_cell_775/Sigmoid_1Sigmoid+lstm_775/while/lstm_cell_775/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_775/while/lstm_cell_775/mulMul*lstm_775/while/lstm_cell_775/Sigmoid_1:y:0lstm_775_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_775/while/lstm_cell_775/ReluRelu+lstm_775/while/lstm_cell_775/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_775/while/lstm_cell_775/mul_1Mul(lstm_775/while/lstm_cell_775/Sigmoid:y:0/lstm_775/while/lstm_cell_775/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_775/while/lstm_cell_775/add_1AddV2$lstm_775/while/lstm_cell_775/mul:z:0&lstm_775/while/lstm_cell_775/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_775/while/lstm_cell_775/Sigmoid_2Sigmoid+lstm_775/while/lstm_cell_775/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_775/while/lstm_cell_775/Relu_1Relu&lstm_775/while/lstm_cell_775/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_775/while/lstm_cell_775/mul_2Mul*lstm_775/while/lstm_cell_775/Sigmoid_2:y:01lstm_775/while/lstm_cell_775/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_775/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_775_while_placeholder_1lstm_775_while_placeholder&lstm_775/while/lstm_cell_775/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_775/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_775/while/addAddV2lstm_775_while_placeholderlstm_775/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_775/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_775/while/add_1AddV2*lstm_775_while_lstm_775_while_loop_counterlstm_775/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_775/while/IdentityIdentitylstm_775/while/add_1:z:0^lstm_775/while/NoOp*
T0*
_output_shapes
: ?
lstm_775/while/Identity_1Identity0lstm_775_while_lstm_775_while_maximum_iterations^lstm_775/while/NoOp*
T0*
_output_shapes
: t
lstm_775/while/Identity_2Identitylstm_775/while/add:z:0^lstm_775/while/NoOp*
T0*
_output_shapes
: ?
lstm_775/while/Identity_3IdentityClstm_775/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_775/while/NoOp*
T0*
_output_shapes
: ?
lstm_775/while/Identity_4Identity&lstm_775/while/lstm_cell_775/mul_2:z:0^lstm_775/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_775/while/Identity_5Identity&lstm_775/while/lstm_cell_775/add_1:z:0^lstm_775/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_775/while/NoOpNoOp4^lstm_775/while/lstm_cell_775/BiasAdd/ReadVariableOp3^lstm_775/while/lstm_cell_775/MatMul/ReadVariableOp5^lstm_775/while/lstm_cell_775/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_775_while_identity lstm_775/while/Identity:output:0"?
lstm_775_while_identity_1"lstm_775/while/Identity_1:output:0"?
lstm_775_while_identity_2"lstm_775/while/Identity_2:output:0"?
lstm_775_while_identity_3"lstm_775/while/Identity_3:output:0"?
lstm_775_while_identity_4"lstm_775/while/Identity_4:output:0"?
lstm_775_while_identity_5"lstm_775/while/Identity_5:output:0"T
'lstm_775_while_lstm_775_strided_slice_1)lstm_775_while_lstm_775_strided_slice_1_0"~
<lstm_775_while_lstm_cell_775_biasadd_readvariableop_resource>lstm_775_while_lstm_cell_775_biasadd_readvariableop_resource_0"?
=lstm_775_while_lstm_cell_775_matmul_1_readvariableop_resource?lstm_775_while_lstm_cell_775_matmul_1_readvariableop_resource_0"|
;lstm_775_while_lstm_cell_775_matmul_readvariableop_resource=lstm_775_while_lstm_cell_775_matmul_readvariableop_resource_0"?
clstm_775_while_tensorarrayv2read_tensorlistgetitem_lstm_775_tensorarrayunstack_tensorlistfromtensorelstm_775_while_tensorarrayv2read_tensorlistgetitem_lstm_775_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_775/while/lstm_cell_775/BiasAdd/ReadVariableOp3lstm_775/while/lstm_cell_775/BiasAdd/ReadVariableOp2h
2lstm_775/while/lstm_cell_775/MatMul/ReadVariableOp2lstm_775/while/lstm_cell_775/MatMul/ReadVariableOp2l
4lstm_775/while/lstm_cell_775/MatMul_1/ReadVariableOp4lstm_775/while/lstm_cell_775/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_4737536
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_775_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_775_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_775_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_775_matmul_readvariableop_resource:	d?G
4while_lstm_cell_775_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_775_biasadd_readvariableop_resource:	???*while/lstm_cell_775/BiasAdd/ReadVariableOp?)while/lstm_cell_775/MatMul/ReadVariableOp?+while/lstm_cell_775/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_775/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_775_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_775/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_775/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_775/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_775_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_775/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_775/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_775/addAddV2$while/lstm_cell_775/MatMul:product:0&while/lstm_cell_775/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_775/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_775_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_775/BiasAddBiasAddwhile/lstm_cell_775/add:z:02while/lstm_cell_775/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_775/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_775/splitSplit,while/lstm_cell_775/split/split_dim:output:0$while/lstm_cell_775/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_775/SigmoidSigmoid"while/lstm_cell_775/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_775/Sigmoid_1Sigmoid"while/lstm_cell_775/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_775/mulMul!while/lstm_cell_775/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_775/ReluRelu"while/lstm_cell_775/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_775/mul_1Mulwhile/lstm_cell_775/Sigmoid:y:0&while/lstm_cell_775/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_775/add_1AddV2while/lstm_cell_775/mul:z:0while/lstm_cell_775/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_775/Sigmoid_2Sigmoid"while/lstm_cell_775/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_775/Relu_1Reluwhile/lstm_cell_775/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_775/mul_2Mul!while/lstm_cell_775/Sigmoid_2:y:0(while/lstm_cell_775/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_775/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_775/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_775/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_775/BiasAdd/ReadVariableOp*^while/lstm_cell_775/MatMul/ReadVariableOp,^while/lstm_cell_775/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_775_biasadd_readvariableop_resource5while_lstm_cell_775_biasadd_readvariableop_resource_0"n
4while_lstm_cell_775_matmul_1_readvariableop_resource6while_lstm_cell_775_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_775_matmul_readvariableop_resource4while_lstm_cell_775_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_775/BiasAdd/ReadVariableOp*while/lstm_cell_775/BiasAdd/ReadVariableOp2V
)while/lstm_cell_775/MatMul/ReadVariableOp)while/lstm_cell_775/MatMul/ReadVariableOp2Z
+while/lstm_cell_775/MatMul_1/ReadVariableOp+while/lstm_cell_775/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_4737386
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_774_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_774_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_774_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_774_matmul_readvariableop_resource:	?G
4while_lstm_cell_774_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_774_biasadd_readvariableop_resource:	???*while/lstm_cell_774/BiasAdd/ReadVariableOp?)while/lstm_cell_774/MatMul/ReadVariableOp?+while/lstm_cell_774/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_774/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_774_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_774/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_774/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_774/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_774_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_774/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_774/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_774/addAddV2$while/lstm_cell_774/MatMul:product:0&while/lstm_cell_774/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_774/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_774_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_774/BiasAddBiasAddwhile/lstm_cell_774/add:z:02while/lstm_cell_774/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_774/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_774/splitSplit,while/lstm_cell_774/split/split_dim:output:0$while/lstm_cell_774/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_774/SigmoidSigmoid"while/lstm_cell_774/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_774/Sigmoid_1Sigmoid"while/lstm_cell_774/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_774/mulMul!while/lstm_cell_774/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_774/ReluRelu"while/lstm_cell_774/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_774/mul_1Mulwhile/lstm_cell_774/Sigmoid:y:0&while/lstm_cell_774/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_774/add_1AddV2while/lstm_cell_774/mul:z:0while/lstm_cell_774/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_774/Sigmoid_2Sigmoid"while/lstm_cell_774/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_774/Relu_1Reluwhile/lstm_cell_774/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_774/mul_2Mul!while/lstm_cell_774/Sigmoid_2:y:0(while/lstm_cell_774/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_774/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_774/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_774/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_774/BiasAdd/ReadVariableOp*^while/lstm_cell_774/MatMul/ReadVariableOp,^while/lstm_cell_774/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_774_biasadd_readvariableop_resource5while_lstm_cell_774_biasadd_readvariableop_resource_0"n
4while_lstm_cell_774_matmul_1_readvariableop_resource6while_lstm_cell_774_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_774_matmul_readvariableop_resource4while_lstm_cell_774_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_774/BiasAdd/ReadVariableOp*while/lstm_cell_774/BiasAdd/ReadVariableOp2V
)while/lstm_cell_774/MatMul/ReadVariableOp)while/lstm_cell_774/MatMul/ReadVariableOp2Z
+while/lstm_cell_774/MatMul_1/ReadVariableOp+while/lstm_cell_774/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_775_layer_call_and_return_conditional_losses_4736834

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
?
?
K__inference_sequential_258_layer_call_and_return_conditional_losses_4738466
lstm_774_input#
lstm_774_4738439:	?#
lstm_774_4738441:	d?
lstm_774_4738443:	?#
lstm_775_4738446:	d?#
lstm_775_4738448:	2?
lstm_775_4738450:	?"
lstm_776_4738453:2("
lstm_776_4738455:
(
lstm_776_4738457:(#
dense_258_4738460:

dense_258_4738462:
identity??!dense_258/StatefulPartitionedCall? lstm_774/StatefulPartitionedCall? lstm_775/StatefulPartitionedCall? lstm_776/StatefulPartitionedCall?
 lstm_774/StatefulPartitionedCallStatefulPartitionedCalllstm_774_inputlstm_774_4738439lstm_774_4738441lstm_774_4738443*
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
E__inference_lstm_774_layer_call_and_return_conditional_losses_4737470?
 lstm_775/StatefulPartitionedCallStatefulPartitionedCall)lstm_774/StatefulPartitionedCall:output:0lstm_775_4738446lstm_775_4738448lstm_775_4738450*
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
E__inference_lstm_775_layer_call_and_return_conditional_losses_4737620?
 lstm_776/StatefulPartitionedCallStatefulPartitionedCall)lstm_775/StatefulPartitionedCall:output:0lstm_776_4738453lstm_776_4738455lstm_776_4738457*
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
E__inference_lstm_776_layer_call_and_return_conditional_losses_4737770?
!dense_258/StatefulPartitionedCallStatefulPartitionedCall)lstm_776/StatefulPartitionedCall:output:0dense_258_4738460dense_258_4738462*
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
F__inference_dense_258_layer_call_and_return_conditional_losses_4737788y
IdentityIdentity*dense_258/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_258/StatefulPartitionedCall!^lstm_774/StatefulPartitionedCall!^lstm_775/StatefulPartitionedCall!^lstm_776/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_258/StatefulPartitionedCall!dense_258/StatefulPartitionedCall2D
 lstm_774/StatefulPartitionedCall lstm_774/StatefulPartitionedCall2D
 lstm_775/StatefulPartitionedCall lstm_775/StatefulPartitionedCall2D
 lstm_776/StatefulPartitionedCall lstm_776/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_774_input
?8
?
while_body_4740917
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_776_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_776_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_776_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_776_matmul_readvariableop_resource:2(F
4while_lstm_cell_776_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_776_biasadd_readvariableop_resource:(??*while/lstm_cell_776/BiasAdd/ReadVariableOp?)while/lstm_cell_776/MatMul/ReadVariableOp?+while/lstm_cell_776/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_776/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_776_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_776/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_776/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_776/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_776_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_776/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_776/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_776/addAddV2$while/lstm_cell_776/MatMul:product:0&while/lstm_cell_776/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_776/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_776_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_776/BiasAddBiasAddwhile/lstm_cell_776/add:z:02while/lstm_cell_776/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_776/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_776/splitSplit,while/lstm_cell_776/split/split_dim:output:0$while/lstm_cell_776/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_776/SigmoidSigmoid"while/lstm_cell_776/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_776/Sigmoid_1Sigmoid"while/lstm_cell_776/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_776/mulMul!while/lstm_cell_776/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_776/ReluRelu"while/lstm_cell_776/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_776/mul_1Mulwhile/lstm_cell_776/Sigmoid:y:0&while/lstm_cell_776/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_776/add_1AddV2while/lstm_cell_776/mul:z:0while/lstm_cell_776/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_776/Sigmoid_2Sigmoid"while/lstm_cell_776/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_776/Relu_1Reluwhile/lstm_cell_776/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_776/mul_2Mul!while/lstm_cell_776/Sigmoid_2:y:0(while/lstm_cell_776/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_776/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_776/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_776/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_776/BiasAdd/ReadVariableOp*^while/lstm_cell_776/MatMul/ReadVariableOp,^while/lstm_cell_776/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_776_biasadd_readvariableop_resource5while_lstm_cell_776_biasadd_readvariableop_resource_0"n
4while_lstm_cell_776_matmul_1_readvariableop_resource6while_lstm_cell_776_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_776_matmul_readvariableop_resource4while_lstm_cell_776_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_776/BiasAdd/ReadVariableOp*while/lstm_cell_776/BiasAdd/ReadVariableOp2V
)while/lstm_cell_776/MatMul/ReadVariableOp)while/lstm_cell_776/MatMul/ReadVariableOp2Z
+while/lstm_cell_776/MatMul_1/ReadVariableOp+while/lstm_cell_776/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_774_layer_call_and_return_conditional_losses_4736421

inputs(
lstm_cell_774_4736339:	?(
lstm_cell_774_4736341:	d?$
lstm_cell_774_4736343:	?
identity??%lstm_cell_774/StatefulPartitionedCall?while;
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
%lstm_cell_774/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_774_4736339lstm_cell_774_4736341lstm_cell_774_4736343*
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
J__inference_lstm_cell_774_layer_call_and_return_conditional_losses_4736338n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_774_4736339lstm_cell_774_4736341lstm_cell_774_4736343*
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
while_body_4736352*
condR
while_cond_4736351*K
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
NoOpNoOp&^lstm_cell_774/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_774/StatefulPartitionedCall%lstm_cell_774/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
while_cond_4739684
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4739684___redundant_placeholder05
1while_while_cond_4739684___redundant_placeholder15
1while_while_cond_4739684___redundant_placeholder25
1while_while_cond_4739684___redundant_placeholder3
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

lstm_776_while_body_4738922.
*lstm_776_while_lstm_776_while_loop_counter4
0lstm_776_while_lstm_776_while_maximum_iterations
lstm_776_while_placeholder 
lstm_776_while_placeholder_1 
lstm_776_while_placeholder_2 
lstm_776_while_placeholder_3-
)lstm_776_while_lstm_776_strided_slice_1_0i
elstm_776_while_tensorarrayv2read_tensorlistgetitem_lstm_776_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_776_while_lstm_cell_776_matmul_readvariableop_resource_0:2(Q
?lstm_776_while_lstm_cell_776_matmul_1_readvariableop_resource_0:
(L
>lstm_776_while_lstm_cell_776_biasadd_readvariableop_resource_0:(
lstm_776_while_identity
lstm_776_while_identity_1
lstm_776_while_identity_2
lstm_776_while_identity_3
lstm_776_while_identity_4
lstm_776_while_identity_5+
'lstm_776_while_lstm_776_strided_slice_1g
clstm_776_while_tensorarrayv2read_tensorlistgetitem_lstm_776_tensorarrayunstack_tensorlistfromtensorM
;lstm_776_while_lstm_cell_776_matmul_readvariableop_resource:2(O
=lstm_776_while_lstm_cell_776_matmul_1_readvariableop_resource:
(J
<lstm_776_while_lstm_cell_776_biasadd_readvariableop_resource:(??3lstm_776/while/lstm_cell_776/BiasAdd/ReadVariableOp?2lstm_776/while/lstm_cell_776/MatMul/ReadVariableOp?4lstm_776/while/lstm_cell_776/MatMul_1/ReadVariableOp?
@lstm_776/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_776/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_776_while_tensorarrayv2read_tensorlistgetitem_lstm_776_tensorarrayunstack_tensorlistfromtensor_0lstm_776_while_placeholderIlstm_776/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_776/while/lstm_cell_776/MatMul/ReadVariableOpReadVariableOp=lstm_776_while_lstm_cell_776_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_776/while/lstm_cell_776/MatMulMatMul9lstm_776/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_776/while/lstm_cell_776/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_776/while/lstm_cell_776/MatMul_1/ReadVariableOpReadVariableOp?lstm_776_while_lstm_cell_776_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_776/while/lstm_cell_776/MatMul_1MatMullstm_776_while_placeholder_2<lstm_776/while/lstm_cell_776/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_776/while/lstm_cell_776/addAddV2-lstm_776/while/lstm_cell_776/MatMul:product:0/lstm_776/while/lstm_cell_776/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_776/while/lstm_cell_776/BiasAdd/ReadVariableOpReadVariableOp>lstm_776_while_lstm_cell_776_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_776/while/lstm_cell_776/BiasAddBiasAdd$lstm_776/while/lstm_cell_776/add:z:0;lstm_776/while/lstm_cell_776/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_776/while/lstm_cell_776/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_776/while/lstm_cell_776/splitSplit5lstm_776/while/lstm_cell_776/split/split_dim:output:0-lstm_776/while/lstm_cell_776/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_776/while/lstm_cell_776/SigmoidSigmoid+lstm_776/while/lstm_cell_776/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_776/while/lstm_cell_776/Sigmoid_1Sigmoid+lstm_776/while/lstm_cell_776/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_776/while/lstm_cell_776/mulMul*lstm_776/while/lstm_cell_776/Sigmoid_1:y:0lstm_776_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_776/while/lstm_cell_776/ReluRelu+lstm_776/while/lstm_cell_776/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_776/while/lstm_cell_776/mul_1Mul(lstm_776/while/lstm_cell_776/Sigmoid:y:0/lstm_776/while/lstm_cell_776/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_776/while/lstm_cell_776/add_1AddV2$lstm_776/while/lstm_cell_776/mul:z:0&lstm_776/while/lstm_cell_776/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_776/while/lstm_cell_776/Sigmoid_2Sigmoid+lstm_776/while/lstm_cell_776/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_776/while/lstm_cell_776/Relu_1Relu&lstm_776/while/lstm_cell_776/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_776/while/lstm_cell_776/mul_2Mul*lstm_776/while/lstm_cell_776/Sigmoid_2:y:01lstm_776/while/lstm_cell_776/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_776/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_776_while_placeholder_1lstm_776_while_placeholder&lstm_776/while/lstm_cell_776/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_776/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_776/while/addAddV2lstm_776_while_placeholderlstm_776/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_776/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_776/while/add_1AddV2*lstm_776_while_lstm_776_while_loop_counterlstm_776/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_776/while/IdentityIdentitylstm_776/while/add_1:z:0^lstm_776/while/NoOp*
T0*
_output_shapes
: ?
lstm_776/while/Identity_1Identity0lstm_776_while_lstm_776_while_maximum_iterations^lstm_776/while/NoOp*
T0*
_output_shapes
: t
lstm_776/while/Identity_2Identitylstm_776/while/add:z:0^lstm_776/while/NoOp*
T0*
_output_shapes
: ?
lstm_776/while/Identity_3IdentityClstm_776/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_776/while/NoOp*
T0*
_output_shapes
: ?
lstm_776/while/Identity_4Identity&lstm_776/while/lstm_cell_776/mul_2:z:0^lstm_776/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_776/while/Identity_5Identity&lstm_776/while/lstm_cell_776/add_1:z:0^lstm_776/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_776/while/NoOpNoOp4^lstm_776/while/lstm_cell_776/BiasAdd/ReadVariableOp3^lstm_776/while/lstm_cell_776/MatMul/ReadVariableOp5^lstm_776/while/lstm_cell_776/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_776_while_identity lstm_776/while/Identity:output:0"?
lstm_776_while_identity_1"lstm_776/while/Identity_1:output:0"?
lstm_776_while_identity_2"lstm_776/while/Identity_2:output:0"?
lstm_776_while_identity_3"lstm_776/while/Identity_3:output:0"?
lstm_776_while_identity_4"lstm_776/while/Identity_4:output:0"?
lstm_776_while_identity_5"lstm_776/while/Identity_5:output:0"T
'lstm_776_while_lstm_776_strided_slice_1)lstm_776_while_lstm_776_strided_slice_1_0"~
<lstm_776_while_lstm_cell_776_biasadd_readvariableop_resource>lstm_776_while_lstm_cell_776_biasadd_readvariableop_resource_0"?
=lstm_776_while_lstm_cell_776_matmul_1_readvariableop_resource?lstm_776_while_lstm_cell_776_matmul_1_readvariableop_resource_0"|
;lstm_776_while_lstm_cell_776_matmul_readvariableop_resource=lstm_776_while_lstm_cell_776_matmul_readvariableop_resource_0"?
clstm_776_while_tensorarrayv2read_tensorlistgetitem_lstm_776_tensorarrayunstack_tensorlistfromtensorelstm_776_while_tensorarrayv2read_tensorlistgetitem_lstm_776_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_776/while/lstm_cell_776/BiasAdd/ReadVariableOp3lstm_776/while/lstm_cell_776/BiasAdd/ReadVariableOp2h
2lstm_776/while/lstm_cell_776/MatMul/ReadVariableOp2lstm_776/while/lstm_cell_776/MatMul/ReadVariableOp2l
4lstm_776/while/lstm_cell_776/MatMul_1/ReadVariableOp4lstm_776/while/lstm_cell_776/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

lstm_774_while_body_4739071.
*lstm_774_while_lstm_774_while_loop_counter4
0lstm_774_while_lstm_774_while_maximum_iterations
lstm_774_while_placeholder 
lstm_774_while_placeholder_1 
lstm_774_while_placeholder_2 
lstm_774_while_placeholder_3-
)lstm_774_while_lstm_774_strided_slice_1_0i
elstm_774_while_tensorarrayv2read_tensorlistgetitem_lstm_774_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_774_while_lstm_cell_774_matmul_readvariableop_resource_0:	?R
?lstm_774_while_lstm_cell_774_matmul_1_readvariableop_resource_0:	d?M
>lstm_774_while_lstm_cell_774_biasadd_readvariableop_resource_0:	?
lstm_774_while_identity
lstm_774_while_identity_1
lstm_774_while_identity_2
lstm_774_while_identity_3
lstm_774_while_identity_4
lstm_774_while_identity_5+
'lstm_774_while_lstm_774_strided_slice_1g
clstm_774_while_tensorarrayv2read_tensorlistgetitem_lstm_774_tensorarrayunstack_tensorlistfromtensorN
;lstm_774_while_lstm_cell_774_matmul_readvariableop_resource:	?P
=lstm_774_while_lstm_cell_774_matmul_1_readvariableop_resource:	d?K
<lstm_774_while_lstm_cell_774_biasadd_readvariableop_resource:	???3lstm_774/while/lstm_cell_774/BiasAdd/ReadVariableOp?2lstm_774/while/lstm_cell_774/MatMul/ReadVariableOp?4lstm_774/while/lstm_cell_774/MatMul_1/ReadVariableOp?
@lstm_774/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_774/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_774_while_tensorarrayv2read_tensorlistgetitem_lstm_774_tensorarrayunstack_tensorlistfromtensor_0lstm_774_while_placeholderIlstm_774/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_774/while/lstm_cell_774/MatMul/ReadVariableOpReadVariableOp=lstm_774_while_lstm_cell_774_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_774/while/lstm_cell_774/MatMulMatMul9lstm_774/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_774/while/lstm_cell_774/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_774/while/lstm_cell_774/MatMul_1/ReadVariableOpReadVariableOp?lstm_774_while_lstm_cell_774_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_774/while/lstm_cell_774/MatMul_1MatMullstm_774_while_placeholder_2<lstm_774/while/lstm_cell_774/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_774/while/lstm_cell_774/addAddV2-lstm_774/while/lstm_cell_774/MatMul:product:0/lstm_774/while/lstm_cell_774/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_774/while/lstm_cell_774/BiasAdd/ReadVariableOpReadVariableOp>lstm_774_while_lstm_cell_774_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_774/while/lstm_cell_774/BiasAddBiasAdd$lstm_774/while/lstm_cell_774/add:z:0;lstm_774/while/lstm_cell_774/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_774/while/lstm_cell_774/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_774/while/lstm_cell_774/splitSplit5lstm_774/while/lstm_cell_774/split/split_dim:output:0-lstm_774/while/lstm_cell_774/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_774/while/lstm_cell_774/SigmoidSigmoid+lstm_774/while/lstm_cell_774/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_774/while/lstm_cell_774/Sigmoid_1Sigmoid+lstm_774/while/lstm_cell_774/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_774/while/lstm_cell_774/mulMul*lstm_774/while/lstm_cell_774/Sigmoid_1:y:0lstm_774_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_774/while/lstm_cell_774/ReluRelu+lstm_774/while/lstm_cell_774/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_774/while/lstm_cell_774/mul_1Mul(lstm_774/while/lstm_cell_774/Sigmoid:y:0/lstm_774/while/lstm_cell_774/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_774/while/lstm_cell_774/add_1AddV2$lstm_774/while/lstm_cell_774/mul:z:0&lstm_774/while/lstm_cell_774/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_774/while/lstm_cell_774/Sigmoid_2Sigmoid+lstm_774/while/lstm_cell_774/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_774/while/lstm_cell_774/Relu_1Relu&lstm_774/while/lstm_cell_774/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_774/while/lstm_cell_774/mul_2Mul*lstm_774/while/lstm_cell_774/Sigmoid_2:y:01lstm_774/while/lstm_cell_774/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_774/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_774_while_placeholder_1lstm_774_while_placeholder&lstm_774/while/lstm_cell_774/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_774/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_774/while/addAddV2lstm_774_while_placeholderlstm_774/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_774/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_774/while/add_1AddV2*lstm_774_while_lstm_774_while_loop_counterlstm_774/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_774/while/IdentityIdentitylstm_774/while/add_1:z:0^lstm_774/while/NoOp*
T0*
_output_shapes
: ?
lstm_774/while/Identity_1Identity0lstm_774_while_lstm_774_while_maximum_iterations^lstm_774/while/NoOp*
T0*
_output_shapes
: t
lstm_774/while/Identity_2Identitylstm_774/while/add:z:0^lstm_774/while/NoOp*
T0*
_output_shapes
: ?
lstm_774/while/Identity_3IdentityClstm_774/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_774/while/NoOp*
T0*
_output_shapes
: ?
lstm_774/while/Identity_4Identity&lstm_774/while/lstm_cell_774/mul_2:z:0^lstm_774/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_774/while/Identity_5Identity&lstm_774/while/lstm_cell_774/add_1:z:0^lstm_774/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_774/while/NoOpNoOp4^lstm_774/while/lstm_cell_774/BiasAdd/ReadVariableOp3^lstm_774/while/lstm_cell_774/MatMul/ReadVariableOp5^lstm_774/while/lstm_cell_774/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_774_while_identity lstm_774/while/Identity:output:0"?
lstm_774_while_identity_1"lstm_774/while/Identity_1:output:0"?
lstm_774_while_identity_2"lstm_774/while/Identity_2:output:0"?
lstm_774_while_identity_3"lstm_774/while/Identity_3:output:0"?
lstm_774_while_identity_4"lstm_774/while/Identity_4:output:0"?
lstm_774_while_identity_5"lstm_774/while/Identity_5:output:0"T
'lstm_774_while_lstm_774_strided_slice_1)lstm_774_while_lstm_774_strided_slice_1_0"~
<lstm_774_while_lstm_cell_774_biasadd_readvariableop_resource>lstm_774_while_lstm_cell_774_biasadd_readvariableop_resource_0"?
=lstm_774_while_lstm_cell_774_matmul_1_readvariableop_resource?lstm_774_while_lstm_cell_774_matmul_1_readvariableop_resource_0"|
;lstm_774_while_lstm_cell_774_matmul_readvariableop_resource=lstm_774_while_lstm_cell_774_matmul_readvariableop_resource_0"?
clstm_774_while_tensorarrayv2read_tensorlistgetitem_lstm_774_tensorarrayunstack_tensorlistfromtensorelstm_774_while_tensorarrayv2read_tensorlistgetitem_lstm_774_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_774/while/lstm_cell_774/BiasAdd/ReadVariableOp3lstm_774/while/lstm_cell_774/BiasAdd/ReadVariableOp2h
2lstm_774/while/lstm_cell_774/MatMul/ReadVariableOp2lstm_774/while/lstm_cell_774/MatMul/ReadVariableOp2l
4lstm_774/while/lstm_cell_774/MatMul_1/ReadVariableOp4lstm_774/while/lstm_cell_774/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_776_layer_call_and_return_conditional_losses_4740858
inputs_0>
,lstm_cell_776_matmul_readvariableop_resource:2(@
.lstm_cell_776_matmul_1_readvariableop_resource:
(;
-lstm_cell_776_biasadd_readvariableop_resource:(
identity??$lstm_cell_776/BiasAdd/ReadVariableOp?#lstm_cell_776/MatMul/ReadVariableOp?%lstm_cell_776/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_776/MatMul/ReadVariableOpReadVariableOp,lstm_cell_776_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_776/MatMulMatMulstrided_slice_2:output:0+lstm_cell_776/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_776/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_776_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_776/MatMul_1MatMulzeros:output:0-lstm_cell_776/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_776/addAddV2lstm_cell_776/MatMul:product:0 lstm_cell_776/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_776/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_776_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_776/BiasAddBiasAddlstm_cell_776/add:z:0,lstm_cell_776/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_776/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_776/splitSplit&lstm_cell_776/split/split_dim:output:0lstm_cell_776/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_776/SigmoidSigmoidlstm_cell_776/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_776/Sigmoid_1Sigmoidlstm_cell_776/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_776/mulMullstm_cell_776/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_776/ReluRelulstm_cell_776/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_776/mul_1Mullstm_cell_776/Sigmoid:y:0 lstm_cell_776/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_776/add_1AddV2lstm_cell_776/mul:z:0lstm_cell_776/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_776/Sigmoid_2Sigmoidlstm_cell_776/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_776/Relu_1Relulstm_cell_776/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_776/mul_2Mullstm_cell_776/Sigmoid_2:y:0"lstm_cell_776/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_776_matmul_readvariableop_resource.lstm_cell_776_matmul_1_readvariableop_resource-lstm_cell_776_biasadd_readvariableop_resource*
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
while_body_4740774*
condR
while_cond_4740773*K
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
NoOpNoOp%^lstm_cell_776/BiasAdd/ReadVariableOp$^lstm_cell_776/MatMul/ReadVariableOp&^lstm_cell_776/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_776/BiasAdd/ReadVariableOp$lstm_cell_776/BiasAdd/ReadVariableOp2J
#lstm_cell_776/MatMul/ReadVariableOp#lstm_cell_776/MatMul/ReadVariableOp2N
%lstm_cell_776/MatMul_1/ReadVariableOp%lstm_cell_776/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?
?
while_cond_4737901
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4737901___redundant_placeholder05
1while_while_cond_4737901___redundant_placeholder15
1while_while_cond_4737901___redundant_placeholder25
1while_while_cond_4737901___redundant_placeholder3
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
?W
?
 __inference__traced_save_4741743
file_prefix/
+savev2_dense_258_kernel_read_readvariableop-
)savev2_dense_258_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_774_lstm_cell_774_kernel_read_readvariableopF
Bsavev2_lstm_774_lstm_cell_774_recurrent_kernel_read_readvariableop:
6savev2_lstm_774_lstm_cell_774_bias_read_readvariableop<
8savev2_lstm_775_lstm_cell_775_kernel_read_readvariableopF
Bsavev2_lstm_775_lstm_cell_775_recurrent_kernel_read_readvariableop:
6savev2_lstm_775_lstm_cell_775_bias_read_readvariableop<
8savev2_lstm_776_lstm_cell_776_kernel_read_readvariableopF
Bsavev2_lstm_776_lstm_cell_776_recurrent_kernel_read_readvariableop:
6savev2_lstm_776_lstm_cell_776_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop6
2savev2_adam_dense_258_kernel_m_read_readvariableop4
0savev2_adam_dense_258_bias_m_read_readvariableopC
?savev2_adam_lstm_774_lstm_cell_774_kernel_m_read_readvariableopM
Isavev2_adam_lstm_774_lstm_cell_774_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_774_lstm_cell_774_bias_m_read_readvariableopC
?savev2_adam_lstm_775_lstm_cell_775_kernel_m_read_readvariableopM
Isavev2_adam_lstm_775_lstm_cell_775_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_775_lstm_cell_775_bias_m_read_readvariableopC
?savev2_adam_lstm_776_lstm_cell_776_kernel_m_read_readvariableopM
Isavev2_adam_lstm_776_lstm_cell_776_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_776_lstm_cell_776_bias_m_read_readvariableop6
2savev2_adam_dense_258_kernel_v_read_readvariableop4
0savev2_adam_dense_258_bias_v_read_readvariableopC
?savev2_adam_lstm_774_lstm_cell_774_kernel_v_read_readvariableopM
Isavev2_adam_lstm_774_lstm_cell_774_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_774_lstm_cell_774_bias_v_read_readvariableopC
?savev2_adam_lstm_775_lstm_cell_775_kernel_v_read_readvariableopM
Isavev2_adam_lstm_775_lstm_cell_775_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_775_lstm_cell_775_bias_v_read_readvariableopC
?savev2_adam_lstm_776_lstm_cell_776_kernel_v_read_readvariableopM
Isavev2_adam_lstm_776_lstm_cell_776_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_776_lstm_cell_776_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_dense_258_kernel_read_readvariableop)savev2_dense_258_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_774_lstm_cell_774_kernel_read_readvariableopBsavev2_lstm_774_lstm_cell_774_recurrent_kernel_read_readvariableop6savev2_lstm_774_lstm_cell_774_bias_read_readvariableop8savev2_lstm_775_lstm_cell_775_kernel_read_readvariableopBsavev2_lstm_775_lstm_cell_775_recurrent_kernel_read_readvariableop6savev2_lstm_775_lstm_cell_775_bias_read_readvariableop8savev2_lstm_776_lstm_cell_776_kernel_read_readvariableopBsavev2_lstm_776_lstm_cell_776_recurrent_kernel_read_readvariableop6savev2_lstm_776_lstm_cell_776_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop2savev2_adam_dense_258_kernel_m_read_readvariableop0savev2_adam_dense_258_bias_m_read_readvariableop?savev2_adam_lstm_774_lstm_cell_774_kernel_m_read_readvariableopIsavev2_adam_lstm_774_lstm_cell_774_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_774_lstm_cell_774_bias_m_read_readvariableop?savev2_adam_lstm_775_lstm_cell_775_kernel_m_read_readvariableopIsavev2_adam_lstm_775_lstm_cell_775_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_775_lstm_cell_775_bias_m_read_readvariableop?savev2_adam_lstm_776_lstm_cell_776_kernel_m_read_readvariableopIsavev2_adam_lstm_776_lstm_cell_776_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_776_lstm_cell_776_bias_m_read_readvariableop2savev2_adam_dense_258_kernel_v_read_readvariableop0savev2_adam_dense_258_bias_v_read_readvariableop?savev2_adam_lstm_774_lstm_cell_774_kernel_v_read_readvariableopIsavev2_adam_lstm_774_lstm_cell_774_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_774_lstm_cell_774_bias_v_read_readvariableop?savev2_adam_lstm_775_lstm_cell_775_kernel_v_read_readvariableopIsavev2_adam_lstm_775_lstm_cell_775_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_775_lstm_cell_775_bias_v_read_readvariableop?savev2_adam_lstm_776_lstm_cell_776_kernel_v_read_readvariableopIsavev2_adam_lstm_776_lstm_cell_776_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_776_lstm_cell_776_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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

?
lstm_774_while_cond_4739070.
*lstm_774_while_lstm_774_while_loop_counter4
0lstm_774_while_lstm_774_while_maximum_iterations
lstm_774_while_placeholder 
lstm_774_while_placeholder_1 
lstm_774_while_placeholder_2 
lstm_774_while_placeholder_30
,lstm_774_while_less_lstm_774_strided_slice_1G
Clstm_774_while_lstm_774_while_cond_4739070___redundant_placeholder0G
Clstm_774_while_lstm_774_while_cond_4739070___redundant_placeholder1G
Clstm_774_while_lstm_774_while_cond_4739070___redundant_placeholder2G
Clstm_774_while_lstm_774_while_cond_4739070___redundant_placeholder3
lstm_774_while_identity
?
lstm_774/while/LessLesslstm_774_while_placeholder,lstm_774_while_less_lstm_774_strided_slice_1*
T0*
_output_shapes
: ]
lstm_774/while/IdentityIdentitylstm_774/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_774_while_identity lstm_774/while/Identity:output:0*(
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
while_cond_4737535
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4737535___redundant_placeholder05
1while_while_cond_4737535___redundant_placeholder15
1while_while_cond_4737535___redundant_placeholder25
1while_while_cond_4737535___redundant_placeholder3
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
while_body_4739542
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_774_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_774_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_774_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_774_matmul_readvariableop_resource:	?G
4while_lstm_cell_774_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_774_biasadd_readvariableop_resource:	???*while/lstm_cell_774/BiasAdd/ReadVariableOp?)while/lstm_cell_774/MatMul/ReadVariableOp?+while/lstm_cell_774/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_774/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_774_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_774/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_774/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_774/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_774_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_774/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_774/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_774/addAddV2$while/lstm_cell_774/MatMul:product:0&while/lstm_cell_774/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_774/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_774_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_774/BiasAddBiasAddwhile/lstm_cell_774/add:z:02while/lstm_cell_774/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_774/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_774/splitSplit,while/lstm_cell_774/split/split_dim:output:0$while/lstm_cell_774/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_774/SigmoidSigmoid"while/lstm_cell_774/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_774/Sigmoid_1Sigmoid"while/lstm_cell_774/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_774/mulMul!while/lstm_cell_774/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_774/ReluRelu"while/lstm_cell_774/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_774/mul_1Mulwhile/lstm_cell_774/Sigmoid:y:0&while/lstm_cell_774/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_774/add_1AddV2while/lstm_cell_774/mul:z:0while/lstm_cell_774/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_774/Sigmoid_2Sigmoid"while/lstm_cell_774/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_774/Relu_1Reluwhile/lstm_cell_774/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_774/mul_2Mul!while/lstm_cell_774/Sigmoid_2:y:0(while/lstm_cell_774/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_774/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_774/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_774/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_774/BiasAdd/ReadVariableOp*^while/lstm_cell_774/MatMul/ReadVariableOp,^while/lstm_cell_774/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_774_biasadd_readvariableop_resource5while_lstm_cell_774_biasadd_readvariableop_resource_0"n
4while_lstm_cell_774_matmul_1_readvariableop_resource6while_lstm_cell_774_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_774_matmul_readvariableop_resource4while_lstm_cell_774_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_774/BiasAdd/ReadVariableOp*while/lstm_cell_774/BiasAdd/ReadVariableOp2V
)while/lstm_cell_774/MatMul/ReadVariableOp)while/lstm_cell_774/MatMul/ReadVariableOp2Z
+while/lstm_cell_774/MatMul_1/ReadVariableOp+while/lstm_cell_774/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_774_layer_call_fn_4739461
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
E__inference_lstm_774_layer_call_and_return_conditional_losses_4736612|
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
while_cond_4739827
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4739827___redundant_placeholder05
1while_while_cond_4739827___redundant_placeholder15
1while_while_cond_4739827___redundant_placeholder25
1while_while_cond_4739827___redundant_placeholder3
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
0__inference_sequential_258_layer_call_fn_4738585

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
K__inference_sequential_258_layer_call_and_return_conditional_losses_4738384o
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
J__inference_lstm_cell_775_layer_call_and_return_conditional_losses_4741502

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
/__inference_lstm_cell_775_layer_call_fn_4741421

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
J__inference_lstm_cell_775_layer_call_and_return_conditional_losses_4736688o
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
?8
?
while_body_4738067
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_775_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_775_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_775_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_775_matmul_readvariableop_resource:	d?G
4while_lstm_cell_775_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_775_biasadd_readvariableop_resource:	???*while/lstm_cell_775/BiasAdd/ReadVariableOp?)while/lstm_cell_775/MatMul/ReadVariableOp?+while/lstm_cell_775/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_775/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_775_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_775/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_775/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_775/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_775_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_775/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_775/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_775/addAddV2$while/lstm_cell_775/MatMul:product:0&while/lstm_cell_775/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_775/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_775_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_775/BiasAddBiasAddwhile/lstm_cell_775/add:z:02while/lstm_cell_775/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_775/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_775/splitSplit,while/lstm_cell_775/split/split_dim:output:0$while/lstm_cell_775/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_775/SigmoidSigmoid"while/lstm_cell_775/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_775/Sigmoid_1Sigmoid"while/lstm_cell_775/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_775/mulMul!while/lstm_cell_775/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_775/ReluRelu"while/lstm_cell_775/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_775/mul_1Mulwhile/lstm_cell_775/Sigmoid:y:0&while/lstm_cell_775/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_775/add_1AddV2while/lstm_cell_775/mul:z:0while/lstm_cell_775/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_775/Sigmoid_2Sigmoid"while/lstm_cell_775/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_775/Relu_1Reluwhile/lstm_cell_775/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_775/mul_2Mul!while/lstm_cell_775/Sigmoid_2:y:0(while/lstm_cell_775/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_775/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_775/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_775/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_775/BiasAdd/ReadVariableOp*^while/lstm_cell_775/MatMul/ReadVariableOp,^while/lstm_cell_775/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_775_biasadd_readvariableop_resource5while_lstm_cell_775_biasadd_readvariableop_resource_0"n
4while_lstm_cell_775_matmul_1_readvariableop_resource6while_lstm_cell_775_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_775_matmul_readvariableop_resource4while_lstm_cell_775_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_775/BiasAdd/ReadVariableOp*while/lstm_cell_775/BiasAdd/ReadVariableOp2V
)while/lstm_cell_775/MatMul/ReadVariableOp)while/lstm_cell_775/MatMul/ReadVariableOp2Z
+while/lstm_cell_775/MatMul_1/ReadVariableOp+while/lstm_cell_775/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_776_while_cond_4739348.
*lstm_776_while_lstm_776_while_loop_counter4
0lstm_776_while_lstm_776_while_maximum_iterations
lstm_776_while_placeholder 
lstm_776_while_placeholder_1 
lstm_776_while_placeholder_2 
lstm_776_while_placeholder_30
,lstm_776_while_less_lstm_776_strided_slice_1G
Clstm_776_while_lstm_776_while_cond_4739348___redundant_placeholder0G
Clstm_776_while_lstm_776_while_cond_4739348___redundant_placeholder1G
Clstm_776_while_lstm_776_while_cond_4739348___redundant_placeholder2G
Clstm_776_while_lstm_776_while_cond_4739348___redundant_placeholder3
lstm_776_while_identity
?
lstm_776/while/LessLesslstm_776_while_placeholder,lstm_776_while_less_lstm_776_strided_slice_1*
T0*
_output_shapes
: ]
lstm_776/while/IdentityIdentitylstm_776/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_776_while_identity lstm_776/while/Identity:output:0*(
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
*__inference_lstm_775_layer_call_fn_4740099

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
E__inference_lstm_775_layer_call_and_return_conditional_losses_4738151s
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
?8
?
while_body_4739828
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_774_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_774_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_774_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_774_matmul_readvariableop_resource:	?G
4while_lstm_cell_774_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_774_biasadd_readvariableop_resource:	???*while/lstm_cell_774/BiasAdd/ReadVariableOp?)while/lstm_cell_774/MatMul/ReadVariableOp?+while/lstm_cell_774/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_774/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_774_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_774/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_774/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_774/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_774_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_774/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_774/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_774/addAddV2$while/lstm_cell_774/MatMul:product:0&while/lstm_cell_774/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_774/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_774_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_774/BiasAddBiasAddwhile/lstm_cell_774/add:z:02while/lstm_cell_774/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_774/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_774/splitSplit,while/lstm_cell_774/split/split_dim:output:0$while/lstm_cell_774/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_774/SigmoidSigmoid"while/lstm_cell_774/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_774/Sigmoid_1Sigmoid"while/lstm_cell_774/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_774/mulMul!while/lstm_cell_774/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_774/ReluRelu"while/lstm_cell_774/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_774/mul_1Mulwhile/lstm_cell_774/Sigmoid:y:0&while/lstm_cell_774/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_774/add_1AddV2while/lstm_cell_774/mul:z:0while/lstm_cell_774/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_774/Sigmoid_2Sigmoid"while/lstm_cell_774/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_774/Relu_1Reluwhile/lstm_cell_774/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_774/mul_2Mul!while/lstm_cell_774/Sigmoid_2:y:0(while/lstm_cell_774/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_774/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_774/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_774/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_774/BiasAdd/ReadVariableOp*^while/lstm_cell_774/MatMul/ReadVariableOp,^while/lstm_cell_774/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_774_biasadd_readvariableop_resource5while_lstm_cell_774_biasadd_readvariableop_resource_0"n
4while_lstm_cell_774_matmul_1_readvariableop_resource6while_lstm_cell_774_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_774_matmul_readvariableop_resource4while_lstm_cell_774_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_774/BiasAdd/ReadVariableOp*while/lstm_cell_774/BiasAdd/ReadVariableOp2V
)while/lstm_cell_774/MatMul/ReadVariableOp)while/lstm_cell_774/MatMul/ReadVariableOp2Z
+while/lstm_cell_774/MatMul_1/ReadVariableOp+while/lstm_cell_774/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_776_layer_call_and_return_conditional_losses_4737986

inputs>
,lstm_cell_776_matmul_readvariableop_resource:2(@
.lstm_cell_776_matmul_1_readvariableop_resource:
(;
-lstm_cell_776_biasadd_readvariableop_resource:(
identity??$lstm_cell_776/BiasAdd/ReadVariableOp?#lstm_cell_776/MatMul/ReadVariableOp?%lstm_cell_776/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_776/MatMul/ReadVariableOpReadVariableOp,lstm_cell_776_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_776/MatMulMatMulstrided_slice_2:output:0+lstm_cell_776/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_776/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_776_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_776/MatMul_1MatMulzeros:output:0-lstm_cell_776/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_776/addAddV2lstm_cell_776/MatMul:product:0 lstm_cell_776/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_776/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_776_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_776/BiasAddBiasAddlstm_cell_776/add:z:0,lstm_cell_776/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_776/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_776/splitSplit&lstm_cell_776/split/split_dim:output:0lstm_cell_776/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_776/SigmoidSigmoidlstm_cell_776/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_776/Sigmoid_1Sigmoidlstm_cell_776/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_776/mulMullstm_cell_776/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_776/ReluRelulstm_cell_776/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_776/mul_1Mullstm_cell_776/Sigmoid:y:0 lstm_cell_776/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_776/add_1AddV2lstm_cell_776/mul:z:0lstm_cell_776/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_776/Sigmoid_2Sigmoidlstm_cell_776/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_776/Relu_1Relulstm_cell_776/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_776/mul_2Mullstm_cell_776/Sigmoid_2:y:0"lstm_cell_776/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_776_matmul_readvariableop_resource.lstm_cell_776_matmul_1_readvariableop_resource-lstm_cell_776_biasadd_readvariableop_resource*
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
while_body_4737902*
condR
while_cond_4737901*K
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
NoOpNoOp%^lstm_cell_776/BiasAdd/ReadVariableOp$^lstm_cell_776/MatMul/ReadVariableOp&^lstm_cell_776/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_776/BiasAdd/ReadVariableOp$lstm_cell_776/BiasAdd/ReadVariableOp2J
#lstm_cell_776/MatMul/ReadVariableOp#lstm_cell_776/MatMul/ReadVariableOp2N
%lstm_cell_776/MatMul_1/ReadVariableOp%lstm_cell_776/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?T
?
*sequential_258_lstm_775_while_body_4736042L
Hsequential_258_lstm_775_while_sequential_258_lstm_775_while_loop_counterR
Nsequential_258_lstm_775_while_sequential_258_lstm_775_while_maximum_iterations-
)sequential_258_lstm_775_while_placeholder/
+sequential_258_lstm_775_while_placeholder_1/
+sequential_258_lstm_775_while_placeholder_2/
+sequential_258_lstm_775_while_placeholder_3K
Gsequential_258_lstm_775_while_sequential_258_lstm_775_strided_slice_1_0?
?sequential_258_lstm_775_while_tensorarrayv2read_tensorlistgetitem_sequential_258_lstm_775_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_258_lstm_775_while_lstm_cell_775_matmul_readvariableop_resource_0:	d?a
Nsequential_258_lstm_775_while_lstm_cell_775_matmul_1_readvariableop_resource_0:	2?\
Msequential_258_lstm_775_while_lstm_cell_775_biasadd_readvariableop_resource_0:	?*
&sequential_258_lstm_775_while_identity,
(sequential_258_lstm_775_while_identity_1,
(sequential_258_lstm_775_while_identity_2,
(sequential_258_lstm_775_while_identity_3,
(sequential_258_lstm_775_while_identity_4,
(sequential_258_lstm_775_while_identity_5I
Esequential_258_lstm_775_while_sequential_258_lstm_775_strided_slice_1?
?sequential_258_lstm_775_while_tensorarrayv2read_tensorlistgetitem_sequential_258_lstm_775_tensorarrayunstack_tensorlistfromtensor]
Jsequential_258_lstm_775_while_lstm_cell_775_matmul_readvariableop_resource:	d?_
Lsequential_258_lstm_775_while_lstm_cell_775_matmul_1_readvariableop_resource:	2?Z
Ksequential_258_lstm_775_while_lstm_cell_775_biasadd_readvariableop_resource:	???Bsequential_258/lstm_775/while/lstm_cell_775/BiasAdd/ReadVariableOp?Asequential_258/lstm_775/while/lstm_cell_775/MatMul/ReadVariableOp?Csequential_258/lstm_775/while/lstm_cell_775/MatMul_1/ReadVariableOp?
Osequential_258/lstm_775/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
Asequential_258/lstm_775/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_258_lstm_775_while_tensorarrayv2read_tensorlistgetitem_sequential_258_lstm_775_tensorarrayunstack_tensorlistfromtensor_0)sequential_258_lstm_775_while_placeholderXsequential_258/lstm_775/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
Asequential_258/lstm_775/while/lstm_cell_775/MatMul/ReadVariableOpReadVariableOpLsequential_258_lstm_775_while_lstm_cell_775_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
2sequential_258/lstm_775/while/lstm_cell_775/MatMulMatMulHsequential_258/lstm_775/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_258/lstm_775/while/lstm_cell_775/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_258/lstm_775/while/lstm_cell_775/MatMul_1/ReadVariableOpReadVariableOpNsequential_258_lstm_775_while_lstm_cell_775_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
4sequential_258/lstm_775/while/lstm_cell_775/MatMul_1MatMul+sequential_258_lstm_775_while_placeholder_2Ksequential_258/lstm_775/while/lstm_cell_775/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_258/lstm_775/while/lstm_cell_775/addAddV2<sequential_258/lstm_775/while/lstm_cell_775/MatMul:product:0>sequential_258/lstm_775/while/lstm_cell_775/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_258/lstm_775/while/lstm_cell_775/BiasAdd/ReadVariableOpReadVariableOpMsequential_258_lstm_775_while_lstm_cell_775_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_258/lstm_775/while/lstm_cell_775/BiasAddBiasAdd3sequential_258/lstm_775/while/lstm_cell_775/add:z:0Jsequential_258/lstm_775/while/lstm_cell_775/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_258/lstm_775/while/lstm_cell_775/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_258/lstm_775/while/lstm_cell_775/splitSplitDsequential_258/lstm_775/while/lstm_cell_775/split/split_dim:output:0<sequential_258/lstm_775/while/lstm_cell_775/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
3sequential_258/lstm_775/while/lstm_cell_775/SigmoidSigmoid:sequential_258/lstm_775/while/lstm_cell_775/split:output:0*
T0*'
_output_shapes
:?????????2?
5sequential_258/lstm_775/while/lstm_cell_775/Sigmoid_1Sigmoid:sequential_258/lstm_775/while/lstm_cell_775/split:output:1*
T0*'
_output_shapes
:?????????2?
/sequential_258/lstm_775/while/lstm_cell_775/mulMul9sequential_258/lstm_775/while/lstm_cell_775/Sigmoid_1:y:0+sequential_258_lstm_775_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
0sequential_258/lstm_775/while/lstm_cell_775/ReluRelu:sequential_258/lstm_775/while/lstm_cell_775/split:output:2*
T0*'
_output_shapes
:?????????2?
1sequential_258/lstm_775/while/lstm_cell_775/mul_1Mul7sequential_258/lstm_775/while/lstm_cell_775/Sigmoid:y:0>sequential_258/lstm_775/while/lstm_cell_775/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
1sequential_258/lstm_775/while/lstm_cell_775/add_1AddV23sequential_258/lstm_775/while/lstm_cell_775/mul:z:05sequential_258/lstm_775/while/lstm_cell_775/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
5sequential_258/lstm_775/while/lstm_cell_775/Sigmoid_2Sigmoid:sequential_258/lstm_775/while/lstm_cell_775/split:output:3*
T0*'
_output_shapes
:?????????2?
2sequential_258/lstm_775/while/lstm_cell_775/Relu_1Relu5sequential_258/lstm_775/while/lstm_cell_775/add_1:z:0*
T0*'
_output_shapes
:?????????2?
1sequential_258/lstm_775/while/lstm_cell_775/mul_2Mul9sequential_258/lstm_775/while/lstm_cell_775/Sigmoid_2:y:0@sequential_258/lstm_775/while/lstm_cell_775/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
Bsequential_258/lstm_775/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_258_lstm_775_while_placeholder_1)sequential_258_lstm_775_while_placeholder5sequential_258/lstm_775/while/lstm_cell_775/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_258/lstm_775/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_258/lstm_775/while/addAddV2)sequential_258_lstm_775_while_placeholder,sequential_258/lstm_775/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_258/lstm_775/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_258/lstm_775/while/add_1AddV2Hsequential_258_lstm_775_while_sequential_258_lstm_775_while_loop_counter.sequential_258/lstm_775/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_258/lstm_775/while/IdentityIdentity'sequential_258/lstm_775/while/add_1:z:0#^sequential_258/lstm_775/while/NoOp*
T0*
_output_shapes
: ?
(sequential_258/lstm_775/while/Identity_1IdentityNsequential_258_lstm_775_while_sequential_258_lstm_775_while_maximum_iterations#^sequential_258/lstm_775/while/NoOp*
T0*
_output_shapes
: ?
(sequential_258/lstm_775/while/Identity_2Identity%sequential_258/lstm_775/while/add:z:0#^sequential_258/lstm_775/while/NoOp*
T0*
_output_shapes
: ?
(sequential_258/lstm_775/while/Identity_3IdentityRsequential_258/lstm_775/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_258/lstm_775/while/NoOp*
T0*
_output_shapes
: ?
(sequential_258/lstm_775/while/Identity_4Identity5sequential_258/lstm_775/while/lstm_cell_775/mul_2:z:0#^sequential_258/lstm_775/while/NoOp*
T0*'
_output_shapes
:?????????2?
(sequential_258/lstm_775/while/Identity_5Identity5sequential_258/lstm_775/while/lstm_cell_775/add_1:z:0#^sequential_258/lstm_775/while/NoOp*
T0*'
_output_shapes
:?????????2?
"sequential_258/lstm_775/while/NoOpNoOpC^sequential_258/lstm_775/while/lstm_cell_775/BiasAdd/ReadVariableOpB^sequential_258/lstm_775/while/lstm_cell_775/MatMul/ReadVariableOpD^sequential_258/lstm_775/while/lstm_cell_775/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_258_lstm_775_while_identity/sequential_258/lstm_775/while/Identity:output:0"]
(sequential_258_lstm_775_while_identity_11sequential_258/lstm_775/while/Identity_1:output:0"]
(sequential_258_lstm_775_while_identity_21sequential_258/lstm_775/while/Identity_2:output:0"]
(sequential_258_lstm_775_while_identity_31sequential_258/lstm_775/while/Identity_3:output:0"]
(sequential_258_lstm_775_while_identity_41sequential_258/lstm_775/while/Identity_4:output:0"]
(sequential_258_lstm_775_while_identity_51sequential_258/lstm_775/while/Identity_5:output:0"?
Ksequential_258_lstm_775_while_lstm_cell_775_biasadd_readvariableop_resourceMsequential_258_lstm_775_while_lstm_cell_775_biasadd_readvariableop_resource_0"?
Lsequential_258_lstm_775_while_lstm_cell_775_matmul_1_readvariableop_resourceNsequential_258_lstm_775_while_lstm_cell_775_matmul_1_readvariableop_resource_0"?
Jsequential_258_lstm_775_while_lstm_cell_775_matmul_readvariableop_resourceLsequential_258_lstm_775_while_lstm_cell_775_matmul_readvariableop_resource_0"?
Esequential_258_lstm_775_while_sequential_258_lstm_775_strided_slice_1Gsequential_258_lstm_775_while_sequential_258_lstm_775_strided_slice_1_0"?
?sequential_258_lstm_775_while_tensorarrayv2read_tensorlistgetitem_sequential_258_lstm_775_tensorarrayunstack_tensorlistfromtensor?sequential_258_lstm_775_while_tensorarrayv2read_tensorlistgetitem_sequential_258_lstm_775_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2?
Bsequential_258/lstm_775/while/lstm_cell_775/BiasAdd/ReadVariableOpBsequential_258/lstm_775/while/lstm_cell_775/BiasAdd/ReadVariableOp2?
Asequential_258/lstm_775/while/lstm_cell_775/MatMul/ReadVariableOpAsequential_258/lstm_775/while/lstm_cell_775/MatMul/ReadVariableOp2?
Csequential_258/lstm_775/while/lstm_cell_775/MatMul_1/ReadVariableOpCsequential_258/lstm_775/while/lstm_cell_775/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_774_layer_call_fn_4741323

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
J__inference_lstm_cell_774_layer_call_and_return_conditional_losses_4736338o
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
while_cond_4737685
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4737685___redundant_placeholder05
1while_while_cond_4737685___redundant_placeholder15
1while_while_cond_4737685___redundant_placeholder25
1while_while_cond_4737685___redundant_placeholder3
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
??
?
"__inference__wrapped_model_4736271
lstm_774_inputW
Dsequential_258_lstm_774_lstm_cell_774_matmul_readvariableop_resource:	?Y
Fsequential_258_lstm_774_lstm_cell_774_matmul_1_readvariableop_resource:	d?T
Esequential_258_lstm_774_lstm_cell_774_biasadd_readvariableop_resource:	?W
Dsequential_258_lstm_775_lstm_cell_775_matmul_readvariableop_resource:	d?Y
Fsequential_258_lstm_775_lstm_cell_775_matmul_1_readvariableop_resource:	2?T
Esequential_258_lstm_775_lstm_cell_775_biasadd_readvariableop_resource:	?V
Dsequential_258_lstm_776_lstm_cell_776_matmul_readvariableop_resource:2(X
Fsequential_258_lstm_776_lstm_cell_776_matmul_1_readvariableop_resource:
(S
Esequential_258_lstm_776_lstm_cell_776_biasadd_readvariableop_resource:(I
7sequential_258_dense_258_matmul_readvariableop_resource:
F
8sequential_258_dense_258_biasadd_readvariableop_resource:
identity??/sequential_258/dense_258/BiasAdd/ReadVariableOp?.sequential_258/dense_258/MatMul/ReadVariableOp?<sequential_258/lstm_774/lstm_cell_774/BiasAdd/ReadVariableOp?;sequential_258/lstm_774/lstm_cell_774/MatMul/ReadVariableOp?=sequential_258/lstm_774/lstm_cell_774/MatMul_1/ReadVariableOp?sequential_258/lstm_774/while?<sequential_258/lstm_775/lstm_cell_775/BiasAdd/ReadVariableOp?;sequential_258/lstm_775/lstm_cell_775/MatMul/ReadVariableOp?=sequential_258/lstm_775/lstm_cell_775/MatMul_1/ReadVariableOp?sequential_258/lstm_775/while?<sequential_258/lstm_776/lstm_cell_776/BiasAdd/ReadVariableOp?;sequential_258/lstm_776/lstm_cell_776/MatMul/ReadVariableOp?=sequential_258/lstm_776/lstm_cell_776/MatMul_1/ReadVariableOp?sequential_258/lstm_776/while[
sequential_258/lstm_774/ShapeShapelstm_774_input*
T0*
_output_shapes
:u
+sequential_258/lstm_774/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_258/lstm_774/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_258/lstm_774/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_258/lstm_774/strided_sliceStridedSlice&sequential_258/lstm_774/Shape:output:04sequential_258/lstm_774/strided_slice/stack:output:06sequential_258/lstm_774/strided_slice/stack_1:output:06sequential_258/lstm_774/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_258/lstm_774/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
$sequential_258/lstm_774/zeros/packedPack.sequential_258/lstm_774/strided_slice:output:0/sequential_258/lstm_774/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_258/lstm_774/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_258/lstm_774/zerosFill-sequential_258/lstm_774/zeros/packed:output:0,sequential_258/lstm_774/zeros/Const:output:0*
T0*'
_output_shapes
:?????????dj
(sequential_258/lstm_774/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
&sequential_258/lstm_774/zeros_1/packedPack.sequential_258/lstm_774/strided_slice:output:01sequential_258/lstm_774/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_258/lstm_774/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_258/lstm_774/zeros_1Fill/sequential_258/lstm_774/zeros_1/packed:output:0.sequential_258/lstm_774/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????d{
&sequential_258/lstm_774/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_258/lstm_774/transpose	Transposelstm_774_input/sequential_258/lstm_774/transpose/perm:output:0*
T0*+
_output_shapes
:?????????t
sequential_258/lstm_774/Shape_1Shape%sequential_258/lstm_774/transpose:y:0*
T0*
_output_shapes
:w
-sequential_258/lstm_774/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_258/lstm_774/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_258/lstm_774/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_258/lstm_774/strided_slice_1StridedSlice(sequential_258/lstm_774/Shape_1:output:06sequential_258/lstm_774/strided_slice_1/stack:output:08sequential_258/lstm_774/strided_slice_1/stack_1:output:08sequential_258/lstm_774/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_258/lstm_774/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_258/lstm_774/TensorArrayV2TensorListReserve<sequential_258/lstm_774/TensorArrayV2/element_shape:output:00sequential_258/lstm_774/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_258/lstm_774/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
?sequential_258/lstm_774/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_258/lstm_774/transpose:y:0Vsequential_258/lstm_774/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_258/lstm_774/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_258/lstm_774/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_258/lstm_774/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_258/lstm_774/strided_slice_2StridedSlice%sequential_258/lstm_774/transpose:y:06sequential_258/lstm_774/strided_slice_2/stack:output:08sequential_258/lstm_774/strided_slice_2/stack_1:output:08sequential_258/lstm_774/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
;sequential_258/lstm_774/lstm_cell_774/MatMul/ReadVariableOpReadVariableOpDsequential_258_lstm_774_lstm_cell_774_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
,sequential_258/lstm_774/lstm_cell_774/MatMulMatMul0sequential_258/lstm_774/strided_slice_2:output:0Csequential_258/lstm_774/lstm_cell_774/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_258/lstm_774/lstm_cell_774/MatMul_1/ReadVariableOpReadVariableOpFsequential_258_lstm_774_lstm_cell_774_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
.sequential_258/lstm_774/lstm_cell_774/MatMul_1MatMul&sequential_258/lstm_774/zeros:output:0Esequential_258/lstm_774/lstm_cell_774/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_258/lstm_774/lstm_cell_774/addAddV26sequential_258/lstm_774/lstm_cell_774/MatMul:product:08sequential_258/lstm_774/lstm_cell_774/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_258/lstm_774/lstm_cell_774/BiasAdd/ReadVariableOpReadVariableOpEsequential_258_lstm_774_lstm_cell_774_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_258/lstm_774/lstm_cell_774/BiasAddBiasAdd-sequential_258/lstm_774/lstm_cell_774/add:z:0Dsequential_258/lstm_774/lstm_cell_774/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_258/lstm_774/lstm_cell_774/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_258/lstm_774/lstm_cell_774/splitSplit>sequential_258/lstm_774/lstm_cell_774/split/split_dim:output:06sequential_258/lstm_774/lstm_cell_774/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
-sequential_258/lstm_774/lstm_cell_774/SigmoidSigmoid4sequential_258/lstm_774/lstm_cell_774/split:output:0*
T0*'
_output_shapes
:?????????d?
/sequential_258/lstm_774/lstm_cell_774/Sigmoid_1Sigmoid4sequential_258/lstm_774/lstm_cell_774/split:output:1*
T0*'
_output_shapes
:?????????d?
)sequential_258/lstm_774/lstm_cell_774/mulMul3sequential_258/lstm_774/lstm_cell_774/Sigmoid_1:y:0(sequential_258/lstm_774/zeros_1:output:0*
T0*'
_output_shapes
:?????????d?
*sequential_258/lstm_774/lstm_cell_774/ReluRelu4sequential_258/lstm_774/lstm_cell_774/split:output:2*
T0*'
_output_shapes
:?????????d?
+sequential_258/lstm_774/lstm_cell_774/mul_1Mul1sequential_258/lstm_774/lstm_cell_774/Sigmoid:y:08sequential_258/lstm_774/lstm_cell_774/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
+sequential_258/lstm_774/lstm_cell_774/add_1AddV2-sequential_258/lstm_774/lstm_cell_774/mul:z:0/sequential_258/lstm_774/lstm_cell_774/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
/sequential_258/lstm_774/lstm_cell_774/Sigmoid_2Sigmoid4sequential_258/lstm_774/lstm_cell_774/split:output:3*
T0*'
_output_shapes
:?????????d?
,sequential_258/lstm_774/lstm_cell_774/Relu_1Relu/sequential_258/lstm_774/lstm_cell_774/add_1:z:0*
T0*'
_output_shapes
:?????????d?
+sequential_258/lstm_774/lstm_cell_774/mul_2Mul3sequential_258/lstm_774/lstm_cell_774/Sigmoid_2:y:0:sequential_258/lstm_774/lstm_cell_774/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
5sequential_258/lstm_774/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
'sequential_258/lstm_774/TensorArrayV2_1TensorListReserve>sequential_258/lstm_774/TensorArrayV2_1/element_shape:output:00sequential_258/lstm_774/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_258/lstm_774/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_258/lstm_774/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_258/lstm_774/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_258/lstm_774/whileWhile3sequential_258/lstm_774/while/loop_counter:output:09sequential_258/lstm_774/while/maximum_iterations:output:0%sequential_258/lstm_774/time:output:00sequential_258/lstm_774/TensorArrayV2_1:handle:0&sequential_258/lstm_774/zeros:output:0(sequential_258/lstm_774/zeros_1:output:00sequential_258/lstm_774/strided_slice_1:output:0Osequential_258/lstm_774/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_258_lstm_774_lstm_cell_774_matmul_readvariableop_resourceFsequential_258_lstm_774_lstm_cell_774_matmul_1_readvariableop_resourceEsequential_258_lstm_774_lstm_cell_774_biasadd_readvariableop_resource*
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
*sequential_258_lstm_774_while_body_4735903*6
cond.R,
*sequential_258_lstm_774_while_cond_4735902*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
Hsequential_258/lstm_774/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
:sequential_258/lstm_774/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_258/lstm_774/while:output:3Qsequential_258/lstm_774/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0?
-sequential_258/lstm_774/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_258/lstm_774/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_258/lstm_774/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_258/lstm_774/strided_slice_3StridedSliceCsequential_258/lstm_774/TensorArrayV2Stack/TensorListStack:tensor:06sequential_258/lstm_774/strided_slice_3/stack:output:08sequential_258/lstm_774/strided_slice_3/stack_1:output:08sequential_258/lstm_774/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask}
(sequential_258/lstm_774/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_258/lstm_774/transpose_1	TransposeCsequential_258/lstm_774/TensorArrayV2Stack/TensorListStack:tensor:01sequential_258/lstm_774/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????ds
sequential_258/lstm_774/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_258/lstm_775/ShapeShape'sequential_258/lstm_774/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_258/lstm_775/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_258/lstm_775/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_258/lstm_775/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_258/lstm_775/strided_sliceStridedSlice&sequential_258/lstm_775/Shape:output:04sequential_258/lstm_775/strided_slice/stack:output:06sequential_258/lstm_775/strided_slice/stack_1:output:06sequential_258/lstm_775/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_258/lstm_775/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
$sequential_258/lstm_775/zeros/packedPack.sequential_258/lstm_775/strided_slice:output:0/sequential_258/lstm_775/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_258/lstm_775/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_258/lstm_775/zerosFill-sequential_258/lstm_775/zeros/packed:output:0,sequential_258/lstm_775/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2j
(sequential_258/lstm_775/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
&sequential_258/lstm_775/zeros_1/packedPack.sequential_258/lstm_775/strided_slice:output:01sequential_258/lstm_775/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_258/lstm_775/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_258/lstm_775/zeros_1Fill/sequential_258/lstm_775/zeros_1/packed:output:0.sequential_258/lstm_775/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2{
&sequential_258/lstm_775/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_258/lstm_775/transpose	Transpose'sequential_258/lstm_774/transpose_1:y:0/sequential_258/lstm_775/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dt
sequential_258/lstm_775/Shape_1Shape%sequential_258/lstm_775/transpose:y:0*
T0*
_output_shapes
:w
-sequential_258/lstm_775/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_258/lstm_775/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_258/lstm_775/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_258/lstm_775/strided_slice_1StridedSlice(sequential_258/lstm_775/Shape_1:output:06sequential_258/lstm_775/strided_slice_1/stack:output:08sequential_258/lstm_775/strided_slice_1/stack_1:output:08sequential_258/lstm_775/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_258/lstm_775/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_258/lstm_775/TensorArrayV2TensorListReserve<sequential_258/lstm_775/TensorArrayV2/element_shape:output:00sequential_258/lstm_775/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_258/lstm_775/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
?sequential_258/lstm_775/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_258/lstm_775/transpose:y:0Vsequential_258/lstm_775/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_258/lstm_775/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_258/lstm_775/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_258/lstm_775/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_258/lstm_775/strided_slice_2StridedSlice%sequential_258/lstm_775/transpose:y:06sequential_258/lstm_775/strided_slice_2/stack:output:08sequential_258/lstm_775/strided_slice_2/stack_1:output:08sequential_258/lstm_775/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
;sequential_258/lstm_775/lstm_cell_775/MatMul/ReadVariableOpReadVariableOpDsequential_258_lstm_775_lstm_cell_775_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
,sequential_258/lstm_775/lstm_cell_775/MatMulMatMul0sequential_258/lstm_775/strided_slice_2:output:0Csequential_258/lstm_775/lstm_cell_775/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_258/lstm_775/lstm_cell_775/MatMul_1/ReadVariableOpReadVariableOpFsequential_258_lstm_775_lstm_cell_775_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
.sequential_258/lstm_775/lstm_cell_775/MatMul_1MatMul&sequential_258/lstm_775/zeros:output:0Esequential_258/lstm_775/lstm_cell_775/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_258/lstm_775/lstm_cell_775/addAddV26sequential_258/lstm_775/lstm_cell_775/MatMul:product:08sequential_258/lstm_775/lstm_cell_775/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_258/lstm_775/lstm_cell_775/BiasAdd/ReadVariableOpReadVariableOpEsequential_258_lstm_775_lstm_cell_775_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_258/lstm_775/lstm_cell_775/BiasAddBiasAdd-sequential_258/lstm_775/lstm_cell_775/add:z:0Dsequential_258/lstm_775/lstm_cell_775/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_258/lstm_775/lstm_cell_775/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_258/lstm_775/lstm_cell_775/splitSplit>sequential_258/lstm_775/lstm_cell_775/split/split_dim:output:06sequential_258/lstm_775/lstm_cell_775/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
-sequential_258/lstm_775/lstm_cell_775/SigmoidSigmoid4sequential_258/lstm_775/lstm_cell_775/split:output:0*
T0*'
_output_shapes
:?????????2?
/sequential_258/lstm_775/lstm_cell_775/Sigmoid_1Sigmoid4sequential_258/lstm_775/lstm_cell_775/split:output:1*
T0*'
_output_shapes
:?????????2?
)sequential_258/lstm_775/lstm_cell_775/mulMul3sequential_258/lstm_775/lstm_cell_775/Sigmoid_1:y:0(sequential_258/lstm_775/zeros_1:output:0*
T0*'
_output_shapes
:?????????2?
*sequential_258/lstm_775/lstm_cell_775/ReluRelu4sequential_258/lstm_775/lstm_cell_775/split:output:2*
T0*'
_output_shapes
:?????????2?
+sequential_258/lstm_775/lstm_cell_775/mul_1Mul1sequential_258/lstm_775/lstm_cell_775/Sigmoid:y:08sequential_258/lstm_775/lstm_cell_775/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
+sequential_258/lstm_775/lstm_cell_775/add_1AddV2-sequential_258/lstm_775/lstm_cell_775/mul:z:0/sequential_258/lstm_775/lstm_cell_775/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
/sequential_258/lstm_775/lstm_cell_775/Sigmoid_2Sigmoid4sequential_258/lstm_775/lstm_cell_775/split:output:3*
T0*'
_output_shapes
:?????????2?
,sequential_258/lstm_775/lstm_cell_775/Relu_1Relu/sequential_258/lstm_775/lstm_cell_775/add_1:z:0*
T0*'
_output_shapes
:?????????2?
+sequential_258/lstm_775/lstm_cell_775/mul_2Mul3sequential_258/lstm_775/lstm_cell_775/Sigmoid_2:y:0:sequential_258/lstm_775/lstm_cell_775/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
5sequential_258/lstm_775/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
'sequential_258/lstm_775/TensorArrayV2_1TensorListReserve>sequential_258/lstm_775/TensorArrayV2_1/element_shape:output:00sequential_258/lstm_775/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_258/lstm_775/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_258/lstm_775/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_258/lstm_775/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_258/lstm_775/whileWhile3sequential_258/lstm_775/while/loop_counter:output:09sequential_258/lstm_775/while/maximum_iterations:output:0%sequential_258/lstm_775/time:output:00sequential_258/lstm_775/TensorArrayV2_1:handle:0&sequential_258/lstm_775/zeros:output:0(sequential_258/lstm_775/zeros_1:output:00sequential_258/lstm_775/strided_slice_1:output:0Osequential_258/lstm_775/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_258_lstm_775_lstm_cell_775_matmul_readvariableop_resourceFsequential_258_lstm_775_lstm_cell_775_matmul_1_readvariableop_resourceEsequential_258_lstm_775_lstm_cell_775_biasadd_readvariableop_resource*
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
*sequential_258_lstm_775_while_body_4736042*6
cond.R,
*sequential_258_lstm_775_while_cond_4736041*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
Hsequential_258/lstm_775/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
:sequential_258/lstm_775/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_258/lstm_775/while:output:3Qsequential_258/lstm_775/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0?
-sequential_258/lstm_775/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_258/lstm_775/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_258/lstm_775/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_258/lstm_775/strided_slice_3StridedSliceCsequential_258/lstm_775/TensorArrayV2Stack/TensorListStack:tensor:06sequential_258/lstm_775/strided_slice_3/stack:output:08sequential_258/lstm_775/strided_slice_3/stack_1:output:08sequential_258/lstm_775/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask}
(sequential_258/lstm_775/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_258/lstm_775/transpose_1	TransposeCsequential_258/lstm_775/TensorArrayV2Stack/TensorListStack:tensor:01sequential_258/lstm_775/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2s
sequential_258/lstm_775/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_258/lstm_776/ShapeShape'sequential_258/lstm_775/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_258/lstm_776/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_258/lstm_776/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_258/lstm_776/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_258/lstm_776/strided_sliceStridedSlice&sequential_258/lstm_776/Shape:output:04sequential_258/lstm_776/strided_slice/stack:output:06sequential_258/lstm_776/strided_slice/stack_1:output:06sequential_258/lstm_776/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_258/lstm_776/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
$sequential_258/lstm_776/zeros/packedPack.sequential_258/lstm_776/strided_slice:output:0/sequential_258/lstm_776/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_258/lstm_776/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_258/lstm_776/zerosFill-sequential_258/lstm_776/zeros/packed:output:0,sequential_258/lstm_776/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
j
(sequential_258/lstm_776/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
&sequential_258/lstm_776/zeros_1/packedPack.sequential_258/lstm_776/strided_slice:output:01sequential_258/lstm_776/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_258/lstm_776/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_258/lstm_776/zeros_1Fill/sequential_258/lstm_776/zeros_1/packed:output:0.sequential_258/lstm_776/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
{
&sequential_258/lstm_776/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_258/lstm_776/transpose	Transpose'sequential_258/lstm_775/transpose_1:y:0/sequential_258/lstm_776/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2t
sequential_258/lstm_776/Shape_1Shape%sequential_258/lstm_776/transpose:y:0*
T0*
_output_shapes
:w
-sequential_258/lstm_776/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_258/lstm_776/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_258/lstm_776/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_258/lstm_776/strided_slice_1StridedSlice(sequential_258/lstm_776/Shape_1:output:06sequential_258/lstm_776/strided_slice_1/stack:output:08sequential_258/lstm_776/strided_slice_1/stack_1:output:08sequential_258/lstm_776/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_258/lstm_776/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_258/lstm_776/TensorArrayV2TensorListReserve<sequential_258/lstm_776/TensorArrayV2/element_shape:output:00sequential_258/lstm_776/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_258/lstm_776/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
?sequential_258/lstm_776/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_258/lstm_776/transpose:y:0Vsequential_258/lstm_776/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_258/lstm_776/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_258/lstm_776/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_258/lstm_776/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_258/lstm_776/strided_slice_2StridedSlice%sequential_258/lstm_776/transpose:y:06sequential_258/lstm_776/strided_slice_2/stack:output:08sequential_258/lstm_776/strided_slice_2/stack_1:output:08sequential_258/lstm_776/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
;sequential_258/lstm_776/lstm_cell_776/MatMul/ReadVariableOpReadVariableOpDsequential_258_lstm_776_lstm_cell_776_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
,sequential_258/lstm_776/lstm_cell_776/MatMulMatMul0sequential_258/lstm_776/strided_slice_2:output:0Csequential_258/lstm_776/lstm_cell_776/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
=sequential_258/lstm_776/lstm_cell_776/MatMul_1/ReadVariableOpReadVariableOpFsequential_258_lstm_776_lstm_cell_776_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
.sequential_258/lstm_776/lstm_cell_776/MatMul_1MatMul&sequential_258/lstm_776/zeros:output:0Esequential_258/lstm_776/lstm_cell_776/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
)sequential_258/lstm_776/lstm_cell_776/addAddV26sequential_258/lstm_776/lstm_cell_776/MatMul:product:08sequential_258/lstm_776/lstm_cell_776/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
<sequential_258/lstm_776/lstm_cell_776/BiasAdd/ReadVariableOpReadVariableOpEsequential_258_lstm_776_lstm_cell_776_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
-sequential_258/lstm_776/lstm_cell_776/BiasAddBiasAdd-sequential_258/lstm_776/lstm_cell_776/add:z:0Dsequential_258/lstm_776/lstm_cell_776/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(w
5sequential_258/lstm_776/lstm_cell_776/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_258/lstm_776/lstm_cell_776/splitSplit>sequential_258/lstm_776/lstm_cell_776/split/split_dim:output:06sequential_258/lstm_776/lstm_cell_776/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
-sequential_258/lstm_776/lstm_cell_776/SigmoidSigmoid4sequential_258/lstm_776/lstm_cell_776/split:output:0*
T0*'
_output_shapes
:?????????
?
/sequential_258/lstm_776/lstm_cell_776/Sigmoid_1Sigmoid4sequential_258/lstm_776/lstm_cell_776/split:output:1*
T0*'
_output_shapes
:?????????
?
)sequential_258/lstm_776/lstm_cell_776/mulMul3sequential_258/lstm_776/lstm_cell_776/Sigmoid_1:y:0(sequential_258/lstm_776/zeros_1:output:0*
T0*'
_output_shapes
:?????????
?
*sequential_258/lstm_776/lstm_cell_776/ReluRelu4sequential_258/lstm_776/lstm_cell_776/split:output:2*
T0*'
_output_shapes
:?????????
?
+sequential_258/lstm_776/lstm_cell_776/mul_1Mul1sequential_258/lstm_776/lstm_cell_776/Sigmoid:y:08sequential_258/lstm_776/lstm_cell_776/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
+sequential_258/lstm_776/lstm_cell_776/add_1AddV2-sequential_258/lstm_776/lstm_cell_776/mul:z:0/sequential_258/lstm_776/lstm_cell_776/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
/sequential_258/lstm_776/lstm_cell_776/Sigmoid_2Sigmoid4sequential_258/lstm_776/lstm_cell_776/split:output:3*
T0*'
_output_shapes
:?????????
?
,sequential_258/lstm_776/lstm_cell_776/Relu_1Relu/sequential_258/lstm_776/lstm_cell_776/add_1:z:0*
T0*'
_output_shapes
:?????????
?
+sequential_258/lstm_776/lstm_cell_776/mul_2Mul3sequential_258/lstm_776/lstm_cell_776/Sigmoid_2:y:0:sequential_258/lstm_776/lstm_cell_776/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
5sequential_258/lstm_776/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
'sequential_258/lstm_776/TensorArrayV2_1TensorListReserve>sequential_258/lstm_776/TensorArrayV2_1/element_shape:output:00sequential_258/lstm_776/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_258/lstm_776/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_258/lstm_776/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_258/lstm_776/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_258/lstm_776/whileWhile3sequential_258/lstm_776/while/loop_counter:output:09sequential_258/lstm_776/while/maximum_iterations:output:0%sequential_258/lstm_776/time:output:00sequential_258/lstm_776/TensorArrayV2_1:handle:0&sequential_258/lstm_776/zeros:output:0(sequential_258/lstm_776/zeros_1:output:00sequential_258/lstm_776/strided_slice_1:output:0Osequential_258/lstm_776/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_258_lstm_776_lstm_cell_776_matmul_readvariableop_resourceFsequential_258_lstm_776_lstm_cell_776_matmul_1_readvariableop_resourceEsequential_258_lstm_776_lstm_cell_776_biasadd_readvariableop_resource*
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
*sequential_258_lstm_776_while_body_4736181*6
cond.R,
*sequential_258_lstm_776_while_cond_4736180*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
Hsequential_258/lstm_776/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
:sequential_258/lstm_776/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_258/lstm_776/while:output:3Qsequential_258/lstm_776/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0?
-sequential_258/lstm_776/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_258/lstm_776/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_258/lstm_776/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_258/lstm_776/strided_slice_3StridedSliceCsequential_258/lstm_776/TensorArrayV2Stack/TensorListStack:tensor:06sequential_258/lstm_776/strided_slice_3/stack:output:08sequential_258/lstm_776/strided_slice_3/stack_1:output:08sequential_258/lstm_776/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_mask}
(sequential_258/lstm_776/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_258/lstm_776/transpose_1	TransposeCsequential_258/lstm_776/TensorArrayV2Stack/TensorListStack:tensor:01sequential_258/lstm_776/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
s
sequential_258/lstm_776/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
.sequential_258/dense_258/MatMul/ReadVariableOpReadVariableOp7sequential_258_dense_258_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
sequential_258/dense_258/MatMulMatMul0sequential_258/lstm_776/strided_slice_3:output:06sequential_258/dense_258/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
/sequential_258/dense_258/BiasAdd/ReadVariableOpReadVariableOp8sequential_258_dense_258_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
 sequential_258/dense_258/BiasAddBiasAdd)sequential_258/dense_258/MatMul:product:07sequential_258/dense_258/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x
IdentityIdentity)sequential_258/dense_258/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp0^sequential_258/dense_258/BiasAdd/ReadVariableOp/^sequential_258/dense_258/MatMul/ReadVariableOp=^sequential_258/lstm_774/lstm_cell_774/BiasAdd/ReadVariableOp<^sequential_258/lstm_774/lstm_cell_774/MatMul/ReadVariableOp>^sequential_258/lstm_774/lstm_cell_774/MatMul_1/ReadVariableOp^sequential_258/lstm_774/while=^sequential_258/lstm_775/lstm_cell_775/BiasAdd/ReadVariableOp<^sequential_258/lstm_775/lstm_cell_775/MatMul/ReadVariableOp>^sequential_258/lstm_775/lstm_cell_775/MatMul_1/ReadVariableOp^sequential_258/lstm_775/while=^sequential_258/lstm_776/lstm_cell_776/BiasAdd/ReadVariableOp<^sequential_258/lstm_776/lstm_cell_776/MatMul/ReadVariableOp>^sequential_258/lstm_776/lstm_cell_776/MatMul_1/ReadVariableOp^sequential_258/lstm_776/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2b
/sequential_258/dense_258/BiasAdd/ReadVariableOp/sequential_258/dense_258/BiasAdd/ReadVariableOp2`
.sequential_258/dense_258/MatMul/ReadVariableOp.sequential_258/dense_258/MatMul/ReadVariableOp2|
<sequential_258/lstm_774/lstm_cell_774/BiasAdd/ReadVariableOp<sequential_258/lstm_774/lstm_cell_774/BiasAdd/ReadVariableOp2z
;sequential_258/lstm_774/lstm_cell_774/MatMul/ReadVariableOp;sequential_258/lstm_774/lstm_cell_774/MatMul/ReadVariableOp2~
=sequential_258/lstm_774/lstm_cell_774/MatMul_1/ReadVariableOp=sequential_258/lstm_774/lstm_cell_774/MatMul_1/ReadVariableOp2>
sequential_258/lstm_774/whilesequential_258/lstm_774/while2|
<sequential_258/lstm_775/lstm_cell_775/BiasAdd/ReadVariableOp<sequential_258/lstm_775/lstm_cell_775/BiasAdd/ReadVariableOp2z
;sequential_258/lstm_775/lstm_cell_775/MatMul/ReadVariableOp;sequential_258/lstm_775/lstm_cell_775/MatMul/ReadVariableOp2~
=sequential_258/lstm_775/lstm_cell_775/MatMul_1/ReadVariableOp=sequential_258/lstm_775/lstm_cell_775/MatMul_1/ReadVariableOp2>
sequential_258/lstm_775/whilesequential_258/lstm_775/while2|
<sequential_258/lstm_776/lstm_cell_776/BiasAdd/ReadVariableOp<sequential_258/lstm_776/lstm_cell_776/BiasAdd/ReadVariableOp2z
;sequential_258/lstm_776/lstm_cell_776/MatMul/ReadVariableOp;sequential_258/lstm_776/lstm_cell_776/MatMul/ReadVariableOp2~
=sequential_258/lstm_776/lstm_cell_776/MatMul_1/ReadVariableOp=sequential_258/lstm_776/lstm_cell_776/MatMul_1/ReadVariableOp2>
sequential_258/lstm_776/whilesequential_258/lstm_776/while:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_774_input
?#
?
while_body_4736893
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_775_4736917_0:	d?0
while_lstm_cell_775_4736919_0:	2?,
while_lstm_cell_775_4736921_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_775_4736917:	d?.
while_lstm_cell_775_4736919:	2?*
while_lstm_cell_775_4736921:	???+while/lstm_cell_775/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_775/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_775_4736917_0while_lstm_cell_775_4736919_0while_lstm_cell_775_4736921_0*
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
J__inference_lstm_cell_775_layer_call_and_return_conditional_losses_4736834?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_775/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_775/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_775/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_775/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_775_4736917while_lstm_cell_775_4736917_0"<
while_lstm_cell_775_4736919while_lstm_cell_775_4736919_0"<
while_lstm_cell_775_4736921while_lstm_cell_775_4736921_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_775/StatefulPartitionedCall+while/lstm_cell_775/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_775_layer_call_fn_4740077
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
E__inference_lstm_775_layer_call_and_return_conditional_losses_4736962|
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
?
*sequential_258_lstm_775_while_cond_4736041L
Hsequential_258_lstm_775_while_sequential_258_lstm_775_while_loop_counterR
Nsequential_258_lstm_775_while_sequential_258_lstm_775_while_maximum_iterations-
)sequential_258_lstm_775_while_placeholder/
+sequential_258_lstm_775_while_placeholder_1/
+sequential_258_lstm_775_while_placeholder_2/
+sequential_258_lstm_775_while_placeholder_3N
Jsequential_258_lstm_775_while_less_sequential_258_lstm_775_strided_slice_1e
asequential_258_lstm_775_while_sequential_258_lstm_775_while_cond_4736041___redundant_placeholder0e
asequential_258_lstm_775_while_sequential_258_lstm_775_while_cond_4736041___redundant_placeholder1e
asequential_258_lstm_775_while_sequential_258_lstm_775_while_cond_4736041___redundant_placeholder2e
asequential_258_lstm_775_while_sequential_258_lstm_775_while_cond_4736041___redundant_placeholder3*
&sequential_258_lstm_775_while_identity
?
"sequential_258/lstm_775/while/LessLess)sequential_258_lstm_775_while_placeholderJsequential_258_lstm_775_while_less_sequential_258_lstm_775_strided_slice_1*
T0*
_output_shapes
: {
&sequential_258/lstm_775/while/IdentityIdentity&sequential_258/lstm_775/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_258_lstm_775_while_identity/sequential_258/lstm_775/while/Identity:output:0*(
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
?
/__inference_lstm_cell_775_layer_call_fn_4741438

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
J__inference_lstm_cell_775_layer_call_and_return_conditional_losses_4736834o
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
while_cond_4741202
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4741202___redundant_placeholder05
1while_while_cond_4741202___redundant_placeholder15
1while_while_cond_4741202___redundant_placeholder25
1while_while_cond_4741202___redundant_placeholder3
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
J__inference_lstm_cell_776_layer_call_and_return_conditional_losses_4741568

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

lstm_775_while_body_4738783.
*lstm_775_while_lstm_775_while_loop_counter4
0lstm_775_while_lstm_775_while_maximum_iterations
lstm_775_while_placeholder 
lstm_775_while_placeholder_1 
lstm_775_while_placeholder_2 
lstm_775_while_placeholder_3-
)lstm_775_while_lstm_775_strided_slice_1_0i
elstm_775_while_tensorarrayv2read_tensorlistgetitem_lstm_775_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_775_while_lstm_cell_775_matmul_readvariableop_resource_0:	d?R
?lstm_775_while_lstm_cell_775_matmul_1_readvariableop_resource_0:	2?M
>lstm_775_while_lstm_cell_775_biasadd_readvariableop_resource_0:	?
lstm_775_while_identity
lstm_775_while_identity_1
lstm_775_while_identity_2
lstm_775_while_identity_3
lstm_775_while_identity_4
lstm_775_while_identity_5+
'lstm_775_while_lstm_775_strided_slice_1g
clstm_775_while_tensorarrayv2read_tensorlistgetitem_lstm_775_tensorarrayunstack_tensorlistfromtensorN
;lstm_775_while_lstm_cell_775_matmul_readvariableop_resource:	d?P
=lstm_775_while_lstm_cell_775_matmul_1_readvariableop_resource:	2?K
<lstm_775_while_lstm_cell_775_biasadd_readvariableop_resource:	???3lstm_775/while/lstm_cell_775/BiasAdd/ReadVariableOp?2lstm_775/while/lstm_cell_775/MatMul/ReadVariableOp?4lstm_775/while/lstm_cell_775/MatMul_1/ReadVariableOp?
@lstm_775/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_775/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_775_while_tensorarrayv2read_tensorlistgetitem_lstm_775_tensorarrayunstack_tensorlistfromtensor_0lstm_775_while_placeholderIlstm_775/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_775/while/lstm_cell_775/MatMul/ReadVariableOpReadVariableOp=lstm_775_while_lstm_cell_775_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_775/while/lstm_cell_775/MatMulMatMul9lstm_775/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_775/while/lstm_cell_775/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_775/while/lstm_cell_775/MatMul_1/ReadVariableOpReadVariableOp?lstm_775_while_lstm_cell_775_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_775/while/lstm_cell_775/MatMul_1MatMullstm_775_while_placeholder_2<lstm_775/while/lstm_cell_775/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_775/while/lstm_cell_775/addAddV2-lstm_775/while/lstm_cell_775/MatMul:product:0/lstm_775/while/lstm_cell_775/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_775/while/lstm_cell_775/BiasAdd/ReadVariableOpReadVariableOp>lstm_775_while_lstm_cell_775_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_775/while/lstm_cell_775/BiasAddBiasAdd$lstm_775/while/lstm_cell_775/add:z:0;lstm_775/while/lstm_cell_775/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_775/while/lstm_cell_775/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_775/while/lstm_cell_775/splitSplit5lstm_775/while/lstm_cell_775/split/split_dim:output:0-lstm_775/while/lstm_cell_775/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_775/while/lstm_cell_775/SigmoidSigmoid+lstm_775/while/lstm_cell_775/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_775/while/lstm_cell_775/Sigmoid_1Sigmoid+lstm_775/while/lstm_cell_775/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_775/while/lstm_cell_775/mulMul*lstm_775/while/lstm_cell_775/Sigmoid_1:y:0lstm_775_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_775/while/lstm_cell_775/ReluRelu+lstm_775/while/lstm_cell_775/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_775/while/lstm_cell_775/mul_1Mul(lstm_775/while/lstm_cell_775/Sigmoid:y:0/lstm_775/while/lstm_cell_775/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_775/while/lstm_cell_775/add_1AddV2$lstm_775/while/lstm_cell_775/mul:z:0&lstm_775/while/lstm_cell_775/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_775/while/lstm_cell_775/Sigmoid_2Sigmoid+lstm_775/while/lstm_cell_775/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_775/while/lstm_cell_775/Relu_1Relu&lstm_775/while/lstm_cell_775/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_775/while/lstm_cell_775/mul_2Mul*lstm_775/while/lstm_cell_775/Sigmoid_2:y:01lstm_775/while/lstm_cell_775/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_775/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_775_while_placeholder_1lstm_775_while_placeholder&lstm_775/while/lstm_cell_775/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_775/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_775/while/addAddV2lstm_775_while_placeholderlstm_775/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_775/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_775/while/add_1AddV2*lstm_775_while_lstm_775_while_loop_counterlstm_775/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_775/while/IdentityIdentitylstm_775/while/add_1:z:0^lstm_775/while/NoOp*
T0*
_output_shapes
: ?
lstm_775/while/Identity_1Identity0lstm_775_while_lstm_775_while_maximum_iterations^lstm_775/while/NoOp*
T0*
_output_shapes
: t
lstm_775/while/Identity_2Identitylstm_775/while/add:z:0^lstm_775/while/NoOp*
T0*
_output_shapes
: ?
lstm_775/while/Identity_3IdentityClstm_775/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_775/while/NoOp*
T0*
_output_shapes
: ?
lstm_775/while/Identity_4Identity&lstm_775/while/lstm_cell_775/mul_2:z:0^lstm_775/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_775/while/Identity_5Identity&lstm_775/while/lstm_cell_775/add_1:z:0^lstm_775/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_775/while/NoOpNoOp4^lstm_775/while/lstm_cell_775/BiasAdd/ReadVariableOp3^lstm_775/while/lstm_cell_775/MatMul/ReadVariableOp5^lstm_775/while/lstm_cell_775/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_775_while_identity lstm_775/while/Identity:output:0"?
lstm_775_while_identity_1"lstm_775/while/Identity_1:output:0"?
lstm_775_while_identity_2"lstm_775/while/Identity_2:output:0"?
lstm_775_while_identity_3"lstm_775/while/Identity_3:output:0"?
lstm_775_while_identity_4"lstm_775/while/Identity_4:output:0"?
lstm_775_while_identity_5"lstm_775/while/Identity_5:output:0"T
'lstm_775_while_lstm_775_strided_slice_1)lstm_775_while_lstm_775_strided_slice_1_0"~
<lstm_775_while_lstm_cell_775_biasadd_readvariableop_resource>lstm_775_while_lstm_cell_775_biasadd_readvariableop_resource_0"?
=lstm_775_while_lstm_cell_775_matmul_1_readvariableop_resource?lstm_775_while_lstm_cell_775_matmul_1_readvariableop_resource_0"|
;lstm_775_while_lstm_cell_775_matmul_readvariableop_resource=lstm_775_while_lstm_cell_775_matmul_readvariableop_resource_0"?
clstm_775_while_tensorarrayv2read_tensorlistgetitem_lstm_775_tensorarrayunstack_tensorlistfromtensorelstm_775_while_tensorarrayv2read_tensorlistgetitem_lstm_775_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_775/while/lstm_cell_775/BiasAdd/ReadVariableOp3lstm_775/while/lstm_cell_775/BiasAdd/ReadVariableOp2h
2lstm_775/while/lstm_cell_775/MatMul/ReadVariableOp2lstm_775/while/lstm_cell_775/MatMul/ReadVariableOp2l
4lstm_775/while/lstm_cell_775/MatMul_1/ReadVariableOp4lstm_775/while/lstm_cell_775/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
?
*sequential_258_lstm_776_while_cond_4736180L
Hsequential_258_lstm_776_while_sequential_258_lstm_776_while_loop_counterR
Nsequential_258_lstm_776_while_sequential_258_lstm_776_while_maximum_iterations-
)sequential_258_lstm_776_while_placeholder/
+sequential_258_lstm_776_while_placeholder_1/
+sequential_258_lstm_776_while_placeholder_2/
+sequential_258_lstm_776_while_placeholder_3N
Jsequential_258_lstm_776_while_less_sequential_258_lstm_776_strided_slice_1e
asequential_258_lstm_776_while_sequential_258_lstm_776_while_cond_4736180___redundant_placeholder0e
asequential_258_lstm_776_while_sequential_258_lstm_776_while_cond_4736180___redundant_placeholder1e
asequential_258_lstm_776_while_sequential_258_lstm_776_while_cond_4736180___redundant_placeholder2e
asequential_258_lstm_776_while_sequential_258_lstm_776_while_cond_4736180___redundant_placeholder3*
&sequential_258_lstm_776_while_identity
?
"sequential_258/lstm_776/while/LessLess)sequential_258_lstm_776_while_placeholderJsequential_258_lstm_776_while_less_sequential_258_lstm_776_strided_slice_1*
T0*
_output_shapes
: {
&sequential_258/lstm_776/while/IdentityIdentity&sequential_258/lstm_776/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_258_lstm_776_while_identity/sequential_258/lstm_776/while/Identity:output:0*(
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
J__inference_lstm_cell_774_layer_call_and_return_conditional_losses_4736338

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
while_body_4740774
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_776_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_776_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_776_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_776_matmul_readvariableop_resource:2(F
4while_lstm_cell_776_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_776_biasadd_readvariableop_resource:(??*while/lstm_cell_776/BiasAdd/ReadVariableOp?)while/lstm_cell_776/MatMul/ReadVariableOp?+while/lstm_cell_776/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_776/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_776_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_776/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_776/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_776/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_776_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_776/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_776/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_776/addAddV2$while/lstm_cell_776/MatMul:product:0&while/lstm_cell_776/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_776/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_776_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_776/BiasAddBiasAddwhile/lstm_cell_776/add:z:02while/lstm_cell_776/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_776/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_776/splitSplit,while/lstm_cell_776/split/split_dim:output:0$while/lstm_cell_776/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_776/SigmoidSigmoid"while/lstm_cell_776/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_776/Sigmoid_1Sigmoid"while/lstm_cell_776/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_776/mulMul!while/lstm_cell_776/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_776/ReluRelu"while/lstm_cell_776/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_776/mul_1Mulwhile/lstm_cell_776/Sigmoid:y:0&while/lstm_cell_776/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_776/add_1AddV2while/lstm_cell_776/mul:z:0while/lstm_cell_776/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_776/Sigmoid_2Sigmoid"while/lstm_cell_776/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_776/Relu_1Reluwhile/lstm_cell_776/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_776/mul_2Mul!while/lstm_cell_776/Sigmoid_2:y:0(while/lstm_cell_776/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_776/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_776/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_776/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_776/BiasAdd/ReadVariableOp*^while/lstm_cell_776/MatMul/ReadVariableOp,^while/lstm_cell_776/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_776_biasadd_readvariableop_resource5while_lstm_cell_776_biasadd_readvariableop_resource_0"n
4while_lstm_cell_776_matmul_1_readvariableop_resource6while_lstm_cell_776_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_776_matmul_readvariableop_resource4while_lstm_cell_776_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_776/BiasAdd/ReadVariableOp*while/lstm_cell_776/BiasAdd/ReadVariableOp2V
)while/lstm_cell_776/MatMul/ReadVariableOp)while/lstm_cell_776/MatMul/ReadVariableOp2Z
+while/lstm_cell_776/MatMul_1/ReadVariableOp+while/lstm_cell_776/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_776_layer_call_and_return_conditional_losses_4741144

inputs>
,lstm_cell_776_matmul_readvariableop_resource:2(@
.lstm_cell_776_matmul_1_readvariableop_resource:
(;
-lstm_cell_776_biasadd_readvariableop_resource:(
identity??$lstm_cell_776/BiasAdd/ReadVariableOp?#lstm_cell_776/MatMul/ReadVariableOp?%lstm_cell_776/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_776/MatMul/ReadVariableOpReadVariableOp,lstm_cell_776_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_776/MatMulMatMulstrided_slice_2:output:0+lstm_cell_776/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_776/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_776_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_776/MatMul_1MatMulzeros:output:0-lstm_cell_776/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_776/addAddV2lstm_cell_776/MatMul:product:0 lstm_cell_776/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_776/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_776_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_776/BiasAddBiasAddlstm_cell_776/add:z:0,lstm_cell_776/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_776/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_776/splitSplit&lstm_cell_776/split/split_dim:output:0lstm_cell_776/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_776/SigmoidSigmoidlstm_cell_776/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_776/Sigmoid_1Sigmoidlstm_cell_776/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_776/mulMullstm_cell_776/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_776/ReluRelulstm_cell_776/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_776/mul_1Mullstm_cell_776/Sigmoid:y:0 lstm_cell_776/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_776/add_1AddV2lstm_cell_776/mul:z:0lstm_cell_776/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_776/Sigmoid_2Sigmoidlstm_cell_776/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_776/Relu_1Relulstm_cell_776/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_776/mul_2Mullstm_cell_776/Sigmoid_2:y:0"lstm_cell_776/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_776_matmul_readvariableop_resource.lstm_cell_776_matmul_1_readvariableop_resource-lstm_cell_776_biasadd_readvariableop_resource*
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
while_body_4741060*
condR
while_cond_4741059*K
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
NoOpNoOp%^lstm_cell_776/BiasAdd/ReadVariableOp$^lstm_cell_776/MatMul/ReadVariableOp&^lstm_cell_776/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_776/BiasAdd/ReadVariableOp$lstm_cell_776/BiasAdd/ReadVariableOp2J
#lstm_cell_776/MatMul/ReadVariableOp#lstm_cell_776/MatMul/ReadVariableOp2N
%lstm_cell_776/MatMul_1/ReadVariableOp%lstm_cell_776/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
while_cond_4740443
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4740443___redundant_placeholder05
1while_while_cond_4740443___redundant_placeholder15
1while_while_cond_4740443___redundant_placeholder25
1while_while_cond_4740443___redundant_placeholder3
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
while_cond_4738066
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4738066___redundant_placeholder05
1while_while_cond_4738066___redundant_placeholder15
1while_while_cond_4738066___redundant_placeholder25
1while_while_cond_4738066___redundant_placeholder3
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
?
?
*__inference_lstm_776_layer_call_fn_4740715

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
E__inference_lstm_776_layer_call_and_return_conditional_losses_4737986o
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

lstm_776_while_body_4739349.
*lstm_776_while_lstm_776_while_loop_counter4
0lstm_776_while_lstm_776_while_maximum_iterations
lstm_776_while_placeholder 
lstm_776_while_placeholder_1 
lstm_776_while_placeholder_2 
lstm_776_while_placeholder_3-
)lstm_776_while_lstm_776_strided_slice_1_0i
elstm_776_while_tensorarrayv2read_tensorlistgetitem_lstm_776_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_776_while_lstm_cell_776_matmul_readvariableop_resource_0:2(Q
?lstm_776_while_lstm_cell_776_matmul_1_readvariableop_resource_0:
(L
>lstm_776_while_lstm_cell_776_biasadd_readvariableop_resource_0:(
lstm_776_while_identity
lstm_776_while_identity_1
lstm_776_while_identity_2
lstm_776_while_identity_3
lstm_776_while_identity_4
lstm_776_while_identity_5+
'lstm_776_while_lstm_776_strided_slice_1g
clstm_776_while_tensorarrayv2read_tensorlistgetitem_lstm_776_tensorarrayunstack_tensorlistfromtensorM
;lstm_776_while_lstm_cell_776_matmul_readvariableop_resource:2(O
=lstm_776_while_lstm_cell_776_matmul_1_readvariableop_resource:
(J
<lstm_776_while_lstm_cell_776_biasadd_readvariableop_resource:(??3lstm_776/while/lstm_cell_776/BiasAdd/ReadVariableOp?2lstm_776/while/lstm_cell_776/MatMul/ReadVariableOp?4lstm_776/while/lstm_cell_776/MatMul_1/ReadVariableOp?
@lstm_776/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_776/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_776_while_tensorarrayv2read_tensorlistgetitem_lstm_776_tensorarrayunstack_tensorlistfromtensor_0lstm_776_while_placeholderIlstm_776/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_776/while/lstm_cell_776/MatMul/ReadVariableOpReadVariableOp=lstm_776_while_lstm_cell_776_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_776/while/lstm_cell_776/MatMulMatMul9lstm_776/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_776/while/lstm_cell_776/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_776/while/lstm_cell_776/MatMul_1/ReadVariableOpReadVariableOp?lstm_776_while_lstm_cell_776_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_776/while/lstm_cell_776/MatMul_1MatMullstm_776_while_placeholder_2<lstm_776/while/lstm_cell_776/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_776/while/lstm_cell_776/addAddV2-lstm_776/while/lstm_cell_776/MatMul:product:0/lstm_776/while/lstm_cell_776/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_776/while/lstm_cell_776/BiasAdd/ReadVariableOpReadVariableOp>lstm_776_while_lstm_cell_776_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_776/while/lstm_cell_776/BiasAddBiasAdd$lstm_776/while/lstm_cell_776/add:z:0;lstm_776/while/lstm_cell_776/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_776/while/lstm_cell_776/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_776/while/lstm_cell_776/splitSplit5lstm_776/while/lstm_cell_776/split/split_dim:output:0-lstm_776/while/lstm_cell_776/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_776/while/lstm_cell_776/SigmoidSigmoid+lstm_776/while/lstm_cell_776/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_776/while/lstm_cell_776/Sigmoid_1Sigmoid+lstm_776/while/lstm_cell_776/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_776/while/lstm_cell_776/mulMul*lstm_776/while/lstm_cell_776/Sigmoid_1:y:0lstm_776_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_776/while/lstm_cell_776/ReluRelu+lstm_776/while/lstm_cell_776/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_776/while/lstm_cell_776/mul_1Mul(lstm_776/while/lstm_cell_776/Sigmoid:y:0/lstm_776/while/lstm_cell_776/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_776/while/lstm_cell_776/add_1AddV2$lstm_776/while/lstm_cell_776/mul:z:0&lstm_776/while/lstm_cell_776/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_776/while/lstm_cell_776/Sigmoid_2Sigmoid+lstm_776/while/lstm_cell_776/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_776/while/lstm_cell_776/Relu_1Relu&lstm_776/while/lstm_cell_776/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_776/while/lstm_cell_776/mul_2Mul*lstm_776/while/lstm_cell_776/Sigmoid_2:y:01lstm_776/while/lstm_cell_776/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_776/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_776_while_placeholder_1lstm_776_while_placeholder&lstm_776/while/lstm_cell_776/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_776/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_776/while/addAddV2lstm_776_while_placeholderlstm_776/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_776/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_776/while/add_1AddV2*lstm_776_while_lstm_776_while_loop_counterlstm_776/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_776/while/IdentityIdentitylstm_776/while/add_1:z:0^lstm_776/while/NoOp*
T0*
_output_shapes
: ?
lstm_776/while/Identity_1Identity0lstm_776_while_lstm_776_while_maximum_iterations^lstm_776/while/NoOp*
T0*
_output_shapes
: t
lstm_776/while/Identity_2Identitylstm_776/while/add:z:0^lstm_776/while/NoOp*
T0*
_output_shapes
: ?
lstm_776/while/Identity_3IdentityClstm_776/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_776/while/NoOp*
T0*
_output_shapes
: ?
lstm_776/while/Identity_4Identity&lstm_776/while/lstm_cell_776/mul_2:z:0^lstm_776/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_776/while/Identity_5Identity&lstm_776/while/lstm_cell_776/add_1:z:0^lstm_776/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_776/while/NoOpNoOp4^lstm_776/while/lstm_cell_776/BiasAdd/ReadVariableOp3^lstm_776/while/lstm_cell_776/MatMul/ReadVariableOp5^lstm_776/while/lstm_cell_776/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_776_while_identity lstm_776/while/Identity:output:0"?
lstm_776_while_identity_1"lstm_776/while/Identity_1:output:0"?
lstm_776_while_identity_2"lstm_776/while/Identity_2:output:0"?
lstm_776_while_identity_3"lstm_776/while/Identity_3:output:0"?
lstm_776_while_identity_4"lstm_776/while/Identity_4:output:0"?
lstm_776_while_identity_5"lstm_776/while/Identity_5:output:0"T
'lstm_776_while_lstm_776_strided_slice_1)lstm_776_while_lstm_776_strided_slice_1_0"~
<lstm_776_while_lstm_cell_776_biasadd_readvariableop_resource>lstm_776_while_lstm_cell_776_biasadd_readvariableop_resource_0"?
=lstm_776_while_lstm_cell_776_matmul_1_readvariableop_resource?lstm_776_while_lstm_cell_776_matmul_1_readvariableop_resource_0"|
;lstm_776_while_lstm_cell_776_matmul_readvariableop_resource=lstm_776_while_lstm_cell_776_matmul_readvariableop_resource_0"?
clstm_776_while_tensorarrayv2read_tensorlistgetitem_lstm_776_tensorarrayunstack_tensorlistfromtensorelstm_776_while_tensorarrayv2read_tensorlistgetitem_lstm_776_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_776/while/lstm_cell_776/BiasAdd/ReadVariableOp3lstm_776/while/lstm_cell_776/BiasAdd/ReadVariableOp2h
2lstm_776/while/lstm_cell_776/MatMul/ReadVariableOp2lstm_776/while/lstm_cell_776/MatMul/ReadVariableOp2l
4lstm_776/while/lstm_cell_776/MatMul_1/ReadVariableOp4lstm_776/while/lstm_cell_776/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_775_while_cond_4738782.
*lstm_775_while_lstm_775_while_loop_counter4
0lstm_775_while_lstm_775_while_maximum_iterations
lstm_775_while_placeholder 
lstm_775_while_placeholder_1 
lstm_775_while_placeholder_2 
lstm_775_while_placeholder_30
,lstm_775_while_less_lstm_775_strided_slice_1G
Clstm_775_while_lstm_775_while_cond_4738782___redundant_placeholder0G
Clstm_775_while_lstm_775_while_cond_4738782___redundant_placeholder1G
Clstm_775_while_lstm_775_while_cond_4738782___redundant_placeholder2G
Clstm_775_while_lstm_775_while_cond_4738782___redundant_placeholder3
lstm_775_while_identity
?
lstm_775/while/LessLesslstm_775_while_placeholder,lstm_775_while_less_lstm_775_strided_slice_1*
T0*
_output_shapes
: ]
lstm_775/while/IdentityIdentitylstm_775/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_775_while_identity lstm_775/while/Identity:output:0*(
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
J__inference_lstm_cell_774_layer_call_and_return_conditional_losses_4741372

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
?
?
K__inference_sequential_258_layer_call_and_return_conditional_losses_4737795

inputs#
lstm_774_4737471:	?#
lstm_774_4737473:	d?
lstm_774_4737475:	?#
lstm_775_4737621:	d?#
lstm_775_4737623:	2?
lstm_775_4737625:	?"
lstm_776_4737771:2("
lstm_776_4737773:
(
lstm_776_4737775:(#
dense_258_4737789:

dense_258_4737791:
identity??!dense_258/StatefulPartitionedCall? lstm_774/StatefulPartitionedCall? lstm_775/StatefulPartitionedCall? lstm_776/StatefulPartitionedCall?
 lstm_774/StatefulPartitionedCallStatefulPartitionedCallinputslstm_774_4737471lstm_774_4737473lstm_774_4737475*
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
E__inference_lstm_774_layer_call_and_return_conditional_losses_4737470?
 lstm_775/StatefulPartitionedCallStatefulPartitionedCall)lstm_774/StatefulPartitionedCall:output:0lstm_775_4737621lstm_775_4737623lstm_775_4737625*
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
E__inference_lstm_775_layer_call_and_return_conditional_losses_4737620?
 lstm_776/StatefulPartitionedCallStatefulPartitionedCall)lstm_775/StatefulPartitionedCall:output:0lstm_776_4737771lstm_776_4737773lstm_776_4737775*
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
E__inference_lstm_776_layer_call_and_return_conditional_losses_4737770?
!dense_258/StatefulPartitionedCallStatefulPartitionedCall)lstm_776/StatefulPartitionedCall:output:0dense_258_4737789dense_258_4737791*
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
F__inference_dense_258_layer_call_and_return_conditional_losses_4737788y
IdentityIdentity*dense_258/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_258/StatefulPartitionedCall!^lstm_774/StatefulPartitionedCall!^lstm_775/StatefulPartitionedCall!^lstm_776/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_258/StatefulPartitionedCall!dense_258/StatefulPartitionedCall2D
 lstm_774/StatefulPartitionedCall lstm_774/StatefulPartitionedCall2D
 lstm_775/StatefulPartitionedCall lstm_775/StatefulPartitionedCall2D
 lstm_776/StatefulPartitionedCall lstm_776/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?J
?
E__inference_lstm_774_layer_call_and_return_conditional_losses_4738316

inputs?
,lstm_cell_774_matmul_readvariableop_resource:	?A
.lstm_cell_774_matmul_1_readvariableop_resource:	d?<
-lstm_cell_774_biasadd_readvariableop_resource:	?
identity??$lstm_cell_774/BiasAdd/ReadVariableOp?#lstm_cell_774/MatMul/ReadVariableOp?%lstm_cell_774/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_774/MatMul/ReadVariableOpReadVariableOp,lstm_cell_774_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_774/MatMulMatMulstrided_slice_2:output:0+lstm_cell_774/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_774/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_774_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_774/MatMul_1MatMulzeros:output:0-lstm_cell_774/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_774/addAddV2lstm_cell_774/MatMul:product:0 lstm_cell_774/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_774/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_774_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_774/BiasAddBiasAddlstm_cell_774/add:z:0,lstm_cell_774/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_774/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_774/splitSplit&lstm_cell_774/split/split_dim:output:0lstm_cell_774/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_774/SigmoidSigmoidlstm_cell_774/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_774/Sigmoid_1Sigmoidlstm_cell_774/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_774/mulMullstm_cell_774/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_774/ReluRelulstm_cell_774/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_774/mul_1Mullstm_cell_774/Sigmoid:y:0 lstm_cell_774/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_774/add_1AddV2lstm_cell_774/mul:z:0lstm_cell_774/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_774/Sigmoid_2Sigmoidlstm_cell_774/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_774/Relu_1Relulstm_cell_774/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_774/mul_2Mullstm_cell_774/Sigmoid_2:y:0"lstm_cell_774/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_774_matmul_readvariableop_resource.lstm_cell_774_matmul_1_readvariableop_resource-lstm_cell_774_biasadd_readvariableop_resource*
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
while_body_4738232*
condR
while_cond_4738231*K
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
NoOpNoOp%^lstm_cell_774/BiasAdd/ReadVariableOp$^lstm_cell_774/MatMul/ReadVariableOp&^lstm_cell_774/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_774/BiasAdd/ReadVariableOp$lstm_cell_774/BiasAdd/ReadVariableOp2J
#lstm_cell_774/MatMul/ReadVariableOp#lstm_cell_774/MatMul/ReadVariableOp2N
%lstm_cell_774/MatMul_1/ReadVariableOp%lstm_cell_774/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_775_layer_call_and_return_conditional_losses_4741470

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
/__inference_lstm_cell_774_layer_call_fn_4741340

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
J__inference_lstm_cell_774_layer_call_and_return_conditional_losses_4736484o
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
?K
?
E__inference_lstm_775_layer_call_and_return_conditional_losses_4740242
inputs_0?
,lstm_cell_775_matmul_readvariableop_resource:	d?A
.lstm_cell_775_matmul_1_readvariableop_resource:	2?<
-lstm_cell_775_biasadd_readvariableop_resource:	?
identity??$lstm_cell_775/BiasAdd/ReadVariableOp?#lstm_cell_775/MatMul/ReadVariableOp?%lstm_cell_775/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_775/MatMul/ReadVariableOpReadVariableOp,lstm_cell_775_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_775/MatMulMatMulstrided_slice_2:output:0+lstm_cell_775/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_775/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_775_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_775/MatMul_1MatMulzeros:output:0-lstm_cell_775/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_775/addAddV2lstm_cell_775/MatMul:product:0 lstm_cell_775/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_775/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_775_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_775/BiasAddBiasAddlstm_cell_775/add:z:0,lstm_cell_775/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_775/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_775/splitSplit&lstm_cell_775/split/split_dim:output:0lstm_cell_775/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_775/SigmoidSigmoidlstm_cell_775/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_775/Sigmoid_1Sigmoidlstm_cell_775/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_775/mulMullstm_cell_775/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_775/ReluRelulstm_cell_775/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_775/mul_1Mullstm_cell_775/Sigmoid:y:0 lstm_cell_775/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_775/add_1AddV2lstm_cell_775/mul:z:0lstm_cell_775/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_775/Sigmoid_2Sigmoidlstm_cell_775/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_775/Relu_1Relulstm_cell_775/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_775/mul_2Mullstm_cell_775/Sigmoid_2:y:0"lstm_cell_775/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_775_matmul_readvariableop_resource.lstm_cell_775_matmul_1_readvariableop_resource-lstm_cell_775_biasadd_readvariableop_resource*
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
while_body_4740158*
condR
while_cond_4740157*K
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
NoOpNoOp%^lstm_cell_775/BiasAdd/ReadVariableOp$^lstm_cell_775/MatMul/ReadVariableOp&^lstm_cell_775/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_775/BiasAdd/ReadVariableOp$lstm_cell_775/BiasAdd/ReadVariableOp2J
#lstm_cell_775/MatMul/ReadVariableOp#lstm_cell_775/MatMul/ReadVariableOp2N
%lstm_cell_775/MatMul_1/ReadVariableOp%lstm_cell_775/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?J
?
E__inference_lstm_774_layer_call_and_return_conditional_losses_4740055

inputs?
,lstm_cell_774_matmul_readvariableop_resource:	?A
.lstm_cell_774_matmul_1_readvariableop_resource:	d?<
-lstm_cell_774_biasadd_readvariableop_resource:	?
identity??$lstm_cell_774/BiasAdd/ReadVariableOp?#lstm_cell_774/MatMul/ReadVariableOp?%lstm_cell_774/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_774/MatMul/ReadVariableOpReadVariableOp,lstm_cell_774_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_774/MatMulMatMulstrided_slice_2:output:0+lstm_cell_774/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_774/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_774_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_774/MatMul_1MatMulzeros:output:0-lstm_cell_774/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_774/addAddV2lstm_cell_774/MatMul:product:0 lstm_cell_774/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_774/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_774_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_774/BiasAddBiasAddlstm_cell_774/add:z:0,lstm_cell_774/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_774/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_774/splitSplit&lstm_cell_774/split/split_dim:output:0lstm_cell_774/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_774/SigmoidSigmoidlstm_cell_774/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_774/Sigmoid_1Sigmoidlstm_cell_774/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_774/mulMullstm_cell_774/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_774/ReluRelulstm_cell_774/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_774/mul_1Mullstm_cell_774/Sigmoid:y:0 lstm_cell_774/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_774/add_1AddV2lstm_cell_774/mul:z:0lstm_cell_774/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_774/Sigmoid_2Sigmoidlstm_cell_774/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_774/Relu_1Relulstm_cell_774/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_774/mul_2Mullstm_cell_774/Sigmoid_2:y:0"lstm_cell_774/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_774_matmul_readvariableop_resource.lstm_cell_774_matmul_1_readvariableop_resource-lstm_cell_774_biasadd_readvariableop_resource*
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
while_body_4739971*
condR
while_cond_4739970*K
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
NoOpNoOp%^lstm_cell_774/BiasAdd/ReadVariableOp$^lstm_cell_774/MatMul/ReadVariableOp&^lstm_cell_774/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_774/BiasAdd/ReadVariableOp$lstm_cell_774/BiasAdd/ReadVariableOp2J
#lstm_cell_774/MatMul/ReadVariableOp#lstm_cell_774/MatMul/ReadVariableOp2N
%lstm_cell_774/MatMul_1/ReadVariableOp%lstm_cell_774/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?J
?
E__inference_lstm_776_layer_call_and_return_conditional_losses_4741287

inputs>
,lstm_cell_776_matmul_readvariableop_resource:2(@
.lstm_cell_776_matmul_1_readvariableop_resource:
(;
-lstm_cell_776_biasadd_readvariableop_resource:(
identity??$lstm_cell_776/BiasAdd/ReadVariableOp?#lstm_cell_776/MatMul/ReadVariableOp?%lstm_cell_776/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_776/MatMul/ReadVariableOpReadVariableOp,lstm_cell_776_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_776/MatMulMatMulstrided_slice_2:output:0+lstm_cell_776/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_776/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_776_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_776/MatMul_1MatMulzeros:output:0-lstm_cell_776/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_776/addAddV2lstm_cell_776/MatMul:product:0 lstm_cell_776/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_776/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_776_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_776/BiasAddBiasAddlstm_cell_776/add:z:0,lstm_cell_776/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_776/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_776/splitSplit&lstm_cell_776/split/split_dim:output:0lstm_cell_776/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_776/SigmoidSigmoidlstm_cell_776/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_776/Sigmoid_1Sigmoidlstm_cell_776/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_776/mulMullstm_cell_776/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_776/ReluRelulstm_cell_776/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_776/mul_1Mullstm_cell_776/Sigmoid:y:0 lstm_cell_776/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_776/add_1AddV2lstm_cell_776/mul:z:0lstm_cell_776/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_776/Sigmoid_2Sigmoidlstm_cell_776/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_776/Relu_1Relulstm_cell_776/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_776/mul_2Mullstm_cell_776/Sigmoid_2:y:0"lstm_cell_776/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_776_matmul_readvariableop_resource.lstm_cell_776_matmul_1_readvariableop_resource-lstm_cell_776_biasadd_readvariableop_resource*
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
while_body_4741203*
condR
while_cond_4741202*K
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
NoOpNoOp%^lstm_cell_776/BiasAdd/ReadVariableOp$^lstm_cell_776/MatMul/ReadVariableOp&^lstm_cell_776/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_776/BiasAdd/ReadVariableOp$lstm_cell_776/BiasAdd/ReadVariableOp2J
#lstm_cell_776/MatMul/ReadVariableOp#lstm_cell_776/MatMul/ReadVariableOp2N
%lstm_cell_776/MatMul_1/ReadVariableOp%lstm_cell_776/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?

?
lstm_776_while_cond_4738921.
*lstm_776_while_lstm_776_while_loop_counter4
0lstm_776_while_lstm_776_while_maximum_iterations
lstm_776_while_placeholder 
lstm_776_while_placeholder_1 
lstm_776_while_placeholder_2 
lstm_776_while_placeholder_30
,lstm_776_while_less_lstm_776_strided_slice_1G
Clstm_776_while_lstm_776_while_cond_4738921___redundant_placeholder0G
Clstm_776_while_lstm_776_while_cond_4738921___redundant_placeholder1G
Clstm_776_while_lstm_776_while_cond_4738921___redundant_placeholder2G
Clstm_776_while_lstm_776_while_cond_4738921___redundant_placeholder3
lstm_776_while_identity
?
lstm_776/while/LessLesslstm_776_while_placeholder,lstm_776_while_less_lstm_776_strided_slice_1*
T0*
_output_shapes
: ]
lstm_776/while/IdentityIdentitylstm_776/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_776_while_identity lstm_776/while/Identity:output:0*(
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
?K
?
E__inference_lstm_775_layer_call_and_return_conditional_losses_4740385
inputs_0?
,lstm_cell_775_matmul_readvariableop_resource:	d?A
.lstm_cell_775_matmul_1_readvariableop_resource:	2?<
-lstm_cell_775_biasadd_readvariableop_resource:	?
identity??$lstm_cell_775/BiasAdd/ReadVariableOp?#lstm_cell_775/MatMul/ReadVariableOp?%lstm_cell_775/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_775/MatMul/ReadVariableOpReadVariableOp,lstm_cell_775_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_775/MatMulMatMulstrided_slice_2:output:0+lstm_cell_775/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_775/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_775_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_775/MatMul_1MatMulzeros:output:0-lstm_cell_775/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_775/addAddV2lstm_cell_775/MatMul:product:0 lstm_cell_775/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_775/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_775_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_775/BiasAddBiasAddlstm_cell_775/add:z:0,lstm_cell_775/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_775/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_775/splitSplit&lstm_cell_775/split/split_dim:output:0lstm_cell_775/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_775/SigmoidSigmoidlstm_cell_775/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_775/Sigmoid_1Sigmoidlstm_cell_775/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_775/mulMullstm_cell_775/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_775/ReluRelulstm_cell_775/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_775/mul_1Mullstm_cell_775/Sigmoid:y:0 lstm_cell_775/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_775/add_1AddV2lstm_cell_775/mul:z:0lstm_cell_775/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_775/Sigmoid_2Sigmoidlstm_cell_775/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_775/Relu_1Relulstm_cell_775/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_775/mul_2Mullstm_cell_775/Sigmoid_2:y:0"lstm_cell_775/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_775_matmul_readvariableop_resource.lstm_cell_775_matmul_1_readvariableop_resource-lstm_cell_775_biasadd_readvariableop_resource*
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
while_body_4740301*
condR
while_cond_4740300*K
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
NoOpNoOp%^lstm_cell_775/BiasAdd/ReadVariableOp$^lstm_cell_775/MatMul/ReadVariableOp&^lstm_cell_775/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_775/BiasAdd/ReadVariableOp$lstm_cell_775/BiasAdd/ReadVariableOp2J
#lstm_cell_775/MatMul/ReadVariableOp#lstm_cell_775/MatMul/ReadVariableOp2N
%lstm_cell_775/MatMul_1/ReadVariableOp%lstm_cell_775/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?8
?
while_body_4740301
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_775_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_775_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_775_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_775_matmul_readvariableop_resource:	d?G
4while_lstm_cell_775_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_775_biasadd_readvariableop_resource:	???*while/lstm_cell_775/BiasAdd/ReadVariableOp?)while/lstm_cell_775/MatMul/ReadVariableOp?+while/lstm_cell_775/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_775/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_775_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_775/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_775/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_775/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_775_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_775/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_775/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_775/addAddV2$while/lstm_cell_775/MatMul:product:0&while/lstm_cell_775/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_775/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_775_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_775/BiasAddBiasAddwhile/lstm_cell_775/add:z:02while/lstm_cell_775/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_775/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_775/splitSplit,while/lstm_cell_775/split/split_dim:output:0$while/lstm_cell_775/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_775/SigmoidSigmoid"while/lstm_cell_775/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_775/Sigmoid_1Sigmoid"while/lstm_cell_775/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_775/mulMul!while/lstm_cell_775/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_775/ReluRelu"while/lstm_cell_775/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_775/mul_1Mulwhile/lstm_cell_775/Sigmoid:y:0&while/lstm_cell_775/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_775/add_1AddV2while/lstm_cell_775/mul:z:0while/lstm_cell_775/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_775/Sigmoid_2Sigmoid"while/lstm_cell_775/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_775/Relu_1Reluwhile/lstm_cell_775/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_775/mul_2Mul!while/lstm_cell_775/Sigmoid_2:y:0(while/lstm_cell_775/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_775/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_775/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_775/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_775/BiasAdd/ReadVariableOp*^while/lstm_cell_775/MatMul/ReadVariableOp,^while/lstm_cell_775/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_775_biasadd_readvariableop_resource5while_lstm_cell_775_biasadd_readvariableop_resource_0"n
4while_lstm_cell_775_matmul_1_readvariableop_resource6while_lstm_cell_775_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_775_matmul_readvariableop_resource4while_lstm_cell_775_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_775/BiasAdd/ReadVariableOp*while/lstm_cell_775/BiasAdd/ReadVariableOp2V
)while/lstm_cell_775/MatMul/ReadVariableOp)while/lstm_cell_775/MatMul/ReadVariableOp2Z
+while/lstm_cell_775/MatMul_1/ReadVariableOp+while/lstm_cell_775/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
: "?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
M
lstm_774_input;
 serving_default_lstm_774_input:0?????????=
	dense_2580
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
2dense_258/kernel
:2dense_258/bias
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
0:.	?2lstm_774/lstm_cell_774/kernel
::8	d?2'lstm_774/lstm_cell_774/recurrent_kernel
*:(?2lstm_774/lstm_cell_774/bias
0:.	d?2lstm_775/lstm_cell_775/kernel
::8	2?2'lstm_775/lstm_cell_775/recurrent_kernel
*:(?2lstm_775/lstm_cell_775/bias
/:-2(2lstm_776/lstm_cell_776/kernel
9:7
(2'lstm_776/lstm_cell_776/recurrent_kernel
):'(2lstm_776/lstm_cell_776/bias
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
2Adam/dense_258/kernel/m
!:2Adam/dense_258/bias/m
5:3	?2$Adam/lstm_774/lstm_cell_774/kernel/m
?:=	d?2.Adam/lstm_774/lstm_cell_774/recurrent_kernel/m
/:-?2"Adam/lstm_774/lstm_cell_774/bias/m
5:3	d?2$Adam/lstm_775/lstm_cell_775/kernel/m
?:=	2?2.Adam/lstm_775/lstm_cell_775/recurrent_kernel/m
/:-?2"Adam/lstm_775/lstm_cell_775/bias/m
4:22(2$Adam/lstm_776/lstm_cell_776/kernel/m
>:<
(2.Adam/lstm_776/lstm_cell_776/recurrent_kernel/m
.:,(2"Adam/lstm_776/lstm_cell_776/bias/m
':%
2Adam/dense_258/kernel/v
!:2Adam/dense_258/bias/v
5:3	?2$Adam/lstm_774/lstm_cell_774/kernel/v
?:=	d?2.Adam/lstm_774/lstm_cell_774/recurrent_kernel/v
/:-?2"Adam/lstm_774/lstm_cell_774/bias/v
5:3	d?2$Adam/lstm_775/lstm_cell_775/kernel/v
?:=	2?2.Adam/lstm_775/lstm_cell_775/recurrent_kernel/v
/:-?2"Adam/lstm_775/lstm_cell_775/bias/v
4:22(2$Adam/lstm_776/lstm_cell_776/kernel/v
>:<
(2.Adam/lstm_776/lstm_cell_776/recurrent_kernel/v
.:,(2"Adam/lstm_776/lstm_cell_776/bias/v
?2?
0__inference_sequential_258_layer_call_fn_4737820
0__inference_sequential_258_layer_call_fn_4738558
0__inference_sequential_258_layer_call_fn_4738585
0__inference_sequential_258_layer_call_fn_4738436?
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
K__inference_sequential_258_layer_call_and_return_conditional_losses_4739012
K__inference_sequential_258_layer_call_and_return_conditional_losses_4739439
K__inference_sequential_258_layer_call_and_return_conditional_losses_4738466
K__inference_sequential_258_layer_call_and_return_conditional_losses_4738496?
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
"__inference__wrapped_model_4736271lstm_774_input"?
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
*__inference_lstm_774_layer_call_fn_4739450
*__inference_lstm_774_layer_call_fn_4739461
*__inference_lstm_774_layer_call_fn_4739472
*__inference_lstm_774_layer_call_fn_4739483?
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
E__inference_lstm_774_layer_call_and_return_conditional_losses_4739626
E__inference_lstm_774_layer_call_and_return_conditional_losses_4739769
E__inference_lstm_774_layer_call_and_return_conditional_losses_4739912
E__inference_lstm_774_layer_call_and_return_conditional_losses_4740055?
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
*__inference_lstm_775_layer_call_fn_4740066
*__inference_lstm_775_layer_call_fn_4740077
*__inference_lstm_775_layer_call_fn_4740088
*__inference_lstm_775_layer_call_fn_4740099?
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
E__inference_lstm_775_layer_call_and_return_conditional_losses_4740242
E__inference_lstm_775_layer_call_and_return_conditional_losses_4740385
E__inference_lstm_775_layer_call_and_return_conditional_losses_4740528
E__inference_lstm_775_layer_call_and_return_conditional_losses_4740671?
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
*__inference_lstm_776_layer_call_fn_4740682
*__inference_lstm_776_layer_call_fn_4740693
*__inference_lstm_776_layer_call_fn_4740704
*__inference_lstm_776_layer_call_fn_4740715?
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
E__inference_lstm_776_layer_call_and_return_conditional_losses_4740858
E__inference_lstm_776_layer_call_and_return_conditional_losses_4741001
E__inference_lstm_776_layer_call_and_return_conditional_losses_4741144
E__inference_lstm_776_layer_call_and_return_conditional_losses_4741287?
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
+__inference_dense_258_layer_call_fn_4741296?
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
F__inference_dense_258_layer_call_and_return_conditional_losses_4741306?
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
%__inference_signature_wrapper_4738531lstm_774_input"?
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
/__inference_lstm_cell_774_layer_call_fn_4741323
/__inference_lstm_cell_774_layer_call_fn_4741340?
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
J__inference_lstm_cell_774_layer_call_and_return_conditional_losses_4741372
J__inference_lstm_cell_774_layer_call_and_return_conditional_losses_4741404?
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
/__inference_lstm_cell_775_layer_call_fn_4741421
/__inference_lstm_cell_775_layer_call_fn_4741438?
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
J__inference_lstm_cell_775_layer_call_and_return_conditional_losses_4741470
J__inference_lstm_cell_775_layer_call_and_return_conditional_losses_4741502?
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
/__inference_lstm_cell_776_layer_call_fn_4741519
/__inference_lstm_cell_776_layer_call_fn_4741536?
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
J__inference_lstm_cell_776_layer_call_and_return_conditional_losses_4741568
J__inference_lstm_cell_776_layer_call_and_return_conditional_losses_4741600?
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
"__inference__wrapped_model_4736271?()*+,-./0;?8
1?.
,?)
lstm_774_input?????????
? "5?2
0
	dense_258#? 
	dense_258??????????
F__inference_dense_258_layer_call_and_return_conditional_losses_4741306\/?,
%?"
 ?
inputs?????????

? "%?"
?
0?????????
? ~
+__inference_dense_258_layer_call_fn_4741296O/?,
%?"
 ?
inputs?????????

? "???????????
E__inference_lstm_774_layer_call_and_return_conditional_losses_4739626?()*O?L
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
E__inference_lstm_774_layer_call_and_return_conditional_losses_4739769?()*O?L
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
E__inference_lstm_774_layer_call_and_return_conditional_losses_4739912q()*??<
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
E__inference_lstm_774_layer_call_and_return_conditional_losses_4740055q()*??<
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
*__inference_lstm_774_layer_call_fn_4739450}()*O?L
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
*__inference_lstm_774_layer_call_fn_4739461}()*O?L
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
*__inference_lstm_774_layer_call_fn_4739472d()*??<
5?2
$?!
inputs?????????

 
p 

 
? "??????????d?
*__inference_lstm_774_layer_call_fn_4739483d()*??<
5?2
$?!
inputs?????????

 
p

 
? "??????????d?
E__inference_lstm_775_layer_call_and_return_conditional_losses_4740242?+,-O?L
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
E__inference_lstm_775_layer_call_and_return_conditional_losses_4740385?+,-O?L
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
E__inference_lstm_775_layer_call_and_return_conditional_losses_4740528q+,-??<
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
E__inference_lstm_775_layer_call_and_return_conditional_losses_4740671q+,-??<
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
*__inference_lstm_775_layer_call_fn_4740066}+,-O?L
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
*__inference_lstm_775_layer_call_fn_4740077}+,-O?L
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
*__inference_lstm_775_layer_call_fn_4740088d+,-??<
5?2
$?!
inputs?????????d

 
p 

 
? "??????????2?
*__inference_lstm_775_layer_call_fn_4740099d+,-??<
5?2
$?!
inputs?????????d

 
p

 
? "??????????2?
E__inference_lstm_776_layer_call_and_return_conditional_losses_4740858}./0O?L
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
E__inference_lstm_776_layer_call_and_return_conditional_losses_4741001}./0O?L
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
E__inference_lstm_776_layer_call_and_return_conditional_losses_4741144m./0??<
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
E__inference_lstm_776_layer_call_and_return_conditional_losses_4741287m./0??<
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
*__inference_lstm_776_layer_call_fn_4740682p./0O?L
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
*__inference_lstm_776_layer_call_fn_4740693p./0O?L
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
*__inference_lstm_776_layer_call_fn_4740704`./0??<
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
*__inference_lstm_776_layer_call_fn_4740715`./0??<
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
J__inference_lstm_cell_774_layer_call_and_return_conditional_losses_4741372?()*??}
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
J__inference_lstm_cell_774_layer_call_and_return_conditional_losses_4741404?()*??}
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
/__inference_lstm_cell_774_layer_call_fn_4741323?()*??}
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
/__inference_lstm_cell_774_layer_call_fn_4741340?()*??}
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
J__inference_lstm_cell_775_layer_call_and_return_conditional_losses_4741470?+,-??}
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
J__inference_lstm_cell_775_layer_call_and_return_conditional_losses_4741502?+,-??}
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
/__inference_lstm_cell_775_layer_call_fn_4741421?+,-??}
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
/__inference_lstm_cell_775_layer_call_fn_4741438?+,-??}
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
J__inference_lstm_cell_776_layer_call_and_return_conditional_losses_4741568?./0??}
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
J__inference_lstm_cell_776_layer_call_and_return_conditional_losses_4741600?./0??}
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
/__inference_lstm_cell_776_layer_call_fn_4741519?./0??}
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
/__inference_lstm_cell_776_layer_call_fn_4741536?./0??}
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
K__inference_sequential_258_layer_call_and_return_conditional_losses_4738466y()*+,-./0C?@
9?6
,?)
lstm_774_input?????????
p 

 
? "%?"
?
0?????????
? ?
K__inference_sequential_258_layer_call_and_return_conditional_losses_4738496y()*+,-./0C?@
9?6
,?)
lstm_774_input?????????
p

 
? "%?"
?
0?????????
? ?
K__inference_sequential_258_layer_call_and_return_conditional_losses_4739012q()*+,-./0;?8
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
K__inference_sequential_258_layer_call_and_return_conditional_losses_4739439q()*+,-./0;?8
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
0__inference_sequential_258_layer_call_fn_4737820l()*+,-./0C?@
9?6
,?)
lstm_774_input?????????
p 

 
? "???????????
0__inference_sequential_258_layer_call_fn_4738436l()*+,-./0C?@
9?6
,?)
lstm_774_input?????????
p

 
? "???????????
0__inference_sequential_258_layer_call_fn_4738558d()*+,-./0;?8
1?.
$?!
inputs?????????
p 

 
? "???????????
0__inference_sequential_258_layer_call_fn_4738585d()*+,-./0;?8
1?.
$?!
inputs?????????
p

 
? "???????????
%__inference_signature_wrapper_4738531?()*+,-./0M?J
? 
C?@
>
lstm_774_input,?)
lstm_774_input?????????"5?2
0
	dense_258#? 
	dense_258?????????