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
dense_293/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*!
shared_namedense_293/kernel
u
$dense_293/kernel/Read/ReadVariableOpReadVariableOpdense_293/kernel*
_output_shapes

:
*
dtype0
t
dense_293/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_293/bias
m
"dense_293/bias/Read/ReadVariableOpReadVariableOpdense_293/bias*
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
lstm_879/lstm_cell_879/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*.
shared_namelstm_879/lstm_cell_879/kernel
?
1lstm_879/lstm_cell_879/kernel/Read/ReadVariableOpReadVariableOplstm_879/lstm_cell_879/kernel*
_output_shapes
:	?*
dtype0
?
'lstm_879/lstm_cell_879/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*8
shared_name)'lstm_879/lstm_cell_879/recurrent_kernel
?
;lstm_879/lstm_cell_879/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_879/lstm_cell_879/recurrent_kernel*
_output_shapes
:	d?*
dtype0
?
lstm_879/lstm_cell_879/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_879/lstm_cell_879/bias
?
/lstm_879/lstm_cell_879/bias/Read/ReadVariableOpReadVariableOplstm_879/lstm_cell_879/bias*
_output_shapes	
:?*
dtype0
?
lstm_880/lstm_cell_880/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*.
shared_namelstm_880/lstm_cell_880/kernel
?
1lstm_880/lstm_cell_880/kernel/Read/ReadVariableOpReadVariableOplstm_880/lstm_cell_880/kernel*
_output_shapes
:	d?*
dtype0
?
'lstm_880/lstm_cell_880/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*8
shared_name)'lstm_880/lstm_cell_880/recurrent_kernel
?
;lstm_880/lstm_cell_880/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_880/lstm_cell_880/recurrent_kernel*
_output_shapes
:	2?*
dtype0
?
lstm_880/lstm_cell_880/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_880/lstm_cell_880/bias
?
/lstm_880/lstm_cell_880/bias/Read/ReadVariableOpReadVariableOplstm_880/lstm_cell_880/bias*
_output_shapes	
:?*
dtype0
?
lstm_881/lstm_cell_881/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*.
shared_namelstm_881/lstm_cell_881/kernel
?
1lstm_881/lstm_cell_881/kernel/Read/ReadVariableOpReadVariableOplstm_881/lstm_cell_881/kernel*
_output_shapes

:2(*
dtype0
?
'lstm_881/lstm_cell_881/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*8
shared_name)'lstm_881/lstm_cell_881/recurrent_kernel
?
;lstm_881/lstm_cell_881/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_881/lstm_cell_881/recurrent_kernel*
_output_shapes

