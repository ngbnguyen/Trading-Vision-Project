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
dense_276/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*!
shared_namedense_276/kernel
u
$dense_276/kernel/Read/ReadVariableOpReadVariableOpdense_276/kernel*
_output_shapes

:
*
dtype0
t
dense_276/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_276/bias
m
"dense_276/bias/Read/ReadVariableOpReadVariableOpdense_276/bias*
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
lstm_828/lstm_cell_828/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*.
shared_namelstm_828/lstm_cell_828/kernel
?
1lstm_828/lstm_cell_828/kernel/Read/ReadVariableOpReadVariableOplstm_828/lstm_cell_828/kernel*
_output_shapes
:	?*
dtype0
?
'lstm_828/lstm_cell_828/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*8
shared_name)'lstm_828/lstm_cell_828/recurrent_kernel
?
;lstm_828/lstm_cell_828/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_828/lstm_cell_828/recurrent_kernel*
_output_shapes
:	d?*
dtype0
?
lstm_828/lstm_cell_828/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_828/lstm_cell_828/bias
?
/lstm_828/lstm_cell_828/bias/Read/ReadVariableOpReadVariableOplstm_828/lstm_cell_828/bias*
_output_shapes	
:?*
dtype0
?
lstm_829/lstm_cell_829/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*.
shared_namelstm_829/lstm_cell_829/kernel
?
1lstm_829/lstm_cell_829/kernel/Read/ReadVariableOpReadVariableOplstm_829/lstm_cell_829/kernel*
_output_shapes
:	d?*
dtype0
?
'lstm_829/lstm_cell_829/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*8
shared_name)'lstm_829/lstm_cell_829/recurrent_kernel
?
;lstm_829/lstm_cell_829/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_829/lstm_cell_829/recurrent_kernel*
_output_shapes
:	2?*
dtype0
?
lstm_829/lstm_cell_829/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_829/lstm_cell_829/bias
?
/lstm_829/lstm_cell_829/bias/Read/ReadVariableOpReadVariableOplstm_829/lstm_cell_829/bias*
_output_shapes	
:?*
dtype0
?
lstm_830/lstm_cell_830/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*.
shared_namelstm_830/lstm_cell_830/kernel
?
1lstm_830/lstm_cell_830/kernel/Read/ReadVariableOpReadVariableOplstm_830/lstm_cell_830/kernel*
_output_shapes

:2(*
dtype0
?
'lstm_830/lstm_cell_830/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*8
shared_name)'lstm_830/lstm_cell_830/recurrent_kernel
?
;lstm_830/lstm_cell_830/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_830/lstm_cell_830/recurrent_kernel*
_output_shapes

:
(*
dtype0
?
lstm_830/lstm_cell_830/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*,
shared_namelstm_830/lstm_cell_830/bias
?
/lstm_830/lstm_cell_830/bias/Read/ReadVariableOpReadVariableOplstm_830/lstm_cell_830/bias*
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
Adam/dense_276/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_276/kernel/m
?
+Adam/dense_276/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_276/kernel/m*
_output_shapes

:
*
dtype0
?
Adam/dense_276/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_276/bias/m
{
)Adam/dense_276/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_276/bias/m*
_output_shapes
:*
dtype0
?
$Adam/lstm_828/lstm_cell_828/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_828/lstm_cell_828/kernel/m
?
8Adam/lstm_828/lstm_cell_828/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_828/lstm_cell_828/kernel/m*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_828/lstm_cell_828/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_828/lstm_cell_828/recurrent_kernel/m
?
BAdam/lstm_828/lstm_cell_828/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_828/lstm_cell_828/recurrent_kernel/m*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_828/lstm_cell_828/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_828/lstm_cell_828/bias/m
?
6Adam/lstm_828/lstm_cell_828/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_828/lstm_cell_828/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_829/lstm_cell_829/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_829/lstm_cell_829/kernel/m
?
8Adam/lstm_829/lstm_cell_829/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_829/lstm_cell_829/kernel/m*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_829/lstm_cell_829/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_829/lstm_cell_829/recurrent_kernel/m
?
BAdam/lstm_829/lstm_cell_829/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_829/lstm_cell_829/recurrent_kernel/m*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_829/lstm_cell_829/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_829/lstm_cell_829/bias/m
?
6Adam/lstm_829/lstm_cell_829/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_829/lstm_cell_829/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_830/lstm_cell_830/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_830/lstm_cell_830/kernel/m
?
8Adam/lstm_830/lstm_cell_830/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_830/lstm_cell_830/kernel/m*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_830/lstm_cell_830/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_830/lstm_cell_830/recurrent_kernel/m
?
BAdam/lstm_830/lstm_cell_830/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_830/lstm_cell_830/recurrent_kernel/m*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_830/lstm_cell_830/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_830/lstm_cell_830/bias/m
?
6Adam/lstm_830/lstm_cell_830/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_830/lstm_cell_830/bias/m*
_output_shapes
:(*
dtype0
?
Adam/dense_276/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_276/kernel/v
?
+Adam/dense_276/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_276/kernel/v*
_output_shapes

:
*
dtype0
?
Adam/dense_276/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_276/bias/v
{
)Adam/dense_276/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_276/bias/v*
_output_shapes
:*
dtype0
?
$Adam/lstm_828/lstm_cell_828/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_828/lstm_cell_828/kernel/v
?
8Adam/lstm_828/lstm_cell_828/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_828/lstm_cell_828/kernel/v*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_828/lstm_cell_828/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_828/lstm_cell_828/recurrent_kernel/v
?
BAdam/lstm_828/lstm_cell_828/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_828/lstm_cell_828/recurrent_kernel/v*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_828/lstm_cell_828/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_828/lstm_cell_828/bias/v
?
6Adam/lstm_828/lstm_cell_828/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_828/lstm_cell_828/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_829/lstm_cell_829/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_829/lstm_cell_829/kernel/v
?
8Adam/lstm_829/lstm_cell_829/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_829/lstm_cell_829/kernel/v*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_829/lstm_cell_829/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_829/lstm_cell_829/recurrent_kernel/v
?
BAdam/lstm_829/lstm_cell_829/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_829/lstm_cell_829/recurrent_kernel/v*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_829/lstm_cell_829/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_829/lstm_cell_829/bias/v
?
6Adam/lstm_829/lstm_cell_829/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_829/lstm_cell_829/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_830/lstm_cell_830/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_830/lstm_cell_830/kernel/v
?
8Adam/lstm_830/lstm_cell_830/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_830/lstm_cell_830/kernel/v*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_830/lstm_cell_830/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_830/lstm_cell_830/recurrent_kernel/v
?
BAdam/lstm_830/lstm_cell_830/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_830/lstm_cell_830/recurrent_kernel/v*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_830/lstm_cell_830/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_830/lstm_cell_830/bias/v
?
6Adam/lstm_830/lstm_cell_830/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_830/lstm_cell_830/bias/v*
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
VARIABLE_VALUEdense_276/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_276/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUElstm_828/lstm_cell_828/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_828/lstm_cell_828/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_828/lstm_cell_828/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_829/lstm_cell_829/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_829/lstm_cell_829/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_829/lstm_cell_829/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_830/lstm_cell_830/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_830/lstm_cell_830/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_830/lstm_cell_830/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEAdam/dense_276/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_276/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_828/lstm_cell_828/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_828/lstm_cell_828/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_828/lstm_cell_828/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_829/lstm_cell_829/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_829/lstm_cell_829/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_829/lstm_cell_829/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_830/lstm_cell_830/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_830/lstm_cell_830/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_830/lstm_cell_830/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_276/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_276/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_828/lstm_cell_828/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_828/lstm_cell_828/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_828/lstm_cell_828/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_829/lstm_cell_829/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_829/lstm_cell_829/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_829/lstm_cell_829/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_830/lstm_cell_830/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_830/lstm_cell_830/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_830/lstm_cell_830/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_lstm_828_inputPlaceholder*+
_output_shapes
:?????????*
dtype0* 
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_828_inputlstm_828/lstm_cell_828/kernel'lstm_828/lstm_cell_828/recurrent_kernellstm_828/lstm_cell_828/biaslstm_829/lstm_cell_829/kernel'lstm_829/lstm_cell_829/recurrent_kernellstm_829/lstm_cell_829/biaslstm_830/lstm_cell_830/kernel'lstm_830/lstm_cell_830/recurrent_kernellstm_830/lstm_cell_830/biasdense_276/kerneldense_276/bias*
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
%__inference_signature_wrapper_5010037
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$dense_276/kernel/Read/ReadVariableOp"dense_276/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_828/lstm_cell_828/kernel/Read/ReadVariableOp;lstm_828/lstm_cell_828/recurrent_kernel/Read/ReadVariableOp/lstm_828/lstm_cell_828/bias/Read/ReadVariableOp1lstm_829/lstm_cell_829/kernel/Read/ReadVariableOp;lstm_829/lstm_cell_829/recurrent_kernel/Read/ReadVariableOp/lstm_829/lstm_cell_829/bias/Read/ReadVariableOp1lstm_830/lstm_cell_830/kernel/Read/ReadVariableOp;lstm_830/lstm_cell_830/recurrent_kernel/Read/ReadVariableOp/lstm_830/lstm_cell_830/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp+Adam/dense_276/kernel/m/Read/ReadVariableOp)Adam/dense_276/bias/m/Read/ReadVariableOp8Adam/lstm_828/lstm_cell_828/kernel/m/Read/ReadVariableOpBAdam/lstm_828/lstm_cell_828/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_828/lstm_cell_828/bias/m/Read/ReadVariableOp8Adam/lstm_829/lstm_cell_829/kernel/m/Read/ReadVariableOpBAdam/lstm_829/lstm_cell_829/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_829/lstm_cell_829/bias/m/Read/ReadVariableOp8Adam/lstm_830/lstm_cell_830/kernel/m/Read/ReadVariableOpBAdam/lstm_830/lstm_cell_830/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_830/lstm_cell_830/bias/m/Read/ReadVariableOp+Adam/dense_276/kernel/v/Read/ReadVariableOp)Adam/dense_276/bias/v/Read/ReadVariableOp8Adam/lstm_828/lstm_cell_828/kernel/v/Read/ReadVariableOpBAdam/lstm_828/lstm_cell_828/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_828/lstm_cell_828/bias/v/Read/ReadVariableOp8Adam/lstm_829/lstm_cell_829/kernel/v/Read/ReadVariableOpBAdam/lstm_829/lstm_cell_829/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_829/lstm_cell_829/bias/v/Read/ReadVariableOp8Adam/lstm_830/lstm_cell_830/kernel/v/Read/ReadVariableOpBAdam/lstm_830/lstm_cell_830/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_830/lstm_cell_830/bias/v/Read/ReadVariableOpConst*5
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
 __inference__traced_save_5013249
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_276/kerneldense_276/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_828/lstm_cell_828/kernel'lstm_828/lstm_cell_828/recurrent_kernellstm_828/lstm_cell_828/biaslstm_829/lstm_cell_829/kernel'lstm_829/lstm_cell_829/recurrent_kernellstm_829/lstm_cell_829/biaslstm_830/lstm_cell_830/kernel'lstm_830/lstm_cell_830/recurrent_kernellstm_830/lstm_cell_830/biastotalcountAdam/dense_276/kernel/mAdam/dense_276/bias/m$Adam/lstm_828/lstm_cell_828/kernel/m.Adam/lstm_828/lstm_cell_828/recurrent_kernel/m"Adam/lstm_828/lstm_cell_828/bias/m$Adam/lstm_829/lstm_cell_829/kernel/m.Adam/lstm_829/lstm_cell_829/recurrent_kernel/m"Adam/lstm_829/lstm_cell_829/bias/m$Adam/lstm_830/lstm_cell_830/kernel/m.Adam/lstm_830/lstm_cell_830/recurrent_kernel/m"Adam/lstm_830/lstm_cell_830/bias/mAdam/dense_276/kernel/vAdam/dense_276/bias/v$Adam/lstm_828/lstm_cell_828/kernel/v.Adam/lstm_828/lstm_cell_828/recurrent_kernel/v"Adam/lstm_828/lstm_cell_828/bias/v$Adam/lstm_829/lstm_cell_829/kernel/v.Adam/lstm_829/lstm_cell_829/recurrent_kernel/v"Adam/lstm_829/lstm_cell_829/bias/v$Adam/lstm_830/lstm_cell_830/kernel/v.Adam/lstm_830/lstm_cell_830/recurrent_kernel/v"Adam/lstm_830/lstm_cell_830/bias/v*4
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
#__inference__traced_restore_5013379??+
?
?
J__inference_lstm_cell_830_layer_call_and_return_conditional_losses_5013074

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
while_body_5011191
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_828_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_828_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_828_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_828_matmul_readvariableop_resource:	?G
4while_lstm_cell_828_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_828_biasadd_readvariableop_resource:	???*while/lstm_cell_828/BiasAdd/ReadVariableOp?)while/lstm_cell_828/MatMul/ReadVariableOp?+while/lstm_cell_828/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_828/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_828_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_828/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_828/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_828/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_828_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_828/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_828/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_828/addAddV2$while/lstm_cell_828/MatMul:product:0&while/lstm_cell_828/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_828/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_828_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_828/BiasAddBiasAddwhile/lstm_cell_828/add:z:02while/lstm_cell_828/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_828/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_828/splitSplit,while/lstm_cell_828/split/split_dim:output:0$while/lstm_cell_828/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_828/SigmoidSigmoid"while/lstm_cell_828/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_828/Sigmoid_1Sigmoid"while/lstm_cell_828/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_828/mulMul!while/lstm_cell_828/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_828/ReluRelu"while/lstm_cell_828/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_828/mul_1Mulwhile/lstm_cell_828/Sigmoid:y:0&while/lstm_cell_828/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_828/add_1AddV2while/lstm_cell_828/mul:z:0while/lstm_cell_828/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_828/Sigmoid_2Sigmoid"while/lstm_cell_828/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_828/Relu_1Reluwhile/lstm_cell_828/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_828/mul_2Mul!while/lstm_cell_828/Sigmoid_2:y:0(while/lstm_cell_828/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_828/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_828/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_828/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_828/BiasAdd/ReadVariableOp*^while/lstm_cell_828/MatMul/ReadVariableOp,^while/lstm_cell_828/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_828_biasadd_readvariableop_resource5while_lstm_cell_828_biasadd_readvariableop_resource_0"n
4while_lstm_cell_828_matmul_1_readvariableop_resource6while_lstm_cell_828_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_828_matmul_readvariableop_resource4while_lstm_cell_828_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_828/BiasAdd/ReadVariableOp*while/lstm_cell_828/BiasAdd/ReadVariableOp2V
)while/lstm_cell_828/MatMul/ReadVariableOp)while/lstm_cell_828/MatMul/ReadVariableOp2Z
+while/lstm_cell_828/MatMul_1/ReadVariableOp+while/lstm_cell_828/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_5011048
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_828_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_828_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_828_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_828_matmul_readvariableop_resource:	?G
4while_lstm_cell_828_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_828_biasadd_readvariableop_resource:	???*while/lstm_cell_828/BiasAdd/ReadVariableOp?)while/lstm_cell_828/MatMul/ReadVariableOp?+while/lstm_cell_828/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_828/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_828_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_828/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_828/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_828/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_828_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_828/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_828/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_828/addAddV2$while/lstm_cell_828/MatMul:product:0&while/lstm_cell_828/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_828/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_828_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_828/BiasAddBiasAddwhile/lstm_cell_828/add:z:02while/lstm_cell_828/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_828/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_828/splitSplit,while/lstm_cell_828/split/split_dim:output:0$while/lstm_cell_828/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_828/SigmoidSigmoid"while/lstm_cell_828/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_828/Sigmoid_1Sigmoid"while/lstm_cell_828/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_828/mulMul!while/lstm_cell_828/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_828/ReluRelu"while/lstm_cell_828/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_828/mul_1Mulwhile/lstm_cell_828/Sigmoid:y:0&while/lstm_cell_828/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_828/add_1AddV2while/lstm_cell_828/mul:z:0while/lstm_cell_828/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_828/Sigmoid_2Sigmoid"while/lstm_cell_828/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_828/Relu_1Reluwhile/lstm_cell_828/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_828/mul_2Mul!while/lstm_cell_828/Sigmoid_2:y:0(while/lstm_cell_828/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_828/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_828/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_828/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_828/BiasAdd/ReadVariableOp*^while/lstm_cell_828/MatMul/ReadVariableOp,^while/lstm_cell_828/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_828_biasadd_readvariableop_resource5while_lstm_cell_828_biasadd_readvariableop_resource_0"n
4while_lstm_cell_828_matmul_1_readvariableop_resource6while_lstm_cell_828_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_828_matmul_readvariableop_resource4while_lstm_cell_828_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_828/BiasAdd/ReadVariableOp*while/lstm_cell_828/BiasAdd/ReadVariableOp2V
)while/lstm_cell_828/MatMul/ReadVariableOp)while/lstm_cell_828/MatMul/ReadVariableOp2Z
+while/lstm_cell_828/MatMul_1/ReadVariableOp+while/lstm_cell_828/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
K__inference_sequential_276_layer_call_and_return_conditional_losses_5009890

inputs#
lstm_828_5009863:	?#
lstm_828_5009865:	d?
lstm_828_5009867:	?#
lstm_829_5009870:	d?#
lstm_829_5009872:	2?
lstm_829_5009874:	?"
lstm_830_5009877:2("
lstm_830_5009879:
(
lstm_830_5009881:(#
dense_276_5009884:

dense_276_5009886:
identity??!dense_276/StatefulPartitionedCall? lstm_828/StatefulPartitionedCall? lstm_829/StatefulPartitionedCall? lstm_830/StatefulPartitionedCall?
 lstm_828/StatefulPartitionedCallStatefulPartitionedCallinputslstm_828_5009863lstm_828_5009865lstm_828_5009867*
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
E__inference_lstm_828_layer_call_and_return_conditional_losses_5009822?
 lstm_829/StatefulPartitionedCallStatefulPartitionedCall)lstm_828/StatefulPartitionedCall:output:0lstm_829_5009870lstm_829_5009872lstm_829_5009874*
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
E__inference_lstm_829_layer_call_and_return_conditional_losses_5009657?
 lstm_830/StatefulPartitionedCallStatefulPartitionedCall)lstm_829/StatefulPartitionedCall:output:0lstm_830_5009877lstm_830_5009879lstm_830_5009881*
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
E__inference_lstm_830_layer_call_and_return_conditional_losses_5009492?
!dense_276/StatefulPartitionedCallStatefulPartitionedCall)lstm_830/StatefulPartitionedCall:output:0dense_276_5009884dense_276_5009886*
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
F__inference_dense_276_layer_call_and_return_conditional_losses_5009294y
IdentityIdentity*dense_276/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_276/StatefulPartitionedCall!^lstm_828/StatefulPartitionedCall!^lstm_829/StatefulPartitionedCall!^lstm_830/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_276/StatefulPartitionedCall!dense_276/StatefulPartitionedCall2D
 lstm_828/StatefulPartitionedCall lstm_828/StatefulPartitionedCall2D
 lstm_829/StatefulPartitionedCall lstm_829/StatefulPartitionedCall2D
 lstm_830/StatefulPartitionedCall lstm_830/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
*__inference_lstm_828_layer_call_fn_5010956
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
E__inference_lstm_828_layer_call_and_return_conditional_losses_5007927|
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
while_cond_5012708
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5012708___redundant_placeholder05
1while_while_cond_5012708___redundant_placeholder15
1while_while_cond_5012708___redundant_placeholder25
1while_while_cond_5012708___redundant_placeholder3
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
E__inference_lstm_829_layer_call_and_return_conditional_losses_5012034

inputs?
,lstm_cell_829_matmul_readvariableop_resource:	d?A
.lstm_cell_829_matmul_1_readvariableop_resource:	2?<
-lstm_cell_829_biasadd_readvariableop_resource:	?
identity??$lstm_cell_829/BiasAdd/ReadVariableOp?#lstm_cell_829/MatMul/ReadVariableOp?%lstm_cell_829/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_829/MatMul/ReadVariableOpReadVariableOp,lstm_cell_829_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_829/MatMulMatMulstrided_slice_2:output:0+lstm_cell_829/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_829/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_829_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_829/MatMul_1MatMulzeros:output:0-lstm_cell_829/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_829/addAddV2lstm_cell_829/MatMul:product:0 lstm_cell_829/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_829/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_829_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_829/BiasAddBiasAddlstm_cell_829/add:z:0,lstm_cell_829/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_829/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_829/splitSplit&lstm_cell_829/split/split_dim:output:0lstm_cell_829/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_829/SigmoidSigmoidlstm_cell_829/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_829/Sigmoid_1Sigmoidlstm_cell_829/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_829/mulMullstm_cell_829/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_829/ReluRelulstm_cell_829/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_829/mul_1Mullstm_cell_829/Sigmoid:y:0 lstm_cell_829/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_829/add_1AddV2lstm_cell_829/mul:z:0lstm_cell_829/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_829/Sigmoid_2Sigmoidlstm_cell_829/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_829/Relu_1Relulstm_cell_829/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_829/mul_2Mullstm_cell_829/Sigmoid_2:y:0"lstm_cell_829/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_829_matmul_readvariableop_resource.lstm_cell_829_matmul_1_readvariableop_resource-lstm_cell_829_biasadd_readvariableop_resource*
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
while_body_5011950*
condR
while_cond_5011949*K
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
NoOpNoOp%^lstm_cell_829/BiasAdd/ReadVariableOp$^lstm_cell_829/MatMul/ReadVariableOp&^lstm_cell_829/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_829/BiasAdd/ReadVariableOp$lstm_cell_829/BiasAdd/ReadVariableOp2J
#lstm_cell_829/MatMul/ReadVariableOp#lstm_cell_829/MatMul/ReadVariableOp2N
%lstm_cell_829/MatMul_1/ReadVariableOp%lstm_cell_829/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?8
?
E__inference_lstm_828_layer_call_and_return_conditional_losses_5007927

inputs(
lstm_cell_828_5007845:	?(
lstm_cell_828_5007847:	d?$
lstm_cell_828_5007849:	?
identity??%lstm_cell_828/StatefulPartitionedCall?while;
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
%lstm_cell_828/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_828_5007845lstm_cell_828_5007847lstm_cell_828_5007849*
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
J__inference_lstm_cell_828_layer_call_and_return_conditional_losses_5007844n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_828_5007845lstm_cell_828_5007847lstm_cell_828_5007849*
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
while_body_5007858*
condR
while_cond_5007857*K
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
NoOpNoOp&^lstm_cell_828/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_828/StatefulPartitionedCall%lstm_cell_828/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?K
?
E__inference_lstm_829_layer_call_and_return_conditional_losses_5011748
inputs_0?
,lstm_cell_829_matmul_readvariableop_resource:	d?A
.lstm_cell_829_matmul_1_readvariableop_resource:	2?<
-lstm_cell_829_biasadd_readvariableop_resource:	?
identity??$lstm_cell_829/BiasAdd/ReadVariableOp?#lstm_cell_829/MatMul/ReadVariableOp?%lstm_cell_829/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_829/MatMul/ReadVariableOpReadVariableOp,lstm_cell_829_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_829/MatMulMatMulstrided_slice_2:output:0+lstm_cell_829/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_829/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_829_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_829/MatMul_1MatMulzeros:output:0-lstm_cell_829/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_829/addAddV2lstm_cell_829/MatMul:product:0 lstm_cell_829/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_829/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_829_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_829/BiasAddBiasAddlstm_cell_829/add:z:0,lstm_cell_829/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_829/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_829/splitSplit&lstm_cell_829/split/split_dim:output:0lstm_cell_829/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_829/SigmoidSigmoidlstm_cell_829/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_829/Sigmoid_1Sigmoidlstm_cell_829/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_829/mulMullstm_cell_829/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_829/ReluRelulstm_cell_829/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_829/mul_1Mullstm_cell_829/Sigmoid:y:0 lstm_cell_829/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_829/add_1AddV2lstm_cell_829/mul:z:0lstm_cell_829/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_829/Sigmoid_2Sigmoidlstm_cell_829/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_829/Relu_1Relulstm_cell_829/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_829/mul_2Mullstm_cell_829/Sigmoid_2:y:0"lstm_cell_829/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_829_matmul_readvariableop_resource.lstm_cell_829_matmul_1_readvariableop_resource-lstm_cell_829_biasadd_readvariableop_resource*
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
while_body_5011664*
condR
while_cond_5011663*K
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
NoOpNoOp%^lstm_cell_829/BiasAdd/ReadVariableOp$^lstm_cell_829/MatMul/ReadVariableOp&^lstm_cell_829/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_829/BiasAdd/ReadVariableOp$lstm_cell_829/BiasAdd/ReadVariableOp2J
#lstm_cell_829/MatMul/ReadVariableOp#lstm_cell_829/MatMul/ReadVariableOp2N
%lstm_cell_829/MatMul_1/ReadVariableOp%lstm_cell_829/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?
?
while_cond_5012092
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5012092___redundant_placeholder05
1while_while_cond_5012092___redundant_placeholder15
1while_while_cond_5012092___redundant_placeholder25
1while_while_cond_5012092___redundant_placeholder3
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
while_body_5009042
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_829_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_829_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_829_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_829_matmul_readvariableop_resource:	d?G
4while_lstm_cell_829_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_829_biasadd_readvariableop_resource:	???*while/lstm_cell_829/BiasAdd/ReadVariableOp?)while/lstm_cell_829/MatMul/ReadVariableOp?+while/lstm_cell_829/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_829/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_829_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_829/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_829/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_829/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_829_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_829/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_829/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_829/addAddV2$while/lstm_cell_829/MatMul:product:0&while/lstm_cell_829/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_829/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_829_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_829/BiasAddBiasAddwhile/lstm_cell_829/add:z:02while/lstm_cell_829/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_829/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_829/splitSplit,while/lstm_cell_829/split/split_dim:output:0$while/lstm_cell_829/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_829/SigmoidSigmoid"while/lstm_cell_829/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_829/Sigmoid_1Sigmoid"while/lstm_cell_829/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_829/mulMul!while/lstm_cell_829/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_829/ReluRelu"while/lstm_cell_829/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_829/mul_1Mulwhile/lstm_cell_829/Sigmoid:y:0&while/lstm_cell_829/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_829/add_1AddV2while/lstm_cell_829/mul:z:0while/lstm_cell_829/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_829/Sigmoid_2Sigmoid"while/lstm_cell_829/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_829/Relu_1Reluwhile/lstm_cell_829/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_829/mul_2Mul!while/lstm_cell_829/Sigmoid_2:y:0(while/lstm_cell_829/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_829/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_829/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_829/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_829/BiasAdd/ReadVariableOp*^while/lstm_cell_829/MatMul/ReadVariableOp,^while/lstm_cell_829/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_829_biasadd_readvariableop_resource5while_lstm_cell_829_biasadd_readvariableop_resource_0"n
4while_lstm_cell_829_matmul_1_readvariableop_resource6while_lstm_cell_829_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_829_matmul_readvariableop_resource4while_lstm_cell_829_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_829/BiasAdd/ReadVariableOp*while/lstm_cell_829/BiasAdd/ReadVariableOp2V
)while/lstm_cell_829/MatMul/ReadVariableOp)while/lstm_cell_829/MatMul/ReadVariableOp2Z
+while/lstm_cell_829/MatMul_1/ReadVariableOp+while/lstm_cell_829/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_5011807
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_829_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_829_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_829_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_829_matmul_readvariableop_resource:	d?G
4while_lstm_cell_829_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_829_biasadd_readvariableop_resource:	???*while/lstm_cell_829/BiasAdd/ReadVariableOp?)while/lstm_cell_829/MatMul/ReadVariableOp?+while/lstm_cell_829/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_829/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_829_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_829/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_829/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_829/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_829_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_829/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_829/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_829/addAddV2$while/lstm_cell_829/MatMul:product:0&while/lstm_cell_829/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_829/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_829_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_829/BiasAddBiasAddwhile/lstm_cell_829/add:z:02while/lstm_cell_829/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_829/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_829/splitSplit,while/lstm_cell_829/split/split_dim:output:0$while/lstm_cell_829/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_829/SigmoidSigmoid"while/lstm_cell_829/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_829/Sigmoid_1Sigmoid"while/lstm_cell_829/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_829/mulMul!while/lstm_cell_829/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_829/ReluRelu"while/lstm_cell_829/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_829/mul_1Mulwhile/lstm_cell_829/Sigmoid:y:0&while/lstm_cell_829/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_829/add_1AddV2while/lstm_cell_829/mul:z:0while/lstm_cell_829/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_829/Sigmoid_2Sigmoid"while/lstm_cell_829/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_829/Relu_1Reluwhile/lstm_cell_829/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_829/mul_2Mul!while/lstm_cell_829/Sigmoid_2:y:0(while/lstm_cell_829/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_829/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_829/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_829/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_829/BiasAdd/ReadVariableOp*^while/lstm_cell_829/MatMul/ReadVariableOp,^while/lstm_cell_829/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_829_biasadd_readvariableop_resource5while_lstm_cell_829_biasadd_readvariableop_resource_0"n
4while_lstm_cell_829_matmul_1_readvariableop_resource6while_lstm_cell_829_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_829_matmul_readvariableop_resource4while_lstm_cell_829_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_829/BiasAdd/ReadVariableOp*while/lstm_cell_829/BiasAdd/ReadVariableOp2V
)while/lstm_cell_829/MatMul/ReadVariableOp)while/lstm_cell_829/MatMul/ReadVariableOp2Z
+while/lstm_cell_829/MatMul_1/ReadVariableOp+while/lstm_cell_829/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_5008892
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_828_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_828_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_828_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_828_matmul_readvariableop_resource:	?G
4while_lstm_cell_828_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_828_biasadd_readvariableop_resource:	???*while/lstm_cell_828/BiasAdd/ReadVariableOp?)while/lstm_cell_828/MatMul/ReadVariableOp?+while/lstm_cell_828/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_828/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_828_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_828/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_828/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_828/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_828_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_828/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_828/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_828/addAddV2$while/lstm_cell_828/MatMul:product:0&while/lstm_cell_828/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_828/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_828_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_828/BiasAddBiasAddwhile/lstm_cell_828/add:z:02while/lstm_cell_828/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_828/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_828/splitSplit,while/lstm_cell_828/split/split_dim:output:0$while/lstm_cell_828/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_828/SigmoidSigmoid"while/lstm_cell_828/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_828/Sigmoid_1Sigmoid"while/lstm_cell_828/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_828/mulMul!while/lstm_cell_828/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_828/ReluRelu"while/lstm_cell_828/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_828/mul_1Mulwhile/lstm_cell_828/Sigmoid:y:0&while/lstm_cell_828/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_828/add_1AddV2while/lstm_cell_828/mul:z:0while/lstm_cell_828/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_828/Sigmoid_2Sigmoid"while/lstm_cell_828/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_828/Relu_1Reluwhile/lstm_cell_828/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_828/mul_2Mul!while/lstm_cell_828/Sigmoid_2:y:0(while/lstm_cell_828/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_828/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_828/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_828/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_828/BiasAdd/ReadVariableOp*^while/lstm_cell_828/MatMul/ReadVariableOp,^while/lstm_cell_828/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_828_biasadd_readvariableop_resource5while_lstm_cell_828_biasadd_readvariableop_resource_0"n
4while_lstm_cell_828_matmul_1_readvariableop_resource6while_lstm_cell_828_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_828_matmul_readvariableop_resource4while_lstm_cell_828_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_828/BiasAdd/ReadVariableOp*while/lstm_cell_828/BiasAdd/ReadVariableOp2V
)while/lstm_cell_828/MatMul/ReadVariableOp)while/lstm_cell_828/MatMul/ReadVariableOp2Z
+while/lstm_cell_828/MatMul_1/ReadVariableOp+while/lstm_cell_828/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

