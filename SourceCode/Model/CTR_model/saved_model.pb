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
dense_219/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*!
shared_namedense_219/kernel
u
$dense_219/kernel/Read/ReadVariableOpReadVariableOpdense_219/kernel*
_output_shapes

:
*
dtype0
t
dense_219/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_219/bias
m
"dense_219/bias/Read/ReadVariableOpReadVariableOpdense_219/bias*
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
lstm_657/lstm_cell_657/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*.
shared_namelstm_657/lstm_cell_657/kernel
?
1lstm_657/lstm_cell_657/kernel/Read/ReadVariableOpReadVariableOplstm_657/lstm_cell_657/kernel*
_output_shapes
:	?*
dtype0
?
'lstm_657/lstm_cell_657/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*8
shared_name)'lstm_657/lstm_cell_657/recurrent_kernel
?
;lstm_657/lstm_cell_657/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_657/lstm_cell_657/recurrent_kernel*
_output_shapes
:	d?*
dtype0
?
lstm_657/lstm_cell_657/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_657/lstm_cell_657/bias
?
/lstm_657/lstm_cell_657/bias/Read/ReadVariableOpReadVariableOplstm_657/lstm_cell_657/bias*
_output_shapes	
:?*
dtype0
?
lstm_658/lstm_cell_658/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*.
shared_namelstm_658/lstm_cell_658/kernel
?
1lstm_658/lstm_cell_658/kernel/Read/ReadVariableOpReadVariableOplstm_658/lstm_cell_658/kernel*
_output_shapes
:	d?*
dtype0
?
'lstm_658/lstm_cell_658/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*8
shared_name)'lstm_658/lstm_cell_658/recurrent_kernel
?
;lstm_658/lstm_cell_658/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_658/lstm_cell_658/recurrent_kernel*
_output_shapes
:	2?*
dtype0
?
lstm_658/lstm_cell_658/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_658/lstm_cell_658/bias
?
/lstm_658/lstm_cell_658/bias/Read/ReadVariableOpReadVariableOplstm_658/lstm_cell_658/bias*
_output_shapes	
:?*
dtype0
?
lstm_659/lstm_cell_659/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*.
shared_namelstm_659/lstm_cell_659/kernel
?
1lstm_659/lstm_cell_659/kernel/Read/ReadVariableOpReadVariableOplstm_659/lstm_cell_659/kernel*
_output_shapes

:2(*
dtype0
?
'lstm_659/lstm_cell_659/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*8
shared_name)'lstm_659/lstm_cell_659/recurrent_kernel
?
;lstm_659/lstm_cell_659/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_659/lstm_cell_659/recurrent_kernel*
_output_shapes

