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
dense_203/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*!
shared_namedense_203/kernel
u
$dense_203/kernel/Read/ReadVariableOpReadVariableOpdense_203/kernel*
_output_shapes

:
*
dtype0
t
dense_203/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_203/bias
m
"dense_203/bias/Read/ReadVariableOpReadVariableOpdense_203/bias*
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
lstm_609/lstm_cell_609/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*.
shared_namelstm_609/lstm_cell_609/kernel
?
1lstm_609/lstm_cell_609/kernel/Read/ReadVariableOpReadVariableOplstm_609/lstm_cell_609/kernel*
_output_shapes
:	?*
dtype0
?
'lstm_609/lstm_cell_609/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*8
shared_name)'lstm_609/lstm_cell_609/recurrent_kernel
?
;lstm_609/lstm_cell_609/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_609/lstm_cell_609/recurrent_kernel*
_output_shapes
:	d?*
dtype0
?
lstm_609/lstm_cell_609/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_609/lstm_cell_609/bias
?
/lstm_609/lstm_cell_609/bias/Read/ReadVariableOpReadVariableOplstm_609/lstm_cell_609/bias*
_output_shapes	
:?*
dtype0
?
lstm_610/lstm_cell_610/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*.
shared_namelstm_610/lstm_cell_610/kernel
?
1lstm_610/lstm_cell_610/kernel/Read/ReadVariableOpReadVariableOplstm_610/lstm_cell_610/kernel*
_output_shapes
:	d?*
dtype0
?
'lstm_610/lstm_cell_610/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*8
shared_name)'lstm_610/lstm_cell_610/recurrent_kernel
?
;lstm_610/lstm_cell_610/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_610/lstm_cell_610/recurrent_kernel*
_output_shapes
:	2?*
dtype0
?
lstm_610/lstm_cell_610/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_610/lstm_cell_610/bias
?
/lstm_610/lstm_cell_610/bias/Read/ReadVariableOpReadVariableOplstm_610/lstm_cell_610/bias*
_output_shapes	
:?*
dtype0
?
lstm_611/lstm_cell_611/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*.
shared_namelstm_611/lstm_cell_611/kernel
?
1lstm_611/lstm_cell_611/kernel/Read/ReadVariableOpReadVariableOplstm_611/lstm_cell_611/kernel*
_output_shapes

:2(*
dtype0
?
'lstm_611/lstm_cell_611/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*8
shared_name)'lstm_611/lstm_cell_611/recurrent_kernel
?
;lstm_611/lstm_cell_611/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_611/lstm_cell_611/recurrent_kernel*
_output_shapes