:
(*
dtype0
?
lstm_881/lstm_cell_881/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*,
shared_namelstm_881/lstm_cell_881/bias
?
/lstm_881/lstm_cell_881/bias/Read/ReadVariableOpReadVariableOplstm_881/lstm_cell_881/bias*
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
Adam/dense_293/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_293/kernel/m
?
+Adam/dense_293/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_293/kernel/m*
_output_shapes

:
*
dtype0
?
Adam/dense_293/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_293/bias/m
{
)Adam/dense_293/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_293/bias/m*
_output_shapes
:*
dtype0
?
$Adam/lstm_879/lstm_cell_879/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_879/lstm_cell_879/kernel/m
?
8Adam/lstm_879/lstm_cell_879/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_879/lstm_cell_879/kernel/m*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_879/lstm_cell_879/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_879/lstm_cell_879/recurrent_kernel/m
?
BAdam/lstm_879/lstm_cell_879/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_879/lstm_cell_879/recurrent_kernel/m*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_879/lstm_cell_879/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_879/lstm_cell_879/bias/m
?
6Adam/lstm_879/lstm_cell_879/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_879/lstm_cell_879/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_880/lstm_cell_880/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_880/lstm_cell_880/kernel/m
?
8Adam/lstm_880/lstm_cell_880/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_880/lstm_cell_880/kernel/m*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_880/lstm_cell_880/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_880/lstm_cell_880/recurrent_kernel/m
?
BAdam/lstm_880/lstm_cell_880/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_880/lstm_cell_880/recurrent_kernel/m*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_880/lstm_cell_880/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_880/lstm_cell_880/bias/m
?
6Adam/lstm_880/lstm_cell_880/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_880/lstm_cell_880/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_881/lstm_cell_881/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_881/lstm_cell_881/kernel/m
?
8Adam/lstm_881/lstm_cell_881/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_881/lstm_cell_881/kernel/m*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_881/lstm_cell_881/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_881/lstm_cell_881/recurrent_kernel/m
?
BAdam/lstm_881/lstm_cell_881/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_881/lstm_cell_881/recurrent_kernel/m*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_881/lstm_cell_881/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_881/lstm_cell_881/bias/m
?
6Adam/lstm_881/lstm_cell_881/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_881/lstm_cell_881/bias/m*
_output_shapes
:(*
dtype0
?
Adam/dense_293/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_293/kernel/v
?
+Adam/dense_293/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_293/kernel/v*
_output_shapes

:
*
dtype0
?
Adam/dense_293/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_293/bias/v
{
)Adam/dense_293/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_293/bias/v*
_output_shapes
:*
dtype0
?
$Adam/lstm_879/lstm_cell_879/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_879/lstm_cell_879/kernel/v
?
8Adam/lstm_879/lstm_cell_879/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_879/lstm_cell_879/kernel/v*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_879/lstm_cell_879/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_879/lstm_cell_879/recurrent_kernel/v
?
BAdam/lstm_879/lstm_cell_879/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_879/lstm_cell_879/recurrent_kernel/v*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_879/lstm_cell_879/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_879/lstm_cell_879/bias/v
?
6Adam/lstm_879/lstm_cell_879/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_879/lstm_cell_879/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_880/lstm_cell_880/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_880/lstm_cell_880/kernel/v
?
8Adam/lstm_880/lstm_cell_880/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_880/lstm_cell_880/kernel/v*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_880/lstm_cell_880/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_880/lstm_cell_880/recurrent_kernel/v
?
BAdam/lstm_880/lstm_cell_880/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_880/lstm_cell_880/recurrent_kernel/v*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_880/lstm_cell_880/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_880/lstm_cell_880/bias/v
?
6Adam/lstm_880/lstm_cell_880/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_880/lstm_cell_880/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_881/lstm_cell_881/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_881/lstm_cell_881/kernel/v
?
8Adam/lstm_881/lstm_cell_881/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_881/lstm_cell_881/kernel/v*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_881/lstm_cell_881/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_881/lstm_cell_881/recurrent_kernel/v
?
BAdam/lstm_881/lstm_cell_881/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_881/lstm_cell_881/recurrent_kernel/v*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_881/lstm_cell_881/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_881/lstm_cell_881/bias/v
?
6Adam/lstm_881/lstm_cell_881/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_881/lstm_cell_881/bias/v*
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
VARIABLE_VALUEdense_293/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_293/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUElstm_879/lstm_cell_879/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_879/lstm_cell_879/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_879/lstm_cell_879/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_880/lstm_cell_880/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_880/lstm_cell_880/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_880/lstm_cell_880/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_881/lstm_cell_881/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_881/lstm_cell_881/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_881/lstm_cell_881/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEAdam/dense_293/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_293/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_879/lstm_cell_879/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_879/lstm_cell_879/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_879/lstm_cell_879/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_880/lstm_cell_880/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_880/lstm_cell_880/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_880/lstm_cell_880/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_881/lstm_cell_881/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_881/lstm_cell_881/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_881/lstm_cell_881/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_293/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_293/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_879/lstm_cell_879/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_879/lstm_cell_879/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_879/lstm_cell_879/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_880/lstm_cell_880/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_880/lstm_cell_880/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_880/lstm_cell_880/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_881/lstm_cell_881/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_881/lstm_cell_881/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_881/lstm_cell_881/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_lstm_879_inputPlaceholder*+
_output_shapes
:?????????*
dtype0* 
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_879_inputlstm_879/lstm_cell_879/kernel'lstm_879/lstm_cell_879/recurrent_kernellstm_879/lstm_cell_879/biaslstm_880/lstm_cell_880/kernel'lstm_880/lstm_cell_880/recurrent_kernellstm_880/lstm_cell_880/biaslstm_881/lstm_cell_881/kernel'lstm_881/lstm_cell_881/recurrent_kernellstm_881/lstm_cell_881/biasdense_293/kerneldense_293/bias*
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
%__inference_signature_wrapper_5248101
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$dense_293/kernel/Read/ReadVariableOp"dense_293/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_879/lstm_cell_879/kernel/Read/ReadVariableOp;lstm_879/lstm_cell_879/recurrent_kernel/Read/ReadVariableOp/lstm_879/lstm_cell_879/bias/Read/ReadVariableOp1lstm_880/lstm_cell_880/kernel/Read/ReadVariableOp;lstm_880/lstm_cell_880/recurrent_kernel/Read/ReadVariableOp/lstm_880/lstm_cell_880/bias/Read/ReadVariableOp1lstm_881/lstm_cell_881/kernel/Read/ReadVariableOp;lstm_881/lstm_cell_881/recurrent_kernel/Read/ReadVariableOp/lstm_881/lstm_cell_881/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp+Adam/dense_293/kernel/m/Read/ReadVariableOp)Adam/dense_293/bias/m/Read/ReadVariableOp8Adam/lstm_879/lstm_cell_879/kernel/m/Read/ReadVariableOpBAdam/lstm_879/lstm_cell_879/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_879/lstm_cell_879/bias/m/Read/ReadVariableOp8Adam/lstm_880/lstm_cell_880/kernel/m/Read/ReadVariableOpBAdam/lstm_880/lstm_cell_880/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_880/lstm_cell_880/bias/m/Read/ReadVariableOp8Adam/lstm_881/lstm_cell_881/kernel/m/Read/ReadVariableOpBAdam/lstm_881/lstm_cell_881/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_881/lstm_cell_881/bias/m/Read/ReadVariableOp+Adam/dense_293/kernel/v/Read/ReadVariableOp)Adam/dense_293/bias/v/Read/ReadVariableOp8Adam/lstm_879/lstm_cell_879/kernel/v/Read/ReadVariableOpBAdam/lstm_879/lstm_cell_879/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_879/lstm_cell_879/bias/v/Read/ReadVariableOp8Adam/lstm_880/lstm_cell_880/kernel/v/Read/ReadVariableOpBAdam/lstm_880/lstm_cell_880/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_880/lstm_cell_880/bias/v/Read/ReadVariableOp8Adam/lstm_881/lstm_cell_881/kernel/v/Read/ReadVariableOpBAdam/lstm_881/lstm_cell_881/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_881/lstm_cell_881/bias/v/Read/ReadVariableOpConst*5
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
 __inference__traced_save_5251313
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_293/kerneldense_293/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_879/lstm_cell_879/kernel'lstm_879/lstm_cell_879/recurrent_kernellstm_879/lstm_cell_879/biaslstm_880/lstm_cell_880/kernel'lstm_880/lstm_cell_880/recurrent_kernellstm_880/lstm_cell_880/biaslstm_881/lstm_cell_881/kernel'lstm_881/lstm_cell_881/recurrent_kernellstm_881/lstm_cell_881/biastotalcountAdam/dense_293/kernel/mAdam/dense_293/bias/m$Adam/lstm_879/lstm_cell_879/kernel/m.Adam/lstm_879/lstm_cell_879/recurrent_kernel/m"Adam/lstm_879/lstm_cell_879/bias/m$Adam/lstm_880/lstm_cell_880/kernel/m.Adam/lstm_880/lstm_cell_880/recurrent_kernel/m"Adam/lstm_880/lstm_cell_880/bias/m$Adam/lstm_881/lstm_cell_881/kernel/m.Adam/lstm_881/lstm_cell_881/recurrent_kernel/m"Adam/lstm_881/lstm_cell_881/bias/mAdam/dense_293/kernel/vAdam/dense_293/bias/v$Adam/lstm_879/lstm_cell_879/kernel/v.Adam/lstm_879/lstm_cell_879/recurrent_kernel/v"Adam/lstm_879/lstm_cell_879/bias/v$Adam/lstm_880/lstm_cell_880/kernel/v.Adam/lstm_880/lstm_cell_880/recurrent_kernel/v"Adam/lstm_880/lstm_cell_880/bias/v$Adam/lstm_881/lstm_cell_881/kernel/v.Adam/lstm_881/lstm_cell_881/recurrent_kernel/v"Adam/lstm_881/lstm_cell_881/bias/v*4
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
#__inference__traced_restore_5251443??+
?C
?

lstm_880_while_body_5248353.
*lstm_880_while_lstm_880_while_loop_counter4
0lstm_880_while_lstm_880_while_maximum_iterations
lstm_880_while_placeholder 
lstm_880_while_placeholder_1 
lstm_880_while_placeholder_2 
lstm_880_while_placeholder_3-
)lstm_880_while_lstm_880_strided_slice_1_0i
elstm_880_while_tensorarrayv2read_tensorlistgetitem_lstm_880_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_880_while_lstm_cell_880_matmul_readvariableop_resource_0:	d?R
?lstm_880_while_lstm_cell_880_matmul_1_readvariableop_resource_0:	2?M
>lstm_880_while_lstm_cell_880_biasadd_readvariableop_resource_0:	?
lstm_880_while_identity
lstm_880_while_identity_1
lstm_880_while_identity_2
lstm_880_while_identity_3
lstm_880_while_identity_4
lstm_880_while_identity_5+
'lstm_880_while_lstm_880_strided_slice_1g
clstm_880_while_tensorarrayv2read_tensorlistgetitem_lstm_880_tensorarrayunstack_tensorlistfromtensorN
;lstm_880_while_lstm_cell_880_matmul_readvariableop_resource:	d?P
=lstm_880_while_lstm_cell_880_matmul_1_readvariableop_resource:	2?K
<lstm_880_while_lstm_cell_880_biasadd_readvariableop_resource:	???3lstm_880/while/lstm_cell_880/BiasAdd/ReadVariableOp?2lstm_880/while/lstm_cell_880/MatMul/ReadVariableOp?4lstm_880/while/lstm_cell_880/MatMul_1/ReadVariableOp?
@lstm_880/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_880/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_880_while_tensorarrayv2read_tensorlistgetitem_lstm_880_tensorarrayunstack_tensorlistfromtensor_0lstm_880_while_placeholderIlstm_880/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_880/while/lstm_cell_880/MatMul/ReadVariableOpReadVariableOp=lstm_880_while_lstm_cell_880_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_880/while/lstm_cell_880/MatMulMatMul9lstm_880/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_880/while/lstm_cell_880/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_880/while/lstm_cell_880/MatMul_1/ReadVariableOpReadVariableOp?lstm_880_while_lstm_cell_880_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_880/while/lstm_cell_880/MatMul_1MatMullstm_880_while_placeholder_2<lstm_880/while/lstm_cell_880/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_880/while/lstm_cell_880/addAddV2-lstm_880/while/lstm_cell_880/MatMul:product:0/lstm_880/while/lstm_cell_880/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_880/while/lstm_cell_880/BiasAdd/ReadVariableOpReadVariableOp>lstm_880_while_lstm_cell_880_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_880/while/lstm_cell_880/BiasAddBiasAdd$lstm_880/while/lstm_cell_880/add:z:0;lstm_880/while/lstm_cell_880/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_880/while/lstm_cell_880/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_880/while/lstm_cell_880/splitSplit5lstm_880/while/lstm_cell_880/split/split_dim:output:0-lstm_880/while/lstm_cell_880/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_880/while/lstm_cell_880/SigmoidSigmoid+lstm_880/while/lstm_cell_880/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_880/while/lstm_cell_880/Sigmoid_1Sigmoid+lstm_880/while/lstm_cell_880/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_880/while/lstm_cell_880/mulMul*lstm_880/while/lstm_cell_880/Sigmoid_1:y:0lstm_880_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_880/while/lstm_cell_880/ReluRelu+lstm_880/while/lstm_cell_880/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_880/while/lstm_cell_880/mul_1Mul(lstm_880/while/lstm_cell_880/Sigmoid:y:0/lstm_880/while/lstm_cell_880/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_880/while/lstm_cell_880/add_1AddV2$lstm_880/while/lstm_cell_880/mul:z:0&lstm_880/while/lstm_cell_880/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_880/while/lstm_cell_880/Sigmoid_2Sigmoid+lstm_880/while/lstm_cell_880/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_880/while/lstm_cell_880/Relu_1Relu&lstm_880/while/lstm_cell_880/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_880/while/lstm_cell_880/mul_2Mul*lstm_880/while/lstm_cell_880/Sigmoid_2:y:01lstm_880/while/lstm_cell_880/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_880/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_880_while_placeholder_1lstm_880_while_placeholder&lstm_880/while/lstm_cell_880/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_880/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_880/while/addAddV2lstm_880_while_placeholderlstm_880/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_880/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_880/while/add_1AddV2*lstm_880_while_lstm_880_while_loop_counterlstm_880/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_880/while/IdentityIdentitylstm_880/while/add_1:z:0^lstm_880/while/NoOp*
T0*
_output_shapes
: ?
lstm_880/while/Identity_1Identity0lstm_880_while_lstm_880_while_maximum_iterations^lstm_880/while/NoOp*
T0*
_output_shapes
: t
lstm_880/while/Identity_2Identitylstm_880/while/add:z:0^lstm_880/while/NoOp*
T0*
_output_shapes
: ?
lstm_880/while/Identity_3IdentityClstm_880/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_880/while/NoOp*
T0*
_output_shapes
: ?
lstm_880/while/Identity_4Identity&lstm_880/while/lstm_cell_880/mul_2:z:0^lstm_880/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_880/while/Identity_5Identity&lstm_880/while/lstm_cell_880/add_1:z:0^lstm_880/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_880/while/NoOpNoOp4^lstm_880/while/lstm_cell_880/BiasAdd/ReadVariableOp3^lstm_880/while/lstm_cell_880/MatMul/ReadVariableOp5^lstm_880/while/lstm_cell_880/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_880_while_identity lstm_880/while/Identity:output:0"?
lstm_880_while_identity_1"lstm_880/while/Identity_1:output:0"?
lstm_880_while_identity_2"lstm_880/while/Identity_2:output:0"?
lstm_880_while_identity_3"lstm_880/while/Identity_3:output:0"?
lstm_880_while_identity_4"lstm_880/while/Identity_4:output:0"?
lstm_880_while_identity_5"lstm_880/while/Identity_5:output:0"T
'lstm_880_while_lstm_880_strided_slice_1)lstm_880_while_lstm_880_strided_slice_1_0"~
<lstm_880_while_lstm_cell_880_biasadd_readvariableop_resource>lstm_880_while_lstm_cell_880_biasadd_readvariableop_resource_0"?
=lstm_880_while_lstm_cell_880_matmul_1_readvariableop_resource?lstm_880_while_lstm_cell_880_matmul_1_readvariableop_resource_0"|
;lstm_880_while_lstm_cell_880_matmul_readvariableop_resource=lstm_880_while_lstm_cell_880_matmul_readvariableop_resource_0"?
clstm_880_while_tensorarrayv2read_tensorlistgetitem_lstm_880_tensorarrayunstack_tensorlistfromtensorelstm_880_while_tensorarrayv2read_tensorlistgetitem_lstm_880_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_880/while/lstm_cell_880/BiasAdd/ReadVariableOp3lstm_880/while/lstm_cell_880/BiasAdd/ReadVariableOp2h
2lstm_880/while/lstm_cell_880/MatMul/ReadVariableOp2lstm_880/while/lstm_cell_880/MatMul/ReadVariableOp2l
4lstm_880/while/lstm_cell_880/MatMul_1/ReadVariableOp4lstm_880/while/lstm_cell_880/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_881_layer_call_fn_5250263
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
E__inference_lstm_881_layer_call_and_return_conditional_losses_5246882o
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
while_cond_5247801
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5247801___redundant_placeholder05
1while_while_cond_5247801___redundant_placeholder15
1while_while_cond_5247801___redundant_placeholder25
1while_while_cond_5247801___redundant_placeholder3
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
while_cond_5250013
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5250013___redundant_placeholder05
1while_while_cond_5250013___redundant_placeholder15
1while_while_cond_5250013___redundant_placeholder25
1while_while_cond_5250013___redundant_placeholder3
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
J__inference_lstm_cell_881_layer_call_and_return_conditional_losses_5251170

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
while_cond_5246112
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5246112___redundant_placeholder05
1while_while_cond_5246112___redundant_placeholder15
1while_while_cond_5246112___redundant_placeholder25
1while_while_cond_5246112___redundant_placeholder3
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
"__inference__wrapped_model_5245841
lstm_879_inputW
Dsequential_293_lstm_879_lstm_cell_879_matmul_readvariableop_resource:	?Y
Fsequential_293_lstm_879_lstm_cell_879_matmul_1_readvariableop_resource:	d?T
Esequential_293_lstm_879_lstm_cell_879_biasadd_readvariableop_resource:	?W
Dsequential_293_lstm_880_lstm_cell_880_matmul_readvariableop_resource:	d?Y
Fsequential_293_lstm_880_lstm_cell_880_matmul_1_readvariableop_resource:	2?T
Esequential_293_lstm_880_lstm_cell_880_biasadd_readvariableop_resource:	?V
Dsequential_293_lstm_881_lstm_cell_881_matmul_readvariableop_resource:2(X
Fsequential_293_lstm_881_lstm_cell_881_matmul_1_readvariableop_resource:
(S
Esequential_293_lstm_881_lstm_cell_881_biasadd_readvariableop_resource:(I
7sequential_293_dense_293_matmul_readvariableop_resource:
F
8sequential_293_dense_293_biasadd_readvariableop_resource:
identity??/sequential_293/dense_293/BiasAdd/ReadVariableOp?.sequential_293/dense_293/MatMul/ReadVariableOp?<sequential_293/lstm_879/lstm_cell_879/BiasAdd/ReadVariableOp?;sequential_293/lstm_879/lstm_cell_879/MatMul/ReadVariableOp?=sequential_293/lstm_879/lstm_cell_879/MatMul_1/ReadVariableOp?sequential_293/lstm_879/while?<sequential_293/lstm_880/lstm_cell_880/BiasAdd/ReadVariableOp?;sequential_293/lstm_880/lstm_cell_880/MatMul/ReadVariableOp?=sequential_293/lstm_880/lstm_cell_880/MatMul_1/ReadVariableOp?sequential_293/lstm_880/while?<sequential_293/lstm_881/lstm_cell_881/BiasAdd/ReadVariableOp?;sequential_293/lstm_881/lstm_cell_881/MatMul/ReadVariableOp?=sequential_293/lstm_881/lstm_cell_881/MatMul_1/ReadVariableOp?sequential_293/lstm_881/while[
sequential_293/lstm_879/ShapeShapelstm_879_input*
T0*
_output_shapes
:u
+sequential_293/lstm_879/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_293/lstm_879/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_293/lstm_879/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_293/lstm_879/strided_sliceStridedSlice&sequential_293/lstm_879/Shape:output:04sequential_293/lstm_879/strided_slice/stack:output:06sequential_293/lstm_879/strided_slice/stack_1:output:06sequential_293/lstm_879/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_293/lstm_879/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
$sequential_293/lstm_879/zeros/packedPack.sequential_293/lstm_879/strided_slice:output:0/sequential_293/lstm_879/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_293/lstm_879/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_293/lstm_879/zerosFill-sequential_293/lstm_879/zeros/packed:output:0,sequential_293/lstm_879/zeros/Const:output:0*
T0*'
_output_shapes
:?????????dj
(sequential_293/lstm_879/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
&sequential_293/lstm_879/zeros_1/packedPack.sequential_293/lstm_879/strided_slice:output:01sequential_293/lstm_879/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_293/lstm_879/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_293/lstm_879/zeros_1Fill/sequential_293/lstm_879/zeros_1/packed:output:0.sequential_293/lstm_879/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????d{
&sequential_293/lstm_879/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_293/lstm_879/transpose	Transposelstm_879_input/sequential_293/lstm_879/transpose/perm:output:0*
T0*+
_output_shapes
:?????????t
sequential_293/lstm_879/Shape_1Shape%sequential_293/lstm_879/transpose:y:0*
T0*
_output_shapes
:w
-sequential_293/lstm_879/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_293/lstm_879/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_293/lstm_879/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_293/lstm_879/strided_slice_1StridedSlice(sequential_293/lstm_879/Shape_1:output:06sequential_293/lstm_879/strided_slice_1/stack:output:08sequential_293/lstm_879/strided_slice_1/stack_1:output:08sequential_293/lstm_879/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_293/lstm_879/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_293/lstm_879/TensorArrayV2TensorListReserve<sequential_293/lstm_879/TensorArrayV2/element_shape:output:00sequential_293/lstm_879/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_293/lstm_879/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
?sequential_293/lstm_879/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_293/lstm_879/transpose:y:0Vsequential_293/lstm_879/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_293/lstm_879/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_293/lstm_879/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_293/lstm_879/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_293/lstm_879/strided_slice_2StridedSlice%sequential_293/lstm_879/transpose:y:06sequential_293/lstm_879/strided_slice_2/stack:output:08sequential_293/lstm_879/strided_slice_2/stack_1:output:08sequential_293/lstm_879/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
;sequential_293/lstm_879/lstm_cell_879/MatMul/ReadVariableOpReadVariableOpDsequential_293_lstm_879_lstm_cell_879_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
,sequential_293/lstm_879/lstm_cell_879/MatMulMatMul0sequential_293/lstm_879/strided_slice_2:output:0Csequential_293/lstm_879/lstm_cell_879/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_293/lstm_879/lstm_cell_879/MatMul_1/ReadVariableOpReadVariableOpFsequential_293_lstm_879_lstm_cell_879_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
.sequential_293/lstm_879/lstm_cell_879/MatMul_1MatMul&sequential_293/lstm_879/zeros:output:0Esequential_293/lstm_879/lstm_cell_879/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_293/lstm_879/lstm_cell_879/addAddV26sequential_293/lstm_879/lstm_cell_879/MatMul:product:08sequential_293/lstm_879/lstm_cell_879/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_293/lstm_879/lstm_cell_879/BiasAdd/ReadVariableOpReadVariableOpEsequential_293_lstm_879_lstm_cell_879_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_293/lstm_879/lstm_cell_879/BiasAddBiasAdd-sequential_293/lstm_879/lstm_cell_879/add:z:0Dsequential_293/lstm_879/lstm_cell_879/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_293/lstm_879/lstm_cell_879/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_293/lstm_879/lstm_cell_879/splitSplit>sequential_293/lstm_879/lstm_cell_879/split/split_dim:output:06sequential_293/lstm_879/lstm_cell_879/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
-sequential_293/lstm_879/lstm_cell_879/SigmoidSigmoid4sequential_293/lstm_879/lstm_cell_879/split:output:0*
T0*'
_output_shapes
:?????????d?
/sequential_293/lstm_879/lstm_cell_879/Sigmoid_1Sigmoid4sequential_293/lstm_879/lstm_cell_879/split:output:1*
T0*'
_output_shapes
:?????????d?
)sequential_293/lstm_879/lstm_cell_879/mulMul3sequential_293/lstm_879/lstm_cell_879/Sigmoid_1:y:0(sequential_293/lstm_879/zeros_1:output:0*
T0*'
_output_shapes
:?????????d?
*sequential_293/lstm_879/lstm_cell_879/ReluRelu4sequential_293/lstm_879/lstm_cell_879/split:output:2*
T0*'
_output_shapes
:?????????d?
+sequential_293/lstm_879/lstm_cell_879/mul_1Mul1sequential_293/lstm_879/lstm_cell_879/Sigmoid:y:08sequential_293/lstm_879/lstm_cell_879/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
+sequential_293/lstm_879/lstm_cell_879/add_1AddV2-sequential_293/lstm_879/lstm_cell_879/mul:z:0/sequential_293/lstm_879/lstm_cell_879/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
/sequential_293/lstm_879/lstm_cell_879/Sigmoid_2Sigmoid4sequential_293/lstm_879/lstm_cell_879/split:output:3*
T0*'
_output_shapes
:?????????d?
,sequential_293/lstm_879/lstm_cell_879/Relu_1Relu/sequential_293/lstm_879/lstm_cell_879/add_1:z:0*
T0*'
_output_shapes
:?????????d?
+sequential_293/lstm_879/lstm_cell_879/mul_2Mul3sequential_293/lstm_879/lstm_cell_879/Sigmoid_2:y:0:sequential_293/lstm_879/lstm_cell_879/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
5sequential_293/lstm_879/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
'sequential_293/lstm_879/TensorArrayV2_1TensorListReserve>sequential_293/lstm_879/TensorArrayV2_1/element_shape:output:00sequential_293/lstm_879/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_293/lstm_879/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_293/lstm_879/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_293/lstm_879/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_293/lstm_879/whileWhile3sequential_293/lstm_879/while/loop_counter:output:09sequential_293/lstm_879/while/maximum_iterations:output:0%sequential_293/lstm_879/time:output:00sequential_293/lstm_879/TensorArrayV2_1:handle:0&sequential_293/lstm_879/zeros:output:0(sequential_293/lstm_879/zeros_1:output:00sequential_293/lstm_879/strided_slice_1:output:0Osequential_293/lstm_879/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_293_lstm_879_lstm_cell_879_matmul_readvariableop_resourceFsequential_293_lstm_879_lstm_cell_879_matmul_1_readvariableop_resourceEsequential_293_lstm_879_lstm_cell_879_biasadd_readvariableop_resource*
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
*sequential_293_lstm_879_while_body_5245473*6
cond.R,
*sequential_293_lstm_879_while_cond_5245472*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
Hsequential_293/lstm_879/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
:sequential_293/lstm_879/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_293/lstm_879/while:output:3Qsequential_293/lstm_879/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0?
-sequential_293/lstm_879/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_293/lstm_879/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_293/lstm_879/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_293/lstm_879/strided_slice_3StridedSliceCsequential_293/lstm_879/TensorArrayV2Stack/TensorListStack:tensor:06sequential_293/lstm_879/strided_slice_3/stack:output:08sequential_293/lstm_879/strided_slice_3/stack_1:output:08sequential_293/lstm_879/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask}
(sequential_293/lstm_879/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_293/lstm_879/transpose_1	TransposeCsequential_293/lstm_879/TensorArrayV2Stack/TensorListStack:tensor:01sequential_293/lstm_879/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????ds
sequential_293/lstm_879/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_293/lstm_880/ShapeShape'sequential_293/lstm_879/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_293/lstm_880/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_293/lstm_880/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_293/lstm_880/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_293/lstm_880/strided_sliceStridedSlice&sequential_293/lstm_880/Shape:output:04sequential_293/lstm_880/strided_slice/stack:output:06sequential_293/lstm_880/strided_slice/stack_1:output:06sequential_293/lstm_880/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_293/lstm_880/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
$sequential_293/lstm_880/zeros/packedPack.sequential_293/lstm_880/strided_slice:output:0/sequential_293/lstm_880/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_293/lstm_880/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_293/lstm_880/zerosFill-sequential_293/lstm_880/zeros/packed:output:0,sequential_293/lstm_880/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2j
(sequential_293/lstm_880/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
&sequential_293/lstm_880/zeros_1/packedPack.sequential_293/lstm_880/strided_slice:output:01sequential_293/lstm_880/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_293/lstm_880/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_293/lstm_880/zeros_1Fill/sequential_293/lstm_880/zeros_1/packed:output:0.sequential_293/lstm_880/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2{
&sequential_293/lstm_880/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_293/lstm_880/transpose	Transpose'sequential_293/lstm_879/transpose_1:y:0/sequential_293/lstm_880/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dt
sequential_293/lstm_880/Shape_1Shape%sequential_293/lstm_880/transpose:y:0*
T0*
_output_shapes
:w
-sequential_293/lstm_880/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_293/lstm_880/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_293/lstm_880/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_293/lstm_880/strided_slice_1StridedSlice(sequential_293/lstm_880/Shape_1:output:06sequential_293/lstm_880/strided_slice_1/stack:output:08sequential_293/lstm_880/strided_slice_1/stack_1:output:08sequential_293/lstm_880/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_293/lstm_880/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_293/lstm_880/TensorArrayV2TensorListReserve<sequential_293/lstm_880/TensorArrayV2/element_shape:output:00sequential_293/lstm_880/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_293/lstm_880/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
?sequential_293/lstm_880/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_293/lstm_880/transpose:y:0Vsequential_293/lstm_880/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_293/lstm_880/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_293/lstm_880/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_293/lstm_880/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_293/lstm_880/strided_slice_2StridedSlice%sequential_293/lstm_880/transpose:y:06sequential_293/lstm_880/strided_slice_2/stack:output:08sequential_293/lstm_880/strided_slice_2/stack_1:output:08sequential_293/lstm_880/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
;sequential_293/lstm_880/lstm_cell_880/MatMul/ReadVariableOpReadVariableOpDsequential_293_lstm_880_lstm_cell_880_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
,sequential_293/lstm_880/lstm_cell_880/MatMulMatMul0sequential_293/lstm_880/strided_slice_2:output:0Csequential_293/lstm_880/lstm_cell_880/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_293/lstm_880/lstm_cell_880/MatMul_1/ReadVariableOpReadVariableOpFsequential_293_lstm_880_lstm_cell_880_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
.sequential_293/lstm_880/lstm_cell_880/MatMul_1MatMul&sequential_293/lstm_880/zeros:output:0Esequential_293/lstm_880/lstm_cell_880/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_293/lstm_880/lstm_cell_880/addAddV26sequential_293/lstm_880/lstm_cell_880/MatMul:product:08sequential_293/lstm_880/lstm_cell_880/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_293/lstm_880/lstm_cell_880/BiasAdd/ReadVariableOpReadVariableOpEsequential_293_lstm_880_lstm_cell_880_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_293/lstm_880/lstm_cell_880/BiasAddBiasAdd-sequential_293/lstm_880/lstm_cell_880/add:z:0Dsequential_293/lstm_880/lstm_cell_880/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_293/lstm_880/lstm_cell_880/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_293/lstm_880/lstm_cell_880/splitSplit>sequential_293/lstm_880/lstm_cell_880/split/split_dim:output:06sequential_293/lstm_880/lstm_cell_880/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
-sequential_293/lstm_880/lstm_cell_880/SigmoidSigmoid4sequential_293/lstm_880/lstm_cell_880/split:output:0*
T0*'
_output_shapes
:?????????2?
/sequential_293/lstm_880/lstm_cell_880/Sigmoid_1Sigmoid4sequential_293/lstm_880/lstm_cell_880/split:output:1*
T0*'
_output_shapes
:?????????2?
)sequential_293/lstm_880/lstm_cell_880/mulMul3sequential_293/lstm_880/lstm_cell_880/Sigmoid_1:y:0(sequential_293/lstm_880/zeros_1:output:0*
T0*'
_output_shapes
:?????????2?
*sequential_293/lstm_880/lstm_cell_880/ReluRelu4sequential_293/lstm_880/lstm_cell_880/split:output:2*
T0*'
_output_shapes
:?????????2?
+sequential_293/lstm_880/lstm_cell_880/mul_1Mul1sequential_293/lstm_880/lstm_cell_880/Sigmoid:y:08sequential_293/lstm_880/lstm_cell_880/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
+sequential_293/lstm_880/lstm_cell_880/add_1AddV2-sequential_293/lstm_880/lstm_cell_880/mul:z:0/sequential_293/lstm_880/lstm_cell_880/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
/sequential_293/lstm_880/lstm_cell_880/Sigmoid_2Sigmoid4sequential_293/lstm_880/lstm_cell_880/split:output:3*
T0*'
_output_shapes
:?????????2?
,sequential_293/lstm_880/lstm_cell_880/Relu_1Relu/sequential_293/lstm_880/lstm_cell_880/add_1:z:0*
T0*'
_output_shapes
:?????????2?
+sequential_293/lstm_880/lstm_cell_880/mul_2Mul3sequential_293/lstm_880/lstm_cell_880/Sigmoid_2:y:0:sequential_293/lstm_880/lstm_cell_880/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
5sequential_293/lstm_880/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
'sequential_293/lstm_880/TensorArrayV2_1TensorListReserve>sequential_293/lstm_880/TensorArrayV2_1/element_shape:output:00sequential_293/lstm_880/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_293/lstm_880/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_293/lstm_880/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_293/lstm_880/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_293/lstm_880/whileWhile3sequential_293/lstm_880/while/loop_counter:output:09sequential_293/lstm_880/while/maximum_iterations:output:0%sequential_293/lstm_880/time:output:00sequential_293/lstm_880/TensorArrayV2_1:handle:0&sequential_293/lstm_880/zeros:output:0(sequential_293/lstm_880/zeros_1:output:00sequential_293/lstm_880/strided_slice_1:output:0Osequential_293/lstm_880/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_293_lstm_880_lstm_cell_880_matmul_readvariableop_resourceFsequential_293_lstm_880_lstm_cell_880_matmul_1_readvariableop_resourceEsequential_293_lstm_880_lstm_cell_880_biasadd_readvariableop_resource*
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
*sequential_293_lstm_880_while_body_5245612*6
cond.R,
*sequential_293_lstm_880_while_cond_5245611*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
Hsequential_293/lstm_880/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
:sequential_293/lstm_880/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_293/lstm_880/while:output:3Qsequential_293/lstm_880/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0?
-sequential_293/lstm_880/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_293/lstm_880/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_293/lstm_880/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_293/lstm_880/strided_slice_3StridedSliceCsequential_293/lstm_880/TensorArrayV2Stack/TensorListStack:tensor:06sequential_293/lstm_880/strided_slice_3/stack:output:08sequential_293/lstm_880/strided_slice_3/stack_1:output:08sequential_293/lstm_880/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask}
(sequential_293/lstm_880/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_293/lstm_880/transpose_1	TransposeCsequential_293/lstm_880/TensorArrayV2Stack/TensorListStack:tensor:01sequential_293/lstm_880/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2s
sequential_293/lstm_880/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_293/lstm_881/ShapeShape'sequential_293/lstm_880/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_293/lstm_881/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_293/lstm_881/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_293/lstm_881/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_293/lstm_881/strided_sliceStridedSlice&sequential_293/lstm_881/Shape:output:04sequential_293/lstm_881/strided_slice/stack:output:06sequential_293/lstm_881/strided_slice/stack_1:output:06sequential_293/lstm_881/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_293/lstm_881/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
$sequential_293/lstm_881/zeros/packedPack.sequential_293/lstm_881/strided_slice:output:0/sequential_293/lstm_881/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_293/lstm_881/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_293/lstm_881/zerosFill-sequential_293/lstm_881/zeros/packed:output:0,sequential_293/lstm_881/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
j
(sequential_293/lstm_881/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
&sequential_293/lstm_881/zeros_1/packedPack.sequential_293/lstm_881/strided_slice:output:01sequential_293/lstm_881/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_293/lstm_881/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_293/lstm_881/zeros_1Fill/sequential_293/lstm_881/zeros_1/packed:output:0.sequential_293/lstm_881/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
{
&sequential_293/lstm_881/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_293/lstm_881/transpose	Transpose'sequential_293/lstm_880/transpose_1:y:0/sequential_293/lstm_881/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2t
sequential_293/lstm_881/Shape_1Shape%sequential_293/lstm_881/transpose:y:0*
T0*
_output_shapes
:w
-sequential_293/lstm_881/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_293/lstm_881/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_293/lstm_881/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_293/lstm_881/strided_slice_1StridedSlice(sequential_293/lstm_881/Shape_1:output:06sequential_293/lstm_881/strided_slice_1/stack:output:08sequential_293/lstm_881/strided_slice_1/stack_1:output:08sequential_293/lstm_881/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_293/lstm_881/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_293/lstm_881/TensorArrayV2TensorListReserve<sequential_293/lstm_881/TensorArrayV2/element_shape:output:00sequential_293/lstm_881/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_293/lstm_881/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
?sequential_293/lstm_881/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_293/lstm_881/transpose:y:0Vsequential_293/lstm_881/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_293/lstm_881/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_293/lstm_881/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_293/lstm_881/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_293/lstm_881/strided_slice_2StridedSlice%sequential_293/lstm_881/transpose:y:06sequential_293/lstm_881/strided_slice_2/stack:output:08sequential_293/lstm_881/strided_slice_2/stack_1:output:08sequential_293/lstm_881/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
;sequential_293/lstm_881/lstm_cell_881/MatMul/ReadVariableOpReadVariableOpDsequential_293_lstm_881_lstm_cell_881_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
,sequential_293/lstm_881/lstm_cell_881/MatMulMatMul0sequential_293/lstm_881/strided_slice_2:output:0Csequential_293/lstm_881/lstm_cell_881/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
=sequential_293/lstm_881/lstm_cell_881/MatMul_1/ReadVariableOpReadVariableOpFsequential_293_lstm_881_lstm_cell_881_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
.sequential_293/lstm_881/lstm_cell_881/MatMul_1MatMul&sequential_293/lstm_881/zeros:output:0Esequential_293/lstm_881/lstm_cell_881/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
)sequential_293/lstm_881/lstm_cell_881/addAddV26sequential_293/lstm_881/lstm_cell_881/MatMul:product:08sequential_293/lstm_881/lstm_cell_881/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
<sequential_293/lstm_881/lstm_cell_881/BiasAdd/ReadVariableOpReadVariableOpEsequential_293_lstm_881_lstm_cell_881_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
-sequential_293/lstm_881/lstm_cell_881/BiasAddBiasAdd-sequential_293/lstm_881/lstm_cell_881/add:z:0Dsequential_293/lstm_881/lstm_cell_881/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(w
5sequential_293/lstm_881/lstm_cell_881/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_293/lstm_881/lstm_cell_881/splitSplit>sequential_293/lstm_881/lstm_cell_881/split/split_dim:output:06sequential_293/lstm_881/lstm_cell_881/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
-sequential_293/lstm_881/lstm_cell_881/SigmoidSigmoid4sequential_293/lstm_881/lstm_cell_881/split:output:0*
T0*'
_output_shapes
:?????????
?
/sequential_293/lstm_881/lstm_cell_881/Sigmoid_1Sigmoid4sequential_293/lstm_881/lstm_cell_881/split:output:1*
T0*'
_output_shapes
:?????????
?
)sequential_293/lstm_881/lstm_cell_881/mulMul3sequential_293/lstm_881/lstm_cell_881/Sigmoid_1:y:0(sequential_293/lstm_881/zeros_1:output:0*
T0*'
_output_shapes
:?????????
?
*sequential_293/lstm_881/lstm_cell_881/ReluRelu4sequential_293/lstm_881/lstm_cell_881/split:output:2*
T0*'
_output_shapes
:?????????
?
+sequential_293/lstm_881/lstm_cell_881/mul_1Mul1sequential_293/lstm_881/lstm_cell_881/Sigmoid:y:08sequential_293/lstm_881/lstm_cell_881/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
+sequential_293/lstm_881/lstm_cell_881/add_1AddV2-sequential_293/lstm_881/lstm_cell_881/mul:z:0/sequential_293/lstm_881/lstm_cell_881/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
/sequential_293/lstm_881/lstm_cell_881/Sigmoid_2Sigmoid4sequential_293/lstm_881/lstm_cell_881/split:output:3*
T0*'
_output_shapes
:?????????
?
,sequential_293/lstm_881/lstm_cell_881/Relu_1Relu/sequential_293/lstm_881/lstm_cell_881/add_1:z:0*
T0*'
_output_shapes
:?????????
?
+sequential_293/lstm_881/lstm_cell_881/mul_2Mul3sequential_293/lstm_881/lstm_cell_881/Sigmoid_2:y:0:sequential_293/lstm_881/lstm_cell_881/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
5sequential_293/lstm_881/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
'sequential_293/lstm_881/TensorArrayV2_1TensorListReserve>sequential_293/lstm_881/TensorArrayV2_1/element_shape:output:00sequential_293/lstm_881/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_293/lstm_881/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_293/lstm_881/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_293/lstm_881/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_293/lstm_881/whileWhile3sequential_293/lstm_881/while/loop_counter:output:09sequential_293/lstm_881/while/maximum_iterations:output:0%sequential_293/lstm_881/time:output:00sequential_293/lstm_881/TensorArrayV2_1:handle:0&sequential_293/lstm_881/zeros:output:0(sequential_293/lstm_881/zeros_1:output:00sequential_293/lstm_881/strided_slice_1:output:0Osequential_293/lstm_881/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_293_lstm_881_lstm_cell_881_matmul_readvariableop_resourceFsequential_293_lstm_881_lstm_cell_881_matmul_1_readvariableop_resourceEsequential_293_lstm_881_lstm_cell_881_biasadd_readvariableop_resource*
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
*sequential_293_lstm_881_while_body_5245751*6
cond.R,
*sequential_293_lstm_881_while_cond_5245750*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
Hsequential_293/lstm_881/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
:sequential_293/lstm_881/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_293/lstm_881/while:output:3Qsequential_293/lstm_881/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0?
-sequential_293/lstm_881/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_293/lstm_881/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_293/lstm_881/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_293/lstm_881/strided_slice_3StridedSliceCsequential_293/lstm_881/TensorArrayV2Stack/TensorListStack:tensor:06sequential_293/lstm_881/strided_slice_3/stack:output:08sequential_293/lstm_881/strided_slice_3/stack_1:output:08sequential_293/lstm_881/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_mask}
(sequential_293/lstm_881/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_293/lstm_881/transpose_1	TransposeCsequential_293/lstm_881/TensorArrayV2Stack/TensorListStack:tensor:01sequential_293/lstm_881/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
s
sequential_293/lstm_881/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
.sequential_293/dense_293/MatMul/ReadVariableOpReadVariableOp7sequential_293_dense_293_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
sequential_293/dense_293/MatMulMatMul0sequential_293/lstm_881/strided_slice_3:output:06sequential_293/dense_293/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
/sequential_293/dense_293/BiasAdd/ReadVariableOpReadVariableOp8sequential_293_dense_293_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
 sequential_293/dense_293/BiasAddBiasAdd)sequential_293/dense_293/MatMul:product:07sequential_293/dense_293/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x
IdentityIdentity)sequential_293/dense_293/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp0^sequential_293/dense_293/BiasAdd/ReadVariableOp/^sequential_293/dense_293/MatMul/ReadVariableOp=^sequential_293/lstm_879/lstm_cell_879/BiasAdd/ReadVariableOp<^sequential_293/lstm_879/lstm_cell_879/MatMul/ReadVariableOp>^sequential_293/lstm_879/lstm_cell_879/MatMul_1/ReadVariableOp^sequential_293/lstm_879/while=^sequential_293/lstm_880/lstm_cell_880/BiasAdd/ReadVariableOp<^sequential_293/lstm_880/lstm_cell_880/MatMul/ReadVariableOp>^sequential_293/lstm_880/lstm_cell_880/MatMul_1/ReadVariableOp^sequential_293/lstm_880/while=^sequential_293/lstm_881/lstm_cell_881/BiasAdd/ReadVariableOp<^sequential_293/lstm_881/lstm_cell_881/MatMul/ReadVariableOp>^sequential_293/lstm_881/lstm_cell_881/MatMul_1/ReadVariableOp^sequential_293/lstm_881/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2b
/sequential_293/dense_293/BiasAdd/ReadVariableOp/sequential_293/dense_293/BiasAdd/ReadVariableOp2`
.sequential_293/dense_293/MatMul/ReadVariableOp.sequential_293/dense_293/MatMul/ReadVariableOp2|
<sequential_293/lstm_879/lstm_cell_879/BiasAdd/ReadVariableOp<sequential_293/lstm_879/lstm_cell_879/BiasAdd/ReadVariableOp2z
;sequential_293/lstm_879/lstm_cell_879/MatMul/ReadVariableOp;sequential_293/lstm_879/lstm_cell_879/MatMul/ReadVariableOp2~
=sequential_293/lstm_879/lstm_cell_879/MatMul_1/ReadVariableOp=sequential_293/lstm_879/lstm_cell_879/MatMul_1/ReadVariableOp2>
sequential_293/lstm_879/whilesequential_293/lstm_879/while2|
<sequential_293/lstm_880/lstm_cell_880/BiasAdd/ReadVariableOp<sequential_293/lstm_880/lstm_cell_880/BiasAdd/ReadVariableOp2z
;sequential_293/lstm_880/lstm_cell_880/MatMul/ReadVariableOp;sequential_293/lstm_880/lstm_cell_880/MatMul/ReadVariableOp2~
=sequential_293/lstm_880/lstm_cell_880/MatMul_1/ReadVariableOp=sequential_293/lstm_880/lstm_cell_880/MatMul_1/ReadVariableOp2>
sequential_293/lstm_880/whilesequential_293/lstm_880/while2|
<sequential_293/lstm_881/lstm_cell_881/BiasAdd/ReadVariableOp<sequential_293/lstm_881/lstm_cell_881/BiasAdd/ReadVariableOp2z
;sequential_293/lstm_881/lstm_cell_881/MatMul/ReadVariableOp;sequential_293/lstm_881/lstm_cell_881/MatMul/ReadVariableOp2~
=sequential_293/lstm_881/lstm_cell_881/MatMul_1/ReadVariableOp=sequential_293/lstm_881/lstm_cell_881/MatMul_1/ReadVariableOp2>
sequential_293/lstm_881/whilesequential_293/lstm_881/while:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_879_input
?
?
+__inference_dense_293_layer_call_fn_5250866

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
F__inference_dense_293_layer_call_and_return_conditional_losses_5247358o
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

?
lstm_881_while_cond_5248491.
*lstm_881_while_lstm_881_while_loop_counter4
0lstm_881_while_lstm_881_while_maximum_iterations
lstm_881_while_placeholder 
lstm_881_while_placeholder_1 
lstm_881_while_placeholder_2 
lstm_881_while_placeholder_30
,lstm_881_while_less_lstm_881_strided_slice_1G
Clstm_881_while_lstm_881_while_cond_5248491___redundant_placeholder0G
Clstm_881_while_lstm_881_while_cond_5248491___redundant_placeholder1G
Clstm_881_while_lstm_881_while_cond_5248491___redundant_placeholder2G
Clstm_881_while_lstm_881_while_cond_5248491___redundant_placeholder3
lstm_881_while_identity
?
lstm_881/while/LessLesslstm_881_while_placeholder,lstm_881_while_less_lstm_881_strided_slice_1*
T0*
_output_shapes
: ]
lstm_881/while/IdentityIdentitylstm_881/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_881_while_identity lstm_881/while/Identity:output:0*(
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
while_body_5249398
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_879_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_879_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_879_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_879_matmul_readvariableop_resource:	?G
4while_lstm_cell_879_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_879_biasadd_readvariableop_resource:	???*while/lstm_cell_879/BiasAdd/ReadVariableOp?)while/lstm_cell_879/MatMul/ReadVariableOp?+while/lstm_cell_879/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_879/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_879_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_879/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_879/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_879/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_879_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_879/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_879/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_879/addAddV2$while/lstm_cell_879/MatMul:product:0&while/lstm_cell_879/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_879/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_879_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_879/BiasAddBiasAddwhile/lstm_cell_879/add:z:02while/lstm_cell_879/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_879/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_879/splitSplit,while/lstm_cell_879/split/split_dim:output:0$while/lstm_cell_879/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_879/SigmoidSigmoid"while/lstm_cell_879/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_879/Sigmoid_1Sigmoid"while/lstm_cell_879/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_879/mulMul!while/lstm_cell_879/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_879/ReluRelu"while/lstm_cell_879/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_879/mul_1Mulwhile/lstm_cell_879/Sigmoid:y:0&while/lstm_cell_879/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_879/add_1AddV2while/lstm_cell_879/mul:z:0while/lstm_cell_879/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_879/Sigmoid_2Sigmoid"while/lstm_cell_879/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_879/Relu_1Reluwhile/lstm_cell_879/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_879/mul_2Mul!while/lstm_cell_879/Sigmoid_2:y:0(while/lstm_cell_879/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_879/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_879/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_879/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_879/BiasAdd/ReadVariableOp*^while/lstm_cell_879/MatMul/ReadVariableOp,^while/lstm_cell_879/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_879_biasadd_readvariableop_resource5while_lstm_cell_879_biasadd_readvariableop_resource_0"n
4while_lstm_cell_879_matmul_1_readvariableop_resource6while_lstm_cell_879_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_879_matmul_readvariableop_resource4while_lstm_cell_879_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_879/BiasAdd/ReadVariableOp*while/lstm_cell_879/BiasAdd/ReadVariableOp2V
)while/lstm_cell_879/MatMul/ReadVariableOp)while/lstm_cell_879/MatMul/ReadVariableOp2Z
+while/lstm_cell_879/MatMul_1/ReadVariableOp+while/lstm_cell_879/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
?T
?
*sequential_293_lstm_880_while_body_5245612L
Hsequential_293_lstm_880_while_sequential_293_lstm_880_while_loop_counterR
Nsequential_293_lstm_880_while_sequential_293_lstm_880_while_maximum_iterations-
)sequential_293_lstm_880_while_placeholder/
+sequential_293_lstm_880_while_placeholder_1/
+sequential_293_lstm_880_while_placeholder_2/
+sequential_293_lstm_880_while_placeholder_3K
Gsequential_293_lstm_880_while_sequential_293_lstm_880_strided_slice_1_0?
?sequential_293_lstm_880_while_tensorarrayv2read_tensorlistgetitem_sequential_293_lstm_880_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_293_lstm_880_while_lstm_cell_880_matmul_readvariableop_resource_0:	d?a
Nsequential_293_lstm_880_while_lstm_cell_880_matmul_1_readvariableop_resource_0:	2?\
Msequential_293_lstm_880_while_lstm_cell_880_biasadd_readvariableop_resource_0:	?*
&sequential_293_lstm_880_while_identity,
(sequential_293_lstm_880_while_identity_1,
(sequential_293_lstm_880_while_identity_2,
(sequential_293_lstm_880_while_identity_3,
(sequential_293_lstm_880_while_identity_4,
(sequential_293_lstm_880_while_identity_5I
Esequential_293_lstm_880_while_sequential_293_lstm_880_strided_slice_1?
?sequential_293_lstm_880_while_tensorarrayv2read_tensorlistgetitem_sequential_293_lstm_880_tensorarrayunstack_tensorlistfromtensor]
Jsequential_293_lstm_880_while_lstm_cell_880_matmul_readvariableop_resource:	d?_
Lsequential_293_lstm_880_while_lstm_cell_880_matmul_1_readvariableop_resource:	2?Z
Ksequential_293_lstm_880_while_lstm_cell_880_biasadd_readvariableop_resource:	???Bsequential_293/lstm_880/while/lstm_cell_880/BiasAdd/ReadVariableOp?Asequential_293/lstm_880/while/lstm_cell_880/MatMul/ReadVariableOp?Csequential_293/lstm_880/while/lstm_cell_880/MatMul_1/ReadVariableOp?
Osequential_293/lstm_880/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
Asequential_293/lstm_880/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_293_lstm_880_while_tensorarrayv2read_tensorlistgetitem_sequential_293_lstm_880_tensorarrayunstack_tensorlistfromtensor_0)sequential_293_lstm_880_while_placeholderXsequential_293/lstm_880/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
Asequential_293/lstm_880/while/lstm_cell_880/MatMul/ReadVariableOpReadVariableOpLsequential_293_lstm_880_while_lstm_cell_880_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
2sequential_293/lstm_880/while/lstm_cell_880/MatMulMatMulHsequential_293/lstm_880/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_293/lstm_880/while/lstm_cell_880/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_293/lstm_880/while/lstm_cell_880/MatMul_1/ReadVariableOpReadVariableOpNsequential_293_lstm_880_while_lstm_cell_880_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
4sequential_293/lstm_880/while/lstm_cell_880/MatMul_1MatMul+sequential_293_lstm_880_while_placeholder_2Ksequential_293/lstm_880/while/lstm_cell_880/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_293/lstm_880/while/lstm_cell_880/addAddV2<sequential_293/lstm_880/while/lstm_cell_880/MatMul:product:0>sequential_293/lstm_880/while/lstm_cell_880/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_293/lstm_880/while/lstm_cell_880/BiasAdd/ReadVariableOpReadVariableOpMsequential_293_lstm_880_while_lstm_cell_880_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_293/lstm_880/while/lstm_cell_880/BiasAddBiasAdd3sequential_293/lstm_880/while/lstm_cell_880/add:z:0Jsequential_293/lstm_880/while/lstm_cell_880/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_293/lstm_880/while/lstm_cell_880/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_293/lstm_880/while/lstm_cell_880/splitSplitDsequential_293/lstm_880/while/lstm_cell_880/split/split_dim:output:0<sequential_293/lstm_880/while/lstm_cell_880/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
3sequential_293/lstm_880/while/lstm_cell_880/SigmoidSigmoid:sequential_293/lstm_880/while/lstm_cell_880/split:output:0*
T0*'
_output_shapes
:?????????2?
5sequential_293/lstm_880/while/lstm_cell_880/Sigmoid_1Sigmoid:sequential_293/lstm_880/while/lstm_cell_880/split:output:1*
T0*'
_output_shapes
:?????????2?
/sequential_293/lstm_880/while/lstm_cell_880/mulMul9sequential_293/lstm_880/while/lstm_cell_880/Sigmoid_1:y:0+sequential_293_lstm_880_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
0sequential_293/lstm_880/while/lstm_cell_880/ReluRelu:sequential_293/lstm_880/while/lstm_cell_880/split:output:2*
T0*'
_output_shapes
:?????????2?
1sequential_293/lstm_880/while/lstm_cell_880/mul_1Mul7sequential_293/lstm_880/while/lstm_cell_880/Sigmoid:y:0>sequential_293/lstm_880/while/lstm_cell_880/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
1sequential_293/lstm_880/while/lstm_cell_880/add_1AddV23sequential_293/lstm_880/while/lstm_cell_880/mul:z:05sequential_293/lstm_880/while/lstm_cell_880/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
5sequential_293/lstm_880/while/lstm_cell_880/Sigmoid_2Sigmoid:sequential_293/lstm_880/while/lstm_cell_880/split:output:3*
T0*'
_output_shapes
:?????????2?
2sequential_293/lstm_880/while/lstm_cell_880/Relu_1Relu5sequential_293/lstm_880/while/lstm_cell_880/add_1:z:0*
T0*'
_output_shapes
:?????????2?
1sequential_293/lstm_880/while/lstm_cell_880/mul_2Mul9sequential_293/lstm_880/while/lstm_cell_880/Sigmoid_2:y:0@sequential_293/lstm_880/while/lstm_cell_880/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
Bsequential_293/lstm_880/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_293_lstm_880_while_placeholder_1)sequential_293_lstm_880_while_placeholder5sequential_293/lstm_880/while/lstm_cell_880/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_293/lstm_880/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_293/lstm_880/while/addAddV2)sequential_293_lstm_880_while_placeholder,sequential_293/lstm_880/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_293/lstm_880/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_293/lstm_880/while/add_1AddV2Hsequential_293_lstm_880_while_sequential_293_lstm_880_while_loop_counter.sequential_293/lstm_880/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_293/lstm_880/while/IdentityIdentity'sequential_293/lstm_880/while/add_1:z:0#^sequential_293/lstm_880/while/NoOp*
T0*
_output_shapes
: ?
(sequential_293/lstm_880/while/Identity_1IdentityNsequential_293_lstm_880_while_sequential_293_lstm_880_while_maximum_iterations#^sequential_293/lstm_880/while/NoOp*
T0*
_output_shapes
: ?
(sequential_293/lstm_880/while/Identity_2Identity%sequential_293/lstm_880/while/add:z:0#^sequential_293/lstm_880/while/NoOp*
T0*
_output_shapes
: ?
(sequential_293/lstm_880/while/Identity_3IdentityRsequential_293/lstm_880/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_293/lstm_880/while/NoOp*
T0*
_output_shapes
: ?
(sequential_293/lstm_880/while/Identity_4Identity5sequential_293/lstm_880/while/lstm_cell_880/mul_2:z:0#^sequential_293/lstm_880/while/NoOp*
T0*'
_output_shapes
:?????????2?
(sequential_293/lstm_880/while/Identity_5Identity5sequential_293/lstm_880/while/lstm_cell_880/add_1:z:0#^sequential_293/lstm_880/while/NoOp*
T0*'
_output_shapes
:?????????2?
"sequential_293/lstm_880/while/NoOpNoOpC^sequential_293/lstm_880/while/lstm_cell_880/BiasAdd/ReadVariableOpB^sequential_293/lstm_880/while/lstm_cell_880/MatMul/ReadVariableOpD^sequential_293/lstm_880/while/lstm_cell_880/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_293_lstm_880_while_identity/sequential_293/lstm_880/while/Identity:output:0"]
(sequential_293_lstm_880_while_identity_11sequential_293/lstm_880/while/Identity_1:output:0"]
(sequential_293_lstm_880_while_identity_21sequential_293/lstm_880/while/Identity_2:output:0"]
(sequential_293_lstm_880_while_identity_31sequential_293/lstm_880/while/Identity_3:output:0"]
(sequential_293_lstm_880_while_identity_41sequential_293/lstm_880/while/Identity_4:output:0"]
(sequential_293_lstm_880_while_identity_51sequential_293/lstm_880/while/Identity_5:output:0"?
Ksequential_293_lstm_880_while_lstm_cell_880_biasadd_readvariableop_resourceMsequential_293_lstm_880_while_lstm_cell_880_biasadd_readvariableop_resource_0"?
Lsequential_293_lstm_880_while_lstm_cell_880_matmul_1_readvariableop_resourceNsequential_293_lstm_880_while_lstm_cell_880_matmul_1_readvariableop_resource_0"?
Jsequential_293_lstm_880_while_lstm_cell_880_matmul_readvariableop_resourceLsequential_293_lstm_880_while_lstm_cell_880_matmul_readvariableop_resource_0"?
Esequential_293_lstm_880_while_sequential_293_lstm_880_strided_slice_1Gsequential_293_lstm_880_while_sequential_293_lstm_880_strided_slice_1_0"?
?sequential_293_lstm_880_while_tensorarrayv2read_tensorlistgetitem_sequential_293_lstm_880_tensorarrayunstack_tensorlistfromtensor?sequential_293_lstm_880_while_tensorarrayv2read_tensorlistgetitem_sequential_293_lstm_880_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2?
Bsequential_293/lstm_880/while/lstm_cell_880/BiasAdd/ReadVariableOpBsequential_293/lstm_880/while/lstm_cell_880/BiasAdd/ReadVariableOp2?
Asequential_293/lstm_880/while/lstm_cell_880/MatMul/ReadVariableOpAsequential_293/lstm_880/while/lstm_cell_880/MatMul/ReadVariableOp2?
Csequential_293/lstm_880/while/lstm_cell_880/MatMul_1/ReadVariableOpCsequential_293/lstm_880/while/lstm_cell_880/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
K__inference_sequential_293_layer_call_and_return_conditional_losses_5247954

inputs#
lstm_879_5247927:	?#
lstm_879_5247929:	d?
lstm_879_5247931:	?#
lstm_880_5247934:	d?#
lstm_880_5247936:	2?
lstm_880_5247938:	?"
lstm_881_5247941:2("
lstm_881_5247943:
(
lstm_881_5247945:(#
dense_293_5247948:

dense_293_5247950:
identity??!dense_293/StatefulPartitionedCall? lstm_879/StatefulPartitionedCall? lstm_880/StatefulPartitionedCall? lstm_881/StatefulPartitionedCall?
 lstm_879/StatefulPartitionedCallStatefulPartitionedCallinputslstm_879_5247927lstm_879_5247929lstm_879_5247931*
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
E__inference_lstm_879_layer_call_and_return_conditional_losses_5247886?
 lstm_880/StatefulPartitionedCallStatefulPartitionedCall)lstm_879/StatefulPartitionedCall:output:0lstm_880_5247934lstm_880_5247936lstm_880_5247938*
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
E__inference_lstm_880_layer_call_and_return_conditional_losses_5247721?
 lstm_881/StatefulPartitionedCallStatefulPartitionedCall)lstm_880/StatefulPartitionedCall:output:0lstm_881_5247941lstm_881_5247943lstm_881_5247945*
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
E__inference_lstm_881_layer_call_and_return_conditional_losses_5247556?
!dense_293/StatefulPartitionedCallStatefulPartitionedCall)lstm_881/StatefulPartitionedCall:output:0dense_293_5247948dense_293_5247950*
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
F__inference_dense_293_layer_call_and_return_conditional_losses_5247358y
IdentityIdentity*dense_293/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_293/StatefulPartitionedCall!^lstm_879/StatefulPartitionedCall!^lstm_880/StatefulPartitionedCall!^lstm_881/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_293/StatefulPartitionedCall!dense_293/StatefulPartitionedCall2D
 lstm_879/StatefulPartitionedCall lstm_879/StatefulPartitionedCall2D
 lstm_880/StatefulPartitionedCall lstm_880/StatefulPartitionedCall2D
 lstm_881/StatefulPartitionedCall lstm_881/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
while_body_5250014
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_880_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_880_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_880_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_880_matmul_readvariableop_resource:	d?G
4while_lstm_cell_880_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_880_biasadd_readvariableop_resource:	???*while/lstm_cell_880/BiasAdd/ReadVariableOp?)while/lstm_cell_880/MatMul/ReadVariableOp?+while/lstm_cell_880/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_880/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_880_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_880/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_880/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_880/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_880_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_880/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_880/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_880/addAddV2$while/lstm_cell_880/MatMul:product:0&while/lstm_cell_880/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_880/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_880_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_880/BiasAddBiasAddwhile/lstm_cell_880/add:z:02while/lstm_cell_880/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_880/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_880/splitSplit,while/lstm_cell_880/split/split_dim:output:0$while/lstm_cell_880/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_880/SigmoidSigmoid"while/lstm_cell_880/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_880/Sigmoid_1Sigmoid"while/lstm_cell_880/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_880/mulMul!while/lstm_cell_880/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_880/ReluRelu"while/lstm_cell_880/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_880/mul_1Mulwhile/lstm_cell_880/Sigmoid:y:0&while/lstm_cell_880/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_880/add_1AddV2while/lstm_cell_880/mul:z:0while/lstm_cell_880/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_880/Sigmoid_2Sigmoid"while/lstm_cell_880/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_880/Relu_1Reluwhile/lstm_cell_880/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_880/mul_2Mul!while/lstm_cell_880/Sigmoid_2:y:0(while/lstm_cell_880/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_880/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_880/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_880/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_880/BiasAdd/ReadVariableOp*^while/lstm_cell_880/MatMul/ReadVariableOp,^while/lstm_cell_880/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_880_biasadd_readvariableop_resource5while_lstm_cell_880_biasadd_readvariableop_resource_0"n
4while_lstm_cell_880_matmul_1_readvariableop_resource6while_lstm_cell_880_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_880_matmul_readvariableop_resource4while_lstm_cell_880_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_880/BiasAdd/ReadVariableOp*while/lstm_cell_880/BiasAdd/ReadVariableOp2V
)while/lstm_cell_880/MatMul/ReadVariableOp)while/lstm_cell_880/MatMul/ReadVariableOp2Z
+while/lstm_cell_880/MatMul_1/ReadVariableOp+while/lstm_cell_880/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
?W
?
 __inference__traced_save_5251313
file_prefix/
+savev2_dense_293_kernel_read_readvariableop-
)savev2_dense_293_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_879_lstm_cell_879_kernel_read_readvariableopF
Bsavev2_lstm_879_lstm_cell_879_recurrent_kernel_read_readvariableop:
6savev2_lstm_879_lstm_cell_879_bias_read_readvariableop<
8savev2_lstm_880_lstm_cell_880_kernel_read_readvariableopF
Bsavev2_lstm_880_lstm_cell_880_recurrent_kernel_read_readvariableop:
6savev2_lstm_880_lstm_cell_880_bias_read_readvariableop<
8savev2_lstm_881_lstm_cell_881_kernel_read_readvariableopF
Bsavev2_lstm_881_lstm_cell_881_recurrent_kernel_read_readvariableop:
6savev2_lstm_881_lstm_cell_881_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop6
2savev2_adam_dense_293_kernel_m_read_readvariableop4
0savev2_adam_dense_293_bias_m_read_readvariableopC
?savev2_adam_lstm_879_lstm_cell_879_kernel_m_read_readvariableopM
Isavev2_adam_lstm_879_lstm_cell_879_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_879_lstm_cell_879_bias_m_read_readvariableopC
?savev2_adam_lstm_880_lstm_cell_880_kernel_m_read_readvariableopM
Isavev2_adam_lstm_880_lstm_cell_880_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_880_lstm_cell_880_bias_m_read_readvariableopC
?savev2_adam_lstm_881_lstm_cell_881_kernel_m_read_readvariableopM
Isavev2_adam_lstm_881_lstm_cell_881_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_881_lstm_cell_881_bias_m_read_readvariableop6
2savev2_adam_dense_293_kernel_v_read_readvariableop4
0savev2_adam_dense_293_bias_v_read_readvariableopC
?savev2_adam_lstm_879_lstm_cell_879_kernel_v_read_readvariableopM
Isavev2_adam_lstm_879_lstm_cell_879_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_879_lstm_cell_879_bias_v_read_readvariableopC
?savev2_adam_lstm_880_lstm_cell_880_kernel_v_read_readvariableopM
Isavev2_adam_lstm_880_lstm_cell_880_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_880_lstm_cell_880_bias_v_read_readvariableopC
?savev2_adam_lstm_881_lstm_cell_881_kernel_v_read_readvariableopM
Isavev2_adam_lstm_881_lstm_cell_881_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_881_lstm_cell_881_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_dense_293_kernel_read_readvariableop)savev2_dense_293_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_879_lstm_cell_879_kernel_read_readvariableopBsavev2_lstm_879_lstm_cell_879_recurrent_kernel_read_readvariableop6savev2_lstm_879_lstm_cell_879_bias_read_readvariableop8savev2_lstm_880_lstm_cell_880_kernel_read_readvariableopBsavev2_lstm_880_lstm_cell_880_recurrent_kernel_read_readvariableop6savev2_lstm_880_lstm_cell_880_bias_read_readvariableop8savev2_lstm_881_lstm_cell_881_kernel_read_readvariableopBsavev2_lstm_881_lstm_cell_881_recurrent_kernel_read_readvariableop6savev2_lstm_881_lstm_cell_881_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop2savev2_adam_dense_293_kernel_m_read_readvariableop0savev2_adam_dense_293_bias_m_read_readvariableop?savev2_adam_lstm_879_lstm_cell_879_kernel_m_read_readvariableopIsavev2_adam_lstm_879_lstm_cell_879_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_879_lstm_cell_879_bias_m_read_readvariableop?savev2_adam_lstm_880_lstm_cell_880_kernel_m_read_readvariableopIsavev2_adam_lstm_880_lstm_cell_880_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_880_lstm_cell_880_bias_m_read_readvariableop?savev2_adam_lstm_881_lstm_cell_881_kernel_m_read_readvariableopIsavev2_adam_lstm_881_lstm_cell_881_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_881_lstm_cell_881_bias_m_read_readvariableop2savev2_adam_dense_293_kernel_v_read_readvariableop0savev2_adam_dense_293_bias_v_read_readvariableop?savev2_adam_lstm_879_lstm_cell_879_kernel_v_read_readvariableopIsavev2_adam_lstm_879_lstm_cell_879_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_879_lstm_cell_879_bias_v_read_readvariableop?savev2_adam_lstm_880_lstm_cell_880_kernel_v_read_readvariableopIsavev2_adam_lstm_880_lstm_cell_880_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_880_lstm_cell_880_bias_v_read_readvariableop?savev2_adam_lstm_881_lstm_cell_881_kernel_v_read_readvariableopIsavev2_adam_lstm_881_lstm_cell_881_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_881_lstm_cell_881_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
?C
?

lstm_879_while_body_5248214.
*lstm_879_while_lstm_879_while_loop_counter4
0lstm_879_while_lstm_879_while_maximum_iterations
lstm_879_while_placeholder 
lstm_879_while_placeholder_1 
lstm_879_while_placeholder_2 
lstm_879_while_placeholder_3-
)lstm_879_while_lstm_879_strided_slice_1_0i
elstm_879_while_tensorarrayv2read_tensorlistgetitem_lstm_879_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_879_while_lstm_cell_879_matmul_readvariableop_resource_0:	?R
?lstm_879_while_lstm_cell_879_matmul_1_readvariableop_resource_0:	d?M
>lstm_879_while_lstm_cell_879_biasadd_readvariableop_resource_0:	?
lstm_879_while_identity
lstm_879_while_identity_1
lstm_879_while_identity_2
lstm_879_while_identity_3
lstm_879_while_identity_4
lstm_879_while_identity_5+
'lstm_879_while_lstm_879_strided_slice_1g
clstm_879_while_tensorarrayv2read_tensorlistgetitem_lstm_879_tensorarrayunstack_tensorlistfromtensorN
;lstm_879_while_lstm_cell_879_matmul_readvariableop_resource:	?P
=lstm_879_while_lstm_cell_879_matmul_1_readvariableop_resource:	d?K
<lstm_879_while_lstm_cell_879_biasadd_readvariableop_resource:	???3lstm_879/while/lstm_cell_879/BiasAdd/ReadVariableOp?2lstm_879/while/lstm_cell_879/MatMul/ReadVariableOp?4lstm_879/while/lstm_cell_879/MatMul_1/ReadVariableOp?
@lstm_879/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_879/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_879_while_tensorarrayv2read_tensorlistgetitem_lstm_879_tensorarrayunstack_tensorlistfromtensor_0lstm_879_while_placeholderIlstm_879/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_879/while/lstm_cell_879/MatMul/ReadVariableOpReadVariableOp=lstm_879_while_lstm_cell_879_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_879/while/lstm_cell_879/MatMulMatMul9lstm_879/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_879/while/lstm_cell_879/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_879/while/lstm_cell_879/MatMul_1/ReadVariableOpReadVariableOp?lstm_879_while_lstm_cell_879_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_879/while/lstm_cell_879/MatMul_1MatMullstm_879_while_placeholder_2<lstm_879/while/lstm_cell_879/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_879/while/lstm_cell_879/addAddV2-lstm_879/while/lstm_cell_879/MatMul:product:0/lstm_879/while/lstm_cell_879/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_879/while/lstm_cell_879/BiasAdd/ReadVariableOpReadVariableOp>lstm_879_while_lstm_cell_879_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_879/while/lstm_cell_879/BiasAddBiasAdd$lstm_879/while/lstm_cell_879/add:z:0;lstm_879/while/lstm_cell_879/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_879/while/lstm_cell_879/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_879/while/lstm_cell_879/splitSplit5lstm_879/while/lstm_cell_879/split/split_dim:output:0-lstm_879/while/lstm_cell_879/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_879/while/lstm_cell_879/SigmoidSigmoid+lstm_879/while/lstm_cell_879/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_879/while/lstm_cell_879/Sigmoid_1Sigmoid+lstm_879/while/lstm_cell_879/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_879/while/lstm_cell_879/mulMul*lstm_879/while/lstm_cell_879/Sigmoid_1:y:0lstm_879_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_879/while/lstm_cell_879/ReluRelu+lstm_879/while/lstm_cell_879/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_879/while/lstm_cell_879/mul_1Mul(lstm_879/while/lstm_cell_879/Sigmoid:y:0/lstm_879/while/lstm_cell_879/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_879/while/lstm_cell_879/add_1AddV2$lstm_879/while/lstm_cell_879/mul:z:0&lstm_879/while/lstm_cell_879/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_879/while/lstm_cell_879/Sigmoid_2Sigmoid+lstm_879/while/lstm_cell_879/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_879/while/lstm_cell_879/Relu_1Relu&lstm_879/while/lstm_cell_879/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_879/while/lstm_cell_879/mul_2Mul*lstm_879/while/lstm_cell_879/Sigmoid_2:y:01lstm_879/while/lstm_cell_879/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_879/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_879_while_placeholder_1lstm_879_while_placeholder&lstm_879/while/lstm_cell_879/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_879/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_879/while/addAddV2lstm_879_while_placeholderlstm_879/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_879/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_879/while/add_1AddV2*lstm_879_while_lstm_879_while_loop_counterlstm_879/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_879/while/IdentityIdentitylstm_879/while/add_1:z:0^lstm_879/while/NoOp*
T0*
_output_shapes
: ?
lstm_879/while/Identity_1Identity0lstm_879_while_lstm_879_while_maximum_iterations^lstm_879/while/NoOp*
T0*
_output_shapes
: t
lstm_879/while/Identity_2Identitylstm_879/while/add:z:0^lstm_879/while/NoOp*
T0*
_output_shapes
: ?
lstm_879/while/Identity_3IdentityClstm_879/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_879/while/NoOp*
T0*
_output_shapes
: ?
lstm_879/while/Identity_4Identity&lstm_879/while/lstm_cell_879/mul_2:z:0^lstm_879/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_879/while/Identity_5Identity&lstm_879/while/lstm_cell_879/add_1:z:0^lstm_879/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_879/while/NoOpNoOp4^lstm_879/while/lstm_cell_879/BiasAdd/ReadVariableOp3^lstm_879/while/lstm_cell_879/MatMul/ReadVariableOp5^lstm_879/while/lstm_cell_879/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_879_while_identity lstm_879/while/Identity:output:0"?
lstm_879_while_identity_1"lstm_879/while/Identity_1:output:0"?
lstm_879_while_identity_2"lstm_879/while/Identity_2:output:0"?
lstm_879_while_identity_3"lstm_879/while/Identity_3:output:0"?
lstm_879_while_identity_4"lstm_879/while/Identity_4:output:0"?
lstm_879_while_identity_5"lstm_879/while/Identity_5:output:0"T
'lstm_879_while_lstm_879_strided_slice_1)lstm_879_while_lstm_879_strided_slice_1_0"~
<lstm_879_while_lstm_cell_879_biasadd_readvariableop_resource>lstm_879_while_lstm_cell_879_biasadd_readvariableop_resource_0"?
=lstm_879_while_lstm_cell_879_matmul_1_readvariableop_resource?lstm_879_while_lstm_cell_879_matmul_1_readvariableop_resource_0"|
;lstm_879_while_lstm_cell_879_matmul_readvariableop_resource=lstm_879_while_lstm_cell_879_matmul_readvariableop_resource_0"?
clstm_879_while_tensorarrayv2read_tensorlistgetitem_lstm_879_tensorarrayunstack_tensorlistfromtensorelstm_879_while_tensorarrayv2read_tensorlistgetitem_lstm_879_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_879/while/lstm_cell_879/BiasAdd/ReadVariableOp3lstm_879/while/lstm_cell_879/BiasAdd/ReadVariableOp2h
2lstm_879/while/lstm_cell_879/MatMul/ReadVariableOp2lstm_879/while/lstm_cell_879/MatMul/ReadVariableOp2l
4lstm_879/while/lstm_cell_879/MatMul_1/ReadVariableOp4lstm_879/while/lstm_cell_879/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_5250629
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5250629___redundant_placeholder05
1while_while_cond_5250629___redundant_placeholder15
1while_while_cond_5250629___redundant_placeholder25
1while_while_cond_5250629___redundant_placeholder3
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
E__inference_lstm_881_layer_call_and_return_conditional_losses_5250714

inputs>
,lstm_cell_881_matmul_readvariableop_resource:2(@
.lstm_cell_881_matmul_1_readvariableop_resource:
(;
-lstm_cell_881_biasadd_readvariableop_resource:(
identity??$lstm_cell_881/BiasAdd/ReadVariableOp?#lstm_cell_881/MatMul/ReadVariableOp?%lstm_cell_881/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_881/MatMul/ReadVariableOpReadVariableOp,lstm_cell_881_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_881/MatMulMatMulstrided_slice_2:output:0+lstm_cell_881/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_881/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_881_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_881/MatMul_1MatMulzeros:output:0-lstm_cell_881/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_881/addAddV2lstm_cell_881/MatMul:product:0 lstm_cell_881/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_881/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_881_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_881/BiasAddBiasAddlstm_cell_881/add:z:0,lstm_cell_881/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_881/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_881/splitSplit&lstm_cell_881/split/split_dim:output:0lstm_cell_881/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_881/SigmoidSigmoidlstm_cell_881/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_881/Sigmoid_1Sigmoidlstm_cell_881/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_881/mulMullstm_cell_881/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_881/ReluRelulstm_cell_881/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_881/mul_1Mullstm_cell_881/Sigmoid:y:0 lstm_cell_881/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_881/add_1AddV2lstm_cell_881/mul:z:0lstm_cell_881/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_881/Sigmoid_2Sigmoidlstm_cell_881/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_881/Relu_1Relulstm_cell_881/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_881/mul_2Mullstm_cell_881/Sigmoid_2:y:0"lstm_cell_881/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_881_matmul_readvariableop_resource.lstm_cell_881_matmul_1_readvariableop_resource-lstm_cell_881_biasadd_readvariableop_resource*
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
while_body_5250630*
condR
while_cond_5250629*K
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
NoOpNoOp%^lstm_cell_881/BiasAdd/ReadVariableOp$^lstm_cell_881/MatMul/ReadVariableOp&^lstm_cell_881/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_881/BiasAdd/ReadVariableOp$lstm_cell_881/BiasAdd/ReadVariableOp2J
#lstm_cell_881/MatMul/ReadVariableOp#lstm_cell_881/MatMul/ReadVariableOp2N
%lstm_cell_881/MatMul_1/ReadVariableOp%lstm_cell_881/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?C
?

lstm_879_while_body_5248641.
*lstm_879_while_lstm_879_while_loop_counter4
0lstm_879_while_lstm_879_while_maximum_iterations
lstm_879_while_placeholder 
lstm_879_while_placeholder_1 
lstm_879_while_placeholder_2 
lstm_879_while_placeholder_3-
)lstm_879_while_lstm_879_strided_slice_1_0i
elstm_879_while_tensorarrayv2read_tensorlistgetitem_lstm_879_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_879_while_lstm_cell_879_matmul_readvariableop_resource_0:	?R
?lstm_879_while_lstm_cell_879_matmul_1_readvariableop_resource_0:	d?M
>lstm_879_while_lstm_cell_879_biasadd_readvariableop_resource_0:	?
lstm_879_while_identity
lstm_879_while_identity_1
lstm_879_while_identity_2
lstm_879_while_identity_3
lstm_879_while_identity_4
lstm_879_while_identity_5+
'lstm_879_while_lstm_879_strided_slice_1g
clstm_879_while_tensorarrayv2read_tensorlistgetitem_lstm_879_tensorarrayunstack_tensorlistfromtensorN
;lstm_879_while_lstm_cell_879_matmul_readvariableop_resource:	?P
=lstm_879_while_lstm_cell_879_matmul_1_readvariableop_resource:	d?K
<lstm_879_while_lstm_cell_879_biasadd_readvariableop_resource:	???3lstm_879/while/lstm_cell_879/BiasAdd/ReadVariableOp?2lstm_879/while/lstm_cell_879/MatMul/ReadVariableOp?4lstm_879/while/lstm_cell_879/MatMul_1/ReadVariableOp?
@lstm_879/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_879/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_879_while_tensorarrayv2read_tensorlistgetitem_lstm_879_tensorarrayunstack_tensorlistfromtensor_0lstm_879_while_placeholderIlstm_879/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_879/while/lstm_cell_879/MatMul/ReadVariableOpReadVariableOp=lstm_879_while_lstm_cell_879_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_879/while/lstm_cell_879/MatMulMatMul9lstm_879/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_879/while/lstm_cell_879/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_879/while/lstm_cell_879/MatMul_1/ReadVariableOpReadVariableOp?lstm_879_while_lstm_cell_879_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_879/while/lstm_cell_879/MatMul_1MatMullstm_879_while_placeholder_2<lstm_879/while/lstm_cell_879/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_879/while/lstm_cell_879/addAddV2-lstm_879/while/lstm_cell_879/MatMul:product:0/lstm_879/while/lstm_cell_879/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_879/while/lstm_cell_879/BiasAdd/ReadVariableOpReadVariableOp>lstm_879_while_lstm_cell_879_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_879/while/lstm_cell_879/BiasAddBiasAdd$lstm_879/while/lstm_cell_879/add:z:0;lstm_879/while/lstm_cell_879/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_879/while/lstm_cell_879/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_879/while/lstm_cell_879/splitSplit5lstm_879/while/lstm_cell_879/split/split_dim:output:0-lstm_879/while/lstm_cell_879/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_879/while/lstm_cell_879/SigmoidSigmoid+lstm_879/while/lstm_cell_879/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_879/while/lstm_cell_879/Sigmoid_1Sigmoid+lstm_879/while/lstm_cell_879/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_879/while/lstm_cell_879/mulMul*lstm_879/while/lstm_cell_879/Sigmoid_1:y:0lstm_879_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_879/while/lstm_cell_879/ReluRelu+lstm_879/while/lstm_cell_879/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_879/while/lstm_cell_879/mul_1Mul(lstm_879/while/lstm_cell_879/Sigmoid:y:0/lstm_879/while/lstm_cell_879/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_879/while/lstm_cell_879/add_1AddV2$lstm_879/while/lstm_cell_879/mul:z:0&lstm_879/while/lstm_cell_879/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_879/while/lstm_cell_879/Sigmoid_2Sigmoid+lstm_879/while/lstm_cell_879/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_879/while/lstm_cell_879/Relu_1Relu&lstm_879/while/lstm_cell_879/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_879/while/lstm_cell_879/mul_2Mul*lstm_879/while/lstm_cell_879/Sigmoid_2:y:01lstm_879/while/lstm_cell_879/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_879/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_879_while_placeholder_1lstm_879_while_placeholder&lstm_879/while/lstm_cell_879/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_879/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_879/while/addAddV2lstm_879_while_placeholderlstm_879/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_879/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_879/while/add_1AddV2*lstm_879_while_lstm_879_while_loop_counterlstm_879/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_879/while/IdentityIdentitylstm_879/while/add_1:z:0^lstm_879/while/NoOp*
T0*
_output_shapes
: ?
lstm_879/while/Identity_1Identity0lstm_879_while_lstm_879_while_maximum_iterations^lstm_879/while/NoOp*
T0*
_output_shapes
: t
lstm_879/while/Identity_2Identitylstm_879/while/add:z:0^lstm_879/while/NoOp*
T0*
_output_shapes
: ?
lstm_879/while/Identity_3IdentityClstm_879/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_879/while/NoOp*
T0*
_output_shapes
: ?
lstm_879/while/Identity_4Identity&lstm_879/while/lstm_cell_879/mul_2:z:0^lstm_879/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_879/while/Identity_5Identity&lstm_879/while/lstm_cell_879/add_1:z:0^lstm_879/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_879/while/NoOpNoOp4^lstm_879/while/lstm_cell_879/BiasAdd/ReadVariableOp3^lstm_879/while/lstm_cell_879/MatMul/ReadVariableOp5^lstm_879/while/lstm_cell_879/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_879_while_identity lstm_879/while/Identity:output:0"?
lstm_879_while_identity_1"lstm_879/while/Identity_1:output:0"?
lstm_879_while_identity_2"lstm_879/while/Identity_2:output:0"?
lstm_879_while_identity_3"lstm_879/while/Identity_3:output:0"?
lstm_879_while_identity_4"lstm_879/while/Identity_4:output:0"?
lstm_879_while_identity_5"lstm_879/while/Identity_5:output:0"T
'lstm_879_while_lstm_879_strided_slice_1)lstm_879_while_lstm_879_strided_slice_1_0"~
<lstm_879_while_lstm_cell_879_biasadd_readvariableop_resource>lstm_879_while_lstm_cell_879_biasadd_readvariableop_resource_0"?
=lstm_879_while_lstm_cell_879_matmul_1_readvariableop_resource?lstm_879_while_lstm_cell_879_matmul_1_readvariableop_resource_0"|
;lstm_879_while_lstm_cell_879_matmul_readvariableop_resource=lstm_879_while_lstm_cell_879_matmul_readvariableop_resource_0"?
clstm_879_while_tensorarrayv2read_tensorlistgetitem_lstm_879_tensorarrayunstack_tensorlistfromtensorelstm_879_while_tensorarrayv2read_tensorlistgetitem_lstm_879_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_879/while/lstm_cell_879/BiasAdd/ReadVariableOp3lstm_879/while/lstm_cell_879/BiasAdd/ReadVariableOp2h
2lstm_879/while/lstm_cell_879/MatMul/ReadVariableOp2lstm_879/while/lstm_cell_879/MatMul/ReadVariableOp2l
4lstm_879/while/lstm_cell_879/MatMul_1/ReadVariableOp4lstm_879/while/lstm_cell_879/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_879_layer_call_fn_5249053

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
E__inference_lstm_879_layer_call_and_return_conditional_losses_5247886s
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
?
?
*__inference_lstm_881_layer_call_fn_5250285

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
E__inference_lstm_881_layer_call_and_return_conditional_losses_5247556o
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

?
0__inference_sequential_293_layer_call_fn_5247390
lstm_879_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_879_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_293_layer_call_and_return_conditional_losses_5247365o
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
_user_specified_namelstm_879_input
?

?
%__inference_signature_wrapper_5248101
lstm_879_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_879_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
"__inference__wrapped_model_5245841o
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
_user_specified_namelstm_879_input
?
?
*sequential_293_lstm_880_while_cond_5245611L
Hsequential_293_lstm_880_while_sequential_293_lstm_880_while_loop_counterR
Nsequential_293_lstm_880_while_sequential_293_lstm_880_while_maximum_iterations-
)sequential_293_lstm_880_while_placeholder/
+sequential_293_lstm_880_while_placeholder_1/
+sequential_293_lstm_880_while_placeholder_2/
+sequential_293_lstm_880_while_placeholder_3N
Jsequential_293_lstm_880_while_less_sequential_293_lstm_880_strided_slice_1e
asequential_293_lstm_880_while_sequential_293_lstm_880_while_cond_5245611___redundant_placeholder0e
asequential_293_lstm_880_while_sequential_293_lstm_880_while_cond_5245611___redundant_placeholder1e
asequential_293_lstm_880_while_sequential_293_lstm_880_while_cond_5245611___redundant_placeholder2e
asequential_293_lstm_880_while_sequential_293_lstm_880_while_cond_5245611___redundant_placeholder3*
&sequential_293_lstm_880_while_identity
?
"sequential_293/lstm_880/while/LessLess)sequential_293_lstm_880_while_placeholderJsequential_293_lstm_880_while_less_sequential_293_lstm_880_strided_slice_1*
T0*
_output_shapes
: {
&sequential_293/lstm_880/while/IdentityIdentity&sequential_293/lstm_880/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_293_lstm_880_while_identity/sequential_293/lstm_880/while/Identity:output:0*(
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
?
?
K__inference_sequential_293_layer_call_and_return_conditional_losses_5247365

inputs#
lstm_879_5247041:	?#
lstm_879_5247043:	d?
lstm_879_5247045:	?#
lstm_880_5247191:	d?#
lstm_880_5247193:	2?
lstm_880_5247195:	?"
lstm_881_5247341:2("
lstm_881_5247343:
(
lstm_881_5247345:(#
dense_293_5247359:

dense_293_5247361:
identity??!dense_293/StatefulPartitionedCall? lstm_879/StatefulPartitionedCall? lstm_880/StatefulPartitionedCall? lstm_881/StatefulPartitionedCall?
 lstm_879/StatefulPartitionedCallStatefulPartitionedCallinputslstm_879_5247041lstm_879_5247043lstm_879_5247045*
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
E__inference_lstm_879_layer_call_and_return_conditional_losses_5247040?
 lstm_880/StatefulPartitionedCallStatefulPartitionedCall)lstm_879/StatefulPartitionedCall:output:0lstm_880_5247191lstm_880_5247193lstm_880_5247195*
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
E__inference_lstm_880_layer_call_and_return_conditional_losses_5247190?
 lstm_881/StatefulPartitionedCallStatefulPartitionedCall)lstm_880/StatefulPartitionedCall:output:0lstm_881_5247341lstm_881_5247343lstm_881_5247345*
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
E__inference_lstm_881_layer_call_and_return_conditional_losses_5247340?
!dense_293/StatefulPartitionedCallStatefulPartitionedCall)lstm_881/StatefulPartitionedCall:output:0dense_293_5247359dense_293_5247361*
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
F__inference_dense_293_layer_call_and_return_conditional_losses_5247358y
IdentityIdentity*dense_293/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_293/StatefulPartitionedCall!^lstm_879/StatefulPartitionedCall!^lstm_880/StatefulPartitionedCall!^lstm_881/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_293/StatefulPartitionedCall!dense_293/StatefulPartitionedCall2D
 lstm_879/StatefulPartitionedCall lstm_879/StatefulPartitionedCall2D
 lstm_880/StatefulPartitionedCall lstm_880/StatefulPartitionedCall2D
 lstm_881/StatefulPartitionedCall lstm_881/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_881_layer_call_and_return_conditional_losses_5246608

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
*__inference_lstm_879_layer_call_fn_5249020
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
E__inference_lstm_879_layer_call_and_return_conditional_losses_5245991|
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
J__inference_lstm_cell_880_layer_call_and_return_conditional_losses_5251072

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
*sequential_293_lstm_879_while_body_5245473L
Hsequential_293_lstm_879_while_sequential_293_lstm_879_while_loop_counterR
Nsequential_293_lstm_879_while_sequential_293_lstm_879_while_maximum_iterations-
)sequential_293_lstm_879_while_placeholder/
+sequential_293_lstm_879_while_placeholder_1/
+sequential_293_lstm_879_while_placeholder_2/
+sequential_293_lstm_879_while_placeholder_3K
Gsequential_293_lstm_879_while_sequential_293_lstm_879_strided_slice_1_0?
?sequential_293_lstm_879_while_tensorarrayv2read_tensorlistgetitem_sequential_293_lstm_879_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_293_lstm_879_while_lstm_cell_879_matmul_readvariableop_resource_0:	?a
Nsequential_293_lstm_879_while_lstm_cell_879_matmul_1_readvariableop_resource_0:	d?\
Msequential_293_lstm_879_while_lstm_cell_879_biasadd_readvariableop_resource_0:	?*
&sequential_293_lstm_879_while_identity,
(sequential_293_lstm_879_while_identity_1,
(sequential_293_lstm_879_while_identity_2,
(sequential_293_lstm_879_while_identity_3,
(sequential_293_lstm_879_while_identity_4,
(sequential_293_lstm_879_while_identity_5I
Esequential_293_lstm_879_while_sequential_293_lstm_879_strided_slice_1?
?sequential_293_lstm_879_while_tensorarrayv2read_tensorlistgetitem_sequential_293_lstm_879_tensorarrayunstack_tensorlistfromtensor]
Jsequential_293_lstm_879_while_lstm_cell_879_matmul_readvariableop_resource:	?_
Lsequential_293_lstm_879_while_lstm_cell_879_matmul_1_readvariableop_resource:	d?Z
Ksequential_293_lstm_879_while_lstm_cell_879_biasadd_readvariableop_resource:	???Bsequential_293/lstm_879/while/lstm_cell_879/BiasAdd/ReadVariableOp?Asequential_293/lstm_879/while/lstm_cell_879/MatMul/ReadVariableOp?Csequential_293/lstm_879/while/lstm_cell_879/MatMul_1/ReadVariableOp?
Osequential_293/lstm_879/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
Asequential_293/lstm_879/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_293_lstm_879_while_tensorarrayv2read_tensorlistgetitem_sequential_293_lstm_879_tensorarrayunstack_tensorlistfromtensor_0)sequential_293_lstm_879_while_placeholderXsequential_293/lstm_879/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
Asequential_293/lstm_879/while/lstm_cell_879/MatMul/ReadVariableOpReadVariableOpLsequential_293_lstm_879_while_lstm_cell_879_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
2sequential_293/lstm_879/while/lstm_cell_879/MatMulMatMulHsequential_293/lstm_879/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_293/lstm_879/while/lstm_cell_879/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_293/lstm_879/while/lstm_cell_879/MatMul_1/ReadVariableOpReadVariableOpNsequential_293_lstm_879_while_lstm_cell_879_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
4sequential_293/lstm_879/while/lstm_cell_879/MatMul_1MatMul+sequential_293_lstm_879_while_placeholder_2Ksequential_293/lstm_879/while/lstm_cell_879/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_293/lstm_879/while/lstm_cell_879/addAddV2<sequential_293/lstm_879/while/lstm_cell_879/MatMul:product:0>sequential_293/lstm_879/while/lstm_cell_879/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_293/lstm_879/while/lstm_cell_879/BiasAdd/ReadVariableOpReadVariableOpMsequential_293_lstm_879_while_lstm_cell_879_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_293/lstm_879/while/lstm_cell_879/BiasAddBiasAdd3sequential_293/lstm_879/while/lstm_cell_879/add:z:0Jsequential_293/lstm_879/while/lstm_cell_879/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_293/lstm_879/while/lstm_cell_879/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_293/lstm_879/while/lstm_cell_879/splitSplitDsequential_293/lstm_879/while/lstm_cell_879/split/split_dim:output:0<sequential_293/lstm_879/while/lstm_cell_879/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
3sequential_293/lstm_879/while/lstm_cell_879/SigmoidSigmoid:sequential_293/lstm_879/while/lstm_cell_879/split:output:0*
T0*'
_output_shapes
:?????????d?
5sequential_293/lstm_879/while/lstm_cell_879/Sigmoid_1Sigmoid:sequential_293/lstm_879/while/lstm_cell_879/split:output:1*
T0*'
_output_shapes
:?????????d?
/sequential_293/lstm_879/while/lstm_cell_879/mulMul9sequential_293/lstm_879/while/lstm_cell_879/Sigmoid_1:y:0+sequential_293_lstm_879_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
0sequential_293/lstm_879/while/lstm_cell_879/ReluRelu:sequential_293/lstm_879/while/lstm_cell_879/split:output:2*
T0*'
_output_shapes
:?????????d?
1sequential_293/lstm_879/while/lstm_cell_879/mul_1Mul7sequential_293/lstm_879/while/lstm_cell_879/Sigmoid:y:0>sequential_293/lstm_879/while/lstm_cell_879/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
1sequential_293/lstm_879/while/lstm_cell_879/add_1AddV23sequential_293/lstm_879/while/lstm_cell_879/mul:z:05sequential_293/lstm_879/while/lstm_cell_879/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
5sequential_293/lstm_879/while/lstm_cell_879/Sigmoid_2Sigmoid:sequential_293/lstm_879/while/lstm_cell_879/split:output:3*
T0*'
_output_shapes
:?????????d?
2sequential_293/lstm_879/while/lstm_cell_879/Relu_1Relu5sequential_293/lstm_879/while/lstm_cell_879/add_1:z:0*
T0*'
_output_shapes
:?????????d?
1sequential_293/lstm_879/while/lstm_cell_879/mul_2Mul9sequential_293/lstm_879/while/lstm_cell_879/Sigmoid_2:y:0@sequential_293/lstm_879/while/lstm_cell_879/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
Bsequential_293/lstm_879/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_293_lstm_879_while_placeholder_1)sequential_293_lstm_879_while_placeholder5sequential_293/lstm_879/while/lstm_cell_879/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_293/lstm_879/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_293/lstm_879/while/addAddV2)sequential_293_lstm_879_while_placeholder,sequential_293/lstm_879/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_293/lstm_879/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_293/lstm_879/while/add_1AddV2Hsequential_293_lstm_879_while_sequential_293_lstm_879_while_loop_counter.sequential_293/lstm_879/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_293/lstm_879/while/IdentityIdentity'sequential_293/lstm_879/while/add_1:z:0#^sequential_293/lstm_879/while/NoOp*
T0*
_output_shapes
: ?
(sequential_293/lstm_879/while/Identity_1IdentityNsequential_293_lstm_879_while_sequential_293_lstm_879_while_maximum_iterations#^sequential_293/lstm_879/while/NoOp*
T0*
_output_shapes
: ?
(sequential_293/lstm_879/while/Identity_2Identity%sequential_293/lstm_879/while/add:z:0#^sequential_293/lstm_879/while/NoOp*
T0*
_output_shapes
: ?
(sequential_293/lstm_879/while/Identity_3IdentityRsequential_293/lstm_879/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_293/lstm_879/while/NoOp*
T0*
_output_shapes
: ?
(sequential_293/lstm_879/while/Identity_4Identity5sequential_293/lstm_879/while/lstm_cell_879/mul_2:z:0#^sequential_293/lstm_879/while/NoOp*
T0*'
_output_shapes
:?????????d?
(sequential_293/lstm_879/while/Identity_5Identity5sequential_293/lstm_879/while/lstm_cell_879/add_1:z:0#^sequential_293/lstm_879/while/NoOp*
T0*'
_output_shapes
:?????????d?
"sequential_293/lstm_879/while/NoOpNoOpC^sequential_293/lstm_879/while/lstm_cell_879/BiasAdd/ReadVariableOpB^sequential_293/lstm_879/while/lstm_cell_879/MatMul/ReadVariableOpD^sequential_293/lstm_879/while/lstm_cell_879/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_293_lstm_879_while_identity/sequential_293/lstm_879/while/Identity:output:0"]
(sequential_293_lstm_879_while_identity_11sequential_293/lstm_879/while/Identity_1:output:0"]
(sequential_293_lstm_879_while_identity_21sequential_293/lstm_879/while/Identity_2:output:0"]
(sequential_293_lstm_879_while_identity_31sequential_293/lstm_879/while/Identity_3:output:0"]
(sequential_293_lstm_879_while_identity_41sequential_293/lstm_879/while/Identity_4:output:0"]
(sequential_293_lstm_879_while_identity_51sequential_293/lstm_879/while/Identity_5:output:0"?
Ksequential_293_lstm_879_while_lstm_cell_879_biasadd_readvariableop_resourceMsequential_293_lstm_879_while_lstm_cell_879_biasadd_readvariableop_resource_0"?
Lsequential_293_lstm_879_while_lstm_cell_879_matmul_1_readvariableop_resourceNsequential_293_lstm_879_while_lstm_cell_879_matmul_1_readvariableop_resource_0"?
Jsequential_293_lstm_879_while_lstm_cell_879_matmul_readvariableop_resourceLsequential_293_lstm_879_while_lstm_cell_879_matmul_readvariableop_resource_0"?
Esequential_293_lstm_879_while_sequential_293_lstm_879_strided_slice_1Gsequential_293_lstm_879_while_sequential_293_lstm_879_strided_slice_1_0"?
?sequential_293_lstm_879_while_tensorarrayv2read_tensorlistgetitem_sequential_293_lstm_879_tensorarrayunstack_tensorlistfromtensor?sequential_293_lstm_879_while_tensorarrayv2read_tensorlistgetitem_sequential_293_lstm_879_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2?
Bsequential_293/lstm_879/while/lstm_cell_879/BiasAdd/ReadVariableOpBsequential_293/lstm_879/while/lstm_cell_879/BiasAdd/ReadVariableOp2?
Asequential_293/lstm_879/while/lstm_cell_879/MatMul/ReadVariableOpAsequential_293/lstm_879/while/lstm_cell_879/MatMul/ReadVariableOp2?
Csequential_293/lstm_879/while/lstm_cell_879/MatMul_1/ReadVariableOpCsequential_293/lstm_879/while/lstm_cell_879/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_5249540
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5249540___redundant_placeholder05
1while_while_cond_5249540___redundant_placeholder15
1while_while_cond_5249540___redundant_placeholder25
1while_while_cond_5249540___redundant_placeholder3
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
E__inference_lstm_879_layer_call_and_return_conditional_losses_5247886

inputs?
,lstm_cell_879_matmul_readvariableop_resource:	?A
.lstm_cell_879_matmul_1_readvariableop_resource:	d?<
-lstm_cell_879_biasadd_readvariableop_resource:	?
identity??$lstm_cell_879/BiasAdd/ReadVariableOp?#lstm_cell_879/MatMul/ReadVariableOp?%lstm_cell_879/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_879/MatMul/ReadVariableOpReadVariableOp,lstm_cell_879_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_879/MatMulMatMulstrided_slice_2:output:0+lstm_cell_879/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_879/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_879_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_879/MatMul_1MatMulzeros:output:0-lstm_cell_879/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_879/addAddV2lstm_cell_879/MatMul:product:0 lstm_cell_879/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_879/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_879_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_879/BiasAddBiasAddlstm_cell_879/add:z:0,lstm_cell_879/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_879/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_879/splitSplit&lstm_cell_879/split/split_dim:output:0lstm_cell_879/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_879/SigmoidSigmoidlstm_cell_879/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_879/Sigmoid_1Sigmoidlstm_cell_879/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_879/mulMullstm_cell_879/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_879/ReluRelulstm_cell_879/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_879/mul_1Mullstm_cell_879/Sigmoid:y:0 lstm_cell_879/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_879/add_1AddV2lstm_cell_879/mul:z:0lstm_cell_879/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_879/Sigmoid_2Sigmoidlstm_cell_879/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_879/Relu_1Relulstm_cell_879/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_879/mul_2Mullstm_cell_879/Sigmoid_2:y:0"lstm_cell_879/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_879_matmul_readvariableop_resource.lstm_cell_879_matmul_1_readvariableop_resource-lstm_cell_879_biasadd_readvariableop_resource*
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
while_body_5247802*
condR
while_cond_5247801*K
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
NoOpNoOp%^lstm_cell_879/BiasAdd/ReadVariableOp$^lstm_cell_879/MatMul/ReadVariableOp&^lstm_cell_879/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_879/BiasAdd/ReadVariableOp$lstm_cell_879/BiasAdd/ReadVariableOp2J
#lstm_cell_879/MatMul/ReadVariableOp#lstm_cell_879/MatMul/ReadVariableOp2N
%lstm_cell_879/MatMul_1/ReadVariableOp%lstm_cell_879/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_5247255
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5247255___redundant_placeholder05
1while_while_cond_5247255___redundant_placeholder15
1while_while_cond_5247255___redundant_placeholder25
1while_while_cond_5247255___redundant_placeholder3
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
while_body_5246463
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_880_5246487_0:	d?0
while_lstm_cell_880_5246489_0:	2?,
while_lstm_cell_880_5246491_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_880_5246487:	d?.
while_lstm_cell_880_5246489:	2?*
while_lstm_cell_880_5246491:	???+while/lstm_cell_880/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_880/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_880_5246487_0while_lstm_cell_880_5246489_0while_lstm_cell_880_5246491_0*
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
J__inference_lstm_cell_880_layer_call_and_return_conditional_losses_5246404?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_880/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_880/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_880/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_880/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_880_5246487while_lstm_cell_880_5246487_0"<
while_lstm_cell_880_5246489while_lstm_cell_880_5246489_0"<
while_lstm_cell_880_5246491while_lstm_cell_880_5246491_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_880/StatefulPartitionedCall+while/lstm_cell_880/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_879_layer_call_and_return_conditional_losses_5250974

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
while_body_5247472
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_881_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_881_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_881_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_881_matmul_readvariableop_resource:2(F
4while_lstm_cell_881_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_881_biasadd_readvariableop_resource:(??*while/lstm_cell_881/BiasAdd/ReadVariableOp?)while/lstm_cell_881/MatMul/ReadVariableOp?+while/lstm_cell_881/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_881/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_881_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_881/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_881/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_881/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_881_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_881/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_881/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_881/addAddV2$while/lstm_cell_881/MatMul:product:0&while/lstm_cell_881/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_881/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_881_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_881/BiasAddBiasAddwhile/lstm_cell_881/add:z:02while/lstm_cell_881/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_881/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_881/splitSplit,while/lstm_cell_881/split/split_dim:output:0$while/lstm_cell_881/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_881/SigmoidSigmoid"while/lstm_cell_881/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_881/Sigmoid_1Sigmoid"while/lstm_cell_881/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_881/mulMul!while/lstm_cell_881/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_881/ReluRelu"while/lstm_cell_881/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_881/mul_1Mulwhile/lstm_cell_881/Sigmoid:y:0&while/lstm_cell_881/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_881/add_1AddV2while/lstm_cell_881/mul:z:0while/lstm_cell_881/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_881/Sigmoid_2Sigmoid"while/lstm_cell_881/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_881/Relu_1Reluwhile/lstm_cell_881/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_881/mul_2Mul!while/lstm_cell_881/Sigmoid_2:y:0(while/lstm_cell_881/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_881/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_881/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_881/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_881/BiasAdd/ReadVariableOp*^while/lstm_cell_881/MatMul/ReadVariableOp,^while/lstm_cell_881/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_881_biasadd_readvariableop_resource5while_lstm_cell_881_biasadd_readvariableop_resource_0"n
4while_lstm_cell_881_matmul_1_readvariableop_resource6while_lstm_cell_881_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_881_matmul_readvariableop_resource4while_lstm_cell_881_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_881/BiasAdd/ReadVariableOp*while/lstm_cell_881/BiasAdd/ReadVariableOp2V
)while/lstm_cell_881/MatMul/ReadVariableOp)while/lstm_cell_881/MatMul/ReadVariableOp2Z
+while/lstm_cell_881/MatMul_1/ReadVariableOp+while/lstm_cell_881/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_879_while_cond_5248213.
*lstm_879_while_lstm_879_while_loop_counter4
0lstm_879_while_lstm_879_while_maximum_iterations
lstm_879_while_placeholder 
lstm_879_while_placeholder_1 
lstm_879_while_placeholder_2 
lstm_879_while_placeholder_30
,lstm_879_while_less_lstm_879_strided_slice_1G
Clstm_879_while_lstm_879_while_cond_5248213___redundant_placeholder0G
Clstm_879_while_lstm_879_while_cond_5248213___redundant_placeholder1G
Clstm_879_while_lstm_879_while_cond_5248213___redundant_placeholder2G
Clstm_879_while_lstm_879_while_cond_5248213___redundant_placeholder3
lstm_879_while_identity
?
lstm_879/while/LessLesslstm_879_while_placeholder,lstm_879_while_less_lstm_879_strided_slice_1*
T0*
_output_shapes
: ]
lstm_879/while/IdentityIdentitylstm_879/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_879_while_identity lstm_879/while/Identity:output:0*(
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
E__inference_lstm_880_layer_call_and_return_conditional_losses_5249812
inputs_0?
,lstm_cell_880_matmul_readvariableop_resource:	d?A
.lstm_cell_880_matmul_1_readvariableop_resource:	2?<
-lstm_cell_880_biasadd_readvariableop_resource:	?
identity??$lstm_cell_880/BiasAdd/ReadVariableOp?#lstm_cell_880/MatMul/ReadVariableOp?%lstm_cell_880/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_880/MatMul/ReadVariableOpReadVariableOp,lstm_cell_880_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_880/MatMulMatMulstrided_slice_2:output:0+lstm_cell_880/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_880/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_880_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_880/MatMul_1MatMulzeros:output:0-lstm_cell_880/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_880/addAddV2lstm_cell_880/MatMul:product:0 lstm_cell_880/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_880/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_880_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_880/BiasAddBiasAddlstm_cell_880/add:z:0,lstm_cell_880/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_880/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_880/splitSplit&lstm_cell_880/split/split_dim:output:0lstm_cell_880/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_880/SigmoidSigmoidlstm_cell_880/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_880/Sigmoid_1Sigmoidlstm_cell_880/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_880/mulMullstm_cell_880/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_880/ReluRelulstm_cell_880/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_880/mul_1Mullstm_cell_880/Sigmoid:y:0 lstm_cell_880/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_880/add_1AddV2lstm_cell_880/mul:z:0lstm_cell_880/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_880/Sigmoid_2Sigmoidlstm_cell_880/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_880/Relu_1Relulstm_cell_880/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_880/mul_2Mullstm_cell_880/Sigmoid_2:y:0"lstm_cell_880/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_880_matmul_readvariableop_resource.lstm_cell_880_matmul_1_readvariableop_resource-lstm_cell_880_biasadd_readvariableop_resource*
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
while_body_5249728*
condR
while_cond_5249727*K
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
NoOpNoOp%^lstm_cell_880/BiasAdd/ReadVariableOp$^lstm_cell_880/MatMul/ReadVariableOp&^lstm_cell_880/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_880/BiasAdd/ReadVariableOp$lstm_cell_880/BiasAdd/ReadVariableOp2J
#lstm_cell_880/MatMul/ReadVariableOp#lstm_cell_880/MatMul/ReadVariableOp2N
%lstm_cell_880/MatMul_1/ReadVariableOp%lstm_cell_880/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?C
?

lstm_881_while_body_5248919.
*lstm_881_while_lstm_881_while_loop_counter4
0lstm_881_while_lstm_881_while_maximum_iterations
lstm_881_while_placeholder 
lstm_881_while_placeholder_1 
lstm_881_while_placeholder_2 
lstm_881_while_placeholder_3-
)lstm_881_while_lstm_881_strided_slice_1_0i
elstm_881_while_tensorarrayv2read_tensorlistgetitem_lstm_881_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_881_while_lstm_cell_881_matmul_readvariableop_resource_0:2(Q
?lstm_881_while_lstm_cell_881_matmul_1_readvariableop_resource_0:
(L
>lstm_881_while_lstm_cell_881_biasadd_readvariableop_resource_0:(
lstm_881_while_identity
lstm_881_while_identity_1
lstm_881_while_identity_2
lstm_881_while_identity_3
lstm_881_while_identity_4
lstm_881_while_identity_5+
'lstm_881_while_lstm_881_strided_slice_1g
clstm_881_while_tensorarrayv2read_tensorlistgetitem_lstm_881_tensorarrayunstack_tensorlistfromtensorM
;lstm_881_while_lstm_cell_881_matmul_readvariableop_resource:2(O
=lstm_881_while_lstm_cell_881_matmul_1_readvariableop_resource:
(J
<lstm_881_while_lstm_cell_881_biasadd_readvariableop_resource:(??3lstm_881/while/lstm_cell_881/BiasAdd/ReadVariableOp?2lstm_881/while/lstm_cell_881/MatMul/ReadVariableOp?4lstm_881/while/lstm_cell_881/MatMul_1/ReadVariableOp?
@lstm_881/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_881/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_881_while_tensorarrayv2read_tensorlistgetitem_lstm_881_tensorarrayunstack_tensorlistfromtensor_0lstm_881_while_placeholderIlstm_881/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_881/while/lstm_cell_881/MatMul/ReadVariableOpReadVariableOp=lstm_881_while_lstm_cell_881_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_881/while/lstm_cell_881/MatMulMatMul9lstm_881/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_881/while/lstm_cell_881/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_881/while/lstm_cell_881/MatMul_1/ReadVariableOpReadVariableOp?lstm_881_while_lstm_cell_881_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_881/while/lstm_cell_881/MatMul_1MatMullstm_881_while_placeholder_2<lstm_881/while/lstm_cell_881/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_881/while/lstm_cell_881/addAddV2-lstm_881/while/lstm_cell_881/MatMul:product:0/lstm_881/while/lstm_cell_881/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_881/while/lstm_cell_881/BiasAdd/ReadVariableOpReadVariableOp>lstm_881_while_lstm_cell_881_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_881/while/lstm_cell_881/BiasAddBiasAdd$lstm_881/while/lstm_cell_881/add:z:0;lstm_881/while/lstm_cell_881/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_881/while/lstm_cell_881/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_881/while/lstm_cell_881/splitSplit5lstm_881/while/lstm_cell_881/split/split_dim:output:0-lstm_881/while/lstm_cell_881/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_881/while/lstm_cell_881/SigmoidSigmoid+lstm_881/while/lstm_cell_881/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_881/while/lstm_cell_881/Sigmoid_1Sigmoid+lstm_881/while/lstm_cell_881/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_881/while/lstm_cell_881/mulMul*lstm_881/while/lstm_cell_881/Sigmoid_1:y:0lstm_881_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_881/while/lstm_cell_881/ReluRelu+lstm_881/while/lstm_cell_881/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_881/while/lstm_cell_881/mul_1Mul(lstm_881/while/lstm_cell_881/Sigmoid:y:0/lstm_881/while/lstm_cell_881/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_881/while/lstm_cell_881/add_1AddV2$lstm_881/while/lstm_cell_881/mul:z:0&lstm_881/while/lstm_cell_881/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_881/while/lstm_cell_881/Sigmoid_2Sigmoid+lstm_881/while/lstm_cell_881/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_881/while/lstm_cell_881/Relu_1Relu&lstm_881/while/lstm_cell_881/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_881/while/lstm_cell_881/mul_2Mul*lstm_881/while/lstm_cell_881/Sigmoid_2:y:01lstm_881/while/lstm_cell_881/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_881/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_881_while_placeholder_1lstm_881_while_placeholder&lstm_881/while/lstm_cell_881/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_881/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_881/while/addAddV2lstm_881_while_placeholderlstm_881/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_881/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_881/while/add_1AddV2*lstm_881_while_lstm_881_while_loop_counterlstm_881/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_881/while/IdentityIdentitylstm_881/while/add_1:z:0^lstm_881/while/NoOp*
T0*
_output_shapes
: ?
lstm_881/while/Identity_1Identity0lstm_881_while_lstm_881_while_maximum_iterations^lstm_881/while/NoOp*
T0*
_output_shapes
: t
lstm_881/while/Identity_2Identitylstm_881/while/add:z:0^lstm_881/while/NoOp*
T0*
_output_shapes
: ?
lstm_881/while/Identity_3IdentityClstm_881/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_881/while/NoOp*
T0*
_output_shapes
: ?
lstm_881/while/Identity_4Identity&lstm_881/while/lstm_cell_881/mul_2:z:0^lstm_881/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_881/while/Identity_5Identity&lstm_881/while/lstm_cell_881/add_1:z:0^lstm_881/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_881/while/NoOpNoOp4^lstm_881/while/lstm_cell_881/BiasAdd/ReadVariableOp3^lstm_881/while/lstm_cell_881/MatMul/ReadVariableOp5^lstm_881/while/lstm_cell_881/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_881_while_identity lstm_881/while/Identity:output:0"?
lstm_881_while_identity_1"lstm_881/while/Identity_1:output:0"?
lstm_881_while_identity_2"lstm_881/while/Identity_2:output:0"?
lstm_881_while_identity_3"lstm_881/while/Identity_3:output:0"?
lstm_881_while_identity_4"lstm_881/while/Identity_4:output:0"?
lstm_881_while_identity_5"lstm_881/while/Identity_5:output:0"T
'lstm_881_while_lstm_881_strided_slice_1)lstm_881_while_lstm_881_strided_slice_1_0"~
<lstm_881_while_lstm_cell_881_biasadd_readvariableop_resource>lstm_881_while_lstm_cell_881_biasadd_readvariableop_resource_0"?
=lstm_881_while_lstm_cell_881_matmul_1_readvariableop_resource?lstm_881_while_lstm_cell_881_matmul_1_readvariableop_resource_0"|
;lstm_881_while_lstm_cell_881_matmul_readvariableop_resource=lstm_881_while_lstm_cell_881_matmul_readvariableop_resource_0"?
clstm_881_while_tensorarrayv2read_tensorlistgetitem_lstm_881_tensorarrayunstack_tensorlistfromtensorelstm_881_while_tensorarrayv2read_tensorlistgetitem_lstm_881_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_881/while/lstm_cell_881/BiasAdd/ReadVariableOp3lstm_881/while/lstm_cell_881/BiasAdd/ReadVariableOp2h
2lstm_881/while/lstm_cell_881/MatMul/ReadVariableOp2lstm_881/while/lstm_cell_881/MatMul/ReadVariableOp2l
4lstm_881/while/lstm_cell_881/MatMul_1/ReadVariableOp4lstm_881/while/lstm_cell_881/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_5249397
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5249397___redundant_placeholder05
1while_while_cond_5249397___redundant_placeholder15
1while_while_cond_5249397___redundant_placeholder25
1while_while_cond_5249397___redundant_placeholder3
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
E__inference_lstm_880_layer_call_and_return_conditional_losses_5246341

inputs(
lstm_cell_880_5246259:	d?(
lstm_cell_880_5246261:	2?$
lstm_cell_880_5246263:	?
identity??%lstm_cell_880/StatefulPartitionedCall?while;
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
%lstm_cell_880/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_880_5246259lstm_cell_880_5246261lstm_cell_880_5246263*
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
J__inference_lstm_cell_880_layer_call_and_return_conditional_losses_5246258n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_880_5246259lstm_cell_880_5246261lstm_cell_880_5246263*
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
while_body_5246272*
condR
while_cond_5246271*K
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
NoOpNoOp&^lstm_cell_880/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_880/StatefulPartitionedCall%lstm_cell_880/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?

?
lstm_880_while_cond_5248779.
*lstm_880_while_lstm_880_while_loop_counter4
0lstm_880_while_lstm_880_while_maximum_iterations
lstm_880_while_placeholder 
lstm_880_while_placeholder_1 
lstm_880_while_placeholder_2 
lstm_880_while_placeholder_30
,lstm_880_while_less_lstm_880_strided_slice_1G
Clstm_880_while_lstm_880_while_cond_5248779___redundant_placeholder0G
Clstm_880_while_lstm_880_while_cond_5248779___redundant_placeholder1G
Clstm_880_while_lstm_880_while_cond_5248779___redundant_placeholder2G
Clstm_880_while_lstm_880_while_cond_5248779___redundant_placeholder3
lstm_880_while_identity
?
lstm_880/while/LessLesslstm_880_while_placeholder,lstm_880_while_less_lstm_880_strided_slice_1*
T0*
_output_shapes
: ]
lstm_880/while/IdentityIdentitylstm_880/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_880_while_identity lstm_880/while/Identity:output:0*(
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
while_cond_5247636
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5247636___redundant_placeholder05
1while_while_cond_5247636___redundant_placeholder15
1while_while_cond_5247636___redundant_placeholder25
1while_while_cond_5247636___redundant_placeholder3
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
while_cond_5247471
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5247471___redundant_placeholder05
1while_while_cond_5247471___redundant_placeholder15
1while_while_cond_5247471___redundant_placeholder25
1while_while_cond_5247471___redundant_placeholder3
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
?
?
K__inference_sequential_293_layer_call_and_return_conditional_losses_5248036
lstm_879_input#
lstm_879_5248009:	?#
lstm_879_5248011:	d?
lstm_879_5248013:	?#
lstm_880_5248016:	d?#
lstm_880_5248018:	2?
lstm_880_5248020:	?"
lstm_881_5248023:2("
lstm_881_5248025:
(
lstm_881_5248027:(#
dense_293_5248030:

dense_293_5248032:
identity??!dense_293/StatefulPartitionedCall? lstm_879/StatefulPartitionedCall? lstm_880/StatefulPartitionedCall? lstm_881/StatefulPartitionedCall?
 lstm_879/StatefulPartitionedCallStatefulPartitionedCalllstm_879_inputlstm_879_5248009lstm_879_5248011lstm_879_5248013*
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
E__inference_lstm_879_layer_call_and_return_conditional_losses_5247040?
 lstm_880/StatefulPartitionedCallStatefulPartitionedCall)lstm_879/StatefulPartitionedCall:output:0lstm_880_5248016lstm_880_5248018lstm_880_5248020*
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
E__inference_lstm_880_layer_call_and_return_conditional_losses_5247190?
 lstm_881/StatefulPartitionedCallStatefulPartitionedCall)lstm_880/StatefulPartitionedCall:output:0lstm_881_5248023lstm_881_5248025lstm_881_5248027*
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
E__inference_lstm_881_layer_call_and_return_conditional_losses_5247340?
!dense_293/StatefulPartitionedCallStatefulPartitionedCall)lstm_881/StatefulPartitionedCall:output:0dense_293_5248030dense_293_5248032*
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
F__inference_dense_293_layer_call_and_return_conditional_losses_5247358y
IdentityIdentity*dense_293/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_293/StatefulPartitionedCall!^lstm_879/StatefulPartitionedCall!^lstm_880/StatefulPartitionedCall!^lstm_881/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_293/StatefulPartitionedCall!dense_293/StatefulPartitionedCall2D
 lstm_879/StatefulPartitionedCall lstm_879/StatefulPartitionedCall2D
 lstm_880/StatefulPartitionedCall lstm_880/StatefulPartitionedCall2D
 lstm_881/StatefulPartitionedCall lstm_881/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_879_input
?
?
/__inference_lstm_cell_881_layer_call_fn_5251106

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
J__inference_lstm_cell_881_layer_call_and_return_conditional_losses_5246754o
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
while_cond_5246812
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5246812___redundant_placeholder05
1while_while_cond_5246812___redundant_placeholder15
1while_while_cond_5246812___redundant_placeholder25
1while_while_cond_5246812___redundant_placeholder3
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
while_cond_5245921
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5245921___redundant_placeholder05
1while_while_cond_5245921___redundant_placeholder15
1while_while_cond_5245921___redundant_placeholder25
1while_while_cond_5245921___redundant_placeholder3
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
while_body_5245922
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_879_5245946_0:	?0
while_lstm_cell_879_5245948_0:	d?,
while_lstm_cell_879_5245950_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_879_5245946:	?.
while_lstm_cell_879_5245948:	d?*
while_lstm_cell_879_5245950:	???+while/lstm_cell_879/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_879/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_879_5245946_0while_lstm_cell_879_5245948_0while_lstm_cell_879_5245950_0*
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
J__inference_lstm_cell_879_layer_call_and_return_conditional_losses_5245908?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_879/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_879/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_879/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_879/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_879_5245946while_lstm_cell_879_5245946_0"<
while_lstm_cell_879_5245948while_lstm_cell_879_5245948_0"<
while_lstm_cell_879_5245950while_lstm_cell_879_5245950_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_879/StatefulPartitionedCall+while/lstm_cell_879/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
*sequential_293_lstm_881_while_cond_5245750L
Hsequential_293_lstm_881_while_sequential_293_lstm_881_while_loop_counterR
Nsequential_293_lstm_881_while_sequential_293_lstm_881_while_maximum_iterations-
)sequential_293_lstm_881_while_placeholder/
+sequential_293_lstm_881_while_placeholder_1/
+sequential_293_lstm_881_while_placeholder_2/
+sequential_293_lstm_881_while_placeholder_3N
Jsequential_293_lstm_881_while_less_sequential_293_lstm_881_strided_slice_1e
asequential_293_lstm_881_while_sequential_293_lstm_881_while_cond_5245750___redundant_placeholder0e
asequential_293_lstm_881_while_sequential_293_lstm_881_while_cond_5245750___redundant_placeholder1e
asequential_293_lstm_881_while_sequential_293_lstm_881_while_cond_5245750___redundant_placeholder2e
asequential_293_lstm_881_while_sequential_293_lstm_881_while_cond_5245750___redundant_placeholder3*
&sequential_293_lstm_881_while_identity
?
"sequential_293/lstm_881/while/LessLess)sequential_293_lstm_881_while_placeholderJsequential_293_lstm_881_while_less_sequential_293_lstm_881_strided_slice_1*
T0*
_output_shapes
: {
&sequential_293/lstm_881/while/IdentityIdentity&sequential_293/lstm_881/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_293_lstm_881_while_identity/sequential_293/lstm_881/while/Identity:output:0*(
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
E__inference_lstm_881_layer_call_and_return_conditional_losses_5247340

inputs>
,lstm_cell_881_matmul_readvariableop_resource:2(@
.lstm_cell_881_matmul_1_readvariableop_resource:
(;
-lstm_cell_881_biasadd_readvariableop_resource:(
identity??$lstm_cell_881/BiasAdd/ReadVariableOp?#lstm_cell_881/MatMul/ReadVariableOp?%lstm_cell_881/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_881/MatMul/ReadVariableOpReadVariableOp,lstm_cell_881_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_881/MatMulMatMulstrided_slice_2:output:0+lstm_cell_881/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_881/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_881_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_881/MatMul_1MatMulzeros:output:0-lstm_cell_881/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_881/addAddV2lstm_cell_881/MatMul:product:0 lstm_cell_881/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_881/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_881_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_881/BiasAddBiasAddlstm_cell_881/add:z:0,lstm_cell_881/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_881/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_881/splitSplit&lstm_cell_881/split/split_dim:output:0lstm_cell_881/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_881/SigmoidSigmoidlstm_cell_881/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_881/Sigmoid_1Sigmoidlstm_cell_881/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_881/mulMullstm_cell_881/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_881/ReluRelulstm_cell_881/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_881/mul_1Mullstm_cell_881/Sigmoid:y:0 lstm_cell_881/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_881/add_1AddV2lstm_cell_881/mul:z:0lstm_cell_881/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_881/Sigmoid_2Sigmoidlstm_cell_881/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_881/Relu_1Relulstm_cell_881/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_881/mul_2Mullstm_cell_881/Sigmoid_2:y:0"lstm_cell_881/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_881_matmul_readvariableop_resource.lstm_cell_881_matmul_1_readvariableop_resource-lstm_cell_881_biasadd_readvariableop_resource*
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
while_body_5247256*
condR
while_cond_5247255*K
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
NoOpNoOp%^lstm_cell_881/BiasAdd/ReadVariableOp$^lstm_cell_881/MatMul/ReadVariableOp&^lstm_cell_881/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_881/BiasAdd/ReadVariableOp$lstm_cell_881/BiasAdd/ReadVariableOp2J
#lstm_cell_881/MatMul/ReadVariableOp#lstm_cell_881/MatMul/ReadVariableOp2N
%lstm_cell_881/MatMul_1/ReadVariableOp%lstm_cell_881/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_881_layer_call_and_return_conditional_losses_5246754

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
?8
?
while_body_5247802
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_879_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_879_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_879_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_879_matmul_readvariableop_resource:	?G
4while_lstm_cell_879_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_879_biasadd_readvariableop_resource:	???*while/lstm_cell_879/BiasAdd/ReadVariableOp?)while/lstm_cell_879/MatMul/ReadVariableOp?+while/lstm_cell_879/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_879/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_879_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_879/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_879/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_879/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_879_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_879/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_879/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_879/addAddV2$while/lstm_cell_879/MatMul:product:0&while/lstm_cell_879/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_879/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_879_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_879/BiasAddBiasAddwhile/lstm_cell_879/add:z:02while/lstm_cell_879/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_879/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_879/splitSplit,while/lstm_cell_879/split/split_dim:output:0$while/lstm_cell_879/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_879/SigmoidSigmoid"while/lstm_cell_879/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_879/Sigmoid_1Sigmoid"while/lstm_cell_879/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_879/mulMul!while/lstm_cell_879/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_879/ReluRelu"while/lstm_cell_879/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_879/mul_1Mulwhile/lstm_cell_879/Sigmoid:y:0&while/lstm_cell_879/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_879/add_1AddV2while/lstm_cell_879/mul:z:0while/lstm_cell_879/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_879/Sigmoid_2Sigmoid"while/lstm_cell_879/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_879/Relu_1Reluwhile/lstm_cell_879/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_879/mul_2Mul!while/lstm_cell_879/Sigmoid_2:y:0(while/lstm_cell_879/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_879/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_879/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_879/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_879/BiasAdd/ReadVariableOp*^while/lstm_cell_879/MatMul/ReadVariableOp,^while/lstm_cell_879/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_879_biasadd_readvariableop_resource5while_lstm_cell_879_biasadd_readvariableop_resource_0"n
4while_lstm_cell_879_matmul_1_readvariableop_resource6while_lstm_cell_879_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_879_matmul_readvariableop_resource4while_lstm_cell_879_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_879/BiasAdd/ReadVariableOp*while/lstm_cell_879/BiasAdd/ReadVariableOp2V
)while/lstm_cell_879/MatMul/ReadVariableOp)while/lstm_cell_879/MatMul/ReadVariableOp2Z
+while/lstm_cell_879/MatMul_1/ReadVariableOp+while/lstm_cell_879/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_879_layer_call_fn_5250910

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
J__inference_lstm_cell_879_layer_call_and_return_conditional_losses_5246054o
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
??
?
#__inference__traced_restore_5251443
file_prefix3
!assignvariableop_dense_293_kernel:
/
!assignvariableop_1_dense_293_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: C
0assignvariableop_7_lstm_879_lstm_cell_879_kernel:	?M
:assignvariableop_8_lstm_879_lstm_cell_879_recurrent_kernel:	d?=
.assignvariableop_9_lstm_879_lstm_cell_879_bias:	?D
1assignvariableop_10_lstm_880_lstm_cell_880_kernel:	d?N
;assignvariableop_11_lstm_880_lstm_cell_880_recurrent_kernel:	2?>
/assignvariableop_12_lstm_880_lstm_cell_880_bias:	?C
1assignvariableop_13_lstm_881_lstm_cell_881_kernel:2(M
;assignvariableop_14_lstm_881_lstm_cell_881_recurrent_kernel:
(=
/assignvariableop_15_lstm_881_lstm_cell_881_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: =
+assignvariableop_18_adam_dense_293_kernel_m:
7
)assignvariableop_19_adam_dense_293_bias_m:K
8assignvariableop_20_adam_lstm_879_lstm_cell_879_kernel_m:	?U
Bassignvariableop_21_adam_lstm_879_lstm_cell_879_recurrent_kernel_m:	d?E
6assignvariableop_22_adam_lstm_879_lstm_cell_879_bias_m:	?K
8assignvariableop_23_adam_lstm_880_lstm_cell_880_kernel_m:	d?U
Bassignvariableop_24_adam_lstm_880_lstm_cell_880_recurrent_kernel_m:	2?E
6assignvariableop_25_adam_lstm_880_lstm_cell_880_bias_m:	?J
8assignvariableop_26_adam_lstm_881_lstm_cell_881_kernel_m:2(T
Bassignvariableop_27_adam_lstm_881_lstm_cell_881_recurrent_kernel_m:
(D
6assignvariableop_28_adam_lstm_881_lstm_cell_881_bias_m:(=
+assignvariableop_29_adam_dense_293_kernel_v:
7
)assignvariableop_30_adam_dense_293_bias_v:K
8assignvariableop_31_adam_lstm_879_lstm_cell_879_kernel_v:	?U
Bassignvariableop_32_adam_lstm_879_lstm_cell_879_recurrent_kernel_v:	d?E
6assignvariableop_33_adam_lstm_879_lstm_cell_879_bias_v:	?K
8assignvariableop_34_adam_lstm_880_lstm_cell_880_kernel_v:	d?U
Bassignvariableop_35_adam_lstm_880_lstm_cell_880_recurrent_kernel_v:	2?E
6assignvariableop_36_adam_lstm_880_lstm_cell_880_bias_v:	?J
8assignvariableop_37_adam_lstm_881_lstm_cell_881_kernel_v:2(T
Bassignvariableop_38_adam_lstm_881_lstm_cell_881_recurrent_kernel_v:
(D
6assignvariableop_39_adam_lstm_881_lstm_cell_881_bias_v:(
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
AssignVariableOpAssignVariableOp!assignvariableop_dense_293_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_293_biasIdentity_1:output:0"/device:CPU:0*
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
AssignVariableOp_7AssignVariableOp0assignvariableop_7_lstm_879_lstm_cell_879_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp:assignvariableop_8_lstm_879_lstm_cell_879_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_879_lstm_cell_879_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp1assignvariableop_10_lstm_880_lstm_cell_880_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp;assignvariableop_11_lstm_880_lstm_cell_880_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp/assignvariableop_12_lstm_880_lstm_cell_880_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp1assignvariableop_13_lstm_881_lstm_cell_881_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp;assignvariableop_14_lstm_881_lstm_cell_881_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp/assignvariableop_15_lstm_881_lstm_cell_881_biasIdentity_15:output:0"/device:CPU:0*
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
AssignVariableOp_18AssignVariableOp+assignvariableop_18_adam_dense_293_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp)assignvariableop_19_adam_dense_293_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp8assignvariableop_20_adam_lstm_879_lstm_cell_879_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOpBassignvariableop_21_adam_lstm_879_lstm_cell_879_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp6assignvariableop_22_adam_lstm_879_lstm_cell_879_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp8assignvariableop_23_adam_lstm_880_lstm_cell_880_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOpBassignvariableop_24_adam_lstm_880_lstm_cell_880_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_880_lstm_cell_880_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp8assignvariableop_26_adam_lstm_881_lstm_cell_881_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOpBassignvariableop_27_adam_lstm_881_lstm_cell_881_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_lstm_881_lstm_cell_881_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp+assignvariableop_29_adam_dense_293_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_dense_293_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp8assignvariableop_31_adam_lstm_879_lstm_cell_879_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOpBassignvariableop_32_adam_lstm_879_lstm_cell_879_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOp6assignvariableop_33_adam_lstm_879_lstm_cell_879_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOp8assignvariableop_34_adam_lstm_880_lstm_cell_880_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOpBassignvariableop_35_adam_lstm_880_lstm_cell_880_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adam_lstm_880_lstm_cell_880_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_37AssignVariableOp8assignvariableop_37_adam_lstm_881_lstm_cell_881_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_38AssignVariableOpBassignvariableop_38_adam_lstm_881_lstm_cell_881_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_lstm_881_lstm_cell_881_bias_vIdentity_39:output:0"/device:CPU:0*
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
?

?
0__inference_sequential_293_layer_call_fn_5248006
lstm_879_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_879_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_293_layer_call_and_return_conditional_losses_5247954o
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
_user_specified_namelstm_879_input
?
?
/__inference_lstm_cell_880_layer_call_fn_5251008

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
J__inference_lstm_cell_880_layer_call_and_return_conditional_losses_5246404o
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
??
?
K__inference_sequential_293_layer_call_and_return_conditional_losses_5249009

inputsH
5lstm_879_lstm_cell_879_matmul_readvariableop_resource:	?J
7lstm_879_lstm_cell_879_matmul_1_readvariableop_resource:	d?E
6lstm_879_lstm_cell_879_biasadd_readvariableop_resource:	?H
5lstm_880_lstm_cell_880_matmul_readvariableop_resource:	d?J
7lstm_880_lstm_cell_880_matmul_1_readvariableop_resource:	2?E
6lstm_880_lstm_cell_880_biasadd_readvariableop_resource:	?G
5lstm_881_lstm_cell_881_matmul_readvariableop_resource:2(I
7lstm_881_lstm_cell_881_matmul_1_readvariableop_resource:
(D
6lstm_881_lstm_cell_881_biasadd_readvariableop_resource:(:
(dense_293_matmul_readvariableop_resource:
7
)dense_293_biasadd_readvariableop_resource:
identity?? dense_293/BiasAdd/ReadVariableOp?dense_293/MatMul/ReadVariableOp?-lstm_879/lstm_cell_879/BiasAdd/ReadVariableOp?,lstm_879/lstm_cell_879/MatMul/ReadVariableOp?.lstm_879/lstm_cell_879/MatMul_1/ReadVariableOp?lstm_879/while?-lstm_880/lstm_cell_880/BiasAdd/ReadVariableOp?,lstm_880/lstm_cell_880/MatMul/ReadVariableOp?.lstm_880/lstm_cell_880/MatMul_1/ReadVariableOp?lstm_880/while?-lstm_881/lstm_cell_881/BiasAdd/ReadVariableOp?,lstm_881/lstm_cell_881/MatMul/ReadVariableOp?.lstm_881/lstm_cell_881/MatMul_1/ReadVariableOp?lstm_881/whileD
lstm_879/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_879/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_879/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_879/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_879/strided_sliceStridedSlicelstm_879/Shape:output:0%lstm_879/strided_slice/stack:output:0'lstm_879/strided_slice/stack_1:output:0'lstm_879/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_879/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_879/zeros/packedPacklstm_879/strided_slice:output:0 lstm_879/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_879/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_879/zerosFilllstm_879/zeros/packed:output:0lstm_879/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_879/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_879/zeros_1/packedPacklstm_879/strided_slice:output:0"lstm_879/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_879/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_879/zeros_1Fill lstm_879/zeros_1/packed:output:0lstm_879/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_879/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_879/transpose	Transposeinputs lstm_879/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_879/Shape_1Shapelstm_879/transpose:y:0*
T0*
_output_shapes
:h
lstm_879/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_879/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_879/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_879/strided_slice_1StridedSlicelstm_879/Shape_1:output:0'lstm_879/strided_slice_1/stack:output:0)lstm_879/strided_slice_1/stack_1:output:0)lstm_879/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_879/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_879/TensorArrayV2TensorListReserve-lstm_879/TensorArrayV2/element_shape:output:0!lstm_879/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_879/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_879/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_879/transpose:y:0Glstm_879/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_879/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_879/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_879/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_879/strided_slice_2StridedSlicelstm_879/transpose:y:0'lstm_879/strided_slice_2/stack:output:0)lstm_879/strided_slice_2/stack_1:output:0)lstm_879/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_879/lstm_cell_879/MatMul/ReadVariableOpReadVariableOp5lstm_879_lstm_cell_879_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_879/lstm_cell_879/MatMulMatMul!lstm_879/strided_slice_2:output:04lstm_879/lstm_cell_879/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_879/lstm_cell_879/MatMul_1/ReadVariableOpReadVariableOp7lstm_879_lstm_cell_879_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_879/lstm_cell_879/MatMul_1MatMullstm_879/zeros:output:06lstm_879/lstm_cell_879/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_879/lstm_cell_879/addAddV2'lstm_879/lstm_cell_879/MatMul:product:0)lstm_879/lstm_cell_879/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_879/lstm_cell_879/BiasAdd/ReadVariableOpReadVariableOp6lstm_879_lstm_cell_879_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_879/lstm_cell_879/BiasAddBiasAddlstm_879/lstm_cell_879/add:z:05lstm_879/lstm_cell_879/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_879/lstm_cell_879/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_879/lstm_cell_879/splitSplit/lstm_879/lstm_cell_879/split/split_dim:output:0'lstm_879/lstm_cell_879/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_879/lstm_cell_879/SigmoidSigmoid%lstm_879/lstm_cell_879/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_879/lstm_cell_879/Sigmoid_1Sigmoid%lstm_879/lstm_cell_879/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_879/lstm_cell_879/mulMul$lstm_879/lstm_cell_879/Sigmoid_1:y:0lstm_879/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_879/lstm_cell_879/ReluRelu%lstm_879/lstm_cell_879/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_879/lstm_cell_879/mul_1Mul"lstm_879/lstm_cell_879/Sigmoid:y:0)lstm_879/lstm_cell_879/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_879/lstm_cell_879/add_1AddV2lstm_879/lstm_cell_879/mul:z:0 lstm_879/lstm_cell_879/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_879/lstm_cell_879/Sigmoid_2Sigmoid%lstm_879/lstm_cell_879/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_879/lstm_cell_879/Relu_1Relu lstm_879/lstm_cell_879/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_879/lstm_cell_879/mul_2Mul$lstm_879/lstm_cell_879/Sigmoid_2:y:0+lstm_879/lstm_cell_879/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_879/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_879/TensorArrayV2_1TensorListReserve/lstm_879/TensorArrayV2_1/element_shape:output:0!lstm_879/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_879/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_879/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_879/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_879/whileWhile$lstm_879/while/loop_counter:output:0*lstm_879/while/maximum_iterations:output:0lstm_879/time:output:0!lstm_879/TensorArrayV2_1:handle:0lstm_879/zeros:output:0lstm_879/zeros_1:output:0!lstm_879/strided_slice_1:output:0@lstm_879/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_879_lstm_cell_879_matmul_readvariableop_resource7lstm_879_lstm_cell_879_matmul_1_readvariableop_resource6lstm_879_lstm_cell_879_biasadd_readvariableop_resource*
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
lstm_879_while_body_5248641*'
condR
lstm_879_while_cond_5248640*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_879/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_879/TensorArrayV2Stack/TensorListStackTensorListStacklstm_879/while:output:3Blstm_879/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_879/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_879/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_879/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_879/strided_slice_3StridedSlice4lstm_879/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_879/strided_slice_3/stack:output:0)lstm_879/strided_slice_3/stack_1:output:0)lstm_879/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_879/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_879/transpose_1	Transpose4lstm_879/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_879/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_879/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_880/ShapeShapelstm_879/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_880/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_880/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_880/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_880/strided_sliceStridedSlicelstm_880/Shape:output:0%lstm_880/strided_slice/stack:output:0'lstm_880/strided_slice/stack_1:output:0'lstm_880/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_880/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_880/zeros/packedPacklstm_880/strided_slice:output:0 lstm_880/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_880/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_880/zerosFilllstm_880/zeros/packed:output:0lstm_880/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_880/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_880/zeros_1/packedPacklstm_880/strided_slice:output:0"lstm_880/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_880/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_880/zeros_1Fill lstm_880/zeros_1/packed:output:0lstm_880/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_880/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_880/transpose	Transposelstm_879/transpose_1:y:0 lstm_880/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_880/Shape_1Shapelstm_880/transpose:y:0*
T0*
_output_shapes
:h
lstm_880/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_880/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_880/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_880/strided_slice_1StridedSlicelstm_880/Shape_1:output:0'lstm_880/strided_slice_1/stack:output:0)lstm_880/strided_slice_1/stack_1:output:0)lstm_880/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_880/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_880/TensorArrayV2TensorListReserve-lstm_880/TensorArrayV2/element_shape:output:0!lstm_880/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_880/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_880/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_880/transpose:y:0Glstm_880/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_880/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_880/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_880/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_880/strided_slice_2StridedSlicelstm_880/transpose:y:0'lstm_880/strided_slice_2/stack:output:0)lstm_880/strided_slice_2/stack_1:output:0)lstm_880/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_880/lstm_cell_880/MatMul/ReadVariableOpReadVariableOp5lstm_880_lstm_cell_880_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_880/lstm_cell_880/MatMulMatMul!lstm_880/strided_slice_2:output:04lstm_880/lstm_cell_880/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_880/lstm_cell_880/MatMul_1/ReadVariableOpReadVariableOp7lstm_880_lstm_cell_880_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_880/lstm_cell_880/MatMul_1MatMullstm_880/zeros:output:06lstm_880/lstm_cell_880/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_880/lstm_cell_880/addAddV2'lstm_880/lstm_cell_880/MatMul:product:0)lstm_880/lstm_cell_880/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_880/lstm_cell_880/BiasAdd/ReadVariableOpReadVariableOp6lstm_880_lstm_cell_880_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_880/lstm_cell_880/BiasAddBiasAddlstm_880/lstm_cell_880/add:z:05lstm_880/lstm_cell_880/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_880/lstm_cell_880/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_880/lstm_cell_880/splitSplit/lstm_880/lstm_cell_880/split/split_dim:output:0'lstm_880/lstm_cell_880/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_880/lstm_cell_880/SigmoidSigmoid%lstm_880/lstm_cell_880/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_880/lstm_cell_880/Sigmoid_1Sigmoid%lstm_880/lstm_cell_880/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_880/lstm_cell_880/mulMul$lstm_880/lstm_cell_880/Sigmoid_1:y:0lstm_880/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_880/lstm_cell_880/ReluRelu%lstm_880/lstm_cell_880/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_880/lstm_cell_880/mul_1Mul"lstm_880/lstm_cell_880/Sigmoid:y:0)lstm_880/lstm_cell_880/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_880/lstm_cell_880/add_1AddV2lstm_880/lstm_cell_880/mul:z:0 lstm_880/lstm_cell_880/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_880/lstm_cell_880/Sigmoid_2Sigmoid%lstm_880/lstm_cell_880/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_880/lstm_cell_880/Relu_1Relu lstm_880/lstm_cell_880/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_880/lstm_cell_880/mul_2Mul$lstm_880/lstm_cell_880/Sigmoid_2:y:0+lstm_880/lstm_cell_880/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_880/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_880/TensorArrayV2_1TensorListReserve/lstm_880/TensorArrayV2_1/element_shape:output:0!lstm_880/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_880/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_880/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_880/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_880/whileWhile$lstm_880/while/loop_counter:output:0*lstm_880/while/maximum_iterations:output:0lstm_880/time:output:0!lstm_880/TensorArrayV2_1:handle:0lstm_880/zeros:output:0lstm_880/zeros_1:output:0!lstm_880/strided_slice_1:output:0@lstm_880/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_880_lstm_cell_880_matmul_readvariableop_resource7lstm_880_lstm_cell_880_matmul_1_readvariableop_resource6lstm_880_lstm_cell_880_biasadd_readvariableop_resource*
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
lstm_880_while_body_5248780*'
condR
lstm_880_while_cond_5248779*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_880/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_880/TensorArrayV2Stack/TensorListStackTensorListStacklstm_880/while:output:3Blstm_880/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_880/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_880/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_880/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_880/strided_slice_3StridedSlice4lstm_880/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_880/strided_slice_3/stack:output:0)lstm_880/strided_slice_3/stack_1:output:0)lstm_880/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_880/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_880/transpose_1	Transpose4lstm_880/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_880/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_880/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_881/ShapeShapelstm_880/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_881/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_881/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_881/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_881/strided_sliceStridedSlicelstm_881/Shape:output:0%lstm_881/strided_slice/stack:output:0'lstm_881/strided_slice/stack_1:output:0'lstm_881/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_881/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_881/zeros/packedPacklstm_881/strided_slice:output:0 lstm_881/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_881/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_881/zerosFilllstm_881/zeros/packed:output:0lstm_881/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_881/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_881/zeros_1/packedPacklstm_881/strided_slice:output:0"lstm_881/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_881/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_881/zeros_1Fill lstm_881/zeros_1/packed:output:0lstm_881/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_881/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_881/transpose	Transposelstm_880/transpose_1:y:0 lstm_881/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_881/Shape_1Shapelstm_881/transpose:y:0*
T0*
_output_shapes
:h
lstm_881/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_881/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_881/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_881/strided_slice_1StridedSlicelstm_881/Shape_1:output:0'lstm_881/strided_slice_1/stack:output:0)lstm_881/strided_slice_1/stack_1:output:0)lstm_881/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_881/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_881/TensorArrayV2TensorListReserve-lstm_881/TensorArrayV2/element_shape:output:0!lstm_881/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_881/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_881/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_881/transpose:y:0Glstm_881/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_881/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_881/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_881/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_881/strided_slice_2StridedSlicelstm_881/transpose:y:0'lstm_881/strided_slice_2/stack:output:0)lstm_881/strided_slice_2/stack_1:output:0)lstm_881/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_881/lstm_cell_881/MatMul/ReadVariableOpReadVariableOp5lstm_881_lstm_cell_881_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_881/lstm_cell_881/MatMulMatMul!lstm_881/strided_slice_2:output:04lstm_881/lstm_cell_881/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_881/lstm_cell_881/MatMul_1/ReadVariableOpReadVariableOp7lstm_881_lstm_cell_881_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_881/lstm_cell_881/MatMul_1MatMullstm_881/zeros:output:06lstm_881/lstm_cell_881/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_881/lstm_cell_881/addAddV2'lstm_881/lstm_cell_881/MatMul:product:0)lstm_881/lstm_cell_881/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_881/lstm_cell_881/BiasAdd/ReadVariableOpReadVariableOp6lstm_881_lstm_cell_881_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_881/lstm_cell_881/BiasAddBiasAddlstm_881/lstm_cell_881/add:z:05lstm_881/lstm_cell_881/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_881/lstm_cell_881/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_881/lstm_cell_881/splitSplit/lstm_881/lstm_cell_881/split/split_dim:output:0'lstm_881/lstm_cell_881/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_881/lstm_cell_881/SigmoidSigmoid%lstm_881/lstm_cell_881/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_881/lstm_cell_881/Sigmoid_1Sigmoid%lstm_881/lstm_cell_881/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_881/lstm_cell_881/mulMul$lstm_881/lstm_cell_881/Sigmoid_1:y:0lstm_881/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_881/lstm_cell_881/ReluRelu%lstm_881/lstm_cell_881/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_881/lstm_cell_881/mul_1Mul"lstm_881/lstm_cell_881/Sigmoid:y:0)lstm_881/lstm_cell_881/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_881/lstm_cell_881/add_1AddV2lstm_881/lstm_cell_881/mul:z:0 lstm_881/lstm_cell_881/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_881/lstm_cell_881/Sigmoid_2Sigmoid%lstm_881/lstm_cell_881/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_881/lstm_cell_881/Relu_1Relu lstm_881/lstm_cell_881/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_881/lstm_cell_881/mul_2Mul$lstm_881/lstm_cell_881/Sigmoid_2:y:0+lstm_881/lstm_cell_881/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_881/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_881/TensorArrayV2_1TensorListReserve/lstm_881/TensorArrayV2_1/element_shape:output:0!lstm_881/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_881/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_881/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_881/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_881/whileWhile$lstm_881/while/loop_counter:output:0*lstm_881/while/maximum_iterations:output:0lstm_881/time:output:0!lstm_881/TensorArrayV2_1:handle:0lstm_881/zeros:output:0lstm_881/zeros_1:output:0!lstm_881/strided_slice_1:output:0@lstm_881/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_881_lstm_cell_881_matmul_readvariableop_resource7lstm_881_lstm_cell_881_matmul_1_readvariableop_resource6lstm_881_lstm_cell_881_biasadd_readvariableop_resource*
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
lstm_881_while_body_5248919*'
condR
lstm_881_while_cond_5248918*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_881/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_881/TensorArrayV2Stack/TensorListStackTensorListStacklstm_881/while:output:3Blstm_881/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_881/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_881/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_881/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_881/strided_slice_3StridedSlice4lstm_881/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_881/strided_slice_3/stack:output:0)lstm_881/strided_slice_3/stack_1:output:0)lstm_881/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_881/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_881/transpose_1	Transpose4lstm_881/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_881/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_881/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_293/MatMul/ReadVariableOpReadVariableOp(dense_293_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_293/MatMulMatMul!lstm_881/strided_slice_3:output:0'dense_293/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_293/BiasAdd/ReadVariableOpReadVariableOp)dense_293_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_293/BiasAddBiasAdddense_293/MatMul:product:0(dense_293/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_293/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_293/BiasAdd/ReadVariableOp ^dense_293/MatMul/ReadVariableOp.^lstm_879/lstm_cell_879/BiasAdd/ReadVariableOp-^lstm_879/lstm_cell_879/MatMul/ReadVariableOp/^lstm_879/lstm_cell_879/MatMul_1/ReadVariableOp^lstm_879/while.^lstm_880/lstm_cell_880/BiasAdd/ReadVariableOp-^lstm_880/lstm_cell_880/MatMul/ReadVariableOp/^lstm_880/lstm_cell_880/MatMul_1/ReadVariableOp^lstm_880/while.^lstm_881/lstm_cell_881/BiasAdd/ReadVariableOp-^lstm_881/lstm_cell_881/MatMul/ReadVariableOp/^lstm_881/lstm_cell_881/MatMul_1/ReadVariableOp^lstm_881/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_293/BiasAdd/ReadVariableOp dense_293/BiasAdd/ReadVariableOp2B
dense_293/MatMul/ReadVariableOpdense_293/MatMul/ReadVariableOp2^
-lstm_879/lstm_cell_879/BiasAdd/ReadVariableOp-lstm_879/lstm_cell_879/BiasAdd/ReadVariableOp2\
,lstm_879/lstm_cell_879/MatMul/ReadVariableOp,lstm_879/lstm_cell_879/MatMul/ReadVariableOp2`
.lstm_879/lstm_cell_879/MatMul_1/ReadVariableOp.lstm_879/lstm_cell_879/MatMul_1/ReadVariableOp2 
lstm_879/whilelstm_879/while2^
-lstm_880/lstm_cell_880/BiasAdd/ReadVariableOp-lstm_880/lstm_cell_880/BiasAdd/ReadVariableOp2\
,lstm_880/lstm_cell_880/MatMul/ReadVariableOp,lstm_880/lstm_cell_880/MatMul/ReadVariableOp2`
.lstm_880/lstm_cell_880/MatMul_1/ReadVariableOp.lstm_880/lstm_cell_880/MatMul_1/ReadVariableOp2 
lstm_880/whilelstm_880/while2^
-lstm_881/lstm_cell_881/BiasAdd/ReadVariableOp-lstm_881/lstm_cell_881/BiasAdd/ReadVariableOp2\
,lstm_881/lstm_cell_881/MatMul/ReadVariableOp,lstm_881/lstm_cell_881/MatMul/ReadVariableOp2`
.lstm_881/lstm_cell_881/MatMul_1/ReadVariableOp.lstm_881/lstm_cell_881/MatMul_1/ReadVariableOp2 
lstm_881/whilelstm_881/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
*__inference_lstm_879_layer_call_fn_5249031
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
E__inference_lstm_879_layer_call_and_return_conditional_losses_5246182|
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
while_cond_5249870
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5249870___redundant_placeholder05
1while_while_cond_5249870___redundant_placeholder15
1while_while_cond_5249870___redundant_placeholder25
1while_while_cond_5249870___redundant_placeholder3
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
while_cond_5250156
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5250156___redundant_placeholder05
1while_while_cond_5250156___redundant_placeholder15
1while_while_cond_5250156___redundant_placeholder25
1while_while_cond_5250156___redundant_placeholder3
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
while_cond_5249111
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5249111___redundant_placeholder05
1while_while_cond_5249111___redundant_placeholder15
1while_while_cond_5249111___redundant_placeholder25
1while_while_cond_5249111___redundant_placeholder3
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
J__inference_lstm_cell_879_layer_call_and_return_conditional_losses_5246054

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
?J
?
E__inference_lstm_880_layer_call_and_return_conditional_losses_5247190

inputs?
,lstm_cell_880_matmul_readvariableop_resource:	d?A
.lstm_cell_880_matmul_1_readvariableop_resource:	2?<
-lstm_cell_880_biasadd_readvariableop_resource:	?
identity??$lstm_cell_880/BiasAdd/ReadVariableOp?#lstm_cell_880/MatMul/ReadVariableOp?%lstm_cell_880/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_880/MatMul/ReadVariableOpReadVariableOp,lstm_cell_880_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_880/MatMulMatMulstrided_slice_2:output:0+lstm_cell_880/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_880/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_880_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_880/MatMul_1MatMulzeros:output:0-lstm_cell_880/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_880/addAddV2lstm_cell_880/MatMul:product:0 lstm_cell_880/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_880/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_880_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_880/BiasAddBiasAddlstm_cell_880/add:z:0,lstm_cell_880/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_880/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_880/splitSplit&lstm_cell_880/split/split_dim:output:0lstm_cell_880/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_880/SigmoidSigmoidlstm_cell_880/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_880/Sigmoid_1Sigmoidlstm_cell_880/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_880/mulMullstm_cell_880/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_880/ReluRelulstm_cell_880/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_880/mul_1Mullstm_cell_880/Sigmoid:y:0 lstm_cell_880/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_880/add_1AddV2lstm_cell_880/mul:z:0lstm_cell_880/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_880/Sigmoid_2Sigmoidlstm_cell_880/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_880/Relu_1Relulstm_cell_880/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_880/mul_2Mullstm_cell_880/Sigmoid_2:y:0"lstm_cell_880/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_880_matmul_readvariableop_resource.lstm_cell_880_matmul_1_readvariableop_resource-lstm_cell_880_biasadd_readvariableop_resource*
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
while_body_5247106*
condR
while_cond_5247105*K
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
NoOpNoOp%^lstm_cell_880/BiasAdd/ReadVariableOp$^lstm_cell_880/MatMul/ReadVariableOp&^lstm_cell_880/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_880/BiasAdd/ReadVariableOp$lstm_cell_880/BiasAdd/ReadVariableOp2J
#lstm_cell_880/MatMul/ReadVariableOp#lstm_cell_880/MatMul/ReadVariableOp2N
%lstm_cell_880/MatMul_1/ReadVariableOp%lstm_cell_880/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?8
?
while_body_5246956
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_879_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_879_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_879_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_879_matmul_readvariableop_resource:	?G
4while_lstm_cell_879_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_879_biasadd_readvariableop_resource:	???*while/lstm_cell_879/BiasAdd/ReadVariableOp?)while/lstm_cell_879/MatMul/ReadVariableOp?+while/lstm_cell_879/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_879/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_879_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_879/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_879/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_879/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_879_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_879/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_879/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_879/addAddV2$while/lstm_cell_879/MatMul:product:0&while/lstm_cell_879/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_879/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_879_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_879/BiasAddBiasAddwhile/lstm_cell_879/add:z:02while/lstm_cell_879/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_879/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_879/splitSplit,while/lstm_cell_879/split/split_dim:output:0$while/lstm_cell_879/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_879/SigmoidSigmoid"while/lstm_cell_879/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_879/Sigmoid_1Sigmoid"while/lstm_cell_879/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_879/mulMul!while/lstm_cell_879/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_879/ReluRelu"while/lstm_cell_879/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_879/mul_1Mulwhile/lstm_cell_879/Sigmoid:y:0&while/lstm_cell_879/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_879/add_1AddV2while/lstm_cell_879/mul:z:0while/lstm_cell_879/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_879/Sigmoid_2Sigmoid"while/lstm_cell_879/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_879/Relu_1Reluwhile/lstm_cell_879/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_879/mul_2Mul!while/lstm_cell_879/Sigmoid_2:y:0(while/lstm_cell_879/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_879/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_879/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_879/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_879/BiasAdd/ReadVariableOp*^while/lstm_cell_879/MatMul/ReadVariableOp,^while/lstm_cell_879/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_879_biasadd_readvariableop_resource5while_lstm_cell_879_biasadd_readvariableop_resource_0"n
4while_lstm_cell_879_matmul_1_readvariableop_resource6while_lstm_cell_879_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_879_matmul_readvariableop_resource4while_lstm_cell_879_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_879/BiasAdd/ReadVariableOp*while/lstm_cell_879/BiasAdd/ReadVariableOp2V
)while/lstm_cell_879/MatMul/ReadVariableOp)while/lstm_cell_879/MatMul/ReadVariableOp2Z
+while/lstm_cell_879/MatMul_1/ReadVariableOp+while/lstm_cell_879/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_879_layer_call_and_return_conditional_losses_5249339
inputs_0?
,lstm_cell_879_matmul_readvariableop_resource:	?A
.lstm_cell_879_matmul_1_readvariableop_resource:	d?<
-lstm_cell_879_biasadd_readvariableop_resource:	?
identity??$lstm_cell_879/BiasAdd/ReadVariableOp?#lstm_cell_879/MatMul/ReadVariableOp?%lstm_cell_879/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_879/MatMul/ReadVariableOpReadVariableOp,lstm_cell_879_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_879/MatMulMatMulstrided_slice_2:output:0+lstm_cell_879/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_879/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_879_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_879/MatMul_1MatMulzeros:output:0-lstm_cell_879/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_879/addAddV2lstm_cell_879/MatMul:product:0 lstm_cell_879/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_879/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_879_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_879/BiasAddBiasAddlstm_cell_879/add:z:0,lstm_cell_879/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_879/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_879/splitSplit&lstm_cell_879/split/split_dim:output:0lstm_cell_879/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_879/SigmoidSigmoidlstm_cell_879/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_879/Sigmoid_1Sigmoidlstm_cell_879/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_879/mulMullstm_cell_879/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_879/ReluRelulstm_cell_879/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_879/mul_1Mullstm_cell_879/Sigmoid:y:0 lstm_cell_879/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_879/add_1AddV2lstm_cell_879/mul:z:0lstm_cell_879/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_879/Sigmoid_2Sigmoidlstm_cell_879/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_879/Relu_1Relulstm_cell_879/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_879/mul_2Mullstm_cell_879/Sigmoid_2:y:0"lstm_cell_879/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_879_matmul_readvariableop_resource.lstm_cell_879_matmul_1_readvariableop_resource-lstm_cell_879_biasadd_readvariableop_resource*
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
while_body_5249255*
condR
while_cond_5249254*K
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
NoOpNoOp%^lstm_cell_879/BiasAdd/ReadVariableOp$^lstm_cell_879/MatMul/ReadVariableOp&^lstm_cell_879/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_879/BiasAdd/ReadVariableOp$lstm_cell_879/BiasAdd/ReadVariableOp2J
#lstm_cell_879/MatMul/ReadVariableOp#lstm_cell_879/MatMul/ReadVariableOp2N
%lstm_cell_879/MatMul_1/ReadVariableOp%lstm_cell_879/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
J__inference_lstm_cell_880_layer_call_and_return_conditional_losses_5246258

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
??
?
K__inference_sequential_293_layer_call_and_return_conditional_losses_5248582

inputsH
5lstm_879_lstm_cell_879_matmul_readvariableop_resource:	?J
7lstm_879_lstm_cell_879_matmul_1_readvariableop_resource:	d?E
6lstm_879_lstm_cell_879_biasadd_readvariableop_resource:	?H
5lstm_880_lstm_cell_880_matmul_readvariableop_resource:	d?J
7lstm_880_lstm_cell_880_matmul_1_readvariableop_resource:	2?E
6lstm_880_lstm_cell_880_biasadd_readvariableop_resource:	?G
5lstm_881_lstm_cell_881_matmul_readvariableop_resource:2(I
7lstm_881_lstm_cell_881_matmul_1_readvariableop_resource:
(D
6lstm_881_lstm_cell_881_biasadd_readvariableop_resource:(:
(dense_293_matmul_readvariableop_resource:
7
)dense_293_biasadd_readvariableop_resource:
identity?? dense_293/BiasAdd/ReadVariableOp?dense_293/MatMul/ReadVariableOp?-lstm_879/lstm_cell_879/BiasAdd/ReadVariableOp?,lstm_879/lstm_cell_879/MatMul/ReadVariableOp?.lstm_879/lstm_cell_879/MatMul_1/ReadVariableOp?lstm_879/while?-lstm_880/lstm_cell_880/BiasAdd/ReadVariableOp?,lstm_880/lstm_cell_880/MatMul/ReadVariableOp?.lstm_880/lstm_cell_880/MatMul_1/ReadVariableOp?lstm_880/while?-lstm_881/lstm_cell_881/BiasAdd/ReadVariableOp?,lstm_881/lstm_cell_881/MatMul/ReadVariableOp?.lstm_881/lstm_cell_881/MatMul_1/ReadVariableOp?lstm_881/whileD
lstm_879/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_879/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_879/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_879/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_879/strided_sliceStridedSlicelstm_879/Shape:output:0%lstm_879/strided_slice/stack:output:0'lstm_879/strided_slice/stack_1:output:0'lstm_879/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_879/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_879/zeros/packedPacklstm_879/strided_slice:output:0 lstm_879/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_879/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_879/zerosFilllstm_879/zeros/packed:output:0lstm_879/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_879/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_879/zeros_1/packedPacklstm_879/strided_slice:output:0"lstm_879/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_879/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_879/zeros_1Fill lstm_879/zeros_1/packed:output:0lstm_879/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_879/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_879/transpose	Transposeinputs lstm_879/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_879/Shape_1Shapelstm_879/transpose:y:0*
T0*
_output_shapes
:h
lstm_879/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_879/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_879/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_879/strided_slice_1StridedSlicelstm_879/Shape_1:output:0'lstm_879/strided_slice_1/stack:output:0)lstm_879/strided_slice_1/stack_1:output:0)lstm_879/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_879/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_879/TensorArrayV2TensorListReserve-lstm_879/TensorArrayV2/element_shape:output:0!lstm_879/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_879/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_879/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_879/transpose:y:0Glstm_879/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_879/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_879/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_879/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_879/strided_slice_2StridedSlicelstm_879/transpose:y:0'lstm_879/strided_slice_2/stack:output:0)lstm_879/strided_slice_2/stack_1:output:0)lstm_879/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_879/lstm_cell_879/MatMul/ReadVariableOpReadVariableOp5lstm_879_lstm_cell_879_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_879/lstm_cell_879/MatMulMatMul!lstm_879/strided_slice_2:output:04lstm_879/lstm_cell_879/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_879/lstm_cell_879/MatMul_1/ReadVariableOpReadVariableOp7lstm_879_lstm_cell_879_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_879/lstm_cell_879/MatMul_1MatMullstm_879/zeros:output:06lstm_879/lstm_cell_879/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_879/lstm_cell_879/addAddV2'lstm_879/lstm_cell_879/MatMul:product:0)lstm_879/lstm_cell_879/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_879/lstm_cell_879/BiasAdd/ReadVariableOpReadVariableOp6lstm_879_lstm_cell_879_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_879/lstm_cell_879/BiasAddBiasAddlstm_879/lstm_cell_879/add:z:05lstm_879/lstm_cell_879/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_879/lstm_cell_879/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_879/lstm_cell_879/splitSplit/lstm_879/lstm_cell_879/split/split_dim:output:0'lstm_879/lstm_cell_879/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_879/lstm_cell_879/SigmoidSigmoid%lstm_879/lstm_cell_879/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_879/lstm_cell_879/Sigmoid_1Sigmoid%lstm_879/lstm_cell_879/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_879/lstm_cell_879/mulMul$lstm_879/lstm_cell_879/Sigmoid_1:y:0lstm_879/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_879/lstm_cell_879/ReluRelu%lstm_879/lstm_cell_879/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_879/lstm_cell_879/mul_1Mul"lstm_879/lstm_cell_879/Sigmoid:y:0)lstm_879/lstm_cell_879/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_879/lstm_cell_879/add_1AddV2lstm_879/lstm_cell_879/mul:z:0 lstm_879/lstm_cell_879/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_879/lstm_cell_879/Sigmoid_2Sigmoid%lstm_879/lstm_cell_879/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_879/lstm_cell_879/Relu_1Relu lstm_879/lstm_cell_879/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_879/lstm_cell_879/mul_2Mul$lstm_879/lstm_cell_879/Sigmoid_2:y:0+lstm_879/lstm_cell_879/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_879/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_879/TensorArrayV2_1TensorListReserve/lstm_879/TensorArrayV2_1/element_shape:output:0!lstm_879/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_879/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_879/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_879/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_879/whileWhile$lstm_879/while/loop_counter:output:0*lstm_879/while/maximum_iterations:output:0lstm_879/time:output:0!lstm_879/TensorArrayV2_1:handle:0lstm_879/zeros:output:0lstm_879/zeros_1:output:0!lstm_879/strided_slice_1:output:0@lstm_879/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_879_lstm_cell_879_matmul_readvariableop_resource7lstm_879_lstm_cell_879_matmul_1_readvariableop_resource6lstm_879_lstm_cell_879_biasadd_readvariableop_resource*
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
lstm_879_while_body_5248214*'
condR
lstm_879_while_cond_5248213*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_879/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_879/TensorArrayV2Stack/TensorListStackTensorListStacklstm_879/while:output:3Blstm_879/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_879/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_879/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_879/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_879/strided_slice_3StridedSlice4lstm_879/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_879/strided_slice_3/stack:output:0)lstm_879/strided_slice_3/stack_1:output:0)lstm_879/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_879/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_879/transpose_1	Transpose4lstm_879/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_879/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_879/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_880/ShapeShapelstm_879/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_880/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_880/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_880/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_880/strided_sliceStridedSlicelstm_880/Shape:output:0%lstm_880/strided_slice/stack:output:0'lstm_880/strided_slice/stack_1:output:0'lstm_880/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_880/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_880/zeros/packedPacklstm_880/strided_slice:output:0 lstm_880/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_880/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_880/zerosFilllstm_880/zeros/packed:output:0lstm_880/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_880/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_880/zeros_1/packedPacklstm_880/strided_slice:output:0"lstm_880/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_880/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_880/zeros_1Fill lstm_880/zeros_1/packed:output:0lstm_880/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_880/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_880/transpose	Transposelstm_879/transpose_1:y:0 lstm_880/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_880/Shape_1Shapelstm_880/transpose:y:0*
T0*
_output_shapes
:h
lstm_880/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_880/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_880/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_880/strided_slice_1StridedSlicelstm_880/Shape_1:output:0'lstm_880/strided_slice_1/stack:output:0)lstm_880/strided_slice_1/stack_1:output:0)lstm_880/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_880/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_880/TensorArrayV2TensorListReserve-lstm_880/TensorArrayV2/element_shape:output:0!lstm_880/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_880/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_880/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_880/transpose:y:0Glstm_880/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_880/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_880/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_880/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_880/strided_slice_2StridedSlicelstm_880/transpose:y:0'lstm_880/strided_slice_2/stack:output:0)lstm_880/strided_slice_2/stack_1:output:0)lstm_880/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_880/lstm_cell_880/MatMul/ReadVariableOpReadVariableOp5lstm_880_lstm_cell_880_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_880/lstm_cell_880/MatMulMatMul!lstm_880/strided_slice_2:output:04lstm_880/lstm_cell_880/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_880/lstm_cell_880/MatMul_1/ReadVariableOpReadVariableOp7lstm_880_lstm_cell_880_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_880/lstm_cell_880/MatMul_1MatMullstm_880/zeros:output:06lstm_880/lstm_cell_880/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_880/lstm_cell_880/addAddV2'lstm_880/lstm_cell_880/MatMul:product:0)lstm_880/lstm_cell_880/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_880/lstm_cell_880/BiasAdd/ReadVariableOpReadVariableOp6lstm_880_lstm_cell_880_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_880/lstm_cell_880/BiasAddBiasAddlstm_880/lstm_cell_880/add:z:05lstm_880/lstm_cell_880/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_880/lstm_cell_880/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_880/lstm_cell_880/splitSplit/lstm_880/lstm_cell_880/split/split_dim:output:0'lstm_880/lstm_cell_880/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_880/lstm_cell_880/SigmoidSigmoid%lstm_880/lstm_cell_880/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_880/lstm_cell_880/Sigmoid_1Sigmoid%lstm_880/lstm_cell_880/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_880/lstm_cell_880/mulMul$lstm_880/lstm_cell_880/Sigmoid_1:y:0lstm_880/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_880/lstm_cell_880/ReluRelu%lstm_880/lstm_cell_880/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_880/lstm_cell_880/mul_1Mul"lstm_880/lstm_cell_880/Sigmoid:y:0)lstm_880/lstm_cell_880/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_880/lstm_cell_880/add_1AddV2lstm_880/lstm_cell_880/mul:z:0 lstm_880/lstm_cell_880/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_880/lstm_cell_880/Sigmoid_2Sigmoid%lstm_880/lstm_cell_880/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_880/lstm_cell_880/Relu_1Relu lstm_880/lstm_cell_880/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_880/lstm_cell_880/mul_2Mul$lstm_880/lstm_cell_880/Sigmoid_2:y:0+lstm_880/lstm_cell_880/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_880/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_880/TensorArrayV2_1TensorListReserve/lstm_880/TensorArrayV2_1/element_shape:output:0!lstm_880/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_880/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_880/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_880/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_880/whileWhile$lstm_880/while/loop_counter:output:0*lstm_880/while/maximum_iterations:output:0lstm_880/time:output:0!lstm_880/TensorArrayV2_1:handle:0lstm_880/zeros:output:0lstm_880/zeros_1:output:0!lstm_880/strided_slice_1:output:0@lstm_880/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_880_lstm_cell_880_matmul_readvariableop_resource7lstm_880_lstm_cell_880_matmul_1_readvariableop_resource6lstm_880_lstm_cell_880_biasadd_readvariableop_resource*
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
lstm_880_while_body_5248353*'
condR
lstm_880_while_cond_5248352*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_880/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_880/TensorArrayV2Stack/TensorListStackTensorListStacklstm_880/while:output:3Blstm_880/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_880/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_880/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_880/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_880/strided_slice_3StridedSlice4lstm_880/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_880/strided_slice_3/stack:output:0)lstm_880/strided_slice_3/stack_1:output:0)lstm_880/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_880/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_880/transpose_1	Transpose4lstm_880/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_880/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_880/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_881/ShapeShapelstm_880/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_881/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_881/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_881/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_881/strided_sliceStridedSlicelstm_881/Shape:output:0%lstm_881/strided_slice/stack:output:0'lstm_881/strided_slice/stack_1:output:0'lstm_881/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_881/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_881/zeros/packedPacklstm_881/strided_slice:output:0 lstm_881/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_881/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_881/zerosFilllstm_881/zeros/packed:output:0lstm_881/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_881/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_881/zeros_1/packedPacklstm_881/strided_slice:output:0"lstm_881/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_881/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_881/zeros_1Fill lstm_881/zeros_1/packed:output:0lstm_881/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_881/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_881/transpose	Transposelstm_880/transpose_1:y:0 lstm_881/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_881/Shape_1Shapelstm_881/transpose:y:0*
T0*
_output_shapes
:h
lstm_881/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_881/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_881/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_881/strided_slice_1StridedSlicelstm_881/Shape_1:output:0'lstm_881/strided_slice_1/stack:output:0)lstm_881/strided_slice_1/stack_1:output:0)lstm_881/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_881/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_881/TensorArrayV2TensorListReserve-lstm_881/TensorArrayV2/element_shape:output:0!lstm_881/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_881/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_881/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_881/transpose:y:0Glstm_881/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_881/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_881/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_881/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_881/strided_slice_2StridedSlicelstm_881/transpose:y:0'lstm_881/strided_slice_2/stack:output:0)lstm_881/strided_slice_2/stack_1:output:0)lstm_881/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_881/lstm_cell_881/MatMul/ReadVariableOpReadVariableOp5lstm_881_lstm_cell_881_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_881/lstm_cell_881/MatMulMatMul!lstm_881/strided_slice_2:output:04lstm_881/lstm_cell_881/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_881/lstm_cell_881/MatMul_1/ReadVariableOpReadVariableOp7lstm_881_lstm_cell_881_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_881/lstm_cell_881/MatMul_1MatMullstm_881/zeros:output:06lstm_881/lstm_cell_881/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_881/lstm_cell_881/addAddV2'lstm_881/lstm_cell_881/MatMul:product:0)lstm_881/lstm_cell_881/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_881/lstm_cell_881/BiasAdd/ReadVariableOpReadVariableOp6lstm_881_lstm_cell_881_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_881/lstm_cell_881/BiasAddBiasAddlstm_881/lstm_cell_881/add:z:05lstm_881/lstm_cell_881/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_881/lstm_cell_881/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_881/lstm_cell_881/splitSplit/lstm_881/lstm_cell_881/split/split_dim:output:0'lstm_881/lstm_cell_881/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_881/lstm_cell_881/SigmoidSigmoid%lstm_881/lstm_cell_881/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_881/lstm_cell_881/Sigmoid_1Sigmoid%lstm_881/lstm_cell_881/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_881/lstm_cell_881/mulMul$lstm_881/lstm_cell_881/Sigmoid_1:y:0lstm_881/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_881/lstm_cell_881/ReluRelu%lstm_881/lstm_cell_881/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_881/lstm_cell_881/mul_1Mul"lstm_881/lstm_cell_881/Sigmoid:y:0)lstm_881/lstm_cell_881/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_881/lstm_cell_881/add_1AddV2lstm_881/lstm_cell_881/mul:z:0 lstm_881/lstm_cell_881/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_881/lstm_cell_881/Sigmoid_2Sigmoid%lstm_881/lstm_cell_881/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_881/lstm_cell_881/Relu_1Relu lstm_881/lstm_cell_881/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_881/lstm_cell_881/mul_2Mul$lstm_881/lstm_cell_881/Sigmoid_2:y:0+lstm_881/lstm_cell_881/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_881/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_881/TensorArrayV2_1TensorListReserve/lstm_881/TensorArrayV2_1/element_shape:output:0!lstm_881/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_881/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_881/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_881/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_881/whileWhile$lstm_881/while/loop_counter:output:0*lstm_881/while/maximum_iterations:output:0lstm_881/time:output:0!lstm_881/TensorArrayV2_1:handle:0lstm_881/zeros:output:0lstm_881/zeros_1:output:0!lstm_881/strided_slice_1:output:0@lstm_881/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_881_lstm_cell_881_matmul_readvariableop_resource7lstm_881_lstm_cell_881_matmul_1_readvariableop_resource6lstm_881_lstm_cell_881_biasadd_readvariableop_resource*
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
lstm_881_while_body_5248492*'
condR
lstm_881_while_cond_5248491*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_881/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_881/TensorArrayV2Stack/TensorListStackTensorListStacklstm_881/while:output:3Blstm_881/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_881/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_881/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_881/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_881/strided_slice_3StridedSlice4lstm_881/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_881/strided_slice_3/stack:output:0)lstm_881/strided_slice_3/stack_1:output:0)lstm_881/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_881/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_881/transpose_1	Transpose4lstm_881/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_881/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_881/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_293/MatMul/ReadVariableOpReadVariableOp(dense_293_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_293/MatMulMatMul!lstm_881/strided_slice_3:output:0'dense_293/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_293/BiasAdd/ReadVariableOpReadVariableOp)dense_293_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_293/BiasAddBiasAdddense_293/MatMul:product:0(dense_293/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_293/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_293/BiasAdd/ReadVariableOp ^dense_293/MatMul/ReadVariableOp.^lstm_879/lstm_cell_879/BiasAdd/ReadVariableOp-^lstm_879/lstm_cell_879/MatMul/ReadVariableOp/^lstm_879/lstm_cell_879/MatMul_1/ReadVariableOp^lstm_879/while.^lstm_880/lstm_cell_880/BiasAdd/ReadVariableOp-^lstm_880/lstm_cell_880/MatMul/ReadVariableOp/^lstm_880/lstm_cell_880/MatMul_1/ReadVariableOp^lstm_880/while.^lstm_881/lstm_cell_881/BiasAdd/ReadVariableOp-^lstm_881/lstm_cell_881/MatMul/ReadVariableOp/^lstm_881/lstm_cell_881/MatMul_1/ReadVariableOp^lstm_881/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_293/BiasAdd/ReadVariableOp dense_293/BiasAdd/ReadVariableOp2B
dense_293/MatMul/ReadVariableOpdense_293/MatMul/ReadVariableOp2^
-lstm_879/lstm_cell_879/BiasAdd/ReadVariableOp-lstm_879/lstm_cell_879/BiasAdd/ReadVariableOp2\
,lstm_879/lstm_cell_879/MatMul/ReadVariableOp,lstm_879/lstm_cell_879/MatMul/ReadVariableOp2`
.lstm_879/lstm_cell_879/MatMul_1/ReadVariableOp.lstm_879/lstm_cell_879/MatMul_1/ReadVariableOp2 
lstm_879/whilelstm_879/while2^
-lstm_880/lstm_cell_880/BiasAdd/ReadVariableOp-lstm_880/lstm_cell_880/BiasAdd/ReadVariableOp2\
,lstm_880/lstm_cell_880/MatMul/ReadVariableOp,lstm_880/lstm_cell_880/MatMul/ReadVariableOp2`
.lstm_880/lstm_cell_880/MatMul_1/ReadVariableOp.lstm_880/lstm_cell_880/MatMul_1/ReadVariableOp2 
lstm_880/whilelstm_880/while2^
-lstm_881/lstm_cell_881/BiasAdd/ReadVariableOp-lstm_881/lstm_cell_881/BiasAdd/ReadVariableOp2\
,lstm_881/lstm_cell_881/MatMul/ReadVariableOp,lstm_881/lstm_cell_881/MatMul/ReadVariableOp2`
.lstm_881/lstm_cell_881/MatMul_1/ReadVariableOp.lstm_881/lstm_cell_881/MatMul_1/ReadVariableOp2 
lstm_881/whilelstm_881/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?K
?
E__inference_lstm_879_layer_call_and_return_conditional_losses_5249196
inputs_0?
,lstm_cell_879_matmul_readvariableop_resource:	?A
.lstm_cell_879_matmul_1_readvariableop_resource:	d?<
-lstm_cell_879_biasadd_readvariableop_resource:	?
identity??$lstm_cell_879/BiasAdd/ReadVariableOp?#lstm_cell_879/MatMul/ReadVariableOp?%lstm_cell_879/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_879/MatMul/ReadVariableOpReadVariableOp,lstm_cell_879_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_879/MatMulMatMulstrided_slice_2:output:0+lstm_cell_879/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_879/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_879_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_879/MatMul_1MatMulzeros:output:0-lstm_cell_879/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_879/addAddV2lstm_cell_879/MatMul:product:0 lstm_cell_879/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_879/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_879_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_879/BiasAddBiasAddlstm_cell_879/add:z:0,lstm_cell_879/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_879/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_879/splitSplit&lstm_cell_879/split/split_dim:output:0lstm_cell_879/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_879/SigmoidSigmoidlstm_cell_879/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_879/Sigmoid_1Sigmoidlstm_cell_879/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_879/mulMullstm_cell_879/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_879/ReluRelulstm_cell_879/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_879/mul_1Mullstm_cell_879/Sigmoid:y:0 lstm_cell_879/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_879/add_1AddV2lstm_cell_879/mul:z:0lstm_cell_879/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_879/Sigmoid_2Sigmoidlstm_cell_879/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_879/Relu_1Relulstm_cell_879/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_879/mul_2Mullstm_cell_879/Sigmoid_2:y:0"lstm_cell_879/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_879_matmul_readvariableop_resource.lstm_cell_879_matmul_1_readvariableop_resource-lstm_cell_879_biasadd_readvariableop_resource*
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
while_body_5249112*
condR
while_cond_5249111*K
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
NoOpNoOp%^lstm_cell_879/BiasAdd/ReadVariableOp$^lstm_cell_879/MatMul/ReadVariableOp&^lstm_cell_879/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_879/BiasAdd/ReadVariableOp$lstm_cell_879/BiasAdd/ReadVariableOp2J
#lstm_cell_879/MatMul/ReadVariableOp#lstm_cell_879/MatMul/ReadVariableOp2N
%lstm_cell_879/MatMul_1/ReadVariableOp%lstm_cell_879/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?

?
0__inference_sequential_293_layer_call_fn_5248128

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
K__inference_sequential_293_layer_call_and_return_conditional_losses_5247365o
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
?J
?
E__inference_lstm_881_layer_call_and_return_conditional_losses_5250857

inputs>
,lstm_cell_881_matmul_readvariableop_resource:2(@
.lstm_cell_881_matmul_1_readvariableop_resource:
(;
-lstm_cell_881_biasadd_readvariableop_resource:(
identity??$lstm_cell_881/BiasAdd/ReadVariableOp?#lstm_cell_881/MatMul/ReadVariableOp?%lstm_cell_881/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_881/MatMul/ReadVariableOpReadVariableOp,lstm_cell_881_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_881/MatMulMatMulstrided_slice_2:output:0+lstm_cell_881/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_881/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_881_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_881/MatMul_1MatMulzeros:output:0-lstm_cell_881/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_881/addAddV2lstm_cell_881/MatMul:product:0 lstm_cell_881/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_881/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_881_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_881/BiasAddBiasAddlstm_cell_881/add:z:0,lstm_cell_881/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_881/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_881/splitSplit&lstm_cell_881/split/split_dim:output:0lstm_cell_881/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_881/SigmoidSigmoidlstm_cell_881/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_881/Sigmoid_1Sigmoidlstm_cell_881/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_881/mulMullstm_cell_881/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_881/ReluRelulstm_cell_881/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_881/mul_1Mullstm_cell_881/Sigmoid:y:0 lstm_cell_881/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_881/add_1AddV2lstm_cell_881/mul:z:0lstm_cell_881/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_881/Sigmoid_2Sigmoidlstm_cell_881/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_881/Relu_1Relulstm_cell_881/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_881/mul_2Mullstm_cell_881/Sigmoid_2:y:0"lstm_cell_881/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_881_matmul_readvariableop_resource.lstm_cell_881_matmul_1_readvariableop_resource-lstm_cell_881_biasadd_readvariableop_resource*
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
while_body_5250773*
condR
while_cond_5250772*K
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
NoOpNoOp%^lstm_cell_881/BiasAdd/ReadVariableOp$^lstm_cell_881/MatMul/ReadVariableOp&^lstm_cell_881/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_881/BiasAdd/ReadVariableOp$lstm_cell_881/BiasAdd/ReadVariableOp2J
#lstm_cell_881/MatMul/ReadVariableOp#lstm_cell_881/MatMul/ReadVariableOp2N
%lstm_cell_881/MatMul_1/ReadVariableOp%lstm_cell_881/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?J
?
E__inference_lstm_880_layer_call_and_return_conditional_losses_5250098

inputs?
,lstm_cell_880_matmul_readvariableop_resource:	d?A
.lstm_cell_880_matmul_1_readvariableop_resource:	2?<
-lstm_cell_880_biasadd_readvariableop_resource:	?
identity??$lstm_cell_880/BiasAdd/ReadVariableOp?#lstm_cell_880/MatMul/ReadVariableOp?%lstm_cell_880/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_880/MatMul/ReadVariableOpReadVariableOp,lstm_cell_880_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_880/MatMulMatMulstrided_slice_2:output:0+lstm_cell_880/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_880/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_880_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_880/MatMul_1MatMulzeros:output:0-lstm_cell_880/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_880/addAddV2lstm_cell_880/MatMul:product:0 lstm_cell_880/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_880/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_880_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_880/BiasAddBiasAddlstm_cell_880/add:z:0,lstm_cell_880/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_880/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_880/splitSplit&lstm_cell_880/split/split_dim:output:0lstm_cell_880/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_880/SigmoidSigmoidlstm_cell_880/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_880/Sigmoid_1Sigmoidlstm_cell_880/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_880/mulMullstm_cell_880/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_880/ReluRelulstm_cell_880/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_880/mul_1Mullstm_cell_880/Sigmoid:y:0 lstm_cell_880/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_880/add_1AddV2lstm_cell_880/mul:z:0lstm_cell_880/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_880/Sigmoid_2Sigmoidlstm_cell_880/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_880/Relu_1Relulstm_cell_880/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_880/mul_2Mullstm_cell_880/Sigmoid_2:y:0"lstm_cell_880/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_880_matmul_readvariableop_resource.lstm_cell_880_matmul_1_readvariableop_resource-lstm_cell_880_biasadd_readvariableop_resource*
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
while_body_5250014*
condR
while_cond_5250013*K
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
NoOpNoOp%^lstm_cell_880/BiasAdd/ReadVariableOp$^lstm_cell_880/MatMul/ReadVariableOp&^lstm_cell_880/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_880/BiasAdd/ReadVariableOp$lstm_cell_880/BiasAdd/ReadVariableOp2J
#lstm_cell_880/MatMul/ReadVariableOp#lstm_cell_880/MatMul/ReadVariableOp2N
%lstm_cell_880/MatMul_1/ReadVariableOp%lstm_cell_880/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?K
?
E__inference_lstm_881_layer_call_and_return_conditional_losses_5250571
inputs_0>
,lstm_cell_881_matmul_readvariableop_resource:2(@
.lstm_cell_881_matmul_1_readvariableop_resource:
(;
-lstm_cell_881_biasadd_readvariableop_resource:(
identity??$lstm_cell_881/BiasAdd/ReadVariableOp?#lstm_cell_881/MatMul/ReadVariableOp?%lstm_cell_881/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_881/MatMul/ReadVariableOpReadVariableOp,lstm_cell_881_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_881/MatMulMatMulstrided_slice_2:output:0+lstm_cell_881/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_881/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_881_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_881/MatMul_1MatMulzeros:output:0-lstm_cell_881/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_881/addAddV2lstm_cell_881/MatMul:product:0 lstm_cell_881/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_881/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_881_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_881/BiasAddBiasAddlstm_cell_881/add:z:0,lstm_cell_881/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_881/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_881/splitSplit&lstm_cell_881/split/split_dim:output:0lstm_cell_881/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_881/SigmoidSigmoidlstm_cell_881/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_881/Sigmoid_1Sigmoidlstm_cell_881/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_881/mulMullstm_cell_881/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_881/ReluRelulstm_cell_881/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_881/mul_1Mullstm_cell_881/Sigmoid:y:0 lstm_cell_881/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_881/add_1AddV2lstm_cell_881/mul:z:0lstm_cell_881/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_881/Sigmoid_2Sigmoidlstm_cell_881/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_881/Relu_1Relulstm_cell_881/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_881/mul_2Mullstm_cell_881/Sigmoid_2:y:0"lstm_cell_881/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_881_matmul_readvariableop_resource.lstm_cell_881_matmul_1_readvariableop_resource-lstm_cell_881_biasadd_readvariableop_resource*
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
while_body_5250487*
condR
while_cond_5250486*K
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
NoOpNoOp%^lstm_cell_881/BiasAdd/ReadVariableOp$^lstm_cell_881/MatMul/ReadVariableOp&^lstm_cell_881/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_881/BiasAdd/ReadVariableOp$lstm_cell_881/BiasAdd/ReadVariableOp2J
#lstm_cell_881/MatMul/ReadVariableOp#lstm_cell_881/MatMul/ReadVariableOp2N
%lstm_cell_881/MatMul_1/ReadVariableOp%lstm_cell_881/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?

?
lstm_879_while_cond_5248640.
*lstm_879_while_lstm_879_while_loop_counter4
0lstm_879_while_lstm_879_while_maximum_iterations
lstm_879_while_placeholder 
lstm_879_while_placeholder_1 
lstm_879_while_placeholder_2 
lstm_879_while_placeholder_30
,lstm_879_while_less_lstm_879_strided_slice_1G
Clstm_879_while_lstm_879_while_cond_5248640___redundant_placeholder0G
Clstm_879_while_lstm_879_while_cond_5248640___redundant_placeholder1G
Clstm_879_while_lstm_879_while_cond_5248640___redundant_placeholder2G
Clstm_879_while_lstm_879_while_cond_5248640___redundant_placeholder3
lstm_879_while_identity
?
lstm_879/while/LessLesslstm_879_while_placeholder,lstm_879_while_less_lstm_879_strided_slice_1*
T0*
_output_shapes
: ]
lstm_879/while/IdentityIdentitylstm_879/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_879_while_identity lstm_879/while/Identity:output:0*(
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
/__inference_lstm_cell_881_layer_call_fn_5251089

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
J__inference_lstm_cell_881_layer_call_and_return_conditional_losses_5246608o
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
?K
?
E__inference_lstm_881_layer_call_and_return_conditional_losses_5250428
inputs_0>
,lstm_cell_881_matmul_readvariableop_resource:2(@
.lstm_cell_881_matmul_1_readvariableop_resource:
(;
-lstm_cell_881_biasadd_readvariableop_resource:(
identity??$lstm_cell_881/BiasAdd/ReadVariableOp?#lstm_cell_881/MatMul/ReadVariableOp?%lstm_cell_881/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_881/MatMul/ReadVariableOpReadVariableOp,lstm_cell_881_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_881/MatMulMatMulstrided_slice_2:output:0+lstm_cell_881/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_881/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_881_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_881/MatMul_1MatMulzeros:output:0-lstm_cell_881/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_881/addAddV2lstm_cell_881/MatMul:product:0 lstm_cell_881/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_881/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_881_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_881/BiasAddBiasAddlstm_cell_881/add:z:0,lstm_cell_881/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_881/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_881/splitSplit&lstm_cell_881/split/split_dim:output:0lstm_cell_881/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_881/SigmoidSigmoidlstm_cell_881/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_881/Sigmoid_1Sigmoidlstm_cell_881/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_881/mulMullstm_cell_881/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_881/ReluRelulstm_cell_881/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_881/mul_1Mullstm_cell_881/Sigmoid:y:0 lstm_cell_881/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_881/add_1AddV2lstm_cell_881/mul:z:0lstm_cell_881/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_881/Sigmoid_2Sigmoidlstm_cell_881/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_881/Relu_1Relulstm_cell_881/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_881/mul_2Mullstm_cell_881/Sigmoid_2:y:0"lstm_cell_881/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_881_matmul_readvariableop_resource.lstm_cell_881_matmul_1_readvariableop_resource-lstm_cell_881_biasadd_readvariableop_resource*
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
while_body_5250344*
condR
while_cond_5250343*K
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
NoOpNoOp%^lstm_cell_881/BiasAdd/ReadVariableOp$^lstm_cell_881/MatMul/ReadVariableOp&^lstm_cell_881/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_881/BiasAdd/ReadVariableOp$lstm_cell_881/BiasAdd/ReadVariableOp2J
#lstm_cell_881/MatMul/ReadVariableOp#lstm_cell_881/MatMul/ReadVariableOp2N
%lstm_cell_881/MatMul_1/ReadVariableOp%lstm_cell_881/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?
?
*__inference_lstm_880_layer_call_fn_5249658

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
E__inference_lstm_880_layer_call_and_return_conditional_losses_5247190s
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
while_body_5250630
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_881_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_881_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_881_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_881_matmul_readvariableop_resource:2(F
4while_lstm_cell_881_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_881_biasadd_readvariableop_resource:(??*while/lstm_cell_881/BiasAdd/ReadVariableOp?)while/lstm_cell_881/MatMul/ReadVariableOp?+while/lstm_cell_881/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_881/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_881_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_881/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_881/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_881/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_881_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_881/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_881/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_881/addAddV2$while/lstm_cell_881/MatMul:product:0&while/lstm_cell_881/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_881/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_881_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_881/BiasAddBiasAddwhile/lstm_cell_881/add:z:02while/lstm_cell_881/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_881/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_881/splitSplit,while/lstm_cell_881/split/split_dim:output:0$while/lstm_cell_881/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_881/SigmoidSigmoid"while/lstm_cell_881/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_881/Sigmoid_1Sigmoid"while/lstm_cell_881/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_881/mulMul!while/lstm_cell_881/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_881/ReluRelu"while/lstm_cell_881/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_881/mul_1Mulwhile/lstm_cell_881/Sigmoid:y:0&while/lstm_cell_881/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_881/add_1AddV2while/lstm_cell_881/mul:z:0while/lstm_cell_881/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_881/Sigmoid_2Sigmoid"while/lstm_cell_881/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_881/Relu_1Reluwhile/lstm_cell_881/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_881/mul_2Mul!while/lstm_cell_881/Sigmoid_2:y:0(while/lstm_cell_881/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_881/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_881/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_881/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_881/BiasAdd/ReadVariableOp*^while/lstm_cell_881/MatMul/ReadVariableOp,^while/lstm_cell_881/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_881_biasadd_readvariableop_resource5while_lstm_cell_881_biasadd_readvariableop_resource_0"n
4while_lstm_cell_881_matmul_1_readvariableop_resource6while_lstm_cell_881_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_881_matmul_readvariableop_resource4while_lstm_cell_881_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_881/BiasAdd/ReadVariableOp*while/lstm_cell_881/BiasAdd/ReadVariableOp2V
)while/lstm_cell_881/MatMul/ReadVariableOp)while/lstm_cell_881/MatMul/ReadVariableOp2Z
+while/lstm_cell_881/MatMul_1/ReadVariableOp+while/lstm_cell_881/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_880_layer_call_and_return_conditional_losses_5250241

inputs?
,lstm_cell_880_matmul_readvariableop_resource:	d?A
.lstm_cell_880_matmul_1_readvariableop_resource:	2?<
-lstm_cell_880_biasadd_readvariableop_resource:	?
identity??$lstm_cell_880/BiasAdd/ReadVariableOp?#lstm_cell_880/MatMul/ReadVariableOp?%lstm_cell_880/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_880/MatMul/ReadVariableOpReadVariableOp,lstm_cell_880_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_880/MatMulMatMulstrided_slice_2:output:0+lstm_cell_880/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_880/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_880_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_880/MatMul_1MatMulzeros:output:0-lstm_cell_880/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_880/addAddV2lstm_cell_880/MatMul:product:0 lstm_cell_880/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_880/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_880_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_880/BiasAddBiasAddlstm_cell_880/add:z:0,lstm_cell_880/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_880/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_880/splitSplit&lstm_cell_880/split/split_dim:output:0lstm_cell_880/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_880/SigmoidSigmoidlstm_cell_880/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_880/Sigmoid_1Sigmoidlstm_cell_880/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_880/mulMullstm_cell_880/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_880/ReluRelulstm_cell_880/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_880/mul_1Mullstm_cell_880/Sigmoid:y:0 lstm_cell_880/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_880/add_1AddV2lstm_cell_880/mul:z:0lstm_cell_880/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_880/Sigmoid_2Sigmoidlstm_cell_880/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_880/Relu_1Relulstm_cell_880/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_880/mul_2Mullstm_cell_880/Sigmoid_2:y:0"lstm_cell_880/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_880_matmul_readvariableop_resource.lstm_cell_880_matmul_1_readvariableop_resource-lstm_cell_880_biasadd_readvariableop_resource*
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
while_body_5250157*
condR
while_cond_5250156*K
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
NoOpNoOp%^lstm_cell_880/BiasAdd/ReadVariableOp$^lstm_cell_880/MatMul/ReadVariableOp&^lstm_cell_880/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_880/BiasAdd/ReadVariableOp$lstm_cell_880/BiasAdd/ReadVariableOp2J
#lstm_cell_880/MatMul/ReadVariableOp#lstm_cell_880/MatMul/ReadVariableOp2N
%lstm_cell_880/MatMul_1/ReadVariableOp%lstm_cell_880/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?

?
lstm_880_while_cond_5248352.
*lstm_880_while_lstm_880_while_loop_counter4
0lstm_880_while_lstm_880_while_maximum_iterations
lstm_880_while_placeholder 
lstm_880_while_placeholder_1 
lstm_880_while_placeholder_2 
lstm_880_while_placeholder_30
,lstm_880_while_less_lstm_880_strided_slice_1G
Clstm_880_while_lstm_880_while_cond_5248352___redundant_placeholder0G
Clstm_880_while_lstm_880_while_cond_5248352___redundant_placeholder1G
Clstm_880_while_lstm_880_while_cond_5248352___redundant_placeholder2G
Clstm_880_while_lstm_880_while_cond_5248352___redundant_placeholder3
lstm_880_while_identity
?
lstm_880/while/LessLesslstm_880_while_placeholder,lstm_880_while_less_lstm_880_strided_slice_1*
T0*
_output_shapes
: ]
lstm_880/while/IdentityIdentitylstm_880/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_880_while_identity lstm_880/while/Identity:output:0*(
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
while_body_5246622
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_881_5246646_0:2(/
while_lstm_cell_881_5246648_0:
(+
while_lstm_cell_881_5246650_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_881_5246646:2(-
while_lstm_cell_881_5246648:
()
while_lstm_cell_881_5246650:(??+while/lstm_cell_881/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_881/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_881_5246646_0while_lstm_cell_881_5246648_0while_lstm_cell_881_5246650_0*
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
J__inference_lstm_cell_881_layer_call_and_return_conditional_losses_5246608?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_881/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_881/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_881/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_881/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_881_5246646while_lstm_cell_881_5246646_0"<
while_lstm_cell_881_5246648while_lstm_cell_881_5246648_0"<
while_lstm_cell_881_5246650while_lstm_cell_881_5246650_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_881/StatefulPartitionedCall+while/lstm_cell_881/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_880_layer_call_fn_5249636
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
E__inference_lstm_880_layer_call_and_return_conditional_losses_5246341|
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
while_body_5246813
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_881_5246837_0:2(/
while_lstm_cell_881_5246839_0:
(+
while_lstm_cell_881_5246841_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_881_5246837:2(-
while_lstm_cell_881_5246839:
()
while_lstm_cell_881_5246841:(??+while/lstm_cell_881/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_881/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_881_5246837_0while_lstm_cell_881_5246839_0while_lstm_cell_881_5246841_0*
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
J__inference_lstm_cell_881_layer_call_and_return_conditional_losses_5246754?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_881/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_881/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_881/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_881/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_881_5246837while_lstm_cell_881_5246837_0"<
while_lstm_cell_881_5246839while_lstm_cell_881_5246839_0"<
while_lstm_cell_881_5246841while_lstm_cell_881_5246841_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_881/StatefulPartitionedCall+while/lstm_cell_881/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_body_5249112
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_879_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_879_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_879_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_879_matmul_readvariableop_resource:	?G
4while_lstm_cell_879_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_879_biasadd_readvariableop_resource:	???*while/lstm_cell_879/BiasAdd/ReadVariableOp?)while/lstm_cell_879/MatMul/ReadVariableOp?+while/lstm_cell_879/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_879/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_879_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_879/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_879/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_879/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_879_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_879/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_879/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_879/addAddV2$while/lstm_cell_879/MatMul:product:0&while/lstm_cell_879/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_879/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_879_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_879/BiasAddBiasAddwhile/lstm_cell_879/add:z:02while/lstm_cell_879/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_879/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_879/splitSplit,while/lstm_cell_879/split/split_dim:output:0$while/lstm_cell_879/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_879/SigmoidSigmoid"while/lstm_cell_879/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_879/Sigmoid_1Sigmoid"while/lstm_cell_879/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_879/mulMul!while/lstm_cell_879/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_879/ReluRelu"while/lstm_cell_879/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_879/mul_1Mulwhile/lstm_cell_879/Sigmoid:y:0&while/lstm_cell_879/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_879/add_1AddV2while/lstm_cell_879/mul:z:0while/lstm_cell_879/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_879/Sigmoid_2Sigmoid"while/lstm_cell_879/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_879/Relu_1Reluwhile/lstm_cell_879/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_879/mul_2Mul!while/lstm_cell_879/Sigmoid_2:y:0(while/lstm_cell_879/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_879/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_879/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_879/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_879/BiasAdd/ReadVariableOp*^while/lstm_cell_879/MatMul/ReadVariableOp,^while/lstm_cell_879/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_879_biasadd_readvariableop_resource5while_lstm_cell_879_biasadd_readvariableop_resource_0"n
4while_lstm_cell_879_matmul_1_readvariableop_resource6while_lstm_cell_879_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_879_matmul_readvariableop_resource4while_lstm_cell_879_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_879/BiasAdd/ReadVariableOp*while/lstm_cell_879/BiasAdd/ReadVariableOp2V
)while/lstm_cell_879/MatMul/ReadVariableOp)while/lstm_cell_879/MatMul/ReadVariableOp2Z
+while/lstm_cell_879/MatMul_1/ReadVariableOp+while/lstm_cell_879/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_880_layer_call_fn_5250991

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
J__inference_lstm_cell_880_layer_call_and_return_conditional_losses_5246258o
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
while_body_5250344
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_881_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_881_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_881_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_881_matmul_readvariableop_resource:2(F
4while_lstm_cell_881_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_881_biasadd_readvariableop_resource:(??*while/lstm_cell_881/BiasAdd/ReadVariableOp?)while/lstm_cell_881/MatMul/ReadVariableOp?+while/lstm_cell_881/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_881/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_881_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_881/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_881/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_881/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_881_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_881/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_881/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_881/addAddV2$while/lstm_cell_881/MatMul:product:0&while/lstm_cell_881/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_881/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_881_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_881/BiasAddBiasAddwhile/lstm_cell_881/add:z:02while/lstm_cell_881/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_881/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_881/splitSplit,while/lstm_cell_881/split/split_dim:output:0$while/lstm_cell_881/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_881/SigmoidSigmoid"while/lstm_cell_881/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_881/Sigmoid_1Sigmoid"while/lstm_cell_881/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_881/mulMul!while/lstm_cell_881/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_881/ReluRelu"while/lstm_cell_881/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_881/mul_1Mulwhile/lstm_cell_881/Sigmoid:y:0&while/lstm_cell_881/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_881/add_1AddV2while/lstm_cell_881/mul:z:0while/lstm_cell_881/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_881/Sigmoid_2Sigmoid"while/lstm_cell_881/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_881/Relu_1Reluwhile/lstm_cell_881/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_881/mul_2Mul!while/lstm_cell_881/Sigmoid_2:y:0(while/lstm_cell_881/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_881/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_881/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_881/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_881/BiasAdd/ReadVariableOp*^while/lstm_cell_881/MatMul/ReadVariableOp,^while/lstm_cell_881/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_881_biasadd_readvariableop_resource5while_lstm_cell_881_biasadd_readvariableop_resource_0"n
4while_lstm_cell_881_matmul_1_readvariableop_resource6while_lstm_cell_881_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_881_matmul_readvariableop_resource4while_lstm_cell_881_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_881/BiasAdd/ReadVariableOp*while/lstm_cell_881/BiasAdd/ReadVariableOp2V
)while/lstm_cell_881/MatMul/ReadVariableOp)while/lstm_cell_881/MatMul/ReadVariableOp2Z
+while/lstm_cell_881/MatMul_1/ReadVariableOp+while/lstm_cell_881/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
F__inference_dense_293_layer_call_and_return_conditional_losses_5250876

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
?
*__inference_lstm_879_layer_call_fn_5249042

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
E__inference_lstm_879_layer_call_and_return_conditional_losses_5247040s
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
while_body_5250487
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_881_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_881_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_881_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_881_matmul_readvariableop_resource:2(F
4while_lstm_cell_881_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_881_biasadd_readvariableop_resource:(??*while/lstm_cell_881/BiasAdd/ReadVariableOp?)while/lstm_cell_881/MatMul/ReadVariableOp?+while/lstm_cell_881/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_881/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_881_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_881/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_881/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_881/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_881_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_881/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_881/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_881/addAddV2$while/lstm_cell_881/MatMul:product:0&while/lstm_cell_881/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_881/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_881_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_881/BiasAddBiasAddwhile/lstm_cell_881/add:z:02while/lstm_cell_881/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_881/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_881/splitSplit,while/lstm_cell_881/split/split_dim:output:0$while/lstm_cell_881/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_881/SigmoidSigmoid"while/lstm_cell_881/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_881/Sigmoid_1Sigmoid"while/lstm_cell_881/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_881/mulMul!while/lstm_cell_881/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_881/ReluRelu"while/lstm_cell_881/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_881/mul_1Mulwhile/lstm_cell_881/Sigmoid:y:0&while/lstm_cell_881/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_881/add_1AddV2while/lstm_cell_881/mul:z:0while/lstm_cell_881/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_881/Sigmoid_2Sigmoid"while/lstm_cell_881/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_881/Relu_1Reluwhile/lstm_cell_881/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_881/mul_2Mul!while/lstm_cell_881/Sigmoid_2:y:0(while/lstm_cell_881/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_881/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_881/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_881/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_881/BiasAdd/ReadVariableOp*^while/lstm_cell_881/MatMul/ReadVariableOp,^while/lstm_cell_881/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_881_biasadd_readvariableop_resource5while_lstm_cell_881_biasadd_readvariableop_resource_0"n
4while_lstm_cell_881_matmul_1_readvariableop_resource6while_lstm_cell_881_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_881_matmul_readvariableop_resource4while_lstm_cell_881_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_881/BiasAdd/ReadVariableOp*while/lstm_cell_881/BiasAdd/ReadVariableOp2V
)while/lstm_cell_881/MatMul/ReadVariableOp)while/lstm_cell_881/MatMul/ReadVariableOp2Z
+while/lstm_cell_881/MatMul_1/ReadVariableOp+while/lstm_cell_881/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_881_layer_call_fn_5250252
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
E__inference_lstm_881_layer_call_and_return_conditional_losses_5246691o
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
?
while_body_5250773
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_881_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_881_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_881_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_881_matmul_readvariableop_resource:2(F
4while_lstm_cell_881_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_881_biasadd_readvariableop_resource:(??*while/lstm_cell_881/BiasAdd/ReadVariableOp?)while/lstm_cell_881/MatMul/ReadVariableOp?+while/lstm_cell_881/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_881/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_881_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_881/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_881/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_881/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_881_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_881/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_881/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_881/addAddV2$while/lstm_cell_881/MatMul:product:0&while/lstm_cell_881/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_881/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_881_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_881/BiasAddBiasAddwhile/lstm_cell_881/add:z:02while/lstm_cell_881/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_881/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_881/splitSplit,while/lstm_cell_881/split/split_dim:output:0$while/lstm_cell_881/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_881/SigmoidSigmoid"while/lstm_cell_881/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_881/Sigmoid_1Sigmoid"while/lstm_cell_881/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_881/mulMul!while/lstm_cell_881/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_881/ReluRelu"while/lstm_cell_881/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_881/mul_1Mulwhile/lstm_cell_881/Sigmoid:y:0&while/lstm_cell_881/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_881/add_1AddV2while/lstm_cell_881/mul:z:0while/lstm_cell_881/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_881/Sigmoid_2Sigmoid"while/lstm_cell_881/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_881/Relu_1Reluwhile/lstm_cell_881/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_881/mul_2Mul!while/lstm_cell_881/Sigmoid_2:y:0(while/lstm_cell_881/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_881/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_881/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_881/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_881/BiasAdd/ReadVariableOp*^while/lstm_cell_881/MatMul/ReadVariableOp,^while/lstm_cell_881/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_881_biasadd_readvariableop_resource5while_lstm_cell_881_biasadd_readvariableop_resource_0"n
4while_lstm_cell_881_matmul_1_readvariableop_resource6while_lstm_cell_881_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_881_matmul_readvariableop_resource4while_lstm_cell_881_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_881/BiasAdd/ReadVariableOp*while/lstm_cell_881/BiasAdd/ReadVariableOp2V
)while/lstm_cell_881/MatMul/ReadVariableOp)while/lstm_cell_881/MatMul/ReadVariableOp2Z
+while/lstm_cell_881/MatMul_1/ReadVariableOp+while/lstm_cell_881/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_880_layer_call_and_return_conditional_losses_5246532

inputs(
lstm_cell_880_5246450:	d?(
lstm_cell_880_5246452:	2?$
lstm_cell_880_5246454:	?
identity??%lstm_cell_880/StatefulPartitionedCall?while;
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
%lstm_cell_880/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_880_5246450lstm_cell_880_5246452lstm_cell_880_5246454*
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
J__inference_lstm_cell_880_layer_call_and_return_conditional_losses_5246404n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_880_5246450lstm_cell_880_5246452lstm_cell_880_5246454*
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
while_body_5246463*
condR
while_cond_5246462*K
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
NoOpNoOp&^lstm_cell_880/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_880/StatefulPartitionedCall%lstm_cell_880/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?
?
while_cond_5246462
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5246462___redundant_placeholder05
1while_while_cond_5246462___redundant_placeholder15
1while_while_cond_5246462___redundant_placeholder25
1while_while_cond_5246462___redundant_placeholder3
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
E__inference_lstm_879_layer_call_and_return_conditional_losses_5247040

inputs?
,lstm_cell_879_matmul_readvariableop_resource:	?A
.lstm_cell_879_matmul_1_readvariableop_resource:	d?<
-lstm_cell_879_biasadd_readvariableop_resource:	?
identity??$lstm_cell_879/BiasAdd/ReadVariableOp?#lstm_cell_879/MatMul/ReadVariableOp?%lstm_cell_879/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_879/MatMul/ReadVariableOpReadVariableOp,lstm_cell_879_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_879/MatMulMatMulstrided_slice_2:output:0+lstm_cell_879/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_879/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_879_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_879/MatMul_1MatMulzeros:output:0-lstm_cell_879/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_879/addAddV2lstm_cell_879/MatMul:product:0 lstm_cell_879/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_879/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_879_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_879/BiasAddBiasAddlstm_cell_879/add:z:0,lstm_cell_879/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_879/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_879/splitSplit&lstm_cell_879/split/split_dim:output:0lstm_cell_879/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_879/SigmoidSigmoidlstm_cell_879/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_879/Sigmoid_1Sigmoidlstm_cell_879/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_879/mulMullstm_cell_879/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_879/ReluRelulstm_cell_879/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_879/mul_1Mullstm_cell_879/Sigmoid:y:0 lstm_cell_879/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_879/add_1AddV2lstm_cell_879/mul:z:0lstm_cell_879/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_879/Sigmoid_2Sigmoidlstm_cell_879/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_879/Relu_1Relulstm_cell_879/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_879/mul_2Mullstm_cell_879/Sigmoid_2:y:0"lstm_cell_879/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_879_matmul_readvariableop_resource.lstm_cell_879_matmul_1_readvariableop_resource-lstm_cell_879_biasadd_readvariableop_resource*
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
while_body_5246956*
condR
while_cond_5246955*K
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
NoOpNoOp%^lstm_cell_879/BiasAdd/ReadVariableOp$^lstm_cell_879/MatMul/ReadVariableOp&^lstm_cell_879/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_879/BiasAdd/ReadVariableOp$lstm_cell_879/BiasAdd/ReadVariableOp2J
#lstm_cell_879/MatMul/ReadVariableOp#lstm_cell_879/MatMul/ReadVariableOp2N
%lstm_cell_879/MatMul_1/ReadVariableOp%lstm_cell_879/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_5246955
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5246955___redundant_placeholder05
1while_while_cond_5246955___redundant_placeholder15
1while_while_cond_5246955___redundant_placeholder25
1while_while_cond_5246955___redundant_placeholder3
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
while_cond_5249727
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5249727___redundant_placeholder05
1while_while_cond_5249727___redundant_placeholder15
1while_while_cond_5249727___redundant_placeholder25
1while_while_cond_5249727___redundant_placeholder3
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
E__inference_lstm_879_layer_call_and_return_conditional_losses_5245991

inputs(
lstm_cell_879_5245909:	?(
lstm_cell_879_5245911:	d?$
lstm_cell_879_5245913:	?
identity??%lstm_cell_879/StatefulPartitionedCall?while;
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
%lstm_cell_879/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_879_5245909lstm_cell_879_5245911lstm_cell_879_5245913*
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
J__inference_lstm_cell_879_layer_call_and_return_conditional_losses_5245908n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_879_5245909lstm_cell_879_5245911lstm_cell_879_5245913*
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
while_body_5245922*
condR
while_cond_5245921*K
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
NoOpNoOp&^lstm_cell_879/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_879/StatefulPartitionedCall%lstm_cell_879/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?J
?
E__inference_lstm_881_layer_call_and_return_conditional_losses_5247556

inputs>
,lstm_cell_881_matmul_readvariableop_resource:2(@
.lstm_cell_881_matmul_1_readvariableop_resource:
(;
-lstm_cell_881_biasadd_readvariableop_resource:(
identity??$lstm_cell_881/BiasAdd/ReadVariableOp?#lstm_cell_881/MatMul/ReadVariableOp?%lstm_cell_881/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_881/MatMul/ReadVariableOpReadVariableOp,lstm_cell_881_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_881/MatMulMatMulstrided_slice_2:output:0+lstm_cell_881/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_881/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_881_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_881/MatMul_1MatMulzeros:output:0-lstm_cell_881/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_881/addAddV2lstm_cell_881/MatMul:product:0 lstm_cell_881/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_881/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_881_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_881/BiasAddBiasAddlstm_cell_881/add:z:0,lstm_cell_881/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_881/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_881/splitSplit&lstm_cell_881/split/split_dim:output:0lstm_cell_881/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_881/SigmoidSigmoidlstm_cell_881/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_881/Sigmoid_1Sigmoidlstm_cell_881/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_881/mulMullstm_cell_881/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_881/ReluRelulstm_cell_881/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_881/mul_1Mullstm_cell_881/Sigmoid:y:0 lstm_cell_881/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_881/add_1AddV2lstm_cell_881/mul:z:0lstm_cell_881/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_881/Sigmoid_2Sigmoidlstm_cell_881/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_881/Relu_1Relulstm_cell_881/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_881/mul_2Mullstm_cell_881/Sigmoid_2:y:0"lstm_cell_881/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_881_matmul_readvariableop_resource.lstm_cell_881_matmul_1_readvariableop_resource-lstm_cell_881_biasadd_readvariableop_resource*
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
while_body_5247472*
condR
while_cond_5247471*K
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
NoOpNoOp%^lstm_cell_881/BiasAdd/ReadVariableOp$^lstm_cell_881/MatMul/ReadVariableOp&^lstm_cell_881/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_881/BiasAdd/ReadVariableOp$lstm_cell_881/BiasAdd/ReadVariableOp2J
#lstm_cell_881/MatMul/ReadVariableOp#lstm_cell_881/MatMul/ReadVariableOp2N
%lstm_cell_881/MatMul_1/ReadVariableOp%lstm_cell_881/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?8
?
while_body_5249541
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_879_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_879_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_879_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_879_matmul_readvariableop_resource:	?G
4while_lstm_cell_879_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_879_biasadd_readvariableop_resource:	???*while/lstm_cell_879/BiasAdd/ReadVariableOp?)while/lstm_cell_879/MatMul/ReadVariableOp?+while/lstm_cell_879/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_879/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_879_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_879/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_879/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_879/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_879_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_879/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_879/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_879/addAddV2$while/lstm_cell_879/MatMul:product:0&while/lstm_cell_879/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_879/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_879_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_879/BiasAddBiasAddwhile/lstm_cell_879/add:z:02while/lstm_cell_879/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_879/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_879/splitSplit,while/lstm_cell_879/split/split_dim:output:0$while/lstm_cell_879/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_879/SigmoidSigmoid"while/lstm_cell_879/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_879/Sigmoid_1Sigmoid"while/lstm_cell_879/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_879/mulMul!while/lstm_cell_879/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_879/ReluRelu"while/lstm_cell_879/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_879/mul_1Mulwhile/lstm_cell_879/Sigmoid:y:0&while/lstm_cell_879/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_879/add_1AddV2while/lstm_cell_879/mul:z:0while/lstm_cell_879/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_879/Sigmoid_2Sigmoid"while/lstm_cell_879/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_879/Relu_1Reluwhile/lstm_cell_879/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_879/mul_2Mul!while/lstm_cell_879/Sigmoid_2:y:0(while/lstm_cell_879/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_879/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_879/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_879/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_879/BiasAdd/ReadVariableOp*^while/lstm_cell_879/MatMul/ReadVariableOp,^while/lstm_cell_879/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_879_biasadd_readvariableop_resource5while_lstm_cell_879_biasadd_readvariableop_resource_0"n
4while_lstm_cell_879_matmul_1_readvariableop_resource6while_lstm_cell_879_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_879_matmul_readvariableop_resource4while_lstm_cell_879_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_879/BiasAdd/ReadVariableOp*while/lstm_cell_879/BiasAdd/ReadVariableOp2V
)while/lstm_cell_879/MatMul/ReadVariableOp)while/lstm_cell_879/MatMul/ReadVariableOp2Z
+while/lstm_cell_879/MatMul_1/ReadVariableOp+while/lstm_cell_879/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_5247256
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_881_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_881_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_881_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_881_matmul_readvariableop_resource:2(F
4while_lstm_cell_881_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_881_biasadd_readvariableop_resource:(??*while/lstm_cell_881/BiasAdd/ReadVariableOp?)while/lstm_cell_881/MatMul/ReadVariableOp?+while/lstm_cell_881/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_881/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_881_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_881/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_881/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_881/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_881_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_881/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_881/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_881/addAddV2$while/lstm_cell_881/MatMul:product:0&while/lstm_cell_881/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_881/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_881_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_881/BiasAddBiasAddwhile/lstm_cell_881/add:z:02while/lstm_cell_881/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_881/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_881/splitSplit,while/lstm_cell_881/split/split_dim:output:0$while/lstm_cell_881/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_881/SigmoidSigmoid"while/lstm_cell_881/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_881/Sigmoid_1Sigmoid"while/lstm_cell_881/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_881/mulMul!while/lstm_cell_881/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_881/ReluRelu"while/lstm_cell_881/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_881/mul_1Mulwhile/lstm_cell_881/Sigmoid:y:0&while/lstm_cell_881/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_881/add_1AddV2while/lstm_cell_881/mul:z:0while/lstm_cell_881/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_881/Sigmoid_2Sigmoid"while/lstm_cell_881/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_881/Relu_1Reluwhile/lstm_cell_881/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_881/mul_2Mul!while/lstm_cell_881/Sigmoid_2:y:0(while/lstm_cell_881/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_881/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_881/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_881/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_881/BiasAdd/ReadVariableOp*^while/lstm_cell_881/MatMul/ReadVariableOp,^while/lstm_cell_881/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_881_biasadd_readvariableop_resource5while_lstm_cell_881_biasadd_readvariableop_resource_0"n
4while_lstm_cell_881_matmul_1_readvariableop_resource6while_lstm_cell_881_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_881_matmul_readvariableop_resource4while_lstm_cell_881_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_881/BiasAdd/ReadVariableOp*while/lstm_cell_881/BiasAdd/ReadVariableOp2V
)while/lstm_cell_881/MatMul/ReadVariableOp)while/lstm_cell_881/MatMul/ReadVariableOp2Z
+while/lstm_cell_881/MatMul_1/ReadVariableOp+while/lstm_cell_881/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_5246621
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5246621___redundant_placeholder05
1while_while_cond_5246621___redundant_placeholder15
1while_while_cond_5246621___redundant_placeholder25
1while_while_cond_5246621___redundant_placeholder3
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
while_cond_5246271
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5246271___redundant_placeholder05
1while_while_cond_5246271___redundant_placeholder15
1while_while_cond_5246271___redundant_placeholder25
1while_while_cond_5246271___redundant_placeholder3
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
while_body_5247637
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_880_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_880_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_880_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_880_matmul_readvariableop_resource:	d?G
4while_lstm_cell_880_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_880_biasadd_readvariableop_resource:	???*while/lstm_cell_880/BiasAdd/ReadVariableOp?)while/lstm_cell_880/MatMul/ReadVariableOp?+while/lstm_cell_880/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_880/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_880_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_880/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_880/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_880/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_880_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_880/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_880/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_880/addAddV2$while/lstm_cell_880/MatMul:product:0&while/lstm_cell_880/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_880/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_880_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_880/BiasAddBiasAddwhile/lstm_cell_880/add:z:02while/lstm_cell_880/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_880/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_880/splitSplit,while/lstm_cell_880/split/split_dim:output:0$while/lstm_cell_880/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_880/SigmoidSigmoid"while/lstm_cell_880/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_880/Sigmoid_1Sigmoid"while/lstm_cell_880/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_880/mulMul!while/lstm_cell_880/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_880/ReluRelu"while/lstm_cell_880/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_880/mul_1Mulwhile/lstm_cell_880/Sigmoid:y:0&while/lstm_cell_880/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_880/add_1AddV2while/lstm_cell_880/mul:z:0while/lstm_cell_880/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_880/Sigmoid_2Sigmoid"while/lstm_cell_880/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_880/Relu_1Reluwhile/lstm_cell_880/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_880/mul_2Mul!while/lstm_cell_880/Sigmoid_2:y:0(while/lstm_cell_880/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_880/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_880/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_880/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_880/BiasAdd/ReadVariableOp*^while/lstm_cell_880/MatMul/ReadVariableOp,^while/lstm_cell_880/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_880_biasadd_readvariableop_resource5while_lstm_cell_880_biasadd_readvariableop_resource_0"n
4while_lstm_cell_880_matmul_1_readvariableop_resource6while_lstm_cell_880_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_880_matmul_readvariableop_resource4while_lstm_cell_880_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_880/BiasAdd/ReadVariableOp*while/lstm_cell_880/BiasAdd/ReadVariableOp2V
)while/lstm_cell_880/MatMul/ReadVariableOp)while/lstm_cell_880/MatMul/ReadVariableOp2Z
+while/lstm_cell_880/MatMul_1/ReadVariableOp+while/lstm_cell_880/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_880_layer_call_and_return_conditional_losses_5251040

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
while_cond_5250343
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5250343___redundant_placeholder05
1while_while_cond_5250343___redundant_placeholder15
1while_while_cond_5250343___redundant_placeholder25
1while_while_cond_5250343___redundant_placeholder3
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
J__inference_lstm_cell_879_layer_call_and_return_conditional_losses_5245908

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
?
E__inference_lstm_881_layer_call_and_return_conditional_losses_5246882

inputs'
lstm_cell_881_5246800:2('
lstm_cell_881_5246802:
(#
lstm_cell_881_5246804:(
identity??%lstm_cell_881/StatefulPartitionedCall?while;
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
%lstm_cell_881/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_881_5246800lstm_cell_881_5246802lstm_cell_881_5246804*
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
J__inference_lstm_cell_881_layer_call_and_return_conditional_losses_5246754n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_881_5246800lstm_cell_881_5246802lstm_cell_881_5246804*
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
while_body_5246813*
condR
while_cond_5246812*K
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
NoOpNoOp&^lstm_cell_881/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_881/StatefulPartitionedCall%lstm_cell_881/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?C
?

lstm_880_while_body_5248780.
*lstm_880_while_lstm_880_while_loop_counter4
0lstm_880_while_lstm_880_while_maximum_iterations
lstm_880_while_placeholder 
lstm_880_while_placeholder_1 
lstm_880_while_placeholder_2 
lstm_880_while_placeholder_3-
)lstm_880_while_lstm_880_strided_slice_1_0i
elstm_880_while_tensorarrayv2read_tensorlistgetitem_lstm_880_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_880_while_lstm_cell_880_matmul_readvariableop_resource_0:	d?R
?lstm_880_while_lstm_cell_880_matmul_1_readvariableop_resource_0:	2?M
>lstm_880_while_lstm_cell_880_biasadd_readvariableop_resource_0:	?
lstm_880_while_identity
lstm_880_while_identity_1
lstm_880_while_identity_2
lstm_880_while_identity_3
lstm_880_while_identity_4
lstm_880_while_identity_5+
'lstm_880_while_lstm_880_strided_slice_1g
clstm_880_while_tensorarrayv2read_tensorlistgetitem_lstm_880_tensorarrayunstack_tensorlistfromtensorN
;lstm_880_while_lstm_cell_880_matmul_readvariableop_resource:	d?P
=lstm_880_while_lstm_cell_880_matmul_1_readvariableop_resource:	2?K
<lstm_880_while_lstm_cell_880_biasadd_readvariableop_resource:	???3lstm_880/while/lstm_cell_880/BiasAdd/ReadVariableOp?2lstm_880/while/lstm_cell_880/MatMul/ReadVariableOp?4lstm_880/while/lstm_cell_880/MatMul_1/ReadVariableOp?
@lstm_880/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_880/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_880_while_tensorarrayv2read_tensorlistgetitem_lstm_880_tensorarrayunstack_tensorlistfromtensor_0lstm_880_while_placeholderIlstm_880/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_880/while/lstm_cell_880/MatMul/ReadVariableOpReadVariableOp=lstm_880_while_lstm_cell_880_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_880/while/lstm_cell_880/MatMulMatMul9lstm_880/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_880/while/lstm_cell_880/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_880/while/lstm_cell_880/MatMul_1/ReadVariableOpReadVariableOp?lstm_880_while_lstm_cell_880_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_880/while/lstm_cell_880/MatMul_1MatMullstm_880_while_placeholder_2<lstm_880/while/lstm_cell_880/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_880/while/lstm_cell_880/addAddV2-lstm_880/while/lstm_cell_880/MatMul:product:0/lstm_880/while/lstm_cell_880/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_880/while/lstm_cell_880/BiasAdd/ReadVariableOpReadVariableOp>lstm_880_while_lstm_cell_880_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_880/while/lstm_cell_880/BiasAddBiasAdd$lstm_880/while/lstm_cell_880/add:z:0;lstm_880/while/lstm_cell_880/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_880/while/lstm_cell_880/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_880/while/lstm_cell_880/splitSplit5lstm_880/while/lstm_cell_880/split/split_dim:output:0-lstm_880/while/lstm_cell_880/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_880/while/lstm_cell_880/SigmoidSigmoid+lstm_880/while/lstm_cell_880/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_880/while/lstm_cell_880/Sigmoid_1Sigmoid+lstm_880/while/lstm_cell_880/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_880/while/lstm_cell_880/mulMul*lstm_880/while/lstm_cell_880/Sigmoid_1:y:0lstm_880_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_880/while/lstm_cell_880/ReluRelu+lstm_880/while/lstm_cell_880/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_880/while/lstm_cell_880/mul_1Mul(lstm_880/while/lstm_cell_880/Sigmoid:y:0/lstm_880/while/lstm_cell_880/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_880/while/lstm_cell_880/add_1AddV2$lstm_880/while/lstm_cell_880/mul:z:0&lstm_880/while/lstm_cell_880/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_880/while/lstm_cell_880/Sigmoid_2Sigmoid+lstm_880/while/lstm_cell_880/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_880/while/lstm_cell_880/Relu_1Relu&lstm_880/while/lstm_cell_880/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_880/while/lstm_cell_880/mul_2Mul*lstm_880/while/lstm_cell_880/Sigmoid_2:y:01lstm_880/while/lstm_cell_880/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_880/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_880_while_placeholder_1lstm_880_while_placeholder&lstm_880/while/lstm_cell_880/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_880/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_880/while/addAddV2lstm_880_while_placeholderlstm_880/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_880/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_880/while/add_1AddV2*lstm_880_while_lstm_880_while_loop_counterlstm_880/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_880/while/IdentityIdentitylstm_880/while/add_1:z:0^lstm_880/while/NoOp*
T0*
_output_shapes
: ?
lstm_880/while/Identity_1Identity0lstm_880_while_lstm_880_while_maximum_iterations^lstm_880/while/NoOp*
T0*
_output_shapes
: t
lstm_880/while/Identity_2Identitylstm_880/while/add:z:0^lstm_880/while/NoOp*
T0*
_output_shapes
: ?
lstm_880/while/Identity_3IdentityClstm_880/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_880/while/NoOp*
T0*
_output_shapes
: ?
lstm_880/while/Identity_4Identity&lstm_880/while/lstm_cell_880/mul_2:z:0^lstm_880/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_880/while/Identity_5Identity&lstm_880/while/lstm_cell_880/add_1:z:0^lstm_880/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_880/while/NoOpNoOp4^lstm_880/while/lstm_cell_880/BiasAdd/ReadVariableOp3^lstm_880/while/lstm_cell_880/MatMul/ReadVariableOp5^lstm_880/while/lstm_cell_880/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_880_while_identity lstm_880/while/Identity:output:0"?
lstm_880_while_identity_1"lstm_880/while/Identity_1:output:0"?
lstm_880_while_identity_2"lstm_880/while/Identity_2:output:0"?
lstm_880_while_identity_3"lstm_880/while/Identity_3:output:0"?
lstm_880_while_identity_4"lstm_880/while/Identity_4:output:0"?
lstm_880_while_identity_5"lstm_880/while/Identity_5:output:0"T
'lstm_880_while_lstm_880_strided_slice_1)lstm_880_while_lstm_880_strided_slice_1_0"~
<lstm_880_while_lstm_cell_880_biasadd_readvariableop_resource>lstm_880_while_lstm_cell_880_biasadd_readvariableop_resource_0"?
=lstm_880_while_lstm_cell_880_matmul_1_readvariableop_resource?lstm_880_while_lstm_cell_880_matmul_1_readvariableop_resource_0"|
;lstm_880_while_lstm_cell_880_matmul_readvariableop_resource=lstm_880_while_lstm_cell_880_matmul_readvariableop_resource_0"?
clstm_880_while_tensorarrayv2read_tensorlistgetitem_lstm_880_tensorarrayunstack_tensorlistfromtensorelstm_880_while_tensorarrayv2read_tensorlistgetitem_lstm_880_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_880/while/lstm_cell_880/BiasAdd/ReadVariableOp3lstm_880/while/lstm_cell_880/BiasAdd/ReadVariableOp2h
2lstm_880/while/lstm_cell_880/MatMul/ReadVariableOp2lstm_880/while/lstm_cell_880/MatMul/ReadVariableOp2l
4lstm_880/while/lstm_cell_880/MatMul_1/ReadVariableOp4lstm_880/while/lstm_cell_880/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_881_while_cond_5248918.
*lstm_881_while_lstm_881_while_loop_counter4
0lstm_881_while_lstm_881_while_maximum_iterations
lstm_881_while_placeholder 
lstm_881_while_placeholder_1 
lstm_881_while_placeholder_2 
lstm_881_while_placeholder_30
,lstm_881_while_less_lstm_881_strided_slice_1G
Clstm_881_while_lstm_881_while_cond_5248918___redundant_placeholder0G
Clstm_881_while_lstm_881_while_cond_5248918___redundant_placeholder1G
Clstm_881_while_lstm_881_while_cond_5248918___redundant_placeholder2G
Clstm_881_while_lstm_881_while_cond_5248918___redundant_placeholder3
lstm_881_while_identity
?
lstm_881/while/LessLesslstm_881_while_placeholder,lstm_881_while_less_lstm_881_strided_slice_1*
T0*
_output_shapes
: ]
lstm_881/while/IdentityIdentitylstm_881/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_881_while_identity lstm_881/while/Identity:output:0*(
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
while_cond_5247105
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5247105___redundant_placeholder05
1while_while_cond_5247105___redundant_placeholder15
1while_while_cond_5247105___redundant_placeholder25
1while_while_cond_5247105___redundant_placeholder3
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
*__inference_lstm_881_layer_call_fn_5250274

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
E__inference_lstm_881_layer_call_and_return_conditional_losses_5247340o
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
J__inference_lstm_cell_881_layer_call_and_return_conditional_losses_5251138

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
while_body_5249871
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_880_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_880_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_880_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_880_matmul_readvariableop_resource:	d?G
4while_lstm_cell_880_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_880_biasadd_readvariableop_resource:	???*while/lstm_cell_880/BiasAdd/ReadVariableOp?)while/lstm_cell_880/MatMul/ReadVariableOp?+while/lstm_cell_880/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_880/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_880_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_880/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_880/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_880/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_880_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_880/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_880/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_880/addAddV2$while/lstm_cell_880/MatMul:product:0&while/lstm_cell_880/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_880/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_880_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_880/BiasAddBiasAddwhile/lstm_cell_880/add:z:02while/lstm_cell_880/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_880/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_880/splitSplit,while/lstm_cell_880/split/split_dim:output:0$while/lstm_cell_880/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_880/SigmoidSigmoid"while/lstm_cell_880/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_880/Sigmoid_1Sigmoid"while/lstm_cell_880/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_880/mulMul!while/lstm_cell_880/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_880/ReluRelu"while/lstm_cell_880/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_880/mul_1Mulwhile/lstm_cell_880/Sigmoid:y:0&while/lstm_cell_880/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_880/add_1AddV2while/lstm_cell_880/mul:z:0while/lstm_cell_880/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_880/Sigmoid_2Sigmoid"while/lstm_cell_880/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_880/Relu_1Reluwhile/lstm_cell_880/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_880/mul_2Mul!while/lstm_cell_880/Sigmoid_2:y:0(while/lstm_cell_880/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_880/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_880/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_880/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_880/BiasAdd/ReadVariableOp*^while/lstm_cell_880/MatMul/ReadVariableOp,^while/lstm_cell_880/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_880_biasadd_readvariableop_resource5while_lstm_cell_880_biasadd_readvariableop_resource_0"n
4while_lstm_cell_880_matmul_1_readvariableop_resource6while_lstm_cell_880_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_880_matmul_readvariableop_resource4while_lstm_cell_880_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_880/BiasAdd/ReadVariableOp*while/lstm_cell_880/BiasAdd/ReadVariableOp2V
)while/lstm_cell_880/MatMul/ReadVariableOp)while/lstm_cell_880/MatMul/ReadVariableOp2Z
+while/lstm_cell_880/MatMul_1/ReadVariableOp+while/lstm_cell_880/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_881_layer_call_and_return_conditional_losses_5246691

inputs'
lstm_cell_881_5246609:2('
lstm_cell_881_5246611:
(#
lstm_cell_881_5246613:(
identity??%lstm_cell_881/StatefulPartitionedCall?while;
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
%lstm_cell_881/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_881_5246609lstm_cell_881_5246611lstm_cell_881_5246613*
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
J__inference_lstm_cell_881_layer_call_and_return_conditional_losses_5246608n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_881_5246609lstm_cell_881_5246611lstm_cell_881_5246613*
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
while_body_5246622*
condR
while_cond_5246621*K
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
NoOpNoOp&^lstm_cell_881/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_881/StatefulPartitionedCall%lstm_cell_881/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?8
?
while_body_5249255
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_879_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_879_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_879_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_879_matmul_readvariableop_resource:	?G
4while_lstm_cell_879_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_879_biasadd_readvariableop_resource:	???*while/lstm_cell_879/BiasAdd/ReadVariableOp?)while/lstm_cell_879/MatMul/ReadVariableOp?+while/lstm_cell_879/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_879/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_879_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_879/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_879/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_879/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_879_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_879/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_879/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_879/addAddV2$while/lstm_cell_879/MatMul:product:0&while/lstm_cell_879/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_879/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_879_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_879/BiasAddBiasAddwhile/lstm_cell_879/add:z:02while/lstm_cell_879/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_879/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_879/splitSplit,while/lstm_cell_879/split/split_dim:output:0$while/lstm_cell_879/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_879/SigmoidSigmoid"while/lstm_cell_879/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_879/Sigmoid_1Sigmoid"while/lstm_cell_879/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_879/mulMul!while/lstm_cell_879/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_879/ReluRelu"while/lstm_cell_879/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_879/mul_1Mulwhile/lstm_cell_879/Sigmoid:y:0&while/lstm_cell_879/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_879/add_1AddV2while/lstm_cell_879/mul:z:0while/lstm_cell_879/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_879/Sigmoid_2Sigmoid"while/lstm_cell_879/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_879/Relu_1Reluwhile/lstm_cell_879/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_879/mul_2Mul!while/lstm_cell_879/Sigmoid_2:y:0(while/lstm_cell_879/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_879/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_879/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_879/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_879/BiasAdd/ReadVariableOp*^while/lstm_cell_879/MatMul/ReadVariableOp,^while/lstm_cell_879/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_879_biasadd_readvariableop_resource5while_lstm_cell_879_biasadd_readvariableop_resource_0"n
4while_lstm_cell_879_matmul_1_readvariableop_resource6while_lstm_cell_879_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_879_matmul_readvariableop_resource4while_lstm_cell_879_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_879/BiasAdd/ReadVariableOp*while/lstm_cell_879/BiasAdd/ReadVariableOp2V
)while/lstm_cell_879/MatMul/ReadVariableOp)while/lstm_cell_879/MatMul/ReadVariableOp2Z
+while/lstm_cell_879/MatMul_1/ReadVariableOp+while/lstm_cell_879/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_879_layer_call_and_return_conditional_losses_5250942

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
/__inference_lstm_cell_879_layer_call_fn_5250893

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
J__inference_lstm_cell_879_layer_call_and_return_conditional_losses_5245908o
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
?
F__inference_dense_293_layer_call_and_return_conditional_losses_5247358

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
?
*__inference_lstm_880_layer_call_fn_5249647
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
E__inference_lstm_880_layer_call_and_return_conditional_losses_5246532|
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
while_body_5250157
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_880_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_880_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_880_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_880_matmul_readvariableop_resource:	d?G
4while_lstm_cell_880_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_880_biasadd_readvariableop_resource:	???*while/lstm_cell_880/BiasAdd/ReadVariableOp?)while/lstm_cell_880/MatMul/ReadVariableOp?+while/lstm_cell_880/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_880/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_880_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_880/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_880/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_880/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_880_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_880/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_880/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_880/addAddV2$while/lstm_cell_880/MatMul:product:0&while/lstm_cell_880/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_880/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_880_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_880/BiasAddBiasAddwhile/lstm_cell_880/add:z:02while/lstm_cell_880/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_880/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_880/splitSplit,while/lstm_cell_880/split/split_dim:output:0$while/lstm_cell_880/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_880/SigmoidSigmoid"while/lstm_cell_880/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_880/Sigmoid_1Sigmoid"while/lstm_cell_880/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_880/mulMul!while/lstm_cell_880/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_880/ReluRelu"while/lstm_cell_880/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_880/mul_1Mulwhile/lstm_cell_880/Sigmoid:y:0&while/lstm_cell_880/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_880/add_1AddV2while/lstm_cell_880/mul:z:0while/lstm_cell_880/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_880/Sigmoid_2Sigmoid"while/lstm_cell_880/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_880/Relu_1Reluwhile/lstm_cell_880/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_880/mul_2Mul!while/lstm_cell_880/Sigmoid_2:y:0(while/lstm_cell_880/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_880/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_880/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_880/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_880/BiasAdd/ReadVariableOp*^while/lstm_cell_880/MatMul/ReadVariableOp,^while/lstm_cell_880/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_880_biasadd_readvariableop_resource5while_lstm_cell_880_biasadd_readvariableop_resource_0"n
4while_lstm_cell_880_matmul_1_readvariableop_resource6while_lstm_cell_880_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_880_matmul_readvariableop_resource4while_lstm_cell_880_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_880/BiasAdd/ReadVariableOp*while/lstm_cell_880/BiasAdd/ReadVariableOp2V
)while/lstm_cell_880/MatMul/ReadVariableOp)while/lstm_cell_880/MatMul/ReadVariableOp2Z
+while/lstm_cell_880/MatMul_1/ReadVariableOp+while/lstm_cell_880/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_880_layer_call_and_return_conditional_losses_5247721

inputs?
,lstm_cell_880_matmul_readvariableop_resource:	d?A
.lstm_cell_880_matmul_1_readvariableop_resource:	2?<
-lstm_cell_880_biasadd_readvariableop_resource:	?
identity??$lstm_cell_880/BiasAdd/ReadVariableOp?#lstm_cell_880/MatMul/ReadVariableOp?%lstm_cell_880/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_880/MatMul/ReadVariableOpReadVariableOp,lstm_cell_880_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_880/MatMulMatMulstrided_slice_2:output:0+lstm_cell_880/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_880/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_880_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_880/MatMul_1MatMulzeros:output:0-lstm_cell_880/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_880/addAddV2lstm_cell_880/MatMul:product:0 lstm_cell_880/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_880/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_880_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_880/BiasAddBiasAddlstm_cell_880/add:z:0,lstm_cell_880/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_880/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_880/splitSplit&lstm_cell_880/split/split_dim:output:0lstm_cell_880/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_880/SigmoidSigmoidlstm_cell_880/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_880/Sigmoid_1Sigmoidlstm_cell_880/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_880/mulMullstm_cell_880/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_880/ReluRelulstm_cell_880/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_880/mul_1Mullstm_cell_880/Sigmoid:y:0 lstm_cell_880/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_880/add_1AddV2lstm_cell_880/mul:z:0lstm_cell_880/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_880/Sigmoid_2Sigmoidlstm_cell_880/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_880/Relu_1Relulstm_cell_880/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_880/mul_2Mullstm_cell_880/Sigmoid_2:y:0"lstm_cell_880/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_880_matmul_readvariableop_resource.lstm_cell_880_matmul_1_readvariableop_resource-lstm_cell_880_biasadd_readvariableop_resource*
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
while_body_5247637*
condR
while_cond_5247636*K
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
NoOpNoOp%^lstm_cell_880/BiasAdd/ReadVariableOp$^lstm_cell_880/MatMul/ReadVariableOp&^lstm_cell_880/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_880/BiasAdd/ReadVariableOp$lstm_cell_880/BiasAdd/ReadVariableOp2J
#lstm_cell_880/MatMul/ReadVariableOp#lstm_cell_880/MatMul/ReadVariableOp2N
%lstm_cell_880/MatMul_1/ReadVariableOp%lstm_cell_880/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?K
?
E__inference_lstm_880_layer_call_and_return_conditional_losses_5249955
inputs_0?
,lstm_cell_880_matmul_readvariableop_resource:	d?A
.lstm_cell_880_matmul_1_readvariableop_resource:	2?<
-lstm_cell_880_biasadd_readvariableop_resource:	?
identity??$lstm_cell_880/BiasAdd/ReadVariableOp?#lstm_cell_880/MatMul/ReadVariableOp?%lstm_cell_880/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_880/MatMul/ReadVariableOpReadVariableOp,lstm_cell_880_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_880/MatMulMatMulstrided_slice_2:output:0+lstm_cell_880/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_880/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_880_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_880/MatMul_1MatMulzeros:output:0-lstm_cell_880/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_880/addAddV2lstm_cell_880/MatMul:product:0 lstm_cell_880/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_880/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_880_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_880/BiasAddBiasAddlstm_cell_880/add:z:0,lstm_cell_880/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_880/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_880/splitSplit&lstm_cell_880/split/split_dim:output:0lstm_cell_880/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_880/SigmoidSigmoidlstm_cell_880/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_880/Sigmoid_1Sigmoidlstm_cell_880/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_880/mulMullstm_cell_880/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_880/ReluRelulstm_cell_880/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_880/mul_1Mullstm_cell_880/Sigmoid:y:0 lstm_cell_880/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_880/add_1AddV2lstm_cell_880/mul:z:0lstm_cell_880/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_880/Sigmoid_2Sigmoidlstm_cell_880/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_880/Relu_1Relulstm_cell_880/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_880/mul_2Mullstm_cell_880/Sigmoid_2:y:0"lstm_cell_880/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_880_matmul_readvariableop_resource.lstm_cell_880_matmul_1_readvariableop_resource-lstm_cell_880_biasadd_readvariableop_resource*
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
while_body_5249871*
condR
while_cond_5249870*K
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
NoOpNoOp%^lstm_cell_880/BiasAdd/ReadVariableOp$^lstm_cell_880/MatMul/ReadVariableOp&^lstm_cell_880/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_880/BiasAdd/ReadVariableOp$lstm_cell_880/BiasAdd/ReadVariableOp2J
#lstm_cell_880/MatMul/ReadVariableOp#lstm_cell_880/MatMul/ReadVariableOp2N
%lstm_cell_880/MatMul_1/ReadVariableOp%lstm_cell_880/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?J
?
E__inference_lstm_879_layer_call_and_return_conditional_losses_5249625

inputs?
,lstm_cell_879_matmul_readvariableop_resource:	?A
.lstm_cell_879_matmul_1_readvariableop_resource:	d?<
-lstm_cell_879_biasadd_readvariableop_resource:	?
identity??$lstm_cell_879/BiasAdd/ReadVariableOp?#lstm_cell_879/MatMul/ReadVariableOp?%lstm_cell_879/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_879/MatMul/ReadVariableOpReadVariableOp,lstm_cell_879_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_879/MatMulMatMulstrided_slice_2:output:0+lstm_cell_879/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_879/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_879_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_879/MatMul_1MatMulzeros:output:0-lstm_cell_879/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_879/addAddV2lstm_cell_879/MatMul:product:0 lstm_cell_879/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_879/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_879_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_879/BiasAddBiasAddlstm_cell_879/add:z:0,lstm_cell_879/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_879/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_879/splitSplit&lstm_cell_879/split/split_dim:output:0lstm_cell_879/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_879/SigmoidSigmoidlstm_cell_879/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_879/Sigmoid_1Sigmoidlstm_cell_879/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_879/mulMullstm_cell_879/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_879/ReluRelulstm_cell_879/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_879/mul_1Mullstm_cell_879/Sigmoid:y:0 lstm_cell_879/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_879/add_1AddV2lstm_cell_879/mul:z:0lstm_cell_879/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_879/Sigmoid_2Sigmoidlstm_cell_879/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_879/Relu_1Relulstm_cell_879/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_879/mul_2Mullstm_cell_879/Sigmoid_2:y:0"lstm_cell_879/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_879_matmul_readvariableop_resource.lstm_cell_879_matmul_1_readvariableop_resource-lstm_cell_879_biasadd_readvariableop_resource*
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
while_body_5249541*
condR
while_cond_5249540*K
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
NoOpNoOp%^lstm_cell_879/BiasAdd/ReadVariableOp$^lstm_cell_879/MatMul/ReadVariableOp&^lstm_cell_879/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_879/BiasAdd/ReadVariableOp$lstm_cell_879/BiasAdd/ReadVariableOp2J
#lstm_cell_879/MatMul/ReadVariableOp#lstm_cell_879/MatMul/ReadVariableOp2N
%lstm_cell_879/MatMul_1/ReadVariableOp%lstm_cell_879/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?#
?
while_body_5246113
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_879_5246137_0:	?0
while_lstm_cell_879_5246139_0:	d?,
while_lstm_cell_879_5246141_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_879_5246137:	?.
while_lstm_cell_879_5246139:	d?*
while_lstm_cell_879_5246141:	???+while/lstm_cell_879/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_879/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_879_5246137_0while_lstm_cell_879_5246139_0while_lstm_cell_879_5246141_0*
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
J__inference_lstm_cell_879_layer_call_and_return_conditional_losses_5246054?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_879/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_879/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_879/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_879/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_879_5246137while_lstm_cell_879_5246137_0"<
while_lstm_cell_879_5246139while_lstm_cell_879_5246139_0"<
while_lstm_cell_879_5246141while_lstm_cell_879_5246141_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_879/StatefulPartitionedCall+while/lstm_cell_879/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_cond_5249254
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5249254___redundant_placeholder05
1while_while_cond_5249254___redundant_placeholder15
1while_while_cond_5249254___redundant_placeholder25
1while_while_cond_5249254___redundant_placeholder3
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
?
*sequential_293_lstm_879_while_cond_5245472L
Hsequential_293_lstm_879_while_sequential_293_lstm_879_while_loop_counterR
Nsequential_293_lstm_879_while_sequential_293_lstm_879_while_maximum_iterations-
)sequential_293_lstm_879_while_placeholder/
+sequential_293_lstm_879_while_placeholder_1/
+sequential_293_lstm_879_while_placeholder_2/
+sequential_293_lstm_879_while_placeholder_3N
Jsequential_293_lstm_879_while_less_sequential_293_lstm_879_strided_slice_1e
asequential_293_lstm_879_while_sequential_293_lstm_879_while_cond_5245472___redundant_placeholder0e
asequential_293_lstm_879_while_sequential_293_lstm_879_while_cond_5245472___redundant_placeholder1e
asequential_293_lstm_879_while_sequential_293_lstm_879_while_cond_5245472___redundant_placeholder2e
asequential_293_lstm_879_while_sequential_293_lstm_879_while_cond_5245472___redundant_placeholder3*
&sequential_293_lstm_879_while_identity
?
"sequential_293/lstm_879/while/LessLess)sequential_293_lstm_879_while_placeholderJsequential_293_lstm_879_while_less_sequential_293_lstm_879_strided_slice_1*
T0*
_output_shapes
: {
&sequential_293/lstm_879/while/IdentityIdentity&sequential_293/lstm_879/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_293_lstm_879_while_identity/sequential_293/lstm_879/while/Identity:output:0*(
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
while_cond_5250486
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5250486___redundant_placeholder05
1while_while_cond_5250486___redundant_placeholder15
1while_while_cond_5250486___redundant_placeholder25
1while_while_cond_5250486___redundant_placeholder3
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
while_body_5246272
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_880_5246296_0:	d?0
while_lstm_cell_880_5246298_0:	2?,
while_lstm_cell_880_5246300_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_880_5246296:	d?.
while_lstm_cell_880_5246298:	2?*
while_lstm_cell_880_5246300:	???+while/lstm_cell_880/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_880/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_880_5246296_0while_lstm_cell_880_5246298_0while_lstm_cell_880_5246300_0*
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
J__inference_lstm_cell_880_layer_call_and_return_conditional_losses_5246258?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_880/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_880/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_880/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_880/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_880_5246296while_lstm_cell_880_5246296_0"<
while_lstm_cell_880_5246298while_lstm_cell_880_5246298_0"<
while_lstm_cell_880_5246300while_lstm_cell_880_5246300_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_880/StatefulPartitionedCall+while/lstm_cell_880/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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

lstm_881_while_body_5248492.
*lstm_881_while_lstm_881_while_loop_counter4
0lstm_881_while_lstm_881_while_maximum_iterations
lstm_881_while_placeholder 
lstm_881_while_placeholder_1 
lstm_881_while_placeholder_2 
lstm_881_while_placeholder_3-
)lstm_881_while_lstm_881_strided_slice_1_0i
elstm_881_while_tensorarrayv2read_tensorlistgetitem_lstm_881_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_881_while_lstm_cell_881_matmul_readvariableop_resource_0:2(Q
?lstm_881_while_lstm_cell_881_matmul_1_readvariableop_resource_0:
(L
>lstm_881_while_lstm_cell_881_biasadd_readvariableop_resource_0:(
lstm_881_while_identity
lstm_881_while_identity_1
lstm_881_while_identity_2
lstm_881_while_identity_3
lstm_881_while_identity_4
lstm_881_while_identity_5+
'lstm_881_while_lstm_881_strided_slice_1g
clstm_881_while_tensorarrayv2read_tensorlistgetitem_lstm_881_tensorarrayunstack_tensorlistfromtensorM
;lstm_881_while_lstm_cell_881_matmul_readvariableop_resource:2(O
=lstm_881_while_lstm_cell_881_matmul_1_readvariableop_resource:
(J
<lstm_881_while_lstm_cell_881_biasadd_readvariableop_resource:(??3lstm_881/while/lstm_cell_881/BiasAdd/ReadVariableOp?2lstm_881/while/lstm_cell_881/MatMul/ReadVariableOp?4lstm_881/while/lstm_cell_881/MatMul_1/ReadVariableOp?
@lstm_881/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_881/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_881_while_tensorarrayv2read_tensorlistgetitem_lstm_881_tensorarrayunstack_tensorlistfromtensor_0lstm_881_while_placeholderIlstm_881/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_881/while/lstm_cell_881/MatMul/ReadVariableOpReadVariableOp=lstm_881_while_lstm_cell_881_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_881/while/lstm_cell_881/MatMulMatMul9lstm_881/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_881/while/lstm_cell_881/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_881/while/lstm_cell_881/MatMul_1/ReadVariableOpReadVariableOp?lstm_881_while_lstm_cell_881_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_881/while/lstm_cell_881/MatMul_1MatMullstm_881_while_placeholder_2<lstm_881/while/lstm_cell_881/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_881/while/lstm_cell_881/addAddV2-lstm_881/while/lstm_cell_881/MatMul:product:0/lstm_881/while/lstm_cell_881/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_881/while/lstm_cell_881/BiasAdd/ReadVariableOpReadVariableOp>lstm_881_while_lstm_cell_881_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_881/while/lstm_cell_881/BiasAddBiasAdd$lstm_881/while/lstm_cell_881/add:z:0;lstm_881/while/lstm_cell_881/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_881/while/lstm_cell_881/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_881/while/lstm_cell_881/splitSplit5lstm_881/while/lstm_cell_881/split/split_dim:output:0-lstm_881/while/lstm_cell_881/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_881/while/lstm_cell_881/SigmoidSigmoid+lstm_881/while/lstm_cell_881/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_881/while/lstm_cell_881/Sigmoid_1Sigmoid+lstm_881/while/lstm_cell_881/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_881/while/lstm_cell_881/mulMul*lstm_881/while/lstm_cell_881/Sigmoid_1:y:0lstm_881_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_881/while/lstm_cell_881/ReluRelu+lstm_881/while/lstm_cell_881/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_881/while/lstm_cell_881/mul_1Mul(lstm_881/while/lstm_cell_881/Sigmoid:y:0/lstm_881/while/lstm_cell_881/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_881/while/lstm_cell_881/add_1AddV2$lstm_881/while/lstm_cell_881/mul:z:0&lstm_881/while/lstm_cell_881/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_881/while/lstm_cell_881/Sigmoid_2Sigmoid+lstm_881/while/lstm_cell_881/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_881/while/lstm_cell_881/Relu_1Relu&lstm_881/while/lstm_cell_881/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_881/while/lstm_cell_881/mul_2Mul*lstm_881/while/lstm_cell_881/Sigmoid_2:y:01lstm_881/while/lstm_cell_881/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_881/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_881_while_placeholder_1lstm_881_while_placeholder&lstm_881/while/lstm_cell_881/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_881/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_881/while/addAddV2lstm_881_while_placeholderlstm_881/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_881/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_881/while/add_1AddV2*lstm_881_while_lstm_881_while_loop_counterlstm_881/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_881/while/IdentityIdentitylstm_881/while/add_1:z:0^lstm_881/while/NoOp*
T0*
_output_shapes
: ?
lstm_881/while/Identity_1Identity0lstm_881_while_lstm_881_while_maximum_iterations^lstm_881/while/NoOp*
T0*
_output_shapes
: t
lstm_881/while/Identity_2Identitylstm_881/while/add:z:0^lstm_881/while/NoOp*
T0*
_output_shapes
: ?
lstm_881/while/Identity_3IdentityClstm_881/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_881/while/NoOp*
T0*
_output_shapes
: ?
lstm_881/while/Identity_4Identity&lstm_881/while/lstm_cell_881/mul_2:z:0^lstm_881/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_881/while/Identity_5Identity&lstm_881/while/lstm_cell_881/add_1:z:0^lstm_881/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_881/while/NoOpNoOp4^lstm_881/while/lstm_cell_881/BiasAdd/ReadVariableOp3^lstm_881/while/lstm_cell_881/MatMul/ReadVariableOp5^lstm_881/while/lstm_cell_881/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_881_while_identity lstm_881/while/Identity:output:0"?
lstm_881_while_identity_1"lstm_881/while/Identity_1:output:0"?
lstm_881_while_identity_2"lstm_881/while/Identity_2:output:0"?
lstm_881_while_identity_3"lstm_881/while/Identity_3:output:0"?
lstm_881_while_identity_4"lstm_881/while/Identity_4:output:0"?
lstm_881_while_identity_5"lstm_881/while/Identity_5:output:0"T
'lstm_881_while_lstm_881_strided_slice_1)lstm_881_while_lstm_881_strided_slice_1_0"~
<lstm_881_while_lstm_cell_881_biasadd_readvariableop_resource>lstm_881_while_lstm_cell_881_biasadd_readvariableop_resource_0"?
=lstm_881_while_lstm_cell_881_matmul_1_readvariableop_resource?lstm_881_while_lstm_cell_881_matmul_1_readvariableop_resource_0"|
;lstm_881_while_lstm_cell_881_matmul_readvariableop_resource=lstm_881_while_lstm_cell_881_matmul_readvariableop_resource_0"?
clstm_881_while_tensorarrayv2read_tensorlistgetitem_lstm_881_tensorarrayunstack_tensorlistfromtensorelstm_881_while_tensorarrayv2read_tensorlistgetitem_lstm_881_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_881/while/lstm_cell_881/BiasAdd/ReadVariableOp3lstm_881/while/lstm_cell_881/BiasAdd/ReadVariableOp2h
2lstm_881/while/lstm_cell_881/MatMul/ReadVariableOp2lstm_881/while/lstm_cell_881/MatMul/ReadVariableOp2l
4lstm_881/while/lstm_cell_881/MatMul_1/ReadVariableOp4lstm_881/while/lstm_cell_881/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_5249728
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_880_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_880_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_880_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_880_matmul_readvariableop_resource:	d?G
4while_lstm_cell_880_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_880_biasadd_readvariableop_resource:	???*while/lstm_cell_880/BiasAdd/ReadVariableOp?)while/lstm_cell_880/MatMul/ReadVariableOp?+while/lstm_cell_880/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_880/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_880_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_880/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_880/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_880/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_880_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_880/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_880/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_880/addAddV2$while/lstm_cell_880/MatMul:product:0&while/lstm_cell_880/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_880/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_880_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_880/BiasAddBiasAddwhile/lstm_cell_880/add:z:02while/lstm_cell_880/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_880/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_880/splitSplit,while/lstm_cell_880/split/split_dim:output:0$while/lstm_cell_880/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_880/SigmoidSigmoid"while/lstm_cell_880/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_880/Sigmoid_1Sigmoid"while/lstm_cell_880/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_880/mulMul!while/lstm_cell_880/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_880/ReluRelu"while/lstm_cell_880/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_880/mul_1Mulwhile/lstm_cell_880/Sigmoid:y:0&while/lstm_cell_880/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_880/add_1AddV2while/lstm_cell_880/mul:z:0while/lstm_cell_880/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_880/Sigmoid_2Sigmoid"while/lstm_cell_880/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_880/Relu_1Reluwhile/lstm_cell_880/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_880/mul_2Mul!while/lstm_cell_880/Sigmoid_2:y:0(while/lstm_cell_880/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_880/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_880/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_880/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_880/BiasAdd/ReadVariableOp*^while/lstm_cell_880/MatMul/ReadVariableOp,^while/lstm_cell_880/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_880_biasadd_readvariableop_resource5while_lstm_cell_880_biasadd_readvariableop_resource_0"n
4while_lstm_cell_880_matmul_1_readvariableop_resource6while_lstm_cell_880_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_880_matmul_readvariableop_resource4while_lstm_cell_880_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_880/BiasAdd/ReadVariableOp*while/lstm_cell_880/BiasAdd/ReadVariableOp2V
)while/lstm_cell_880/MatMul/ReadVariableOp)while/lstm_cell_880/MatMul/ReadVariableOp2Z
+while/lstm_cell_880/MatMul_1/ReadVariableOp+while/lstm_cell_880/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_5247106
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_880_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_880_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_880_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_880_matmul_readvariableop_resource:	d?G
4while_lstm_cell_880_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_880_biasadd_readvariableop_resource:	???*while/lstm_cell_880/BiasAdd/ReadVariableOp?)while/lstm_cell_880/MatMul/ReadVariableOp?+while/lstm_cell_880/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_880/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_880_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_880/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_880/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_880/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_880_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_880/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_880/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_880/addAddV2$while/lstm_cell_880/MatMul:product:0&while/lstm_cell_880/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_880/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_880_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_880/BiasAddBiasAddwhile/lstm_cell_880/add:z:02while/lstm_cell_880/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_880/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_880/splitSplit,while/lstm_cell_880/split/split_dim:output:0$while/lstm_cell_880/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_880/SigmoidSigmoid"while/lstm_cell_880/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_880/Sigmoid_1Sigmoid"while/lstm_cell_880/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_880/mulMul!while/lstm_cell_880/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_880/ReluRelu"while/lstm_cell_880/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_880/mul_1Mulwhile/lstm_cell_880/Sigmoid:y:0&while/lstm_cell_880/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_880/add_1AddV2while/lstm_cell_880/mul:z:0while/lstm_cell_880/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_880/Sigmoid_2Sigmoid"while/lstm_cell_880/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_880/Relu_1Reluwhile/lstm_cell_880/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_880/mul_2Mul!while/lstm_cell_880/Sigmoid_2:y:0(while/lstm_cell_880/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_880/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_880/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_880/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_880/BiasAdd/ReadVariableOp*^while/lstm_cell_880/MatMul/ReadVariableOp,^while/lstm_cell_880/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_880_biasadd_readvariableop_resource5while_lstm_cell_880_biasadd_readvariableop_resource_0"n
4while_lstm_cell_880_matmul_1_readvariableop_resource6while_lstm_cell_880_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_880_matmul_readvariableop_resource4while_lstm_cell_880_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_880/BiasAdd/ReadVariableOp*while/lstm_cell_880/BiasAdd/ReadVariableOp2V
)while/lstm_cell_880/MatMul/ReadVariableOp)while/lstm_cell_880/MatMul/ReadVariableOp2Z
+while/lstm_cell_880/MatMul_1/ReadVariableOp+while/lstm_cell_880/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_5250772
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5250772___redundant_placeholder05
1while_while_cond_5250772___redundant_placeholder15
1while_while_cond_5250772___redundant_placeholder25
1while_while_cond_5250772___redundant_placeholder3
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
*sequential_293_lstm_881_while_body_5245751L
Hsequential_293_lstm_881_while_sequential_293_lstm_881_while_loop_counterR
Nsequential_293_lstm_881_while_sequential_293_lstm_881_while_maximum_iterations-
)sequential_293_lstm_881_while_placeholder/
+sequential_293_lstm_881_while_placeholder_1/
+sequential_293_lstm_881_while_placeholder_2/
+sequential_293_lstm_881_while_placeholder_3K
Gsequential_293_lstm_881_while_sequential_293_lstm_881_strided_slice_1_0?
?sequential_293_lstm_881_while_tensorarrayv2read_tensorlistgetitem_sequential_293_lstm_881_tensorarrayunstack_tensorlistfromtensor_0^
Lsequential_293_lstm_881_while_lstm_cell_881_matmul_readvariableop_resource_0:2(`
Nsequential_293_lstm_881_while_lstm_cell_881_matmul_1_readvariableop_resource_0:
([
Msequential_293_lstm_881_while_lstm_cell_881_biasadd_readvariableop_resource_0:(*
&sequential_293_lstm_881_while_identity,
(sequential_293_lstm_881_while_identity_1,
(sequential_293_lstm_881_while_identity_2,
(sequential_293_lstm_881_while_identity_3,
(sequential_293_lstm_881_while_identity_4,
(sequential_293_lstm_881_while_identity_5I
Esequential_293_lstm_881_while_sequential_293_lstm_881_strided_slice_1?
?sequential_293_lstm_881_while_tensorarrayv2read_tensorlistgetitem_sequential_293_lstm_881_tensorarrayunstack_tensorlistfromtensor\
Jsequential_293_lstm_881_while_lstm_cell_881_matmul_readvariableop_resource:2(^
Lsequential_293_lstm_881_while_lstm_cell_881_matmul_1_readvariableop_resource:
(Y
Ksequential_293_lstm_881_while_lstm_cell_881_biasadd_readvariableop_resource:(??Bsequential_293/lstm_881/while/lstm_cell_881/BiasAdd/ReadVariableOp?Asequential_293/lstm_881/while/lstm_cell_881/MatMul/ReadVariableOp?Csequential_293/lstm_881/while/lstm_cell_881/MatMul_1/ReadVariableOp?
Osequential_293/lstm_881/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
Asequential_293/lstm_881/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_293_lstm_881_while_tensorarrayv2read_tensorlistgetitem_sequential_293_lstm_881_tensorarrayunstack_tensorlistfromtensor_0)sequential_293_lstm_881_while_placeholderXsequential_293/lstm_881/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
Asequential_293/lstm_881/while/lstm_cell_881/MatMul/ReadVariableOpReadVariableOpLsequential_293_lstm_881_while_lstm_cell_881_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
2sequential_293/lstm_881/while/lstm_cell_881/MatMulMatMulHsequential_293/lstm_881/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_293/lstm_881/while/lstm_cell_881/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
Csequential_293/lstm_881/while/lstm_cell_881/MatMul_1/ReadVariableOpReadVariableOpNsequential_293_lstm_881_while_lstm_cell_881_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
4sequential_293/lstm_881/while/lstm_cell_881/MatMul_1MatMul+sequential_293_lstm_881_while_placeholder_2Ksequential_293/lstm_881/while/lstm_cell_881/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
/sequential_293/lstm_881/while/lstm_cell_881/addAddV2<sequential_293/lstm_881/while/lstm_cell_881/MatMul:product:0>sequential_293/lstm_881/while/lstm_cell_881/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
Bsequential_293/lstm_881/while/lstm_cell_881/BiasAdd/ReadVariableOpReadVariableOpMsequential_293_lstm_881_while_lstm_cell_881_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
3sequential_293/lstm_881/while/lstm_cell_881/BiasAddBiasAdd3sequential_293/lstm_881/while/lstm_cell_881/add:z:0Jsequential_293/lstm_881/while/lstm_cell_881/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(}
;sequential_293/lstm_881/while/lstm_cell_881/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_293/lstm_881/while/lstm_cell_881/splitSplitDsequential_293/lstm_881/while/lstm_cell_881/split/split_dim:output:0<sequential_293/lstm_881/while/lstm_cell_881/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
3sequential_293/lstm_881/while/lstm_cell_881/SigmoidSigmoid:sequential_293/lstm_881/while/lstm_cell_881/split:output:0*
T0*'
_output_shapes
:?????????
?
5sequential_293/lstm_881/while/lstm_cell_881/Sigmoid_1Sigmoid:sequential_293/lstm_881/while/lstm_cell_881/split:output:1*
T0*'
_output_shapes
:?????????
?
/sequential_293/lstm_881/while/lstm_cell_881/mulMul9sequential_293/lstm_881/while/lstm_cell_881/Sigmoid_1:y:0+sequential_293_lstm_881_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
0sequential_293/lstm_881/while/lstm_cell_881/ReluRelu:sequential_293/lstm_881/while/lstm_cell_881/split:output:2*
T0*'
_output_shapes
:?????????
?
1sequential_293/lstm_881/while/lstm_cell_881/mul_1Mul7sequential_293/lstm_881/while/lstm_cell_881/Sigmoid:y:0>sequential_293/lstm_881/while/lstm_cell_881/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
1sequential_293/lstm_881/while/lstm_cell_881/add_1AddV23sequential_293/lstm_881/while/lstm_cell_881/mul:z:05sequential_293/lstm_881/while/lstm_cell_881/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
5sequential_293/lstm_881/while/lstm_cell_881/Sigmoid_2Sigmoid:sequential_293/lstm_881/while/lstm_cell_881/split:output:3*
T0*'
_output_shapes
:?????????
?
2sequential_293/lstm_881/while/lstm_cell_881/Relu_1Relu5sequential_293/lstm_881/while/lstm_cell_881/add_1:z:0*
T0*'
_output_shapes
:?????????
?
1sequential_293/lstm_881/while/lstm_cell_881/mul_2Mul9sequential_293/lstm_881/while/lstm_cell_881/Sigmoid_2:y:0@sequential_293/lstm_881/while/lstm_cell_881/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
Bsequential_293/lstm_881/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_293_lstm_881_while_placeholder_1)sequential_293_lstm_881_while_placeholder5sequential_293/lstm_881/while/lstm_cell_881/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_293/lstm_881/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_293/lstm_881/while/addAddV2)sequential_293_lstm_881_while_placeholder,sequential_293/lstm_881/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_293/lstm_881/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_293/lstm_881/while/add_1AddV2Hsequential_293_lstm_881_while_sequential_293_lstm_881_while_loop_counter.sequential_293/lstm_881/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_293/lstm_881/while/IdentityIdentity'sequential_293/lstm_881/while/add_1:z:0#^sequential_293/lstm_881/while/NoOp*
T0*
_output_shapes
: ?
(sequential_293/lstm_881/while/Identity_1IdentityNsequential_293_lstm_881_while_sequential_293_lstm_881_while_maximum_iterations#^sequential_293/lstm_881/while/NoOp*
T0*
_output_shapes
: ?
(sequential_293/lstm_881/while/Identity_2Identity%sequential_293/lstm_881/while/add:z:0#^sequential_293/lstm_881/while/NoOp*
T0*
_output_shapes
: ?
(sequential_293/lstm_881/while/Identity_3IdentityRsequential_293/lstm_881/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_293/lstm_881/while/NoOp*
T0*
_output_shapes
: ?
(sequential_293/lstm_881/while/Identity_4Identity5sequential_293/lstm_881/while/lstm_cell_881/mul_2:z:0#^sequential_293/lstm_881/while/NoOp*
T0*'
_output_shapes
:?????????
?
(sequential_293/lstm_881/while/Identity_5Identity5sequential_293/lstm_881/while/lstm_cell_881/add_1:z:0#^sequential_293/lstm_881/while/NoOp*
T0*'
_output_shapes
:?????????
?
"sequential_293/lstm_881/while/NoOpNoOpC^sequential_293/lstm_881/while/lstm_cell_881/BiasAdd/ReadVariableOpB^sequential_293/lstm_881/while/lstm_cell_881/MatMul/ReadVariableOpD^sequential_293/lstm_881/while/lstm_cell_881/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_293_lstm_881_while_identity/sequential_293/lstm_881/while/Identity:output:0"]
(sequential_293_lstm_881_while_identity_11sequential_293/lstm_881/while/Identity_1:output:0"]
(sequential_293_lstm_881_while_identity_21sequential_293/lstm_881/while/Identity_2:output:0"]
(sequential_293_lstm_881_while_identity_31sequential_293/lstm_881/while/Identity_3:output:0"]
(sequential_293_lstm_881_while_identity_41sequential_293/lstm_881/while/Identity_4:output:0"]
(sequential_293_lstm_881_while_identity_51sequential_293/lstm_881/while/Identity_5:output:0"?
Ksequential_293_lstm_881_while_lstm_cell_881_biasadd_readvariableop_resourceMsequential_293_lstm_881_while_lstm_cell_881_biasadd_readvariableop_resource_0"?
Lsequential_293_lstm_881_while_lstm_cell_881_matmul_1_readvariableop_resourceNsequential_293_lstm_881_while_lstm_cell_881_matmul_1_readvariableop_resource_0"?
Jsequential_293_lstm_881_while_lstm_cell_881_matmul_readvariableop_resourceLsequential_293_lstm_881_while_lstm_cell_881_matmul_readvariableop_resource_0"?
Esequential_293_lstm_881_while_sequential_293_lstm_881_strided_slice_1Gsequential_293_lstm_881_while_sequential_293_lstm_881_strided_slice_1_0"?
?sequential_293_lstm_881_while_tensorarrayv2read_tensorlistgetitem_sequential_293_lstm_881_tensorarrayunstack_tensorlistfromtensor?sequential_293_lstm_881_while_tensorarrayv2read_tensorlistgetitem_sequential_293_lstm_881_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2?
Bsequential_293/lstm_881/while/lstm_cell_881/BiasAdd/ReadVariableOpBsequential_293/lstm_881/while/lstm_cell_881/BiasAdd/ReadVariableOp2?
Asequential_293/lstm_881/while/lstm_cell_881/MatMul/ReadVariableOpAsequential_293/lstm_881/while/lstm_cell_881/MatMul/ReadVariableOp2?
Csequential_293/lstm_881/while/lstm_cell_881/MatMul_1/ReadVariableOpCsequential_293/lstm_881/while/lstm_cell_881/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
K__inference_sequential_293_layer_call_and_return_conditional_losses_5248066
lstm_879_input#
lstm_879_5248039:	?#
lstm_879_5248041:	d?
lstm_879_5248043:	?#
lstm_880_5248046:	d?#
lstm_880_5248048:	2?
lstm_880_5248050:	?"
lstm_881_5248053:2("
lstm_881_5248055:
(
lstm_881_5248057:(#
dense_293_5248060:

dense_293_5248062:
identity??!dense_293/StatefulPartitionedCall? lstm_879/StatefulPartitionedCall? lstm_880/StatefulPartitionedCall? lstm_881/StatefulPartitionedCall?
 lstm_879/StatefulPartitionedCallStatefulPartitionedCalllstm_879_inputlstm_879_5248039lstm_879_5248041lstm_879_5248043*
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
E__inference_lstm_879_layer_call_and_return_conditional_losses_5247886?
 lstm_880/StatefulPartitionedCallStatefulPartitionedCall)lstm_879/StatefulPartitionedCall:output:0lstm_880_5248046lstm_880_5248048lstm_880_5248050*
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
E__inference_lstm_880_layer_call_and_return_conditional_losses_5247721?
 lstm_881/StatefulPartitionedCallStatefulPartitionedCall)lstm_880/StatefulPartitionedCall:output:0lstm_881_5248053lstm_881_5248055lstm_881_5248057*
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
E__inference_lstm_881_layer_call_and_return_conditional_losses_5247556?
!dense_293/StatefulPartitionedCallStatefulPartitionedCall)lstm_881/StatefulPartitionedCall:output:0dense_293_5248060dense_293_5248062*
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
F__inference_dense_293_layer_call_and_return_conditional_losses_5247358y
IdentityIdentity*dense_293/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_293/StatefulPartitionedCall!^lstm_879/StatefulPartitionedCall!^lstm_880/StatefulPartitionedCall!^lstm_881/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_293/StatefulPartitionedCall!dense_293/StatefulPartitionedCall2D
 lstm_879/StatefulPartitionedCall lstm_879/StatefulPartitionedCall2D
 lstm_880/StatefulPartitionedCall lstm_880/StatefulPartitionedCall2D
 lstm_881/StatefulPartitionedCall lstm_881/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_879_input
?

?
0__inference_sequential_293_layer_call_fn_5248155

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
K__inference_sequential_293_layer_call_and_return_conditional_losses_5247954o
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
J__inference_lstm_cell_880_layer_call_and_return_conditional_losses_5246404

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
?J
?
E__inference_lstm_879_layer_call_and_return_conditional_losses_5249482

inputs?
,lstm_cell_879_matmul_readvariableop_resource:	?A
.lstm_cell_879_matmul_1_readvariableop_resource:	d?<
-lstm_cell_879_biasadd_readvariableop_resource:	?
identity??$lstm_cell_879/BiasAdd/ReadVariableOp?#lstm_cell_879/MatMul/ReadVariableOp?%lstm_cell_879/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_879/MatMul/ReadVariableOpReadVariableOp,lstm_cell_879_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_879/MatMulMatMulstrided_slice_2:output:0+lstm_cell_879/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_879/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_879_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_879/MatMul_1MatMulzeros:output:0-lstm_cell_879/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_879/addAddV2lstm_cell_879/MatMul:product:0 lstm_cell_879/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_879/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_879_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_879/BiasAddBiasAddlstm_cell_879/add:z:0,lstm_cell_879/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_879/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_879/splitSplit&lstm_cell_879/split/split_dim:output:0lstm_cell_879/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_879/SigmoidSigmoidlstm_cell_879/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_879/Sigmoid_1Sigmoidlstm_cell_879/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_879/mulMullstm_cell_879/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_879/ReluRelulstm_cell_879/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_879/mul_1Mullstm_cell_879/Sigmoid:y:0 lstm_cell_879/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_879/add_1AddV2lstm_cell_879/mul:z:0lstm_cell_879/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_879/Sigmoid_2Sigmoidlstm_cell_879/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_879/Relu_1Relulstm_cell_879/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_879/mul_2Mullstm_cell_879/Sigmoid_2:y:0"lstm_cell_879/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_879_matmul_readvariableop_resource.lstm_cell_879_matmul_1_readvariableop_resource-lstm_cell_879_biasadd_readvariableop_resource*
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
while_body_5249398*
condR
while_cond_5249397*K
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
NoOpNoOp%^lstm_cell_879/BiasAdd/ReadVariableOp$^lstm_cell_879/MatMul/ReadVariableOp&^lstm_cell_879/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_879/BiasAdd/ReadVariableOp$lstm_cell_879/BiasAdd/ReadVariableOp2J
#lstm_cell_879/MatMul/ReadVariableOp#lstm_cell_879/MatMul/ReadVariableOp2N
%lstm_cell_879/MatMul_1/ReadVariableOp%lstm_cell_879/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
*__inference_lstm_880_layer_call_fn_5249669

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
E__inference_lstm_880_layer_call_and_return_conditional_losses_5247721s
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
E__inference_lstm_879_layer_call_and_return_conditional_losses_5246182

inputs(
lstm_cell_879_5246100:	?(
lstm_cell_879_5246102:	d?$
lstm_cell_879_5246104:	?
identity??%lstm_cell_879/StatefulPartitionedCall?while;
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
%lstm_cell_879/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_879_5246100lstm_cell_879_5246102lstm_cell_879_5246104*
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
J__inference_lstm_cell_879_layer_call_and_return_conditional_losses_5246054n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_879_5246100lstm_cell_879_5246102lstm_cell_879_5246104*
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
while_body_5246113*
condR
while_cond_5246112*K
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
NoOpNoOp&^lstm_cell_879/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_879/StatefulPartitionedCall%lstm_cell_879/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
M
lstm_879_input;
 serving_default_lstm_879_input:0?????????=
	dense_2930
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
2dense_293/kernel
:2dense_293/bias
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
0:.	?2lstm_879/lstm_cell_879/kernel
::8	d?2'lstm_879/lstm_cell_879/recurrent_kernel
*:(?2lstm_879/lstm_cell_879/bias
0:.	d?2lstm_880/lstm_cell_880/kernel
::8	2?2'lstm_880/lstm_cell_880/recurrent_kernel
*:(?2lstm_880/lstm_cell_880/bias
/:-2(2lstm_881/lstm_cell_881/kernel
9:7
(2'lstm_881/lstm_cell_881/recurrent_kernel
):'(2lstm_881/lstm_cell_881/bias
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
2Adam/dense_293/kernel/m
!:2Adam/dense_293/bias/m
5:3	?2$Adam/lstm_879/lstm_cell_879/kernel/m
?:=	d?2.Adam/lstm_879/lstm_cell_879/recurrent_kernel/m
/:-?2"Adam/lstm_879/lstm_cell_879/bias/m
5:3	d?2$Adam/lstm_880/lstm_cell_880/kernel/m
?:=	2?2.Adam/lstm_880/lstm_cell_880/recurrent_kernel/m
/:-?2"Adam/lstm_880/lstm_cell_880/bias/m
4:22(2$Adam/lstm_881/lstm_cell_881/kernel/m
>:<
(2.Adam/lstm_881/lstm_cell_881/recurrent_kernel/m
.:,(2"Adam/lstm_881/lstm_cell_881/bias/m
':%
2Adam/dense_293/kernel/v
!:2Adam/dense_293/bias/v
5:3	?2$Adam/lstm_879/lstm_cell_879/kernel/v
?:=	d?2.Adam/lstm_879/lstm_cell_879/recurrent_kernel/v
/:-?2"Adam/lstm_879/lstm_cell_879/bias/v
5:3	d?2$Adam/lstm_880/lstm_cell_880/kernel/v
?:=	2?2.Adam/lstm_880/lstm_cell_880/recurrent_kernel/v
/:-?2"Adam/lstm_880/lstm_cell_880/bias/v
4:22(2$Adam/lstm_881/lstm_cell_881/kernel/v
>:<
(2.Adam/lstm_881/lstm_cell_881/recurrent_kernel/v
.:,(2"Adam/lstm_881/lstm_cell_881/bias/v
?2?
0__inference_sequential_293_layer_call_fn_5247390
0__inference_sequential_293_layer_call_fn_5248128
0__inference_sequential_293_layer_call_fn_5248155
0__inference_sequential_293_layer_call_fn_5248006?
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
K__inference_sequential_293_layer_call_and_return_conditional_losses_5248582
K__inference_sequential_293_layer_call_and_return_conditional_losses_5249009
K__inference_sequential_293_layer_call_and_return_conditional_losses_5248036
K__inference_sequential_293_layer_call_and_return_conditional_losses_5248066?
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
"__inference__wrapped_model_5245841lstm_879_input"?
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
*__inference_lstm_879_layer_call_fn_5249020
*__inference_lstm_879_layer_call_fn_5249031
*__inference_lstm_879_layer_call_fn_5249042
*__inference_lstm_879_layer_call_fn_5249053?
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
E__inference_lstm_879_layer_call_and_return_conditional_losses_5249196
E__inference_lstm_879_layer_call_and_return_conditional_losses_5249339
E__inference_lstm_879_layer_call_and_return_conditional_losses_5249482
E__inference_lstm_879_layer_call_and_return_conditional_losses_5249625?
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
*__inference_lstm_880_layer_call_fn_5249636
*__inference_lstm_880_layer_call_fn_5249647
*__inference_lstm_880_layer_call_fn_5249658
*__inference_lstm_880_layer_call_fn_5249669?
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
E__inference_lstm_880_layer_call_and_return_conditional_losses_5249812
E__inference_lstm_880_layer_call_and_return_conditional_losses_5249955
E__inference_lstm_880_layer_call_and_return_conditional_losses_5250098
E__inference_lstm_880_layer_call_and_return_conditional_losses_5250241?
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
*__inference_lstm_881_layer_call_fn_5250252
*__inference_lstm_881_layer_call_fn_5250263
*__inference_lstm_881_layer_call_fn_5250274
*__inference_lstm_881_layer_call_fn_5250285?
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
E__inference_lstm_881_layer_call_and_return_conditional_losses_5250428
E__inference_lstm_881_layer_call_and_return_conditional_losses_5250571
E__inference_lstm_881_layer_call_and_return_conditional_losses_5250714
E__inference_lstm_881_layer_call_and_return_conditional_losses_5250857?
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
+__inference_dense_293_layer_call_fn_5250866?
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
F__inference_dense_293_layer_call_and_return_conditional_losses_5250876?
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
%__inference_signature_wrapper_5248101lstm_879_input"?
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
/__inference_lstm_cell_879_layer_call_fn_5250893
/__inference_lstm_cell_879_layer_call_fn_5250910?
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
J__inference_lstm_cell_879_layer_call_and_return_conditional_losses_5250942
J__inference_lstm_cell_879_layer_call_and_return_conditional_losses_5250974?
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
/__inference_lstm_cell_880_layer_call_fn_5250991
/__inference_lstm_cell_880_layer_call_fn_5251008?
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
J__inference_lstm_cell_880_layer_call_and_return_conditional_losses_5251040
J__inference_lstm_cell_880_layer_call_and_return_conditional_losses_5251072?
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
/__inference_lstm_cell_881_layer_call_fn_5251089
/__inference_lstm_cell_881_layer_call_fn_5251106?
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
J__inference_lstm_cell_881_layer_call_and_return_conditional_losses_5251138
J__inference_lstm_cell_881_layer_call_and_return_conditional_losses_5251170?
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
"__inference__wrapped_model_5245841?()*+,-./0;?8
1?.
,?)
lstm_879_input?????????
? "5?2
0
	dense_293#? 
	dense_293??????????
F__inference_dense_293_layer_call_and_return_conditional_losses_5250876\/?,
%?"
 ?
inputs?????????

? "%?"
?
0?????????
? ~
+__inference_dense_293_layer_call_fn_5250866O/?,
%?"
 ?
inputs?????????

? "???????????
E__inference_lstm_879_layer_call_and_return_conditional_losses_5249196?()*O?L
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
E__inference_lstm_879_layer_call_and_return_conditional_losses_5249339?()*O?L
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
E__inference_lstm_879_layer_call_and_return_conditional_losses_5249482q()*??<
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
E__inference_lstm_879_layer_call_and_return_conditional_losses_5249625q()*??<
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
*__inference_lstm_879_layer_call_fn_5249020}()*O?L
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
*__inference_lstm_879_layer_call_fn_5249031}()*O?L
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
*__inference_lstm_879_layer_call_fn_5249042d()*??<
5?2
$?!
inputs?????????

 
p 

 
? "??????????d?
*__inference_lstm_879_layer_call_fn_5249053d()*??<
5?2
$?!
inputs?????????

 
p

 
? "??????????d?
E__inference_lstm_880_layer_call_and_return_conditional_losses_5249812?+,-O?L
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
E__inference_lstm_880_layer_call_and_return_conditional_losses_5249955?+,-O?L
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
E__inference_lstm_880_layer_call_and_return_conditional_losses_5250098q+,-??<
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
E__inference_lstm_880_layer_call_and_return_conditional_losses_5250241q+,-??<
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
*__inference_lstm_880_layer_call_fn_5249636}+,-O?L
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
*__inference_lstm_880_layer_call_fn_5249647}+,-O?L
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
*__inference_lstm_880_layer_call_fn_5249658d+,-??<
5?2
$?!
inputs?????????d

 
p 

 
? "??????????2?
*__inference_lstm_880_layer_call_fn_5249669d+,-??<
5?2
$?!
inputs?????????d

 
p

 
? "??????????2?
E__inference_lstm_881_layer_call_and_return_conditional_losses_5250428}./0O?L
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
E__inference_lstm_881_layer_call_and_return_conditional_losses_5250571}./0O?L
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
E__inference_lstm_881_layer_call_and_return_conditional_losses_5250714m./0??<
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
E__inference_lstm_881_layer_call_and_return_conditional_losses_5250857m./0??<
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
*__inference_lstm_881_layer_call_fn_5250252p./0O?L
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
*__inference_lstm_881_layer_call_fn_5250263p./0O?L
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
*__inference_lstm_881_layer_call_fn_5250274`./0??<
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
*__inference_lstm_881_layer_call_fn_5250285`./0??<
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
J__inference_lstm_cell_879_layer_call_and_return_conditional_losses_5250942?()*??}
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
J__inference_lstm_cell_879_layer_call_and_return_conditional_losses_5250974?()*??}
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
/__inference_lstm_cell_879_layer_call_fn_5250893?()*??}
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
/__inference_lstm_cell_879_layer_call_fn_5250910?()*??}
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
J__inference_lstm_cell_880_layer_call_and_return_conditional_losses_5251040?+,-??}
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
J__inference_lstm_cell_880_layer_call_and_return_conditional_losses_5251072?+,-??}
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
/__inference_lstm_cell_880_layer_call_fn_5250991?+,-??}
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
/__inference_lstm_cell_880_layer_call_fn_5251008?+,-??}
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
J__inference_lstm_cell_881_layer_call_and_return_conditional_losses_5251138?./0??}
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
J__inference_lstm_cell_881_layer_call_and_return_conditional_losses_5251170?./0??}
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
/__inference_lstm_cell_881_layer_call_fn_5251089?./0??}
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
/__inference_lstm_cell_881_layer_call_fn_5251106?./0??}
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
K__inference_sequential_293_layer_call_and_return_conditional_losses_5248036y()*+,-./0C?@
9?6
,?)
lstm_879_input?????????
p 

 
? "%?"
?
0?????????
? ?
K__inference_sequential_293_layer_call_and_return_conditional_losses_5248066y()*+,-./0C?@
9?6
,?)
lstm_879_input?????????
p

 
? "%?"
?
0?????????
? ?
K__inference_sequential_293_layer_call_and_return_conditional_losses_5248582q()*+,-./0;?8
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
K__inference_sequential_293_layer_call_and_return_conditional_losses_5249009q()*+,-./0;?8
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
0__inference_sequential_293_layer_call_fn_5247390l()*+,-./0C?@
9?6
,?)
lstm_879_input?????????
p 

 
? "???????????
0__inference_sequential_293_layer_call_fn_5248006l()*+,-./0C?@
9?6
,?)
lstm_879_input?????????
p

 
? "???????????
0__inference_sequential_293_layer_call_fn_5248128d()*+,-./0;?8
1?.
$?!
inputs?????????
p 

 
? "???????????
0__inference_sequential_293_layer_call_fn_5248155d()*+,-./0;?8
1?.
$?!
inputs?????????
p

 
? "???????????
%__inference_signature_wrapper_5248101?()*+,-./0M?J
? 
C?@
>
lstm_879_input,?)
lstm_879_input?????????"5?2
0
	dense_293#? 
	dense_293?????????