:
(*
dtype0
?
lstm_659/lstm_cell_659/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*,
shared_namelstm_659/lstm_cell_659/bias
?
/lstm_659/lstm_cell_659/bias/Read/ReadVariableOpReadVariableOplstm_659/lstm_cell_659/bias*
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
Adam/dense_219/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_219/kernel/m
?
+Adam/dense_219/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_219/kernel/m*
_output_shapes

:
*
dtype0
?
Adam/dense_219/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_219/bias/m
{
)Adam/dense_219/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_219/bias/m*
_output_shapes
:*
dtype0
?
$Adam/lstm_657/lstm_cell_657/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_657/lstm_cell_657/kernel/m
?
8Adam/lstm_657/lstm_cell_657/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_657/lstm_cell_657/kernel/m*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_657/lstm_cell_657/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_657/lstm_cell_657/recurrent_kernel/m
?
BAdam/lstm_657/lstm_cell_657/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_657/lstm_cell_657/recurrent_kernel/m*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_657/lstm_cell_657/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_657/lstm_cell_657/bias/m
?
6Adam/lstm_657/lstm_cell_657/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_657/lstm_cell_657/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_658/lstm_cell_658/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_658/lstm_cell_658/kernel/m
?
8Adam/lstm_658/lstm_cell_658/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_658/lstm_cell_658/kernel/m*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_658/lstm_cell_658/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_658/lstm_cell_658/recurrent_kernel/m
?
BAdam/lstm_658/lstm_cell_658/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_658/lstm_cell_658/recurrent_kernel/m*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_658/lstm_cell_658/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_658/lstm_cell_658/bias/m
?
6Adam/lstm_658/lstm_cell_658/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_658/lstm_cell_658/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_659/lstm_cell_659/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_659/lstm_cell_659/kernel/m
?
8Adam/lstm_659/lstm_cell_659/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_659/lstm_cell_659/kernel/m*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_659/lstm_cell_659/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_659/lstm_cell_659/recurrent_kernel/m
?
BAdam/lstm_659/lstm_cell_659/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_659/lstm_cell_659/recurrent_kernel/m*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_659/lstm_cell_659/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_659/lstm_cell_659/bias/m
?
6Adam/lstm_659/lstm_cell_659/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_659/lstm_cell_659/bias/m*
_output_shapes
:(*
dtype0
?
Adam/dense_219/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_219/kernel/v
?
+Adam/dense_219/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_219/kernel/v*
_output_shapes

:
*
dtype0
?
Adam/dense_219/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_219/bias/v
{
)Adam/dense_219/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_219/bias/v*
_output_shapes
:*
dtype0
?
$Adam/lstm_657/lstm_cell_657/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_657/lstm_cell_657/kernel/v
?
8Adam/lstm_657/lstm_cell_657/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_657/lstm_cell_657/kernel/v*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_657/lstm_cell_657/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_657/lstm_cell_657/recurrent_kernel/v
?
BAdam/lstm_657/lstm_cell_657/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_657/lstm_cell_657/recurrent_kernel/v*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_657/lstm_cell_657/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_657/lstm_cell_657/bias/v
?
6Adam/lstm_657/lstm_cell_657/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_657/lstm_cell_657/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_658/lstm_cell_658/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_658/lstm_cell_658/kernel/v
?
8Adam/lstm_658/lstm_cell_658/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_658/lstm_cell_658/kernel/v*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_658/lstm_cell_658/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_658/lstm_cell_658/recurrent_kernel/v
?
BAdam/lstm_658/lstm_cell_658/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_658/lstm_cell_658/recurrent_kernel/v*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_658/lstm_cell_658/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_658/lstm_cell_658/bias/v
?
6Adam/lstm_658/lstm_cell_658/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_658/lstm_cell_658/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_659/lstm_cell_659/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_659/lstm_cell_659/kernel/v
?
8Adam/lstm_659/lstm_cell_659/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_659/lstm_cell_659/kernel/v*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_659/lstm_cell_659/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_659/lstm_cell_659/recurrent_kernel/v
?
BAdam/lstm_659/lstm_cell_659/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_659/lstm_cell_659/recurrent_kernel/v*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_659/lstm_cell_659/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_659/lstm_cell_659/bias/v
?
6Adam/lstm_659/lstm_cell_659/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_659/lstm_cell_659/bias/v*
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
VARIABLE_VALUEdense_219/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_219/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUElstm_657/lstm_cell_657/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_657/lstm_cell_657/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_657/lstm_cell_657/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_658/lstm_cell_658/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_658/lstm_cell_658/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_658/lstm_cell_658/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_659/lstm_cell_659/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_659/lstm_cell_659/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_659/lstm_cell_659/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEAdam/dense_219/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_219/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_657/lstm_cell_657/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_657/lstm_cell_657/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_657/lstm_cell_657/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_658/lstm_cell_658/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_658/lstm_cell_658/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_658/lstm_cell_658/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_659/lstm_cell_659/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_659/lstm_cell_659/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_659/lstm_cell_659/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_219/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_219/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_657/lstm_cell_657/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_657/lstm_cell_657/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_657/lstm_cell_657/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_658/lstm_cell_658/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_658/lstm_cell_658/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_658/lstm_cell_658/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_659/lstm_cell_659/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_659/lstm_cell_659/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_659/lstm_cell_659/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_lstm_657_inputPlaceholder*+
_output_shapes
:?????????*
dtype0* 
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_657_inputlstm_657/lstm_cell_657/kernel'lstm_657/lstm_cell_657/recurrent_kernellstm_657/lstm_cell_657/biaslstm_658/lstm_cell_658/kernel'lstm_658/lstm_cell_658/recurrent_kernellstm_658/lstm_cell_658/biaslstm_659/lstm_cell_659/kernel'lstm_659/lstm_cell_659/recurrent_kernellstm_659/lstm_cell_659/biasdense_219/kerneldense_219/bias*
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
%__inference_signature_wrapper_4189168
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$dense_219/kernel/Read/ReadVariableOp"dense_219/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_657/lstm_cell_657/kernel/Read/ReadVariableOp;lstm_657/lstm_cell_657/recurrent_kernel/Read/ReadVariableOp/lstm_657/lstm_cell_657/bias/Read/ReadVariableOp1lstm_658/lstm_cell_658/kernel/Read/ReadVariableOp;lstm_658/lstm_cell_658/recurrent_kernel/Read/ReadVariableOp/lstm_658/lstm_cell_658/bias/Read/ReadVariableOp1lstm_659/lstm_cell_659/kernel/Read/ReadVariableOp;lstm_659/lstm_cell_659/recurrent_kernel/Read/ReadVariableOp/lstm_659/lstm_cell_659/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp+Adam/dense_219/kernel/m/Read/ReadVariableOp)Adam/dense_219/bias/m/Read/ReadVariableOp8Adam/lstm_657/lstm_cell_657/kernel/m/Read/ReadVariableOpBAdam/lstm_657/lstm_cell_657/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_657/lstm_cell_657/bias/m/Read/ReadVariableOp8Adam/lstm_658/lstm_cell_658/kernel/m/Read/ReadVariableOpBAdam/lstm_658/lstm_cell_658/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_658/lstm_cell_658/bias/m/Read/ReadVariableOp8Adam/lstm_659/lstm_cell_659/kernel/m/Read/ReadVariableOpBAdam/lstm_659/lstm_cell_659/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_659/lstm_cell_659/bias/m/Read/ReadVariableOp+Adam/dense_219/kernel/v/Read/ReadVariableOp)Adam/dense_219/bias/v/Read/ReadVariableOp8Adam/lstm_657/lstm_cell_657/kernel/v/Read/ReadVariableOpBAdam/lstm_657/lstm_cell_657/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_657/lstm_cell_657/bias/v/Read/ReadVariableOp8Adam/lstm_658/lstm_cell_658/kernel/v/Read/ReadVariableOpBAdam/lstm_658/lstm_cell_658/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_658/lstm_cell_658/bias/v/Read/ReadVariableOp8Adam/lstm_659/lstm_cell_659/kernel/v/Read/ReadVariableOpBAdam/lstm_659/lstm_cell_659/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_659/lstm_cell_659/bias/v/Read/ReadVariableOpConst*5
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
 __inference__traced_save_4192380
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_219/kerneldense_219/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_657/lstm_cell_657/kernel'lstm_657/lstm_cell_657/recurrent_kernellstm_657/lstm_cell_657/biaslstm_658/lstm_cell_658/kernel'lstm_658/lstm_cell_658/recurrent_kernellstm_658/lstm_cell_658/biaslstm_659/lstm_cell_659/kernel'lstm_659/lstm_cell_659/recurrent_kernellstm_659/lstm_cell_659/biastotalcountAdam/dense_219/kernel/mAdam/dense_219/bias/m$Adam/lstm_657/lstm_cell_657/kernel/m.Adam/lstm_657/lstm_cell_657/recurrent_kernel/m"Adam/lstm_657/lstm_cell_657/bias/m$Adam/lstm_658/lstm_cell_658/kernel/m.Adam/lstm_658/lstm_cell_658/recurrent_kernel/m"Adam/lstm_658/lstm_cell_658/bias/m$Adam/lstm_659/lstm_cell_659/kernel/m.Adam/lstm_659/lstm_cell_659/recurrent_kernel/m"Adam/lstm_659/lstm_cell_659/bias/mAdam/dense_219/kernel/vAdam/dense_219/bias/v$Adam/lstm_657/lstm_cell_657/kernel/v.Adam/lstm_657/lstm_cell_657/recurrent_kernel/v"Adam/lstm_657/lstm_cell_657/bias/v$Adam/lstm_658/lstm_cell_658/kernel/v.Adam/lstm_658/lstm_cell_658/recurrent_kernel/v"Adam/lstm_658/lstm_cell_658/bias/v$Adam/lstm_659/lstm_cell_659/kernel/v.Adam/lstm_659/lstm_cell_659/recurrent_kernel/v"Adam/lstm_659/lstm_cell_659/bias/v*4
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
#__inference__traced_restore_4192510??+
?
?
while_cond_4188322
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4188322___redundant_placeholder05
1while_while_cond_4188322___redundant_placeholder15
1while_while_cond_4188322___redundant_placeholder25
1while_while_cond_4188322___redundant_placeholder3
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
0__inference_sequential_219_layer_call_fn_4188457
lstm_657_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_657_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_219_layer_call_and_return_conditional_losses_4188432o
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
_user_specified_namelstm_657_input
?
?
J__inference_lstm_cell_659_layer_call_and_return_conditional_losses_4192237

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
E__inference_lstm_659_layer_call_and_return_conditional_losses_4188407

inputs>
,lstm_cell_659_matmul_readvariableop_resource:2(@
.lstm_cell_659_matmul_1_readvariableop_resource:
(;
-lstm_cell_659_biasadd_readvariableop_resource:(
identity??$lstm_cell_659/BiasAdd/ReadVariableOp?#lstm_cell_659/MatMul/ReadVariableOp?%lstm_cell_659/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_659/MatMul/ReadVariableOpReadVariableOp,lstm_cell_659_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_659/MatMulMatMulstrided_slice_2:output:0+lstm_cell_659/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_659/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_659_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_659/MatMul_1MatMulzeros:output:0-lstm_cell_659/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_659/addAddV2lstm_cell_659/MatMul:product:0 lstm_cell_659/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_659/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_659_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_659/BiasAddBiasAddlstm_cell_659/add:z:0,lstm_cell_659/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_659/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_659/splitSplit&lstm_cell_659/split/split_dim:output:0lstm_cell_659/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_659/SigmoidSigmoidlstm_cell_659/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_659/Sigmoid_1Sigmoidlstm_cell_659/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_659/mulMullstm_cell_659/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_659/ReluRelulstm_cell_659/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_659/mul_1Mullstm_cell_659/Sigmoid:y:0 lstm_cell_659/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_659/add_1AddV2lstm_cell_659/mul:z:0lstm_cell_659/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_659/Sigmoid_2Sigmoidlstm_cell_659/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_659/Relu_1Relulstm_cell_659/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_659/mul_2Mullstm_cell_659/Sigmoid_2:y:0"lstm_cell_659/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_659_matmul_readvariableop_resource.lstm_cell_659_matmul_1_readvariableop_resource-lstm_cell_659_biasadd_readvariableop_resource*
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
while_body_4188323*
condR
while_cond_4188322*K
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
NoOpNoOp%^lstm_cell_659/BiasAdd/ReadVariableOp$^lstm_cell_659/MatMul/ReadVariableOp&^lstm_cell_659/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_659/BiasAdd/ReadVariableOp$lstm_cell_659/BiasAdd/ReadVariableOp2J
#lstm_cell_659/MatMul/ReadVariableOp#lstm_cell_659/MatMul/ReadVariableOp2N
%lstm_cell_659/MatMul_1/ReadVariableOp%lstm_cell_659/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?8
?
while_body_4190608
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_657_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_657_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_657_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_657_matmul_readvariableop_resource:	?G
4while_lstm_cell_657_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_657_biasadd_readvariableop_resource:	???*while/lstm_cell_657/BiasAdd/ReadVariableOp?)while/lstm_cell_657/MatMul/ReadVariableOp?+while/lstm_cell_657/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_657/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_657_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_657/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_657/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_657/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_657_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_657/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_657/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_657/addAddV2$while/lstm_cell_657/MatMul:product:0&while/lstm_cell_657/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_657/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_657_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_657/BiasAddBiasAddwhile/lstm_cell_657/add:z:02while/lstm_cell_657/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_657/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_657/splitSplit,while/lstm_cell_657/split/split_dim:output:0$while/lstm_cell_657/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_657/SigmoidSigmoid"while/lstm_cell_657/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_657/Sigmoid_1Sigmoid"while/lstm_cell_657/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_657/mulMul!while/lstm_cell_657/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_657/ReluRelu"while/lstm_cell_657/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_657/mul_1Mulwhile/lstm_cell_657/Sigmoid:y:0&while/lstm_cell_657/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_657/add_1AddV2while/lstm_cell_657/mul:z:0while/lstm_cell_657/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_657/Sigmoid_2Sigmoid"while/lstm_cell_657/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_657/Relu_1Reluwhile/lstm_cell_657/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_657/mul_2Mul!while/lstm_cell_657/Sigmoid_2:y:0(while/lstm_cell_657/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_657/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_657/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_657/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_657/BiasAdd/ReadVariableOp*^while/lstm_cell_657/MatMul/ReadVariableOp,^while/lstm_cell_657/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_657_biasadd_readvariableop_resource5while_lstm_cell_657_biasadd_readvariableop_resource_0"n
4while_lstm_cell_657_matmul_1_readvariableop_resource6while_lstm_cell_657_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_657_matmul_readvariableop_resource4while_lstm_cell_657_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_657/BiasAdd/ReadVariableOp*while/lstm_cell_657/BiasAdd/ReadVariableOp2V
)while/lstm_cell_657/MatMul/ReadVariableOp)while/lstm_cell_657/MatMul/ReadVariableOp2Z
+while/lstm_cell_657/MatMul_1/ReadVariableOp+while/lstm_cell_657/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_657_layer_call_and_return_conditional_losses_4188107

inputs?
,lstm_cell_657_matmul_readvariableop_resource:	?A
.lstm_cell_657_matmul_1_readvariableop_resource:	d?<
-lstm_cell_657_biasadd_readvariableop_resource:	?
identity??$lstm_cell_657/BiasAdd/ReadVariableOp?#lstm_cell_657/MatMul/ReadVariableOp?%lstm_cell_657/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_657/MatMul/ReadVariableOpReadVariableOp,lstm_cell_657_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_657/MatMulMatMulstrided_slice_2:output:0+lstm_cell_657/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_657/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_657_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_657/MatMul_1MatMulzeros:output:0-lstm_cell_657/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_657/addAddV2lstm_cell_657/MatMul:product:0 lstm_cell_657/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_657/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_657_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_657/BiasAddBiasAddlstm_cell_657/add:z:0,lstm_cell_657/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_657/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_657/splitSplit&lstm_cell_657/split/split_dim:output:0lstm_cell_657/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_657/SigmoidSigmoidlstm_cell_657/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_657/Sigmoid_1Sigmoidlstm_cell_657/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_657/mulMullstm_cell_657/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_657/ReluRelulstm_cell_657/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_657/mul_1Mullstm_cell_657/Sigmoid:y:0 lstm_cell_657/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_657/add_1AddV2lstm_cell_657/mul:z:0lstm_cell_657/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_657/Sigmoid_2Sigmoidlstm_cell_657/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_657/Relu_1Relulstm_cell_657/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_657/mul_2Mullstm_cell_657/Sigmoid_2:y:0"lstm_cell_657/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_657_matmul_readvariableop_resource.lstm_cell_657_matmul_1_readvariableop_resource-lstm_cell_657_biasadd_readvariableop_resource*
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
while_body_4188023*
condR
while_cond_4188022*K
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
NoOpNoOp%^lstm_cell_657/BiasAdd/ReadVariableOp$^lstm_cell_657/MatMul/ReadVariableOp&^lstm_cell_657/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_657/BiasAdd/ReadVariableOp$lstm_cell_657/BiasAdd/ReadVariableOp2J
#lstm_cell_657/MatMul/ReadVariableOp#lstm_cell_657/MatMul/ReadVariableOp2N
%lstm_cell_657/MatMul_1/ReadVariableOp%lstm_cell_657/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
??
?
"__inference__wrapped_model_4186908
lstm_657_inputW
Dsequential_219_lstm_657_lstm_cell_657_matmul_readvariableop_resource:	?Y
Fsequential_219_lstm_657_lstm_cell_657_matmul_1_readvariableop_resource:	d?T
Esequential_219_lstm_657_lstm_cell_657_biasadd_readvariableop_resource:	?W
Dsequential_219_lstm_658_lstm_cell_658_matmul_readvariableop_resource:	d?Y
Fsequential_219_lstm_658_lstm_cell_658_matmul_1_readvariableop_resource:	2?T
Esequential_219_lstm_658_lstm_cell_658_biasadd_readvariableop_resource:	?V
Dsequential_219_lstm_659_lstm_cell_659_matmul_readvariableop_resource:2(X
Fsequential_219_lstm_659_lstm_cell_659_matmul_1_readvariableop_resource:
(S
Esequential_219_lstm_659_lstm_cell_659_biasadd_readvariableop_resource:(I
7sequential_219_dense_219_matmul_readvariableop_resource:
F
8sequential_219_dense_219_biasadd_readvariableop_resource:
identity??/sequential_219/dense_219/BiasAdd/ReadVariableOp?.sequential_219/dense_219/MatMul/ReadVariableOp?<sequential_219/lstm_657/lstm_cell_657/BiasAdd/ReadVariableOp?;sequential_219/lstm_657/lstm_cell_657/MatMul/ReadVariableOp?=sequential_219/lstm_657/lstm_cell_657/MatMul_1/ReadVariableOp?sequential_219/lstm_657/while?<sequential_219/lstm_658/lstm_cell_658/BiasAdd/ReadVariableOp?;sequential_219/lstm_658/lstm_cell_658/MatMul/ReadVariableOp?=sequential_219/lstm_658/lstm_cell_658/MatMul_1/ReadVariableOp?sequential_219/lstm_658/while?<sequential_219/lstm_659/lstm_cell_659/BiasAdd/ReadVariableOp?;sequential_219/lstm_659/lstm_cell_659/MatMul/ReadVariableOp?=sequential_219/lstm_659/lstm_cell_659/MatMul_1/ReadVariableOp?sequential_219/lstm_659/while[
sequential_219/lstm_657/ShapeShapelstm_657_input*
T0*
_output_shapes
:u
+sequential_219/lstm_657/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_219/lstm_657/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_219/lstm_657/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_219/lstm_657/strided_sliceStridedSlice&sequential_219/lstm_657/Shape:output:04sequential_219/lstm_657/strided_slice/stack:output:06sequential_219/lstm_657/strided_slice/stack_1:output:06sequential_219/lstm_657/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_219/lstm_657/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
$sequential_219/lstm_657/zeros/packedPack.sequential_219/lstm_657/strided_slice:output:0/sequential_219/lstm_657/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_219/lstm_657/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_219/lstm_657/zerosFill-sequential_219/lstm_657/zeros/packed:output:0,sequential_219/lstm_657/zeros/Const:output:0*
T0*'
_output_shapes
:?????????dj
(sequential_219/lstm_657/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
&sequential_219/lstm_657/zeros_1/packedPack.sequential_219/lstm_657/strided_slice:output:01sequential_219/lstm_657/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_219/lstm_657/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_219/lstm_657/zeros_1Fill/sequential_219/lstm_657/zeros_1/packed:output:0.sequential_219/lstm_657/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????d{
&sequential_219/lstm_657/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_219/lstm_657/transpose	Transposelstm_657_input/sequential_219/lstm_657/transpose/perm:output:0*
T0*+
_output_shapes
:?????????t
sequential_219/lstm_657/Shape_1Shape%sequential_219/lstm_657/transpose:y:0*
T0*
_output_shapes
:w
-sequential_219/lstm_657/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_219/lstm_657/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_219/lstm_657/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_219/lstm_657/strided_slice_1StridedSlice(sequential_219/lstm_657/Shape_1:output:06sequential_219/lstm_657/strided_slice_1/stack:output:08sequential_219/lstm_657/strided_slice_1/stack_1:output:08sequential_219/lstm_657/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_219/lstm_657/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_219/lstm_657/TensorArrayV2TensorListReserve<sequential_219/lstm_657/TensorArrayV2/element_shape:output:00sequential_219/lstm_657/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_219/lstm_657/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
?sequential_219/lstm_657/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_219/lstm_657/transpose:y:0Vsequential_219/lstm_657/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_219/lstm_657/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_219/lstm_657/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_219/lstm_657/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_219/lstm_657/strided_slice_2StridedSlice%sequential_219/lstm_657/transpose:y:06sequential_219/lstm_657/strided_slice_2/stack:output:08sequential_219/lstm_657/strided_slice_2/stack_1:output:08sequential_219/lstm_657/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
;sequential_219/lstm_657/lstm_cell_657/MatMul/ReadVariableOpReadVariableOpDsequential_219_lstm_657_lstm_cell_657_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
,sequential_219/lstm_657/lstm_cell_657/MatMulMatMul0sequential_219/lstm_657/strided_slice_2:output:0Csequential_219/lstm_657/lstm_cell_657/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_219/lstm_657/lstm_cell_657/MatMul_1/ReadVariableOpReadVariableOpFsequential_219_lstm_657_lstm_cell_657_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
.sequential_219/lstm_657/lstm_cell_657/MatMul_1MatMul&sequential_219/lstm_657/zeros:output:0Esequential_219/lstm_657/lstm_cell_657/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_219/lstm_657/lstm_cell_657/addAddV26sequential_219/lstm_657/lstm_cell_657/MatMul:product:08sequential_219/lstm_657/lstm_cell_657/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_219/lstm_657/lstm_cell_657/BiasAdd/ReadVariableOpReadVariableOpEsequential_219_lstm_657_lstm_cell_657_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_219/lstm_657/lstm_cell_657/BiasAddBiasAdd-sequential_219/lstm_657/lstm_cell_657/add:z:0Dsequential_219/lstm_657/lstm_cell_657/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_219/lstm_657/lstm_cell_657/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_219/lstm_657/lstm_cell_657/splitSplit>sequential_219/lstm_657/lstm_cell_657/split/split_dim:output:06sequential_219/lstm_657/lstm_cell_657/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
-sequential_219/lstm_657/lstm_cell_657/SigmoidSigmoid4sequential_219/lstm_657/lstm_cell_657/split:output:0*
T0*'
_output_shapes
:?????????d?
/sequential_219/lstm_657/lstm_cell_657/Sigmoid_1Sigmoid4sequential_219/lstm_657/lstm_cell_657/split:output:1*
T0*'
_output_shapes
:?????????d?
)sequential_219/lstm_657/lstm_cell_657/mulMul3sequential_219/lstm_657/lstm_cell_657/Sigmoid_1:y:0(sequential_219/lstm_657/zeros_1:output:0*
T0*'
_output_shapes
:?????????d?
*sequential_219/lstm_657/lstm_cell_657/ReluRelu4sequential_219/lstm_657/lstm_cell_657/split:output:2*
T0*'
_output_shapes
:?????????d?
+sequential_219/lstm_657/lstm_cell_657/mul_1Mul1sequential_219/lstm_657/lstm_cell_657/Sigmoid:y:08sequential_219/lstm_657/lstm_cell_657/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
+sequential_219/lstm_657/lstm_cell_657/add_1AddV2-sequential_219/lstm_657/lstm_cell_657/mul:z:0/sequential_219/lstm_657/lstm_cell_657/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
/sequential_219/lstm_657/lstm_cell_657/Sigmoid_2Sigmoid4sequential_219/lstm_657/lstm_cell_657/split:output:3*
T0*'
_output_shapes
:?????????d?
,sequential_219/lstm_657/lstm_cell_657/Relu_1Relu/sequential_219/lstm_657/lstm_cell_657/add_1:z:0*
T0*'
_output_shapes
:?????????d?
+sequential_219/lstm_657/lstm_cell_657/mul_2Mul3sequential_219/lstm_657/lstm_cell_657/Sigmoid_2:y:0:sequential_219/lstm_657/lstm_cell_657/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
5sequential_219/lstm_657/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
'sequential_219/lstm_657/TensorArrayV2_1TensorListReserve>sequential_219/lstm_657/TensorArrayV2_1/element_shape:output:00sequential_219/lstm_657/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_219/lstm_657/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_219/lstm_657/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_219/lstm_657/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_219/lstm_657/whileWhile3sequential_219/lstm_657/while/loop_counter:output:09sequential_219/lstm_657/while/maximum_iterations:output:0%sequential_219/lstm_657/time:output:00sequential_219/lstm_657/TensorArrayV2_1:handle:0&sequential_219/lstm_657/zeros:output:0(sequential_219/lstm_657/zeros_1:output:00sequential_219/lstm_657/strided_slice_1:output:0Osequential_219/lstm_657/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_219_lstm_657_lstm_cell_657_matmul_readvariableop_resourceFsequential_219_lstm_657_lstm_cell_657_matmul_1_readvariableop_resourceEsequential_219_lstm_657_lstm_cell_657_biasadd_readvariableop_resource*
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
*sequential_219_lstm_657_while_body_4186540*6
cond.R,
*sequential_219_lstm_657_while_cond_4186539*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
Hsequential_219/lstm_657/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
:sequential_219/lstm_657/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_219/lstm_657/while:output:3Qsequential_219/lstm_657/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0?
-sequential_219/lstm_657/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_219/lstm_657/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_219/lstm_657/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_219/lstm_657/strided_slice_3StridedSliceCsequential_219/lstm_657/TensorArrayV2Stack/TensorListStack:tensor:06sequential_219/lstm_657/strided_slice_3/stack:output:08sequential_219/lstm_657/strided_slice_3/stack_1:output:08sequential_219/lstm_657/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask}
(sequential_219/lstm_657/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_219/lstm_657/transpose_1	TransposeCsequential_219/lstm_657/TensorArrayV2Stack/TensorListStack:tensor:01sequential_219/lstm_657/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????ds
sequential_219/lstm_657/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_219/lstm_658/ShapeShape'sequential_219/lstm_657/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_219/lstm_658/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_219/lstm_658/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_219/lstm_658/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_219/lstm_658/strided_sliceStridedSlice&sequential_219/lstm_658/Shape:output:04sequential_219/lstm_658/strided_slice/stack:output:06sequential_219/lstm_658/strided_slice/stack_1:output:06sequential_219/lstm_658/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_219/lstm_658/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
$sequential_219/lstm_658/zeros/packedPack.sequential_219/lstm_658/strided_slice:output:0/sequential_219/lstm_658/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_219/lstm_658/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_219/lstm_658/zerosFill-sequential_219/lstm_658/zeros/packed:output:0,sequential_219/lstm_658/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2j
(sequential_219/lstm_658/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
&sequential_219/lstm_658/zeros_1/packedPack.sequential_219/lstm_658/strided_slice:output:01sequential_219/lstm_658/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_219/lstm_658/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_219/lstm_658/zeros_1Fill/sequential_219/lstm_658/zeros_1/packed:output:0.sequential_219/lstm_658/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2{
&sequential_219/lstm_658/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_219/lstm_658/transpose	Transpose'sequential_219/lstm_657/transpose_1:y:0/sequential_219/lstm_658/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dt
sequential_219/lstm_658/Shape_1Shape%sequential_219/lstm_658/transpose:y:0*
T0*
_output_shapes
:w
-sequential_219/lstm_658/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_219/lstm_658/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_219/lstm_658/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_219/lstm_658/strided_slice_1StridedSlice(sequential_219/lstm_658/Shape_1:output:06sequential_219/lstm_658/strided_slice_1/stack:output:08sequential_219/lstm_658/strided_slice_1/stack_1:output:08sequential_219/lstm_658/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_219/lstm_658/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_219/lstm_658/TensorArrayV2TensorListReserve<sequential_219/lstm_658/TensorArrayV2/element_shape:output:00sequential_219/lstm_658/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_219/lstm_658/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
?sequential_219/lstm_658/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_219/lstm_658/transpose:y:0Vsequential_219/lstm_658/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_219/lstm_658/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_219/lstm_658/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_219/lstm_658/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_219/lstm_658/strided_slice_2StridedSlice%sequential_219/lstm_658/transpose:y:06sequential_219/lstm_658/strided_slice_2/stack:output:08sequential_219/lstm_658/strided_slice_2/stack_1:output:08sequential_219/lstm_658/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
;sequential_219/lstm_658/lstm_cell_658/MatMul/ReadVariableOpReadVariableOpDsequential_219_lstm_658_lstm_cell_658_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
,sequential_219/lstm_658/lstm_cell_658/MatMulMatMul0sequential_219/lstm_658/strided_slice_2:output:0Csequential_219/lstm_658/lstm_cell_658/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_219/lstm_658/lstm_cell_658/MatMul_1/ReadVariableOpReadVariableOpFsequential_219_lstm_658_lstm_cell_658_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
.sequential_219/lstm_658/lstm_cell_658/MatMul_1MatMul&sequential_219/lstm_658/zeros:output:0Esequential_219/lstm_658/lstm_cell_658/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_219/lstm_658/lstm_cell_658/addAddV26sequential_219/lstm_658/lstm_cell_658/MatMul:product:08sequential_219/lstm_658/lstm_cell_658/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_219/lstm_658/lstm_cell_658/BiasAdd/ReadVariableOpReadVariableOpEsequential_219_lstm_658_lstm_cell_658_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_219/lstm_658/lstm_cell_658/BiasAddBiasAdd-sequential_219/lstm_658/lstm_cell_658/add:z:0Dsequential_219/lstm_658/lstm_cell_658/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_219/lstm_658/lstm_cell_658/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_219/lstm_658/lstm_cell_658/splitSplit>sequential_219/lstm_658/lstm_cell_658/split/split_dim:output:06sequential_219/lstm_658/lstm_cell_658/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
-sequential_219/lstm_658/lstm_cell_658/SigmoidSigmoid4sequential_219/lstm_658/lstm_cell_658/split:output:0*
T0*'
_output_shapes
:?????????2?
/sequential_219/lstm_658/lstm_cell_658/Sigmoid_1Sigmoid4sequential_219/lstm_658/lstm_cell_658/split:output:1*
T0*'
_output_shapes
:?????????2?
)sequential_219/lstm_658/lstm_cell_658/mulMul3sequential_219/lstm_658/lstm_cell_658/Sigmoid_1:y:0(sequential_219/lstm_658/zeros_1:output:0*
T0*'
_output_shapes
:?????????2?
*sequential_219/lstm_658/lstm_cell_658/ReluRelu4sequential_219/lstm_658/lstm_cell_658/split:output:2*
T0*'
_output_shapes
:?????????2?
+sequential_219/lstm_658/lstm_cell_658/mul_1Mul1sequential_219/lstm_658/lstm_cell_658/Sigmoid:y:08sequential_219/lstm_658/lstm_cell_658/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
+sequential_219/lstm_658/lstm_cell_658/add_1AddV2-sequential_219/lstm_658/lstm_cell_658/mul:z:0/sequential_219/lstm_658/lstm_cell_658/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
/sequential_219/lstm_658/lstm_cell_658/Sigmoid_2Sigmoid4sequential_219/lstm_658/lstm_cell_658/split:output:3*
T0*'
_output_shapes
:?????????2?
,sequential_219/lstm_658/lstm_cell_658/Relu_1Relu/sequential_219/lstm_658/lstm_cell_658/add_1:z:0*
T0*'
_output_shapes
:?????????2?
+sequential_219/lstm_658/lstm_cell_658/mul_2Mul3sequential_219/lstm_658/lstm_cell_658/Sigmoid_2:y:0:sequential_219/lstm_658/lstm_cell_658/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
5sequential_219/lstm_658/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
'sequential_219/lstm_658/TensorArrayV2_1TensorListReserve>sequential_219/lstm_658/TensorArrayV2_1/element_shape:output:00sequential_219/lstm_658/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_219/lstm_658/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_219/lstm_658/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_219/lstm_658/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_219/lstm_658/whileWhile3sequential_219/lstm_658/while/loop_counter:output:09sequential_219/lstm_658/while/maximum_iterations:output:0%sequential_219/lstm_658/time:output:00sequential_219/lstm_658/TensorArrayV2_1:handle:0&sequential_219/lstm_658/zeros:output:0(sequential_219/lstm_658/zeros_1:output:00sequential_219/lstm_658/strided_slice_1:output:0Osequential_219/lstm_658/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_219_lstm_658_lstm_cell_658_matmul_readvariableop_resourceFsequential_219_lstm_658_lstm_cell_658_matmul_1_readvariableop_resourceEsequential_219_lstm_658_lstm_cell_658_biasadd_readvariableop_resource*
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
*sequential_219_lstm_658_while_body_4186679*6
cond.R,
*sequential_219_lstm_658_while_cond_4186678*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
Hsequential_219/lstm_658/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
:sequential_219/lstm_658/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_219/lstm_658/while:output:3Qsequential_219/lstm_658/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0?
-sequential_219/lstm_658/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_219/lstm_658/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_219/lstm_658/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_219/lstm_658/strided_slice_3StridedSliceCsequential_219/lstm_658/TensorArrayV2Stack/TensorListStack:tensor:06sequential_219/lstm_658/strided_slice_3/stack:output:08sequential_219/lstm_658/strided_slice_3/stack_1:output:08sequential_219/lstm_658/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask}
(sequential_219/lstm_658/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_219/lstm_658/transpose_1	TransposeCsequential_219/lstm_658/TensorArrayV2Stack/TensorListStack:tensor:01sequential_219/lstm_658/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2s
sequential_219/lstm_658/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_219/lstm_659/ShapeShape'sequential_219/lstm_658/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_219/lstm_659/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_219/lstm_659/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_219/lstm_659/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_219/lstm_659/strided_sliceStridedSlice&sequential_219/lstm_659/Shape:output:04sequential_219/lstm_659/strided_slice/stack:output:06sequential_219/lstm_659/strided_slice/stack_1:output:06sequential_219/lstm_659/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_219/lstm_659/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
$sequential_219/lstm_659/zeros/packedPack.sequential_219/lstm_659/strided_slice:output:0/sequential_219/lstm_659/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_219/lstm_659/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_219/lstm_659/zerosFill-sequential_219/lstm_659/zeros/packed:output:0,sequential_219/lstm_659/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
j
(sequential_219/lstm_659/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
&sequential_219/lstm_659/zeros_1/packedPack.sequential_219/lstm_659/strided_slice:output:01sequential_219/lstm_659/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_219/lstm_659/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_219/lstm_659/zeros_1Fill/sequential_219/lstm_659/zeros_1/packed:output:0.sequential_219/lstm_659/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
{
&sequential_219/lstm_659/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_219/lstm_659/transpose	Transpose'sequential_219/lstm_658/transpose_1:y:0/sequential_219/lstm_659/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2t
sequential_219/lstm_659/Shape_1Shape%sequential_219/lstm_659/transpose:y:0*
T0*
_output_shapes
:w
-sequential_219/lstm_659/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_219/lstm_659/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_219/lstm_659/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_219/lstm_659/strided_slice_1StridedSlice(sequential_219/lstm_659/Shape_1:output:06sequential_219/lstm_659/strided_slice_1/stack:output:08sequential_219/lstm_659/strided_slice_1/stack_1:output:08sequential_219/lstm_659/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_219/lstm_659/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_219/lstm_659/TensorArrayV2TensorListReserve<sequential_219/lstm_659/TensorArrayV2/element_shape:output:00sequential_219/lstm_659/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_219/lstm_659/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
?sequential_219/lstm_659/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_219/lstm_659/transpose:y:0Vsequential_219/lstm_659/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_219/lstm_659/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_219/lstm_659/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_219/lstm_659/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_219/lstm_659/strided_slice_2StridedSlice%sequential_219/lstm_659/transpose:y:06sequential_219/lstm_659/strided_slice_2/stack:output:08sequential_219/lstm_659/strided_slice_2/stack_1:output:08sequential_219/lstm_659/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
;sequential_219/lstm_659/lstm_cell_659/MatMul/ReadVariableOpReadVariableOpDsequential_219_lstm_659_lstm_cell_659_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
,sequential_219/lstm_659/lstm_cell_659/MatMulMatMul0sequential_219/lstm_659/strided_slice_2:output:0Csequential_219/lstm_659/lstm_cell_659/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
=sequential_219/lstm_659/lstm_cell_659/MatMul_1/ReadVariableOpReadVariableOpFsequential_219_lstm_659_lstm_cell_659_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
.sequential_219/lstm_659/lstm_cell_659/MatMul_1MatMul&sequential_219/lstm_659/zeros:output:0Esequential_219/lstm_659/lstm_cell_659/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
)sequential_219/lstm_659/lstm_cell_659/addAddV26sequential_219/lstm_659/lstm_cell_659/MatMul:product:08sequential_219/lstm_659/lstm_cell_659/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
<sequential_219/lstm_659/lstm_cell_659/BiasAdd/ReadVariableOpReadVariableOpEsequential_219_lstm_659_lstm_cell_659_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
-sequential_219/lstm_659/lstm_cell_659/BiasAddBiasAdd-sequential_219/lstm_659/lstm_cell_659/add:z:0Dsequential_219/lstm_659/lstm_cell_659/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(w
5sequential_219/lstm_659/lstm_cell_659/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_219/lstm_659/lstm_cell_659/splitSplit>sequential_219/lstm_659/lstm_cell_659/split/split_dim:output:06sequential_219/lstm_659/lstm_cell_659/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
-sequential_219/lstm_659/lstm_cell_659/SigmoidSigmoid4sequential_219/lstm_659/lstm_cell_659/split:output:0*
T0*'
_output_shapes
:?????????
?
/sequential_219/lstm_659/lstm_cell_659/Sigmoid_1Sigmoid4sequential_219/lstm_659/lstm_cell_659/split:output:1*
T0*'
_output_shapes
:?????????
?
)sequential_219/lstm_659/lstm_cell_659/mulMul3sequential_219/lstm_659/lstm_cell_659/Sigmoid_1:y:0(sequential_219/lstm_659/zeros_1:output:0*
T0*'
_output_shapes
:?????????
?
*sequential_219/lstm_659/lstm_cell_659/ReluRelu4sequential_219/lstm_659/lstm_cell_659/split:output:2*
T0*'
_output_shapes
:?????????
?
+sequential_219/lstm_659/lstm_cell_659/mul_1Mul1sequential_219/lstm_659/lstm_cell_659/Sigmoid:y:08sequential_219/lstm_659/lstm_cell_659/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
+sequential_219/lstm_659/lstm_cell_659/add_1AddV2-sequential_219/lstm_659/lstm_cell_659/mul:z:0/sequential_219/lstm_659/lstm_cell_659/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
/sequential_219/lstm_659/lstm_cell_659/Sigmoid_2Sigmoid4sequential_219/lstm_659/lstm_cell_659/split:output:3*
T0*'
_output_shapes
:?????????
?
,sequential_219/lstm_659/lstm_cell_659/Relu_1Relu/sequential_219/lstm_659/lstm_cell_659/add_1:z:0*
T0*'
_output_shapes
:?????????
?
+sequential_219/lstm_659/lstm_cell_659/mul_2Mul3sequential_219/lstm_659/lstm_cell_659/Sigmoid_2:y:0:sequential_219/lstm_659/lstm_cell_659/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
5sequential_219/lstm_659/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
'sequential_219/lstm_659/TensorArrayV2_1TensorListReserve>sequential_219/lstm_659/TensorArrayV2_1/element_shape:output:00sequential_219/lstm_659/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_219/lstm_659/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_219/lstm_659/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_219/lstm_659/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_219/lstm_659/whileWhile3sequential_219/lstm_659/while/loop_counter:output:09sequential_219/lstm_659/while/maximum_iterations:output:0%sequential_219/lstm_659/time:output:00sequential_219/lstm_659/TensorArrayV2_1:handle:0&sequential_219/lstm_659/zeros:output:0(sequential_219/lstm_659/zeros_1:output:00sequential_219/lstm_659/strided_slice_1:output:0Osequential_219/lstm_659/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_219_lstm_659_lstm_cell_659_matmul_readvariableop_resourceFsequential_219_lstm_659_lstm_cell_659_matmul_1_readvariableop_resourceEsequential_219_lstm_659_lstm_cell_659_biasadd_readvariableop_resource*
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
*sequential_219_lstm_659_while_body_4186818*6
cond.R,
*sequential_219_lstm_659_while_cond_4186817*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
Hsequential_219/lstm_659/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
:sequential_219/lstm_659/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_219/lstm_659/while:output:3Qsequential_219/lstm_659/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0?
-sequential_219/lstm_659/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_219/lstm_659/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_219/lstm_659/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_219/lstm_659/strided_slice_3StridedSliceCsequential_219/lstm_659/TensorArrayV2Stack/TensorListStack:tensor:06sequential_219/lstm_659/strided_slice_3/stack:output:08sequential_219/lstm_659/strided_slice_3/stack_1:output:08sequential_219/lstm_659/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_mask}
(sequential_219/lstm_659/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_219/lstm_659/transpose_1	TransposeCsequential_219/lstm_659/TensorArrayV2Stack/TensorListStack:tensor:01sequential_219/lstm_659/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
s
sequential_219/lstm_659/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
.sequential_219/dense_219/MatMul/ReadVariableOpReadVariableOp7sequential_219_dense_219_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
sequential_219/dense_219/MatMulMatMul0sequential_219/lstm_659/strided_slice_3:output:06sequential_219/dense_219/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
/sequential_219/dense_219/BiasAdd/ReadVariableOpReadVariableOp8sequential_219_dense_219_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
 sequential_219/dense_219/BiasAddBiasAdd)sequential_219/dense_219/MatMul:product:07sequential_219/dense_219/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x
IdentityIdentity)sequential_219/dense_219/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp0^sequential_219/dense_219/BiasAdd/ReadVariableOp/^sequential_219/dense_219/MatMul/ReadVariableOp=^sequential_219/lstm_657/lstm_cell_657/BiasAdd/ReadVariableOp<^sequential_219/lstm_657/lstm_cell_657/MatMul/ReadVariableOp>^sequential_219/lstm_657/lstm_cell_657/MatMul_1/ReadVariableOp^sequential_219/lstm_657/while=^sequential_219/lstm_658/lstm_cell_658/BiasAdd/ReadVariableOp<^sequential_219/lstm_658/lstm_cell_658/MatMul/ReadVariableOp>^sequential_219/lstm_658/lstm_cell_658/MatMul_1/ReadVariableOp^sequential_219/lstm_658/while=^sequential_219/lstm_659/lstm_cell_659/BiasAdd/ReadVariableOp<^sequential_219/lstm_659/lstm_cell_659/MatMul/ReadVariableOp>^sequential_219/lstm_659/lstm_cell_659/MatMul_1/ReadVariableOp^sequential_219/lstm_659/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2b
/sequential_219/dense_219/BiasAdd/ReadVariableOp/sequential_219/dense_219/BiasAdd/ReadVariableOp2`
.sequential_219/dense_219/MatMul/ReadVariableOp.sequential_219/dense_219/MatMul/ReadVariableOp2|
<sequential_219/lstm_657/lstm_cell_657/BiasAdd/ReadVariableOp<sequential_219/lstm_657/lstm_cell_657/BiasAdd/ReadVariableOp2z
;sequential_219/lstm_657/lstm_cell_657/MatMul/ReadVariableOp;sequential_219/lstm_657/lstm_cell_657/MatMul/ReadVariableOp2~
=sequential_219/lstm_657/lstm_cell_657/MatMul_1/ReadVariableOp=sequential_219/lstm_657/lstm_cell_657/MatMul_1/ReadVariableOp2>
sequential_219/lstm_657/whilesequential_219/lstm_657/while2|
<sequential_219/lstm_658/lstm_cell_658/BiasAdd/ReadVariableOp<sequential_219/lstm_658/lstm_cell_658/BiasAdd/ReadVariableOp2z
;sequential_219/lstm_658/lstm_cell_658/MatMul/ReadVariableOp;sequential_219/lstm_658/lstm_cell_658/MatMul/ReadVariableOp2~
=sequential_219/lstm_658/lstm_cell_658/MatMul_1/ReadVariableOp=sequential_219/lstm_658/lstm_cell_658/MatMul_1/ReadVariableOp2>
sequential_219/lstm_658/whilesequential_219/lstm_658/while2|
<sequential_219/lstm_659/lstm_cell_659/BiasAdd/ReadVariableOp<sequential_219/lstm_659/lstm_cell_659/BiasAdd/ReadVariableOp2z
;sequential_219/lstm_659/lstm_cell_659/MatMul/ReadVariableOp;sequential_219/lstm_659/lstm_cell_659/MatMul/ReadVariableOp2~
=sequential_219/lstm_659/lstm_cell_659/MatMul_1/ReadVariableOp=sequential_219/lstm_659/lstm_cell_659/MatMul_1/ReadVariableOp2>
sequential_219/lstm_659/whilesequential_219/lstm_659/while:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_657_input
?
?
*__inference_lstm_659_layer_call_fn_4191352

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
E__inference_lstm_659_layer_call_and_return_conditional_losses_4188623o
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
while_cond_4188538
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4188538___redundant_placeholder05
1while_while_cond_4188538___redundant_placeholder15
1while_while_cond_4188538___redundant_placeholder25
1while_while_cond_4188538___redundant_placeholder3
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
while_body_4188323
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_659_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_659_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_659_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_659_matmul_readvariableop_resource:2(F
4while_lstm_cell_659_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_659_biasadd_readvariableop_resource:(??*while/lstm_cell_659/BiasAdd/ReadVariableOp?)while/lstm_cell_659/MatMul/ReadVariableOp?+while/lstm_cell_659/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_659/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_659_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_659/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_659/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_659/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_659_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_659/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_659/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_659/addAddV2$while/lstm_cell_659/MatMul:product:0&while/lstm_cell_659/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_659/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_659_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_659/BiasAddBiasAddwhile/lstm_cell_659/add:z:02while/lstm_cell_659/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_659/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_659/splitSplit,while/lstm_cell_659/split/split_dim:output:0$while/lstm_cell_659/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_659/SigmoidSigmoid"while/lstm_cell_659/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_659/Sigmoid_1Sigmoid"while/lstm_cell_659/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_659/mulMul!while/lstm_cell_659/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_659/ReluRelu"while/lstm_cell_659/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_659/mul_1Mulwhile/lstm_cell_659/Sigmoid:y:0&while/lstm_cell_659/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_659/add_1AddV2while/lstm_cell_659/mul:z:0while/lstm_cell_659/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_659/Sigmoid_2Sigmoid"while/lstm_cell_659/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_659/Relu_1Reluwhile/lstm_cell_659/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_659/mul_2Mul!while/lstm_cell_659/Sigmoid_2:y:0(while/lstm_cell_659/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_659/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_659/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_659/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_659/BiasAdd/ReadVariableOp*^while/lstm_cell_659/MatMul/ReadVariableOp,^while/lstm_cell_659/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_659_biasadd_readvariableop_resource5while_lstm_cell_659_biasadd_readvariableop_resource_0"n
4while_lstm_cell_659_matmul_1_readvariableop_resource6while_lstm_cell_659_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_659_matmul_readvariableop_resource4while_lstm_cell_659_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_659/BiasAdd/ReadVariableOp*while/lstm_cell_659/BiasAdd/ReadVariableOp2V
)while/lstm_cell_659/MatMul/ReadVariableOp)while/lstm_cell_659/MatMul/ReadVariableOp2Z
+while/lstm_cell_659/MatMul_1/ReadVariableOp+while/lstm_cell_659/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_4190322
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_657_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_657_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_657_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_657_matmul_readvariableop_resource:	?G
4while_lstm_cell_657_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_657_biasadd_readvariableop_resource:	???*while/lstm_cell_657/BiasAdd/ReadVariableOp?)while/lstm_cell_657/MatMul/ReadVariableOp?+while/lstm_cell_657/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_657/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_657_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_657/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_657/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_657/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_657_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_657/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_657/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_657/addAddV2$while/lstm_cell_657/MatMul:product:0&while/lstm_cell_657/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_657/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_657_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_657/BiasAddBiasAddwhile/lstm_cell_657/add:z:02while/lstm_cell_657/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_657/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_657/splitSplit,while/lstm_cell_657/split/split_dim:output:0$while/lstm_cell_657/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_657/SigmoidSigmoid"while/lstm_cell_657/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_657/Sigmoid_1Sigmoid"while/lstm_cell_657/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_657/mulMul!while/lstm_cell_657/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_657/ReluRelu"while/lstm_cell_657/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_657/mul_1Mulwhile/lstm_cell_657/Sigmoid:y:0&while/lstm_cell_657/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_657/add_1AddV2while/lstm_cell_657/mul:z:0while/lstm_cell_657/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_657/Sigmoid_2Sigmoid"while/lstm_cell_657/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_657/Relu_1Reluwhile/lstm_cell_657/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_657/mul_2Mul!while/lstm_cell_657/Sigmoid_2:y:0(while/lstm_cell_657/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_657/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_657/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_657/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_657/BiasAdd/ReadVariableOp*^while/lstm_cell_657/MatMul/ReadVariableOp,^while/lstm_cell_657/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_657_biasadd_readvariableop_resource5while_lstm_cell_657_biasadd_readvariableop_resource_0"n
4while_lstm_cell_657_matmul_1_readvariableop_resource6while_lstm_cell_657_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_657_matmul_readvariableop_resource4while_lstm_cell_657_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_657/BiasAdd/ReadVariableOp*while/lstm_cell_657/BiasAdd/ReadVariableOp2V
)while/lstm_cell_657/MatMul/ReadVariableOp)while/lstm_cell_657/MatMul/ReadVariableOp2Z
+while/lstm_cell_657/MatMul_1/ReadVariableOp+while/lstm_cell_657/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_658_layer_call_and_return_conditional_losses_4187325

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

?
0__inference_sequential_219_layer_call_fn_4189073
lstm_657_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_657_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_219_layer_call_and_return_conditional_losses_4189021o
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
_user_specified_namelstm_657_input
?T
?
*sequential_219_lstm_657_while_body_4186540L
Hsequential_219_lstm_657_while_sequential_219_lstm_657_while_loop_counterR
Nsequential_219_lstm_657_while_sequential_219_lstm_657_while_maximum_iterations-
)sequential_219_lstm_657_while_placeholder/
+sequential_219_lstm_657_while_placeholder_1/
+sequential_219_lstm_657_while_placeholder_2/
+sequential_219_lstm_657_while_placeholder_3K
Gsequential_219_lstm_657_while_sequential_219_lstm_657_strided_slice_1_0?
?sequential_219_lstm_657_while_tensorarrayv2read_tensorlistgetitem_sequential_219_lstm_657_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_219_lstm_657_while_lstm_cell_657_matmul_readvariableop_resource_0:	?a
Nsequential_219_lstm_657_while_lstm_cell_657_matmul_1_readvariableop_resource_0:	d?\
Msequential_219_lstm_657_while_lstm_cell_657_biasadd_readvariableop_resource_0:	?*
&sequential_219_lstm_657_while_identity,
(sequential_219_lstm_657_while_identity_1,
(sequential_219_lstm_657_while_identity_2,
(sequential_219_lstm_657_while_identity_3,
(sequential_219_lstm_657_while_identity_4,
(sequential_219_lstm_657_while_identity_5I
Esequential_219_lstm_657_while_sequential_219_lstm_657_strided_slice_1?
?sequential_219_lstm_657_while_tensorarrayv2read_tensorlistgetitem_sequential_219_lstm_657_tensorarrayunstack_tensorlistfromtensor]
Jsequential_219_lstm_657_while_lstm_cell_657_matmul_readvariableop_resource:	?_
Lsequential_219_lstm_657_while_lstm_cell_657_matmul_1_readvariableop_resource:	d?Z
Ksequential_219_lstm_657_while_lstm_cell_657_biasadd_readvariableop_resource:	???Bsequential_219/lstm_657/while/lstm_cell_657/BiasAdd/ReadVariableOp?Asequential_219/lstm_657/while/lstm_cell_657/MatMul/ReadVariableOp?Csequential_219/lstm_657/while/lstm_cell_657/MatMul_1/ReadVariableOp?
Osequential_219/lstm_657/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
Asequential_219/lstm_657/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_219_lstm_657_while_tensorarrayv2read_tensorlistgetitem_sequential_219_lstm_657_tensorarrayunstack_tensorlistfromtensor_0)sequential_219_lstm_657_while_placeholderXsequential_219/lstm_657/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
Asequential_219/lstm_657/while/lstm_cell_657/MatMul/ReadVariableOpReadVariableOpLsequential_219_lstm_657_while_lstm_cell_657_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
2sequential_219/lstm_657/while/lstm_cell_657/MatMulMatMulHsequential_219/lstm_657/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_219/lstm_657/while/lstm_cell_657/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_219/lstm_657/while/lstm_cell_657/MatMul_1/ReadVariableOpReadVariableOpNsequential_219_lstm_657_while_lstm_cell_657_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
4sequential_219/lstm_657/while/lstm_cell_657/MatMul_1MatMul+sequential_219_lstm_657_while_placeholder_2Ksequential_219/lstm_657/while/lstm_cell_657/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_219/lstm_657/while/lstm_cell_657/addAddV2<sequential_219/lstm_657/while/lstm_cell_657/MatMul:product:0>sequential_219/lstm_657/while/lstm_cell_657/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_219/lstm_657/while/lstm_cell_657/BiasAdd/ReadVariableOpReadVariableOpMsequential_219_lstm_657_while_lstm_cell_657_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_219/lstm_657/while/lstm_cell_657/BiasAddBiasAdd3sequential_219/lstm_657/while/lstm_cell_657/add:z:0Jsequential_219/lstm_657/while/lstm_cell_657/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_219/lstm_657/while/lstm_cell_657/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_219/lstm_657/while/lstm_cell_657/splitSplitDsequential_219/lstm_657/while/lstm_cell_657/split/split_dim:output:0<sequential_219/lstm_657/while/lstm_cell_657/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
3sequential_219/lstm_657/while/lstm_cell_657/SigmoidSigmoid:sequential_219/lstm_657/while/lstm_cell_657/split:output:0*
T0*'
_output_shapes
:?????????d?
5sequential_219/lstm_657/while/lstm_cell_657/Sigmoid_1Sigmoid:sequential_219/lstm_657/while/lstm_cell_657/split:output:1*
T0*'
_output_shapes
:?????????d?
/sequential_219/lstm_657/while/lstm_cell_657/mulMul9sequential_219/lstm_657/while/lstm_cell_657/Sigmoid_1:y:0+sequential_219_lstm_657_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
0sequential_219/lstm_657/while/lstm_cell_657/ReluRelu:sequential_219/lstm_657/while/lstm_cell_657/split:output:2*
T0*'
_output_shapes
:?????????d?
1sequential_219/lstm_657/while/lstm_cell_657/mul_1Mul7sequential_219/lstm_657/while/lstm_cell_657/Sigmoid:y:0>sequential_219/lstm_657/while/lstm_cell_657/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
1sequential_219/lstm_657/while/lstm_cell_657/add_1AddV23sequential_219/lstm_657/while/lstm_cell_657/mul:z:05sequential_219/lstm_657/while/lstm_cell_657/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
5sequential_219/lstm_657/while/lstm_cell_657/Sigmoid_2Sigmoid:sequential_219/lstm_657/while/lstm_cell_657/split:output:3*
T0*'
_output_shapes
:?????????d?
2sequential_219/lstm_657/while/lstm_cell_657/Relu_1Relu5sequential_219/lstm_657/while/lstm_cell_657/add_1:z:0*
T0*'
_output_shapes
:?????????d?
1sequential_219/lstm_657/while/lstm_cell_657/mul_2Mul9sequential_219/lstm_657/while/lstm_cell_657/Sigmoid_2:y:0@sequential_219/lstm_657/while/lstm_cell_657/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
Bsequential_219/lstm_657/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_219_lstm_657_while_placeholder_1)sequential_219_lstm_657_while_placeholder5sequential_219/lstm_657/while/lstm_cell_657/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_219/lstm_657/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_219/lstm_657/while/addAddV2)sequential_219_lstm_657_while_placeholder,sequential_219/lstm_657/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_219/lstm_657/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_219/lstm_657/while/add_1AddV2Hsequential_219_lstm_657_while_sequential_219_lstm_657_while_loop_counter.sequential_219/lstm_657/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_219/lstm_657/while/IdentityIdentity'sequential_219/lstm_657/while/add_1:z:0#^sequential_219/lstm_657/while/NoOp*
T0*
_output_shapes
: ?
(sequential_219/lstm_657/while/Identity_1IdentityNsequential_219_lstm_657_while_sequential_219_lstm_657_while_maximum_iterations#^sequential_219/lstm_657/while/NoOp*
T0*
_output_shapes
: ?
(sequential_219/lstm_657/while/Identity_2Identity%sequential_219/lstm_657/while/add:z:0#^sequential_219/lstm_657/while/NoOp*
T0*
_output_shapes
: ?
(sequential_219/lstm_657/while/Identity_3IdentityRsequential_219/lstm_657/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_219/lstm_657/while/NoOp*
T0*
_output_shapes
: ?
(sequential_219/lstm_657/while/Identity_4Identity5sequential_219/lstm_657/while/lstm_cell_657/mul_2:z:0#^sequential_219/lstm_657/while/NoOp*
T0*'
_output_shapes
:?????????d?
(sequential_219/lstm_657/while/Identity_5Identity5sequential_219/lstm_657/while/lstm_cell_657/add_1:z:0#^sequential_219/lstm_657/while/NoOp*
T0*'
_output_shapes
:?????????d?
"sequential_219/lstm_657/while/NoOpNoOpC^sequential_219/lstm_657/while/lstm_cell_657/BiasAdd/ReadVariableOpB^sequential_219/lstm_657/while/lstm_cell_657/MatMul/ReadVariableOpD^sequential_219/lstm_657/while/lstm_cell_657/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_219_lstm_657_while_identity/sequential_219/lstm_657/while/Identity:output:0"]
(sequential_219_lstm_657_while_identity_11sequential_219/lstm_657/while/Identity_1:output:0"]
(sequential_219_lstm_657_while_identity_21sequential_219/lstm_657/while/Identity_2:output:0"]
(sequential_219_lstm_657_while_identity_31sequential_219/lstm_657/while/Identity_3:output:0"]
(sequential_219_lstm_657_while_identity_41sequential_219/lstm_657/while/Identity_4:output:0"]
(sequential_219_lstm_657_while_identity_51sequential_219/lstm_657/while/Identity_5:output:0"?
Ksequential_219_lstm_657_while_lstm_cell_657_biasadd_readvariableop_resourceMsequential_219_lstm_657_while_lstm_cell_657_biasadd_readvariableop_resource_0"?
Lsequential_219_lstm_657_while_lstm_cell_657_matmul_1_readvariableop_resourceNsequential_219_lstm_657_while_lstm_cell_657_matmul_1_readvariableop_resource_0"?
Jsequential_219_lstm_657_while_lstm_cell_657_matmul_readvariableop_resourceLsequential_219_lstm_657_while_lstm_cell_657_matmul_readvariableop_resource_0"?
Esequential_219_lstm_657_while_sequential_219_lstm_657_strided_slice_1Gsequential_219_lstm_657_while_sequential_219_lstm_657_strided_slice_1_0"?
?sequential_219_lstm_657_while_tensorarrayv2read_tensorlistgetitem_sequential_219_lstm_657_tensorarrayunstack_tensorlistfromtensor?sequential_219_lstm_657_while_tensorarrayv2read_tensorlistgetitem_sequential_219_lstm_657_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2?
Bsequential_219/lstm_657/while/lstm_cell_657/BiasAdd/ReadVariableOpBsequential_219/lstm_657/while/lstm_cell_657/BiasAdd/ReadVariableOp2?
Asequential_219/lstm_657/while/lstm_cell_657/MatMul/ReadVariableOpAsequential_219/lstm_657/while/lstm_cell_657/MatMul/ReadVariableOp2?
Csequential_219/lstm_657/while/lstm_cell_657/MatMul_1/ReadVariableOpCsequential_219/lstm_657/while/lstm_cell_657/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_659_layer_call_and_return_conditional_losses_4188623

inputs>
,lstm_cell_659_matmul_readvariableop_resource:2(@
.lstm_cell_659_matmul_1_readvariableop_resource:
(;
-lstm_cell_659_biasadd_readvariableop_resource:(
identity??$lstm_cell_659/BiasAdd/ReadVariableOp?#lstm_cell_659/MatMul/ReadVariableOp?%lstm_cell_659/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_659/MatMul/ReadVariableOpReadVariableOp,lstm_cell_659_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_659/MatMulMatMulstrided_slice_2:output:0+lstm_cell_659/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_659/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_659_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_659/MatMul_1MatMulzeros:output:0-lstm_cell_659/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_659/addAddV2lstm_cell_659/MatMul:product:0 lstm_cell_659/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_659/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_659_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_659/BiasAddBiasAddlstm_cell_659/add:z:0,lstm_cell_659/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_659/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_659/splitSplit&lstm_cell_659/split/split_dim:output:0lstm_cell_659/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_659/SigmoidSigmoidlstm_cell_659/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_659/Sigmoid_1Sigmoidlstm_cell_659/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_659/mulMullstm_cell_659/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_659/ReluRelulstm_cell_659/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_659/mul_1Mullstm_cell_659/Sigmoid:y:0 lstm_cell_659/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_659/add_1AddV2lstm_cell_659/mul:z:0lstm_cell_659/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_659/Sigmoid_2Sigmoidlstm_cell_659/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_659/Relu_1Relulstm_cell_659/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_659/mul_2Mullstm_cell_659/Sigmoid_2:y:0"lstm_cell_659/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_659_matmul_readvariableop_resource.lstm_cell_659_matmul_1_readvariableop_resource-lstm_cell_659_biasadd_readvariableop_resource*
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
while_body_4188539*
condR
while_cond_4188538*K
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
NoOpNoOp%^lstm_cell_659/BiasAdd/ReadVariableOp$^lstm_cell_659/MatMul/ReadVariableOp&^lstm_cell_659/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_659/BiasAdd/ReadVariableOp$lstm_cell_659/BiasAdd/ReadVariableOp2J
#lstm_cell_659/MatMul/ReadVariableOp#lstm_cell_659/MatMul/ReadVariableOp2N
%lstm_cell_659/MatMul_1/ReadVariableOp%lstm_cell_659/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
*__inference_lstm_658_layer_call_fn_4190703
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
E__inference_lstm_658_layer_call_and_return_conditional_losses_4187408|
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
while_cond_4187529
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4187529___redundant_placeholder05
1while_while_cond_4187529___redundant_placeholder15
1while_while_cond_4187529___redundant_placeholder25
1while_while_cond_4187529___redundant_placeholder3
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
E__inference_lstm_659_layer_call_and_return_conditional_losses_4187949

inputs'
lstm_cell_659_4187867:2('
lstm_cell_659_4187869:
(#
lstm_cell_659_4187871:(
identity??%lstm_cell_659/StatefulPartitionedCall?while;
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
%lstm_cell_659/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_659_4187867lstm_cell_659_4187869lstm_cell_659_4187871*
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
J__inference_lstm_cell_659_layer_call_and_return_conditional_losses_4187821n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_659_4187867lstm_cell_659_4187869lstm_cell_659_4187871*
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
while_body_4187880*
condR
while_cond_4187879*K
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
NoOpNoOp&^lstm_cell_659/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_659/StatefulPartitionedCall%lstm_cell_659/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?

?
%__inference_signature_wrapper_4189168
lstm_657_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_657_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
"__inference__wrapped_model_4186908o
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
_user_specified_namelstm_657_input
?8
?
E__inference_lstm_659_layer_call_and_return_conditional_losses_4187758

inputs'
lstm_cell_659_4187676:2('
lstm_cell_659_4187678:
(#
lstm_cell_659_4187680:(
identity??%lstm_cell_659/StatefulPartitionedCall?while;
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
%lstm_cell_659/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_659_4187676lstm_cell_659_4187678lstm_cell_659_4187680*
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
J__inference_lstm_cell_659_layer_call_and_return_conditional_losses_4187675n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_659_4187676lstm_cell_659_4187678lstm_cell_659_4187680*
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
while_body_4187689*
condR
while_cond_4187688*K
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
NoOpNoOp&^lstm_cell_659/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_659/StatefulPartitionedCall%lstm_cell_659/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?
?
K__inference_sequential_219_layer_call_and_return_conditional_losses_4189103
lstm_657_input#
lstm_657_4189076:	?#
lstm_657_4189078:	d?
lstm_657_4189080:	?#
lstm_658_4189083:	d?#
lstm_658_4189085:	2?
lstm_658_4189087:	?"
lstm_659_4189090:2("
lstm_659_4189092:
(
lstm_659_4189094:(#
dense_219_4189097:

dense_219_4189099:
identity??!dense_219/StatefulPartitionedCall? lstm_657/StatefulPartitionedCall? lstm_658/StatefulPartitionedCall? lstm_659/StatefulPartitionedCall?
 lstm_657/StatefulPartitionedCallStatefulPartitionedCalllstm_657_inputlstm_657_4189076lstm_657_4189078lstm_657_4189080*
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
E__inference_lstm_657_layer_call_and_return_conditional_losses_4188107?
 lstm_658/StatefulPartitionedCallStatefulPartitionedCall)lstm_657/StatefulPartitionedCall:output:0lstm_658_4189083lstm_658_4189085lstm_658_4189087*
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
E__inference_lstm_658_layer_call_and_return_conditional_losses_4188257?
 lstm_659/StatefulPartitionedCallStatefulPartitionedCall)lstm_658/StatefulPartitionedCall:output:0lstm_659_4189090lstm_659_4189092lstm_659_4189094*
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
E__inference_lstm_659_layer_call_and_return_conditional_losses_4188407?
!dense_219/StatefulPartitionedCallStatefulPartitionedCall)lstm_659/StatefulPartitionedCall:output:0dense_219_4189097dense_219_4189099*
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
F__inference_dense_219_layer_call_and_return_conditional_losses_4188425y
IdentityIdentity*dense_219/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_219/StatefulPartitionedCall!^lstm_657/StatefulPartitionedCall!^lstm_658/StatefulPartitionedCall!^lstm_659/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_219/StatefulPartitionedCall!dense_219/StatefulPartitionedCall2D
 lstm_657/StatefulPartitionedCall lstm_657/StatefulPartitionedCall2D
 lstm_658/StatefulPartitionedCall lstm_658/StatefulPartitionedCall2D
 lstm_659/StatefulPartitionedCall lstm_659/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_657_input
?J
?
E__inference_lstm_658_layer_call_and_return_conditional_losses_4188788

inputs?
,lstm_cell_658_matmul_readvariableop_resource:	d?A
.lstm_cell_658_matmul_1_readvariableop_resource:	2?<
-lstm_cell_658_biasadd_readvariableop_resource:	?
identity??$lstm_cell_658/BiasAdd/ReadVariableOp?#lstm_cell_658/MatMul/ReadVariableOp?%lstm_cell_658/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_658/MatMul/ReadVariableOpReadVariableOp,lstm_cell_658_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_658/MatMulMatMulstrided_slice_2:output:0+lstm_cell_658/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_658/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_658_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_658/MatMul_1MatMulzeros:output:0-lstm_cell_658/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_658/addAddV2lstm_cell_658/MatMul:product:0 lstm_cell_658/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_658/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_658_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_658/BiasAddBiasAddlstm_cell_658/add:z:0,lstm_cell_658/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_658/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_658/splitSplit&lstm_cell_658/split/split_dim:output:0lstm_cell_658/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_658/SigmoidSigmoidlstm_cell_658/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_658/Sigmoid_1Sigmoidlstm_cell_658/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_658/mulMullstm_cell_658/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_658/ReluRelulstm_cell_658/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_658/mul_1Mullstm_cell_658/Sigmoid:y:0 lstm_cell_658/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_658/add_1AddV2lstm_cell_658/mul:z:0lstm_cell_658/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_658/Sigmoid_2Sigmoidlstm_cell_658/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_658/Relu_1Relulstm_cell_658/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_658/mul_2Mullstm_cell_658/Sigmoid_2:y:0"lstm_cell_658/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_658_matmul_readvariableop_resource.lstm_cell_658_matmul_1_readvariableop_resource-lstm_cell_658_biasadd_readvariableop_resource*
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
while_body_4188704*
condR
while_cond_4188703*K
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
NoOpNoOp%^lstm_cell_658/BiasAdd/ReadVariableOp$^lstm_cell_658/MatMul/ReadVariableOp&^lstm_cell_658/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_658/BiasAdd/ReadVariableOp$lstm_cell_658/BiasAdd/ReadVariableOp2J
#lstm_cell_658/MatMul/ReadVariableOp#lstm_cell_658/MatMul/ReadVariableOp2N
%lstm_cell_658/MatMul_1/ReadVariableOp%lstm_cell_658/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
*__inference_lstm_658_layer_call_fn_4190736

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
E__inference_lstm_658_layer_call_and_return_conditional_losses_4188788s
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
?
while_cond_4187879
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4187879___redundant_placeholder05
1while_while_cond_4187879___redundant_placeholder15
1while_while_cond_4187879___redundant_placeholder25
1while_while_cond_4187879___redundant_placeholder3
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
while_body_4188704
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_658_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_658_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_658_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_658_matmul_readvariableop_resource:	d?G
4while_lstm_cell_658_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_658_biasadd_readvariableop_resource:	???*while/lstm_cell_658/BiasAdd/ReadVariableOp?)while/lstm_cell_658/MatMul/ReadVariableOp?+while/lstm_cell_658/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_658/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_658_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_658/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_658/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_658/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_658_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_658/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_658/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_658/addAddV2$while/lstm_cell_658/MatMul:product:0&while/lstm_cell_658/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_658/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_658_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_658/BiasAddBiasAddwhile/lstm_cell_658/add:z:02while/lstm_cell_658/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_658/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_658/splitSplit,while/lstm_cell_658/split/split_dim:output:0$while/lstm_cell_658/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_658/SigmoidSigmoid"while/lstm_cell_658/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_658/Sigmoid_1Sigmoid"while/lstm_cell_658/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_658/mulMul!while/lstm_cell_658/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_658/ReluRelu"while/lstm_cell_658/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_658/mul_1Mulwhile/lstm_cell_658/Sigmoid:y:0&while/lstm_cell_658/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_658/add_1AddV2while/lstm_cell_658/mul:z:0while/lstm_cell_658/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_658/Sigmoid_2Sigmoid"while/lstm_cell_658/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_658/Relu_1Reluwhile/lstm_cell_658/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_658/mul_2Mul!while/lstm_cell_658/Sigmoid_2:y:0(while/lstm_cell_658/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_658/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_658/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_658/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_658/BiasAdd/ReadVariableOp*^while/lstm_cell_658/MatMul/ReadVariableOp,^while/lstm_cell_658/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_658_biasadd_readvariableop_resource5while_lstm_cell_658_biasadd_readvariableop_resource_0"n
4while_lstm_cell_658_matmul_1_readvariableop_resource6while_lstm_cell_658_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_658_matmul_readvariableop_resource4while_lstm_cell_658_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_658/BiasAdd/ReadVariableOp*while/lstm_cell_658/BiasAdd/ReadVariableOp2V
)while/lstm_cell_658/MatMul/ReadVariableOp)while/lstm_cell_658/MatMul/ReadVariableOp2Z
+while/lstm_cell_658/MatMul_1/ReadVariableOp+while/lstm_cell_658/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_4188539
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_659_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_659_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_659_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_659_matmul_readvariableop_resource:2(F
4while_lstm_cell_659_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_659_biasadd_readvariableop_resource:(??*while/lstm_cell_659/BiasAdd/ReadVariableOp?)while/lstm_cell_659/MatMul/ReadVariableOp?+while/lstm_cell_659/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_659/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_659_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_659/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_659/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_659/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_659_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_659/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_659/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_659/addAddV2$while/lstm_cell_659/MatMul:product:0&while/lstm_cell_659/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_659/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_659_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_659/BiasAddBiasAddwhile/lstm_cell_659/add:z:02while/lstm_cell_659/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_659/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_659/splitSplit,while/lstm_cell_659/split/split_dim:output:0$while/lstm_cell_659/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_659/SigmoidSigmoid"while/lstm_cell_659/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_659/Sigmoid_1Sigmoid"while/lstm_cell_659/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_659/mulMul!while/lstm_cell_659/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_659/ReluRelu"while/lstm_cell_659/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_659/mul_1Mulwhile/lstm_cell_659/Sigmoid:y:0&while/lstm_cell_659/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_659/add_1AddV2while/lstm_cell_659/mul:z:0while/lstm_cell_659/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_659/Sigmoid_2Sigmoid"while/lstm_cell_659/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_659/Relu_1Reluwhile/lstm_cell_659/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_659/mul_2Mul!while/lstm_cell_659/Sigmoid_2:y:0(while/lstm_cell_659/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_659/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_659/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_659/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_659/BiasAdd/ReadVariableOp*^while/lstm_cell_659/MatMul/ReadVariableOp,^while/lstm_cell_659/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_659_biasadd_readvariableop_resource5while_lstm_cell_659_biasadd_readvariableop_resource_0"n
4while_lstm_cell_659_matmul_1_readvariableop_resource6while_lstm_cell_659_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_659_matmul_readvariableop_resource4while_lstm_cell_659_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_659/BiasAdd/ReadVariableOp*while/lstm_cell_659/BiasAdd/ReadVariableOp2V
)while/lstm_cell_659/MatMul/ReadVariableOp)while/lstm_cell_659/MatMul/ReadVariableOp2Z
+while/lstm_cell_659/MatMul_1/ReadVariableOp+while/lstm_cell_659/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
K__inference_sequential_219_layer_call_and_return_conditional_losses_4189649

inputsH
5lstm_657_lstm_cell_657_matmul_readvariableop_resource:	?J
7lstm_657_lstm_cell_657_matmul_1_readvariableop_resource:	d?E
6lstm_657_lstm_cell_657_biasadd_readvariableop_resource:	?H
5lstm_658_lstm_cell_658_matmul_readvariableop_resource:	d?J
7lstm_658_lstm_cell_658_matmul_1_readvariableop_resource:	2?E
6lstm_658_lstm_cell_658_biasadd_readvariableop_resource:	?G
5lstm_659_lstm_cell_659_matmul_readvariableop_resource:2(I
7lstm_659_lstm_cell_659_matmul_1_readvariableop_resource:
(D
6lstm_659_lstm_cell_659_biasadd_readvariableop_resource:(:
(dense_219_matmul_readvariableop_resource:
7
)dense_219_biasadd_readvariableop_resource:
identity?? dense_219/BiasAdd/ReadVariableOp?dense_219/MatMul/ReadVariableOp?-lstm_657/lstm_cell_657/BiasAdd/ReadVariableOp?,lstm_657/lstm_cell_657/MatMul/ReadVariableOp?.lstm_657/lstm_cell_657/MatMul_1/ReadVariableOp?lstm_657/while?-lstm_658/lstm_cell_658/BiasAdd/ReadVariableOp?,lstm_658/lstm_cell_658/MatMul/ReadVariableOp?.lstm_658/lstm_cell_658/MatMul_1/ReadVariableOp?lstm_658/while?-lstm_659/lstm_cell_659/BiasAdd/ReadVariableOp?,lstm_659/lstm_cell_659/MatMul/ReadVariableOp?.lstm_659/lstm_cell_659/MatMul_1/ReadVariableOp?lstm_659/whileD
lstm_657/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_657/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_657/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_657/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_657/strided_sliceStridedSlicelstm_657/Shape:output:0%lstm_657/strided_slice/stack:output:0'lstm_657/strided_slice/stack_1:output:0'lstm_657/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_657/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_657/zeros/packedPacklstm_657/strided_slice:output:0 lstm_657/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_657/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_657/zerosFilllstm_657/zeros/packed:output:0lstm_657/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_657/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_657/zeros_1/packedPacklstm_657/strided_slice:output:0"lstm_657/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_657/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_657/zeros_1Fill lstm_657/zeros_1/packed:output:0lstm_657/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_657/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_657/transpose	Transposeinputs lstm_657/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_657/Shape_1Shapelstm_657/transpose:y:0*
T0*
_output_shapes
:h
lstm_657/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_657/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_657/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_657/strided_slice_1StridedSlicelstm_657/Shape_1:output:0'lstm_657/strided_slice_1/stack:output:0)lstm_657/strided_slice_1/stack_1:output:0)lstm_657/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_657/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_657/TensorArrayV2TensorListReserve-lstm_657/TensorArrayV2/element_shape:output:0!lstm_657/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_657/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_657/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_657/transpose:y:0Glstm_657/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_657/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_657/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_657/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_657/strided_slice_2StridedSlicelstm_657/transpose:y:0'lstm_657/strided_slice_2/stack:output:0)lstm_657/strided_slice_2/stack_1:output:0)lstm_657/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_657/lstm_cell_657/MatMul/ReadVariableOpReadVariableOp5lstm_657_lstm_cell_657_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_657/lstm_cell_657/MatMulMatMul!lstm_657/strided_slice_2:output:04lstm_657/lstm_cell_657/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_657/lstm_cell_657/MatMul_1/ReadVariableOpReadVariableOp7lstm_657_lstm_cell_657_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_657/lstm_cell_657/MatMul_1MatMullstm_657/zeros:output:06lstm_657/lstm_cell_657/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_657/lstm_cell_657/addAddV2'lstm_657/lstm_cell_657/MatMul:product:0)lstm_657/lstm_cell_657/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_657/lstm_cell_657/BiasAdd/ReadVariableOpReadVariableOp6lstm_657_lstm_cell_657_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_657/lstm_cell_657/BiasAddBiasAddlstm_657/lstm_cell_657/add:z:05lstm_657/lstm_cell_657/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_657/lstm_cell_657/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_657/lstm_cell_657/splitSplit/lstm_657/lstm_cell_657/split/split_dim:output:0'lstm_657/lstm_cell_657/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_657/lstm_cell_657/SigmoidSigmoid%lstm_657/lstm_cell_657/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_657/lstm_cell_657/Sigmoid_1Sigmoid%lstm_657/lstm_cell_657/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_657/lstm_cell_657/mulMul$lstm_657/lstm_cell_657/Sigmoid_1:y:0lstm_657/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_657/lstm_cell_657/ReluRelu%lstm_657/lstm_cell_657/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_657/lstm_cell_657/mul_1Mul"lstm_657/lstm_cell_657/Sigmoid:y:0)lstm_657/lstm_cell_657/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_657/lstm_cell_657/add_1AddV2lstm_657/lstm_cell_657/mul:z:0 lstm_657/lstm_cell_657/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_657/lstm_cell_657/Sigmoid_2Sigmoid%lstm_657/lstm_cell_657/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_657/lstm_cell_657/Relu_1Relu lstm_657/lstm_cell_657/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_657/lstm_cell_657/mul_2Mul$lstm_657/lstm_cell_657/Sigmoid_2:y:0+lstm_657/lstm_cell_657/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_657/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_657/TensorArrayV2_1TensorListReserve/lstm_657/TensorArrayV2_1/element_shape:output:0!lstm_657/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_657/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_657/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_657/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_657/whileWhile$lstm_657/while/loop_counter:output:0*lstm_657/while/maximum_iterations:output:0lstm_657/time:output:0!lstm_657/TensorArrayV2_1:handle:0lstm_657/zeros:output:0lstm_657/zeros_1:output:0!lstm_657/strided_slice_1:output:0@lstm_657/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_657_lstm_cell_657_matmul_readvariableop_resource7lstm_657_lstm_cell_657_matmul_1_readvariableop_resource6lstm_657_lstm_cell_657_biasadd_readvariableop_resource*
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
lstm_657_while_body_4189281*'
condR
lstm_657_while_cond_4189280*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_657/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_657/TensorArrayV2Stack/TensorListStackTensorListStacklstm_657/while:output:3Blstm_657/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_657/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_657/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_657/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_657/strided_slice_3StridedSlice4lstm_657/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_657/strided_slice_3/stack:output:0)lstm_657/strided_slice_3/stack_1:output:0)lstm_657/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_657/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_657/transpose_1	Transpose4lstm_657/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_657/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_657/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_658/ShapeShapelstm_657/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_658/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_658/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_658/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_658/strided_sliceStridedSlicelstm_658/Shape:output:0%lstm_658/strided_slice/stack:output:0'lstm_658/strided_slice/stack_1:output:0'lstm_658/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_658/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_658/zeros/packedPacklstm_658/strided_slice:output:0 lstm_658/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_658/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_658/zerosFilllstm_658/zeros/packed:output:0lstm_658/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_658/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_658/zeros_1/packedPacklstm_658/strided_slice:output:0"lstm_658/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_658/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_658/zeros_1Fill lstm_658/zeros_1/packed:output:0lstm_658/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_658/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_658/transpose	Transposelstm_657/transpose_1:y:0 lstm_658/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_658/Shape_1Shapelstm_658/transpose:y:0*
T0*
_output_shapes
:h
lstm_658/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_658/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_658/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_658/strided_slice_1StridedSlicelstm_658/Shape_1:output:0'lstm_658/strided_slice_1/stack:output:0)lstm_658/strided_slice_1/stack_1:output:0)lstm_658/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_658/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_658/TensorArrayV2TensorListReserve-lstm_658/TensorArrayV2/element_shape:output:0!lstm_658/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_658/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_658/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_658/transpose:y:0Glstm_658/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_658/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_658/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_658/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_658/strided_slice_2StridedSlicelstm_658/transpose:y:0'lstm_658/strided_slice_2/stack:output:0)lstm_658/strided_slice_2/stack_1:output:0)lstm_658/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_658/lstm_cell_658/MatMul/ReadVariableOpReadVariableOp5lstm_658_lstm_cell_658_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_658/lstm_cell_658/MatMulMatMul!lstm_658/strided_slice_2:output:04lstm_658/lstm_cell_658/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_658/lstm_cell_658/MatMul_1/ReadVariableOpReadVariableOp7lstm_658_lstm_cell_658_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_658/lstm_cell_658/MatMul_1MatMullstm_658/zeros:output:06lstm_658/lstm_cell_658/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_658/lstm_cell_658/addAddV2'lstm_658/lstm_cell_658/MatMul:product:0)lstm_658/lstm_cell_658/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_658/lstm_cell_658/BiasAdd/ReadVariableOpReadVariableOp6lstm_658_lstm_cell_658_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_658/lstm_cell_658/BiasAddBiasAddlstm_658/lstm_cell_658/add:z:05lstm_658/lstm_cell_658/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_658/lstm_cell_658/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_658/lstm_cell_658/splitSplit/lstm_658/lstm_cell_658/split/split_dim:output:0'lstm_658/lstm_cell_658/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_658/lstm_cell_658/SigmoidSigmoid%lstm_658/lstm_cell_658/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_658/lstm_cell_658/Sigmoid_1Sigmoid%lstm_658/lstm_cell_658/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_658/lstm_cell_658/mulMul$lstm_658/lstm_cell_658/Sigmoid_1:y:0lstm_658/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_658/lstm_cell_658/ReluRelu%lstm_658/lstm_cell_658/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_658/lstm_cell_658/mul_1Mul"lstm_658/lstm_cell_658/Sigmoid:y:0)lstm_658/lstm_cell_658/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_658/lstm_cell_658/add_1AddV2lstm_658/lstm_cell_658/mul:z:0 lstm_658/lstm_cell_658/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_658/lstm_cell_658/Sigmoid_2Sigmoid%lstm_658/lstm_cell_658/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_658/lstm_cell_658/Relu_1Relu lstm_658/lstm_cell_658/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_658/lstm_cell_658/mul_2Mul$lstm_658/lstm_cell_658/Sigmoid_2:y:0+lstm_658/lstm_cell_658/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_658/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_658/TensorArrayV2_1TensorListReserve/lstm_658/TensorArrayV2_1/element_shape:output:0!lstm_658/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_658/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_658/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_658/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_658/whileWhile$lstm_658/while/loop_counter:output:0*lstm_658/while/maximum_iterations:output:0lstm_658/time:output:0!lstm_658/TensorArrayV2_1:handle:0lstm_658/zeros:output:0lstm_658/zeros_1:output:0!lstm_658/strided_slice_1:output:0@lstm_658/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_658_lstm_cell_658_matmul_readvariableop_resource7lstm_658_lstm_cell_658_matmul_1_readvariableop_resource6lstm_658_lstm_cell_658_biasadd_readvariableop_resource*
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
lstm_658_while_body_4189420*'
condR
lstm_658_while_cond_4189419*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_658/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_658/TensorArrayV2Stack/TensorListStackTensorListStacklstm_658/while:output:3Blstm_658/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_658/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_658/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_658/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_658/strided_slice_3StridedSlice4lstm_658/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_658/strided_slice_3/stack:output:0)lstm_658/strided_slice_3/stack_1:output:0)lstm_658/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_658/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_658/transpose_1	Transpose4lstm_658/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_658/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_658/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_659/ShapeShapelstm_658/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_659/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_659/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_659/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_659/strided_sliceStridedSlicelstm_659/Shape:output:0%lstm_659/strided_slice/stack:output:0'lstm_659/strided_slice/stack_1:output:0'lstm_659/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_659/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_659/zeros/packedPacklstm_659/strided_slice:output:0 lstm_659/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_659/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_659/zerosFilllstm_659/zeros/packed:output:0lstm_659/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_659/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_659/zeros_1/packedPacklstm_659/strided_slice:output:0"lstm_659/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_659/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_659/zeros_1Fill lstm_659/zeros_1/packed:output:0lstm_659/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_659/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_659/transpose	Transposelstm_658/transpose_1:y:0 lstm_659/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_659/Shape_1Shapelstm_659/transpose:y:0*
T0*
_output_shapes
:h
lstm_659/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_659/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_659/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_659/strided_slice_1StridedSlicelstm_659/Shape_1:output:0'lstm_659/strided_slice_1/stack:output:0)lstm_659/strided_slice_1/stack_1:output:0)lstm_659/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_659/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_659/TensorArrayV2TensorListReserve-lstm_659/TensorArrayV2/element_shape:output:0!lstm_659/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_659/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_659/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_659/transpose:y:0Glstm_659/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_659/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_659/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_659/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_659/strided_slice_2StridedSlicelstm_659/transpose:y:0'lstm_659/strided_slice_2/stack:output:0)lstm_659/strided_slice_2/stack_1:output:0)lstm_659/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_659/lstm_cell_659/MatMul/ReadVariableOpReadVariableOp5lstm_659_lstm_cell_659_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_659/lstm_cell_659/MatMulMatMul!lstm_659/strided_slice_2:output:04lstm_659/lstm_cell_659/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_659/lstm_cell_659/MatMul_1/ReadVariableOpReadVariableOp7lstm_659_lstm_cell_659_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_659/lstm_cell_659/MatMul_1MatMullstm_659/zeros:output:06lstm_659/lstm_cell_659/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_659/lstm_cell_659/addAddV2'lstm_659/lstm_cell_659/MatMul:product:0)lstm_659/lstm_cell_659/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_659/lstm_cell_659/BiasAdd/ReadVariableOpReadVariableOp6lstm_659_lstm_cell_659_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_659/lstm_cell_659/BiasAddBiasAddlstm_659/lstm_cell_659/add:z:05lstm_659/lstm_cell_659/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_659/lstm_cell_659/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_659/lstm_cell_659/splitSplit/lstm_659/lstm_cell_659/split/split_dim:output:0'lstm_659/lstm_cell_659/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_659/lstm_cell_659/SigmoidSigmoid%lstm_659/lstm_cell_659/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_659/lstm_cell_659/Sigmoid_1Sigmoid%lstm_659/lstm_cell_659/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_659/lstm_cell_659/mulMul$lstm_659/lstm_cell_659/Sigmoid_1:y:0lstm_659/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_659/lstm_cell_659/ReluRelu%lstm_659/lstm_cell_659/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_659/lstm_cell_659/mul_1Mul"lstm_659/lstm_cell_659/Sigmoid:y:0)lstm_659/lstm_cell_659/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_659/lstm_cell_659/add_1AddV2lstm_659/lstm_cell_659/mul:z:0 lstm_659/lstm_cell_659/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_659/lstm_cell_659/Sigmoid_2Sigmoid%lstm_659/lstm_cell_659/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_659/lstm_cell_659/Relu_1Relu lstm_659/lstm_cell_659/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_659/lstm_cell_659/mul_2Mul$lstm_659/lstm_cell_659/Sigmoid_2:y:0+lstm_659/lstm_cell_659/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_659/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_659/TensorArrayV2_1TensorListReserve/lstm_659/TensorArrayV2_1/element_shape:output:0!lstm_659/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_659/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_659/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_659/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_659/whileWhile$lstm_659/while/loop_counter:output:0*lstm_659/while/maximum_iterations:output:0lstm_659/time:output:0!lstm_659/TensorArrayV2_1:handle:0lstm_659/zeros:output:0lstm_659/zeros_1:output:0!lstm_659/strided_slice_1:output:0@lstm_659/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_659_lstm_cell_659_matmul_readvariableop_resource7lstm_659_lstm_cell_659_matmul_1_readvariableop_resource6lstm_659_lstm_cell_659_biasadd_readvariableop_resource*
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
lstm_659_while_body_4189559*'
condR
lstm_659_while_cond_4189558*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_659/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_659/TensorArrayV2Stack/TensorListStackTensorListStacklstm_659/while:output:3Blstm_659/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_659/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_659/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_659/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_659/strided_slice_3StridedSlice4lstm_659/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_659/strided_slice_3/stack:output:0)lstm_659/strided_slice_3/stack_1:output:0)lstm_659/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_659/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_659/transpose_1	Transpose4lstm_659/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_659/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_659/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_219/MatMul/ReadVariableOpReadVariableOp(dense_219_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_219/MatMulMatMul!lstm_659/strided_slice_3:output:0'dense_219/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_219/BiasAdd/ReadVariableOpReadVariableOp)dense_219_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_219/BiasAddBiasAdddense_219/MatMul:product:0(dense_219/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_219/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_219/BiasAdd/ReadVariableOp ^dense_219/MatMul/ReadVariableOp.^lstm_657/lstm_cell_657/BiasAdd/ReadVariableOp-^lstm_657/lstm_cell_657/MatMul/ReadVariableOp/^lstm_657/lstm_cell_657/MatMul_1/ReadVariableOp^lstm_657/while.^lstm_658/lstm_cell_658/BiasAdd/ReadVariableOp-^lstm_658/lstm_cell_658/MatMul/ReadVariableOp/^lstm_658/lstm_cell_658/MatMul_1/ReadVariableOp^lstm_658/while.^lstm_659/lstm_cell_659/BiasAdd/ReadVariableOp-^lstm_659/lstm_cell_659/MatMul/ReadVariableOp/^lstm_659/lstm_cell_659/MatMul_1/ReadVariableOp^lstm_659/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_219/BiasAdd/ReadVariableOp dense_219/BiasAdd/ReadVariableOp2B
dense_219/MatMul/ReadVariableOpdense_219/MatMul/ReadVariableOp2^
-lstm_657/lstm_cell_657/BiasAdd/ReadVariableOp-lstm_657/lstm_cell_657/BiasAdd/ReadVariableOp2\
,lstm_657/lstm_cell_657/MatMul/ReadVariableOp,lstm_657/lstm_cell_657/MatMul/ReadVariableOp2`
.lstm_657/lstm_cell_657/MatMul_1/ReadVariableOp.lstm_657/lstm_cell_657/MatMul_1/ReadVariableOp2 
lstm_657/whilelstm_657/while2^
-lstm_658/lstm_cell_658/BiasAdd/ReadVariableOp-lstm_658/lstm_cell_658/BiasAdd/ReadVariableOp2\
,lstm_658/lstm_cell_658/MatMul/ReadVariableOp,lstm_658/lstm_cell_658/MatMul/ReadVariableOp2`
.lstm_658/lstm_cell_658/MatMul_1/ReadVariableOp.lstm_658/lstm_cell_658/MatMul_1/ReadVariableOp2 
lstm_658/whilelstm_658/while2^
-lstm_659/lstm_cell_659/BiasAdd/ReadVariableOp-lstm_659/lstm_cell_659/BiasAdd/ReadVariableOp2\
,lstm_659/lstm_cell_659/MatMul/ReadVariableOp,lstm_659/lstm_cell_659/MatMul/ReadVariableOp2`
.lstm_659/lstm_cell_659/MatMul_1/ReadVariableOp.lstm_659/lstm_cell_659/MatMul_1/ReadVariableOp2 
lstm_659/whilelstm_659/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?J
?
E__inference_lstm_657_layer_call_and_return_conditional_losses_4190549

inputs?
,lstm_cell_657_matmul_readvariableop_resource:	?A
.lstm_cell_657_matmul_1_readvariableop_resource:	d?<
-lstm_cell_657_biasadd_readvariableop_resource:	?
identity??$lstm_cell_657/BiasAdd/ReadVariableOp?#lstm_cell_657/MatMul/ReadVariableOp?%lstm_cell_657/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_657/MatMul/ReadVariableOpReadVariableOp,lstm_cell_657_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_657/MatMulMatMulstrided_slice_2:output:0+lstm_cell_657/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_657/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_657_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_657/MatMul_1MatMulzeros:output:0-lstm_cell_657/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_657/addAddV2lstm_cell_657/MatMul:product:0 lstm_cell_657/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_657/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_657_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_657/BiasAddBiasAddlstm_cell_657/add:z:0,lstm_cell_657/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_657/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_657/splitSplit&lstm_cell_657/split/split_dim:output:0lstm_cell_657/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_657/SigmoidSigmoidlstm_cell_657/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_657/Sigmoid_1Sigmoidlstm_cell_657/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_657/mulMullstm_cell_657/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_657/ReluRelulstm_cell_657/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_657/mul_1Mullstm_cell_657/Sigmoid:y:0 lstm_cell_657/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_657/add_1AddV2lstm_cell_657/mul:z:0lstm_cell_657/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_657/Sigmoid_2Sigmoidlstm_cell_657/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_657/Relu_1Relulstm_cell_657/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_657/mul_2Mullstm_cell_657/Sigmoid_2:y:0"lstm_cell_657/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_657_matmul_readvariableop_resource.lstm_cell_657_matmul_1_readvariableop_resource-lstm_cell_657_biasadd_readvariableop_resource*
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
while_body_4190465*
condR
while_cond_4190464*K
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
NoOpNoOp%^lstm_cell_657/BiasAdd/ReadVariableOp$^lstm_cell_657/MatMul/ReadVariableOp&^lstm_cell_657/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_657/BiasAdd/ReadVariableOp$lstm_cell_657/BiasAdd/ReadVariableOp2J
#lstm_cell_657/MatMul/ReadVariableOp#lstm_cell_657/MatMul/ReadVariableOp2N
%lstm_cell_657/MatMul_1/ReadVariableOp%lstm_cell_657/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
??
?
K__inference_sequential_219_layer_call_and_return_conditional_losses_4190076

inputsH
5lstm_657_lstm_cell_657_matmul_readvariableop_resource:	?J
7lstm_657_lstm_cell_657_matmul_1_readvariableop_resource:	d?E
6lstm_657_lstm_cell_657_biasadd_readvariableop_resource:	?H
5lstm_658_lstm_cell_658_matmul_readvariableop_resource:	d?J
7lstm_658_lstm_cell_658_matmul_1_readvariableop_resource:	2?E
6lstm_658_lstm_cell_658_biasadd_readvariableop_resource:	?G
5lstm_659_lstm_cell_659_matmul_readvariableop_resource:2(I
7lstm_659_lstm_cell_659_matmul_1_readvariableop_resource:
(D
6lstm_659_lstm_cell_659_biasadd_readvariableop_resource:(:
(dense_219_matmul_readvariableop_resource:
7
)dense_219_biasadd_readvariableop_resource:
identity?? dense_219/BiasAdd/ReadVariableOp?dense_219/MatMul/ReadVariableOp?-lstm_657/lstm_cell_657/BiasAdd/ReadVariableOp?,lstm_657/lstm_cell_657/MatMul/ReadVariableOp?.lstm_657/lstm_cell_657/MatMul_1/ReadVariableOp?lstm_657/while?-lstm_658/lstm_cell_658/BiasAdd/ReadVariableOp?,lstm_658/lstm_cell_658/MatMul/ReadVariableOp?.lstm_658/lstm_cell_658/MatMul_1/ReadVariableOp?lstm_658/while?-lstm_659/lstm_cell_659/BiasAdd/ReadVariableOp?,lstm_659/lstm_cell_659/MatMul/ReadVariableOp?.lstm_659/lstm_cell_659/MatMul_1/ReadVariableOp?lstm_659/whileD
lstm_657/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_657/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_657/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_657/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_657/strided_sliceStridedSlicelstm_657/Shape:output:0%lstm_657/strided_slice/stack:output:0'lstm_657/strided_slice/stack_1:output:0'lstm_657/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_657/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_657/zeros/packedPacklstm_657/strided_slice:output:0 lstm_657/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_657/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_657/zerosFilllstm_657/zeros/packed:output:0lstm_657/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_657/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_657/zeros_1/packedPacklstm_657/strided_slice:output:0"lstm_657/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_657/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_657/zeros_1Fill lstm_657/zeros_1/packed:output:0lstm_657/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_657/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_657/transpose	Transposeinputs lstm_657/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_657/Shape_1Shapelstm_657/transpose:y:0*
T0*
_output_shapes
:h
lstm_657/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_657/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_657/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_657/strided_slice_1StridedSlicelstm_657/Shape_1:output:0'lstm_657/strided_slice_1/stack:output:0)lstm_657/strided_slice_1/stack_1:output:0)lstm_657/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_657/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_657/TensorArrayV2TensorListReserve-lstm_657/TensorArrayV2/element_shape:output:0!lstm_657/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_657/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_657/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_657/transpose:y:0Glstm_657/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_657/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_657/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_657/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_657/strided_slice_2StridedSlicelstm_657/transpose:y:0'lstm_657/strided_slice_2/stack:output:0)lstm_657/strided_slice_2/stack_1:output:0)lstm_657/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_657/lstm_cell_657/MatMul/ReadVariableOpReadVariableOp5lstm_657_lstm_cell_657_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_657/lstm_cell_657/MatMulMatMul!lstm_657/strided_slice_2:output:04lstm_657/lstm_cell_657/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_657/lstm_cell_657/MatMul_1/ReadVariableOpReadVariableOp7lstm_657_lstm_cell_657_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_657/lstm_cell_657/MatMul_1MatMullstm_657/zeros:output:06lstm_657/lstm_cell_657/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_657/lstm_cell_657/addAddV2'lstm_657/lstm_cell_657/MatMul:product:0)lstm_657/lstm_cell_657/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_657/lstm_cell_657/BiasAdd/ReadVariableOpReadVariableOp6lstm_657_lstm_cell_657_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_657/lstm_cell_657/BiasAddBiasAddlstm_657/lstm_cell_657/add:z:05lstm_657/lstm_cell_657/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_657/lstm_cell_657/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_657/lstm_cell_657/splitSplit/lstm_657/lstm_cell_657/split/split_dim:output:0'lstm_657/lstm_cell_657/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_657/lstm_cell_657/SigmoidSigmoid%lstm_657/lstm_cell_657/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_657/lstm_cell_657/Sigmoid_1Sigmoid%lstm_657/lstm_cell_657/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_657/lstm_cell_657/mulMul$lstm_657/lstm_cell_657/Sigmoid_1:y:0lstm_657/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_657/lstm_cell_657/ReluRelu%lstm_657/lstm_cell_657/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_657/lstm_cell_657/mul_1Mul"lstm_657/lstm_cell_657/Sigmoid:y:0)lstm_657/lstm_cell_657/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_657/lstm_cell_657/add_1AddV2lstm_657/lstm_cell_657/mul:z:0 lstm_657/lstm_cell_657/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_657/lstm_cell_657/Sigmoid_2Sigmoid%lstm_657/lstm_cell_657/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_657/lstm_cell_657/Relu_1Relu lstm_657/lstm_cell_657/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_657/lstm_cell_657/mul_2Mul$lstm_657/lstm_cell_657/Sigmoid_2:y:0+lstm_657/lstm_cell_657/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_657/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_657/TensorArrayV2_1TensorListReserve/lstm_657/TensorArrayV2_1/element_shape:output:0!lstm_657/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_657/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_657/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_657/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_657/whileWhile$lstm_657/while/loop_counter:output:0*lstm_657/while/maximum_iterations:output:0lstm_657/time:output:0!lstm_657/TensorArrayV2_1:handle:0lstm_657/zeros:output:0lstm_657/zeros_1:output:0!lstm_657/strided_slice_1:output:0@lstm_657/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_657_lstm_cell_657_matmul_readvariableop_resource7lstm_657_lstm_cell_657_matmul_1_readvariableop_resource6lstm_657_lstm_cell_657_biasadd_readvariableop_resource*
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
lstm_657_while_body_4189708*'
condR
lstm_657_while_cond_4189707*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_657/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_657/TensorArrayV2Stack/TensorListStackTensorListStacklstm_657/while:output:3Blstm_657/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_657/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_657/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_657/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_657/strided_slice_3StridedSlice4lstm_657/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_657/strided_slice_3/stack:output:0)lstm_657/strided_slice_3/stack_1:output:0)lstm_657/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_657/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_657/transpose_1	Transpose4lstm_657/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_657/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_657/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_658/ShapeShapelstm_657/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_658/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_658/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_658/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_658/strided_sliceStridedSlicelstm_658/Shape:output:0%lstm_658/strided_slice/stack:output:0'lstm_658/strided_slice/stack_1:output:0'lstm_658/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_658/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_658/zeros/packedPacklstm_658/strided_slice:output:0 lstm_658/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_658/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_658/zerosFilllstm_658/zeros/packed:output:0lstm_658/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_658/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_658/zeros_1/packedPacklstm_658/strided_slice:output:0"lstm_658/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_658/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_658/zeros_1Fill lstm_658/zeros_1/packed:output:0lstm_658/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_658/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_658/transpose	Transposelstm_657/transpose_1:y:0 lstm_658/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_658/Shape_1Shapelstm_658/transpose:y:0*
T0*
_output_shapes
:h
lstm_658/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_658/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_658/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_658/strided_slice_1StridedSlicelstm_658/Shape_1:output:0'lstm_658/strided_slice_1/stack:output:0)lstm_658/strided_slice_1/stack_1:output:0)lstm_658/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_658/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_658/TensorArrayV2TensorListReserve-lstm_658/TensorArrayV2/element_shape:output:0!lstm_658/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_658/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_658/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_658/transpose:y:0Glstm_658/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_658/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_658/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_658/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_658/strided_slice_2StridedSlicelstm_658/transpose:y:0'lstm_658/strided_slice_2/stack:output:0)lstm_658/strided_slice_2/stack_1:output:0)lstm_658/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_658/lstm_cell_658/MatMul/ReadVariableOpReadVariableOp5lstm_658_lstm_cell_658_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_658/lstm_cell_658/MatMulMatMul!lstm_658/strided_slice_2:output:04lstm_658/lstm_cell_658/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_658/lstm_cell_658/MatMul_1/ReadVariableOpReadVariableOp7lstm_658_lstm_cell_658_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_658/lstm_cell_658/MatMul_1MatMullstm_658/zeros:output:06lstm_658/lstm_cell_658/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_658/lstm_cell_658/addAddV2'lstm_658/lstm_cell_658/MatMul:product:0)lstm_658/lstm_cell_658/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_658/lstm_cell_658/BiasAdd/ReadVariableOpReadVariableOp6lstm_658_lstm_cell_658_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_658/lstm_cell_658/BiasAddBiasAddlstm_658/lstm_cell_658/add:z:05lstm_658/lstm_cell_658/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_658/lstm_cell_658/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_658/lstm_cell_658/splitSplit/lstm_658/lstm_cell_658/split/split_dim:output:0'lstm_658/lstm_cell_658/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_658/lstm_cell_658/SigmoidSigmoid%lstm_658/lstm_cell_658/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_658/lstm_cell_658/Sigmoid_1Sigmoid%lstm_658/lstm_cell_658/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_658/lstm_cell_658/mulMul$lstm_658/lstm_cell_658/Sigmoid_1:y:0lstm_658/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_658/lstm_cell_658/ReluRelu%lstm_658/lstm_cell_658/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_658/lstm_cell_658/mul_1Mul"lstm_658/lstm_cell_658/Sigmoid:y:0)lstm_658/lstm_cell_658/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_658/lstm_cell_658/add_1AddV2lstm_658/lstm_cell_658/mul:z:0 lstm_658/lstm_cell_658/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_658/lstm_cell_658/Sigmoid_2Sigmoid%lstm_658/lstm_cell_658/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_658/lstm_cell_658/Relu_1Relu lstm_658/lstm_cell_658/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_658/lstm_cell_658/mul_2Mul$lstm_658/lstm_cell_658/Sigmoid_2:y:0+lstm_658/lstm_cell_658/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_658/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_658/TensorArrayV2_1TensorListReserve/lstm_658/TensorArrayV2_1/element_shape:output:0!lstm_658/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_658/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_658/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_658/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_658/whileWhile$lstm_658/while/loop_counter:output:0*lstm_658/while/maximum_iterations:output:0lstm_658/time:output:0!lstm_658/TensorArrayV2_1:handle:0lstm_658/zeros:output:0lstm_658/zeros_1:output:0!lstm_658/strided_slice_1:output:0@lstm_658/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_658_lstm_cell_658_matmul_readvariableop_resource7lstm_658_lstm_cell_658_matmul_1_readvariableop_resource6lstm_658_lstm_cell_658_biasadd_readvariableop_resource*
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
lstm_658_while_body_4189847*'
condR
lstm_658_while_cond_4189846*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_658/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_658/TensorArrayV2Stack/TensorListStackTensorListStacklstm_658/while:output:3Blstm_658/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_658/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_658/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_658/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_658/strided_slice_3StridedSlice4lstm_658/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_658/strided_slice_3/stack:output:0)lstm_658/strided_slice_3/stack_1:output:0)lstm_658/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_658/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_658/transpose_1	Transpose4lstm_658/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_658/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_658/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_659/ShapeShapelstm_658/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_659/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_659/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_659/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_659/strided_sliceStridedSlicelstm_659/Shape:output:0%lstm_659/strided_slice/stack:output:0'lstm_659/strided_slice/stack_1:output:0'lstm_659/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_659/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_659/zeros/packedPacklstm_659/strided_slice:output:0 lstm_659/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_659/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_659/zerosFilllstm_659/zeros/packed:output:0lstm_659/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_659/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_659/zeros_1/packedPacklstm_659/strided_slice:output:0"lstm_659/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_659/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_659/zeros_1Fill lstm_659/zeros_1/packed:output:0lstm_659/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_659/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_659/transpose	Transposelstm_658/transpose_1:y:0 lstm_659/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_659/Shape_1Shapelstm_659/transpose:y:0*
T0*
_output_shapes
:h
lstm_659/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_659/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_659/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_659/strided_slice_1StridedSlicelstm_659/Shape_1:output:0'lstm_659/strided_slice_1/stack:output:0)lstm_659/strided_slice_1/stack_1:output:0)lstm_659/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_659/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_659/TensorArrayV2TensorListReserve-lstm_659/TensorArrayV2/element_shape:output:0!lstm_659/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_659/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_659/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_659/transpose:y:0Glstm_659/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_659/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_659/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_659/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_659/strided_slice_2StridedSlicelstm_659/transpose:y:0'lstm_659/strided_slice_2/stack:output:0)lstm_659/strided_slice_2/stack_1:output:0)lstm_659/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_659/lstm_cell_659/MatMul/ReadVariableOpReadVariableOp5lstm_659_lstm_cell_659_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_659/lstm_cell_659/MatMulMatMul!lstm_659/strided_slice_2:output:04lstm_659/lstm_cell_659/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_659/lstm_cell_659/MatMul_1/ReadVariableOpReadVariableOp7lstm_659_lstm_cell_659_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_659/lstm_cell_659/MatMul_1MatMullstm_659/zeros:output:06lstm_659/lstm_cell_659/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_659/lstm_cell_659/addAddV2'lstm_659/lstm_cell_659/MatMul:product:0)lstm_659/lstm_cell_659/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_659/lstm_cell_659/BiasAdd/ReadVariableOpReadVariableOp6lstm_659_lstm_cell_659_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_659/lstm_cell_659/BiasAddBiasAddlstm_659/lstm_cell_659/add:z:05lstm_659/lstm_cell_659/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_659/lstm_cell_659/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_659/lstm_cell_659/splitSplit/lstm_659/lstm_cell_659/split/split_dim:output:0'lstm_659/lstm_cell_659/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_659/lstm_cell_659/SigmoidSigmoid%lstm_659/lstm_cell_659/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_659/lstm_cell_659/Sigmoid_1Sigmoid%lstm_659/lstm_cell_659/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_659/lstm_cell_659/mulMul$lstm_659/lstm_cell_659/Sigmoid_1:y:0lstm_659/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_659/lstm_cell_659/ReluRelu%lstm_659/lstm_cell_659/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_659/lstm_cell_659/mul_1Mul"lstm_659/lstm_cell_659/Sigmoid:y:0)lstm_659/lstm_cell_659/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_659/lstm_cell_659/add_1AddV2lstm_659/lstm_cell_659/mul:z:0 lstm_659/lstm_cell_659/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_659/lstm_cell_659/Sigmoid_2Sigmoid%lstm_659/lstm_cell_659/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_659/lstm_cell_659/Relu_1Relu lstm_659/lstm_cell_659/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_659/lstm_cell_659/mul_2Mul$lstm_659/lstm_cell_659/Sigmoid_2:y:0+lstm_659/lstm_cell_659/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_659/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_659/TensorArrayV2_1TensorListReserve/lstm_659/TensorArrayV2_1/element_shape:output:0!lstm_659/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_659/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_659/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_659/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_659/whileWhile$lstm_659/while/loop_counter:output:0*lstm_659/while/maximum_iterations:output:0lstm_659/time:output:0!lstm_659/TensorArrayV2_1:handle:0lstm_659/zeros:output:0lstm_659/zeros_1:output:0!lstm_659/strided_slice_1:output:0@lstm_659/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_659_lstm_cell_659_matmul_readvariableop_resource7lstm_659_lstm_cell_659_matmul_1_readvariableop_resource6lstm_659_lstm_cell_659_biasadd_readvariableop_resource*
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
lstm_659_while_body_4189986*'
condR
lstm_659_while_cond_4189985*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_659/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_659/TensorArrayV2Stack/TensorListStackTensorListStacklstm_659/while:output:3Blstm_659/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_659/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_659/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_659/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_659/strided_slice_3StridedSlice4lstm_659/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_659/strided_slice_3/stack:output:0)lstm_659/strided_slice_3/stack_1:output:0)lstm_659/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_659/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_659/transpose_1	Transpose4lstm_659/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_659/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_659/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_219/MatMul/ReadVariableOpReadVariableOp(dense_219_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_219/MatMulMatMul!lstm_659/strided_slice_3:output:0'dense_219/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_219/BiasAdd/ReadVariableOpReadVariableOp)dense_219_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_219/BiasAddBiasAdddense_219/MatMul:product:0(dense_219/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_219/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_219/BiasAdd/ReadVariableOp ^dense_219/MatMul/ReadVariableOp.^lstm_657/lstm_cell_657/BiasAdd/ReadVariableOp-^lstm_657/lstm_cell_657/MatMul/ReadVariableOp/^lstm_657/lstm_cell_657/MatMul_1/ReadVariableOp^lstm_657/while.^lstm_658/lstm_cell_658/BiasAdd/ReadVariableOp-^lstm_658/lstm_cell_658/MatMul/ReadVariableOp/^lstm_658/lstm_cell_658/MatMul_1/ReadVariableOp^lstm_658/while.^lstm_659/lstm_cell_659/BiasAdd/ReadVariableOp-^lstm_659/lstm_cell_659/MatMul/ReadVariableOp/^lstm_659/lstm_cell_659/MatMul_1/ReadVariableOp^lstm_659/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_219/BiasAdd/ReadVariableOp dense_219/BiasAdd/ReadVariableOp2B
dense_219/MatMul/ReadVariableOpdense_219/MatMul/ReadVariableOp2^
-lstm_657/lstm_cell_657/BiasAdd/ReadVariableOp-lstm_657/lstm_cell_657/BiasAdd/ReadVariableOp2\
,lstm_657/lstm_cell_657/MatMul/ReadVariableOp,lstm_657/lstm_cell_657/MatMul/ReadVariableOp2`
.lstm_657/lstm_cell_657/MatMul_1/ReadVariableOp.lstm_657/lstm_cell_657/MatMul_1/ReadVariableOp2 
lstm_657/whilelstm_657/while2^
-lstm_658/lstm_cell_658/BiasAdd/ReadVariableOp-lstm_658/lstm_cell_658/BiasAdd/ReadVariableOp2\
,lstm_658/lstm_cell_658/MatMul/ReadVariableOp,lstm_658/lstm_cell_658/MatMul/ReadVariableOp2`
.lstm_658/lstm_cell_658/MatMul_1/ReadVariableOp.lstm_658/lstm_cell_658/MatMul_1/ReadVariableOp2 
lstm_658/whilelstm_658/while2^
-lstm_659/lstm_cell_659/BiasAdd/ReadVariableOp-lstm_659/lstm_cell_659/BiasAdd/ReadVariableOp2\
,lstm_659/lstm_cell_659/MatMul/ReadVariableOp,lstm_659/lstm_cell_659/MatMul/ReadVariableOp2`
.lstm_659/lstm_cell_659/MatMul_1/ReadVariableOp.lstm_659/lstm_cell_659/MatMul_1/ReadVariableOp2 
lstm_659/whilelstm_659/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?C
?

lstm_657_while_body_4189281.
*lstm_657_while_lstm_657_while_loop_counter4
0lstm_657_while_lstm_657_while_maximum_iterations
lstm_657_while_placeholder 
lstm_657_while_placeholder_1 
lstm_657_while_placeholder_2 
lstm_657_while_placeholder_3-
)lstm_657_while_lstm_657_strided_slice_1_0i
elstm_657_while_tensorarrayv2read_tensorlistgetitem_lstm_657_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_657_while_lstm_cell_657_matmul_readvariableop_resource_0:	?R
?lstm_657_while_lstm_cell_657_matmul_1_readvariableop_resource_0:	d?M
>lstm_657_while_lstm_cell_657_biasadd_readvariableop_resource_0:	?
lstm_657_while_identity
lstm_657_while_identity_1
lstm_657_while_identity_2
lstm_657_while_identity_3
lstm_657_while_identity_4
lstm_657_while_identity_5+
'lstm_657_while_lstm_657_strided_slice_1g
clstm_657_while_tensorarrayv2read_tensorlistgetitem_lstm_657_tensorarrayunstack_tensorlistfromtensorN
;lstm_657_while_lstm_cell_657_matmul_readvariableop_resource:	?P
=lstm_657_while_lstm_cell_657_matmul_1_readvariableop_resource:	d?K
<lstm_657_while_lstm_cell_657_biasadd_readvariableop_resource:	???3lstm_657/while/lstm_cell_657/BiasAdd/ReadVariableOp?2lstm_657/while/lstm_cell_657/MatMul/ReadVariableOp?4lstm_657/while/lstm_cell_657/MatMul_1/ReadVariableOp?
@lstm_657/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_657/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_657_while_tensorarrayv2read_tensorlistgetitem_lstm_657_tensorarrayunstack_tensorlistfromtensor_0lstm_657_while_placeholderIlstm_657/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_657/while/lstm_cell_657/MatMul/ReadVariableOpReadVariableOp=lstm_657_while_lstm_cell_657_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_657/while/lstm_cell_657/MatMulMatMul9lstm_657/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_657/while/lstm_cell_657/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_657/while/lstm_cell_657/MatMul_1/ReadVariableOpReadVariableOp?lstm_657_while_lstm_cell_657_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_657/while/lstm_cell_657/MatMul_1MatMullstm_657_while_placeholder_2<lstm_657/while/lstm_cell_657/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_657/while/lstm_cell_657/addAddV2-lstm_657/while/lstm_cell_657/MatMul:product:0/lstm_657/while/lstm_cell_657/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_657/while/lstm_cell_657/BiasAdd/ReadVariableOpReadVariableOp>lstm_657_while_lstm_cell_657_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_657/while/lstm_cell_657/BiasAddBiasAdd$lstm_657/while/lstm_cell_657/add:z:0;lstm_657/while/lstm_cell_657/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_657/while/lstm_cell_657/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_657/while/lstm_cell_657/splitSplit5lstm_657/while/lstm_cell_657/split/split_dim:output:0-lstm_657/while/lstm_cell_657/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_657/while/lstm_cell_657/SigmoidSigmoid+lstm_657/while/lstm_cell_657/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_657/while/lstm_cell_657/Sigmoid_1Sigmoid+lstm_657/while/lstm_cell_657/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_657/while/lstm_cell_657/mulMul*lstm_657/while/lstm_cell_657/Sigmoid_1:y:0lstm_657_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_657/while/lstm_cell_657/ReluRelu+lstm_657/while/lstm_cell_657/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_657/while/lstm_cell_657/mul_1Mul(lstm_657/while/lstm_cell_657/Sigmoid:y:0/lstm_657/while/lstm_cell_657/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_657/while/lstm_cell_657/add_1AddV2$lstm_657/while/lstm_cell_657/mul:z:0&lstm_657/while/lstm_cell_657/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_657/while/lstm_cell_657/Sigmoid_2Sigmoid+lstm_657/while/lstm_cell_657/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_657/while/lstm_cell_657/Relu_1Relu&lstm_657/while/lstm_cell_657/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_657/while/lstm_cell_657/mul_2Mul*lstm_657/while/lstm_cell_657/Sigmoid_2:y:01lstm_657/while/lstm_cell_657/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_657/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_657_while_placeholder_1lstm_657_while_placeholder&lstm_657/while/lstm_cell_657/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_657/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_657/while/addAddV2lstm_657_while_placeholderlstm_657/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_657/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_657/while/add_1AddV2*lstm_657_while_lstm_657_while_loop_counterlstm_657/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_657/while/IdentityIdentitylstm_657/while/add_1:z:0^lstm_657/while/NoOp*
T0*
_output_shapes
: ?
lstm_657/while/Identity_1Identity0lstm_657_while_lstm_657_while_maximum_iterations^lstm_657/while/NoOp*
T0*
_output_shapes
: t
lstm_657/while/Identity_2Identitylstm_657/while/add:z:0^lstm_657/while/NoOp*
T0*
_output_shapes
: ?
lstm_657/while/Identity_3IdentityClstm_657/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_657/while/NoOp*
T0*
_output_shapes
: ?
lstm_657/while/Identity_4Identity&lstm_657/while/lstm_cell_657/mul_2:z:0^lstm_657/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_657/while/Identity_5Identity&lstm_657/while/lstm_cell_657/add_1:z:0^lstm_657/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_657/while/NoOpNoOp4^lstm_657/while/lstm_cell_657/BiasAdd/ReadVariableOp3^lstm_657/while/lstm_cell_657/MatMul/ReadVariableOp5^lstm_657/while/lstm_cell_657/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_657_while_identity lstm_657/while/Identity:output:0"?
lstm_657_while_identity_1"lstm_657/while/Identity_1:output:0"?
lstm_657_while_identity_2"lstm_657/while/Identity_2:output:0"?
lstm_657_while_identity_3"lstm_657/while/Identity_3:output:0"?
lstm_657_while_identity_4"lstm_657/while/Identity_4:output:0"?
lstm_657_while_identity_5"lstm_657/while/Identity_5:output:0"T
'lstm_657_while_lstm_657_strided_slice_1)lstm_657_while_lstm_657_strided_slice_1_0"~
<lstm_657_while_lstm_cell_657_biasadd_readvariableop_resource>lstm_657_while_lstm_cell_657_biasadd_readvariableop_resource_0"?
=lstm_657_while_lstm_cell_657_matmul_1_readvariableop_resource?lstm_657_while_lstm_cell_657_matmul_1_readvariableop_resource_0"|
;lstm_657_while_lstm_cell_657_matmul_readvariableop_resource=lstm_657_while_lstm_cell_657_matmul_readvariableop_resource_0"?
clstm_657_while_tensorarrayv2read_tensorlistgetitem_lstm_657_tensorarrayunstack_tensorlistfromtensorelstm_657_while_tensorarrayv2read_tensorlistgetitem_lstm_657_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_657/while/lstm_cell_657/BiasAdd/ReadVariableOp3lstm_657/while/lstm_cell_657/BiasAdd/ReadVariableOp2h
2lstm_657/while/lstm_cell_657/MatMul/ReadVariableOp2lstm_657/while/lstm_cell_657/MatMul/ReadVariableOp2l
4lstm_657/while/lstm_cell_657/MatMul_1/ReadVariableOp4lstm_657/while/lstm_cell_657/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_4186989
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_657_4187013_0:	?0
while_lstm_cell_657_4187015_0:	d?,
while_lstm_cell_657_4187017_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_657_4187013:	?.
while_lstm_cell_657_4187015:	d?*
while_lstm_cell_657_4187017:	???+while/lstm_cell_657/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_657/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_657_4187013_0while_lstm_cell_657_4187015_0while_lstm_cell_657_4187017_0*
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
J__inference_lstm_cell_657_layer_call_and_return_conditional_losses_4186975?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_657/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_657/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_657/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_657/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_657_4187013while_lstm_cell_657_4187013_0"<
while_lstm_cell_657_4187015while_lstm_cell_657_4187015_0"<
while_lstm_cell_657_4187017while_lstm_cell_657_4187017_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_657/StatefulPartitionedCall+while/lstm_cell_657/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_658_layer_call_and_return_conditional_losses_4191022
inputs_0?
,lstm_cell_658_matmul_readvariableop_resource:	d?A
.lstm_cell_658_matmul_1_readvariableop_resource:	2?<
-lstm_cell_658_biasadd_readvariableop_resource:	?
identity??$lstm_cell_658/BiasAdd/ReadVariableOp?#lstm_cell_658/MatMul/ReadVariableOp?%lstm_cell_658/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_658/MatMul/ReadVariableOpReadVariableOp,lstm_cell_658_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_658/MatMulMatMulstrided_slice_2:output:0+lstm_cell_658/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_658/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_658_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_658/MatMul_1MatMulzeros:output:0-lstm_cell_658/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_658/addAddV2lstm_cell_658/MatMul:product:0 lstm_cell_658/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_658/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_658_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_658/BiasAddBiasAddlstm_cell_658/add:z:0,lstm_cell_658/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_658/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_658/splitSplit&lstm_cell_658/split/split_dim:output:0lstm_cell_658/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_658/SigmoidSigmoidlstm_cell_658/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_658/Sigmoid_1Sigmoidlstm_cell_658/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_658/mulMullstm_cell_658/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_658/ReluRelulstm_cell_658/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_658/mul_1Mullstm_cell_658/Sigmoid:y:0 lstm_cell_658/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_658/add_1AddV2lstm_cell_658/mul:z:0lstm_cell_658/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_658/Sigmoid_2Sigmoidlstm_cell_658/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_658/Relu_1Relulstm_cell_658/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_658/mul_2Mullstm_cell_658/Sigmoid_2:y:0"lstm_cell_658/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_658_matmul_readvariableop_resource.lstm_cell_658_matmul_1_readvariableop_resource-lstm_cell_658_biasadd_readvariableop_resource*
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
while_body_4190938*
condR
while_cond_4190937*K
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
NoOpNoOp%^lstm_cell_658/BiasAdd/ReadVariableOp$^lstm_cell_658/MatMul/ReadVariableOp&^lstm_cell_658/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_658/BiasAdd/ReadVariableOp$lstm_cell_658/BiasAdd/ReadVariableOp2J
#lstm_cell_658/MatMul/ReadVariableOp#lstm_cell_658/MatMul/ReadVariableOp2N
%lstm_cell_658/MatMul_1/ReadVariableOp%lstm_cell_658/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?
?
J__inference_lstm_cell_659_layer_call_and_return_conditional_losses_4187821

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
while_body_4188869
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_657_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_657_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_657_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_657_matmul_readvariableop_resource:	?G
4while_lstm_cell_657_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_657_biasadd_readvariableop_resource:	???*while/lstm_cell_657/BiasAdd/ReadVariableOp?)while/lstm_cell_657/MatMul/ReadVariableOp?+while/lstm_cell_657/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_657/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_657_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_657/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_657/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_657/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_657_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_657/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_657/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_657/addAddV2$while/lstm_cell_657/MatMul:product:0&while/lstm_cell_657/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_657/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_657_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_657/BiasAddBiasAddwhile/lstm_cell_657/add:z:02while/lstm_cell_657/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_657/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_657/splitSplit,while/lstm_cell_657/split/split_dim:output:0$while/lstm_cell_657/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_657/SigmoidSigmoid"while/lstm_cell_657/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_657/Sigmoid_1Sigmoid"while/lstm_cell_657/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_657/mulMul!while/lstm_cell_657/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_657/ReluRelu"while/lstm_cell_657/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_657/mul_1Mulwhile/lstm_cell_657/Sigmoid:y:0&while/lstm_cell_657/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_657/add_1AddV2while/lstm_cell_657/mul:z:0while/lstm_cell_657/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_657/Sigmoid_2Sigmoid"while/lstm_cell_657/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_657/Relu_1Reluwhile/lstm_cell_657/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_657/mul_2Mul!while/lstm_cell_657/Sigmoid_2:y:0(while/lstm_cell_657/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_657/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_657/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_657/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_657/BiasAdd/ReadVariableOp*^while/lstm_cell_657/MatMul/ReadVariableOp,^while/lstm_cell_657/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_657_biasadd_readvariableop_resource5while_lstm_cell_657_biasadd_readvariableop_resource_0"n
4while_lstm_cell_657_matmul_1_readvariableop_resource6while_lstm_cell_657_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_657_matmul_readvariableop_resource4while_lstm_cell_657_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_657/BiasAdd/ReadVariableOp*while/lstm_cell_657/BiasAdd/ReadVariableOp2V
)while/lstm_cell_657/MatMul/ReadVariableOp)while/lstm_cell_657/MatMul/ReadVariableOp2Z
+while/lstm_cell_657/MatMul_1/ReadVariableOp+while/lstm_cell_657/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_4188703
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4188703___redundant_placeholder05
1while_while_cond_4188703___redundant_placeholder15
1while_while_cond_4188703___redundant_placeholder25
1while_while_cond_4188703___redundant_placeholder3
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
while_cond_4191410
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4191410___redundant_placeholder05
1while_while_cond_4191410___redundant_placeholder15
1while_while_cond_4191410___redundant_placeholder25
1while_while_cond_4191410___redundant_placeholder3
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
E__inference_lstm_659_layer_call_and_return_conditional_losses_4191638
inputs_0>
,lstm_cell_659_matmul_readvariableop_resource:2(@
.lstm_cell_659_matmul_1_readvariableop_resource:
(;
-lstm_cell_659_biasadd_readvariableop_resource:(
identity??$lstm_cell_659/BiasAdd/ReadVariableOp?#lstm_cell_659/MatMul/ReadVariableOp?%lstm_cell_659/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_659/MatMul/ReadVariableOpReadVariableOp,lstm_cell_659_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_659/MatMulMatMulstrided_slice_2:output:0+lstm_cell_659/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_659/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_659_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_659/MatMul_1MatMulzeros:output:0-lstm_cell_659/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_659/addAddV2lstm_cell_659/MatMul:product:0 lstm_cell_659/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_659/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_659_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_659/BiasAddBiasAddlstm_cell_659/add:z:0,lstm_cell_659/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_659/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_659/splitSplit&lstm_cell_659/split/split_dim:output:0lstm_cell_659/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_659/SigmoidSigmoidlstm_cell_659/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_659/Sigmoid_1Sigmoidlstm_cell_659/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_659/mulMullstm_cell_659/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_659/ReluRelulstm_cell_659/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_659/mul_1Mullstm_cell_659/Sigmoid:y:0 lstm_cell_659/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_659/add_1AddV2lstm_cell_659/mul:z:0lstm_cell_659/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_659/Sigmoid_2Sigmoidlstm_cell_659/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_659/Relu_1Relulstm_cell_659/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_659/mul_2Mullstm_cell_659/Sigmoid_2:y:0"lstm_cell_659/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_659_matmul_readvariableop_resource.lstm_cell_659_matmul_1_readvariableop_resource-lstm_cell_659_biasadd_readvariableop_resource*
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
while_body_4191554*
condR
while_cond_4191553*K
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
NoOpNoOp%^lstm_cell_659/BiasAdd/ReadVariableOp$^lstm_cell_659/MatMul/ReadVariableOp&^lstm_cell_659/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_659/BiasAdd/ReadVariableOp$lstm_cell_659/BiasAdd/ReadVariableOp2J
#lstm_cell_659/MatMul/ReadVariableOp#lstm_cell_659/MatMul/ReadVariableOp2N
%lstm_cell_659/MatMul_1/ReadVariableOp%lstm_cell_659/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?

?
lstm_657_while_cond_4189280.
*lstm_657_while_lstm_657_while_loop_counter4
0lstm_657_while_lstm_657_while_maximum_iterations
lstm_657_while_placeholder 
lstm_657_while_placeholder_1 
lstm_657_while_placeholder_2 
lstm_657_while_placeholder_30
,lstm_657_while_less_lstm_657_strided_slice_1G
Clstm_657_while_lstm_657_while_cond_4189280___redundant_placeholder0G
Clstm_657_while_lstm_657_while_cond_4189280___redundant_placeholder1G
Clstm_657_while_lstm_657_while_cond_4189280___redundant_placeholder2G
Clstm_657_while_lstm_657_while_cond_4189280___redundant_placeholder3
lstm_657_while_identity
?
lstm_657/while/LessLesslstm_657_while_placeholder,lstm_657_while_less_lstm_657_strided_slice_1*
T0*
_output_shapes
: ]
lstm_657/while/IdentityIdentitylstm_657/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_657_while_identity lstm_657/while/Identity:output:0*(
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
*__inference_lstm_657_layer_call_fn_4190087
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
E__inference_lstm_657_layer_call_and_return_conditional_losses_4187058|
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
while_cond_4187179
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4187179___redundant_placeholder05
1while_while_cond_4187179___redundant_placeholder15
1while_while_cond_4187179___redundant_placeholder25
1while_while_cond_4187179___redundant_placeholder3
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
while_cond_4190937
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4190937___redundant_placeholder05
1while_while_cond_4190937___redundant_placeholder15
1while_while_cond_4190937___redundant_placeholder25
1while_while_cond_4190937___redundant_placeholder3
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
while_body_4187689
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_659_4187713_0:2(/
while_lstm_cell_659_4187715_0:
(+
while_lstm_cell_659_4187717_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_659_4187713:2(-
while_lstm_cell_659_4187715:
()
while_lstm_cell_659_4187717:(??+while/lstm_cell_659/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_659/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_659_4187713_0while_lstm_cell_659_4187715_0while_lstm_cell_659_4187717_0*
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
J__inference_lstm_cell_659_layer_call_and_return_conditional_losses_4187675?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_659/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_659/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_659/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_659/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_659_4187713while_lstm_cell_659_4187713_0"<
while_lstm_cell_659_4187715while_lstm_cell_659_4187715_0"<
while_lstm_cell_659_4187717while_lstm_cell_659_4187717_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_659/StatefulPartitionedCall+while/lstm_cell_659/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_body_4191224
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_658_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_658_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_658_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_658_matmul_readvariableop_resource:	d?G
4while_lstm_cell_658_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_658_biasadd_readvariableop_resource:	???*while/lstm_cell_658/BiasAdd/ReadVariableOp?)while/lstm_cell_658/MatMul/ReadVariableOp?+while/lstm_cell_658/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_658/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_658_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_658/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_658/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_658/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_658_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_658/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_658/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_658/addAddV2$while/lstm_cell_658/MatMul:product:0&while/lstm_cell_658/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_658/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_658_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_658/BiasAddBiasAddwhile/lstm_cell_658/add:z:02while/lstm_cell_658/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_658/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_658/splitSplit,while/lstm_cell_658/split/split_dim:output:0$while/lstm_cell_658/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_658/SigmoidSigmoid"while/lstm_cell_658/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_658/Sigmoid_1Sigmoid"while/lstm_cell_658/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_658/mulMul!while/lstm_cell_658/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_658/ReluRelu"while/lstm_cell_658/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_658/mul_1Mulwhile/lstm_cell_658/Sigmoid:y:0&while/lstm_cell_658/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_658/add_1AddV2while/lstm_cell_658/mul:z:0while/lstm_cell_658/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_658/Sigmoid_2Sigmoid"while/lstm_cell_658/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_658/Relu_1Reluwhile/lstm_cell_658/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_658/mul_2Mul!while/lstm_cell_658/Sigmoid_2:y:0(while/lstm_cell_658/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_658/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_658/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_658/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_658/BiasAdd/ReadVariableOp*^while/lstm_cell_658/MatMul/ReadVariableOp,^while/lstm_cell_658/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_658_biasadd_readvariableop_resource5while_lstm_cell_658_biasadd_readvariableop_resource_0"n
4while_lstm_cell_658_matmul_1_readvariableop_resource6while_lstm_cell_658_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_658_matmul_readvariableop_resource4while_lstm_cell_658_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_658/BiasAdd/ReadVariableOp*while/lstm_cell_658/BiasAdd/ReadVariableOp2V
)while/lstm_cell_658/MatMul/ReadVariableOp)while/lstm_cell_658/MatMul/ReadVariableOp2Z
+while/lstm_cell_658/MatMul_1/ReadVariableOp+while/lstm_cell_658/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_4190794
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4190794___redundant_placeholder05
1while_while_cond_4190794___redundant_placeholder15
1while_while_cond_4190794___redundant_placeholder25
1while_while_cond_4190794___redundant_placeholder3
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
*__inference_lstm_659_layer_call_fn_4191319
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
E__inference_lstm_659_layer_call_and_return_conditional_losses_4187758o
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
/__inference_lstm_cell_657_layer_call_fn_4191977

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
J__inference_lstm_cell_657_layer_call_and_return_conditional_losses_4187121o
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
*sequential_219_lstm_657_while_cond_4186539L
Hsequential_219_lstm_657_while_sequential_219_lstm_657_while_loop_counterR
Nsequential_219_lstm_657_while_sequential_219_lstm_657_while_maximum_iterations-
)sequential_219_lstm_657_while_placeholder/
+sequential_219_lstm_657_while_placeholder_1/
+sequential_219_lstm_657_while_placeholder_2/
+sequential_219_lstm_657_while_placeholder_3N
Jsequential_219_lstm_657_while_less_sequential_219_lstm_657_strided_slice_1e
asequential_219_lstm_657_while_sequential_219_lstm_657_while_cond_4186539___redundant_placeholder0e
asequential_219_lstm_657_while_sequential_219_lstm_657_while_cond_4186539___redundant_placeholder1e
asequential_219_lstm_657_while_sequential_219_lstm_657_while_cond_4186539___redundant_placeholder2e
asequential_219_lstm_657_while_sequential_219_lstm_657_while_cond_4186539___redundant_placeholder3*
&sequential_219_lstm_657_while_identity
?
"sequential_219/lstm_657/while/LessLess)sequential_219_lstm_657_while_placeholderJsequential_219_lstm_657_while_less_sequential_219_lstm_657_strided_slice_1*
T0*
_output_shapes
: {
&sequential_219/lstm_657/while/IdentityIdentity&sequential_219/lstm_657/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_219_lstm_657_while_identity/sequential_219/lstm_657/while/Identity:output:0*(
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
while_cond_4187688
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4187688___redundant_placeholder05
1while_while_cond_4187688___redundant_placeholder15
1while_while_cond_4187688___redundant_placeholder25
1while_while_cond_4187688___redundant_placeholder3
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

lstm_659_while_body_4189986.
*lstm_659_while_lstm_659_while_loop_counter4
0lstm_659_while_lstm_659_while_maximum_iterations
lstm_659_while_placeholder 
lstm_659_while_placeholder_1 
lstm_659_while_placeholder_2 
lstm_659_while_placeholder_3-
)lstm_659_while_lstm_659_strided_slice_1_0i
elstm_659_while_tensorarrayv2read_tensorlistgetitem_lstm_659_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_659_while_lstm_cell_659_matmul_readvariableop_resource_0:2(Q
?lstm_659_while_lstm_cell_659_matmul_1_readvariableop_resource_0:
(L
>lstm_659_while_lstm_cell_659_biasadd_readvariableop_resource_0:(
lstm_659_while_identity
lstm_659_while_identity_1
lstm_659_while_identity_2
lstm_659_while_identity_3
lstm_659_while_identity_4
lstm_659_while_identity_5+
'lstm_659_while_lstm_659_strided_slice_1g
clstm_659_while_tensorarrayv2read_tensorlistgetitem_lstm_659_tensorarrayunstack_tensorlistfromtensorM
;lstm_659_while_lstm_cell_659_matmul_readvariableop_resource:2(O
=lstm_659_while_lstm_cell_659_matmul_1_readvariableop_resource:
(J
<lstm_659_while_lstm_cell_659_biasadd_readvariableop_resource:(??3lstm_659/while/lstm_cell_659/BiasAdd/ReadVariableOp?2lstm_659/while/lstm_cell_659/MatMul/ReadVariableOp?4lstm_659/while/lstm_cell_659/MatMul_1/ReadVariableOp?
@lstm_659/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_659/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_659_while_tensorarrayv2read_tensorlistgetitem_lstm_659_tensorarrayunstack_tensorlistfromtensor_0lstm_659_while_placeholderIlstm_659/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_659/while/lstm_cell_659/MatMul/ReadVariableOpReadVariableOp=lstm_659_while_lstm_cell_659_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_659/while/lstm_cell_659/MatMulMatMul9lstm_659/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_659/while/lstm_cell_659/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_659/while/lstm_cell_659/MatMul_1/ReadVariableOpReadVariableOp?lstm_659_while_lstm_cell_659_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_659/while/lstm_cell_659/MatMul_1MatMullstm_659_while_placeholder_2<lstm_659/while/lstm_cell_659/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_659/while/lstm_cell_659/addAddV2-lstm_659/while/lstm_cell_659/MatMul:product:0/lstm_659/while/lstm_cell_659/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_659/while/lstm_cell_659/BiasAdd/ReadVariableOpReadVariableOp>lstm_659_while_lstm_cell_659_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_659/while/lstm_cell_659/BiasAddBiasAdd$lstm_659/while/lstm_cell_659/add:z:0;lstm_659/while/lstm_cell_659/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_659/while/lstm_cell_659/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_659/while/lstm_cell_659/splitSplit5lstm_659/while/lstm_cell_659/split/split_dim:output:0-lstm_659/while/lstm_cell_659/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_659/while/lstm_cell_659/SigmoidSigmoid+lstm_659/while/lstm_cell_659/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_659/while/lstm_cell_659/Sigmoid_1Sigmoid+lstm_659/while/lstm_cell_659/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_659/while/lstm_cell_659/mulMul*lstm_659/while/lstm_cell_659/Sigmoid_1:y:0lstm_659_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_659/while/lstm_cell_659/ReluRelu+lstm_659/while/lstm_cell_659/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_659/while/lstm_cell_659/mul_1Mul(lstm_659/while/lstm_cell_659/Sigmoid:y:0/lstm_659/while/lstm_cell_659/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_659/while/lstm_cell_659/add_1AddV2$lstm_659/while/lstm_cell_659/mul:z:0&lstm_659/while/lstm_cell_659/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_659/while/lstm_cell_659/Sigmoid_2Sigmoid+lstm_659/while/lstm_cell_659/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_659/while/lstm_cell_659/Relu_1Relu&lstm_659/while/lstm_cell_659/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_659/while/lstm_cell_659/mul_2Mul*lstm_659/while/lstm_cell_659/Sigmoid_2:y:01lstm_659/while/lstm_cell_659/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_659/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_659_while_placeholder_1lstm_659_while_placeholder&lstm_659/while/lstm_cell_659/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_659/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_659/while/addAddV2lstm_659_while_placeholderlstm_659/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_659/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_659/while/add_1AddV2*lstm_659_while_lstm_659_while_loop_counterlstm_659/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_659/while/IdentityIdentitylstm_659/while/add_1:z:0^lstm_659/while/NoOp*
T0*
_output_shapes
: ?
lstm_659/while/Identity_1Identity0lstm_659_while_lstm_659_while_maximum_iterations^lstm_659/while/NoOp*
T0*
_output_shapes
: t
lstm_659/while/Identity_2Identitylstm_659/while/add:z:0^lstm_659/while/NoOp*
T0*
_output_shapes
: ?
lstm_659/while/Identity_3IdentityClstm_659/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_659/while/NoOp*
T0*
_output_shapes
: ?
lstm_659/while/Identity_4Identity&lstm_659/while/lstm_cell_659/mul_2:z:0^lstm_659/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_659/while/Identity_5Identity&lstm_659/while/lstm_cell_659/add_1:z:0^lstm_659/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_659/while/NoOpNoOp4^lstm_659/while/lstm_cell_659/BiasAdd/ReadVariableOp3^lstm_659/while/lstm_cell_659/MatMul/ReadVariableOp5^lstm_659/while/lstm_cell_659/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_659_while_identity lstm_659/while/Identity:output:0"?
lstm_659_while_identity_1"lstm_659/while/Identity_1:output:0"?
lstm_659_while_identity_2"lstm_659/while/Identity_2:output:0"?
lstm_659_while_identity_3"lstm_659/while/Identity_3:output:0"?
lstm_659_while_identity_4"lstm_659/while/Identity_4:output:0"?
lstm_659_while_identity_5"lstm_659/while/Identity_5:output:0"T
'lstm_659_while_lstm_659_strided_slice_1)lstm_659_while_lstm_659_strided_slice_1_0"~
<lstm_659_while_lstm_cell_659_biasadd_readvariableop_resource>lstm_659_while_lstm_cell_659_biasadd_readvariableop_resource_0"?
=lstm_659_while_lstm_cell_659_matmul_1_readvariableop_resource?lstm_659_while_lstm_cell_659_matmul_1_readvariableop_resource_0"|
;lstm_659_while_lstm_cell_659_matmul_readvariableop_resource=lstm_659_while_lstm_cell_659_matmul_readvariableop_resource_0"?
clstm_659_while_tensorarrayv2read_tensorlistgetitem_lstm_659_tensorarrayunstack_tensorlistfromtensorelstm_659_while_tensorarrayv2read_tensorlistgetitem_lstm_659_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_659/while/lstm_cell_659/BiasAdd/ReadVariableOp3lstm_659/while/lstm_cell_659/BiasAdd/ReadVariableOp2h
2lstm_659/while/lstm_cell_659/MatMul/ReadVariableOp2lstm_659/while/lstm_cell_659/MatMul/ReadVariableOp2l
4lstm_659/while/lstm_cell_659/MatMul_1/ReadVariableOp4lstm_659/while/lstm_cell_659/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_657_layer_call_fn_4190098
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
E__inference_lstm_657_layer_call_and_return_conditional_losses_4187249|
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
?
*sequential_219_lstm_658_while_cond_4186678L
Hsequential_219_lstm_658_while_sequential_219_lstm_658_while_loop_counterR
Nsequential_219_lstm_658_while_sequential_219_lstm_658_while_maximum_iterations-
)sequential_219_lstm_658_while_placeholder/
+sequential_219_lstm_658_while_placeholder_1/
+sequential_219_lstm_658_while_placeholder_2/
+sequential_219_lstm_658_while_placeholder_3N
Jsequential_219_lstm_658_while_less_sequential_219_lstm_658_strided_slice_1e
asequential_219_lstm_658_while_sequential_219_lstm_658_while_cond_4186678___redundant_placeholder0e
asequential_219_lstm_658_while_sequential_219_lstm_658_while_cond_4186678___redundant_placeholder1e
asequential_219_lstm_658_while_sequential_219_lstm_658_while_cond_4186678___redundant_placeholder2e
asequential_219_lstm_658_while_sequential_219_lstm_658_while_cond_4186678___redundant_placeholder3*
&sequential_219_lstm_658_while_identity
?
"sequential_219/lstm_658/while/LessLess)sequential_219_lstm_658_while_placeholderJsequential_219_lstm_658_while_less_sequential_219_lstm_658_strided_slice_1*
T0*
_output_shapes
: {
&sequential_219/lstm_658/while/IdentityIdentity&sequential_219/lstm_658/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_219_lstm_658_while_identity/sequential_219/lstm_658/while/Identity:output:0*(
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
?
K__inference_sequential_219_layer_call_and_return_conditional_losses_4189133
lstm_657_input#
lstm_657_4189106:	?#
lstm_657_4189108:	d?
lstm_657_4189110:	?#
lstm_658_4189113:	d?#
lstm_658_4189115:	2?
lstm_658_4189117:	?"
lstm_659_4189120:2("
lstm_659_4189122:
(
lstm_659_4189124:(#
dense_219_4189127:

dense_219_4189129:
identity??!dense_219/StatefulPartitionedCall? lstm_657/StatefulPartitionedCall? lstm_658/StatefulPartitionedCall? lstm_659/StatefulPartitionedCall?
 lstm_657/StatefulPartitionedCallStatefulPartitionedCalllstm_657_inputlstm_657_4189106lstm_657_4189108lstm_657_4189110*
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
E__inference_lstm_657_layer_call_and_return_conditional_losses_4188953?
 lstm_658/StatefulPartitionedCallStatefulPartitionedCall)lstm_657/StatefulPartitionedCall:output:0lstm_658_4189113lstm_658_4189115lstm_658_4189117*
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
E__inference_lstm_658_layer_call_and_return_conditional_losses_4188788?
 lstm_659/StatefulPartitionedCallStatefulPartitionedCall)lstm_658/StatefulPartitionedCall:output:0lstm_659_4189120lstm_659_4189122lstm_659_4189124*
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
E__inference_lstm_659_layer_call_and_return_conditional_losses_4188623?
!dense_219/StatefulPartitionedCallStatefulPartitionedCall)lstm_659/StatefulPartitionedCall:output:0dense_219_4189127dense_219_4189129*
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
F__inference_dense_219_layer_call_and_return_conditional_losses_4188425y
IdentityIdentity*dense_219/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_219/StatefulPartitionedCall!^lstm_657/StatefulPartitionedCall!^lstm_658/StatefulPartitionedCall!^lstm_659/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_219/StatefulPartitionedCall!dense_219/StatefulPartitionedCall2D
 lstm_657/StatefulPartitionedCall lstm_657/StatefulPartitionedCall2D
 lstm_658/StatefulPartitionedCall lstm_658/StatefulPartitionedCall2D
 lstm_659/StatefulPartitionedCall lstm_659/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_657_input
?
?
while_cond_4188022
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4188022___redundant_placeholder05
1while_while_cond_4188022___redundant_placeholder15
1while_while_cond_4188022___redundant_placeholder25
1while_while_cond_4188022___redundant_placeholder3
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
lstm_657_while_cond_4189707.
*lstm_657_while_lstm_657_while_loop_counter4
0lstm_657_while_lstm_657_while_maximum_iterations
lstm_657_while_placeholder 
lstm_657_while_placeholder_1 
lstm_657_while_placeholder_2 
lstm_657_while_placeholder_30
,lstm_657_while_less_lstm_657_strided_slice_1G
Clstm_657_while_lstm_657_while_cond_4189707___redundant_placeholder0G
Clstm_657_while_lstm_657_while_cond_4189707___redundant_placeholder1G
Clstm_657_while_lstm_657_while_cond_4189707___redundant_placeholder2G
Clstm_657_while_lstm_657_while_cond_4189707___redundant_placeholder3
lstm_657_while_identity
?
lstm_657/while/LessLesslstm_657_while_placeholder,lstm_657_while_less_lstm_657_strided_slice_1*
T0*
_output_shapes
: ]
lstm_657/while/IdentityIdentitylstm_657/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_657_while_identity lstm_657/while/Identity:output:0*(
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
E__inference_lstm_658_layer_call_and_return_conditional_losses_4191308

inputs?
,lstm_cell_658_matmul_readvariableop_resource:	d?A
.lstm_cell_658_matmul_1_readvariableop_resource:	2?<
-lstm_cell_658_biasadd_readvariableop_resource:	?
identity??$lstm_cell_658/BiasAdd/ReadVariableOp?#lstm_cell_658/MatMul/ReadVariableOp?%lstm_cell_658/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_658/MatMul/ReadVariableOpReadVariableOp,lstm_cell_658_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_658/MatMulMatMulstrided_slice_2:output:0+lstm_cell_658/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_658/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_658_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_658/MatMul_1MatMulzeros:output:0-lstm_cell_658/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_658/addAddV2lstm_cell_658/MatMul:product:0 lstm_cell_658/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_658/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_658_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_658/BiasAddBiasAddlstm_cell_658/add:z:0,lstm_cell_658/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_658/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_658/splitSplit&lstm_cell_658/split/split_dim:output:0lstm_cell_658/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_658/SigmoidSigmoidlstm_cell_658/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_658/Sigmoid_1Sigmoidlstm_cell_658/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_658/mulMullstm_cell_658/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_658/ReluRelulstm_cell_658/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_658/mul_1Mullstm_cell_658/Sigmoid:y:0 lstm_cell_658/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_658/add_1AddV2lstm_cell_658/mul:z:0lstm_cell_658/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_658/Sigmoid_2Sigmoidlstm_cell_658/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_658/Relu_1Relulstm_cell_658/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_658/mul_2Mullstm_cell_658/Sigmoid_2:y:0"lstm_cell_658/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_658_matmul_readvariableop_resource.lstm_cell_658_matmul_1_readvariableop_resource-lstm_cell_658_biasadd_readvariableop_resource*
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
while_body_4191224*
condR
while_cond_4191223*K
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
NoOpNoOp%^lstm_cell_658/BiasAdd/ReadVariableOp$^lstm_cell_658/MatMul/ReadVariableOp&^lstm_cell_658/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_658/BiasAdd/ReadVariableOp$lstm_cell_658/BiasAdd/ReadVariableOp2J
#lstm_cell_658/MatMul/ReadVariableOp#lstm_cell_658/MatMul/ReadVariableOp2N
%lstm_cell_658/MatMul_1/ReadVariableOp%lstm_cell_658/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?#
?
while_body_4187180
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_657_4187204_0:	?0
while_lstm_cell_657_4187206_0:	d?,
while_lstm_cell_657_4187208_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_657_4187204:	?.
while_lstm_cell_657_4187206:	d?*
while_lstm_cell_657_4187208:	???+while/lstm_cell_657/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_657/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_657_4187204_0while_lstm_cell_657_4187206_0while_lstm_cell_657_4187208_0*
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
J__inference_lstm_cell_657_layer_call_and_return_conditional_losses_4187121?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_657/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_657/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_657/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_657/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_657_4187204while_lstm_cell_657_4187204_0"<
while_lstm_cell_657_4187206while_lstm_cell_657_4187206_0"<
while_lstm_cell_657_4187208while_lstm_cell_657_4187208_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_657/StatefulPartitionedCall+while/lstm_cell_657/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_659_layer_call_fn_4192173

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
J__inference_lstm_cell_659_layer_call_and_return_conditional_losses_4187821o
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
J__inference_lstm_cell_659_layer_call_and_return_conditional_losses_4187675

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
while_body_4187880
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_659_4187904_0:2(/
while_lstm_cell_659_4187906_0:
(+
while_lstm_cell_659_4187908_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_659_4187904:2(-
while_lstm_cell_659_4187906:
()
while_lstm_cell_659_4187908:(??+while/lstm_cell_659/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_659/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_659_4187904_0while_lstm_cell_659_4187906_0while_lstm_cell_659_4187908_0*
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
J__inference_lstm_cell_659_layer_call_and_return_conditional_losses_4187821?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_659/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_659/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_659/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_659/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_659_4187904while_lstm_cell_659_4187904_0"<
while_lstm_cell_659_4187906while_lstm_cell_659_4187906_0"<
while_lstm_cell_659_4187908while_lstm_cell_659_4187908_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_659/StatefulPartitionedCall+while/lstm_cell_659/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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

lstm_659_while_body_4189559.
*lstm_659_while_lstm_659_while_loop_counter4
0lstm_659_while_lstm_659_while_maximum_iterations
lstm_659_while_placeholder 
lstm_659_while_placeholder_1 
lstm_659_while_placeholder_2 
lstm_659_while_placeholder_3-
)lstm_659_while_lstm_659_strided_slice_1_0i
elstm_659_while_tensorarrayv2read_tensorlistgetitem_lstm_659_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_659_while_lstm_cell_659_matmul_readvariableop_resource_0:2(Q
?lstm_659_while_lstm_cell_659_matmul_1_readvariableop_resource_0:
(L
>lstm_659_while_lstm_cell_659_biasadd_readvariableop_resource_0:(
lstm_659_while_identity
lstm_659_while_identity_1
lstm_659_while_identity_2
lstm_659_while_identity_3
lstm_659_while_identity_4
lstm_659_while_identity_5+
'lstm_659_while_lstm_659_strided_slice_1g
clstm_659_while_tensorarrayv2read_tensorlistgetitem_lstm_659_tensorarrayunstack_tensorlistfromtensorM
;lstm_659_while_lstm_cell_659_matmul_readvariableop_resource:2(O
=lstm_659_while_lstm_cell_659_matmul_1_readvariableop_resource:
(J
<lstm_659_while_lstm_cell_659_biasadd_readvariableop_resource:(??3lstm_659/while/lstm_cell_659/BiasAdd/ReadVariableOp?2lstm_659/while/lstm_cell_659/MatMul/ReadVariableOp?4lstm_659/while/lstm_cell_659/MatMul_1/ReadVariableOp?
@lstm_659/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_659/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_659_while_tensorarrayv2read_tensorlistgetitem_lstm_659_tensorarrayunstack_tensorlistfromtensor_0lstm_659_while_placeholderIlstm_659/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_659/while/lstm_cell_659/MatMul/ReadVariableOpReadVariableOp=lstm_659_while_lstm_cell_659_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_659/while/lstm_cell_659/MatMulMatMul9lstm_659/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_659/while/lstm_cell_659/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_659/while/lstm_cell_659/MatMul_1/ReadVariableOpReadVariableOp?lstm_659_while_lstm_cell_659_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_659/while/lstm_cell_659/MatMul_1MatMullstm_659_while_placeholder_2<lstm_659/while/lstm_cell_659/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_659/while/lstm_cell_659/addAddV2-lstm_659/while/lstm_cell_659/MatMul:product:0/lstm_659/while/lstm_cell_659/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_659/while/lstm_cell_659/BiasAdd/ReadVariableOpReadVariableOp>lstm_659_while_lstm_cell_659_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_659/while/lstm_cell_659/BiasAddBiasAdd$lstm_659/while/lstm_cell_659/add:z:0;lstm_659/while/lstm_cell_659/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_659/while/lstm_cell_659/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_659/while/lstm_cell_659/splitSplit5lstm_659/while/lstm_cell_659/split/split_dim:output:0-lstm_659/while/lstm_cell_659/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_659/while/lstm_cell_659/SigmoidSigmoid+lstm_659/while/lstm_cell_659/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_659/while/lstm_cell_659/Sigmoid_1Sigmoid+lstm_659/while/lstm_cell_659/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_659/while/lstm_cell_659/mulMul*lstm_659/while/lstm_cell_659/Sigmoid_1:y:0lstm_659_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_659/while/lstm_cell_659/ReluRelu+lstm_659/while/lstm_cell_659/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_659/while/lstm_cell_659/mul_1Mul(lstm_659/while/lstm_cell_659/Sigmoid:y:0/lstm_659/while/lstm_cell_659/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_659/while/lstm_cell_659/add_1AddV2$lstm_659/while/lstm_cell_659/mul:z:0&lstm_659/while/lstm_cell_659/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_659/while/lstm_cell_659/Sigmoid_2Sigmoid+lstm_659/while/lstm_cell_659/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_659/while/lstm_cell_659/Relu_1Relu&lstm_659/while/lstm_cell_659/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_659/while/lstm_cell_659/mul_2Mul*lstm_659/while/lstm_cell_659/Sigmoid_2:y:01lstm_659/while/lstm_cell_659/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_659/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_659_while_placeholder_1lstm_659_while_placeholder&lstm_659/while/lstm_cell_659/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_659/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_659/while/addAddV2lstm_659_while_placeholderlstm_659/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_659/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_659/while/add_1AddV2*lstm_659_while_lstm_659_while_loop_counterlstm_659/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_659/while/IdentityIdentitylstm_659/while/add_1:z:0^lstm_659/while/NoOp*
T0*
_output_shapes
: ?
lstm_659/while/Identity_1Identity0lstm_659_while_lstm_659_while_maximum_iterations^lstm_659/while/NoOp*
T0*
_output_shapes
: t
lstm_659/while/Identity_2Identitylstm_659/while/add:z:0^lstm_659/while/NoOp*
T0*
_output_shapes
: ?
lstm_659/while/Identity_3IdentityClstm_659/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_659/while/NoOp*
T0*
_output_shapes
: ?
lstm_659/while/Identity_4Identity&lstm_659/while/lstm_cell_659/mul_2:z:0^lstm_659/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_659/while/Identity_5Identity&lstm_659/while/lstm_cell_659/add_1:z:0^lstm_659/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_659/while/NoOpNoOp4^lstm_659/while/lstm_cell_659/BiasAdd/ReadVariableOp3^lstm_659/while/lstm_cell_659/MatMul/ReadVariableOp5^lstm_659/while/lstm_cell_659/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_659_while_identity lstm_659/while/Identity:output:0"?
lstm_659_while_identity_1"lstm_659/while/Identity_1:output:0"?
lstm_659_while_identity_2"lstm_659/while/Identity_2:output:0"?
lstm_659_while_identity_3"lstm_659/while/Identity_3:output:0"?
lstm_659_while_identity_4"lstm_659/while/Identity_4:output:0"?
lstm_659_while_identity_5"lstm_659/while/Identity_5:output:0"T
'lstm_659_while_lstm_659_strided_slice_1)lstm_659_while_lstm_659_strided_slice_1_0"~
<lstm_659_while_lstm_cell_659_biasadd_readvariableop_resource>lstm_659_while_lstm_cell_659_biasadd_readvariableop_resource_0"?
=lstm_659_while_lstm_cell_659_matmul_1_readvariableop_resource?lstm_659_while_lstm_cell_659_matmul_1_readvariableop_resource_0"|
;lstm_659_while_lstm_cell_659_matmul_readvariableop_resource=lstm_659_while_lstm_cell_659_matmul_readvariableop_resource_0"?
clstm_659_while_tensorarrayv2read_tensorlistgetitem_lstm_659_tensorarrayunstack_tensorlistfromtensorelstm_659_while_tensorarrayv2read_tensorlistgetitem_lstm_659_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_659/while/lstm_cell_659/BiasAdd/ReadVariableOp3lstm_659/while/lstm_cell_659/BiasAdd/ReadVariableOp2h
2lstm_659/while/lstm_cell_659/MatMul/ReadVariableOp2lstm_659/while/lstm_cell_659/MatMul/ReadVariableOp2l
4lstm_659/while/lstm_cell_659/MatMul_1/ReadVariableOp4lstm_659/while/lstm_cell_659/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_658_layer_call_and_return_conditional_losses_4187599

inputs(
lstm_cell_658_4187517:	d?(
lstm_cell_658_4187519:	2?$
lstm_cell_658_4187521:	?
identity??%lstm_cell_658/StatefulPartitionedCall?while;
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
%lstm_cell_658/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_658_4187517lstm_cell_658_4187519lstm_cell_658_4187521*
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
J__inference_lstm_cell_658_layer_call_and_return_conditional_losses_4187471n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_658_4187517lstm_cell_658_4187519lstm_cell_658_4187521*
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
while_body_4187530*
condR
while_cond_4187529*K
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
NoOpNoOp&^lstm_cell_658/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_658/StatefulPartitionedCall%lstm_cell_658/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?8
?
E__inference_lstm_657_layer_call_and_return_conditional_losses_4187249

inputs(
lstm_cell_657_4187167:	?(
lstm_cell_657_4187169:	d?$
lstm_cell_657_4187171:	?
identity??%lstm_cell_657/StatefulPartitionedCall?while;
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
%lstm_cell_657/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_657_4187167lstm_cell_657_4187169lstm_cell_657_4187171*
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
J__inference_lstm_cell_657_layer_call_and_return_conditional_losses_4187121n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_657_4187167lstm_cell_657_4187169lstm_cell_657_4187171*
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
while_body_4187180*
condR
while_cond_4187179*K
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
NoOpNoOp&^lstm_cell_657/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_657/StatefulPartitionedCall%lstm_cell_657/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?8
?
while_body_4191840
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_659_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_659_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_659_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_659_matmul_readvariableop_resource:2(F
4while_lstm_cell_659_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_659_biasadd_readvariableop_resource:(??*while/lstm_cell_659/BiasAdd/ReadVariableOp?)while/lstm_cell_659/MatMul/ReadVariableOp?+while/lstm_cell_659/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_659/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_659_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_659/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_659/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_659/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_659_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_659/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_659/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_659/addAddV2$while/lstm_cell_659/MatMul:product:0&while/lstm_cell_659/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_659/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_659_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_659/BiasAddBiasAddwhile/lstm_cell_659/add:z:02while/lstm_cell_659/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_659/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_659/splitSplit,while/lstm_cell_659/split/split_dim:output:0$while/lstm_cell_659/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_659/SigmoidSigmoid"while/lstm_cell_659/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_659/Sigmoid_1Sigmoid"while/lstm_cell_659/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_659/mulMul!while/lstm_cell_659/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_659/ReluRelu"while/lstm_cell_659/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_659/mul_1Mulwhile/lstm_cell_659/Sigmoid:y:0&while/lstm_cell_659/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_659/add_1AddV2while/lstm_cell_659/mul:z:0while/lstm_cell_659/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_659/Sigmoid_2Sigmoid"while/lstm_cell_659/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_659/Relu_1Reluwhile/lstm_cell_659/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_659/mul_2Mul!while/lstm_cell_659/Sigmoid_2:y:0(while/lstm_cell_659/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_659/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_659/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_659/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_659/BiasAdd/ReadVariableOp*^while/lstm_cell_659/MatMul/ReadVariableOp,^while/lstm_cell_659/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_659_biasadd_readvariableop_resource5while_lstm_cell_659_biasadd_readvariableop_resource_0"n
4while_lstm_cell_659_matmul_1_readvariableop_resource6while_lstm_cell_659_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_659_matmul_readvariableop_resource4while_lstm_cell_659_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_659/BiasAdd/ReadVariableOp*while/lstm_cell_659/BiasAdd/ReadVariableOp2V
)while/lstm_cell_659/MatMul/ReadVariableOp)while/lstm_cell_659/MatMul/ReadVariableOp2Z
+while/lstm_cell_659/MatMul_1/ReadVariableOp+while/lstm_cell_659/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_659_layer_call_and_return_conditional_losses_4191495
inputs_0>
,lstm_cell_659_matmul_readvariableop_resource:2(@
.lstm_cell_659_matmul_1_readvariableop_resource:
(;
-lstm_cell_659_biasadd_readvariableop_resource:(
identity??$lstm_cell_659/BiasAdd/ReadVariableOp?#lstm_cell_659/MatMul/ReadVariableOp?%lstm_cell_659/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_659/MatMul/ReadVariableOpReadVariableOp,lstm_cell_659_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_659/MatMulMatMulstrided_slice_2:output:0+lstm_cell_659/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_659/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_659_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_659/MatMul_1MatMulzeros:output:0-lstm_cell_659/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_659/addAddV2lstm_cell_659/MatMul:product:0 lstm_cell_659/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_659/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_659_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_659/BiasAddBiasAddlstm_cell_659/add:z:0,lstm_cell_659/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_659/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_659/splitSplit&lstm_cell_659/split/split_dim:output:0lstm_cell_659/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_659/SigmoidSigmoidlstm_cell_659/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_659/Sigmoid_1Sigmoidlstm_cell_659/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_659/mulMullstm_cell_659/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_659/ReluRelulstm_cell_659/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_659/mul_1Mullstm_cell_659/Sigmoid:y:0 lstm_cell_659/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_659/add_1AddV2lstm_cell_659/mul:z:0lstm_cell_659/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_659/Sigmoid_2Sigmoidlstm_cell_659/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_659/Relu_1Relulstm_cell_659/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_659/mul_2Mullstm_cell_659/Sigmoid_2:y:0"lstm_cell_659/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_659_matmul_readvariableop_resource.lstm_cell_659_matmul_1_readvariableop_resource-lstm_cell_659_biasadd_readvariableop_resource*
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
while_body_4191411*
condR
while_cond_4191410*K
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
NoOpNoOp%^lstm_cell_659/BiasAdd/ReadVariableOp$^lstm_cell_659/MatMul/ReadVariableOp&^lstm_cell_659/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_659/BiasAdd/ReadVariableOp$lstm_cell_659/BiasAdd/ReadVariableOp2J
#lstm_cell_659/MatMul/ReadVariableOp#lstm_cell_659/MatMul/ReadVariableOp2N
%lstm_cell_659/MatMul_1/ReadVariableOp%lstm_cell_659/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?J
?
E__inference_lstm_659_layer_call_and_return_conditional_losses_4191924

inputs>
,lstm_cell_659_matmul_readvariableop_resource:2(@
.lstm_cell_659_matmul_1_readvariableop_resource:
(;
-lstm_cell_659_biasadd_readvariableop_resource:(
identity??$lstm_cell_659/BiasAdd/ReadVariableOp?#lstm_cell_659/MatMul/ReadVariableOp?%lstm_cell_659/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_659/MatMul/ReadVariableOpReadVariableOp,lstm_cell_659_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_659/MatMulMatMulstrided_slice_2:output:0+lstm_cell_659/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_659/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_659_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_659/MatMul_1MatMulzeros:output:0-lstm_cell_659/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_659/addAddV2lstm_cell_659/MatMul:product:0 lstm_cell_659/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_659/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_659_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_659/BiasAddBiasAddlstm_cell_659/add:z:0,lstm_cell_659/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_659/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_659/splitSplit&lstm_cell_659/split/split_dim:output:0lstm_cell_659/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_659/SigmoidSigmoidlstm_cell_659/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_659/Sigmoid_1Sigmoidlstm_cell_659/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_659/mulMullstm_cell_659/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_659/ReluRelulstm_cell_659/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_659/mul_1Mullstm_cell_659/Sigmoid:y:0 lstm_cell_659/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_659/add_1AddV2lstm_cell_659/mul:z:0lstm_cell_659/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_659/Sigmoid_2Sigmoidlstm_cell_659/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_659/Relu_1Relulstm_cell_659/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_659/mul_2Mullstm_cell_659/Sigmoid_2:y:0"lstm_cell_659/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_659_matmul_readvariableop_resource.lstm_cell_659_matmul_1_readvariableop_resource-lstm_cell_659_biasadd_readvariableop_resource*
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
while_body_4191840*
condR
while_cond_4191839*K
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
NoOpNoOp%^lstm_cell_659/BiasAdd/ReadVariableOp$^lstm_cell_659/MatMul/ReadVariableOp&^lstm_cell_659/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_659/BiasAdd/ReadVariableOp$lstm_cell_659/BiasAdd/ReadVariableOp2J
#lstm_cell_659/MatMul/ReadVariableOp#lstm_cell_659/MatMul/ReadVariableOp2N
%lstm_cell_659/MatMul_1/ReadVariableOp%lstm_cell_659/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?

?
lstm_659_while_cond_4189985.
*lstm_659_while_lstm_659_while_loop_counter4
0lstm_659_while_lstm_659_while_maximum_iterations
lstm_659_while_placeholder 
lstm_659_while_placeholder_1 
lstm_659_while_placeholder_2 
lstm_659_while_placeholder_30
,lstm_659_while_less_lstm_659_strided_slice_1G
Clstm_659_while_lstm_659_while_cond_4189985___redundant_placeholder0G
Clstm_659_while_lstm_659_while_cond_4189985___redundant_placeholder1G
Clstm_659_while_lstm_659_while_cond_4189985___redundant_placeholder2G
Clstm_659_while_lstm_659_while_cond_4189985___redundant_placeholder3
lstm_659_while_identity
?
lstm_659/while/LessLesslstm_659_while_placeholder,lstm_659_while_less_lstm_659_strided_slice_1*
T0*
_output_shapes
: ]
lstm_659/while/IdentityIdentitylstm_659/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_659_while_identity lstm_659/while/Identity:output:0*(
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
while_cond_4190178
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4190178___redundant_placeholder05
1while_while_cond_4190178___redundant_placeholder15
1while_while_cond_4190178___redundant_placeholder25
1while_while_cond_4190178___redundant_placeholder3
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
E__inference_lstm_657_layer_call_and_return_conditional_losses_4190692

inputs?
,lstm_cell_657_matmul_readvariableop_resource:	?A
.lstm_cell_657_matmul_1_readvariableop_resource:	d?<
-lstm_cell_657_biasadd_readvariableop_resource:	?
identity??$lstm_cell_657/BiasAdd/ReadVariableOp?#lstm_cell_657/MatMul/ReadVariableOp?%lstm_cell_657/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_657/MatMul/ReadVariableOpReadVariableOp,lstm_cell_657_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_657/MatMulMatMulstrided_slice_2:output:0+lstm_cell_657/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_657/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_657_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_657/MatMul_1MatMulzeros:output:0-lstm_cell_657/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_657/addAddV2lstm_cell_657/MatMul:product:0 lstm_cell_657/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_657/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_657_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_657/BiasAddBiasAddlstm_cell_657/add:z:0,lstm_cell_657/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_657/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_657/splitSplit&lstm_cell_657/split/split_dim:output:0lstm_cell_657/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_657/SigmoidSigmoidlstm_cell_657/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_657/Sigmoid_1Sigmoidlstm_cell_657/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_657/mulMullstm_cell_657/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_657/ReluRelulstm_cell_657/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_657/mul_1Mullstm_cell_657/Sigmoid:y:0 lstm_cell_657/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_657/add_1AddV2lstm_cell_657/mul:z:0lstm_cell_657/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_657/Sigmoid_2Sigmoidlstm_cell_657/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_657/Relu_1Relulstm_cell_657/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_657/mul_2Mullstm_cell_657/Sigmoid_2:y:0"lstm_cell_657/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_657_matmul_readvariableop_resource.lstm_cell_657_matmul_1_readvariableop_resource-lstm_cell_657_biasadd_readvariableop_resource*
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
while_body_4190608*
condR
while_cond_4190607*K
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
NoOpNoOp%^lstm_cell_657/BiasAdd/ReadVariableOp$^lstm_cell_657/MatMul/ReadVariableOp&^lstm_cell_657/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_657/BiasAdd/ReadVariableOp$lstm_cell_657/BiasAdd/ReadVariableOp2J
#lstm_cell_657/MatMul/ReadVariableOp#lstm_cell_657/MatMul/ReadVariableOp2N
%lstm_cell_657/MatMul_1/ReadVariableOp%lstm_cell_657/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
*__inference_lstm_659_layer_call_fn_4191341

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
E__inference_lstm_659_layer_call_and_return_conditional_losses_4188407o
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
while_cond_4190321
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4190321___redundant_placeholder05
1while_while_cond_4190321___redundant_placeholder15
1while_while_cond_4190321___redundant_placeholder25
1while_while_cond_4190321___redundant_placeholder3
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
0__inference_sequential_219_layer_call_fn_4189222

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
K__inference_sequential_219_layer_call_and_return_conditional_losses_4189021o
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
while_cond_4190607
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4190607___redundant_placeholder05
1while_while_cond_4190607___redundant_placeholder15
1while_while_cond_4190607___redundant_placeholder25
1while_while_cond_4190607___redundant_placeholder3
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
while_body_4187339
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_658_4187363_0:	d?0
while_lstm_cell_658_4187365_0:	2?,
while_lstm_cell_658_4187367_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_658_4187363:	d?.
while_lstm_cell_658_4187365:	2?*
while_lstm_cell_658_4187367:	???+while/lstm_cell_658/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_658/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_658_4187363_0while_lstm_cell_658_4187365_0while_lstm_cell_658_4187367_0*
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
J__inference_lstm_cell_658_layer_call_and_return_conditional_losses_4187325?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_658/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_658/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_658/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_658/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_658_4187363while_lstm_cell_658_4187363_0"<
while_lstm_cell_658_4187365while_lstm_cell_658_4187365_0"<
while_lstm_cell_658_4187367while_lstm_cell_658_4187367_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_658/StatefulPartitionedCall+while/lstm_cell_658/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_657_layer_call_and_return_conditional_losses_4186975

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
while_cond_4191553
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4191553___redundant_placeholder05
1while_while_cond_4191553___redundant_placeholder15
1while_while_cond_4191553___redundant_placeholder25
1while_while_cond_4191553___redundant_placeholder3
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
?
*sequential_219_lstm_659_while_cond_4186817L
Hsequential_219_lstm_659_while_sequential_219_lstm_659_while_loop_counterR
Nsequential_219_lstm_659_while_sequential_219_lstm_659_while_maximum_iterations-
)sequential_219_lstm_659_while_placeholder/
+sequential_219_lstm_659_while_placeholder_1/
+sequential_219_lstm_659_while_placeholder_2/
+sequential_219_lstm_659_while_placeholder_3N
Jsequential_219_lstm_659_while_less_sequential_219_lstm_659_strided_slice_1e
asequential_219_lstm_659_while_sequential_219_lstm_659_while_cond_4186817___redundant_placeholder0e
asequential_219_lstm_659_while_sequential_219_lstm_659_while_cond_4186817___redundant_placeholder1e
asequential_219_lstm_659_while_sequential_219_lstm_659_while_cond_4186817___redundant_placeholder2e
asequential_219_lstm_659_while_sequential_219_lstm_659_while_cond_4186817___redundant_placeholder3*
&sequential_219_lstm_659_while_identity
?
"sequential_219/lstm_659/while/LessLess)sequential_219_lstm_659_while_placeholderJsequential_219_lstm_659_while_less_sequential_219_lstm_659_strided_slice_1*
T0*
_output_shapes
: {
&sequential_219/lstm_659/while/IdentityIdentity&sequential_219/lstm_659/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_219_lstm_659_while_identity/sequential_219/lstm_659/while/Identity:output:0*(
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
/__inference_lstm_cell_658_layer_call_fn_4192075

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
J__inference_lstm_cell_658_layer_call_and_return_conditional_losses_4187471o
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
while_cond_4190464
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4190464___redundant_placeholder05
1while_while_cond_4190464___redundant_placeholder15
1while_while_cond_4190464___redundant_placeholder25
1while_while_cond_4190464___redundant_placeholder3
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
F__inference_dense_219_layer_call_and_return_conditional_losses_4188425

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
*__inference_lstm_658_layer_call_fn_4190714
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
E__inference_lstm_658_layer_call_and_return_conditional_losses_4187599|
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
*__inference_lstm_659_layer_call_fn_4191330
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
E__inference_lstm_659_layer_call_and_return_conditional_losses_4187949o
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
?
*__inference_lstm_657_layer_call_fn_4190109

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
E__inference_lstm_657_layer_call_and_return_conditional_losses_4188107s
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
?
?
/__inference_lstm_cell_658_layer_call_fn_4192058

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
J__inference_lstm_cell_658_layer_call_and_return_conditional_losses_4187325o
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
E__inference_lstm_657_layer_call_and_return_conditional_losses_4190406
inputs_0?
,lstm_cell_657_matmul_readvariableop_resource:	?A
.lstm_cell_657_matmul_1_readvariableop_resource:	d?<
-lstm_cell_657_biasadd_readvariableop_resource:	?
identity??$lstm_cell_657/BiasAdd/ReadVariableOp?#lstm_cell_657/MatMul/ReadVariableOp?%lstm_cell_657/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_657/MatMul/ReadVariableOpReadVariableOp,lstm_cell_657_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_657/MatMulMatMulstrided_slice_2:output:0+lstm_cell_657/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_657/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_657_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_657/MatMul_1MatMulzeros:output:0-lstm_cell_657/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_657/addAddV2lstm_cell_657/MatMul:product:0 lstm_cell_657/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_657/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_657_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_657/BiasAddBiasAddlstm_cell_657/add:z:0,lstm_cell_657/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_657/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_657/splitSplit&lstm_cell_657/split/split_dim:output:0lstm_cell_657/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_657/SigmoidSigmoidlstm_cell_657/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_657/Sigmoid_1Sigmoidlstm_cell_657/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_657/mulMullstm_cell_657/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_657/ReluRelulstm_cell_657/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_657/mul_1Mullstm_cell_657/Sigmoid:y:0 lstm_cell_657/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_657/add_1AddV2lstm_cell_657/mul:z:0lstm_cell_657/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_657/Sigmoid_2Sigmoidlstm_cell_657/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_657/Relu_1Relulstm_cell_657/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_657/mul_2Mullstm_cell_657/Sigmoid_2:y:0"lstm_cell_657/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_657_matmul_readvariableop_resource.lstm_cell_657_matmul_1_readvariableop_resource-lstm_cell_657_biasadd_readvariableop_resource*
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
while_body_4190322*
condR
while_cond_4190321*K
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
NoOpNoOp%^lstm_cell_657/BiasAdd/ReadVariableOp$^lstm_cell_657/MatMul/ReadVariableOp&^lstm_cell_657/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_657/BiasAdd/ReadVariableOp$lstm_cell_657/BiasAdd/ReadVariableOp2J
#lstm_cell_657/MatMul/ReadVariableOp#lstm_cell_657/MatMul/ReadVariableOp2N
%lstm_cell_657/MatMul_1/ReadVariableOp%lstm_cell_657/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?8
?
while_body_4191697
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_659_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_659_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_659_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_659_matmul_readvariableop_resource:2(F
4while_lstm_cell_659_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_659_biasadd_readvariableop_resource:(??*while/lstm_cell_659/BiasAdd/ReadVariableOp?)while/lstm_cell_659/MatMul/ReadVariableOp?+while/lstm_cell_659/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_659/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_659_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_659/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_659/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_659/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_659_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_659/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_659/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_659/addAddV2$while/lstm_cell_659/MatMul:product:0&while/lstm_cell_659/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_659/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_659_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_659/BiasAddBiasAddwhile/lstm_cell_659/add:z:02while/lstm_cell_659/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_659/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_659/splitSplit,while/lstm_cell_659/split/split_dim:output:0$while/lstm_cell_659/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_659/SigmoidSigmoid"while/lstm_cell_659/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_659/Sigmoid_1Sigmoid"while/lstm_cell_659/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_659/mulMul!while/lstm_cell_659/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_659/ReluRelu"while/lstm_cell_659/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_659/mul_1Mulwhile/lstm_cell_659/Sigmoid:y:0&while/lstm_cell_659/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_659/add_1AddV2while/lstm_cell_659/mul:z:0while/lstm_cell_659/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_659/Sigmoid_2Sigmoid"while/lstm_cell_659/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_659/Relu_1Reluwhile/lstm_cell_659/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_659/mul_2Mul!while/lstm_cell_659/Sigmoid_2:y:0(while/lstm_cell_659/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_659/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_659/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_659/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_659/BiasAdd/ReadVariableOp*^while/lstm_cell_659/MatMul/ReadVariableOp,^while/lstm_cell_659/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_659_biasadd_readvariableop_resource5while_lstm_cell_659_biasadd_readvariableop_resource_0"n
4while_lstm_cell_659_matmul_1_readvariableop_resource6while_lstm_cell_659_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_659_matmul_readvariableop_resource4while_lstm_cell_659_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_659/BiasAdd/ReadVariableOp*while/lstm_cell_659/BiasAdd/ReadVariableOp2V
)while/lstm_cell_659/MatMul/ReadVariableOp)while/lstm_cell_659/MatMul/ReadVariableOp2Z
+while/lstm_cell_659/MatMul_1/ReadVariableOp+while/lstm_cell_659/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_658_while_cond_4189846.
*lstm_658_while_lstm_658_while_loop_counter4
0lstm_658_while_lstm_658_while_maximum_iterations
lstm_658_while_placeholder 
lstm_658_while_placeholder_1 
lstm_658_while_placeholder_2 
lstm_658_while_placeholder_30
,lstm_658_while_less_lstm_658_strided_slice_1G
Clstm_658_while_lstm_658_while_cond_4189846___redundant_placeholder0G
Clstm_658_while_lstm_658_while_cond_4189846___redundant_placeholder1G
Clstm_658_while_lstm_658_while_cond_4189846___redundant_placeholder2G
Clstm_658_while_lstm_658_while_cond_4189846___redundant_placeholder3
lstm_658_while_identity
?
lstm_658/while/LessLesslstm_658_while_placeholder,lstm_658_while_less_lstm_658_strided_slice_1*
T0*
_output_shapes
: ]
lstm_658/while/IdentityIdentitylstm_658/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_658_while_identity lstm_658/while/Identity:output:0*(
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

lstm_658_while_body_4189420.
*lstm_658_while_lstm_658_while_loop_counter4
0lstm_658_while_lstm_658_while_maximum_iterations
lstm_658_while_placeholder 
lstm_658_while_placeholder_1 
lstm_658_while_placeholder_2 
lstm_658_while_placeholder_3-
)lstm_658_while_lstm_658_strided_slice_1_0i
elstm_658_while_tensorarrayv2read_tensorlistgetitem_lstm_658_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_658_while_lstm_cell_658_matmul_readvariableop_resource_0:	d?R
?lstm_658_while_lstm_cell_658_matmul_1_readvariableop_resource_0:	2?M
>lstm_658_while_lstm_cell_658_biasadd_readvariableop_resource_0:	?
lstm_658_while_identity
lstm_658_while_identity_1
lstm_658_while_identity_2
lstm_658_while_identity_3
lstm_658_while_identity_4
lstm_658_while_identity_5+
'lstm_658_while_lstm_658_strided_slice_1g
clstm_658_while_tensorarrayv2read_tensorlistgetitem_lstm_658_tensorarrayunstack_tensorlistfromtensorN
;lstm_658_while_lstm_cell_658_matmul_readvariableop_resource:	d?P
=lstm_658_while_lstm_cell_658_matmul_1_readvariableop_resource:	2?K
<lstm_658_while_lstm_cell_658_biasadd_readvariableop_resource:	???3lstm_658/while/lstm_cell_658/BiasAdd/ReadVariableOp?2lstm_658/while/lstm_cell_658/MatMul/ReadVariableOp?4lstm_658/while/lstm_cell_658/MatMul_1/ReadVariableOp?
@lstm_658/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_658/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_658_while_tensorarrayv2read_tensorlistgetitem_lstm_658_tensorarrayunstack_tensorlistfromtensor_0lstm_658_while_placeholderIlstm_658/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_658/while/lstm_cell_658/MatMul/ReadVariableOpReadVariableOp=lstm_658_while_lstm_cell_658_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_658/while/lstm_cell_658/MatMulMatMul9lstm_658/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_658/while/lstm_cell_658/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_658/while/lstm_cell_658/MatMul_1/ReadVariableOpReadVariableOp?lstm_658_while_lstm_cell_658_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_658/while/lstm_cell_658/MatMul_1MatMullstm_658_while_placeholder_2<lstm_658/while/lstm_cell_658/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_658/while/lstm_cell_658/addAddV2-lstm_658/while/lstm_cell_658/MatMul:product:0/lstm_658/while/lstm_cell_658/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_658/while/lstm_cell_658/BiasAdd/ReadVariableOpReadVariableOp>lstm_658_while_lstm_cell_658_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_658/while/lstm_cell_658/BiasAddBiasAdd$lstm_658/while/lstm_cell_658/add:z:0;lstm_658/while/lstm_cell_658/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_658/while/lstm_cell_658/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_658/while/lstm_cell_658/splitSplit5lstm_658/while/lstm_cell_658/split/split_dim:output:0-lstm_658/while/lstm_cell_658/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_658/while/lstm_cell_658/SigmoidSigmoid+lstm_658/while/lstm_cell_658/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_658/while/lstm_cell_658/Sigmoid_1Sigmoid+lstm_658/while/lstm_cell_658/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_658/while/lstm_cell_658/mulMul*lstm_658/while/lstm_cell_658/Sigmoid_1:y:0lstm_658_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_658/while/lstm_cell_658/ReluRelu+lstm_658/while/lstm_cell_658/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_658/while/lstm_cell_658/mul_1Mul(lstm_658/while/lstm_cell_658/Sigmoid:y:0/lstm_658/while/lstm_cell_658/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_658/while/lstm_cell_658/add_1AddV2$lstm_658/while/lstm_cell_658/mul:z:0&lstm_658/while/lstm_cell_658/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_658/while/lstm_cell_658/Sigmoid_2Sigmoid+lstm_658/while/lstm_cell_658/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_658/while/lstm_cell_658/Relu_1Relu&lstm_658/while/lstm_cell_658/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_658/while/lstm_cell_658/mul_2Mul*lstm_658/while/lstm_cell_658/Sigmoid_2:y:01lstm_658/while/lstm_cell_658/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_658/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_658_while_placeholder_1lstm_658_while_placeholder&lstm_658/while/lstm_cell_658/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_658/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_658/while/addAddV2lstm_658_while_placeholderlstm_658/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_658/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_658/while/add_1AddV2*lstm_658_while_lstm_658_while_loop_counterlstm_658/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_658/while/IdentityIdentitylstm_658/while/add_1:z:0^lstm_658/while/NoOp*
T0*
_output_shapes
: ?
lstm_658/while/Identity_1Identity0lstm_658_while_lstm_658_while_maximum_iterations^lstm_658/while/NoOp*
T0*
_output_shapes
: t
lstm_658/while/Identity_2Identitylstm_658/while/add:z:0^lstm_658/while/NoOp*
T0*
_output_shapes
: ?
lstm_658/while/Identity_3IdentityClstm_658/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_658/while/NoOp*
T0*
_output_shapes
: ?
lstm_658/while/Identity_4Identity&lstm_658/while/lstm_cell_658/mul_2:z:0^lstm_658/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_658/while/Identity_5Identity&lstm_658/while/lstm_cell_658/add_1:z:0^lstm_658/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_658/while/NoOpNoOp4^lstm_658/while/lstm_cell_658/BiasAdd/ReadVariableOp3^lstm_658/while/lstm_cell_658/MatMul/ReadVariableOp5^lstm_658/while/lstm_cell_658/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_658_while_identity lstm_658/while/Identity:output:0"?
lstm_658_while_identity_1"lstm_658/while/Identity_1:output:0"?
lstm_658_while_identity_2"lstm_658/while/Identity_2:output:0"?
lstm_658_while_identity_3"lstm_658/while/Identity_3:output:0"?
lstm_658_while_identity_4"lstm_658/while/Identity_4:output:0"?
lstm_658_while_identity_5"lstm_658/while/Identity_5:output:0"T
'lstm_658_while_lstm_658_strided_slice_1)lstm_658_while_lstm_658_strided_slice_1_0"~
<lstm_658_while_lstm_cell_658_biasadd_readvariableop_resource>lstm_658_while_lstm_cell_658_biasadd_readvariableop_resource_0"?
=lstm_658_while_lstm_cell_658_matmul_1_readvariableop_resource?lstm_658_while_lstm_cell_658_matmul_1_readvariableop_resource_0"|
;lstm_658_while_lstm_cell_658_matmul_readvariableop_resource=lstm_658_while_lstm_cell_658_matmul_readvariableop_resource_0"?
clstm_658_while_tensorarrayv2read_tensorlistgetitem_lstm_658_tensorarrayunstack_tensorlistfromtensorelstm_658_while_tensorarrayv2read_tensorlistgetitem_lstm_658_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_658/while/lstm_cell_658/BiasAdd/ReadVariableOp3lstm_658/while/lstm_cell_658/BiasAdd/ReadVariableOp2h
2lstm_658/while/lstm_cell_658/MatMul/ReadVariableOp2lstm_658/while/lstm_cell_658/MatMul/ReadVariableOp2l
4lstm_658/while/lstm_cell_658/MatMul_1/ReadVariableOp4lstm_658/while/lstm_cell_658/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*sequential_219_lstm_658_while_body_4186679L
Hsequential_219_lstm_658_while_sequential_219_lstm_658_while_loop_counterR
Nsequential_219_lstm_658_while_sequential_219_lstm_658_while_maximum_iterations-
)sequential_219_lstm_658_while_placeholder/
+sequential_219_lstm_658_while_placeholder_1/
+sequential_219_lstm_658_while_placeholder_2/
+sequential_219_lstm_658_while_placeholder_3K
Gsequential_219_lstm_658_while_sequential_219_lstm_658_strided_slice_1_0?
?sequential_219_lstm_658_while_tensorarrayv2read_tensorlistgetitem_sequential_219_lstm_658_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_219_lstm_658_while_lstm_cell_658_matmul_readvariableop_resource_0:	d?a
Nsequential_219_lstm_658_while_lstm_cell_658_matmul_1_readvariableop_resource_0:	2?\
Msequential_219_lstm_658_while_lstm_cell_658_biasadd_readvariableop_resource_0:	?*
&sequential_219_lstm_658_while_identity,
(sequential_219_lstm_658_while_identity_1,
(sequential_219_lstm_658_while_identity_2,
(sequential_219_lstm_658_while_identity_3,
(sequential_219_lstm_658_while_identity_4,
(sequential_219_lstm_658_while_identity_5I
Esequential_219_lstm_658_while_sequential_219_lstm_658_strided_slice_1?
?sequential_219_lstm_658_while_tensorarrayv2read_tensorlistgetitem_sequential_219_lstm_658_tensorarrayunstack_tensorlistfromtensor]
Jsequential_219_lstm_658_while_lstm_cell_658_matmul_readvariableop_resource:	d?_
Lsequential_219_lstm_658_while_lstm_cell_658_matmul_1_readvariableop_resource:	2?Z
Ksequential_219_lstm_658_while_lstm_cell_658_biasadd_readvariableop_resource:	???Bsequential_219/lstm_658/while/lstm_cell_658/BiasAdd/ReadVariableOp?Asequential_219/lstm_658/while/lstm_cell_658/MatMul/ReadVariableOp?Csequential_219/lstm_658/while/lstm_cell_658/MatMul_1/ReadVariableOp?
Osequential_219/lstm_658/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
Asequential_219/lstm_658/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_219_lstm_658_while_tensorarrayv2read_tensorlistgetitem_sequential_219_lstm_658_tensorarrayunstack_tensorlistfromtensor_0)sequential_219_lstm_658_while_placeholderXsequential_219/lstm_658/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
Asequential_219/lstm_658/while/lstm_cell_658/MatMul/ReadVariableOpReadVariableOpLsequential_219_lstm_658_while_lstm_cell_658_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
2sequential_219/lstm_658/while/lstm_cell_658/MatMulMatMulHsequential_219/lstm_658/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_219/lstm_658/while/lstm_cell_658/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_219/lstm_658/while/lstm_cell_658/MatMul_1/ReadVariableOpReadVariableOpNsequential_219_lstm_658_while_lstm_cell_658_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
4sequential_219/lstm_658/while/lstm_cell_658/MatMul_1MatMul+sequential_219_lstm_658_while_placeholder_2Ksequential_219/lstm_658/while/lstm_cell_658/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_219/lstm_658/while/lstm_cell_658/addAddV2<sequential_219/lstm_658/while/lstm_cell_658/MatMul:product:0>sequential_219/lstm_658/while/lstm_cell_658/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_219/lstm_658/while/lstm_cell_658/BiasAdd/ReadVariableOpReadVariableOpMsequential_219_lstm_658_while_lstm_cell_658_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_219/lstm_658/while/lstm_cell_658/BiasAddBiasAdd3sequential_219/lstm_658/while/lstm_cell_658/add:z:0Jsequential_219/lstm_658/while/lstm_cell_658/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_219/lstm_658/while/lstm_cell_658/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_219/lstm_658/while/lstm_cell_658/splitSplitDsequential_219/lstm_658/while/lstm_cell_658/split/split_dim:output:0<sequential_219/lstm_658/while/lstm_cell_658/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
3sequential_219/lstm_658/while/lstm_cell_658/SigmoidSigmoid:sequential_219/lstm_658/while/lstm_cell_658/split:output:0*
T0*'
_output_shapes
:?????????2?
5sequential_219/lstm_658/while/lstm_cell_658/Sigmoid_1Sigmoid:sequential_219/lstm_658/while/lstm_cell_658/split:output:1*
T0*'
_output_shapes
:?????????2?
/sequential_219/lstm_658/while/lstm_cell_658/mulMul9sequential_219/lstm_658/while/lstm_cell_658/Sigmoid_1:y:0+sequential_219_lstm_658_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
0sequential_219/lstm_658/while/lstm_cell_658/ReluRelu:sequential_219/lstm_658/while/lstm_cell_658/split:output:2*
T0*'
_output_shapes
:?????????2?
1sequential_219/lstm_658/while/lstm_cell_658/mul_1Mul7sequential_219/lstm_658/while/lstm_cell_658/Sigmoid:y:0>sequential_219/lstm_658/while/lstm_cell_658/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
1sequential_219/lstm_658/while/lstm_cell_658/add_1AddV23sequential_219/lstm_658/while/lstm_cell_658/mul:z:05sequential_219/lstm_658/while/lstm_cell_658/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
5sequential_219/lstm_658/while/lstm_cell_658/Sigmoid_2Sigmoid:sequential_219/lstm_658/while/lstm_cell_658/split:output:3*
T0*'
_output_shapes
:?????????2?
2sequential_219/lstm_658/while/lstm_cell_658/Relu_1Relu5sequential_219/lstm_658/while/lstm_cell_658/add_1:z:0*
T0*'
_output_shapes
:?????????2?
1sequential_219/lstm_658/while/lstm_cell_658/mul_2Mul9sequential_219/lstm_658/while/lstm_cell_658/Sigmoid_2:y:0@sequential_219/lstm_658/while/lstm_cell_658/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
Bsequential_219/lstm_658/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_219_lstm_658_while_placeholder_1)sequential_219_lstm_658_while_placeholder5sequential_219/lstm_658/while/lstm_cell_658/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_219/lstm_658/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_219/lstm_658/while/addAddV2)sequential_219_lstm_658_while_placeholder,sequential_219/lstm_658/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_219/lstm_658/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_219/lstm_658/while/add_1AddV2Hsequential_219_lstm_658_while_sequential_219_lstm_658_while_loop_counter.sequential_219/lstm_658/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_219/lstm_658/while/IdentityIdentity'sequential_219/lstm_658/while/add_1:z:0#^sequential_219/lstm_658/while/NoOp*
T0*
_output_shapes
: ?
(sequential_219/lstm_658/while/Identity_1IdentityNsequential_219_lstm_658_while_sequential_219_lstm_658_while_maximum_iterations#^sequential_219/lstm_658/while/NoOp*
T0*
_output_shapes
: ?
(sequential_219/lstm_658/while/Identity_2Identity%sequential_219/lstm_658/while/add:z:0#^sequential_219/lstm_658/while/NoOp*
T0*
_output_shapes
: ?
(sequential_219/lstm_658/while/Identity_3IdentityRsequential_219/lstm_658/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_219/lstm_658/while/NoOp*
T0*
_output_shapes
: ?
(sequential_219/lstm_658/while/Identity_4Identity5sequential_219/lstm_658/while/lstm_cell_658/mul_2:z:0#^sequential_219/lstm_658/while/NoOp*
T0*'
_output_shapes
:?????????2?
(sequential_219/lstm_658/while/Identity_5Identity5sequential_219/lstm_658/while/lstm_cell_658/add_1:z:0#^sequential_219/lstm_658/while/NoOp*
T0*'
_output_shapes
:?????????2?
"sequential_219/lstm_658/while/NoOpNoOpC^sequential_219/lstm_658/while/lstm_cell_658/BiasAdd/ReadVariableOpB^sequential_219/lstm_658/while/lstm_cell_658/MatMul/ReadVariableOpD^sequential_219/lstm_658/while/lstm_cell_658/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_219_lstm_658_while_identity/sequential_219/lstm_658/while/Identity:output:0"]
(sequential_219_lstm_658_while_identity_11sequential_219/lstm_658/while/Identity_1:output:0"]
(sequential_219_lstm_658_while_identity_21sequential_219/lstm_658/while/Identity_2:output:0"]
(sequential_219_lstm_658_while_identity_31sequential_219/lstm_658/while/Identity_3:output:0"]
(sequential_219_lstm_658_while_identity_41sequential_219/lstm_658/while/Identity_4:output:0"]
(sequential_219_lstm_658_while_identity_51sequential_219/lstm_658/while/Identity_5:output:0"?
Ksequential_219_lstm_658_while_lstm_cell_658_biasadd_readvariableop_resourceMsequential_219_lstm_658_while_lstm_cell_658_biasadd_readvariableop_resource_0"?
Lsequential_219_lstm_658_while_lstm_cell_658_matmul_1_readvariableop_resourceNsequential_219_lstm_658_while_lstm_cell_658_matmul_1_readvariableop_resource_0"?
Jsequential_219_lstm_658_while_lstm_cell_658_matmul_readvariableop_resourceLsequential_219_lstm_658_while_lstm_cell_658_matmul_readvariableop_resource_0"?
Esequential_219_lstm_658_while_sequential_219_lstm_658_strided_slice_1Gsequential_219_lstm_658_while_sequential_219_lstm_658_strided_slice_1_0"?
?sequential_219_lstm_658_while_tensorarrayv2read_tensorlistgetitem_sequential_219_lstm_658_tensorarrayunstack_tensorlistfromtensor?sequential_219_lstm_658_while_tensorarrayv2read_tensorlistgetitem_sequential_219_lstm_658_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2?
Bsequential_219/lstm_658/while/lstm_cell_658/BiasAdd/ReadVariableOpBsequential_219/lstm_658/while/lstm_cell_658/BiasAdd/ReadVariableOp2?
Asequential_219/lstm_658/while/lstm_cell_658/MatMul/ReadVariableOpAsequential_219/lstm_658/while/lstm_cell_658/MatMul/ReadVariableOp2?
Csequential_219/lstm_658/while/lstm_cell_658/MatMul_1/ReadVariableOpCsequential_219/lstm_658/while/lstm_cell_658/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_657_layer_call_and_return_conditional_losses_4190263
inputs_0?
,lstm_cell_657_matmul_readvariableop_resource:	?A
.lstm_cell_657_matmul_1_readvariableop_resource:	d?<
-lstm_cell_657_biasadd_readvariableop_resource:	?
identity??$lstm_cell_657/BiasAdd/ReadVariableOp?#lstm_cell_657/MatMul/ReadVariableOp?%lstm_cell_657/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_657/MatMul/ReadVariableOpReadVariableOp,lstm_cell_657_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_657/MatMulMatMulstrided_slice_2:output:0+lstm_cell_657/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_657/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_657_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_657/MatMul_1MatMulzeros:output:0-lstm_cell_657/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_657/addAddV2lstm_cell_657/MatMul:product:0 lstm_cell_657/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_657/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_657_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_657/BiasAddBiasAddlstm_cell_657/add:z:0,lstm_cell_657/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_657/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_657/splitSplit&lstm_cell_657/split/split_dim:output:0lstm_cell_657/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_657/SigmoidSigmoidlstm_cell_657/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_657/Sigmoid_1Sigmoidlstm_cell_657/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_657/mulMullstm_cell_657/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_657/ReluRelulstm_cell_657/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_657/mul_1Mullstm_cell_657/Sigmoid:y:0 lstm_cell_657/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_657/add_1AddV2lstm_cell_657/mul:z:0lstm_cell_657/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_657/Sigmoid_2Sigmoidlstm_cell_657/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_657/Relu_1Relulstm_cell_657/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_657/mul_2Mullstm_cell_657/Sigmoid_2:y:0"lstm_cell_657/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_657_matmul_readvariableop_resource.lstm_cell_657_matmul_1_readvariableop_resource-lstm_cell_657_biasadd_readvariableop_resource*
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
while_body_4190179*
condR
while_cond_4190178*K
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
NoOpNoOp%^lstm_cell_657/BiasAdd/ReadVariableOp$^lstm_cell_657/MatMul/ReadVariableOp&^lstm_cell_657/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_657/BiasAdd/ReadVariableOp$lstm_cell_657/BiasAdd/ReadVariableOp2J
#lstm_cell_657/MatMul/ReadVariableOp#lstm_cell_657/MatMul/ReadVariableOp2N
%lstm_cell_657/MatMul_1/ReadVariableOp%lstm_cell_657/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?8
?
while_body_4188173
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_658_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_658_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_658_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_658_matmul_readvariableop_resource:	d?G
4while_lstm_cell_658_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_658_biasadd_readvariableop_resource:	???*while/lstm_cell_658/BiasAdd/ReadVariableOp?)while/lstm_cell_658/MatMul/ReadVariableOp?+while/lstm_cell_658/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_658/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_658_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_658/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_658/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_658/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_658_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_658/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_658/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_658/addAddV2$while/lstm_cell_658/MatMul:product:0&while/lstm_cell_658/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_658/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_658_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_658/BiasAddBiasAddwhile/lstm_cell_658/add:z:02while/lstm_cell_658/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_658/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_658/splitSplit,while/lstm_cell_658/split/split_dim:output:0$while/lstm_cell_658/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_658/SigmoidSigmoid"while/lstm_cell_658/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_658/Sigmoid_1Sigmoid"while/lstm_cell_658/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_658/mulMul!while/lstm_cell_658/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_658/ReluRelu"while/lstm_cell_658/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_658/mul_1Mulwhile/lstm_cell_658/Sigmoid:y:0&while/lstm_cell_658/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_658/add_1AddV2while/lstm_cell_658/mul:z:0while/lstm_cell_658/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_658/Sigmoid_2Sigmoid"while/lstm_cell_658/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_658/Relu_1Reluwhile/lstm_cell_658/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_658/mul_2Mul!while/lstm_cell_658/Sigmoid_2:y:0(while/lstm_cell_658/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_658/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_658/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_658/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_658/BiasAdd/ReadVariableOp*^while/lstm_cell_658/MatMul/ReadVariableOp,^while/lstm_cell_658/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_658_biasadd_readvariableop_resource5while_lstm_cell_658_biasadd_readvariableop_resource_0"n
4while_lstm_cell_658_matmul_1_readvariableop_resource6while_lstm_cell_658_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_658_matmul_readvariableop_resource4while_lstm_cell_658_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_658/BiasAdd/ReadVariableOp*while/lstm_cell_658/BiasAdd/ReadVariableOp2V
)while/lstm_cell_658/MatMul/ReadVariableOp)while/lstm_cell_658/MatMul/ReadVariableOp2Z
+while/lstm_cell_658/MatMul_1/ReadVariableOp+while/lstm_cell_658/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_657_layer_call_and_return_conditional_losses_4187058

inputs(
lstm_cell_657_4186976:	?(
lstm_cell_657_4186978:	d?$
lstm_cell_657_4186980:	?
identity??%lstm_cell_657/StatefulPartitionedCall?while;
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
%lstm_cell_657/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_657_4186976lstm_cell_657_4186978lstm_cell_657_4186980*
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
J__inference_lstm_cell_657_layer_call_and_return_conditional_losses_4186975n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_657_4186976lstm_cell_657_4186978lstm_cell_657_4186980*
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
while_body_4186989*
condR
while_cond_4186988*K
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
NoOpNoOp&^lstm_cell_657/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_657/StatefulPartitionedCall%lstm_cell_657/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?W
?
 __inference__traced_save_4192380
file_prefix/
+savev2_dense_219_kernel_read_readvariableop-
)savev2_dense_219_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_657_lstm_cell_657_kernel_read_readvariableopF
Bsavev2_lstm_657_lstm_cell_657_recurrent_kernel_read_readvariableop:
6savev2_lstm_657_lstm_cell_657_bias_read_readvariableop<
8savev2_lstm_658_lstm_cell_658_kernel_read_readvariableopF
Bsavev2_lstm_658_lstm_cell_658_recurrent_kernel_read_readvariableop:
6savev2_lstm_658_lstm_cell_658_bias_read_readvariableop<
8savev2_lstm_659_lstm_cell_659_kernel_read_readvariableopF
Bsavev2_lstm_659_lstm_cell_659_recurrent_kernel_read_readvariableop:
6savev2_lstm_659_lstm_cell_659_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop6
2savev2_adam_dense_219_kernel_m_read_readvariableop4
0savev2_adam_dense_219_bias_m_read_readvariableopC
?savev2_adam_lstm_657_lstm_cell_657_kernel_m_read_readvariableopM
Isavev2_adam_lstm_657_lstm_cell_657_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_657_lstm_cell_657_bias_m_read_readvariableopC
?savev2_adam_lstm_658_lstm_cell_658_kernel_m_read_readvariableopM
Isavev2_adam_lstm_658_lstm_cell_658_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_658_lstm_cell_658_bias_m_read_readvariableopC
?savev2_adam_lstm_659_lstm_cell_659_kernel_m_read_readvariableopM
Isavev2_adam_lstm_659_lstm_cell_659_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_659_lstm_cell_659_bias_m_read_readvariableop6
2savev2_adam_dense_219_kernel_v_read_readvariableop4
0savev2_adam_dense_219_bias_v_read_readvariableopC
?savev2_adam_lstm_657_lstm_cell_657_kernel_v_read_readvariableopM
Isavev2_adam_lstm_657_lstm_cell_657_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_657_lstm_cell_657_bias_v_read_readvariableopC
?savev2_adam_lstm_658_lstm_cell_658_kernel_v_read_readvariableopM
Isavev2_adam_lstm_658_lstm_cell_658_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_658_lstm_cell_658_bias_v_read_readvariableopC
?savev2_adam_lstm_659_lstm_cell_659_kernel_v_read_readvariableopM
Isavev2_adam_lstm_659_lstm_cell_659_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_659_lstm_cell_659_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_dense_219_kernel_read_readvariableop)savev2_dense_219_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_657_lstm_cell_657_kernel_read_readvariableopBsavev2_lstm_657_lstm_cell_657_recurrent_kernel_read_readvariableop6savev2_lstm_657_lstm_cell_657_bias_read_readvariableop8savev2_lstm_658_lstm_cell_658_kernel_read_readvariableopBsavev2_lstm_658_lstm_cell_658_recurrent_kernel_read_readvariableop6savev2_lstm_658_lstm_cell_658_bias_read_readvariableop8savev2_lstm_659_lstm_cell_659_kernel_read_readvariableopBsavev2_lstm_659_lstm_cell_659_recurrent_kernel_read_readvariableop6savev2_lstm_659_lstm_cell_659_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop2savev2_adam_dense_219_kernel_m_read_readvariableop0savev2_adam_dense_219_bias_m_read_readvariableop?savev2_adam_lstm_657_lstm_cell_657_kernel_m_read_readvariableopIsavev2_adam_lstm_657_lstm_cell_657_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_657_lstm_cell_657_bias_m_read_readvariableop?savev2_adam_lstm_658_lstm_cell_658_kernel_m_read_readvariableopIsavev2_adam_lstm_658_lstm_cell_658_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_658_lstm_cell_658_bias_m_read_readvariableop?savev2_adam_lstm_659_lstm_cell_659_kernel_m_read_readvariableopIsavev2_adam_lstm_659_lstm_cell_659_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_659_lstm_cell_659_bias_m_read_readvariableop2savev2_adam_dense_219_kernel_v_read_readvariableop0savev2_adam_dense_219_bias_v_read_readvariableop?savev2_adam_lstm_657_lstm_cell_657_kernel_v_read_readvariableopIsavev2_adam_lstm_657_lstm_cell_657_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_657_lstm_cell_657_bias_v_read_readvariableop?savev2_adam_lstm_658_lstm_cell_658_kernel_v_read_readvariableopIsavev2_adam_lstm_658_lstm_cell_658_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_658_lstm_cell_658_bias_v_read_readvariableop?savev2_adam_lstm_659_lstm_cell_659_kernel_v_read_readvariableopIsavev2_adam_lstm_659_lstm_cell_659_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_659_lstm_cell_659_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
J__inference_lstm_cell_658_layer_call_and_return_conditional_losses_4192107

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
?J
?
E__inference_lstm_659_layer_call_and_return_conditional_losses_4191781

inputs>
,lstm_cell_659_matmul_readvariableop_resource:2(@
.lstm_cell_659_matmul_1_readvariableop_resource:
(;
-lstm_cell_659_biasadd_readvariableop_resource:(
identity??$lstm_cell_659/BiasAdd/ReadVariableOp?#lstm_cell_659/MatMul/ReadVariableOp?%lstm_cell_659/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_659/MatMul/ReadVariableOpReadVariableOp,lstm_cell_659_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_659/MatMulMatMulstrided_slice_2:output:0+lstm_cell_659/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_659/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_659_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_659/MatMul_1MatMulzeros:output:0-lstm_cell_659/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_659/addAddV2lstm_cell_659/MatMul:product:0 lstm_cell_659/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_659/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_659_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_659/BiasAddBiasAddlstm_cell_659/add:z:0,lstm_cell_659/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_659/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_659/splitSplit&lstm_cell_659/split/split_dim:output:0lstm_cell_659/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_659/SigmoidSigmoidlstm_cell_659/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_659/Sigmoid_1Sigmoidlstm_cell_659/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_659/mulMullstm_cell_659/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_659/ReluRelulstm_cell_659/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_659/mul_1Mullstm_cell_659/Sigmoid:y:0 lstm_cell_659/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_659/add_1AddV2lstm_cell_659/mul:z:0lstm_cell_659/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_659/Sigmoid_2Sigmoidlstm_cell_659/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_659/Relu_1Relulstm_cell_659/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_659/mul_2Mullstm_cell_659/Sigmoid_2:y:0"lstm_cell_659/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_659_matmul_readvariableop_resource.lstm_cell_659_matmul_1_readvariableop_resource-lstm_cell_659_biasadd_readvariableop_resource*
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
while_body_4191697*
condR
while_cond_4191696*K
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
NoOpNoOp%^lstm_cell_659/BiasAdd/ReadVariableOp$^lstm_cell_659/MatMul/ReadVariableOp&^lstm_cell_659/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_659/BiasAdd/ReadVariableOp$lstm_cell_659/BiasAdd/ReadVariableOp2J
#lstm_cell_659/MatMul/ReadVariableOp#lstm_cell_659/MatMul/ReadVariableOp2N
%lstm_cell_659/MatMul_1/ReadVariableOp%lstm_cell_659/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_657_layer_call_and_return_conditional_losses_4192009

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
?
E__inference_lstm_658_layer_call_and_return_conditional_losses_4187408

inputs(
lstm_cell_658_4187326:	d?(
lstm_cell_658_4187328:	2?$
lstm_cell_658_4187330:	?
identity??%lstm_cell_658/StatefulPartitionedCall?while;
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
%lstm_cell_658/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_658_4187326lstm_cell_658_4187328lstm_cell_658_4187330*
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
J__inference_lstm_cell_658_layer_call_and_return_conditional_losses_4187325n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_658_4187326lstm_cell_658_4187328lstm_cell_658_4187330*
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
while_body_4187339*
condR
while_cond_4187338*K
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
NoOpNoOp&^lstm_cell_658/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_658/StatefulPartitionedCall%lstm_cell_658/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_658_layer_call_and_return_conditional_losses_4187471

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
while_body_4190938
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_658_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_658_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_658_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_658_matmul_readvariableop_resource:	d?G
4while_lstm_cell_658_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_658_biasadd_readvariableop_resource:	???*while/lstm_cell_658/BiasAdd/ReadVariableOp?)while/lstm_cell_658/MatMul/ReadVariableOp?+while/lstm_cell_658/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_658/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_658_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_658/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_658/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_658/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_658_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_658/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_658/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_658/addAddV2$while/lstm_cell_658/MatMul:product:0&while/lstm_cell_658/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_658/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_658_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_658/BiasAddBiasAddwhile/lstm_cell_658/add:z:02while/lstm_cell_658/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_658/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_658/splitSplit,while/lstm_cell_658/split/split_dim:output:0$while/lstm_cell_658/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_658/SigmoidSigmoid"while/lstm_cell_658/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_658/Sigmoid_1Sigmoid"while/lstm_cell_658/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_658/mulMul!while/lstm_cell_658/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_658/ReluRelu"while/lstm_cell_658/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_658/mul_1Mulwhile/lstm_cell_658/Sigmoid:y:0&while/lstm_cell_658/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_658/add_1AddV2while/lstm_cell_658/mul:z:0while/lstm_cell_658/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_658/Sigmoid_2Sigmoid"while/lstm_cell_658/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_658/Relu_1Reluwhile/lstm_cell_658/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_658/mul_2Mul!while/lstm_cell_658/Sigmoid_2:y:0(while/lstm_cell_658/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_658/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_658/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_658/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_658/BiasAdd/ReadVariableOp*^while/lstm_cell_658/MatMul/ReadVariableOp,^while/lstm_cell_658/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_658_biasadd_readvariableop_resource5while_lstm_cell_658_biasadd_readvariableop_resource_0"n
4while_lstm_cell_658_matmul_1_readvariableop_resource6while_lstm_cell_658_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_658_matmul_readvariableop_resource4while_lstm_cell_658_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_658/BiasAdd/ReadVariableOp*while/lstm_cell_658/BiasAdd/ReadVariableOp2V
)while/lstm_cell_658/MatMul/ReadVariableOp)while/lstm_cell_658/MatMul/ReadVariableOp2Z
+while/lstm_cell_658/MatMul_1/ReadVariableOp+while/lstm_cell_658/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_4191223
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4191223___redundant_placeholder05
1while_while_cond_4191223___redundant_placeholder15
1while_while_cond_4191223___redundant_placeholder25
1while_while_cond_4191223___redundant_placeholder3
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
while_cond_4191696
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4191696___redundant_placeholder05
1while_while_cond_4191696___redundant_placeholder15
1while_while_cond_4191696___redundant_placeholder25
1while_while_cond_4191696___redundant_placeholder3
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
while_body_4190795
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_658_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_658_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_658_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_658_matmul_readvariableop_resource:	d?G
4while_lstm_cell_658_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_658_biasadd_readvariableop_resource:	???*while/lstm_cell_658/BiasAdd/ReadVariableOp?)while/lstm_cell_658/MatMul/ReadVariableOp?+while/lstm_cell_658/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_658/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_658_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_658/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_658/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_658/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_658_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_658/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_658/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_658/addAddV2$while/lstm_cell_658/MatMul:product:0&while/lstm_cell_658/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_658/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_658_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_658/BiasAddBiasAddwhile/lstm_cell_658/add:z:02while/lstm_cell_658/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_658/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_658/splitSplit,while/lstm_cell_658/split/split_dim:output:0$while/lstm_cell_658/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_658/SigmoidSigmoid"while/lstm_cell_658/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_658/Sigmoid_1Sigmoid"while/lstm_cell_658/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_658/mulMul!while/lstm_cell_658/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_658/ReluRelu"while/lstm_cell_658/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_658/mul_1Mulwhile/lstm_cell_658/Sigmoid:y:0&while/lstm_cell_658/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_658/add_1AddV2while/lstm_cell_658/mul:z:0while/lstm_cell_658/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_658/Sigmoid_2Sigmoid"while/lstm_cell_658/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_658/Relu_1Reluwhile/lstm_cell_658/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_658/mul_2Mul!while/lstm_cell_658/Sigmoid_2:y:0(while/lstm_cell_658/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_658/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_658/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_658/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_658/BiasAdd/ReadVariableOp*^while/lstm_cell_658/MatMul/ReadVariableOp,^while/lstm_cell_658/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_658_biasadd_readvariableop_resource5while_lstm_cell_658_biasadd_readvariableop_resource_0"n
4while_lstm_cell_658_matmul_1_readvariableop_resource6while_lstm_cell_658_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_658_matmul_readvariableop_resource4while_lstm_cell_658_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_658/BiasAdd/ReadVariableOp*while/lstm_cell_658/BiasAdd/ReadVariableOp2V
)while/lstm_cell_658/MatMul/ReadVariableOp)while/lstm_cell_658/MatMul/ReadVariableOp2Z
+while/lstm_cell_658/MatMul_1/ReadVariableOp+while/lstm_cell_658/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_4191080
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4191080___redundant_placeholder05
1while_while_cond_4191080___redundant_placeholder15
1while_while_cond_4191080___redundant_placeholder25
1while_while_cond_4191080___redundant_placeholder3
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
while_body_4190179
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_657_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_657_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_657_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_657_matmul_readvariableop_resource:	?G
4while_lstm_cell_657_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_657_biasadd_readvariableop_resource:	???*while/lstm_cell_657/BiasAdd/ReadVariableOp?)while/lstm_cell_657/MatMul/ReadVariableOp?+while/lstm_cell_657/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_657/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_657_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_657/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_657/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_657/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_657_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_657/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_657/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_657/addAddV2$while/lstm_cell_657/MatMul:product:0&while/lstm_cell_657/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_657/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_657_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_657/BiasAddBiasAddwhile/lstm_cell_657/add:z:02while/lstm_cell_657/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_657/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_657/splitSplit,while/lstm_cell_657/split/split_dim:output:0$while/lstm_cell_657/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_657/SigmoidSigmoid"while/lstm_cell_657/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_657/Sigmoid_1Sigmoid"while/lstm_cell_657/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_657/mulMul!while/lstm_cell_657/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_657/ReluRelu"while/lstm_cell_657/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_657/mul_1Mulwhile/lstm_cell_657/Sigmoid:y:0&while/lstm_cell_657/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_657/add_1AddV2while/lstm_cell_657/mul:z:0while/lstm_cell_657/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_657/Sigmoid_2Sigmoid"while/lstm_cell_657/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_657/Relu_1Reluwhile/lstm_cell_657/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_657/mul_2Mul!while/lstm_cell_657/Sigmoid_2:y:0(while/lstm_cell_657/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_657/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_657/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_657/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_657/BiasAdd/ReadVariableOp*^while/lstm_cell_657/MatMul/ReadVariableOp,^while/lstm_cell_657/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_657_biasadd_readvariableop_resource5while_lstm_cell_657_biasadd_readvariableop_resource_0"n
4while_lstm_cell_657_matmul_1_readvariableop_resource6while_lstm_cell_657_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_657_matmul_readvariableop_resource4while_lstm_cell_657_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_657/BiasAdd/ReadVariableOp*while/lstm_cell_657/BiasAdd/ReadVariableOp2V
)while/lstm_cell_657/MatMul/ReadVariableOp)while/lstm_cell_657/MatMul/ReadVariableOp2Z
+while/lstm_cell_657/MatMul_1/ReadVariableOp+while/lstm_cell_657/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

lstm_657_while_body_4189708.
*lstm_657_while_lstm_657_while_loop_counter4
0lstm_657_while_lstm_657_while_maximum_iterations
lstm_657_while_placeholder 
lstm_657_while_placeholder_1 
lstm_657_while_placeholder_2 
lstm_657_while_placeholder_3-
)lstm_657_while_lstm_657_strided_slice_1_0i
elstm_657_while_tensorarrayv2read_tensorlistgetitem_lstm_657_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_657_while_lstm_cell_657_matmul_readvariableop_resource_0:	?R
?lstm_657_while_lstm_cell_657_matmul_1_readvariableop_resource_0:	d?M
>lstm_657_while_lstm_cell_657_biasadd_readvariableop_resource_0:	?
lstm_657_while_identity
lstm_657_while_identity_1
lstm_657_while_identity_2
lstm_657_while_identity_3
lstm_657_while_identity_4
lstm_657_while_identity_5+
'lstm_657_while_lstm_657_strided_slice_1g
clstm_657_while_tensorarrayv2read_tensorlistgetitem_lstm_657_tensorarrayunstack_tensorlistfromtensorN
;lstm_657_while_lstm_cell_657_matmul_readvariableop_resource:	?P
=lstm_657_while_lstm_cell_657_matmul_1_readvariableop_resource:	d?K
<lstm_657_while_lstm_cell_657_biasadd_readvariableop_resource:	???3lstm_657/while/lstm_cell_657/BiasAdd/ReadVariableOp?2lstm_657/while/lstm_cell_657/MatMul/ReadVariableOp?4lstm_657/while/lstm_cell_657/MatMul_1/ReadVariableOp?
@lstm_657/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_657/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_657_while_tensorarrayv2read_tensorlistgetitem_lstm_657_tensorarrayunstack_tensorlistfromtensor_0lstm_657_while_placeholderIlstm_657/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_657/while/lstm_cell_657/MatMul/ReadVariableOpReadVariableOp=lstm_657_while_lstm_cell_657_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_657/while/lstm_cell_657/MatMulMatMul9lstm_657/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_657/while/lstm_cell_657/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_657/while/lstm_cell_657/MatMul_1/ReadVariableOpReadVariableOp?lstm_657_while_lstm_cell_657_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_657/while/lstm_cell_657/MatMul_1MatMullstm_657_while_placeholder_2<lstm_657/while/lstm_cell_657/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_657/while/lstm_cell_657/addAddV2-lstm_657/while/lstm_cell_657/MatMul:product:0/lstm_657/while/lstm_cell_657/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_657/while/lstm_cell_657/BiasAdd/ReadVariableOpReadVariableOp>lstm_657_while_lstm_cell_657_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_657/while/lstm_cell_657/BiasAddBiasAdd$lstm_657/while/lstm_cell_657/add:z:0;lstm_657/while/lstm_cell_657/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_657/while/lstm_cell_657/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_657/while/lstm_cell_657/splitSplit5lstm_657/while/lstm_cell_657/split/split_dim:output:0-lstm_657/while/lstm_cell_657/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_657/while/lstm_cell_657/SigmoidSigmoid+lstm_657/while/lstm_cell_657/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_657/while/lstm_cell_657/Sigmoid_1Sigmoid+lstm_657/while/lstm_cell_657/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_657/while/lstm_cell_657/mulMul*lstm_657/while/lstm_cell_657/Sigmoid_1:y:0lstm_657_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_657/while/lstm_cell_657/ReluRelu+lstm_657/while/lstm_cell_657/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_657/while/lstm_cell_657/mul_1Mul(lstm_657/while/lstm_cell_657/Sigmoid:y:0/lstm_657/while/lstm_cell_657/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_657/while/lstm_cell_657/add_1AddV2$lstm_657/while/lstm_cell_657/mul:z:0&lstm_657/while/lstm_cell_657/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_657/while/lstm_cell_657/Sigmoid_2Sigmoid+lstm_657/while/lstm_cell_657/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_657/while/lstm_cell_657/Relu_1Relu&lstm_657/while/lstm_cell_657/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_657/while/lstm_cell_657/mul_2Mul*lstm_657/while/lstm_cell_657/Sigmoid_2:y:01lstm_657/while/lstm_cell_657/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_657/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_657_while_placeholder_1lstm_657_while_placeholder&lstm_657/while/lstm_cell_657/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_657/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_657/while/addAddV2lstm_657_while_placeholderlstm_657/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_657/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_657/while/add_1AddV2*lstm_657_while_lstm_657_while_loop_counterlstm_657/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_657/while/IdentityIdentitylstm_657/while/add_1:z:0^lstm_657/while/NoOp*
T0*
_output_shapes
: ?
lstm_657/while/Identity_1Identity0lstm_657_while_lstm_657_while_maximum_iterations^lstm_657/while/NoOp*
T0*
_output_shapes
: t
lstm_657/while/Identity_2Identitylstm_657/while/add:z:0^lstm_657/while/NoOp*
T0*
_output_shapes
: ?
lstm_657/while/Identity_3IdentityClstm_657/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_657/while/NoOp*
T0*
_output_shapes
: ?
lstm_657/while/Identity_4Identity&lstm_657/while/lstm_cell_657/mul_2:z:0^lstm_657/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_657/while/Identity_5Identity&lstm_657/while/lstm_cell_657/add_1:z:0^lstm_657/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_657/while/NoOpNoOp4^lstm_657/while/lstm_cell_657/BiasAdd/ReadVariableOp3^lstm_657/while/lstm_cell_657/MatMul/ReadVariableOp5^lstm_657/while/lstm_cell_657/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_657_while_identity lstm_657/while/Identity:output:0"?
lstm_657_while_identity_1"lstm_657/while/Identity_1:output:0"?
lstm_657_while_identity_2"lstm_657/while/Identity_2:output:0"?
lstm_657_while_identity_3"lstm_657/while/Identity_3:output:0"?
lstm_657_while_identity_4"lstm_657/while/Identity_4:output:0"?
lstm_657_while_identity_5"lstm_657/while/Identity_5:output:0"T
'lstm_657_while_lstm_657_strided_slice_1)lstm_657_while_lstm_657_strided_slice_1_0"~
<lstm_657_while_lstm_cell_657_biasadd_readvariableop_resource>lstm_657_while_lstm_cell_657_biasadd_readvariableop_resource_0"?
=lstm_657_while_lstm_cell_657_matmul_1_readvariableop_resource?lstm_657_while_lstm_cell_657_matmul_1_readvariableop_resource_0"|
;lstm_657_while_lstm_cell_657_matmul_readvariableop_resource=lstm_657_while_lstm_cell_657_matmul_readvariableop_resource_0"?
clstm_657_while_tensorarrayv2read_tensorlistgetitem_lstm_657_tensorarrayunstack_tensorlistfromtensorelstm_657_while_tensorarrayv2read_tensorlistgetitem_lstm_657_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_657/while/lstm_cell_657/BiasAdd/ReadVariableOp3lstm_657/while/lstm_cell_657/BiasAdd/ReadVariableOp2h
2lstm_657/while/lstm_cell_657/MatMul/ReadVariableOp2lstm_657/while/lstm_cell_657/MatMul/ReadVariableOp2l
4lstm_657/while/lstm_cell_657/MatMul_1/ReadVariableOp4lstm_657/while/lstm_cell_657/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_658_layer_call_and_return_conditional_losses_4188257

inputs?
,lstm_cell_658_matmul_readvariableop_resource:	d?A
.lstm_cell_658_matmul_1_readvariableop_resource:	2?<
-lstm_cell_658_biasadd_readvariableop_resource:	?
identity??$lstm_cell_658/BiasAdd/ReadVariableOp?#lstm_cell_658/MatMul/ReadVariableOp?%lstm_cell_658/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_658/MatMul/ReadVariableOpReadVariableOp,lstm_cell_658_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_658/MatMulMatMulstrided_slice_2:output:0+lstm_cell_658/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_658/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_658_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_658/MatMul_1MatMulzeros:output:0-lstm_cell_658/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_658/addAddV2lstm_cell_658/MatMul:product:0 lstm_cell_658/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_658/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_658_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_658/BiasAddBiasAddlstm_cell_658/add:z:0,lstm_cell_658/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_658/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_658/splitSplit&lstm_cell_658/split/split_dim:output:0lstm_cell_658/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_658/SigmoidSigmoidlstm_cell_658/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_658/Sigmoid_1Sigmoidlstm_cell_658/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_658/mulMullstm_cell_658/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_658/ReluRelulstm_cell_658/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_658/mul_1Mullstm_cell_658/Sigmoid:y:0 lstm_cell_658/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_658/add_1AddV2lstm_cell_658/mul:z:0lstm_cell_658/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_658/Sigmoid_2Sigmoidlstm_cell_658/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_658/Relu_1Relulstm_cell_658/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_658/mul_2Mullstm_cell_658/Sigmoid_2:y:0"lstm_cell_658/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_658_matmul_readvariableop_resource.lstm_cell_658_matmul_1_readvariableop_resource-lstm_cell_658_biasadd_readvariableop_resource*
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
while_body_4188173*
condR
while_cond_4188172*K
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
NoOpNoOp%^lstm_cell_658/BiasAdd/ReadVariableOp$^lstm_cell_658/MatMul/ReadVariableOp&^lstm_cell_658/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_658/BiasAdd/ReadVariableOp$lstm_cell_658/BiasAdd/ReadVariableOp2J
#lstm_cell_658/MatMul/ReadVariableOp#lstm_cell_658/MatMul/ReadVariableOp2N
%lstm_cell_658/MatMul_1/ReadVariableOp%lstm_cell_658/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_657_layer_call_and_return_conditional_losses_4187121

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
while_body_4191411
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_659_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_659_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_659_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_659_matmul_readvariableop_resource:2(F
4while_lstm_cell_659_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_659_biasadd_readvariableop_resource:(??*while/lstm_cell_659/BiasAdd/ReadVariableOp?)while/lstm_cell_659/MatMul/ReadVariableOp?+while/lstm_cell_659/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_659/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_659_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_659/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_659/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_659/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_659_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_659/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_659/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_659/addAddV2$while/lstm_cell_659/MatMul:product:0&while/lstm_cell_659/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_659/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_659_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_659/BiasAddBiasAddwhile/lstm_cell_659/add:z:02while/lstm_cell_659/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_659/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_659/splitSplit,while/lstm_cell_659/split/split_dim:output:0$while/lstm_cell_659/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_659/SigmoidSigmoid"while/lstm_cell_659/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_659/Sigmoid_1Sigmoid"while/lstm_cell_659/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_659/mulMul!while/lstm_cell_659/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_659/ReluRelu"while/lstm_cell_659/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_659/mul_1Mulwhile/lstm_cell_659/Sigmoid:y:0&while/lstm_cell_659/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_659/add_1AddV2while/lstm_cell_659/mul:z:0while/lstm_cell_659/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_659/Sigmoid_2Sigmoid"while/lstm_cell_659/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_659/Relu_1Reluwhile/lstm_cell_659/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_659/mul_2Mul!while/lstm_cell_659/Sigmoid_2:y:0(while/lstm_cell_659/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_659/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_659/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_659/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_659/BiasAdd/ReadVariableOp*^while/lstm_cell_659/MatMul/ReadVariableOp,^while/lstm_cell_659/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_659_biasadd_readvariableop_resource5while_lstm_cell_659_biasadd_readvariableop_resource_0"n
4while_lstm_cell_659_matmul_1_readvariableop_resource6while_lstm_cell_659_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_659_matmul_readvariableop_resource4while_lstm_cell_659_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_659/BiasAdd/ReadVariableOp*while/lstm_cell_659/BiasAdd/ReadVariableOp2V
)while/lstm_cell_659/MatMul/ReadVariableOp)while/lstm_cell_659/MatMul/ReadVariableOp2Z
+while/lstm_cell_659/MatMul_1/ReadVariableOp+while/lstm_cell_659/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_658_layer_call_and_return_conditional_losses_4191165

inputs?
,lstm_cell_658_matmul_readvariableop_resource:	d?A
.lstm_cell_658_matmul_1_readvariableop_resource:	2?<
-lstm_cell_658_biasadd_readvariableop_resource:	?
identity??$lstm_cell_658/BiasAdd/ReadVariableOp?#lstm_cell_658/MatMul/ReadVariableOp?%lstm_cell_658/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_658/MatMul/ReadVariableOpReadVariableOp,lstm_cell_658_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_658/MatMulMatMulstrided_slice_2:output:0+lstm_cell_658/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_658/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_658_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_658/MatMul_1MatMulzeros:output:0-lstm_cell_658/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_658/addAddV2lstm_cell_658/MatMul:product:0 lstm_cell_658/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_658/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_658_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_658/BiasAddBiasAddlstm_cell_658/add:z:0,lstm_cell_658/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_658/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_658/splitSplit&lstm_cell_658/split/split_dim:output:0lstm_cell_658/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_658/SigmoidSigmoidlstm_cell_658/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_658/Sigmoid_1Sigmoidlstm_cell_658/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_658/mulMullstm_cell_658/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_658/ReluRelulstm_cell_658/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_658/mul_1Mullstm_cell_658/Sigmoid:y:0 lstm_cell_658/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_658/add_1AddV2lstm_cell_658/mul:z:0lstm_cell_658/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_658/Sigmoid_2Sigmoidlstm_cell_658/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_658/Relu_1Relulstm_cell_658/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_658/mul_2Mullstm_cell_658/Sigmoid_2:y:0"lstm_cell_658/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_658_matmul_readvariableop_resource.lstm_cell_658_matmul_1_readvariableop_resource-lstm_cell_658_biasadd_readvariableop_resource*
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
while_body_4191081*
condR
while_cond_4191080*K
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
NoOpNoOp%^lstm_cell_658/BiasAdd/ReadVariableOp$^lstm_cell_658/MatMul/ReadVariableOp&^lstm_cell_658/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_658/BiasAdd/ReadVariableOp$lstm_cell_658/BiasAdd/ReadVariableOp2J
#lstm_cell_658/MatMul/ReadVariableOp#lstm_cell_658/MatMul/ReadVariableOp2N
%lstm_cell_658/MatMul_1/ReadVariableOp%lstm_cell_658/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
K__inference_sequential_219_layer_call_and_return_conditional_losses_4189021

inputs#
lstm_657_4188994:	?#
lstm_657_4188996:	d?
lstm_657_4188998:	?#
lstm_658_4189001:	d?#
lstm_658_4189003:	2?
lstm_658_4189005:	?"
lstm_659_4189008:2("
lstm_659_4189010:
(
lstm_659_4189012:(#
dense_219_4189015:

dense_219_4189017:
identity??!dense_219/StatefulPartitionedCall? lstm_657/StatefulPartitionedCall? lstm_658/StatefulPartitionedCall? lstm_659/StatefulPartitionedCall?
 lstm_657/StatefulPartitionedCallStatefulPartitionedCallinputslstm_657_4188994lstm_657_4188996lstm_657_4188998*
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
E__inference_lstm_657_layer_call_and_return_conditional_losses_4188953?
 lstm_658/StatefulPartitionedCallStatefulPartitionedCall)lstm_657/StatefulPartitionedCall:output:0lstm_658_4189001lstm_658_4189003lstm_658_4189005*
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
E__inference_lstm_658_layer_call_and_return_conditional_losses_4188788?
 lstm_659/StatefulPartitionedCallStatefulPartitionedCall)lstm_658/StatefulPartitionedCall:output:0lstm_659_4189008lstm_659_4189010lstm_659_4189012*
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
E__inference_lstm_659_layer_call_and_return_conditional_losses_4188623?
!dense_219/StatefulPartitionedCallStatefulPartitionedCall)lstm_659/StatefulPartitionedCall:output:0dense_219_4189015dense_219_4189017*
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
F__inference_dense_219_layer_call_and_return_conditional_losses_4188425y
IdentityIdentity*dense_219/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_219/StatefulPartitionedCall!^lstm_657/StatefulPartitionedCall!^lstm_658/StatefulPartitionedCall!^lstm_659/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_219/StatefulPartitionedCall!dense_219/StatefulPartitionedCall2D
 lstm_657/StatefulPartitionedCall lstm_657/StatefulPartitionedCall2D
 lstm_658/StatefulPartitionedCall lstm_658/StatefulPartitionedCall2D
 lstm_659/StatefulPartitionedCall lstm_659/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
/__inference_lstm_cell_659_layer_call_fn_4192156

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
J__inference_lstm_cell_659_layer_call_and_return_conditional_losses_4187675o
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
while_body_4191554
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_659_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_659_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_659_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_659_matmul_readvariableop_resource:2(F
4while_lstm_cell_659_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_659_biasadd_readvariableop_resource:(??*while/lstm_cell_659/BiasAdd/ReadVariableOp?)while/lstm_cell_659/MatMul/ReadVariableOp?+while/lstm_cell_659/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_659/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_659_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_659/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_659/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_659/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_659_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_659/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_659/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_659/addAddV2$while/lstm_cell_659/MatMul:product:0&while/lstm_cell_659/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_659/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_659_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_659/BiasAddBiasAddwhile/lstm_cell_659/add:z:02while/lstm_cell_659/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_659/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_659/splitSplit,while/lstm_cell_659/split/split_dim:output:0$while/lstm_cell_659/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_659/SigmoidSigmoid"while/lstm_cell_659/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_659/Sigmoid_1Sigmoid"while/lstm_cell_659/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_659/mulMul!while/lstm_cell_659/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_659/ReluRelu"while/lstm_cell_659/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_659/mul_1Mulwhile/lstm_cell_659/Sigmoid:y:0&while/lstm_cell_659/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_659/add_1AddV2while/lstm_cell_659/mul:z:0while/lstm_cell_659/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_659/Sigmoid_2Sigmoid"while/lstm_cell_659/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_659/Relu_1Reluwhile/lstm_cell_659/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_659/mul_2Mul!while/lstm_cell_659/Sigmoid_2:y:0(while/lstm_cell_659/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_659/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_659/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_659/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_659/BiasAdd/ReadVariableOp*^while/lstm_cell_659/MatMul/ReadVariableOp,^while/lstm_cell_659/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_659_biasadd_readvariableop_resource5while_lstm_cell_659_biasadd_readvariableop_resource_0"n
4while_lstm_cell_659_matmul_1_readvariableop_resource6while_lstm_cell_659_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_659_matmul_readvariableop_resource4while_lstm_cell_659_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_659/BiasAdd/ReadVariableOp*while/lstm_cell_659/BiasAdd/ReadVariableOp2V
)while/lstm_cell_659/MatMul/ReadVariableOp)while/lstm_cell_659/MatMul/ReadVariableOp2Z
+while/lstm_cell_659/MatMul_1/ReadVariableOp+while/lstm_cell_659/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_657_layer_call_and_return_conditional_losses_4188953

inputs?
,lstm_cell_657_matmul_readvariableop_resource:	?A
.lstm_cell_657_matmul_1_readvariableop_resource:	d?<
-lstm_cell_657_biasadd_readvariableop_resource:	?
identity??$lstm_cell_657/BiasAdd/ReadVariableOp?#lstm_cell_657/MatMul/ReadVariableOp?%lstm_cell_657/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_657/MatMul/ReadVariableOpReadVariableOp,lstm_cell_657_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_657/MatMulMatMulstrided_slice_2:output:0+lstm_cell_657/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_657/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_657_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_657/MatMul_1MatMulzeros:output:0-lstm_cell_657/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_657/addAddV2lstm_cell_657/MatMul:product:0 lstm_cell_657/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_657/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_657_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_657/BiasAddBiasAddlstm_cell_657/add:z:0,lstm_cell_657/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_657/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_657/splitSplit&lstm_cell_657/split/split_dim:output:0lstm_cell_657/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_657/SigmoidSigmoidlstm_cell_657/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_657/Sigmoid_1Sigmoidlstm_cell_657/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_657/mulMullstm_cell_657/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_657/ReluRelulstm_cell_657/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_657/mul_1Mullstm_cell_657/Sigmoid:y:0 lstm_cell_657/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_657/add_1AddV2lstm_cell_657/mul:z:0lstm_cell_657/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_657/Sigmoid_2Sigmoidlstm_cell_657/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_657/Relu_1Relulstm_cell_657/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_657/mul_2Mullstm_cell_657/Sigmoid_2:y:0"lstm_cell_657/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_657_matmul_readvariableop_resource.lstm_cell_657_matmul_1_readvariableop_resource-lstm_cell_657_biasadd_readvariableop_resource*
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
while_body_4188869*
condR
while_cond_4188868*K
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
NoOpNoOp%^lstm_cell_657/BiasAdd/ReadVariableOp$^lstm_cell_657/MatMul/ReadVariableOp&^lstm_cell_657/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_657/BiasAdd/ReadVariableOp$lstm_cell_657/BiasAdd/ReadVariableOp2J
#lstm_cell_657/MatMul/ReadVariableOp#lstm_cell_657/MatMul/ReadVariableOp2N
%lstm_cell_657/MatMul_1/ReadVariableOp%lstm_cell_657/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_657_layer_call_and_return_conditional_losses_4192041

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
while_cond_4188868
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4188868___redundant_placeholder05
1while_while_cond_4188868___redundant_placeholder15
1while_while_cond_4188868___redundant_placeholder25
1while_while_cond_4188868___redundant_placeholder3
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
while_body_4190465
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_657_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_657_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_657_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_657_matmul_readvariableop_resource:	?G
4while_lstm_cell_657_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_657_biasadd_readvariableop_resource:	???*while/lstm_cell_657/BiasAdd/ReadVariableOp?)while/lstm_cell_657/MatMul/ReadVariableOp?+while/lstm_cell_657/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_657/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_657_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_657/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_657/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_657/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_657_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_657/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_657/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_657/addAddV2$while/lstm_cell_657/MatMul:product:0&while/lstm_cell_657/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_657/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_657_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_657/BiasAddBiasAddwhile/lstm_cell_657/add:z:02while/lstm_cell_657/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_657/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_657/splitSplit,while/lstm_cell_657/split/split_dim:output:0$while/lstm_cell_657/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_657/SigmoidSigmoid"while/lstm_cell_657/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_657/Sigmoid_1Sigmoid"while/lstm_cell_657/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_657/mulMul!while/lstm_cell_657/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_657/ReluRelu"while/lstm_cell_657/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_657/mul_1Mulwhile/lstm_cell_657/Sigmoid:y:0&while/lstm_cell_657/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_657/add_1AddV2while/lstm_cell_657/mul:z:0while/lstm_cell_657/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_657/Sigmoid_2Sigmoid"while/lstm_cell_657/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_657/Relu_1Reluwhile/lstm_cell_657/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_657/mul_2Mul!while/lstm_cell_657/Sigmoid_2:y:0(while/lstm_cell_657/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_657/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_657/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_657/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_657/BiasAdd/ReadVariableOp*^while/lstm_cell_657/MatMul/ReadVariableOp,^while/lstm_cell_657/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_657_biasadd_readvariableop_resource5while_lstm_cell_657_biasadd_readvariableop_resource_0"n
4while_lstm_cell_657_matmul_1_readvariableop_resource6while_lstm_cell_657_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_657_matmul_readvariableop_resource4while_lstm_cell_657_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_657/BiasAdd/ReadVariableOp*while/lstm_cell_657/BiasAdd/ReadVariableOp2V
)while/lstm_cell_657/MatMul/ReadVariableOp)while/lstm_cell_657/MatMul/ReadVariableOp2Z
+while/lstm_cell_657/MatMul_1/ReadVariableOp+while/lstm_cell_657/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_4188172
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4188172___redundant_placeholder05
1while_while_cond_4188172___redundant_placeholder15
1while_while_cond_4188172___redundant_placeholder25
1while_while_cond_4188172___redundant_placeholder3
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
lstm_658_while_cond_4189419.
*lstm_658_while_lstm_658_while_loop_counter4
0lstm_658_while_lstm_658_while_maximum_iterations
lstm_658_while_placeholder 
lstm_658_while_placeholder_1 
lstm_658_while_placeholder_2 
lstm_658_while_placeholder_30
,lstm_658_while_less_lstm_658_strided_slice_1G
Clstm_658_while_lstm_658_while_cond_4189419___redundant_placeholder0G
Clstm_658_while_lstm_658_while_cond_4189419___redundant_placeholder1G
Clstm_658_while_lstm_658_while_cond_4189419___redundant_placeholder2G
Clstm_658_while_lstm_658_while_cond_4189419___redundant_placeholder3
lstm_658_while_identity
?
lstm_658/while/LessLesslstm_658_while_placeholder,lstm_658_while_less_lstm_658_strided_slice_1*
T0*
_output_shapes
: ]
lstm_658/while/IdentityIdentitylstm_658/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_658_while_identity lstm_658/while/Identity:output:0*(
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
*__inference_lstm_658_layer_call_fn_4190725

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
E__inference_lstm_658_layer_call_and_return_conditional_losses_4188257s
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
E__inference_lstm_658_layer_call_and_return_conditional_losses_4190879
inputs_0?
,lstm_cell_658_matmul_readvariableop_resource:	d?A
.lstm_cell_658_matmul_1_readvariableop_resource:	2?<
-lstm_cell_658_biasadd_readvariableop_resource:	?
identity??$lstm_cell_658/BiasAdd/ReadVariableOp?#lstm_cell_658/MatMul/ReadVariableOp?%lstm_cell_658/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_658/MatMul/ReadVariableOpReadVariableOp,lstm_cell_658_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_658/MatMulMatMulstrided_slice_2:output:0+lstm_cell_658/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_658/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_658_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_658/MatMul_1MatMulzeros:output:0-lstm_cell_658/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_658/addAddV2lstm_cell_658/MatMul:product:0 lstm_cell_658/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_658/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_658_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_658/BiasAddBiasAddlstm_cell_658/add:z:0,lstm_cell_658/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_658/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_658/splitSplit&lstm_cell_658/split/split_dim:output:0lstm_cell_658/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_658/SigmoidSigmoidlstm_cell_658/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_658/Sigmoid_1Sigmoidlstm_cell_658/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_658/mulMullstm_cell_658/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_658/ReluRelulstm_cell_658/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_658/mul_1Mullstm_cell_658/Sigmoid:y:0 lstm_cell_658/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_658/add_1AddV2lstm_cell_658/mul:z:0lstm_cell_658/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_658/Sigmoid_2Sigmoidlstm_cell_658/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_658/Relu_1Relulstm_cell_658/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_658/mul_2Mullstm_cell_658/Sigmoid_2:y:0"lstm_cell_658/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_658_matmul_readvariableop_resource.lstm_cell_658_matmul_1_readvariableop_resource-lstm_cell_658_biasadd_readvariableop_resource*
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
while_body_4190795*
condR
while_cond_4190794*K
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
NoOpNoOp%^lstm_cell_658/BiasAdd/ReadVariableOp$^lstm_cell_658/MatMul/ReadVariableOp&^lstm_cell_658/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_658/BiasAdd/ReadVariableOp$lstm_cell_658/BiasAdd/ReadVariableOp2J
#lstm_cell_658/MatMul/ReadVariableOp#lstm_cell_658/MatMul/ReadVariableOp2N
%lstm_cell_658/MatMul_1/ReadVariableOp%lstm_cell_658/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?
?
*__inference_lstm_657_layer_call_fn_4190120

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
E__inference_lstm_657_layer_call_and_return_conditional_losses_4188953s
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
?
K__inference_sequential_219_layer_call_and_return_conditional_losses_4188432

inputs#
lstm_657_4188108:	?#
lstm_657_4188110:	d?
lstm_657_4188112:	?#
lstm_658_4188258:	d?#
lstm_658_4188260:	2?
lstm_658_4188262:	?"
lstm_659_4188408:2("
lstm_659_4188410:
(
lstm_659_4188412:(#
dense_219_4188426:

dense_219_4188428:
identity??!dense_219/StatefulPartitionedCall? lstm_657/StatefulPartitionedCall? lstm_658/StatefulPartitionedCall? lstm_659/StatefulPartitionedCall?
 lstm_657/StatefulPartitionedCallStatefulPartitionedCallinputslstm_657_4188108lstm_657_4188110lstm_657_4188112*
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
E__inference_lstm_657_layer_call_and_return_conditional_losses_4188107?
 lstm_658/StatefulPartitionedCallStatefulPartitionedCall)lstm_657/StatefulPartitionedCall:output:0lstm_658_4188258lstm_658_4188260lstm_658_4188262*
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
E__inference_lstm_658_layer_call_and_return_conditional_losses_4188257?
 lstm_659/StatefulPartitionedCallStatefulPartitionedCall)lstm_658/StatefulPartitionedCall:output:0lstm_659_4188408lstm_659_4188410lstm_659_4188412*
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
E__inference_lstm_659_layer_call_and_return_conditional_losses_4188407?
!dense_219/StatefulPartitionedCallStatefulPartitionedCall)lstm_659/StatefulPartitionedCall:output:0dense_219_4188426dense_219_4188428*
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
F__inference_dense_219_layer_call_and_return_conditional_losses_4188425y
IdentityIdentity*dense_219/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_219/StatefulPartitionedCall!^lstm_657/StatefulPartitionedCall!^lstm_658/StatefulPartitionedCall!^lstm_659/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_219/StatefulPartitionedCall!dense_219/StatefulPartitionedCall2D
 lstm_657/StatefulPartitionedCall lstm_657/StatefulPartitionedCall2D
 lstm_658/StatefulPartitionedCall lstm_658/StatefulPartitionedCall2D
 lstm_659/StatefulPartitionedCall lstm_659/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
+__inference_dense_219_layer_call_fn_4191933

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
F__inference_dense_219_layer_call_and_return_conditional_losses_4188425o
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
while_cond_4186988
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4186988___redundant_placeholder05
1while_while_cond_4186988___redundant_placeholder15
1while_while_cond_4186988___redundant_placeholder25
1while_while_cond_4186988___redundant_placeholder3
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
*sequential_219_lstm_659_while_body_4186818L
Hsequential_219_lstm_659_while_sequential_219_lstm_659_while_loop_counterR
Nsequential_219_lstm_659_while_sequential_219_lstm_659_while_maximum_iterations-
)sequential_219_lstm_659_while_placeholder/
+sequential_219_lstm_659_while_placeholder_1/
+sequential_219_lstm_659_while_placeholder_2/
+sequential_219_lstm_659_while_placeholder_3K
Gsequential_219_lstm_659_while_sequential_219_lstm_659_strided_slice_1_0?
?sequential_219_lstm_659_while_tensorarrayv2read_tensorlistgetitem_sequential_219_lstm_659_tensorarrayunstack_tensorlistfromtensor_0^
Lsequential_219_lstm_659_while_lstm_cell_659_matmul_readvariableop_resource_0:2(`
Nsequential_219_lstm_659_while_lstm_cell_659_matmul_1_readvariableop_resource_0:
([
Msequential_219_lstm_659_while_lstm_cell_659_biasadd_readvariableop_resource_0:(*
&sequential_219_lstm_659_while_identity,
(sequential_219_lstm_659_while_identity_1,
(sequential_219_lstm_659_while_identity_2,
(sequential_219_lstm_659_while_identity_3,
(sequential_219_lstm_659_while_identity_4,
(sequential_219_lstm_659_while_identity_5I
Esequential_219_lstm_659_while_sequential_219_lstm_659_strided_slice_1?
?sequential_219_lstm_659_while_tensorarrayv2read_tensorlistgetitem_sequential_219_lstm_659_tensorarrayunstack_tensorlistfromtensor\
Jsequential_219_lstm_659_while_lstm_cell_659_matmul_readvariableop_resource:2(^
Lsequential_219_lstm_659_while_lstm_cell_659_matmul_1_readvariableop_resource:
(Y
Ksequential_219_lstm_659_while_lstm_cell_659_biasadd_readvariableop_resource:(??Bsequential_219/lstm_659/while/lstm_cell_659/BiasAdd/ReadVariableOp?Asequential_219/lstm_659/while/lstm_cell_659/MatMul/ReadVariableOp?Csequential_219/lstm_659/while/lstm_cell_659/MatMul_1/ReadVariableOp?
Osequential_219/lstm_659/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
Asequential_219/lstm_659/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_219_lstm_659_while_tensorarrayv2read_tensorlistgetitem_sequential_219_lstm_659_tensorarrayunstack_tensorlistfromtensor_0)sequential_219_lstm_659_while_placeholderXsequential_219/lstm_659/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
Asequential_219/lstm_659/while/lstm_cell_659/MatMul/ReadVariableOpReadVariableOpLsequential_219_lstm_659_while_lstm_cell_659_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
2sequential_219/lstm_659/while/lstm_cell_659/MatMulMatMulHsequential_219/lstm_659/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_219/lstm_659/while/lstm_cell_659/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
Csequential_219/lstm_659/while/lstm_cell_659/MatMul_1/ReadVariableOpReadVariableOpNsequential_219_lstm_659_while_lstm_cell_659_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
4sequential_219/lstm_659/while/lstm_cell_659/MatMul_1MatMul+sequential_219_lstm_659_while_placeholder_2Ksequential_219/lstm_659/while/lstm_cell_659/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
/sequential_219/lstm_659/while/lstm_cell_659/addAddV2<sequential_219/lstm_659/while/lstm_cell_659/MatMul:product:0>sequential_219/lstm_659/while/lstm_cell_659/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
Bsequential_219/lstm_659/while/lstm_cell_659/BiasAdd/ReadVariableOpReadVariableOpMsequential_219_lstm_659_while_lstm_cell_659_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
3sequential_219/lstm_659/while/lstm_cell_659/BiasAddBiasAdd3sequential_219/lstm_659/while/lstm_cell_659/add:z:0Jsequential_219/lstm_659/while/lstm_cell_659/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(}
;sequential_219/lstm_659/while/lstm_cell_659/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_219/lstm_659/while/lstm_cell_659/splitSplitDsequential_219/lstm_659/while/lstm_cell_659/split/split_dim:output:0<sequential_219/lstm_659/while/lstm_cell_659/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
3sequential_219/lstm_659/while/lstm_cell_659/SigmoidSigmoid:sequential_219/lstm_659/while/lstm_cell_659/split:output:0*
T0*'
_output_shapes
:?????????
?
5sequential_219/lstm_659/while/lstm_cell_659/Sigmoid_1Sigmoid:sequential_219/lstm_659/while/lstm_cell_659/split:output:1*
T0*'
_output_shapes
:?????????
?
/sequential_219/lstm_659/while/lstm_cell_659/mulMul9sequential_219/lstm_659/while/lstm_cell_659/Sigmoid_1:y:0+sequential_219_lstm_659_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
0sequential_219/lstm_659/while/lstm_cell_659/ReluRelu:sequential_219/lstm_659/while/lstm_cell_659/split:output:2*
T0*'
_output_shapes
:?????????
?
1sequential_219/lstm_659/while/lstm_cell_659/mul_1Mul7sequential_219/lstm_659/while/lstm_cell_659/Sigmoid:y:0>sequential_219/lstm_659/while/lstm_cell_659/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
1sequential_219/lstm_659/while/lstm_cell_659/add_1AddV23sequential_219/lstm_659/while/lstm_cell_659/mul:z:05sequential_219/lstm_659/while/lstm_cell_659/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
5sequential_219/lstm_659/while/lstm_cell_659/Sigmoid_2Sigmoid:sequential_219/lstm_659/while/lstm_cell_659/split:output:3*
T0*'
_output_shapes
:?????????
?
2sequential_219/lstm_659/while/lstm_cell_659/Relu_1Relu5sequential_219/lstm_659/while/lstm_cell_659/add_1:z:0*
T0*'
_output_shapes
:?????????
?
1sequential_219/lstm_659/while/lstm_cell_659/mul_2Mul9sequential_219/lstm_659/while/lstm_cell_659/Sigmoid_2:y:0@sequential_219/lstm_659/while/lstm_cell_659/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
Bsequential_219/lstm_659/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_219_lstm_659_while_placeholder_1)sequential_219_lstm_659_while_placeholder5sequential_219/lstm_659/while/lstm_cell_659/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_219/lstm_659/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_219/lstm_659/while/addAddV2)sequential_219_lstm_659_while_placeholder,sequential_219/lstm_659/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_219/lstm_659/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_219/lstm_659/while/add_1AddV2Hsequential_219_lstm_659_while_sequential_219_lstm_659_while_loop_counter.sequential_219/lstm_659/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_219/lstm_659/while/IdentityIdentity'sequential_219/lstm_659/while/add_1:z:0#^sequential_219/lstm_659/while/NoOp*
T0*
_output_shapes
: ?
(sequential_219/lstm_659/while/Identity_1IdentityNsequential_219_lstm_659_while_sequential_219_lstm_659_while_maximum_iterations#^sequential_219/lstm_659/while/NoOp*
T0*
_output_shapes
: ?
(sequential_219/lstm_659/while/Identity_2Identity%sequential_219/lstm_659/while/add:z:0#^sequential_219/lstm_659/while/NoOp*
T0*
_output_shapes
: ?
(sequential_219/lstm_659/while/Identity_3IdentityRsequential_219/lstm_659/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_219/lstm_659/while/NoOp*
T0*
_output_shapes
: ?
(sequential_219/lstm_659/while/Identity_4Identity5sequential_219/lstm_659/while/lstm_cell_659/mul_2:z:0#^sequential_219/lstm_659/while/NoOp*
T0*'
_output_shapes
:?????????
?
(sequential_219/lstm_659/while/Identity_5Identity5sequential_219/lstm_659/while/lstm_cell_659/add_1:z:0#^sequential_219/lstm_659/while/NoOp*
T0*'
_output_shapes
:?????????
?
"sequential_219/lstm_659/while/NoOpNoOpC^sequential_219/lstm_659/while/lstm_cell_659/BiasAdd/ReadVariableOpB^sequential_219/lstm_659/while/lstm_cell_659/MatMul/ReadVariableOpD^sequential_219/lstm_659/while/lstm_cell_659/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_219_lstm_659_while_identity/sequential_219/lstm_659/while/Identity:output:0"]
(sequential_219_lstm_659_while_identity_11sequential_219/lstm_659/while/Identity_1:output:0"]
(sequential_219_lstm_659_while_identity_21sequential_219/lstm_659/while/Identity_2:output:0"]
(sequential_219_lstm_659_while_identity_31sequential_219/lstm_659/while/Identity_3:output:0"]
(sequential_219_lstm_659_while_identity_41sequential_219/lstm_659/while/Identity_4:output:0"]
(sequential_219_lstm_659_while_identity_51sequential_219/lstm_659/while/Identity_5:output:0"?
Ksequential_219_lstm_659_while_lstm_cell_659_biasadd_readvariableop_resourceMsequential_219_lstm_659_while_lstm_cell_659_biasadd_readvariableop_resource_0"?
Lsequential_219_lstm_659_while_lstm_cell_659_matmul_1_readvariableop_resourceNsequential_219_lstm_659_while_lstm_cell_659_matmul_1_readvariableop_resource_0"?
Jsequential_219_lstm_659_while_lstm_cell_659_matmul_readvariableop_resourceLsequential_219_lstm_659_while_lstm_cell_659_matmul_readvariableop_resource_0"?
Esequential_219_lstm_659_while_sequential_219_lstm_659_strided_slice_1Gsequential_219_lstm_659_while_sequential_219_lstm_659_strided_slice_1_0"?
?sequential_219_lstm_659_while_tensorarrayv2read_tensorlistgetitem_sequential_219_lstm_659_tensorarrayunstack_tensorlistfromtensor?sequential_219_lstm_659_while_tensorarrayv2read_tensorlistgetitem_sequential_219_lstm_659_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2?
Bsequential_219/lstm_659/while/lstm_cell_659/BiasAdd/ReadVariableOpBsequential_219/lstm_659/while/lstm_cell_659/BiasAdd/ReadVariableOp2?
Asequential_219/lstm_659/while/lstm_cell_659/MatMul/ReadVariableOpAsequential_219/lstm_659/while/lstm_cell_659/MatMul/ReadVariableOp2?
Csequential_219/lstm_659/while/lstm_cell_659/MatMul_1/ReadVariableOpCsequential_219/lstm_659/while/lstm_cell_659/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_4188023
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_657_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_657_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_657_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_657_matmul_readvariableop_resource:	?G
4while_lstm_cell_657_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_657_biasadd_readvariableop_resource:	???*while/lstm_cell_657/BiasAdd/ReadVariableOp?)while/lstm_cell_657/MatMul/ReadVariableOp?+while/lstm_cell_657/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_657/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_657_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_657/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_657/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_657/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_657_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_657/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_657/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_657/addAddV2$while/lstm_cell_657/MatMul:product:0&while/lstm_cell_657/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_657/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_657_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_657/BiasAddBiasAddwhile/lstm_cell_657/add:z:02while/lstm_cell_657/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_657/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_657/splitSplit,while/lstm_cell_657/split/split_dim:output:0$while/lstm_cell_657/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_657/SigmoidSigmoid"while/lstm_cell_657/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_657/Sigmoid_1Sigmoid"while/lstm_cell_657/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_657/mulMul!while/lstm_cell_657/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_657/ReluRelu"while/lstm_cell_657/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_657/mul_1Mulwhile/lstm_cell_657/Sigmoid:y:0&while/lstm_cell_657/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_657/add_1AddV2while/lstm_cell_657/mul:z:0while/lstm_cell_657/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_657/Sigmoid_2Sigmoid"while/lstm_cell_657/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_657/Relu_1Reluwhile/lstm_cell_657/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_657/mul_2Mul!while/lstm_cell_657/Sigmoid_2:y:0(while/lstm_cell_657/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_657/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_657/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_657/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_657/BiasAdd/ReadVariableOp*^while/lstm_cell_657/MatMul/ReadVariableOp,^while/lstm_cell_657/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_657_biasadd_readvariableop_resource5while_lstm_cell_657_biasadd_readvariableop_resource_0"n
4while_lstm_cell_657_matmul_1_readvariableop_resource6while_lstm_cell_657_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_657_matmul_readvariableop_resource4while_lstm_cell_657_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_657/BiasAdd/ReadVariableOp*while/lstm_cell_657/BiasAdd/ReadVariableOp2V
)while/lstm_cell_657/MatMul/ReadVariableOp)while/lstm_cell_657/MatMul/ReadVariableOp2Z
+while/lstm_cell_657/MatMul_1/ReadVariableOp+while/lstm_cell_657/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

lstm_658_while_body_4189847.
*lstm_658_while_lstm_658_while_loop_counter4
0lstm_658_while_lstm_658_while_maximum_iterations
lstm_658_while_placeholder 
lstm_658_while_placeholder_1 
lstm_658_while_placeholder_2 
lstm_658_while_placeholder_3-
)lstm_658_while_lstm_658_strided_slice_1_0i
elstm_658_while_tensorarrayv2read_tensorlistgetitem_lstm_658_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_658_while_lstm_cell_658_matmul_readvariableop_resource_0:	d?R
?lstm_658_while_lstm_cell_658_matmul_1_readvariableop_resource_0:	2?M
>lstm_658_while_lstm_cell_658_biasadd_readvariableop_resource_0:	?
lstm_658_while_identity
lstm_658_while_identity_1
lstm_658_while_identity_2
lstm_658_while_identity_3
lstm_658_while_identity_4
lstm_658_while_identity_5+
'lstm_658_while_lstm_658_strided_slice_1g
clstm_658_while_tensorarrayv2read_tensorlistgetitem_lstm_658_tensorarrayunstack_tensorlistfromtensorN
;lstm_658_while_lstm_cell_658_matmul_readvariableop_resource:	d?P
=lstm_658_while_lstm_cell_658_matmul_1_readvariableop_resource:	2?K
<lstm_658_while_lstm_cell_658_biasadd_readvariableop_resource:	???3lstm_658/while/lstm_cell_658/BiasAdd/ReadVariableOp?2lstm_658/while/lstm_cell_658/MatMul/ReadVariableOp?4lstm_658/while/lstm_cell_658/MatMul_1/ReadVariableOp?
@lstm_658/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_658/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_658_while_tensorarrayv2read_tensorlistgetitem_lstm_658_tensorarrayunstack_tensorlistfromtensor_0lstm_658_while_placeholderIlstm_658/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_658/while/lstm_cell_658/MatMul/ReadVariableOpReadVariableOp=lstm_658_while_lstm_cell_658_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_658/while/lstm_cell_658/MatMulMatMul9lstm_658/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_658/while/lstm_cell_658/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_658/while/lstm_cell_658/MatMul_1/ReadVariableOpReadVariableOp?lstm_658_while_lstm_cell_658_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_658/while/lstm_cell_658/MatMul_1MatMullstm_658_while_placeholder_2<lstm_658/while/lstm_cell_658/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_658/while/lstm_cell_658/addAddV2-lstm_658/while/lstm_cell_658/MatMul:product:0/lstm_658/while/lstm_cell_658/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_658/while/lstm_cell_658/BiasAdd/ReadVariableOpReadVariableOp>lstm_658_while_lstm_cell_658_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_658/while/lstm_cell_658/BiasAddBiasAdd$lstm_658/while/lstm_cell_658/add:z:0;lstm_658/while/lstm_cell_658/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_658/while/lstm_cell_658/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_658/while/lstm_cell_658/splitSplit5lstm_658/while/lstm_cell_658/split/split_dim:output:0-lstm_658/while/lstm_cell_658/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_658/while/lstm_cell_658/SigmoidSigmoid+lstm_658/while/lstm_cell_658/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_658/while/lstm_cell_658/Sigmoid_1Sigmoid+lstm_658/while/lstm_cell_658/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_658/while/lstm_cell_658/mulMul*lstm_658/while/lstm_cell_658/Sigmoid_1:y:0lstm_658_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_658/while/lstm_cell_658/ReluRelu+lstm_658/while/lstm_cell_658/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_658/while/lstm_cell_658/mul_1Mul(lstm_658/while/lstm_cell_658/Sigmoid:y:0/lstm_658/while/lstm_cell_658/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_658/while/lstm_cell_658/add_1AddV2$lstm_658/while/lstm_cell_658/mul:z:0&lstm_658/while/lstm_cell_658/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_658/while/lstm_cell_658/Sigmoid_2Sigmoid+lstm_658/while/lstm_cell_658/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_658/while/lstm_cell_658/Relu_1Relu&lstm_658/while/lstm_cell_658/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_658/while/lstm_cell_658/mul_2Mul*lstm_658/while/lstm_cell_658/Sigmoid_2:y:01lstm_658/while/lstm_cell_658/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_658/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_658_while_placeholder_1lstm_658_while_placeholder&lstm_658/while/lstm_cell_658/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_658/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_658/while/addAddV2lstm_658_while_placeholderlstm_658/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_658/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_658/while/add_1AddV2*lstm_658_while_lstm_658_while_loop_counterlstm_658/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_658/while/IdentityIdentitylstm_658/while/add_1:z:0^lstm_658/while/NoOp*
T0*
_output_shapes
: ?
lstm_658/while/Identity_1Identity0lstm_658_while_lstm_658_while_maximum_iterations^lstm_658/while/NoOp*
T0*
_output_shapes
: t
lstm_658/while/Identity_2Identitylstm_658/while/add:z:0^lstm_658/while/NoOp*
T0*
_output_shapes
: ?
lstm_658/while/Identity_3IdentityClstm_658/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_658/while/NoOp*
T0*
_output_shapes
: ?
lstm_658/while/Identity_4Identity&lstm_658/while/lstm_cell_658/mul_2:z:0^lstm_658/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_658/while/Identity_5Identity&lstm_658/while/lstm_cell_658/add_1:z:0^lstm_658/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_658/while/NoOpNoOp4^lstm_658/while/lstm_cell_658/BiasAdd/ReadVariableOp3^lstm_658/while/lstm_cell_658/MatMul/ReadVariableOp5^lstm_658/while/lstm_cell_658/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_658_while_identity lstm_658/while/Identity:output:0"?
lstm_658_while_identity_1"lstm_658/while/Identity_1:output:0"?
lstm_658_while_identity_2"lstm_658/while/Identity_2:output:0"?
lstm_658_while_identity_3"lstm_658/while/Identity_3:output:0"?
lstm_658_while_identity_4"lstm_658/while/Identity_4:output:0"?
lstm_658_while_identity_5"lstm_658/while/Identity_5:output:0"T
'lstm_658_while_lstm_658_strided_slice_1)lstm_658_while_lstm_658_strided_slice_1_0"~
<lstm_658_while_lstm_cell_658_biasadd_readvariableop_resource>lstm_658_while_lstm_cell_658_biasadd_readvariableop_resource_0"?
=lstm_658_while_lstm_cell_658_matmul_1_readvariableop_resource?lstm_658_while_lstm_cell_658_matmul_1_readvariableop_resource_0"|
;lstm_658_while_lstm_cell_658_matmul_readvariableop_resource=lstm_658_while_lstm_cell_658_matmul_readvariableop_resource_0"?
clstm_658_while_tensorarrayv2read_tensorlistgetitem_lstm_658_tensorarrayunstack_tensorlistfromtensorelstm_658_while_tensorarrayv2read_tensorlistgetitem_lstm_658_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_658/while/lstm_cell_658/BiasAdd/ReadVariableOp3lstm_658/while/lstm_cell_658/BiasAdd/ReadVariableOp2h
2lstm_658/while/lstm_cell_658/MatMul/ReadVariableOp2lstm_658/while/lstm_cell_658/MatMul/ReadVariableOp2l
4lstm_658/while/lstm_cell_658/MatMul_1/ReadVariableOp4lstm_658/while/lstm_cell_658/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_4187530
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_658_4187554_0:	d?0
while_lstm_cell_658_4187556_0:	2?,
while_lstm_cell_658_4187558_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_658_4187554:	d?.
while_lstm_cell_658_4187556:	2?*
while_lstm_cell_658_4187558:	???+while/lstm_cell_658/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_658/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_658_4187554_0while_lstm_cell_658_4187556_0while_lstm_cell_658_4187558_0*
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
J__inference_lstm_cell_658_layer_call_and_return_conditional_losses_4187471?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_658/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_658/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_658/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_658/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_658_4187554while_lstm_cell_658_4187554_0"<
while_lstm_cell_658_4187556while_lstm_cell_658_4187556_0"<
while_lstm_cell_658_4187558while_lstm_cell_658_4187558_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_658/StatefulPartitionedCall+while/lstm_cell_658/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
F__inference_dense_219_layer_call_and_return_conditional_losses_4191943

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
while_cond_4191839
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4191839___redundant_placeholder05
1while_while_cond_4191839___redundant_placeholder15
1while_while_cond_4191839___redundant_placeholder25
1while_while_cond_4191839___redundant_placeholder3
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
#__inference__traced_restore_4192510
file_prefix3
!assignvariableop_dense_219_kernel:
/
!assignvariableop_1_dense_219_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: C
0assignvariableop_7_lstm_657_lstm_cell_657_kernel:	?M
:assignvariableop_8_lstm_657_lstm_cell_657_recurrent_kernel:	d?=
.assignvariableop_9_lstm_657_lstm_cell_657_bias:	?D
1assignvariableop_10_lstm_658_lstm_cell_658_kernel:	d?N
;assignvariableop_11_lstm_658_lstm_cell_658_recurrent_kernel:	2?>
/assignvariableop_12_lstm_658_lstm_cell_658_bias:	?C
1assignvariableop_13_lstm_659_lstm_cell_659_kernel:2(M
;assignvariableop_14_lstm_659_lstm_cell_659_recurrent_kernel:
(=
/assignvariableop_15_lstm_659_lstm_cell_659_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: =
+assignvariableop_18_adam_dense_219_kernel_m:
7
)assignvariableop_19_adam_dense_219_bias_m:K
8assignvariableop_20_adam_lstm_657_lstm_cell_657_kernel_m:	?U
Bassignvariableop_21_adam_lstm_657_lstm_cell_657_recurrent_kernel_m:	d?E
6assignvariableop_22_adam_lstm_657_lstm_cell_657_bias_m:	?K
8assignvariableop_23_adam_lstm_658_lstm_cell_658_kernel_m:	d?U
Bassignvariableop_24_adam_lstm_658_lstm_cell_658_recurrent_kernel_m:	2?E
6assignvariableop_25_adam_lstm_658_lstm_cell_658_bias_m:	?J
8assignvariableop_26_adam_lstm_659_lstm_cell_659_kernel_m:2(T
Bassignvariableop_27_adam_lstm_659_lstm_cell_659_recurrent_kernel_m:
(D
6assignvariableop_28_adam_lstm_659_lstm_cell_659_bias_m:(=
+assignvariableop_29_adam_dense_219_kernel_v:
7
)assignvariableop_30_adam_dense_219_bias_v:K
8assignvariableop_31_adam_lstm_657_lstm_cell_657_kernel_v:	?U
Bassignvariableop_32_adam_lstm_657_lstm_cell_657_recurrent_kernel_v:	d?E
6assignvariableop_33_adam_lstm_657_lstm_cell_657_bias_v:	?K
8assignvariableop_34_adam_lstm_658_lstm_cell_658_kernel_v:	d?U
Bassignvariableop_35_adam_lstm_658_lstm_cell_658_recurrent_kernel_v:	2?E
6assignvariableop_36_adam_lstm_658_lstm_cell_658_bias_v:	?J
8assignvariableop_37_adam_lstm_659_lstm_cell_659_kernel_v:2(T
Bassignvariableop_38_adam_lstm_659_lstm_cell_659_recurrent_kernel_v:
(D
6assignvariableop_39_adam_lstm_659_lstm_cell_659_bias_v:(
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
AssignVariableOpAssignVariableOp!assignvariableop_dense_219_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_219_biasIdentity_1:output:0"/device:CPU:0*
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
AssignVariableOp_7AssignVariableOp0assignvariableop_7_lstm_657_lstm_cell_657_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp:assignvariableop_8_lstm_657_lstm_cell_657_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_657_lstm_cell_657_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp1assignvariableop_10_lstm_658_lstm_cell_658_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp;assignvariableop_11_lstm_658_lstm_cell_658_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp/assignvariableop_12_lstm_658_lstm_cell_658_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp1assignvariableop_13_lstm_659_lstm_cell_659_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp;assignvariableop_14_lstm_659_lstm_cell_659_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp/assignvariableop_15_lstm_659_lstm_cell_659_biasIdentity_15:output:0"/device:CPU:0*
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
AssignVariableOp_18AssignVariableOp+assignvariableop_18_adam_dense_219_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp)assignvariableop_19_adam_dense_219_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp8assignvariableop_20_adam_lstm_657_lstm_cell_657_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOpBassignvariableop_21_adam_lstm_657_lstm_cell_657_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp6assignvariableop_22_adam_lstm_657_lstm_cell_657_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp8assignvariableop_23_adam_lstm_658_lstm_cell_658_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOpBassignvariableop_24_adam_lstm_658_lstm_cell_658_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_658_lstm_cell_658_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp8assignvariableop_26_adam_lstm_659_lstm_cell_659_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOpBassignvariableop_27_adam_lstm_659_lstm_cell_659_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_lstm_659_lstm_cell_659_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp+assignvariableop_29_adam_dense_219_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_dense_219_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp8assignvariableop_31_adam_lstm_657_lstm_cell_657_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOpBassignvariableop_32_adam_lstm_657_lstm_cell_657_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOp6assignvariableop_33_adam_lstm_657_lstm_cell_657_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOp8assignvariableop_34_adam_lstm_658_lstm_cell_658_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOpBassignvariableop_35_adam_lstm_658_lstm_cell_658_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adam_lstm_658_lstm_cell_658_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_37AssignVariableOp8assignvariableop_37_adam_lstm_659_lstm_cell_659_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_38AssignVariableOpBassignvariableop_38_adam_lstm_659_lstm_cell_659_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_lstm_659_lstm_cell_659_bias_vIdentity_39:output:0"/device:CPU:0*
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
/__inference_lstm_cell_657_layer_call_fn_4191960

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
J__inference_lstm_cell_657_layer_call_and_return_conditional_losses_4186975o
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

?
0__inference_sequential_219_layer_call_fn_4189195

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
K__inference_sequential_219_layer_call_and_return_conditional_losses_4188432o
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
J__inference_lstm_cell_659_layer_call_and_return_conditional_losses_4192205

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
lstm_659_while_cond_4189558.
*lstm_659_while_lstm_659_while_loop_counter4
0lstm_659_while_lstm_659_while_maximum_iterations
lstm_659_while_placeholder 
lstm_659_while_placeholder_1 
lstm_659_while_placeholder_2 
lstm_659_while_placeholder_30
,lstm_659_while_less_lstm_659_strided_slice_1G
Clstm_659_while_lstm_659_while_cond_4189558___redundant_placeholder0G
Clstm_659_while_lstm_659_while_cond_4189558___redundant_placeholder1G
Clstm_659_while_lstm_659_while_cond_4189558___redundant_placeholder2G
Clstm_659_while_lstm_659_while_cond_4189558___redundant_placeholder3
lstm_659_while_identity
?
lstm_659/while/LessLesslstm_659_while_placeholder,lstm_659_while_less_lstm_659_strided_slice_1*
T0*
_output_shapes
: ]
lstm_659/while/IdentityIdentitylstm_659/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_659_while_identity lstm_659/while/Identity:output:0*(
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
while_body_4191081
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_658_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_658_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_658_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_658_matmul_readvariableop_resource:	d?G
4while_lstm_cell_658_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_658_biasadd_readvariableop_resource:	???*while/lstm_cell_658/BiasAdd/ReadVariableOp?)while/lstm_cell_658/MatMul/ReadVariableOp?+while/lstm_cell_658/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_658/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_658_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_658/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_658/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_658/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_658_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_658/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_658/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_658/addAddV2$while/lstm_cell_658/MatMul:product:0&while/lstm_cell_658/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_658/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_658_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_658/BiasAddBiasAddwhile/lstm_cell_658/add:z:02while/lstm_cell_658/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_658/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_658/splitSplit,while/lstm_cell_658/split/split_dim:output:0$while/lstm_cell_658/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_658/SigmoidSigmoid"while/lstm_cell_658/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_658/Sigmoid_1Sigmoid"while/lstm_cell_658/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_658/mulMul!while/lstm_cell_658/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_658/ReluRelu"while/lstm_cell_658/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_658/mul_1Mulwhile/lstm_cell_658/Sigmoid:y:0&while/lstm_cell_658/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_658/add_1AddV2while/lstm_cell_658/mul:z:0while/lstm_cell_658/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_658/Sigmoid_2Sigmoid"while/lstm_cell_658/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_658/Relu_1Reluwhile/lstm_cell_658/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_658/mul_2Mul!while/lstm_cell_658/Sigmoid_2:y:0(while/lstm_cell_658/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_658/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_658/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_658/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_658/BiasAdd/ReadVariableOp*^while/lstm_cell_658/MatMul/ReadVariableOp,^while/lstm_cell_658/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_658_biasadd_readvariableop_resource5while_lstm_cell_658_biasadd_readvariableop_resource_0"n
4while_lstm_cell_658_matmul_1_readvariableop_resource6while_lstm_cell_658_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_658_matmul_readvariableop_resource4while_lstm_cell_658_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_658/BiasAdd/ReadVariableOp*while/lstm_cell_658/BiasAdd/ReadVariableOp2V
)while/lstm_cell_658/MatMul/ReadVariableOp)while/lstm_cell_658/MatMul/ReadVariableOp2Z
+while/lstm_cell_658/MatMul_1/ReadVariableOp+while/lstm_cell_658/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_4187338
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4187338___redundant_placeholder05
1while_while_cond_4187338___redundant_placeholder15
1while_while_cond_4187338___redundant_placeholder25
1while_while_cond_4187338___redundant_placeholder3
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
J__inference_lstm_cell_658_layer_call_and_return_conditional_losses_4192139

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
lstm_657_input;
 serving_default_lstm_657_input:0?????????=
	dense_2190
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
2dense_219/kernel
:2dense_219/bias
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
0:.	?2lstm_657/lstm_cell_657/kernel
::8	d?2'lstm_657/lstm_cell_657/recurrent_kernel
*:(?2lstm_657/lstm_cell_657/bias
0:.	d?2lstm_658/lstm_cell_658/kernel
::8	2?2'lstm_658/lstm_cell_658/recurrent_kernel
*:(?2lstm_658/lstm_cell_658/bias
/:-2(2lstm_659/lstm_cell_659/kernel
9:7
(2'lstm_659/lstm_cell_659/recurrent_kernel
):'(2lstm_659/lstm_cell_659/bias
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
2Adam/dense_219/kernel/m
!:2Adam/dense_219/bias/m
5:3	?2$Adam/lstm_657/lstm_cell_657/kernel/m
?:=	d?2.Adam/lstm_657/lstm_cell_657/recurrent_kernel/m
/:-?2"Adam/lstm_657/lstm_cell_657/bias/m
5:3	d?2$Adam/lstm_658/lstm_cell_658/kernel/m
?:=	2?2.Adam/lstm_658/lstm_cell_658/recurrent_kernel/m
/:-?2"Adam/lstm_658/lstm_cell_658/bias/m
4:22(2$Adam/lstm_659/lstm_cell_659/kernel/m
>:<
(2.Adam/lstm_659/lstm_cell_659/recurrent_kernel/m
.:,(2"Adam/lstm_659/lstm_cell_659/bias/m
':%
2Adam/dense_219/kernel/v
!:2Adam/dense_219/bias/v
5:3	?2$Adam/lstm_657/lstm_cell_657/kernel/v
?:=	d?2.Adam/lstm_657/lstm_cell_657/recurrent_kernel/v
/:-?2"Adam/lstm_657/lstm_cell_657/bias/v
5:3	d?2$Adam/lstm_658/lstm_cell_658/kernel/v
?:=	2?2.Adam/lstm_658/lstm_cell_658/recurrent_kernel/v
/:-?2"Adam/lstm_658/lstm_cell_658/bias/v
4:22(2$Adam/lstm_659/lstm_cell_659/kernel/v
>:<
(2.Adam/lstm_659/lstm_cell_659/recurrent_kernel/v
.:,(2"Adam/lstm_659/lstm_cell_659/bias/v
?2?
0__inference_sequential_219_layer_call_fn_4188457
0__inference_sequential_219_layer_call_fn_4189195
0__inference_sequential_219_layer_call_fn_4189222
0__inference_sequential_219_layer_call_fn_4189073?
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
K__inference_sequential_219_layer_call_and_return_conditional_losses_4189649
K__inference_sequential_219_layer_call_and_return_conditional_losses_4190076
K__inference_sequential_219_layer_call_and_return_conditional_losses_4189103
K__inference_sequential_219_layer_call_and_return_conditional_losses_4189133?
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
"__inference__wrapped_model_4186908lstm_657_input"?
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
*__inference_lstm_657_layer_call_fn_4190087
*__inference_lstm_657_layer_call_fn_4190098
*__inference_lstm_657_layer_call_fn_4190109
*__inference_lstm_657_layer_call_fn_4190120?
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
E__inference_lstm_657_layer_call_and_return_conditional_losses_4190263
E__inference_lstm_657_layer_call_and_return_conditional_losses_4190406
E__inference_lstm_657_layer_call_and_return_conditional_losses_4190549
E__inference_lstm_657_layer_call_and_return_conditional_losses_4190692?
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
*__inference_lstm_658_layer_call_fn_4190703
*__inference_lstm_658_layer_call_fn_4190714
*__inference_lstm_658_layer_call_fn_4190725
*__inference_lstm_658_layer_call_fn_4190736?
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
E__inference_lstm_658_layer_call_and_return_conditional_losses_4190879
E__inference_lstm_658_layer_call_and_return_conditional_losses_4191022
E__inference_lstm_658_layer_call_and_return_conditional_losses_4191165
E__inference_lstm_658_layer_call_and_return_conditional_losses_4191308?
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
*__inference_lstm_659_layer_call_fn_4191319
*__inference_lstm_659_layer_call_fn_4191330
*__inference_lstm_659_layer_call_fn_4191341
*__inference_lstm_659_layer_call_fn_4191352?
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
E__inference_lstm_659_layer_call_and_return_conditional_losses_4191495
E__inference_lstm_659_layer_call_and_return_conditional_losses_4191638
E__inference_lstm_659_layer_call_and_return_conditional_losses_4191781
E__inference_lstm_659_layer_call_and_return_conditional_losses_4191924?
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
+__inference_dense_219_layer_call_fn_4191933?
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
F__inference_dense_219_layer_call_and_return_conditional_losses_4191943?
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
%__inference_signature_wrapper_4189168lstm_657_input"?
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
/__inference_lstm_cell_657_layer_call_fn_4191960
/__inference_lstm_cell_657_layer_call_fn_4191977?
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
J__inference_lstm_cell_657_layer_call_and_return_conditional_losses_4192009
J__inference_lstm_cell_657_layer_call_and_return_conditional_losses_4192041?
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
/__inference_lstm_cell_658_layer_call_fn_4192058
/__inference_lstm_cell_658_layer_call_fn_4192075?
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
J__inference_lstm_cell_658_layer_call_and_return_conditional_losses_4192107
J__inference_lstm_cell_658_layer_call_and_return_conditional_losses_4192139?
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
/__inference_lstm_cell_659_layer_call_fn_4192156
/__inference_lstm_cell_659_layer_call_fn_4192173?
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
J__inference_lstm_cell_659_layer_call_and_return_conditional_losses_4192205
J__inference_lstm_cell_659_layer_call_and_return_conditional_losses_4192237?
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
"__inference__wrapped_model_4186908?()*+,-./0;?8
1?.
,?)
lstm_657_input?????????
? "5?2
0
	dense_219#? 
	dense_219??????????
F__inference_dense_219_layer_call_and_return_conditional_losses_4191943\/?,
%?"
 ?
inputs?????????

? "%?"
?
0?????????
? ~
+__inference_dense_219_layer_call_fn_4191933O/?,
%?"
 ?
inputs?????????

? "???????????
E__inference_lstm_657_layer_call_and_return_conditional_losses_4190263?()*O?L
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
E__inference_lstm_657_layer_call_and_return_conditional_losses_4190406?()*O?L
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
E__inference_lstm_657_layer_call_and_return_conditional_losses_4190549q()*??<
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
E__inference_lstm_657_layer_call_and_return_conditional_losses_4190692q()*??<
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
*__inference_lstm_657_layer_call_fn_4190087}()*O?L
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
*__inference_lstm_657_layer_call_fn_4190098}()*O?L
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
*__inference_lstm_657_layer_call_fn_4190109d()*??<
5?2
$?!
inputs?????????

 
p 

 
? "??????????d?
*__inference_lstm_657_layer_call_fn_4190120d()*??<
5?2
$?!
inputs?????????

 
p

 
? "??????????d?
E__inference_lstm_658_layer_call_and_return_conditional_losses_4190879?+,-O?L
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
E__inference_lstm_658_layer_call_and_return_conditional_losses_4191022?+,-O?L
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
E__inference_lstm_658_layer_call_and_return_conditional_losses_4191165q+,-??<
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
E__inference_lstm_658_layer_call_and_return_conditional_losses_4191308q+,-??<
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
*__inference_lstm_658_layer_call_fn_4190703}+,-O?L
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
*__inference_lstm_658_layer_call_fn_4190714}+,-O?L
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
*__inference_lstm_658_layer_call_fn_4190725d+,-??<
5?2
$?!
inputs?????????d

 
p 

 
? "??????????2?
*__inference_lstm_658_layer_call_fn_4190736d+,-??<
5?2
$?!
inputs?????????d

 
p

 
? "??????????2?
E__inference_lstm_659_layer_call_and_return_conditional_losses_4191495}./0O?L
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
E__inference_lstm_659_layer_call_and_return_conditional_losses_4191638}./0O?L
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
E__inference_lstm_659_layer_call_and_return_conditional_losses_4191781m./0??<
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
E__inference_lstm_659_layer_call_and_return_conditional_losses_4191924m./0??<
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
*__inference_lstm_659_layer_call_fn_4191319p./0O?L
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
*__inference_lstm_659_layer_call_fn_4191330p./0O?L
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
*__inference_lstm_659_layer_call_fn_4191341`./0??<
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
*__inference_lstm_659_layer_call_fn_4191352`./0??<
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
J__inference_lstm_cell_657_layer_call_and_return_conditional_losses_4192009?()*??}
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
J__inference_lstm_cell_657_layer_call_and_return_conditional_losses_4192041?()*??}
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
/__inference_lstm_cell_657_layer_call_fn_4191960?()*??}
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
/__inference_lstm_cell_657_layer_call_fn_4191977?()*??}
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
J__inference_lstm_cell_658_layer_call_and_return_conditional_losses_4192107?+,-??}
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
J__inference_lstm_cell_658_layer_call_and_return_conditional_losses_4192139?+,-??}
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
/__inference_lstm_cell_658_layer_call_fn_4192058?+,-??}
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
/__inference_lstm_cell_658_layer_call_fn_4192075?+,-??}
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
J__inference_lstm_cell_659_layer_call_and_return_conditional_losses_4192205?./0??}
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
J__inference_lstm_cell_659_layer_call_and_return_conditional_losses_4192237?./0??}
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
/__inference_lstm_cell_659_layer_call_fn_4192156?./0??}
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
/__inference_lstm_cell_659_layer_call_fn_4192173?./0??}
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
K__inference_sequential_219_layer_call_and_return_conditional_losses_4189103y()*+,-./0C?@
9?6
,?)
lstm_657_input?????????
p 

 
? "%?"
?
0?????????
? ?
K__inference_sequential_219_layer_call_and_return_conditional_losses_4189133y()*+,-./0C?@
9?6
,?)
lstm_657_input?????????
p

 
? "%?"
?
0?????????
? ?
K__inference_sequential_219_layer_call_and_return_conditional_losses_4189649q()*+,-./0;?8
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
K__inference_sequential_219_layer_call_and_return_conditional_losses_4190076q()*+,-./0;?8
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
0__inference_sequential_219_layer_call_fn_4188457l()*+,-./0C?@
9?6
,?)
lstm_657_input?????????
p 

 
? "???????????
0__inference_sequential_219_layer_call_fn_4189073l()*+,-./0C?@
9?6
,?)
lstm_657_input?????????
p

 
? "???????????
0__inference_sequential_219_layer_call_fn_4189195d()*+,-./0;?8
1?.
$?!
inputs?????????
p 

 
? "???????????
0__inference_sequential_219_layer_call_fn_4189222d()*+,-./0;?8
1?.
$?!
inputs?????????
p

 
? "???????????
%__inference_signature_wrapper_4189168?()*+,-./0M?J
? 
C?@
>
lstm_657_input,?)
lstm_657_input?????????"5?2
0
	dense_219#? 
	dense_219?????????