:
(*
dtype0
?
lstm_611/lstm_cell_611/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*,
shared_namelstm_611/lstm_cell_611/bias
?
/lstm_611/lstm_cell_611/bias/Read/ReadVariableOpReadVariableOplstm_611/lstm_cell_611/bias*
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
Adam/dense_203/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_203/kernel/m
?
+Adam/dense_203/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_203/kernel/m*
_output_shapes

:
*
dtype0
?
Adam/dense_203/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_203/bias/m
{
)Adam/dense_203/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_203/bias/m*
_output_shapes
:*
dtype0
?
$Adam/lstm_609/lstm_cell_609/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_609/lstm_cell_609/kernel/m
?
8Adam/lstm_609/lstm_cell_609/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_609/lstm_cell_609/kernel/m*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_609/lstm_cell_609/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_609/lstm_cell_609/recurrent_kernel/m
?
BAdam/lstm_609/lstm_cell_609/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_609/lstm_cell_609/recurrent_kernel/m*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_609/lstm_cell_609/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_609/lstm_cell_609/bias/m
?
6Adam/lstm_609/lstm_cell_609/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_609/lstm_cell_609/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_610/lstm_cell_610/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_610/lstm_cell_610/kernel/m
?
8Adam/lstm_610/lstm_cell_610/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_610/lstm_cell_610/kernel/m*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_610/lstm_cell_610/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_610/lstm_cell_610/recurrent_kernel/m
?
BAdam/lstm_610/lstm_cell_610/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_610/lstm_cell_610/recurrent_kernel/m*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_610/lstm_cell_610/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_610/lstm_cell_610/bias/m
?
6Adam/lstm_610/lstm_cell_610/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_610/lstm_cell_610/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_611/lstm_cell_611/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_611/lstm_cell_611/kernel/m
?
8Adam/lstm_611/lstm_cell_611/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_611/lstm_cell_611/kernel/m*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_611/lstm_cell_611/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_611/lstm_cell_611/recurrent_kernel/m
?
BAdam/lstm_611/lstm_cell_611/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_611/lstm_cell_611/recurrent_kernel/m*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_611/lstm_cell_611/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_611/lstm_cell_611/bias/m
?
6Adam/lstm_611/lstm_cell_611/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_611/lstm_cell_611/bias/m*
_output_shapes
:(*
dtype0
?
Adam/dense_203/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_203/kernel/v
?
+Adam/dense_203/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_203/kernel/v*
_output_shapes

:
*
dtype0
?
Adam/dense_203/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_203/bias/v
{
)Adam/dense_203/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_203/bias/v*
_output_shapes
:*
dtype0
?
$Adam/lstm_609/lstm_cell_609/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_609/lstm_cell_609/kernel/v
?
8Adam/lstm_609/lstm_cell_609/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_609/lstm_cell_609/kernel/v*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_609/lstm_cell_609/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_609/lstm_cell_609/recurrent_kernel/v
?
BAdam/lstm_609/lstm_cell_609/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_609/lstm_cell_609/recurrent_kernel/v*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_609/lstm_cell_609/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_609/lstm_cell_609/bias/v
?
6Adam/lstm_609/lstm_cell_609/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_609/lstm_cell_609/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_610/lstm_cell_610/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_610/lstm_cell_610/kernel/v
?
8Adam/lstm_610/lstm_cell_610/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_610/lstm_cell_610/kernel/v*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_610/lstm_cell_610/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_610/lstm_cell_610/recurrent_kernel/v
?
BAdam/lstm_610/lstm_cell_610/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_610/lstm_cell_610/recurrent_kernel/v*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_610/lstm_cell_610/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_610/lstm_cell_610/bias/v
?
6Adam/lstm_610/lstm_cell_610/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_610/lstm_cell_610/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_611/lstm_cell_611/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_611/lstm_cell_611/kernel/v
?
8Adam/lstm_611/lstm_cell_611/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_611/lstm_cell_611/kernel/v*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_611/lstm_cell_611/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_611/lstm_cell_611/recurrent_kernel/v
?
BAdam/lstm_611/lstm_cell_611/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_611/lstm_cell_611/recurrent_kernel/v*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_611/lstm_cell_611/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_611/lstm_cell_611/bias/v
?
6Adam/lstm_611/lstm_cell_611/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_611/lstm_cell_611/bias/v*
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
VARIABLE_VALUEdense_203/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_203/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUElstm_609/lstm_cell_609/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_609/lstm_cell_609/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_609/lstm_cell_609/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_610/lstm_cell_610/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_610/lstm_cell_610/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_610/lstm_cell_610/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_611/lstm_cell_611/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_611/lstm_cell_611/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_611/lstm_cell_611/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEAdam/dense_203/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_203/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_609/lstm_cell_609/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_609/lstm_cell_609/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_609/lstm_cell_609/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_610/lstm_cell_610/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_610/lstm_cell_610/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_610/lstm_cell_610/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_611/lstm_cell_611/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_611/lstm_cell_611/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_611/lstm_cell_611/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_203/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_203/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_609/lstm_cell_609/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_609/lstm_cell_609/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_609/lstm_cell_609/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_610/lstm_cell_610/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_610/lstm_cell_610/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_610/lstm_cell_610/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_611/lstm_cell_611/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_611/lstm_cell_611/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_611/lstm_cell_611/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_lstm_609_inputPlaceholder*+
_output_shapes
:?????????*
dtype0* 
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_609_inputlstm_609/lstm_cell_609/kernel'lstm_609/lstm_cell_609/recurrent_kernellstm_609/lstm_cell_609/biaslstm_610/lstm_cell_610/kernel'lstm_610/lstm_cell_610/recurrent_kernellstm_610/lstm_cell_610/biaslstm_611/lstm_cell_611/kernel'lstm_611/lstm_cell_611/recurrent_kernellstm_611/lstm_cell_611/biasdense_203/kerneldense_203/bias*
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
%__inference_signature_wrapper_3968121
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$dense_203/kernel/Read/ReadVariableOp"dense_203/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_609/lstm_cell_609/kernel/Read/ReadVariableOp;lstm_609/lstm_cell_609/recurrent_kernel/Read/ReadVariableOp/lstm_609/lstm_cell_609/bias/Read/ReadVariableOp1lstm_610/lstm_cell_610/kernel/Read/ReadVariableOp;lstm_610/lstm_cell_610/recurrent_kernel/Read/ReadVariableOp/lstm_610/lstm_cell_610/bias/Read/ReadVariableOp1lstm_611/lstm_cell_611/kernel/Read/ReadVariableOp;lstm_611/lstm_cell_611/recurrent_kernel/Read/ReadVariableOp/lstm_611/lstm_cell_611/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp+Adam/dense_203/kernel/m/Read/ReadVariableOp)Adam/dense_203/bias/m/Read/ReadVariableOp8Adam/lstm_609/lstm_cell_609/kernel/m/Read/ReadVariableOpBAdam/lstm_609/lstm_cell_609/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_609/lstm_cell_609/bias/m/Read/ReadVariableOp8Adam/lstm_610/lstm_cell_610/kernel/m/Read/ReadVariableOpBAdam/lstm_610/lstm_cell_610/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_610/lstm_cell_610/bias/m/Read/ReadVariableOp8Adam/lstm_611/lstm_cell_611/kernel/m/Read/ReadVariableOpBAdam/lstm_611/lstm_cell_611/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_611/lstm_cell_611/bias/m/Read/ReadVariableOp+Adam/dense_203/kernel/v/Read/ReadVariableOp)Adam/dense_203/bias/v/Read/ReadVariableOp8Adam/lstm_609/lstm_cell_609/kernel/v/Read/ReadVariableOpBAdam/lstm_609/lstm_cell_609/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_609/lstm_cell_609/bias/v/Read/ReadVariableOp8Adam/lstm_610/lstm_cell_610/kernel/v/Read/ReadVariableOpBAdam/lstm_610/lstm_cell_610/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_610/lstm_cell_610/bias/v/Read/ReadVariableOp8Adam/lstm_611/lstm_cell_611/kernel/v/Read/ReadVariableOpBAdam/lstm_611/lstm_cell_611/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_611/lstm_cell_611/bias/v/Read/ReadVariableOpConst*5
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
 __inference__traced_save_3971333
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_203/kerneldense_203/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_609/lstm_cell_609/kernel'lstm_609/lstm_cell_609/recurrent_kernellstm_609/lstm_cell_609/biaslstm_610/lstm_cell_610/kernel'lstm_610/lstm_cell_610/recurrent_kernellstm_610/lstm_cell_610/biaslstm_611/lstm_cell_611/kernel'lstm_611/lstm_cell_611/recurrent_kernellstm_611/lstm_cell_611/biastotalcountAdam/dense_203/kernel/mAdam/dense_203/bias/m$Adam/lstm_609/lstm_cell_609/kernel/m.Adam/lstm_609/lstm_cell_609/recurrent_kernel/m"Adam/lstm_609/lstm_cell_609/bias/m$Adam/lstm_610/lstm_cell_610/kernel/m.Adam/lstm_610/lstm_cell_610/recurrent_kernel/m"Adam/lstm_610/lstm_cell_610/bias/m$Adam/lstm_611/lstm_cell_611/kernel/m.Adam/lstm_611/lstm_cell_611/recurrent_kernel/m"Adam/lstm_611/lstm_cell_611/bias/mAdam/dense_203/kernel/vAdam/dense_203/bias/v$Adam/lstm_609/lstm_cell_609/kernel/v.Adam/lstm_609/lstm_cell_609/recurrent_kernel/v"Adam/lstm_609/lstm_cell_609/bias/v$Adam/lstm_610/lstm_cell_610/kernel/v.Adam/lstm_610/lstm_cell_610/recurrent_kernel/v"Adam/lstm_610/lstm_cell_610/bias/v$Adam/lstm_611/lstm_cell_611/kernel/v.Adam/lstm_611/lstm_cell_611/recurrent_kernel/v"Adam/lstm_611/lstm_cell_611/bias/v*4
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
#__inference__traced_restore_3971463??+
?C
?

lstm_611_while_body_3968939.
*lstm_611_while_lstm_611_while_loop_counter4
0lstm_611_while_lstm_611_while_maximum_iterations
lstm_611_while_placeholder 
lstm_611_while_placeholder_1 
lstm_611_while_placeholder_2 
lstm_611_while_placeholder_3-
)lstm_611_while_lstm_611_strided_slice_1_0i
elstm_611_while_tensorarrayv2read_tensorlistgetitem_lstm_611_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_611_while_lstm_cell_611_matmul_readvariableop_resource_0:2(Q
?lstm_611_while_lstm_cell_611_matmul_1_readvariableop_resource_0:
(L
>lstm_611_while_lstm_cell_611_biasadd_readvariableop_resource_0:(
lstm_611_while_identity
lstm_611_while_identity_1
lstm_611_while_identity_2
lstm_611_while_identity_3
lstm_611_while_identity_4
lstm_611_while_identity_5+
'lstm_611_while_lstm_611_strided_slice_1g
clstm_611_while_tensorarrayv2read_tensorlistgetitem_lstm_611_tensorarrayunstack_tensorlistfromtensorM
;lstm_611_while_lstm_cell_611_matmul_readvariableop_resource:2(O
=lstm_611_while_lstm_cell_611_matmul_1_readvariableop_resource:
(J
<lstm_611_while_lstm_cell_611_biasadd_readvariableop_resource:(??3lstm_611/while/lstm_cell_611/BiasAdd/ReadVariableOp?2lstm_611/while/lstm_cell_611/MatMul/ReadVariableOp?4lstm_611/while/lstm_cell_611/MatMul_1/ReadVariableOp?
@lstm_611/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_611/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_611_while_tensorarrayv2read_tensorlistgetitem_lstm_611_tensorarrayunstack_tensorlistfromtensor_0lstm_611_while_placeholderIlstm_611/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_611/while/lstm_cell_611/MatMul/ReadVariableOpReadVariableOp=lstm_611_while_lstm_cell_611_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_611/while/lstm_cell_611/MatMulMatMul9lstm_611/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_611/while/lstm_cell_611/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_611/while/lstm_cell_611/MatMul_1/ReadVariableOpReadVariableOp?lstm_611_while_lstm_cell_611_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_611/while/lstm_cell_611/MatMul_1MatMullstm_611_while_placeholder_2<lstm_611/while/lstm_cell_611/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_611/while/lstm_cell_611/addAddV2-lstm_611/while/lstm_cell_611/MatMul:product:0/lstm_611/while/lstm_cell_611/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_611/while/lstm_cell_611/BiasAdd/ReadVariableOpReadVariableOp>lstm_611_while_lstm_cell_611_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_611/while/lstm_cell_611/BiasAddBiasAdd$lstm_611/while/lstm_cell_611/add:z:0;lstm_611/while/lstm_cell_611/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_611/while/lstm_cell_611/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_611/while/lstm_cell_611/splitSplit5lstm_611/while/lstm_cell_611/split/split_dim:output:0-lstm_611/while/lstm_cell_611/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_611/while/lstm_cell_611/SigmoidSigmoid+lstm_611/while/lstm_cell_611/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_611/while/lstm_cell_611/Sigmoid_1Sigmoid+lstm_611/while/lstm_cell_611/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_611/while/lstm_cell_611/mulMul*lstm_611/while/lstm_cell_611/Sigmoid_1:y:0lstm_611_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_611/while/lstm_cell_611/ReluRelu+lstm_611/while/lstm_cell_611/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_611/while/lstm_cell_611/mul_1Mul(lstm_611/while/lstm_cell_611/Sigmoid:y:0/lstm_611/while/lstm_cell_611/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_611/while/lstm_cell_611/add_1AddV2$lstm_611/while/lstm_cell_611/mul:z:0&lstm_611/while/lstm_cell_611/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_611/while/lstm_cell_611/Sigmoid_2Sigmoid+lstm_611/while/lstm_cell_611/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_611/while/lstm_cell_611/Relu_1Relu&lstm_611/while/lstm_cell_611/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_611/while/lstm_cell_611/mul_2Mul*lstm_611/while/lstm_cell_611/Sigmoid_2:y:01lstm_611/while/lstm_cell_611/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_611/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_611_while_placeholder_1lstm_611_while_placeholder&lstm_611/while/lstm_cell_611/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_611/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_611/while/addAddV2lstm_611_while_placeholderlstm_611/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_611/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_611/while/add_1AddV2*lstm_611_while_lstm_611_while_loop_counterlstm_611/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_611/while/IdentityIdentitylstm_611/while/add_1:z:0^lstm_611/while/NoOp*
T0*
_output_shapes
: ?
lstm_611/while/Identity_1Identity0lstm_611_while_lstm_611_while_maximum_iterations^lstm_611/while/NoOp*
T0*
_output_shapes
: t
lstm_611/while/Identity_2Identitylstm_611/while/add:z:0^lstm_611/while/NoOp*
T0*
_output_shapes
: ?
lstm_611/while/Identity_3IdentityClstm_611/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_611/while/NoOp*
T0*
_output_shapes
: ?
lstm_611/while/Identity_4Identity&lstm_611/while/lstm_cell_611/mul_2:z:0^lstm_611/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_611/while/Identity_5Identity&lstm_611/while/lstm_cell_611/add_1:z:0^lstm_611/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_611/while/NoOpNoOp4^lstm_611/while/lstm_cell_611/BiasAdd/ReadVariableOp3^lstm_611/while/lstm_cell_611/MatMul/ReadVariableOp5^lstm_611/while/lstm_cell_611/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_611_while_identity lstm_611/while/Identity:output:0"?
lstm_611_while_identity_1"lstm_611/while/Identity_1:output:0"?
lstm_611_while_identity_2"lstm_611/while/Identity_2:output:0"?
lstm_611_while_identity_3"lstm_611/while/Identity_3:output:0"?
lstm_611_while_identity_4"lstm_611/while/Identity_4:output:0"?
lstm_611_while_identity_5"lstm_611/while/Identity_5:output:0"T
'lstm_611_while_lstm_611_strided_slice_1)lstm_611_while_lstm_611_strided_slice_1_0"~
<lstm_611_while_lstm_cell_611_biasadd_readvariableop_resource>lstm_611_while_lstm_cell_611_biasadd_readvariableop_resource_0"?
=lstm_611_while_lstm_cell_611_matmul_1_readvariableop_resource?lstm_611_while_lstm_cell_611_matmul_1_readvariableop_resource_0"|
;lstm_611_while_lstm_cell_611_matmul_readvariableop_resource=lstm_611_while_lstm_cell_611_matmul_readvariableop_resource_0"?
clstm_611_while_tensorarrayv2read_tensorlistgetitem_lstm_611_tensorarrayunstack_tensorlistfromtensorelstm_611_while_tensorarrayv2read_tensorlistgetitem_lstm_611_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_611/while/lstm_cell_611/BiasAdd/ReadVariableOp3lstm_611/while/lstm_cell_611/BiasAdd/ReadVariableOp2h
2lstm_611/while/lstm_cell_611/MatMul/ReadVariableOp2lstm_611/while/lstm_cell_611/MatMul/ReadVariableOp2l
4lstm_611/while/lstm_cell_611/MatMul_1/ReadVariableOp4lstm_611/while/lstm_cell_611/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
K__inference_sequential_203_layer_call_and_return_conditional_losses_3967385

inputs#
lstm_609_3967061:	?#
lstm_609_3967063:	d?
lstm_609_3967065:	?#
lstm_610_3967211:	d?#
lstm_610_3967213:	2?
lstm_610_3967215:	?"
lstm_611_3967361:2("
lstm_611_3967363:
(
lstm_611_3967365:(#
dense_203_3967379:

dense_203_3967381:
identity??!dense_203/StatefulPartitionedCall? lstm_609/StatefulPartitionedCall? lstm_610/StatefulPartitionedCall? lstm_611/StatefulPartitionedCall?
 lstm_609/StatefulPartitionedCallStatefulPartitionedCallinputslstm_609_3967061lstm_609_3967063lstm_609_3967065*
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
E__inference_lstm_609_layer_call_and_return_conditional_losses_3967060?
 lstm_610/StatefulPartitionedCallStatefulPartitionedCall)lstm_609/StatefulPartitionedCall:output:0lstm_610_3967211lstm_610_3967213lstm_610_3967215*
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
E__inference_lstm_610_layer_call_and_return_conditional_losses_3967210?
 lstm_611/StatefulPartitionedCallStatefulPartitionedCall)lstm_610/StatefulPartitionedCall:output:0lstm_611_3967361lstm_611_3967363lstm_611_3967365*
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
E__inference_lstm_611_layer_call_and_return_conditional_losses_3967360?
!dense_203/StatefulPartitionedCallStatefulPartitionedCall)lstm_611/StatefulPartitionedCall:output:0dense_203_3967379dense_203_3967381*
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
F__inference_dense_203_layer_call_and_return_conditional_losses_3967378y
IdentityIdentity*dense_203/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_203/StatefulPartitionedCall!^lstm_609/StatefulPartitionedCall!^lstm_610/StatefulPartitionedCall!^lstm_611/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_203/StatefulPartitionedCall!dense_203/StatefulPartitionedCall2D
 lstm_609/StatefulPartitionedCall lstm_609/StatefulPartitionedCall2D
 lstm_610/StatefulPartitionedCall lstm_610/StatefulPartitionedCall2D
 lstm_611/StatefulPartitionedCall lstm_611/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
lstm_611_while_cond_3968511.
*lstm_611_while_lstm_611_while_loop_counter4
0lstm_611_while_lstm_611_while_maximum_iterations
lstm_611_while_placeholder 
lstm_611_while_placeholder_1 
lstm_611_while_placeholder_2 
lstm_611_while_placeholder_30
,lstm_611_while_less_lstm_611_strided_slice_1G
Clstm_611_while_lstm_611_while_cond_3968511___redundant_placeholder0G
Clstm_611_while_lstm_611_while_cond_3968511___redundant_placeholder1G
Clstm_611_while_lstm_611_while_cond_3968511___redundant_placeholder2G
Clstm_611_while_lstm_611_while_cond_3968511___redundant_placeholder3
lstm_611_while_identity
?
lstm_611/while/LessLesslstm_611_while_placeholder,lstm_611_while_less_lstm_611_strided_slice_1*
T0*
_output_shapes
: ]
lstm_611/while/IdentityIdentitylstm_611/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_611_while_identity lstm_611/while/Identity:output:0*(
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
while_cond_3967491
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3967491___redundant_placeholder05
1while_while_cond_3967491___redundant_placeholder15
1while_while_cond_3967491___redundant_placeholder25
1while_while_cond_3967491___redundant_placeholder3
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
*__inference_lstm_610_layer_call_fn_3969667
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
E__inference_lstm_610_layer_call_and_return_conditional_losses_3966552|
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
while_body_3969891
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_610_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_610_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_610_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_610_matmul_readvariableop_resource:	d?G
4while_lstm_cell_610_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_610_biasadd_readvariableop_resource:	???*while/lstm_cell_610/BiasAdd/ReadVariableOp?)while/lstm_cell_610/MatMul/ReadVariableOp?+while/lstm_cell_610/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_610/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_610_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_610/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_610/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_610/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_610_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_610/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_610/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_610/addAddV2$while/lstm_cell_610/MatMul:product:0&while/lstm_cell_610/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_610/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_610_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_610/BiasAddBiasAddwhile/lstm_cell_610/add:z:02while/lstm_cell_610/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_610/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_610/splitSplit,while/lstm_cell_610/split/split_dim:output:0$while/lstm_cell_610/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_610/SigmoidSigmoid"while/lstm_cell_610/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_610/Sigmoid_1Sigmoid"while/lstm_cell_610/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_610/mulMul!while/lstm_cell_610/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_610/ReluRelu"while/lstm_cell_610/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_610/mul_1Mulwhile/lstm_cell_610/Sigmoid:y:0&while/lstm_cell_610/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_610/add_1AddV2while/lstm_cell_610/mul:z:0while/lstm_cell_610/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_610/Sigmoid_2Sigmoid"while/lstm_cell_610/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_610/Relu_1Reluwhile/lstm_cell_610/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_610/mul_2Mul!while/lstm_cell_610/Sigmoid_2:y:0(while/lstm_cell_610/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_610/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_610/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_610/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_610/BiasAdd/ReadVariableOp*^while/lstm_cell_610/MatMul/ReadVariableOp,^while/lstm_cell_610/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_610_biasadd_readvariableop_resource5while_lstm_cell_610_biasadd_readvariableop_resource_0"n
4while_lstm_cell_610_matmul_1_readvariableop_resource6while_lstm_cell_610_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_610_matmul_readvariableop_resource4while_lstm_cell_610_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_610/BiasAdd/ReadVariableOp*while/lstm_cell_610/BiasAdd/ReadVariableOp2V
)while/lstm_cell_610/MatMul/ReadVariableOp)while/lstm_cell_610/MatMul/ReadVariableOp2Z
+while/lstm_cell_610/MatMul_1/ReadVariableOp+while/lstm_cell_610/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_611_layer_call_fn_3971109

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
J__inference_lstm_cell_611_layer_call_and_return_conditional_losses_3966628o
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
while_body_3966292
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_610_3966316_0:	d?0
while_lstm_cell_610_3966318_0:	2?,
while_lstm_cell_610_3966320_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_610_3966316:	d?.
while_lstm_cell_610_3966318:	2?*
while_lstm_cell_610_3966320:	???+while/lstm_cell_610/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_610/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_610_3966316_0while_lstm_cell_610_3966318_0while_lstm_cell_610_3966320_0*
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
J__inference_lstm_cell_610_layer_call_and_return_conditional_losses_3966278?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_610/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_610/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_610/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_610/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_610_3966316while_lstm_cell_610_3966316_0"<
while_lstm_cell_610_3966318while_lstm_cell_610_3966318_0"<
while_lstm_cell_610_3966320while_lstm_cell_610_3966320_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_610/StatefulPartitionedCall+while/lstm_cell_610/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_609_layer_call_fn_3970930

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
J__inference_lstm_cell_609_layer_call_and_return_conditional_losses_3966074o
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
J__inference_lstm_cell_609_layer_call_and_return_conditional_losses_3965928

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

?
lstm_610_while_cond_3968799.
*lstm_610_while_lstm_610_while_loop_counter4
0lstm_610_while_lstm_610_while_maximum_iterations
lstm_610_while_placeholder 
lstm_610_while_placeholder_1 
lstm_610_while_placeholder_2 
lstm_610_while_placeholder_30
,lstm_610_while_less_lstm_610_strided_slice_1G
Clstm_610_while_lstm_610_while_cond_3968799___redundant_placeholder0G
Clstm_610_while_lstm_610_while_cond_3968799___redundant_placeholder1G
Clstm_610_while_lstm_610_while_cond_3968799___redundant_placeholder2G
Clstm_610_while_lstm_610_while_cond_3968799___redundant_placeholder3
lstm_610_while_identity
?
lstm_610/while/LessLesslstm_610_while_placeholder,lstm_610_while_less_lstm_610_strided_slice_1*
T0*
_output_shapes
: ]
lstm_610/while/IdentityIdentitylstm_610/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_610_while_identity lstm_610/while/Identity:output:0*(
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
lstm_611_while_cond_3968938.
*lstm_611_while_lstm_611_while_loop_counter4
0lstm_611_while_lstm_611_while_maximum_iterations
lstm_611_while_placeholder 
lstm_611_while_placeholder_1 
lstm_611_while_placeholder_2 
lstm_611_while_placeholder_30
,lstm_611_while_less_lstm_611_strided_slice_1G
Clstm_611_while_lstm_611_while_cond_3968938___redundant_placeholder0G
Clstm_611_while_lstm_611_while_cond_3968938___redundant_placeholder1G
Clstm_611_while_lstm_611_while_cond_3968938___redundant_placeholder2G
Clstm_611_while_lstm_611_while_cond_3968938___redundant_placeholder3
lstm_611_while_identity
?
lstm_611/while/LessLesslstm_611_while_placeholder,lstm_611_while_less_lstm_611_strided_slice_1*
T0*
_output_shapes
: ]
lstm_611/while/IdentityIdentitylstm_611/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_611_while_identity lstm_611/while/Identity:output:0*(
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
while_body_3967276
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_611_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_611_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_611_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_611_matmul_readvariableop_resource:2(F
4while_lstm_cell_611_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_611_biasadd_readvariableop_resource:(??*while/lstm_cell_611/BiasAdd/ReadVariableOp?)while/lstm_cell_611/MatMul/ReadVariableOp?+while/lstm_cell_611/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_611/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_611_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_611/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_611/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_611/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_611_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_611/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_611/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_611/addAddV2$while/lstm_cell_611/MatMul:product:0&while/lstm_cell_611/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_611/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_611_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_611/BiasAddBiasAddwhile/lstm_cell_611/add:z:02while/lstm_cell_611/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_611/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_611/splitSplit,while/lstm_cell_611/split/split_dim:output:0$while/lstm_cell_611/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_611/SigmoidSigmoid"while/lstm_cell_611/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_611/Sigmoid_1Sigmoid"while/lstm_cell_611/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_611/mulMul!while/lstm_cell_611/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_611/ReluRelu"while/lstm_cell_611/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_611/mul_1Mulwhile/lstm_cell_611/Sigmoid:y:0&while/lstm_cell_611/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_611/add_1AddV2while/lstm_cell_611/mul:z:0while/lstm_cell_611/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_611/Sigmoid_2Sigmoid"while/lstm_cell_611/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_611/Relu_1Reluwhile/lstm_cell_611/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_611/mul_2Mul!while/lstm_cell_611/Sigmoid_2:y:0(while/lstm_cell_611/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_611/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_611/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_611/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_611/BiasAdd/ReadVariableOp*^while/lstm_cell_611/MatMul/ReadVariableOp,^while/lstm_cell_611/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_611_biasadd_readvariableop_resource5while_lstm_cell_611_biasadd_readvariableop_resource_0"n
4while_lstm_cell_611_matmul_1_readvariableop_resource6while_lstm_cell_611_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_611_matmul_readvariableop_resource4while_lstm_cell_611_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_611/BiasAdd/ReadVariableOp*while/lstm_cell_611/BiasAdd/ReadVariableOp2V
)while/lstm_cell_611/MatMul/ReadVariableOp)while/lstm_cell_611/MatMul/ReadVariableOp2Z
+while/lstm_cell_611/MatMul_1/ReadVariableOp+while/lstm_cell_611/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

lstm_609_while_body_3968661.
*lstm_609_while_lstm_609_while_loop_counter4
0lstm_609_while_lstm_609_while_maximum_iterations
lstm_609_while_placeholder 
lstm_609_while_placeholder_1 
lstm_609_while_placeholder_2 
lstm_609_while_placeholder_3-
)lstm_609_while_lstm_609_strided_slice_1_0i
elstm_609_while_tensorarrayv2read_tensorlistgetitem_lstm_609_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_609_while_lstm_cell_609_matmul_readvariableop_resource_0:	?R
?lstm_609_while_lstm_cell_609_matmul_1_readvariableop_resource_0:	d?M
>lstm_609_while_lstm_cell_609_biasadd_readvariableop_resource_0:	?
lstm_609_while_identity
lstm_609_while_identity_1
lstm_609_while_identity_2
lstm_609_while_identity_3
lstm_609_while_identity_4
lstm_609_while_identity_5+
'lstm_609_while_lstm_609_strided_slice_1g
clstm_609_while_tensorarrayv2read_tensorlistgetitem_lstm_609_tensorarrayunstack_tensorlistfromtensorN
;lstm_609_while_lstm_cell_609_matmul_readvariableop_resource:	?P
=lstm_609_while_lstm_cell_609_matmul_1_readvariableop_resource:	d?K
<lstm_609_while_lstm_cell_609_biasadd_readvariableop_resource:	???3lstm_609/while/lstm_cell_609/BiasAdd/ReadVariableOp?2lstm_609/while/lstm_cell_609/MatMul/ReadVariableOp?4lstm_609/while/lstm_cell_609/MatMul_1/ReadVariableOp?
@lstm_609/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_609/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_609_while_tensorarrayv2read_tensorlistgetitem_lstm_609_tensorarrayunstack_tensorlistfromtensor_0lstm_609_while_placeholderIlstm_609/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_609/while/lstm_cell_609/MatMul/ReadVariableOpReadVariableOp=lstm_609_while_lstm_cell_609_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_609/while/lstm_cell_609/MatMulMatMul9lstm_609/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_609/while/lstm_cell_609/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_609/while/lstm_cell_609/MatMul_1/ReadVariableOpReadVariableOp?lstm_609_while_lstm_cell_609_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_609/while/lstm_cell_609/MatMul_1MatMullstm_609_while_placeholder_2<lstm_609/while/lstm_cell_609/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_609/while/lstm_cell_609/addAddV2-lstm_609/while/lstm_cell_609/MatMul:product:0/lstm_609/while/lstm_cell_609/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_609/while/lstm_cell_609/BiasAdd/ReadVariableOpReadVariableOp>lstm_609_while_lstm_cell_609_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_609/while/lstm_cell_609/BiasAddBiasAdd$lstm_609/while/lstm_cell_609/add:z:0;lstm_609/while/lstm_cell_609/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_609/while/lstm_cell_609/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_609/while/lstm_cell_609/splitSplit5lstm_609/while/lstm_cell_609/split/split_dim:output:0-lstm_609/while/lstm_cell_609/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_609/while/lstm_cell_609/SigmoidSigmoid+lstm_609/while/lstm_cell_609/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_609/while/lstm_cell_609/Sigmoid_1Sigmoid+lstm_609/while/lstm_cell_609/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_609/while/lstm_cell_609/mulMul*lstm_609/while/lstm_cell_609/Sigmoid_1:y:0lstm_609_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_609/while/lstm_cell_609/ReluRelu+lstm_609/while/lstm_cell_609/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_609/while/lstm_cell_609/mul_1Mul(lstm_609/while/lstm_cell_609/Sigmoid:y:0/lstm_609/while/lstm_cell_609/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_609/while/lstm_cell_609/add_1AddV2$lstm_609/while/lstm_cell_609/mul:z:0&lstm_609/while/lstm_cell_609/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_609/while/lstm_cell_609/Sigmoid_2Sigmoid+lstm_609/while/lstm_cell_609/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_609/while/lstm_cell_609/Relu_1Relu&lstm_609/while/lstm_cell_609/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_609/while/lstm_cell_609/mul_2Mul*lstm_609/while/lstm_cell_609/Sigmoid_2:y:01lstm_609/while/lstm_cell_609/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_609/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_609_while_placeholder_1lstm_609_while_placeholder&lstm_609/while/lstm_cell_609/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_609/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_609/while/addAddV2lstm_609_while_placeholderlstm_609/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_609/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_609/while/add_1AddV2*lstm_609_while_lstm_609_while_loop_counterlstm_609/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_609/while/IdentityIdentitylstm_609/while/add_1:z:0^lstm_609/while/NoOp*
T0*
_output_shapes
: ?
lstm_609/while/Identity_1Identity0lstm_609_while_lstm_609_while_maximum_iterations^lstm_609/while/NoOp*
T0*
_output_shapes
: t
lstm_609/while/Identity_2Identitylstm_609/while/add:z:0^lstm_609/while/NoOp*
T0*
_output_shapes
: ?
lstm_609/while/Identity_3IdentityClstm_609/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_609/while/NoOp*
T0*
_output_shapes
: ?
lstm_609/while/Identity_4Identity&lstm_609/while/lstm_cell_609/mul_2:z:0^lstm_609/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_609/while/Identity_5Identity&lstm_609/while/lstm_cell_609/add_1:z:0^lstm_609/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_609/while/NoOpNoOp4^lstm_609/while/lstm_cell_609/BiasAdd/ReadVariableOp3^lstm_609/while/lstm_cell_609/MatMul/ReadVariableOp5^lstm_609/while/lstm_cell_609/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_609_while_identity lstm_609/while/Identity:output:0"?
lstm_609_while_identity_1"lstm_609/while/Identity_1:output:0"?
lstm_609_while_identity_2"lstm_609/while/Identity_2:output:0"?
lstm_609_while_identity_3"lstm_609/while/Identity_3:output:0"?
lstm_609_while_identity_4"lstm_609/while/Identity_4:output:0"?
lstm_609_while_identity_5"lstm_609/while/Identity_5:output:0"T
'lstm_609_while_lstm_609_strided_slice_1)lstm_609_while_lstm_609_strided_slice_1_0"~
<lstm_609_while_lstm_cell_609_biasadd_readvariableop_resource>lstm_609_while_lstm_cell_609_biasadd_readvariableop_resource_0"?
=lstm_609_while_lstm_cell_609_matmul_1_readvariableop_resource?lstm_609_while_lstm_cell_609_matmul_1_readvariableop_resource_0"|
;lstm_609_while_lstm_cell_609_matmul_readvariableop_resource=lstm_609_while_lstm_cell_609_matmul_readvariableop_resource_0"?
clstm_609_while_tensorarrayv2read_tensorlistgetitem_lstm_609_tensorarrayunstack_tensorlistfromtensorelstm_609_while_tensorarrayv2read_tensorlistgetitem_lstm_609_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_609/while/lstm_cell_609/BiasAdd/ReadVariableOp3lstm_609/while/lstm_cell_609/BiasAdd/ReadVariableOp2h
2lstm_609/while/lstm_cell_609/MatMul/ReadVariableOp2lstm_609/while/lstm_cell_609/MatMul/ReadVariableOp2l
4lstm_609/while/lstm_cell_609/MatMul_1/ReadVariableOp4lstm_609/while/lstm_cell_609/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_611_layer_call_and_return_conditional_losses_3970448
inputs_0>
,lstm_cell_611_matmul_readvariableop_resource:2(@
.lstm_cell_611_matmul_1_readvariableop_resource:
(;
-lstm_cell_611_biasadd_readvariableop_resource:(
identity??$lstm_cell_611/BiasAdd/ReadVariableOp?#lstm_cell_611/MatMul/ReadVariableOp?%lstm_cell_611/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_611/MatMul/ReadVariableOpReadVariableOp,lstm_cell_611_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_611/MatMulMatMulstrided_slice_2:output:0+lstm_cell_611/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_611/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_611_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_611/MatMul_1MatMulzeros:output:0-lstm_cell_611/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_611/addAddV2lstm_cell_611/MatMul:product:0 lstm_cell_611/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_611/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_611_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_611/BiasAddBiasAddlstm_cell_611/add:z:0,lstm_cell_611/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_611/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_611/splitSplit&lstm_cell_611/split/split_dim:output:0lstm_cell_611/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_611/SigmoidSigmoidlstm_cell_611/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_611/Sigmoid_1Sigmoidlstm_cell_611/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_611/mulMullstm_cell_611/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_611/ReluRelulstm_cell_611/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_611/mul_1Mullstm_cell_611/Sigmoid:y:0 lstm_cell_611/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_611/add_1AddV2lstm_cell_611/mul:z:0lstm_cell_611/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_611/Sigmoid_2Sigmoidlstm_cell_611/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_611/Relu_1Relulstm_cell_611/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_611/mul_2Mullstm_cell_611/Sigmoid_2:y:0"lstm_cell_611/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_611_matmul_readvariableop_resource.lstm_cell_611_matmul_1_readvariableop_resource-lstm_cell_611_biasadd_readvariableop_resource*
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
while_body_3970364*
condR
while_cond_3970363*K
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
NoOpNoOp%^lstm_cell_611/BiasAdd/ReadVariableOp$^lstm_cell_611/MatMul/ReadVariableOp&^lstm_cell_611/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_611/BiasAdd/ReadVariableOp$lstm_cell_611/BiasAdd/ReadVariableOp2J
#lstm_cell_611/MatMul/ReadVariableOp#lstm_cell_611/MatMul/ReadVariableOp2N
%lstm_cell_611/MatMul_1/ReadVariableOp%lstm_cell_611/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?
?
*__inference_lstm_609_layer_call_fn_3969073

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
E__inference_lstm_609_layer_call_and_return_conditional_losses_3967906s
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
?
E__inference_lstm_611_layer_call_and_return_conditional_losses_3966711

inputs'
lstm_cell_611_3966629:2('
lstm_cell_611_3966631:
(#
lstm_cell_611_3966633:(
identity??%lstm_cell_611/StatefulPartitionedCall?while;
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
%lstm_cell_611/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_611_3966629lstm_cell_611_3966631lstm_cell_611_3966633*
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
J__inference_lstm_cell_611_layer_call_and_return_conditional_losses_3966628n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_611_3966629lstm_cell_611_3966631lstm_cell_611_3966633*
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
while_body_3966642*
condR
while_cond_3966641*K
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
NoOpNoOp&^lstm_cell_611/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_611/StatefulPartitionedCall%lstm_cell_611/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?8
?
E__inference_lstm_609_layer_call_and_return_conditional_losses_3966202

inputs(
lstm_cell_609_3966120:	?(
lstm_cell_609_3966122:	d?$
lstm_cell_609_3966124:	?
identity??%lstm_cell_609/StatefulPartitionedCall?while;
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
%lstm_cell_609/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_609_3966120lstm_cell_609_3966122lstm_cell_609_3966124*
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
J__inference_lstm_cell_609_layer_call_and_return_conditional_losses_3966074n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_609_3966120lstm_cell_609_3966122lstm_cell_609_3966124*
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
while_body_3966133*
condR
while_cond_3966132*K
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
NoOpNoOp&^lstm_cell_609/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_609/StatefulPartitionedCall%lstm_cell_609/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?	
?
F__inference_dense_203_layer_call_and_return_conditional_losses_3970896

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
while_cond_3966975
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3966975___redundant_placeholder05
1while_while_cond_3966975___redundant_placeholder15
1while_while_cond_3966975___redundant_placeholder25
1while_while_cond_3966975___redundant_placeholder3
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
E__inference_lstm_611_layer_call_and_return_conditional_losses_3967360

inputs>
,lstm_cell_611_matmul_readvariableop_resource:2(@
.lstm_cell_611_matmul_1_readvariableop_resource:
(;
-lstm_cell_611_biasadd_readvariableop_resource:(
identity??$lstm_cell_611/BiasAdd/ReadVariableOp?#lstm_cell_611/MatMul/ReadVariableOp?%lstm_cell_611/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_611/MatMul/ReadVariableOpReadVariableOp,lstm_cell_611_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_611/MatMulMatMulstrided_slice_2:output:0+lstm_cell_611/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_611/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_611_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_611/MatMul_1MatMulzeros:output:0-lstm_cell_611/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_611/addAddV2lstm_cell_611/MatMul:product:0 lstm_cell_611/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_611/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_611_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_611/BiasAddBiasAddlstm_cell_611/add:z:0,lstm_cell_611/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_611/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_611/splitSplit&lstm_cell_611/split/split_dim:output:0lstm_cell_611/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_611/SigmoidSigmoidlstm_cell_611/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_611/Sigmoid_1Sigmoidlstm_cell_611/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_611/mulMullstm_cell_611/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_611/ReluRelulstm_cell_611/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_611/mul_1Mullstm_cell_611/Sigmoid:y:0 lstm_cell_611/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_611/add_1AddV2lstm_cell_611/mul:z:0lstm_cell_611/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_611/Sigmoid_2Sigmoidlstm_cell_611/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_611/Relu_1Relulstm_cell_611/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_611/mul_2Mullstm_cell_611/Sigmoid_2:y:0"lstm_cell_611/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_611_matmul_readvariableop_resource.lstm_cell_611_matmul_1_readvariableop_resource-lstm_cell_611_biasadd_readvariableop_resource*
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
while_body_3967276*
condR
while_cond_3967275*K
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
NoOpNoOp%^lstm_cell_611/BiasAdd/ReadVariableOp$^lstm_cell_611/MatMul/ReadVariableOp&^lstm_cell_611/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_611/BiasAdd/ReadVariableOp$lstm_cell_611/BiasAdd/ReadVariableOp2J
#lstm_cell_611/MatMul/ReadVariableOp#lstm_cell_611/MatMul/ReadVariableOp2N
%lstm_cell_611/MatMul_1/ReadVariableOp%lstm_cell_611/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
while_cond_3966132
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3966132___redundant_placeholder05
1while_while_cond_3966132___redundant_placeholder15
1while_while_cond_3966132___redundant_placeholder25
1while_while_cond_3966132___redundant_placeholder3
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
while_cond_3970649
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3970649___redundant_placeholder05
1while_while_cond_3970649___redundant_placeholder15
1while_while_cond_3970649___redundant_placeholder25
1while_while_cond_3970649___redundant_placeholder3
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
*__inference_lstm_609_layer_call_fn_3969040
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
E__inference_lstm_609_layer_call_and_return_conditional_losses_3966011|
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
?
*__inference_lstm_610_layer_call_fn_3969678

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
E__inference_lstm_610_layer_call_and_return_conditional_losses_3967210s
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
?#
?
while_body_3966483
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_610_3966507_0:	d?0
while_lstm_cell_610_3966509_0:	2?,
while_lstm_cell_610_3966511_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_610_3966507:	d?.
while_lstm_cell_610_3966509:	2?*
while_lstm_cell_610_3966511:	???+while/lstm_cell_610/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_610/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_610_3966507_0while_lstm_cell_610_3966509_0while_lstm_cell_610_3966511_0*
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
J__inference_lstm_cell_610_layer_call_and_return_conditional_losses_3966424?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_610/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_610/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_610/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_610/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_610_3966507while_lstm_cell_610_3966507_0"<
while_lstm_cell_610_3966509while_lstm_cell_610_3966509_0"<
while_lstm_cell_610_3966511while_lstm_cell_610_3966511_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_610/StatefulPartitionedCall+while/lstm_cell_610/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_body_3969275
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_609_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_609_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_609_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_609_matmul_readvariableop_resource:	?G
4while_lstm_cell_609_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_609_biasadd_readvariableop_resource:	???*while/lstm_cell_609/BiasAdd/ReadVariableOp?)while/lstm_cell_609/MatMul/ReadVariableOp?+while/lstm_cell_609/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_609/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_609_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_609/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_609/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_609/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_609_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_609/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_609/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_609/addAddV2$while/lstm_cell_609/MatMul:product:0&while/lstm_cell_609/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_609/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_609_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_609/BiasAddBiasAddwhile/lstm_cell_609/add:z:02while/lstm_cell_609/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_609/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_609/splitSplit,while/lstm_cell_609/split/split_dim:output:0$while/lstm_cell_609/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_609/SigmoidSigmoid"while/lstm_cell_609/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_609/Sigmoid_1Sigmoid"while/lstm_cell_609/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_609/mulMul!while/lstm_cell_609/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_609/ReluRelu"while/lstm_cell_609/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_609/mul_1Mulwhile/lstm_cell_609/Sigmoid:y:0&while/lstm_cell_609/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_609/add_1AddV2while/lstm_cell_609/mul:z:0while/lstm_cell_609/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_609/Sigmoid_2Sigmoid"while/lstm_cell_609/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_609/Relu_1Reluwhile/lstm_cell_609/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_609/mul_2Mul!while/lstm_cell_609/Sigmoid_2:y:0(while/lstm_cell_609/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_609/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_609/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_609/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_609/BiasAdd/ReadVariableOp*^while/lstm_cell_609/MatMul/ReadVariableOp,^while/lstm_cell_609/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_609_biasadd_readvariableop_resource5while_lstm_cell_609_biasadd_readvariableop_resource_0"n
4while_lstm_cell_609_matmul_1_readvariableop_resource6while_lstm_cell_609_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_609_matmul_readvariableop_resource4while_lstm_cell_609_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_609/BiasAdd/ReadVariableOp*while/lstm_cell_609/BiasAdd/ReadVariableOp2V
)while/lstm_cell_609/MatMul/ReadVariableOp)while/lstm_cell_609/MatMul/ReadVariableOp2Z
+while/lstm_cell_609/MatMul_1/ReadVariableOp+while/lstm_cell_609/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
K__inference_sequential_203_layer_call_and_return_conditional_losses_3967974

inputs#
lstm_609_3967947:	?#
lstm_609_3967949:	d?
lstm_609_3967951:	?#
lstm_610_3967954:	d?#
lstm_610_3967956:	2?
lstm_610_3967958:	?"
lstm_611_3967961:2("
lstm_611_3967963:
(
lstm_611_3967965:(#
dense_203_3967968:

dense_203_3967970:
identity??!dense_203/StatefulPartitionedCall? lstm_609/StatefulPartitionedCall? lstm_610/StatefulPartitionedCall? lstm_611/StatefulPartitionedCall?
 lstm_609/StatefulPartitionedCallStatefulPartitionedCallinputslstm_609_3967947lstm_609_3967949lstm_609_3967951*
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
E__inference_lstm_609_layer_call_and_return_conditional_losses_3967906?
 lstm_610/StatefulPartitionedCallStatefulPartitionedCall)lstm_609/StatefulPartitionedCall:output:0lstm_610_3967954lstm_610_3967956lstm_610_3967958*
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
E__inference_lstm_610_layer_call_and_return_conditional_losses_3967741?
 lstm_611/StatefulPartitionedCallStatefulPartitionedCall)lstm_610/StatefulPartitionedCall:output:0lstm_611_3967961lstm_611_3967963lstm_611_3967965*
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
E__inference_lstm_611_layer_call_and_return_conditional_losses_3967576?
!dense_203/StatefulPartitionedCallStatefulPartitionedCall)lstm_611/StatefulPartitionedCall:output:0dense_203_3967968dense_203_3967970*
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
F__inference_dense_203_layer_call_and_return_conditional_losses_3967378y
IdentityIdentity*dense_203/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_203/StatefulPartitionedCall!^lstm_609/StatefulPartitionedCall!^lstm_610/StatefulPartitionedCall!^lstm_611/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_203/StatefulPartitionedCall!dense_203/StatefulPartitionedCall2D
 lstm_609/StatefulPartitionedCall lstm_609/StatefulPartitionedCall2D
 lstm_610/StatefulPartitionedCall lstm_610/StatefulPartitionedCall2D
 lstm_611/StatefulPartitionedCall lstm_611/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
0__inference_sequential_203_layer_call_fn_3968026
lstm_609_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_609_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_203_layer_call_and_return_conditional_losses_3967974o
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
_user_specified_namelstm_609_input
?J
?
E__inference_lstm_610_layer_call_and_return_conditional_losses_3970261

inputs?
,lstm_cell_610_matmul_readvariableop_resource:	d?A
.lstm_cell_610_matmul_1_readvariableop_resource:	2?<
-lstm_cell_610_biasadd_readvariableop_resource:	?
identity??$lstm_cell_610/BiasAdd/ReadVariableOp?#lstm_cell_610/MatMul/ReadVariableOp?%lstm_cell_610/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_610/MatMul/ReadVariableOpReadVariableOp,lstm_cell_610_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_610/MatMulMatMulstrided_slice_2:output:0+lstm_cell_610/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_610/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_610_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_610/MatMul_1MatMulzeros:output:0-lstm_cell_610/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_610/addAddV2lstm_cell_610/MatMul:product:0 lstm_cell_610/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_610/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_610_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_610/BiasAddBiasAddlstm_cell_610/add:z:0,lstm_cell_610/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_610/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_610/splitSplit&lstm_cell_610/split/split_dim:output:0lstm_cell_610/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_610/SigmoidSigmoidlstm_cell_610/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_610/Sigmoid_1Sigmoidlstm_cell_610/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_610/mulMullstm_cell_610/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_610/ReluRelulstm_cell_610/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_610/mul_1Mullstm_cell_610/Sigmoid:y:0 lstm_cell_610/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_610/add_1AddV2lstm_cell_610/mul:z:0lstm_cell_610/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_610/Sigmoid_2Sigmoidlstm_cell_610/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_610/Relu_1Relulstm_cell_610/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_610/mul_2Mullstm_cell_610/Sigmoid_2:y:0"lstm_cell_610/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_610_matmul_readvariableop_resource.lstm_cell_610_matmul_1_readvariableop_resource-lstm_cell_610_biasadd_readvariableop_resource*
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
while_body_3970177*
condR
while_cond_3970176*K
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
NoOpNoOp%^lstm_cell_610/BiasAdd/ReadVariableOp$^lstm_cell_610/MatMul/ReadVariableOp&^lstm_cell_610/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_610/BiasAdd/ReadVariableOp$lstm_cell_610/BiasAdd/ReadVariableOp2J
#lstm_cell_610/MatMul/ReadVariableOp#lstm_cell_610/MatMul/ReadVariableOp2N
%lstm_cell_610/MatMul_1/ReadVariableOp%lstm_cell_610/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?8
?
while_body_3969132
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_609_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_609_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_609_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_609_matmul_readvariableop_resource:	?G
4while_lstm_cell_609_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_609_biasadd_readvariableop_resource:	???*while/lstm_cell_609/BiasAdd/ReadVariableOp?)while/lstm_cell_609/MatMul/ReadVariableOp?+while/lstm_cell_609/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_609/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_609_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_609/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_609/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_609/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_609_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_609/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_609/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_609/addAddV2$while/lstm_cell_609/MatMul:product:0&while/lstm_cell_609/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_609/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_609_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_609/BiasAddBiasAddwhile/lstm_cell_609/add:z:02while/lstm_cell_609/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_609/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_609/splitSplit,while/lstm_cell_609/split/split_dim:output:0$while/lstm_cell_609/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_609/SigmoidSigmoid"while/lstm_cell_609/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_609/Sigmoid_1Sigmoid"while/lstm_cell_609/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_609/mulMul!while/lstm_cell_609/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_609/ReluRelu"while/lstm_cell_609/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_609/mul_1Mulwhile/lstm_cell_609/Sigmoid:y:0&while/lstm_cell_609/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_609/add_1AddV2while/lstm_cell_609/mul:z:0while/lstm_cell_609/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_609/Sigmoid_2Sigmoid"while/lstm_cell_609/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_609/Relu_1Reluwhile/lstm_cell_609/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_609/mul_2Mul!while/lstm_cell_609/Sigmoid_2:y:0(while/lstm_cell_609/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_609/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_609/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_609/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_609/BiasAdd/ReadVariableOp*^while/lstm_cell_609/MatMul/ReadVariableOp,^while/lstm_cell_609/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_609_biasadd_readvariableop_resource5while_lstm_cell_609_biasadd_readvariableop_resource_0"n
4while_lstm_cell_609_matmul_1_readvariableop_resource6while_lstm_cell_609_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_609_matmul_readvariableop_resource4while_lstm_cell_609_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_609/BiasAdd/ReadVariableOp*while/lstm_cell_609/BiasAdd/ReadVariableOp2V
)while/lstm_cell_609/MatMul/ReadVariableOp)while/lstm_cell_609/MatMul/ReadVariableOp2Z
+while/lstm_cell_609/MatMul_1/ReadVariableOp+while/lstm_cell_609/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_610_layer_call_and_return_conditional_losses_3970118

inputs?
,lstm_cell_610_matmul_readvariableop_resource:	d?A
.lstm_cell_610_matmul_1_readvariableop_resource:	2?<
-lstm_cell_610_biasadd_readvariableop_resource:	?
identity??$lstm_cell_610/BiasAdd/ReadVariableOp?#lstm_cell_610/MatMul/ReadVariableOp?%lstm_cell_610/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_610/MatMul/ReadVariableOpReadVariableOp,lstm_cell_610_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_610/MatMulMatMulstrided_slice_2:output:0+lstm_cell_610/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_610/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_610_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_610/MatMul_1MatMulzeros:output:0-lstm_cell_610/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_610/addAddV2lstm_cell_610/MatMul:product:0 lstm_cell_610/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_610/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_610_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_610/BiasAddBiasAddlstm_cell_610/add:z:0,lstm_cell_610/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_610/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_610/splitSplit&lstm_cell_610/split/split_dim:output:0lstm_cell_610/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_610/SigmoidSigmoidlstm_cell_610/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_610/Sigmoid_1Sigmoidlstm_cell_610/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_610/mulMullstm_cell_610/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_610/ReluRelulstm_cell_610/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_610/mul_1Mullstm_cell_610/Sigmoid:y:0 lstm_cell_610/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_610/add_1AddV2lstm_cell_610/mul:z:0lstm_cell_610/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_610/Sigmoid_2Sigmoidlstm_cell_610/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_610/Relu_1Relulstm_cell_610/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_610/mul_2Mullstm_cell_610/Sigmoid_2:y:0"lstm_cell_610/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_610_matmul_readvariableop_resource.lstm_cell_610_matmul_1_readvariableop_resource-lstm_cell_610_biasadd_readvariableop_resource*
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
while_body_3970034*
condR
while_cond_3970033*K
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
NoOpNoOp%^lstm_cell_610/BiasAdd/ReadVariableOp$^lstm_cell_610/MatMul/ReadVariableOp&^lstm_cell_610/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_610/BiasAdd/ReadVariableOp$lstm_cell_610/BiasAdd/ReadVariableOp2J
#lstm_cell_610/MatMul/ReadVariableOp#lstm_cell_610/MatMul/ReadVariableOp2N
%lstm_cell_610/MatMul_1/ReadVariableOp%lstm_cell_610/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_609_layer_call_and_return_conditional_losses_3970994

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
?
?
*__inference_lstm_611_layer_call_fn_3970305

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
E__inference_lstm_611_layer_call_and_return_conditional_losses_3967576o
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
%__inference_signature_wrapper_3968121
lstm_609_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_609_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
"__inference__wrapped_model_3965861o
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
_user_specified_namelstm_609_input
?J
?
E__inference_lstm_609_layer_call_and_return_conditional_losses_3967906

inputs?
,lstm_cell_609_matmul_readvariableop_resource:	?A
.lstm_cell_609_matmul_1_readvariableop_resource:	d?<
-lstm_cell_609_biasadd_readvariableop_resource:	?
identity??$lstm_cell_609/BiasAdd/ReadVariableOp?#lstm_cell_609/MatMul/ReadVariableOp?%lstm_cell_609/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_609/MatMul/ReadVariableOpReadVariableOp,lstm_cell_609_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_609/MatMulMatMulstrided_slice_2:output:0+lstm_cell_609/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_609/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_609_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_609/MatMul_1MatMulzeros:output:0-lstm_cell_609/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_609/addAddV2lstm_cell_609/MatMul:product:0 lstm_cell_609/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_609/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_609_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_609/BiasAddBiasAddlstm_cell_609/add:z:0,lstm_cell_609/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_609/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_609/splitSplit&lstm_cell_609/split/split_dim:output:0lstm_cell_609/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_609/SigmoidSigmoidlstm_cell_609/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_609/Sigmoid_1Sigmoidlstm_cell_609/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_609/mulMullstm_cell_609/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_609/ReluRelulstm_cell_609/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_609/mul_1Mullstm_cell_609/Sigmoid:y:0 lstm_cell_609/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_609/add_1AddV2lstm_cell_609/mul:z:0lstm_cell_609/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_609/Sigmoid_2Sigmoidlstm_cell_609/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_609/Relu_1Relulstm_cell_609/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_609/mul_2Mullstm_cell_609/Sigmoid_2:y:0"lstm_cell_609/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_609_matmul_readvariableop_resource.lstm_cell_609_matmul_1_readvariableop_resource-lstm_cell_609_biasadd_readvariableop_resource*
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
while_body_3967822*
condR
while_cond_3967821*K
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
NoOpNoOp%^lstm_cell_609/BiasAdd/ReadVariableOp$^lstm_cell_609/MatMul/ReadVariableOp&^lstm_cell_609/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_609/BiasAdd/ReadVariableOp$lstm_cell_609/BiasAdd/ReadVariableOp2J
#lstm_cell_609/MatMul/ReadVariableOp#lstm_cell_609/MatMul/ReadVariableOp2N
%lstm_cell_609/MatMul_1/ReadVariableOp%lstm_cell_609/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
while_body_3967657
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_610_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_610_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_610_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_610_matmul_readvariableop_resource:	d?G
4while_lstm_cell_610_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_610_biasadd_readvariableop_resource:	???*while/lstm_cell_610/BiasAdd/ReadVariableOp?)while/lstm_cell_610/MatMul/ReadVariableOp?+while/lstm_cell_610/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_610/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_610_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_610/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_610/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_610/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_610_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_610/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_610/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_610/addAddV2$while/lstm_cell_610/MatMul:product:0&while/lstm_cell_610/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_610/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_610_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_610/BiasAddBiasAddwhile/lstm_cell_610/add:z:02while/lstm_cell_610/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_610/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_610/splitSplit,while/lstm_cell_610/split/split_dim:output:0$while/lstm_cell_610/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_610/SigmoidSigmoid"while/lstm_cell_610/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_610/Sigmoid_1Sigmoid"while/lstm_cell_610/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_610/mulMul!while/lstm_cell_610/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_610/ReluRelu"while/lstm_cell_610/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_610/mul_1Mulwhile/lstm_cell_610/Sigmoid:y:0&while/lstm_cell_610/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_610/add_1AddV2while/lstm_cell_610/mul:z:0while/lstm_cell_610/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_610/Sigmoid_2Sigmoid"while/lstm_cell_610/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_610/Relu_1Reluwhile/lstm_cell_610/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_610/mul_2Mul!while/lstm_cell_610/Sigmoid_2:y:0(while/lstm_cell_610/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_610/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_610/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_610/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_610/BiasAdd/ReadVariableOp*^while/lstm_cell_610/MatMul/ReadVariableOp,^while/lstm_cell_610/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_610_biasadd_readvariableop_resource5while_lstm_cell_610_biasadd_readvariableop_resource_0"n
4while_lstm_cell_610_matmul_1_readvariableop_resource6while_lstm_cell_610_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_610_matmul_readvariableop_resource4while_lstm_cell_610_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_610/BiasAdd/ReadVariableOp*while/lstm_cell_610/BiasAdd/ReadVariableOp2V
)while/lstm_cell_610/MatMul/ReadVariableOp)while/lstm_cell_610/MatMul/ReadVariableOp2Z
+while/lstm_cell_610/MatMul_1/ReadVariableOp+while/lstm_cell_610/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
??
?
K__inference_sequential_203_layer_call_and_return_conditional_losses_3968602

inputsH
5lstm_609_lstm_cell_609_matmul_readvariableop_resource:	?J
7lstm_609_lstm_cell_609_matmul_1_readvariableop_resource:	d?E
6lstm_609_lstm_cell_609_biasadd_readvariableop_resource:	?H
5lstm_610_lstm_cell_610_matmul_readvariableop_resource:	d?J
7lstm_610_lstm_cell_610_matmul_1_readvariableop_resource:	2?E
6lstm_610_lstm_cell_610_biasadd_readvariableop_resource:	?G
5lstm_611_lstm_cell_611_matmul_readvariableop_resource:2(I
7lstm_611_lstm_cell_611_matmul_1_readvariableop_resource:
(D
6lstm_611_lstm_cell_611_biasadd_readvariableop_resource:(:
(dense_203_matmul_readvariableop_resource:
7
)dense_203_biasadd_readvariableop_resource:
identity?? dense_203/BiasAdd/ReadVariableOp?dense_203/MatMul/ReadVariableOp?-lstm_609/lstm_cell_609/BiasAdd/ReadVariableOp?,lstm_609/lstm_cell_609/MatMul/ReadVariableOp?.lstm_609/lstm_cell_609/MatMul_1/ReadVariableOp?lstm_609/while?-lstm_610/lstm_cell_610/BiasAdd/ReadVariableOp?,lstm_610/lstm_cell_610/MatMul/ReadVariableOp?.lstm_610/lstm_cell_610/MatMul_1/ReadVariableOp?lstm_610/while?-lstm_611/lstm_cell_611/BiasAdd/ReadVariableOp?,lstm_611/lstm_cell_611/MatMul/ReadVariableOp?.lstm_611/lstm_cell_611/MatMul_1/ReadVariableOp?lstm_611/whileD
lstm_609/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_609/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_609/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_609/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_609/strided_sliceStridedSlicelstm_609/Shape:output:0%lstm_609/strided_slice/stack:output:0'lstm_609/strided_slice/stack_1:output:0'lstm_609/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_609/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_609/zeros/packedPacklstm_609/strided_slice:output:0 lstm_609/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_609/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_609/zerosFilllstm_609/zeros/packed:output:0lstm_609/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_609/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_609/zeros_1/packedPacklstm_609/strided_slice:output:0"lstm_609/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_609/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_609/zeros_1Fill lstm_609/zeros_1/packed:output:0lstm_609/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_609/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_609/transpose	Transposeinputs lstm_609/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_609/Shape_1Shapelstm_609/transpose:y:0*
T0*
_output_shapes
:h
lstm_609/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_609/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_609/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_609/strided_slice_1StridedSlicelstm_609/Shape_1:output:0'lstm_609/strided_slice_1/stack:output:0)lstm_609/strided_slice_1/stack_1:output:0)lstm_609/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_609/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_609/TensorArrayV2TensorListReserve-lstm_609/TensorArrayV2/element_shape:output:0!lstm_609/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_609/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_609/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_609/transpose:y:0Glstm_609/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_609/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_609/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_609/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_609/strided_slice_2StridedSlicelstm_609/transpose:y:0'lstm_609/strided_slice_2/stack:output:0)lstm_609/strided_slice_2/stack_1:output:0)lstm_609/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_609/lstm_cell_609/MatMul/ReadVariableOpReadVariableOp5lstm_609_lstm_cell_609_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_609/lstm_cell_609/MatMulMatMul!lstm_609/strided_slice_2:output:04lstm_609/lstm_cell_609/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_609/lstm_cell_609/MatMul_1/ReadVariableOpReadVariableOp7lstm_609_lstm_cell_609_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_609/lstm_cell_609/MatMul_1MatMullstm_609/zeros:output:06lstm_609/lstm_cell_609/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_609/lstm_cell_609/addAddV2'lstm_609/lstm_cell_609/MatMul:product:0)lstm_609/lstm_cell_609/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_609/lstm_cell_609/BiasAdd/ReadVariableOpReadVariableOp6lstm_609_lstm_cell_609_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_609/lstm_cell_609/BiasAddBiasAddlstm_609/lstm_cell_609/add:z:05lstm_609/lstm_cell_609/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_609/lstm_cell_609/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_609/lstm_cell_609/splitSplit/lstm_609/lstm_cell_609/split/split_dim:output:0'lstm_609/lstm_cell_609/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_609/lstm_cell_609/SigmoidSigmoid%lstm_609/lstm_cell_609/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_609/lstm_cell_609/Sigmoid_1Sigmoid%lstm_609/lstm_cell_609/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_609/lstm_cell_609/mulMul$lstm_609/lstm_cell_609/Sigmoid_1:y:0lstm_609/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_609/lstm_cell_609/ReluRelu%lstm_609/lstm_cell_609/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_609/lstm_cell_609/mul_1Mul"lstm_609/lstm_cell_609/Sigmoid:y:0)lstm_609/lstm_cell_609/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_609/lstm_cell_609/add_1AddV2lstm_609/lstm_cell_609/mul:z:0 lstm_609/lstm_cell_609/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_609/lstm_cell_609/Sigmoid_2Sigmoid%lstm_609/lstm_cell_609/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_609/lstm_cell_609/Relu_1Relu lstm_609/lstm_cell_609/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_609/lstm_cell_609/mul_2Mul$lstm_609/lstm_cell_609/Sigmoid_2:y:0+lstm_609/lstm_cell_609/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_609/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_609/TensorArrayV2_1TensorListReserve/lstm_609/TensorArrayV2_1/element_shape:output:0!lstm_609/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_609/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_609/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_609/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_609/whileWhile$lstm_609/while/loop_counter:output:0*lstm_609/while/maximum_iterations:output:0lstm_609/time:output:0!lstm_609/TensorArrayV2_1:handle:0lstm_609/zeros:output:0lstm_609/zeros_1:output:0!lstm_609/strided_slice_1:output:0@lstm_609/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_609_lstm_cell_609_matmul_readvariableop_resource7lstm_609_lstm_cell_609_matmul_1_readvariableop_resource6lstm_609_lstm_cell_609_biasadd_readvariableop_resource*
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
lstm_609_while_body_3968234*'
condR
lstm_609_while_cond_3968233*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_609/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_609/TensorArrayV2Stack/TensorListStackTensorListStacklstm_609/while:output:3Blstm_609/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_609/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_609/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_609/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_609/strided_slice_3StridedSlice4lstm_609/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_609/strided_slice_3/stack:output:0)lstm_609/strided_slice_3/stack_1:output:0)lstm_609/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_609/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_609/transpose_1	Transpose4lstm_609/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_609/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_609/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_610/ShapeShapelstm_609/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_610/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_610/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_610/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_610/strided_sliceStridedSlicelstm_610/Shape:output:0%lstm_610/strided_slice/stack:output:0'lstm_610/strided_slice/stack_1:output:0'lstm_610/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_610/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_610/zeros/packedPacklstm_610/strided_slice:output:0 lstm_610/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_610/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_610/zerosFilllstm_610/zeros/packed:output:0lstm_610/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_610/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_610/zeros_1/packedPacklstm_610/strided_slice:output:0"lstm_610/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_610/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_610/zeros_1Fill lstm_610/zeros_1/packed:output:0lstm_610/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_610/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_610/transpose	Transposelstm_609/transpose_1:y:0 lstm_610/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_610/Shape_1Shapelstm_610/transpose:y:0*
T0*
_output_shapes
:h
lstm_610/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_610/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_610/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_610/strided_slice_1StridedSlicelstm_610/Shape_1:output:0'lstm_610/strided_slice_1/stack:output:0)lstm_610/strided_slice_1/stack_1:output:0)lstm_610/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_610/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_610/TensorArrayV2TensorListReserve-lstm_610/TensorArrayV2/element_shape:output:0!lstm_610/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_610/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_610/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_610/transpose:y:0Glstm_610/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_610/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_610/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_610/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_610/strided_slice_2StridedSlicelstm_610/transpose:y:0'lstm_610/strided_slice_2/stack:output:0)lstm_610/strided_slice_2/stack_1:output:0)lstm_610/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_610/lstm_cell_610/MatMul/ReadVariableOpReadVariableOp5lstm_610_lstm_cell_610_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_610/lstm_cell_610/MatMulMatMul!lstm_610/strided_slice_2:output:04lstm_610/lstm_cell_610/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_610/lstm_cell_610/MatMul_1/ReadVariableOpReadVariableOp7lstm_610_lstm_cell_610_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_610/lstm_cell_610/MatMul_1MatMullstm_610/zeros:output:06lstm_610/lstm_cell_610/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_610/lstm_cell_610/addAddV2'lstm_610/lstm_cell_610/MatMul:product:0)lstm_610/lstm_cell_610/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_610/lstm_cell_610/BiasAdd/ReadVariableOpReadVariableOp6lstm_610_lstm_cell_610_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_610/lstm_cell_610/BiasAddBiasAddlstm_610/lstm_cell_610/add:z:05lstm_610/lstm_cell_610/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_610/lstm_cell_610/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_610/lstm_cell_610/splitSplit/lstm_610/lstm_cell_610/split/split_dim:output:0'lstm_610/lstm_cell_610/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_610/lstm_cell_610/SigmoidSigmoid%lstm_610/lstm_cell_610/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_610/lstm_cell_610/Sigmoid_1Sigmoid%lstm_610/lstm_cell_610/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_610/lstm_cell_610/mulMul$lstm_610/lstm_cell_610/Sigmoid_1:y:0lstm_610/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_610/lstm_cell_610/ReluRelu%lstm_610/lstm_cell_610/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_610/lstm_cell_610/mul_1Mul"lstm_610/lstm_cell_610/Sigmoid:y:0)lstm_610/lstm_cell_610/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_610/lstm_cell_610/add_1AddV2lstm_610/lstm_cell_610/mul:z:0 lstm_610/lstm_cell_610/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_610/lstm_cell_610/Sigmoid_2Sigmoid%lstm_610/lstm_cell_610/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_610/lstm_cell_610/Relu_1Relu lstm_610/lstm_cell_610/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_610/lstm_cell_610/mul_2Mul$lstm_610/lstm_cell_610/Sigmoid_2:y:0+lstm_610/lstm_cell_610/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_610/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_610/TensorArrayV2_1TensorListReserve/lstm_610/TensorArrayV2_1/element_shape:output:0!lstm_610/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_610/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_610/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_610/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_610/whileWhile$lstm_610/while/loop_counter:output:0*lstm_610/while/maximum_iterations:output:0lstm_610/time:output:0!lstm_610/TensorArrayV2_1:handle:0lstm_610/zeros:output:0lstm_610/zeros_1:output:0!lstm_610/strided_slice_1:output:0@lstm_610/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_610_lstm_cell_610_matmul_readvariableop_resource7lstm_610_lstm_cell_610_matmul_1_readvariableop_resource6lstm_610_lstm_cell_610_biasadd_readvariableop_resource*
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
lstm_610_while_body_3968373*'
condR
lstm_610_while_cond_3968372*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_610/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_610/TensorArrayV2Stack/TensorListStackTensorListStacklstm_610/while:output:3Blstm_610/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_610/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_610/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_610/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_610/strided_slice_3StridedSlice4lstm_610/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_610/strided_slice_3/stack:output:0)lstm_610/strided_slice_3/stack_1:output:0)lstm_610/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_610/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_610/transpose_1	Transpose4lstm_610/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_610/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_610/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_611/ShapeShapelstm_610/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_611/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_611/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_611/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_611/strided_sliceStridedSlicelstm_611/Shape:output:0%lstm_611/strided_slice/stack:output:0'lstm_611/strided_slice/stack_1:output:0'lstm_611/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_611/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_611/zeros/packedPacklstm_611/strided_slice:output:0 lstm_611/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_611/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_611/zerosFilllstm_611/zeros/packed:output:0lstm_611/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_611/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_611/zeros_1/packedPacklstm_611/strided_slice:output:0"lstm_611/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_611/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_611/zeros_1Fill lstm_611/zeros_1/packed:output:0lstm_611/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_611/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_611/transpose	Transposelstm_610/transpose_1:y:0 lstm_611/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_611/Shape_1Shapelstm_611/transpose:y:0*
T0*
_output_shapes
:h
lstm_611/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_611/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_611/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_611/strided_slice_1StridedSlicelstm_611/Shape_1:output:0'lstm_611/strided_slice_1/stack:output:0)lstm_611/strided_slice_1/stack_1:output:0)lstm_611/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_611/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_611/TensorArrayV2TensorListReserve-lstm_611/TensorArrayV2/element_shape:output:0!lstm_611/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_611/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_611/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_611/transpose:y:0Glstm_611/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_611/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_611/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_611/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_611/strided_slice_2StridedSlicelstm_611/transpose:y:0'lstm_611/strided_slice_2/stack:output:0)lstm_611/strided_slice_2/stack_1:output:0)lstm_611/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_611/lstm_cell_611/MatMul/ReadVariableOpReadVariableOp5lstm_611_lstm_cell_611_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_611/lstm_cell_611/MatMulMatMul!lstm_611/strided_slice_2:output:04lstm_611/lstm_cell_611/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_611/lstm_cell_611/MatMul_1/ReadVariableOpReadVariableOp7lstm_611_lstm_cell_611_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_611/lstm_cell_611/MatMul_1MatMullstm_611/zeros:output:06lstm_611/lstm_cell_611/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_611/lstm_cell_611/addAddV2'lstm_611/lstm_cell_611/MatMul:product:0)lstm_611/lstm_cell_611/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_611/lstm_cell_611/BiasAdd/ReadVariableOpReadVariableOp6lstm_611_lstm_cell_611_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_611/lstm_cell_611/BiasAddBiasAddlstm_611/lstm_cell_611/add:z:05lstm_611/lstm_cell_611/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_611/lstm_cell_611/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_611/lstm_cell_611/splitSplit/lstm_611/lstm_cell_611/split/split_dim:output:0'lstm_611/lstm_cell_611/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_611/lstm_cell_611/SigmoidSigmoid%lstm_611/lstm_cell_611/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_611/lstm_cell_611/Sigmoid_1Sigmoid%lstm_611/lstm_cell_611/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_611/lstm_cell_611/mulMul$lstm_611/lstm_cell_611/Sigmoid_1:y:0lstm_611/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_611/lstm_cell_611/ReluRelu%lstm_611/lstm_cell_611/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_611/lstm_cell_611/mul_1Mul"lstm_611/lstm_cell_611/Sigmoid:y:0)lstm_611/lstm_cell_611/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_611/lstm_cell_611/add_1AddV2lstm_611/lstm_cell_611/mul:z:0 lstm_611/lstm_cell_611/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_611/lstm_cell_611/Sigmoid_2Sigmoid%lstm_611/lstm_cell_611/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_611/lstm_cell_611/Relu_1Relu lstm_611/lstm_cell_611/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_611/lstm_cell_611/mul_2Mul$lstm_611/lstm_cell_611/Sigmoid_2:y:0+lstm_611/lstm_cell_611/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_611/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_611/TensorArrayV2_1TensorListReserve/lstm_611/TensorArrayV2_1/element_shape:output:0!lstm_611/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_611/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_611/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_611/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_611/whileWhile$lstm_611/while/loop_counter:output:0*lstm_611/while/maximum_iterations:output:0lstm_611/time:output:0!lstm_611/TensorArrayV2_1:handle:0lstm_611/zeros:output:0lstm_611/zeros_1:output:0!lstm_611/strided_slice_1:output:0@lstm_611/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_611_lstm_cell_611_matmul_readvariableop_resource7lstm_611_lstm_cell_611_matmul_1_readvariableop_resource6lstm_611_lstm_cell_611_biasadd_readvariableop_resource*
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
lstm_611_while_body_3968512*'
condR
lstm_611_while_cond_3968511*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_611/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_611/TensorArrayV2Stack/TensorListStackTensorListStacklstm_611/while:output:3Blstm_611/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_611/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_611/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_611/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_611/strided_slice_3StridedSlice4lstm_611/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_611/strided_slice_3/stack:output:0)lstm_611/strided_slice_3/stack_1:output:0)lstm_611/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_611/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_611/transpose_1	Transpose4lstm_611/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_611/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_611/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_203/MatMul/ReadVariableOpReadVariableOp(dense_203_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_203/MatMulMatMul!lstm_611/strided_slice_3:output:0'dense_203/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_203/BiasAdd/ReadVariableOpReadVariableOp)dense_203_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_203/BiasAddBiasAdddense_203/MatMul:product:0(dense_203/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_203/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_203/BiasAdd/ReadVariableOp ^dense_203/MatMul/ReadVariableOp.^lstm_609/lstm_cell_609/BiasAdd/ReadVariableOp-^lstm_609/lstm_cell_609/MatMul/ReadVariableOp/^lstm_609/lstm_cell_609/MatMul_1/ReadVariableOp^lstm_609/while.^lstm_610/lstm_cell_610/BiasAdd/ReadVariableOp-^lstm_610/lstm_cell_610/MatMul/ReadVariableOp/^lstm_610/lstm_cell_610/MatMul_1/ReadVariableOp^lstm_610/while.^lstm_611/lstm_cell_611/BiasAdd/ReadVariableOp-^lstm_611/lstm_cell_611/MatMul/ReadVariableOp/^lstm_611/lstm_cell_611/MatMul_1/ReadVariableOp^lstm_611/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_203/BiasAdd/ReadVariableOp dense_203/BiasAdd/ReadVariableOp2B
dense_203/MatMul/ReadVariableOpdense_203/MatMul/ReadVariableOp2^
-lstm_609/lstm_cell_609/BiasAdd/ReadVariableOp-lstm_609/lstm_cell_609/BiasAdd/ReadVariableOp2\
,lstm_609/lstm_cell_609/MatMul/ReadVariableOp,lstm_609/lstm_cell_609/MatMul/ReadVariableOp2`
.lstm_609/lstm_cell_609/MatMul_1/ReadVariableOp.lstm_609/lstm_cell_609/MatMul_1/ReadVariableOp2 
lstm_609/whilelstm_609/while2^
-lstm_610/lstm_cell_610/BiasAdd/ReadVariableOp-lstm_610/lstm_cell_610/BiasAdd/ReadVariableOp2\
,lstm_610/lstm_cell_610/MatMul/ReadVariableOp,lstm_610/lstm_cell_610/MatMul/ReadVariableOp2`
.lstm_610/lstm_cell_610/MatMul_1/ReadVariableOp.lstm_610/lstm_cell_610/MatMul_1/ReadVariableOp2 
lstm_610/whilelstm_610/while2^
-lstm_611/lstm_cell_611/BiasAdd/ReadVariableOp-lstm_611/lstm_cell_611/BiasAdd/ReadVariableOp2\
,lstm_611/lstm_cell_611/MatMul/ReadVariableOp,lstm_611/lstm_cell_611/MatMul/ReadVariableOp2`
.lstm_611/lstm_cell_611/MatMul_1/ReadVariableOp.lstm_611/lstm_cell_611/MatMul_1/ReadVariableOp2 
lstm_611/whilelstm_611/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?#
?
while_body_3966833
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_611_3966857_0:2(/
while_lstm_cell_611_3966859_0:
(+
while_lstm_cell_611_3966861_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_611_3966857:2(-
while_lstm_cell_611_3966859:
()
while_lstm_cell_611_3966861:(??+while/lstm_cell_611/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_611/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_611_3966857_0while_lstm_cell_611_3966859_0while_lstm_cell_611_3966861_0*
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
J__inference_lstm_cell_611_layer_call_and_return_conditional_losses_3966774?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_611/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_611/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_611/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_611/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_611_3966857while_lstm_cell_611_3966857_0"<
while_lstm_cell_611_3966859while_lstm_cell_611_3966859_0"<
while_lstm_cell_611_3966861while_lstm_cell_611_3966861_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_611/StatefulPartitionedCall+while/lstm_cell_611/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_609_layer_call_and_return_conditional_losses_3966011

inputs(
lstm_cell_609_3965929:	?(
lstm_cell_609_3965931:	d?$
lstm_cell_609_3965933:	?
identity??%lstm_cell_609/StatefulPartitionedCall?while;
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
%lstm_cell_609/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_609_3965929lstm_cell_609_3965931lstm_cell_609_3965933*
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
J__inference_lstm_cell_609_layer_call_and_return_conditional_losses_3965928n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_609_3965929lstm_cell_609_3965931lstm_cell_609_3965933*
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
while_body_3965942*
condR
while_cond_3965941*K
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
NoOpNoOp&^lstm_cell_609/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_609/StatefulPartitionedCall%lstm_cell_609/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?

?
lstm_609_while_cond_3968660.
*lstm_609_while_lstm_609_while_loop_counter4
0lstm_609_while_lstm_609_while_maximum_iterations
lstm_609_while_placeholder 
lstm_609_while_placeholder_1 
lstm_609_while_placeholder_2 
lstm_609_while_placeholder_30
,lstm_609_while_less_lstm_609_strided_slice_1G
Clstm_609_while_lstm_609_while_cond_3968660___redundant_placeholder0G
Clstm_609_while_lstm_609_while_cond_3968660___redundant_placeholder1G
Clstm_609_while_lstm_609_while_cond_3968660___redundant_placeholder2G
Clstm_609_while_lstm_609_while_cond_3968660___redundant_placeholder3
lstm_609_while_identity
?
lstm_609/while/LessLesslstm_609_while_placeholder,lstm_609_while_less_lstm_609_strided_slice_1*
T0*
_output_shapes
: ]
lstm_609/while/IdentityIdentitylstm_609/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_609_while_identity lstm_609/while/Identity:output:0*(
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
E__inference_lstm_611_layer_call_and_return_conditional_losses_3970591
inputs_0>
,lstm_cell_611_matmul_readvariableop_resource:2(@
.lstm_cell_611_matmul_1_readvariableop_resource:
(;
-lstm_cell_611_biasadd_readvariableop_resource:(
identity??$lstm_cell_611/BiasAdd/ReadVariableOp?#lstm_cell_611/MatMul/ReadVariableOp?%lstm_cell_611/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_611/MatMul/ReadVariableOpReadVariableOp,lstm_cell_611_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_611/MatMulMatMulstrided_slice_2:output:0+lstm_cell_611/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_611/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_611_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_611/MatMul_1MatMulzeros:output:0-lstm_cell_611/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_611/addAddV2lstm_cell_611/MatMul:product:0 lstm_cell_611/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_611/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_611_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_611/BiasAddBiasAddlstm_cell_611/add:z:0,lstm_cell_611/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_611/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_611/splitSplit&lstm_cell_611/split/split_dim:output:0lstm_cell_611/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_611/SigmoidSigmoidlstm_cell_611/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_611/Sigmoid_1Sigmoidlstm_cell_611/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_611/mulMullstm_cell_611/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_611/ReluRelulstm_cell_611/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_611/mul_1Mullstm_cell_611/Sigmoid:y:0 lstm_cell_611/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_611/add_1AddV2lstm_cell_611/mul:z:0lstm_cell_611/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_611/Sigmoid_2Sigmoidlstm_cell_611/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_611/Relu_1Relulstm_cell_611/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_611/mul_2Mullstm_cell_611/Sigmoid_2:y:0"lstm_cell_611/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_611_matmul_readvariableop_resource.lstm_cell_611_matmul_1_readvariableop_resource-lstm_cell_611_biasadd_readvariableop_resource*
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
while_body_3970507*
condR
while_cond_3970506*K
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
NoOpNoOp%^lstm_cell_611/BiasAdd/ReadVariableOp$^lstm_cell_611/MatMul/ReadVariableOp&^lstm_cell_611/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_611/BiasAdd/ReadVariableOp$lstm_cell_611/BiasAdd/ReadVariableOp2J
#lstm_cell_611/MatMul/ReadVariableOp#lstm_cell_611/MatMul/ReadVariableOp2N
%lstm_cell_611/MatMul_1/ReadVariableOp%lstm_cell_611/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?8
?
while_body_3970650
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_611_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_611_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_611_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_611_matmul_readvariableop_resource:2(F
4while_lstm_cell_611_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_611_biasadd_readvariableop_resource:(??*while/lstm_cell_611/BiasAdd/ReadVariableOp?)while/lstm_cell_611/MatMul/ReadVariableOp?+while/lstm_cell_611/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_611/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_611_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_611/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_611/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_611/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_611_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_611/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_611/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_611/addAddV2$while/lstm_cell_611/MatMul:product:0&while/lstm_cell_611/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_611/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_611_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_611/BiasAddBiasAddwhile/lstm_cell_611/add:z:02while/lstm_cell_611/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_611/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_611/splitSplit,while/lstm_cell_611/split/split_dim:output:0$while/lstm_cell_611/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_611/SigmoidSigmoid"while/lstm_cell_611/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_611/Sigmoid_1Sigmoid"while/lstm_cell_611/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_611/mulMul!while/lstm_cell_611/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_611/ReluRelu"while/lstm_cell_611/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_611/mul_1Mulwhile/lstm_cell_611/Sigmoid:y:0&while/lstm_cell_611/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_611/add_1AddV2while/lstm_cell_611/mul:z:0while/lstm_cell_611/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_611/Sigmoid_2Sigmoid"while/lstm_cell_611/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_611/Relu_1Reluwhile/lstm_cell_611/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_611/mul_2Mul!while/lstm_cell_611/Sigmoid_2:y:0(while/lstm_cell_611/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_611/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_611/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_611/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_611/BiasAdd/ReadVariableOp*^while/lstm_cell_611/MatMul/ReadVariableOp,^while/lstm_cell_611/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_611_biasadd_readvariableop_resource5while_lstm_cell_611_biasadd_readvariableop_resource_0"n
4while_lstm_cell_611_matmul_1_readvariableop_resource6while_lstm_cell_611_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_611_matmul_readvariableop_resource4while_lstm_cell_611_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_611/BiasAdd/ReadVariableOp*while/lstm_cell_611/BiasAdd/ReadVariableOp2V
)while/lstm_cell_611/MatMul/ReadVariableOp)while/lstm_cell_611/MatMul/ReadVariableOp2Z
+while/lstm_cell_611/MatMul_1/ReadVariableOp+while/lstm_cell_611/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_610_layer_call_and_return_conditional_losses_3967210

inputs?
,lstm_cell_610_matmul_readvariableop_resource:	d?A
.lstm_cell_610_matmul_1_readvariableop_resource:	2?<
-lstm_cell_610_biasadd_readvariableop_resource:	?
identity??$lstm_cell_610/BiasAdd/ReadVariableOp?#lstm_cell_610/MatMul/ReadVariableOp?%lstm_cell_610/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_610/MatMul/ReadVariableOpReadVariableOp,lstm_cell_610_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_610/MatMulMatMulstrided_slice_2:output:0+lstm_cell_610/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_610/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_610_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_610/MatMul_1MatMulzeros:output:0-lstm_cell_610/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_610/addAddV2lstm_cell_610/MatMul:product:0 lstm_cell_610/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_610/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_610_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_610/BiasAddBiasAddlstm_cell_610/add:z:0,lstm_cell_610/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_610/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_610/splitSplit&lstm_cell_610/split/split_dim:output:0lstm_cell_610/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_610/SigmoidSigmoidlstm_cell_610/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_610/Sigmoid_1Sigmoidlstm_cell_610/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_610/mulMullstm_cell_610/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_610/ReluRelulstm_cell_610/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_610/mul_1Mullstm_cell_610/Sigmoid:y:0 lstm_cell_610/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_610/add_1AddV2lstm_cell_610/mul:z:0lstm_cell_610/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_610/Sigmoid_2Sigmoidlstm_cell_610/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_610/Relu_1Relulstm_cell_610/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_610/mul_2Mullstm_cell_610/Sigmoid_2:y:0"lstm_cell_610/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_610_matmul_readvariableop_resource.lstm_cell_610_matmul_1_readvariableop_resource-lstm_cell_610_biasadd_readvariableop_resource*
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
while_body_3967126*
condR
while_cond_3967125*K
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
NoOpNoOp%^lstm_cell_610/BiasAdd/ReadVariableOp$^lstm_cell_610/MatMul/ReadVariableOp&^lstm_cell_610/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_610/BiasAdd/ReadVariableOp$lstm_cell_610/BiasAdd/ReadVariableOp2J
#lstm_cell_610/MatMul/ReadVariableOp#lstm_cell_610/MatMul/ReadVariableOp2N
%lstm_cell_610/MatMul_1/ReadVariableOp%lstm_cell_610/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
while_cond_3969890
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3969890___redundant_placeholder05
1while_while_cond_3969890___redundant_placeholder15
1while_while_cond_3969890___redundant_placeholder25
1while_while_cond_3969890___redundant_placeholder3
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
*sequential_203_lstm_611_while_body_3965771L
Hsequential_203_lstm_611_while_sequential_203_lstm_611_while_loop_counterR
Nsequential_203_lstm_611_while_sequential_203_lstm_611_while_maximum_iterations-
)sequential_203_lstm_611_while_placeholder/
+sequential_203_lstm_611_while_placeholder_1/
+sequential_203_lstm_611_while_placeholder_2/
+sequential_203_lstm_611_while_placeholder_3K
Gsequential_203_lstm_611_while_sequential_203_lstm_611_strided_slice_1_0?
?sequential_203_lstm_611_while_tensorarrayv2read_tensorlistgetitem_sequential_203_lstm_611_tensorarrayunstack_tensorlistfromtensor_0^
Lsequential_203_lstm_611_while_lstm_cell_611_matmul_readvariableop_resource_0:2(`
Nsequential_203_lstm_611_while_lstm_cell_611_matmul_1_readvariableop_resource_0:
([
Msequential_203_lstm_611_while_lstm_cell_611_biasadd_readvariableop_resource_0:(*
&sequential_203_lstm_611_while_identity,
(sequential_203_lstm_611_while_identity_1,
(sequential_203_lstm_611_while_identity_2,
(sequential_203_lstm_611_while_identity_3,
(sequential_203_lstm_611_while_identity_4,
(sequential_203_lstm_611_while_identity_5I
Esequential_203_lstm_611_while_sequential_203_lstm_611_strided_slice_1?
?sequential_203_lstm_611_while_tensorarrayv2read_tensorlistgetitem_sequential_203_lstm_611_tensorarrayunstack_tensorlistfromtensor\
Jsequential_203_lstm_611_while_lstm_cell_611_matmul_readvariableop_resource:2(^
Lsequential_203_lstm_611_while_lstm_cell_611_matmul_1_readvariableop_resource:
(Y
Ksequential_203_lstm_611_while_lstm_cell_611_biasadd_readvariableop_resource:(??Bsequential_203/lstm_611/while/lstm_cell_611/BiasAdd/ReadVariableOp?Asequential_203/lstm_611/while/lstm_cell_611/MatMul/ReadVariableOp?Csequential_203/lstm_611/while/lstm_cell_611/MatMul_1/ReadVariableOp?
Osequential_203/lstm_611/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
Asequential_203/lstm_611/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_203_lstm_611_while_tensorarrayv2read_tensorlistgetitem_sequential_203_lstm_611_tensorarrayunstack_tensorlistfromtensor_0)sequential_203_lstm_611_while_placeholderXsequential_203/lstm_611/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
Asequential_203/lstm_611/while/lstm_cell_611/MatMul/ReadVariableOpReadVariableOpLsequential_203_lstm_611_while_lstm_cell_611_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
2sequential_203/lstm_611/while/lstm_cell_611/MatMulMatMulHsequential_203/lstm_611/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_203/lstm_611/while/lstm_cell_611/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
Csequential_203/lstm_611/while/lstm_cell_611/MatMul_1/ReadVariableOpReadVariableOpNsequential_203_lstm_611_while_lstm_cell_611_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
4sequential_203/lstm_611/while/lstm_cell_611/MatMul_1MatMul+sequential_203_lstm_611_while_placeholder_2Ksequential_203/lstm_611/while/lstm_cell_611/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
/sequential_203/lstm_611/while/lstm_cell_611/addAddV2<sequential_203/lstm_611/while/lstm_cell_611/MatMul:product:0>sequential_203/lstm_611/while/lstm_cell_611/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
Bsequential_203/lstm_611/while/lstm_cell_611/BiasAdd/ReadVariableOpReadVariableOpMsequential_203_lstm_611_while_lstm_cell_611_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
3sequential_203/lstm_611/while/lstm_cell_611/BiasAddBiasAdd3sequential_203/lstm_611/while/lstm_cell_611/add:z:0Jsequential_203/lstm_611/while/lstm_cell_611/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(}
;sequential_203/lstm_611/while/lstm_cell_611/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_203/lstm_611/while/lstm_cell_611/splitSplitDsequential_203/lstm_611/while/lstm_cell_611/split/split_dim:output:0<sequential_203/lstm_611/while/lstm_cell_611/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
3sequential_203/lstm_611/while/lstm_cell_611/SigmoidSigmoid:sequential_203/lstm_611/while/lstm_cell_611/split:output:0*
T0*'
_output_shapes
:?????????
?
5sequential_203/lstm_611/while/lstm_cell_611/Sigmoid_1Sigmoid:sequential_203/lstm_611/while/lstm_cell_611/split:output:1*
T0*'
_output_shapes
:?????????
?
/sequential_203/lstm_611/while/lstm_cell_611/mulMul9sequential_203/lstm_611/while/lstm_cell_611/Sigmoid_1:y:0+sequential_203_lstm_611_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
0sequential_203/lstm_611/while/lstm_cell_611/ReluRelu:sequential_203/lstm_611/while/lstm_cell_611/split:output:2*
T0*'
_output_shapes
:?????????
?
1sequential_203/lstm_611/while/lstm_cell_611/mul_1Mul7sequential_203/lstm_611/while/lstm_cell_611/Sigmoid:y:0>sequential_203/lstm_611/while/lstm_cell_611/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
1sequential_203/lstm_611/while/lstm_cell_611/add_1AddV23sequential_203/lstm_611/while/lstm_cell_611/mul:z:05sequential_203/lstm_611/while/lstm_cell_611/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
5sequential_203/lstm_611/while/lstm_cell_611/Sigmoid_2Sigmoid:sequential_203/lstm_611/while/lstm_cell_611/split:output:3*
T0*'
_output_shapes
:?????????
?
2sequential_203/lstm_611/while/lstm_cell_611/Relu_1Relu5sequential_203/lstm_611/while/lstm_cell_611/add_1:z:0*
T0*'
_output_shapes
:?????????
?
1sequential_203/lstm_611/while/lstm_cell_611/mul_2Mul9sequential_203/lstm_611/while/lstm_cell_611/Sigmoid_2:y:0@sequential_203/lstm_611/while/lstm_cell_611/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
Bsequential_203/lstm_611/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_203_lstm_611_while_placeholder_1)sequential_203_lstm_611_while_placeholder5sequential_203/lstm_611/while/lstm_cell_611/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_203/lstm_611/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_203/lstm_611/while/addAddV2)sequential_203_lstm_611_while_placeholder,sequential_203/lstm_611/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_203/lstm_611/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_203/lstm_611/while/add_1AddV2Hsequential_203_lstm_611_while_sequential_203_lstm_611_while_loop_counter.sequential_203/lstm_611/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_203/lstm_611/while/IdentityIdentity'sequential_203/lstm_611/while/add_1:z:0#^sequential_203/lstm_611/while/NoOp*
T0*
_output_shapes
: ?
(sequential_203/lstm_611/while/Identity_1IdentityNsequential_203_lstm_611_while_sequential_203_lstm_611_while_maximum_iterations#^sequential_203/lstm_611/while/NoOp*
T0*
_output_shapes
: ?
(sequential_203/lstm_611/while/Identity_2Identity%sequential_203/lstm_611/while/add:z:0#^sequential_203/lstm_611/while/NoOp*
T0*
_output_shapes
: ?
(sequential_203/lstm_611/while/Identity_3IdentityRsequential_203/lstm_611/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_203/lstm_611/while/NoOp*
T0*
_output_shapes
: ?
(sequential_203/lstm_611/while/Identity_4Identity5sequential_203/lstm_611/while/lstm_cell_611/mul_2:z:0#^sequential_203/lstm_611/while/NoOp*
T0*'
_output_shapes
:?????????
?
(sequential_203/lstm_611/while/Identity_5Identity5sequential_203/lstm_611/while/lstm_cell_611/add_1:z:0#^sequential_203/lstm_611/while/NoOp*
T0*'
_output_shapes
:?????????
?
"sequential_203/lstm_611/while/NoOpNoOpC^sequential_203/lstm_611/while/lstm_cell_611/BiasAdd/ReadVariableOpB^sequential_203/lstm_611/while/lstm_cell_611/MatMul/ReadVariableOpD^sequential_203/lstm_611/while/lstm_cell_611/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_203_lstm_611_while_identity/sequential_203/lstm_611/while/Identity:output:0"]
(sequential_203_lstm_611_while_identity_11sequential_203/lstm_611/while/Identity_1:output:0"]
(sequential_203_lstm_611_while_identity_21sequential_203/lstm_611/while/Identity_2:output:0"]
(sequential_203_lstm_611_while_identity_31sequential_203/lstm_611/while/Identity_3:output:0"]
(sequential_203_lstm_611_while_identity_41sequential_203/lstm_611/while/Identity_4:output:0"]
(sequential_203_lstm_611_while_identity_51sequential_203/lstm_611/while/Identity_5:output:0"?
Ksequential_203_lstm_611_while_lstm_cell_611_biasadd_readvariableop_resourceMsequential_203_lstm_611_while_lstm_cell_611_biasadd_readvariableop_resource_0"?
Lsequential_203_lstm_611_while_lstm_cell_611_matmul_1_readvariableop_resourceNsequential_203_lstm_611_while_lstm_cell_611_matmul_1_readvariableop_resource_0"?
Jsequential_203_lstm_611_while_lstm_cell_611_matmul_readvariableop_resourceLsequential_203_lstm_611_while_lstm_cell_611_matmul_readvariableop_resource_0"?
Esequential_203_lstm_611_while_sequential_203_lstm_611_strided_slice_1Gsequential_203_lstm_611_while_sequential_203_lstm_611_strided_slice_1_0"?
?sequential_203_lstm_611_while_tensorarrayv2read_tensorlistgetitem_sequential_203_lstm_611_tensorarrayunstack_tensorlistfromtensor?sequential_203_lstm_611_while_tensorarrayv2read_tensorlistgetitem_sequential_203_lstm_611_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2?
Bsequential_203/lstm_611/while/lstm_cell_611/BiasAdd/ReadVariableOpBsequential_203/lstm_611/while/lstm_cell_611/BiasAdd/ReadVariableOp2?
Asequential_203/lstm_611/while/lstm_cell_611/MatMul/ReadVariableOpAsequential_203/lstm_611/while/lstm_cell_611/MatMul/ReadVariableOp2?
Csequential_203/lstm_611/while/lstm_cell_611/MatMul_1/ReadVariableOpCsequential_203/lstm_611/while/lstm_cell_611/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_3970364
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_611_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_611_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_611_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_611_matmul_readvariableop_resource:2(F
4while_lstm_cell_611_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_611_biasadd_readvariableop_resource:(??*while/lstm_cell_611/BiasAdd/ReadVariableOp?)while/lstm_cell_611/MatMul/ReadVariableOp?+while/lstm_cell_611/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_611/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_611_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_611/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_611/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_611/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_611_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_611/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_611/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_611/addAddV2$while/lstm_cell_611/MatMul:product:0&while/lstm_cell_611/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_611/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_611_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_611/BiasAddBiasAddwhile/lstm_cell_611/add:z:02while/lstm_cell_611/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_611/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_611/splitSplit,while/lstm_cell_611/split/split_dim:output:0$while/lstm_cell_611/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_611/SigmoidSigmoid"while/lstm_cell_611/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_611/Sigmoid_1Sigmoid"while/lstm_cell_611/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_611/mulMul!while/lstm_cell_611/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_611/ReluRelu"while/lstm_cell_611/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_611/mul_1Mulwhile/lstm_cell_611/Sigmoid:y:0&while/lstm_cell_611/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_611/add_1AddV2while/lstm_cell_611/mul:z:0while/lstm_cell_611/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_611/Sigmoid_2Sigmoid"while/lstm_cell_611/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_611/Relu_1Reluwhile/lstm_cell_611/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_611/mul_2Mul!while/lstm_cell_611/Sigmoid_2:y:0(while/lstm_cell_611/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_611/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_611/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_611/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_611/BiasAdd/ReadVariableOp*^while/lstm_cell_611/MatMul/ReadVariableOp,^while/lstm_cell_611/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_611_biasadd_readvariableop_resource5while_lstm_cell_611_biasadd_readvariableop_resource_0"n
4while_lstm_cell_611_matmul_1_readvariableop_resource6while_lstm_cell_611_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_611_matmul_readvariableop_resource4while_lstm_cell_611_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_611/BiasAdd/ReadVariableOp*while/lstm_cell_611/BiasAdd/ReadVariableOp2V
)while/lstm_cell_611/MatMul/ReadVariableOp)while/lstm_cell_611/MatMul/ReadVariableOp2Z
+while/lstm_cell_611/MatMul_1/ReadVariableOp+while/lstm_cell_611/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_609_layer_call_and_return_conditional_losses_3969645

inputs?
,lstm_cell_609_matmul_readvariableop_resource:	?A
.lstm_cell_609_matmul_1_readvariableop_resource:	d?<
-lstm_cell_609_biasadd_readvariableop_resource:	?
identity??$lstm_cell_609/BiasAdd/ReadVariableOp?#lstm_cell_609/MatMul/ReadVariableOp?%lstm_cell_609/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_609/MatMul/ReadVariableOpReadVariableOp,lstm_cell_609_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_609/MatMulMatMulstrided_slice_2:output:0+lstm_cell_609/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_609/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_609_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_609/MatMul_1MatMulzeros:output:0-lstm_cell_609/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_609/addAddV2lstm_cell_609/MatMul:product:0 lstm_cell_609/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_609/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_609_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_609/BiasAddBiasAddlstm_cell_609/add:z:0,lstm_cell_609/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_609/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_609/splitSplit&lstm_cell_609/split/split_dim:output:0lstm_cell_609/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_609/SigmoidSigmoidlstm_cell_609/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_609/Sigmoid_1Sigmoidlstm_cell_609/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_609/mulMullstm_cell_609/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_609/ReluRelulstm_cell_609/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_609/mul_1Mullstm_cell_609/Sigmoid:y:0 lstm_cell_609/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_609/add_1AddV2lstm_cell_609/mul:z:0lstm_cell_609/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_609/Sigmoid_2Sigmoidlstm_cell_609/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_609/Relu_1Relulstm_cell_609/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_609/mul_2Mullstm_cell_609/Sigmoid_2:y:0"lstm_cell_609/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_609_matmul_readvariableop_resource.lstm_cell_609_matmul_1_readvariableop_resource-lstm_cell_609_biasadd_readvariableop_resource*
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
while_body_3969561*
condR
while_cond_3969560*K
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
NoOpNoOp%^lstm_cell_609/BiasAdd/ReadVariableOp$^lstm_cell_609/MatMul/ReadVariableOp&^lstm_cell_609/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_609/BiasAdd/ReadVariableOp$lstm_cell_609/BiasAdd/ReadVariableOp2J
#lstm_cell_609/MatMul/ReadVariableOp#lstm_cell_609/MatMul/ReadVariableOp2N
%lstm_cell_609/MatMul_1/ReadVariableOp%lstm_cell_609/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
K__inference_sequential_203_layer_call_and_return_conditional_losses_3968086
lstm_609_input#
lstm_609_3968059:	?#
lstm_609_3968061:	d?
lstm_609_3968063:	?#
lstm_610_3968066:	d?#
lstm_610_3968068:	2?
lstm_610_3968070:	?"
lstm_611_3968073:2("
lstm_611_3968075:
(
lstm_611_3968077:(#
dense_203_3968080:

dense_203_3968082:
identity??!dense_203/StatefulPartitionedCall? lstm_609/StatefulPartitionedCall? lstm_610/StatefulPartitionedCall? lstm_611/StatefulPartitionedCall?
 lstm_609/StatefulPartitionedCallStatefulPartitionedCalllstm_609_inputlstm_609_3968059lstm_609_3968061lstm_609_3968063*
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
E__inference_lstm_609_layer_call_and_return_conditional_losses_3967906?
 lstm_610/StatefulPartitionedCallStatefulPartitionedCall)lstm_609/StatefulPartitionedCall:output:0lstm_610_3968066lstm_610_3968068lstm_610_3968070*
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
E__inference_lstm_610_layer_call_and_return_conditional_losses_3967741?
 lstm_611/StatefulPartitionedCallStatefulPartitionedCall)lstm_610/StatefulPartitionedCall:output:0lstm_611_3968073lstm_611_3968075lstm_611_3968077*
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
E__inference_lstm_611_layer_call_and_return_conditional_losses_3967576?
!dense_203/StatefulPartitionedCallStatefulPartitionedCall)lstm_611/StatefulPartitionedCall:output:0dense_203_3968080dense_203_3968082*
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
F__inference_dense_203_layer_call_and_return_conditional_losses_3967378y
IdentityIdentity*dense_203/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_203/StatefulPartitionedCall!^lstm_609/StatefulPartitionedCall!^lstm_610/StatefulPartitionedCall!^lstm_611/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_203/StatefulPartitionedCall!dense_203/StatefulPartitionedCall2D
 lstm_609/StatefulPartitionedCall lstm_609/StatefulPartitionedCall2D
 lstm_610/StatefulPartitionedCall lstm_610/StatefulPartitionedCall2D
 lstm_611/StatefulPartitionedCall lstm_611/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_609_input
?K
?
E__inference_lstm_609_layer_call_and_return_conditional_losses_3969359
inputs_0?
,lstm_cell_609_matmul_readvariableop_resource:	?A
.lstm_cell_609_matmul_1_readvariableop_resource:	d?<
-lstm_cell_609_biasadd_readvariableop_resource:	?
identity??$lstm_cell_609/BiasAdd/ReadVariableOp?#lstm_cell_609/MatMul/ReadVariableOp?%lstm_cell_609/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_609/MatMul/ReadVariableOpReadVariableOp,lstm_cell_609_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_609/MatMulMatMulstrided_slice_2:output:0+lstm_cell_609/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_609/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_609_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_609/MatMul_1MatMulzeros:output:0-lstm_cell_609/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_609/addAddV2lstm_cell_609/MatMul:product:0 lstm_cell_609/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_609/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_609_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_609/BiasAddBiasAddlstm_cell_609/add:z:0,lstm_cell_609/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_609/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_609/splitSplit&lstm_cell_609/split/split_dim:output:0lstm_cell_609/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_609/SigmoidSigmoidlstm_cell_609/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_609/Sigmoid_1Sigmoidlstm_cell_609/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_609/mulMullstm_cell_609/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_609/ReluRelulstm_cell_609/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_609/mul_1Mullstm_cell_609/Sigmoid:y:0 lstm_cell_609/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_609/add_1AddV2lstm_cell_609/mul:z:0lstm_cell_609/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_609/Sigmoid_2Sigmoidlstm_cell_609/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_609/Relu_1Relulstm_cell_609/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_609/mul_2Mullstm_cell_609/Sigmoid_2:y:0"lstm_cell_609/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_609_matmul_readvariableop_resource.lstm_cell_609_matmul_1_readvariableop_resource-lstm_cell_609_biasadd_readvariableop_resource*
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
while_body_3969275*
condR
while_cond_3969274*K
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
NoOpNoOp%^lstm_cell_609/BiasAdd/ReadVariableOp$^lstm_cell_609/MatMul/ReadVariableOp&^lstm_cell_609/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_609/BiasAdd/ReadVariableOp$lstm_cell_609/BiasAdd/ReadVariableOp2J
#lstm_cell_609/MatMul/ReadVariableOp#lstm_cell_609/MatMul/ReadVariableOp2N
%lstm_cell_609/MatMul_1/ReadVariableOp%lstm_cell_609/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
*sequential_203_lstm_611_while_cond_3965770L
Hsequential_203_lstm_611_while_sequential_203_lstm_611_while_loop_counterR
Nsequential_203_lstm_611_while_sequential_203_lstm_611_while_maximum_iterations-
)sequential_203_lstm_611_while_placeholder/
+sequential_203_lstm_611_while_placeholder_1/
+sequential_203_lstm_611_while_placeholder_2/
+sequential_203_lstm_611_while_placeholder_3N
Jsequential_203_lstm_611_while_less_sequential_203_lstm_611_strided_slice_1e
asequential_203_lstm_611_while_sequential_203_lstm_611_while_cond_3965770___redundant_placeholder0e
asequential_203_lstm_611_while_sequential_203_lstm_611_while_cond_3965770___redundant_placeholder1e
asequential_203_lstm_611_while_sequential_203_lstm_611_while_cond_3965770___redundant_placeholder2e
asequential_203_lstm_611_while_sequential_203_lstm_611_while_cond_3965770___redundant_placeholder3*
&sequential_203_lstm_611_while_identity
?
"sequential_203/lstm_611/while/LessLess)sequential_203_lstm_611_while_placeholderJsequential_203_lstm_611_while_less_sequential_203_lstm_611_strided_slice_1*
T0*
_output_shapes
: {
&sequential_203/lstm_611/while/IdentityIdentity&sequential_203/lstm_611/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_203_lstm_611_while_identity/sequential_203/lstm_611/while/Identity:output:0*(
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

lstm_609_while_body_3968234.
*lstm_609_while_lstm_609_while_loop_counter4
0lstm_609_while_lstm_609_while_maximum_iterations
lstm_609_while_placeholder 
lstm_609_while_placeholder_1 
lstm_609_while_placeholder_2 
lstm_609_while_placeholder_3-
)lstm_609_while_lstm_609_strided_slice_1_0i
elstm_609_while_tensorarrayv2read_tensorlistgetitem_lstm_609_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_609_while_lstm_cell_609_matmul_readvariableop_resource_0:	?R
?lstm_609_while_lstm_cell_609_matmul_1_readvariableop_resource_0:	d?M
>lstm_609_while_lstm_cell_609_biasadd_readvariableop_resource_0:	?
lstm_609_while_identity
lstm_609_while_identity_1
lstm_609_while_identity_2
lstm_609_while_identity_3
lstm_609_while_identity_4
lstm_609_while_identity_5+
'lstm_609_while_lstm_609_strided_slice_1g
clstm_609_while_tensorarrayv2read_tensorlistgetitem_lstm_609_tensorarrayunstack_tensorlistfromtensorN
;lstm_609_while_lstm_cell_609_matmul_readvariableop_resource:	?P
=lstm_609_while_lstm_cell_609_matmul_1_readvariableop_resource:	d?K
<lstm_609_while_lstm_cell_609_biasadd_readvariableop_resource:	???3lstm_609/while/lstm_cell_609/BiasAdd/ReadVariableOp?2lstm_609/while/lstm_cell_609/MatMul/ReadVariableOp?4lstm_609/while/lstm_cell_609/MatMul_1/ReadVariableOp?
@lstm_609/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_609/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_609_while_tensorarrayv2read_tensorlistgetitem_lstm_609_tensorarrayunstack_tensorlistfromtensor_0lstm_609_while_placeholderIlstm_609/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_609/while/lstm_cell_609/MatMul/ReadVariableOpReadVariableOp=lstm_609_while_lstm_cell_609_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_609/while/lstm_cell_609/MatMulMatMul9lstm_609/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_609/while/lstm_cell_609/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_609/while/lstm_cell_609/MatMul_1/ReadVariableOpReadVariableOp?lstm_609_while_lstm_cell_609_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_609/while/lstm_cell_609/MatMul_1MatMullstm_609_while_placeholder_2<lstm_609/while/lstm_cell_609/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_609/while/lstm_cell_609/addAddV2-lstm_609/while/lstm_cell_609/MatMul:product:0/lstm_609/while/lstm_cell_609/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_609/while/lstm_cell_609/BiasAdd/ReadVariableOpReadVariableOp>lstm_609_while_lstm_cell_609_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_609/while/lstm_cell_609/BiasAddBiasAdd$lstm_609/while/lstm_cell_609/add:z:0;lstm_609/while/lstm_cell_609/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_609/while/lstm_cell_609/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_609/while/lstm_cell_609/splitSplit5lstm_609/while/lstm_cell_609/split/split_dim:output:0-lstm_609/while/lstm_cell_609/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_609/while/lstm_cell_609/SigmoidSigmoid+lstm_609/while/lstm_cell_609/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_609/while/lstm_cell_609/Sigmoid_1Sigmoid+lstm_609/while/lstm_cell_609/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_609/while/lstm_cell_609/mulMul*lstm_609/while/lstm_cell_609/Sigmoid_1:y:0lstm_609_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_609/while/lstm_cell_609/ReluRelu+lstm_609/while/lstm_cell_609/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_609/while/lstm_cell_609/mul_1Mul(lstm_609/while/lstm_cell_609/Sigmoid:y:0/lstm_609/while/lstm_cell_609/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_609/while/lstm_cell_609/add_1AddV2$lstm_609/while/lstm_cell_609/mul:z:0&lstm_609/while/lstm_cell_609/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_609/while/lstm_cell_609/Sigmoid_2Sigmoid+lstm_609/while/lstm_cell_609/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_609/while/lstm_cell_609/Relu_1Relu&lstm_609/while/lstm_cell_609/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_609/while/lstm_cell_609/mul_2Mul*lstm_609/while/lstm_cell_609/Sigmoid_2:y:01lstm_609/while/lstm_cell_609/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_609/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_609_while_placeholder_1lstm_609_while_placeholder&lstm_609/while/lstm_cell_609/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_609/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_609/while/addAddV2lstm_609_while_placeholderlstm_609/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_609/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_609/while/add_1AddV2*lstm_609_while_lstm_609_while_loop_counterlstm_609/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_609/while/IdentityIdentitylstm_609/while/add_1:z:0^lstm_609/while/NoOp*
T0*
_output_shapes
: ?
lstm_609/while/Identity_1Identity0lstm_609_while_lstm_609_while_maximum_iterations^lstm_609/while/NoOp*
T0*
_output_shapes
: t
lstm_609/while/Identity_2Identitylstm_609/while/add:z:0^lstm_609/while/NoOp*
T0*
_output_shapes
: ?
lstm_609/while/Identity_3IdentityClstm_609/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_609/while/NoOp*
T0*
_output_shapes
: ?
lstm_609/while/Identity_4Identity&lstm_609/while/lstm_cell_609/mul_2:z:0^lstm_609/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_609/while/Identity_5Identity&lstm_609/while/lstm_cell_609/add_1:z:0^lstm_609/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_609/while/NoOpNoOp4^lstm_609/while/lstm_cell_609/BiasAdd/ReadVariableOp3^lstm_609/while/lstm_cell_609/MatMul/ReadVariableOp5^lstm_609/while/lstm_cell_609/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_609_while_identity lstm_609/while/Identity:output:0"?
lstm_609_while_identity_1"lstm_609/while/Identity_1:output:0"?
lstm_609_while_identity_2"lstm_609/while/Identity_2:output:0"?
lstm_609_while_identity_3"lstm_609/while/Identity_3:output:0"?
lstm_609_while_identity_4"lstm_609/while/Identity_4:output:0"?
lstm_609_while_identity_5"lstm_609/while/Identity_5:output:0"T
'lstm_609_while_lstm_609_strided_slice_1)lstm_609_while_lstm_609_strided_slice_1_0"~
<lstm_609_while_lstm_cell_609_biasadd_readvariableop_resource>lstm_609_while_lstm_cell_609_biasadd_readvariableop_resource_0"?
=lstm_609_while_lstm_cell_609_matmul_1_readvariableop_resource?lstm_609_while_lstm_cell_609_matmul_1_readvariableop_resource_0"|
;lstm_609_while_lstm_cell_609_matmul_readvariableop_resource=lstm_609_while_lstm_cell_609_matmul_readvariableop_resource_0"?
clstm_609_while_tensorarrayv2read_tensorlistgetitem_lstm_609_tensorarrayunstack_tensorlistfromtensorelstm_609_while_tensorarrayv2read_tensorlistgetitem_lstm_609_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_609/while/lstm_cell_609/BiasAdd/ReadVariableOp3lstm_609/while/lstm_cell_609/BiasAdd/ReadVariableOp2h
2lstm_609/while/lstm_cell_609/MatMul/ReadVariableOp2lstm_609/while/lstm_cell_609/MatMul/ReadVariableOp2l
4lstm_609/while/lstm_cell_609/MatMul_1/ReadVariableOp4lstm_609/while/lstm_cell_609/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_3967275
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3967275___redundant_placeholder05
1while_while_cond_3967275___redundant_placeholder15
1while_while_cond_3967275___redundant_placeholder25
1while_while_cond_3967275___redundant_placeholder3
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
while_cond_3969747
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3969747___redundant_placeholder05
1while_while_cond_3969747___redundant_placeholder15
1while_while_cond_3969747___redundant_placeholder25
1while_while_cond_3969747___redundant_placeholder3
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
E__inference_lstm_610_layer_call_and_return_conditional_losses_3969832
inputs_0?
,lstm_cell_610_matmul_readvariableop_resource:	d?A
.lstm_cell_610_matmul_1_readvariableop_resource:	2?<
-lstm_cell_610_biasadd_readvariableop_resource:	?
identity??$lstm_cell_610/BiasAdd/ReadVariableOp?#lstm_cell_610/MatMul/ReadVariableOp?%lstm_cell_610/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_610/MatMul/ReadVariableOpReadVariableOp,lstm_cell_610_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_610/MatMulMatMulstrided_slice_2:output:0+lstm_cell_610/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_610/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_610_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_610/MatMul_1MatMulzeros:output:0-lstm_cell_610/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_610/addAddV2lstm_cell_610/MatMul:product:0 lstm_cell_610/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_610/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_610_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_610/BiasAddBiasAddlstm_cell_610/add:z:0,lstm_cell_610/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_610/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_610/splitSplit&lstm_cell_610/split/split_dim:output:0lstm_cell_610/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_610/SigmoidSigmoidlstm_cell_610/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_610/Sigmoid_1Sigmoidlstm_cell_610/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_610/mulMullstm_cell_610/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_610/ReluRelulstm_cell_610/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_610/mul_1Mullstm_cell_610/Sigmoid:y:0 lstm_cell_610/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_610/add_1AddV2lstm_cell_610/mul:z:0lstm_cell_610/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_610/Sigmoid_2Sigmoidlstm_cell_610/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_610/Relu_1Relulstm_cell_610/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_610/mul_2Mullstm_cell_610/Sigmoid_2:y:0"lstm_cell_610/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_610_matmul_readvariableop_resource.lstm_cell_610_matmul_1_readvariableop_resource-lstm_cell_610_biasadd_readvariableop_resource*
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
while_body_3969748*
condR
while_cond_3969747*K
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
NoOpNoOp%^lstm_cell_610/BiasAdd/ReadVariableOp$^lstm_cell_610/MatMul/ReadVariableOp&^lstm_cell_610/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_610/BiasAdd/ReadVariableOp$lstm_cell_610/BiasAdd/ReadVariableOp2J
#lstm_cell_610/MatMul/ReadVariableOp#lstm_cell_610/MatMul/ReadVariableOp2N
%lstm_cell_610/MatMul_1/ReadVariableOp%lstm_cell_610/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?
?
/__inference_lstm_cell_611_layer_call_fn_3971126

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
J__inference_lstm_cell_611_layer_call_and_return_conditional_losses_3966774o
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
?
?
K__inference_sequential_203_layer_call_and_return_conditional_losses_3968056
lstm_609_input#
lstm_609_3968029:	?#
lstm_609_3968031:	d?
lstm_609_3968033:	?#
lstm_610_3968036:	d?#
lstm_610_3968038:	2?
lstm_610_3968040:	?"
lstm_611_3968043:2("
lstm_611_3968045:
(
lstm_611_3968047:(#
dense_203_3968050:

dense_203_3968052:
identity??!dense_203/StatefulPartitionedCall? lstm_609/StatefulPartitionedCall? lstm_610/StatefulPartitionedCall? lstm_611/StatefulPartitionedCall?
 lstm_609/StatefulPartitionedCallStatefulPartitionedCalllstm_609_inputlstm_609_3968029lstm_609_3968031lstm_609_3968033*
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
E__inference_lstm_609_layer_call_and_return_conditional_losses_3967060?
 lstm_610/StatefulPartitionedCallStatefulPartitionedCall)lstm_609/StatefulPartitionedCall:output:0lstm_610_3968036lstm_610_3968038lstm_610_3968040*
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
E__inference_lstm_610_layer_call_and_return_conditional_losses_3967210?
 lstm_611/StatefulPartitionedCallStatefulPartitionedCall)lstm_610/StatefulPartitionedCall:output:0lstm_611_3968043lstm_611_3968045lstm_611_3968047*
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
E__inference_lstm_611_layer_call_and_return_conditional_losses_3967360?
!dense_203/StatefulPartitionedCallStatefulPartitionedCall)lstm_611/StatefulPartitionedCall:output:0dense_203_3968050dense_203_3968052*
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
F__inference_dense_203_layer_call_and_return_conditional_losses_3967378y
IdentityIdentity*dense_203/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_203/StatefulPartitionedCall!^lstm_609/StatefulPartitionedCall!^lstm_610/StatefulPartitionedCall!^lstm_611/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_203/StatefulPartitionedCall!dense_203/StatefulPartitionedCall2D
 lstm_609/StatefulPartitionedCall lstm_609/StatefulPartitionedCall2D
 lstm_610/StatefulPartitionedCall lstm_610/StatefulPartitionedCall2D
 lstm_611/StatefulPartitionedCall lstm_611/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_609_input
?J
?
E__inference_lstm_609_layer_call_and_return_conditional_losses_3967060

inputs?
,lstm_cell_609_matmul_readvariableop_resource:	?A
.lstm_cell_609_matmul_1_readvariableop_resource:	d?<
-lstm_cell_609_biasadd_readvariableop_resource:	?
identity??$lstm_cell_609/BiasAdd/ReadVariableOp?#lstm_cell_609/MatMul/ReadVariableOp?%lstm_cell_609/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_609/MatMul/ReadVariableOpReadVariableOp,lstm_cell_609_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_609/MatMulMatMulstrided_slice_2:output:0+lstm_cell_609/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_609/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_609_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_609/MatMul_1MatMulzeros:output:0-lstm_cell_609/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_609/addAddV2lstm_cell_609/MatMul:product:0 lstm_cell_609/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_609/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_609_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_609/BiasAddBiasAddlstm_cell_609/add:z:0,lstm_cell_609/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_609/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_609/splitSplit&lstm_cell_609/split/split_dim:output:0lstm_cell_609/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_609/SigmoidSigmoidlstm_cell_609/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_609/Sigmoid_1Sigmoidlstm_cell_609/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_609/mulMullstm_cell_609/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_609/ReluRelulstm_cell_609/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_609/mul_1Mullstm_cell_609/Sigmoid:y:0 lstm_cell_609/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_609/add_1AddV2lstm_cell_609/mul:z:0lstm_cell_609/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_609/Sigmoid_2Sigmoidlstm_cell_609/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_609/Relu_1Relulstm_cell_609/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_609/mul_2Mullstm_cell_609/Sigmoid_2:y:0"lstm_cell_609/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_609_matmul_readvariableop_resource.lstm_cell_609_matmul_1_readvariableop_resource-lstm_cell_609_biasadd_readvariableop_resource*
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
while_body_3966976*
condR
while_cond_3966975*K
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
NoOpNoOp%^lstm_cell_609/BiasAdd/ReadVariableOp$^lstm_cell_609/MatMul/ReadVariableOp&^lstm_cell_609/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_609/BiasAdd/ReadVariableOp$lstm_cell_609/BiasAdd/ReadVariableOp2J
#lstm_cell_609/MatMul/ReadVariableOp#lstm_cell_609/MatMul/ReadVariableOp2N
%lstm_cell_609/MatMul_1/ReadVariableOp%lstm_cell_609/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
*__inference_lstm_610_layer_call_fn_3969656
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
E__inference_lstm_610_layer_call_and_return_conditional_losses_3966361|
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
?
*__inference_lstm_611_layer_call_fn_3970272
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
E__inference_lstm_611_layer_call_and_return_conditional_losses_3966711o
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
?
?
*__inference_lstm_611_layer_call_fn_3970294

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
E__inference_lstm_611_layer_call_and_return_conditional_losses_3967360o
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
while_body_3970507
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_611_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_611_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_611_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_611_matmul_readvariableop_resource:2(F
4while_lstm_cell_611_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_611_biasadd_readvariableop_resource:(??*while/lstm_cell_611/BiasAdd/ReadVariableOp?)while/lstm_cell_611/MatMul/ReadVariableOp?+while/lstm_cell_611/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_611/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_611_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_611/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_611/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_611/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_611_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_611/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_611/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_611/addAddV2$while/lstm_cell_611/MatMul:product:0&while/lstm_cell_611/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_611/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_611_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_611/BiasAddBiasAddwhile/lstm_cell_611/add:z:02while/lstm_cell_611/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_611/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_611/splitSplit,while/lstm_cell_611/split/split_dim:output:0$while/lstm_cell_611/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_611/SigmoidSigmoid"while/lstm_cell_611/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_611/Sigmoid_1Sigmoid"while/lstm_cell_611/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_611/mulMul!while/lstm_cell_611/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_611/ReluRelu"while/lstm_cell_611/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_611/mul_1Mulwhile/lstm_cell_611/Sigmoid:y:0&while/lstm_cell_611/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_611/add_1AddV2while/lstm_cell_611/mul:z:0while/lstm_cell_611/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_611/Sigmoid_2Sigmoid"while/lstm_cell_611/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_611/Relu_1Reluwhile/lstm_cell_611/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_611/mul_2Mul!while/lstm_cell_611/Sigmoid_2:y:0(while/lstm_cell_611/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_611/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_611/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_611/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_611/BiasAdd/ReadVariableOp*^while/lstm_cell_611/MatMul/ReadVariableOp,^while/lstm_cell_611/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_611_biasadd_readvariableop_resource5while_lstm_cell_611_biasadd_readvariableop_resource_0"n
4while_lstm_cell_611_matmul_1_readvariableop_resource6while_lstm_cell_611_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_611_matmul_readvariableop_resource4while_lstm_cell_611_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_611/BiasAdd/ReadVariableOp*while/lstm_cell_611/BiasAdd/ReadVariableOp2V
)while/lstm_cell_611/MatMul/ReadVariableOp)while/lstm_cell_611/MatMul/ReadVariableOp2Z
+while/lstm_cell_611/MatMul_1/ReadVariableOp+while/lstm_cell_611/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_609_layer_call_fn_3970913

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
J__inference_lstm_cell_609_layer_call_and_return_conditional_losses_3965928o
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
while_cond_3970176
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3970176___redundant_placeholder05
1while_while_cond_3970176___redundant_placeholder15
1while_while_cond_3970176___redundant_placeholder25
1while_while_cond_3970176___redundant_placeholder3
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
*sequential_203_lstm_610_while_body_3965632L
Hsequential_203_lstm_610_while_sequential_203_lstm_610_while_loop_counterR
Nsequential_203_lstm_610_while_sequential_203_lstm_610_while_maximum_iterations-
)sequential_203_lstm_610_while_placeholder/
+sequential_203_lstm_610_while_placeholder_1/
+sequential_203_lstm_610_while_placeholder_2/
+sequential_203_lstm_610_while_placeholder_3K
Gsequential_203_lstm_610_while_sequential_203_lstm_610_strided_slice_1_0?
?sequential_203_lstm_610_while_tensorarrayv2read_tensorlistgetitem_sequential_203_lstm_610_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_203_lstm_610_while_lstm_cell_610_matmul_readvariableop_resource_0:	d?a
Nsequential_203_lstm_610_while_lstm_cell_610_matmul_1_readvariableop_resource_0:	2?\
Msequential_203_lstm_610_while_lstm_cell_610_biasadd_readvariableop_resource_0:	?*
&sequential_203_lstm_610_while_identity,
(sequential_203_lstm_610_while_identity_1,
(sequential_203_lstm_610_while_identity_2,
(sequential_203_lstm_610_while_identity_3,
(sequential_203_lstm_610_while_identity_4,
(sequential_203_lstm_610_while_identity_5I
Esequential_203_lstm_610_while_sequential_203_lstm_610_strided_slice_1?
?sequential_203_lstm_610_while_tensorarrayv2read_tensorlistgetitem_sequential_203_lstm_610_tensorarrayunstack_tensorlistfromtensor]
Jsequential_203_lstm_610_while_lstm_cell_610_matmul_readvariableop_resource:	d?_
Lsequential_203_lstm_610_while_lstm_cell_610_matmul_1_readvariableop_resource:	2?Z
Ksequential_203_lstm_610_while_lstm_cell_610_biasadd_readvariableop_resource:	???Bsequential_203/lstm_610/while/lstm_cell_610/BiasAdd/ReadVariableOp?Asequential_203/lstm_610/while/lstm_cell_610/MatMul/ReadVariableOp?Csequential_203/lstm_610/while/lstm_cell_610/MatMul_1/ReadVariableOp?
Osequential_203/lstm_610/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
Asequential_203/lstm_610/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_203_lstm_610_while_tensorarrayv2read_tensorlistgetitem_sequential_203_lstm_610_tensorarrayunstack_tensorlistfromtensor_0)sequential_203_lstm_610_while_placeholderXsequential_203/lstm_610/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
Asequential_203/lstm_610/while/lstm_cell_610/MatMul/ReadVariableOpReadVariableOpLsequential_203_lstm_610_while_lstm_cell_610_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
2sequential_203/lstm_610/while/lstm_cell_610/MatMulMatMulHsequential_203/lstm_610/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_203/lstm_610/while/lstm_cell_610/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_203/lstm_610/while/lstm_cell_610/MatMul_1/ReadVariableOpReadVariableOpNsequential_203_lstm_610_while_lstm_cell_610_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
4sequential_203/lstm_610/while/lstm_cell_610/MatMul_1MatMul+sequential_203_lstm_610_while_placeholder_2Ksequential_203/lstm_610/while/lstm_cell_610/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_203/lstm_610/while/lstm_cell_610/addAddV2<sequential_203/lstm_610/while/lstm_cell_610/MatMul:product:0>sequential_203/lstm_610/while/lstm_cell_610/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_203/lstm_610/while/lstm_cell_610/BiasAdd/ReadVariableOpReadVariableOpMsequential_203_lstm_610_while_lstm_cell_610_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_203/lstm_610/while/lstm_cell_610/BiasAddBiasAdd3sequential_203/lstm_610/while/lstm_cell_610/add:z:0Jsequential_203/lstm_610/while/lstm_cell_610/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_203/lstm_610/while/lstm_cell_610/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_203/lstm_610/while/lstm_cell_610/splitSplitDsequential_203/lstm_610/while/lstm_cell_610/split/split_dim:output:0<sequential_203/lstm_610/while/lstm_cell_610/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
3sequential_203/lstm_610/while/lstm_cell_610/SigmoidSigmoid:sequential_203/lstm_610/while/lstm_cell_610/split:output:0*
T0*'
_output_shapes
:?????????2?
5sequential_203/lstm_610/while/lstm_cell_610/Sigmoid_1Sigmoid:sequential_203/lstm_610/while/lstm_cell_610/split:output:1*
T0*'
_output_shapes
:?????????2?
/sequential_203/lstm_610/while/lstm_cell_610/mulMul9sequential_203/lstm_610/while/lstm_cell_610/Sigmoid_1:y:0+sequential_203_lstm_610_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
0sequential_203/lstm_610/while/lstm_cell_610/ReluRelu:sequential_203/lstm_610/while/lstm_cell_610/split:output:2*
T0*'
_output_shapes
:?????????2?
1sequential_203/lstm_610/while/lstm_cell_610/mul_1Mul7sequential_203/lstm_610/while/lstm_cell_610/Sigmoid:y:0>sequential_203/lstm_610/while/lstm_cell_610/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
1sequential_203/lstm_610/while/lstm_cell_610/add_1AddV23sequential_203/lstm_610/while/lstm_cell_610/mul:z:05sequential_203/lstm_610/while/lstm_cell_610/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
5sequential_203/lstm_610/while/lstm_cell_610/Sigmoid_2Sigmoid:sequential_203/lstm_610/while/lstm_cell_610/split:output:3*
T0*'
_output_shapes
:?????????2?
2sequential_203/lstm_610/while/lstm_cell_610/Relu_1Relu5sequential_203/lstm_610/while/lstm_cell_610/add_1:z:0*
T0*'
_output_shapes
:?????????2?
1sequential_203/lstm_610/while/lstm_cell_610/mul_2Mul9sequential_203/lstm_610/while/lstm_cell_610/Sigmoid_2:y:0@sequential_203/lstm_610/while/lstm_cell_610/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
Bsequential_203/lstm_610/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_203_lstm_610_while_placeholder_1)sequential_203_lstm_610_while_placeholder5sequential_203/lstm_610/while/lstm_cell_610/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_203/lstm_610/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_203/lstm_610/while/addAddV2)sequential_203_lstm_610_while_placeholder,sequential_203/lstm_610/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_203/lstm_610/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_203/lstm_610/while/add_1AddV2Hsequential_203_lstm_610_while_sequential_203_lstm_610_while_loop_counter.sequential_203/lstm_610/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_203/lstm_610/while/IdentityIdentity'sequential_203/lstm_610/while/add_1:z:0#^sequential_203/lstm_610/while/NoOp*
T0*
_output_shapes
: ?
(sequential_203/lstm_610/while/Identity_1IdentityNsequential_203_lstm_610_while_sequential_203_lstm_610_while_maximum_iterations#^sequential_203/lstm_610/while/NoOp*
T0*
_output_shapes
: ?
(sequential_203/lstm_610/while/Identity_2Identity%sequential_203/lstm_610/while/add:z:0#^sequential_203/lstm_610/while/NoOp*
T0*
_output_shapes
: ?
(sequential_203/lstm_610/while/Identity_3IdentityRsequential_203/lstm_610/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_203/lstm_610/while/NoOp*
T0*
_output_shapes
: ?
(sequential_203/lstm_610/while/Identity_4Identity5sequential_203/lstm_610/while/lstm_cell_610/mul_2:z:0#^sequential_203/lstm_610/while/NoOp*
T0*'
_output_shapes
:?????????2?
(sequential_203/lstm_610/while/Identity_5Identity5sequential_203/lstm_610/while/lstm_cell_610/add_1:z:0#^sequential_203/lstm_610/while/NoOp*
T0*'
_output_shapes
:?????????2?
"sequential_203/lstm_610/while/NoOpNoOpC^sequential_203/lstm_610/while/lstm_cell_610/BiasAdd/ReadVariableOpB^sequential_203/lstm_610/while/lstm_cell_610/MatMul/ReadVariableOpD^sequential_203/lstm_610/while/lstm_cell_610/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_203_lstm_610_while_identity/sequential_203/lstm_610/while/Identity:output:0"]
(sequential_203_lstm_610_while_identity_11sequential_203/lstm_610/while/Identity_1:output:0"]
(sequential_203_lstm_610_while_identity_21sequential_203/lstm_610/while/Identity_2:output:0"]
(sequential_203_lstm_610_while_identity_31sequential_203/lstm_610/while/Identity_3:output:0"]
(sequential_203_lstm_610_while_identity_41sequential_203/lstm_610/while/Identity_4:output:0"]
(sequential_203_lstm_610_while_identity_51sequential_203/lstm_610/while/Identity_5:output:0"?
Ksequential_203_lstm_610_while_lstm_cell_610_biasadd_readvariableop_resourceMsequential_203_lstm_610_while_lstm_cell_610_biasadd_readvariableop_resource_0"?
Lsequential_203_lstm_610_while_lstm_cell_610_matmul_1_readvariableop_resourceNsequential_203_lstm_610_while_lstm_cell_610_matmul_1_readvariableop_resource_0"?
Jsequential_203_lstm_610_while_lstm_cell_610_matmul_readvariableop_resourceLsequential_203_lstm_610_while_lstm_cell_610_matmul_readvariableop_resource_0"?
Esequential_203_lstm_610_while_sequential_203_lstm_610_strided_slice_1Gsequential_203_lstm_610_while_sequential_203_lstm_610_strided_slice_1_0"?
?sequential_203_lstm_610_while_tensorarrayv2read_tensorlistgetitem_sequential_203_lstm_610_tensorarrayunstack_tensorlistfromtensor?sequential_203_lstm_610_while_tensorarrayv2read_tensorlistgetitem_sequential_203_lstm_610_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2?
Bsequential_203/lstm_610/while/lstm_cell_610/BiasAdd/ReadVariableOpBsequential_203/lstm_610/while/lstm_cell_610/BiasAdd/ReadVariableOp2?
Asequential_203/lstm_610/while/lstm_cell_610/MatMul/ReadVariableOpAsequential_203/lstm_610/while/lstm_cell_610/MatMul/ReadVariableOp2?
Csequential_203/lstm_610/while/lstm_cell_610/MatMul_1/ReadVariableOpCsequential_203/lstm_610/while/lstm_cell_610/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_3966133
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_609_3966157_0:	?0
while_lstm_cell_609_3966159_0:	d?,
while_lstm_cell_609_3966161_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_609_3966157:	?.
while_lstm_cell_609_3966159:	d?*
while_lstm_cell_609_3966161:	???+while/lstm_cell_609/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_609/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_609_3966157_0while_lstm_cell_609_3966159_0while_lstm_cell_609_3966161_0*
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
J__inference_lstm_cell_609_layer_call_and_return_conditional_losses_3966074?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_609/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_609/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_609/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_609/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_609_3966157while_lstm_cell_609_3966157_0"<
while_lstm_cell_609_3966159while_lstm_cell_609_3966159_0"<
while_lstm_cell_609_3966161while_lstm_cell_609_3966161_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_609/StatefulPartitionedCall+while/lstm_cell_609/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_body_3970177
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_610_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_610_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_610_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_610_matmul_readvariableop_resource:	d?G
4while_lstm_cell_610_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_610_biasadd_readvariableop_resource:	???*while/lstm_cell_610/BiasAdd/ReadVariableOp?)while/lstm_cell_610/MatMul/ReadVariableOp?+while/lstm_cell_610/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_610/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_610_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_610/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_610/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_610/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_610_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_610/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_610/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_610/addAddV2$while/lstm_cell_610/MatMul:product:0&while/lstm_cell_610/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_610/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_610_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_610/BiasAddBiasAddwhile/lstm_cell_610/add:z:02while/lstm_cell_610/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_610/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_610/splitSplit,while/lstm_cell_610/split/split_dim:output:0$while/lstm_cell_610/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_610/SigmoidSigmoid"while/lstm_cell_610/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_610/Sigmoid_1Sigmoid"while/lstm_cell_610/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_610/mulMul!while/lstm_cell_610/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_610/ReluRelu"while/lstm_cell_610/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_610/mul_1Mulwhile/lstm_cell_610/Sigmoid:y:0&while/lstm_cell_610/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_610/add_1AddV2while/lstm_cell_610/mul:z:0while/lstm_cell_610/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_610/Sigmoid_2Sigmoid"while/lstm_cell_610/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_610/Relu_1Reluwhile/lstm_cell_610/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_610/mul_2Mul!while/lstm_cell_610/Sigmoid_2:y:0(while/lstm_cell_610/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_610/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_610/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_610/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_610/BiasAdd/ReadVariableOp*^while/lstm_cell_610/MatMul/ReadVariableOp,^while/lstm_cell_610/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_610_biasadd_readvariableop_resource5while_lstm_cell_610_biasadd_readvariableop_resource_0"n
4while_lstm_cell_610_matmul_1_readvariableop_resource6while_lstm_cell_610_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_610_matmul_readvariableop_resource4while_lstm_cell_610_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_610/BiasAdd/ReadVariableOp*while/lstm_cell_610/BiasAdd/ReadVariableOp2V
)while/lstm_cell_610/MatMul/ReadVariableOp)while/lstm_cell_610/MatMul/ReadVariableOp2Z
+while/lstm_cell_610/MatMul_1/ReadVariableOp+while/lstm_cell_610/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_610_layer_call_and_return_conditional_losses_3971060

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
?8
?
while_body_3969748
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_610_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_610_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_610_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_610_matmul_readvariableop_resource:	d?G
4while_lstm_cell_610_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_610_biasadd_readvariableop_resource:	???*while/lstm_cell_610/BiasAdd/ReadVariableOp?)while/lstm_cell_610/MatMul/ReadVariableOp?+while/lstm_cell_610/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_610/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_610_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_610/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_610/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_610/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_610_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_610/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_610/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_610/addAddV2$while/lstm_cell_610/MatMul:product:0&while/lstm_cell_610/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_610/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_610_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_610/BiasAddBiasAddwhile/lstm_cell_610/add:z:02while/lstm_cell_610/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_610/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_610/splitSplit,while/lstm_cell_610/split/split_dim:output:0$while/lstm_cell_610/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_610/SigmoidSigmoid"while/lstm_cell_610/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_610/Sigmoid_1Sigmoid"while/lstm_cell_610/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_610/mulMul!while/lstm_cell_610/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_610/ReluRelu"while/lstm_cell_610/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_610/mul_1Mulwhile/lstm_cell_610/Sigmoid:y:0&while/lstm_cell_610/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_610/add_1AddV2while/lstm_cell_610/mul:z:0while/lstm_cell_610/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_610/Sigmoid_2Sigmoid"while/lstm_cell_610/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_610/Relu_1Reluwhile/lstm_cell_610/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_610/mul_2Mul!while/lstm_cell_610/Sigmoid_2:y:0(while/lstm_cell_610/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_610/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_610/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_610/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_610/BiasAdd/ReadVariableOp*^while/lstm_cell_610/MatMul/ReadVariableOp,^while/lstm_cell_610/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_610_biasadd_readvariableop_resource5while_lstm_cell_610_biasadd_readvariableop_resource_0"n
4while_lstm_cell_610_matmul_1_readvariableop_resource6while_lstm_cell_610_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_610_matmul_readvariableop_resource4while_lstm_cell_610_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_610/BiasAdd/ReadVariableOp*while/lstm_cell_610/BiasAdd/ReadVariableOp2V
)while/lstm_cell_610/MatMul/ReadVariableOp)while/lstm_cell_610/MatMul/ReadVariableOp2Z
+while/lstm_cell_610/MatMul_1/ReadVariableOp+while/lstm_cell_610/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
??
?
"__inference__wrapped_model_3965861
lstm_609_inputW
Dsequential_203_lstm_609_lstm_cell_609_matmul_readvariableop_resource:	?Y
Fsequential_203_lstm_609_lstm_cell_609_matmul_1_readvariableop_resource:	d?T
Esequential_203_lstm_609_lstm_cell_609_biasadd_readvariableop_resource:	?W
Dsequential_203_lstm_610_lstm_cell_610_matmul_readvariableop_resource:	d?Y
Fsequential_203_lstm_610_lstm_cell_610_matmul_1_readvariableop_resource:	2?T
Esequential_203_lstm_610_lstm_cell_610_biasadd_readvariableop_resource:	?V
Dsequential_203_lstm_611_lstm_cell_611_matmul_readvariableop_resource:2(X
Fsequential_203_lstm_611_lstm_cell_611_matmul_1_readvariableop_resource:
(S
Esequential_203_lstm_611_lstm_cell_611_biasadd_readvariableop_resource:(I
7sequential_203_dense_203_matmul_readvariableop_resource:
F
8sequential_203_dense_203_biasadd_readvariableop_resource:
identity??/sequential_203/dense_203/BiasAdd/ReadVariableOp?.sequential_203/dense_203/MatMul/ReadVariableOp?<sequential_203/lstm_609/lstm_cell_609/BiasAdd/ReadVariableOp?;sequential_203/lstm_609/lstm_cell_609/MatMul/ReadVariableOp?=sequential_203/lstm_609/lstm_cell_609/MatMul_1/ReadVariableOp?sequential_203/lstm_609/while?<sequential_203/lstm_610/lstm_cell_610/BiasAdd/ReadVariableOp?;sequential_203/lstm_610/lstm_cell_610/MatMul/ReadVariableOp?=sequential_203/lstm_610/lstm_cell_610/MatMul_1/ReadVariableOp?sequential_203/lstm_610/while?<sequential_203/lstm_611/lstm_cell_611/BiasAdd/ReadVariableOp?;sequential_203/lstm_611/lstm_cell_611/MatMul/ReadVariableOp?=sequential_203/lstm_611/lstm_cell_611/MatMul_1/ReadVariableOp?sequential_203/lstm_611/while[
sequential_203/lstm_609/ShapeShapelstm_609_input*
T0*
_output_shapes
:u
+sequential_203/lstm_609/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_203/lstm_609/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_203/lstm_609/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_203/lstm_609/strided_sliceStridedSlice&sequential_203/lstm_609/Shape:output:04sequential_203/lstm_609/strided_slice/stack:output:06sequential_203/lstm_609/strided_slice/stack_1:output:06sequential_203/lstm_609/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_203/lstm_609/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
$sequential_203/lstm_609/zeros/packedPack.sequential_203/lstm_609/strided_slice:output:0/sequential_203/lstm_609/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_203/lstm_609/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_203/lstm_609/zerosFill-sequential_203/lstm_609/zeros/packed:output:0,sequential_203/lstm_609/zeros/Const:output:0*
T0*'
_output_shapes
:?????????dj
(sequential_203/lstm_609/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
&sequential_203/lstm_609/zeros_1/packedPack.sequential_203/lstm_609/strided_slice:output:01sequential_203/lstm_609/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_203/lstm_609/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_203/lstm_609/zeros_1Fill/sequential_203/lstm_609/zeros_1/packed:output:0.sequential_203/lstm_609/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????d{
&sequential_203/lstm_609/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_203/lstm_609/transpose	Transposelstm_609_input/sequential_203/lstm_609/transpose/perm:output:0*
T0*+
_output_shapes
:?????????t
sequential_203/lstm_609/Shape_1Shape%sequential_203/lstm_609/transpose:y:0*
T0*
_output_shapes
:w
-sequential_203/lstm_609/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_203/lstm_609/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_203/lstm_609/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_203/lstm_609/strided_slice_1StridedSlice(sequential_203/lstm_609/Shape_1:output:06sequential_203/lstm_609/strided_slice_1/stack:output:08sequential_203/lstm_609/strided_slice_1/stack_1:output:08sequential_203/lstm_609/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_203/lstm_609/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_203/lstm_609/TensorArrayV2TensorListReserve<sequential_203/lstm_609/TensorArrayV2/element_shape:output:00sequential_203/lstm_609/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_203/lstm_609/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
?sequential_203/lstm_609/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_203/lstm_609/transpose:y:0Vsequential_203/lstm_609/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_203/lstm_609/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_203/lstm_609/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_203/lstm_609/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_203/lstm_609/strided_slice_2StridedSlice%sequential_203/lstm_609/transpose:y:06sequential_203/lstm_609/strided_slice_2/stack:output:08sequential_203/lstm_609/strided_slice_2/stack_1:output:08sequential_203/lstm_609/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
;sequential_203/lstm_609/lstm_cell_609/MatMul/ReadVariableOpReadVariableOpDsequential_203_lstm_609_lstm_cell_609_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
,sequential_203/lstm_609/lstm_cell_609/MatMulMatMul0sequential_203/lstm_609/strided_slice_2:output:0Csequential_203/lstm_609/lstm_cell_609/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_203/lstm_609/lstm_cell_609/MatMul_1/ReadVariableOpReadVariableOpFsequential_203_lstm_609_lstm_cell_609_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
.sequential_203/lstm_609/lstm_cell_609/MatMul_1MatMul&sequential_203/lstm_609/zeros:output:0Esequential_203/lstm_609/lstm_cell_609/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_203/lstm_609/lstm_cell_609/addAddV26sequential_203/lstm_609/lstm_cell_609/MatMul:product:08sequential_203/lstm_609/lstm_cell_609/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_203/lstm_609/lstm_cell_609/BiasAdd/ReadVariableOpReadVariableOpEsequential_203_lstm_609_lstm_cell_609_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_203/lstm_609/lstm_cell_609/BiasAddBiasAdd-sequential_203/lstm_609/lstm_cell_609/add:z:0Dsequential_203/lstm_609/lstm_cell_609/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_203/lstm_609/lstm_cell_609/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_203/lstm_609/lstm_cell_609/splitSplit>sequential_203/lstm_609/lstm_cell_609/split/split_dim:output:06sequential_203/lstm_609/lstm_cell_609/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
-sequential_203/lstm_609/lstm_cell_609/SigmoidSigmoid4sequential_203/lstm_609/lstm_cell_609/split:output:0*
T0*'
_output_shapes
:?????????d?
/sequential_203/lstm_609/lstm_cell_609/Sigmoid_1Sigmoid4sequential_203/lstm_609/lstm_cell_609/split:output:1*
T0*'
_output_shapes
:?????????d?
)sequential_203/lstm_609/lstm_cell_609/mulMul3sequential_203/lstm_609/lstm_cell_609/Sigmoid_1:y:0(sequential_203/lstm_609/zeros_1:output:0*
T0*'
_output_shapes
:?????????d?
*sequential_203/lstm_609/lstm_cell_609/ReluRelu4sequential_203/lstm_609/lstm_cell_609/split:output:2*
T0*'
_output_shapes
:?????????d?
+sequential_203/lstm_609/lstm_cell_609/mul_1Mul1sequential_203/lstm_609/lstm_cell_609/Sigmoid:y:08sequential_203/lstm_609/lstm_cell_609/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
+sequential_203/lstm_609/lstm_cell_609/add_1AddV2-sequential_203/lstm_609/lstm_cell_609/mul:z:0/sequential_203/lstm_609/lstm_cell_609/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
/sequential_203/lstm_609/lstm_cell_609/Sigmoid_2Sigmoid4sequential_203/lstm_609/lstm_cell_609/split:output:3*
T0*'
_output_shapes
:?????????d?
,sequential_203/lstm_609/lstm_cell_609/Relu_1Relu/sequential_203/lstm_609/lstm_cell_609/add_1:z:0*
T0*'
_output_shapes
:?????????d?
+sequential_203/lstm_609/lstm_cell_609/mul_2Mul3sequential_203/lstm_609/lstm_cell_609/Sigmoid_2:y:0:sequential_203/lstm_609/lstm_cell_609/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
5sequential_203/lstm_609/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
'sequential_203/lstm_609/TensorArrayV2_1TensorListReserve>sequential_203/lstm_609/TensorArrayV2_1/element_shape:output:00sequential_203/lstm_609/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_203/lstm_609/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_203/lstm_609/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_203/lstm_609/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_203/lstm_609/whileWhile3sequential_203/lstm_609/while/loop_counter:output:09sequential_203/lstm_609/while/maximum_iterations:output:0%sequential_203/lstm_609/time:output:00sequential_203/lstm_609/TensorArrayV2_1:handle:0&sequential_203/lstm_609/zeros:output:0(sequential_203/lstm_609/zeros_1:output:00sequential_203/lstm_609/strided_slice_1:output:0Osequential_203/lstm_609/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_203_lstm_609_lstm_cell_609_matmul_readvariableop_resourceFsequential_203_lstm_609_lstm_cell_609_matmul_1_readvariableop_resourceEsequential_203_lstm_609_lstm_cell_609_biasadd_readvariableop_resource*
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
*sequential_203_lstm_609_while_body_3965493*6
cond.R,
*sequential_203_lstm_609_while_cond_3965492*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
Hsequential_203/lstm_609/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
:sequential_203/lstm_609/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_203/lstm_609/while:output:3Qsequential_203/lstm_609/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0?
-sequential_203/lstm_609/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_203/lstm_609/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_203/lstm_609/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_203/lstm_609/strided_slice_3StridedSliceCsequential_203/lstm_609/TensorArrayV2Stack/TensorListStack:tensor:06sequential_203/lstm_609/strided_slice_3/stack:output:08sequential_203/lstm_609/strided_slice_3/stack_1:output:08sequential_203/lstm_609/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask}
(sequential_203/lstm_609/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_203/lstm_609/transpose_1	TransposeCsequential_203/lstm_609/TensorArrayV2Stack/TensorListStack:tensor:01sequential_203/lstm_609/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????ds
sequential_203/lstm_609/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_203/lstm_610/ShapeShape'sequential_203/lstm_609/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_203/lstm_610/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_203/lstm_610/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_203/lstm_610/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_203/lstm_610/strided_sliceStridedSlice&sequential_203/lstm_610/Shape:output:04sequential_203/lstm_610/strided_slice/stack:output:06sequential_203/lstm_610/strided_slice/stack_1:output:06sequential_203/lstm_610/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_203/lstm_610/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
$sequential_203/lstm_610/zeros/packedPack.sequential_203/lstm_610/strided_slice:output:0/sequential_203/lstm_610/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_203/lstm_610/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_203/lstm_610/zerosFill-sequential_203/lstm_610/zeros/packed:output:0,sequential_203/lstm_610/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2j
(sequential_203/lstm_610/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
&sequential_203/lstm_610/zeros_1/packedPack.sequential_203/lstm_610/strided_slice:output:01sequential_203/lstm_610/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_203/lstm_610/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_203/lstm_610/zeros_1Fill/sequential_203/lstm_610/zeros_1/packed:output:0.sequential_203/lstm_610/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2{
&sequential_203/lstm_610/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_203/lstm_610/transpose	Transpose'sequential_203/lstm_609/transpose_1:y:0/sequential_203/lstm_610/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dt
sequential_203/lstm_610/Shape_1Shape%sequential_203/lstm_610/transpose:y:0*
T0*
_output_shapes
:w
-sequential_203/lstm_610/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_203/lstm_610/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_203/lstm_610/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_203/lstm_610/strided_slice_1StridedSlice(sequential_203/lstm_610/Shape_1:output:06sequential_203/lstm_610/strided_slice_1/stack:output:08sequential_203/lstm_610/strided_slice_1/stack_1:output:08sequential_203/lstm_610/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_203/lstm_610/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_203/lstm_610/TensorArrayV2TensorListReserve<sequential_203/lstm_610/TensorArrayV2/element_shape:output:00sequential_203/lstm_610/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_203/lstm_610/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
?sequential_203/lstm_610/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_203/lstm_610/transpose:y:0Vsequential_203/lstm_610/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_203/lstm_610/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_203/lstm_610/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_203/lstm_610/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_203/lstm_610/strided_slice_2StridedSlice%sequential_203/lstm_610/transpose:y:06sequential_203/lstm_610/strided_slice_2/stack:output:08sequential_203/lstm_610/strided_slice_2/stack_1:output:08sequential_203/lstm_610/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
;sequential_203/lstm_610/lstm_cell_610/MatMul/ReadVariableOpReadVariableOpDsequential_203_lstm_610_lstm_cell_610_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
,sequential_203/lstm_610/lstm_cell_610/MatMulMatMul0sequential_203/lstm_610/strided_slice_2:output:0Csequential_203/lstm_610/lstm_cell_610/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_203/lstm_610/lstm_cell_610/MatMul_1/ReadVariableOpReadVariableOpFsequential_203_lstm_610_lstm_cell_610_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
.sequential_203/lstm_610/lstm_cell_610/MatMul_1MatMul&sequential_203/lstm_610/zeros:output:0Esequential_203/lstm_610/lstm_cell_610/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_203/lstm_610/lstm_cell_610/addAddV26sequential_203/lstm_610/lstm_cell_610/MatMul:product:08sequential_203/lstm_610/lstm_cell_610/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_203/lstm_610/lstm_cell_610/BiasAdd/ReadVariableOpReadVariableOpEsequential_203_lstm_610_lstm_cell_610_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_203/lstm_610/lstm_cell_610/BiasAddBiasAdd-sequential_203/lstm_610/lstm_cell_610/add:z:0Dsequential_203/lstm_610/lstm_cell_610/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_203/lstm_610/lstm_cell_610/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_203/lstm_610/lstm_cell_610/splitSplit>sequential_203/lstm_610/lstm_cell_610/split/split_dim:output:06sequential_203/lstm_610/lstm_cell_610/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
-sequential_203/lstm_610/lstm_cell_610/SigmoidSigmoid4sequential_203/lstm_610/lstm_cell_610/split:output:0*
T0*'
_output_shapes
:?????????2?
/sequential_203/lstm_610/lstm_cell_610/Sigmoid_1Sigmoid4sequential_203/lstm_610/lstm_cell_610/split:output:1*
T0*'
_output_shapes
:?????????2?
)sequential_203/lstm_610/lstm_cell_610/mulMul3sequential_203/lstm_610/lstm_cell_610/Sigmoid_1:y:0(sequential_203/lstm_610/zeros_1:output:0*
T0*'
_output_shapes
:?????????2?
*sequential_203/lstm_610/lstm_cell_610/ReluRelu4sequential_203/lstm_610/lstm_cell_610/split:output:2*
T0*'
_output_shapes
:?????????2?
+sequential_203/lstm_610/lstm_cell_610/mul_1Mul1sequential_203/lstm_610/lstm_cell_610/Sigmoid:y:08sequential_203/lstm_610/lstm_cell_610/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
+sequential_203/lstm_610/lstm_cell_610/add_1AddV2-sequential_203/lstm_610/lstm_cell_610/mul:z:0/sequential_203/lstm_610/lstm_cell_610/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
/sequential_203/lstm_610/lstm_cell_610/Sigmoid_2Sigmoid4sequential_203/lstm_610/lstm_cell_610/split:output:3*
T0*'
_output_shapes
:?????????2?
,sequential_203/lstm_610/lstm_cell_610/Relu_1Relu/sequential_203/lstm_610/lstm_cell_610/add_1:z:0*
T0*'
_output_shapes
:?????????2?
+sequential_203/lstm_610/lstm_cell_610/mul_2Mul3sequential_203/lstm_610/lstm_cell_610/Sigmoid_2:y:0:sequential_203/lstm_610/lstm_cell_610/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
5sequential_203/lstm_610/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
'sequential_203/lstm_610/TensorArrayV2_1TensorListReserve>sequential_203/lstm_610/TensorArrayV2_1/element_shape:output:00sequential_203/lstm_610/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_203/lstm_610/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_203/lstm_610/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_203/lstm_610/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_203/lstm_610/whileWhile3sequential_203/lstm_610/while/loop_counter:output:09sequential_203/lstm_610/while/maximum_iterations:output:0%sequential_203/lstm_610/time:output:00sequential_203/lstm_610/TensorArrayV2_1:handle:0&sequential_203/lstm_610/zeros:output:0(sequential_203/lstm_610/zeros_1:output:00sequential_203/lstm_610/strided_slice_1:output:0Osequential_203/lstm_610/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_203_lstm_610_lstm_cell_610_matmul_readvariableop_resourceFsequential_203_lstm_610_lstm_cell_610_matmul_1_readvariableop_resourceEsequential_203_lstm_610_lstm_cell_610_biasadd_readvariableop_resource*
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
*sequential_203_lstm_610_while_body_3965632*6
cond.R,
*sequential_203_lstm_610_while_cond_3965631*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
Hsequential_203/lstm_610/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
:sequential_203/lstm_610/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_203/lstm_610/while:output:3Qsequential_203/lstm_610/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0?
-sequential_203/lstm_610/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_203/lstm_610/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_203/lstm_610/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_203/lstm_610/strided_slice_3StridedSliceCsequential_203/lstm_610/TensorArrayV2Stack/TensorListStack:tensor:06sequential_203/lstm_610/strided_slice_3/stack:output:08sequential_203/lstm_610/strided_slice_3/stack_1:output:08sequential_203/lstm_610/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask}
(sequential_203/lstm_610/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_203/lstm_610/transpose_1	TransposeCsequential_203/lstm_610/TensorArrayV2Stack/TensorListStack:tensor:01sequential_203/lstm_610/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2s
sequential_203/lstm_610/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_203/lstm_611/ShapeShape'sequential_203/lstm_610/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_203/lstm_611/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_203/lstm_611/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_203/lstm_611/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_203/lstm_611/strided_sliceStridedSlice&sequential_203/lstm_611/Shape:output:04sequential_203/lstm_611/strided_slice/stack:output:06sequential_203/lstm_611/strided_slice/stack_1:output:06sequential_203/lstm_611/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_203/lstm_611/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
$sequential_203/lstm_611/zeros/packedPack.sequential_203/lstm_611/strided_slice:output:0/sequential_203/lstm_611/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_203/lstm_611/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_203/lstm_611/zerosFill-sequential_203/lstm_611/zeros/packed:output:0,sequential_203/lstm_611/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
j
(sequential_203/lstm_611/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
&sequential_203/lstm_611/zeros_1/packedPack.sequential_203/lstm_611/strided_slice:output:01sequential_203/lstm_611/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_203/lstm_611/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_203/lstm_611/zeros_1Fill/sequential_203/lstm_611/zeros_1/packed:output:0.sequential_203/lstm_611/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
{
&sequential_203/lstm_611/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_203/lstm_611/transpose	Transpose'sequential_203/lstm_610/transpose_1:y:0/sequential_203/lstm_611/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2t
sequential_203/lstm_611/Shape_1Shape%sequential_203/lstm_611/transpose:y:0*
T0*
_output_shapes
:w
-sequential_203/lstm_611/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_203/lstm_611/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_203/lstm_611/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_203/lstm_611/strided_slice_1StridedSlice(sequential_203/lstm_611/Shape_1:output:06sequential_203/lstm_611/strided_slice_1/stack:output:08sequential_203/lstm_611/strided_slice_1/stack_1:output:08sequential_203/lstm_611/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_203/lstm_611/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_203/lstm_611/TensorArrayV2TensorListReserve<sequential_203/lstm_611/TensorArrayV2/element_shape:output:00sequential_203/lstm_611/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_203/lstm_611/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
?sequential_203/lstm_611/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_203/lstm_611/transpose:y:0Vsequential_203/lstm_611/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_203/lstm_611/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_203/lstm_611/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_203/lstm_611/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_203/lstm_611/strided_slice_2StridedSlice%sequential_203/lstm_611/transpose:y:06sequential_203/lstm_611/strided_slice_2/stack:output:08sequential_203/lstm_611/strided_slice_2/stack_1:output:08sequential_203/lstm_611/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
;sequential_203/lstm_611/lstm_cell_611/MatMul/ReadVariableOpReadVariableOpDsequential_203_lstm_611_lstm_cell_611_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
,sequential_203/lstm_611/lstm_cell_611/MatMulMatMul0sequential_203/lstm_611/strided_slice_2:output:0Csequential_203/lstm_611/lstm_cell_611/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
=sequential_203/lstm_611/lstm_cell_611/MatMul_1/ReadVariableOpReadVariableOpFsequential_203_lstm_611_lstm_cell_611_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
.sequential_203/lstm_611/lstm_cell_611/MatMul_1MatMul&sequential_203/lstm_611/zeros:output:0Esequential_203/lstm_611/lstm_cell_611/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
)sequential_203/lstm_611/lstm_cell_611/addAddV26sequential_203/lstm_611/lstm_cell_611/MatMul:product:08sequential_203/lstm_611/lstm_cell_611/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
<sequential_203/lstm_611/lstm_cell_611/BiasAdd/ReadVariableOpReadVariableOpEsequential_203_lstm_611_lstm_cell_611_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
-sequential_203/lstm_611/lstm_cell_611/BiasAddBiasAdd-sequential_203/lstm_611/lstm_cell_611/add:z:0Dsequential_203/lstm_611/lstm_cell_611/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(w
5sequential_203/lstm_611/lstm_cell_611/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_203/lstm_611/lstm_cell_611/splitSplit>sequential_203/lstm_611/lstm_cell_611/split/split_dim:output:06sequential_203/lstm_611/lstm_cell_611/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
-sequential_203/lstm_611/lstm_cell_611/SigmoidSigmoid4sequential_203/lstm_611/lstm_cell_611/split:output:0*
T0*'
_output_shapes
:?????????
?
/sequential_203/lstm_611/lstm_cell_611/Sigmoid_1Sigmoid4sequential_203/lstm_611/lstm_cell_611/split:output:1*
T0*'
_output_shapes
:?????????
?
)sequential_203/lstm_611/lstm_cell_611/mulMul3sequential_203/lstm_611/lstm_cell_611/Sigmoid_1:y:0(sequential_203/lstm_611/zeros_1:output:0*
T0*'
_output_shapes
:?????????
?
*sequential_203/lstm_611/lstm_cell_611/ReluRelu4sequential_203/lstm_611/lstm_cell_611/split:output:2*
T0*'
_output_shapes
:?????????
?
+sequential_203/lstm_611/lstm_cell_611/mul_1Mul1sequential_203/lstm_611/lstm_cell_611/Sigmoid:y:08sequential_203/lstm_611/lstm_cell_611/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
+sequential_203/lstm_611/lstm_cell_611/add_1AddV2-sequential_203/lstm_611/lstm_cell_611/mul:z:0/sequential_203/lstm_611/lstm_cell_611/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
/sequential_203/lstm_611/lstm_cell_611/Sigmoid_2Sigmoid4sequential_203/lstm_611/lstm_cell_611/split:output:3*
T0*'
_output_shapes
:?????????
?
,sequential_203/lstm_611/lstm_cell_611/Relu_1Relu/sequential_203/lstm_611/lstm_cell_611/add_1:z:0*
T0*'
_output_shapes
:?????????
?
+sequential_203/lstm_611/lstm_cell_611/mul_2Mul3sequential_203/lstm_611/lstm_cell_611/Sigmoid_2:y:0:sequential_203/lstm_611/lstm_cell_611/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
5sequential_203/lstm_611/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
'sequential_203/lstm_611/TensorArrayV2_1TensorListReserve>sequential_203/lstm_611/TensorArrayV2_1/element_shape:output:00sequential_203/lstm_611/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_203/lstm_611/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_203/lstm_611/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_203/lstm_611/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_203/lstm_611/whileWhile3sequential_203/lstm_611/while/loop_counter:output:09sequential_203/lstm_611/while/maximum_iterations:output:0%sequential_203/lstm_611/time:output:00sequential_203/lstm_611/TensorArrayV2_1:handle:0&sequential_203/lstm_611/zeros:output:0(sequential_203/lstm_611/zeros_1:output:00sequential_203/lstm_611/strided_slice_1:output:0Osequential_203/lstm_611/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_203_lstm_611_lstm_cell_611_matmul_readvariableop_resourceFsequential_203_lstm_611_lstm_cell_611_matmul_1_readvariableop_resourceEsequential_203_lstm_611_lstm_cell_611_biasadd_readvariableop_resource*
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
*sequential_203_lstm_611_while_body_3965771*6
cond.R,
*sequential_203_lstm_611_while_cond_3965770*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
Hsequential_203/lstm_611/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
:sequential_203/lstm_611/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_203/lstm_611/while:output:3Qsequential_203/lstm_611/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0?
-sequential_203/lstm_611/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_203/lstm_611/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_203/lstm_611/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_203/lstm_611/strided_slice_3StridedSliceCsequential_203/lstm_611/TensorArrayV2Stack/TensorListStack:tensor:06sequential_203/lstm_611/strided_slice_3/stack:output:08sequential_203/lstm_611/strided_slice_3/stack_1:output:08sequential_203/lstm_611/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_mask}
(sequential_203/lstm_611/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_203/lstm_611/transpose_1	TransposeCsequential_203/lstm_611/TensorArrayV2Stack/TensorListStack:tensor:01sequential_203/lstm_611/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
s
sequential_203/lstm_611/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
.sequential_203/dense_203/MatMul/ReadVariableOpReadVariableOp7sequential_203_dense_203_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
sequential_203/dense_203/MatMulMatMul0sequential_203/lstm_611/strided_slice_3:output:06sequential_203/dense_203/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
/sequential_203/dense_203/BiasAdd/ReadVariableOpReadVariableOp8sequential_203_dense_203_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
 sequential_203/dense_203/BiasAddBiasAdd)sequential_203/dense_203/MatMul:product:07sequential_203/dense_203/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x
IdentityIdentity)sequential_203/dense_203/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp0^sequential_203/dense_203/BiasAdd/ReadVariableOp/^sequential_203/dense_203/MatMul/ReadVariableOp=^sequential_203/lstm_609/lstm_cell_609/BiasAdd/ReadVariableOp<^sequential_203/lstm_609/lstm_cell_609/MatMul/ReadVariableOp>^sequential_203/lstm_609/lstm_cell_609/MatMul_1/ReadVariableOp^sequential_203/lstm_609/while=^sequential_203/lstm_610/lstm_cell_610/BiasAdd/ReadVariableOp<^sequential_203/lstm_610/lstm_cell_610/MatMul/ReadVariableOp>^sequential_203/lstm_610/lstm_cell_610/MatMul_1/ReadVariableOp^sequential_203/lstm_610/while=^sequential_203/lstm_611/lstm_cell_611/BiasAdd/ReadVariableOp<^sequential_203/lstm_611/lstm_cell_611/MatMul/ReadVariableOp>^sequential_203/lstm_611/lstm_cell_611/MatMul_1/ReadVariableOp^sequential_203/lstm_611/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2b
/sequential_203/dense_203/BiasAdd/ReadVariableOp/sequential_203/dense_203/BiasAdd/ReadVariableOp2`
.sequential_203/dense_203/MatMul/ReadVariableOp.sequential_203/dense_203/MatMul/ReadVariableOp2|
<sequential_203/lstm_609/lstm_cell_609/BiasAdd/ReadVariableOp<sequential_203/lstm_609/lstm_cell_609/BiasAdd/ReadVariableOp2z
;sequential_203/lstm_609/lstm_cell_609/MatMul/ReadVariableOp;sequential_203/lstm_609/lstm_cell_609/MatMul/ReadVariableOp2~
=sequential_203/lstm_609/lstm_cell_609/MatMul_1/ReadVariableOp=sequential_203/lstm_609/lstm_cell_609/MatMul_1/ReadVariableOp2>
sequential_203/lstm_609/whilesequential_203/lstm_609/while2|
<sequential_203/lstm_610/lstm_cell_610/BiasAdd/ReadVariableOp<sequential_203/lstm_610/lstm_cell_610/BiasAdd/ReadVariableOp2z
;sequential_203/lstm_610/lstm_cell_610/MatMul/ReadVariableOp;sequential_203/lstm_610/lstm_cell_610/MatMul/ReadVariableOp2~
=sequential_203/lstm_610/lstm_cell_610/MatMul_1/ReadVariableOp=sequential_203/lstm_610/lstm_cell_610/MatMul_1/ReadVariableOp2>
sequential_203/lstm_610/whilesequential_203/lstm_610/while2|
<sequential_203/lstm_611/lstm_cell_611/BiasAdd/ReadVariableOp<sequential_203/lstm_611/lstm_cell_611/BiasAdd/ReadVariableOp2z
;sequential_203/lstm_611/lstm_cell_611/MatMul/ReadVariableOp;sequential_203/lstm_611/lstm_cell_611/MatMul/ReadVariableOp2~
=sequential_203/lstm_611/lstm_cell_611/MatMul_1/ReadVariableOp=sequential_203/lstm_611/lstm_cell_611/MatMul_1/ReadVariableOp2>
sequential_203/lstm_611/whilesequential_203/lstm_611/while:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_609_input
?8
?
while_body_3969418
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_609_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_609_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_609_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_609_matmul_readvariableop_resource:	?G
4while_lstm_cell_609_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_609_biasadd_readvariableop_resource:	???*while/lstm_cell_609/BiasAdd/ReadVariableOp?)while/lstm_cell_609/MatMul/ReadVariableOp?+while/lstm_cell_609/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_609/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_609_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_609/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_609/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_609/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_609_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_609/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_609/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_609/addAddV2$while/lstm_cell_609/MatMul:product:0&while/lstm_cell_609/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_609/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_609_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_609/BiasAddBiasAddwhile/lstm_cell_609/add:z:02while/lstm_cell_609/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_609/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_609/splitSplit,while/lstm_cell_609/split/split_dim:output:0$while/lstm_cell_609/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_609/SigmoidSigmoid"while/lstm_cell_609/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_609/Sigmoid_1Sigmoid"while/lstm_cell_609/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_609/mulMul!while/lstm_cell_609/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_609/ReluRelu"while/lstm_cell_609/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_609/mul_1Mulwhile/lstm_cell_609/Sigmoid:y:0&while/lstm_cell_609/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_609/add_1AddV2while/lstm_cell_609/mul:z:0while/lstm_cell_609/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_609/Sigmoid_2Sigmoid"while/lstm_cell_609/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_609/Relu_1Reluwhile/lstm_cell_609/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_609/mul_2Mul!while/lstm_cell_609/Sigmoid_2:y:0(while/lstm_cell_609/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_609/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_609/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_609/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_609/BiasAdd/ReadVariableOp*^while/lstm_cell_609/MatMul/ReadVariableOp,^while/lstm_cell_609/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_609_biasadd_readvariableop_resource5while_lstm_cell_609_biasadd_readvariableop_resource_0"n
4while_lstm_cell_609_matmul_1_readvariableop_resource6while_lstm_cell_609_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_609_matmul_readvariableop_resource4while_lstm_cell_609_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_609/BiasAdd/ReadVariableOp*while/lstm_cell_609/BiasAdd/ReadVariableOp2V
)while/lstm_cell_609/MatMul/ReadVariableOp)while/lstm_cell_609/MatMul/ReadVariableOp2Z
+while/lstm_cell_609/MatMul_1/ReadVariableOp+while/lstm_cell_609/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_3966482
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3966482___redundant_placeholder05
1while_while_cond_3966482___redundant_placeholder15
1while_while_cond_3966482___redundant_placeholder25
1while_while_cond_3966482___redundant_placeholder3
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
*__inference_lstm_610_layer_call_fn_3969689

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
E__inference_lstm_610_layer_call_and_return_conditional_losses_3967741s
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
while_body_3967126
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_610_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_610_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_610_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_610_matmul_readvariableop_resource:	d?G
4while_lstm_cell_610_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_610_biasadd_readvariableop_resource:	???*while/lstm_cell_610/BiasAdd/ReadVariableOp?)while/lstm_cell_610/MatMul/ReadVariableOp?+while/lstm_cell_610/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_610/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_610_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_610/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_610/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_610/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_610_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_610/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_610/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_610/addAddV2$while/lstm_cell_610/MatMul:product:0&while/lstm_cell_610/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_610/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_610_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_610/BiasAddBiasAddwhile/lstm_cell_610/add:z:02while/lstm_cell_610/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_610/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_610/splitSplit,while/lstm_cell_610/split/split_dim:output:0$while/lstm_cell_610/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_610/SigmoidSigmoid"while/lstm_cell_610/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_610/Sigmoid_1Sigmoid"while/lstm_cell_610/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_610/mulMul!while/lstm_cell_610/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_610/ReluRelu"while/lstm_cell_610/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_610/mul_1Mulwhile/lstm_cell_610/Sigmoid:y:0&while/lstm_cell_610/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_610/add_1AddV2while/lstm_cell_610/mul:z:0while/lstm_cell_610/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_610/Sigmoid_2Sigmoid"while/lstm_cell_610/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_610/Relu_1Reluwhile/lstm_cell_610/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_610/mul_2Mul!while/lstm_cell_610/Sigmoid_2:y:0(while/lstm_cell_610/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_610/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_610/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_610/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_610/BiasAdd/ReadVariableOp*^while/lstm_cell_610/MatMul/ReadVariableOp,^while/lstm_cell_610/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_610_biasadd_readvariableop_resource5while_lstm_cell_610_biasadd_readvariableop_resource_0"n
4while_lstm_cell_610_matmul_1_readvariableop_resource6while_lstm_cell_610_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_610_matmul_readvariableop_resource4while_lstm_cell_610_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_610/BiasAdd/ReadVariableOp*while/lstm_cell_610/BiasAdd/ReadVariableOp2V
)while/lstm_cell_610/MatMul/ReadVariableOp)while/lstm_cell_610/MatMul/ReadVariableOp2Z
+while/lstm_cell_610/MatMul_1/ReadVariableOp+while/lstm_cell_610/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_611_layer_call_and_return_conditional_losses_3967576

inputs>
,lstm_cell_611_matmul_readvariableop_resource:2(@
.lstm_cell_611_matmul_1_readvariableop_resource:
(;
-lstm_cell_611_biasadd_readvariableop_resource:(
identity??$lstm_cell_611/BiasAdd/ReadVariableOp?#lstm_cell_611/MatMul/ReadVariableOp?%lstm_cell_611/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_611/MatMul/ReadVariableOpReadVariableOp,lstm_cell_611_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_611/MatMulMatMulstrided_slice_2:output:0+lstm_cell_611/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_611/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_611_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_611/MatMul_1MatMulzeros:output:0-lstm_cell_611/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_611/addAddV2lstm_cell_611/MatMul:product:0 lstm_cell_611/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_611/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_611_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_611/BiasAddBiasAddlstm_cell_611/add:z:0,lstm_cell_611/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_611/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_611/splitSplit&lstm_cell_611/split/split_dim:output:0lstm_cell_611/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_611/SigmoidSigmoidlstm_cell_611/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_611/Sigmoid_1Sigmoidlstm_cell_611/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_611/mulMullstm_cell_611/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_611/ReluRelulstm_cell_611/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_611/mul_1Mullstm_cell_611/Sigmoid:y:0 lstm_cell_611/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_611/add_1AddV2lstm_cell_611/mul:z:0lstm_cell_611/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_611/Sigmoid_2Sigmoidlstm_cell_611/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_611/Relu_1Relulstm_cell_611/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_611/mul_2Mullstm_cell_611/Sigmoid_2:y:0"lstm_cell_611/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_611_matmul_readvariableop_resource.lstm_cell_611_matmul_1_readvariableop_resource-lstm_cell_611_biasadd_readvariableop_resource*
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
while_body_3967492*
condR
while_cond_3967491*K
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
NoOpNoOp%^lstm_cell_611/BiasAdd/ReadVariableOp$^lstm_cell_611/MatMul/ReadVariableOp&^lstm_cell_611/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_611/BiasAdd/ReadVariableOp$lstm_cell_611/BiasAdd/ReadVariableOp2J
#lstm_cell_611/MatMul/ReadVariableOp#lstm_cell_611/MatMul/ReadVariableOp2N
%lstm_cell_611/MatMul_1/ReadVariableOp%lstm_cell_611/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
while_cond_3966832
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3966832___redundant_placeholder05
1while_while_cond_3966832___redundant_placeholder15
1while_while_cond_3966832___redundant_placeholder25
1while_while_cond_3966832___redundant_placeholder3
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
E__inference_lstm_611_layer_call_and_return_conditional_losses_3966902

inputs'
lstm_cell_611_3966820:2('
lstm_cell_611_3966822:
(#
lstm_cell_611_3966824:(
identity??%lstm_cell_611/StatefulPartitionedCall?while;
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
%lstm_cell_611/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_611_3966820lstm_cell_611_3966822lstm_cell_611_3966824*
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
J__inference_lstm_cell_611_layer_call_and_return_conditional_losses_3966774n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_611_3966820lstm_cell_611_3966822lstm_cell_611_3966824*
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
while_body_3966833*
condR
while_cond_3966832*K
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
NoOpNoOp&^lstm_cell_611/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_611/StatefulPartitionedCall%lstm_cell_611/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?
?
while_cond_3967821
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3967821___redundant_placeholder05
1while_while_cond_3967821___redundant_placeholder15
1while_while_cond_3967821___redundant_placeholder25
1while_while_cond_3967821___redundant_placeholder3
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
J__inference_lstm_cell_609_layer_call_and_return_conditional_losses_3966074

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
?
*__inference_lstm_609_layer_call_fn_3969051
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
E__inference_lstm_609_layer_call_and_return_conditional_losses_3966202|
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
E__inference_lstm_610_layer_call_and_return_conditional_losses_3966552

inputs(
lstm_cell_610_3966470:	d?(
lstm_cell_610_3966472:	2?$
lstm_cell_610_3966474:	?
identity??%lstm_cell_610/StatefulPartitionedCall?while;
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
%lstm_cell_610/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_610_3966470lstm_cell_610_3966472lstm_cell_610_3966474*
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
J__inference_lstm_cell_610_layer_call_and_return_conditional_losses_3966424n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_610_3966470lstm_cell_610_3966472lstm_cell_610_3966474*
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
while_body_3966483*
condR
while_cond_3966482*K
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
NoOpNoOp&^lstm_cell_610/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_610/StatefulPartitionedCall%lstm_cell_610/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?	
?
F__inference_dense_203_layer_call_and_return_conditional_losses_3967378

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
?
*sequential_203_lstm_609_while_cond_3965492L
Hsequential_203_lstm_609_while_sequential_203_lstm_609_while_loop_counterR
Nsequential_203_lstm_609_while_sequential_203_lstm_609_while_maximum_iterations-
)sequential_203_lstm_609_while_placeholder/
+sequential_203_lstm_609_while_placeholder_1/
+sequential_203_lstm_609_while_placeholder_2/
+sequential_203_lstm_609_while_placeholder_3N
Jsequential_203_lstm_609_while_less_sequential_203_lstm_609_strided_slice_1e
asequential_203_lstm_609_while_sequential_203_lstm_609_while_cond_3965492___redundant_placeholder0e
asequential_203_lstm_609_while_sequential_203_lstm_609_while_cond_3965492___redundant_placeholder1e
asequential_203_lstm_609_while_sequential_203_lstm_609_while_cond_3965492___redundant_placeholder2e
asequential_203_lstm_609_while_sequential_203_lstm_609_while_cond_3965492___redundant_placeholder3*
&sequential_203_lstm_609_while_identity
?
"sequential_203/lstm_609/while/LessLess)sequential_203_lstm_609_while_placeholderJsequential_203_lstm_609_while_less_sequential_203_lstm_609_strided_slice_1*
T0*
_output_shapes
: {
&sequential_203/lstm_609/while/IdentityIdentity&sequential_203/lstm_609/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_203_lstm_609_while_identity/sequential_203/lstm_609/while/Identity:output:0*(
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
while_cond_3965941
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3965941___redundant_placeholder05
1while_while_cond_3965941___redundant_placeholder15
1while_while_cond_3965941___redundant_placeholder25
1while_while_cond_3965941___redundant_placeholder3
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
J__inference_lstm_cell_611_layer_call_and_return_conditional_losses_3971158

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
?
*__inference_lstm_609_layer_call_fn_3969062

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
E__inference_lstm_609_layer_call_and_return_conditional_losses_3967060s
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
while_body_3970793
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_611_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_611_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_611_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_611_matmul_readvariableop_resource:2(F
4while_lstm_cell_611_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_611_biasadd_readvariableop_resource:(??*while/lstm_cell_611/BiasAdd/ReadVariableOp?)while/lstm_cell_611/MatMul/ReadVariableOp?+while/lstm_cell_611/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_611/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_611_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_611/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_611/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_611/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_611_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_611/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_611/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_611/addAddV2$while/lstm_cell_611/MatMul:product:0&while/lstm_cell_611/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_611/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_611_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_611/BiasAddBiasAddwhile/lstm_cell_611/add:z:02while/lstm_cell_611/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_611/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_611/splitSplit,while/lstm_cell_611/split/split_dim:output:0$while/lstm_cell_611/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_611/SigmoidSigmoid"while/lstm_cell_611/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_611/Sigmoid_1Sigmoid"while/lstm_cell_611/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_611/mulMul!while/lstm_cell_611/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_611/ReluRelu"while/lstm_cell_611/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_611/mul_1Mulwhile/lstm_cell_611/Sigmoid:y:0&while/lstm_cell_611/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_611/add_1AddV2while/lstm_cell_611/mul:z:0while/lstm_cell_611/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_611/Sigmoid_2Sigmoid"while/lstm_cell_611/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_611/Relu_1Reluwhile/lstm_cell_611/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_611/mul_2Mul!while/lstm_cell_611/Sigmoid_2:y:0(while/lstm_cell_611/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_611/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_611/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_611/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_611/BiasAdd/ReadVariableOp*^while/lstm_cell_611/MatMul/ReadVariableOp,^while/lstm_cell_611/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_611_biasadd_readvariableop_resource5while_lstm_cell_611_biasadd_readvariableop_resource_0"n
4while_lstm_cell_611_matmul_1_readvariableop_resource6while_lstm_cell_611_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_611_matmul_readvariableop_resource4while_lstm_cell_611_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_611/BiasAdd/ReadVariableOp*while/lstm_cell_611/BiasAdd/ReadVariableOp2V
)while/lstm_cell_611/MatMul/ReadVariableOp)while/lstm_cell_611/MatMul/ReadVariableOp2Z
+while/lstm_cell_611/MatMul_1/ReadVariableOp+while/lstm_cell_611/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
K__inference_sequential_203_layer_call_and_return_conditional_losses_3969029

inputsH
5lstm_609_lstm_cell_609_matmul_readvariableop_resource:	?J
7lstm_609_lstm_cell_609_matmul_1_readvariableop_resource:	d?E
6lstm_609_lstm_cell_609_biasadd_readvariableop_resource:	?H
5lstm_610_lstm_cell_610_matmul_readvariableop_resource:	d?J
7lstm_610_lstm_cell_610_matmul_1_readvariableop_resource:	2?E
6lstm_610_lstm_cell_610_biasadd_readvariableop_resource:	?G
5lstm_611_lstm_cell_611_matmul_readvariableop_resource:2(I
7lstm_611_lstm_cell_611_matmul_1_readvariableop_resource:
(D
6lstm_611_lstm_cell_611_biasadd_readvariableop_resource:(:
(dense_203_matmul_readvariableop_resource:
7
)dense_203_biasadd_readvariableop_resource:
identity?? dense_203/BiasAdd/ReadVariableOp?dense_203/MatMul/ReadVariableOp?-lstm_609/lstm_cell_609/BiasAdd/ReadVariableOp?,lstm_609/lstm_cell_609/MatMul/ReadVariableOp?.lstm_609/lstm_cell_609/MatMul_1/ReadVariableOp?lstm_609/while?-lstm_610/lstm_cell_610/BiasAdd/ReadVariableOp?,lstm_610/lstm_cell_610/MatMul/ReadVariableOp?.lstm_610/lstm_cell_610/MatMul_1/ReadVariableOp?lstm_610/while?-lstm_611/lstm_cell_611/BiasAdd/ReadVariableOp?,lstm_611/lstm_cell_611/MatMul/ReadVariableOp?.lstm_611/lstm_cell_611/MatMul_1/ReadVariableOp?lstm_611/whileD
lstm_609/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_609/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_609/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_609/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_609/strided_sliceStridedSlicelstm_609/Shape:output:0%lstm_609/strided_slice/stack:output:0'lstm_609/strided_slice/stack_1:output:0'lstm_609/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_609/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_609/zeros/packedPacklstm_609/strided_slice:output:0 lstm_609/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_609/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_609/zerosFilllstm_609/zeros/packed:output:0lstm_609/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_609/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_609/zeros_1/packedPacklstm_609/strided_slice:output:0"lstm_609/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_609/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_609/zeros_1Fill lstm_609/zeros_1/packed:output:0lstm_609/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_609/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_609/transpose	Transposeinputs lstm_609/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_609/Shape_1Shapelstm_609/transpose:y:0*
T0*
_output_shapes
:h
lstm_609/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_609/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_609/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_609/strided_slice_1StridedSlicelstm_609/Shape_1:output:0'lstm_609/strided_slice_1/stack:output:0)lstm_609/strided_slice_1/stack_1:output:0)lstm_609/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_609/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_609/TensorArrayV2TensorListReserve-lstm_609/TensorArrayV2/element_shape:output:0!lstm_609/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_609/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_609/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_609/transpose:y:0Glstm_609/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_609/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_609/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_609/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_609/strided_slice_2StridedSlicelstm_609/transpose:y:0'lstm_609/strided_slice_2/stack:output:0)lstm_609/strided_slice_2/stack_1:output:0)lstm_609/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_609/lstm_cell_609/MatMul/ReadVariableOpReadVariableOp5lstm_609_lstm_cell_609_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_609/lstm_cell_609/MatMulMatMul!lstm_609/strided_slice_2:output:04lstm_609/lstm_cell_609/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_609/lstm_cell_609/MatMul_1/ReadVariableOpReadVariableOp7lstm_609_lstm_cell_609_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_609/lstm_cell_609/MatMul_1MatMullstm_609/zeros:output:06lstm_609/lstm_cell_609/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_609/lstm_cell_609/addAddV2'lstm_609/lstm_cell_609/MatMul:product:0)lstm_609/lstm_cell_609/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_609/lstm_cell_609/BiasAdd/ReadVariableOpReadVariableOp6lstm_609_lstm_cell_609_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_609/lstm_cell_609/BiasAddBiasAddlstm_609/lstm_cell_609/add:z:05lstm_609/lstm_cell_609/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_609/lstm_cell_609/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_609/lstm_cell_609/splitSplit/lstm_609/lstm_cell_609/split/split_dim:output:0'lstm_609/lstm_cell_609/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_609/lstm_cell_609/SigmoidSigmoid%lstm_609/lstm_cell_609/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_609/lstm_cell_609/Sigmoid_1Sigmoid%lstm_609/lstm_cell_609/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_609/lstm_cell_609/mulMul$lstm_609/lstm_cell_609/Sigmoid_1:y:0lstm_609/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_609/lstm_cell_609/ReluRelu%lstm_609/lstm_cell_609/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_609/lstm_cell_609/mul_1Mul"lstm_609/lstm_cell_609/Sigmoid:y:0)lstm_609/lstm_cell_609/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_609/lstm_cell_609/add_1AddV2lstm_609/lstm_cell_609/mul:z:0 lstm_609/lstm_cell_609/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_609/lstm_cell_609/Sigmoid_2Sigmoid%lstm_609/lstm_cell_609/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_609/lstm_cell_609/Relu_1Relu lstm_609/lstm_cell_609/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_609/lstm_cell_609/mul_2Mul$lstm_609/lstm_cell_609/Sigmoid_2:y:0+lstm_609/lstm_cell_609/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_609/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_609/TensorArrayV2_1TensorListReserve/lstm_609/TensorArrayV2_1/element_shape:output:0!lstm_609/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_609/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_609/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_609/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_609/whileWhile$lstm_609/while/loop_counter:output:0*lstm_609/while/maximum_iterations:output:0lstm_609/time:output:0!lstm_609/TensorArrayV2_1:handle:0lstm_609/zeros:output:0lstm_609/zeros_1:output:0!lstm_609/strided_slice_1:output:0@lstm_609/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_609_lstm_cell_609_matmul_readvariableop_resource7lstm_609_lstm_cell_609_matmul_1_readvariableop_resource6lstm_609_lstm_cell_609_biasadd_readvariableop_resource*
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
lstm_609_while_body_3968661*'
condR
lstm_609_while_cond_3968660*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_609/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_609/TensorArrayV2Stack/TensorListStackTensorListStacklstm_609/while:output:3Blstm_609/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_609/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_609/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_609/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_609/strided_slice_3StridedSlice4lstm_609/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_609/strided_slice_3/stack:output:0)lstm_609/strided_slice_3/stack_1:output:0)lstm_609/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_609/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_609/transpose_1	Transpose4lstm_609/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_609/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_609/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_610/ShapeShapelstm_609/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_610/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_610/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_610/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_610/strided_sliceStridedSlicelstm_610/Shape:output:0%lstm_610/strided_slice/stack:output:0'lstm_610/strided_slice/stack_1:output:0'lstm_610/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_610/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_610/zeros/packedPacklstm_610/strided_slice:output:0 lstm_610/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_610/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_610/zerosFilllstm_610/zeros/packed:output:0lstm_610/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_610/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_610/zeros_1/packedPacklstm_610/strided_slice:output:0"lstm_610/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_610/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_610/zeros_1Fill lstm_610/zeros_1/packed:output:0lstm_610/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_610/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_610/transpose	Transposelstm_609/transpose_1:y:0 lstm_610/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_610/Shape_1Shapelstm_610/transpose:y:0*
T0*
_output_shapes
:h
lstm_610/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_610/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_610/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_610/strided_slice_1StridedSlicelstm_610/Shape_1:output:0'lstm_610/strided_slice_1/stack:output:0)lstm_610/strided_slice_1/stack_1:output:0)lstm_610/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_610/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_610/TensorArrayV2TensorListReserve-lstm_610/TensorArrayV2/element_shape:output:0!lstm_610/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_610/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_610/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_610/transpose:y:0Glstm_610/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_610/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_610/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_610/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_610/strided_slice_2StridedSlicelstm_610/transpose:y:0'lstm_610/strided_slice_2/stack:output:0)lstm_610/strided_slice_2/stack_1:output:0)lstm_610/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_610/lstm_cell_610/MatMul/ReadVariableOpReadVariableOp5lstm_610_lstm_cell_610_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_610/lstm_cell_610/MatMulMatMul!lstm_610/strided_slice_2:output:04lstm_610/lstm_cell_610/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_610/lstm_cell_610/MatMul_1/ReadVariableOpReadVariableOp7lstm_610_lstm_cell_610_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_610/lstm_cell_610/MatMul_1MatMullstm_610/zeros:output:06lstm_610/lstm_cell_610/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_610/lstm_cell_610/addAddV2'lstm_610/lstm_cell_610/MatMul:product:0)lstm_610/lstm_cell_610/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_610/lstm_cell_610/BiasAdd/ReadVariableOpReadVariableOp6lstm_610_lstm_cell_610_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_610/lstm_cell_610/BiasAddBiasAddlstm_610/lstm_cell_610/add:z:05lstm_610/lstm_cell_610/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_610/lstm_cell_610/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_610/lstm_cell_610/splitSplit/lstm_610/lstm_cell_610/split/split_dim:output:0'lstm_610/lstm_cell_610/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_610/lstm_cell_610/SigmoidSigmoid%lstm_610/lstm_cell_610/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_610/lstm_cell_610/Sigmoid_1Sigmoid%lstm_610/lstm_cell_610/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_610/lstm_cell_610/mulMul$lstm_610/lstm_cell_610/Sigmoid_1:y:0lstm_610/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_610/lstm_cell_610/ReluRelu%lstm_610/lstm_cell_610/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_610/lstm_cell_610/mul_1Mul"lstm_610/lstm_cell_610/Sigmoid:y:0)lstm_610/lstm_cell_610/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_610/lstm_cell_610/add_1AddV2lstm_610/lstm_cell_610/mul:z:0 lstm_610/lstm_cell_610/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_610/lstm_cell_610/Sigmoid_2Sigmoid%lstm_610/lstm_cell_610/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_610/lstm_cell_610/Relu_1Relu lstm_610/lstm_cell_610/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_610/lstm_cell_610/mul_2Mul$lstm_610/lstm_cell_610/Sigmoid_2:y:0+lstm_610/lstm_cell_610/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_610/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_610/TensorArrayV2_1TensorListReserve/lstm_610/TensorArrayV2_1/element_shape:output:0!lstm_610/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_610/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_610/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_610/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_610/whileWhile$lstm_610/while/loop_counter:output:0*lstm_610/while/maximum_iterations:output:0lstm_610/time:output:0!lstm_610/TensorArrayV2_1:handle:0lstm_610/zeros:output:0lstm_610/zeros_1:output:0!lstm_610/strided_slice_1:output:0@lstm_610/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_610_lstm_cell_610_matmul_readvariableop_resource7lstm_610_lstm_cell_610_matmul_1_readvariableop_resource6lstm_610_lstm_cell_610_biasadd_readvariableop_resource*
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
lstm_610_while_body_3968800*'
condR
lstm_610_while_cond_3968799*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_610/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_610/TensorArrayV2Stack/TensorListStackTensorListStacklstm_610/while:output:3Blstm_610/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_610/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_610/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_610/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_610/strided_slice_3StridedSlice4lstm_610/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_610/strided_slice_3/stack:output:0)lstm_610/strided_slice_3/stack_1:output:0)lstm_610/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_610/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_610/transpose_1	Transpose4lstm_610/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_610/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_610/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_611/ShapeShapelstm_610/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_611/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_611/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_611/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_611/strided_sliceStridedSlicelstm_611/Shape:output:0%lstm_611/strided_slice/stack:output:0'lstm_611/strided_slice/stack_1:output:0'lstm_611/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_611/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_611/zeros/packedPacklstm_611/strided_slice:output:0 lstm_611/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_611/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_611/zerosFilllstm_611/zeros/packed:output:0lstm_611/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_611/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_611/zeros_1/packedPacklstm_611/strided_slice:output:0"lstm_611/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_611/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_611/zeros_1Fill lstm_611/zeros_1/packed:output:0lstm_611/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_611/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_611/transpose	Transposelstm_610/transpose_1:y:0 lstm_611/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_611/Shape_1Shapelstm_611/transpose:y:0*
T0*
_output_shapes
:h
lstm_611/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_611/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_611/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_611/strided_slice_1StridedSlicelstm_611/Shape_1:output:0'lstm_611/strided_slice_1/stack:output:0)lstm_611/strided_slice_1/stack_1:output:0)lstm_611/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_611/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_611/TensorArrayV2TensorListReserve-lstm_611/TensorArrayV2/element_shape:output:0!lstm_611/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_611/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_611/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_611/transpose:y:0Glstm_611/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_611/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_611/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_611/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_611/strided_slice_2StridedSlicelstm_611/transpose:y:0'lstm_611/strided_slice_2/stack:output:0)lstm_611/strided_slice_2/stack_1:output:0)lstm_611/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_611/lstm_cell_611/MatMul/ReadVariableOpReadVariableOp5lstm_611_lstm_cell_611_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_611/lstm_cell_611/MatMulMatMul!lstm_611/strided_slice_2:output:04lstm_611/lstm_cell_611/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_611/lstm_cell_611/MatMul_1/ReadVariableOpReadVariableOp7lstm_611_lstm_cell_611_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_611/lstm_cell_611/MatMul_1MatMullstm_611/zeros:output:06lstm_611/lstm_cell_611/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_611/lstm_cell_611/addAddV2'lstm_611/lstm_cell_611/MatMul:product:0)lstm_611/lstm_cell_611/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_611/lstm_cell_611/BiasAdd/ReadVariableOpReadVariableOp6lstm_611_lstm_cell_611_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_611/lstm_cell_611/BiasAddBiasAddlstm_611/lstm_cell_611/add:z:05lstm_611/lstm_cell_611/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_611/lstm_cell_611/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_611/lstm_cell_611/splitSplit/lstm_611/lstm_cell_611/split/split_dim:output:0'lstm_611/lstm_cell_611/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_611/lstm_cell_611/SigmoidSigmoid%lstm_611/lstm_cell_611/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_611/lstm_cell_611/Sigmoid_1Sigmoid%lstm_611/lstm_cell_611/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_611/lstm_cell_611/mulMul$lstm_611/lstm_cell_611/Sigmoid_1:y:0lstm_611/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_611/lstm_cell_611/ReluRelu%lstm_611/lstm_cell_611/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_611/lstm_cell_611/mul_1Mul"lstm_611/lstm_cell_611/Sigmoid:y:0)lstm_611/lstm_cell_611/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_611/lstm_cell_611/add_1AddV2lstm_611/lstm_cell_611/mul:z:0 lstm_611/lstm_cell_611/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_611/lstm_cell_611/Sigmoid_2Sigmoid%lstm_611/lstm_cell_611/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_611/lstm_cell_611/Relu_1Relu lstm_611/lstm_cell_611/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_611/lstm_cell_611/mul_2Mul$lstm_611/lstm_cell_611/Sigmoid_2:y:0+lstm_611/lstm_cell_611/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_611/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_611/TensorArrayV2_1TensorListReserve/lstm_611/TensorArrayV2_1/element_shape:output:0!lstm_611/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_611/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_611/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_611/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_611/whileWhile$lstm_611/while/loop_counter:output:0*lstm_611/while/maximum_iterations:output:0lstm_611/time:output:0!lstm_611/TensorArrayV2_1:handle:0lstm_611/zeros:output:0lstm_611/zeros_1:output:0!lstm_611/strided_slice_1:output:0@lstm_611/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_611_lstm_cell_611_matmul_readvariableop_resource7lstm_611_lstm_cell_611_matmul_1_readvariableop_resource6lstm_611_lstm_cell_611_biasadd_readvariableop_resource*
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
lstm_611_while_body_3968939*'
condR
lstm_611_while_cond_3968938*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_611/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_611/TensorArrayV2Stack/TensorListStackTensorListStacklstm_611/while:output:3Blstm_611/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_611/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_611/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_611/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_611/strided_slice_3StridedSlice4lstm_611/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_611/strided_slice_3/stack:output:0)lstm_611/strided_slice_3/stack_1:output:0)lstm_611/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_611/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_611/transpose_1	Transpose4lstm_611/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_611/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_611/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_203/MatMul/ReadVariableOpReadVariableOp(dense_203_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_203/MatMulMatMul!lstm_611/strided_slice_3:output:0'dense_203/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_203/BiasAdd/ReadVariableOpReadVariableOp)dense_203_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_203/BiasAddBiasAdddense_203/MatMul:product:0(dense_203/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_203/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_203/BiasAdd/ReadVariableOp ^dense_203/MatMul/ReadVariableOp.^lstm_609/lstm_cell_609/BiasAdd/ReadVariableOp-^lstm_609/lstm_cell_609/MatMul/ReadVariableOp/^lstm_609/lstm_cell_609/MatMul_1/ReadVariableOp^lstm_609/while.^lstm_610/lstm_cell_610/BiasAdd/ReadVariableOp-^lstm_610/lstm_cell_610/MatMul/ReadVariableOp/^lstm_610/lstm_cell_610/MatMul_1/ReadVariableOp^lstm_610/while.^lstm_611/lstm_cell_611/BiasAdd/ReadVariableOp-^lstm_611/lstm_cell_611/MatMul/ReadVariableOp/^lstm_611/lstm_cell_611/MatMul_1/ReadVariableOp^lstm_611/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_203/BiasAdd/ReadVariableOp dense_203/BiasAdd/ReadVariableOp2B
dense_203/MatMul/ReadVariableOpdense_203/MatMul/ReadVariableOp2^
-lstm_609/lstm_cell_609/BiasAdd/ReadVariableOp-lstm_609/lstm_cell_609/BiasAdd/ReadVariableOp2\
,lstm_609/lstm_cell_609/MatMul/ReadVariableOp,lstm_609/lstm_cell_609/MatMul/ReadVariableOp2`
.lstm_609/lstm_cell_609/MatMul_1/ReadVariableOp.lstm_609/lstm_cell_609/MatMul_1/ReadVariableOp2 
lstm_609/whilelstm_609/while2^
-lstm_610/lstm_cell_610/BiasAdd/ReadVariableOp-lstm_610/lstm_cell_610/BiasAdd/ReadVariableOp2\
,lstm_610/lstm_cell_610/MatMul/ReadVariableOp,lstm_610/lstm_cell_610/MatMul/ReadVariableOp2`
.lstm_610/lstm_cell_610/MatMul_1/ReadVariableOp.lstm_610/lstm_cell_610/MatMul_1/ReadVariableOp2 
lstm_610/whilelstm_610/while2^
-lstm_611/lstm_cell_611/BiasAdd/ReadVariableOp-lstm_611/lstm_cell_611/BiasAdd/ReadVariableOp2\
,lstm_611/lstm_cell_611/MatMul/ReadVariableOp,lstm_611/lstm_cell_611/MatMul/ReadVariableOp2`
.lstm_611/lstm_cell_611/MatMul_1/ReadVariableOp.lstm_611/lstm_cell_611/MatMul_1/ReadVariableOp2 
lstm_611/whilelstm_611/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
while_body_3967492
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_611_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_611_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_611_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_611_matmul_readvariableop_resource:2(F
4while_lstm_cell_611_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_611_biasadd_readvariableop_resource:(??*while/lstm_cell_611/BiasAdd/ReadVariableOp?)while/lstm_cell_611/MatMul/ReadVariableOp?+while/lstm_cell_611/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_611/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_611_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_611/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_611/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_611/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_611_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_611/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_611/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_611/addAddV2$while/lstm_cell_611/MatMul:product:0&while/lstm_cell_611/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_611/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_611_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_611/BiasAddBiasAddwhile/lstm_cell_611/add:z:02while/lstm_cell_611/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_611/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_611/splitSplit,while/lstm_cell_611/split/split_dim:output:0$while/lstm_cell_611/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_611/SigmoidSigmoid"while/lstm_cell_611/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_611/Sigmoid_1Sigmoid"while/lstm_cell_611/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_611/mulMul!while/lstm_cell_611/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_611/ReluRelu"while/lstm_cell_611/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_611/mul_1Mulwhile/lstm_cell_611/Sigmoid:y:0&while/lstm_cell_611/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_611/add_1AddV2while/lstm_cell_611/mul:z:0while/lstm_cell_611/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_611/Sigmoid_2Sigmoid"while/lstm_cell_611/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_611/Relu_1Reluwhile/lstm_cell_611/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_611/mul_2Mul!while/lstm_cell_611/Sigmoid_2:y:0(while/lstm_cell_611/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_611/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_611/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_611/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_611/BiasAdd/ReadVariableOp*^while/lstm_cell_611/MatMul/ReadVariableOp,^while/lstm_cell_611/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_611_biasadd_readvariableop_resource5while_lstm_cell_611_biasadd_readvariableop_resource_0"n
4while_lstm_cell_611_matmul_1_readvariableop_resource6while_lstm_cell_611_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_611_matmul_readvariableop_resource4while_lstm_cell_611_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_611/BiasAdd/ReadVariableOp*while/lstm_cell_611/BiasAdd/ReadVariableOp2V
)while/lstm_cell_611/MatMul/ReadVariableOp)while/lstm_cell_611/MatMul/ReadVariableOp2Z
+while/lstm_cell_611/MatMul_1/ReadVariableOp+while/lstm_cell_611/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_3969417
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3969417___redundant_placeholder05
1while_while_cond_3969417___redundant_placeholder15
1while_while_cond_3969417___redundant_placeholder25
1while_while_cond_3969417___redundant_placeholder3
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
while_cond_3970033
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3970033___redundant_placeholder05
1while_while_cond_3970033___redundant_placeholder15
1while_while_cond_3970033___redundant_placeholder25
1while_while_cond_3970033___redundant_placeholder3
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
while_body_3966642
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_611_3966666_0:2(/
while_lstm_cell_611_3966668_0:
(+
while_lstm_cell_611_3966670_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_611_3966666:2(-
while_lstm_cell_611_3966668:
()
while_lstm_cell_611_3966670:(??+while/lstm_cell_611/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_611/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_611_3966666_0while_lstm_cell_611_3966668_0while_lstm_cell_611_3966670_0*
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
J__inference_lstm_cell_611_layer_call_and_return_conditional_losses_3966628?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_611/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_611/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_611/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_611/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_611_3966666while_lstm_cell_611_3966666_0"<
while_lstm_cell_611_3966668while_lstm_cell_611_3966668_0"<
while_lstm_cell_611_3966670while_lstm_cell_611_3966670_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_611/StatefulPartitionedCall+while/lstm_cell_611/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
#__inference__traced_restore_3971463
file_prefix3
!assignvariableop_dense_203_kernel:
/
!assignvariableop_1_dense_203_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: C
0assignvariableop_7_lstm_609_lstm_cell_609_kernel:	?M
:assignvariableop_8_lstm_609_lstm_cell_609_recurrent_kernel:	d?=
.assignvariableop_9_lstm_609_lstm_cell_609_bias:	?D
1assignvariableop_10_lstm_610_lstm_cell_610_kernel:	d?N
;assignvariableop_11_lstm_610_lstm_cell_610_recurrent_kernel:	2?>
/assignvariableop_12_lstm_610_lstm_cell_610_bias:	?C
1assignvariableop_13_lstm_611_lstm_cell_611_kernel:2(M
;assignvariableop_14_lstm_611_lstm_cell_611_recurrent_kernel:
(=
/assignvariableop_15_lstm_611_lstm_cell_611_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: =
+assignvariableop_18_adam_dense_203_kernel_m:
7
)assignvariableop_19_adam_dense_203_bias_m:K
8assignvariableop_20_adam_lstm_609_lstm_cell_609_kernel_m:	?U
Bassignvariableop_21_adam_lstm_609_lstm_cell_609_recurrent_kernel_m:	d?E
6assignvariableop_22_adam_lstm_609_lstm_cell_609_bias_m:	?K
8assignvariableop_23_adam_lstm_610_lstm_cell_610_kernel_m:	d?U
Bassignvariableop_24_adam_lstm_610_lstm_cell_610_recurrent_kernel_m:	2?E
6assignvariableop_25_adam_lstm_610_lstm_cell_610_bias_m:	?J
8assignvariableop_26_adam_lstm_611_lstm_cell_611_kernel_m:2(T
Bassignvariableop_27_adam_lstm_611_lstm_cell_611_recurrent_kernel_m:
(D
6assignvariableop_28_adam_lstm_611_lstm_cell_611_bias_m:(=
+assignvariableop_29_adam_dense_203_kernel_v:
7
)assignvariableop_30_adam_dense_203_bias_v:K
8assignvariableop_31_adam_lstm_609_lstm_cell_609_kernel_v:	?U
Bassignvariableop_32_adam_lstm_609_lstm_cell_609_recurrent_kernel_v:	d?E
6assignvariableop_33_adam_lstm_609_lstm_cell_609_bias_v:	?K
8assignvariableop_34_adam_lstm_610_lstm_cell_610_kernel_v:	d?U
Bassignvariableop_35_adam_lstm_610_lstm_cell_610_recurrent_kernel_v:	2?E
6assignvariableop_36_adam_lstm_610_lstm_cell_610_bias_v:	?J
8assignvariableop_37_adam_lstm_611_lstm_cell_611_kernel_v:2(T
Bassignvariableop_38_adam_lstm_611_lstm_cell_611_recurrent_kernel_v:
(D
6assignvariableop_39_adam_lstm_611_lstm_cell_611_bias_v:(
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
AssignVariableOpAssignVariableOp!assignvariableop_dense_203_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_203_biasIdentity_1:output:0"/device:CPU:0*
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
AssignVariableOp_7AssignVariableOp0assignvariableop_7_lstm_609_lstm_cell_609_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp:assignvariableop_8_lstm_609_lstm_cell_609_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_609_lstm_cell_609_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp1assignvariableop_10_lstm_610_lstm_cell_610_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp;assignvariableop_11_lstm_610_lstm_cell_610_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp/assignvariableop_12_lstm_610_lstm_cell_610_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp1assignvariableop_13_lstm_611_lstm_cell_611_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp;assignvariableop_14_lstm_611_lstm_cell_611_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp/assignvariableop_15_lstm_611_lstm_cell_611_biasIdentity_15:output:0"/device:CPU:0*
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
AssignVariableOp_18AssignVariableOp+assignvariableop_18_adam_dense_203_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp)assignvariableop_19_adam_dense_203_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp8assignvariableop_20_adam_lstm_609_lstm_cell_609_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOpBassignvariableop_21_adam_lstm_609_lstm_cell_609_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp6assignvariableop_22_adam_lstm_609_lstm_cell_609_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp8assignvariableop_23_adam_lstm_610_lstm_cell_610_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOpBassignvariableop_24_adam_lstm_610_lstm_cell_610_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_610_lstm_cell_610_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp8assignvariableop_26_adam_lstm_611_lstm_cell_611_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOpBassignvariableop_27_adam_lstm_611_lstm_cell_611_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_lstm_611_lstm_cell_611_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp+assignvariableop_29_adam_dense_203_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_dense_203_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp8assignvariableop_31_adam_lstm_609_lstm_cell_609_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOpBassignvariableop_32_adam_lstm_609_lstm_cell_609_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOp6assignvariableop_33_adam_lstm_609_lstm_cell_609_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOp8assignvariableop_34_adam_lstm_610_lstm_cell_610_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOpBassignvariableop_35_adam_lstm_610_lstm_cell_610_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adam_lstm_610_lstm_cell_610_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_37AssignVariableOp8assignvariableop_37_adam_lstm_611_lstm_cell_611_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_38AssignVariableOpBassignvariableop_38_adam_lstm_611_lstm_cell_611_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_lstm_611_lstm_cell_611_bias_vIdentity_39:output:0"/device:CPU:0*
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
while_cond_3969274
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3969274___redundant_placeholder05
1while_while_cond_3969274___redundant_placeholder15
1while_while_cond_3969274___redundant_placeholder25
1while_while_cond_3969274___redundant_placeholder3
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
while_body_3969561
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_609_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_609_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_609_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_609_matmul_readvariableop_resource:	?G
4while_lstm_cell_609_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_609_biasadd_readvariableop_resource:	???*while/lstm_cell_609/BiasAdd/ReadVariableOp?)while/lstm_cell_609/MatMul/ReadVariableOp?+while/lstm_cell_609/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_609/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_609_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_609/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_609/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_609/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_609_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_609/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_609/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_609/addAddV2$while/lstm_cell_609/MatMul:product:0&while/lstm_cell_609/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_609/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_609_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_609/BiasAddBiasAddwhile/lstm_cell_609/add:z:02while/lstm_cell_609/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_609/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_609/splitSplit,while/lstm_cell_609/split/split_dim:output:0$while/lstm_cell_609/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_609/SigmoidSigmoid"while/lstm_cell_609/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_609/Sigmoid_1Sigmoid"while/lstm_cell_609/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_609/mulMul!while/lstm_cell_609/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_609/ReluRelu"while/lstm_cell_609/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_609/mul_1Mulwhile/lstm_cell_609/Sigmoid:y:0&while/lstm_cell_609/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_609/add_1AddV2while/lstm_cell_609/mul:z:0while/lstm_cell_609/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_609/Sigmoid_2Sigmoid"while/lstm_cell_609/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_609/Relu_1Reluwhile/lstm_cell_609/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_609/mul_2Mul!while/lstm_cell_609/Sigmoid_2:y:0(while/lstm_cell_609/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_609/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_609/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_609/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_609/BiasAdd/ReadVariableOp*^while/lstm_cell_609/MatMul/ReadVariableOp,^while/lstm_cell_609/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_609_biasadd_readvariableop_resource5while_lstm_cell_609_biasadd_readvariableop_resource_0"n
4while_lstm_cell_609_matmul_1_readvariableop_resource6while_lstm_cell_609_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_609_matmul_readvariableop_resource4while_lstm_cell_609_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_609/BiasAdd/ReadVariableOp*while/lstm_cell_609/BiasAdd/ReadVariableOp2V
)while/lstm_cell_609/MatMul/ReadVariableOp)while/lstm_cell_609/MatMul/ReadVariableOp2Z
+while/lstm_cell_609/MatMul_1/ReadVariableOp+while/lstm_cell_609/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

lstm_610_while_body_3968373.
*lstm_610_while_lstm_610_while_loop_counter4
0lstm_610_while_lstm_610_while_maximum_iterations
lstm_610_while_placeholder 
lstm_610_while_placeholder_1 
lstm_610_while_placeholder_2 
lstm_610_while_placeholder_3-
)lstm_610_while_lstm_610_strided_slice_1_0i
elstm_610_while_tensorarrayv2read_tensorlistgetitem_lstm_610_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_610_while_lstm_cell_610_matmul_readvariableop_resource_0:	d?R
?lstm_610_while_lstm_cell_610_matmul_1_readvariableop_resource_0:	2?M
>lstm_610_while_lstm_cell_610_biasadd_readvariableop_resource_0:	?
lstm_610_while_identity
lstm_610_while_identity_1
lstm_610_while_identity_2
lstm_610_while_identity_3
lstm_610_while_identity_4
lstm_610_while_identity_5+
'lstm_610_while_lstm_610_strided_slice_1g
clstm_610_while_tensorarrayv2read_tensorlistgetitem_lstm_610_tensorarrayunstack_tensorlistfromtensorN
;lstm_610_while_lstm_cell_610_matmul_readvariableop_resource:	d?P
=lstm_610_while_lstm_cell_610_matmul_1_readvariableop_resource:	2?K
<lstm_610_while_lstm_cell_610_biasadd_readvariableop_resource:	???3lstm_610/while/lstm_cell_610/BiasAdd/ReadVariableOp?2lstm_610/while/lstm_cell_610/MatMul/ReadVariableOp?4lstm_610/while/lstm_cell_610/MatMul_1/ReadVariableOp?
@lstm_610/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_610/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_610_while_tensorarrayv2read_tensorlistgetitem_lstm_610_tensorarrayunstack_tensorlistfromtensor_0lstm_610_while_placeholderIlstm_610/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_610/while/lstm_cell_610/MatMul/ReadVariableOpReadVariableOp=lstm_610_while_lstm_cell_610_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_610/while/lstm_cell_610/MatMulMatMul9lstm_610/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_610/while/lstm_cell_610/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_610/while/lstm_cell_610/MatMul_1/ReadVariableOpReadVariableOp?lstm_610_while_lstm_cell_610_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_610/while/lstm_cell_610/MatMul_1MatMullstm_610_while_placeholder_2<lstm_610/while/lstm_cell_610/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_610/while/lstm_cell_610/addAddV2-lstm_610/while/lstm_cell_610/MatMul:product:0/lstm_610/while/lstm_cell_610/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_610/while/lstm_cell_610/BiasAdd/ReadVariableOpReadVariableOp>lstm_610_while_lstm_cell_610_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_610/while/lstm_cell_610/BiasAddBiasAdd$lstm_610/while/lstm_cell_610/add:z:0;lstm_610/while/lstm_cell_610/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_610/while/lstm_cell_610/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_610/while/lstm_cell_610/splitSplit5lstm_610/while/lstm_cell_610/split/split_dim:output:0-lstm_610/while/lstm_cell_610/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_610/while/lstm_cell_610/SigmoidSigmoid+lstm_610/while/lstm_cell_610/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_610/while/lstm_cell_610/Sigmoid_1Sigmoid+lstm_610/while/lstm_cell_610/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_610/while/lstm_cell_610/mulMul*lstm_610/while/lstm_cell_610/Sigmoid_1:y:0lstm_610_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_610/while/lstm_cell_610/ReluRelu+lstm_610/while/lstm_cell_610/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_610/while/lstm_cell_610/mul_1Mul(lstm_610/while/lstm_cell_610/Sigmoid:y:0/lstm_610/while/lstm_cell_610/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_610/while/lstm_cell_610/add_1AddV2$lstm_610/while/lstm_cell_610/mul:z:0&lstm_610/while/lstm_cell_610/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_610/while/lstm_cell_610/Sigmoid_2Sigmoid+lstm_610/while/lstm_cell_610/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_610/while/lstm_cell_610/Relu_1Relu&lstm_610/while/lstm_cell_610/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_610/while/lstm_cell_610/mul_2Mul*lstm_610/while/lstm_cell_610/Sigmoid_2:y:01lstm_610/while/lstm_cell_610/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_610/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_610_while_placeholder_1lstm_610_while_placeholder&lstm_610/while/lstm_cell_610/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_610/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_610/while/addAddV2lstm_610_while_placeholderlstm_610/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_610/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_610/while/add_1AddV2*lstm_610_while_lstm_610_while_loop_counterlstm_610/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_610/while/IdentityIdentitylstm_610/while/add_1:z:0^lstm_610/while/NoOp*
T0*
_output_shapes
: ?
lstm_610/while/Identity_1Identity0lstm_610_while_lstm_610_while_maximum_iterations^lstm_610/while/NoOp*
T0*
_output_shapes
: t
lstm_610/while/Identity_2Identitylstm_610/while/add:z:0^lstm_610/while/NoOp*
T0*
_output_shapes
: ?
lstm_610/while/Identity_3IdentityClstm_610/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_610/while/NoOp*
T0*
_output_shapes
: ?
lstm_610/while/Identity_4Identity&lstm_610/while/lstm_cell_610/mul_2:z:0^lstm_610/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_610/while/Identity_5Identity&lstm_610/while/lstm_cell_610/add_1:z:0^lstm_610/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_610/while/NoOpNoOp4^lstm_610/while/lstm_cell_610/BiasAdd/ReadVariableOp3^lstm_610/while/lstm_cell_610/MatMul/ReadVariableOp5^lstm_610/while/lstm_cell_610/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_610_while_identity lstm_610/while/Identity:output:0"?
lstm_610_while_identity_1"lstm_610/while/Identity_1:output:0"?
lstm_610_while_identity_2"lstm_610/while/Identity_2:output:0"?
lstm_610_while_identity_3"lstm_610/while/Identity_3:output:0"?
lstm_610_while_identity_4"lstm_610/while/Identity_4:output:0"?
lstm_610_while_identity_5"lstm_610/while/Identity_5:output:0"T
'lstm_610_while_lstm_610_strided_slice_1)lstm_610_while_lstm_610_strided_slice_1_0"~
<lstm_610_while_lstm_cell_610_biasadd_readvariableop_resource>lstm_610_while_lstm_cell_610_biasadd_readvariableop_resource_0"?
=lstm_610_while_lstm_cell_610_matmul_1_readvariableop_resource?lstm_610_while_lstm_cell_610_matmul_1_readvariableop_resource_0"|
;lstm_610_while_lstm_cell_610_matmul_readvariableop_resource=lstm_610_while_lstm_cell_610_matmul_readvariableop_resource_0"?
clstm_610_while_tensorarrayv2read_tensorlistgetitem_lstm_610_tensorarrayunstack_tensorlistfromtensorelstm_610_while_tensorarrayv2read_tensorlistgetitem_lstm_610_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_610/while/lstm_cell_610/BiasAdd/ReadVariableOp3lstm_610/while/lstm_cell_610/BiasAdd/ReadVariableOp2h
2lstm_610/while/lstm_cell_610/MatMul/ReadVariableOp2lstm_610/while/lstm_cell_610/MatMul/ReadVariableOp2l
4lstm_610/while/lstm_cell_610/MatMul_1/ReadVariableOp4lstm_610/while/lstm_cell_610/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_611_layer_call_and_return_conditional_losses_3970877

inputs>
,lstm_cell_611_matmul_readvariableop_resource:2(@
.lstm_cell_611_matmul_1_readvariableop_resource:
(;
-lstm_cell_611_biasadd_readvariableop_resource:(
identity??$lstm_cell_611/BiasAdd/ReadVariableOp?#lstm_cell_611/MatMul/ReadVariableOp?%lstm_cell_611/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_611/MatMul/ReadVariableOpReadVariableOp,lstm_cell_611_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_611/MatMulMatMulstrided_slice_2:output:0+lstm_cell_611/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_611/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_611_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_611/MatMul_1MatMulzeros:output:0-lstm_cell_611/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_611/addAddV2lstm_cell_611/MatMul:product:0 lstm_cell_611/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_611/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_611_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_611/BiasAddBiasAddlstm_cell_611/add:z:0,lstm_cell_611/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_611/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_611/splitSplit&lstm_cell_611/split/split_dim:output:0lstm_cell_611/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_611/SigmoidSigmoidlstm_cell_611/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_611/Sigmoid_1Sigmoidlstm_cell_611/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_611/mulMullstm_cell_611/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_611/ReluRelulstm_cell_611/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_611/mul_1Mullstm_cell_611/Sigmoid:y:0 lstm_cell_611/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_611/add_1AddV2lstm_cell_611/mul:z:0lstm_cell_611/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_611/Sigmoid_2Sigmoidlstm_cell_611/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_611/Relu_1Relulstm_cell_611/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_611/mul_2Mullstm_cell_611/Sigmoid_2:y:0"lstm_cell_611/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_611_matmul_readvariableop_resource.lstm_cell_611_matmul_1_readvariableop_resource-lstm_cell_611_biasadd_readvariableop_resource*
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
while_body_3970793*
condR
while_cond_3970792*K
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
NoOpNoOp%^lstm_cell_611/BiasAdd/ReadVariableOp$^lstm_cell_611/MatMul/ReadVariableOp&^lstm_cell_611/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_611/BiasAdd/ReadVariableOp$lstm_cell_611/BiasAdd/ReadVariableOp2J
#lstm_cell_611/MatMul/ReadVariableOp#lstm_cell_611/MatMul/ReadVariableOp2N
%lstm_cell_611/MatMul_1/ReadVariableOp%lstm_cell_611/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
while_cond_3970506
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3970506___redundant_placeholder05
1while_while_cond_3970506___redundant_placeholder15
1while_while_cond_3970506___redundant_placeholder25
1while_while_cond_3970506___redundant_placeholder3
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
/__inference_lstm_cell_610_layer_call_fn_3971011

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
J__inference_lstm_cell_610_layer_call_and_return_conditional_losses_3966278o
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
0__inference_sequential_203_layer_call_fn_3967410
lstm_609_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_609_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_203_layer_call_and_return_conditional_losses_3967385o
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
_user_specified_namelstm_609_input
?J
?
E__inference_lstm_611_layer_call_and_return_conditional_losses_3970734

inputs>
,lstm_cell_611_matmul_readvariableop_resource:2(@
.lstm_cell_611_matmul_1_readvariableop_resource:
(;
-lstm_cell_611_biasadd_readvariableop_resource:(
identity??$lstm_cell_611/BiasAdd/ReadVariableOp?#lstm_cell_611/MatMul/ReadVariableOp?%lstm_cell_611/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_611/MatMul/ReadVariableOpReadVariableOp,lstm_cell_611_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_611/MatMulMatMulstrided_slice_2:output:0+lstm_cell_611/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_611/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_611_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_611/MatMul_1MatMulzeros:output:0-lstm_cell_611/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_611/addAddV2lstm_cell_611/MatMul:product:0 lstm_cell_611/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_611/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_611_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_611/BiasAddBiasAddlstm_cell_611/add:z:0,lstm_cell_611/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_611/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_611/splitSplit&lstm_cell_611/split/split_dim:output:0lstm_cell_611/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_611/SigmoidSigmoidlstm_cell_611/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_611/Sigmoid_1Sigmoidlstm_cell_611/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_611/mulMullstm_cell_611/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_611/ReluRelulstm_cell_611/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_611/mul_1Mullstm_cell_611/Sigmoid:y:0 lstm_cell_611/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_611/add_1AddV2lstm_cell_611/mul:z:0lstm_cell_611/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_611/Sigmoid_2Sigmoidlstm_cell_611/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_611/Relu_1Relulstm_cell_611/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_611/mul_2Mullstm_cell_611/Sigmoid_2:y:0"lstm_cell_611/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_611_matmul_readvariableop_resource.lstm_cell_611_matmul_1_readvariableop_resource-lstm_cell_611_biasadd_readvariableop_resource*
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
while_body_3970650*
condR
while_cond_3970649*K
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
NoOpNoOp%^lstm_cell_611/BiasAdd/ReadVariableOp$^lstm_cell_611/MatMul/ReadVariableOp&^lstm_cell_611/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_611/BiasAdd/ReadVariableOp$lstm_cell_611/BiasAdd/ReadVariableOp2J
#lstm_cell_611/MatMul/ReadVariableOp#lstm_cell_611/MatMul/ReadVariableOp2N
%lstm_cell_611/MatMul_1/ReadVariableOp%lstm_cell_611/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_610_layer_call_and_return_conditional_losses_3971092

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
?
?
J__inference_lstm_cell_611_layer_call_and_return_conditional_losses_3971190

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
while_body_3965942
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_609_3965966_0:	?0
while_lstm_cell_609_3965968_0:	d?,
while_lstm_cell_609_3965970_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_609_3965966:	?.
while_lstm_cell_609_3965968:	d?*
while_lstm_cell_609_3965970:	???+while/lstm_cell_609/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_609/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_609_3965966_0while_lstm_cell_609_3965968_0while_lstm_cell_609_3965970_0*
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
J__inference_lstm_cell_609_layer_call_and_return_conditional_losses_3965928?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_609/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_609/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_609/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_609/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_609_3965966while_lstm_cell_609_3965966_0"<
while_lstm_cell_609_3965968while_lstm_cell_609_3965968_0"<
while_lstm_cell_609_3965970while_lstm_cell_609_3965970_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_609/StatefulPartitionedCall+while/lstm_cell_609/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
*sequential_203_lstm_610_while_cond_3965631L
Hsequential_203_lstm_610_while_sequential_203_lstm_610_while_loop_counterR
Nsequential_203_lstm_610_while_sequential_203_lstm_610_while_maximum_iterations-
)sequential_203_lstm_610_while_placeholder/
+sequential_203_lstm_610_while_placeholder_1/
+sequential_203_lstm_610_while_placeholder_2/
+sequential_203_lstm_610_while_placeholder_3N
Jsequential_203_lstm_610_while_less_sequential_203_lstm_610_strided_slice_1e
asequential_203_lstm_610_while_sequential_203_lstm_610_while_cond_3965631___redundant_placeholder0e
asequential_203_lstm_610_while_sequential_203_lstm_610_while_cond_3965631___redundant_placeholder1e
asequential_203_lstm_610_while_sequential_203_lstm_610_while_cond_3965631___redundant_placeholder2e
asequential_203_lstm_610_while_sequential_203_lstm_610_while_cond_3965631___redundant_placeholder3*
&sequential_203_lstm_610_while_identity
?
"sequential_203/lstm_610/while/LessLess)sequential_203_lstm_610_while_placeholderJsequential_203_lstm_610_while_less_sequential_203_lstm_610_strided_slice_1*
T0*
_output_shapes
: {
&sequential_203/lstm_610/while/IdentityIdentity&sequential_203/lstm_610/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_203_lstm_610_while_identity/sequential_203/lstm_610/while/Identity:output:0*(
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
J__inference_lstm_cell_611_layer_call_and_return_conditional_losses_3966628

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
while_cond_3970792
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3970792___redundant_placeholder05
1while_while_cond_3970792___redundant_placeholder15
1while_while_cond_3970792___redundant_placeholder25
1while_while_cond_3970792___redundant_placeholder3
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
/__inference_lstm_cell_610_layer_call_fn_3971028

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
J__inference_lstm_cell_610_layer_call_and_return_conditional_losses_3966424o
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
while_body_3970034
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_610_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_610_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_610_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_610_matmul_readvariableop_resource:	d?G
4while_lstm_cell_610_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_610_biasadd_readvariableop_resource:	???*while/lstm_cell_610/BiasAdd/ReadVariableOp?)while/lstm_cell_610/MatMul/ReadVariableOp?+while/lstm_cell_610/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_610/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_610_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_610/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_610/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_610/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_610_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_610/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_610/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_610/addAddV2$while/lstm_cell_610/MatMul:product:0&while/lstm_cell_610/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_610/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_610_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_610/BiasAddBiasAddwhile/lstm_cell_610/add:z:02while/lstm_cell_610/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_610/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_610/splitSplit,while/lstm_cell_610/split/split_dim:output:0$while/lstm_cell_610/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_610/SigmoidSigmoid"while/lstm_cell_610/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_610/Sigmoid_1Sigmoid"while/lstm_cell_610/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_610/mulMul!while/lstm_cell_610/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_610/ReluRelu"while/lstm_cell_610/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_610/mul_1Mulwhile/lstm_cell_610/Sigmoid:y:0&while/lstm_cell_610/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_610/add_1AddV2while/lstm_cell_610/mul:z:0while/lstm_cell_610/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_610/Sigmoid_2Sigmoid"while/lstm_cell_610/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_610/Relu_1Reluwhile/lstm_cell_610/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_610/mul_2Mul!while/lstm_cell_610/Sigmoid_2:y:0(while/lstm_cell_610/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_610/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_610/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_610/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_610/BiasAdd/ReadVariableOp*^while/lstm_cell_610/MatMul/ReadVariableOp,^while/lstm_cell_610/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_610_biasadd_readvariableop_resource5while_lstm_cell_610_biasadd_readvariableop_resource_0"n
4while_lstm_cell_610_matmul_1_readvariableop_resource6while_lstm_cell_610_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_610_matmul_readvariableop_resource4while_lstm_cell_610_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_610/BiasAdd/ReadVariableOp*while/lstm_cell_610/BiasAdd/ReadVariableOp2V
)while/lstm_cell_610/MatMul/ReadVariableOp)while/lstm_cell_610/MatMul/ReadVariableOp2Z
+while/lstm_cell_610/MatMul_1/ReadVariableOp+while/lstm_cell_610/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_3967822
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_609_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_609_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_609_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_609_matmul_readvariableop_resource:	?G
4while_lstm_cell_609_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_609_biasadd_readvariableop_resource:	???*while/lstm_cell_609/BiasAdd/ReadVariableOp?)while/lstm_cell_609/MatMul/ReadVariableOp?+while/lstm_cell_609/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_609/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_609_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_609/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_609/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_609/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_609_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_609/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_609/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_609/addAddV2$while/lstm_cell_609/MatMul:product:0&while/lstm_cell_609/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_609/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_609_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_609/BiasAddBiasAddwhile/lstm_cell_609/add:z:02while/lstm_cell_609/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_609/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_609/splitSplit,while/lstm_cell_609/split/split_dim:output:0$while/lstm_cell_609/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_609/SigmoidSigmoid"while/lstm_cell_609/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_609/Sigmoid_1Sigmoid"while/lstm_cell_609/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_609/mulMul!while/lstm_cell_609/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_609/ReluRelu"while/lstm_cell_609/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_609/mul_1Mulwhile/lstm_cell_609/Sigmoid:y:0&while/lstm_cell_609/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_609/add_1AddV2while/lstm_cell_609/mul:z:0while/lstm_cell_609/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_609/Sigmoid_2Sigmoid"while/lstm_cell_609/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_609/Relu_1Reluwhile/lstm_cell_609/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_609/mul_2Mul!while/lstm_cell_609/Sigmoid_2:y:0(while/lstm_cell_609/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_609/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_609/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_609/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_609/BiasAdd/ReadVariableOp*^while/lstm_cell_609/MatMul/ReadVariableOp,^while/lstm_cell_609/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_609_biasadd_readvariableop_resource5while_lstm_cell_609_biasadd_readvariableop_resource_0"n
4while_lstm_cell_609_matmul_1_readvariableop_resource6while_lstm_cell_609_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_609_matmul_readvariableop_resource4while_lstm_cell_609_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_609/BiasAdd/ReadVariableOp*while/lstm_cell_609/BiasAdd/ReadVariableOp2V
)while/lstm_cell_609/MatMul/ReadVariableOp)while/lstm_cell_609/MatMul/ReadVariableOp2Z
+while/lstm_cell_609/MatMul_1/ReadVariableOp+while/lstm_cell_609/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_611_layer_call_fn_3970283
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
E__inference_lstm_611_layer_call_and_return_conditional_losses_3966902o
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
while_cond_3967125
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3967125___redundant_placeholder05
1while_while_cond_3967125___redundant_placeholder15
1while_while_cond_3967125___redundant_placeholder25
1while_while_cond_3967125___redundant_placeholder3
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

lstm_610_while_body_3968800.
*lstm_610_while_lstm_610_while_loop_counter4
0lstm_610_while_lstm_610_while_maximum_iterations
lstm_610_while_placeholder 
lstm_610_while_placeholder_1 
lstm_610_while_placeholder_2 
lstm_610_while_placeholder_3-
)lstm_610_while_lstm_610_strided_slice_1_0i
elstm_610_while_tensorarrayv2read_tensorlistgetitem_lstm_610_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_610_while_lstm_cell_610_matmul_readvariableop_resource_0:	d?R
?lstm_610_while_lstm_cell_610_matmul_1_readvariableop_resource_0:	2?M
>lstm_610_while_lstm_cell_610_biasadd_readvariableop_resource_0:	?
lstm_610_while_identity
lstm_610_while_identity_1
lstm_610_while_identity_2
lstm_610_while_identity_3
lstm_610_while_identity_4
lstm_610_while_identity_5+
'lstm_610_while_lstm_610_strided_slice_1g
clstm_610_while_tensorarrayv2read_tensorlistgetitem_lstm_610_tensorarrayunstack_tensorlistfromtensorN
;lstm_610_while_lstm_cell_610_matmul_readvariableop_resource:	d?P
=lstm_610_while_lstm_cell_610_matmul_1_readvariableop_resource:	2?K
<lstm_610_while_lstm_cell_610_biasadd_readvariableop_resource:	???3lstm_610/while/lstm_cell_610/BiasAdd/ReadVariableOp?2lstm_610/while/lstm_cell_610/MatMul/ReadVariableOp?4lstm_610/while/lstm_cell_610/MatMul_1/ReadVariableOp?
@lstm_610/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_610/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_610_while_tensorarrayv2read_tensorlistgetitem_lstm_610_tensorarrayunstack_tensorlistfromtensor_0lstm_610_while_placeholderIlstm_610/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_610/while/lstm_cell_610/MatMul/ReadVariableOpReadVariableOp=lstm_610_while_lstm_cell_610_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_610/while/lstm_cell_610/MatMulMatMul9lstm_610/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_610/while/lstm_cell_610/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_610/while/lstm_cell_610/MatMul_1/ReadVariableOpReadVariableOp?lstm_610_while_lstm_cell_610_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_610/while/lstm_cell_610/MatMul_1MatMullstm_610_while_placeholder_2<lstm_610/while/lstm_cell_610/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_610/while/lstm_cell_610/addAddV2-lstm_610/while/lstm_cell_610/MatMul:product:0/lstm_610/while/lstm_cell_610/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_610/while/lstm_cell_610/BiasAdd/ReadVariableOpReadVariableOp>lstm_610_while_lstm_cell_610_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_610/while/lstm_cell_610/BiasAddBiasAdd$lstm_610/while/lstm_cell_610/add:z:0;lstm_610/while/lstm_cell_610/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_610/while/lstm_cell_610/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_610/while/lstm_cell_610/splitSplit5lstm_610/while/lstm_cell_610/split/split_dim:output:0-lstm_610/while/lstm_cell_610/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_610/while/lstm_cell_610/SigmoidSigmoid+lstm_610/while/lstm_cell_610/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_610/while/lstm_cell_610/Sigmoid_1Sigmoid+lstm_610/while/lstm_cell_610/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_610/while/lstm_cell_610/mulMul*lstm_610/while/lstm_cell_610/Sigmoid_1:y:0lstm_610_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_610/while/lstm_cell_610/ReluRelu+lstm_610/while/lstm_cell_610/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_610/while/lstm_cell_610/mul_1Mul(lstm_610/while/lstm_cell_610/Sigmoid:y:0/lstm_610/while/lstm_cell_610/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_610/while/lstm_cell_610/add_1AddV2$lstm_610/while/lstm_cell_610/mul:z:0&lstm_610/while/lstm_cell_610/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_610/while/lstm_cell_610/Sigmoid_2Sigmoid+lstm_610/while/lstm_cell_610/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_610/while/lstm_cell_610/Relu_1Relu&lstm_610/while/lstm_cell_610/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_610/while/lstm_cell_610/mul_2Mul*lstm_610/while/lstm_cell_610/Sigmoid_2:y:01lstm_610/while/lstm_cell_610/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_610/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_610_while_placeholder_1lstm_610_while_placeholder&lstm_610/while/lstm_cell_610/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_610/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_610/while/addAddV2lstm_610_while_placeholderlstm_610/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_610/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_610/while/add_1AddV2*lstm_610_while_lstm_610_while_loop_counterlstm_610/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_610/while/IdentityIdentitylstm_610/while/add_1:z:0^lstm_610/while/NoOp*
T0*
_output_shapes
: ?
lstm_610/while/Identity_1Identity0lstm_610_while_lstm_610_while_maximum_iterations^lstm_610/while/NoOp*
T0*
_output_shapes
: t
lstm_610/while/Identity_2Identitylstm_610/while/add:z:0^lstm_610/while/NoOp*
T0*
_output_shapes
: ?
lstm_610/while/Identity_3IdentityClstm_610/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_610/while/NoOp*
T0*
_output_shapes
: ?
lstm_610/while/Identity_4Identity&lstm_610/while/lstm_cell_610/mul_2:z:0^lstm_610/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_610/while/Identity_5Identity&lstm_610/while/lstm_cell_610/add_1:z:0^lstm_610/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_610/while/NoOpNoOp4^lstm_610/while/lstm_cell_610/BiasAdd/ReadVariableOp3^lstm_610/while/lstm_cell_610/MatMul/ReadVariableOp5^lstm_610/while/lstm_cell_610/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_610_while_identity lstm_610/while/Identity:output:0"?
lstm_610_while_identity_1"lstm_610/while/Identity_1:output:0"?
lstm_610_while_identity_2"lstm_610/while/Identity_2:output:0"?
lstm_610_while_identity_3"lstm_610/while/Identity_3:output:0"?
lstm_610_while_identity_4"lstm_610/while/Identity_4:output:0"?
lstm_610_while_identity_5"lstm_610/while/Identity_5:output:0"T
'lstm_610_while_lstm_610_strided_slice_1)lstm_610_while_lstm_610_strided_slice_1_0"~
<lstm_610_while_lstm_cell_610_biasadd_readvariableop_resource>lstm_610_while_lstm_cell_610_biasadd_readvariableop_resource_0"?
=lstm_610_while_lstm_cell_610_matmul_1_readvariableop_resource?lstm_610_while_lstm_cell_610_matmul_1_readvariableop_resource_0"|
;lstm_610_while_lstm_cell_610_matmul_readvariableop_resource=lstm_610_while_lstm_cell_610_matmul_readvariableop_resource_0"?
clstm_610_while_tensorarrayv2read_tensorlistgetitem_lstm_610_tensorarrayunstack_tensorlistfromtensorelstm_610_while_tensorarrayv2read_tensorlistgetitem_lstm_610_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_610/while/lstm_cell_610/BiasAdd/ReadVariableOp3lstm_610/while/lstm_cell_610/BiasAdd/ReadVariableOp2h
2lstm_610/while/lstm_cell_610/MatMul/ReadVariableOp2lstm_610/while/lstm_cell_610/MatMul/ReadVariableOp2l
4lstm_610/while/lstm_cell_610/MatMul_1/ReadVariableOp4lstm_610/while/lstm_cell_610/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_3969560
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3969560___redundant_placeholder05
1while_while_cond_3969560___redundant_placeholder15
1while_while_cond_3969560___redundant_placeholder25
1while_while_cond_3969560___redundant_placeholder3
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
?W
?
 __inference__traced_save_3971333
file_prefix/
+savev2_dense_203_kernel_read_readvariableop-
)savev2_dense_203_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_609_lstm_cell_609_kernel_read_readvariableopF
Bsavev2_lstm_609_lstm_cell_609_recurrent_kernel_read_readvariableop:
6savev2_lstm_609_lstm_cell_609_bias_read_readvariableop<
8savev2_lstm_610_lstm_cell_610_kernel_read_readvariableopF
Bsavev2_lstm_610_lstm_cell_610_recurrent_kernel_read_readvariableop:
6savev2_lstm_610_lstm_cell_610_bias_read_readvariableop<
8savev2_lstm_611_lstm_cell_611_kernel_read_readvariableopF
Bsavev2_lstm_611_lstm_cell_611_recurrent_kernel_read_readvariableop:
6savev2_lstm_611_lstm_cell_611_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop6
2savev2_adam_dense_203_kernel_m_read_readvariableop4
0savev2_adam_dense_203_bias_m_read_readvariableopC
?savev2_adam_lstm_609_lstm_cell_609_kernel_m_read_readvariableopM
Isavev2_adam_lstm_609_lstm_cell_609_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_609_lstm_cell_609_bias_m_read_readvariableopC
?savev2_adam_lstm_610_lstm_cell_610_kernel_m_read_readvariableopM
Isavev2_adam_lstm_610_lstm_cell_610_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_610_lstm_cell_610_bias_m_read_readvariableopC
?savev2_adam_lstm_611_lstm_cell_611_kernel_m_read_readvariableopM
Isavev2_adam_lstm_611_lstm_cell_611_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_611_lstm_cell_611_bias_m_read_readvariableop6
2savev2_adam_dense_203_kernel_v_read_readvariableop4
0savev2_adam_dense_203_bias_v_read_readvariableopC
?savev2_adam_lstm_609_lstm_cell_609_kernel_v_read_readvariableopM
Isavev2_adam_lstm_609_lstm_cell_609_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_609_lstm_cell_609_bias_v_read_readvariableopC
?savev2_adam_lstm_610_lstm_cell_610_kernel_v_read_readvariableopM
Isavev2_adam_lstm_610_lstm_cell_610_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_610_lstm_cell_610_bias_v_read_readvariableopC
?savev2_adam_lstm_611_lstm_cell_611_kernel_v_read_readvariableopM
Isavev2_adam_lstm_611_lstm_cell_611_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_611_lstm_cell_611_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_dense_203_kernel_read_readvariableop)savev2_dense_203_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_609_lstm_cell_609_kernel_read_readvariableopBsavev2_lstm_609_lstm_cell_609_recurrent_kernel_read_readvariableop6savev2_lstm_609_lstm_cell_609_bias_read_readvariableop8savev2_lstm_610_lstm_cell_610_kernel_read_readvariableopBsavev2_lstm_610_lstm_cell_610_recurrent_kernel_read_readvariableop6savev2_lstm_610_lstm_cell_610_bias_read_readvariableop8savev2_lstm_611_lstm_cell_611_kernel_read_readvariableopBsavev2_lstm_611_lstm_cell_611_recurrent_kernel_read_readvariableop6savev2_lstm_611_lstm_cell_611_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop2savev2_adam_dense_203_kernel_m_read_readvariableop0savev2_adam_dense_203_bias_m_read_readvariableop?savev2_adam_lstm_609_lstm_cell_609_kernel_m_read_readvariableopIsavev2_adam_lstm_609_lstm_cell_609_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_609_lstm_cell_609_bias_m_read_readvariableop?savev2_adam_lstm_610_lstm_cell_610_kernel_m_read_readvariableopIsavev2_adam_lstm_610_lstm_cell_610_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_610_lstm_cell_610_bias_m_read_readvariableop?savev2_adam_lstm_611_lstm_cell_611_kernel_m_read_readvariableopIsavev2_adam_lstm_611_lstm_cell_611_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_611_lstm_cell_611_bias_m_read_readvariableop2savev2_adam_dense_203_kernel_v_read_readvariableop0savev2_adam_dense_203_bias_v_read_readvariableop?savev2_adam_lstm_609_lstm_cell_609_kernel_v_read_readvariableopIsavev2_adam_lstm_609_lstm_cell_609_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_609_lstm_cell_609_bias_v_read_readvariableop?savev2_adam_lstm_610_lstm_cell_610_kernel_v_read_readvariableopIsavev2_adam_lstm_610_lstm_cell_610_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_610_lstm_cell_610_bias_v_read_readvariableop?savev2_adam_lstm_611_lstm_cell_611_kernel_v_read_readvariableopIsavev2_adam_lstm_611_lstm_cell_611_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_611_lstm_cell_611_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
?
?
while_cond_3967656
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3967656___redundant_placeholder05
1while_while_cond_3967656___redundant_placeholder15
1while_while_cond_3967656___redundant_placeholder25
1while_while_cond_3967656___redundant_placeholder3
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
E__inference_lstm_609_layer_call_and_return_conditional_losses_3969502

inputs?
,lstm_cell_609_matmul_readvariableop_resource:	?A
.lstm_cell_609_matmul_1_readvariableop_resource:	d?<
-lstm_cell_609_biasadd_readvariableop_resource:	?
identity??$lstm_cell_609/BiasAdd/ReadVariableOp?#lstm_cell_609/MatMul/ReadVariableOp?%lstm_cell_609/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_609/MatMul/ReadVariableOpReadVariableOp,lstm_cell_609_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_609/MatMulMatMulstrided_slice_2:output:0+lstm_cell_609/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_609/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_609_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_609/MatMul_1MatMulzeros:output:0-lstm_cell_609/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_609/addAddV2lstm_cell_609/MatMul:product:0 lstm_cell_609/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_609/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_609_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_609/BiasAddBiasAddlstm_cell_609/add:z:0,lstm_cell_609/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_609/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_609/splitSplit&lstm_cell_609/split/split_dim:output:0lstm_cell_609/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_609/SigmoidSigmoidlstm_cell_609/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_609/Sigmoid_1Sigmoidlstm_cell_609/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_609/mulMullstm_cell_609/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_609/ReluRelulstm_cell_609/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_609/mul_1Mullstm_cell_609/Sigmoid:y:0 lstm_cell_609/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_609/add_1AddV2lstm_cell_609/mul:z:0lstm_cell_609/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_609/Sigmoid_2Sigmoidlstm_cell_609/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_609/Relu_1Relulstm_cell_609/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_609/mul_2Mullstm_cell_609/Sigmoid_2:y:0"lstm_cell_609/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_609_matmul_readvariableop_resource.lstm_cell_609_matmul_1_readvariableop_resource-lstm_cell_609_biasadd_readvariableop_resource*
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
while_body_3969418*
condR
while_cond_3969417*K
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
NoOpNoOp%^lstm_cell_609/BiasAdd/ReadVariableOp$^lstm_cell_609/MatMul/ReadVariableOp&^lstm_cell_609/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_609/BiasAdd/ReadVariableOp$lstm_cell_609/BiasAdd/ReadVariableOp2J
#lstm_cell_609/MatMul/ReadVariableOp#lstm_cell_609/MatMul/ReadVariableOp2N
%lstm_cell_609/MatMul_1/ReadVariableOp%lstm_cell_609/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?C
?

lstm_611_while_body_3968512.
*lstm_611_while_lstm_611_while_loop_counter4
0lstm_611_while_lstm_611_while_maximum_iterations
lstm_611_while_placeholder 
lstm_611_while_placeholder_1 
lstm_611_while_placeholder_2 
lstm_611_while_placeholder_3-
)lstm_611_while_lstm_611_strided_slice_1_0i
elstm_611_while_tensorarrayv2read_tensorlistgetitem_lstm_611_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_611_while_lstm_cell_611_matmul_readvariableop_resource_0:2(Q
?lstm_611_while_lstm_cell_611_matmul_1_readvariableop_resource_0:
(L
>lstm_611_while_lstm_cell_611_biasadd_readvariableop_resource_0:(
lstm_611_while_identity
lstm_611_while_identity_1
lstm_611_while_identity_2
lstm_611_while_identity_3
lstm_611_while_identity_4
lstm_611_while_identity_5+
'lstm_611_while_lstm_611_strided_slice_1g
clstm_611_while_tensorarrayv2read_tensorlistgetitem_lstm_611_tensorarrayunstack_tensorlistfromtensorM
;lstm_611_while_lstm_cell_611_matmul_readvariableop_resource:2(O
=lstm_611_while_lstm_cell_611_matmul_1_readvariableop_resource:
(J
<lstm_611_while_lstm_cell_611_biasadd_readvariableop_resource:(??3lstm_611/while/lstm_cell_611/BiasAdd/ReadVariableOp?2lstm_611/while/lstm_cell_611/MatMul/ReadVariableOp?4lstm_611/while/lstm_cell_611/MatMul_1/ReadVariableOp?
@lstm_611/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_611/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_611_while_tensorarrayv2read_tensorlistgetitem_lstm_611_tensorarrayunstack_tensorlistfromtensor_0lstm_611_while_placeholderIlstm_611/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_611/while/lstm_cell_611/MatMul/ReadVariableOpReadVariableOp=lstm_611_while_lstm_cell_611_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_611/while/lstm_cell_611/MatMulMatMul9lstm_611/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_611/while/lstm_cell_611/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_611/while/lstm_cell_611/MatMul_1/ReadVariableOpReadVariableOp?lstm_611_while_lstm_cell_611_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_611/while/lstm_cell_611/MatMul_1MatMullstm_611_while_placeholder_2<lstm_611/while/lstm_cell_611/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_611/while/lstm_cell_611/addAddV2-lstm_611/while/lstm_cell_611/MatMul:product:0/lstm_611/while/lstm_cell_611/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_611/while/lstm_cell_611/BiasAdd/ReadVariableOpReadVariableOp>lstm_611_while_lstm_cell_611_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_611/while/lstm_cell_611/BiasAddBiasAdd$lstm_611/while/lstm_cell_611/add:z:0;lstm_611/while/lstm_cell_611/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_611/while/lstm_cell_611/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_611/while/lstm_cell_611/splitSplit5lstm_611/while/lstm_cell_611/split/split_dim:output:0-lstm_611/while/lstm_cell_611/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_611/while/lstm_cell_611/SigmoidSigmoid+lstm_611/while/lstm_cell_611/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_611/while/lstm_cell_611/Sigmoid_1Sigmoid+lstm_611/while/lstm_cell_611/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_611/while/lstm_cell_611/mulMul*lstm_611/while/lstm_cell_611/Sigmoid_1:y:0lstm_611_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_611/while/lstm_cell_611/ReluRelu+lstm_611/while/lstm_cell_611/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_611/while/lstm_cell_611/mul_1Mul(lstm_611/while/lstm_cell_611/Sigmoid:y:0/lstm_611/while/lstm_cell_611/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_611/while/lstm_cell_611/add_1AddV2$lstm_611/while/lstm_cell_611/mul:z:0&lstm_611/while/lstm_cell_611/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_611/while/lstm_cell_611/Sigmoid_2Sigmoid+lstm_611/while/lstm_cell_611/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_611/while/lstm_cell_611/Relu_1Relu&lstm_611/while/lstm_cell_611/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_611/while/lstm_cell_611/mul_2Mul*lstm_611/while/lstm_cell_611/Sigmoid_2:y:01lstm_611/while/lstm_cell_611/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_611/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_611_while_placeholder_1lstm_611_while_placeholder&lstm_611/while/lstm_cell_611/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_611/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_611/while/addAddV2lstm_611_while_placeholderlstm_611/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_611/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_611/while/add_1AddV2*lstm_611_while_lstm_611_while_loop_counterlstm_611/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_611/while/IdentityIdentitylstm_611/while/add_1:z:0^lstm_611/while/NoOp*
T0*
_output_shapes
: ?
lstm_611/while/Identity_1Identity0lstm_611_while_lstm_611_while_maximum_iterations^lstm_611/while/NoOp*
T0*
_output_shapes
: t
lstm_611/while/Identity_2Identitylstm_611/while/add:z:0^lstm_611/while/NoOp*
T0*
_output_shapes
: ?
lstm_611/while/Identity_3IdentityClstm_611/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_611/while/NoOp*
T0*
_output_shapes
: ?
lstm_611/while/Identity_4Identity&lstm_611/while/lstm_cell_611/mul_2:z:0^lstm_611/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_611/while/Identity_5Identity&lstm_611/while/lstm_cell_611/add_1:z:0^lstm_611/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_611/while/NoOpNoOp4^lstm_611/while/lstm_cell_611/BiasAdd/ReadVariableOp3^lstm_611/while/lstm_cell_611/MatMul/ReadVariableOp5^lstm_611/while/lstm_cell_611/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_611_while_identity lstm_611/while/Identity:output:0"?
lstm_611_while_identity_1"lstm_611/while/Identity_1:output:0"?
lstm_611_while_identity_2"lstm_611/while/Identity_2:output:0"?
lstm_611_while_identity_3"lstm_611/while/Identity_3:output:0"?
lstm_611_while_identity_4"lstm_611/while/Identity_4:output:0"?
lstm_611_while_identity_5"lstm_611/while/Identity_5:output:0"T
'lstm_611_while_lstm_611_strided_slice_1)lstm_611_while_lstm_611_strided_slice_1_0"~
<lstm_611_while_lstm_cell_611_biasadd_readvariableop_resource>lstm_611_while_lstm_cell_611_biasadd_readvariableop_resource_0"?
=lstm_611_while_lstm_cell_611_matmul_1_readvariableop_resource?lstm_611_while_lstm_cell_611_matmul_1_readvariableop_resource_0"|
;lstm_611_while_lstm_cell_611_matmul_readvariableop_resource=lstm_611_while_lstm_cell_611_matmul_readvariableop_resource_0"?
clstm_611_while_tensorarrayv2read_tensorlistgetitem_lstm_611_tensorarrayunstack_tensorlistfromtensorelstm_611_while_tensorarrayv2read_tensorlistgetitem_lstm_611_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_611/while/lstm_cell_611/BiasAdd/ReadVariableOp3lstm_611/while/lstm_cell_611/BiasAdd/ReadVariableOp2h
2lstm_611/while/lstm_cell_611/MatMul/ReadVariableOp2lstm_611/while/lstm_cell_611/MatMul/ReadVariableOp2l
4lstm_611/while/lstm_cell_611/MatMul_1/ReadVariableOp4lstm_611/while/lstm_cell_611/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_610_layer_call_and_return_conditional_losses_3966278

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
while_cond_3970363
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3970363___redundant_placeholder05
1while_while_cond_3970363___redundant_placeholder15
1while_while_cond_3970363___redundant_placeholder25
1while_while_cond_3970363___redundant_placeholder3
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
*sequential_203_lstm_609_while_body_3965493L
Hsequential_203_lstm_609_while_sequential_203_lstm_609_while_loop_counterR
Nsequential_203_lstm_609_while_sequential_203_lstm_609_while_maximum_iterations-
)sequential_203_lstm_609_while_placeholder/
+sequential_203_lstm_609_while_placeholder_1/
+sequential_203_lstm_609_while_placeholder_2/
+sequential_203_lstm_609_while_placeholder_3K
Gsequential_203_lstm_609_while_sequential_203_lstm_609_strided_slice_1_0?
?sequential_203_lstm_609_while_tensorarrayv2read_tensorlistgetitem_sequential_203_lstm_609_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_203_lstm_609_while_lstm_cell_609_matmul_readvariableop_resource_0:	?a
Nsequential_203_lstm_609_while_lstm_cell_609_matmul_1_readvariableop_resource_0:	d?\
Msequential_203_lstm_609_while_lstm_cell_609_biasadd_readvariableop_resource_0:	?*
&sequential_203_lstm_609_while_identity,
(sequential_203_lstm_609_while_identity_1,
(sequential_203_lstm_609_while_identity_2,
(sequential_203_lstm_609_while_identity_3,
(sequential_203_lstm_609_while_identity_4,
(sequential_203_lstm_609_while_identity_5I
Esequential_203_lstm_609_while_sequential_203_lstm_609_strided_slice_1?
?sequential_203_lstm_609_while_tensorarrayv2read_tensorlistgetitem_sequential_203_lstm_609_tensorarrayunstack_tensorlistfromtensor]
Jsequential_203_lstm_609_while_lstm_cell_609_matmul_readvariableop_resource:	?_
Lsequential_203_lstm_609_while_lstm_cell_609_matmul_1_readvariableop_resource:	d?Z
Ksequential_203_lstm_609_while_lstm_cell_609_biasadd_readvariableop_resource:	???Bsequential_203/lstm_609/while/lstm_cell_609/BiasAdd/ReadVariableOp?Asequential_203/lstm_609/while/lstm_cell_609/MatMul/ReadVariableOp?Csequential_203/lstm_609/while/lstm_cell_609/MatMul_1/ReadVariableOp?
Osequential_203/lstm_609/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
Asequential_203/lstm_609/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_203_lstm_609_while_tensorarrayv2read_tensorlistgetitem_sequential_203_lstm_609_tensorarrayunstack_tensorlistfromtensor_0)sequential_203_lstm_609_while_placeholderXsequential_203/lstm_609/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
Asequential_203/lstm_609/while/lstm_cell_609/MatMul/ReadVariableOpReadVariableOpLsequential_203_lstm_609_while_lstm_cell_609_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
2sequential_203/lstm_609/while/lstm_cell_609/MatMulMatMulHsequential_203/lstm_609/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_203/lstm_609/while/lstm_cell_609/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_203/lstm_609/while/lstm_cell_609/MatMul_1/ReadVariableOpReadVariableOpNsequential_203_lstm_609_while_lstm_cell_609_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
4sequential_203/lstm_609/while/lstm_cell_609/MatMul_1MatMul+sequential_203_lstm_609_while_placeholder_2Ksequential_203/lstm_609/while/lstm_cell_609/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_203/lstm_609/while/lstm_cell_609/addAddV2<sequential_203/lstm_609/while/lstm_cell_609/MatMul:product:0>sequential_203/lstm_609/while/lstm_cell_609/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_203/lstm_609/while/lstm_cell_609/BiasAdd/ReadVariableOpReadVariableOpMsequential_203_lstm_609_while_lstm_cell_609_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_203/lstm_609/while/lstm_cell_609/BiasAddBiasAdd3sequential_203/lstm_609/while/lstm_cell_609/add:z:0Jsequential_203/lstm_609/while/lstm_cell_609/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_203/lstm_609/while/lstm_cell_609/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_203/lstm_609/while/lstm_cell_609/splitSplitDsequential_203/lstm_609/while/lstm_cell_609/split/split_dim:output:0<sequential_203/lstm_609/while/lstm_cell_609/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
3sequential_203/lstm_609/while/lstm_cell_609/SigmoidSigmoid:sequential_203/lstm_609/while/lstm_cell_609/split:output:0*
T0*'
_output_shapes
:?????????d?
5sequential_203/lstm_609/while/lstm_cell_609/Sigmoid_1Sigmoid:sequential_203/lstm_609/while/lstm_cell_609/split:output:1*
T0*'
_output_shapes
:?????????d?
/sequential_203/lstm_609/while/lstm_cell_609/mulMul9sequential_203/lstm_609/while/lstm_cell_609/Sigmoid_1:y:0+sequential_203_lstm_609_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
0sequential_203/lstm_609/while/lstm_cell_609/ReluRelu:sequential_203/lstm_609/while/lstm_cell_609/split:output:2*
T0*'
_output_shapes
:?????????d?
1sequential_203/lstm_609/while/lstm_cell_609/mul_1Mul7sequential_203/lstm_609/while/lstm_cell_609/Sigmoid:y:0>sequential_203/lstm_609/while/lstm_cell_609/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
1sequential_203/lstm_609/while/lstm_cell_609/add_1AddV23sequential_203/lstm_609/while/lstm_cell_609/mul:z:05sequential_203/lstm_609/while/lstm_cell_609/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
5sequential_203/lstm_609/while/lstm_cell_609/Sigmoid_2Sigmoid:sequential_203/lstm_609/while/lstm_cell_609/split:output:3*
T0*'
_output_shapes
:?????????d?
2sequential_203/lstm_609/while/lstm_cell_609/Relu_1Relu5sequential_203/lstm_609/while/lstm_cell_609/add_1:z:0*
T0*'
_output_shapes
:?????????d?
1sequential_203/lstm_609/while/lstm_cell_609/mul_2Mul9sequential_203/lstm_609/while/lstm_cell_609/Sigmoid_2:y:0@sequential_203/lstm_609/while/lstm_cell_609/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
Bsequential_203/lstm_609/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_203_lstm_609_while_placeholder_1)sequential_203_lstm_609_while_placeholder5sequential_203/lstm_609/while/lstm_cell_609/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_203/lstm_609/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_203/lstm_609/while/addAddV2)sequential_203_lstm_609_while_placeholder,sequential_203/lstm_609/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_203/lstm_609/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_203/lstm_609/while/add_1AddV2Hsequential_203_lstm_609_while_sequential_203_lstm_609_while_loop_counter.sequential_203/lstm_609/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_203/lstm_609/while/IdentityIdentity'sequential_203/lstm_609/while/add_1:z:0#^sequential_203/lstm_609/while/NoOp*
T0*
_output_shapes
: ?
(sequential_203/lstm_609/while/Identity_1IdentityNsequential_203_lstm_609_while_sequential_203_lstm_609_while_maximum_iterations#^sequential_203/lstm_609/while/NoOp*
T0*
_output_shapes
: ?
(sequential_203/lstm_609/while/Identity_2Identity%sequential_203/lstm_609/while/add:z:0#^sequential_203/lstm_609/while/NoOp*
T0*
_output_shapes
: ?
(sequential_203/lstm_609/while/Identity_3IdentityRsequential_203/lstm_609/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_203/lstm_609/while/NoOp*
T0*
_output_shapes
: ?
(sequential_203/lstm_609/while/Identity_4Identity5sequential_203/lstm_609/while/lstm_cell_609/mul_2:z:0#^sequential_203/lstm_609/while/NoOp*
T0*'
_output_shapes
:?????????d?
(sequential_203/lstm_609/while/Identity_5Identity5sequential_203/lstm_609/while/lstm_cell_609/add_1:z:0#^sequential_203/lstm_609/while/NoOp*
T0*'
_output_shapes
:?????????d?
"sequential_203/lstm_609/while/NoOpNoOpC^sequential_203/lstm_609/while/lstm_cell_609/BiasAdd/ReadVariableOpB^sequential_203/lstm_609/while/lstm_cell_609/MatMul/ReadVariableOpD^sequential_203/lstm_609/while/lstm_cell_609/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_203_lstm_609_while_identity/sequential_203/lstm_609/while/Identity:output:0"]
(sequential_203_lstm_609_while_identity_11sequential_203/lstm_609/while/Identity_1:output:0"]
(sequential_203_lstm_609_while_identity_21sequential_203/lstm_609/while/Identity_2:output:0"]
(sequential_203_lstm_609_while_identity_31sequential_203/lstm_609/while/Identity_3:output:0"]
(sequential_203_lstm_609_while_identity_41sequential_203/lstm_609/while/Identity_4:output:0"]
(sequential_203_lstm_609_while_identity_51sequential_203/lstm_609/while/Identity_5:output:0"?
Ksequential_203_lstm_609_while_lstm_cell_609_biasadd_readvariableop_resourceMsequential_203_lstm_609_while_lstm_cell_609_biasadd_readvariableop_resource_0"?
Lsequential_203_lstm_609_while_lstm_cell_609_matmul_1_readvariableop_resourceNsequential_203_lstm_609_while_lstm_cell_609_matmul_1_readvariableop_resource_0"?
Jsequential_203_lstm_609_while_lstm_cell_609_matmul_readvariableop_resourceLsequential_203_lstm_609_while_lstm_cell_609_matmul_readvariableop_resource_0"?
Esequential_203_lstm_609_while_sequential_203_lstm_609_strided_slice_1Gsequential_203_lstm_609_while_sequential_203_lstm_609_strided_slice_1_0"?
?sequential_203_lstm_609_while_tensorarrayv2read_tensorlistgetitem_sequential_203_lstm_609_tensorarrayunstack_tensorlistfromtensor?sequential_203_lstm_609_while_tensorarrayv2read_tensorlistgetitem_sequential_203_lstm_609_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2?
Bsequential_203/lstm_609/while/lstm_cell_609/BiasAdd/ReadVariableOpBsequential_203/lstm_609/while/lstm_cell_609/BiasAdd/ReadVariableOp2?
Asequential_203/lstm_609/while/lstm_cell_609/MatMul/ReadVariableOpAsequential_203/lstm_609/while/lstm_cell_609/MatMul/ReadVariableOp2?
Csequential_203/lstm_609/while/lstm_cell_609/MatMul_1/ReadVariableOpCsequential_203/lstm_609/while/lstm_cell_609/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_610_while_cond_3968372.
*lstm_610_while_lstm_610_while_loop_counter4
0lstm_610_while_lstm_610_while_maximum_iterations
lstm_610_while_placeholder 
lstm_610_while_placeholder_1 
lstm_610_while_placeholder_2 
lstm_610_while_placeholder_30
,lstm_610_while_less_lstm_610_strided_slice_1G
Clstm_610_while_lstm_610_while_cond_3968372___redundant_placeholder0G
Clstm_610_while_lstm_610_while_cond_3968372___redundant_placeholder1G
Clstm_610_while_lstm_610_while_cond_3968372___redundant_placeholder2G
Clstm_610_while_lstm_610_while_cond_3968372___redundant_placeholder3
lstm_610_while_identity
?
lstm_610/while/LessLesslstm_610_while_placeholder,lstm_610_while_less_lstm_610_strided_slice_1*
T0*
_output_shapes
: ]
lstm_610/while/IdentityIdentitylstm_610/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_610_while_identity lstm_610/while/Identity:output:0*(
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
lstm_609_while_cond_3968233.
*lstm_609_while_lstm_609_while_loop_counter4
0lstm_609_while_lstm_609_while_maximum_iterations
lstm_609_while_placeholder 
lstm_609_while_placeholder_1 
lstm_609_while_placeholder_2 
lstm_609_while_placeholder_30
,lstm_609_while_less_lstm_609_strided_slice_1G
Clstm_609_while_lstm_609_while_cond_3968233___redundant_placeholder0G
Clstm_609_while_lstm_609_while_cond_3968233___redundant_placeholder1G
Clstm_609_while_lstm_609_while_cond_3968233___redundant_placeholder2G
Clstm_609_while_lstm_609_while_cond_3968233___redundant_placeholder3
lstm_609_while_identity
?
lstm_609/while/LessLesslstm_609_while_placeholder,lstm_609_while_less_lstm_609_strided_slice_1*
T0*
_output_shapes
: ]
lstm_609/while/IdentityIdentitylstm_609/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_609_while_identity lstm_609/while/Identity:output:0*(
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
J__inference_lstm_cell_610_layer_call_and_return_conditional_losses_3966424

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
E__inference_lstm_610_layer_call_and_return_conditional_losses_3967741

inputs?
,lstm_cell_610_matmul_readvariableop_resource:	d?A
.lstm_cell_610_matmul_1_readvariableop_resource:	2?<
-lstm_cell_610_biasadd_readvariableop_resource:	?
identity??$lstm_cell_610/BiasAdd/ReadVariableOp?#lstm_cell_610/MatMul/ReadVariableOp?%lstm_cell_610/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_610/MatMul/ReadVariableOpReadVariableOp,lstm_cell_610_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_610/MatMulMatMulstrided_slice_2:output:0+lstm_cell_610/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_610/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_610_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_610/MatMul_1MatMulzeros:output:0-lstm_cell_610/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_610/addAddV2lstm_cell_610/MatMul:product:0 lstm_cell_610/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_610/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_610_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_610/BiasAddBiasAddlstm_cell_610/add:z:0,lstm_cell_610/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_610/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_610/splitSplit&lstm_cell_610/split/split_dim:output:0lstm_cell_610/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_610/SigmoidSigmoidlstm_cell_610/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_610/Sigmoid_1Sigmoidlstm_cell_610/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_610/mulMullstm_cell_610/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_610/ReluRelulstm_cell_610/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_610/mul_1Mullstm_cell_610/Sigmoid:y:0 lstm_cell_610/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_610/add_1AddV2lstm_cell_610/mul:z:0lstm_cell_610/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_610/Sigmoid_2Sigmoidlstm_cell_610/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_610/Relu_1Relulstm_cell_610/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_610/mul_2Mullstm_cell_610/Sigmoid_2:y:0"lstm_cell_610/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_610_matmul_readvariableop_resource.lstm_cell_610_matmul_1_readvariableop_resource-lstm_cell_610_biasadd_readvariableop_resource*
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
while_body_3967657*
condR
while_cond_3967656*K
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
NoOpNoOp%^lstm_cell_610/BiasAdd/ReadVariableOp$^lstm_cell_610/MatMul/ReadVariableOp&^lstm_cell_610/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_610/BiasAdd/ReadVariableOp$lstm_cell_610/BiasAdd/ReadVariableOp2J
#lstm_cell_610/MatMul/ReadVariableOp#lstm_cell_610/MatMul/ReadVariableOp2N
%lstm_cell_610/MatMul_1/ReadVariableOp%lstm_cell_610/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?8
?
while_body_3966976
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_609_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_609_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_609_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_609_matmul_readvariableop_resource:	?G
4while_lstm_cell_609_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_609_biasadd_readvariableop_resource:	???*while/lstm_cell_609/BiasAdd/ReadVariableOp?)while/lstm_cell_609/MatMul/ReadVariableOp?+while/lstm_cell_609/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_609/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_609_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_609/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_609/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_609/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_609_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_609/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_609/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_609/addAddV2$while/lstm_cell_609/MatMul:product:0&while/lstm_cell_609/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_609/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_609_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_609/BiasAddBiasAddwhile/lstm_cell_609/add:z:02while/lstm_cell_609/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_609/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_609/splitSplit,while/lstm_cell_609/split/split_dim:output:0$while/lstm_cell_609/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_609/SigmoidSigmoid"while/lstm_cell_609/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_609/Sigmoid_1Sigmoid"while/lstm_cell_609/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_609/mulMul!while/lstm_cell_609/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_609/ReluRelu"while/lstm_cell_609/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_609/mul_1Mulwhile/lstm_cell_609/Sigmoid:y:0&while/lstm_cell_609/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_609/add_1AddV2while/lstm_cell_609/mul:z:0while/lstm_cell_609/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_609/Sigmoid_2Sigmoid"while/lstm_cell_609/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_609/Relu_1Reluwhile/lstm_cell_609/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_609/mul_2Mul!while/lstm_cell_609/Sigmoid_2:y:0(while/lstm_cell_609/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_609/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_609/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_609/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_609/BiasAdd/ReadVariableOp*^while/lstm_cell_609/MatMul/ReadVariableOp,^while/lstm_cell_609/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_609_biasadd_readvariableop_resource5while_lstm_cell_609_biasadd_readvariableop_resource_0"n
4while_lstm_cell_609_matmul_1_readvariableop_resource6while_lstm_cell_609_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_609_matmul_readvariableop_resource4while_lstm_cell_609_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_609/BiasAdd/ReadVariableOp*while/lstm_cell_609/BiasAdd/ReadVariableOp2V
)while/lstm_cell_609/MatMul/ReadVariableOp)while/lstm_cell_609/MatMul/ReadVariableOp2Z
+while/lstm_cell_609/MatMul_1/ReadVariableOp+while/lstm_cell_609/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_610_layer_call_and_return_conditional_losses_3966361

inputs(
lstm_cell_610_3966279:	d?(
lstm_cell_610_3966281:	2?$
lstm_cell_610_3966283:	?
identity??%lstm_cell_610/StatefulPartitionedCall?while;
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
%lstm_cell_610/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_610_3966279lstm_cell_610_3966281lstm_cell_610_3966283*
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
J__inference_lstm_cell_610_layer_call_and_return_conditional_losses_3966278n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_610_3966279lstm_cell_610_3966281lstm_cell_610_3966283*
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
while_body_3966292*
condR
while_cond_3966291*K
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
NoOpNoOp&^lstm_cell_610/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_610/StatefulPartitionedCall%lstm_cell_610/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?K
?
E__inference_lstm_609_layer_call_and_return_conditional_losses_3969216
inputs_0?
,lstm_cell_609_matmul_readvariableop_resource:	?A
.lstm_cell_609_matmul_1_readvariableop_resource:	d?<
-lstm_cell_609_biasadd_readvariableop_resource:	?
identity??$lstm_cell_609/BiasAdd/ReadVariableOp?#lstm_cell_609/MatMul/ReadVariableOp?%lstm_cell_609/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_609/MatMul/ReadVariableOpReadVariableOp,lstm_cell_609_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_609/MatMulMatMulstrided_slice_2:output:0+lstm_cell_609/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_609/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_609_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_609/MatMul_1MatMulzeros:output:0-lstm_cell_609/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_609/addAddV2lstm_cell_609/MatMul:product:0 lstm_cell_609/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_609/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_609_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_609/BiasAddBiasAddlstm_cell_609/add:z:0,lstm_cell_609/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_609/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_609/splitSplit&lstm_cell_609/split/split_dim:output:0lstm_cell_609/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_609/SigmoidSigmoidlstm_cell_609/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_609/Sigmoid_1Sigmoidlstm_cell_609/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_609/mulMullstm_cell_609/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_609/ReluRelulstm_cell_609/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_609/mul_1Mullstm_cell_609/Sigmoid:y:0 lstm_cell_609/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_609/add_1AddV2lstm_cell_609/mul:z:0lstm_cell_609/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_609/Sigmoid_2Sigmoidlstm_cell_609/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_609/Relu_1Relulstm_cell_609/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_609/mul_2Mullstm_cell_609/Sigmoid_2:y:0"lstm_cell_609/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_609_matmul_readvariableop_resource.lstm_cell_609_matmul_1_readvariableop_resource-lstm_cell_609_biasadd_readvariableop_resource*
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
while_body_3969132*
condR
while_cond_3969131*K
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
NoOpNoOp%^lstm_cell_609/BiasAdd/ReadVariableOp$^lstm_cell_609/MatMul/ReadVariableOp&^lstm_cell_609/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_609/BiasAdd/ReadVariableOp$lstm_cell_609/BiasAdd/ReadVariableOp2J
#lstm_cell_609/MatMul/ReadVariableOp#lstm_cell_609/MatMul/ReadVariableOp2N
%lstm_cell_609/MatMul_1/ReadVariableOp%lstm_cell_609/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
while_cond_3966291
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3966291___redundant_placeholder05
1while_while_cond_3966291___redundant_placeholder15
1while_while_cond_3966291___redundant_placeholder25
1while_while_cond_3966291___redundant_placeholder3
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
while_cond_3969131
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3969131___redundant_placeholder05
1while_while_cond_3969131___redundant_placeholder15
1while_while_cond_3969131___redundant_placeholder25
1while_while_cond_3969131___redundant_placeholder3
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
J__inference_lstm_cell_611_layer_call_and_return_conditional_losses_3966774

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
J__inference_lstm_cell_609_layer_call_and_return_conditional_losses_3970962

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
while_cond_3966641
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3966641___redundant_placeholder05
1while_while_cond_3966641___redundant_placeholder15
1while_while_cond_3966641___redundant_placeholder25
1while_while_cond_3966641___redundant_placeholder3
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
+__inference_dense_203_layer_call_fn_3970886

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
F__inference_dense_203_layer_call_and_return_conditional_losses_3967378o
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
0__inference_sequential_203_layer_call_fn_3968175

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
K__inference_sequential_203_layer_call_and_return_conditional_losses_3967974o
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

?
0__inference_sequential_203_layer_call_fn_3968148

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
K__inference_sequential_203_layer_call_and_return_conditional_losses_3967385o
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
E__inference_lstm_610_layer_call_and_return_conditional_losses_3969975
inputs_0?
,lstm_cell_610_matmul_readvariableop_resource:	d?A
.lstm_cell_610_matmul_1_readvariableop_resource:	2?<
-lstm_cell_610_biasadd_readvariableop_resource:	?
identity??$lstm_cell_610/BiasAdd/ReadVariableOp?#lstm_cell_610/MatMul/ReadVariableOp?%lstm_cell_610/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_610/MatMul/ReadVariableOpReadVariableOp,lstm_cell_610_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_610/MatMulMatMulstrided_slice_2:output:0+lstm_cell_610/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_610/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_610_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_610/MatMul_1MatMulzeros:output:0-lstm_cell_610/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_610/addAddV2lstm_cell_610/MatMul:product:0 lstm_cell_610/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_610/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_610_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_610/BiasAddBiasAddlstm_cell_610/add:z:0,lstm_cell_610/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_610/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_610/splitSplit&lstm_cell_610/split/split_dim:output:0lstm_cell_610/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_610/SigmoidSigmoidlstm_cell_610/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_610/Sigmoid_1Sigmoidlstm_cell_610/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_610/mulMullstm_cell_610/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_610/ReluRelulstm_cell_610/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_610/mul_1Mullstm_cell_610/Sigmoid:y:0 lstm_cell_610/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_610/add_1AddV2lstm_cell_610/mul:z:0lstm_cell_610/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_610/Sigmoid_2Sigmoidlstm_cell_610/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_610/Relu_1Relulstm_cell_610/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_610/mul_2Mullstm_cell_610/Sigmoid_2:y:0"lstm_cell_610/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_610_matmul_readvariableop_resource.lstm_cell_610_matmul_1_readvariableop_resource-lstm_cell_610_biasadd_readvariableop_resource*
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
while_body_3969891*
condR
while_cond_3969890*K
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
NoOpNoOp%^lstm_cell_610/BiasAdd/ReadVariableOp$^lstm_cell_610/MatMul/ReadVariableOp&^lstm_cell_610/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_610/BiasAdd/ReadVariableOp$lstm_cell_610/BiasAdd/ReadVariableOp2J
#lstm_cell_610/MatMul/ReadVariableOp#lstm_cell_610/MatMul/ReadVariableOp2N
%lstm_cell_610/MatMul_1/ReadVariableOp%lstm_cell_610/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
M
lstm_609_input;
 serving_default_lstm_609_input:0?????????=
	dense_2030
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
2dense_203/kernel
:2dense_203/bias
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
0:.	?2lstm_609/lstm_cell_609/kernel
::8	d?2'lstm_609/lstm_cell_609/recurrent_kernel
*:(?2lstm_609/lstm_cell_609/bias
0:.	d?2lstm_610/lstm_cell_610/kernel
::8	2?2'lstm_610/lstm_cell_610/recurrent_kernel
*:(?2lstm_610/lstm_cell_610/bias
/:-2(2lstm_611/lstm_cell_611/kernel
9:7
(2'lstm_611/lstm_cell_611/recurrent_kernel
):'(2lstm_611/lstm_cell_611/bias
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
2Adam/dense_203/kernel/m
!:2Adam/dense_203/bias/m
5:3	?2$Adam/lstm_609/lstm_cell_609/kernel/m
?:=	d?2.Adam/lstm_609/lstm_cell_609/recurrent_kernel/m
/:-?2"Adam/lstm_609/lstm_cell_609/bias/m
5:3	d?2$Adam/lstm_610/lstm_cell_610/kernel/m
?:=	2?2.Adam/lstm_610/lstm_cell_610/recurrent_kernel/m
/:-?2"Adam/lstm_610/lstm_cell_610/bias/m
4:22(2$Adam/lstm_611/lstm_cell_611/kernel/m
>:<
(2.Adam/lstm_611/lstm_cell_611/recurrent_kernel/m
.:,(2"Adam/lstm_611/lstm_cell_611/bias/m
':%
2Adam/dense_203/kernel/v
!:2Adam/dense_203/bias/v
5:3	?2$Adam/lstm_609/lstm_cell_609/kernel/v
?:=	d?2.Adam/lstm_609/lstm_cell_609/recurrent_kernel/v
/:-?2"Adam/lstm_609/lstm_cell_609/bias/v
5:3	d?2$Adam/lstm_610/lstm_cell_610/kernel/v
?:=	2?2.Adam/lstm_610/lstm_cell_610/recurrent_kernel/v
/:-?2"Adam/lstm_610/lstm_cell_610/bias/v
4:22(2$Adam/lstm_611/lstm_cell_611/kernel/v
>:<
(2.Adam/lstm_611/lstm_cell_611/recurrent_kernel/v
.:,(2"Adam/lstm_611/lstm_cell_611/bias/v
?2?
0__inference_sequential_203_layer_call_fn_3967410
0__inference_sequential_203_layer_call_fn_3968148
0__inference_sequential_203_layer_call_fn_3968175
0__inference_sequential_203_layer_call_fn_3968026?
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
K__inference_sequential_203_layer_call_and_return_conditional_losses_3968602
K__inference_sequential_203_layer_call_and_return_conditional_losses_3969029
K__inference_sequential_203_layer_call_and_return_conditional_losses_3968056
K__inference_sequential_203_layer_call_and_return_conditional_losses_3968086?
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
"__inference__wrapped_model_3965861lstm_609_input"?
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
*__inference_lstm_609_layer_call_fn_3969040
*__inference_lstm_609_layer_call_fn_3969051
*__inference_lstm_609_layer_call_fn_3969062
*__inference_lstm_609_layer_call_fn_3969073?
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
E__inference_lstm_609_layer_call_and_return_conditional_losses_3969216
E__inference_lstm_609_layer_call_and_return_conditional_losses_3969359
E__inference_lstm_609_layer_call_and_return_conditional_losses_3969502
E__inference_lstm_609_layer_call_and_return_conditional_losses_3969645?
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
*__inference_lstm_610_layer_call_fn_3969656
*__inference_lstm_610_layer_call_fn_3969667
*__inference_lstm_610_layer_call_fn_3969678
*__inference_lstm_610_layer_call_fn_3969689?
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
E__inference_lstm_610_layer_call_and_return_conditional_losses_3969832
E__inference_lstm_610_layer_call_and_return_conditional_losses_3969975
E__inference_lstm_610_layer_call_and_return_conditional_losses_3970118
E__inference_lstm_610_layer_call_and_return_conditional_losses_3970261?
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
*__inference_lstm_611_layer_call_fn_3970272
*__inference_lstm_611_layer_call_fn_3970283
*__inference_lstm_611_layer_call_fn_3970294
*__inference_lstm_611_layer_call_fn_3970305?
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
E__inference_lstm_611_layer_call_and_return_conditional_losses_3970448
E__inference_lstm_611_layer_call_and_return_conditional_losses_3970591
E__inference_lstm_611_layer_call_and_return_conditional_losses_3970734
E__inference_lstm_611_layer_call_and_return_conditional_losses_3970877?
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
+__inference_dense_203_layer_call_fn_3970886?
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
F__inference_dense_203_layer_call_and_return_conditional_losses_3970896?
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
%__inference_signature_wrapper_3968121lstm_609_input"?
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
/__inference_lstm_cell_609_layer_call_fn_3970913
/__inference_lstm_cell_609_layer_call_fn_3970930?
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
J__inference_lstm_cell_609_layer_call_and_return_conditional_losses_3970962
J__inference_lstm_cell_609_layer_call_and_return_conditional_losses_3970994?
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
/__inference_lstm_cell_610_layer_call_fn_3971011
/__inference_lstm_cell_610_layer_call_fn_3971028?
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
J__inference_lstm_cell_610_layer_call_and_return_conditional_losses_3971060
J__inference_lstm_cell_610_layer_call_and_return_conditional_losses_3971092?
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
/__inference_lstm_cell_611_layer_call_fn_3971109
/__inference_lstm_cell_611_layer_call_fn_3971126?
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
J__inference_lstm_cell_611_layer_call_and_return_conditional_losses_3971158
J__inference_lstm_cell_611_layer_call_and_return_conditional_losses_3971190?
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
"__inference__wrapped_model_3965861?()*+,-./0;?8
1?.
,?)
lstm_609_input?????????
? "5?2
0
	dense_203#? 
	dense_203??????????
F__inference_dense_203_layer_call_and_return_conditional_losses_3970896\/?,
%?"
 ?
inputs?????????

? "%?"
?
0?????????
? ~
+__inference_dense_203_layer_call_fn_3970886O/?,
%?"
 ?
inputs?????????

? "???????????
E__inference_lstm_609_layer_call_and_return_conditional_losses_3969216?()*O?L
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
E__inference_lstm_609_layer_call_and_return_conditional_losses_3969359?()*O?L
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
E__inference_lstm_609_layer_call_and_return_conditional_losses_3969502q()*??<
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
E__inference_lstm_609_layer_call_and_return_conditional_losses_3969645q()*??<
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
*__inference_lstm_609_layer_call_fn_3969040}()*O?L
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
*__inference_lstm_609_layer_call_fn_3969051}()*O?L
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
*__inference_lstm_609_layer_call_fn_3969062d()*??<
5?2
$?!
inputs?????????

 
p 

 
? "??????????d?
*__inference_lstm_609_layer_call_fn_3969073d()*??<
5?2
$?!
inputs?????????

 
p

 
? "??????????d?
E__inference_lstm_610_layer_call_and_return_conditional_losses_3969832?+,-O?L
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
E__inference_lstm_610_layer_call_and_return_conditional_losses_3969975?+,-O?L
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
E__inference_lstm_610_layer_call_and_return_conditional_losses_3970118q+,-??<
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
E__inference_lstm_610_layer_call_and_return_conditional_losses_3970261q+,-??<
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
*__inference_lstm_610_layer_call_fn_3969656}+,-O?L
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
*__inference_lstm_610_layer_call_fn_3969667}+,-O?L
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
*__inference_lstm_610_layer_call_fn_3969678d+,-??<
5?2
$?!
inputs?????????d

 
p 

 
? "??????????2?
*__inference_lstm_610_layer_call_fn_3969689d+,-??<
5?2
$?!
inputs?????????d

 
p

 
? "??????????2?
E__inference_lstm_611_layer_call_and_return_conditional_losses_3970448}./0O?L
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
E__inference_lstm_611_layer_call_and_return_conditional_losses_3970591}./0O?L
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
E__inference_lstm_611_layer_call_and_return_conditional_losses_3970734m./0??<
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
E__inference_lstm_611_layer_call_and_return_conditional_losses_3970877m./0??<
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
*__inference_lstm_611_layer_call_fn_3970272p./0O?L
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
*__inference_lstm_611_layer_call_fn_3970283p./0O?L
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
*__inference_lstm_611_layer_call_fn_3970294`./0??<
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
*__inference_lstm_611_layer_call_fn_3970305`./0??<
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
J__inference_lstm_cell_609_layer_call_and_return_conditional_losses_3970962?()*??}
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
J__inference_lstm_cell_609_layer_call_and_return_conditional_losses_3970994?()*??}
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
/__inference_lstm_cell_609_layer_call_fn_3970913?()*??}
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
/__inference_lstm_cell_609_layer_call_fn_3970930?()*??}
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
J__inference_lstm_cell_610_layer_call_and_return_conditional_losses_3971060?+,-??}
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
J__inference_lstm_cell_610_layer_call_and_return_conditional_losses_3971092?+,-??}
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
/__inference_lstm_cell_610_layer_call_fn_3971011?+,-??}
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
/__inference_lstm_cell_610_layer_call_fn_3971028?+,-??}
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
J__inference_lstm_cell_611_layer_call_and_return_conditional_losses_3971158?./0??}
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
J__inference_lstm_cell_611_layer_call_and_return_conditional_losses_3971190?./0??}
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
/__inference_lstm_cell_611_layer_call_fn_3971109?./0??}
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
/__inference_lstm_cell_611_layer_call_fn_3971126?./0??}
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
K__inference_sequential_203_layer_call_and_return_conditional_losses_3968056y()*+,-./0C?@
9?6
,?)
lstm_609_input?????????
p 

 
? "%?"
?
0?????????
? ?
K__inference_sequential_203_layer_call_and_return_conditional_losses_3968086y()*+,-./0C?@
9?6
,?)
lstm_609_input?????????
p

 
? "%?"
?
0?????????
? ?
K__inference_sequential_203_layer_call_and_return_conditional_losses_3968602q()*+,-./0;?8
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
K__inference_sequential_203_layer_call_and_return_conditional_losses_3969029q()*+,-./0;?8
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
0__inference_sequential_203_layer_call_fn_3967410l()*+,-./0C?@
9?6
,?)
lstm_609_input?????????
p 

 
? "???????????
0__inference_sequential_203_layer_call_fn_3968026l()*+,-./0C?@
9?6
,?)
lstm_609_input?????????
p

 
? "???????????
0__inference_sequential_203_layer_call_fn_3968148d()*+,-./0;?8
1?.
$?!
inputs?????????
p 

 
? "???????????
0__inference_sequential_203_layer_call_fn_3968175d()*+,-./0;?8
1?.
$?!
inputs?????????
p

 
? "???????????
%__inference_signature_wrapper_3968121?()*+,-./0M?J
? 
C?@
>
lstm_609_input,?)
lstm_609_input?????????"5?2
0
	dense_203#? 
	dense_203?????????