lstm_828_while_body_5010577.
*lstm_828_while_lstm_828_while_loop_counter4
0lstm_828_while_lstm_828_while_maximum_iterations
lstm_828_while_placeholder 
lstm_828_while_placeholder_1 
lstm_828_while_placeholder_2 
lstm_828_while_placeholder_3-
)lstm_828_while_lstm_828_strided_slice_1_0i
elstm_828_while_tensorarrayv2read_tensorlistgetitem_lstm_828_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_828_while_lstm_cell_828_matmul_readvariableop_resource_0:	?R
?lstm_828_while_lstm_cell_828_matmul_1_readvariableop_resource_0:	d?M
>lstm_828_while_lstm_cell_828_biasadd_readvariableop_resource_0:	?
lstm_828_while_identity
lstm_828_while_identity_1
lstm_828_while_identity_2
lstm_828_while_identity_3
lstm_828_while_identity_4
lstm_828_while_identity_5+
'lstm_828_while_lstm_828_strided_slice_1g
clstm_828_while_tensorarrayv2read_tensorlistgetitem_lstm_828_tensorarrayunstack_tensorlistfromtensorN
;lstm_828_while_lstm_cell_828_matmul_readvariableop_resource:	?P
=lstm_828_while_lstm_cell_828_matmul_1_readvariableop_resource:	d?K
<lstm_828_while_lstm_cell_828_biasadd_readvariableop_resource:	???3lstm_828/while/lstm_cell_828/BiasAdd/ReadVariableOp?2lstm_828/while/lstm_cell_828/MatMul/ReadVariableOp?4lstm_828/while/lstm_cell_828/MatMul_1/ReadVariableOp?
@lstm_828/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_828/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_828_while_tensorarrayv2read_tensorlistgetitem_lstm_828_tensorarrayunstack_tensorlistfromtensor_0lstm_828_while_placeholderIlstm_828/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_828/while/lstm_cell_828/MatMul/ReadVariableOpReadVariableOp=lstm_828_while_lstm_cell_828_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_828/while/lstm_cell_828/MatMulMatMul9lstm_828/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_828/while/lstm_cell_828/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_828/while/lstm_cell_828/MatMul_1/ReadVariableOpReadVariableOp?lstm_828_while_lstm_cell_828_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_828/while/lstm_cell_828/MatMul_1MatMullstm_828_while_placeholder_2<lstm_828/while/lstm_cell_828/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_828/while/lstm_cell_828/addAddV2-lstm_828/while/lstm_cell_828/MatMul:product:0/lstm_828/while/lstm_cell_828/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_828/while/lstm_cell_828/BiasAdd/ReadVariableOpReadVariableOp>lstm_828_while_lstm_cell_828_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_828/while/lstm_cell_828/BiasAddBiasAdd$lstm_828/while/lstm_cell_828/add:z:0;lstm_828/while/lstm_cell_828/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_828/while/lstm_cell_828/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_828/while/lstm_cell_828/splitSplit5lstm_828/while/lstm_cell_828/split/split_dim:output:0-lstm_828/while/lstm_cell_828/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_828/while/lstm_cell_828/SigmoidSigmoid+lstm_828/while/lstm_cell_828/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_828/while/lstm_cell_828/Sigmoid_1Sigmoid+lstm_828/while/lstm_cell_828/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_828/while/lstm_cell_828/mulMul*lstm_828/while/lstm_cell_828/Sigmoid_1:y:0lstm_828_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_828/while/lstm_cell_828/ReluRelu+lstm_828/while/lstm_cell_828/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_828/while/lstm_cell_828/mul_1Mul(lstm_828/while/lstm_cell_828/Sigmoid:y:0/lstm_828/while/lstm_cell_828/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_828/while/lstm_cell_828/add_1AddV2$lstm_828/while/lstm_cell_828/mul:z:0&lstm_828/while/lstm_cell_828/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_828/while/lstm_cell_828/Sigmoid_2Sigmoid+lstm_828/while/lstm_cell_828/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_828/while/lstm_cell_828/Relu_1Relu&lstm_828/while/lstm_cell_828/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_828/while/lstm_cell_828/mul_2Mul*lstm_828/while/lstm_cell_828/Sigmoid_2:y:01lstm_828/while/lstm_cell_828/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_828/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_828_while_placeholder_1lstm_828_while_placeholder&lstm_828/while/lstm_cell_828/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_828/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_828/while/addAddV2lstm_828_while_placeholderlstm_828/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_828/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_828/while/add_1AddV2*lstm_828_while_lstm_828_while_loop_counterlstm_828/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_828/while/IdentityIdentitylstm_828/while/add_1:z:0^lstm_828/while/NoOp*
T0*
_output_shapes
: ?
lstm_828/while/Identity_1Identity0lstm_828_while_lstm_828_while_maximum_iterations^lstm_828/while/NoOp*
T0*
_output_shapes
: t
lstm_828/while/Identity_2Identitylstm_828/while/add:z:0^lstm_828/while/NoOp*
T0*
_output_shapes
: ?
lstm_828/while/Identity_3IdentityClstm_828/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_828/while/NoOp*
T0*
_output_shapes
: ?
lstm_828/while/Identity_4Identity&lstm_828/while/lstm_cell_828/mul_2:z:0^lstm_828/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_828/while/Identity_5Identity&lstm_828/while/lstm_cell_828/add_1:z:0^lstm_828/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_828/while/NoOpNoOp4^lstm_828/while/lstm_cell_828/BiasAdd/ReadVariableOp3^lstm_828/while/lstm_cell_828/MatMul/ReadVariableOp5^lstm_828/while/lstm_cell_828/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_828_while_identity lstm_828/while/Identity:output:0"?
lstm_828_while_identity_1"lstm_828/while/Identity_1:output:0"?
lstm_828_while_identity_2"lstm_828/while/Identity_2:output:0"?
lstm_828_while_identity_3"lstm_828/while/Identity_3:output:0"?
lstm_828_while_identity_4"lstm_828/while/Identity_4:output:0"?
lstm_828_while_identity_5"lstm_828/while/Identity_5:output:0"T
'lstm_828_while_lstm_828_strided_slice_1)lstm_828_while_lstm_828_strided_slice_1_0"~
<lstm_828_while_lstm_cell_828_biasadd_readvariableop_resource>lstm_828_while_lstm_cell_828_biasadd_readvariableop_resource_0"?
=lstm_828_while_lstm_cell_828_matmul_1_readvariableop_resource?lstm_828_while_lstm_cell_828_matmul_1_readvariableop_resource_0"|
;lstm_828_while_lstm_cell_828_matmul_readvariableop_resource=lstm_828_while_lstm_cell_828_matmul_readvariableop_resource_0"?
clstm_828_while_tensorarrayv2read_tensorlistgetitem_lstm_828_tensorarrayunstack_tensorlistfromtensorelstm_828_while_tensorarrayv2read_tensorlistgetitem_lstm_828_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_828/while/lstm_cell_828/BiasAdd/ReadVariableOp3lstm_828/while/lstm_cell_828/BiasAdd/ReadVariableOp2h
2lstm_828/while/lstm_cell_828/MatMul/ReadVariableOp2lstm_828/while/lstm_cell_828/MatMul/ReadVariableOp2l
4lstm_828/while/lstm_cell_828/MatMul_1/ReadVariableOp4lstm_828/while/lstm_cell_828/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_830_layer_call_fn_5013025

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
J__inference_lstm_cell_830_layer_call_and_return_conditional_losses_5008544o
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
?
E__inference_lstm_829_layer_call_and_return_conditional_losses_5008468

inputs(
lstm_cell_829_5008386:	d?(
lstm_cell_829_5008388:	2?$
lstm_cell_829_5008390:	?
identity??%lstm_cell_829/StatefulPartitionedCall?while;
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
%lstm_cell_829/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_829_5008386lstm_cell_829_5008388lstm_cell_829_5008390*
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
J__inference_lstm_cell_829_layer_call_and_return_conditional_losses_5008340n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_829_5008386lstm_cell_829_5008388lstm_cell_829_5008390*
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
while_body_5008399*
condR
while_cond_5008398*K
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
NoOpNoOp&^lstm_cell_829/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_829/StatefulPartitionedCall%lstm_cell_829/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?J
?
E__inference_lstm_830_layer_call_and_return_conditional_losses_5012793

inputs>
,lstm_cell_830_matmul_readvariableop_resource:2(@
.lstm_cell_830_matmul_1_readvariableop_resource:
(;
-lstm_cell_830_biasadd_readvariableop_resource:(
identity??$lstm_cell_830/BiasAdd/ReadVariableOp?#lstm_cell_830/MatMul/ReadVariableOp?%lstm_cell_830/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_830/MatMul/ReadVariableOpReadVariableOp,lstm_cell_830_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_830/MatMulMatMulstrided_slice_2:output:0+lstm_cell_830/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_830/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_830_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_830/MatMul_1MatMulzeros:output:0-lstm_cell_830/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_830/addAddV2lstm_cell_830/MatMul:product:0 lstm_cell_830/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_830/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_830_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_830/BiasAddBiasAddlstm_cell_830/add:z:0,lstm_cell_830/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_830/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_830/splitSplit&lstm_cell_830/split/split_dim:output:0lstm_cell_830/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_830/SigmoidSigmoidlstm_cell_830/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_830/Sigmoid_1Sigmoidlstm_cell_830/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_830/mulMullstm_cell_830/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_830/ReluRelulstm_cell_830/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_830/mul_1Mullstm_cell_830/Sigmoid:y:0 lstm_cell_830/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_830/add_1AddV2lstm_cell_830/mul:z:0lstm_cell_830/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_830/Sigmoid_2Sigmoidlstm_cell_830/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_830/Relu_1Relulstm_cell_830/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_830/mul_2Mullstm_cell_830/Sigmoid_2:y:0"lstm_cell_830/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_830_matmul_readvariableop_resource.lstm_cell_830_matmul_1_readvariableop_resource-lstm_cell_830_biasadd_readvariableop_resource*
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
while_body_5012709*
condR
while_cond_5012708*K
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
NoOpNoOp%^lstm_cell_830/BiasAdd/ReadVariableOp$^lstm_cell_830/MatMul/ReadVariableOp&^lstm_cell_830/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_830/BiasAdd/ReadVariableOp$lstm_cell_830/BiasAdd/ReadVariableOp2J
#lstm_cell_830/MatMul/ReadVariableOp#lstm_cell_830/MatMul/ReadVariableOp2N
%lstm_cell_830/MatMul_1/ReadVariableOp%lstm_cell_830/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_829_layer_call_and_return_conditional_losses_5013008

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
while_body_5011477
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_828_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_828_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_828_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_828_matmul_readvariableop_resource:	?G
4while_lstm_cell_828_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_828_biasadd_readvariableop_resource:	???*while/lstm_cell_828/BiasAdd/ReadVariableOp?)while/lstm_cell_828/MatMul/ReadVariableOp?+while/lstm_cell_828/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_828/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_828_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_828/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_828/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_828/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_828_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_828/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_828/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_828/addAddV2$while/lstm_cell_828/MatMul:product:0&while/lstm_cell_828/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_828/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_828_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_828/BiasAddBiasAddwhile/lstm_cell_828/add:z:02while/lstm_cell_828/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_828/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_828/splitSplit,while/lstm_cell_828/split/split_dim:output:0$while/lstm_cell_828/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_828/SigmoidSigmoid"while/lstm_cell_828/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_828/Sigmoid_1Sigmoid"while/lstm_cell_828/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_828/mulMul!while/lstm_cell_828/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_828/ReluRelu"while/lstm_cell_828/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_828/mul_1Mulwhile/lstm_cell_828/Sigmoid:y:0&while/lstm_cell_828/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_828/add_1AddV2while/lstm_cell_828/mul:z:0while/lstm_cell_828/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_828/Sigmoid_2Sigmoid"while/lstm_cell_828/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_828/Relu_1Reluwhile/lstm_cell_828/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_828/mul_2Mul!while/lstm_cell_828/Sigmoid_2:y:0(while/lstm_cell_828/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_828/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_828/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_828/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_828/BiasAdd/ReadVariableOp*^while/lstm_cell_828/MatMul/ReadVariableOp,^while/lstm_cell_828/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_828_biasadd_readvariableop_resource5while_lstm_cell_828_biasadd_readvariableop_resource_0"n
4while_lstm_cell_828_matmul_1_readvariableop_resource6while_lstm_cell_828_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_828_matmul_readvariableop_resource4while_lstm_cell_828_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_828/BiasAdd/ReadVariableOp*while/lstm_cell_828/BiasAdd/ReadVariableOp2V
)while/lstm_cell_828/MatMul/ReadVariableOp)while/lstm_cell_828/MatMul/ReadVariableOp2Z
+while/lstm_cell_828/MatMul_1/ReadVariableOp+while/lstm_cell_828/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_828_layer_call_and_return_conditional_losses_5007990

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
while_body_5009738
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_828_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_828_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_828_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_828_matmul_readvariableop_resource:	?G
4while_lstm_cell_828_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_828_biasadd_readvariableop_resource:	???*while/lstm_cell_828/BiasAdd/ReadVariableOp?)while/lstm_cell_828/MatMul/ReadVariableOp?+while/lstm_cell_828/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_828/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_828_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_828/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_828/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_828/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_828_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_828/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_828/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_828/addAddV2$while/lstm_cell_828/MatMul:product:0&while/lstm_cell_828/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_828/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_828_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_828/BiasAddBiasAddwhile/lstm_cell_828/add:z:02while/lstm_cell_828/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_828/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_828/splitSplit,while/lstm_cell_828/split/split_dim:output:0$while/lstm_cell_828/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_828/SigmoidSigmoid"while/lstm_cell_828/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_828/Sigmoid_1Sigmoid"while/lstm_cell_828/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_828/mulMul!while/lstm_cell_828/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_828/ReluRelu"while/lstm_cell_828/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_828/mul_1Mulwhile/lstm_cell_828/Sigmoid:y:0&while/lstm_cell_828/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_828/add_1AddV2while/lstm_cell_828/mul:z:0while/lstm_cell_828/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_828/Sigmoid_2Sigmoid"while/lstm_cell_828/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_828/Relu_1Reluwhile/lstm_cell_828/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_828/mul_2Mul!while/lstm_cell_828/Sigmoid_2:y:0(while/lstm_cell_828/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_828/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_828/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_828/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_828/BiasAdd/ReadVariableOp*^while/lstm_cell_828/MatMul/ReadVariableOp,^while/lstm_cell_828/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_828_biasadd_readvariableop_resource5while_lstm_cell_828_biasadd_readvariableop_resource_0"n
4while_lstm_cell_828_matmul_1_readvariableop_resource6while_lstm_cell_828_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_828_matmul_readvariableop_resource4while_lstm_cell_828_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_828/BiasAdd/ReadVariableOp*while/lstm_cell_828/BiasAdd/ReadVariableOp2V
)while/lstm_cell_828/MatMul/ReadVariableOp)while/lstm_cell_828/MatMul/ReadVariableOp2Z
+while/lstm_cell_828/MatMul_1/ReadVariableOp+while/lstm_cell_828/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_828_layer_call_and_return_conditional_losses_5011275
inputs_0?
,lstm_cell_828_matmul_readvariableop_resource:	?A
.lstm_cell_828_matmul_1_readvariableop_resource:	d?<
-lstm_cell_828_biasadd_readvariableop_resource:	?
identity??$lstm_cell_828/BiasAdd/ReadVariableOp?#lstm_cell_828/MatMul/ReadVariableOp?%lstm_cell_828/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_828/MatMul/ReadVariableOpReadVariableOp,lstm_cell_828_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_828/MatMulMatMulstrided_slice_2:output:0+lstm_cell_828/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_828/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_828_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_828/MatMul_1MatMulzeros:output:0-lstm_cell_828/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_828/addAddV2lstm_cell_828/MatMul:product:0 lstm_cell_828/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_828/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_828_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_828/BiasAddBiasAddlstm_cell_828/add:z:0,lstm_cell_828/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_828/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_828/splitSplit&lstm_cell_828/split/split_dim:output:0lstm_cell_828/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_828/SigmoidSigmoidlstm_cell_828/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_828/Sigmoid_1Sigmoidlstm_cell_828/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_828/mulMullstm_cell_828/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_828/ReluRelulstm_cell_828/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_828/mul_1Mullstm_cell_828/Sigmoid:y:0 lstm_cell_828/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_828/add_1AddV2lstm_cell_828/mul:z:0lstm_cell_828/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_828/Sigmoid_2Sigmoidlstm_cell_828/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_828/Relu_1Relulstm_cell_828/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_828/mul_2Mullstm_cell_828/Sigmoid_2:y:0"lstm_cell_828/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_828_matmul_readvariableop_resource.lstm_cell_828_matmul_1_readvariableop_resource-lstm_cell_828_biasadd_readvariableop_resource*
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
while_body_5011191*
condR
while_cond_5011190*K
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
NoOpNoOp%^lstm_cell_828/BiasAdd/ReadVariableOp$^lstm_cell_828/MatMul/ReadVariableOp&^lstm_cell_828/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_828/BiasAdd/ReadVariableOp$lstm_cell_828/BiasAdd/ReadVariableOp2J
#lstm_cell_828/MatMul/ReadVariableOp#lstm_cell_828/MatMul/ReadVariableOp2N
%lstm_cell_828/MatMul_1/ReadVariableOp%lstm_cell_828/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
while_cond_5009041
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5009041___redundant_placeholder05
1while_while_cond_5009041___redundant_placeholder15
1while_while_cond_5009041___redundant_placeholder25
1while_while_cond_5009041___redundant_placeholder3
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
E__inference_lstm_830_layer_call_and_return_conditional_losses_5009492

inputs>
,lstm_cell_830_matmul_readvariableop_resource:2(@
.lstm_cell_830_matmul_1_readvariableop_resource:
(;
-lstm_cell_830_biasadd_readvariableop_resource:(
identity??$lstm_cell_830/BiasAdd/ReadVariableOp?#lstm_cell_830/MatMul/ReadVariableOp?%lstm_cell_830/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_830/MatMul/ReadVariableOpReadVariableOp,lstm_cell_830_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_830/MatMulMatMulstrided_slice_2:output:0+lstm_cell_830/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_830/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_830_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_830/MatMul_1MatMulzeros:output:0-lstm_cell_830/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_830/addAddV2lstm_cell_830/MatMul:product:0 lstm_cell_830/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_830/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_830_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_830/BiasAddBiasAddlstm_cell_830/add:z:0,lstm_cell_830/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_830/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_830/splitSplit&lstm_cell_830/split/split_dim:output:0lstm_cell_830/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_830/SigmoidSigmoidlstm_cell_830/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_830/Sigmoid_1Sigmoidlstm_cell_830/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_830/mulMullstm_cell_830/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_830/ReluRelulstm_cell_830/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_830/mul_1Mullstm_cell_830/Sigmoid:y:0 lstm_cell_830/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_830/add_1AddV2lstm_cell_830/mul:z:0lstm_cell_830/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_830/Sigmoid_2Sigmoidlstm_cell_830/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_830/Relu_1Relulstm_cell_830/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_830/mul_2Mullstm_cell_830/Sigmoid_2:y:0"lstm_cell_830/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_830_matmul_readvariableop_resource.lstm_cell_830_matmul_1_readvariableop_resource-lstm_cell_830_biasadd_readvariableop_resource*
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
while_body_5009408*
condR
while_cond_5009407*K
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
NoOpNoOp%^lstm_cell_830/BiasAdd/ReadVariableOp$^lstm_cell_830/MatMul/ReadVariableOp&^lstm_cell_830/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_830/BiasAdd/ReadVariableOp$lstm_cell_830/BiasAdd/ReadVariableOp2J
#lstm_cell_830/MatMul/ReadVariableOp#lstm_cell_830/MatMul/ReadVariableOp2N
%lstm_cell_830/MatMul_1/ReadVariableOp%lstm_cell_830/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?J
?
E__inference_lstm_829_layer_call_and_return_conditional_losses_5009657

inputs?
,lstm_cell_829_matmul_readvariableop_resource:	d?A
.lstm_cell_829_matmul_1_readvariableop_resource:	2?<
-lstm_cell_829_biasadd_readvariableop_resource:	?
identity??$lstm_cell_829/BiasAdd/ReadVariableOp?#lstm_cell_829/MatMul/ReadVariableOp?%lstm_cell_829/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_829/MatMul/ReadVariableOpReadVariableOp,lstm_cell_829_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_829/MatMulMatMulstrided_slice_2:output:0+lstm_cell_829/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_829/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_829_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_829/MatMul_1MatMulzeros:output:0-lstm_cell_829/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_829/addAddV2lstm_cell_829/MatMul:product:0 lstm_cell_829/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_829/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_829_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_829/BiasAddBiasAddlstm_cell_829/add:z:0,lstm_cell_829/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_829/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_829/splitSplit&lstm_cell_829/split/split_dim:output:0lstm_cell_829/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_829/SigmoidSigmoidlstm_cell_829/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_829/Sigmoid_1Sigmoidlstm_cell_829/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_829/mulMullstm_cell_829/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_829/ReluRelulstm_cell_829/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_829/mul_1Mullstm_cell_829/Sigmoid:y:0 lstm_cell_829/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_829/add_1AddV2lstm_cell_829/mul:z:0lstm_cell_829/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_829/Sigmoid_2Sigmoidlstm_cell_829/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_829/Relu_1Relulstm_cell_829/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_829/mul_2Mullstm_cell_829/Sigmoid_2:y:0"lstm_cell_829/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_829_matmul_readvariableop_resource.lstm_cell_829_matmul_1_readvariableop_resource-lstm_cell_829_biasadd_readvariableop_resource*
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
while_body_5009573*
condR
while_cond_5009572*K
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
NoOpNoOp%^lstm_cell_829/BiasAdd/ReadVariableOp$^lstm_cell_829/MatMul/ReadVariableOp&^lstm_cell_829/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_829/BiasAdd/ReadVariableOp$lstm_cell_829/BiasAdd/ReadVariableOp2J
#lstm_cell_829/MatMul/ReadVariableOp#lstm_cell_829/MatMul/ReadVariableOp2N
%lstm_cell_829/MatMul_1/ReadVariableOp%lstm_cell_829/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
while_cond_5008891
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5008891___redundant_placeholder05
1while_while_cond_5008891___redundant_placeholder15
1while_while_cond_5008891___redundant_placeholder25
1while_while_cond_5008891___redundant_placeholder3
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
E__inference_lstm_829_layer_call_and_return_conditional_losses_5012177

inputs?
,lstm_cell_829_matmul_readvariableop_resource:	d?A
.lstm_cell_829_matmul_1_readvariableop_resource:	2?<
-lstm_cell_829_biasadd_readvariableop_resource:	?
identity??$lstm_cell_829/BiasAdd/ReadVariableOp?#lstm_cell_829/MatMul/ReadVariableOp?%lstm_cell_829/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_829/MatMul/ReadVariableOpReadVariableOp,lstm_cell_829_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_829/MatMulMatMulstrided_slice_2:output:0+lstm_cell_829/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_829/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_829_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_829/MatMul_1MatMulzeros:output:0-lstm_cell_829/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_829/addAddV2lstm_cell_829/MatMul:product:0 lstm_cell_829/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_829/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_829_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_829/BiasAddBiasAddlstm_cell_829/add:z:0,lstm_cell_829/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_829/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_829/splitSplit&lstm_cell_829/split/split_dim:output:0lstm_cell_829/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_829/SigmoidSigmoidlstm_cell_829/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_829/Sigmoid_1Sigmoidlstm_cell_829/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_829/mulMullstm_cell_829/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_829/ReluRelulstm_cell_829/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_829/mul_1Mullstm_cell_829/Sigmoid:y:0 lstm_cell_829/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_829/add_1AddV2lstm_cell_829/mul:z:0lstm_cell_829/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_829/Sigmoid_2Sigmoidlstm_cell_829/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_829/Relu_1Relulstm_cell_829/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_829/mul_2Mullstm_cell_829/Sigmoid_2:y:0"lstm_cell_829/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_829_matmul_readvariableop_resource.lstm_cell_829_matmul_1_readvariableop_resource-lstm_cell_829_biasadd_readvariableop_resource*
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
while_body_5012093*
condR
while_cond_5012092*K
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
NoOpNoOp%^lstm_cell_829/BiasAdd/ReadVariableOp$^lstm_cell_829/MatMul/ReadVariableOp&^lstm_cell_829/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_829/BiasAdd/ReadVariableOp$lstm_cell_829/BiasAdd/ReadVariableOp2J
#lstm_cell_829/MatMul/ReadVariableOp#lstm_cell_829/MatMul/ReadVariableOp2N
%lstm_cell_829/MatMul_1/ReadVariableOp%lstm_cell_829/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?#
?
while_body_5008049
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_828_5008073_0:	?0
while_lstm_cell_828_5008075_0:	d?,
while_lstm_cell_828_5008077_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_828_5008073:	?.
while_lstm_cell_828_5008075:	d?*
while_lstm_cell_828_5008077:	???+while/lstm_cell_828/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_828/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_828_5008073_0while_lstm_cell_828_5008075_0while_lstm_cell_828_5008077_0*
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
J__inference_lstm_cell_828_layer_call_and_return_conditional_losses_5007990?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_828/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_828/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_828/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_828/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_828_5008073while_lstm_cell_828_5008073_0"<
while_lstm_cell_828_5008075while_lstm_cell_828_5008075_0"<
while_lstm_cell_828_5008077while_lstm_cell_828_5008077_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_828/StatefulPartitionedCall+while/lstm_cell_828/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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

lstm_830_while_body_5010855.
*lstm_830_while_lstm_830_while_loop_counter4
0lstm_830_while_lstm_830_while_maximum_iterations
lstm_830_while_placeholder 
lstm_830_while_placeholder_1 
lstm_830_while_placeholder_2 
lstm_830_while_placeholder_3-
)lstm_830_while_lstm_830_strided_slice_1_0i
elstm_830_while_tensorarrayv2read_tensorlistgetitem_lstm_830_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_830_while_lstm_cell_830_matmul_readvariableop_resource_0:2(Q
?lstm_830_while_lstm_cell_830_matmul_1_readvariableop_resource_0:
(L
>lstm_830_while_lstm_cell_830_biasadd_readvariableop_resource_0:(
lstm_830_while_identity
lstm_830_while_identity_1
lstm_830_while_identity_2
lstm_830_while_identity_3
lstm_830_while_identity_4
lstm_830_while_identity_5+
'lstm_830_while_lstm_830_strided_slice_1g
clstm_830_while_tensorarrayv2read_tensorlistgetitem_lstm_830_tensorarrayunstack_tensorlistfromtensorM
;lstm_830_while_lstm_cell_830_matmul_readvariableop_resource:2(O
=lstm_830_while_lstm_cell_830_matmul_1_readvariableop_resource:
(J
<lstm_830_while_lstm_cell_830_biasadd_readvariableop_resource:(??3lstm_830/while/lstm_cell_830/BiasAdd/ReadVariableOp?2lstm_830/while/lstm_cell_830/MatMul/ReadVariableOp?4lstm_830/while/lstm_cell_830/MatMul_1/ReadVariableOp?
@lstm_830/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_830/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_830_while_tensorarrayv2read_tensorlistgetitem_lstm_830_tensorarrayunstack_tensorlistfromtensor_0lstm_830_while_placeholderIlstm_830/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_830/while/lstm_cell_830/MatMul/ReadVariableOpReadVariableOp=lstm_830_while_lstm_cell_830_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_830/while/lstm_cell_830/MatMulMatMul9lstm_830/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_830/while/lstm_cell_830/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_830/while/lstm_cell_830/MatMul_1/ReadVariableOpReadVariableOp?lstm_830_while_lstm_cell_830_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_830/while/lstm_cell_830/MatMul_1MatMullstm_830_while_placeholder_2<lstm_830/while/lstm_cell_830/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_830/while/lstm_cell_830/addAddV2-lstm_830/while/lstm_cell_830/MatMul:product:0/lstm_830/while/lstm_cell_830/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_830/while/lstm_cell_830/BiasAdd/ReadVariableOpReadVariableOp>lstm_830_while_lstm_cell_830_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_830/while/lstm_cell_830/BiasAddBiasAdd$lstm_830/while/lstm_cell_830/add:z:0;lstm_830/while/lstm_cell_830/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_830/while/lstm_cell_830/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_830/while/lstm_cell_830/splitSplit5lstm_830/while/lstm_cell_830/split/split_dim:output:0-lstm_830/while/lstm_cell_830/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_830/while/lstm_cell_830/SigmoidSigmoid+lstm_830/while/lstm_cell_830/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_830/while/lstm_cell_830/Sigmoid_1Sigmoid+lstm_830/while/lstm_cell_830/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_830/while/lstm_cell_830/mulMul*lstm_830/while/lstm_cell_830/Sigmoid_1:y:0lstm_830_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_830/while/lstm_cell_830/ReluRelu+lstm_830/while/lstm_cell_830/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_830/while/lstm_cell_830/mul_1Mul(lstm_830/while/lstm_cell_830/Sigmoid:y:0/lstm_830/while/lstm_cell_830/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_830/while/lstm_cell_830/add_1AddV2$lstm_830/while/lstm_cell_830/mul:z:0&lstm_830/while/lstm_cell_830/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_830/while/lstm_cell_830/Sigmoid_2Sigmoid+lstm_830/while/lstm_cell_830/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_830/while/lstm_cell_830/Relu_1Relu&lstm_830/while/lstm_cell_830/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_830/while/lstm_cell_830/mul_2Mul*lstm_830/while/lstm_cell_830/Sigmoid_2:y:01lstm_830/while/lstm_cell_830/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_830/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_830_while_placeholder_1lstm_830_while_placeholder&lstm_830/while/lstm_cell_830/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_830/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_830/while/addAddV2lstm_830_while_placeholderlstm_830/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_830/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_830/while/add_1AddV2*lstm_830_while_lstm_830_while_loop_counterlstm_830/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_830/while/IdentityIdentitylstm_830/while/add_1:z:0^lstm_830/while/NoOp*
T0*
_output_shapes
: ?
lstm_830/while/Identity_1Identity0lstm_830_while_lstm_830_while_maximum_iterations^lstm_830/while/NoOp*
T0*
_output_shapes
: t
lstm_830/while/Identity_2Identitylstm_830/while/add:z:0^lstm_830/while/NoOp*
T0*
_output_shapes
: ?
lstm_830/while/Identity_3IdentityClstm_830/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_830/while/NoOp*
T0*
_output_shapes
: ?
lstm_830/while/Identity_4Identity&lstm_830/while/lstm_cell_830/mul_2:z:0^lstm_830/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_830/while/Identity_5Identity&lstm_830/while/lstm_cell_830/add_1:z:0^lstm_830/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_830/while/NoOpNoOp4^lstm_830/while/lstm_cell_830/BiasAdd/ReadVariableOp3^lstm_830/while/lstm_cell_830/MatMul/ReadVariableOp5^lstm_830/while/lstm_cell_830/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_830_while_identity lstm_830/while/Identity:output:0"?
lstm_830_while_identity_1"lstm_830/while/Identity_1:output:0"?
lstm_830_while_identity_2"lstm_830/while/Identity_2:output:0"?
lstm_830_while_identity_3"lstm_830/while/Identity_3:output:0"?
lstm_830_while_identity_4"lstm_830/while/Identity_4:output:0"?
lstm_830_while_identity_5"lstm_830/while/Identity_5:output:0"T
'lstm_830_while_lstm_830_strided_slice_1)lstm_830_while_lstm_830_strided_slice_1_0"~
<lstm_830_while_lstm_cell_830_biasadd_readvariableop_resource>lstm_830_while_lstm_cell_830_biasadd_readvariableop_resource_0"?
=lstm_830_while_lstm_cell_830_matmul_1_readvariableop_resource?lstm_830_while_lstm_cell_830_matmul_1_readvariableop_resource_0"|
;lstm_830_while_lstm_cell_830_matmul_readvariableop_resource=lstm_830_while_lstm_cell_830_matmul_readvariableop_resource_0"?
clstm_830_while_tensorarrayv2read_tensorlistgetitem_lstm_830_tensorarrayunstack_tensorlistfromtensorelstm_830_while_tensorarrayv2read_tensorlistgetitem_lstm_830_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_830/while/lstm_cell_830/BiasAdd/ReadVariableOp3lstm_830/while/lstm_cell_830/BiasAdd/ReadVariableOp2h
2lstm_830/while/lstm_cell_830/MatMul/ReadVariableOp2lstm_830/while/lstm_cell_830/MatMul/ReadVariableOp2l
4lstm_830/while/lstm_cell_830/MatMul_1/ReadVariableOp4lstm_830/while/lstm_cell_830/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_828_layer_call_fn_5010978

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
E__inference_lstm_828_layer_call_and_return_conditional_losses_5008976s
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
*__inference_lstm_828_layer_call_fn_5010967
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
E__inference_lstm_828_layer_call_and_return_conditional_losses_5008118|
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
while_body_5012280
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_830_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_830_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_830_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_830_matmul_readvariableop_resource:2(F
4while_lstm_cell_830_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_830_biasadd_readvariableop_resource:(??*while/lstm_cell_830/BiasAdd/ReadVariableOp?)while/lstm_cell_830/MatMul/ReadVariableOp?+while/lstm_cell_830/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_830/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_830_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_830/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_830/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_830/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_830_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_830/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_830/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_830/addAddV2$while/lstm_cell_830/MatMul:product:0&while/lstm_cell_830/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_830/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_830_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_830/BiasAddBiasAddwhile/lstm_cell_830/add:z:02while/lstm_cell_830/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_830/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_830/splitSplit,while/lstm_cell_830/split/split_dim:output:0$while/lstm_cell_830/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_830/SigmoidSigmoid"while/lstm_cell_830/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_830/Sigmoid_1Sigmoid"while/lstm_cell_830/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_830/mulMul!while/lstm_cell_830/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_830/ReluRelu"while/lstm_cell_830/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_830/mul_1Mulwhile/lstm_cell_830/Sigmoid:y:0&while/lstm_cell_830/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_830/add_1AddV2while/lstm_cell_830/mul:z:0while/lstm_cell_830/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_830/Sigmoid_2Sigmoid"while/lstm_cell_830/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_830/Relu_1Reluwhile/lstm_cell_830/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_830/mul_2Mul!while/lstm_cell_830/Sigmoid_2:y:0(while/lstm_cell_830/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_830/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_830/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_830/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_830/BiasAdd/ReadVariableOp*^while/lstm_cell_830/MatMul/ReadVariableOp,^while/lstm_cell_830/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_830_biasadd_readvariableop_resource5while_lstm_cell_830_biasadd_readvariableop_resource_0"n
4while_lstm_cell_830_matmul_1_readvariableop_resource6while_lstm_cell_830_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_830_matmul_readvariableop_resource4while_lstm_cell_830_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_830/BiasAdd/ReadVariableOp*while/lstm_cell_830/BiasAdd/ReadVariableOp2V
)while/lstm_cell_830/MatMul/ReadVariableOp)while/lstm_cell_830/MatMul/ReadVariableOp2Z
+while/lstm_cell_830/MatMul_1/ReadVariableOp+while/lstm_cell_830/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_830_layer_call_and_return_conditional_losses_5013106

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
while_cond_5009572
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5009572___redundant_placeholder05
1while_while_cond_5009572___redundant_placeholder15
1while_while_cond_5009572___redundant_placeholder25
1while_while_cond_5009572___redundant_placeholder3
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
?
?
K__inference_sequential_276_layer_call_and_return_conditional_losses_5009301

inputs#
lstm_828_5008977:	?#
lstm_828_5008979:	d?
lstm_828_5008981:	?#
lstm_829_5009127:	d?#
lstm_829_5009129:	2?
lstm_829_5009131:	?"
lstm_830_5009277:2("
lstm_830_5009279:
(
lstm_830_5009281:(#
dense_276_5009295:

dense_276_5009297:
identity??!dense_276/StatefulPartitionedCall? lstm_828/StatefulPartitionedCall? lstm_829/StatefulPartitionedCall? lstm_830/StatefulPartitionedCall?
 lstm_828/StatefulPartitionedCallStatefulPartitionedCallinputslstm_828_5008977lstm_828_5008979lstm_828_5008981*
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
E__inference_lstm_828_layer_call_and_return_conditional_losses_5008976?
 lstm_829/StatefulPartitionedCallStatefulPartitionedCall)lstm_828/StatefulPartitionedCall:output:0lstm_829_5009127lstm_829_5009129lstm_829_5009131*
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
E__inference_lstm_829_layer_call_and_return_conditional_losses_5009126?
 lstm_830/StatefulPartitionedCallStatefulPartitionedCall)lstm_829/StatefulPartitionedCall:output:0lstm_830_5009277lstm_830_5009279lstm_830_5009281*
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
E__inference_lstm_830_layer_call_and_return_conditional_losses_5009276?
!dense_276/StatefulPartitionedCallStatefulPartitionedCall)lstm_830/StatefulPartitionedCall:output:0dense_276_5009295dense_276_5009297*
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
F__inference_dense_276_layer_call_and_return_conditional_losses_5009294y
IdentityIdentity*dense_276/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_276/StatefulPartitionedCall!^lstm_828/StatefulPartitionedCall!^lstm_829/StatefulPartitionedCall!^lstm_830/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_276/StatefulPartitionedCall!dense_276/StatefulPartitionedCall2D
 lstm_828/StatefulPartitionedCall lstm_828/StatefulPartitionedCall2D
 lstm_829/StatefulPartitionedCall lstm_829/StatefulPartitionedCall2D
 lstm_830/StatefulPartitionedCall lstm_830/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?T
?
*sequential_276_lstm_828_while_body_5007409L
Hsequential_276_lstm_828_while_sequential_276_lstm_828_while_loop_counterR
Nsequential_276_lstm_828_while_sequential_276_lstm_828_while_maximum_iterations-
)sequential_276_lstm_828_while_placeholder/
+sequential_276_lstm_828_while_placeholder_1/
+sequential_276_lstm_828_while_placeholder_2/
+sequential_276_lstm_828_while_placeholder_3K
Gsequential_276_lstm_828_while_sequential_276_lstm_828_strided_slice_1_0?
?sequential_276_lstm_828_while_tensorarrayv2read_tensorlistgetitem_sequential_276_lstm_828_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_276_lstm_828_while_lstm_cell_828_matmul_readvariableop_resource_0:	?a
Nsequential_276_lstm_828_while_lstm_cell_828_matmul_1_readvariableop_resource_0:	d?\
Msequential_276_lstm_828_while_lstm_cell_828_biasadd_readvariableop_resource_0:	?*
&sequential_276_lstm_828_while_identity,
(sequential_276_lstm_828_while_identity_1,
(sequential_276_lstm_828_while_identity_2,
(sequential_276_lstm_828_while_identity_3,
(sequential_276_lstm_828_while_identity_4,
(sequential_276_lstm_828_while_identity_5I
Esequential_276_lstm_828_while_sequential_276_lstm_828_strided_slice_1?
?sequential_276_lstm_828_while_tensorarrayv2read_tensorlistgetitem_sequential_276_lstm_828_tensorarrayunstack_tensorlistfromtensor]
Jsequential_276_lstm_828_while_lstm_cell_828_matmul_readvariableop_resource:	?_
Lsequential_276_lstm_828_while_lstm_cell_828_matmul_1_readvariableop_resource:	d?Z
Ksequential_276_lstm_828_while_lstm_cell_828_biasadd_readvariableop_resource:	???Bsequential_276/lstm_828/while/lstm_cell_828/BiasAdd/ReadVariableOp?Asequential_276/lstm_828/while/lstm_cell_828/MatMul/ReadVariableOp?Csequential_276/lstm_828/while/lstm_cell_828/MatMul_1/ReadVariableOp?
Osequential_276/lstm_828/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
Asequential_276/lstm_828/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_276_lstm_828_while_tensorarrayv2read_tensorlistgetitem_sequential_276_lstm_828_tensorarrayunstack_tensorlistfromtensor_0)sequential_276_lstm_828_while_placeholderXsequential_276/lstm_828/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
Asequential_276/lstm_828/while/lstm_cell_828/MatMul/ReadVariableOpReadVariableOpLsequential_276_lstm_828_while_lstm_cell_828_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
2sequential_276/lstm_828/while/lstm_cell_828/MatMulMatMulHsequential_276/lstm_828/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_276/lstm_828/while/lstm_cell_828/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_276/lstm_828/while/lstm_cell_828/MatMul_1/ReadVariableOpReadVariableOpNsequential_276_lstm_828_while_lstm_cell_828_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
4sequential_276/lstm_828/while/lstm_cell_828/MatMul_1MatMul+sequential_276_lstm_828_while_placeholder_2Ksequential_276/lstm_828/while/lstm_cell_828/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_276/lstm_828/while/lstm_cell_828/addAddV2<sequential_276/lstm_828/while/lstm_cell_828/MatMul:product:0>sequential_276/lstm_828/while/lstm_cell_828/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_276/lstm_828/while/lstm_cell_828/BiasAdd/ReadVariableOpReadVariableOpMsequential_276_lstm_828_while_lstm_cell_828_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_276/lstm_828/while/lstm_cell_828/BiasAddBiasAdd3sequential_276/lstm_828/while/lstm_cell_828/add:z:0Jsequential_276/lstm_828/while/lstm_cell_828/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_276/lstm_828/while/lstm_cell_828/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_276/lstm_828/while/lstm_cell_828/splitSplitDsequential_276/lstm_828/while/lstm_cell_828/split/split_dim:output:0<sequential_276/lstm_828/while/lstm_cell_828/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
3sequential_276/lstm_828/while/lstm_cell_828/SigmoidSigmoid:sequential_276/lstm_828/while/lstm_cell_828/split:output:0*
T0*'
_output_shapes
:?????????d?
5sequential_276/lstm_828/while/lstm_cell_828/Sigmoid_1Sigmoid:sequential_276/lstm_828/while/lstm_cell_828/split:output:1*
T0*'
_output_shapes
:?????????d?
/sequential_276/lstm_828/while/lstm_cell_828/mulMul9sequential_276/lstm_828/while/lstm_cell_828/Sigmoid_1:y:0+sequential_276_lstm_828_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
0sequential_276/lstm_828/while/lstm_cell_828/ReluRelu:sequential_276/lstm_828/while/lstm_cell_828/split:output:2*
T0*'
_output_shapes
:?????????d?
1sequential_276/lstm_828/while/lstm_cell_828/mul_1Mul7sequential_276/lstm_828/while/lstm_cell_828/Sigmoid:y:0>sequential_276/lstm_828/while/lstm_cell_828/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
1sequential_276/lstm_828/while/lstm_cell_828/add_1AddV23sequential_276/lstm_828/while/lstm_cell_828/mul:z:05sequential_276/lstm_828/while/lstm_cell_828/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
5sequential_276/lstm_828/while/lstm_cell_828/Sigmoid_2Sigmoid:sequential_276/lstm_828/while/lstm_cell_828/split:output:3*
T0*'
_output_shapes
:?????????d?
2sequential_276/lstm_828/while/lstm_cell_828/Relu_1Relu5sequential_276/lstm_828/while/lstm_cell_828/add_1:z:0*
T0*'
_output_shapes
:?????????d?
1sequential_276/lstm_828/while/lstm_cell_828/mul_2Mul9sequential_276/lstm_828/while/lstm_cell_828/Sigmoid_2:y:0@sequential_276/lstm_828/while/lstm_cell_828/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
Bsequential_276/lstm_828/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_276_lstm_828_while_placeholder_1)sequential_276_lstm_828_while_placeholder5sequential_276/lstm_828/while/lstm_cell_828/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_276/lstm_828/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_276/lstm_828/while/addAddV2)sequential_276_lstm_828_while_placeholder,sequential_276/lstm_828/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_276/lstm_828/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_276/lstm_828/while/add_1AddV2Hsequential_276_lstm_828_while_sequential_276_lstm_828_while_loop_counter.sequential_276/lstm_828/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_276/lstm_828/while/IdentityIdentity'sequential_276/lstm_828/while/add_1:z:0#^sequential_276/lstm_828/while/NoOp*
T0*
_output_shapes
: ?
(sequential_276/lstm_828/while/Identity_1IdentityNsequential_276_lstm_828_while_sequential_276_lstm_828_while_maximum_iterations#^sequential_276/lstm_828/while/NoOp*
T0*
_output_shapes
: ?
(sequential_276/lstm_828/while/Identity_2Identity%sequential_276/lstm_828/while/add:z:0#^sequential_276/lstm_828/while/NoOp*
T0*
_output_shapes
: ?
(sequential_276/lstm_828/while/Identity_3IdentityRsequential_276/lstm_828/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_276/lstm_828/while/NoOp*
T0*
_output_shapes
: ?
(sequential_276/lstm_828/while/Identity_4Identity5sequential_276/lstm_828/while/lstm_cell_828/mul_2:z:0#^sequential_276/lstm_828/while/NoOp*
T0*'
_output_shapes
:?????????d?
(sequential_276/lstm_828/while/Identity_5Identity5sequential_276/lstm_828/while/lstm_cell_828/add_1:z:0#^sequential_276/lstm_828/while/NoOp*
T0*'
_output_shapes
:?????????d?
"sequential_276/lstm_828/while/NoOpNoOpC^sequential_276/lstm_828/while/lstm_cell_828/BiasAdd/ReadVariableOpB^sequential_276/lstm_828/while/lstm_cell_828/MatMul/ReadVariableOpD^sequential_276/lstm_828/while/lstm_cell_828/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_276_lstm_828_while_identity/sequential_276/lstm_828/while/Identity:output:0"]
(sequential_276_lstm_828_while_identity_11sequential_276/lstm_828/while/Identity_1:output:0"]
(sequential_276_lstm_828_while_identity_21sequential_276/lstm_828/while/Identity_2:output:0"]
(sequential_276_lstm_828_while_identity_31sequential_276/lstm_828/while/Identity_3:output:0"]
(sequential_276_lstm_828_while_identity_41sequential_276/lstm_828/while/Identity_4:output:0"]
(sequential_276_lstm_828_while_identity_51sequential_276/lstm_828/while/Identity_5:output:0"?
Ksequential_276_lstm_828_while_lstm_cell_828_biasadd_readvariableop_resourceMsequential_276_lstm_828_while_lstm_cell_828_biasadd_readvariableop_resource_0"?
Lsequential_276_lstm_828_while_lstm_cell_828_matmul_1_readvariableop_resourceNsequential_276_lstm_828_while_lstm_cell_828_matmul_1_readvariableop_resource_0"?
Jsequential_276_lstm_828_while_lstm_cell_828_matmul_readvariableop_resourceLsequential_276_lstm_828_while_lstm_cell_828_matmul_readvariableop_resource_0"?
Esequential_276_lstm_828_while_sequential_276_lstm_828_strided_slice_1Gsequential_276_lstm_828_while_sequential_276_lstm_828_strided_slice_1_0"?
?sequential_276_lstm_828_while_tensorarrayv2read_tensorlistgetitem_sequential_276_lstm_828_tensorarrayunstack_tensorlistfromtensor?sequential_276_lstm_828_while_tensorarrayv2read_tensorlistgetitem_sequential_276_lstm_828_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2?
Bsequential_276/lstm_828/while/lstm_cell_828/BiasAdd/ReadVariableOpBsequential_276/lstm_828/while/lstm_cell_828/BiasAdd/ReadVariableOp2?
Asequential_276/lstm_828/while/lstm_cell_828/MatMul/ReadVariableOpAsequential_276/lstm_828/while/lstm_cell_828/MatMul/ReadVariableOp2?
Csequential_276/lstm_828/while/lstm_cell_828/MatMul_1/ReadVariableOpCsequential_276/lstm_828/while/lstm_cell_828/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_5009191
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5009191___redundant_placeholder05
1while_while_cond_5009191___redundant_placeholder15
1while_while_cond_5009191___redundant_placeholder25
1while_while_cond_5009191___redundant_placeholder3
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
?K
?
E__inference_lstm_828_layer_call_and_return_conditional_losses_5011132
inputs_0?
,lstm_cell_828_matmul_readvariableop_resource:	?A
.lstm_cell_828_matmul_1_readvariableop_resource:	d?<
-lstm_cell_828_biasadd_readvariableop_resource:	?
identity??$lstm_cell_828/BiasAdd/ReadVariableOp?#lstm_cell_828/MatMul/ReadVariableOp?%lstm_cell_828/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_828/MatMul/ReadVariableOpReadVariableOp,lstm_cell_828_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_828/MatMulMatMulstrided_slice_2:output:0+lstm_cell_828/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_828/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_828_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_828/MatMul_1MatMulzeros:output:0-lstm_cell_828/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_828/addAddV2lstm_cell_828/MatMul:product:0 lstm_cell_828/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_828/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_828_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_828/BiasAddBiasAddlstm_cell_828/add:z:0,lstm_cell_828/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_828/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_828/splitSplit&lstm_cell_828/split/split_dim:output:0lstm_cell_828/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_828/SigmoidSigmoidlstm_cell_828/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_828/Sigmoid_1Sigmoidlstm_cell_828/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_828/mulMullstm_cell_828/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_828/ReluRelulstm_cell_828/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_828/mul_1Mullstm_cell_828/Sigmoid:y:0 lstm_cell_828/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_828/add_1AddV2lstm_cell_828/mul:z:0lstm_cell_828/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_828/Sigmoid_2Sigmoidlstm_cell_828/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_828/Relu_1Relulstm_cell_828/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_828/mul_2Mullstm_cell_828/Sigmoid_2:y:0"lstm_cell_828/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_828_matmul_readvariableop_resource.lstm_cell_828_matmul_1_readvariableop_resource-lstm_cell_828_biasadd_readvariableop_resource*
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
while_body_5011048*
condR
while_cond_5011047*K
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
NoOpNoOp%^lstm_cell_828/BiasAdd/ReadVariableOp$^lstm_cell_828/MatMul/ReadVariableOp&^lstm_cell_828/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_828/BiasAdd/ReadVariableOp$lstm_cell_828/BiasAdd/ReadVariableOp2J
#lstm_cell_828/MatMul/ReadVariableOp#lstm_cell_828/MatMul/ReadVariableOp2N
%lstm_cell_828/MatMul_1/ReadVariableOp%lstm_cell_828/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?8
?
while_body_5012566
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_830_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_830_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_830_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_830_matmul_readvariableop_resource:2(F
4while_lstm_cell_830_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_830_biasadd_readvariableop_resource:(??*while/lstm_cell_830/BiasAdd/ReadVariableOp?)while/lstm_cell_830/MatMul/ReadVariableOp?+while/lstm_cell_830/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_830/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_830_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_830/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_830/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_830/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_830_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_830/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_830/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_830/addAddV2$while/lstm_cell_830/MatMul:product:0&while/lstm_cell_830/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_830/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_830_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_830/BiasAddBiasAddwhile/lstm_cell_830/add:z:02while/lstm_cell_830/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_830/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_830/splitSplit,while/lstm_cell_830/split/split_dim:output:0$while/lstm_cell_830/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_830/SigmoidSigmoid"while/lstm_cell_830/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_830/Sigmoid_1Sigmoid"while/lstm_cell_830/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_830/mulMul!while/lstm_cell_830/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_830/ReluRelu"while/lstm_cell_830/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_830/mul_1Mulwhile/lstm_cell_830/Sigmoid:y:0&while/lstm_cell_830/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_830/add_1AddV2while/lstm_cell_830/mul:z:0while/lstm_cell_830/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_830/Sigmoid_2Sigmoid"while/lstm_cell_830/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_830/Relu_1Reluwhile/lstm_cell_830/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_830/mul_2Mul!while/lstm_cell_830/Sigmoid_2:y:0(while/lstm_cell_830/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_830/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_830/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_830/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_830/BiasAdd/ReadVariableOp*^while/lstm_cell_830/MatMul/ReadVariableOp,^while/lstm_cell_830/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_830_biasadd_readvariableop_resource5while_lstm_cell_830_biasadd_readvariableop_resource_0"n
4while_lstm_cell_830_matmul_1_readvariableop_resource6while_lstm_cell_830_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_830_matmul_readvariableop_resource4while_lstm_cell_830_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_830/BiasAdd/ReadVariableOp*while/lstm_cell_830/BiasAdd/ReadVariableOp2V
)while/lstm_cell_830/MatMul/ReadVariableOp)while/lstm_cell_830/MatMul/ReadVariableOp2Z
+while/lstm_cell_830/MatMul_1/ReadVariableOp+while/lstm_cell_830/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_828_layer_call_fn_5012829

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
J__inference_lstm_cell_828_layer_call_and_return_conditional_losses_5007844o
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
?J
?
E__inference_lstm_828_layer_call_and_return_conditional_losses_5011418

inputs?
,lstm_cell_828_matmul_readvariableop_resource:	?A
.lstm_cell_828_matmul_1_readvariableop_resource:	d?<
-lstm_cell_828_biasadd_readvariableop_resource:	?
identity??$lstm_cell_828/BiasAdd/ReadVariableOp?#lstm_cell_828/MatMul/ReadVariableOp?%lstm_cell_828/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_828/MatMul/ReadVariableOpReadVariableOp,lstm_cell_828_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_828/MatMulMatMulstrided_slice_2:output:0+lstm_cell_828/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_828/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_828_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_828/MatMul_1MatMulzeros:output:0-lstm_cell_828/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_828/addAddV2lstm_cell_828/MatMul:product:0 lstm_cell_828/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_828/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_828_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_828/BiasAddBiasAddlstm_cell_828/add:z:0,lstm_cell_828/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_828/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_828/splitSplit&lstm_cell_828/split/split_dim:output:0lstm_cell_828/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_828/SigmoidSigmoidlstm_cell_828/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_828/Sigmoid_1Sigmoidlstm_cell_828/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_828/mulMullstm_cell_828/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_828/ReluRelulstm_cell_828/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_828/mul_1Mullstm_cell_828/Sigmoid:y:0 lstm_cell_828/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_828/add_1AddV2lstm_cell_828/mul:z:0lstm_cell_828/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_828/Sigmoid_2Sigmoidlstm_cell_828/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_828/Relu_1Relulstm_cell_828/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_828/mul_2Mullstm_cell_828/Sigmoid_2:y:0"lstm_cell_828/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_828_matmul_readvariableop_resource.lstm_cell_828_matmul_1_readvariableop_resource-lstm_cell_828_biasadd_readvariableop_resource*
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
while_body_5011334*
condR
while_cond_5011333*K
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
NoOpNoOp%^lstm_cell_828/BiasAdd/ReadVariableOp$^lstm_cell_828/MatMul/ReadVariableOp&^lstm_cell_828/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_828/BiasAdd/ReadVariableOp$lstm_cell_828/BiasAdd/ReadVariableOp2J
#lstm_cell_828/MatMul/ReadVariableOp#lstm_cell_828/MatMul/ReadVariableOp2N
%lstm_cell_828/MatMul_1/ReadVariableOp%lstm_cell_828/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
while_body_5011664
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_829_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_829_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_829_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_829_matmul_readvariableop_resource:	d?G
4while_lstm_cell_829_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_829_biasadd_readvariableop_resource:	???*while/lstm_cell_829/BiasAdd/ReadVariableOp?)while/lstm_cell_829/MatMul/ReadVariableOp?+while/lstm_cell_829/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_829/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_829_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_829/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_829/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_829/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_829_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_829/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_829/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_829/addAddV2$while/lstm_cell_829/MatMul:product:0&while/lstm_cell_829/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_829/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_829_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_829/BiasAddBiasAddwhile/lstm_cell_829/add:z:02while/lstm_cell_829/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_829/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_829/splitSplit,while/lstm_cell_829/split/split_dim:output:0$while/lstm_cell_829/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_829/SigmoidSigmoid"while/lstm_cell_829/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_829/Sigmoid_1Sigmoid"while/lstm_cell_829/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_829/mulMul!while/lstm_cell_829/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_829/ReluRelu"while/lstm_cell_829/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_829/mul_1Mulwhile/lstm_cell_829/Sigmoid:y:0&while/lstm_cell_829/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_829/add_1AddV2while/lstm_cell_829/mul:z:0while/lstm_cell_829/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_829/Sigmoid_2Sigmoid"while/lstm_cell_829/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_829/Relu_1Reluwhile/lstm_cell_829/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_829/mul_2Mul!while/lstm_cell_829/Sigmoid_2:y:0(while/lstm_cell_829/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_829/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_829/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_829/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_829/BiasAdd/ReadVariableOp*^while/lstm_cell_829/MatMul/ReadVariableOp,^while/lstm_cell_829/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_829_biasadd_readvariableop_resource5while_lstm_cell_829_biasadd_readvariableop_resource_0"n
4while_lstm_cell_829_matmul_1_readvariableop_resource6while_lstm_cell_829_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_829_matmul_readvariableop_resource4while_lstm_cell_829_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_829/BiasAdd/ReadVariableOp*while/lstm_cell_829/BiasAdd/ReadVariableOp2V
)while/lstm_cell_829/MatMul/ReadVariableOp)while/lstm_cell_829/MatMul/ReadVariableOp2Z
+while/lstm_cell_829/MatMul_1/ReadVariableOp+while/lstm_cell_829/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_829_layer_call_fn_5011583
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
E__inference_lstm_829_layer_call_and_return_conditional_losses_5008468|
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
?T
?
*sequential_276_lstm_830_while_body_5007687L
Hsequential_276_lstm_830_while_sequential_276_lstm_830_while_loop_counterR
Nsequential_276_lstm_830_while_sequential_276_lstm_830_while_maximum_iterations-
)sequential_276_lstm_830_while_placeholder/
+sequential_276_lstm_830_while_placeholder_1/
+sequential_276_lstm_830_while_placeholder_2/
+sequential_276_lstm_830_while_placeholder_3K
Gsequential_276_lstm_830_while_sequential_276_lstm_830_strided_slice_1_0?
?sequential_276_lstm_830_while_tensorarrayv2read_tensorlistgetitem_sequential_276_lstm_830_tensorarrayunstack_tensorlistfromtensor_0^
Lsequential_276_lstm_830_while_lstm_cell_830_matmul_readvariableop_resource_0:2(`
Nsequential_276_lstm_830_while_lstm_cell_830_matmul_1_readvariableop_resource_0:
([
Msequential_276_lstm_830_while_lstm_cell_830_biasadd_readvariableop_resource_0:(*
&sequential_276_lstm_830_while_identity,
(sequential_276_lstm_830_while_identity_1,
(sequential_276_lstm_830_while_identity_2,
(sequential_276_lstm_830_while_identity_3,
(sequential_276_lstm_830_while_identity_4,
(sequential_276_lstm_830_while_identity_5I
Esequential_276_lstm_830_while_sequential_276_lstm_830_strided_slice_1?
?sequential_276_lstm_830_while_tensorarrayv2read_tensorlistgetitem_sequential_276_lstm_830_tensorarrayunstack_tensorlistfromtensor\
Jsequential_276_lstm_830_while_lstm_cell_830_matmul_readvariableop_resource:2(^
Lsequential_276_lstm_830_while_lstm_cell_830_matmul_1_readvariableop_resource:
(Y
Ksequential_276_lstm_830_while_lstm_cell_830_biasadd_readvariableop_resource:(??Bsequential_276/lstm_830/while/lstm_cell_830/BiasAdd/ReadVariableOp?Asequential_276/lstm_830/while/lstm_cell_830/MatMul/ReadVariableOp?Csequential_276/lstm_830/while/lstm_cell_830/MatMul_1/ReadVariableOp?
Osequential_276/lstm_830/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
Asequential_276/lstm_830/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_276_lstm_830_while_tensorarrayv2read_tensorlistgetitem_sequential_276_lstm_830_tensorarrayunstack_tensorlistfromtensor_0)sequential_276_lstm_830_while_placeholderXsequential_276/lstm_830/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
Asequential_276/lstm_830/while/lstm_cell_830/MatMul/ReadVariableOpReadVariableOpLsequential_276_lstm_830_while_lstm_cell_830_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
2sequential_276/lstm_830/while/lstm_cell_830/MatMulMatMulHsequential_276/lstm_830/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_276/lstm_830/while/lstm_cell_830/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
Csequential_276/lstm_830/while/lstm_cell_830/MatMul_1/ReadVariableOpReadVariableOpNsequential_276_lstm_830_while_lstm_cell_830_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
4sequential_276/lstm_830/while/lstm_cell_830/MatMul_1MatMul+sequential_276_lstm_830_while_placeholder_2Ksequential_276/lstm_830/while/lstm_cell_830/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
/sequential_276/lstm_830/while/lstm_cell_830/addAddV2<sequential_276/lstm_830/while/lstm_cell_830/MatMul:product:0>sequential_276/lstm_830/while/lstm_cell_830/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
Bsequential_276/lstm_830/while/lstm_cell_830/BiasAdd/ReadVariableOpReadVariableOpMsequential_276_lstm_830_while_lstm_cell_830_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
3sequential_276/lstm_830/while/lstm_cell_830/BiasAddBiasAdd3sequential_276/lstm_830/while/lstm_cell_830/add:z:0Jsequential_276/lstm_830/while/lstm_cell_830/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(}
;sequential_276/lstm_830/while/lstm_cell_830/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_276/lstm_830/while/lstm_cell_830/splitSplitDsequential_276/lstm_830/while/lstm_cell_830/split/split_dim:output:0<sequential_276/lstm_830/while/lstm_cell_830/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
3sequential_276/lstm_830/while/lstm_cell_830/SigmoidSigmoid:sequential_276/lstm_830/while/lstm_cell_830/split:output:0*
T0*'
_output_shapes
:?????????
?
5sequential_276/lstm_830/while/lstm_cell_830/Sigmoid_1Sigmoid:sequential_276/lstm_830/while/lstm_cell_830/split:output:1*
T0*'
_output_shapes
:?????????
?
/sequential_276/lstm_830/while/lstm_cell_830/mulMul9sequential_276/lstm_830/while/lstm_cell_830/Sigmoid_1:y:0+sequential_276_lstm_830_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
0sequential_276/lstm_830/while/lstm_cell_830/ReluRelu:sequential_276/lstm_830/while/lstm_cell_830/split:output:2*
T0*'
_output_shapes
:?????????
?
1sequential_276/lstm_830/while/lstm_cell_830/mul_1Mul7sequential_276/lstm_830/while/lstm_cell_830/Sigmoid:y:0>sequential_276/lstm_830/while/lstm_cell_830/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
1sequential_276/lstm_830/while/lstm_cell_830/add_1AddV23sequential_276/lstm_830/while/lstm_cell_830/mul:z:05sequential_276/lstm_830/while/lstm_cell_830/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
5sequential_276/lstm_830/while/lstm_cell_830/Sigmoid_2Sigmoid:sequential_276/lstm_830/while/lstm_cell_830/split:output:3*
T0*'
_output_shapes
:?????????
?
2sequential_276/lstm_830/while/lstm_cell_830/Relu_1Relu5sequential_276/lstm_830/while/lstm_cell_830/add_1:z:0*
T0*'
_output_shapes
:?????????
?
1sequential_276/lstm_830/while/lstm_cell_830/mul_2Mul9sequential_276/lstm_830/while/lstm_cell_830/Sigmoid_2:y:0@sequential_276/lstm_830/while/lstm_cell_830/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
Bsequential_276/lstm_830/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_276_lstm_830_while_placeholder_1)sequential_276_lstm_830_while_placeholder5sequential_276/lstm_830/while/lstm_cell_830/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_276/lstm_830/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_276/lstm_830/while/addAddV2)sequential_276_lstm_830_while_placeholder,sequential_276/lstm_830/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_276/lstm_830/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_276/lstm_830/while/add_1AddV2Hsequential_276_lstm_830_while_sequential_276_lstm_830_while_loop_counter.sequential_276/lstm_830/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_276/lstm_830/while/IdentityIdentity'sequential_276/lstm_830/while/add_1:z:0#^sequential_276/lstm_830/while/NoOp*
T0*
_output_shapes
: ?
(sequential_276/lstm_830/while/Identity_1IdentityNsequential_276_lstm_830_while_sequential_276_lstm_830_while_maximum_iterations#^sequential_276/lstm_830/while/NoOp*
T0*
_output_shapes
: ?
(sequential_276/lstm_830/while/Identity_2Identity%sequential_276/lstm_830/while/add:z:0#^sequential_276/lstm_830/while/NoOp*
T0*
_output_shapes
: ?
(sequential_276/lstm_830/while/Identity_3IdentityRsequential_276/lstm_830/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_276/lstm_830/while/NoOp*
T0*
_output_shapes
: ?
(sequential_276/lstm_830/while/Identity_4Identity5sequential_276/lstm_830/while/lstm_cell_830/mul_2:z:0#^sequential_276/lstm_830/while/NoOp*
T0*'
_output_shapes
:?????????
?
(sequential_276/lstm_830/while/Identity_5Identity5sequential_276/lstm_830/while/lstm_cell_830/add_1:z:0#^sequential_276/lstm_830/while/NoOp*
T0*'
_output_shapes
:?????????
?
"sequential_276/lstm_830/while/NoOpNoOpC^sequential_276/lstm_830/while/lstm_cell_830/BiasAdd/ReadVariableOpB^sequential_276/lstm_830/while/lstm_cell_830/MatMul/ReadVariableOpD^sequential_276/lstm_830/while/lstm_cell_830/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_276_lstm_830_while_identity/sequential_276/lstm_830/while/Identity:output:0"]
(sequential_276_lstm_830_while_identity_11sequential_276/lstm_830/while/Identity_1:output:0"]
(sequential_276_lstm_830_while_identity_21sequential_276/lstm_830/while/Identity_2:output:0"]
(sequential_276_lstm_830_while_identity_31sequential_276/lstm_830/while/Identity_3:output:0"]
(sequential_276_lstm_830_while_identity_41sequential_276/lstm_830/while/Identity_4:output:0"]
(sequential_276_lstm_830_while_identity_51sequential_276/lstm_830/while/Identity_5:output:0"?
Ksequential_276_lstm_830_while_lstm_cell_830_biasadd_readvariableop_resourceMsequential_276_lstm_830_while_lstm_cell_830_biasadd_readvariableop_resource_0"?
Lsequential_276_lstm_830_while_lstm_cell_830_matmul_1_readvariableop_resourceNsequential_276_lstm_830_while_lstm_cell_830_matmul_1_readvariableop_resource_0"?
Jsequential_276_lstm_830_while_lstm_cell_830_matmul_readvariableop_resourceLsequential_276_lstm_830_while_lstm_cell_830_matmul_readvariableop_resource_0"?
Esequential_276_lstm_830_while_sequential_276_lstm_830_strided_slice_1Gsequential_276_lstm_830_while_sequential_276_lstm_830_strided_slice_1_0"?
?sequential_276_lstm_830_while_tensorarrayv2read_tensorlistgetitem_sequential_276_lstm_830_tensorarrayunstack_tensorlistfromtensor?sequential_276_lstm_830_while_tensorarrayv2read_tensorlistgetitem_sequential_276_lstm_830_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2?
Bsequential_276/lstm_830/while/lstm_cell_830/BiasAdd/ReadVariableOpBsequential_276/lstm_830/while/lstm_cell_830/BiasAdd/ReadVariableOp2?
Asequential_276/lstm_830/while/lstm_cell_830/MatMul/ReadVariableOpAsequential_276/lstm_830/while/lstm_cell_830/MatMul/ReadVariableOp2?
Csequential_276/lstm_830/while/lstm_cell_830/MatMul_1/ReadVariableOpCsequential_276/lstm_830/while/lstm_cell_830/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_5011333
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5011333___redundant_placeholder05
1while_while_cond_5011333___redundant_placeholder15
1while_while_cond_5011333___redundant_placeholder25
1while_while_cond_5011333___redundant_placeholder3
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
while_cond_5011476
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5011476___redundant_placeholder05
1while_while_cond_5011476___redundant_placeholder15
1while_while_cond_5011476___redundant_placeholder25
1while_while_cond_5011476___redundant_placeholder3
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
while_body_5011334
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_828_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_828_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_828_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_828_matmul_readvariableop_resource:	?G
4while_lstm_cell_828_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_828_biasadd_readvariableop_resource:	???*while/lstm_cell_828/BiasAdd/ReadVariableOp?)while/lstm_cell_828/MatMul/ReadVariableOp?+while/lstm_cell_828/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_828/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_828_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_828/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_828/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_828/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_828_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_828/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_828/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_828/addAddV2$while/lstm_cell_828/MatMul:product:0&while/lstm_cell_828/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_828/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_828_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_828/BiasAddBiasAddwhile/lstm_cell_828/add:z:02while/lstm_cell_828/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_828/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_828/splitSplit,while/lstm_cell_828/split/split_dim:output:0$while/lstm_cell_828/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_828/SigmoidSigmoid"while/lstm_cell_828/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_828/Sigmoid_1Sigmoid"while/lstm_cell_828/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_828/mulMul!while/lstm_cell_828/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_828/ReluRelu"while/lstm_cell_828/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_828/mul_1Mulwhile/lstm_cell_828/Sigmoid:y:0&while/lstm_cell_828/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_828/add_1AddV2while/lstm_cell_828/mul:z:0while/lstm_cell_828/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_828/Sigmoid_2Sigmoid"while/lstm_cell_828/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_828/Relu_1Reluwhile/lstm_cell_828/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_828/mul_2Mul!while/lstm_cell_828/Sigmoid_2:y:0(while/lstm_cell_828/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_828/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_828/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_828/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_828/BiasAdd/ReadVariableOp*^while/lstm_cell_828/MatMul/ReadVariableOp,^while/lstm_cell_828/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_828_biasadd_readvariableop_resource5while_lstm_cell_828_biasadd_readvariableop_resource_0"n
4while_lstm_cell_828_matmul_1_readvariableop_resource6while_lstm_cell_828_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_828_matmul_readvariableop_resource4while_lstm_cell_828_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_828/BiasAdd/ReadVariableOp*while/lstm_cell_828/BiasAdd/ReadVariableOp2V
)while/lstm_cell_828/MatMul/ReadVariableOp)while/lstm_cell_828/MatMul/ReadVariableOp2Z
+while/lstm_cell_828/MatMul_1/ReadVariableOp+while/lstm_cell_828/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_830_layer_call_fn_5012221

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
E__inference_lstm_830_layer_call_and_return_conditional_losses_5009492o
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
?T
?
*sequential_276_lstm_829_while_body_5007548L
Hsequential_276_lstm_829_while_sequential_276_lstm_829_while_loop_counterR
Nsequential_276_lstm_829_while_sequential_276_lstm_829_while_maximum_iterations-
)sequential_276_lstm_829_while_placeholder/
+sequential_276_lstm_829_while_placeholder_1/
+sequential_276_lstm_829_while_placeholder_2/
+sequential_276_lstm_829_while_placeholder_3K
Gsequential_276_lstm_829_while_sequential_276_lstm_829_strided_slice_1_0?
?sequential_276_lstm_829_while_tensorarrayv2read_tensorlistgetitem_sequential_276_lstm_829_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_276_lstm_829_while_lstm_cell_829_matmul_readvariableop_resource_0:	d?a
Nsequential_276_lstm_829_while_lstm_cell_829_matmul_1_readvariableop_resource_0:	2?\
Msequential_276_lstm_829_while_lstm_cell_829_biasadd_readvariableop_resource_0:	?*
&sequential_276_lstm_829_while_identity,
(sequential_276_lstm_829_while_identity_1,
(sequential_276_lstm_829_while_identity_2,
(sequential_276_lstm_829_while_identity_3,
(sequential_276_lstm_829_while_identity_4,
(sequential_276_lstm_829_while_identity_5I
Esequential_276_lstm_829_while_sequential_276_lstm_829_strided_slice_1?
?sequential_276_lstm_829_while_tensorarrayv2read_tensorlistgetitem_sequential_276_lstm_829_tensorarrayunstack_tensorlistfromtensor]
Jsequential_276_lstm_829_while_lstm_cell_829_matmul_readvariableop_resource:	d?_
Lsequential_276_lstm_829_while_lstm_cell_829_matmul_1_readvariableop_resource:	2?Z
Ksequential_276_lstm_829_while_lstm_cell_829_biasadd_readvariableop_resource:	???Bsequential_276/lstm_829/while/lstm_cell_829/BiasAdd/ReadVariableOp?Asequential_276/lstm_829/while/lstm_cell_829/MatMul/ReadVariableOp?Csequential_276/lstm_829/while/lstm_cell_829/MatMul_1/ReadVariableOp?
Osequential_276/lstm_829/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
Asequential_276/lstm_829/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_276_lstm_829_while_tensorarrayv2read_tensorlistgetitem_sequential_276_lstm_829_tensorarrayunstack_tensorlistfromtensor_0)sequential_276_lstm_829_while_placeholderXsequential_276/lstm_829/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
Asequential_276/lstm_829/while/lstm_cell_829/MatMul/ReadVariableOpReadVariableOpLsequential_276_lstm_829_while_lstm_cell_829_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
2sequential_276/lstm_829/while/lstm_cell_829/MatMulMatMulHsequential_276/lstm_829/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_276/lstm_829/while/lstm_cell_829/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_276/lstm_829/while/lstm_cell_829/MatMul_1/ReadVariableOpReadVariableOpNsequential_276_lstm_829_while_lstm_cell_829_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
4sequential_276/lstm_829/while/lstm_cell_829/MatMul_1MatMul+sequential_276_lstm_829_while_placeholder_2Ksequential_276/lstm_829/while/lstm_cell_829/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_276/lstm_829/while/lstm_cell_829/addAddV2<sequential_276/lstm_829/while/lstm_cell_829/MatMul:product:0>sequential_276/lstm_829/while/lstm_cell_829/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_276/lstm_829/while/lstm_cell_829/BiasAdd/ReadVariableOpReadVariableOpMsequential_276_lstm_829_while_lstm_cell_829_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_276/lstm_829/while/lstm_cell_829/BiasAddBiasAdd3sequential_276/lstm_829/while/lstm_cell_829/add:z:0Jsequential_276/lstm_829/while/lstm_cell_829/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_276/lstm_829/while/lstm_cell_829/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_276/lstm_829/while/lstm_cell_829/splitSplitDsequential_276/lstm_829/while/lstm_cell_829/split/split_dim:output:0<sequential_276/lstm_829/while/lstm_cell_829/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
3sequential_276/lstm_829/while/lstm_cell_829/SigmoidSigmoid:sequential_276/lstm_829/while/lstm_cell_829/split:output:0*
T0*'
_output_shapes
:?????????2?
5sequential_276/lstm_829/while/lstm_cell_829/Sigmoid_1Sigmoid:sequential_276/lstm_829/while/lstm_cell_829/split:output:1*
T0*'
_output_shapes
:?????????2?
/sequential_276/lstm_829/while/lstm_cell_829/mulMul9sequential_276/lstm_829/while/lstm_cell_829/Sigmoid_1:y:0+sequential_276_lstm_829_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
0sequential_276/lstm_829/while/lstm_cell_829/ReluRelu:sequential_276/lstm_829/while/lstm_cell_829/split:output:2*
T0*'
_output_shapes
:?????????2?
1sequential_276/lstm_829/while/lstm_cell_829/mul_1Mul7sequential_276/lstm_829/while/lstm_cell_829/Sigmoid:y:0>sequential_276/lstm_829/while/lstm_cell_829/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
1sequential_276/lstm_829/while/lstm_cell_829/add_1AddV23sequential_276/lstm_829/while/lstm_cell_829/mul:z:05sequential_276/lstm_829/while/lstm_cell_829/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
5sequential_276/lstm_829/while/lstm_cell_829/Sigmoid_2Sigmoid:sequential_276/lstm_829/while/lstm_cell_829/split:output:3*
T0*'
_output_shapes
:?????????2?
2sequential_276/lstm_829/while/lstm_cell_829/Relu_1Relu5sequential_276/lstm_829/while/lstm_cell_829/add_1:z:0*
T0*'
_output_shapes
:?????????2?
1sequential_276/lstm_829/while/lstm_cell_829/mul_2Mul9sequential_276/lstm_829/while/lstm_cell_829/Sigmoid_2:y:0@sequential_276/lstm_829/while/lstm_cell_829/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
Bsequential_276/lstm_829/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_276_lstm_829_while_placeholder_1)sequential_276_lstm_829_while_placeholder5sequential_276/lstm_829/while/lstm_cell_829/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_276/lstm_829/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_276/lstm_829/while/addAddV2)sequential_276_lstm_829_while_placeholder,sequential_276/lstm_829/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_276/lstm_829/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_276/lstm_829/while/add_1AddV2Hsequential_276_lstm_829_while_sequential_276_lstm_829_while_loop_counter.sequential_276/lstm_829/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_276/lstm_829/while/IdentityIdentity'sequential_276/lstm_829/while/add_1:z:0#^sequential_276/lstm_829/while/NoOp*
T0*
_output_shapes
: ?
(sequential_276/lstm_829/while/Identity_1IdentityNsequential_276_lstm_829_while_sequential_276_lstm_829_while_maximum_iterations#^sequential_276/lstm_829/while/NoOp*
T0*
_output_shapes
: ?
(sequential_276/lstm_829/while/Identity_2Identity%sequential_276/lstm_829/while/add:z:0#^sequential_276/lstm_829/while/NoOp*
T0*
_output_shapes
: ?
(sequential_276/lstm_829/while/Identity_3IdentityRsequential_276/lstm_829/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_276/lstm_829/while/NoOp*
T0*
_output_shapes
: ?
(sequential_276/lstm_829/while/Identity_4Identity5sequential_276/lstm_829/while/lstm_cell_829/mul_2:z:0#^sequential_276/lstm_829/while/NoOp*
T0*'
_output_shapes
:?????????2?
(sequential_276/lstm_829/while/Identity_5Identity5sequential_276/lstm_829/while/lstm_cell_829/add_1:z:0#^sequential_276/lstm_829/while/NoOp*
T0*'
_output_shapes
:?????????2?
"sequential_276/lstm_829/while/NoOpNoOpC^sequential_276/lstm_829/while/lstm_cell_829/BiasAdd/ReadVariableOpB^sequential_276/lstm_829/while/lstm_cell_829/MatMul/ReadVariableOpD^sequential_276/lstm_829/while/lstm_cell_829/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_276_lstm_829_while_identity/sequential_276/lstm_829/while/Identity:output:0"]
(sequential_276_lstm_829_while_identity_11sequential_276/lstm_829/while/Identity_1:output:0"]
(sequential_276_lstm_829_while_identity_21sequential_276/lstm_829/while/Identity_2:output:0"]
(sequential_276_lstm_829_while_identity_31sequential_276/lstm_829/while/Identity_3:output:0"]
(sequential_276_lstm_829_while_identity_41sequential_276/lstm_829/while/Identity_4:output:0"]
(sequential_276_lstm_829_while_identity_51sequential_276/lstm_829/while/Identity_5:output:0"?
Ksequential_276_lstm_829_while_lstm_cell_829_biasadd_readvariableop_resourceMsequential_276_lstm_829_while_lstm_cell_829_biasadd_readvariableop_resource_0"?
Lsequential_276_lstm_829_while_lstm_cell_829_matmul_1_readvariableop_resourceNsequential_276_lstm_829_while_lstm_cell_829_matmul_1_readvariableop_resource_0"?
Jsequential_276_lstm_829_while_lstm_cell_829_matmul_readvariableop_resourceLsequential_276_lstm_829_while_lstm_cell_829_matmul_readvariableop_resource_0"?
Esequential_276_lstm_829_while_sequential_276_lstm_829_strided_slice_1Gsequential_276_lstm_829_while_sequential_276_lstm_829_strided_slice_1_0"?
?sequential_276_lstm_829_while_tensorarrayv2read_tensorlistgetitem_sequential_276_lstm_829_tensorarrayunstack_tensorlistfromtensor?sequential_276_lstm_829_while_tensorarrayv2read_tensorlistgetitem_sequential_276_lstm_829_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2?
Bsequential_276/lstm_829/while/lstm_cell_829/BiasAdd/ReadVariableOpBsequential_276/lstm_829/while/lstm_cell_829/BiasAdd/ReadVariableOp2?
Asequential_276/lstm_829/while/lstm_cell_829/MatMul/ReadVariableOpAsequential_276/lstm_829/while/lstm_cell_829/MatMul/ReadVariableOp2?
Csequential_276/lstm_829/while/lstm_cell_829/MatMul_1/ReadVariableOpCsequential_276/lstm_829/while/lstm_cell_829/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_5008399
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_829_5008423_0:	d?0
while_lstm_cell_829_5008425_0:	2?,
while_lstm_cell_829_5008427_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_829_5008423:	d?.
while_lstm_cell_829_5008425:	2?*
while_lstm_cell_829_5008427:	???+while/lstm_cell_829/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_829/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_829_5008423_0while_lstm_cell_829_5008425_0while_lstm_cell_829_5008427_0*
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
J__inference_lstm_cell_829_layer_call_and_return_conditional_losses_5008340?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_829/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_829/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_829/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_829/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_829_5008423while_lstm_cell_829_5008423_0"<
while_lstm_cell_829_5008425while_lstm_cell_829_5008425_0"<
while_lstm_cell_829_5008427while_lstm_cell_829_5008427_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_829/StatefulPartitionedCall+while/lstm_cell_829/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_cond_5011949
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5011949___redundant_placeholder05
1while_while_cond_5011949___redundant_placeholder15
1while_while_cond_5011949___redundant_placeholder25
1while_while_cond_5011949___redundant_placeholder3
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
0__inference_sequential_276_layer_call_fn_5009326
lstm_828_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_828_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_276_layer_call_and_return_conditional_losses_5009301o
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
_user_specified_namelstm_828_input
?
?
while_cond_5009737
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5009737___redundant_placeholder05
1while_while_cond_5009737___redundant_placeholder15
1while_while_cond_5009737___redundant_placeholder25
1while_while_cond_5009737___redundant_placeholder3
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
E__inference_lstm_830_layer_call_and_return_conditional_losses_5009276

inputs>
,lstm_cell_830_matmul_readvariableop_resource:2(@
.lstm_cell_830_matmul_1_readvariableop_resource:
(;
-lstm_cell_830_biasadd_readvariableop_resource:(
identity??$lstm_cell_830/BiasAdd/ReadVariableOp?#lstm_cell_830/MatMul/ReadVariableOp?%lstm_cell_830/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_830/MatMul/ReadVariableOpReadVariableOp,lstm_cell_830_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_830/MatMulMatMulstrided_slice_2:output:0+lstm_cell_830/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_830/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_830_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_830/MatMul_1MatMulzeros:output:0-lstm_cell_830/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_830/addAddV2lstm_cell_830/MatMul:product:0 lstm_cell_830/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_830/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_830_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_830/BiasAddBiasAddlstm_cell_830/add:z:0,lstm_cell_830/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_830/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_830/splitSplit&lstm_cell_830/split/split_dim:output:0lstm_cell_830/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_830/SigmoidSigmoidlstm_cell_830/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_830/Sigmoid_1Sigmoidlstm_cell_830/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_830/mulMullstm_cell_830/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_830/ReluRelulstm_cell_830/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_830/mul_1Mullstm_cell_830/Sigmoid:y:0 lstm_cell_830/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_830/add_1AddV2lstm_cell_830/mul:z:0lstm_cell_830/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_830/Sigmoid_2Sigmoidlstm_cell_830/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_830/Relu_1Relulstm_cell_830/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_830/mul_2Mullstm_cell_830/Sigmoid_2:y:0"lstm_cell_830/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_830_matmul_readvariableop_resource.lstm_cell_830_matmul_1_readvariableop_resource-lstm_cell_830_biasadd_readvariableop_resource*
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
while_body_5009192*
condR
while_cond_5009191*K
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
NoOpNoOp%^lstm_cell_830/BiasAdd/ReadVariableOp$^lstm_cell_830/MatMul/ReadVariableOp&^lstm_cell_830/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_830/BiasAdd/ReadVariableOp$lstm_cell_830/BiasAdd/ReadVariableOp2J
#lstm_cell_830/MatMul/ReadVariableOp#lstm_cell_830/MatMul/ReadVariableOp2N
%lstm_cell_830/MatMul_1/ReadVariableOp%lstm_cell_830/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
*__inference_lstm_829_layer_call_fn_5011572
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
E__inference_lstm_829_layer_call_and_return_conditional_losses_5008277|
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
while_body_5008558
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_830_5008582_0:2(/
while_lstm_cell_830_5008584_0:
(+
while_lstm_cell_830_5008586_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_830_5008582:2(-
while_lstm_cell_830_5008584:
()
while_lstm_cell_830_5008586:(??+while/lstm_cell_830/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_830/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_830_5008582_0while_lstm_cell_830_5008584_0while_lstm_cell_830_5008586_0*
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
J__inference_lstm_cell_830_layer_call_and_return_conditional_losses_5008544?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_830/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_830/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_830/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_830/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_830_5008582while_lstm_cell_830_5008582_0"<
while_lstm_cell_830_5008584while_lstm_cell_830_5008584_0"<
while_lstm_cell_830_5008586while_lstm_cell_830_5008586_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_830/StatefulPartitionedCall+while/lstm_cell_830/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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

lstm_829_while_body_5010289.
*lstm_829_while_lstm_829_while_loop_counter4
0lstm_829_while_lstm_829_while_maximum_iterations
lstm_829_while_placeholder 
lstm_829_while_placeholder_1 
lstm_829_while_placeholder_2 
lstm_829_while_placeholder_3-
)lstm_829_while_lstm_829_strided_slice_1_0i
elstm_829_while_tensorarrayv2read_tensorlistgetitem_lstm_829_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_829_while_lstm_cell_829_matmul_readvariableop_resource_0:	d?R
?lstm_829_while_lstm_cell_829_matmul_1_readvariableop_resource_0:	2?M
>lstm_829_while_lstm_cell_829_biasadd_readvariableop_resource_0:	?
lstm_829_while_identity
lstm_829_while_identity_1
lstm_829_while_identity_2
lstm_829_while_identity_3
lstm_829_while_identity_4
lstm_829_while_identity_5+
'lstm_829_while_lstm_829_strided_slice_1g
clstm_829_while_tensorarrayv2read_tensorlistgetitem_lstm_829_tensorarrayunstack_tensorlistfromtensorN
;lstm_829_while_lstm_cell_829_matmul_readvariableop_resource:	d?P
=lstm_829_while_lstm_cell_829_matmul_1_readvariableop_resource:	2?K
<lstm_829_while_lstm_cell_829_biasadd_readvariableop_resource:	???3lstm_829/while/lstm_cell_829/BiasAdd/ReadVariableOp?2lstm_829/while/lstm_cell_829/MatMul/ReadVariableOp?4lstm_829/while/lstm_cell_829/MatMul_1/ReadVariableOp?
@lstm_829/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_829/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_829_while_tensorarrayv2read_tensorlistgetitem_lstm_829_tensorarrayunstack_tensorlistfromtensor_0lstm_829_while_placeholderIlstm_829/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_829/while/lstm_cell_829/MatMul/ReadVariableOpReadVariableOp=lstm_829_while_lstm_cell_829_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_829/while/lstm_cell_829/MatMulMatMul9lstm_829/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_829/while/lstm_cell_829/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_829/while/lstm_cell_829/MatMul_1/ReadVariableOpReadVariableOp?lstm_829_while_lstm_cell_829_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_829/while/lstm_cell_829/MatMul_1MatMullstm_829_while_placeholder_2<lstm_829/while/lstm_cell_829/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_829/while/lstm_cell_829/addAddV2-lstm_829/while/lstm_cell_829/MatMul:product:0/lstm_829/while/lstm_cell_829/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_829/while/lstm_cell_829/BiasAdd/ReadVariableOpReadVariableOp>lstm_829_while_lstm_cell_829_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_829/while/lstm_cell_829/BiasAddBiasAdd$lstm_829/while/lstm_cell_829/add:z:0;lstm_829/while/lstm_cell_829/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_829/while/lstm_cell_829/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_829/while/lstm_cell_829/splitSplit5lstm_829/while/lstm_cell_829/split/split_dim:output:0-lstm_829/while/lstm_cell_829/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_829/while/lstm_cell_829/SigmoidSigmoid+lstm_829/while/lstm_cell_829/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_829/while/lstm_cell_829/Sigmoid_1Sigmoid+lstm_829/while/lstm_cell_829/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_829/while/lstm_cell_829/mulMul*lstm_829/while/lstm_cell_829/Sigmoid_1:y:0lstm_829_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_829/while/lstm_cell_829/ReluRelu+lstm_829/while/lstm_cell_829/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_829/while/lstm_cell_829/mul_1Mul(lstm_829/while/lstm_cell_829/Sigmoid:y:0/lstm_829/while/lstm_cell_829/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_829/while/lstm_cell_829/add_1AddV2$lstm_829/while/lstm_cell_829/mul:z:0&lstm_829/while/lstm_cell_829/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_829/while/lstm_cell_829/Sigmoid_2Sigmoid+lstm_829/while/lstm_cell_829/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_829/while/lstm_cell_829/Relu_1Relu&lstm_829/while/lstm_cell_829/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_829/while/lstm_cell_829/mul_2Mul*lstm_829/while/lstm_cell_829/Sigmoid_2:y:01lstm_829/while/lstm_cell_829/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_829/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_829_while_placeholder_1lstm_829_while_placeholder&lstm_829/while/lstm_cell_829/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_829/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_829/while/addAddV2lstm_829_while_placeholderlstm_829/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_829/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_829/while/add_1AddV2*lstm_829_while_lstm_829_while_loop_counterlstm_829/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_829/while/IdentityIdentitylstm_829/while/add_1:z:0^lstm_829/while/NoOp*
T0*
_output_shapes
: ?
lstm_829/while/Identity_1Identity0lstm_829_while_lstm_829_while_maximum_iterations^lstm_829/while/NoOp*
T0*
_output_shapes
: t
lstm_829/while/Identity_2Identitylstm_829/while/add:z:0^lstm_829/while/NoOp*
T0*
_output_shapes
: ?
lstm_829/while/Identity_3IdentityClstm_829/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_829/while/NoOp*
T0*
_output_shapes
: ?
lstm_829/while/Identity_4Identity&lstm_829/while/lstm_cell_829/mul_2:z:0^lstm_829/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_829/while/Identity_5Identity&lstm_829/while/lstm_cell_829/add_1:z:0^lstm_829/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_829/while/NoOpNoOp4^lstm_829/while/lstm_cell_829/BiasAdd/ReadVariableOp3^lstm_829/while/lstm_cell_829/MatMul/ReadVariableOp5^lstm_829/while/lstm_cell_829/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_829_while_identity lstm_829/while/Identity:output:0"?
lstm_829_while_identity_1"lstm_829/while/Identity_1:output:0"?
lstm_829_while_identity_2"lstm_829/while/Identity_2:output:0"?
lstm_829_while_identity_3"lstm_829/while/Identity_3:output:0"?
lstm_829_while_identity_4"lstm_829/while/Identity_4:output:0"?
lstm_829_while_identity_5"lstm_829/while/Identity_5:output:0"T
'lstm_829_while_lstm_829_strided_slice_1)lstm_829_while_lstm_829_strided_slice_1_0"~
<lstm_829_while_lstm_cell_829_biasadd_readvariableop_resource>lstm_829_while_lstm_cell_829_biasadd_readvariableop_resource_0"?
=lstm_829_while_lstm_cell_829_matmul_1_readvariableop_resource?lstm_829_while_lstm_cell_829_matmul_1_readvariableop_resource_0"|
;lstm_829_while_lstm_cell_829_matmul_readvariableop_resource=lstm_829_while_lstm_cell_829_matmul_readvariableop_resource_0"?
clstm_829_while_tensorarrayv2read_tensorlistgetitem_lstm_829_tensorarrayunstack_tensorlistfromtensorelstm_829_while_tensorarrayv2read_tensorlistgetitem_lstm_829_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_829/while/lstm_cell_829/BiasAdd/ReadVariableOp3lstm_829/while/lstm_cell_829/BiasAdd/ReadVariableOp2h
2lstm_829/while/lstm_cell_829/MatMul/ReadVariableOp2lstm_829/while/lstm_cell_829/MatMul/ReadVariableOp2l
4lstm_829/while/lstm_cell_829/MatMul_1/ReadVariableOp4lstm_829/while/lstm_cell_829/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_828_layer_call_fn_5010989

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
E__inference_lstm_828_layer_call_and_return_conditional_losses_5009822s
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
while_cond_5008048
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5008048___redundant_placeholder05
1while_while_cond_5008048___redundant_placeholder15
1while_while_cond_5008048___redundant_placeholder25
1while_while_cond_5008048___redundant_placeholder3
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
0__inference_sequential_276_layer_call_fn_5010064

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
K__inference_sequential_276_layer_call_and_return_conditional_losses_5009301o
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
%__inference_signature_wrapper_5010037
lstm_828_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_828_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
"__inference__wrapped_model_5007777o
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
_user_specified_namelstm_828_input
?

?
lstm_830_while_cond_5010854.
*lstm_830_while_lstm_830_while_loop_counter4
0lstm_830_while_lstm_830_while_maximum_iterations
lstm_830_while_placeholder 
lstm_830_while_placeholder_1 
lstm_830_while_placeholder_2 
lstm_830_while_placeholder_30
,lstm_830_while_less_lstm_830_strided_slice_1G
Clstm_830_while_lstm_830_while_cond_5010854___redundant_placeholder0G
Clstm_830_while_lstm_830_while_cond_5010854___redundant_placeholder1G
Clstm_830_while_lstm_830_while_cond_5010854___redundant_placeholder2G
Clstm_830_while_lstm_830_while_cond_5010854___redundant_placeholder3
lstm_830_while_identity
?
lstm_830/while/LessLesslstm_830_while_placeholder,lstm_830_while_less_lstm_830_strided_slice_1*
T0*
_output_shapes
: ]
lstm_830/while/IdentityIdentitylstm_830/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_830_while_identity lstm_830/while/Identity:output:0*(
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
while_body_5009192
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_830_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_830_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_830_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_830_matmul_readvariableop_resource:2(F
4while_lstm_cell_830_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_830_biasadd_readvariableop_resource:(??*while/lstm_cell_830/BiasAdd/ReadVariableOp?)while/lstm_cell_830/MatMul/ReadVariableOp?+while/lstm_cell_830/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_830/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_830_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_830/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_830/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_830/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_830_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_830/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_830/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_830/addAddV2$while/lstm_cell_830/MatMul:product:0&while/lstm_cell_830/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_830/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_830_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_830/BiasAddBiasAddwhile/lstm_cell_830/add:z:02while/lstm_cell_830/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_830/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_830/splitSplit,while/lstm_cell_830/split/split_dim:output:0$while/lstm_cell_830/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_830/SigmoidSigmoid"while/lstm_cell_830/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_830/Sigmoid_1Sigmoid"while/lstm_cell_830/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_830/mulMul!while/lstm_cell_830/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_830/ReluRelu"while/lstm_cell_830/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_830/mul_1Mulwhile/lstm_cell_830/Sigmoid:y:0&while/lstm_cell_830/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_830/add_1AddV2while/lstm_cell_830/mul:z:0while/lstm_cell_830/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_830/Sigmoid_2Sigmoid"while/lstm_cell_830/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_830/Relu_1Reluwhile/lstm_cell_830/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_830/mul_2Mul!while/lstm_cell_830/Sigmoid_2:y:0(while/lstm_cell_830/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_830/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_830/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_830/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_830/BiasAdd/ReadVariableOp*^while/lstm_cell_830/MatMul/ReadVariableOp,^while/lstm_cell_830/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_830_biasadd_readvariableop_resource5while_lstm_cell_830_biasadd_readvariableop_resource_0"n
4while_lstm_cell_830_matmul_1_readvariableop_resource6while_lstm_cell_830_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_830_matmul_readvariableop_resource4while_lstm_cell_830_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_830/BiasAdd/ReadVariableOp*while/lstm_cell_830/BiasAdd/ReadVariableOp2V
)while/lstm_cell_830/MatMul/ReadVariableOp)while/lstm_cell_830/MatMul/ReadVariableOp2Z
+while/lstm_cell_830/MatMul_1/ReadVariableOp+while/lstm_cell_830/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
K__inference_sequential_276_layer_call_and_return_conditional_losses_5010945

inputsH
5lstm_828_lstm_cell_828_matmul_readvariableop_resource:	?J
7lstm_828_lstm_cell_828_matmul_1_readvariableop_resource:	d?E
6lstm_828_lstm_cell_828_biasadd_readvariableop_resource:	?H
5lstm_829_lstm_cell_829_matmul_readvariableop_resource:	d?J
7lstm_829_lstm_cell_829_matmul_1_readvariableop_resource:	2?E
6lstm_829_lstm_cell_829_biasadd_readvariableop_resource:	?G
5lstm_830_lstm_cell_830_matmul_readvariableop_resource:2(I
7lstm_830_lstm_cell_830_matmul_1_readvariableop_resource:
(D
6lstm_830_lstm_cell_830_biasadd_readvariableop_resource:(:
(dense_276_matmul_readvariableop_resource:
7
)dense_276_biasadd_readvariableop_resource:
identity?? dense_276/BiasAdd/ReadVariableOp?dense_276/MatMul/ReadVariableOp?-lstm_828/lstm_cell_828/BiasAdd/ReadVariableOp?,lstm_828/lstm_cell_828/MatMul/ReadVariableOp?.lstm_828/lstm_cell_828/MatMul_1/ReadVariableOp?lstm_828/while?-lstm_829/lstm_cell_829/BiasAdd/ReadVariableOp?,lstm_829/lstm_cell_829/MatMul/ReadVariableOp?.lstm_829/lstm_cell_829/MatMul_1/ReadVariableOp?lstm_829/while?-lstm_830/lstm_cell_830/BiasAdd/ReadVariableOp?,lstm_830/lstm_cell_830/MatMul/ReadVariableOp?.lstm_830/lstm_cell_830/MatMul_1/ReadVariableOp?lstm_830/whileD
lstm_828/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_828/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_828/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_828/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_828/strided_sliceStridedSlicelstm_828/Shape:output:0%lstm_828/strided_slice/stack:output:0'lstm_828/strided_slice/stack_1:output:0'lstm_828/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_828/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_828/zeros/packedPacklstm_828/strided_slice:output:0 lstm_828/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_828/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_828/zerosFilllstm_828/zeros/packed:output:0lstm_828/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_828/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_828/zeros_1/packedPacklstm_828/strided_slice:output:0"lstm_828/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_828/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_828/zeros_1Fill lstm_828/zeros_1/packed:output:0lstm_828/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_828/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_828/transpose	Transposeinputs lstm_828/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_828/Shape_1Shapelstm_828/transpose:y:0*
T0*
_output_shapes
:h
lstm_828/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_828/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_828/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_828/strided_slice_1StridedSlicelstm_828/Shape_1:output:0'lstm_828/strided_slice_1/stack:output:0)lstm_828/strided_slice_1/stack_1:output:0)lstm_828/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_828/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_828/TensorArrayV2TensorListReserve-lstm_828/TensorArrayV2/element_shape:output:0!lstm_828/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_828/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_828/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_828/transpose:y:0Glstm_828/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_828/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_828/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_828/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_828/strided_slice_2StridedSlicelstm_828/transpose:y:0'lstm_828/strided_slice_2/stack:output:0)lstm_828/strided_slice_2/stack_1:output:0)lstm_828/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_828/lstm_cell_828/MatMul/ReadVariableOpReadVariableOp5lstm_828_lstm_cell_828_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_828/lstm_cell_828/MatMulMatMul!lstm_828/strided_slice_2:output:04lstm_828/lstm_cell_828/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_828/lstm_cell_828/MatMul_1/ReadVariableOpReadVariableOp7lstm_828_lstm_cell_828_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_828/lstm_cell_828/MatMul_1MatMullstm_828/zeros:output:06lstm_828/lstm_cell_828/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_828/lstm_cell_828/addAddV2'lstm_828/lstm_cell_828/MatMul:product:0)lstm_828/lstm_cell_828/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_828/lstm_cell_828/BiasAdd/ReadVariableOpReadVariableOp6lstm_828_lstm_cell_828_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_828/lstm_cell_828/BiasAddBiasAddlstm_828/lstm_cell_828/add:z:05lstm_828/lstm_cell_828/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_828/lstm_cell_828/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_828/lstm_cell_828/splitSplit/lstm_828/lstm_cell_828/split/split_dim:output:0'lstm_828/lstm_cell_828/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_828/lstm_cell_828/SigmoidSigmoid%lstm_828/lstm_cell_828/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_828/lstm_cell_828/Sigmoid_1Sigmoid%lstm_828/lstm_cell_828/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_828/lstm_cell_828/mulMul$lstm_828/lstm_cell_828/Sigmoid_1:y:0lstm_828/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_828/lstm_cell_828/ReluRelu%lstm_828/lstm_cell_828/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_828/lstm_cell_828/mul_1Mul"lstm_828/lstm_cell_828/Sigmoid:y:0)lstm_828/lstm_cell_828/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_828/lstm_cell_828/add_1AddV2lstm_828/lstm_cell_828/mul:z:0 lstm_828/lstm_cell_828/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_828/lstm_cell_828/Sigmoid_2Sigmoid%lstm_828/lstm_cell_828/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_828/lstm_cell_828/Relu_1Relu lstm_828/lstm_cell_828/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_828/lstm_cell_828/mul_2Mul$lstm_828/lstm_cell_828/Sigmoid_2:y:0+lstm_828/lstm_cell_828/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_828/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_828/TensorArrayV2_1TensorListReserve/lstm_828/TensorArrayV2_1/element_shape:output:0!lstm_828/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_828/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_828/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_828/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_828/whileWhile$lstm_828/while/loop_counter:output:0*lstm_828/while/maximum_iterations:output:0lstm_828/time:output:0!lstm_828/TensorArrayV2_1:handle:0lstm_828/zeros:output:0lstm_828/zeros_1:output:0!lstm_828/strided_slice_1:output:0@lstm_828/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_828_lstm_cell_828_matmul_readvariableop_resource7lstm_828_lstm_cell_828_matmul_1_readvariableop_resource6lstm_828_lstm_cell_828_biasadd_readvariableop_resource*
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
lstm_828_while_body_5010577*'
condR
lstm_828_while_cond_5010576*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_828/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_828/TensorArrayV2Stack/TensorListStackTensorListStacklstm_828/while:output:3Blstm_828/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_828/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_828/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_828/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_828/strided_slice_3StridedSlice4lstm_828/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_828/strided_slice_3/stack:output:0)lstm_828/strided_slice_3/stack_1:output:0)lstm_828/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_828/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_828/transpose_1	Transpose4lstm_828/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_828/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_828/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_829/ShapeShapelstm_828/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_829/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_829/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_829/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_829/strided_sliceStridedSlicelstm_829/Shape:output:0%lstm_829/strided_slice/stack:output:0'lstm_829/strided_slice/stack_1:output:0'lstm_829/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_829/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_829/zeros/packedPacklstm_829/strided_slice:output:0 lstm_829/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_829/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_829/zerosFilllstm_829/zeros/packed:output:0lstm_829/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_829/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_829/zeros_1/packedPacklstm_829/strided_slice:output:0"lstm_829/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_829/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_829/zeros_1Fill lstm_829/zeros_1/packed:output:0lstm_829/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_829/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_829/transpose	Transposelstm_828/transpose_1:y:0 lstm_829/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_829/Shape_1Shapelstm_829/transpose:y:0*
T0*
_output_shapes
:h
lstm_829/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_829/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_829/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_829/strided_slice_1StridedSlicelstm_829/Shape_1:output:0'lstm_829/strided_slice_1/stack:output:0)lstm_829/strided_slice_1/stack_1:output:0)lstm_829/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_829/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_829/TensorArrayV2TensorListReserve-lstm_829/TensorArrayV2/element_shape:output:0!lstm_829/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_829/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_829/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_829/transpose:y:0Glstm_829/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_829/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_829/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_829/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_829/strided_slice_2StridedSlicelstm_829/transpose:y:0'lstm_829/strided_slice_2/stack:output:0)lstm_829/strided_slice_2/stack_1:output:0)lstm_829/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_829/lstm_cell_829/MatMul/ReadVariableOpReadVariableOp5lstm_829_lstm_cell_829_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_829/lstm_cell_829/MatMulMatMul!lstm_829/strided_slice_2:output:04lstm_829/lstm_cell_829/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_829/lstm_cell_829/MatMul_1/ReadVariableOpReadVariableOp7lstm_829_lstm_cell_829_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_829/lstm_cell_829/MatMul_1MatMullstm_829/zeros:output:06lstm_829/lstm_cell_829/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_829/lstm_cell_829/addAddV2'lstm_829/lstm_cell_829/MatMul:product:0)lstm_829/lstm_cell_829/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_829/lstm_cell_829/BiasAdd/ReadVariableOpReadVariableOp6lstm_829_lstm_cell_829_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_829/lstm_cell_829/BiasAddBiasAddlstm_829/lstm_cell_829/add:z:05lstm_829/lstm_cell_829/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_829/lstm_cell_829/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_829/lstm_cell_829/splitSplit/lstm_829/lstm_cell_829/split/split_dim:output:0'lstm_829/lstm_cell_829/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_829/lstm_cell_829/SigmoidSigmoid%lstm_829/lstm_cell_829/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_829/lstm_cell_829/Sigmoid_1Sigmoid%lstm_829/lstm_cell_829/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_829/lstm_cell_829/mulMul$lstm_829/lstm_cell_829/Sigmoid_1:y:0lstm_829/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_829/lstm_cell_829/ReluRelu%lstm_829/lstm_cell_829/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_829/lstm_cell_829/mul_1Mul"lstm_829/lstm_cell_829/Sigmoid:y:0)lstm_829/lstm_cell_829/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_829/lstm_cell_829/add_1AddV2lstm_829/lstm_cell_829/mul:z:0 lstm_829/lstm_cell_829/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_829/lstm_cell_829/Sigmoid_2Sigmoid%lstm_829/lstm_cell_829/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_829/lstm_cell_829/Relu_1Relu lstm_829/lstm_cell_829/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_829/lstm_cell_829/mul_2Mul$lstm_829/lstm_cell_829/Sigmoid_2:y:0+lstm_829/lstm_cell_829/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_829/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_829/TensorArrayV2_1TensorListReserve/lstm_829/TensorArrayV2_1/element_shape:output:0!lstm_829/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_829/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_829/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_829/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_829/whileWhile$lstm_829/while/loop_counter:output:0*lstm_829/while/maximum_iterations:output:0lstm_829/time:output:0!lstm_829/TensorArrayV2_1:handle:0lstm_829/zeros:output:0lstm_829/zeros_1:output:0!lstm_829/strided_slice_1:output:0@lstm_829/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_829_lstm_cell_829_matmul_readvariableop_resource7lstm_829_lstm_cell_829_matmul_1_readvariableop_resource6lstm_829_lstm_cell_829_biasadd_readvariableop_resource*
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
lstm_829_while_body_5010716*'
condR
lstm_829_while_cond_5010715*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_829/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_829/TensorArrayV2Stack/TensorListStackTensorListStacklstm_829/while:output:3Blstm_829/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_829/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_829/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_829/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_829/strided_slice_3StridedSlice4lstm_829/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_829/strided_slice_3/stack:output:0)lstm_829/strided_slice_3/stack_1:output:0)lstm_829/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_829/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_829/transpose_1	Transpose4lstm_829/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_829/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_829/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_830/ShapeShapelstm_829/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_830/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_830/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_830/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_830/strided_sliceStridedSlicelstm_830/Shape:output:0%lstm_830/strided_slice/stack:output:0'lstm_830/strided_slice/stack_1:output:0'lstm_830/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_830/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_830/zeros/packedPacklstm_830/strided_slice:output:0 lstm_830/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_830/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_830/zerosFilllstm_830/zeros/packed:output:0lstm_830/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_830/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_830/zeros_1/packedPacklstm_830/strided_slice:output:0"lstm_830/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_830/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_830/zeros_1Fill lstm_830/zeros_1/packed:output:0lstm_830/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_830/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_830/transpose	Transposelstm_829/transpose_1:y:0 lstm_830/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_830/Shape_1Shapelstm_830/transpose:y:0*
T0*
_output_shapes
:h
lstm_830/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_830/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_830/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_830/strided_slice_1StridedSlicelstm_830/Shape_1:output:0'lstm_830/strided_slice_1/stack:output:0)lstm_830/strided_slice_1/stack_1:output:0)lstm_830/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_830/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_830/TensorArrayV2TensorListReserve-lstm_830/TensorArrayV2/element_shape:output:0!lstm_830/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_830/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_830/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_830/transpose:y:0Glstm_830/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_830/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_830/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_830/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_830/strided_slice_2StridedSlicelstm_830/transpose:y:0'lstm_830/strided_slice_2/stack:output:0)lstm_830/strided_slice_2/stack_1:output:0)lstm_830/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_830/lstm_cell_830/MatMul/ReadVariableOpReadVariableOp5lstm_830_lstm_cell_830_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_830/lstm_cell_830/MatMulMatMul!lstm_830/strided_slice_2:output:04lstm_830/lstm_cell_830/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_830/lstm_cell_830/MatMul_1/ReadVariableOpReadVariableOp7lstm_830_lstm_cell_830_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_830/lstm_cell_830/MatMul_1MatMullstm_830/zeros:output:06lstm_830/lstm_cell_830/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_830/lstm_cell_830/addAddV2'lstm_830/lstm_cell_830/MatMul:product:0)lstm_830/lstm_cell_830/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_830/lstm_cell_830/BiasAdd/ReadVariableOpReadVariableOp6lstm_830_lstm_cell_830_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_830/lstm_cell_830/BiasAddBiasAddlstm_830/lstm_cell_830/add:z:05lstm_830/lstm_cell_830/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_830/lstm_cell_830/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_830/lstm_cell_830/splitSplit/lstm_830/lstm_cell_830/split/split_dim:output:0'lstm_830/lstm_cell_830/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_830/lstm_cell_830/SigmoidSigmoid%lstm_830/lstm_cell_830/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_830/lstm_cell_830/Sigmoid_1Sigmoid%lstm_830/lstm_cell_830/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_830/lstm_cell_830/mulMul$lstm_830/lstm_cell_830/Sigmoid_1:y:0lstm_830/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_830/lstm_cell_830/ReluRelu%lstm_830/lstm_cell_830/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_830/lstm_cell_830/mul_1Mul"lstm_830/lstm_cell_830/Sigmoid:y:0)lstm_830/lstm_cell_830/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_830/lstm_cell_830/add_1AddV2lstm_830/lstm_cell_830/mul:z:0 lstm_830/lstm_cell_830/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_830/lstm_cell_830/Sigmoid_2Sigmoid%lstm_830/lstm_cell_830/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_830/lstm_cell_830/Relu_1Relu lstm_830/lstm_cell_830/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_830/lstm_cell_830/mul_2Mul$lstm_830/lstm_cell_830/Sigmoid_2:y:0+lstm_830/lstm_cell_830/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_830/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_830/TensorArrayV2_1TensorListReserve/lstm_830/TensorArrayV2_1/element_shape:output:0!lstm_830/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_830/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_830/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_830/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_830/whileWhile$lstm_830/while/loop_counter:output:0*lstm_830/while/maximum_iterations:output:0lstm_830/time:output:0!lstm_830/TensorArrayV2_1:handle:0lstm_830/zeros:output:0lstm_830/zeros_1:output:0!lstm_830/strided_slice_1:output:0@lstm_830/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_830_lstm_cell_830_matmul_readvariableop_resource7lstm_830_lstm_cell_830_matmul_1_readvariableop_resource6lstm_830_lstm_cell_830_biasadd_readvariableop_resource*
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
lstm_830_while_body_5010855*'
condR
lstm_830_while_cond_5010854*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_830/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_830/TensorArrayV2Stack/TensorListStackTensorListStacklstm_830/while:output:3Blstm_830/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_830/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_830/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_830/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_830/strided_slice_3StridedSlice4lstm_830/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_830/strided_slice_3/stack:output:0)lstm_830/strided_slice_3/stack_1:output:0)lstm_830/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_830/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_830/transpose_1	Transpose4lstm_830/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_830/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_830/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_276/MatMul/ReadVariableOpReadVariableOp(dense_276_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_276/MatMulMatMul!lstm_830/strided_slice_3:output:0'dense_276/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_276/BiasAdd/ReadVariableOpReadVariableOp)dense_276_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_276/BiasAddBiasAdddense_276/MatMul:product:0(dense_276/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_276/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_276/BiasAdd/ReadVariableOp ^dense_276/MatMul/ReadVariableOp.^lstm_828/lstm_cell_828/BiasAdd/ReadVariableOp-^lstm_828/lstm_cell_828/MatMul/ReadVariableOp/^lstm_828/lstm_cell_828/MatMul_1/ReadVariableOp^lstm_828/while.^lstm_829/lstm_cell_829/BiasAdd/ReadVariableOp-^lstm_829/lstm_cell_829/MatMul/ReadVariableOp/^lstm_829/lstm_cell_829/MatMul_1/ReadVariableOp^lstm_829/while.^lstm_830/lstm_cell_830/BiasAdd/ReadVariableOp-^lstm_830/lstm_cell_830/MatMul/ReadVariableOp/^lstm_830/lstm_cell_830/MatMul_1/ReadVariableOp^lstm_830/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_276/BiasAdd/ReadVariableOp dense_276/BiasAdd/ReadVariableOp2B
dense_276/MatMul/ReadVariableOpdense_276/MatMul/ReadVariableOp2^
-lstm_828/lstm_cell_828/BiasAdd/ReadVariableOp-lstm_828/lstm_cell_828/BiasAdd/ReadVariableOp2\
,lstm_828/lstm_cell_828/MatMul/ReadVariableOp,lstm_828/lstm_cell_828/MatMul/ReadVariableOp2`
.lstm_828/lstm_cell_828/MatMul_1/ReadVariableOp.lstm_828/lstm_cell_828/MatMul_1/ReadVariableOp2 
lstm_828/whilelstm_828/while2^
-lstm_829/lstm_cell_829/BiasAdd/ReadVariableOp-lstm_829/lstm_cell_829/BiasAdd/ReadVariableOp2\
,lstm_829/lstm_cell_829/MatMul/ReadVariableOp,lstm_829/lstm_cell_829/MatMul/ReadVariableOp2`
.lstm_829/lstm_cell_829/MatMul_1/ReadVariableOp.lstm_829/lstm_cell_829/MatMul_1/ReadVariableOp2 
lstm_829/whilelstm_829/while2^
-lstm_830/lstm_cell_830/BiasAdd/ReadVariableOp-lstm_830/lstm_cell_830/BiasAdd/ReadVariableOp2\
,lstm_830/lstm_cell_830/MatMul/ReadVariableOp,lstm_830/lstm_cell_830/MatMul/ReadVariableOp2`
.lstm_830/lstm_cell_830/MatMul_1/ReadVariableOp.lstm_830/lstm_cell_830/MatMul_1/ReadVariableOp2 
lstm_830/whilelstm_830/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_829_layer_call_and_return_conditional_losses_5008194

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
?
?
+__inference_dense_276_layer_call_fn_5012802

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
F__inference_dense_276_layer_call_and_return_conditional_losses_5009294o
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
?
while_cond_5012565
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5012565___redundant_placeholder05
1while_while_cond_5012565___redundant_placeholder15
1while_while_cond_5012565___redundant_placeholder25
1while_while_cond_5012565___redundant_placeholder3
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
E__inference_lstm_829_layer_call_and_return_conditional_losses_5009126

inputs?
,lstm_cell_829_matmul_readvariableop_resource:	d?A
.lstm_cell_829_matmul_1_readvariableop_resource:	2?<
-lstm_cell_829_biasadd_readvariableop_resource:	?
identity??$lstm_cell_829/BiasAdd/ReadVariableOp?#lstm_cell_829/MatMul/ReadVariableOp?%lstm_cell_829/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_829/MatMul/ReadVariableOpReadVariableOp,lstm_cell_829_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_829/MatMulMatMulstrided_slice_2:output:0+lstm_cell_829/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_829/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_829_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_829/MatMul_1MatMulzeros:output:0-lstm_cell_829/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_829/addAddV2lstm_cell_829/MatMul:product:0 lstm_cell_829/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_829/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_829_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_829/BiasAddBiasAddlstm_cell_829/add:z:0,lstm_cell_829/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_829/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_829/splitSplit&lstm_cell_829/split/split_dim:output:0lstm_cell_829/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_829/SigmoidSigmoidlstm_cell_829/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_829/Sigmoid_1Sigmoidlstm_cell_829/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_829/mulMullstm_cell_829/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_829/ReluRelulstm_cell_829/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_829/mul_1Mullstm_cell_829/Sigmoid:y:0 lstm_cell_829/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_829/add_1AddV2lstm_cell_829/mul:z:0lstm_cell_829/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_829/Sigmoid_2Sigmoidlstm_cell_829/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_829/Relu_1Relulstm_cell_829/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_829/mul_2Mullstm_cell_829/Sigmoid_2:y:0"lstm_cell_829/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_829_matmul_readvariableop_resource.lstm_cell_829_matmul_1_readvariableop_resource-lstm_cell_829_biasadd_readvariableop_resource*
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
while_body_5009042*
condR
while_cond_5009041*K
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
NoOpNoOp%^lstm_cell_829/BiasAdd/ReadVariableOp$^lstm_cell_829/MatMul/ReadVariableOp&^lstm_cell_829/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_829/BiasAdd/ReadVariableOp$lstm_cell_829/BiasAdd/ReadVariableOp2J
#lstm_cell_829/MatMul/ReadVariableOp#lstm_cell_829/MatMul/ReadVariableOp2N
%lstm_cell_829/MatMul_1/ReadVariableOp%lstm_cell_829/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?C
?

lstm_829_while_body_5010716.
*lstm_829_while_lstm_829_while_loop_counter4
0lstm_829_while_lstm_829_while_maximum_iterations
lstm_829_while_placeholder 
lstm_829_while_placeholder_1 
lstm_829_while_placeholder_2 
lstm_829_while_placeholder_3-
)lstm_829_while_lstm_829_strided_slice_1_0i
elstm_829_while_tensorarrayv2read_tensorlistgetitem_lstm_829_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_829_while_lstm_cell_829_matmul_readvariableop_resource_0:	d?R
?lstm_829_while_lstm_cell_829_matmul_1_readvariableop_resource_0:	2?M
>lstm_829_while_lstm_cell_829_biasadd_readvariableop_resource_0:	?
lstm_829_while_identity
lstm_829_while_identity_1
lstm_829_while_identity_2
lstm_829_while_identity_3
lstm_829_while_identity_4
lstm_829_while_identity_5+
'lstm_829_while_lstm_829_strided_slice_1g
clstm_829_while_tensorarrayv2read_tensorlistgetitem_lstm_829_tensorarrayunstack_tensorlistfromtensorN
;lstm_829_while_lstm_cell_829_matmul_readvariableop_resource:	d?P
=lstm_829_while_lstm_cell_829_matmul_1_readvariableop_resource:	2?K
<lstm_829_while_lstm_cell_829_biasadd_readvariableop_resource:	???3lstm_829/while/lstm_cell_829/BiasAdd/ReadVariableOp?2lstm_829/while/lstm_cell_829/MatMul/ReadVariableOp?4lstm_829/while/lstm_cell_829/MatMul_1/ReadVariableOp?
@lstm_829/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_829/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_829_while_tensorarrayv2read_tensorlistgetitem_lstm_829_tensorarrayunstack_tensorlistfromtensor_0lstm_829_while_placeholderIlstm_829/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_829/while/lstm_cell_829/MatMul/ReadVariableOpReadVariableOp=lstm_829_while_lstm_cell_829_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_829/while/lstm_cell_829/MatMulMatMul9lstm_829/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_829/while/lstm_cell_829/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_829/while/lstm_cell_829/MatMul_1/ReadVariableOpReadVariableOp?lstm_829_while_lstm_cell_829_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_829/while/lstm_cell_829/MatMul_1MatMullstm_829_while_placeholder_2<lstm_829/while/lstm_cell_829/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_829/while/lstm_cell_829/addAddV2-lstm_829/while/lstm_cell_829/MatMul:product:0/lstm_829/while/lstm_cell_829/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_829/while/lstm_cell_829/BiasAdd/ReadVariableOpReadVariableOp>lstm_829_while_lstm_cell_829_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_829/while/lstm_cell_829/BiasAddBiasAdd$lstm_829/while/lstm_cell_829/add:z:0;lstm_829/while/lstm_cell_829/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_829/while/lstm_cell_829/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_829/while/lstm_cell_829/splitSplit5lstm_829/while/lstm_cell_829/split/split_dim:output:0-lstm_829/while/lstm_cell_829/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_829/while/lstm_cell_829/SigmoidSigmoid+lstm_829/while/lstm_cell_829/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_829/while/lstm_cell_829/Sigmoid_1Sigmoid+lstm_829/while/lstm_cell_829/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_829/while/lstm_cell_829/mulMul*lstm_829/while/lstm_cell_829/Sigmoid_1:y:0lstm_829_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_829/while/lstm_cell_829/ReluRelu+lstm_829/while/lstm_cell_829/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_829/while/lstm_cell_829/mul_1Mul(lstm_829/while/lstm_cell_829/Sigmoid:y:0/lstm_829/while/lstm_cell_829/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_829/while/lstm_cell_829/add_1AddV2$lstm_829/while/lstm_cell_829/mul:z:0&lstm_829/while/lstm_cell_829/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_829/while/lstm_cell_829/Sigmoid_2Sigmoid+lstm_829/while/lstm_cell_829/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_829/while/lstm_cell_829/Relu_1Relu&lstm_829/while/lstm_cell_829/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_829/while/lstm_cell_829/mul_2Mul*lstm_829/while/lstm_cell_829/Sigmoid_2:y:01lstm_829/while/lstm_cell_829/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_829/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_829_while_placeholder_1lstm_829_while_placeholder&lstm_829/while/lstm_cell_829/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_829/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_829/while/addAddV2lstm_829_while_placeholderlstm_829/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_829/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_829/while/add_1AddV2*lstm_829_while_lstm_829_while_loop_counterlstm_829/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_829/while/IdentityIdentitylstm_829/while/add_1:z:0^lstm_829/while/NoOp*
T0*
_output_shapes
: ?
lstm_829/while/Identity_1Identity0lstm_829_while_lstm_829_while_maximum_iterations^lstm_829/while/NoOp*
T0*
_output_shapes
: t
lstm_829/while/Identity_2Identitylstm_829/while/add:z:0^lstm_829/while/NoOp*
T0*
_output_shapes
: ?
lstm_829/while/Identity_3IdentityClstm_829/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_829/while/NoOp*
T0*
_output_shapes
: ?
lstm_829/while/Identity_4Identity&lstm_829/while/lstm_cell_829/mul_2:z:0^lstm_829/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_829/while/Identity_5Identity&lstm_829/while/lstm_cell_829/add_1:z:0^lstm_829/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_829/while/NoOpNoOp4^lstm_829/while/lstm_cell_829/BiasAdd/ReadVariableOp3^lstm_829/while/lstm_cell_829/MatMul/ReadVariableOp5^lstm_829/while/lstm_cell_829/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_829_while_identity lstm_829/while/Identity:output:0"?
lstm_829_while_identity_1"lstm_829/while/Identity_1:output:0"?
lstm_829_while_identity_2"lstm_829/while/Identity_2:output:0"?
lstm_829_while_identity_3"lstm_829/while/Identity_3:output:0"?
lstm_829_while_identity_4"lstm_829/while/Identity_4:output:0"?
lstm_829_while_identity_5"lstm_829/while/Identity_5:output:0"T
'lstm_829_while_lstm_829_strided_slice_1)lstm_829_while_lstm_829_strided_slice_1_0"~
<lstm_829_while_lstm_cell_829_biasadd_readvariableop_resource>lstm_829_while_lstm_cell_829_biasadd_readvariableop_resource_0"?
=lstm_829_while_lstm_cell_829_matmul_1_readvariableop_resource?lstm_829_while_lstm_cell_829_matmul_1_readvariableop_resource_0"|
;lstm_829_while_lstm_cell_829_matmul_readvariableop_resource=lstm_829_while_lstm_cell_829_matmul_readvariableop_resource_0"?
clstm_829_while_tensorarrayv2read_tensorlistgetitem_lstm_829_tensorarrayunstack_tensorlistfromtensorelstm_829_while_tensorarrayv2read_tensorlistgetitem_lstm_829_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_829/while/lstm_cell_829/BiasAdd/ReadVariableOp3lstm_829/while/lstm_cell_829/BiasAdd/ReadVariableOp2h
2lstm_829/while/lstm_cell_829/MatMul/ReadVariableOp2lstm_829/while/lstm_cell_829/MatMul/ReadVariableOp2l
4lstm_829/while/lstm_cell_829/MatMul_1/ReadVariableOp4lstm_829/while/lstm_cell_829/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_830_layer_call_and_return_conditional_losses_5008627

inputs'
lstm_cell_830_5008545:2('
lstm_cell_830_5008547:
(#
lstm_cell_830_5008549:(
identity??%lstm_cell_830/StatefulPartitionedCall?while;
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
%lstm_cell_830/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_830_5008545lstm_cell_830_5008547lstm_cell_830_5008549*
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
J__inference_lstm_cell_830_layer_call_and_return_conditional_losses_5008544n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_830_5008545lstm_cell_830_5008547lstm_cell_830_5008549*
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
while_body_5008558*
condR
while_cond_5008557*K
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
NoOpNoOp&^lstm_cell_830/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_830/StatefulPartitionedCall%lstm_cell_830/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?
?
while_cond_5011806
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5011806___redundant_placeholder05
1while_while_cond_5011806___redundant_placeholder15
1while_while_cond_5011806___redundant_placeholder25
1while_while_cond_5011806___redundant_placeholder3
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
while_cond_5011047
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5011047___redundant_placeholder05
1while_while_cond_5011047___redundant_placeholder15
1while_while_cond_5011047___redundant_placeholder25
1while_while_cond_5011047___redundant_placeholder3
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
while_cond_5011663
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5011663___redundant_placeholder05
1while_while_cond_5011663___redundant_placeholder15
1while_while_cond_5011663___redundant_placeholder25
1while_while_cond_5011663___redundant_placeholder3
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
while_body_5011950
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_829_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_829_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_829_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_829_matmul_readvariableop_resource:	d?G
4while_lstm_cell_829_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_829_biasadd_readvariableop_resource:	???*while/lstm_cell_829/BiasAdd/ReadVariableOp?)while/lstm_cell_829/MatMul/ReadVariableOp?+while/lstm_cell_829/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_829/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_829_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_829/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_829/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_829/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_829_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_829/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_829/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_829/addAddV2$while/lstm_cell_829/MatMul:product:0&while/lstm_cell_829/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_829/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_829_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_829/BiasAddBiasAddwhile/lstm_cell_829/add:z:02while/lstm_cell_829/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_829/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_829/splitSplit,while/lstm_cell_829/split/split_dim:output:0$while/lstm_cell_829/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_829/SigmoidSigmoid"while/lstm_cell_829/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_829/Sigmoid_1Sigmoid"while/lstm_cell_829/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_829/mulMul!while/lstm_cell_829/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_829/ReluRelu"while/lstm_cell_829/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_829/mul_1Mulwhile/lstm_cell_829/Sigmoid:y:0&while/lstm_cell_829/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_829/add_1AddV2while/lstm_cell_829/mul:z:0while/lstm_cell_829/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_829/Sigmoid_2Sigmoid"while/lstm_cell_829/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_829/Relu_1Reluwhile/lstm_cell_829/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_829/mul_2Mul!while/lstm_cell_829/Sigmoid_2:y:0(while/lstm_cell_829/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_829/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_829/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_829/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_829/BiasAdd/ReadVariableOp*^while/lstm_cell_829/MatMul/ReadVariableOp,^while/lstm_cell_829/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_829_biasadd_readvariableop_resource5while_lstm_cell_829_biasadd_readvariableop_resource_0"n
4while_lstm_cell_829_matmul_1_readvariableop_resource6while_lstm_cell_829_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_829_matmul_readvariableop_resource4while_lstm_cell_829_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_829/BiasAdd/ReadVariableOp*while/lstm_cell_829/BiasAdd/ReadVariableOp2V
)while/lstm_cell_829/MatMul/ReadVariableOp)while/lstm_cell_829/MatMul/ReadVariableOp2Z
+while/lstm_cell_829/MatMul_1/ReadVariableOp+while/lstm_cell_829/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_5007858
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_828_5007882_0:	?0
while_lstm_cell_828_5007884_0:	d?,
while_lstm_cell_828_5007886_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_828_5007882:	?.
while_lstm_cell_828_5007884:	d?*
while_lstm_cell_828_5007886:	???+while/lstm_cell_828/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_828/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_828_5007882_0while_lstm_cell_828_5007884_0while_lstm_cell_828_5007886_0*
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
J__inference_lstm_cell_828_layer_call_and_return_conditional_losses_5007844?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_828/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_828/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_828/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_828/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_828_5007882while_lstm_cell_828_5007882_0"<
while_lstm_cell_828_5007884while_lstm_cell_828_5007884_0"<
while_lstm_cell_828_5007886while_lstm_cell_828_5007886_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_828/StatefulPartitionedCall+while/lstm_cell_828/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
lstm_829_while_cond_5010715.
*lstm_829_while_lstm_829_while_loop_counter4
0lstm_829_while_lstm_829_while_maximum_iterations
lstm_829_while_placeholder 
lstm_829_while_placeholder_1 
lstm_829_while_placeholder_2 
lstm_829_while_placeholder_30
,lstm_829_while_less_lstm_829_strided_slice_1G
Clstm_829_while_lstm_829_while_cond_5010715___redundant_placeholder0G
Clstm_829_while_lstm_829_while_cond_5010715___redundant_placeholder1G
Clstm_829_while_lstm_829_while_cond_5010715___redundant_placeholder2G
Clstm_829_while_lstm_829_while_cond_5010715___redundant_placeholder3
lstm_829_while_identity
?
lstm_829/while/LessLesslstm_829_while_placeholder,lstm_829_while_less_lstm_829_strided_slice_1*
T0*
_output_shapes
: ]
lstm_829/while/IdentityIdentitylstm_829/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_829_while_identity lstm_829/while/Identity:output:0*(
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
K__inference_sequential_276_layer_call_and_return_conditional_losses_5010518

inputsH
5lstm_828_lstm_cell_828_matmul_readvariableop_resource:	?J
7lstm_828_lstm_cell_828_matmul_1_readvariableop_resource:	d?E
6lstm_828_lstm_cell_828_biasadd_readvariableop_resource:	?H
5lstm_829_lstm_cell_829_matmul_readvariableop_resource:	d?J
7lstm_829_lstm_cell_829_matmul_1_readvariableop_resource:	2?E
6lstm_829_lstm_cell_829_biasadd_readvariableop_resource:	?G
5lstm_830_lstm_cell_830_matmul_readvariableop_resource:2(I
7lstm_830_lstm_cell_830_matmul_1_readvariableop_resource:
(D
6lstm_830_lstm_cell_830_biasadd_readvariableop_resource:(:
(dense_276_matmul_readvariableop_resource:
7
)dense_276_biasadd_readvariableop_resource:
identity?? dense_276/BiasAdd/ReadVariableOp?dense_276/MatMul/ReadVariableOp?-lstm_828/lstm_cell_828/BiasAdd/ReadVariableOp?,lstm_828/lstm_cell_828/MatMul/ReadVariableOp?.lstm_828/lstm_cell_828/MatMul_1/ReadVariableOp?lstm_828/while?-lstm_829/lstm_cell_829/BiasAdd/ReadVariableOp?,lstm_829/lstm_cell_829/MatMul/ReadVariableOp?.lstm_829/lstm_cell_829/MatMul_1/ReadVariableOp?lstm_829/while?-lstm_830/lstm_cell_830/BiasAdd/ReadVariableOp?,lstm_830/lstm_cell_830/MatMul/ReadVariableOp?.lstm_830/lstm_cell_830/MatMul_1/ReadVariableOp?lstm_830/whileD
lstm_828/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_828/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_828/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_828/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_828/strided_sliceStridedSlicelstm_828/Shape:output:0%lstm_828/strided_slice/stack:output:0'lstm_828/strided_slice/stack_1:output:0'lstm_828/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_828/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_828/zeros/packedPacklstm_828/strided_slice:output:0 lstm_828/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_828/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_828/zerosFilllstm_828/zeros/packed:output:0lstm_828/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_828/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_828/zeros_1/packedPacklstm_828/strided_slice:output:0"lstm_828/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_828/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_828/zeros_1Fill lstm_828/zeros_1/packed:output:0lstm_828/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_828/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_828/transpose	Transposeinputs lstm_828/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_828/Shape_1Shapelstm_828/transpose:y:0*
T0*
_output_shapes
:h
lstm_828/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_828/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_828/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_828/strided_slice_1StridedSlicelstm_828/Shape_1:output:0'lstm_828/strided_slice_1/stack:output:0)lstm_828/strided_slice_1/stack_1:output:0)lstm_828/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_828/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_828/TensorArrayV2TensorListReserve-lstm_828/TensorArrayV2/element_shape:output:0!lstm_828/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_828/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_828/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_828/transpose:y:0Glstm_828/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_828/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_828/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_828/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_828/strided_slice_2StridedSlicelstm_828/transpose:y:0'lstm_828/strided_slice_2/stack:output:0)lstm_828/strided_slice_2/stack_1:output:0)lstm_828/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_828/lstm_cell_828/MatMul/ReadVariableOpReadVariableOp5lstm_828_lstm_cell_828_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_828/lstm_cell_828/MatMulMatMul!lstm_828/strided_slice_2:output:04lstm_828/lstm_cell_828/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_828/lstm_cell_828/MatMul_1/ReadVariableOpReadVariableOp7lstm_828_lstm_cell_828_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_828/lstm_cell_828/MatMul_1MatMullstm_828/zeros:output:06lstm_828/lstm_cell_828/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_828/lstm_cell_828/addAddV2'lstm_828/lstm_cell_828/MatMul:product:0)lstm_828/lstm_cell_828/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_828/lstm_cell_828/BiasAdd/ReadVariableOpReadVariableOp6lstm_828_lstm_cell_828_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_828/lstm_cell_828/BiasAddBiasAddlstm_828/lstm_cell_828/add:z:05lstm_828/lstm_cell_828/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_828/lstm_cell_828/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_828/lstm_cell_828/splitSplit/lstm_828/lstm_cell_828/split/split_dim:output:0'lstm_828/lstm_cell_828/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_828/lstm_cell_828/SigmoidSigmoid%lstm_828/lstm_cell_828/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_828/lstm_cell_828/Sigmoid_1Sigmoid%lstm_828/lstm_cell_828/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_828/lstm_cell_828/mulMul$lstm_828/lstm_cell_828/Sigmoid_1:y:0lstm_828/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_828/lstm_cell_828/ReluRelu%lstm_828/lstm_cell_828/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_828/lstm_cell_828/mul_1Mul"lstm_828/lstm_cell_828/Sigmoid:y:0)lstm_828/lstm_cell_828/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_828/lstm_cell_828/add_1AddV2lstm_828/lstm_cell_828/mul:z:0 lstm_828/lstm_cell_828/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_828/lstm_cell_828/Sigmoid_2Sigmoid%lstm_828/lstm_cell_828/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_828/lstm_cell_828/Relu_1Relu lstm_828/lstm_cell_828/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_828/lstm_cell_828/mul_2Mul$lstm_828/lstm_cell_828/Sigmoid_2:y:0+lstm_828/lstm_cell_828/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_828/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_828/TensorArrayV2_1TensorListReserve/lstm_828/TensorArrayV2_1/element_shape:output:0!lstm_828/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_828/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_828/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_828/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_828/whileWhile$lstm_828/while/loop_counter:output:0*lstm_828/while/maximum_iterations:output:0lstm_828/time:output:0!lstm_828/TensorArrayV2_1:handle:0lstm_828/zeros:output:0lstm_828/zeros_1:output:0!lstm_828/strided_slice_1:output:0@lstm_828/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_828_lstm_cell_828_matmul_readvariableop_resource7lstm_828_lstm_cell_828_matmul_1_readvariableop_resource6lstm_828_lstm_cell_828_biasadd_readvariableop_resource*
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
lstm_828_while_body_5010150*'
condR
lstm_828_while_cond_5010149*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_828/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_828/TensorArrayV2Stack/TensorListStackTensorListStacklstm_828/while:output:3Blstm_828/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_828/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_828/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_828/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_828/strided_slice_3StridedSlice4lstm_828/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_828/strided_slice_3/stack:output:0)lstm_828/strided_slice_3/stack_1:output:0)lstm_828/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_828/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_828/transpose_1	Transpose4lstm_828/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_828/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_828/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_829/ShapeShapelstm_828/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_829/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_829/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_829/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_829/strided_sliceStridedSlicelstm_829/Shape:output:0%lstm_829/strided_slice/stack:output:0'lstm_829/strided_slice/stack_1:output:0'lstm_829/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_829/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_829/zeros/packedPacklstm_829/strided_slice:output:0 lstm_829/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_829/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_829/zerosFilllstm_829/zeros/packed:output:0lstm_829/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_829/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_829/zeros_1/packedPacklstm_829/strided_slice:output:0"lstm_829/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_829/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_829/zeros_1Fill lstm_829/zeros_1/packed:output:0lstm_829/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_829/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_829/transpose	Transposelstm_828/transpose_1:y:0 lstm_829/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_829/Shape_1Shapelstm_829/transpose:y:0*
T0*
_output_shapes
:h
lstm_829/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_829/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_829/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_829/strided_slice_1StridedSlicelstm_829/Shape_1:output:0'lstm_829/strided_slice_1/stack:output:0)lstm_829/strided_slice_1/stack_1:output:0)lstm_829/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_829/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_829/TensorArrayV2TensorListReserve-lstm_829/TensorArrayV2/element_shape:output:0!lstm_829/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_829/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_829/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_829/transpose:y:0Glstm_829/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_829/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_829/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_829/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_829/strided_slice_2StridedSlicelstm_829/transpose:y:0'lstm_829/strided_slice_2/stack:output:0)lstm_829/strided_slice_2/stack_1:output:0)lstm_829/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_829/lstm_cell_829/MatMul/ReadVariableOpReadVariableOp5lstm_829_lstm_cell_829_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_829/lstm_cell_829/MatMulMatMul!lstm_829/strided_slice_2:output:04lstm_829/lstm_cell_829/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_829/lstm_cell_829/MatMul_1/ReadVariableOpReadVariableOp7lstm_829_lstm_cell_829_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_829/lstm_cell_829/MatMul_1MatMullstm_829/zeros:output:06lstm_829/lstm_cell_829/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_829/lstm_cell_829/addAddV2'lstm_829/lstm_cell_829/MatMul:product:0)lstm_829/lstm_cell_829/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_829/lstm_cell_829/BiasAdd/ReadVariableOpReadVariableOp6lstm_829_lstm_cell_829_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_829/lstm_cell_829/BiasAddBiasAddlstm_829/lstm_cell_829/add:z:05lstm_829/lstm_cell_829/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_829/lstm_cell_829/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_829/lstm_cell_829/splitSplit/lstm_829/lstm_cell_829/split/split_dim:output:0'lstm_829/lstm_cell_829/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_829/lstm_cell_829/SigmoidSigmoid%lstm_829/lstm_cell_829/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_829/lstm_cell_829/Sigmoid_1Sigmoid%lstm_829/lstm_cell_829/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_829/lstm_cell_829/mulMul$lstm_829/lstm_cell_829/Sigmoid_1:y:0lstm_829/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_829/lstm_cell_829/ReluRelu%lstm_829/lstm_cell_829/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_829/lstm_cell_829/mul_1Mul"lstm_829/lstm_cell_829/Sigmoid:y:0)lstm_829/lstm_cell_829/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_829/lstm_cell_829/add_1AddV2lstm_829/lstm_cell_829/mul:z:0 lstm_829/lstm_cell_829/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_829/lstm_cell_829/Sigmoid_2Sigmoid%lstm_829/lstm_cell_829/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_829/lstm_cell_829/Relu_1Relu lstm_829/lstm_cell_829/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_829/lstm_cell_829/mul_2Mul$lstm_829/lstm_cell_829/Sigmoid_2:y:0+lstm_829/lstm_cell_829/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_829/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_829/TensorArrayV2_1TensorListReserve/lstm_829/TensorArrayV2_1/element_shape:output:0!lstm_829/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_829/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_829/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_829/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_829/whileWhile$lstm_829/while/loop_counter:output:0*lstm_829/while/maximum_iterations:output:0lstm_829/time:output:0!lstm_829/TensorArrayV2_1:handle:0lstm_829/zeros:output:0lstm_829/zeros_1:output:0!lstm_829/strided_slice_1:output:0@lstm_829/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_829_lstm_cell_829_matmul_readvariableop_resource7lstm_829_lstm_cell_829_matmul_1_readvariableop_resource6lstm_829_lstm_cell_829_biasadd_readvariableop_resource*
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
lstm_829_while_body_5010289*'
condR
lstm_829_while_cond_5010288*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_829/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_829/TensorArrayV2Stack/TensorListStackTensorListStacklstm_829/while:output:3Blstm_829/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_829/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_829/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_829/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_829/strided_slice_3StridedSlice4lstm_829/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_829/strided_slice_3/stack:output:0)lstm_829/strided_slice_3/stack_1:output:0)lstm_829/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_829/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_829/transpose_1	Transpose4lstm_829/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_829/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_829/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_830/ShapeShapelstm_829/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_830/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_830/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_830/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_830/strided_sliceStridedSlicelstm_830/Shape:output:0%lstm_830/strided_slice/stack:output:0'lstm_830/strided_slice/stack_1:output:0'lstm_830/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_830/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_830/zeros/packedPacklstm_830/strided_slice:output:0 lstm_830/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_830/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_830/zerosFilllstm_830/zeros/packed:output:0lstm_830/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_830/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_830/zeros_1/packedPacklstm_830/strided_slice:output:0"lstm_830/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_830/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_830/zeros_1Fill lstm_830/zeros_1/packed:output:0lstm_830/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_830/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_830/transpose	Transposelstm_829/transpose_1:y:0 lstm_830/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_830/Shape_1Shapelstm_830/transpose:y:0*
T0*
_output_shapes
:h
lstm_830/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_830/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_830/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_830/strided_slice_1StridedSlicelstm_830/Shape_1:output:0'lstm_830/strided_slice_1/stack:output:0)lstm_830/strided_slice_1/stack_1:output:0)lstm_830/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_830/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_830/TensorArrayV2TensorListReserve-lstm_830/TensorArrayV2/element_shape:output:0!lstm_830/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_830/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_830/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_830/transpose:y:0Glstm_830/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_830/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_830/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_830/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_830/strided_slice_2StridedSlicelstm_830/transpose:y:0'lstm_830/strided_slice_2/stack:output:0)lstm_830/strided_slice_2/stack_1:output:0)lstm_830/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_830/lstm_cell_830/MatMul/ReadVariableOpReadVariableOp5lstm_830_lstm_cell_830_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_830/lstm_cell_830/MatMulMatMul!lstm_830/strided_slice_2:output:04lstm_830/lstm_cell_830/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_830/lstm_cell_830/MatMul_1/ReadVariableOpReadVariableOp7lstm_830_lstm_cell_830_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_830/lstm_cell_830/MatMul_1MatMullstm_830/zeros:output:06lstm_830/lstm_cell_830/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_830/lstm_cell_830/addAddV2'lstm_830/lstm_cell_830/MatMul:product:0)lstm_830/lstm_cell_830/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_830/lstm_cell_830/BiasAdd/ReadVariableOpReadVariableOp6lstm_830_lstm_cell_830_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_830/lstm_cell_830/BiasAddBiasAddlstm_830/lstm_cell_830/add:z:05lstm_830/lstm_cell_830/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_830/lstm_cell_830/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_830/lstm_cell_830/splitSplit/lstm_830/lstm_cell_830/split/split_dim:output:0'lstm_830/lstm_cell_830/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_830/lstm_cell_830/SigmoidSigmoid%lstm_830/lstm_cell_830/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_830/lstm_cell_830/Sigmoid_1Sigmoid%lstm_830/lstm_cell_830/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_830/lstm_cell_830/mulMul$lstm_830/lstm_cell_830/Sigmoid_1:y:0lstm_830/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_830/lstm_cell_830/ReluRelu%lstm_830/lstm_cell_830/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_830/lstm_cell_830/mul_1Mul"lstm_830/lstm_cell_830/Sigmoid:y:0)lstm_830/lstm_cell_830/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_830/lstm_cell_830/add_1AddV2lstm_830/lstm_cell_830/mul:z:0 lstm_830/lstm_cell_830/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_830/lstm_cell_830/Sigmoid_2Sigmoid%lstm_830/lstm_cell_830/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_830/lstm_cell_830/Relu_1Relu lstm_830/lstm_cell_830/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_830/lstm_cell_830/mul_2Mul$lstm_830/lstm_cell_830/Sigmoid_2:y:0+lstm_830/lstm_cell_830/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_830/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_830/TensorArrayV2_1TensorListReserve/lstm_830/TensorArrayV2_1/element_shape:output:0!lstm_830/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_830/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_830/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_830/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_830/whileWhile$lstm_830/while/loop_counter:output:0*lstm_830/while/maximum_iterations:output:0lstm_830/time:output:0!lstm_830/TensorArrayV2_1:handle:0lstm_830/zeros:output:0lstm_830/zeros_1:output:0!lstm_830/strided_slice_1:output:0@lstm_830/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_830_lstm_cell_830_matmul_readvariableop_resource7lstm_830_lstm_cell_830_matmul_1_readvariableop_resource6lstm_830_lstm_cell_830_biasadd_readvariableop_resource*
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
lstm_830_while_body_5010428*'
condR
lstm_830_while_cond_5010427*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_830/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_830/TensorArrayV2Stack/TensorListStackTensorListStacklstm_830/while:output:3Blstm_830/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_830/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_830/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_830/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_830/strided_slice_3StridedSlice4lstm_830/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_830/strided_slice_3/stack:output:0)lstm_830/strided_slice_3/stack_1:output:0)lstm_830/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_830/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_830/transpose_1	Transpose4lstm_830/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_830/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_830/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_276/MatMul/ReadVariableOpReadVariableOp(dense_276_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_276/MatMulMatMul!lstm_830/strided_slice_3:output:0'dense_276/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_276/BiasAdd/ReadVariableOpReadVariableOp)dense_276_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_276/BiasAddBiasAdddense_276/MatMul:product:0(dense_276/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_276/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_276/BiasAdd/ReadVariableOp ^dense_276/MatMul/ReadVariableOp.^lstm_828/lstm_cell_828/BiasAdd/ReadVariableOp-^lstm_828/lstm_cell_828/MatMul/ReadVariableOp/^lstm_828/lstm_cell_828/MatMul_1/ReadVariableOp^lstm_828/while.^lstm_829/lstm_cell_829/BiasAdd/ReadVariableOp-^lstm_829/lstm_cell_829/MatMul/ReadVariableOp/^lstm_829/lstm_cell_829/MatMul_1/ReadVariableOp^lstm_829/while.^lstm_830/lstm_cell_830/BiasAdd/ReadVariableOp-^lstm_830/lstm_cell_830/MatMul/ReadVariableOp/^lstm_830/lstm_cell_830/MatMul_1/ReadVariableOp^lstm_830/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_276/BiasAdd/ReadVariableOp dense_276/BiasAdd/ReadVariableOp2B
dense_276/MatMul/ReadVariableOpdense_276/MatMul/ReadVariableOp2^
-lstm_828/lstm_cell_828/BiasAdd/ReadVariableOp-lstm_828/lstm_cell_828/BiasAdd/ReadVariableOp2\
,lstm_828/lstm_cell_828/MatMul/ReadVariableOp,lstm_828/lstm_cell_828/MatMul/ReadVariableOp2`
.lstm_828/lstm_cell_828/MatMul_1/ReadVariableOp.lstm_828/lstm_cell_828/MatMul_1/ReadVariableOp2 
lstm_828/whilelstm_828/while2^
-lstm_829/lstm_cell_829/BiasAdd/ReadVariableOp-lstm_829/lstm_cell_829/BiasAdd/ReadVariableOp2\
,lstm_829/lstm_cell_829/MatMul/ReadVariableOp,lstm_829/lstm_cell_829/MatMul/ReadVariableOp2`
.lstm_829/lstm_cell_829/MatMul_1/ReadVariableOp.lstm_829/lstm_cell_829/MatMul_1/ReadVariableOp2 
lstm_829/whilelstm_829/while2^
-lstm_830/lstm_cell_830/BiasAdd/ReadVariableOp-lstm_830/lstm_cell_830/BiasAdd/ReadVariableOp2\
,lstm_830/lstm_cell_830/MatMul/ReadVariableOp,lstm_830/lstm_cell_830/MatMul/ReadVariableOp2`
.lstm_830/lstm_cell_830/MatMul_1/ReadVariableOp.lstm_830/lstm_cell_830/MatMul_1/ReadVariableOp2 
lstm_830/whilelstm_830/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?K
?
E__inference_lstm_829_layer_call_and_return_conditional_losses_5011891
inputs_0?
,lstm_cell_829_matmul_readvariableop_resource:	d?A
.lstm_cell_829_matmul_1_readvariableop_resource:	2?<
-lstm_cell_829_biasadd_readvariableop_resource:	?
identity??$lstm_cell_829/BiasAdd/ReadVariableOp?#lstm_cell_829/MatMul/ReadVariableOp?%lstm_cell_829/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_829/MatMul/ReadVariableOpReadVariableOp,lstm_cell_829_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_829/MatMulMatMulstrided_slice_2:output:0+lstm_cell_829/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_829/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_829_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_829/MatMul_1MatMulzeros:output:0-lstm_cell_829/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_829/addAddV2lstm_cell_829/MatMul:product:0 lstm_cell_829/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_829/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_829_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_829/BiasAddBiasAddlstm_cell_829/add:z:0,lstm_cell_829/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_829/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_829/splitSplit&lstm_cell_829/split/split_dim:output:0lstm_cell_829/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_829/SigmoidSigmoidlstm_cell_829/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_829/Sigmoid_1Sigmoidlstm_cell_829/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_829/mulMullstm_cell_829/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_829/ReluRelulstm_cell_829/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_829/mul_1Mullstm_cell_829/Sigmoid:y:0 lstm_cell_829/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_829/add_1AddV2lstm_cell_829/mul:z:0lstm_cell_829/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_829/Sigmoid_2Sigmoidlstm_cell_829/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_829/Relu_1Relulstm_cell_829/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_829/mul_2Mullstm_cell_829/Sigmoid_2:y:0"lstm_cell_829/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_829_matmul_readvariableop_resource.lstm_cell_829_matmul_1_readvariableop_resource-lstm_cell_829_biasadd_readvariableop_resource*
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
while_body_5011807*
condR
while_cond_5011806*K
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
NoOpNoOp%^lstm_cell_829/BiasAdd/ReadVariableOp$^lstm_cell_829/MatMul/ReadVariableOp&^lstm_cell_829/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_829/BiasAdd/ReadVariableOp$lstm_cell_829/BiasAdd/ReadVariableOp2J
#lstm_cell_829/MatMul/ReadVariableOp#lstm_cell_829/MatMul/ReadVariableOp2N
%lstm_cell_829/MatMul_1/ReadVariableOp%lstm_cell_829/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?W
?
 __inference__traced_save_5013249
file_prefix/
+savev2_dense_276_kernel_read_readvariableop-
)savev2_dense_276_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_828_lstm_cell_828_kernel_read_readvariableopF
Bsavev2_lstm_828_lstm_cell_828_recurrent_kernel_read_readvariableop:
6savev2_lstm_828_lstm_cell_828_bias_read_readvariableop<
8savev2_lstm_829_lstm_cell_829_kernel_read_readvariableopF
Bsavev2_lstm_829_lstm_cell_829_recurrent_kernel_read_readvariableop:
6savev2_lstm_829_lstm_cell_829_bias_read_readvariableop<
8savev2_lstm_830_lstm_cell_830_kernel_read_readvariableopF
Bsavev2_lstm_830_lstm_cell_830_recurrent_kernel_read_readvariableop:
6savev2_lstm_830_lstm_cell_830_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop6
2savev2_adam_dense_276_kernel_m_read_readvariableop4
0savev2_adam_dense_276_bias_m_read_readvariableopC
?savev2_adam_lstm_828_lstm_cell_828_kernel_m_read_readvariableopM
Isavev2_adam_lstm_828_lstm_cell_828_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_828_lstm_cell_828_bias_m_read_readvariableopC
?savev2_adam_lstm_829_lstm_cell_829_kernel_m_read_readvariableopM
Isavev2_adam_lstm_829_lstm_cell_829_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_829_lstm_cell_829_bias_m_read_readvariableopC
?savev2_adam_lstm_830_lstm_cell_830_kernel_m_read_readvariableopM
Isavev2_adam_lstm_830_lstm_cell_830_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_830_lstm_cell_830_bias_m_read_readvariableop6
2savev2_adam_dense_276_kernel_v_read_readvariableop4
0savev2_adam_dense_276_bias_v_read_readvariableopC
?savev2_adam_lstm_828_lstm_cell_828_kernel_v_read_readvariableopM
Isavev2_adam_lstm_828_lstm_cell_828_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_828_lstm_cell_828_bias_v_read_readvariableopC
?savev2_adam_lstm_829_lstm_cell_829_kernel_v_read_readvariableopM
Isavev2_adam_lstm_829_lstm_cell_829_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_829_lstm_cell_829_bias_v_read_readvariableopC
?savev2_adam_lstm_830_lstm_cell_830_kernel_v_read_readvariableopM
Isavev2_adam_lstm_830_lstm_cell_830_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_830_lstm_cell_830_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_dense_276_kernel_read_readvariableop)savev2_dense_276_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_828_lstm_cell_828_kernel_read_readvariableopBsavev2_lstm_828_lstm_cell_828_recurrent_kernel_read_readvariableop6savev2_lstm_828_lstm_cell_828_bias_read_readvariableop8savev2_lstm_829_lstm_cell_829_kernel_read_readvariableopBsavev2_lstm_829_lstm_cell_829_recurrent_kernel_read_readvariableop6savev2_lstm_829_lstm_cell_829_bias_read_readvariableop8savev2_lstm_830_lstm_cell_830_kernel_read_readvariableopBsavev2_lstm_830_lstm_cell_830_recurrent_kernel_read_readvariableop6savev2_lstm_830_lstm_cell_830_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop2savev2_adam_dense_276_kernel_m_read_readvariableop0savev2_adam_dense_276_bias_m_read_readvariableop?savev2_adam_lstm_828_lstm_cell_828_kernel_m_read_readvariableopIsavev2_adam_lstm_828_lstm_cell_828_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_828_lstm_cell_828_bias_m_read_readvariableop?savev2_adam_lstm_829_lstm_cell_829_kernel_m_read_readvariableopIsavev2_adam_lstm_829_lstm_cell_829_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_829_lstm_cell_829_bias_m_read_readvariableop?savev2_adam_lstm_830_lstm_cell_830_kernel_m_read_readvariableopIsavev2_adam_lstm_830_lstm_cell_830_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_830_lstm_cell_830_bias_m_read_readvariableop2savev2_adam_dense_276_kernel_v_read_readvariableop0savev2_adam_dense_276_bias_v_read_readvariableop?savev2_adam_lstm_828_lstm_cell_828_kernel_v_read_readvariableopIsavev2_adam_lstm_828_lstm_cell_828_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_828_lstm_cell_828_bias_v_read_readvariableop?savev2_adam_lstm_829_lstm_cell_829_kernel_v_read_readvariableopIsavev2_adam_lstm_829_lstm_cell_829_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_829_lstm_cell_829_bias_v_read_readvariableop?savev2_adam_lstm_830_lstm_cell_830_kernel_v_read_readvariableopIsavev2_adam_lstm_830_lstm_cell_830_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_830_lstm_cell_830_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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

?
0__inference_sequential_276_layer_call_fn_5010091

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
K__inference_sequential_276_layer_call_and_return_conditional_losses_5009890o
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
K__inference_sequential_276_layer_call_and_return_conditional_losses_5009972
lstm_828_input#
lstm_828_5009945:	?#
lstm_828_5009947:	d?
lstm_828_5009949:	?#
lstm_829_5009952:	d?#
lstm_829_5009954:	2?
lstm_829_5009956:	?"
lstm_830_5009959:2("
lstm_830_5009961:
(
lstm_830_5009963:(#
dense_276_5009966:

dense_276_5009968:
identity??!dense_276/StatefulPartitionedCall? lstm_828/StatefulPartitionedCall? lstm_829/StatefulPartitionedCall? lstm_830/StatefulPartitionedCall?
 lstm_828/StatefulPartitionedCallStatefulPartitionedCalllstm_828_inputlstm_828_5009945lstm_828_5009947lstm_828_5009949*
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
E__inference_lstm_828_layer_call_and_return_conditional_losses_5008976?
 lstm_829/StatefulPartitionedCallStatefulPartitionedCall)lstm_828/StatefulPartitionedCall:output:0lstm_829_5009952lstm_829_5009954lstm_829_5009956*
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
E__inference_lstm_829_layer_call_and_return_conditional_losses_5009126?
 lstm_830/StatefulPartitionedCallStatefulPartitionedCall)lstm_829/StatefulPartitionedCall:output:0lstm_830_5009959lstm_830_5009961lstm_830_5009963*
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
E__inference_lstm_830_layer_call_and_return_conditional_losses_5009276?
!dense_276/StatefulPartitionedCallStatefulPartitionedCall)lstm_830/StatefulPartitionedCall:output:0dense_276_5009966dense_276_5009968*
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
F__inference_dense_276_layer_call_and_return_conditional_losses_5009294y
IdentityIdentity*dense_276/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_276/StatefulPartitionedCall!^lstm_828/StatefulPartitionedCall!^lstm_829/StatefulPartitionedCall!^lstm_830/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_276/StatefulPartitionedCall!dense_276/StatefulPartitionedCall2D
 lstm_828/StatefulPartitionedCall lstm_828/StatefulPartitionedCall2D
 lstm_829/StatefulPartitionedCall lstm_829/StatefulPartitionedCall2D
 lstm_830/StatefulPartitionedCall lstm_830/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_828_input
?#
?
while_body_5008208
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_829_5008232_0:	d?0
while_lstm_cell_829_5008234_0:	2?,
while_lstm_cell_829_5008236_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_829_5008232:	d?.
while_lstm_cell_829_5008234:	2?*
while_lstm_cell_829_5008236:	???+while/lstm_cell_829/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_829/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_829_5008232_0while_lstm_cell_829_5008234_0while_lstm_cell_829_5008236_0*
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
J__inference_lstm_cell_829_layer_call_and_return_conditional_losses_5008194?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_829/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_829/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_829/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_829/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_829_5008232while_lstm_cell_829_5008232_0"<
while_lstm_cell_829_5008234while_lstm_cell_829_5008234_0"<
while_lstm_cell_829_5008236while_lstm_cell_829_5008236_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_829/StatefulPartitionedCall+while/lstm_cell_829/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_829_layer_call_and_return_conditional_losses_5008340

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
E__inference_lstm_828_layer_call_and_return_conditional_losses_5011561

inputs?
,lstm_cell_828_matmul_readvariableop_resource:	?A
.lstm_cell_828_matmul_1_readvariableop_resource:	d?<
-lstm_cell_828_biasadd_readvariableop_resource:	?
identity??$lstm_cell_828/BiasAdd/ReadVariableOp?#lstm_cell_828/MatMul/ReadVariableOp?%lstm_cell_828/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_828/MatMul/ReadVariableOpReadVariableOp,lstm_cell_828_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_828/MatMulMatMulstrided_slice_2:output:0+lstm_cell_828/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_828/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_828_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_828/MatMul_1MatMulzeros:output:0-lstm_cell_828/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_828/addAddV2lstm_cell_828/MatMul:product:0 lstm_cell_828/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_828/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_828_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_828/BiasAddBiasAddlstm_cell_828/add:z:0,lstm_cell_828/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_828/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_828/splitSplit&lstm_cell_828/split/split_dim:output:0lstm_cell_828/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_828/SigmoidSigmoidlstm_cell_828/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_828/Sigmoid_1Sigmoidlstm_cell_828/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_828/mulMullstm_cell_828/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_828/ReluRelulstm_cell_828/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_828/mul_1Mullstm_cell_828/Sigmoid:y:0 lstm_cell_828/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_828/add_1AddV2lstm_cell_828/mul:z:0lstm_cell_828/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_828/Sigmoid_2Sigmoidlstm_cell_828/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_828/Relu_1Relulstm_cell_828/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_828/mul_2Mullstm_cell_828/Sigmoid_2:y:0"lstm_cell_828/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_828_matmul_readvariableop_resource.lstm_cell_828_matmul_1_readvariableop_resource-lstm_cell_828_biasadd_readvariableop_resource*
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
while_body_5011477*
condR
while_cond_5011476*K
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
NoOpNoOp%^lstm_cell_828/BiasAdd/ReadVariableOp$^lstm_cell_828/MatMul/ReadVariableOp&^lstm_cell_828/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_828/BiasAdd/ReadVariableOp$lstm_cell_828/BiasAdd/ReadVariableOp2J
#lstm_cell_828/MatMul/ReadVariableOp#lstm_cell_828/MatMul/ReadVariableOp2N
%lstm_cell_828/MatMul_1/ReadVariableOp%lstm_cell_828/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
E__inference_lstm_828_layer_call_and_return_conditional_losses_5008118

inputs(
lstm_cell_828_5008036:	?(
lstm_cell_828_5008038:	d?$
lstm_cell_828_5008040:	?
identity??%lstm_cell_828/StatefulPartitionedCall?while;
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
%lstm_cell_828/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_828_5008036lstm_cell_828_5008038lstm_cell_828_5008040*
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
J__inference_lstm_cell_828_layer_call_and_return_conditional_losses_5007990n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_828_5008036lstm_cell_828_5008038lstm_cell_828_5008040*
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
while_body_5008049*
condR
while_cond_5008048*K
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
NoOpNoOp&^lstm_cell_828/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_828/StatefulPartitionedCall%lstm_cell_828/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?#
?
while_body_5008749
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_830_5008773_0:2(/
while_lstm_cell_830_5008775_0:
(+
while_lstm_cell_830_5008777_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_830_5008773:2(-
while_lstm_cell_830_5008775:
()
while_lstm_cell_830_5008777:(??+while/lstm_cell_830/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_830/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_830_5008773_0while_lstm_cell_830_5008775_0while_lstm_cell_830_5008777_0*
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
J__inference_lstm_cell_830_layer_call_and_return_conditional_losses_5008690?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_830/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_830/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_830/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_830/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_830_5008773while_lstm_cell_830_5008773_0"<
while_lstm_cell_830_5008775while_lstm_cell_830_5008775_0"<
while_lstm_cell_830_5008777while_lstm_cell_830_5008777_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_830/StatefulPartitionedCall+while/lstm_cell_830/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
F__inference_dense_276_layer_call_and_return_conditional_losses_5009294

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
E__inference_lstm_828_layer_call_and_return_conditional_losses_5009822

inputs?
,lstm_cell_828_matmul_readvariableop_resource:	?A
.lstm_cell_828_matmul_1_readvariableop_resource:	d?<
-lstm_cell_828_biasadd_readvariableop_resource:	?
identity??$lstm_cell_828/BiasAdd/ReadVariableOp?#lstm_cell_828/MatMul/ReadVariableOp?%lstm_cell_828/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_828/MatMul/ReadVariableOpReadVariableOp,lstm_cell_828_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_828/MatMulMatMulstrided_slice_2:output:0+lstm_cell_828/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_828/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_828_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_828/MatMul_1MatMulzeros:output:0-lstm_cell_828/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_828/addAddV2lstm_cell_828/MatMul:product:0 lstm_cell_828/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_828/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_828_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_828/BiasAddBiasAddlstm_cell_828/add:z:0,lstm_cell_828/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_828/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_828/splitSplit&lstm_cell_828/split/split_dim:output:0lstm_cell_828/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_828/SigmoidSigmoidlstm_cell_828/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_828/Sigmoid_1Sigmoidlstm_cell_828/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_828/mulMullstm_cell_828/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_828/ReluRelulstm_cell_828/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_828/mul_1Mullstm_cell_828/Sigmoid:y:0 lstm_cell_828/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_828/add_1AddV2lstm_cell_828/mul:z:0lstm_cell_828/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_828/Sigmoid_2Sigmoidlstm_cell_828/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_828/Relu_1Relulstm_cell_828/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_828/mul_2Mullstm_cell_828/Sigmoid_2:y:0"lstm_cell_828/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_828_matmul_readvariableop_resource.lstm_cell_828_matmul_1_readvariableop_resource-lstm_cell_828_biasadd_readvariableop_resource*
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
while_body_5009738*
condR
while_cond_5009737*K
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
NoOpNoOp%^lstm_cell_828/BiasAdd/ReadVariableOp$^lstm_cell_828/MatMul/ReadVariableOp&^lstm_cell_828/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_828/BiasAdd/ReadVariableOp$lstm_cell_828/BiasAdd/ReadVariableOp2J
#lstm_cell_828/MatMul/ReadVariableOp#lstm_cell_828/MatMul/ReadVariableOp2N
%lstm_cell_828/MatMul_1/ReadVariableOp%lstm_cell_828/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
*__inference_lstm_829_layer_call_fn_5011594

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
E__inference_lstm_829_layer_call_and_return_conditional_losses_5009126s
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
??
?
"__inference__wrapped_model_5007777
lstm_828_inputW
Dsequential_276_lstm_828_lstm_cell_828_matmul_readvariableop_resource:	?Y
Fsequential_276_lstm_828_lstm_cell_828_matmul_1_readvariableop_resource:	d?T
Esequential_276_lstm_828_lstm_cell_828_biasadd_readvariableop_resource:	?W
Dsequential_276_lstm_829_lstm_cell_829_matmul_readvariableop_resource:	d?Y
Fsequential_276_lstm_829_lstm_cell_829_matmul_1_readvariableop_resource:	2?T
Esequential_276_lstm_829_lstm_cell_829_biasadd_readvariableop_resource:	?V
Dsequential_276_lstm_830_lstm_cell_830_matmul_readvariableop_resource:2(X
Fsequential_276_lstm_830_lstm_cell_830_matmul_1_readvariableop_resource:
(S
Esequential_276_lstm_830_lstm_cell_830_biasadd_readvariableop_resource:(I
7sequential_276_dense_276_matmul_readvariableop_resource:
F
8sequential_276_dense_276_biasadd_readvariableop_resource:
identity??/sequential_276/dense_276/BiasAdd/ReadVariableOp?.sequential_276/dense_276/MatMul/ReadVariableOp?<sequential_276/lstm_828/lstm_cell_828/BiasAdd/ReadVariableOp?;sequential_276/lstm_828/lstm_cell_828/MatMul/ReadVariableOp?=sequential_276/lstm_828/lstm_cell_828/MatMul_1/ReadVariableOp?sequential_276/lstm_828/while?<sequential_276/lstm_829/lstm_cell_829/BiasAdd/ReadVariableOp?;sequential_276/lstm_829/lstm_cell_829/MatMul/ReadVariableOp?=sequential_276/lstm_829/lstm_cell_829/MatMul_1/ReadVariableOp?sequential_276/lstm_829/while?<sequential_276/lstm_830/lstm_cell_830/BiasAdd/ReadVariableOp?;sequential_276/lstm_830/lstm_cell_830/MatMul/ReadVariableOp?=sequential_276/lstm_830/lstm_cell_830/MatMul_1/ReadVariableOp?sequential_276/lstm_830/while[
sequential_276/lstm_828/ShapeShapelstm_828_input*
T0*
_output_shapes
:u
+sequential_276/lstm_828/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_276/lstm_828/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_276/lstm_828/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_276/lstm_828/strided_sliceStridedSlice&sequential_276/lstm_828/Shape:output:04sequential_276/lstm_828/strided_slice/stack:output:06sequential_276/lstm_828/strided_slice/stack_1:output:06sequential_276/lstm_828/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_276/lstm_828/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
$sequential_276/lstm_828/zeros/packedPack.sequential_276/lstm_828/strided_slice:output:0/sequential_276/lstm_828/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_276/lstm_828/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_276/lstm_828/zerosFill-sequential_276/lstm_828/zeros/packed:output:0,sequential_276/lstm_828/zeros/Const:output:0*
T0*'
_output_shapes
:?????????dj
(sequential_276/lstm_828/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
&sequential_276/lstm_828/zeros_1/packedPack.sequential_276/lstm_828/strided_slice:output:01sequential_276/lstm_828/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_276/lstm_828/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_276/lstm_828/zeros_1Fill/sequential_276/lstm_828/zeros_1/packed:output:0.sequential_276/lstm_828/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????d{
&sequential_276/lstm_828/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_276/lstm_828/transpose	Transposelstm_828_input/sequential_276/lstm_828/transpose/perm:output:0*
T0*+
_output_shapes
:?????????t
sequential_276/lstm_828/Shape_1Shape%sequential_276/lstm_828/transpose:y:0*
T0*
_output_shapes
:w
-sequential_276/lstm_828/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_276/lstm_828/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_276/lstm_828/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_276/lstm_828/strided_slice_1StridedSlice(sequential_276/lstm_828/Shape_1:output:06sequential_276/lstm_828/strided_slice_1/stack:output:08sequential_276/lstm_828/strided_slice_1/stack_1:output:08sequential_276/lstm_828/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_276/lstm_828/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_276/lstm_828/TensorArrayV2TensorListReserve<sequential_276/lstm_828/TensorArrayV2/element_shape:output:00sequential_276/lstm_828/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_276/lstm_828/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
?sequential_276/lstm_828/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_276/lstm_828/transpose:y:0Vsequential_276/lstm_828/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_276/lstm_828/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_276/lstm_828/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_276/lstm_828/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_276/lstm_828/strided_slice_2StridedSlice%sequential_276/lstm_828/transpose:y:06sequential_276/lstm_828/strided_slice_2/stack:output:08sequential_276/lstm_828/strided_slice_2/stack_1:output:08sequential_276/lstm_828/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
;sequential_276/lstm_828/lstm_cell_828/MatMul/ReadVariableOpReadVariableOpDsequential_276_lstm_828_lstm_cell_828_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
,sequential_276/lstm_828/lstm_cell_828/MatMulMatMul0sequential_276/lstm_828/strided_slice_2:output:0Csequential_276/lstm_828/lstm_cell_828/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_276/lstm_828/lstm_cell_828/MatMul_1/ReadVariableOpReadVariableOpFsequential_276_lstm_828_lstm_cell_828_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
.sequential_276/lstm_828/lstm_cell_828/MatMul_1MatMul&sequential_276/lstm_828/zeros:output:0Esequential_276/lstm_828/lstm_cell_828/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_276/lstm_828/lstm_cell_828/addAddV26sequential_276/lstm_828/lstm_cell_828/MatMul:product:08sequential_276/lstm_828/lstm_cell_828/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_276/lstm_828/lstm_cell_828/BiasAdd/ReadVariableOpReadVariableOpEsequential_276_lstm_828_lstm_cell_828_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_276/lstm_828/lstm_cell_828/BiasAddBiasAdd-sequential_276/lstm_828/lstm_cell_828/add:z:0Dsequential_276/lstm_828/lstm_cell_828/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_276/lstm_828/lstm_cell_828/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_276/lstm_828/lstm_cell_828/splitSplit>sequential_276/lstm_828/lstm_cell_828/split/split_dim:output:06sequential_276/lstm_828/lstm_cell_828/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
-sequential_276/lstm_828/lstm_cell_828/SigmoidSigmoid4sequential_276/lstm_828/lstm_cell_828/split:output:0*
T0*'
_output_shapes
:?????????d?
/sequential_276/lstm_828/lstm_cell_828/Sigmoid_1Sigmoid4sequential_276/lstm_828/lstm_cell_828/split:output:1*
T0*'
_output_shapes
:?????????d?
)sequential_276/lstm_828/lstm_cell_828/mulMul3sequential_276/lstm_828/lstm_cell_828/Sigmoid_1:y:0(sequential_276/lstm_828/zeros_1:output:0*
T0*'
_output_shapes
:?????????d?
*sequential_276/lstm_828/lstm_cell_828/ReluRelu4sequential_276/lstm_828/lstm_cell_828/split:output:2*
T0*'
_output_shapes
:?????????d?
+sequential_276/lstm_828/lstm_cell_828/mul_1Mul1sequential_276/lstm_828/lstm_cell_828/Sigmoid:y:08sequential_276/lstm_828/lstm_cell_828/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
+sequential_276/lstm_828/lstm_cell_828/add_1AddV2-sequential_276/lstm_828/lstm_cell_828/mul:z:0/sequential_276/lstm_828/lstm_cell_828/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
/sequential_276/lstm_828/lstm_cell_828/Sigmoid_2Sigmoid4sequential_276/lstm_828/lstm_cell_828/split:output:3*
T0*'
_output_shapes
:?????????d?
,sequential_276/lstm_828/lstm_cell_828/Relu_1Relu/sequential_276/lstm_828/lstm_cell_828/add_1:z:0*
T0*'
_output_shapes
:?????????d?
+sequential_276/lstm_828/lstm_cell_828/mul_2Mul3sequential_276/lstm_828/lstm_cell_828/Sigmoid_2:y:0:sequential_276/lstm_828/lstm_cell_828/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
5sequential_276/lstm_828/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
'sequential_276/lstm_828/TensorArrayV2_1TensorListReserve>sequential_276/lstm_828/TensorArrayV2_1/element_shape:output:00sequential_276/lstm_828/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_276/lstm_828/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_276/lstm_828/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_276/lstm_828/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_276/lstm_828/whileWhile3sequential_276/lstm_828/while/loop_counter:output:09sequential_276/lstm_828/while/maximum_iterations:output:0%sequential_276/lstm_828/time:output:00sequential_276/lstm_828/TensorArrayV2_1:handle:0&sequential_276/lstm_828/zeros:output:0(sequential_276/lstm_828/zeros_1:output:00sequential_276/lstm_828/strided_slice_1:output:0Osequential_276/lstm_828/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_276_lstm_828_lstm_cell_828_matmul_readvariableop_resourceFsequential_276_lstm_828_lstm_cell_828_matmul_1_readvariableop_resourceEsequential_276_lstm_828_lstm_cell_828_biasadd_readvariableop_resource*
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
*sequential_276_lstm_828_while_body_5007409*6
cond.R,
*sequential_276_lstm_828_while_cond_5007408*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
Hsequential_276/lstm_828/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
:sequential_276/lstm_828/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_276/lstm_828/while:output:3Qsequential_276/lstm_828/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0?
-sequential_276/lstm_828/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_276/lstm_828/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_276/lstm_828/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_276/lstm_828/strided_slice_3StridedSliceCsequential_276/lstm_828/TensorArrayV2Stack/TensorListStack:tensor:06sequential_276/lstm_828/strided_slice_3/stack:output:08sequential_276/lstm_828/strided_slice_3/stack_1:output:08sequential_276/lstm_828/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask}
(sequential_276/lstm_828/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_276/lstm_828/transpose_1	TransposeCsequential_276/lstm_828/TensorArrayV2Stack/TensorListStack:tensor:01sequential_276/lstm_828/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????ds
sequential_276/lstm_828/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_276/lstm_829/ShapeShape'sequential_276/lstm_828/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_276/lstm_829/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_276/lstm_829/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_276/lstm_829/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_276/lstm_829/strided_sliceStridedSlice&sequential_276/lstm_829/Shape:output:04sequential_276/lstm_829/strided_slice/stack:output:06sequential_276/lstm_829/strided_slice/stack_1:output:06sequential_276/lstm_829/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_276/lstm_829/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
$sequential_276/lstm_829/zeros/packedPack.sequential_276/lstm_829/strided_slice:output:0/sequential_276/lstm_829/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_276/lstm_829/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_276/lstm_829/zerosFill-sequential_276/lstm_829/zeros/packed:output:0,sequential_276/lstm_829/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2j
(sequential_276/lstm_829/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
&sequential_276/lstm_829/zeros_1/packedPack.sequential_276/lstm_829/strided_slice:output:01sequential_276/lstm_829/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_276/lstm_829/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_276/lstm_829/zeros_1Fill/sequential_276/lstm_829/zeros_1/packed:output:0.sequential_276/lstm_829/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2{
&sequential_276/lstm_829/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_276/lstm_829/transpose	Transpose'sequential_276/lstm_828/transpose_1:y:0/sequential_276/lstm_829/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dt
sequential_276/lstm_829/Shape_1Shape%sequential_276/lstm_829/transpose:y:0*
T0*
_output_shapes
:w
-sequential_276/lstm_829/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_276/lstm_829/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_276/lstm_829/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_276/lstm_829/strided_slice_1StridedSlice(sequential_276/lstm_829/Shape_1:output:06sequential_276/lstm_829/strided_slice_1/stack:output:08sequential_276/lstm_829/strided_slice_1/stack_1:output:08sequential_276/lstm_829/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_276/lstm_829/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_276/lstm_829/TensorArrayV2TensorListReserve<sequential_276/lstm_829/TensorArrayV2/element_shape:output:00sequential_276/lstm_829/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_276/lstm_829/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
?sequential_276/lstm_829/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_276/lstm_829/transpose:y:0Vsequential_276/lstm_829/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_276/lstm_829/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_276/lstm_829/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_276/lstm_829/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_276/lstm_829/strided_slice_2StridedSlice%sequential_276/lstm_829/transpose:y:06sequential_276/lstm_829/strided_slice_2/stack:output:08sequential_276/lstm_829/strided_slice_2/stack_1:output:08sequential_276/lstm_829/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
;sequential_276/lstm_829/lstm_cell_829/MatMul/ReadVariableOpReadVariableOpDsequential_276_lstm_829_lstm_cell_829_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
,sequential_276/lstm_829/lstm_cell_829/MatMulMatMul0sequential_276/lstm_829/strided_slice_2:output:0Csequential_276/lstm_829/lstm_cell_829/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_276/lstm_829/lstm_cell_829/MatMul_1/ReadVariableOpReadVariableOpFsequential_276_lstm_829_lstm_cell_829_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
.sequential_276/lstm_829/lstm_cell_829/MatMul_1MatMul&sequential_276/lstm_829/zeros:output:0Esequential_276/lstm_829/lstm_cell_829/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_276/lstm_829/lstm_cell_829/addAddV26sequential_276/lstm_829/lstm_cell_829/MatMul:product:08sequential_276/lstm_829/lstm_cell_829/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_276/lstm_829/lstm_cell_829/BiasAdd/ReadVariableOpReadVariableOpEsequential_276_lstm_829_lstm_cell_829_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_276/lstm_829/lstm_cell_829/BiasAddBiasAdd-sequential_276/lstm_829/lstm_cell_829/add:z:0Dsequential_276/lstm_829/lstm_cell_829/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_276/lstm_829/lstm_cell_829/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_276/lstm_829/lstm_cell_829/splitSplit>sequential_276/lstm_829/lstm_cell_829/split/split_dim:output:06sequential_276/lstm_829/lstm_cell_829/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
-sequential_276/lstm_829/lstm_cell_829/SigmoidSigmoid4sequential_276/lstm_829/lstm_cell_829/split:output:0*
T0*'
_output_shapes
:?????????2?
/sequential_276/lstm_829/lstm_cell_829/Sigmoid_1Sigmoid4sequential_276/lstm_829/lstm_cell_829/split:output:1*
T0*'
_output_shapes
:?????????2?
)sequential_276/lstm_829/lstm_cell_829/mulMul3sequential_276/lstm_829/lstm_cell_829/Sigmoid_1:y:0(sequential_276/lstm_829/zeros_1:output:0*
T0*'
_output_shapes
:?????????2?
*sequential_276/lstm_829/lstm_cell_829/ReluRelu4sequential_276/lstm_829/lstm_cell_829/split:output:2*
T0*'
_output_shapes
:?????????2?
+sequential_276/lstm_829/lstm_cell_829/mul_1Mul1sequential_276/lstm_829/lstm_cell_829/Sigmoid:y:08sequential_276/lstm_829/lstm_cell_829/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
+sequential_276/lstm_829/lstm_cell_829/add_1AddV2-sequential_276/lstm_829/lstm_cell_829/mul:z:0/sequential_276/lstm_829/lstm_cell_829/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
/sequential_276/lstm_829/lstm_cell_829/Sigmoid_2Sigmoid4sequential_276/lstm_829/lstm_cell_829/split:output:3*
T0*'
_output_shapes
:?????????2?
,sequential_276/lstm_829/lstm_cell_829/Relu_1Relu/sequential_276/lstm_829/lstm_cell_829/add_1:z:0*
T0*'
_output_shapes
:?????????2?
+sequential_276/lstm_829/lstm_cell_829/mul_2Mul3sequential_276/lstm_829/lstm_cell_829/Sigmoid_2:y:0:sequential_276/lstm_829/lstm_cell_829/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
5sequential_276/lstm_829/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
'sequential_276/lstm_829/TensorArrayV2_1TensorListReserve>sequential_276/lstm_829/TensorArrayV2_1/element_shape:output:00sequential_276/lstm_829/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_276/lstm_829/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_276/lstm_829/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_276/lstm_829/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_276/lstm_829/whileWhile3sequential_276/lstm_829/while/loop_counter:output:09sequential_276/lstm_829/while/maximum_iterations:output:0%sequential_276/lstm_829/time:output:00sequential_276/lstm_829/TensorArrayV2_1:handle:0&sequential_276/lstm_829/zeros:output:0(sequential_276/lstm_829/zeros_1:output:00sequential_276/lstm_829/strided_slice_1:output:0Osequential_276/lstm_829/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_276_lstm_829_lstm_cell_829_matmul_readvariableop_resourceFsequential_276_lstm_829_lstm_cell_829_matmul_1_readvariableop_resourceEsequential_276_lstm_829_lstm_cell_829_biasadd_readvariableop_resource*
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
*sequential_276_lstm_829_while_body_5007548*6
cond.R,
*sequential_276_lstm_829_while_cond_5007547*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
Hsequential_276/lstm_829/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
:sequential_276/lstm_829/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_276/lstm_829/while:output:3Qsequential_276/lstm_829/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0?
-sequential_276/lstm_829/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_276/lstm_829/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_276/lstm_829/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_276/lstm_829/strided_slice_3StridedSliceCsequential_276/lstm_829/TensorArrayV2Stack/TensorListStack:tensor:06sequential_276/lstm_829/strided_slice_3/stack:output:08sequential_276/lstm_829/strided_slice_3/stack_1:output:08sequential_276/lstm_829/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask}
(sequential_276/lstm_829/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_276/lstm_829/transpose_1	TransposeCsequential_276/lstm_829/TensorArrayV2Stack/TensorListStack:tensor:01sequential_276/lstm_829/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2s
sequential_276/lstm_829/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_276/lstm_830/ShapeShape'sequential_276/lstm_829/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_276/lstm_830/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_276/lstm_830/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_276/lstm_830/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_276/lstm_830/strided_sliceStridedSlice&sequential_276/lstm_830/Shape:output:04sequential_276/lstm_830/strided_slice/stack:output:06sequential_276/lstm_830/strided_slice/stack_1:output:06sequential_276/lstm_830/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_276/lstm_830/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
$sequential_276/lstm_830/zeros/packedPack.sequential_276/lstm_830/strided_slice:output:0/sequential_276/lstm_830/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_276/lstm_830/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_276/lstm_830/zerosFill-sequential_276/lstm_830/zeros/packed:output:0,sequential_276/lstm_830/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
j
(sequential_276/lstm_830/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
&sequential_276/lstm_830/zeros_1/packedPack.sequential_276/lstm_830/strided_slice:output:01sequential_276/lstm_830/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_276/lstm_830/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_276/lstm_830/zeros_1Fill/sequential_276/lstm_830/zeros_1/packed:output:0.sequential_276/lstm_830/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
{
&sequential_276/lstm_830/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_276/lstm_830/transpose	Transpose'sequential_276/lstm_829/transpose_1:y:0/sequential_276/lstm_830/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2t
sequential_276/lstm_830/Shape_1Shape%sequential_276/lstm_830/transpose:y:0*
T0*
_output_shapes
:w
-sequential_276/lstm_830/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_276/lstm_830/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_276/lstm_830/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_276/lstm_830/strided_slice_1StridedSlice(sequential_276/lstm_830/Shape_1:output:06sequential_276/lstm_830/strided_slice_1/stack:output:08sequential_276/lstm_830/strided_slice_1/stack_1:output:08sequential_276/lstm_830/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_276/lstm_830/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_276/lstm_830/TensorArrayV2TensorListReserve<sequential_276/lstm_830/TensorArrayV2/element_shape:output:00sequential_276/lstm_830/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_276/lstm_830/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
?sequential_276/lstm_830/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_276/lstm_830/transpose:y:0Vsequential_276/lstm_830/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_276/lstm_830/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_276/lstm_830/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_276/lstm_830/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_276/lstm_830/strided_slice_2StridedSlice%sequential_276/lstm_830/transpose:y:06sequential_276/lstm_830/strided_slice_2/stack:output:08sequential_276/lstm_830/strided_slice_2/stack_1:output:08sequential_276/lstm_830/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
;sequential_276/lstm_830/lstm_cell_830/MatMul/ReadVariableOpReadVariableOpDsequential_276_lstm_830_lstm_cell_830_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
,sequential_276/lstm_830/lstm_cell_830/MatMulMatMul0sequential_276/lstm_830/strided_slice_2:output:0Csequential_276/lstm_830/lstm_cell_830/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
=sequential_276/lstm_830/lstm_cell_830/MatMul_1/ReadVariableOpReadVariableOpFsequential_276_lstm_830_lstm_cell_830_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
.sequential_276/lstm_830/lstm_cell_830/MatMul_1MatMul&sequential_276/lstm_830/zeros:output:0Esequential_276/lstm_830/lstm_cell_830/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
)sequential_276/lstm_830/lstm_cell_830/addAddV26sequential_276/lstm_830/lstm_cell_830/MatMul:product:08sequential_276/lstm_830/lstm_cell_830/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
<sequential_276/lstm_830/lstm_cell_830/BiasAdd/ReadVariableOpReadVariableOpEsequential_276_lstm_830_lstm_cell_830_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
-sequential_276/lstm_830/lstm_cell_830/BiasAddBiasAdd-sequential_276/lstm_830/lstm_cell_830/add:z:0Dsequential_276/lstm_830/lstm_cell_830/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(w
5sequential_276/lstm_830/lstm_cell_830/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_276/lstm_830/lstm_cell_830/splitSplit>sequential_276/lstm_830/lstm_cell_830/split/split_dim:output:06sequential_276/lstm_830/lstm_cell_830/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
-sequential_276/lstm_830/lstm_cell_830/SigmoidSigmoid4sequential_276/lstm_830/lstm_cell_830/split:output:0*
T0*'
_output_shapes
:?????????
?
/sequential_276/lstm_830/lstm_cell_830/Sigmoid_1Sigmoid4sequential_276/lstm_830/lstm_cell_830/split:output:1*
T0*'
_output_shapes
:?????????
?
)sequential_276/lstm_830/lstm_cell_830/mulMul3sequential_276/lstm_830/lstm_cell_830/Sigmoid_1:y:0(sequential_276/lstm_830/zeros_1:output:0*
T0*'
_output_shapes
:?????????
?
*sequential_276/lstm_830/lstm_cell_830/ReluRelu4sequential_276/lstm_830/lstm_cell_830/split:output:2*
T0*'
_output_shapes
:?????????
?
+sequential_276/lstm_830/lstm_cell_830/mul_1Mul1sequential_276/lstm_830/lstm_cell_830/Sigmoid:y:08sequential_276/lstm_830/lstm_cell_830/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
+sequential_276/lstm_830/lstm_cell_830/add_1AddV2-sequential_276/lstm_830/lstm_cell_830/mul:z:0/sequential_276/lstm_830/lstm_cell_830/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
/sequential_276/lstm_830/lstm_cell_830/Sigmoid_2Sigmoid4sequential_276/lstm_830/lstm_cell_830/split:output:3*
T0*'
_output_shapes
:?????????
?
,sequential_276/lstm_830/lstm_cell_830/Relu_1Relu/sequential_276/lstm_830/lstm_cell_830/add_1:z:0*
T0*'
_output_shapes
:?????????
?
+sequential_276/lstm_830/lstm_cell_830/mul_2Mul3sequential_276/lstm_830/lstm_cell_830/Sigmoid_2:y:0:sequential_276/lstm_830/lstm_cell_830/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
5sequential_276/lstm_830/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
'sequential_276/lstm_830/TensorArrayV2_1TensorListReserve>sequential_276/lstm_830/TensorArrayV2_1/element_shape:output:00sequential_276/lstm_830/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_276/lstm_830/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_276/lstm_830/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_276/lstm_830/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_276/lstm_830/whileWhile3sequential_276/lstm_830/while/loop_counter:output:09sequential_276/lstm_830/while/maximum_iterations:output:0%sequential_276/lstm_830/time:output:00sequential_276/lstm_830/TensorArrayV2_1:handle:0&sequential_276/lstm_830/zeros:output:0(sequential_276/lstm_830/zeros_1:output:00sequential_276/lstm_830/strided_slice_1:output:0Osequential_276/lstm_830/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_276_lstm_830_lstm_cell_830_matmul_readvariableop_resourceFsequential_276_lstm_830_lstm_cell_830_matmul_1_readvariableop_resourceEsequential_276_lstm_830_lstm_cell_830_biasadd_readvariableop_resource*
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
*sequential_276_lstm_830_while_body_5007687*6
cond.R,
*sequential_276_lstm_830_while_cond_5007686*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
Hsequential_276/lstm_830/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
:sequential_276/lstm_830/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_276/lstm_830/while:output:3Qsequential_276/lstm_830/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0?
-sequential_276/lstm_830/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_276/lstm_830/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_276/lstm_830/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_276/lstm_830/strided_slice_3StridedSliceCsequential_276/lstm_830/TensorArrayV2Stack/TensorListStack:tensor:06sequential_276/lstm_830/strided_slice_3/stack:output:08sequential_276/lstm_830/strided_slice_3/stack_1:output:08sequential_276/lstm_830/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_mask}
(sequential_276/lstm_830/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_276/lstm_830/transpose_1	TransposeCsequential_276/lstm_830/TensorArrayV2Stack/TensorListStack:tensor:01sequential_276/lstm_830/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
s
sequential_276/lstm_830/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
.sequential_276/dense_276/MatMul/ReadVariableOpReadVariableOp7sequential_276_dense_276_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
sequential_276/dense_276/MatMulMatMul0sequential_276/lstm_830/strided_slice_3:output:06sequential_276/dense_276/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
/sequential_276/dense_276/BiasAdd/ReadVariableOpReadVariableOp8sequential_276_dense_276_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
 sequential_276/dense_276/BiasAddBiasAdd)sequential_276/dense_276/MatMul:product:07sequential_276/dense_276/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x
IdentityIdentity)sequential_276/dense_276/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp0^sequential_276/dense_276/BiasAdd/ReadVariableOp/^sequential_276/dense_276/MatMul/ReadVariableOp=^sequential_276/lstm_828/lstm_cell_828/BiasAdd/ReadVariableOp<^sequential_276/lstm_828/lstm_cell_828/MatMul/ReadVariableOp>^sequential_276/lstm_828/lstm_cell_828/MatMul_1/ReadVariableOp^sequential_276/lstm_828/while=^sequential_276/lstm_829/lstm_cell_829/BiasAdd/ReadVariableOp<^sequential_276/lstm_829/lstm_cell_829/MatMul/ReadVariableOp>^sequential_276/lstm_829/lstm_cell_829/MatMul_1/ReadVariableOp^sequential_276/lstm_829/while=^sequential_276/lstm_830/lstm_cell_830/BiasAdd/ReadVariableOp<^sequential_276/lstm_830/lstm_cell_830/MatMul/ReadVariableOp>^sequential_276/lstm_830/lstm_cell_830/MatMul_1/ReadVariableOp^sequential_276/lstm_830/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2b
/sequential_276/dense_276/BiasAdd/ReadVariableOp/sequential_276/dense_276/BiasAdd/ReadVariableOp2`
.sequential_276/dense_276/MatMul/ReadVariableOp.sequential_276/dense_276/MatMul/ReadVariableOp2|
<sequential_276/lstm_828/lstm_cell_828/BiasAdd/ReadVariableOp<sequential_276/lstm_828/lstm_cell_828/BiasAdd/ReadVariableOp2z
;sequential_276/lstm_828/lstm_cell_828/MatMul/ReadVariableOp;sequential_276/lstm_828/lstm_cell_828/MatMul/ReadVariableOp2~
=sequential_276/lstm_828/lstm_cell_828/MatMul_1/ReadVariableOp=sequential_276/lstm_828/lstm_cell_828/MatMul_1/ReadVariableOp2>
sequential_276/lstm_828/whilesequential_276/lstm_828/while2|
<sequential_276/lstm_829/lstm_cell_829/BiasAdd/ReadVariableOp<sequential_276/lstm_829/lstm_cell_829/BiasAdd/ReadVariableOp2z
;sequential_276/lstm_829/lstm_cell_829/MatMul/ReadVariableOp;sequential_276/lstm_829/lstm_cell_829/MatMul/ReadVariableOp2~
=sequential_276/lstm_829/lstm_cell_829/MatMul_1/ReadVariableOp=sequential_276/lstm_829/lstm_cell_829/MatMul_1/ReadVariableOp2>
sequential_276/lstm_829/whilesequential_276/lstm_829/while2|
<sequential_276/lstm_830/lstm_cell_830/BiasAdd/ReadVariableOp<sequential_276/lstm_830/lstm_cell_830/BiasAdd/ReadVariableOp2z
;sequential_276/lstm_830/lstm_cell_830/MatMul/ReadVariableOp;sequential_276/lstm_830/lstm_cell_830/MatMul/ReadVariableOp2~
=sequential_276/lstm_830/lstm_cell_830/MatMul_1/ReadVariableOp=sequential_276/lstm_830/lstm_cell_830/MatMul_1/ReadVariableOp2>
sequential_276/lstm_830/whilesequential_276/lstm_830/while:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_828_input
?
?
while_cond_5008557
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5008557___redundant_placeholder05
1while_while_cond_5008557___redundant_placeholder15
1while_while_cond_5008557___redundant_placeholder25
1while_while_cond_5008557___redundant_placeholder3
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
while_cond_5012422
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5012422___redundant_placeholder05
1while_while_cond_5012422___redundant_placeholder15
1while_while_cond_5012422___redundant_placeholder25
1while_while_cond_5012422___redundant_placeholder3
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
while_cond_5009407
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5009407___redundant_placeholder05
1while_while_cond_5009407___redundant_placeholder15
1while_while_cond_5009407___redundant_placeholder25
1while_while_cond_5009407___redundant_placeholder3
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
while_body_5012093
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_829_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_829_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_829_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_829_matmul_readvariableop_resource:	d?G
4while_lstm_cell_829_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_829_biasadd_readvariableop_resource:	???*while/lstm_cell_829/BiasAdd/ReadVariableOp?)while/lstm_cell_829/MatMul/ReadVariableOp?+while/lstm_cell_829/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_829/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_829_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_829/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_829/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_829/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_829_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_829/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_829/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_829/addAddV2$while/lstm_cell_829/MatMul:product:0&while/lstm_cell_829/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_829/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_829_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_829/BiasAddBiasAddwhile/lstm_cell_829/add:z:02while/lstm_cell_829/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_829/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_829/splitSplit,while/lstm_cell_829/split/split_dim:output:0$while/lstm_cell_829/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_829/SigmoidSigmoid"while/lstm_cell_829/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_829/Sigmoid_1Sigmoid"while/lstm_cell_829/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_829/mulMul!while/lstm_cell_829/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_829/ReluRelu"while/lstm_cell_829/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_829/mul_1Mulwhile/lstm_cell_829/Sigmoid:y:0&while/lstm_cell_829/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_829/add_1AddV2while/lstm_cell_829/mul:z:0while/lstm_cell_829/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_829/Sigmoid_2Sigmoid"while/lstm_cell_829/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_829/Relu_1Reluwhile/lstm_cell_829/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_829/mul_2Mul!while/lstm_cell_829/Sigmoid_2:y:0(while/lstm_cell_829/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_829/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_829/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_829/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_829/BiasAdd/ReadVariableOp*^while/lstm_cell_829/MatMul/ReadVariableOp,^while/lstm_cell_829/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_829_biasadd_readvariableop_resource5while_lstm_cell_829_biasadd_readvariableop_resource_0"n
4while_lstm_cell_829_matmul_1_readvariableop_resource6while_lstm_cell_829_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_829_matmul_readvariableop_resource4while_lstm_cell_829_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_829/BiasAdd/ReadVariableOp*while/lstm_cell_829/BiasAdd/ReadVariableOp2V
)while/lstm_cell_829/MatMul/ReadVariableOp)while/lstm_cell_829/MatMul/ReadVariableOp2Z
+while/lstm_cell_829/MatMul_1/ReadVariableOp+while/lstm_cell_829/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_830_layer_call_and_return_conditional_losses_5008818

inputs'
lstm_cell_830_5008736:2('
lstm_cell_830_5008738:
(#
lstm_cell_830_5008740:(
identity??%lstm_cell_830/StatefulPartitionedCall?while;
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
%lstm_cell_830/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_830_5008736lstm_cell_830_5008738lstm_cell_830_5008740*
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
J__inference_lstm_cell_830_layer_call_and_return_conditional_losses_5008690n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_830_5008736lstm_cell_830_5008738lstm_cell_830_5008740*
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
while_body_5008749*
condR
while_cond_5008748*K
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
NoOpNoOp&^lstm_cell_830/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_830/StatefulPartitionedCall%lstm_cell_830/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?
?
*sequential_276_lstm_829_while_cond_5007547L
Hsequential_276_lstm_829_while_sequential_276_lstm_829_while_loop_counterR
Nsequential_276_lstm_829_while_sequential_276_lstm_829_while_maximum_iterations-
)sequential_276_lstm_829_while_placeholder/
+sequential_276_lstm_829_while_placeholder_1/
+sequential_276_lstm_829_while_placeholder_2/
+sequential_276_lstm_829_while_placeholder_3N
Jsequential_276_lstm_829_while_less_sequential_276_lstm_829_strided_slice_1e
asequential_276_lstm_829_while_sequential_276_lstm_829_while_cond_5007547___redundant_placeholder0e
asequential_276_lstm_829_while_sequential_276_lstm_829_while_cond_5007547___redundant_placeholder1e
asequential_276_lstm_829_while_sequential_276_lstm_829_while_cond_5007547___redundant_placeholder2e
asequential_276_lstm_829_while_sequential_276_lstm_829_while_cond_5007547___redundant_placeholder3*
&sequential_276_lstm_829_while_identity
?
"sequential_276/lstm_829/while/LessLess)sequential_276_lstm_829_while_placeholderJsequential_276_lstm_829_while_less_sequential_276_lstm_829_strided_slice_1*
T0*
_output_shapes
: {
&sequential_276/lstm_829/while/IdentityIdentity&sequential_276/lstm_829/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_276_lstm_829_while_identity/sequential_276/lstm_829/while/Identity:output:0*(
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

lstm_828_while_body_5010150.
*lstm_828_while_lstm_828_while_loop_counter4
0lstm_828_while_lstm_828_while_maximum_iterations
lstm_828_while_placeholder 
lstm_828_while_placeholder_1 
lstm_828_while_placeholder_2 
lstm_828_while_placeholder_3-
)lstm_828_while_lstm_828_strided_slice_1_0i
elstm_828_while_tensorarrayv2read_tensorlistgetitem_lstm_828_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_828_while_lstm_cell_828_matmul_readvariableop_resource_0:	?R
?lstm_828_while_lstm_cell_828_matmul_1_readvariableop_resource_0:	d?M
>lstm_828_while_lstm_cell_828_biasadd_readvariableop_resource_0:	?
lstm_828_while_identity
lstm_828_while_identity_1
lstm_828_while_identity_2
lstm_828_while_identity_3
lstm_828_while_identity_4
lstm_828_while_identity_5+
'lstm_828_while_lstm_828_strided_slice_1g
clstm_828_while_tensorarrayv2read_tensorlistgetitem_lstm_828_tensorarrayunstack_tensorlistfromtensorN
;lstm_828_while_lstm_cell_828_matmul_readvariableop_resource:	?P
=lstm_828_while_lstm_cell_828_matmul_1_readvariableop_resource:	d?K
<lstm_828_while_lstm_cell_828_biasadd_readvariableop_resource:	???3lstm_828/while/lstm_cell_828/BiasAdd/ReadVariableOp?2lstm_828/while/lstm_cell_828/MatMul/ReadVariableOp?4lstm_828/while/lstm_cell_828/MatMul_1/ReadVariableOp?
@lstm_828/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_828/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_828_while_tensorarrayv2read_tensorlistgetitem_lstm_828_tensorarrayunstack_tensorlistfromtensor_0lstm_828_while_placeholderIlstm_828/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_828/while/lstm_cell_828/MatMul/ReadVariableOpReadVariableOp=lstm_828_while_lstm_cell_828_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_828/while/lstm_cell_828/MatMulMatMul9lstm_828/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_828/while/lstm_cell_828/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_828/while/lstm_cell_828/MatMul_1/ReadVariableOpReadVariableOp?lstm_828_while_lstm_cell_828_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_828/while/lstm_cell_828/MatMul_1MatMullstm_828_while_placeholder_2<lstm_828/while/lstm_cell_828/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_828/while/lstm_cell_828/addAddV2-lstm_828/while/lstm_cell_828/MatMul:product:0/lstm_828/while/lstm_cell_828/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_828/while/lstm_cell_828/BiasAdd/ReadVariableOpReadVariableOp>lstm_828_while_lstm_cell_828_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_828/while/lstm_cell_828/BiasAddBiasAdd$lstm_828/while/lstm_cell_828/add:z:0;lstm_828/while/lstm_cell_828/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_828/while/lstm_cell_828/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_828/while/lstm_cell_828/splitSplit5lstm_828/while/lstm_cell_828/split/split_dim:output:0-lstm_828/while/lstm_cell_828/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_828/while/lstm_cell_828/SigmoidSigmoid+lstm_828/while/lstm_cell_828/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_828/while/lstm_cell_828/Sigmoid_1Sigmoid+lstm_828/while/lstm_cell_828/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_828/while/lstm_cell_828/mulMul*lstm_828/while/lstm_cell_828/Sigmoid_1:y:0lstm_828_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_828/while/lstm_cell_828/ReluRelu+lstm_828/while/lstm_cell_828/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_828/while/lstm_cell_828/mul_1Mul(lstm_828/while/lstm_cell_828/Sigmoid:y:0/lstm_828/while/lstm_cell_828/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_828/while/lstm_cell_828/add_1AddV2$lstm_828/while/lstm_cell_828/mul:z:0&lstm_828/while/lstm_cell_828/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_828/while/lstm_cell_828/Sigmoid_2Sigmoid+lstm_828/while/lstm_cell_828/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_828/while/lstm_cell_828/Relu_1Relu&lstm_828/while/lstm_cell_828/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_828/while/lstm_cell_828/mul_2Mul*lstm_828/while/lstm_cell_828/Sigmoid_2:y:01lstm_828/while/lstm_cell_828/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_828/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_828_while_placeholder_1lstm_828_while_placeholder&lstm_828/while/lstm_cell_828/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_828/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_828/while/addAddV2lstm_828_while_placeholderlstm_828/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_828/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_828/while/add_1AddV2*lstm_828_while_lstm_828_while_loop_counterlstm_828/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_828/while/IdentityIdentitylstm_828/while/add_1:z:0^lstm_828/while/NoOp*
T0*
_output_shapes
: ?
lstm_828/while/Identity_1Identity0lstm_828_while_lstm_828_while_maximum_iterations^lstm_828/while/NoOp*
T0*
_output_shapes
: t
lstm_828/while/Identity_2Identitylstm_828/while/add:z:0^lstm_828/while/NoOp*
T0*
_output_shapes
: ?
lstm_828/while/Identity_3IdentityClstm_828/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_828/while/NoOp*
T0*
_output_shapes
: ?
lstm_828/while/Identity_4Identity&lstm_828/while/lstm_cell_828/mul_2:z:0^lstm_828/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_828/while/Identity_5Identity&lstm_828/while/lstm_cell_828/add_1:z:0^lstm_828/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_828/while/NoOpNoOp4^lstm_828/while/lstm_cell_828/BiasAdd/ReadVariableOp3^lstm_828/while/lstm_cell_828/MatMul/ReadVariableOp5^lstm_828/while/lstm_cell_828/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_828_while_identity lstm_828/while/Identity:output:0"?
lstm_828_while_identity_1"lstm_828/while/Identity_1:output:0"?
lstm_828_while_identity_2"lstm_828/while/Identity_2:output:0"?
lstm_828_while_identity_3"lstm_828/while/Identity_3:output:0"?
lstm_828_while_identity_4"lstm_828/while/Identity_4:output:0"?
lstm_828_while_identity_5"lstm_828/while/Identity_5:output:0"T
'lstm_828_while_lstm_828_strided_slice_1)lstm_828_while_lstm_828_strided_slice_1_0"~
<lstm_828_while_lstm_cell_828_biasadd_readvariableop_resource>lstm_828_while_lstm_cell_828_biasadd_readvariableop_resource_0"?
=lstm_828_while_lstm_cell_828_matmul_1_readvariableop_resource?lstm_828_while_lstm_cell_828_matmul_1_readvariableop_resource_0"|
;lstm_828_while_lstm_cell_828_matmul_readvariableop_resource=lstm_828_while_lstm_cell_828_matmul_readvariableop_resource_0"?
clstm_828_while_tensorarrayv2read_tensorlistgetitem_lstm_828_tensorarrayunstack_tensorlistfromtensorelstm_828_while_tensorarrayv2read_tensorlistgetitem_lstm_828_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_828/while/lstm_cell_828/BiasAdd/ReadVariableOp3lstm_828/while/lstm_cell_828/BiasAdd/ReadVariableOp2h
2lstm_828/while/lstm_cell_828/MatMul/ReadVariableOp2lstm_828/while/lstm_cell_828/MatMul/ReadVariableOp2l
4lstm_828/while/lstm_cell_828/MatMul_1/ReadVariableOp4lstm_828/while/lstm_cell_828/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
F__inference_dense_276_layer_call_and_return_conditional_losses_5012812

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
lstm_828_while_cond_5010576.
*lstm_828_while_lstm_828_while_loop_counter4
0lstm_828_while_lstm_828_while_maximum_iterations
lstm_828_while_placeholder 
lstm_828_while_placeholder_1 
lstm_828_while_placeholder_2 
lstm_828_while_placeholder_30
,lstm_828_while_less_lstm_828_strided_slice_1G
Clstm_828_while_lstm_828_while_cond_5010576___redundant_placeholder0G
Clstm_828_while_lstm_828_while_cond_5010576___redundant_placeholder1G
Clstm_828_while_lstm_828_while_cond_5010576___redundant_placeholder2G
Clstm_828_while_lstm_828_while_cond_5010576___redundant_placeholder3
lstm_828_while_identity
?
lstm_828/while/LessLesslstm_828_while_placeholder,lstm_828_while_less_lstm_828_strided_slice_1*
T0*
_output_shapes
: ]
lstm_828/while/IdentityIdentitylstm_828/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_828_while_identity lstm_828/while/Identity:output:0*(
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
*__inference_lstm_829_layer_call_fn_5011605

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
E__inference_lstm_829_layer_call_and_return_conditional_losses_5009657s
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
J__inference_lstm_cell_830_layer_call_and_return_conditional_losses_5008690

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
??
?
#__inference__traced_restore_5013379
file_prefix3
!assignvariableop_dense_276_kernel:
/
!assignvariableop_1_dense_276_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: C
0assignvariableop_7_lstm_828_lstm_cell_828_kernel:	?M
:assignvariableop_8_lstm_828_lstm_cell_828_recurrent_kernel:	d?=
.assignvariableop_9_lstm_828_lstm_cell_828_bias:	?D
1assignvariableop_10_lstm_829_lstm_cell_829_kernel:	d?N
;assignvariableop_11_lstm_829_lstm_cell_829_recurrent_kernel:	2?>
/assignvariableop_12_lstm_829_lstm_cell_829_bias:	?C
1assignvariableop_13_lstm_830_lstm_cell_830_kernel:2(M
;assignvariableop_14_lstm_830_lstm_cell_830_recurrent_kernel:
(=
/assignvariableop_15_lstm_830_lstm_cell_830_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: =
+assignvariableop_18_adam_dense_276_kernel_m:
7
)assignvariableop_19_adam_dense_276_bias_m:K
8assignvariableop_20_adam_lstm_828_lstm_cell_828_kernel_m:	?U
Bassignvariableop_21_adam_lstm_828_lstm_cell_828_recurrent_kernel_m:	d?E
6assignvariableop_22_adam_lstm_828_lstm_cell_828_bias_m:	?K
8assignvariableop_23_adam_lstm_829_lstm_cell_829_kernel_m:	d?U
Bassignvariableop_24_adam_lstm_829_lstm_cell_829_recurrent_kernel_m:	2?E
6assignvariableop_25_adam_lstm_829_lstm_cell_829_bias_m:	?J
8assignvariableop_26_adam_lstm_830_lstm_cell_830_kernel_m:2(T
Bassignvariableop_27_adam_lstm_830_lstm_cell_830_recurrent_kernel_m:
(D
6assignvariableop_28_adam_lstm_830_lstm_cell_830_bias_m:(=
+assignvariableop_29_adam_dense_276_kernel_v:
7
)assignvariableop_30_adam_dense_276_bias_v:K
8assignvariableop_31_adam_lstm_828_lstm_cell_828_kernel_v:	?U
Bassignvariableop_32_adam_lstm_828_lstm_cell_828_recurrent_kernel_v:	d?E
6assignvariableop_33_adam_lstm_828_lstm_cell_828_bias_v:	?K
8assignvariableop_34_adam_lstm_829_lstm_cell_829_kernel_v:	d?U
Bassignvariableop_35_adam_lstm_829_lstm_cell_829_recurrent_kernel_v:	2?E
6assignvariableop_36_adam_lstm_829_lstm_cell_829_bias_v:	?J
8assignvariableop_37_adam_lstm_830_lstm_cell_830_kernel_v:2(T
Bassignvariableop_38_adam_lstm_830_lstm_cell_830_recurrent_kernel_v:
(D
6assignvariableop_39_adam_lstm_830_lstm_cell_830_bias_v:(
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
AssignVariableOpAssignVariableOp!assignvariableop_dense_276_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_276_biasIdentity_1:output:0"/device:CPU:0*
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
AssignVariableOp_7AssignVariableOp0assignvariableop_7_lstm_828_lstm_cell_828_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp:assignvariableop_8_lstm_828_lstm_cell_828_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_828_lstm_cell_828_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp1assignvariableop_10_lstm_829_lstm_cell_829_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp;assignvariableop_11_lstm_829_lstm_cell_829_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp/assignvariableop_12_lstm_829_lstm_cell_829_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp1assignvariableop_13_lstm_830_lstm_cell_830_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp;assignvariableop_14_lstm_830_lstm_cell_830_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp/assignvariableop_15_lstm_830_lstm_cell_830_biasIdentity_15:output:0"/device:CPU:0*
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
AssignVariableOp_18AssignVariableOp+assignvariableop_18_adam_dense_276_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp)assignvariableop_19_adam_dense_276_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp8assignvariableop_20_adam_lstm_828_lstm_cell_828_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOpBassignvariableop_21_adam_lstm_828_lstm_cell_828_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp6assignvariableop_22_adam_lstm_828_lstm_cell_828_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp8assignvariableop_23_adam_lstm_829_lstm_cell_829_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOpBassignvariableop_24_adam_lstm_829_lstm_cell_829_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_829_lstm_cell_829_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp8assignvariableop_26_adam_lstm_830_lstm_cell_830_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOpBassignvariableop_27_adam_lstm_830_lstm_cell_830_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_lstm_830_lstm_cell_830_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp+assignvariableop_29_adam_dense_276_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_dense_276_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp8assignvariableop_31_adam_lstm_828_lstm_cell_828_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOpBassignvariableop_32_adam_lstm_828_lstm_cell_828_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOp6assignvariableop_33_adam_lstm_828_lstm_cell_828_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOp8assignvariableop_34_adam_lstm_829_lstm_cell_829_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOpBassignvariableop_35_adam_lstm_829_lstm_cell_829_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adam_lstm_829_lstm_cell_829_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_37AssignVariableOp8assignvariableop_37_adam_lstm_830_lstm_cell_830_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_38AssignVariableOpBassignvariableop_38_adam_lstm_830_lstm_cell_830_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_lstm_830_lstm_cell_830_bias_vIdentity_39:output:0"/device:CPU:0*
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
?
/__inference_lstm_cell_828_layer_call_fn_5012846

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
J__inference_lstm_cell_828_layer_call_and_return_conditional_losses_5007990o
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
J__inference_lstm_cell_828_layer_call_and_return_conditional_losses_5007844

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
*__inference_lstm_830_layer_call_fn_5012188
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
E__inference_lstm_830_layer_call_and_return_conditional_losses_5008627o
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
while_cond_5008207
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5008207___redundant_placeholder05
1while_while_cond_5008207___redundant_placeholder15
1while_while_cond_5008207___redundant_placeholder25
1while_while_cond_5008207___redundant_placeholder3
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
*sequential_276_lstm_830_while_cond_5007686L
Hsequential_276_lstm_830_while_sequential_276_lstm_830_while_loop_counterR
Nsequential_276_lstm_830_while_sequential_276_lstm_830_while_maximum_iterations-
)sequential_276_lstm_830_while_placeholder/
+sequential_276_lstm_830_while_placeholder_1/
+sequential_276_lstm_830_while_placeholder_2/
+sequential_276_lstm_830_while_placeholder_3N
Jsequential_276_lstm_830_while_less_sequential_276_lstm_830_strided_slice_1e
asequential_276_lstm_830_while_sequential_276_lstm_830_while_cond_5007686___redundant_placeholder0e
asequential_276_lstm_830_while_sequential_276_lstm_830_while_cond_5007686___redundant_placeholder1e
asequential_276_lstm_830_while_sequential_276_lstm_830_while_cond_5007686___redundant_placeholder2e
asequential_276_lstm_830_while_sequential_276_lstm_830_while_cond_5007686___redundant_placeholder3*
&sequential_276_lstm_830_while_identity
?
"sequential_276/lstm_830/while/LessLess)sequential_276_lstm_830_while_placeholderJsequential_276_lstm_830_while_less_sequential_276_lstm_830_strided_slice_1*
T0*
_output_shapes
: {
&sequential_276/lstm_830/while/IdentityIdentity&sequential_276/lstm_830/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_276_lstm_830_while_identity/sequential_276/lstm_830/while/Identity:output:0*(
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
E__inference_lstm_829_layer_call_and_return_conditional_losses_5008277

inputs(
lstm_cell_829_5008195:	d?(
lstm_cell_829_5008197:	2?$
lstm_cell_829_5008199:	?
identity??%lstm_cell_829/StatefulPartitionedCall?while;
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
%lstm_cell_829/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_829_5008195lstm_cell_829_5008197lstm_cell_829_5008199*
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
J__inference_lstm_cell_829_layer_call_and_return_conditional_losses_5008194n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_829_5008195lstm_cell_829_5008197lstm_cell_829_5008199*
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
while_body_5008208*
condR
while_cond_5008207*K
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
NoOpNoOp&^lstm_cell_829/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_829/StatefulPartitionedCall%lstm_cell_829/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?
?
K__inference_sequential_276_layer_call_and_return_conditional_losses_5010002
lstm_828_input#
lstm_828_5009975:	?#
lstm_828_5009977:	d?
lstm_828_5009979:	?#
lstm_829_5009982:	d?#
lstm_829_5009984:	2?
lstm_829_5009986:	?"
lstm_830_5009989:2("
lstm_830_5009991:
(
lstm_830_5009993:(#
dense_276_5009996:

dense_276_5009998:
identity??!dense_276/StatefulPartitionedCall? lstm_828/StatefulPartitionedCall? lstm_829/StatefulPartitionedCall? lstm_830/StatefulPartitionedCall?
 lstm_828/StatefulPartitionedCallStatefulPartitionedCalllstm_828_inputlstm_828_5009975lstm_828_5009977lstm_828_5009979*
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
E__inference_lstm_828_layer_call_and_return_conditional_losses_5009822?
 lstm_829/StatefulPartitionedCallStatefulPartitionedCall)lstm_828/StatefulPartitionedCall:output:0lstm_829_5009982lstm_829_5009984lstm_829_5009986*
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
E__inference_lstm_829_layer_call_and_return_conditional_losses_5009657?
 lstm_830/StatefulPartitionedCallStatefulPartitionedCall)lstm_829/StatefulPartitionedCall:output:0lstm_830_5009989lstm_830_5009991lstm_830_5009993*
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
E__inference_lstm_830_layer_call_and_return_conditional_losses_5009492?
!dense_276/StatefulPartitionedCallStatefulPartitionedCall)lstm_830/StatefulPartitionedCall:output:0dense_276_5009996dense_276_5009998*
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
F__inference_dense_276_layer_call_and_return_conditional_losses_5009294y
IdentityIdentity*dense_276/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_276/StatefulPartitionedCall!^lstm_828/StatefulPartitionedCall!^lstm_829/StatefulPartitionedCall!^lstm_830/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_276/StatefulPartitionedCall!dense_276/StatefulPartitionedCall2D
 lstm_828/StatefulPartitionedCall lstm_828/StatefulPartitionedCall2D
 lstm_829/StatefulPartitionedCall lstm_829/StatefulPartitionedCall2D
 lstm_830/StatefulPartitionedCall lstm_830/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_828_input
?
?
J__inference_lstm_cell_830_layer_call_and_return_conditional_losses_5008544

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
lstm_829_while_cond_5010288.
*lstm_829_while_lstm_829_while_loop_counter4
0lstm_829_while_lstm_829_while_maximum_iterations
lstm_829_while_placeholder 
lstm_829_while_placeholder_1 
lstm_829_while_placeholder_2 
lstm_829_while_placeholder_30
,lstm_829_while_less_lstm_829_strided_slice_1G
Clstm_829_while_lstm_829_while_cond_5010288___redundant_placeholder0G
Clstm_829_while_lstm_829_while_cond_5010288___redundant_placeholder1G
Clstm_829_while_lstm_829_while_cond_5010288___redundant_placeholder2G
Clstm_829_while_lstm_829_while_cond_5010288___redundant_placeholder3
lstm_829_while_identity
?
lstm_829/while/LessLesslstm_829_while_placeholder,lstm_829_while_less_lstm_829_strided_slice_1*
T0*
_output_shapes
: ]
lstm_829/while/IdentityIdentitylstm_829/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_829_while_identity lstm_829/while/Identity:output:0*(
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
J__inference_lstm_cell_829_layer_call_and_return_conditional_losses_5012976

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
*__inference_lstm_830_layer_call_fn_5012199
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
E__inference_lstm_830_layer_call_and_return_conditional_losses_5008818o
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
while_body_5009408
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_830_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_830_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_830_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_830_matmul_readvariableop_resource:2(F
4while_lstm_cell_830_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_830_biasadd_readvariableop_resource:(??*while/lstm_cell_830/BiasAdd/ReadVariableOp?)while/lstm_cell_830/MatMul/ReadVariableOp?+while/lstm_cell_830/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_830/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_830_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_830/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_830/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_830/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_830_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_830/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_830/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_830/addAddV2$while/lstm_cell_830/MatMul:product:0&while/lstm_cell_830/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_830/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_830_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_830/BiasAddBiasAddwhile/lstm_cell_830/add:z:02while/lstm_cell_830/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_830/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_830/splitSplit,while/lstm_cell_830/split/split_dim:output:0$while/lstm_cell_830/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_830/SigmoidSigmoid"while/lstm_cell_830/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_830/Sigmoid_1Sigmoid"while/lstm_cell_830/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_830/mulMul!while/lstm_cell_830/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_830/ReluRelu"while/lstm_cell_830/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_830/mul_1Mulwhile/lstm_cell_830/Sigmoid:y:0&while/lstm_cell_830/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_830/add_1AddV2while/lstm_cell_830/mul:z:0while/lstm_cell_830/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_830/Sigmoid_2Sigmoid"while/lstm_cell_830/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_830/Relu_1Reluwhile/lstm_cell_830/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_830/mul_2Mul!while/lstm_cell_830/Sigmoid_2:y:0(while/lstm_cell_830/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_830/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_830/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_830/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_830/BiasAdd/ReadVariableOp*^while/lstm_cell_830/MatMul/ReadVariableOp,^while/lstm_cell_830/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_830_biasadd_readvariableop_resource5while_lstm_cell_830_biasadd_readvariableop_resource_0"n
4while_lstm_cell_830_matmul_1_readvariableop_resource6while_lstm_cell_830_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_830_matmul_readvariableop_resource4while_lstm_cell_830_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_830/BiasAdd/ReadVariableOp*while/lstm_cell_830/BiasAdd/ReadVariableOp2V
)while/lstm_cell_830/MatMul/ReadVariableOp)while/lstm_cell_830/MatMul/ReadVariableOp2Z
+while/lstm_cell_830/MatMul_1/ReadVariableOp+while/lstm_cell_830/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_828_layer_call_and_return_conditional_losses_5008976

inputs?
,lstm_cell_828_matmul_readvariableop_resource:	?A
.lstm_cell_828_matmul_1_readvariableop_resource:	d?<
-lstm_cell_828_biasadd_readvariableop_resource:	?
identity??$lstm_cell_828/BiasAdd/ReadVariableOp?#lstm_cell_828/MatMul/ReadVariableOp?%lstm_cell_828/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_828/MatMul/ReadVariableOpReadVariableOp,lstm_cell_828_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_828/MatMulMatMulstrided_slice_2:output:0+lstm_cell_828/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_828/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_828_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_828/MatMul_1MatMulzeros:output:0-lstm_cell_828/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_828/addAddV2lstm_cell_828/MatMul:product:0 lstm_cell_828/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_828/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_828_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_828/BiasAddBiasAddlstm_cell_828/add:z:0,lstm_cell_828/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_828/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_828/splitSplit&lstm_cell_828/split/split_dim:output:0lstm_cell_828/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_828/SigmoidSigmoidlstm_cell_828/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_828/Sigmoid_1Sigmoidlstm_cell_828/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_828/mulMullstm_cell_828/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_828/ReluRelulstm_cell_828/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_828/mul_1Mullstm_cell_828/Sigmoid:y:0 lstm_cell_828/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_828/add_1AddV2lstm_cell_828/mul:z:0lstm_cell_828/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_828/Sigmoid_2Sigmoidlstm_cell_828/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_828/Relu_1Relulstm_cell_828/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_828/mul_2Mullstm_cell_828/Sigmoid_2:y:0"lstm_cell_828/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_828_matmul_readvariableop_resource.lstm_cell_828_matmul_1_readvariableop_resource-lstm_cell_828_biasadd_readvariableop_resource*
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
while_body_5008892*
condR
while_cond_5008891*K
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
NoOpNoOp%^lstm_cell_828/BiasAdd/ReadVariableOp$^lstm_cell_828/MatMul/ReadVariableOp&^lstm_cell_828/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_828/BiasAdd/ReadVariableOp$lstm_cell_828/BiasAdd/ReadVariableOp2J
#lstm_cell_828/MatMul/ReadVariableOp#lstm_cell_828/MatMul/ReadVariableOp2N
%lstm_cell_828/MatMul_1/ReadVariableOp%lstm_cell_828/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
while_body_5012709
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_830_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_830_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_830_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_830_matmul_readvariableop_resource:2(F
4while_lstm_cell_830_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_830_biasadd_readvariableop_resource:(??*while/lstm_cell_830/BiasAdd/ReadVariableOp?)while/lstm_cell_830/MatMul/ReadVariableOp?+while/lstm_cell_830/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_830/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_830_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_830/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_830/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_830/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_830_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_830/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_830/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_830/addAddV2$while/lstm_cell_830/MatMul:product:0&while/lstm_cell_830/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_830/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_830_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_830/BiasAddBiasAddwhile/lstm_cell_830/add:z:02while/lstm_cell_830/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_830/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_830/splitSplit,while/lstm_cell_830/split/split_dim:output:0$while/lstm_cell_830/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_830/SigmoidSigmoid"while/lstm_cell_830/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_830/Sigmoid_1Sigmoid"while/lstm_cell_830/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_830/mulMul!while/lstm_cell_830/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_830/ReluRelu"while/lstm_cell_830/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_830/mul_1Mulwhile/lstm_cell_830/Sigmoid:y:0&while/lstm_cell_830/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_830/add_1AddV2while/lstm_cell_830/mul:z:0while/lstm_cell_830/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_830/Sigmoid_2Sigmoid"while/lstm_cell_830/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_830/Relu_1Reluwhile/lstm_cell_830/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_830/mul_2Mul!while/lstm_cell_830/Sigmoid_2:y:0(while/lstm_cell_830/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_830/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_830/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_830/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_830/BiasAdd/ReadVariableOp*^while/lstm_cell_830/MatMul/ReadVariableOp,^while/lstm_cell_830/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_830_biasadd_readvariableop_resource5while_lstm_cell_830_biasadd_readvariableop_resource_0"n
4while_lstm_cell_830_matmul_1_readvariableop_resource6while_lstm_cell_830_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_830_matmul_readvariableop_resource4while_lstm_cell_830_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_830/BiasAdd/ReadVariableOp*while/lstm_cell_830/BiasAdd/ReadVariableOp2V
)while/lstm_cell_830/MatMul/ReadVariableOp)while/lstm_cell_830/MatMul/ReadVariableOp2Z
+while/lstm_cell_830/MatMul_1/ReadVariableOp+while/lstm_cell_830/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_829_layer_call_fn_5012944

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
J__inference_lstm_cell_829_layer_call_and_return_conditional_losses_5008340o
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
J__inference_lstm_cell_828_layer_call_and_return_conditional_losses_5012910

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
while_cond_5008748
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5008748___redundant_placeholder05
1while_while_cond_5008748___redundant_placeholder15
1while_while_cond_5008748___redundant_placeholder25
1while_while_cond_5008748___redundant_placeholder3
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
while_body_5012423
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_830_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_830_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_830_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_830_matmul_readvariableop_resource:2(F
4while_lstm_cell_830_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_830_biasadd_readvariableop_resource:(??*while/lstm_cell_830/BiasAdd/ReadVariableOp?)while/lstm_cell_830/MatMul/ReadVariableOp?+while/lstm_cell_830/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_830/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_830_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_830/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_830/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_830/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_830_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_830/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_830/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_830/addAddV2$while/lstm_cell_830/MatMul:product:0&while/lstm_cell_830/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_830/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_830_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_830/BiasAddBiasAddwhile/lstm_cell_830/add:z:02while/lstm_cell_830/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_830/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_830/splitSplit,while/lstm_cell_830/split/split_dim:output:0$while/lstm_cell_830/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_830/SigmoidSigmoid"while/lstm_cell_830/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_830/Sigmoid_1Sigmoid"while/lstm_cell_830/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_830/mulMul!while/lstm_cell_830/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_830/ReluRelu"while/lstm_cell_830/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_830/mul_1Mulwhile/lstm_cell_830/Sigmoid:y:0&while/lstm_cell_830/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_830/add_1AddV2while/lstm_cell_830/mul:z:0while/lstm_cell_830/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_830/Sigmoid_2Sigmoid"while/lstm_cell_830/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_830/Relu_1Reluwhile/lstm_cell_830/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_830/mul_2Mul!while/lstm_cell_830/Sigmoid_2:y:0(while/lstm_cell_830/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_830/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_830/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_830/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_830/BiasAdd/ReadVariableOp*^while/lstm_cell_830/MatMul/ReadVariableOp,^while/lstm_cell_830/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_830_biasadd_readvariableop_resource5while_lstm_cell_830_biasadd_readvariableop_resource_0"n
4while_lstm_cell_830_matmul_1_readvariableop_resource6while_lstm_cell_830_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_830_matmul_readvariableop_resource4while_lstm_cell_830_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_830/BiasAdd/ReadVariableOp*while/lstm_cell_830/BiasAdd/ReadVariableOp2V
)while/lstm_cell_830/MatMul/ReadVariableOp)while/lstm_cell_830/MatMul/ReadVariableOp2Z
+while/lstm_cell_830/MatMul_1/ReadVariableOp+while/lstm_cell_830/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*sequential_276_lstm_828_while_cond_5007408L
Hsequential_276_lstm_828_while_sequential_276_lstm_828_while_loop_counterR
Nsequential_276_lstm_828_while_sequential_276_lstm_828_while_maximum_iterations-
)sequential_276_lstm_828_while_placeholder/
+sequential_276_lstm_828_while_placeholder_1/
+sequential_276_lstm_828_while_placeholder_2/
+sequential_276_lstm_828_while_placeholder_3N
Jsequential_276_lstm_828_while_less_sequential_276_lstm_828_strided_slice_1e
asequential_276_lstm_828_while_sequential_276_lstm_828_while_cond_5007408___redundant_placeholder0e
asequential_276_lstm_828_while_sequential_276_lstm_828_while_cond_5007408___redundant_placeholder1e
asequential_276_lstm_828_while_sequential_276_lstm_828_while_cond_5007408___redundant_placeholder2e
asequential_276_lstm_828_while_sequential_276_lstm_828_while_cond_5007408___redundant_placeholder3*
&sequential_276_lstm_828_while_identity
?
"sequential_276/lstm_828/while/LessLess)sequential_276_lstm_828_while_placeholderJsequential_276_lstm_828_while_less_sequential_276_lstm_828_strided_slice_1*
T0*
_output_shapes
: {
&sequential_276/lstm_828/while/IdentityIdentity&sequential_276/lstm_828/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_276_lstm_828_while_identity/sequential_276/lstm_828/while/Identity:output:0*(
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
while_cond_5011190
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5011190___redundant_placeholder05
1while_while_cond_5011190___redundant_placeholder15
1while_while_cond_5011190___redundant_placeholder25
1while_while_cond_5011190___redundant_placeholder3
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
while_body_5009573
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_829_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_829_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_829_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_829_matmul_readvariableop_resource:	d?G
4while_lstm_cell_829_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_829_biasadd_readvariableop_resource:	???*while/lstm_cell_829/BiasAdd/ReadVariableOp?)while/lstm_cell_829/MatMul/ReadVariableOp?+while/lstm_cell_829/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_829/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_829_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_829/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_829/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_829/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_829_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_829/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_829/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_829/addAddV2$while/lstm_cell_829/MatMul:product:0&while/lstm_cell_829/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_829/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_829_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_829/BiasAddBiasAddwhile/lstm_cell_829/add:z:02while/lstm_cell_829/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_829/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_829/splitSplit,while/lstm_cell_829/split/split_dim:output:0$while/lstm_cell_829/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_829/SigmoidSigmoid"while/lstm_cell_829/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_829/Sigmoid_1Sigmoid"while/lstm_cell_829/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_829/mulMul!while/lstm_cell_829/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_829/ReluRelu"while/lstm_cell_829/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_829/mul_1Mulwhile/lstm_cell_829/Sigmoid:y:0&while/lstm_cell_829/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_829/add_1AddV2while/lstm_cell_829/mul:z:0while/lstm_cell_829/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_829/Sigmoid_2Sigmoid"while/lstm_cell_829/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_829/Relu_1Reluwhile/lstm_cell_829/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_829/mul_2Mul!while/lstm_cell_829/Sigmoid_2:y:0(while/lstm_cell_829/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_829/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_829/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_829/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_829/BiasAdd/ReadVariableOp*^while/lstm_cell_829/MatMul/ReadVariableOp,^while/lstm_cell_829/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_829_biasadd_readvariableop_resource5while_lstm_cell_829_biasadd_readvariableop_resource_0"n
4while_lstm_cell_829_matmul_1_readvariableop_resource6while_lstm_cell_829_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_829_matmul_readvariableop_resource4while_lstm_cell_829_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_829/BiasAdd/ReadVariableOp*while/lstm_cell_829/BiasAdd/ReadVariableOp2V
)while/lstm_cell_829/MatMul/ReadVariableOp)while/lstm_cell_829/MatMul/ReadVariableOp2Z
+while/lstm_cell_829/MatMul_1/ReadVariableOp+while/lstm_cell_829/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_828_while_cond_5010149.
*lstm_828_while_lstm_828_while_loop_counter4
0lstm_828_while_lstm_828_while_maximum_iterations
lstm_828_while_placeholder 
lstm_828_while_placeholder_1 
lstm_828_while_placeholder_2 
lstm_828_while_placeholder_30
,lstm_828_while_less_lstm_828_strided_slice_1G
Clstm_828_while_lstm_828_while_cond_5010149___redundant_placeholder0G
Clstm_828_while_lstm_828_while_cond_5010149___redundant_placeholder1G
Clstm_828_while_lstm_828_while_cond_5010149___redundant_placeholder2G
Clstm_828_while_lstm_828_while_cond_5010149___redundant_placeholder3
lstm_828_while_identity
?
lstm_828/while/LessLesslstm_828_while_placeholder,lstm_828_while_less_lstm_828_strided_slice_1*
T0*
_output_shapes
: ]
lstm_828/while/IdentityIdentitylstm_828/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_828_while_identity lstm_828/while/Identity:output:0*(
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
J__inference_lstm_cell_828_layer_call_and_return_conditional_losses_5012878

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
?K
?
E__inference_lstm_830_layer_call_and_return_conditional_losses_5012507
inputs_0>
,lstm_cell_830_matmul_readvariableop_resource:2(@
.lstm_cell_830_matmul_1_readvariableop_resource:
(;
-lstm_cell_830_biasadd_readvariableop_resource:(
identity??$lstm_cell_830/BiasAdd/ReadVariableOp?#lstm_cell_830/MatMul/ReadVariableOp?%lstm_cell_830/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_830/MatMul/ReadVariableOpReadVariableOp,lstm_cell_830_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_830/MatMulMatMulstrided_slice_2:output:0+lstm_cell_830/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_830/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_830_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_830/MatMul_1MatMulzeros:output:0-lstm_cell_830/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_830/addAddV2lstm_cell_830/MatMul:product:0 lstm_cell_830/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_830/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_830_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_830/BiasAddBiasAddlstm_cell_830/add:z:0,lstm_cell_830/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_830/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_830/splitSplit&lstm_cell_830/split/split_dim:output:0lstm_cell_830/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_830/SigmoidSigmoidlstm_cell_830/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_830/Sigmoid_1Sigmoidlstm_cell_830/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_830/mulMullstm_cell_830/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_830/ReluRelulstm_cell_830/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_830/mul_1Mullstm_cell_830/Sigmoid:y:0 lstm_cell_830/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_830/add_1AddV2lstm_cell_830/mul:z:0lstm_cell_830/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_830/Sigmoid_2Sigmoidlstm_cell_830/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_830/Relu_1Relulstm_cell_830/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_830/mul_2Mullstm_cell_830/Sigmoid_2:y:0"lstm_cell_830/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_830_matmul_readvariableop_resource.lstm_cell_830_matmul_1_readvariableop_resource-lstm_cell_830_biasadd_readvariableop_resource*
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
while_body_5012423*
condR
while_cond_5012422*K
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
NoOpNoOp%^lstm_cell_830/BiasAdd/ReadVariableOp$^lstm_cell_830/MatMul/ReadVariableOp&^lstm_cell_830/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_830/BiasAdd/ReadVariableOp$lstm_cell_830/BiasAdd/ReadVariableOp2J
#lstm_cell_830/MatMul/ReadVariableOp#lstm_cell_830/MatMul/ReadVariableOp2N
%lstm_cell_830/MatMul_1/ReadVariableOp%lstm_cell_830/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?
?
/__inference_lstm_cell_830_layer_call_fn_5013042

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
J__inference_lstm_cell_830_layer_call_and_return_conditional_losses_5008690o
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
while_cond_5008398
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5008398___redundant_placeholder05
1while_while_cond_5008398___redundant_placeholder15
1while_while_cond_5008398___redundant_placeholder25
1while_while_cond_5008398___redundant_placeholder3
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
?
/__inference_lstm_cell_829_layer_call_fn_5012927

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
J__inference_lstm_cell_829_layer_call_and_return_conditional_losses_5008194o
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
E__inference_lstm_830_layer_call_and_return_conditional_losses_5012650

inputs>
,lstm_cell_830_matmul_readvariableop_resource:2(@
.lstm_cell_830_matmul_1_readvariableop_resource:
(;
-lstm_cell_830_biasadd_readvariableop_resource:(
identity??$lstm_cell_830/BiasAdd/ReadVariableOp?#lstm_cell_830/MatMul/ReadVariableOp?%lstm_cell_830/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_830/MatMul/ReadVariableOpReadVariableOp,lstm_cell_830_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_830/MatMulMatMulstrided_slice_2:output:0+lstm_cell_830/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_830/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_830_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_830/MatMul_1MatMulzeros:output:0-lstm_cell_830/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_830/addAddV2lstm_cell_830/MatMul:product:0 lstm_cell_830/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_830/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_830_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_830/BiasAddBiasAddlstm_cell_830/add:z:0,lstm_cell_830/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_830/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_830/splitSplit&lstm_cell_830/split/split_dim:output:0lstm_cell_830/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_830/SigmoidSigmoidlstm_cell_830/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_830/Sigmoid_1Sigmoidlstm_cell_830/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_830/mulMullstm_cell_830/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_830/ReluRelulstm_cell_830/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_830/mul_1Mullstm_cell_830/Sigmoid:y:0 lstm_cell_830/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_830/add_1AddV2lstm_cell_830/mul:z:0lstm_cell_830/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_830/Sigmoid_2Sigmoidlstm_cell_830/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_830/Relu_1Relulstm_cell_830/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_830/mul_2Mullstm_cell_830/Sigmoid_2:y:0"lstm_cell_830/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_830_matmul_readvariableop_resource.lstm_cell_830_matmul_1_readvariableop_resource-lstm_cell_830_biasadd_readvariableop_resource*
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
while_body_5012566*
condR
while_cond_5012565*K
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
NoOpNoOp%^lstm_cell_830/BiasAdd/ReadVariableOp$^lstm_cell_830/MatMul/ReadVariableOp&^lstm_cell_830/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_830/BiasAdd/ReadVariableOp$lstm_cell_830/BiasAdd/ReadVariableOp2J
#lstm_cell_830/MatMul/ReadVariableOp#lstm_cell_830/MatMul/ReadVariableOp2N
%lstm_cell_830/MatMul_1/ReadVariableOp%lstm_cell_830/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
*__inference_lstm_830_layer_call_fn_5012210

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
E__inference_lstm_830_layer_call_and_return_conditional_losses_5009276o
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
?K
?
E__inference_lstm_830_layer_call_and_return_conditional_losses_5012364
inputs_0>
,lstm_cell_830_matmul_readvariableop_resource:2(@
.lstm_cell_830_matmul_1_readvariableop_resource:
(;
-lstm_cell_830_biasadd_readvariableop_resource:(
identity??$lstm_cell_830/BiasAdd/ReadVariableOp?#lstm_cell_830/MatMul/ReadVariableOp?%lstm_cell_830/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_830/MatMul/ReadVariableOpReadVariableOp,lstm_cell_830_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_830/MatMulMatMulstrided_slice_2:output:0+lstm_cell_830/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_830/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_830_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_830/MatMul_1MatMulzeros:output:0-lstm_cell_830/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_830/addAddV2lstm_cell_830/MatMul:product:0 lstm_cell_830/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_830/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_830_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_830/BiasAddBiasAddlstm_cell_830/add:z:0,lstm_cell_830/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_830/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_830/splitSplit&lstm_cell_830/split/split_dim:output:0lstm_cell_830/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_830/SigmoidSigmoidlstm_cell_830/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_830/Sigmoid_1Sigmoidlstm_cell_830/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_830/mulMullstm_cell_830/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_830/ReluRelulstm_cell_830/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_830/mul_1Mullstm_cell_830/Sigmoid:y:0 lstm_cell_830/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_830/add_1AddV2lstm_cell_830/mul:z:0lstm_cell_830/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_830/Sigmoid_2Sigmoidlstm_cell_830/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_830/Relu_1Relulstm_cell_830/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_830/mul_2Mullstm_cell_830/Sigmoid_2:y:0"lstm_cell_830/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_830_matmul_readvariableop_resource.lstm_cell_830_matmul_1_readvariableop_resource-lstm_cell_830_biasadd_readvariableop_resource*
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
while_body_5012280*
condR
while_cond_5012279*K
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
NoOpNoOp%^lstm_cell_830/BiasAdd/ReadVariableOp$^lstm_cell_830/MatMul/ReadVariableOp&^lstm_cell_830/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_830/BiasAdd/ReadVariableOp$lstm_cell_830/BiasAdd/ReadVariableOp2J
#lstm_cell_830/MatMul/ReadVariableOp#lstm_cell_830/MatMul/ReadVariableOp2N
%lstm_cell_830/MatMul_1/ReadVariableOp%lstm_cell_830/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?
?
while_cond_5007857
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5007857___redundant_placeholder05
1while_while_cond_5007857___redundant_placeholder15
1while_while_cond_5007857___redundant_placeholder25
1while_while_cond_5007857___redundant_placeholder3
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

lstm_830_while_body_5010428.
*lstm_830_while_lstm_830_while_loop_counter4
0lstm_830_while_lstm_830_while_maximum_iterations
lstm_830_while_placeholder 
lstm_830_while_placeholder_1 
lstm_830_while_placeholder_2 
lstm_830_while_placeholder_3-
)lstm_830_while_lstm_830_strided_slice_1_0i
elstm_830_while_tensorarrayv2read_tensorlistgetitem_lstm_830_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_830_while_lstm_cell_830_matmul_readvariableop_resource_0:2(Q
?lstm_830_while_lstm_cell_830_matmul_1_readvariableop_resource_0:
(L
>lstm_830_while_lstm_cell_830_biasadd_readvariableop_resource_0:(
lstm_830_while_identity
lstm_830_while_identity_1
lstm_830_while_identity_2
lstm_830_while_identity_3
lstm_830_while_identity_4
lstm_830_while_identity_5+
'lstm_830_while_lstm_830_strided_slice_1g
clstm_830_while_tensorarrayv2read_tensorlistgetitem_lstm_830_tensorarrayunstack_tensorlistfromtensorM
;lstm_830_while_lstm_cell_830_matmul_readvariableop_resource:2(O
=lstm_830_while_lstm_cell_830_matmul_1_readvariableop_resource:
(J
<lstm_830_while_lstm_cell_830_biasadd_readvariableop_resource:(??3lstm_830/while/lstm_cell_830/BiasAdd/ReadVariableOp?2lstm_830/while/lstm_cell_830/MatMul/ReadVariableOp?4lstm_830/while/lstm_cell_830/MatMul_1/ReadVariableOp?
@lstm_830/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_830/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_830_while_tensorarrayv2read_tensorlistgetitem_lstm_830_tensorarrayunstack_tensorlistfromtensor_0lstm_830_while_placeholderIlstm_830/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_830/while/lstm_cell_830/MatMul/ReadVariableOpReadVariableOp=lstm_830_while_lstm_cell_830_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_830/while/lstm_cell_830/MatMulMatMul9lstm_830/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_830/while/lstm_cell_830/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_830/while/lstm_cell_830/MatMul_1/ReadVariableOpReadVariableOp?lstm_830_while_lstm_cell_830_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_830/while/lstm_cell_830/MatMul_1MatMullstm_830_while_placeholder_2<lstm_830/while/lstm_cell_830/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_830/while/lstm_cell_830/addAddV2-lstm_830/while/lstm_cell_830/MatMul:product:0/lstm_830/while/lstm_cell_830/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_830/while/lstm_cell_830/BiasAdd/ReadVariableOpReadVariableOp>lstm_830_while_lstm_cell_830_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_830/while/lstm_cell_830/BiasAddBiasAdd$lstm_830/while/lstm_cell_830/add:z:0;lstm_830/while/lstm_cell_830/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_830/while/lstm_cell_830/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_830/while/lstm_cell_830/splitSplit5lstm_830/while/lstm_cell_830/split/split_dim:output:0-lstm_830/while/lstm_cell_830/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_830/while/lstm_cell_830/SigmoidSigmoid+lstm_830/while/lstm_cell_830/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_830/while/lstm_cell_830/Sigmoid_1Sigmoid+lstm_830/while/lstm_cell_830/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_830/while/lstm_cell_830/mulMul*lstm_830/while/lstm_cell_830/Sigmoid_1:y:0lstm_830_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_830/while/lstm_cell_830/ReluRelu+lstm_830/while/lstm_cell_830/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_830/while/lstm_cell_830/mul_1Mul(lstm_830/while/lstm_cell_830/Sigmoid:y:0/lstm_830/while/lstm_cell_830/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_830/while/lstm_cell_830/add_1AddV2$lstm_830/while/lstm_cell_830/mul:z:0&lstm_830/while/lstm_cell_830/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_830/while/lstm_cell_830/Sigmoid_2Sigmoid+lstm_830/while/lstm_cell_830/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_830/while/lstm_cell_830/Relu_1Relu&lstm_830/while/lstm_cell_830/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_830/while/lstm_cell_830/mul_2Mul*lstm_830/while/lstm_cell_830/Sigmoid_2:y:01lstm_830/while/lstm_cell_830/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_830/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_830_while_placeholder_1lstm_830_while_placeholder&lstm_830/while/lstm_cell_830/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_830/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_830/while/addAddV2lstm_830_while_placeholderlstm_830/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_830/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_830/while/add_1AddV2*lstm_830_while_lstm_830_while_loop_counterlstm_830/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_830/while/IdentityIdentitylstm_830/while/add_1:z:0^lstm_830/while/NoOp*
T0*
_output_shapes
: ?
lstm_830/while/Identity_1Identity0lstm_830_while_lstm_830_while_maximum_iterations^lstm_830/while/NoOp*
T0*
_output_shapes
: t
lstm_830/while/Identity_2Identitylstm_830/while/add:z:0^lstm_830/while/NoOp*
T0*
_output_shapes
: ?
lstm_830/while/Identity_3IdentityClstm_830/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_830/while/NoOp*
T0*
_output_shapes
: ?
lstm_830/while/Identity_4Identity&lstm_830/while/lstm_cell_830/mul_2:z:0^lstm_830/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_830/while/Identity_5Identity&lstm_830/while/lstm_cell_830/add_1:z:0^lstm_830/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_830/while/NoOpNoOp4^lstm_830/while/lstm_cell_830/BiasAdd/ReadVariableOp3^lstm_830/while/lstm_cell_830/MatMul/ReadVariableOp5^lstm_830/while/lstm_cell_830/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_830_while_identity lstm_830/while/Identity:output:0"?
lstm_830_while_identity_1"lstm_830/while/Identity_1:output:0"?
lstm_830_while_identity_2"lstm_830/while/Identity_2:output:0"?
lstm_830_while_identity_3"lstm_830/while/Identity_3:output:0"?
lstm_830_while_identity_4"lstm_830/while/Identity_4:output:0"?
lstm_830_while_identity_5"lstm_830/while/Identity_5:output:0"T
'lstm_830_while_lstm_830_strided_slice_1)lstm_830_while_lstm_830_strided_slice_1_0"~
<lstm_830_while_lstm_cell_830_biasadd_readvariableop_resource>lstm_830_while_lstm_cell_830_biasadd_readvariableop_resource_0"?
=lstm_830_while_lstm_cell_830_matmul_1_readvariableop_resource?lstm_830_while_lstm_cell_830_matmul_1_readvariableop_resource_0"|
;lstm_830_while_lstm_cell_830_matmul_readvariableop_resource=lstm_830_while_lstm_cell_830_matmul_readvariableop_resource_0"?
clstm_830_while_tensorarrayv2read_tensorlistgetitem_lstm_830_tensorarrayunstack_tensorlistfromtensorelstm_830_while_tensorarrayv2read_tensorlistgetitem_lstm_830_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_830/while/lstm_cell_830/BiasAdd/ReadVariableOp3lstm_830/while/lstm_cell_830/BiasAdd/ReadVariableOp2h
2lstm_830/while/lstm_cell_830/MatMul/ReadVariableOp2lstm_830/while/lstm_cell_830/MatMul/ReadVariableOp2l
4lstm_830/while/lstm_cell_830/MatMul_1/ReadVariableOp4lstm_830/while/lstm_cell_830/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_830_while_cond_5010427.
*lstm_830_while_lstm_830_while_loop_counter4
0lstm_830_while_lstm_830_while_maximum_iterations
lstm_830_while_placeholder 
lstm_830_while_placeholder_1 
lstm_830_while_placeholder_2 
lstm_830_while_placeholder_30
,lstm_830_while_less_lstm_830_strided_slice_1G
Clstm_830_while_lstm_830_while_cond_5010427___redundant_placeholder0G
Clstm_830_while_lstm_830_while_cond_5010427___redundant_placeholder1G
Clstm_830_while_lstm_830_while_cond_5010427___redundant_placeholder2G
Clstm_830_while_lstm_830_while_cond_5010427___redundant_placeholder3
lstm_830_while_identity
?
lstm_830/while/LessLesslstm_830_while_placeholder,lstm_830_while_less_lstm_830_strided_slice_1*
T0*
_output_shapes
: ]
lstm_830/while/IdentityIdentitylstm_830/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_830_while_identity lstm_830/while/Identity:output:0*(
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
0__inference_sequential_276_layer_call_fn_5009942
lstm_828_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_828_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_276_layer_call_and_return_conditional_losses_5009890o
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
_user_specified_namelstm_828_input
?
?
while_cond_5012279
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5012279___redundant_placeholder05
1while_while_cond_5012279___redundant_placeholder15
1while_while_cond_5012279___redundant_placeholder25
1while_while_cond_5012279___redundant_placeholder3
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
lstm_828_input;
 serving_default_lstm_828_input:0?????????=
	dense_2760
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
2dense_276/kernel
:2dense_276/bias
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
0:.	?2lstm_828/lstm_cell_828/kernel
::8	d?2'lstm_828/lstm_cell_828/recurrent_kernel
*:(?2lstm_828/lstm_cell_828/bias
0:.	d?2lstm_829/lstm_cell_829/kernel
::8	2?2'lstm_829/lstm_cell_829/recurrent_kernel
*:(?2lstm_829/lstm_cell_829/bias
/:-2(2lstm_830/lstm_cell_830/kernel
9:7
(2'lstm_830/lstm_cell_830/recurrent_kernel
):'(2lstm_830/lstm_cell_830/bias
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
2Adam/dense_276/kernel/m
!:2Adam/dense_276/bias/m
5:3	?2$Adam/lstm_828/lstm_cell_828/kernel/m
?:=	d?2.Adam/lstm_828/lstm_cell_828/recurrent_kernel/m
/:-?2"Adam/lstm_828/lstm_cell_828/bias/m
5:3	d?2$Adam/lstm_829/lstm_cell_829/kernel/m
?:=	2?2.Adam/lstm_829/lstm_cell_829/recurrent_kernel/m
/:-?2"Adam/lstm_829/lstm_cell_829/bias/m
4:22(2$Adam/lstm_830/lstm_cell_830/kernel/m
>:<
(2.Adam/lstm_830/lstm_cell_830/recurrent_kernel/m
.:,(2"Adam/lstm_830/lstm_cell_830/bias/m
':%
2Adam/dense_276/kernel/v
!:2Adam/dense_276/bias/v
5:3	?2$Adam/lstm_828/lstm_cell_828/kernel/v
?:=	d?2.Adam/lstm_828/lstm_cell_828/recurrent_kernel/v
/:-?2"Adam/lstm_828/lstm_cell_828/bias/v
5:3	d?2$Adam/lstm_829/lstm_cell_829/kernel/v
?:=	2?2.Adam/lstm_829/lstm_cell_829/recurrent_kernel/v
/:-?2"Adam/lstm_829/lstm_cell_829/bias/v
4:22(2$Adam/lstm_830/lstm_cell_830/kernel/v
>:<
(2.Adam/lstm_830/lstm_cell_830/recurrent_kernel/v
.:,(2"Adam/lstm_830/lstm_cell_830/bias/v
?2?
0__inference_sequential_276_layer_call_fn_5009326
0__inference_sequential_276_layer_call_fn_5010064
0__inference_sequential_276_layer_call_fn_5010091
0__inference_sequential_276_layer_call_fn_5009942?
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
K__inference_sequential_276_layer_call_and_return_conditional_losses_5010518
K__inference_sequential_276_layer_call_and_return_conditional_losses_5010945
K__inference_sequential_276_layer_call_and_return_conditional_losses_5009972
K__inference_sequential_276_layer_call_and_return_conditional_losses_5010002?
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
"__inference__wrapped_model_5007777lstm_828_input"?
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
*__inference_lstm_828_layer_call_fn_5010956
*__inference_lstm_828_layer_call_fn_5010967
*__inference_lstm_828_layer_call_fn_5010978
*__inference_lstm_828_layer_call_fn_5010989?
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
E__inference_lstm_828_layer_call_and_return_conditional_losses_5011132
E__inference_lstm_828_layer_call_and_return_conditional_losses_5011275
E__inference_lstm_828_layer_call_and_return_conditional_losses_5011418
E__inference_lstm_828_layer_call_and_return_conditional_losses_5011561?
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
*__inference_lstm_829_layer_call_fn_5011572
*__inference_lstm_829_layer_call_fn_5011583
*__inference_lstm_829_layer_call_fn_5011594
*__inference_lstm_829_layer_call_fn_5011605?
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
E__inference_lstm_829_layer_call_and_return_conditional_losses_5011748
E__inference_lstm_829_layer_call_and_return_conditional_losses_5011891
E__inference_lstm_829_layer_call_and_return_conditional_losses_5012034
E__inference_lstm_829_layer_call_and_return_conditional_losses_5012177?
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
*__inference_lstm_830_layer_call_fn_5012188
*__inference_lstm_830_layer_call_fn_5012199
*__inference_lstm_830_layer_call_fn_5012210
*__inference_lstm_830_layer_call_fn_5012221?
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
E__inference_lstm_830_layer_call_and_return_conditional_losses_5012364
E__inference_lstm_830_layer_call_and_return_conditional_losses_5012507
E__inference_lstm_830_layer_call_and_return_conditional_losses_5012650
E__inference_lstm_830_layer_call_and_return_conditional_losses_5012793?
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
+__inference_dense_276_layer_call_fn_5012802?
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
F__inference_dense_276_layer_call_and_return_conditional_losses_5012812?
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
%__inference_signature_wrapper_5010037lstm_828_input"?
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
/__inference_lstm_cell_828_layer_call_fn_5012829
/__inference_lstm_cell_828_layer_call_fn_5012846?
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
J__inference_lstm_cell_828_layer_call_and_return_conditional_losses_5012878
J__inference_lstm_cell_828_layer_call_and_return_conditional_losses_5012910?
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
/__inference_lstm_cell_829_layer_call_fn_5012927
/__inference_lstm_cell_829_layer_call_fn_5012944?
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
J__inference_lstm_cell_829_layer_call_and_return_conditional_losses_5012976
J__inference_lstm_cell_829_layer_call_and_return_conditional_losses_5013008?
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
/__inference_lstm_cell_830_layer_call_fn_5013025
/__inference_lstm_cell_830_layer_call_fn_5013042?
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
J__inference_lstm_cell_830_layer_call_and_return_conditional_losses_5013074
J__inference_lstm_cell_830_layer_call_and_return_conditional_losses_5013106?
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
"__inference__wrapped_model_5007777?()*+,-./0;?8
1?.
,?)
lstm_828_input?????????
? "5?2
0
	dense_276#? 
	dense_276??????????
F__inference_dense_276_layer_call_and_return_conditional_losses_5012812\/?,
%?"
 ?
inputs?????????

? "%?"
?
0?????????
? ~
+__inference_dense_276_layer_call_fn_5012802O/?,
%?"
 ?
inputs?????????

? "???????????
E__inference_lstm_828_layer_call_and_return_conditional_losses_5011132?()*O?L
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
E__inference_lstm_828_layer_call_and_return_conditional_losses_5011275?()*O?L
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
E__inference_lstm_828_layer_call_and_return_conditional_losses_5011418q()*??<
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
E__inference_lstm_828_layer_call_and_return_conditional_losses_5011561q()*??<
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
*__inference_lstm_828_layer_call_fn_5010956}()*O?L
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
*__inference_lstm_828_layer_call_fn_5010967}()*O?L
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
*__inference_lstm_828_layer_call_fn_5010978d()*??<
5?2
$?!
inputs?????????

 
p 

 
? "??????????d?
*__inference_lstm_828_layer_call_fn_5010989d()*??<
5?2
$?!
inputs?????????

 
p

 
? "??????????d?
E__inference_lstm_829_layer_call_and_return_conditional_losses_5011748?+,-O?L
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
E__inference_lstm_829_layer_call_and_return_conditional_losses_5011891?+,-O?L
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
E__inference_lstm_829_layer_call_and_return_conditional_losses_5012034q+,-??<
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
E__inference_lstm_829_layer_call_and_return_conditional_losses_5012177q+,-??<
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
*__inference_lstm_829_layer_call_fn_5011572}+,-O?L
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
*__inference_lstm_829_layer_call_fn_5011583}+,-O?L
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
*__inference_lstm_829_layer_call_fn_5011594d+,-??<
5?2
$?!
inputs?????????d

 
p 

 
? "??????????2?
*__inference_lstm_829_layer_call_fn_5011605d+,-??<
5?2
$?!
inputs?????????d

 
p

 
? "??????????2?
E__inference_lstm_830_layer_call_and_return_conditional_losses_5012364}./0O?L
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
E__inference_lstm_830_layer_call_and_return_conditional_losses_5012507}./0O?L
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
E__inference_lstm_830_layer_call_and_return_conditional_losses_5012650m./0??<
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
E__inference_lstm_830_layer_call_and_return_conditional_losses_5012793m./0??<
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
*__inference_lstm_830_layer_call_fn_5012188p./0O?L
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
*__inference_lstm_830_layer_call_fn_5012199p./0O?L
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
*__inference_lstm_830_layer_call_fn_5012210`./0??<
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
*__inference_lstm_830_layer_call_fn_5012221`./0??<
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
J__inference_lstm_cell_828_layer_call_and_return_conditional_losses_5012878?()*??}
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
J__inference_lstm_cell_828_layer_call_and_return_conditional_losses_5012910?()*??}
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
/__inference_lstm_cell_828_layer_call_fn_5012829?()*??}
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
/__inference_lstm_cell_828_layer_call_fn_5012846?()*??}
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
J__inference_lstm_cell_829_layer_call_and_return_conditional_losses_5012976?+,-??}
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
J__inference_lstm_cell_829_layer_call_and_return_conditional_losses_5013008?+,-??}
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
/__inference_lstm_cell_829_layer_call_fn_5012927?+,-??}
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
/__inference_lstm_cell_829_layer_call_fn_5012944?+,-??}
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
J__inference_lstm_cell_830_layer_call_and_return_conditional_losses_5013074?./0??}
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
J__inference_lstm_cell_830_layer_call_and_return_conditional_losses_5013106?./0??}
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
/__inference_lstm_cell_830_layer_call_fn_5013025?./0??}
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
/__inference_lstm_cell_830_layer_call_fn_5013042?./0??}
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
K__inference_sequential_276_layer_call_and_return_conditional_losses_5009972y()*+,-./0C?@
9?6
,?)
lstm_828_input?????????
p 

 
? "%?"
?
0?????????
? ?
K__inference_sequential_276_layer_call_and_return_conditional_losses_5010002y()*+,-./0C?@
9?6
,?)
lstm_828_input?????????
p

 
? "%?"
?
0?????????
? ?
K__inference_sequential_276_layer_call_and_return_conditional_losses_5010518q()*+,-./0;?8
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
K__inference_sequential_276_layer_call_and_return_conditional_losses_5010945q()*+,-./0;?8
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
0__inference_sequential_276_layer_call_fn_5009326l()*+,-./0C?@
9?6
,?)
lstm_828_input?????????
p 

 
? "???????????
0__inference_sequential_276_layer_call_fn_5009942l()*+,-./0C?@
9?6
,?)
lstm_828_input?????????
p

 
? "???????????
0__inference_sequential_276_layer_call_fn_5010064d()*+,-./0;?8
1?.
$?!
inputs?????????
p 

 
? "???????????
0__inference_sequential_276_layer_call_fn_5010091d()*+,-./0;?8
1?.
$?!
inputs?????????
p

 
? "???????????
%__inference_signature_wrapper_5010037?()*+,-./0M?J
? 
C?@
>
lstm_828_input,?)
lstm_828_input?????????"5?2
0
	dense_276#? 
	dense_276?????????