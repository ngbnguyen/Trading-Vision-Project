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
dense_231/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*!
shared_namedense_231/kernel
u
$dense_231/kernel/Read/ReadVariableOpReadVariableOpdense_231/kernel*
_output_shapes

:
*
dtype0
t
dense_231/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_231/bias
m
"dense_231/bias/Read/ReadVariableOpReadVariableOpdense_231/bias*
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
lstm_693/lstm_cell_693/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*.
shared_namelstm_693/lstm_cell_693/kernel
?
1lstm_693/lstm_cell_693/kernel/Read/ReadVariableOpReadVariableOplstm_693/lstm_cell_693/kernel*
_output_shapes
:	?*
dtype0
?
'lstm_693/lstm_cell_693/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*8
shared_name)'lstm_693/lstm_cell_693/recurrent_kernel
?
;lstm_693/lstm_cell_693/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_693/lstm_cell_693/recurrent_kernel*
_output_shapes
:	d?*
dtype0
?
lstm_693/lstm_cell_693/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_693/lstm_cell_693/bias
?
/lstm_693/lstm_cell_693/bias/Read/ReadVariableOpReadVariableOplstm_693/lstm_cell_693/bias*
_output_shapes	
:?*
dtype0
?
lstm_694/lstm_cell_694/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*.
shared_namelstm_694/lstm_cell_694/kernel
?
1lstm_694/lstm_cell_694/kernel/Read/ReadVariableOpReadVariableOplstm_694/lstm_cell_694/kernel*
_output_shapes
:	d?*
dtype0
?
'lstm_694/lstm_cell_694/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*8
shared_name)'lstm_694/lstm_cell_694/recurrent_kernel
?
;lstm_694/lstm_cell_694/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_694/lstm_cell_694/recurrent_kernel*
_output_shapes
:	2?*
dtype0
?
lstm_694/lstm_cell_694/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_694/lstm_cell_694/bias
?
/lstm_694/lstm_cell_694/bias/Read/ReadVariableOpReadVariableOplstm_694/lstm_cell_694/bias*
_output_shapes	
:?*
dtype0
?
lstm_695/lstm_cell_695/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*.
shared_namelstm_695/lstm_cell_695/kernel
?
1lstm_695/lstm_cell_695/kernel/Read/ReadVariableOpReadVariableOplstm_695/lstm_cell_695/kernel*
_output_shapes

:2(*
dtype0
?
'lstm_695/lstm_cell_695/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*8
shared_name)'lstm_695/lstm_cell_695/recurrent_kernel
?
;lstm_695/lstm_cell_695/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_695/lstm_cell_695/recurrent_kernel*
_output_shapes

:
(*
dtype0
?
lstm_695/lstm_cell_695/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*,
shared_namelstm_695/lstm_cell_695/bias
?
/lstm_695/lstm_cell_695/bias/Read/ReadVariableOpReadVariableOplstm_695/lstm_cell_695/bias*
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
Adam/dense_231/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_231/kernel/m
?
+Adam/dense_231/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_231/kernel/m*
_output_shapes

:
*
dtype0
?
Adam/dense_231/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_231/bias/m
{
)Adam/dense_231/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_231/bias/m*
_output_shapes
:*
dtype0
?
$Adam/lstm_693/lstm_cell_693/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_693/lstm_cell_693/kernel/m
?
8Adam/lstm_693/lstm_cell_693/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_693/lstm_cell_693/kernel/m*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_693/lstm_cell_693/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_693/lstm_cell_693/recurrent_kernel/m
?
BAdam/lstm_693/lstm_cell_693/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_693/lstm_cell_693/recurrent_kernel/m*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_693/lstm_cell_693/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_693/lstm_cell_693/bias/m
?
6Adam/lstm_693/lstm_cell_693/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_693/lstm_cell_693/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_694/lstm_cell_694/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_694/lstm_cell_694/kernel/m
?
8Adam/lstm_694/lstm_cell_694/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_694/lstm_cell_694/kernel/m*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_694/lstm_cell_694/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_694/lstm_cell_694/recurrent_kernel/m
?
BAdam/lstm_694/lstm_cell_694/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_694/lstm_cell_694/recurrent_kernel/m*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_694/lstm_cell_694/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_694/lstm_cell_694/bias/m
?
6Adam/lstm_694/lstm_cell_694/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_694/lstm_cell_694/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_695/lstm_cell_695/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_695/lstm_cell_695/kernel/m
?
8Adam/lstm_695/lstm_cell_695/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_695/lstm_cell_695/kernel/m*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_695/lstm_cell_695/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_695/lstm_cell_695/recurrent_kernel/m
?
BAdam/lstm_695/lstm_cell_695/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_695/lstm_cell_695/recurrent_kernel/m*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_695/lstm_cell_695/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_695/lstm_cell_695/bias/m
?
6Adam/lstm_695/lstm_cell_695/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_695/lstm_cell_695/bias/m*
_output_shapes
:(*
dtype0
?
Adam/dense_231/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_231/kernel/v
?
+Adam/dense_231/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_231/kernel/v*
_output_shapes

:
*
dtype0
?
Adam/dense_231/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_231/bias/v
{
)Adam/dense_231/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_231/bias/v*
_output_shapes
:*
dtype0
?
$Adam/lstm_693/lstm_cell_693/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_693/lstm_cell_693/kernel/v
?
8Adam/lstm_693/lstm_cell_693/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_693/lstm_cell_693/kernel/v*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_693/lstm_cell_693/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_693/lstm_cell_693/recurrent_kernel/v
?
BAdam/lstm_693/lstm_cell_693/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_693/lstm_cell_693/recurrent_kernel/v*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_693/lstm_cell_693/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_693/lstm_cell_693/bias/v
?
6Adam/lstm_693/lstm_cell_693/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_693/lstm_cell_693/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_694/lstm_cell_694/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_694/lstm_cell_694/kernel/v
?
8Adam/lstm_694/lstm_cell_694/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_694/lstm_cell_694/kernel/v*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_694/lstm_cell_694/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_694/lstm_cell_694/recurrent_kernel/v
?
BAdam/lstm_694/lstm_cell_694/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_694/lstm_cell_694/recurrent_kernel/v*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_694/lstm_cell_694/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_694/lstm_cell_694/bias/v
?
6Adam/lstm_694/lstm_cell_694/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_694/lstm_cell_694/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_695/lstm_cell_695/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_695/lstm_cell_695/kernel/v
?
8Adam/lstm_695/lstm_cell_695/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_695/lstm_cell_695/kernel/v*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_695/lstm_cell_695/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_695/lstm_cell_695/recurrent_kernel/v
?
BAdam/lstm_695/lstm_cell_695/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_695/lstm_cell_695/recurrent_kernel/v*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_695/lstm_cell_695/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_695/lstm_cell_695/bias/v
?
6Adam/lstm_695/lstm_cell_695/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_695/lstm_cell_695/bias/v*
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
VARIABLE_VALUEdense_231/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_231/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUElstm_693/lstm_cell_693/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_693/lstm_cell_693/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_693/lstm_cell_693/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_694/lstm_cell_694/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_694/lstm_cell_694/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_694/lstm_cell_694/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_695/lstm_cell_695/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_695/lstm_cell_695/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_695/lstm_cell_695/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEAdam/dense_231/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_231/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_693/lstm_cell_693/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_693/lstm_cell_693/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_693/lstm_cell_693/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_694/lstm_cell_694/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_694/lstm_cell_694/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_694/lstm_cell_694/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_695/lstm_cell_695/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_695/lstm_cell_695/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_695/lstm_cell_695/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_231/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_231/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_693/lstm_cell_693/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_693/lstm_cell_693/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_693/lstm_cell_693/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_694/lstm_cell_694/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_694/lstm_cell_694/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_694/lstm_cell_694/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_695/lstm_cell_695/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_695/lstm_cell_695/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_695/lstm_cell_695/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_lstm_693_inputPlaceholder*+
_output_shapes
:?????????*
dtype0* 
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_693_inputlstm_693/lstm_cell_693/kernel'lstm_693/lstm_cell_693/recurrent_kernellstm_693/lstm_cell_693/biaslstm_694/lstm_cell_694/kernel'lstm_694/lstm_cell_694/recurrent_kernellstm_694/lstm_cell_694/biaslstm_695/lstm_cell_695/kernel'lstm_695/lstm_cell_695/recurrent_kernellstm_695/lstm_cell_695/biasdense_231/kerneldense_231/bias*
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
%__inference_signature_wrapper_4362847
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$dense_231/kernel/Read/ReadVariableOp"dense_231/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_693/lstm_cell_693/kernel/Read/ReadVariableOp;lstm_693/lstm_cell_693/recurrent_kernel/Read/ReadVariableOp/lstm_693/lstm_cell_693/bias/Read/ReadVariableOp1lstm_694/lstm_cell_694/kernel/Read/ReadVariableOp;lstm_694/lstm_cell_694/recurrent_kernel/Read/ReadVariableOp/lstm_694/lstm_cell_694/bias/Read/ReadVariableOp1lstm_695/lstm_cell_695/kernel/Read/ReadVariableOp;lstm_695/lstm_cell_695/recurrent_kernel/Read/ReadVariableOp/lstm_695/lstm_cell_695/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp+Adam/dense_231/kernel/m/Read/ReadVariableOp)Adam/dense_231/bias/m/Read/ReadVariableOp8Adam/lstm_693/lstm_cell_693/kernel/m/Read/ReadVariableOpBAdam/lstm_693/lstm_cell_693/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_693/lstm_cell_693/bias/m/Read/ReadVariableOp8Adam/lstm_694/lstm_cell_694/kernel/m/Read/ReadVariableOpBAdam/lstm_694/lstm_cell_694/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_694/lstm_cell_694/bias/m/Read/ReadVariableOp8Adam/lstm_695/lstm_cell_695/kernel/m/Read/ReadVariableOpBAdam/lstm_695/lstm_cell_695/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_695/lstm_cell_695/bias/m/Read/ReadVariableOp+Adam/dense_231/kernel/v/Read/ReadVariableOp)Adam/dense_231/bias/v/Read/ReadVariableOp8Adam/lstm_693/lstm_cell_693/kernel/v/Read/ReadVariableOpBAdam/lstm_693/lstm_cell_693/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_693/lstm_cell_693/bias/v/Read/ReadVariableOp8Adam/lstm_694/lstm_cell_694/kernel/v/Read/ReadVariableOpBAdam/lstm_694/lstm_cell_694/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_694/lstm_cell_694/bias/v/Read/ReadVariableOp8Adam/lstm_695/lstm_cell_695/kernel/v/Read/ReadVariableOpBAdam/lstm_695/lstm_cell_695/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_695/lstm_cell_695/bias/v/Read/ReadVariableOpConst*5
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
 __inference__traced_save_4366059
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_231/kerneldense_231/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_693/lstm_cell_693/kernel'lstm_693/lstm_cell_693/recurrent_kernellstm_693/lstm_cell_693/biaslstm_694/lstm_cell_694/kernel'lstm_694/lstm_cell_694/recurrent_kernellstm_694/lstm_cell_694/biaslstm_695/lstm_cell_695/kernel'lstm_695/lstm_cell_695/recurrent_kernellstm_695/lstm_cell_695/biastotalcountAdam/dense_231/kernel/mAdam/dense_231/bias/m$Adam/lstm_693/lstm_cell_693/kernel/m.Adam/lstm_693/lstm_cell_693/recurrent_kernel/m"Adam/lstm_693/lstm_cell_693/bias/m$Adam/lstm_694/lstm_cell_694/kernel/m.Adam/lstm_694/lstm_cell_694/recurrent_kernel/m"Adam/lstm_694/lstm_cell_694/bias/m$Adam/lstm_695/lstm_cell_695/kernel/m.Adam/lstm_695/lstm_cell_695/recurrent_kernel/m"Adam/lstm_695/lstm_cell_695/bias/mAdam/dense_231/kernel/vAdam/dense_231/bias/v$Adam/lstm_693/lstm_cell_693/kernel/v.Adam/lstm_693/lstm_cell_693/recurrent_kernel/v"Adam/lstm_693/lstm_cell_693/bias/v$Adam/lstm_694/lstm_cell_694/kernel/v.Adam/lstm_694/lstm_cell_694/recurrent_kernel/v"Adam/lstm_694/lstm_cell_694/bias/v$Adam/lstm_695/lstm_cell_695/kernel/v.Adam/lstm_695/lstm_cell_695/recurrent_kernel/v"Adam/lstm_695/lstm_cell_695/bias/v*4
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
#__inference__traced_restore_4366189??+
?
?
J__inference_lstm_cell_695_layer_call_and_return_conditional_losses_4365916

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
??
?
K__inference_sequential_231_layer_call_and_return_conditional_losses_4363328

inputsH
5lstm_693_lstm_cell_693_matmul_readvariableop_resource:	?J
7lstm_693_lstm_cell_693_matmul_1_readvariableop_resource:	d?E
6lstm_693_lstm_cell_693_biasadd_readvariableop_resource:	?H
5lstm_694_lstm_cell_694_matmul_readvariableop_resource:	d?J
7lstm_694_lstm_cell_694_matmul_1_readvariableop_resource:	2?E
6lstm_694_lstm_cell_694_biasadd_readvariableop_resource:	?G
5lstm_695_lstm_cell_695_matmul_readvariableop_resource:2(I
7lstm_695_lstm_cell_695_matmul_1_readvariableop_resource:
(D
6lstm_695_lstm_cell_695_biasadd_readvariableop_resource:(:
(dense_231_matmul_readvariableop_resource:
7
)dense_231_biasadd_readvariableop_resource:
identity?? dense_231/BiasAdd/ReadVariableOp?dense_231/MatMul/ReadVariableOp?-lstm_693/lstm_cell_693/BiasAdd/ReadVariableOp?,lstm_693/lstm_cell_693/MatMul/ReadVariableOp?.lstm_693/lstm_cell_693/MatMul_1/ReadVariableOp?lstm_693/while?-lstm_694/lstm_cell_694/BiasAdd/ReadVariableOp?,lstm_694/lstm_cell_694/MatMul/ReadVariableOp?.lstm_694/lstm_cell_694/MatMul_1/ReadVariableOp?lstm_694/while?-lstm_695/lstm_cell_695/BiasAdd/ReadVariableOp?,lstm_695/lstm_cell_695/MatMul/ReadVariableOp?.lstm_695/lstm_cell_695/MatMul_1/ReadVariableOp?lstm_695/whileD
lstm_693/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_693/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_693/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_693/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_693/strided_sliceStridedSlicelstm_693/Shape:output:0%lstm_693/strided_slice/stack:output:0'lstm_693/strided_slice/stack_1:output:0'lstm_693/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_693/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_693/zeros/packedPacklstm_693/strided_slice:output:0 lstm_693/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_693/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_693/zerosFilllstm_693/zeros/packed:output:0lstm_693/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_693/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_693/zeros_1/packedPacklstm_693/strided_slice:output:0"lstm_693/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_693/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_693/zeros_1Fill lstm_693/zeros_1/packed:output:0lstm_693/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_693/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_693/transpose	Transposeinputs lstm_693/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_693/Shape_1Shapelstm_693/transpose:y:0*
T0*
_output_shapes
:h
lstm_693/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_693/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_693/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_693/strided_slice_1StridedSlicelstm_693/Shape_1:output:0'lstm_693/strided_slice_1/stack:output:0)lstm_693/strided_slice_1/stack_1:output:0)lstm_693/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_693/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_693/TensorArrayV2TensorListReserve-lstm_693/TensorArrayV2/element_shape:output:0!lstm_693/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_693/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_693/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_693/transpose:y:0Glstm_693/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_693/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_693/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_693/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_693/strided_slice_2StridedSlicelstm_693/transpose:y:0'lstm_693/strided_slice_2/stack:output:0)lstm_693/strided_slice_2/stack_1:output:0)lstm_693/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_693/lstm_cell_693/MatMul/ReadVariableOpReadVariableOp5lstm_693_lstm_cell_693_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_693/lstm_cell_693/MatMulMatMul!lstm_693/strided_slice_2:output:04lstm_693/lstm_cell_693/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_693/lstm_cell_693/MatMul_1/ReadVariableOpReadVariableOp7lstm_693_lstm_cell_693_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_693/lstm_cell_693/MatMul_1MatMullstm_693/zeros:output:06lstm_693/lstm_cell_693/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_693/lstm_cell_693/addAddV2'lstm_693/lstm_cell_693/MatMul:product:0)lstm_693/lstm_cell_693/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_693/lstm_cell_693/BiasAdd/ReadVariableOpReadVariableOp6lstm_693_lstm_cell_693_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_693/lstm_cell_693/BiasAddBiasAddlstm_693/lstm_cell_693/add:z:05lstm_693/lstm_cell_693/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_693/lstm_cell_693/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_693/lstm_cell_693/splitSplit/lstm_693/lstm_cell_693/split/split_dim:output:0'lstm_693/lstm_cell_693/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_693/lstm_cell_693/SigmoidSigmoid%lstm_693/lstm_cell_693/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_693/lstm_cell_693/Sigmoid_1Sigmoid%lstm_693/lstm_cell_693/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_693/lstm_cell_693/mulMul$lstm_693/lstm_cell_693/Sigmoid_1:y:0lstm_693/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_693/lstm_cell_693/ReluRelu%lstm_693/lstm_cell_693/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_693/lstm_cell_693/mul_1Mul"lstm_693/lstm_cell_693/Sigmoid:y:0)lstm_693/lstm_cell_693/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_693/lstm_cell_693/add_1AddV2lstm_693/lstm_cell_693/mul:z:0 lstm_693/lstm_cell_693/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_693/lstm_cell_693/Sigmoid_2Sigmoid%lstm_693/lstm_cell_693/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_693/lstm_cell_693/Relu_1Relu lstm_693/lstm_cell_693/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_693/lstm_cell_693/mul_2Mul$lstm_693/lstm_cell_693/Sigmoid_2:y:0+lstm_693/lstm_cell_693/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_693/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_693/TensorArrayV2_1TensorListReserve/lstm_693/TensorArrayV2_1/element_shape:output:0!lstm_693/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_693/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_693/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_693/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_693/whileWhile$lstm_693/while/loop_counter:output:0*lstm_693/while/maximum_iterations:output:0lstm_693/time:output:0!lstm_693/TensorArrayV2_1:handle:0lstm_693/zeros:output:0lstm_693/zeros_1:output:0!lstm_693/strided_slice_1:output:0@lstm_693/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_693_lstm_cell_693_matmul_readvariableop_resource7lstm_693_lstm_cell_693_matmul_1_readvariableop_resource6lstm_693_lstm_cell_693_biasadd_readvariableop_resource*
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
lstm_693_while_body_4362960*'
condR
lstm_693_while_cond_4362959*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_693/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_693/TensorArrayV2Stack/TensorListStackTensorListStacklstm_693/while:output:3Blstm_693/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_693/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_693/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_693/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_693/strided_slice_3StridedSlice4lstm_693/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_693/strided_slice_3/stack:output:0)lstm_693/strided_slice_3/stack_1:output:0)lstm_693/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_693/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_693/transpose_1	Transpose4lstm_693/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_693/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_693/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_694/ShapeShapelstm_693/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_694/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_694/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_694/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_694/strided_sliceStridedSlicelstm_694/Shape:output:0%lstm_694/strided_slice/stack:output:0'lstm_694/strided_slice/stack_1:output:0'lstm_694/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_694/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_694/zeros/packedPacklstm_694/strided_slice:output:0 lstm_694/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_694/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_694/zerosFilllstm_694/zeros/packed:output:0lstm_694/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_694/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_694/zeros_1/packedPacklstm_694/strided_slice:output:0"lstm_694/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_694/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_694/zeros_1Fill lstm_694/zeros_1/packed:output:0lstm_694/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_694/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_694/transpose	Transposelstm_693/transpose_1:y:0 lstm_694/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_694/Shape_1Shapelstm_694/transpose:y:0*
T0*
_output_shapes
:h
lstm_694/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_694/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_694/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_694/strided_slice_1StridedSlicelstm_694/Shape_1:output:0'lstm_694/strided_slice_1/stack:output:0)lstm_694/strided_slice_1/stack_1:output:0)lstm_694/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_694/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_694/TensorArrayV2TensorListReserve-lstm_694/TensorArrayV2/element_shape:output:0!lstm_694/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_694/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_694/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_694/transpose:y:0Glstm_694/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_694/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_694/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_694/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_694/strided_slice_2StridedSlicelstm_694/transpose:y:0'lstm_694/strided_slice_2/stack:output:0)lstm_694/strided_slice_2/stack_1:output:0)lstm_694/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_694/lstm_cell_694/MatMul/ReadVariableOpReadVariableOp5lstm_694_lstm_cell_694_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_694/lstm_cell_694/MatMulMatMul!lstm_694/strided_slice_2:output:04lstm_694/lstm_cell_694/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_694/lstm_cell_694/MatMul_1/ReadVariableOpReadVariableOp7lstm_694_lstm_cell_694_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_694/lstm_cell_694/MatMul_1MatMullstm_694/zeros:output:06lstm_694/lstm_cell_694/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_694/lstm_cell_694/addAddV2'lstm_694/lstm_cell_694/MatMul:product:0)lstm_694/lstm_cell_694/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_694/lstm_cell_694/BiasAdd/ReadVariableOpReadVariableOp6lstm_694_lstm_cell_694_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_694/lstm_cell_694/BiasAddBiasAddlstm_694/lstm_cell_694/add:z:05lstm_694/lstm_cell_694/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_694/lstm_cell_694/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_694/lstm_cell_694/splitSplit/lstm_694/lstm_cell_694/split/split_dim:output:0'lstm_694/lstm_cell_694/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_694/lstm_cell_694/SigmoidSigmoid%lstm_694/lstm_cell_694/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_694/lstm_cell_694/Sigmoid_1Sigmoid%lstm_694/lstm_cell_694/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_694/lstm_cell_694/mulMul$lstm_694/lstm_cell_694/Sigmoid_1:y:0lstm_694/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_694/lstm_cell_694/ReluRelu%lstm_694/lstm_cell_694/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_694/lstm_cell_694/mul_1Mul"lstm_694/lstm_cell_694/Sigmoid:y:0)lstm_694/lstm_cell_694/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_694/lstm_cell_694/add_1AddV2lstm_694/lstm_cell_694/mul:z:0 lstm_694/lstm_cell_694/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_694/lstm_cell_694/Sigmoid_2Sigmoid%lstm_694/lstm_cell_694/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_694/lstm_cell_694/Relu_1Relu lstm_694/lstm_cell_694/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_694/lstm_cell_694/mul_2Mul$lstm_694/lstm_cell_694/Sigmoid_2:y:0+lstm_694/lstm_cell_694/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_694/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_694/TensorArrayV2_1TensorListReserve/lstm_694/TensorArrayV2_1/element_shape:output:0!lstm_694/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_694/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_694/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_694/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_694/whileWhile$lstm_694/while/loop_counter:output:0*lstm_694/while/maximum_iterations:output:0lstm_694/time:output:0!lstm_694/TensorArrayV2_1:handle:0lstm_694/zeros:output:0lstm_694/zeros_1:output:0!lstm_694/strided_slice_1:output:0@lstm_694/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_694_lstm_cell_694_matmul_readvariableop_resource7lstm_694_lstm_cell_694_matmul_1_readvariableop_resource6lstm_694_lstm_cell_694_biasadd_readvariableop_resource*
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
lstm_694_while_body_4363099*'
condR
lstm_694_while_cond_4363098*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_694/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_694/TensorArrayV2Stack/TensorListStackTensorListStacklstm_694/while:output:3Blstm_694/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_694/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_694/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_694/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_694/strided_slice_3StridedSlice4lstm_694/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_694/strided_slice_3/stack:output:0)lstm_694/strided_slice_3/stack_1:output:0)lstm_694/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_694/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_694/transpose_1	Transpose4lstm_694/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_694/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_694/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_695/ShapeShapelstm_694/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_695/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_695/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_695/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_695/strided_sliceStridedSlicelstm_695/Shape:output:0%lstm_695/strided_slice/stack:output:0'lstm_695/strided_slice/stack_1:output:0'lstm_695/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_695/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_695/zeros/packedPacklstm_695/strided_slice:output:0 lstm_695/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_695/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_695/zerosFilllstm_695/zeros/packed:output:0lstm_695/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_695/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_695/zeros_1/packedPacklstm_695/strided_slice:output:0"lstm_695/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_695/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_695/zeros_1Fill lstm_695/zeros_1/packed:output:0lstm_695/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_695/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_695/transpose	Transposelstm_694/transpose_1:y:0 lstm_695/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_695/Shape_1Shapelstm_695/transpose:y:0*
T0*
_output_shapes
:h
lstm_695/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_695/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_695/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_695/strided_slice_1StridedSlicelstm_695/Shape_1:output:0'lstm_695/strided_slice_1/stack:output:0)lstm_695/strided_slice_1/stack_1:output:0)lstm_695/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_695/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_695/TensorArrayV2TensorListReserve-lstm_695/TensorArrayV2/element_shape:output:0!lstm_695/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_695/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_695/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_695/transpose:y:0Glstm_695/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_695/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_695/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_695/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_695/strided_slice_2StridedSlicelstm_695/transpose:y:0'lstm_695/strided_slice_2/stack:output:0)lstm_695/strided_slice_2/stack_1:output:0)lstm_695/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_695/lstm_cell_695/MatMul/ReadVariableOpReadVariableOp5lstm_695_lstm_cell_695_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_695/lstm_cell_695/MatMulMatMul!lstm_695/strided_slice_2:output:04lstm_695/lstm_cell_695/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_695/lstm_cell_695/MatMul_1/ReadVariableOpReadVariableOp7lstm_695_lstm_cell_695_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_695/lstm_cell_695/MatMul_1MatMullstm_695/zeros:output:06lstm_695/lstm_cell_695/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_695/lstm_cell_695/addAddV2'lstm_695/lstm_cell_695/MatMul:product:0)lstm_695/lstm_cell_695/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_695/lstm_cell_695/BiasAdd/ReadVariableOpReadVariableOp6lstm_695_lstm_cell_695_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_695/lstm_cell_695/BiasAddBiasAddlstm_695/lstm_cell_695/add:z:05lstm_695/lstm_cell_695/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_695/lstm_cell_695/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_695/lstm_cell_695/splitSplit/lstm_695/lstm_cell_695/split/split_dim:output:0'lstm_695/lstm_cell_695/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_695/lstm_cell_695/SigmoidSigmoid%lstm_695/lstm_cell_695/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_695/lstm_cell_695/Sigmoid_1Sigmoid%lstm_695/lstm_cell_695/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_695/lstm_cell_695/mulMul$lstm_695/lstm_cell_695/Sigmoid_1:y:0lstm_695/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_695/lstm_cell_695/ReluRelu%lstm_695/lstm_cell_695/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_695/lstm_cell_695/mul_1Mul"lstm_695/lstm_cell_695/Sigmoid:y:0)lstm_695/lstm_cell_695/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_695/lstm_cell_695/add_1AddV2lstm_695/lstm_cell_695/mul:z:0 lstm_695/lstm_cell_695/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_695/lstm_cell_695/Sigmoid_2Sigmoid%lstm_695/lstm_cell_695/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_695/lstm_cell_695/Relu_1Relu lstm_695/lstm_cell_695/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_695/lstm_cell_695/mul_2Mul$lstm_695/lstm_cell_695/Sigmoid_2:y:0+lstm_695/lstm_cell_695/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_695/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_695/TensorArrayV2_1TensorListReserve/lstm_695/TensorArrayV2_1/element_shape:output:0!lstm_695/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_695/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_695/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_695/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_695/whileWhile$lstm_695/while/loop_counter:output:0*lstm_695/while/maximum_iterations:output:0lstm_695/time:output:0!lstm_695/TensorArrayV2_1:handle:0lstm_695/zeros:output:0lstm_695/zeros_1:output:0!lstm_695/strided_slice_1:output:0@lstm_695/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_695_lstm_cell_695_matmul_readvariableop_resource7lstm_695_lstm_cell_695_matmul_1_readvariableop_resource6lstm_695_lstm_cell_695_biasadd_readvariableop_resource*
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
lstm_695_while_body_4363238*'
condR
lstm_695_while_cond_4363237*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_695/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_695/TensorArrayV2Stack/TensorListStackTensorListStacklstm_695/while:output:3Blstm_695/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_695/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_695/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_695/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_695/strided_slice_3StridedSlice4lstm_695/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_695/strided_slice_3/stack:output:0)lstm_695/strided_slice_3/stack_1:output:0)lstm_695/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_695/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_695/transpose_1	Transpose4lstm_695/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_695/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_695/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_231/MatMul/ReadVariableOpReadVariableOp(dense_231_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_231/MatMulMatMul!lstm_695/strided_slice_3:output:0'dense_231/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_231/BiasAdd/ReadVariableOpReadVariableOp)dense_231_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_231/BiasAddBiasAdddense_231/MatMul:product:0(dense_231/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_231/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_231/BiasAdd/ReadVariableOp ^dense_231/MatMul/ReadVariableOp.^lstm_693/lstm_cell_693/BiasAdd/ReadVariableOp-^lstm_693/lstm_cell_693/MatMul/ReadVariableOp/^lstm_693/lstm_cell_693/MatMul_1/ReadVariableOp^lstm_693/while.^lstm_694/lstm_cell_694/BiasAdd/ReadVariableOp-^lstm_694/lstm_cell_694/MatMul/ReadVariableOp/^lstm_694/lstm_cell_694/MatMul_1/ReadVariableOp^lstm_694/while.^lstm_695/lstm_cell_695/BiasAdd/ReadVariableOp-^lstm_695/lstm_cell_695/MatMul/ReadVariableOp/^lstm_695/lstm_cell_695/MatMul_1/ReadVariableOp^lstm_695/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_231/BiasAdd/ReadVariableOp dense_231/BiasAdd/ReadVariableOp2B
dense_231/MatMul/ReadVariableOpdense_231/MatMul/ReadVariableOp2^
-lstm_693/lstm_cell_693/BiasAdd/ReadVariableOp-lstm_693/lstm_cell_693/BiasAdd/ReadVariableOp2\
,lstm_693/lstm_cell_693/MatMul/ReadVariableOp,lstm_693/lstm_cell_693/MatMul/ReadVariableOp2`
.lstm_693/lstm_cell_693/MatMul_1/ReadVariableOp.lstm_693/lstm_cell_693/MatMul_1/ReadVariableOp2 
lstm_693/whilelstm_693/while2^
-lstm_694/lstm_cell_694/BiasAdd/ReadVariableOp-lstm_694/lstm_cell_694/BiasAdd/ReadVariableOp2\
,lstm_694/lstm_cell_694/MatMul/ReadVariableOp,lstm_694/lstm_cell_694/MatMul/ReadVariableOp2`
.lstm_694/lstm_cell_694/MatMul_1/ReadVariableOp.lstm_694/lstm_cell_694/MatMul_1/ReadVariableOp2 
lstm_694/whilelstm_694/while2^
-lstm_695/lstm_cell_695/BiasAdd/ReadVariableOp-lstm_695/lstm_cell_695/BiasAdd/ReadVariableOp2\
,lstm_695/lstm_cell_695/MatMul/ReadVariableOp,lstm_695/lstm_cell_695/MatMul/ReadVariableOp2`
.lstm_695/lstm_cell_695/MatMul_1/ReadVariableOp.lstm_695/lstm_cell_695/MatMul_1/ReadVariableOp2 
lstm_695/whilelstm_695/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_4361017
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4361017___redundant_placeholder05
1while_while_cond_4361017___redundant_placeholder15
1while_while_cond_4361017___redundant_placeholder25
1while_while_cond_4361017___redundant_placeholder3
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

lstm_693_while_body_4363387.
*lstm_693_while_lstm_693_while_loop_counter4
0lstm_693_while_lstm_693_while_maximum_iterations
lstm_693_while_placeholder 
lstm_693_while_placeholder_1 
lstm_693_while_placeholder_2 
lstm_693_while_placeholder_3-
)lstm_693_while_lstm_693_strided_slice_1_0i
elstm_693_while_tensorarrayv2read_tensorlistgetitem_lstm_693_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_693_while_lstm_cell_693_matmul_readvariableop_resource_0:	?R
?lstm_693_while_lstm_cell_693_matmul_1_readvariableop_resource_0:	d?M
>lstm_693_while_lstm_cell_693_biasadd_readvariableop_resource_0:	?
lstm_693_while_identity
lstm_693_while_identity_1
lstm_693_while_identity_2
lstm_693_while_identity_3
lstm_693_while_identity_4
lstm_693_while_identity_5+
'lstm_693_while_lstm_693_strided_slice_1g
clstm_693_while_tensorarrayv2read_tensorlistgetitem_lstm_693_tensorarrayunstack_tensorlistfromtensorN
;lstm_693_while_lstm_cell_693_matmul_readvariableop_resource:	?P
=lstm_693_while_lstm_cell_693_matmul_1_readvariableop_resource:	d?K
<lstm_693_while_lstm_cell_693_biasadd_readvariableop_resource:	???3lstm_693/while/lstm_cell_693/BiasAdd/ReadVariableOp?2lstm_693/while/lstm_cell_693/MatMul/ReadVariableOp?4lstm_693/while/lstm_cell_693/MatMul_1/ReadVariableOp?
@lstm_693/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_693/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_693_while_tensorarrayv2read_tensorlistgetitem_lstm_693_tensorarrayunstack_tensorlistfromtensor_0lstm_693_while_placeholderIlstm_693/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_693/while/lstm_cell_693/MatMul/ReadVariableOpReadVariableOp=lstm_693_while_lstm_cell_693_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_693/while/lstm_cell_693/MatMulMatMul9lstm_693/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_693/while/lstm_cell_693/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_693/while/lstm_cell_693/MatMul_1/ReadVariableOpReadVariableOp?lstm_693_while_lstm_cell_693_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_693/while/lstm_cell_693/MatMul_1MatMullstm_693_while_placeholder_2<lstm_693/while/lstm_cell_693/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_693/while/lstm_cell_693/addAddV2-lstm_693/while/lstm_cell_693/MatMul:product:0/lstm_693/while/lstm_cell_693/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_693/while/lstm_cell_693/BiasAdd/ReadVariableOpReadVariableOp>lstm_693_while_lstm_cell_693_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_693/while/lstm_cell_693/BiasAddBiasAdd$lstm_693/while/lstm_cell_693/add:z:0;lstm_693/while/lstm_cell_693/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_693/while/lstm_cell_693/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_693/while/lstm_cell_693/splitSplit5lstm_693/while/lstm_cell_693/split/split_dim:output:0-lstm_693/while/lstm_cell_693/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_693/while/lstm_cell_693/SigmoidSigmoid+lstm_693/while/lstm_cell_693/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_693/while/lstm_cell_693/Sigmoid_1Sigmoid+lstm_693/while/lstm_cell_693/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_693/while/lstm_cell_693/mulMul*lstm_693/while/lstm_cell_693/Sigmoid_1:y:0lstm_693_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_693/while/lstm_cell_693/ReluRelu+lstm_693/while/lstm_cell_693/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_693/while/lstm_cell_693/mul_1Mul(lstm_693/while/lstm_cell_693/Sigmoid:y:0/lstm_693/while/lstm_cell_693/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_693/while/lstm_cell_693/add_1AddV2$lstm_693/while/lstm_cell_693/mul:z:0&lstm_693/while/lstm_cell_693/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_693/while/lstm_cell_693/Sigmoid_2Sigmoid+lstm_693/while/lstm_cell_693/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_693/while/lstm_cell_693/Relu_1Relu&lstm_693/while/lstm_cell_693/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_693/while/lstm_cell_693/mul_2Mul*lstm_693/while/lstm_cell_693/Sigmoid_2:y:01lstm_693/while/lstm_cell_693/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_693/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_693_while_placeholder_1lstm_693_while_placeholder&lstm_693/while/lstm_cell_693/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_693/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_693/while/addAddV2lstm_693_while_placeholderlstm_693/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_693/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_693/while/add_1AddV2*lstm_693_while_lstm_693_while_loop_counterlstm_693/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_693/while/IdentityIdentitylstm_693/while/add_1:z:0^lstm_693/while/NoOp*
T0*
_output_shapes
: ?
lstm_693/while/Identity_1Identity0lstm_693_while_lstm_693_while_maximum_iterations^lstm_693/while/NoOp*
T0*
_output_shapes
: t
lstm_693/while/Identity_2Identitylstm_693/while/add:z:0^lstm_693/while/NoOp*
T0*
_output_shapes
: ?
lstm_693/while/Identity_3IdentityClstm_693/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_693/while/NoOp*
T0*
_output_shapes
: ?
lstm_693/while/Identity_4Identity&lstm_693/while/lstm_cell_693/mul_2:z:0^lstm_693/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_693/while/Identity_5Identity&lstm_693/while/lstm_cell_693/add_1:z:0^lstm_693/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_693/while/NoOpNoOp4^lstm_693/while/lstm_cell_693/BiasAdd/ReadVariableOp3^lstm_693/while/lstm_cell_693/MatMul/ReadVariableOp5^lstm_693/while/lstm_cell_693/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_693_while_identity lstm_693/while/Identity:output:0"?
lstm_693_while_identity_1"lstm_693/while/Identity_1:output:0"?
lstm_693_while_identity_2"lstm_693/while/Identity_2:output:0"?
lstm_693_while_identity_3"lstm_693/while/Identity_3:output:0"?
lstm_693_while_identity_4"lstm_693/while/Identity_4:output:0"?
lstm_693_while_identity_5"lstm_693/while/Identity_5:output:0"T
'lstm_693_while_lstm_693_strided_slice_1)lstm_693_while_lstm_693_strided_slice_1_0"~
<lstm_693_while_lstm_cell_693_biasadd_readvariableop_resource>lstm_693_while_lstm_cell_693_biasadd_readvariableop_resource_0"?
=lstm_693_while_lstm_cell_693_matmul_1_readvariableop_resource?lstm_693_while_lstm_cell_693_matmul_1_readvariableop_resource_0"|
;lstm_693_while_lstm_cell_693_matmul_readvariableop_resource=lstm_693_while_lstm_cell_693_matmul_readvariableop_resource_0"?
clstm_693_while_tensorarrayv2read_tensorlistgetitem_lstm_693_tensorarrayunstack_tensorlistfromtensorelstm_693_while_tensorarrayv2read_tensorlistgetitem_lstm_693_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_693/while/lstm_cell_693/BiasAdd/ReadVariableOp3lstm_693/while/lstm_cell_693/BiasAdd/ReadVariableOp2h
2lstm_693/while/lstm_cell_693/MatMul/ReadVariableOp2lstm_693/while/lstm_cell_693/MatMul/ReadVariableOp2l
4lstm_693/while/lstm_cell_693/MatMul_1/ReadVariableOp4lstm_693/while/lstm_cell_693/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*sequential_231_lstm_694_while_cond_4360357L
Hsequential_231_lstm_694_while_sequential_231_lstm_694_while_loop_counterR
Nsequential_231_lstm_694_while_sequential_231_lstm_694_while_maximum_iterations-
)sequential_231_lstm_694_while_placeholder/
+sequential_231_lstm_694_while_placeholder_1/
+sequential_231_lstm_694_while_placeholder_2/
+sequential_231_lstm_694_while_placeholder_3N
Jsequential_231_lstm_694_while_less_sequential_231_lstm_694_strided_slice_1e
asequential_231_lstm_694_while_sequential_231_lstm_694_while_cond_4360357___redundant_placeholder0e
asequential_231_lstm_694_while_sequential_231_lstm_694_while_cond_4360357___redundant_placeholder1e
asequential_231_lstm_694_while_sequential_231_lstm_694_while_cond_4360357___redundant_placeholder2e
asequential_231_lstm_694_while_sequential_231_lstm_694_while_cond_4360357___redundant_placeholder3*
&sequential_231_lstm_694_while_identity
?
"sequential_231/lstm_694/while/LessLess)sequential_231_lstm_694_while_placeholderJsequential_231_lstm_694_while_less_sequential_231_lstm_694_strided_slice_1*
T0*
_output_shapes
: {
&sequential_231/lstm_694/while/IdentityIdentity&sequential_231/lstm_694/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_231_lstm_694_while_identity/sequential_231/lstm_694/while/Identity:output:0*(
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
E__inference_lstm_693_layer_call_and_return_conditional_losses_4361786

inputs?
,lstm_cell_693_matmul_readvariableop_resource:	?A
.lstm_cell_693_matmul_1_readvariableop_resource:	d?<
-lstm_cell_693_biasadd_readvariableop_resource:	?
identity??$lstm_cell_693/BiasAdd/ReadVariableOp?#lstm_cell_693/MatMul/ReadVariableOp?%lstm_cell_693/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_693/MatMul/ReadVariableOpReadVariableOp,lstm_cell_693_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_693/MatMulMatMulstrided_slice_2:output:0+lstm_cell_693/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_693/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_693_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_693/MatMul_1MatMulzeros:output:0-lstm_cell_693/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_693/addAddV2lstm_cell_693/MatMul:product:0 lstm_cell_693/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_693/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_693_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_693/BiasAddBiasAddlstm_cell_693/add:z:0,lstm_cell_693/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_693/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_693/splitSplit&lstm_cell_693/split/split_dim:output:0lstm_cell_693/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_693/SigmoidSigmoidlstm_cell_693/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_693/Sigmoid_1Sigmoidlstm_cell_693/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_693/mulMullstm_cell_693/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_693/ReluRelulstm_cell_693/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_693/mul_1Mullstm_cell_693/Sigmoid:y:0 lstm_cell_693/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_693/add_1AddV2lstm_cell_693/mul:z:0lstm_cell_693/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_693/Sigmoid_2Sigmoidlstm_cell_693/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_693/Relu_1Relulstm_cell_693/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_693/mul_2Mullstm_cell_693/Sigmoid_2:y:0"lstm_cell_693/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_693_matmul_readvariableop_resource.lstm_cell_693_matmul_1_readvariableop_resource-lstm_cell_693_biasadd_readvariableop_resource*
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
while_body_4361702*
condR
while_cond_4361701*K
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
NoOpNoOp%^lstm_cell_693/BiasAdd/ReadVariableOp$^lstm_cell_693/MatMul/ReadVariableOp&^lstm_cell_693/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_693/BiasAdd/ReadVariableOp$lstm_cell_693/BiasAdd/ReadVariableOp2J
#lstm_cell_693/MatMul/ReadVariableOp#lstm_cell_693/MatMul/ReadVariableOp2N
%lstm_cell_693/MatMul_1/ReadVariableOp%lstm_cell_693/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
while_body_4364617
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_694_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_694_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_694_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_694_matmul_readvariableop_resource:	d?G
4while_lstm_cell_694_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_694_biasadd_readvariableop_resource:	???*while/lstm_cell_694/BiasAdd/ReadVariableOp?)while/lstm_cell_694/MatMul/ReadVariableOp?+while/lstm_cell_694/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_694/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_694_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_694/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_694/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_694/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_694_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_694/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_694/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_694/addAddV2$while/lstm_cell_694/MatMul:product:0&while/lstm_cell_694/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_694/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_694_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_694/BiasAddBiasAddwhile/lstm_cell_694/add:z:02while/lstm_cell_694/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_694/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_694/splitSplit,while/lstm_cell_694/split/split_dim:output:0$while/lstm_cell_694/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_694/SigmoidSigmoid"while/lstm_cell_694/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_694/Sigmoid_1Sigmoid"while/lstm_cell_694/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_694/mulMul!while/lstm_cell_694/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_694/ReluRelu"while/lstm_cell_694/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_694/mul_1Mulwhile/lstm_cell_694/Sigmoid:y:0&while/lstm_cell_694/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_694/add_1AddV2while/lstm_cell_694/mul:z:0while/lstm_cell_694/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_694/Sigmoid_2Sigmoid"while/lstm_cell_694/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_694/Relu_1Reluwhile/lstm_cell_694/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_694/mul_2Mul!while/lstm_cell_694/Sigmoid_2:y:0(while/lstm_cell_694/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_694/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_694/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_694/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_694/BiasAdd/ReadVariableOp*^while/lstm_cell_694/MatMul/ReadVariableOp,^while/lstm_cell_694/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_694_biasadd_readvariableop_resource5while_lstm_cell_694_biasadd_readvariableop_resource_0"n
4while_lstm_cell_694_matmul_1_readvariableop_resource6while_lstm_cell_694_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_694_matmul_readvariableop_resource4while_lstm_cell_694_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_694/BiasAdd/ReadVariableOp*while/lstm_cell_694/BiasAdd/ReadVariableOp2V
)while/lstm_cell_694/MatMul/ReadVariableOp)while/lstm_cell_694/MatMul/ReadVariableOp2Z
+while/lstm_cell_694/MatMul_1/ReadVariableOp+while/lstm_cell_694/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_4364286
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4364286___redundant_placeholder05
1while_while_cond_4364286___redundant_placeholder15
1while_while_cond_4364286___redundant_placeholder25
1while_while_cond_4364286___redundant_placeholder3
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
E__inference_lstm_694_layer_call_and_return_conditional_losses_4361087

inputs(
lstm_cell_694_4361005:	d?(
lstm_cell_694_4361007:	2?$
lstm_cell_694_4361009:	?
identity??%lstm_cell_694/StatefulPartitionedCall?while;
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
%lstm_cell_694/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_694_4361005lstm_cell_694_4361007lstm_cell_694_4361009*
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
J__inference_lstm_cell_694_layer_call_and_return_conditional_losses_4361004n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_694_4361005lstm_cell_694_4361007lstm_cell_694_4361009*
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
while_body_4361018*
condR
while_cond_4361017*K
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
NoOpNoOp&^lstm_cell_694/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_694/StatefulPartitionedCall%lstm_cell_694/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?8
?
while_body_4362383
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_694_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_694_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_694_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_694_matmul_readvariableop_resource:	d?G
4while_lstm_cell_694_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_694_biasadd_readvariableop_resource:	???*while/lstm_cell_694/BiasAdd/ReadVariableOp?)while/lstm_cell_694/MatMul/ReadVariableOp?+while/lstm_cell_694/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_694/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_694_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_694/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_694/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_694/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_694_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_694/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_694/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_694/addAddV2$while/lstm_cell_694/MatMul:product:0&while/lstm_cell_694/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_694/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_694_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_694/BiasAddBiasAddwhile/lstm_cell_694/add:z:02while/lstm_cell_694/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_694/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_694/splitSplit,while/lstm_cell_694/split/split_dim:output:0$while/lstm_cell_694/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_694/SigmoidSigmoid"while/lstm_cell_694/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_694/Sigmoid_1Sigmoid"while/lstm_cell_694/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_694/mulMul!while/lstm_cell_694/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_694/ReluRelu"while/lstm_cell_694/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_694/mul_1Mulwhile/lstm_cell_694/Sigmoid:y:0&while/lstm_cell_694/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_694/add_1AddV2while/lstm_cell_694/mul:z:0while/lstm_cell_694/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_694/Sigmoid_2Sigmoid"while/lstm_cell_694/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_694/Relu_1Reluwhile/lstm_cell_694/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_694/mul_2Mul!while/lstm_cell_694/Sigmoid_2:y:0(while/lstm_cell_694/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_694/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_694/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_694/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_694/BiasAdd/ReadVariableOp*^while/lstm_cell_694/MatMul/ReadVariableOp,^while/lstm_cell_694/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_694_biasadd_readvariableop_resource5while_lstm_cell_694_biasadd_readvariableop_resource_0"n
4while_lstm_cell_694_matmul_1_readvariableop_resource6while_lstm_cell_694_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_694_matmul_readvariableop_resource4while_lstm_cell_694_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_694/BiasAdd/ReadVariableOp*while/lstm_cell_694/BiasAdd/ReadVariableOp2V
)while/lstm_cell_694/MatMul/ReadVariableOp)while/lstm_cell_694/MatMul/ReadVariableOp2Z
+while/lstm_cell_694/MatMul_1/ReadVariableOp+while/lstm_cell_694/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
%__inference_signature_wrapper_4362847
lstm_693_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_693_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
"__inference__wrapped_model_4360587o
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
_user_specified_namelstm_693_input
?C
?

lstm_694_while_body_4363526.
*lstm_694_while_lstm_694_while_loop_counter4
0lstm_694_while_lstm_694_while_maximum_iterations
lstm_694_while_placeholder 
lstm_694_while_placeholder_1 
lstm_694_while_placeholder_2 
lstm_694_while_placeholder_3-
)lstm_694_while_lstm_694_strided_slice_1_0i
elstm_694_while_tensorarrayv2read_tensorlistgetitem_lstm_694_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_694_while_lstm_cell_694_matmul_readvariableop_resource_0:	d?R
?lstm_694_while_lstm_cell_694_matmul_1_readvariableop_resource_0:	2?M
>lstm_694_while_lstm_cell_694_biasadd_readvariableop_resource_0:	?
lstm_694_while_identity
lstm_694_while_identity_1
lstm_694_while_identity_2
lstm_694_while_identity_3
lstm_694_while_identity_4
lstm_694_while_identity_5+
'lstm_694_while_lstm_694_strided_slice_1g
clstm_694_while_tensorarrayv2read_tensorlistgetitem_lstm_694_tensorarrayunstack_tensorlistfromtensorN
;lstm_694_while_lstm_cell_694_matmul_readvariableop_resource:	d?P
=lstm_694_while_lstm_cell_694_matmul_1_readvariableop_resource:	2?K
<lstm_694_while_lstm_cell_694_biasadd_readvariableop_resource:	???3lstm_694/while/lstm_cell_694/BiasAdd/ReadVariableOp?2lstm_694/while/lstm_cell_694/MatMul/ReadVariableOp?4lstm_694/while/lstm_cell_694/MatMul_1/ReadVariableOp?
@lstm_694/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_694/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_694_while_tensorarrayv2read_tensorlistgetitem_lstm_694_tensorarrayunstack_tensorlistfromtensor_0lstm_694_while_placeholderIlstm_694/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_694/while/lstm_cell_694/MatMul/ReadVariableOpReadVariableOp=lstm_694_while_lstm_cell_694_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_694/while/lstm_cell_694/MatMulMatMul9lstm_694/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_694/while/lstm_cell_694/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_694/while/lstm_cell_694/MatMul_1/ReadVariableOpReadVariableOp?lstm_694_while_lstm_cell_694_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_694/while/lstm_cell_694/MatMul_1MatMullstm_694_while_placeholder_2<lstm_694/while/lstm_cell_694/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_694/while/lstm_cell_694/addAddV2-lstm_694/while/lstm_cell_694/MatMul:product:0/lstm_694/while/lstm_cell_694/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_694/while/lstm_cell_694/BiasAdd/ReadVariableOpReadVariableOp>lstm_694_while_lstm_cell_694_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_694/while/lstm_cell_694/BiasAddBiasAdd$lstm_694/while/lstm_cell_694/add:z:0;lstm_694/while/lstm_cell_694/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_694/while/lstm_cell_694/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_694/while/lstm_cell_694/splitSplit5lstm_694/while/lstm_cell_694/split/split_dim:output:0-lstm_694/while/lstm_cell_694/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_694/while/lstm_cell_694/SigmoidSigmoid+lstm_694/while/lstm_cell_694/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_694/while/lstm_cell_694/Sigmoid_1Sigmoid+lstm_694/while/lstm_cell_694/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_694/while/lstm_cell_694/mulMul*lstm_694/while/lstm_cell_694/Sigmoid_1:y:0lstm_694_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_694/while/lstm_cell_694/ReluRelu+lstm_694/while/lstm_cell_694/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_694/while/lstm_cell_694/mul_1Mul(lstm_694/while/lstm_cell_694/Sigmoid:y:0/lstm_694/while/lstm_cell_694/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_694/while/lstm_cell_694/add_1AddV2$lstm_694/while/lstm_cell_694/mul:z:0&lstm_694/while/lstm_cell_694/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_694/while/lstm_cell_694/Sigmoid_2Sigmoid+lstm_694/while/lstm_cell_694/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_694/while/lstm_cell_694/Relu_1Relu&lstm_694/while/lstm_cell_694/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_694/while/lstm_cell_694/mul_2Mul*lstm_694/while/lstm_cell_694/Sigmoid_2:y:01lstm_694/while/lstm_cell_694/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_694/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_694_while_placeholder_1lstm_694_while_placeholder&lstm_694/while/lstm_cell_694/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_694/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_694/while/addAddV2lstm_694_while_placeholderlstm_694/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_694/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_694/while/add_1AddV2*lstm_694_while_lstm_694_while_loop_counterlstm_694/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_694/while/IdentityIdentitylstm_694/while/add_1:z:0^lstm_694/while/NoOp*
T0*
_output_shapes
: ?
lstm_694/while/Identity_1Identity0lstm_694_while_lstm_694_while_maximum_iterations^lstm_694/while/NoOp*
T0*
_output_shapes
: t
lstm_694/while/Identity_2Identitylstm_694/while/add:z:0^lstm_694/while/NoOp*
T0*
_output_shapes
: ?
lstm_694/while/Identity_3IdentityClstm_694/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_694/while/NoOp*
T0*
_output_shapes
: ?
lstm_694/while/Identity_4Identity&lstm_694/while/lstm_cell_694/mul_2:z:0^lstm_694/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_694/while/Identity_5Identity&lstm_694/while/lstm_cell_694/add_1:z:0^lstm_694/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_694/while/NoOpNoOp4^lstm_694/while/lstm_cell_694/BiasAdd/ReadVariableOp3^lstm_694/while/lstm_cell_694/MatMul/ReadVariableOp5^lstm_694/while/lstm_cell_694/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_694_while_identity lstm_694/while/Identity:output:0"?
lstm_694_while_identity_1"lstm_694/while/Identity_1:output:0"?
lstm_694_while_identity_2"lstm_694/while/Identity_2:output:0"?
lstm_694_while_identity_3"lstm_694/while/Identity_3:output:0"?
lstm_694_while_identity_4"lstm_694/while/Identity_4:output:0"?
lstm_694_while_identity_5"lstm_694/while/Identity_5:output:0"T
'lstm_694_while_lstm_694_strided_slice_1)lstm_694_while_lstm_694_strided_slice_1_0"~
<lstm_694_while_lstm_cell_694_biasadd_readvariableop_resource>lstm_694_while_lstm_cell_694_biasadd_readvariableop_resource_0"?
=lstm_694_while_lstm_cell_694_matmul_1_readvariableop_resource?lstm_694_while_lstm_cell_694_matmul_1_readvariableop_resource_0"|
;lstm_694_while_lstm_cell_694_matmul_readvariableop_resource=lstm_694_while_lstm_cell_694_matmul_readvariableop_resource_0"?
clstm_694_while_tensorarrayv2read_tensorlistgetitem_lstm_694_tensorarrayunstack_tensorlistfromtensorelstm_694_while_tensorarrayv2read_tensorlistgetitem_lstm_694_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_694/while/lstm_cell_694/BiasAdd/ReadVariableOp3lstm_694/while/lstm_cell_694/BiasAdd/ReadVariableOp2h
2lstm_694/while/lstm_cell_694/MatMul/ReadVariableOp2lstm_694/while/lstm_cell_694/MatMul/ReadVariableOp2l
4lstm_694/while/lstm_cell_694/MatMul_1/ReadVariableOp4lstm_694/while/lstm_cell_694/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_693_layer_call_and_return_conditional_losses_4363942
inputs_0?
,lstm_cell_693_matmul_readvariableop_resource:	?A
.lstm_cell_693_matmul_1_readvariableop_resource:	d?<
-lstm_cell_693_biasadd_readvariableop_resource:	?
identity??$lstm_cell_693/BiasAdd/ReadVariableOp?#lstm_cell_693/MatMul/ReadVariableOp?%lstm_cell_693/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_693/MatMul/ReadVariableOpReadVariableOp,lstm_cell_693_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_693/MatMulMatMulstrided_slice_2:output:0+lstm_cell_693/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_693/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_693_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_693/MatMul_1MatMulzeros:output:0-lstm_cell_693/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_693/addAddV2lstm_cell_693/MatMul:product:0 lstm_cell_693/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_693/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_693_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_693/BiasAddBiasAddlstm_cell_693/add:z:0,lstm_cell_693/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_693/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_693/splitSplit&lstm_cell_693/split/split_dim:output:0lstm_cell_693/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_693/SigmoidSigmoidlstm_cell_693/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_693/Sigmoid_1Sigmoidlstm_cell_693/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_693/mulMullstm_cell_693/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_693/ReluRelulstm_cell_693/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_693/mul_1Mullstm_cell_693/Sigmoid:y:0 lstm_cell_693/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_693/add_1AddV2lstm_cell_693/mul:z:0lstm_cell_693/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_693/Sigmoid_2Sigmoidlstm_cell_693/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_693/Relu_1Relulstm_cell_693/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_693/mul_2Mullstm_cell_693/Sigmoid_2:y:0"lstm_cell_693/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_693_matmul_readvariableop_resource.lstm_cell_693_matmul_1_readvariableop_resource-lstm_cell_693_biasadd_readvariableop_resource*
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
while_body_4363858*
condR
while_cond_4363857*K
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
NoOpNoOp%^lstm_cell_693/BiasAdd/ReadVariableOp$^lstm_cell_693/MatMul/ReadVariableOp&^lstm_cell_693/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_693/BiasAdd/ReadVariableOp$lstm_cell_693/BiasAdd/ReadVariableOp2J
#lstm_cell_693/MatMul/ReadVariableOp#lstm_cell_693/MatMul/ReadVariableOp2N
%lstm_cell_693/MatMul_1/ReadVariableOp%lstm_cell_693/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?8
?
while_body_4364144
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_693_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_693_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_693_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_693_matmul_readvariableop_resource:	?G
4while_lstm_cell_693_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_693_biasadd_readvariableop_resource:	???*while/lstm_cell_693/BiasAdd/ReadVariableOp?)while/lstm_cell_693/MatMul/ReadVariableOp?+while/lstm_cell_693/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_693/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_693_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_693/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_693/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_693/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_693_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_693/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_693/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_693/addAddV2$while/lstm_cell_693/MatMul:product:0&while/lstm_cell_693/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_693/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_693_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_693/BiasAddBiasAddwhile/lstm_cell_693/add:z:02while/lstm_cell_693/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_693/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_693/splitSplit,while/lstm_cell_693/split/split_dim:output:0$while/lstm_cell_693/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_693/SigmoidSigmoid"while/lstm_cell_693/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_693/Sigmoid_1Sigmoid"while/lstm_cell_693/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_693/mulMul!while/lstm_cell_693/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_693/ReluRelu"while/lstm_cell_693/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_693/mul_1Mulwhile/lstm_cell_693/Sigmoid:y:0&while/lstm_cell_693/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_693/add_1AddV2while/lstm_cell_693/mul:z:0while/lstm_cell_693/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_693/Sigmoid_2Sigmoid"while/lstm_cell_693/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_693/Relu_1Reluwhile/lstm_cell_693/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_693/mul_2Mul!while/lstm_cell_693/Sigmoid_2:y:0(while/lstm_cell_693/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_693/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_693/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_693/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_693/BiasAdd/ReadVariableOp*^while/lstm_cell_693/MatMul/ReadVariableOp,^while/lstm_cell_693/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_693_biasadd_readvariableop_resource5while_lstm_cell_693_biasadd_readvariableop_resource_0"n
4while_lstm_cell_693_matmul_1_readvariableop_resource6while_lstm_cell_693_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_693_matmul_readvariableop_resource4while_lstm_cell_693_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_693/BiasAdd/ReadVariableOp*while/lstm_cell_693/BiasAdd/ReadVariableOp2V
)while/lstm_cell_693/MatMul/ReadVariableOp)while/lstm_cell_693/MatMul/ReadVariableOp2Z
+while/lstm_cell_693/MatMul_1/ReadVariableOp+while/lstm_cell_693/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_4362218
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_695_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_695_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_695_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_695_matmul_readvariableop_resource:2(F
4while_lstm_cell_695_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_695_biasadd_readvariableop_resource:(??*while/lstm_cell_695/BiasAdd/ReadVariableOp?)while/lstm_cell_695/MatMul/ReadVariableOp?+while/lstm_cell_695/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_695/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_695_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_695/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_695/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_695/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_695_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_695/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_695/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_695/addAddV2$while/lstm_cell_695/MatMul:product:0&while/lstm_cell_695/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_695/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_695_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_695/BiasAddBiasAddwhile/lstm_cell_695/add:z:02while/lstm_cell_695/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_695/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_695/splitSplit,while/lstm_cell_695/split/split_dim:output:0$while/lstm_cell_695/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_695/SigmoidSigmoid"while/lstm_cell_695/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_695/Sigmoid_1Sigmoid"while/lstm_cell_695/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_695/mulMul!while/lstm_cell_695/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_695/ReluRelu"while/lstm_cell_695/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_695/mul_1Mulwhile/lstm_cell_695/Sigmoid:y:0&while/lstm_cell_695/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_695/add_1AddV2while/lstm_cell_695/mul:z:0while/lstm_cell_695/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_695/Sigmoid_2Sigmoid"while/lstm_cell_695/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_695/Relu_1Reluwhile/lstm_cell_695/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_695/mul_2Mul!while/lstm_cell_695/Sigmoid_2:y:0(while/lstm_cell_695/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_695/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_695/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_695/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_695/BiasAdd/ReadVariableOp*^while/lstm_cell_695/MatMul/ReadVariableOp,^while/lstm_cell_695/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_695_biasadd_readvariableop_resource5while_lstm_cell_695_biasadd_readvariableop_resource_0"n
4while_lstm_cell_695_matmul_1_readvariableop_resource6while_lstm_cell_695_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_695_matmul_readvariableop_resource4while_lstm_cell_695_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_695/BiasAdd/ReadVariableOp*while/lstm_cell_695/BiasAdd/ReadVariableOp2V
)while/lstm_cell_695/MatMul/ReadVariableOp)while/lstm_cell_695/MatMul/ReadVariableOp2Z
+while/lstm_cell_695/MatMul_1/ReadVariableOp+while/lstm_cell_695/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

lstm_695_while_body_4363238.
*lstm_695_while_lstm_695_while_loop_counter4
0lstm_695_while_lstm_695_while_maximum_iterations
lstm_695_while_placeholder 
lstm_695_while_placeholder_1 
lstm_695_while_placeholder_2 
lstm_695_while_placeholder_3-
)lstm_695_while_lstm_695_strided_slice_1_0i
elstm_695_while_tensorarrayv2read_tensorlistgetitem_lstm_695_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_695_while_lstm_cell_695_matmul_readvariableop_resource_0:2(Q
?lstm_695_while_lstm_cell_695_matmul_1_readvariableop_resource_0:
(L
>lstm_695_while_lstm_cell_695_biasadd_readvariableop_resource_0:(
lstm_695_while_identity
lstm_695_while_identity_1
lstm_695_while_identity_2
lstm_695_while_identity_3
lstm_695_while_identity_4
lstm_695_while_identity_5+
'lstm_695_while_lstm_695_strided_slice_1g
clstm_695_while_tensorarrayv2read_tensorlistgetitem_lstm_695_tensorarrayunstack_tensorlistfromtensorM
;lstm_695_while_lstm_cell_695_matmul_readvariableop_resource:2(O
=lstm_695_while_lstm_cell_695_matmul_1_readvariableop_resource:
(J
<lstm_695_while_lstm_cell_695_biasadd_readvariableop_resource:(??3lstm_695/while/lstm_cell_695/BiasAdd/ReadVariableOp?2lstm_695/while/lstm_cell_695/MatMul/ReadVariableOp?4lstm_695/while/lstm_cell_695/MatMul_1/ReadVariableOp?
@lstm_695/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_695/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_695_while_tensorarrayv2read_tensorlistgetitem_lstm_695_tensorarrayunstack_tensorlistfromtensor_0lstm_695_while_placeholderIlstm_695/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_695/while/lstm_cell_695/MatMul/ReadVariableOpReadVariableOp=lstm_695_while_lstm_cell_695_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_695/while/lstm_cell_695/MatMulMatMul9lstm_695/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_695/while/lstm_cell_695/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_695/while/lstm_cell_695/MatMul_1/ReadVariableOpReadVariableOp?lstm_695_while_lstm_cell_695_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_695/while/lstm_cell_695/MatMul_1MatMullstm_695_while_placeholder_2<lstm_695/while/lstm_cell_695/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_695/while/lstm_cell_695/addAddV2-lstm_695/while/lstm_cell_695/MatMul:product:0/lstm_695/while/lstm_cell_695/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_695/while/lstm_cell_695/BiasAdd/ReadVariableOpReadVariableOp>lstm_695_while_lstm_cell_695_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_695/while/lstm_cell_695/BiasAddBiasAdd$lstm_695/while/lstm_cell_695/add:z:0;lstm_695/while/lstm_cell_695/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_695/while/lstm_cell_695/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_695/while/lstm_cell_695/splitSplit5lstm_695/while/lstm_cell_695/split/split_dim:output:0-lstm_695/while/lstm_cell_695/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_695/while/lstm_cell_695/SigmoidSigmoid+lstm_695/while/lstm_cell_695/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_695/while/lstm_cell_695/Sigmoid_1Sigmoid+lstm_695/while/lstm_cell_695/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_695/while/lstm_cell_695/mulMul*lstm_695/while/lstm_cell_695/Sigmoid_1:y:0lstm_695_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_695/while/lstm_cell_695/ReluRelu+lstm_695/while/lstm_cell_695/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_695/while/lstm_cell_695/mul_1Mul(lstm_695/while/lstm_cell_695/Sigmoid:y:0/lstm_695/while/lstm_cell_695/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_695/while/lstm_cell_695/add_1AddV2$lstm_695/while/lstm_cell_695/mul:z:0&lstm_695/while/lstm_cell_695/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_695/while/lstm_cell_695/Sigmoid_2Sigmoid+lstm_695/while/lstm_cell_695/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_695/while/lstm_cell_695/Relu_1Relu&lstm_695/while/lstm_cell_695/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_695/while/lstm_cell_695/mul_2Mul*lstm_695/while/lstm_cell_695/Sigmoid_2:y:01lstm_695/while/lstm_cell_695/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_695/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_695_while_placeholder_1lstm_695_while_placeholder&lstm_695/while/lstm_cell_695/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_695/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_695/while/addAddV2lstm_695_while_placeholderlstm_695/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_695/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_695/while/add_1AddV2*lstm_695_while_lstm_695_while_loop_counterlstm_695/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_695/while/IdentityIdentitylstm_695/while/add_1:z:0^lstm_695/while/NoOp*
T0*
_output_shapes
: ?
lstm_695/while/Identity_1Identity0lstm_695_while_lstm_695_while_maximum_iterations^lstm_695/while/NoOp*
T0*
_output_shapes
: t
lstm_695/while/Identity_2Identitylstm_695/while/add:z:0^lstm_695/while/NoOp*
T0*
_output_shapes
: ?
lstm_695/while/Identity_3IdentityClstm_695/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_695/while/NoOp*
T0*
_output_shapes
: ?
lstm_695/while/Identity_4Identity&lstm_695/while/lstm_cell_695/mul_2:z:0^lstm_695/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_695/while/Identity_5Identity&lstm_695/while/lstm_cell_695/add_1:z:0^lstm_695/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_695/while/NoOpNoOp4^lstm_695/while/lstm_cell_695/BiasAdd/ReadVariableOp3^lstm_695/while/lstm_cell_695/MatMul/ReadVariableOp5^lstm_695/while/lstm_cell_695/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_695_while_identity lstm_695/while/Identity:output:0"?
lstm_695_while_identity_1"lstm_695/while/Identity_1:output:0"?
lstm_695_while_identity_2"lstm_695/while/Identity_2:output:0"?
lstm_695_while_identity_3"lstm_695/while/Identity_3:output:0"?
lstm_695_while_identity_4"lstm_695/while/Identity_4:output:0"?
lstm_695_while_identity_5"lstm_695/while/Identity_5:output:0"T
'lstm_695_while_lstm_695_strided_slice_1)lstm_695_while_lstm_695_strided_slice_1_0"~
<lstm_695_while_lstm_cell_695_biasadd_readvariableop_resource>lstm_695_while_lstm_cell_695_biasadd_readvariableop_resource_0"?
=lstm_695_while_lstm_cell_695_matmul_1_readvariableop_resource?lstm_695_while_lstm_cell_695_matmul_1_readvariableop_resource_0"|
;lstm_695_while_lstm_cell_695_matmul_readvariableop_resource=lstm_695_while_lstm_cell_695_matmul_readvariableop_resource_0"?
clstm_695_while_tensorarrayv2read_tensorlistgetitem_lstm_695_tensorarrayunstack_tensorlistfromtensorelstm_695_while_tensorarrayv2read_tensorlistgetitem_lstm_695_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_695/while/lstm_cell_695/BiasAdd/ReadVariableOp3lstm_695/while/lstm_cell_695/BiasAdd/ReadVariableOp2h
2lstm_695/while/lstm_cell_695/MatMul/ReadVariableOp2lstm_695/while/lstm_cell_695/MatMul/ReadVariableOp2l
4lstm_695/while/lstm_cell_695/MatMul_1/ReadVariableOp4lstm_695/while/lstm_cell_695/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_695_layer_call_and_return_conditional_losses_4365460

inputs>
,lstm_cell_695_matmul_readvariableop_resource:2(@
.lstm_cell_695_matmul_1_readvariableop_resource:
(;
-lstm_cell_695_biasadd_readvariableop_resource:(
identity??$lstm_cell_695/BiasAdd/ReadVariableOp?#lstm_cell_695/MatMul/ReadVariableOp?%lstm_cell_695/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_695/MatMul/ReadVariableOpReadVariableOp,lstm_cell_695_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_695/MatMulMatMulstrided_slice_2:output:0+lstm_cell_695/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_695/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_695_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_695/MatMul_1MatMulzeros:output:0-lstm_cell_695/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_695/addAddV2lstm_cell_695/MatMul:product:0 lstm_cell_695/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_695/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_695_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_695/BiasAddBiasAddlstm_cell_695/add:z:0,lstm_cell_695/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_695/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_695/splitSplit&lstm_cell_695/split/split_dim:output:0lstm_cell_695/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_695/SigmoidSigmoidlstm_cell_695/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_695/Sigmoid_1Sigmoidlstm_cell_695/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_695/mulMullstm_cell_695/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_695/ReluRelulstm_cell_695/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_695/mul_1Mullstm_cell_695/Sigmoid:y:0 lstm_cell_695/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_695/add_1AddV2lstm_cell_695/mul:z:0lstm_cell_695/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_695/Sigmoid_2Sigmoidlstm_cell_695/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_695/Relu_1Relulstm_cell_695/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_695/mul_2Mullstm_cell_695/Sigmoid_2:y:0"lstm_cell_695/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_695_matmul_readvariableop_resource.lstm_cell_695_matmul_1_readvariableop_resource-lstm_cell_695_biasadd_readvariableop_resource*
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
while_body_4365376*
condR
while_cond_4365375*K
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
NoOpNoOp%^lstm_cell_695/BiasAdd/ReadVariableOp$^lstm_cell_695/MatMul/ReadVariableOp&^lstm_cell_695/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_695/BiasAdd/ReadVariableOp$lstm_cell_695/BiasAdd/ReadVariableOp2J
#lstm_cell_695/MatMul/ReadVariableOp#lstm_cell_695/MatMul/ReadVariableOp2N
%lstm_cell_695/MatMul_1/ReadVariableOp%lstm_cell_695/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
*__inference_lstm_693_layer_call_fn_4363777
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
E__inference_lstm_693_layer_call_and_return_conditional_losses_4360928|
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
/__inference_lstm_cell_693_layer_call_fn_4365656

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
J__inference_lstm_cell_693_layer_call_and_return_conditional_losses_4360800o
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
E__inference_lstm_693_layer_call_and_return_conditional_losses_4364371

inputs?
,lstm_cell_693_matmul_readvariableop_resource:	?A
.lstm_cell_693_matmul_1_readvariableop_resource:	d?<
-lstm_cell_693_biasadd_readvariableop_resource:	?
identity??$lstm_cell_693/BiasAdd/ReadVariableOp?#lstm_cell_693/MatMul/ReadVariableOp?%lstm_cell_693/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_693/MatMul/ReadVariableOpReadVariableOp,lstm_cell_693_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_693/MatMulMatMulstrided_slice_2:output:0+lstm_cell_693/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_693/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_693_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_693/MatMul_1MatMulzeros:output:0-lstm_cell_693/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_693/addAddV2lstm_cell_693/MatMul:product:0 lstm_cell_693/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_693/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_693_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_693/BiasAddBiasAddlstm_cell_693/add:z:0,lstm_cell_693/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_693/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_693/splitSplit&lstm_cell_693/split/split_dim:output:0lstm_cell_693/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_693/SigmoidSigmoidlstm_cell_693/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_693/Sigmoid_1Sigmoidlstm_cell_693/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_693/mulMullstm_cell_693/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_693/ReluRelulstm_cell_693/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_693/mul_1Mullstm_cell_693/Sigmoid:y:0 lstm_cell_693/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_693/add_1AddV2lstm_cell_693/mul:z:0lstm_cell_693/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_693/Sigmoid_2Sigmoidlstm_cell_693/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_693/Relu_1Relulstm_cell_693/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_693/mul_2Mullstm_cell_693/Sigmoid_2:y:0"lstm_cell_693/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_693_matmul_readvariableop_resource.lstm_cell_693_matmul_1_readvariableop_resource-lstm_cell_693_biasadd_readvariableop_resource*
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
while_body_4364287*
condR
while_cond_4364286*K
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
NoOpNoOp%^lstm_cell_693/BiasAdd/ReadVariableOp$^lstm_cell_693/MatMul/ReadVariableOp&^lstm_cell_693/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_693/BiasAdd/ReadVariableOp$lstm_cell_693/BiasAdd/ReadVariableOp2J
#lstm_cell_693/MatMul/ReadVariableOp#lstm_cell_693/MatMul/ReadVariableOp2N
%lstm_cell_693/MatMul_1/ReadVariableOp%lstm_cell_693/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_4361367
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4361367___redundant_placeholder05
1while_while_cond_4361367___redundant_placeholder15
1while_while_cond_4361367___redundant_placeholder25
1while_while_cond_4361367___redundant_placeholder3
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
while_body_4361852
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_694_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_694_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_694_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_694_matmul_readvariableop_resource:	d?G
4while_lstm_cell_694_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_694_biasadd_readvariableop_resource:	???*while/lstm_cell_694/BiasAdd/ReadVariableOp?)while/lstm_cell_694/MatMul/ReadVariableOp?+while/lstm_cell_694/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_694/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_694_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_694/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_694/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_694/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_694_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_694/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_694/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_694/addAddV2$while/lstm_cell_694/MatMul:product:0&while/lstm_cell_694/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_694/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_694_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_694/BiasAddBiasAddwhile/lstm_cell_694/add:z:02while/lstm_cell_694/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_694/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_694/splitSplit,while/lstm_cell_694/split/split_dim:output:0$while/lstm_cell_694/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_694/SigmoidSigmoid"while/lstm_cell_694/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_694/Sigmoid_1Sigmoid"while/lstm_cell_694/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_694/mulMul!while/lstm_cell_694/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_694/ReluRelu"while/lstm_cell_694/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_694/mul_1Mulwhile/lstm_cell_694/Sigmoid:y:0&while/lstm_cell_694/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_694/add_1AddV2while/lstm_cell_694/mul:z:0while/lstm_cell_694/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_694/Sigmoid_2Sigmoid"while/lstm_cell_694/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_694/Relu_1Reluwhile/lstm_cell_694/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_694/mul_2Mul!while/lstm_cell_694/Sigmoid_2:y:0(while/lstm_cell_694/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_694/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_694/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_694/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_694/BiasAdd/ReadVariableOp*^while/lstm_cell_694/MatMul/ReadVariableOp,^while/lstm_cell_694/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_694_biasadd_readvariableop_resource5while_lstm_cell_694_biasadd_readvariableop_resource_0"n
4while_lstm_cell_694_matmul_1_readvariableop_resource6while_lstm_cell_694_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_694_matmul_readvariableop_resource4while_lstm_cell_694_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_694/BiasAdd/ReadVariableOp*while/lstm_cell_694/BiasAdd/ReadVariableOp2V
)while/lstm_cell_694/MatMul/ReadVariableOp)while/lstm_cell_694/MatMul/ReadVariableOp2Z
+while/lstm_cell_694/MatMul_1/ReadVariableOp+while/lstm_cell_694/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_4361018
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_694_4361042_0:	d?0
while_lstm_cell_694_4361044_0:	2?,
while_lstm_cell_694_4361046_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_694_4361042:	d?.
while_lstm_cell_694_4361044:	2?*
while_lstm_cell_694_4361046:	???+while/lstm_cell_694/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_694/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_694_4361042_0while_lstm_cell_694_4361044_0while_lstm_cell_694_4361046_0*
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
J__inference_lstm_cell_694_layer_call_and_return_conditional_losses_4361004?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_694/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_694/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_694/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_694/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_694_4361042while_lstm_cell_694_4361042_0"<
while_lstm_cell_694_4361044while_lstm_cell_694_4361044_0"<
while_lstm_cell_694_4361046while_lstm_cell_694_4361046_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_694/StatefulPartitionedCall+while/lstm_cell_694/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_694_layer_call_fn_4365754

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
J__inference_lstm_cell_694_layer_call_and_return_conditional_losses_4361150o
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
?W
?
 __inference__traced_save_4366059
file_prefix/
+savev2_dense_231_kernel_read_readvariableop-
)savev2_dense_231_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_693_lstm_cell_693_kernel_read_readvariableopF
Bsavev2_lstm_693_lstm_cell_693_recurrent_kernel_read_readvariableop:
6savev2_lstm_693_lstm_cell_693_bias_read_readvariableop<
8savev2_lstm_694_lstm_cell_694_kernel_read_readvariableopF
Bsavev2_lstm_694_lstm_cell_694_recurrent_kernel_read_readvariableop:
6savev2_lstm_694_lstm_cell_694_bias_read_readvariableop<
8savev2_lstm_695_lstm_cell_695_kernel_read_readvariableopF
Bsavev2_lstm_695_lstm_cell_695_recurrent_kernel_read_readvariableop:
6savev2_lstm_695_lstm_cell_695_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop6
2savev2_adam_dense_231_kernel_m_read_readvariableop4
0savev2_adam_dense_231_bias_m_read_readvariableopC
?savev2_adam_lstm_693_lstm_cell_693_kernel_m_read_readvariableopM
Isavev2_adam_lstm_693_lstm_cell_693_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_693_lstm_cell_693_bias_m_read_readvariableopC
?savev2_adam_lstm_694_lstm_cell_694_kernel_m_read_readvariableopM
Isavev2_adam_lstm_694_lstm_cell_694_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_694_lstm_cell_694_bias_m_read_readvariableopC
?savev2_adam_lstm_695_lstm_cell_695_kernel_m_read_readvariableopM
Isavev2_adam_lstm_695_lstm_cell_695_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_695_lstm_cell_695_bias_m_read_readvariableop6
2savev2_adam_dense_231_kernel_v_read_readvariableop4
0savev2_adam_dense_231_bias_v_read_readvariableopC
?savev2_adam_lstm_693_lstm_cell_693_kernel_v_read_readvariableopM
Isavev2_adam_lstm_693_lstm_cell_693_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_693_lstm_cell_693_bias_v_read_readvariableopC
?savev2_adam_lstm_694_lstm_cell_694_kernel_v_read_readvariableopM
Isavev2_adam_lstm_694_lstm_cell_694_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_694_lstm_cell_694_bias_v_read_readvariableopC
?savev2_adam_lstm_695_lstm_cell_695_kernel_v_read_readvariableopM
Isavev2_adam_lstm_695_lstm_cell_695_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_695_lstm_cell_695_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_dense_231_kernel_read_readvariableop)savev2_dense_231_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_693_lstm_cell_693_kernel_read_readvariableopBsavev2_lstm_693_lstm_cell_693_recurrent_kernel_read_readvariableop6savev2_lstm_693_lstm_cell_693_bias_read_readvariableop8savev2_lstm_694_lstm_cell_694_kernel_read_readvariableopBsavev2_lstm_694_lstm_cell_694_recurrent_kernel_read_readvariableop6savev2_lstm_694_lstm_cell_694_bias_read_readvariableop8savev2_lstm_695_lstm_cell_695_kernel_read_readvariableopBsavev2_lstm_695_lstm_cell_695_recurrent_kernel_read_readvariableop6savev2_lstm_695_lstm_cell_695_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop2savev2_adam_dense_231_kernel_m_read_readvariableop0savev2_adam_dense_231_bias_m_read_readvariableop?savev2_adam_lstm_693_lstm_cell_693_kernel_m_read_readvariableopIsavev2_adam_lstm_693_lstm_cell_693_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_693_lstm_cell_693_bias_m_read_readvariableop?savev2_adam_lstm_694_lstm_cell_694_kernel_m_read_readvariableopIsavev2_adam_lstm_694_lstm_cell_694_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_694_lstm_cell_694_bias_m_read_readvariableop?savev2_adam_lstm_695_lstm_cell_695_kernel_m_read_readvariableopIsavev2_adam_lstm_695_lstm_cell_695_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_695_lstm_cell_695_bias_m_read_readvariableop2savev2_adam_dense_231_kernel_v_read_readvariableop0savev2_adam_dense_231_bias_v_read_readvariableop?savev2_adam_lstm_693_lstm_cell_693_kernel_v_read_readvariableopIsavev2_adam_lstm_693_lstm_cell_693_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_693_lstm_cell_693_bias_v_read_readvariableop?savev2_adam_lstm_694_lstm_cell_694_kernel_v_read_readvariableopIsavev2_adam_lstm_694_lstm_cell_694_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_694_lstm_cell_694_bias_v_read_readvariableop?savev2_adam_lstm_695_lstm_cell_695_kernel_v_read_readvariableopIsavev2_adam_lstm_695_lstm_cell_695_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_695_lstm_cell_695_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
?
?
K__inference_sequential_231_layer_call_and_return_conditional_losses_4362782
lstm_693_input#
lstm_693_4362755:	?#
lstm_693_4362757:	d?
lstm_693_4362759:	?#
lstm_694_4362762:	d?#
lstm_694_4362764:	2?
lstm_694_4362766:	?"
lstm_695_4362769:2("
lstm_695_4362771:
(
lstm_695_4362773:(#
dense_231_4362776:

dense_231_4362778:
identity??!dense_231/StatefulPartitionedCall? lstm_693/StatefulPartitionedCall? lstm_694/StatefulPartitionedCall? lstm_695/StatefulPartitionedCall?
 lstm_693/StatefulPartitionedCallStatefulPartitionedCalllstm_693_inputlstm_693_4362755lstm_693_4362757lstm_693_4362759*
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
E__inference_lstm_693_layer_call_and_return_conditional_losses_4361786?
 lstm_694/StatefulPartitionedCallStatefulPartitionedCall)lstm_693/StatefulPartitionedCall:output:0lstm_694_4362762lstm_694_4362764lstm_694_4362766*
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
E__inference_lstm_694_layer_call_and_return_conditional_losses_4361936?
 lstm_695/StatefulPartitionedCallStatefulPartitionedCall)lstm_694/StatefulPartitionedCall:output:0lstm_695_4362769lstm_695_4362771lstm_695_4362773*
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
E__inference_lstm_695_layer_call_and_return_conditional_losses_4362086?
!dense_231/StatefulPartitionedCallStatefulPartitionedCall)lstm_695/StatefulPartitionedCall:output:0dense_231_4362776dense_231_4362778*
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
F__inference_dense_231_layer_call_and_return_conditional_losses_4362104y
IdentityIdentity*dense_231/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_231/StatefulPartitionedCall!^lstm_693/StatefulPartitionedCall!^lstm_694/StatefulPartitionedCall!^lstm_695/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_231/StatefulPartitionedCall!dense_231/StatefulPartitionedCall2D
 lstm_693/StatefulPartitionedCall lstm_693/StatefulPartitionedCall2D
 lstm_694/StatefulPartitionedCall lstm_694/StatefulPartitionedCall2D
 lstm_695/StatefulPartitionedCall lstm_695/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_693_input
?
?
*__inference_lstm_694_layer_call_fn_4364393
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
E__inference_lstm_694_layer_call_and_return_conditional_losses_4361278|
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
while_body_4365233
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_695_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_695_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_695_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_695_matmul_readvariableop_resource:2(F
4while_lstm_cell_695_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_695_biasadd_readvariableop_resource:(??*while/lstm_cell_695/BiasAdd/ReadVariableOp?)while/lstm_cell_695/MatMul/ReadVariableOp?+while/lstm_cell_695/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_695/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_695_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_695/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_695/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_695/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_695_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_695/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_695/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_695/addAddV2$while/lstm_cell_695/MatMul:product:0&while/lstm_cell_695/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_695/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_695_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_695/BiasAddBiasAddwhile/lstm_cell_695/add:z:02while/lstm_cell_695/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_695/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_695/splitSplit,while/lstm_cell_695/split/split_dim:output:0$while/lstm_cell_695/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_695/SigmoidSigmoid"while/lstm_cell_695/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_695/Sigmoid_1Sigmoid"while/lstm_cell_695/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_695/mulMul!while/lstm_cell_695/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_695/ReluRelu"while/lstm_cell_695/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_695/mul_1Mulwhile/lstm_cell_695/Sigmoid:y:0&while/lstm_cell_695/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_695/add_1AddV2while/lstm_cell_695/mul:z:0while/lstm_cell_695/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_695/Sigmoid_2Sigmoid"while/lstm_cell_695/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_695/Relu_1Reluwhile/lstm_cell_695/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_695/mul_2Mul!while/lstm_cell_695/Sigmoid_2:y:0(while/lstm_cell_695/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_695/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_695/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_695/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_695/BiasAdd/ReadVariableOp*^while/lstm_cell_695/MatMul/ReadVariableOp,^while/lstm_cell_695/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_695_biasadd_readvariableop_resource5while_lstm_cell_695_biasadd_readvariableop_resource_0"n
4while_lstm_cell_695_matmul_1_readvariableop_resource6while_lstm_cell_695_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_695_matmul_readvariableop_resource4while_lstm_cell_695_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_695/BiasAdd/ReadVariableOp*while/lstm_cell_695/BiasAdd/ReadVariableOp2V
)while/lstm_cell_695/MatMul/ReadVariableOp)while/lstm_cell_695/MatMul/ReadVariableOp2Z
+while/lstm_cell_695/MatMul_1/ReadVariableOp+while/lstm_cell_695/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_694_layer_call_and_return_conditional_losses_4361278

inputs(
lstm_cell_694_4361196:	d?(
lstm_cell_694_4361198:	2?$
lstm_cell_694_4361200:	?
identity??%lstm_cell_694/StatefulPartitionedCall?while;
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
%lstm_cell_694/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_694_4361196lstm_cell_694_4361198lstm_cell_694_4361200*
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
J__inference_lstm_cell_694_layer_call_and_return_conditional_losses_4361150n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_694_4361196lstm_cell_694_4361198lstm_cell_694_4361200*
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
while_body_4361209*
condR
while_cond_4361208*K
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
NoOpNoOp&^lstm_cell_694/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_694/StatefulPartitionedCall%lstm_cell_694/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_694_layer_call_and_return_conditional_losses_4365818

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
while_cond_4364143
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4364143___redundant_placeholder05
1while_while_cond_4364143___redundant_placeholder15
1while_while_cond_4364143___redundant_placeholder25
1while_while_cond_4364143___redundant_placeholder3
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
while_body_4364287
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_693_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_693_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_693_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_693_matmul_readvariableop_resource:	?G
4while_lstm_cell_693_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_693_biasadd_readvariableop_resource:	???*while/lstm_cell_693/BiasAdd/ReadVariableOp?)while/lstm_cell_693/MatMul/ReadVariableOp?+while/lstm_cell_693/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_693/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_693_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_693/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_693/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_693/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_693_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_693/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_693/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_693/addAddV2$while/lstm_cell_693/MatMul:product:0&while/lstm_cell_693/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_693/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_693_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_693/BiasAddBiasAddwhile/lstm_cell_693/add:z:02while/lstm_cell_693/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_693/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_693/splitSplit,while/lstm_cell_693/split/split_dim:output:0$while/lstm_cell_693/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_693/SigmoidSigmoid"while/lstm_cell_693/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_693/Sigmoid_1Sigmoid"while/lstm_cell_693/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_693/mulMul!while/lstm_cell_693/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_693/ReluRelu"while/lstm_cell_693/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_693/mul_1Mulwhile/lstm_cell_693/Sigmoid:y:0&while/lstm_cell_693/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_693/add_1AddV2while/lstm_cell_693/mul:z:0while/lstm_cell_693/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_693/Sigmoid_2Sigmoid"while/lstm_cell_693/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_693/Relu_1Reluwhile/lstm_cell_693/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_693/mul_2Mul!while/lstm_cell_693/Sigmoid_2:y:0(while/lstm_cell_693/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_693/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_693/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_693/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_693/BiasAdd/ReadVariableOp*^while/lstm_cell_693/MatMul/ReadVariableOp,^while/lstm_cell_693/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_693_biasadd_readvariableop_resource5while_lstm_cell_693_biasadd_readvariableop_resource_0"n
4while_lstm_cell_693_matmul_1_readvariableop_resource6while_lstm_cell_693_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_693_matmul_readvariableop_resource4while_lstm_cell_693_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_693/BiasAdd/ReadVariableOp*while/lstm_cell_693/BiasAdd/ReadVariableOp2V
)while/lstm_cell_693/MatMul/ReadVariableOp)while/lstm_cell_693/MatMul/ReadVariableOp2Z
+while/lstm_cell_693/MatMul_1/ReadVariableOp+while/lstm_cell_693/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_694_layer_call_and_return_conditional_losses_4361150

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
?
*sequential_231_lstm_693_while_cond_4360218L
Hsequential_231_lstm_693_while_sequential_231_lstm_693_while_loop_counterR
Nsequential_231_lstm_693_while_sequential_231_lstm_693_while_maximum_iterations-
)sequential_231_lstm_693_while_placeholder/
+sequential_231_lstm_693_while_placeholder_1/
+sequential_231_lstm_693_while_placeholder_2/
+sequential_231_lstm_693_while_placeholder_3N
Jsequential_231_lstm_693_while_less_sequential_231_lstm_693_strided_slice_1e
asequential_231_lstm_693_while_sequential_231_lstm_693_while_cond_4360218___redundant_placeholder0e
asequential_231_lstm_693_while_sequential_231_lstm_693_while_cond_4360218___redundant_placeholder1e
asequential_231_lstm_693_while_sequential_231_lstm_693_while_cond_4360218___redundant_placeholder2e
asequential_231_lstm_693_while_sequential_231_lstm_693_while_cond_4360218___redundant_placeholder3*
&sequential_231_lstm_693_while_identity
?
"sequential_231/lstm_693/while/LessLess)sequential_231_lstm_693_while_placeholderJsequential_231_lstm_693_while_less_sequential_231_lstm_693_strided_slice_1*
T0*
_output_shapes
: {
&sequential_231/lstm_693/while/IdentityIdentity&sequential_231/lstm_693/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_231_lstm_693_while_identity/sequential_231/lstm_693/while/Identity:output:0*(
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
E__inference_lstm_695_layer_call_and_return_conditional_losses_4362086

inputs>
,lstm_cell_695_matmul_readvariableop_resource:2(@
.lstm_cell_695_matmul_1_readvariableop_resource:
(;
-lstm_cell_695_biasadd_readvariableop_resource:(
identity??$lstm_cell_695/BiasAdd/ReadVariableOp?#lstm_cell_695/MatMul/ReadVariableOp?%lstm_cell_695/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_695/MatMul/ReadVariableOpReadVariableOp,lstm_cell_695_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_695/MatMulMatMulstrided_slice_2:output:0+lstm_cell_695/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_695/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_695_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_695/MatMul_1MatMulzeros:output:0-lstm_cell_695/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_695/addAddV2lstm_cell_695/MatMul:product:0 lstm_cell_695/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_695/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_695_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_695/BiasAddBiasAddlstm_cell_695/add:z:0,lstm_cell_695/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_695/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_695/splitSplit&lstm_cell_695/split/split_dim:output:0lstm_cell_695/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_695/SigmoidSigmoidlstm_cell_695/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_695/Sigmoid_1Sigmoidlstm_cell_695/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_695/mulMullstm_cell_695/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_695/ReluRelulstm_cell_695/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_695/mul_1Mullstm_cell_695/Sigmoid:y:0 lstm_cell_695/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_695/add_1AddV2lstm_cell_695/mul:z:0lstm_cell_695/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_695/Sigmoid_2Sigmoidlstm_cell_695/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_695/Relu_1Relulstm_cell_695/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_695/mul_2Mullstm_cell_695/Sigmoid_2:y:0"lstm_cell_695/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_695_matmul_readvariableop_resource.lstm_cell_695_matmul_1_readvariableop_resource-lstm_cell_695_biasadd_readvariableop_resource*
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
while_body_4362002*
condR
while_cond_4362001*K
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
NoOpNoOp%^lstm_cell_695/BiasAdd/ReadVariableOp$^lstm_cell_695/MatMul/ReadVariableOp&^lstm_cell_695/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_695/BiasAdd/ReadVariableOp$lstm_cell_695/BiasAdd/ReadVariableOp2J
#lstm_cell_695/MatMul/ReadVariableOp#lstm_cell_695/MatMul/ReadVariableOp2N
%lstm_cell_695/MatMul_1/ReadVariableOp%lstm_cell_695/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
while_cond_4362217
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4362217___redundant_placeholder05
1while_while_cond_4362217___redundant_placeholder15
1while_while_cond_4362217___redundant_placeholder25
1while_while_cond_4362217___redundant_placeholder3
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
while_body_4365090
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_695_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_695_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_695_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_695_matmul_readvariableop_resource:2(F
4while_lstm_cell_695_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_695_biasadd_readvariableop_resource:(??*while/lstm_cell_695/BiasAdd/ReadVariableOp?)while/lstm_cell_695/MatMul/ReadVariableOp?+while/lstm_cell_695/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_695/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_695_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_695/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_695/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_695/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_695_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_695/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_695/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_695/addAddV2$while/lstm_cell_695/MatMul:product:0&while/lstm_cell_695/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_695/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_695_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_695/BiasAddBiasAddwhile/lstm_cell_695/add:z:02while/lstm_cell_695/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_695/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_695/splitSplit,while/lstm_cell_695/split/split_dim:output:0$while/lstm_cell_695/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_695/SigmoidSigmoid"while/lstm_cell_695/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_695/Sigmoid_1Sigmoid"while/lstm_cell_695/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_695/mulMul!while/lstm_cell_695/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_695/ReluRelu"while/lstm_cell_695/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_695/mul_1Mulwhile/lstm_cell_695/Sigmoid:y:0&while/lstm_cell_695/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_695/add_1AddV2while/lstm_cell_695/mul:z:0while/lstm_cell_695/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_695/Sigmoid_2Sigmoid"while/lstm_cell_695/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_695/Relu_1Reluwhile/lstm_cell_695/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_695/mul_2Mul!while/lstm_cell_695/Sigmoid_2:y:0(while/lstm_cell_695/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_695/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_695/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_695/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_695/BiasAdd/ReadVariableOp*^while/lstm_cell_695/MatMul/ReadVariableOp,^while/lstm_cell_695/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_695_biasadd_readvariableop_resource5while_lstm_cell_695_biasadd_readvariableop_resource_0"n
4while_lstm_cell_695_matmul_1_readvariableop_resource6while_lstm_cell_695_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_695_matmul_readvariableop_resource4while_lstm_cell_695_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_695/BiasAdd/ReadVariableOp*while/lstm_cell_695/BiasAdd/ReadVariableOp2V
)while/lstm_cell_695/MatMul/ReadVariableOp)while/lstm_cell_695/MatMul/ReadVariableOp2Z
+while/lstm_cell_695/MatMul_1/ReadVariableOp+while/lstm_cell_695/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_695_layer_call_and_return_conditional_losses_4365603

inputs>
,lstm_cell_695_matmul_readvariableop_resource:2(@
.lstm_cell_695_matmul_1_readvariableop_resource:
(;
-lstm_cell_695_biasadd_readvariableop_resource:(
identity??$lstm_cell_695/BiasAdd/ReadVariableOp?#lstm_cell_695/MatMul/ReadVariableOp?%lstm_cell_695/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_695/MatMul/ReadVariableOpReadVariableOp,lstm_cell_695_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_695/MatMulMatMulstrided_slice_2:output:0+lstm_cell_695/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_695/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_695_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_695/MatMul_1MatMulzeros:output:0-lstm_cell_695/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_695/addAddV2lstm_cell_695/MatMul:product:0 lstm_cell_695/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_695/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_695_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_695/BiasAddBiasAddlstm_cell_695/add:z:0,lstm_cell_695/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_695/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_695/splitSplit&lstm_cell_695/split/split_dim:output:0lstm_cell_695/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_695/SigmoidSigmoidlstm_cell_695/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_695/Sigmoid_1Sigmoidlstm_cell_695/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_695/mulMullstm_cell_695/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_695/ReluRelulstm_cell_695/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_695/mul_1Mullstm_cell_695/Sigmoid:y:0 lstm_cell_695/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_695/add_1AddV2lstm_cell_695/mul:z:0lstm_cell_695/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_695/Sigmoid_2Sigmoidlstm_cell_695/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_695/Relu_1Relulstm_cell_695/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_695/mul_2Mullstm_cell_695/Sigmoid_2:y:0"lstm_cell_695/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_695_matmul_readvariableop_resource.lstm_cell_695_matmul_1_readvariableop_resource-lstm_cell_695_biasadd_readvariableop_resource*
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
while_body_4365519*
condR
while_cond_4365518*K
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
NoOpNoOp%^lstm_cell_695/BiasAdd/ReadVariableOp$^lstm_cell_695/MatMul/ReadVariableOp&^lstm_cell_695/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_695/BiasAdd/ReadVariableOp$lstm_cell_695/BiasAdd/ReadVariableOp2J
#lstm_cell_695/MatMul/ReadVariableOp#lstm_cell_695/MatMul/ReadVariableOp2N
%lstm_cell_695/MatMul_1/ReadVariableOp%lstm_cell_695/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
while_cond_4360667
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4360667___redundant_placeholder05
1while_while_cond_4360667___redundant_placeholder15
1while_while_cond_4360667___redundant_placeholder25
1while_while_cond_4360667___redundant_placeholder3
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
J__inference_lstm_cell_693_layer_call_and_return_conditional_losses_4365688

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
while_body_4365519
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_695_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_695_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_695_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_695_matmul_readvariableop_resource:2(F
4while_lstm_cell_695_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_695_biasadd_readvariableop_resource:(??*while/lstm_cell_695/BiasAdd/ReadVariableOp?)while/lstm_cell_695/MatMul/ReadVariableOp?+while/lstm_cell_695/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_695/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_695_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_695/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_695/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_695/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_695_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_695/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_695/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_695/addAddV2$while/lstm_cell_695/MatMul:product:0&while/lstm_cell_695/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_695/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_695_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_695/BiasAddBiasAddwhile/lstm_cell_695/add:z:02while/lstm_cell_695/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_695/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_695/splitSplit,while/lstm_cell_695/split/split_dim:output:0$while/lstm_cell_695/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_695/SigmoidSigmoid"while/lstm_cell_695/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_695/Sigmoid_1Sigmoid"while/lstm_cell_695/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_695/mulMul!while/lstm_cell_695/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_695/ReluRelu"while/lstm_cell_695/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_695/mul_1Mulwhile/lstm_cell_695/Sigmoid:y:0&while/lstm_cell_695/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_695/add_1AddV2while/lstm_cell_695/mul:z:0while/lstm_cell_695/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_695/Sigmoid_2Sigmoid"while/lstm_cell_695/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_695/Relu_1Reluwhile/lstm_cell_695/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_695/mul_2Mul!while/lstm_cell_695/Sigmoid_2:y:0(while/lstm_cell_695/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_695/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_695/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_695/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_695/BiasAdd/ReadVariableOp*^while/lstm_cell_695/MatMul/ReadVariableOp,^while/lstm_cell_695/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_695_biasadd_readvariableop_resource5while_lstm_cell_695_biasadd_readvariableop_resource_0"n
4while_lstm_cell_695_matmul_1_readvariableop_resource6while_lstm_cell_695_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_695_matmul_readvariableop_resource4while_lstm_cell_695_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_695/BiasAdd/ReadVariableOp*while/lstm_cell_695/BiasAdd/ReadVariableOp2V
)while/lstm_cell_695/MatMul/ReadVariableOp)while/lstm_cell_695/MatMul/ReadVariableOp2Z
+while/lstm_cell_695/MatMul_1/ReadVariableOp+while/lstm_cell_695/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

lstm_695_while_body_4363665.
*lstm_695_while_lstm_695_while_loop_counter4
0lstm_695_while_lstm_695_while_maximum_iterations
lstm_695_while_placeholder 
lstm_695_while_placeholder_1 
lstm_695_while_placeholder_2 
lstm_695_while_placeholder_3-
)lstm_695_while_lstm_695_strided_slice_1_0i
elstm_695_while_tensorarrayv2read_tensorlistgetitem_lstm_695_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_695_while_lstm_cell_695_matmul_readvariableop_resource_0:2(Q
?lstm_695_while_lstm_cell_695_matmul_1_readvariableop_resource_0:
(L
>lstm_695_while_lstm_cell_695_biasadd_readvariableop_resource_0:(
lstm_695_while_identity
lstm_695_while_identity_1
lstm_695_while_identity_2
lstm_695_while_identity_3
lstm_695_while_identity_4
lstm_695_while_identity_5+
'lstm_695_while_lstm_695_strided_slice_1g
clstm_695_while_tensorarrayv2read_tensorlistgetitem_lstm_695_tensorarrayunstack_tensorlistfromtensorM
;lstm_695_while_lstm_cell_695_matmul_readvariableop_resource:2(O
=lstm_695_while_lstm_cell_695_matmul_1_readvariableop_resource:
(J
<lstm_695_while_lstm_cell_695_biasadd_readvariableop_resource:(??3lstm_695/while/lstm_cell_695/BiasAdd/ReadVariableOp?2lstm_695/while/lstm_cell_695/MatMul/ReadVariableOp?4lstm_695/while/lstm_cell_695/MatMul_1/ReadVariableOp?
@lstm_695/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_695/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_695_while_tensorarrayv2read_tensorlistgetitem_lstm_695_tensorarrayunstack_tensorlistfromtensor_0lstm_695_while_placeholderIlstm_695/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_695/while/lstm_cell_695/MatMul/ReadVariableOpReadVariableOp=lstm_695_while_lstm_cell_695_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_695/while/lstm_cell_695/MatMulMatMul9lstm_695/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_695/while/lstm_cell_695/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_695/while/lstm_cell_695/MatMul_1/ReadVariableOpReadVariableOp?lstm_695_while_lstm_cell_695_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_695/while/lstm_cell_695/MatMul_1MatMullstm_695_while_placeholder_2<lstm_695/while/lstm_cell_695/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_695/while/lstm_cell_695/addAddV2-lstm_695/while/lstm_cell_695/MatMul:product:0/lstm_695/while/lstm_cell_695/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_695/while/lstm_cell_695/BiasAdd/ReadVariableOpReadVariableOp>lstm_695_while_lstm_cell_695_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_695/while/lstm_cell_695/BiasAddBiasAdd$lstm_695/while/lstm_cell_695/add:z:0;lstm_695/while/lstm_cell_695/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_695/while/lstm_cell_695/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_695/while/lstm_cell_695/splitSplit5lstm_695/while/lstm_cell_695/split/split_dim:output:0-lstm_695/while/lstm_cell_695/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_695/while/lstm_cell_695/SigmoidSigmoid+lstm_695/while/lstm_cell_695/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_695/while/lstm_cell_695/Sigmoid_1Sigmoid+lstm_695/while/lstm_cell_695/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_695/while/lstm_cell_695/mulMul*lstm_695/while/lstm_cell_695/Sigmoid_1:y:0lstm_695_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_695/while/lstm_cell_695/ReluRelu+lstm_695/while/lstm_cell_695/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_695/while/lstm_cell_695/mul_1Mul(lstm_695/while/lstm_cell_695/Sigmoid:y:0/lstm_695/while/lstm_cell_695/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_695/while/lstm_cell_695/add_1AddV2$lstm_695/while/lstm_cell_695/mul:z:0&lstm_695/while/lstm_cell_695/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_695/while/lstm_cell_695/Sigmoid_2Sigmoid+lstm_695/while/lstm_cell_695/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_695/while/lstm_cell_695/Relu_1Relu&lstm_695/while/lstm_cell_695/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_695/while/lstm_cell_695/mul_2Mul*lstm_695/while/lstm_cell_695/Sigmoid_2:y:01lstm_695/while/lstm_cell_695/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_695/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_695_while_placeholder_1lstm_695_while_placeholder&lstm_695/while/lstm_cell_695/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_695/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_695/while/addAddV2lstm_695_while_placeholderlstm_695/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_695/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_695/while/add_1AddV2*lstm_695_while_lstm_695_while_loop_counterlstm_695/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_695/while/IdentityIdentitylstm_695/while/add_1:z:0^lstm_695/while/NoOp*
T0*
_output_shapes
: ?
lstm_695/while/Identity_1Identity0lstm_695_while_lstm_695_while_maximum_iterations^lstm_695/while/NoOp*
T0*
_output_shapes
: t
lstm_695/while/Identity_2Identitylstm_695/while/add:z:0^lstm_695/while/NoOp*
T0*
_output_shapes
: ?
lstm_695/while/Identity_3IdentityClstm_695/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_695/while/NoOp*
T0*
_output_shapes
: ?
lstm_695/while/Identity_4Identity&lstm_695/while/lstm_cell_695/mul_2:z:0^lstm_695/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_695/while/Identity_5Identity&lstm_695/while/lstm_cell_695/add_1:z:0^lstm_695/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_695/while/NoOpNoOp4^lstm_695/while/lstm_cell_695/BiasAdd/ReadVariableOp3^lstm_695/while/lstm_cell_695/MatMul/ReadVariableOp5^lstm_695/while/lstm_cell_695/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_695_while_identity lstm_695/while/Identity:output:0"?
lstm_695_while_identity_1"lstm_695/while/Identity_1:output:0"?
lstm_695_while_identity_2"lstm_695/while/Identity_2:output:0"?
lstm_695_while_identity_3"lstm_695/while/Identity_3:output:0"?
lstm_695_while_identity_4"lstm_695/while/Identity_4:output:0"?
lstm_695_while_identity_5"lstm_695/while/Identity_5:output:0"T
'lstm_695_while_lstm_695_strided_slice_1)lstm_695_while_lstm_695_strided_slice_1_0"~
<lstm_695_while_lstm_cell_695_biasadd_readvariableop_resource>lstm_695_while_lstm_cell_695_biasadd_readvariableop_resource_0"?
=lstm_695_while_lstm_cell_695_matmul_1_readvariableop_resource?lstm_695_while_lstm_cell_695_matmul_1_readvariableop_resource_0"|
;lstm_695_while_lstm_cell_695_matmul_readvariableop_resource=lstm_695_while_lstm_cell_695_matmul_readvariableop_resource_0"?
clstm_695_while_tensorarrayv2read_tensorlistgetitem_lstm_695_tensorarrayunstack_tensorlistfromtensorelstm_695_while_tensorarrayv2read_tensorlistgetitem_lstm_695_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_695/while/lstm_cell_695/BiasAdd/ReadVariableOp3lstm_695/while/lstm_cell_695/BiasAdd/ReadVariableOp2h
2lstm_695/while/lstm_cell_695/MatMul/ReadVariableOp2lstm_695/while/lstm_cell_695/MatMul/ReadVariableOp2l
4lstm_695/while/lstm_cell_695/MatMul_1/ReadVariableOp4lstm_695/while/lstm_cell_695/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
0__inference_sequential_231_layer_call_fn_4362874

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
K__inference_sequential_231_layer_call_and_return_conditional_losses_4362111o
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
while_body_4364760
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_694_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_694_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_694_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_694_matmul_readvariableop_resource:	d?G
4while_lstm_cell_694_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_694_biasadd_readvariableop_resource:	???*while/lstm_cell_694/BiasAdd/ReadVariableOp?)while/lstm_cell_694/MatMul/ReadVariableOp?+while/lstm_cell_694/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_694/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_694_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_694/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_694/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_694/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_694_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_694/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_694/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_694/addAddV2$while/lstm_cell_694/MatMul:product:0&while/lstm_cell_694/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_694/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_694_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_694/BiasAddBiasAddwhile/lstm_cell_694/add:z:02while/lstm_cell_694/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_694/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_694/splitSplit,while/lstm_cell_694/split/split_dim:output:0$while/lstm_cell_694/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_694/SigmoidSigmoid"while/lstm_cell_694/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_694/Sigmoid_1Sigmoid"while/lstm_cell_694/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_694/mulMul!while/lstm_cell_694/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_694/ReluRelu"while/lstm_cell_694/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_694/mul_1Mulwhile/lstm_cell_694/Sigmoid:y:0&while/lstm_cell_694/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_694/add_1AddV2while/lstm_cell_694/mul:z:0while/lstm_cell_694/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_694/Sigmoid_2Sigmoid"while/lstm_cell_694/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_694/Relu_1Reluwhile/lstm_cell_694/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_694/mul_2Mul!while/lstm_cell_694/Sigmoid_2:y:0(while/lstm_cell_694/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_694/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_694/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_694/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_694/BiasAdd/ReadVariableOp*^while/lstm_cell_694/MatMul/ReadVariableOp,^while/lstm_cell_694/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_694_biasadd_readvariableop_resource5while_lstm_cell_694_biasadd_readvariableop_resource_0"n
4while_lstm_cell_694_matmul_1_readvariableop_resource6while_lstm_cell_694_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_694_matmul_readvariableop_resource4while_lstm_cell_694_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_694/BiasAdd/ReadVariableOp*while/lstm_cell_694/BiasAdd/ReadVariableOp2V
)while/lstm_cell_694/MatMul/ReadVariableOp)while/lstm_cell_694/MatMul/ReadVariableOp2Z
+while/lstm_cell_694/MatMul_1/ReadVariableOp+while/lstm_cell_694/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_693_layer_call_and_return_conditional_losses_4365720

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
while_body_4362002
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_695_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_695_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_695_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_695_matmul_readvariableop_resource:2(F
4while_lstm_cell_695_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_695_biasadd_readvariableop_resource:(??*while/lstm_cell_695/BiasAdd/ReadVariableOp?)while/lstm_cell_695/MatMul/ReadVariableOp?+while/lstm_cell_695/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_695/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_695_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_695/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_695/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_695/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_695_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_695/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_695/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_695/addAddV2$while/lstm_cell_695/MatMul:product:0&while/lstm_cell_695/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_695/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_695_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_695/BiasAddBiasAddwhile/lstm_cell_695/add:z:02while/lstm_cell_695/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_695/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_695/splitSplit,while/lstm_cell_695/split/split_dim:output:0$while/lstm_cell_695/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_695/SigmoidSigmoid"while/lstm_cell_695/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_695/Sigmoid_1Sigmoid"while/lstm_cell_695/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_695/mulMul!while/lstm_cell_695/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_695/ReluRelu"while/lstm_cell_695/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_695/mul_1Mulwhile/lstm_cell_695/Sigmoid:y:0&while/lstm_cell_695/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_695/add_1AddV2while/lstm_cell_695/mul:z:0while/lstm_cell_695/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_695/Sigmoid_2Sigmoid"while/lstm_cell_695/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_695/Relu_1Reluwhile/lstm_cell_695/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_695/mul_2Mul!while/lstm_cell_695/Sigmoid_2:y:0(while/lstm_cell_695/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_695/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_695/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_695/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_695/BiasAdd/ReadVariableOp*^while/lstm_cell_695/MatMul/ReadVariableOp,^while/lstm_cell_695/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_695_biasadd_readvariableop_resource5while_lstm_cell_695_biasadd_readvariableop_resource_0"n
4while_lstm_cell_695_matmul_1_readvariableop_resource6while_lstm_cell_695_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_695_matmul_readvariableop_resource4while_lstm_cell_695_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_695/BiasAdd/ReadVariableOp*while/lstm_cell_695/BiasAdd/ReadVariableOp2V
)while/lstm_cell_695/MatMul/ReadVariableOp)while/lstm_cell_695/MatMul/ReadVariableOp2Z
+while/lstm_cell_695/MatMul_1/ReadVariableOp+while/lstm_cell_695/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_695_layer_call_and_return_conditional_losses_4361628

inputs'
lstm_cell_695_4361546:2('
lstm_cell_695_4361548:
(#
lstm_cell_695_4361550:(
identity??%lstm_cell_695/StatefulPartitionedCall?while;
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
%lstm_cell_695/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_695_4361546lstm_cell_695_4361548lstm_cell_695_4361550*
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
J__inference_lstm_cell_695_layer_call_and_return_conditional_losses_4361500n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_695_4361546lstm_cell_695_4361548lstm_cell_695_4361550*
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
while_body_4361559*
condR
while_cond_4361558*K
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
NoOpNoOp&^lstm_cell_695/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_695/StatefulPartitionedCall%lstm_cell_695/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?
?
while_cond_4362547
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4362547___redundant_placeholder05
1while_while_cond_4362547___redundant_placeholder15
1while_while_cond_4362547___redundant_placeholder25
1while_while_cond_4362547___redundant_placeholder3
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
while_cond_4362382
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4362382___redundant_placeholder05
1while_while_cond_4362382___redundant_placeholder15
1while_while_cond_4362382___redundant_placeholder25
1while_while_cond_4362382___redundant_placeholder3
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
E__inference_lstm_694_layer_call_and_return_conditional_losses_4364987

inputs?
,lstm_cell_694_matmul_readvariableop_resource:	d?A
.lstm_cell_694_matmul_1_readvariableop_resource:	2?<
-lstm_cell_694_biasadd_readvariableop_resource:	?
identity??$lstm_cell_694/BiasAdd/ReadVariableOp?#lstm_cell_694/MatMul/ReadVariableOp?%lstm_cell_694/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_694/MatMul/ReadVariableOpReadVariableOp,lstm_cell_694_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_694/MatMulMatMulstrided_slice_2:output:0+lstm_cell_694/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_694/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_694_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_694/MatMul_1MatMulzeros:output:0-lstm_cell_694/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_694/addAddV2lstm_cell_694/MatMul:product:0 lstm_cell_694/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_694/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_694_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_694/BiasAddBiasAddlstm_cell_694/add:z:0,lstm_cell_694/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_694/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_694/splitSplit&lstm_cell_694/split/split_dim:output:0lstm_cell_694/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_694/SigmoidSigmoidlstm_cell_694/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_694/Sigmoid_1Sigmoidlstm_cell_694/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_694/mulMullstm_cell_694/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_694/ReluRelulstm_cell_694/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_694/mul_1Mullstm_cell_694/Sigmoid:y:0 lstm_cell_694/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_694/add_1AddV2lstm_cell_694/mul:z:0lstm_cell_694/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_694/Sigmoid_2Sigmoidlstm_cell_694/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_694/Relu_1Relulstm_cell_694/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_694/mul_2Mullstm_cell_694/Sigmoid_2:y:0"lstm_cell_694/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_694_matmul_readvariableop_resource.lstm_cell_694_matmul_1_readvariableop_resource-lstm_cell_694_biasadd_readvariableop_resource*
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
while_body_4364903*
condR
while_cond_4364902*K
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
NoOpNoOp%^lstm_cell_694/BiasAdd/ReadVariableOp$^lstm_cell_694/MatMul/ReadVariableOp&^lstm_cell_694/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_694/BiasAdd/ReadVariableOp$lstm_cell_694/BiasAdd/ReadVariableOp2J
#lstm_cell_694/MatMul/ReadVariableOp#lstm_cell_694/MatMul/ReadVariableOp2N
%lstm_cell_694/MatMul_1/ReadVariableOp%lstm_cell_694/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
??
?
K__inference_sequential_231_layer_call_and_return_conditional_losses_4363755

inputsH
5lstm_693_lstm_cell_693_matmul_readvariableop_resource:	?J
7lstm_693_lstm_cell_693_matmul_1_readvariableop_resource:	d?E
6lstm_693_lstm_cell_693_biasadd_readvariableop_resource:	?H
5lstm_694_lstm_cell_694_matmul_readvariableop_resource:	d?J
7lstm_694_lstm_cell_694_matmul_1_readvariableop_resource:	2?E
6lstm_694_lstm_cell_694_biasadd_readvariableop_resource:	?G
5lstm_695_lstm_cell_695_matmul_readvariableop_resource:2(I
7lstm_695_lstm_cell_695_matmul_1_readvariableop_resource:
(D
6lstm_695_lstm_cell_695_biasadd_readvariableop_resource:(:
(dense_231_matmul_readvariableop_resource:
7
)dense_231_biasadd_readvariableop_resource:
identity?? dense_231/BiasAdd/ReadVariableOp?dense_231/MatMul/ReadVariableOp?-lstm_693/lstm_cell_693/BiasAdd/ReadVariableOp?,lstm_693/lstm_cell_693/MatMul/ReadVariableOp?.lstm_693/lstm_cell_693/MatMul_1/ReadVariableOp?lstm_693/while?-lstm_694/lstm_cell_694/BiasAdd/ReadVariableOp?,lstm_694/lstm_cell_694/MatMul/ReadVariableOp?.lstm_694/lstm_cell_694/MatMul_1/ReadVariableOp?lstm_694/while?-lstm_695/lstm_cell_695/BiasAdd/ReadVariableOp?,lstm_695/lstm_cell_695/MatMul/ReadVariableOp?.lstm_695/lstm_cell_695/MatMul_1/ReadVariableOp?lstm_695/whileD
lstm_693/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_693/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_693/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_693/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_693/strided_sliceStridedSlicelstm_693/Shape:output:0%lstm_693/strided_slice/stack:output:0'lstm_693/strided_slice/stack_1:output:0'lstm_693/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_693/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_693/zeros/packedPacklstm_693/strided_slice:output:0 lstm_693/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_693/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_693/zerosFilllstm_693/zeros/packed:output:0lstm_693/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_693/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_693/zeros_1/packedPacklstm_693/strided_slice:output:0"lstm_693/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_693/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_693/zeros_1Fill lstm_693/zeros_1/packed:output:0lstm_693/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_693/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_693/transpose	Transposeinputs lstm_693/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_693/Shape_1Shapelstm_693/transpose:y:0*
T0*
_output_shapes
:h
lstm_693/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_693/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_693/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_693/strided_slice_1StridedSlicelstm_693/Shape_1:output:0'lstm_693/strided_slice_1/stack:output:0)lstm_693/strided_slice_1/stack_1:output:0)lstm_693/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_693/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_693/TensorArrayV2TensorListReserve-lstm_693/TensorArrayV2/element_shape:output:0!lstm_693/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_693/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_693/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_693/transpose:y:0Glstm_693/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_693/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_693/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_693/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_693/strided_slice_2StridedSlicelstm_693/transpose:y:0'lstm_693/strided_slice_2/stack:output:0)lstm_693/strided_slice_2/stack_1:output:0)lstm_693/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_693/lstm_cell_693/MatMul/ReadVariableOpReadVariableOp5lstm_693_lstm_cell_693_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_693/lstm_cell_693/MatMulMatMul!lstm_693/strided_slice_2:output:04lstm_693/lstm_cell_693/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_693/lstm_cell_693/MatMul_1/ReadVariableOpReadVariableOp7lstm_693_lstm_cell_693_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_693/lstm_cell_693/MatMul_1MatMullstm_693/zeros:output:06lstm_693/lstm_cell_693/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_693/lstm_cell_693/addAddV2'lstm_693/lstm_cell_693/MatMul:product:0)lstm_693/lstm_cell_693/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_693/lstm_cell_693/BiasAdd/ReadVariableOpReadVariableOp6lstm_693_lstm_cell_693_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_693/lstm_cell_693/BiasAddBiasAddlstm_693/lstm_cell_693/add:z:05lstm_693/lstm_cell_693/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_693/lstm_cell_693/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_693/lstm_cell_693/splitSplit/lstm_693/lstm_cell_693/split/split_dim:output:0'lstm_693/lstm_cell_693/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_693/lstm_cell_693/SigmoidSigmoid%lstm_693/lstm_cell_693/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_693/lstm_cell_693/Sigmoid_1Sigmoid%lstm_693/lstm_cell_693/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_693/lstm_cell_693/mulMul$lstm_693/lstm_cell_693/Sigmoid_1:y:0lstm_693/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_693/lstm_cell_693/ReluRelu%lstm_693/lstm_cell_693/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_693/lstm_cell_693/mul_1Mul"lstm_693/lstm_cell_693/Sigmoid:y:0)lstm_693/lstm_cell_693/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_693/lstm_cell_693/add_1AddV2lstm_693/lstm_cell_693/mul:z:0 lstm_693/lstm_cell_693/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_693/lstm_cell_693/Sigmoid_2Sigmoid%lstm_693/lstm_cell_693/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_693/lstm_cell_693/Relu_1Relu lstm_693/lstm_cell_693/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_693/lstm_cell_693/mul_2Mul$lstm_693/lstm_cell_693/Sigmoid_2:y:0+lstm_693/lstm_cell_693/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_693/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_693/TensorArrayV2_1TensorListReserve/lstm_693/TensorArrayV2_1/element_shape:output:0!lstm_693/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_693/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_693/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_693/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_693/whileWhile$lstm_693/while/loop_counter:output:0*lstm_693/while/maximum_iterations:output:0lstm_693/time:output:0!lstm_693/TensorArrayV2_1:handle:0lstm_693/zeros:output:0lstm_693/zeros_1:output:0!lstm_693/strided_slice_1:output:0@lstm_693/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_693_lstm_cell_693_matmul_readvariableop_resource7lstm_693_lstm_cell_693_matmul_1_readvariableop_resource6lstm_693_lstm_cell_693_biasadd_readvariableop_resource*
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
lstm_693_while_body_4363387*'
condR
lstm_693_while_cond_4363386*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_693/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_693/TensorArrayV2Stack/TensorListStackTensorListStacklstm_693/while:output:3Blstm_693/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_693/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_693/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_693/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_693/strided_slice_3StridedSlice4lstm_693/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_693/strided_slice_3/stack:output:0)lstm_693/strided_slice_3/stack_1:output:0)lstm_693/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_693/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_693/transpose_1	Transpose4lstm_693/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_693/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_693/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_694/ShapeShapelstm_693/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_694/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_694/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_694/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_694/strided_sliceStridedSlicelstm_694/Shape:output:0%lstm_694/strided_slice/stack:output:0'lstm_694/strided_slice/stack_1:output:0'lstm_694/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_694/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_694/zeros/packedPacklstm_694/strided_slice:output:0 lstm_694/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_694/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_694/zerosFilllstm_694/zeros/packed:output:0lstm_694/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_694/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_694/zeros_1/packedPacklstm_694/strided_slice:output:0"lstm_694/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_694/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_694/zeros_1Fill lstm_694/zeros_1/packed:output:0lstm_694/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_694/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_694/transpose	Transposelstm_693/transpose_1:y:0 lstm_694/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_694/Shape_1Shapelstm_694/transpose:y:0*
T0*
_output_shapes
:h
lstm_694/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_694/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_694/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_694/strided_slice_1StridedSlicelstm_694/Shape_1:output:0'lstm_694/strided_slice_1/stack:output:0)lstm_694/strided_slice_1/stack_1:output:0)lstm_694/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_694/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_694/TensorArrayV2TensorListReserve-lstm_694/TensorArrayV2/element_shape:output:0!lstm_694/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_694/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_694/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_694/transpose:y:0Glstm_694/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_694/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_694/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_694/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_694/strided_slice_2StridedSlicelstm_694/transpose:y:0'lstm_694/strided_slice_2/stack:output:0)lstm_694/strided_slice_2/stack_1:output:0)lstm_694/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_694/lstm_cell_694/MatMul/ReadVariableOpReadVariableOp5lstm_694_lstm_cell_694_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_694/lstm_cell_694/MatMulMatMul!lstm_694/strided_slice_2:output:04lstm_694/lstm_cell_694/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_694/lstm_cell_694/MatMul_1/ReadVariableOpReadVariableOp7lstm_694_lstm_cell_694_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_694/lstm_cell_694/MatMul_1MatMullstm_694/zeros:output:06lstm_694/lstm_cell_694/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_694/lstm_cell_694/addAddV2'lstm_694/lstm_cell_694/MatMul:product:0)lstm_694/lstm_cell_694/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_694/lstm_cell_694/BiasAdd/ReadVariableOpReadVariableOp6lstm_694_lstm_cell_694_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_694/lstm_cell_694/BiasAddBiasAddlstm_694/lstm_cell_694/add:z:05lstm_694/lstm_cell_694/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_694/lstm_cell_694/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_694/lstm_cell_694/splitSplit/lstm_694/lstm_cell_694/split/split_dim:output:0'lstm_694/lstm_cell_694/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_694/lstm_cell_694/SigmoidSigmoid%lstm_694/lstm_cell_694/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_694/lstm_cell_694/Sigmoid_1Sigmoid%lstm_694/lstm_cell_694/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_694/lstm_cell_694/mulMul$lstm_694/lstm_cell_694/Sigmoid_1:y:0lstm_694/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_694/lstm_cell_694/ReluRelu%lstm_694/lstm_cell_694/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_694/lstm_cell_694/mul_1Mul"lstm_694/lstm_cell_694/Sigmoid:y:0)lstm_694/lstm_cell_694/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_694/lstm_cell_694/add_1AddV2lstm_694/lstm_cell_694/mul:z:0 lstm_694/lstm_cell_694/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_694/lstm_cell_694/Sigmoid_2Sigmoid%lstm_694/lstm_cell_694/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_694/lstm_cell_694/Relu_1Relu lstm_694/lstm_cell_694/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_694/lstm_cell_694/mul_2Mul$lstm_694/lstm_cell_694/Sigmoid_2:y:0+lstm_694/lstm_cell_694/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_694/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_694/TensorArrayV2_1TensorListReserve/lstm_694/TensorArrayV2_1/element_shape:output:0!lstm_694/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_694/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_694/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_694/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_694/whileWhile$lstm_694/while/loop_counter:output:0*lstm_694/while/maximum_iterations:output:0lstm_694/time:output:0!lstm_694/TensorArrayV2_1:handle:0lstm_694/zeros:output:0lstm_694/zeros_1:output:0!lstm_694/strided_slice_1:output:0@lstm_694/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_694_lstm_cell_694_matmul_readvariableop_resource7lstm_694_lstm_cell_694_matmul_1_readvariableop_resource6lstm_694_lstm_cell_694_biasadd_readvariableop_resource*
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
lstm_694_while_body_4363526*'
condR
lstm_694_while_cond_4363525*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_694/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_694/TensorArrayV2Stack/TensorListStackTensorListStacklstm_694/while:output:3Blstm_694/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_694/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_694/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_694/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_694/strided_slice_3StridedSlice4lstm_694/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_694/strided_slice_3/stack:output:0)lstm_694/strided_slice_3/stack_1:output:0)lstm_694/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_694/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_694/transpose_1	Transpose4lstm_694/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_694/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_694/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_695/ShapeShapelstm_694/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_695/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_695/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_695/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_695/strided_sliceStridedSlicelstm_695/Shape:output:0%lstm_695/strided_slice/stack:output:0'lstm_695/strided_slice/stack_1:output:0'lstm_695/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_695/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_695/zeros/packedPacklstm_695/strided_slice:output:0 lstm_695/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_695/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_695/zerosFilllstm_695/zeros/packed:output:0lstm_695/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_695/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_695/zeros_1/packedPacklstm_695/strided_slice:output:0"lstm_695/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_695/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_695/zeros_1Fill lstm_695/zeros_1/packed:output:0lstm_695/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_695/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_695/transpose	Transposelstm_694/transpose_1:y:0 lstm_695/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_695/Shape_1Shapelstm_695/transpose:y:0*
T0*
_output_shapes
:h
lstm_695/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_695/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_695/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_695/strided_slice_1StridedSlicelstm_695/Shape_1:output:0'lstm_695/strided_slice_1/stack:output:0)lstm_695/strided_slice_1/stack_1:output:0)lstm_695/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_695/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_695/TensorArrayV2TensorListReserve-lstm_695/TensorArrayV2/element_shape:output:0!lstm_695/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_695/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_695/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_695/transpose:y:0Glstm_695/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_695/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_695/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_695/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_695/strided_slice_2StridedSlicelstm_695/transpose:y:0'lstm_695/strided_slice_2/stack:output:0)lstm_695/strided_slice_2/stack_1:output:0)lstm_695/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_695/lstm_cell_695/MatMul/ReadVariableOpReadVariableOp5lstm_695_lstm_cell_695_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_695/lstm_cell_695/MatMulMatMul!lstm_695/strided_slice_2:output:04lstm_695/lstm_cell_695/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_695/lstm_cell_695/MatMul_1/ReadVariableOpReadVariableOp7lstm_695_lstm_cell_695_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_695/lstm_cell_695/MatMul_1MatMullstm_695/zeros:output:06lstm_695/lstm_cell_695/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_695/lstm_cell_695/addAddV2'lstm_695/lstm_cell_695/MatMul:product:0)lstm_695/lstm_cell_695/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_695/lstm_cell_695/BiasAdd/ReadVariableOpReadVariableOp6lstm_695_lstm_cell_695_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_695/lstm_cell_695/BiasAddBiasAddlstm_695/lstm_cell_695/add:z:05lstm_695/lstm_cell_695/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_695/lstm_cell_695/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_695/lstm_cell_695/splitSplit/lstm_695/lstm_cell_695/split/split_dim:output:0'lstm_695/lstm_cell_695/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_695/lstm_cell_695/SigmoidSigmoid%lstm_695/lstm_cell_695/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_695/lstm_cell_695/Sigmoid_1Sigmoid%lstm_695/lstm_cell_695/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_695/lstm_cell_695/mulMul$lstm_695/lstm_cell_695/Sigmoid_1:y:0lstm_695/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_695/lstm_cell_695/ReluRelu%lstm_695/lstm_cell_695/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_695/lstm_cell_695/mul_1Mul"lstm_695/lstm_cell_695/Sigmoid:y:0)lstm_695/lstm_cell_695/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_695/lstm_cell_695/add_1AddV2lstm_695/lstm_cell_695/mul:z:0 lstm_695/lstm_cell_695/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_695/lstm_cell_695/Sigmoid_2Sigmoid%lstm_695/lstm_cell_695/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_695/lstm_cell_695/Relu_1Relu lstm_695/lstm_cell_695/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_695/lstm_cell_695/mul_2Mul$lstm_695/lstm_cell_695/Sigmoid_2:y:0+lstm_695/lstm_cell_695/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_695/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_695/TensorArrayV2_1TensorListReserve/lstm_695/TensorArrayV2_1/element_shape:output:0!lstm_695/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_695/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_695/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_695/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_695/whileWhile$lstm_695/while/loop_counter:output:0*lstm_695/while/maximum_iterations:output:0lstm_695/time:output:0!lstm_695/TensorArrayV2_1:handle:0lstm_695/zeros:output:0lstm_695/zeros_1:output:0!lstm_695/strided_slice_1:output:0@lstm_695/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_695_lstm_cell_695_matmul_readvariableop_resource7lstm_695_lstm_cell_695_matmul_1_readvariableop_resource6lstm_695_lstm_cell_695_biasadd_readvariableop_resource*
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
lstm_695_while_body_4363665*'
condR
lstm_695_while_cond_4363664*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_695/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_695/TensorArrayV2Stack/TensorListStackTensorListStacklstm_695/while:output:3Blstm_695/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_695/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_695/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_695/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_695/strided_slice_3StridedSlice4lstm_695/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_695/strided_slice_3/stack:output:0)lstm_695/strided_slice_3/stack_1:output:0)lstm_695/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_695/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_695/transpose_1	Transpose4lstm_695/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_695/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_695/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_231/MatMul/ReadVariableOpReadVariableOp(dense_231_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_231/MatMulMatMul!lstm_695/strided_slice_3:output:0'dense_231/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_231/BiasAdd/ReadVariableOpReadVariableOp)dense_231_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_231/BiasAddBiasAdddense_231/MatMul:product:0(dense_231/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_231/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_231/BiasAdd/ReadVariableOp ^dense_231/MatMul/ReadVariableOp.^lstm_693/lstm_cell_693/BiasAdd/ReadVariableOp-^lstm_693/lstm_cell_693/MatMul/ReadVariableOp/^lstm_693/lstm_cell_693/MatMul_1/ReadVariableOp^lstm_693/while.^lstm_694/lstm_cell_694/BiasAdd/ReadVariableOp-^lstm_694/lstm_cell_694/MatMul/ReadVariableOp/^lstm_694/lstm_cell_694/MatMul_1/ReadVariableOp^lstm_694/while.^lstm_695/lstm_cell_695/BiasAdd/ReadVariableOp-^lstm_695/lstm_cell_695/MatMul/ReadVariableOp/^lstm_695/lstm_cell_695/MatMul_1/ReadVariableOp^lstm_695/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_231/BiasAdd/ReadVariableOp dense_231/BiasAdd/ReadVariableOp2B
dense_231/MatMul/ReadVariableOpdense_231/MatMul/ReadVariableOp2^
-lstm_693/lstm_cell_693/BiasAdd/ReadVariableOp-lstm_693/lstm_cell_693/BiasAdd/ReadVariableOp2\
,lstm_693/lstm_cell_693/MatMul/ReadVariableOp,lstm_693/lstm_cell_693/MatMul/ReadVariableOp2`
.lstm_693/lstm_cell_693/MatMul_1/ReadVariableOp.lstm_693/lstm_cell_693/MatMul_1/ReadVariableOp2 
lstm_693/whilelstm_693/while2^
-lstm_694/lstm_cell_694/BiasAdd/ReadVariableOp-lstm_694/lstm_cell_694/BiasAdd/ReadVariableOp2\
,lstm_694/lstm_cell_694/MatMul/ReadVariableOp,lstm_694/lstm_cell_694/MatMul/ReadVariableOp2`
.lstm_694/lstm_cell_694/MatMul_1/ReadVariableOp.lstm_694/lstm_cell_694/MatMul_1/ReadVariableOp2 
lstm_694/whilelstm_694/while2^
-lstm_695/lstm_cell_695/BiasAdd/ReadVariableOp-lstm_695/lstm_cell_695/BiasAdd/ReadVariableOp2\
,lstm_695/lstm_cell_695/MatMul/ReadVariableOp,lstm_695/lstm_cell_695/MatMul/ReadVariableOp2`
.lstm_695/lstm_cell_695/MatMul_1/ReadVariableOp.lstm_695/lstm_cell_695/MatMul_1/ReadVariableOp2 
lstm_695/whilelstm_695/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
/__inference_lstm_cell_693_layer_call_fn_4365639

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
J__inference_lstm_cell_693_layer_call_and_return_conditional_losses_4360654o
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
?
*__inference_lstm_694_layer_call_fn_4364415

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
E__inference_lstm_694_layer_call_and_return_conditional_losses_4362467s
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
F__inference_dense_231_layer_call_and_return_conditional_losses_4362104

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
lstm_695_while_cond_4363237.
*lstm_695_while_lstm_695_while_loop_counter4
0lstm_695_while_lstm_695_while_maximum_iterations
lstm_695_while_placeholder 
lstm_695_while_placeholder_1 
lstm_695_while_placeholder_2 
lstm_695_while_placeholder_30
,lstm_695_while_less_lstm_695_strided_slice_1G
Clstm_695_while_lstm_695_while_cond_4363237___redundant_placeholder0G
Clstm_695_while_lstm_695_while_cond_4363237___redundant_placeholder1G
Clstm_695_while_lstm_695_while_cond_4363237___redundant_placeholder2G
Clstm_695_while_lstm_695_while_cond_4363237___redundant_placeholder3
lstm_695_while_identity
?
lstm_695/while/LessLesslstm_695_while_placeholder,lstm_695_while_less_lstm_695_strided_slice_1*
T0*
_output_shapes
: ]
lstm_695/while/IdentityIdentitylstm_695/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_695_while_identity lstm_695/while/Identity:output:0*(
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
while_cond_4365375
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4365375___redundant_placeholder05
1while_while_cond_4365375___redundant_placeholder15
1while_while_cond_4365375___redundant_placeholder25
1while_while_cond_4365375___redundant_placeholder3
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
J__inference_lstm_cell_693_layer_call_and_return_conditional_losses_4360800

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
E__inference_lstm_694_layer_call_and_return_conditional_losses_4364701
inputs_0?
,lstm_cell_694_matmul_readvariableop_resource:	d?A
.lstm_cell_694_matmul_1_readvariableop_resource:	2?<
-lstm_cell_694_biasadd_readvariableop_resource:	?
identity??$lstm_cell_694/BiasAdd/ReadVariableOp?#lstm_cell_694/MatMul/ReadVariableOp?%lstm_cell_694/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_694/MatMul/ReadVariableOpReadVariableOp,lstm_cell_694_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_694/MatMulMatMulstrided_slice_2:output:0+lstm_cell_694/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_694/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_694_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_694/MatMul_1MatMulzeros:output:0-lstm_cell_694/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_694/addAddV2lstm_cell_694/MatMul:product:0 lstm_cell_694/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_694/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_694_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_694/BiasAddBiasAddlstm_cell_694/add:z:0,lstm_cell_694/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_694/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_694/splitSplit&lstm_cell_694/split/split_dim:output:0lstm_cell_694/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_694/SigmoidSigmoidlstm_cell_694/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_694/Sigmoid_1Sigmoidlstm_cell_694/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_694/mulMullstm_cell_694/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_694/ReluRelulstm_cell_694/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_694/mul_1Mullstm_cell_694/Sigmoid:y:0 lstm_cell_694/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_694/add_1AddV2lstm_cell_694/mul:z:0lstm_cell_694/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_694/Sigmoid_2Sigmoidlstm_cell_694/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_694/Relu_1Relulstm_cell_694/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_694/mul_2Mullstm_cell_694/Sigmoid_2:y:0"lstm_cell_694/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_694_matmul_readvariableop_resource.lstm_cell_694_matmul_1_readvariableop_resource-lstm_cell_694_biasadd_readvariableop_resource*
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
while_body_4364617*
condR
while_cond_4364616*K
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
NoOpNoOp%^lstm_cell_694/BiasAdd/ReadVariableOp$^lstm_cell_694/MatMul/ReadVariableOp&^lstm_cell_694/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_694/BiasAdd/ReadVariableOp$lstm_cell_694/BiasAdd/ReadVariableOp2J
#lstm_cell_694/MatMul/ReadVariableOp#lstm_cell_694/MatMul/ReadVariableOp2N
%lstm_cell_694/MatMul_1/ReadVariableOp%lstm_cell_694/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?
?
*__inference_lstm_695_layer_call_fn_4365031

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
E__inference_lstm_695_layer_call_and_return_conditional_losses_4362302o
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
*__inference_lstm_693_layer_call_fn_4363788

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
E__inference_lstm_693_layer_call_and_return_conditional_losses_4361786s
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
*__inference_lstm_695_layer_call_fn_4365020

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
E__inference_lstm_695_layer_call_and_return_conditional_losses_4362086o
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
while_body_4364903
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_694_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_694_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_694_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_694_matmul_readvariableop_resource:	d?G
4while_lstm_cell_694_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_694_biasadd_readvariableop_resource:	???*while/lstm_cell_694/BiasAdd/ReadVariableOp?)while/lstm_cell_694/MatMul/ReadVariableOp?+while/lstm_cell_694/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_694/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_694_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_694/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_694/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_694/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_694_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_694/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_694/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_694/addAddV2$while/lstm_cell_694/MatMul:product:0&while/lstm_cell_694/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_694/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_694_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_694/BiasAddBiasAddwhile/lstm_cell_694/add:z:02while/lstm_cell_694/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_694/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_694/splitSplit,while/lstm_cell_694/split/split_dim:output:0$while/lstm_cell_694/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_694/SigmoidSigmoid"while/lstm_cell_694/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_694/Sigmoid_1Sigmoid"while/lstm_cell_694/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_694/mulMul!while/lstm_cell_694/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_694/ReluRelu"while/lstm_cell_694/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_694/mul_1Mulwhile/lstm_cell_694/Sigmoid:y:0&while/lstm_cell_694/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_694/add_1AddV2while/lstm_cell_694/mul:z:0while/lstm_cell_694/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_694/Sigmoid_2Sigmoid"while/lstm_cell_694/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_694/Relu_1Reluwhile/lstm_cell_694/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_694/mul_2Mul!while/lstm_cell_694/Sigmoid_2:y:0(while/lstm_cell_694/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_694/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_694/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_694/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_694/BiasAdd/ReadVariableOp*^while/lstm_cell_694/MatMul/ReadVariableOp,^while/lstm_cell_694/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_694_biasadd_readvariableop_resource5while_lstm_cell_694_biasadd_readvariableop_resource_0"n
4while_lstm_cell_694_matmul_1_readvariableop_resource6while_lstm_cell_694_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_694_matmul_readvariableop_resource4while_lstm_cell_694_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_694/BiasAdd/ReadVariableOp*while/lstm_cell_694/BiasAdd/ReadVariableOp2V
)while/lstm_cell_694/MatMul/ReadVariableOp)while/lstm_cell_694/MatMul/ReadVariableOp2Z
+while/lstm_cell_694/MatMul_1/ReadVariableOp+while/lstm_cell_694/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_693_layer_call_and_return_conditional_losses_4360654

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
?T
?
*sequential_231_lstm_695_while_body_4360497L
Hsequential_231_lstm_695_while_sequential_231_lstm_695_while_loop_counterR
Nsequential_231_lstm_695_while_sequential_231_lstm_695_while_maximum_iterations-
)sequential_231_lstm_695_while_placeholder/
+sequential_231_lstm_695_while_placeholder_1/
+sequential_231_lstm_695_while_placeholder_2/
+sequential_231_lstm_695_while_placeholder_3K
Gsequential_231_lstm_695_while_sequential_231_lstm_695_strided_slice_1_0?
?sequential_231_lstm_695_while_tensorarrayv2read_tensorlistgetitem_sequential_231_lstm_695_tensorarrayunstack_tensorlistfromtensor_0^
Lsequential_231_lstm_695_while_lstm_cell_695_matmul_readvariableop_resource_0:2(`
Nsequential_231_lstm_695_while_lstm_cell_695_matmul_1_readvariableop_resource_0:
([
Msequential_231_lstm_695_while_lstm_cell_695_biasadd_readvariableop_resource_0:(*
&sequential_231_lstm_695_while_identity,
(sequential_231_lstm_695_while_identity_1,
(sequential_231_lstm_695_while_identity_2,
(sequential_231_lstm_695_while_identity_3,
(sequential_231_lstm_695_while_identity_4,
(sequential_231_lstm_695_while_identity_5I
Esequential_231_lstm_695_while_sequential_231_lstm_695_strided_slice_1?
?sequential_231_lstm_695_while_tensorarrayv2read_tensorlistgetitem_sequential_231_lstm_695_tensorarrayunstack_tensorlistfromtensor\
Jsequential_231_lstm_695_while_lstm_cell_695_matmul_readvariableop_resource:2(^
Lsequential_231_lstm_695_while_lstm_cell_695_matmul_1_readvariableop_resource:
(Y
Ksequential_231_lstm_695_while_lstm_cell_695_biasadd_readvariableop_resource:(??Bsequential_231/lstm_695/while/lstm_cell_695/BiasAdd/ReadVariableOp?Asequential_231/lstm_695/while/lstm_cell_695/MatMul/ReadVariableOp?Csequential_231/lstm_695/while/lstm_cell_695/MatMul_1/ReadVariableOp?
Osequential_231/lstm_695/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
Asequential_231/lstm_695/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_231_lstm_695_while_tensorarrayv2read_tensorlistgetitem_sequential_231_lstm_695_tensorarrayunstack_tensorlistfromtensor_0)sequential_231_lstm_695_while_placeholderXsequential_231/lstm_695/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
Asequential_231/lstm_695/while/lstm_cell_695/MatMul/ReadVariableOpReadVariableOpLsequential_231_lstm_695_while_lstm_cell_695_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
2sequential_231/lstm_695/while/lstm_cell_695/MatMulMatMulHsequential_231/lstm_695/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_231/lstm_695/while/lstm_cell_695/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
Csequential_231/lstm_695/while/lstm_cell_695/MatMul_1/ReadVariableOpReadVariableOpNsequential_231_lstm_695_while_lstm_cell_695_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
4sequential_231/lstm_695/while/lstm_cell_695/MatMul_1MatMul+sequential_231_lstm_695_while_placeholder_2Ksequential_231/lstm_695/while/lstm_cell_695/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
/sequential_231/lstm_695/while/lstm_cell_695/addAddV2<sequential_231/lstm_695/while/lstm_cell_695/MatMul:product:0>sequential_231/lstm_695/while/lstm_cell_695/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
Bsequential_231/lstm_695/while/lstm_cell_695/BiasAdd/ReadVariableOpReadVariableOpMsequential_231_lstm_695_while_lstm_cell_695_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
3sequential_231/lstm_695/while/lstm_cell_695/BiasAddBiasAdd3sequential_231/lstm_695/while/lstm_cell_695/add:z:0Jsequential_231/lstm_695/while/lstm_cell_695/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(}
;sequential_231/lstm_695/while/lstm_cell_695/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_231/lstm_695/while/lstm_cell_695/splitSplitDsequential_231/lstm_695/while/lstm_cell_695/split/split_dim:output:0<sequential_231/lstm_695/while/lstm_cell_695/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
3sequential_231/lstm_695/while/lstm_cell_695/SigmoidSigmoid:sequential_231/lstm_695/while/lstm_cell_695/split:output:0*
T0*'
_output_shapes
:?????????
?
5sequential_231/lstm_695/while/lstm_cell_695/Sigmoid_1Sigmoid:sequential_231/lstm_695/while/lstm_cell_695/split:output:1*
T0*'
_output_shapes
:?????????
?
/sequential_231/lstm_695/while/lstm_cell_695/mulMul9sequential_231/lstm_695/while/lstm_cell_695/Sigmoid_1:y:0+sequential_231_lstm_695_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
0sequential_231/lstm_695/while/lstm_cell_695/ReluRelu:sequential_231/lstm_695/while/lstm_cell_695/split:output:2*
T0*'
_output_shapes
:?????????
?
1sequential_231/lstm_695/while/lstm_cell_695/mul_1Mul7sequential_231/lstm_695/while/lstm_cell_695/Sigmoid:y:0>sequential_231/lstm_695/while/lstm_cell_695/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
1sequential_231/lstm_695/while/lstm_cell_695/add_1AddV23sequential_231/lstm_695/while/lstm_cell_695/mul:z:05sequential_231/lstm_695/while/lstm_cell_695/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
5sequential_231/lstm_695/while/lstm_cell_695/Sigmoid_2Sigmoid:sequential_231/lstm_695/while/lstm_cell_695/split:output:3*
T0*'
_output_shapes
:?????????
?
2sequential_231/lstm_695/while/lstm_cell_695/Relu_1Relu5sequential_231/lstm_695/while/lstm_cell_695/add_1:z:0*
T0*'
_output_shapes
:?????????
?
1sequential_231/lstm_695/while/lstm_cell_695/mul_2Mul9sequential_231/lstm_695/while/lstm_cell_695/Sigmoid_2:y:0@sequential_231/lstm_695/while/lstm_cell_695/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
Bsequential_231/lstm_695/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_231_lstm_695_while_placeholder_1)sequential_231_lstm_695_while_placeholder5sequential_231/lstm_695/while/lstm_cell_695/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_231/lstm_695/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_231/lstm_695/while/addAddV2)sequential_231_lstm_695_while_placeholder,sequential_231/lstm_695/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_231/lstm_695/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_231/lstm_695/while/add_1AddV2Hsequential_231_lstm_695_while_sequential_231_lstm_695_while_loop_counter.sequential_231/lstm_695/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_231/lstm_695/while/IdentityIdentity'sequential_231/lstm_695/while/add_1:z:0#^sequential_231/lstm_695/while/NoOp*
T0*
_output_shapes
: ?
(sequential_231/lstm_695/while/Identity_1IdentityNsequential_231_lstm_695_while_sequential_231_lstm_695_while_maximum_iterations#^sequential_231/lstm_695/while/NoOp*
T0*
_output_shapes
: ?
(sequential_231/lstm_695/while/Identity_2Identity%sequential_231/lstm_695/while/add:z:0#^sequential_231/lstm_695/while/NoOp*
T0*
_output_shapes
: ?
(sequential_231/lstm_695/while/Identity_3IdentityRsequential_231/lstm_695/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_231/lstm_695/while/NoOp*
T0*
_output_shapes
: ?
(sequential_231/lstm_695/while/Identity_4Identity5sequential_231/lstm_695/while/lstm_cell_695/mul_2:z:0#^sequential_231/lstm_695/while/NoOp*
T0*'
_output_shapes
:?????????
?
(sequential_231/lstm_695/while/Identity_5Identity5sequential_231/lstm_695/while/lstm_cell_695/add_1:z:0#^sequential_231/lstm_695/while/NoOp*
T0*'
_output_shapes
:?????????
?
"sequential_231/lstm_695/while/NoOpNoOpC^sequential_231/lstm_695/while/lstm_cell_695/BiasAdd/ReadVariableOpB^sequential_231/lstm_695/while/lstm_cell_695/MatMul/ReadVariableOpD^sequential_231/lstm_695/while/lstm_cell_695/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_231_lstm_695_while_identity/sequential_231/lstm_695/while/Identity:output:0"]
(sequential_231_lstm_695_while_identity_11sequential_231/lstm_695/while/Identity_1:output:0"]
(sequential_231_lstm_695_while_identity_21sequential_231/lstm_695/while/Identity_2:output:0"]
(sequential_231_lstm_695_while_identity_31sequential_231/lstm_695/while/Identity_3:output:0"]
(sequential_231_lstm_695_while_identity_41sequential_231/lstm_695/while/Identity_4:output:0"]
(sequential_231_lstm_695_while_identity_51sequential_231/lstm_695/while/Identity_5:output:0"?
Ksequential_231_lstm_695_while_lstm_cell_695_biasadd_readvariableop_resourceMsequential_231_lstm_695_while_lstm_cell_695_biasadd_readvariableop_resource_0"?
Lsequential_231_lstm_695_while_lstm_cell_695_matmul_1_readvariableop_resourceNsequential_231_lstm_695_while_lstm_cell_695_matmul_1_readvariableop_resource_0"?
Jsequential_231_lstm_695_while_lstm_cell_695_matmul_readvariableop_resourceLsequential_231_lstm_695_while_lstm_cell_695_matmul_readvariableop_resource_0"?
Esequential_231_lstm_695_while_sequential_231_lstm_695_strided_slice_1Gsequential_231_lstm_695_while_sequential_231_lstm_695_strided_slice_1_0"?
?sequential_231_lstm_695_while_tensorarrayv2read_tensorlistgetitem_sequential_231_lstm_695_tensorarrayunstack_tensorlistfromtensor?sequential_231_lstm_695_while_tensorarrayv2read_tensorlistgetitem_sequential_231_lstm_695_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2?
Bsequential_231/lstm_695/while/lstm_cell_695/BiasAdd/ReadVariableOpBsequential_231/lstm_695/while/lstm_cell_695/BiasAdd/ReadVariableOp2?
Asequential_231/lstm_695/while/lstm_cell_695/MatMul/ReadVariableOpAsequential_231/lstm_695/while/lstm_cell_695/MatMul/ReadVariableOp2?
Csequential_231/lstm_695/while/lstm_cell_695/MatMul_1/ReadVariableOpCsequential_231/lstm_695/while/lstm_cell_695/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_693_layer_call_and_return_conditional_losses_4364228

inputs?
,lstm_cell_693_matmul_readvariableop_resource:	?A
.lstm_cell_693_matmul_1_readvariableop_resource:	d?<
-lstm_cell_693_biasadd_readvariableop_resource:	?
identity??$lstm_cell_693/BiasAdd/ReadVariableOp?#lstm_cell_693/MatMul/ReadVariableOp?%lstm_cell_693/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_693/MatMul/ReadVariableOpReadVariableOp,lstm_cell_693_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_693/MatMulMatMulstrided_slice_2:output:0+lstm_cell_693/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_693/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_693_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_693/MatMul_1MatMulzeros:output:0-lstm_cell_693/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_693/addAddV2lstm_cell_693/MatMul:product:0 lstm_cell_693/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_693/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_693_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_693/BiasAddBiasAddlstm_cell_693/add:z:0,lstm_cell_693/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_693/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_693/splitSplit&lstm_cell_693/split/split_dim:output:0lstm_cell_693/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_693/SigmoidSigmoidlstm_cell_693/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_693/Sigmoid_1Sigmoidlstm_cell_693/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_693/mulMullstm_cell_693/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_693/ReluRelulstm_cell_693/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_693/mul_1Mullstm_cell_693/Sigmoid:y:0 lstm_cell_693/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_693/add_1AddV2lstm_cell_693/mul:z:0lstm_cell_693/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_693/Sigmoid_2Sigmoidlstm_cell_693/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_693/Relu_1Relulstm_cell_693/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_693/mul_2Mullstm_cell_693/Sigmoid_2:y:0"lstm_cell_693/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_693_matmul_readvariableop_resource.lstm_cell_693_matmul_1_readvariableop_resource-lstm_cell_693_biasadd_readvariableop_resource*
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
while_body_4364144*
condR
while_cond_4364143*K
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
NoOpNoOp%^lstm_cell_693/BiasAdd/ReadVariableOp$^lstm_cell_693/MatMul/ReadVariableOp&^lstm_cell_693/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_693/BiasAdd/ReadVariableOp$lstm_cell_693/BiasAdd/ReadVariableOp2J
#lstm_cell_693/MatMul/ReadVariableOp#lstm_cell_693/MatMul/ReadVariableOp2N
%lstm_cell_693/MatMul_1/ReadVariableOp%lstm_cell_693/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_4364473
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4364473___redundant_placeholder05
1while_while_cond_4364473___redundant_placeholder15
1while_while_cond_4364473___redundant_placeholder25
1while_while_cond_4364473___redundant_placeholder3
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
E__inference_lstm_695_layer_call_and_return_conditional_losses_4361437

inputs'
lstm_cell_695_4361355:2('
lstm_cell_695_4361357:
(#
lstm_cell_695_4361359:(
identity??%lstm_cell_695/StatefulPartitionedCall?while;
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
%lstm_cell_695/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_695_4361355lstm_cell_695_4361357lstm_cell_695_4361359*
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
J__inference_lstm_cell_695_layer_call_and_return_conditional_losses_4361354n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_695_4361355lstm_cell_695_4361357lstm_cell_695_4361359*
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
while_body_4361368*
condR
while_cond_4361367*K
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
NoOpNoOp&^lstm_cell_695/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_695/StatefulPartitionedCall%lstm_cell_695/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?#
?
while_body_4360859
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_693_4360883_0:	?0
while_lstm_cell_693_4360885_0:	d?,
while_lstm_cell_693_4360887_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_693_4360883:	?.
while_lstm_cell_693_4360885:	d?*
while_lstm_cell_693_4360887:	???+while/lstm_cell_693/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_693/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_693_4360883_0while_lstm_cell_693_4360885_0while_lstm_cell_693_4360887_0*
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
J__inference_lstm_cell_693_layer_call_and_return_conditional_losses_4360800?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_693/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_693/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_693/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_693/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_693_4360883while_lstm_cell_693_4360883_0"<
while_lstm_cell_693_4360885while_lstm_cell_693_4360885_0"<
while_lstm_cell_693_4360887while_lstm_cell_693_4360887_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_693/StatefulPartitionedCall+while/lstm_cell_693/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_body_4361368
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_695_4361392_0:2(/
while_lstm_cell_695_4361394_0:
(+
while_lstm_cell_695_4361396_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_695_4361392:2(-
while_lstm_cell_695_4361394:
()
while_lstm_cell_695_4361396:(??+while/lstm_cell_695/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_695/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_695_4361392_0while_lstm_cell_695_4361394_0while_lstm_cell_695_4361396_0*
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
J__inference_lstm_cell_695_layer_call_and_return_conditional_losses_4361354?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_695/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_695/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_695/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_695/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_695_4361392while_lstm_cell_695_4361392_0"<
while_lstm_cell_695_4361394while_lstm_cell_695_4361394_0"<
while_lstm_cell_695_4361396while_lstm_cell_695_4361396_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_695/StatefulPartitionedCall+while/lstm_cell_695/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_cond_4360858
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4360858___redundant_placeholder05
1while_while_cond_4360858___redundant_placeholder15
1while_while_cond_4360858___redundant_placeholder25
1while_while_cond_4360858___redundant_placeholder3
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
lstm_693_while_cond_4363386.
*lstm_693_while_lstm_693_while_loop_counter4
0lstm_693_while_lstm_693_while_maximum_iterations
lstm_693_while_placeholder 
lstm_693_while_placeholder_1 
lstm_693_while_placeholder_2 
lstm_693_while_placeholder_30
,lstm_693_while_less_lstm_693_strided_slice_1G
Clstm_693_while_lstm_693_while_cond_4363386___redundant_placeholder0G
Clstm_693_while_lstm_693_while_cond_4363386___redundant_placeholder1G
Clstm_693_while_lstm_693_while_cond_4363386___redundant_placeholder2G
Clstm_693_while_lstm_693_while_cond_4363386___redundant_placeholder3
lstm_693_while_identity
?
lstm_693/while/LessLesslstm_693_while_placeholder,lstm_693_while_less_lstm_693_strided_slice_1*
T0*
_output_shapes
: ]
lstm_693/while/IdentityIdentitylstm_693/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_693_while_identity lstm_693/while/Identity:output:0*(
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
while_body_4361559
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_695_4361583_0:2(/
while_lstm_cell_695_4361585_0:
(+
while_lstm_cell_695_4361587_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_695_4361583:2(-
while_lstm_cell_695_4361585:
()
while_lstm_cell_695_4361587:(??+while/lstm_cell_695/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_695/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_695_4361583_0while_lstm_cell_695_4361585_0while_lstm_cell_695_4361587_0*
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
J__inference_lstm_cell_695_layer_call_and_return_conditional_losses_4361500?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_695/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_695/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_695/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_695/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_695_4361583while_lstm_cell_695_4361583_0"<
while_lstm_cell_695_4361585while_lstm_cell_695_4361585_0"<
while_lstm_cell_695_4361587while_lstm_cell_695_4361587_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_695/StatefulPartitionedCall+while/lstm_cell_695/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_body_4360668
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_693_4360692_0:	?0
while_lstm_cell_693_4360694_0:	d?,
while_lstm_cell_693_4360696_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_693_4360692:	?.
while_lstm_cell_693_4360694:	d?*
while_lstm_cell_693_4360696:	???+while/lstm_cell_693/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_693/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_693_4360692_0while_lstm_cell_693_4360694_0while_lstm_cell_693_4360696_0*
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
J__inference_lstm_cell_693_layer_call_and_return_conditional_losses_4360654?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_693/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_693/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_693/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_693/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_693_4360692while_lstm_cell_693_4360692_0"<
while_lstm_cell_693_4360694while_lstm_cell_693_4360694_0"<
while_lstm_cell_693_4360696while_lstm_cell_693_4360696_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_693/StatefulPartitionedCall+while/lstm_cell_693/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_cond_4364000
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4364000___redundant_placeholder05
1while_while_cond_4364000___redundant_placeholder15
1while_while_cond_4364000___redundant_placeholder25
1while_while_cond_4364000___redundant_placeholder3
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
E__inference_lstm_694_layer_call_and_return_conditional_losses_4361936

inputs?
,lstm_cell_694_matmul_readvariableop_resource:	d?A
.lstm_cell_694_matmul_1_readvariableop_resource:	2?<
-lstm_cell_694_biasadd_readvariableop_resource:	?
identity??$lstm_cell_694/BiasAdd/ReadVariableOp?#lstm_cell_694/MatMul/ReadVariableOp?%lstm_cell_694/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_694/MatMul/ReadVariableOpReadVariableOp,lstm_cell_694_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_694/MatMulMatMulstrided_slice_2:output:0+lstm_cell_694/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_694/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_694_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_694/MatMul_1MatMulzeros:output:0-lstm_cell_694/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_694/addAddV2lstm_cell_694/MatMul:product:0 lstm_cell_694/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_694/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_694_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_694/BiasAddBiasAddlstm_cell_694/add:z:0,lstm_cell_694/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_694/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_694/splitSplit&lstm_cell_694/split/split_dim:output:0lstm_cell_694/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_694/SigmoidSigmoidlstm_cell_694/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_694/Sigmoid_1Sigmoidlstm_cell_694/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_694/mulMullstm_cell_694/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_694/ReluRelulstm_cell_694/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_694/mul_1Mullstm_cell_694/Sigmoid:y:0 lstm_cell_694/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_694/add_1AddV2lstm_cell_694/mul:z:0lstm_cell_694/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_694/Sigmoid_2Sigmoidlstm_cell_694/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_694/Relu_1Relulstm_cell_694/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_694/mul_2Mullstm_cell_694/Sigmoid_2:y:0"lstm_cell_694/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_694_matmul_readvariableop_resource.lstm_cell_694_matmul_1_readvariableop_resource-lstm_cell_694_biasadd_readvariableop_resource*
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
while_body_4361852*
condR
while_cond_4361851*K
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
NoOpNoOp%^lstm_cell_694/BiasAdd/ReadVariableOp$^lstm_cell_694/MatMul/ReadVariableOp&^lstm_cell_694/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_694/BiasAdd/ReadVariableOp$lstm_cell_694/BiasAdd/ReadVariableOp2J
#lstm_cell_694/MatMul/ReadVariableOp#lstm_cell_694/MatMul/ReadVariableOp2N
%lstm_cell_694/MatMul_1/ReadVariableOp%lstm_cell_694/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
while_cond_4365518
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4365518___redundant_placeholder05
1while_while_cond_4365518___redundant_placeholder15
1while_while_cond_4365518___redundant_placeholder25
1while_while_cond_4365518___redundant_placeholder3
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
while_cond_4361851
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4361851___redundant_placeholder05
1while_while_cond_4361851___redundant_placeholder15
1while_while_cond_4361851___redundant_placeholder25
1while_while_cond_4361851___redundant_placeholder3
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
0__inference_sequential_231_layer_call_fn_4362136
lstm_693_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_693_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_231_layer_call_and_return_conditional_losses_4362111o
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
_user_specified_namelstm_693_input
?
?
*__inference_lstm_693_layer_call_fn_4363766
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
E__inference_lstm_693_layer_call_and_return_conditional_losses_4360737|
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
*__inference_lstm_693_layer_call_fn_4363799

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
E__inference_lstm_693_layer_call_and_return_conditional_losses_4362632s
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
J__inference_lstm_cell_695_layer_call_and_return_conditional_losses_4361354

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
J__inference_lstm_cell_695_layer_call_and_return_conditional_losses_4361500

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
while_body_4363858
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_693_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_693_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_693_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_693_matmul_readvariableop_resource:	?G
4while_lstm_cell_693_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_693_biasadd_readvariableop_resource:	???*while/lstm_cell_693/BiasAdd/ReadVariableOp?)while/lstm_cell_693/MatMul/ReadVariableOp?+while/lstm_cell_693/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_693/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_693_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_693/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_693/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_693/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_693_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_693/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_693/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_693/addAddV2$while/lstm_cell_693/MatMul:product:0&while/lstm_cell_693/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_693/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_693_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_693/BiasAddBiasAddwhile/lstm_cell_693/add:z:02while/lstm_cell_693/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_693/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_693/splitSplit,while/lstm_cell_693/split/split_dim:output:0$while/lstm_cell_693/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_693/SigmoidSigmoid"while/lstm_cell_693/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_693/Sigmoid_1Sigmoid"while/lstm_cell_693/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_693/mulMul!while/lstm_cell_693/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_693/ReluRelu"while/lstm_cell_693/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_693/mul_1Mulwhile/lstm_cell_693/Sigmoid:y:0&while/lstm_cell_693/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_693/add_1AddV2while/lstm_cell_693/mul:z:0while/lstm_cell_693/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_693/Sigmoid_2Sigmoid"while/lstm_cell_693/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_693/Relu_1Reluwhile/lstm_cell_693/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_693/mul_2Mul!while/lstm_cell_693/Sigmoid_2:y:0(while/lstm_cell_693/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_693/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_693/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_693/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_693/BiasAdd/ReadVariableOp*^while/lstm_cell_693/MatMul/ReadVariableOp,^while/lstm_cell_693/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_693_biasadd_readvariableop_resource5while_lstm_cell_693_biasadd_readvariableop_resource_0"n
4while_lstm_cell_693_matmul_1_readvariableop_resource6while_lstm_cell_693_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_693_matmul_readvariableop_resource4while_lstm_cell_693_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_693/BiasAdd/ReadVariableOp*while/lstm_cell_693/BiasAdd/ReadVariableOp2V
)while/lstm_cell_693/MatMul/ReadVariableOp)while/lstm_cell_693/MatMul/ReadVariableOp2Z
+while/lstm_cell_693/MatMul_1/ReadVariableOp+while/lstm_cell_693/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_695_layer_call_fn_4365835

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
J__inference_lstm_cell_695_layer_call_and_return_conditional_losses_4361354o
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
??
?
#__inference__traced_restore_4366189
file_prefix3
!assignvariableop_dense_231_kernel:
/
!assignvariableop_1_dense_231_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: C
0assignvariableop_7_lstm_693_lstm_cell_693_kernel:	?M
:assignvariableop_8_lstm_693_lstm_cell_693_recurrent_kernel:	d?=
.assignvariableop_9_lstm_693_lstm_cell_693_bias:	?D
1assignvariableop_10_lstm_694_lstm_cell_694_kernel:	d?N
;assignvariableop_11_lstm_694_lstm_cell_694_recurrent_kernel:	2?>
/assignvariableop_12_lstm_694_lstm_cell_694_bias:	?C
1assignvariableop_13_lstm_695_lstm_cell_695_kernel:2(M
;assignvariableop_14_lstm_695_lstm_cell_695_recurrent_kernel:
(=
/assignvariableop_15_lstm_695_lstm_cell_695_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: =
+assignvariableop_18_adam_dense_231_kernel_m:
7
)assignvariableop_19_adam_dense_231_bias_m:K
8assignvariableop_20_adam_lstm_693_lstm_cell_693_kernel_m:	?U
Bassignvariableop_21_adam_lstm_693_lstm_cell_693_recurrent_kernel_m:	d?E
6assignvariableop_22_adam_lstm_693_lstm_cell_693_bias_m:	?K
8assignvariableop_23_adam_lstm_694_lstm_cell_694_kernel_m:	d?U
Bassignvariableop_24_adam_lstm_694_lstm_cell_694_recurrent_kernel_m:	2?E
6assignvariableop_25_adam_lstm_694_lstm_cell_694_bias_m:	?J
8assignvariableop_26_adam_lstm_695_lstm_cell_695_kernel_m:2(T
Bassignvariableop_27_adam_lstm_695_lstm_cell_695_recurrent_kernel_m:
(D
6assignvariableop_28_adam_lstm_695_lstm_cell_695_bias_m:(=
+assignvariableop_29_adam_dense_231_kernel_v:
7
)assignvariableop_30_adam_dense_231_bias_v:K
8assignvariableop_31_adam_lstm_693_lstm_cell_693_kernel_v:	?U
Bassignvariableop_32_adam_lstm_693_lstm_cell_693_recurrent_kernel_v:	d?E
6assignvariableop_33_adam_lstm_693_lstm_cell_693_bias_v:	?K
8assignvariableop_34_adam_lstm_694_lstm_cell_694_kernel_v:	d?U
Bassignvariableop_35_adam_lstm_694_lstm_cell_694_recurrent_kernel_v:	2?E
6assignvariableop_36_adam_lstm_694_lstm_cell_694_bias_v:	?J
8assignvariableop_37_adam_lstm_695_lstm_cell_695_kernel_v:2(T
Bassignvariableop_38_adam_lstm_695_lstm_cell_695_recurrent_kernel_v:
(D
6assignvariableop_39_adam_lstm_695_lstm_cell_695_bias_v:(
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
AssignVariableOpAssignVariableOp!assignvariableop_dense_231_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_231_biasIdentity_1:output:0"/device:CPU:0*
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
AssignVariableOp_7AssignVariableOp0assignvariableop_7_lstm_693_lstm_cell_693_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp:assignvariableop_8_lstm_693_lstm_cell_693_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_693_lstm_cell_693_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp1assignvariableop_10_lstm_694_lstm_cell_694_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp;assignvariableop_11_lstm_694_lstm_cell_694_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp/assignvariableop_12_lstm_694_lstm_cell_694_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp1assignvariableop_13_lstm_695_lstm_cell_695_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp;assignvariableop_14_lstm_695_lstm_cell_695_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp/assignvariableop_15_lstm_695_lstm_cell_695_biasIdentity_15:output:0"/device:CPU:0*
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
AssignVariableOp_18AssignVariableOp+assignvariableop_18_adam_dense_231_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp)assignvariableop_19_adam_dense_231_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp8assignvariableop_20_adam_lstm_693_lstm_cell_693_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOpBassignvariableop_21_adam_lstm_693_lstm_cell_693_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp6assignvariableop_22_adam_lstm_693_lstm_cell_693_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp8assignvariableop_23_adam_lstm_694_lstm_cell_694_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOpBassignvariableop_24_adam_lstm_694_lstm_cell_694_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_694_lstm_cell_694_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp8assignvariableop_26_adam_lstm_695_lstm_cell_695_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOpBassignvariableop_27_adam_lstm_695_lstm_cell_695_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_lstm_695_lstm_cell_695_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp+assignvariableop_29_adam_dense_231_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_dense_231_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp8assignvariableop_31_adam_lstm_693_lstm_cell_693_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOpBassignvariableop_32_adam_lstm_693_lstm_cell_693_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOp6assignvariableop_33_adam_lstm_693_lstm_cell_693_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOp8assignvariableop_34_adam_lstm_694_lstm_cell_694_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOpBassignvariableop_35_adam_lstm_694_lstm_cell_694_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adam_lstm_694_lstm_cell_694_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_37AssignVariableOp8assignvariableop_37_adam_lstm_695_lstm_cell_695_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_38AssignVariableOpBassignvariableop_38_adam_lstm_695_lstm_cell_695_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_lstm_695_lstm_cell_695_bias_vIdentity_39:output:0"/device:CPU:0*
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
?K
?
E__inference_lstm_695_layer_call_and_return_conditional_losses_4365317
inputs_0>
,lstm_cell_695_matmul_readvariableop_resource:2(@
.lstm_cell_695_matmul_1_readvariableop_resource:
(;
-lstm_cell_695_biasadd_readvariableop_resource:(
identity??$lstm_cell_695/BiasAdd/ReadVariableOp?#lstm_cell_695/MatMul/ReadVariableOp?%lstm_cell_695/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_695/MatMul/ReadVariableOpReadVariableOp,lstm_cell_695_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_695/MatMulMatMulstrided_slice_2:output:0+lstm_cell_695/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_695/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_695_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_695/MatMul_1MatMulzeros:output:0-lstm_cell_695/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_695/addAddV2lstm_cell_695/MatMul:product:0 lstm_cell_695/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_695/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_695_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_695/BiasAddBiasAddlstm_cell_695/add:z:0,lstm_cell_695/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_695/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_695/splitSplit&lstm_cell_695/split/split_dim:output:0lstm_cell_695/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_695/SigmoidSigmoidlstm_cell_695/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_695/Sigmoid_1Sigmoidlstm_cell_695/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_695/mulMullstm_cell_695/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_695/ReluRelulstm_cell_695/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_695/mul_1Mullstm_cell_695/Sigmoid:y:0 lstm_cell_695/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_695/add_1AddV2lstm_cell_695/mul:z:0lstm_cell_695/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_695/Sigmoid_2Sigmoidlstm_cell_695/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_695/Relu_1Relulstm_cell_695/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_695/mul_2Mullstm_cell_695/Sigmoid_2:y:0"lstm_cell_695/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_695_matmul_readvariableop_resource.lstm_cell_695_matmul_1_readvariableop_resource-lstm_cell_695_biasadd_readvariableop_resource*
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
while_body_4365233*
condR
while_cond_4365232*K
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
NoOpNoOp%^lstm_cell_695/BiasAdd/ReadVariableOp$^lstm_cell_695/MatMul/ReadVariableOp&^lstm_cell_695/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_695/BiasAdd/ReadVariableOp$lstm_cell_695/BiasAdd/ReadVariableOp2J
#lstm_cell_695/MatMul/ReadVariableOp#lstm_cell_695/MatMul/ReadVariableOp2N
%lstm_cell_695/MatMul_1/ReadVariableOp%lstm_cell_695/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?
?
J__inference_lstm_cell_694_layer_call_and_return_conditional_losses_4365786

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
/__inference_lstm_cell_695_layer_call_fn_4365852

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
J__inference_lstm_cell_695_layer_call_and_return_conditional_losses_4361500o
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
F__inference_dense_231_layer_call_and_return_conditional_losses_4365622

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
?T
?
*sequential_231_lstm_694_while_body_4360358L
Hsequential_231_lstm_694_while_sequential_231_lstm_694_while_loop_counterR
Nsequential_231_lstm_694_while_sequential_231_lstm_694_while_maximum_iterations-
)sequential_231_lstm_694_while_placeholder/
+sequential_231_lstm_694_while_placeholder_1/
+sequential_231_lstm_694_while_placeholder_2/
+sequential_231_lstm_694_while_placeholder_3K
Gsequential_231_lstm_694_while_sequential_231_lstm_694_strided_slice_1_0?
?sequential_231_lstm_694_while_tensorarrayv2read_tensorlistgetitem_sequential_231_lstm_694_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_231_lstm_694_while_lstm_cell_694_matmul_readvariableop_resource_0:	d?a
Nsequential_231_lstm_694_while_lstm_cell_694_matmul_1_readvariableop_resource_0:	2?\
Msequential_231_lstm_694_while_lstm_cell_694_biasadd_readvariableop_resource_0:	?*
&sequential_231_lstm_694_while_identity,
(sequential_231_lstm_694_while_identity_1,
(sequential_231_lstm_694_while_identity_2,
(sequential_231_lstm_694_while_identity_3,
(sequential_231_lstm_694_while_identity_4,
(sequential_231_lstm_694_while_identity_5I
Esequential_231_lstm_694_while_sequential_231_lstm_694_strided_slice_1?
?sequential_231_lstm_694_while_tensorarrayv2read_tensorlistgetitem_sequential_231_lstm_694_tensorarrayunstack_tensorlistfromtensor]
Jsequential_231_lstm_694_while_lstm_cell_694_matmul_readvariableop_resource:	d?_
Lsequential_231_lstm_694_while_lstm_cell_694_matmul_1_readvariableop_resource:	2?Z
Ksequential_231_lstm_694_while_lstm_cell_694_biasadd_readvariableop_resource:	???Bsequential_231/lstm_694/while/lstm_cell_694/BiasAdd/ReadVariableOp?Asequential_231/lstm_694/while/lstm_cell_694/MatMul/ReadVariableOp?Csequential_231/lstm_694/while/lstm_cell_694/MatMul_1/ReadVariableOp?
Osequential_231/lstm_694/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
Asequential_231/lstm_694/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_231_lstm_694_while_tensorarrayv2read_tensorlistgetitem_sequential_231_lstm_694_tensorarrayunstack_tensorlistfromtensor_0)sequential_231_lstm_694_while_placeholderXsequential_231/lstm_694/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
Asequential_231/lstm_694/while/lstm_cell_694/MatMul/ReadVariableOpReadVariableOpLsequential_231_lstm_694_while_lstm_cell_694_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
2sequential_231/lstm_694/while/lstm_cell_694/MatMulMatMulHsequential_231/lstm_694/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_231/lstm_694/while/lstm_cell_694/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_231/lstm_694/while/lstm_cell_694/MatMul_1/ReadVariableOpReadVariableOpNsequential_231_lstm_694_while_lstm_cell_694_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
4sequential_231/lstm_694/while/lstm_cell_694/MatMul_1MatMul+sequential_231_lstm_694_while_placeholder_2Ksequential_231/lstm_694/while/lstm_cell_694/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_231/lstm_694/while/lstm_cell_694/addAddV2<sequential_231/lstm_694/while/lstm_cell_694/MatMul:product:0>sequential_231/lstm_694/while/lstm_cell_694/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_231/lstm_694/while/lstm_cell_694/BiasAdd/ReadVariableOpReadVariableOpMsequential_231_lstm_694_while_lstm_cell_694_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_231/lstm_694/while/lstm_cell_694/BiasAddBiasAdd3sequential_231/lstm_694/while/lstm_cell_694/add:z:0Jsequential_231/lstm_694/while/lstm_cell_694/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_231/lstm_694/while/lstm_cell_694/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_231/lstm_694/while/lstm_cell_694/splitSplitDsequential_231/lstm_694/while/lstm_cell_694/split/split_dim:output:0<sequential_231/lstm_694/while/lstm_cell_694/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
3sequential_231/lstm_694/while/lstm_cell_694/SigmoidSigmoid:sequential_231/lstm_694/while/lstm_cell_694/split:output:0*
T0*'
_output_shapes
:?????????2?
5sequential_231/lstm_694/while/lstm_cell_694/Sigmoid_1Sigmoid:sequential_231/lstm_694/while/lstm_cell_694/split:output:1*
T0*'
_output_shapes
:?????????2?
/sequential_231/lstm_694/while/lstm_cell_694/mulMul9sequential_231/lstm_694/while/lstm_cell_694/Sigmoid_1:y:0+sequential_231_lstm_694_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
0sequential_231/lstm_694/while/lstm_cell_694/ReluRelu:sequential_231/lstm_694/while/lstm_cell_694/split:output:2*
T0*'
_output_shapes
:?????????2?
1sequential_231/lstm_694/while/lstm_cell_694/mul_1Mul7sequential_231/lstm_694/while/lstm_cell_694/Sigmoid:y:0>sequential_231/lstm_694/while/lstm_cell_694/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
1sequential_231/lstm_694/while/lstm_cell_694/add_1AddV23sequential_231/lstm_694/while/lstm_cell_694/mul:z:05sequential_231/lstm_694/while/lstm_cell_694/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
5sequential_231/lstm_694/while/lstm_cell_694/Sigmoid_2Sigmoid:sequential_231/lstm_694/while/lstm_cell_694/split:output:3*
T0*'
_output_shapes
:?????????2?
2sequential_231/lstm_694/while/lstm_cell_694/Relu_1Relu5sequential_231/lstm_694/while/lstm_cell_694/add_1:z:0*
T0*'
_output_shapes
:?????????2?
1sequential_231/lstm_694/while/lstm_cell_694/mul_2Mul9sequential_231/lstm_694/while/lstm_cell_694/Sigmoid_2:y:0@sequential_231/lstm_694/while/lstm_cell_694/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
Bsequential_231/lstm_694/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_231_lstm_694_while_placeholder_1)sequential_231_lstm_694_while_placeholder5sequential_231/lstm_694/while/lstm_cell_694/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_231/lstm_694/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_231/lstm_694/while/addAddV2)sequential_231_lstm_694_while_placeholder,sequential_231/lstm_694/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_231/lstm_694/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_231/lstm_694/while/add_1AddV2Hsequential_231_lstm_694_while_sequential_231_lstm_694_while_loop_counter.sequential_231/lstm_694/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_231/lstm_694/while/IdentityIdentity'sequential_231/lstm_694/while/add_1:z:0#^sequential_231/lstm_694/while/NoOp*
T0*
_output_shapes
: ?
(sequential_231/lstm_694/while/Identity_1IdentityNsequential_231_lstm_694_while_sequential_231_lstm_694_while_maximum_iterations#^sequential_231/lstm_694/while/NoOp*
T0*
_output_shapes
: ?
(sequential_231/lstm_694/while/Identity_2Identity%sequential_231/lstm_694/while/add:z:0#^sequential_231/lstm_694/while/NoOp*
T0*
_output_shapes
: ?
(sequential_231/lstm_694/while/Identity_3IdentityRsequential_231/lstm_694/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_231/lstm_694/while/NoOp*
T0*
_output_shapes
: ?
(sequential_231/lstm_694/while/Identity_4Identity5sequential_231/lstm_694/while/lstm_cell_694/mul_2:z:0#^sequential_231/lstm_694/while/NoOp*
T0*'
_output_shapes
:?????????2?
(sequential_231/lstm_694/while/Identity_5Identity5sequential_231/lstm_694/while/lstm_cell_694/add_1:z:0#^sequential_231/lstm_694/while/NoOp*
T0*'
_output_shapes
:?????????2?
"sequential_231/lstm_694/while/NoOpNoOpC^sequential_231/lstm_694/while/lstm_cell_694/BiasAdd/ReadVariableOpB^sequential_231/lstm_694/while/lstm_cell_694/MatMul/ReadVariableOpD^sequential_231/lstm_694/while/lstm_cell_694/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_231_lstm_694_while_identity/sequential_231/lstm_694/while/Identity:output:0"]
(sequential_231_lstm_694_while_identity_11sequential_231/lstm_694/while/Identity_1:output:0"]
(sequential_231_lstm_694_while_identity_21sequential_231/lstm_694/while/Identity_2:output:0"]
(sequential_231_lstm_694_while_identity_31sequential_231/lstm_694/while/Identity_3:output:0"]
(sequential_231_lstm_694_while_identity_41sequential_231/lstm_694/while/Identity_4:output:0"]
(sequential_231_lstm_694_while_identity_51sequential_231/lstm_694/while/Identity_5:output:0"?
Ksequential_231_lstm_694_while_lstm_cell_694_biasadd_readvariableop_resourceMsequential_231_lstm_694_while_lstm_cell_694_biasadd_readvariableop_resource_0"?
Lsequential_231_lstm_694_while_lstm_cell_694_matmul_1_readvariableop_resourceNsequential_231_lstm_694_while_lstm_cell_694_matmul_1_readvariableop_resource_0"?
Jsequential_231_lstm_694_while_lstm_cell_694_matmul_readvariableop_resourceLsequential_231_lstm_694_while_lstm_cell_694_matmul_readvariableop_resource_0"?
Esequential_231_lstm_694_while_sequential_231_lstm_694_strided_slice_1Gsequential_231_lstm_694_while_sequential_231_lstm_694_strided_slice_1_0"?
?sequential_231_lstm_694_while_tensorarrayv2read_tensorlistgetitem_sequential_231_lstm_694_tensorarrayunstack_tensorlistfromtensor?sequential_231_lstm_694_while_tensorarrayv2read_tensorlistgetitem_sequential_231_lstm_694_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2?
Bsequential_231/lstm_694/while/lstm_cell_694/BiasAdd/ReadVariableOpBsequential_231/lstm_694/while/lstm_cell_694/BiasAdd/ReadVariableOp2?
Asequential_231/lstm_694/while/lstm_cell_694/MatMul/ReadVariableOpAsequential_231/lstm_694/while/lstm_cell_694/MatMul/ReadVariableOp2?
Csequential_231/lstm_694/while/lstm_cell_694/MatMul_1/ReadVariableOpCsequential_231/lstm_694/while/lstm_cell_694/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_694_while_cond_4363525.
*lstm_694_while_lstm_694_while_loop_counter4
0lstm_694_while_lstm_694_while_maximum_iterations
lstm_694_while_placeholder 
lstm_694_while_placeholder_1 
lstm_694_while_placeholder_2 
lstm_694_while_placeholder_30
,lstm_694_while_less_lstm_694_strided_slice_1G
Clstm_694_while_lstm_694_while_cond_4363525___redundant_placeholder0G
Clstm_694_while_lstm_694_while_cond_4363525___redundant_placeholder1G
Clstm_694_while_lstm_694_while_cond_4363525___redundant_placeholder2G
Clstm_694_while_lstm_694_while_cond_4363525___redundant_placeholder3
lstm_694_while_identity
?
lstm_694/while/LessLesslstm_694_while_placeholder,lstm_694_while_less_lstm_694_strided_slice_1*
T0*
_output_shapes
: ]
lstm_694/while/IdentityIdentitylstm_694/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_694_while_identity lstm_694/while/Identity:output:0*(
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
K__inference_sequential_231_layer_call_and_return_conditional_losses_4362700

inputs#
lstm_693_4362673:	?#
lstm_693_4362675:	d?
lstm_693_4362677:	?#
lstm_694_4362680:	d?#
lstm_694_4362682:	2?
lstm_694_4362684:	?"
lstm_695_4362687:2("
lstm_695_4362689:
(
lstm_695_4362691:(#
dense_231_4362694:

dense_231_4362696:
identity??!dense_231/StatefulPartitionedCall? lstm_693/StatefulPartitionedCall? lstm_694/StatefulPartitionedCall? lstm_695/StatefulPartitionedCall?
 lstm_693/StatefulPartitionedCallStatefulPartitionedCallinputslstm_693_4362673lstm_693_4362675lstm_693_4362677*
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
E__inference_lstm_693_layer_call_and_return_conditional_losses_4362632?
 lstm_694/StatefulPartitionedCallStatefulPartitionedCall)lstm_693/StatefulPartitionedCall:output:0lstm_694_4362680lstm_694_4362682lstm_694_4362684*
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
E__inference_lstm_694_layer_call_and_return_conditional_losses_4362467?
 lstm_695/StatefulPartitionedCallStatefulPartitionedCall)lstm_694/StatefulPartitionedCall:output:0lstm_695_4362687lstm_695_4362689lstm_695_4362691*
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
E__inference_lstm_695_layer_call_and_return_conditional_losses_4362302?
!dense_231/StatefulPartitionedCallStatefulPartitionedCall)lstm_695/StatefulPartitionedCall:output:0dense_231_4362694dense_231_4362696*
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
F__inference_dense_231_layer_call_and_return_conditional_losses_4362104y
IdentityIdentity*dense_231/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_231/StatefulPartitionedCall!^lstm_693/StatefulPartitionedCall!^lstm_694/StatefulPartitionedCall!^lstm_695/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_231/StatefulPartitionedCall!dense_231/StatefulPartitionedCall2D
 lstm_693/StatefulPartitionedCall lstm_693/StatefulPartitionedCall2D
 lstm_694/StatefulPartitionedCall lstm_694/StatefulPartitionedCall2D
 lstm_695/StatefulPartitionedCall lstm_695/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_694_layer_call_and_return_conditional_losses_4361004

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
while_body_4365376
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_695_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_695_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_695_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_695_matmul_readvariableop_resource:2(F
4while_lstm_cell_695_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_695_biasadd_readvariableop_resource:(??*while/lstm_cell_695/BiasAdd/ReadVariableOp?)while/lstm_cell_695/MatMul/ReadVariableOp?+while/lstm_cell_695/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_695/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_695_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_695/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_695/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_695/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_695_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_695/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_695/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_695/addAddV2$while/lstm_cell_695/MatMul:product:0&while/lstm_cell_695/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_695/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_695_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_695/BiasAddBiasAddwhile/lstm_cell_695/add:z:02while/lstm_cell_695/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_695/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_695/splitSplit,while/lstm_cell_695/split/split_dim:output:0$while/lstm_cell_695/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_695/SigmoidSigmoid"while/lstm_cell_695/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_695/Sigmoid_1Sigmoid"while/lstm_cell_695/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_695/mulMul!while/lstm_cell_695/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_695/ReluRelu"while/lstm_cell_695/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_695/mul_1Mulwhile/lstm_cell_695/Sigmoid:y:0&while/lstm_cell_695/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_695/add_1AddV2while/lstm_cell_695/mul:z:0while/lstm_cell_695/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_695/Sigmoid_2Sigmoid"while/lstm_cell_695/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_695/Relu_1Reluwhile/lstm_cell_695/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_695/mul_2Mul!while/lstm_cell_695/Sigmoid_2:y:0(while/lstm_cell_695/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_695/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_695/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_695/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_695/BiasAdd/ReadVariableOp*^while/lstm_cell_695/MatMul/ReadVariableOp,^while/lstm_cell_695/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_695_biasadd_readvariableop_resource5while_lstm_cell_695_biasadd_readvariableop_resource_0"n
4while_lstm_cell_695_matmul_1_readvariableop_resource6while_lstm_cell_695_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_695_matmul_readvariableop_resource4while_lstm_cell_695_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_695/BiasAdd/ReadVariableOp*while/lstm_cell_695/BiasAdd/ReadVariableOp2V
)while/lstm_cell_695/MatMul/ReadVariableOp)while/lstm_cell_695/MatMul/ReadVariableOp2Z
+while/lstm_cell_695/MatMul_1/ReadVariableOp+while/lstm_cell_695/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_4361208
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4361208___redundant_placeholder05
1while_while_cond_4361208___redundant_placeholder15
1while_while_cond_4361208___redundant_placeholder25
1while_while_cond_4361208___redundant_placeholder3
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
while_cond_4363857
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4363857___redundant_placeholder05
1while_while_cond_4363857___redundant_placeholder15
1while_while_cond_4363857___redundant_placeholder25
1while_while_cond_4363857___redundant_placeholder3
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
while_body_4361702
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_693_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_693_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_693_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_693_matmul_readvariableop_resource:	?G
4while_lstm_cell_693_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_693_biasadd_readvariableop_resource:	???*while/lstm_cell_693/BiasAdd/ReadVariableOp?)while/lstm_cell_693/MatMul/ReadVariableOp?+while/lstm_cell_693/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_693/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_693_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_693/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_693/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_693/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_693_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_693/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_693/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_693/addAddV2$while/lstm_cell_693/MatMul:product:0&while/lstm_cell_693/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_693/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_693_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_693/BiasAddBiasAddwhile/lstm_cell_693/add:z:02while/lstm_cell_693/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_693/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_693/splitSplit,while/lstm_cell_693/split/split_dim:output:0$while/lstm_cell_693/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_693/SigmoidSigmoid"while/lstm_cell_693/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_693/Sigmoid_1Sigmoid"while/lstm_cell_693/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_693/mulMul!while/lstm_cell_693/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_693/ReluRelu"while/lstm_cell_693/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_693/mul_1Mulwhile/lstm_cell_693/Sigmoid:y:0&while/lstm_cell_693/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_693/add_1AddV2while/lstm_cell_693/mul:z:0while/lstm_cell_693/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_693/Sigmoid_2Sigmoid"while/lstm_cell_693/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_693/Relu_1Reluwhile/lstm_cell_693/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_693/mul_2Mul!while/lstm_cell_693/Sigmoid_2:y:0(while/lstm_cell_693/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_693/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_693/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_693/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_693/BiasAdd/ReadVariableOp*^while/lstm_cell_693/MatMul/ReadVariableOp,^while/lstm_cell_693/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_693_biasadd_readvariableop_resource5while_lstm_cell_693_biasadd_readvariableop_resource_0"n
4while_lstm_cell_693_matmul_1_readvariableop_resource6while_lstm_cell_693_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_693_matmul_readvariableop_resource4while_lstm_cell_693_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_693/BiasAdd/ReadVariableOp*while/lstm_cell_693/BiasAdd/ReadVariableOp2V
)while/lstm_cell_693/MatMul/ReadVariableOp)while/lstm_cell_693/MatMul/ReadVariableOp2Z
+while/lstm_cell_693/MatMul_1/ReadVariableOp+while/lstm_cell_693/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_4361701
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4361701___redundant_placeholder05
1while_while_cond_4361701___redundant_placeholder15
1while_while_cond_4361701___redundant_placeholder25
1while_while_cond_4361701___redundant_placeholder3
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
E__inference_lstm_694_layer_call_and_return_conditional_losses_4362467

inputs?
,lstm_cell_694_matmul_readvariableop_resource:	d?A
.lstm_cell_694_matmul_1_readvariableop_resource:	2?<
-lstm_cell_694_biasadd_readvariableop_resource:	?
identity??$lstm_cell_694/BiasAdd/ReadVariableOp?#lstm_cell_694/MatMul/ReadVariableOp?%lstm_cell_694/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_694/MatMul/ReadVariableOpReadVariableOp,lstm_cell_694_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_694/MatMulMatMulstrided_slice_2:output:0+lstm_cell_694/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_694/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_694_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_694/MatMul_1MatMulzeros:output:0-lstm_cell_694/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_694/addAddV2lstm_cell_694/MatMul:product:0 lstm_cell_694/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_694/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_694_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_694/BiasAddBiasAddlstm_cell_694/add:z:0,lstm_cell_694/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_694/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_694/splitSplit&lstm_cell_694/split/split_dim:output:0lstm_cell_694/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_694/SigmoidSigmoidlstm_cell_694/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_694/Sigmoid_1Sigmoidlstm_cell_694/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_694/mulMullstm_cell_694/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_694/ReluRelulstm_cell_694/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_694/mul_1Mullstm_cell_694/Sigmoid:y:0 lstm_cell_694/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_694/add_1AddV2lstm_cell_694/mul:z:0lstm_cell_694/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_694/Sigmoid_2Sigmoidlstm_cell_694/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_694/Relu_1Relulstm_cell_694/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_694/mul_2Mullstm_cell_694/Sigmoid_2:y:0"lstm_cell_694/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_694_matmul_readvariableop_resource.lstm_cell_694_matmul_1_readvariableop_resource-lstm_cell_694_biasadd_readvariableop_resource*
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
while_body_4362383*
condR
while_cond_4362382*K
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
NoOpNoOp%^lstm_cell_694/BiasAdd/ReadVariableOp$^lstm_cell_694/MatMul/ReadVariableOp&^lstm_cell_694/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_694/BiasAdd/ReadVariableOp$lstm_cell_694/BiasAdd/ReadVariableOp2J
#lstm_cell_694/MatMul/ReadVariableOp#lstm_cell_694/MatMul/ReadVariableOp2N
%lstm_cell_694/MatMul_1/ReadVariableOp%lstm_cell_694/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?C
?

lstm_694_while_body_4363099.
*lstm_694_while_lstm_694_while_loop_counter4
0lstm_694_while_lstm_694_while_maximum_iterations
lstm_694_while_placeholder 
lstm_694_while_placeholder_1 
lstm_694_while_placeholder_2 
lstm_694_while_placeholder_3-
)lstm_694_while_lstm_694_strided_slice_1_0i
elstm_694_while_tensorarrayv2read_tensorlistgetitem_lstm_694_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_694_while_lstm_cell_694_matmul_readvariableop_resource_0:	d?R
?lstm_694_while_lstm_cell_694_matmul_1_readvariableop_resource_0:	2?M
>lstm_694_while_lstm_cell_694_biasadd_readvariableop_resource_0:	?
lstm_694_while_identity
lstm_694_while_identity_1
lstm_694_while_identity_2
lstm_694_while_identity_3
lstm_694_while_identity_4
lstm_694_while_identity_5+
'lstm_694_while_lstm_694_strided_slice_1g
clstm_694_while_tensorarrayv2read_tensorlistgetitem_lstm_694_tensorarrayunstack_tensorlistfromtensorN
;lstm_694_while_lstm_cell_694_matmul_readvariableop_resource:	d?P
=lstm_694_while_lstm_cell_694_matmul_1_readvariableop_resource:	2?K
<lstm_694_while_lstm_cell_694_biasadd_readvariableop_resource:	???3lstm_694/while/lstm_cell_694/BiasAdd/ReadVariableOp?2lstm_694/while/lstm_cell_694/MatMul/ReadVariableOp?4lstm_694/while/lstm_cell_694/MatMul_1/ReadVariableOp?
@lstm_694/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_694/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_694_while_tensorarrayv2read_tensorlistgetitem_lstm_694_tensorarrayunstack_tensorlistfromtensor_0lstm_694_while_placeholderIlstm_694/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_694/while/lstm_cell_694/MatMul/ReadVariableOpReadVariableOp=lstm_694_while_lstm_cell_694_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_694/while/lstm_cell_694/MatMulMatMul9lstm_694/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_694/while/lstm_cell_694/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_694/while/lstm_cell_694/MatMul_1/ReadVariableOpReadVariableOp?lstm_694_while_lstm_cell_694_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_694/while/lstm_cell_694/MatMul_1MatMullstm_694_while_placeholder_2<lstm_694/while/lstm_cell_694/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_694/while/lstm_cell_694/addAddV2-lstm_694/while/lstm_cell_694/MatMul:product:0/lstm_694/while/lstm_cell_694/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_694/while/lstm_cell_694/BiasAdd/ReadVariableOpReadVariableOp>lstm_694_while_lstm_cell_694_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_694/while/lstm_cell_694/BiasAddBiasAdd$lstm_694/while/lstm_cell_694/add:z:0;lstm_694/while/lstm_cell_694/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_694/while/lstm_cell_694/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_694/while/lstm_cell_694/splitSplit5lstm_694/while/lstm_cell_694/split/split_dim:output:0-lstm_694/while/lstm_cell_694/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_694/while/lstm_cell_694/SigmoidSigmoid+lstm_694/while/lstm_cell_694/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_694/while/lstm_cell_694/Sigmoid_1Sigmoid+lstm_694/while/lstm_cell_694/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_694/while/lstm_cell_694/mulMul*lstm_694/while/lstm_cell_694/Sigmoid_1:y:0lstm_694_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_694/while/lstm_cell_694/ReluRelu+lstm_694/while/lstm_cell_694/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_694/while/lstm_cell_694/mul_1Mul(lstm_694/while/lstm_cell_694/Sigmoid:y:0/lstm_694/while/lstm_cell_694/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_694/while/lstm_cell_694/add_1AddV2$lstm_694/while/lstm_cell_694/mul:z:0&lstm_694/while/lstm_cell_694/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_694/while/lstm_cell_694/Sigmoid_2Sigmoid+lstm_694/while/lstm_cell_694/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_694/while/lstm_cell_694/Relu_1Relu&lstm_694/while/lstm_cell_694/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_694/while/lstm_cell_694/mul_2Mul*lstm_694/while/lstm_cell_694/Sigmoid_2:y:01lstm_694/while/lstm_cell_694/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_694/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_694_while_placeholder_1lstm_694_while_placeholder&lstm_694/while/lstm_cell_694/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_694/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_694/while/addAddV2lstm_694_while_placeholderlstm_694/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_694/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_694/while/add_1AddV2*lstm_694_while_lstm_694_while_loop_counterlstm_694/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_694/while/IdentityIdentitylstm_694/while/add_1:z:0^lstm_694/while/NoOp*
T0*
_output_shapes
: ?
lstm_694/while/Identity_1Identity0lstm_694_while_lstm_694_while_maximum_iterations^lstm_694/while/NoOp*
T0*
_output_shapes
: t
lstm_694/while/Identity_2Identitylstm_694/while/add:z:0^lstm_694/while/NoOp*
T0*
_output_shapes
: ?
lstm_694/while/Identity_3IdentityClstm_694/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_694/while/NoOp*
T0*
_output_shapes
: ?
lstm_694/while/Identity_4Identity&lstm_694/while/lstm_cell_694/mul_2:z:0^lstm_694/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_694/while/Identity_5Identity&lstm_694/while/lstm_cell_694/add_1:z:0^lstm_694/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_694/while/NoOpNoOp4^lstm_694/while/lstm_cell_694/BiasAdd/ReadVariableOp3^lstm_694/while/lstm_cell_694/MatMul/ReadVariableOp5^lstm_694/while/lstm_cell_694/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_694_while_identity lstm_694/while/Identity:output:0"?
lstm_694_while_identity_1"lstm_694/while/Identity_1:output:0"?
lstm_694_while_identity_2"lstm_694/while/Identity_2:output:0"?
lstm_694_while_identity_3"lstm_694/while/Identity_3:output:0"?
lstm_694_while_identity_4"lstm_694/while/Identity_4:output:0"?
lstm_694_while_identity_5"lstm_694/while/Identity_5:output:0"T
'lstm_694_while_lstm_694_strided_slice_1)lstm_694_while_lstm_694_strided_slice_1_0"~
<lstm_694_while_lstm_cell_694_biasadd_readvariableop_resource>lstm_694_while_lstm_cell_694_biasadd_readvariableop_resource_0"?
=lstm_694_while_lstm_cell_694_matmul_1_readvariableop_resource?lstm_694_while_lstm_cell_694_matmul_1_readvariableop_resource_0"|
;lstm_694_while_lstm_cell_694_matmul_readvariableop_resource=lstm_694_while_lstm_cell_694_matmul_readvariableop_resource_0"?
clstm_694_while_tensorarrayv2read_tensorlistgetitem_lstm_694_tensorarrayunstack_tensorlistfromtensorelstm_694_while_tensorarrayv2read_tensorlistgetitem_lstm_694_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_694/while/lstm_cell_694/BiasAdd/ReadVariableOp3lstm_694/while/lstm_cell_694/BiasAdd/ReadVariableOp2h
2lstm_694/while/lstm_cell_694/MatMul/ReadVariableOp2lstm_694/while/lstm_cell_694/MatMul/ReadVariableOp2l
4lstm_694/while/lstm_cell_694/MatMul_1/ReadVariableOp4lstm_694/while/lstm_cell_694/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*sequential_231_lstm_695_while_cond_4360496L
Hsequential_231_lstm_695_while_sequential_231_lstm_695_while_loop_counterR
Nsequential_231_lstm_695_while_sequential_231_lstm_695_while_maximum_iterations-
)sequential_231_lstm_695_while_placeholder/
+sequential_231_lstm_695_while_placeholder_1/
+sequential_231_lstm_695_while_placeholder_2/
+sequential_231_lstm_695_while_placeholder_3N
Jsequential_231_lstm_695_while_less_sequential_231_lstm_695_strided_slice_1e
asequential_231_lstm_695_while_sequential_231_lstm_695_while_cond_4360496___redundant_placeholder0e
asequential_231_lstm_695_while_sequential_231_lstm_695_while_cond_4360496___redundant_placeholder1e
asequential_231_lstm_695_while_sequential_231_lstm_695_while_cond_4360496___redundant_placeholder2e
asequential_231_lstm_695_while_sequential_231_lstm_695_while_cond_4360496___redundant_placeholder3*
&sequential_231_lstm_695_while_identity
?
"sequential_231/lstm_695/while/LessLess)sequential_231_lstm_695_while_placeholderJsequential_231_lstm_695_while_less_sequential_231_lstm_695_strided_slice_1*
T0*
_output_shapes
: {
&sequential_231/lstm_695/while/IdentityIdentity&sequential_231/lstm_695/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_231_lstm_695_while_identity/sequential_231/lstm_695/while/Identity:output:0*(
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
while_body_4362548
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_693_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_693_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_693_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_693_matmul_readvariableop_resource:	?G
4while_lstm_cell_693_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_693_biasadd_readvariableop_resource:	???*while/lstm_cell_693/BiasAdd/ReadVariableOp?)while/lstm_cell_693/MatMul/ReadVariableOp?+while/lstm_cell_693/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_693/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_693_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_693/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_693/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_693/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_693_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_693/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_693/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_693/addAddV2$while/lstm_cell_693/MatMul:product:0&while/lstm_cell_693/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_693/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_693_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_693/BiasAddBiasAddwhile/lstm_cell_693/add:z:02while/lstm_cell_693/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_693/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_693/splitSplit,while/lstm_cell_693/split/split_dim:output:0$while/lstm_cell_693/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_693/SigmoidSigmoid"while/lstm_cell_693/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_693/Sigmoid_1Sigmoid"while/lstm_cell_693/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_693/mulMul!while/lstm_cell_693/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_693/ReluRelu"while/lstm_cell_693/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_693/mul_1Mulwhile/lstm_cell_693/Sigmoid:y:0&while/lstm_cell_693/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_693/add_1AddV2while/lstm_cell_693/mul:z:0while/lstm_cell_693/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_693/Sigmoid_2Sigmoid"while/lstm_cell_693/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_693/Relu_1Reluwhile/lstm_cell_693/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_693/mul_2Mul!while/lstm_cell_693/Sigmoid_2:y:0(while/lstm_cell_693/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_693/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_693/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_693/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_693/BiasAdd/ReadVariableOp*^while/lstm_cell_693/MatMul/ReadVariableOp,^while/lstm_cell_693/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_693_biasadd_readvariableop_resource5while_lstm_cell_693_biasadd_readvariableop_resource_0"n
4while_lstm_cell_693_matmul_1_readvariableop_resource6while_lstm_cell_693_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_693_matmul_readvariableop_resource4while_lstm_cell_693_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_693/BiasAdd/ReadVariableOp*while/lstm_cell_693/BiasAdd/ReadVariableOp2V
)while/lstm_cell_693/MatMul/ReadVariableOp)while/lstm_cell_693/MatMul/ReadVariableOp2Z
+while/lstm_cell_693/MatMul_1/ReadVariableOp+while/lstm_cell_693/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
0__inference_sequential_231_layer_call_fn_4362752
lstm_693_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_693_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_231_layer_call_and_return_conditional_losses_4362700o
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
_user_specified_namelstm_693_input
?

?
0__inference_sequential_231_layer_call_fn_4362901

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
K__inference_sequential_231_layer_call_and_return_conditional_losses_4362700o
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
lstm_693_while_cond_4362959.
*lstm_693_while_lstm_693_while_loop_counter4
0lstm_693_while_lstm_693_while_maximum_iterations
lstm_693_while_placeholder 
lstm_693_while_placeholder_1 
lstm_693_while_placeholder_2 
lstm_693_while_placeholder_30
,lstm_693_while_less_lstm_693_strided_slice_1G
Clstm_693_while_lstm_693_while_cond_4362959___redundant_placeholder0G
Clstm_693_while_lstm_693_while_cond_4362959___redundant_placeholder1G
Clstm_693_while_lstm_693_while_cond_4362959___redundant_placeholder2G
Clstm_693_while_lstm_693_while_cond_4362959___redundant_placeholder3
lstm_693_while_identity
?
lstm_693/while/LessLesslstm_693_while_placeholder,lstm_693_while_less_lstm_693_strided_slice_1*
T0*
_output_shapes
: ]
lstm_693/while/IdentityIdentitylstm_693/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_693_while_identity lstm_693/while/Identity:output:0*(
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
while_cond_4364902
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4364902___redundant_placeholder05
1while_while_cond_4364902___redundant_placeholder15
1while_while_cond_4364902___redundant_placeholder25
1while_while_cond_4364902___redundant_placeholder3
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
while_body_4364474
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_694_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_694_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_694_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_694_matmul_readvariableop_resource:	d?G
4while_lstm_cell_694_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_694_biasadd_readvariableop_resource:	???*while/lstm_cell_694/BiasAdd/ReadVariableOp?)while/lstm_cell_694/MatMul/ReadVariableOp?+while/lstm_cell_694/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_694/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_694_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_694/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_694/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_694/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_694_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_694/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_694/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_694/addAddV2$while/lstm_cell_694/MatMul:product:0&while/lstm_cell_694/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_694/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_694_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_694/BiasAddBiasAddwhile/lstm_cell_694/add:z:02while/lstm_cell_694/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_694/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_694/splitSplit,while/lstm_cell_694/split/split_dim:output:0$while/lstm_cell_694/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_694/SigmoidSigmoid"while/lstm_cell_694/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_694/Sigmoid_1Sigmoid"while/lstm_cell_694/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_694/mulMul!while/lstm_cell_694/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_694/ReluRelu"while/lstm_cell_694/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_694/mul_1Mulwhile/lstm_cell_694/Sigmoid:y:0&while/lstm_cell_694/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_694/add_1AddV2while/lstm_cell_694/mul:z:0while/lstm_cell_694/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_694/Sigmoid_2Sigmoid"while/lstm_cell_694/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_694/Relu_1Reluwhile/lstm_cell_694/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_694/mul_2Mul!while/lstm_cell_694/Sigmoid_2:y:0(while/lstm_cell_694/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_694/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_694/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_694/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_694/BiasAdd/ReadVariableOp*^while/lstm_cell_694/MatMul/ReadVariableOp,^while/lstm_cell_694/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_694_biasadd_readvariableop_resource5while_lstm_cell_694_biasadd_readvariableop_resource_0"n
4while_lstm_cell_694_matmul_1_readvariableop_resource6while_lstm_cell_694_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_694_matmul_readvariableop_resource4while_lstm_cell_694_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_694/BiasAdd/ReadVariableOp*while/lstm_cell_694/BiasAdd/ReadVariableOp2V
)while/lstm_cell_694/MatMul/ReadVariableOp)while/lstm_cell_694/MatMul/ReadVariableOp2Z
+while/lstm_cell_694/MatMul_1/ReadVariableOp+while/lstm_cell_694/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_695_layer_call_and_return_conditional_losses_4365884

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
*__inference_lstm_695_layer_call_fn_4364998
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
E__inference_lstm_695_layer_call_and_return_conditional_losses_4361437o
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
E__inference_lstm_693_layer_call_and_return_conditional_losses_4362632

inputs?
,lstm_cell_693_matmul_readvariableop_resource:	?A
.lstm_cell_693_matmul_1_readvariableop_resource:	d?<
-lstm_cell_693_biasadd_readvariableop_resource:	?
identity??$lstm_cell_693/BiasAdd/ReadVariableOp?#lstm_cell_693/MatMul/ReadVariableOp?%lstm_cell_693/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_693/MatMul/ReadVariableOpReadVariableOp,lstm_cell_693_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_693/MatMulMatMulstrided_slice_2:output:0+lstm_cell_693/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_693/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_693_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_693/MatMul_1MatMulzeros:output:0-lstm_cell_693/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_693/addAddV2lstm_cell_693/MatMul:product:0 lstm_cell_693/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_693/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_693_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_693/BiasAddBiasAddlstm_cell_693/add:z:0,lstm_cell_693/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_693/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_693/splitSplit&lstm_cell_693/split/split_dim:output:0lstm_cell_693/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_693/SigmoidSigmoidlstm_cell_693/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_693/Sigmoid_1Sigmoidlstm_cell_693/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_693/mulMullstm_cell_693/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_693/ReluRelulstm_cell_693/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_693/mul_1Mullstm_cell_693/Sigmoid:y:0 lstm_cell_693/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_693/add_1AddV2lstm_cell_693/mul:z:0lstm_cell_693/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_693/Sigmoid_2Sigmoidlstm_cell_693/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_693/Relu_1Relulstm_cell_693/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_693/mul_2Mullstm_cell_693/Sigmoid_2:y:0"lstm_cell_693/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_693_matmul_readvariableop_resource.lstm_cell_693_matmul_1_readvariableop_resource-lstm_cell_693_biasadd_readvariableop_resource*
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
while_body_4362548*
condR
while_cond_4362547*K
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
NoOpNoOp%^lstm_cell_693/BiasAdd/ReadVariableOp$^lstm_cell_693/MatMul/ReadVariableOp&^lstm_cell_693/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_693/BiasAdd/ReadVariableOp$lstm_cell_693/BiasAdd/ReadVariableOp2J
#lstm_cell_693/MatMul/ReadVariableOp#lstm_cell_693/MatMul/ReadVariableOp2N
%lstm_cell_693/MatMul_1/ReadVariableOp%lstm_cell_693/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?C
?

lstm_693_while_body_4362960.
*lstm_693_while_lstm_693_while_loop_counter4
0lstm_693_while_lstm_693_while_maximum_iterations
lstm_693_while_placeholder 
lstm_693_while_placeholder_1 
lstm_693_while_placeholder_2 
lstm_693_while_placeholder_3-
)lstm_693_while_lstm_693_strided_slice_1_0i
elstm_693_while_tensorarrayv2read_tensorlistgetitem_lstm_693_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_693_while_lstm_cell_693_matmul_readvariableop_resource_0:	?R
?lstm_693_while_lstm_cell_693_matmul_1_readvariableop_resource_0:	d?M
>lstm_693_while_lstm_cell_693_biasadd_readvariableop_resource_0:	?
lstm_693_while_identity
lstm_693_while_identity_1
lstm_693_while_identity_2
lstm_693_while_identity_3
lstm_693_while_identity_4
lstm_693_while_identity_5+
'lstm_693_while_lstm_693_strided_slice_1g
clstm_693_while_tensorarrayv2read_tensorlistgetitem_lstm_693_tensorarrayunstack_tensorlistfromtensorN
;lstm_693_while_lstm_cell_693_matmul_readvariableop_resource:	?P
=lstm_693_while_lstm_cell_693_matmul_1_readvariableop_resource:	d?K
<lstm_693_while_lstm_cell_693_biasadd_readvariableop_resource:	???3lstm_693/while/lstm_cell_693/BiasAdd/ReadVariableOp?2lstm_693/while/lstm_cell_693/MatMul/ReadVariableOp?4lstm_693/while/lstm_cell_693/MatMul_1/ReadVariableOp?
@lstm_693/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_693/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_693_while_tensorarrayv2read_tensorlistgetitem_lstm_693_tensorarrayunstack_tensorlistfromtensor_0lstm_693_while_placeholderIlstm_693/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_693/while/lstm_cell_693/MatMul/ReadVariableOpReadVariableOp=lstm_693_while_lstm_cell_693_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_693/while/lstm_cell_693/MatMulMatMul9lstm_693/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_693/while/lstm_cell_693/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_693/while/lstm_cell_693/MatMul_1/ReadVariableOpReadVariableOp?lstm_693_while_lstm_cell_693_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_693/while/lstm_cell_693/MatMul_1MatMullstm_693_while_placeholder_2<lstm_693/while/lstm_cell_693/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_693/while/lstm_cell_693/addAddV2-lstm_693/while/lstm_cell_693/MatMul:product:0/lstm_693/while/lstm_cell_693/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_693/while/lstm_cell_693/BiasAdd/ReadVariableOpReadVariableOp>lstm_693_while_lstm_cell_693_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_693/while/lstm_cell_693/BiasAddBiasAdd$lstm_693/while/lstm_cell_693/add:z:0;lstm_693/while/lstm_cell_693/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_693/while/lstm_cell_693/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_693/while/lstm_cell_693/splitSplit5lstm_693/while/lstm_cell_693/split/split_dim:output:0-lstm_693/while/lstm_cell_693/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_693/while/lstm_cell_693/SigmoidSigmoid+lstm_693/while/lstm_cell_693/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_693/while/lstm_cell_693/Sigmoid_1Sigmoid+lstm_693/while/lstm_cell_693/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_693/while/lstm_cell_693/mulMul*lstm_693/while/lstm_cell_693/Sigmoid_1:y:0lstm_693_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_693/while/lstm_cell_693/ReluRelu+lstm_693/while/lstm_cell_693/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_693/while/lstm_cell_693/mul_1Mul(lstm_693/while/lstm_cell_693/Sigmoid:y:0/lstm_693/while/lstm_cell_693/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_693/while/lstm_cell_693/add_1AddV2$lstm_693/while/lstm_cell_693/mul:z:0&lstm_693/while/lstm_cell_693/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_693/while/lstm_cell_693/Sigmoid_2Sigmoid+lstm_693/while/lstm_cell_693/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_693/while/lstm_cell_693/Relu_1Relu&lstm_693/while/lstm_cell_693/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_693/while/lstm_cell_693/mul_2Mul*lstm_693/while/lstm_cell_693/Sigmoid_2:y:01lstm_693/while/lstm_cell_693/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_693/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_693_while_placeholder_1lstm_693_while_placeholder&lstm_693/while/lstm_cell_693/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_693/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_693/while/addAddV2lstm_693_while_placeholderlstm_693/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_693/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_693/while/add_1AddV2*lstm_693_while_lstm_693_while_loop_counterlstm_693/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_693/while/IdentityIdentitylstm_693/while/add_1:z:0^lstm_693/while/NoOp*
T0*
_output_shapes
: ?
lstm_693/while/Identity_1Identity0lstm_693_while_lstm_693_while_maximum_iterations^lstm_693/while/NoOp*
T0*
_output_shapes
: t
lstm_693/while/Identity_2Identitylstm_693/while/add:z:0^lstm_693/while/NoOp*
T0*
_output_shapes
: ?
lstm_693/while/Identity_3IdentityClstm_693/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_693/while/NoOp*
T0*
_output_shapes
: ?
lstm_693/while/Identity_4Identity&lstm_693/while/lstm_cell_693/mul_2:z:0^lstm_693/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_693/while/Identity_5Identity&lstm_693/while/lstm_cell_693/add_1:z:0^lstm_693/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_693/while/NoOpNoOp4^lstm_693/while/lstm_cell_693/BiasAdd/ReadVariableOp3^lstm_693/while/lstm_cell_693/MatMul/ReadVariableOp5^lstm_693/while/lstm_cell_693/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_693_while_identity lstm_693/while/Identity:output:0"?
lstm_693_while_identity_1"lstm_693/while/Identity_1:output:0"?
lstm_693_while_identity_2"lstm_693/while/Identity_2:output:0"?
lstm_693_while_identity_3"lstm_693/while/Identity_3:output:0"?
lstm_693_while_identity_4"lstm_693/while/Identity_4:output:0"?
lstm_693_while_identity_5"lstm_693/while/Identity_5:output:0"T
'lstm_693_while_lstm_693_strided_slice_1)lstm_693_while_lstm_693_strided_slice_1_0"~
<lstm_693_while_lstm_cell_693_biasadd_readvariableop_resource>lstm_693_while_lstm_cell_693_biasadd_readvariableop_resource_0"?
=lstm_693_while_lstm_cell_693_matmul_1_readvariableop_resource?lstm_693_while_lstm_cell_693_matmul_1_readvariableop_resource_0"|
;lstm_693_while_lstm_cell_693_matmul_readvariableop_resource=lstm_693_while_lstm_cell_693_matmul_readvariableop_resource_0"?
clstm_693_while_tensorarrayv2read_tensorlistgetitem_lstm_693_tensorarrayunstack_tensorlistfromtensorelstm_693_while_tensorarrayv2read_tensorlistgetitem_lstm_693_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_693/while/lstm_cell_693/BiasAdd/ReadVariableOp3lstm_693/while/lstm_cell_693/BiasAdd/ReadVariableOp2h
2lstm_693/while/lstm_cell_693/MatMul/ReadVariableOp2lstm_693/while/lstm_cell_693/MatMul/ReadVariableOp2l
4lstm_693/while/lstm_cell_693/MatMul_1/ReadVariableOp4lstm_693/while/lstm_cell_693/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_4365232
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4365232___redundant_placeholder05
1while_while_cond_4365232___redundant_placeholder15
1while_while_cond_4365232___redundant_placeholder25
1while_while_cond_4365232___redundant_placeholder3
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
while_body_4361209
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_694_4361233_0:	d?0
while_lstm_cell_694_4361235_0:	2?,
while_lstm_cell_694_4361237_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_694_4361233:	d?.
while_lstm_cell_694_4361235:	2?*
while_lstm_cell_694_4361237:	???+while/lstm_cell_694/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_694/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_694_4361233_0while_lstm_cell_694_4361235_0while_lstm_cell_694_4361237_0*
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
J__inference_lstm_cell_694_layer_call_and_return_conditional_losses_4361150?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_694/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_694/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_694/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_694/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_694_4361233while_lstm_cell_694_4361233_0"<
while_lstm_cell_694_4361235while_lstm_cell_694_4361235_0"<
while_lstm_cell_694_4361237while_lstm_cell_694_4361237_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_694/StatefulPartitionedCall+while/lstm_cell_694/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_693_layer_call_and_return_conditional_losses_4360928

inputs(
lstm_cell_693_4360846:	?(
lstm_cell_693_4360848:	d?$
lstm_cell_693_4360850:	?
identity??%lstm_cell_693/StatefulPartitionedCall?while;
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
%lstm_cell_693/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_693_4360846lstm_cell_693_4360848lstm_cell_693_4360850*
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
J__inference_lstm_cell_693_layer_call_and_return_conditional_losses_4360800n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_693_4360846lstm_cell_693_4360848lstm_cell_693_4360850*
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
while_body_4360859*
condR
while_cond_4360858*K
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
NoOpNoOp&^lstm_cell_693/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_693/StatefulPartitionedCall%lstm_cell_693/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?J
?
E__inference_lstm_694_layer_call_and_return_conditional_losses_4364844

inputs?
,lstm_cell_694_matmul_readvariableop_resource:	d?A
.lstm_cell_694_matmul_1_readvariableop_resource:	2?<
-lstm_cell_694_biasadd_readvariableop_resource:	?
identity??$lstm_cell_694/BiasAdd/ReadVariableOp?#lstm_cell_694/MatMul/ReadVariableOp?%lstm_cell_694/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_694/MatMul/ReadVariableOpReadVariableOp,lstm_cell_694_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_694/MatMulMatMulstrided_slice_2:output:0+lstm_cell_694/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_694/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_694_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_694/MatMul_1MatMulzeros:output:0-lstm_cell_694/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_694/addAddV2lstm_cell_694/MatMul:product:0 lstm_cell_694/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_694/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_694_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_694/BiasAddBiasAddlstm_cell_694/add:z:0,lstm_cell_694/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_694/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_694/splitSplit&lstm_cell_694/split/split_dim:output:0lstm_cell_694/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_694/SigmoidSigmoidlstm_cell_694/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_694/Sigmoid_1Sigmoidlstm_cell_694/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_694/mulMullstm_cell_694/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_694/ReluRelulstm_cell_694/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_694/mul_1Mullstm_cell_694/Sigmoid:y:0 lstm_cell_694/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_694/add_1AddV2lstm_cell_694/mul:z:0lstm_cell_694/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_694/Sigmoid_2Sigmoidlstm_cell_694/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_694/Relu_1Relulstm_cell_694/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_694/mul_2Mullstm_cell_694/Sigmoid_2:y:0"lstm_cell_694/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_694_matmul_readvariableop_resource.lstm_cell_694_matmul_1_readvariableop_resource-lstm_cell_694_biasadd_readvariableop_resource*
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
while_body_4364760*
condR
while_cond_4364759*K
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
NoOpNoOp%^lstm_cell_694/BiasAdd/ReadVariableOp$^lstm_cell_694/MatMul/ReadVariableOp&^lstm_cell_694/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_694/BiasAdd/ReadVariableOp$lstm_cell_694/BiasAdd/ReadVariableOp2J
#lstm_cell_694/MatMul/ReadVariableOp#lstm_cell_694/MatMul/ReadVariableOp2N
%lstm_cell_694/MatMul_1/ReadVariableOp%lstm_cell_694/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
*__inference_lstm_694_layer_call_fn_4364382
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
E__inference_lstm_694_layer_call_and_return_conditional_losses_4361087|
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
?
?
K__inference_sequential_231_layer_call_and_return_conditional_losses_4362111

inputs#
lstm_693_4361787:	?#
lstm_693_4361789:	d?
lstm_693_4361791:	?#
lstm_694_4361937:	d?#
lstm_694_4361939:	2?
lstm_694_4361941:	?"
lstm_695_4362087:2("
lstm_695_4362089:
(
lstm_695_4362091:(#
dense_231_4362105:

dense_231_4362107:
identity??!dense_231/StatefulPartitionedCall? lstm_693/StatefulPartitionedCall? lstm_694/StatefulPartitionedCall? lstm_695/StatefulPartitionedCall?
 lstm_693/StatefulPartitionedCallStatefulPartitionedCallinputslstm_693_4361787lstm_693_4361789lstm_693_4361791*
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
E__inference_lstm_693_layer_call_and_return_conditional_losses_4361786?
 lstm_694/StatefulPartitionedCallStatefulPartitionedCall)lstm_693/StatefulPartitionedCall:output:0lstm_694_4361937lstm_694_4361939lstm_694_4361941*
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
E__inference_lstm_694_layer_call_and_return_conditional_losses_4361936?
 lstm_695/StatefulPartitionedCallStatefulPartitionedCall)lstm_694/StatefulPartitionedCall:output:0lstm_695_4362087lstm_695_4362089lstm_695_4362091*
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
E__inference_lstm_695_layer_call_and_return_conditional_losses_4362086?
!dense_231/StatefulPartitionedCallStatefulPartitionedCall)lstm_695/StatefulPartitionedCall:output:0dense_231_4362105dense_231_4362107*
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
F__inference_dense_231_layer_call_and_return_conditional_losses_4362104y
IdentityIdentity*dense_231/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_231/StatefulPartitionedCall!^lstm_693/StatefulPartitionedCall!^lstm_694/StatefulPartitionedCall!^lstm_695/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_231/StatefulPartitionedCall!dense_231/StatefulPartitionedCall2D
 lstm_693/StatefulPartitionedCall lstm_693/StatefulPartitionedCall2D
 lstm_694/StatefulPartitionedCall lstm_694/StatefulPartitionedCall2D
 lstm_695/StatefulPartitionedCall lstm_695/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_4362001
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4362001___redundant_placeholder05
1while_while_cond_4362001___redundant_placeholder15
1while_while_cond_4362001___redundant_placeholder25
1while_while_cond_4362001___redundant_placeholder3
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
while_cond_4364759
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4364759___redundant_placeholder05
1while_while_cond_4364759___redundant_placeholder15
1while_while_cond_4364759___redundant_placeholder25
1while_while_cond_4364759___redundant_placeholder3
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
?
K__inference_sequential_231_layer_call_and_return_conditional_losses_4362812
lstm_693_input#
lstm_693_4362785:	?#
lstm_693_4362787:	d?
lstm_693_4362789:	?#
lstm_694_4362792:	d?#
lstm_694_4362794:	2?
lstm_694_4362796:	?"
lstm_695_4362799:2("
lstm_695_4362801:
(
lstm_695_4362803:(#
dense_231_4362806:

dense_231_4362808:
identity??!dense_231/StatefulPartitionedCall? lstm_693/StatefulPartitionedCall? lstm_694/StatefulPartitionedCall? lstm_695/StatefulPartitionedCall?
 lstm_693/StatefulPartitionedCallStatefulPartitionedCalllstm_693_inputlstm_693_4362785lstm_693_4362787lstm_693_4362789*
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
E__inference_lstm_693_layer_call_and_return_conditional_losses_4362632?
 lstm_694/StatefulPartitionedCallStatefulPartitionedCall)lstm_693/StatefulPartitionedCall:output:0lstm_694_4362792lstm_694_4362794lstm_694_4362796*
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
E__inference_lstm_694_layer_call_and_return_conditional_losses_4362467?
 lstm_695/StatefulPartitionedCallStatefulPartitionedCall)lstm_694/StatefulPartitionedCall:output:0lstm_695_4362799lstm_695_4362801lstm_695_4362803*
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
E__inference_lstm_695_layer_call_and_return_conditional_losses_4362302?
!dense_231/StatefulPartitionedCallStatefulPartitionedCall)lstm_695/StatefulPartitionedCall:output:0dense_231_4362806dense_231_4362808*
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
F__inference_dense_231_layer_call_and_return_conditional_losses_4362104y
IdentityIdentity*dense_231/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_231/StatefulPartitionedCall!^lstm_693/StatefulPartitionedCall!^lstm_694/StatefulPartitionedCall!^lstm_695/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_231/StatefulPartitionedCall!dense_231/StatefulPartitionedCall2D
 lstm_693/StatefulPartitionedCall lstm_693/StatefulPartitionedCall2D
 lstm_694/StatefulPartitionedCall lstm_694/StatefulPartitionedCall2D
 lstm_695/StatefulPartitionedCall lstm_695/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_693_input
?
?
while_cond_4361558
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4361558___redundant_placeholder05
1while_while_cond_4361558___redundant_placeholder15
1while_while_cond_4361558___redundant_placeholder25
1while_while_cond_4361558___redundant_placeholder3
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
E__inference_lstm_693_layer_call_and_return_conditional_losses_4360737

inputs(
lstm_cell_693_4360655:	?(
lstm_cell_693_4360657:	d?$
lstm_cell_693_4360659:	?
identity??%lstm_cell_693/StatefulPartitionedCall?while;
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
%lstm_cell_693/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_693_4360655lstm_cell_693_4360657lstm_cell_693_4360659*
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
J__inference_lstm_cell_693_layer_call_and_return_conditional_losses_4360654n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_693_4360655lstm_cell_693_4360657lstm_cell_693_4360659*
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
while_body_4360668*
condR
while_cond_4360667*K
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
NoOpNoOp&^lstm_cell_693/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_693/StatefulPartitionedCall%lstm_cell_693/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?8
?
while_body_4364001
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_693_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_693_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_693_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_693_matmul_readvariableop_resource:	?G
4while_lstm_cell_693_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_693_biasadd_readvariableop_resource:	???*while/lstm_cell_693/BiasAdd/ReadVariableOp?)while/lstm_cell_693/MatMul/ReadVariableOp?+while/lstm_cell_693/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_693/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_693_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_693/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_693/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_693/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_693_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_693/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_693/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_693/addAddV2$while/lstm_cell_693/MatMul:product:0&while/lstm_cell_693/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_693/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_693_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_693/BiasAddBiasAddwhile/lstm_cell_693/add:z:02while/lstm_cell_693/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_693/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_693/splitSplit,while/lstm_cell_693/split/split_dim:output:0$while/lstm_cell_693/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_693/SigmoidSigmoid"while/lstm_cell_693/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_693/Sigmoid_1Sigmoid"while/lstm_cell_693/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_693/mulMul!while/lstm_cell_693/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_693/ReluRelu"while/lstm_cell_693/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_693/mul_1Mulwhile/lstm_cell_693/Sigmoid:y:0&while/lstm_cell_693/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_693/add_1AddV2while/lstm_cell_693/mul:z:0while/lstm_cell_693/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_693/Sigmoid_2Sigmoid"while/lstm_cell_693/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_693/Relu_1Reluwhile/lstm_cell_693/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_693/mul_2Mul!while/lstm_cell_693/Sigmoid_2:y:0(while/lstm_cell_693/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_693/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_693/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_693/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_693/BiasAdd/ReadVariableOp*^while/lstm_cell_693/MatMul/ReadVariableOp,^while/lstm_cell_693/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_693_biasadd_readvariableop_resource5while_lstm_cell_693_biasadd_readvariableop_resource_0"n
4while_lstm_cell_693_matmul_1_readvariableop_resource6while_lstm_cell_693_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_693_matmul_readvariableop_resource4while_lstm_cell_693_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_693/BiasAdd/ReadVariableOp*while/lstm_cell_693/BiasAdd/ReadVariableOp2V
)while/lstm_cell_693/MatMul/ReadVariableOp)while/lstm_cell_693/MatMul/ReadVariableOp2Z
+while/lstm_cell_693/MatMul_1/ReadVariableOp+while/lstm_cell_693/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
"__inference__wrapped_model_4360587
lstm_693_inputW
Dsequential_231_lstm_693_lstm_cell_693_matmul_readvariableop_resource:	?Y
Fsequential_231_lstm_693_lstm_cell_693_matmul_1_readvariableop_resource:	d?T
Esequential_231_lstm_693_lstm_cell_693_biasadd_readvariableop_resource:	?W
Dsequential_231_lstm_694_lstm_cell_694_matmul_readvariableop_resource:	d?Y
Fsequential_231_lstm_694_lstm_cell_694_matmul_1_readvariableop_resource:	2?T
Esequential_231_lstm_694_lstm_cell_694_biasadd_readvariableop_resource:	?V
Dsequential_231_lstm_695_lstm_cell_695_matmul_readvariableop_resource:2(X
Fsequential_231_lstm_695_lstm_cell_695_matmul_1_readvariableop_resource:
(S
Esequential_231_lstm_695_lstm_cell_695_biasadd_readvariableop_resource:(I
7sequential_231_dense_231_matmul_readvariableop_resource:
F
8sequential_231_dense_231_biasadd_readvariableop_resource:
identity??/sequential_231/dense_231/BiasAdd/ReadVariableOp?.sequential_231/dense_231/MatMul/ReadVariableOp?<sequential_231/lstm_693/lstm_cell_693/BiasAdd/ReadVariableOp?;sequential_231/lstm_693/lstm_cell_693/MatMul/ReadVariableOp?=sequential_231/lstm_693/lstm_cell_693/MatMul_1/ReadVariableOp?sequential_231/lstm_693/while?<sequential_231/lstm_694/lstm_cell_694/BiasAdd/ReadVariableOp?;sequential_231/lstm_694/lstm_cell_694/MatMul/ReadVariableOp?=sequential_231/lstm_694/lstm_cell_694/MatMul_1/ReadVariableOp?sequential_231/lstm_694/while?<sequential_231/lstm_695/lstm_cell_695/BiasAdd/ReadVariableOp?;sequential_231/lstm_695/lstm_cell_695/MatMul/ReadVariableOp?=sequential_231/lstm_695/lstm_cell_695/MatMul_1/ReadVariableOp?sequential_231/lstm_695/while[
sequential_231/lstm_693/ShapeShapelstm_693_input*
T0*
_output_shapes
:u
+sequential_231/lstm_693/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_231/lstm_693/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_231/lstm_693/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_231/lstm_693/strided_sliceStridedSlice&sequential_231/lstm_693/Shape:output:04sequential_231/lstm_693/strided_slice/stack:output:06sequential_231/lstm_693/strided_slice/stack_1:output:06sequential_231/lstm_693/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_231/lstm_693/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
$sequential_231/lstm_693/zeros/packedPack.sequential_231/lstm_693/strided_slice:output:0/sequential_231/lstm_693/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_231/lstm_693/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_231/lstm_693/zerosFill-sequential_231/lstm_693/zeros/packed:output:0,sequential_231/lstm_693/zeros/Const:output:0*
T0*'
_output_shapes
:?????????dj
(sequential_231/lstm_693/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
&sequential_231/lstm_693/zeros_1/packedPack.sequential_231/lstm_693/strided_slice:output:01sequential_231/lstm_693/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_231/lstm_693/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_231/lstm_693/zeros_1Fill/sequential_231/lstm_693/zeros_1/packed:output:0.sequential_231/lstm_693/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????d{
&sequential_231/lstm_693/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_231/lstm_693/transpose	Transposelstm_693_input/sequential_231/lstm_693/transpose/perm:output:0*
T0*+
_output_shapes
:?????????t
sequential_231/lstm_693/Shape_1Shape%sequential_231/lstm_693/transpose:y:0*
T0*
_output_shapes
:w
-sequential_231/lstm_693/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_231/lstm_693/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_231/lstm_693/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_231/lstm_693/strided_slice_1StridedSlice(sequential_231/lstm_693/Shape_1:output:06sequential_231/lstm_693/strided_slice_1/stack:output:08sequential_231/lstm_693/strided_slice_1/stack_1:output:08sequential_231/lstm_693/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_231/lstm_693/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_231/lstm_693/TensorArrayV2TensorListReserve<sequential_231/lstm_693/TensorArrayV2/element_shape:output:00sequential_231/lstm_693/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_231/lstm_693/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
?sequential_231/lstm_693/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_231/lstm_693/transpose:y:0Vsequential_231/lstm_693/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_231/lstm_693/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_231/lstm_693/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_231/lstm_693/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_231/lstm_693/strided_slice_2StridedSlice%sequential_231/lstm_693/transpose:y:06sequential_231/lstm_693/strided_slice_2/stack:output:08sequential_231/lstm_693/strided_slice_2/stack_1:output:08sequential_231/lstm_693/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
;sequential_231/lstm_693/lstm_cell_693/MatMul/ReadVariableOpReadVariableOpDsequential_231_lstm_693_lstm_cell_693_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
,sequential_231/lstm_693/lstm_cell_693/MatMulMatMul0sequential_231/lstm_693/strided_slice_2:output:0Csequential_231/lstm_693/lstm_cell_693/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_231/lstm_693/lstm_cell_693/MatMul_1/ReadVariableOpReadVariableOpFsequential_231_lstm_693_lstm_cell_693_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
.sequential_231/lstm_693/lstm_cell_693/MatMul_1MatMul&sequential_231/lstm_693/zeros:output:0Esequential_231/lstm_693/lstm_cell_693/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_231/lstm_693/lstm_cell_693/addAddV26sequential_231/lstm_693/lstm_cell_693/MatMul:product:08sequential_231/lstm_693/lstm_cell_693/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_231/lstm_693/lstm_cell_693/BiasAdd/ReadVariableOpReadVariableOpEsequential_231_lstm_693_lstm_cell_693_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_231/lstm_693/lstm_cell_693/BiasAddBiasAdd-sequential_231/lstm_693/lstm_cell_693/add:z:0Dsequential_231/lstm_693/lstm_cell_693/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_231/lstm_693/lstm_cell_693/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_231/lstm_693/lstm_cell_693/splitSplit>sequential_231/lstm_693/lstm_cell_693/split/split_dim:output:06sequential_231/lstm_693/lstm_cell_693/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
-sequential_231/lstm_693/lstm_cell_693/SigmoidSigmoid4sequential_231/lstm_693/lstm_cell_693/split:output:0*
T0*'
_output_shapes
:?????????d?
/sequential_231/lstm_693/lstm_cell_693/Sigmoid_1Sigmoid4sequential_231/lstm_693/lstm_cell_693/split:output:1*
T0*'
_output_shapes
:?????????d?
)sequential_231/lstm_693/lstm_cell_693/mulMul3sequential_231/lstm_693/lstm_cell_693/Sigmoid_1:y:0(sequential_231/lstm_693/zeros_1:output:0*
T0*'
_output_shapes
:?????????d?
*sequential_231/lstm_693/lstm_cell_693/ReluRelu4sequential_231/lstm_693/lstm_cell_693/split:output:2*
T0*'
_output_shapes
:?????????d?
+sequential_231/lstm_693/lstm_cell_693/mul_1Mul1sequential_231/lstm_693/lstm_cell_693/Sigmoid:y:08sequential_231/lstm_693/lstm_cell_693/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
+sequential_231/lstm_693/lstm_cell_693/add_1AddV2-sequential_231/lstm_693/lstm_cell_693/mul:z:0/sequential_231/lstm_693/lstm_cell_693/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
/sequential_231/lstm_693/lstm_cell_693/Sigmoid_2Sigmoid4sequential_231/lstm_693/lstm_cell_693/split:output:3*
T0*'
_output_shapes
:?????????d?
,sequential_231/lstm_693/lstm_cell_693/Relu_1Relu/sequential_231/lstm_693/lstm_cell_693/add_1:z:0*
T0*'
_output_shapes
:?????????d?
+sequential_231/lstm_693/lstm_cell_693/mul_2Mul3sequential_231/lstm_693/lstm_cell_693/Sigmoid_2:y:0:sequential_231/lstm_693/lstm_cell_693/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
5sequential_231/lstm_693/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
'sequential_231/lstm_693/TensorArrayV2_1TensorListReserve>sequential_231/lstm_693/TensorArrayV2_1/element_shape:output:00sequential_231/lstm_693/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_231/lstm_693/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_231/lstm_693/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_231/lstm_693/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_231/lstm_693/whileWhile3sequential_231/lstm_693/while/loop_counter:output:09sequential_231/lstm_693/while/maximum_iterations:output:0%sequential_231/lstm_693/time:output:00sequential_231/lstm_693/TensorArrayV2_1:handle:0&sequential_231/lstm_693/zeros:output:0(sequential_231/lstm_693/zeros_1:output:00sequential_231/lstm_693/strided_slice_1:output:0Osequential_231/lstm_693/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_231_lstm_693_lstm_cell_693_matmul_readvariableop_resourceFsequential_231_lstm_693_lstm_cell_693_matmul_1_readvariableop_resourceEsequential_231_lstm_693_lstm_cell_693_biasadd_readvariableop_resource*
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
*sequential_231_lstm_693_while_body_4360219*6
cond.R,
*sequential_231_lstm_693_while_cond_4360218*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
Hsequential_231/lstm_693/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
:sequential_231/lstm_693/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_231/lstm_693/while:output:3Qsequential_231/lstm_693/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0?
-sequential_231/lstm_693/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_231/lstm_693/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_231/lstm_693/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_231/lstm_693/strided_slice_3StridedSliceCsequential_231/lstm_693/TensorArrayV2Stack/TensorListStack:tensor:06sequential_231/lstm_693/strided_slice_3/stack:output:08sequential_231/lstm_693/strided_slice_3/stack_1:output:08sequential_231/lstm_693/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask}
(sequential_231/lstm_693/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_231/lstm_693/transpose_1	TransposeCsequential_231/lstm_693/TensorArrayV2Stack/TensorListStack:tensor:01sequential_231/lstm_693/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????ds
sequential_231/lstm_693/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_231/lstm_694/ShapeShape'sequential_231/lstm_693/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_231/lstm_694/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_231/lstm_694/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_231/lstm_694/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_231/lstm_694/strided_sliceStridedSlice&sequential_231/lstm_694/Shape:output:04sequential_231/lstm_694/strided_slice/stack:output:06sequential_231/lstm_694/strided_slice/stack_1:output:06sequential_231/lstm_694/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_231/lstm_694/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
$sequential_231/lstm_694/zeros/packedPack.sequential_231/lstm_694/strided_slice:output:0/sequential_231/lstm_694/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_231/lstm_694/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_231/lstm_694/zerosFill-sequential_231/lstm_694/zeros/packed:output:0,sequential_231/lstm_694/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2j
(sequential_231/lstm_694/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
&sequential_231/lstm_694/zeros_1/packedPack.sequential_231/lstm_694/strided_slice:output:01sequential_231/lstm_694/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_231/lstm_694/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_231/lstm_694/zeros_1Fill/sequential_231/lstm_694/zeros_1/packed:output:0.sequential_231/lstm_694/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2{
&sequential_231/lstm_694/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_231/lstm_694/transpose	Transpose'sequential_231/lstm_693/transpose_1:y:0/sequential_231/lstm_694/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dt
sequential_231/lstm_694/Shape_1Shape%sequential_231/lstm_694/transpose:y:0*
T0*
_output_shapes
:w
-sequential_231/lstm_694/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_231/lstm_694/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_231/lstm_694/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_231/lstm_694/strided_slice_1StridedSlice(sequential_231/lstm_694/Shape_1:output:06sequential_231/lstm_694/strided_slice_1/stack:output:08sequential_231/lstm_694/strided_slice_1/stack_1:output:08sequential_231/lstm_694/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_231/lstm_694/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_231/lstm_694/TensorArrayV2TensorListReserve<sequential_231/lstm_694/TensorArrayV2/element_shape:output:00sequential_231/lstm_694/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_231/lstm_694/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
?sequential_231/lstm_694/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_231/lstm_694/transpose:y:0Vsequential_231/lstm_694/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_231/lstm_694/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_231/lstm_694/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_231/lstm_694/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_231/lstm_694/strided_slice_2StridedSlice%sequential_231/lstm_694/transpose:y:06sequential_231/lstm_694/strided_slice_2/stack:output:08sequential_231/lstm_694/strided_slice_2/stack_1:output:08sequential_231/lstm_694/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
;sequential_231/lstm_694/lstm_cell_694/MatMul/ReadVariableOpReadVariableOpDsequential_231_lstm_694_lstm_cell_694_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
,sequential_231/lstm_694/lstm_cell_694/MatMulMatMul0sequential_231/lstm_694/strided_slice_2:output:0Csequential_231/lstm_694/lstm_cell_694/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_231/lstm_694/lstm_cell_694/MatMul_1/ReadVariableOpReadVariableOpFsequential_231_lstm_694_lstm_cell_694_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
.sequential_231/lstm_694/lstm_cell_694/MatMul_1MatMul&sequential_231/lstm_694/zeros:output:0Esequential_231/lstm_694/lstm_cell_694/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_231/lstm_694/lstm_cell_694/addAddV26sequential_231/lstm_694/lstm_cell_694/MatMul:product:08sequential_231/lstm_694/lstm_cell_694/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_231/lstm_694/lstm_cell_694/BiasAdd/ReadVariableOpReadVariableOpEsequential_231_lstm_694_lstm_cell_694_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_231/lstm_694/lstm_cell_694/BiasAddBiasAdd-sequential_231/lstm_694/lstm_cell_694/add:z:0Dsequential_231/lstm_694/lstm_cell_694/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_231/lstm_694/lstm_cell_694/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_231/lstm_694/lstm_cell_694/splitSplit>sequential_231/lstm_694/lstm_cell_694/split/split_dim:output:06sequential_231/lstm_694/lstm_cell_694/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
-sequential_231/lstm_694/lstm_cell_694/SigmoidSigmoid4sequential_231/lstm_694/lstm_cell_694/split:output:0*
T0*'
_output_shapes
:?????????2?
/sequential_231/lstm_694/lstm_cell_694/Sigmoid_1Sigmoid4sequential_231/lstm_694/lstm_cell_694/split:output:1*
T0*'
_output_shapes
:?????????2?
)sequential_231/lstm_694/lstm_cell_694/mulMul3sequential_231/lstm_694/lstm_cell_694/Sigmoid_1:y:0(sequential_231/lstm_694/zeros_1:output:0*
T0*'
_output_shapes
:?????????2?
*sequential_231/lstm_694/lstm_cell_694/ReluRelu4sequential_231/lstm_694/lstm_cell_694/split:output:2*
T0*'
_output_shapes
:?????????2?
+sequential_231/lstm_694/lstm_cell_694/mul_1Mul1sequential_231/lstm_694/lstm_cell_694/Sigmoid:y:08sequential_231/lstm_694/lstm_cell_694/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
+sequential_231/lstm_694/lstm_cell_694/add_1AddV2-sequential_231/lstm_694/lstm_cell_694/mul:z:0/sequential_231/lstm_694/lstm_cell_694/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
/sequential_231/lstm_694/lstm_cell_694/Sigmoid_2Sigmoid4sequential_231/lstm_694/lstm_cell_694/split:output:3*
T0*'
_output_shapes
:?????????2?
,sequential_231/lstm_694/lstm_cell_694/Relu_1Relu/sequential_231/lstm_694/lstm_cell_694/add_1:z:0*
T0*'
_output_shapes
:?????????2?
+sequential_231/lstm_694/lstm_cell_694/mul_2Mul3sequential_231/lstm_694/lstm_cell_694/Sigmoid_2:y:0:sequential_231/lstm_694/lstm_cell_694/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
5sequential_231/lstm_694/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
'sequential_231/lstm_694/TensorArrayV2_1TensorListReserve>sequential_231/lstm_694/TensorArrayV2_1/element_shape:output:00sequential_231/lstm_694/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_231/lstm_694/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_231/lstm_694/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_231/lstm_694/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_231/lstm_694/whileWhile3sequential_231/lstm_694/while/loop_counter:output:09sequential_231/lstm_694/while/maximum_iterations:output:0%sequential_231/lstm_694/time:output:00sequential_231/lstm_694/TensorArrayV2_1:handle:0&sequential_231/lstm_694/zeros:output:0(sequential_231/lstm_694/zeros_1:output:00sequential_231/lstm_694/strided_slice_1:output:0Osequential_231/lstm_694/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_231_lstm_694_lstm_cell_694_matmul_readvariableop_resourceFsequential_231_lstm_694_lstm_cell_694_matmul_1_readvariableop_resourceEsequential_231_lstm_694_lstm_cell_694_biasadd_readvariableop_resource*
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
*sequential_231_lstm_694_while_body_4360358*6
cond.R,
*sequential_231_lstm_694_while_cond_4360357*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
Hsequential_231/lstm_694/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
:sequential_231/lstm_694/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_231/lstm_694/while:output:3Qsequential_231/lstm_694/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0?
-sequential_231/lstm_694/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_231/lstm_694/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_231/lstm_694/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_231/lstm_694/strided_slice_3StridedSliceCsequential_231/lstm_694/TensorArrayV2Stack/TensorListStack:tensor:06sequential_231/lstm_694/strided_slice_3/stack:output:08sequential_231/lstm_694/strided_slice_3/stack_1:output:08sequential_231/lstm_694/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask}
(sequential_231/lstm_694/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_231/lstm_694/transpose_1	TransposeCsequential_231/lstm_694/TensorArrayV2Stack/TensorListStack:tensor:01sequential_231/lstm_694/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2s
sequential_231/lstm_694/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_231/lstm_695/ShapeShape'sequential_231/lstm_694/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_231/lstm_695/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_231/lstm_695/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_231/lstm_695/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_231/lstm_695/strided_sliceStridedSlice&sequential_231/lstm_695/Shape:output:04sequential_231/lstm_695/strided_slice/stack:output:06sequential_231/lstm_695/strided_slice/stack_1:output:06sequential_231/lstm_695/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_231/lstm_695/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
$sequential_231/lstm_695/zeros/packedPack.sequential_231/lstm_695/strided_slice:output:0/sequential_231/lstm_695/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_231/lstm_695/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_231/lstm_695/zerosFill-sequential_231/lstm_695/zeros/packed:output:0,sequential_231/lstm_695/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
j
(sequential_231/lstm_695/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
&sequential_231/lstm_695/zeros_1/packedPack.sequential_231/lstm_695/strided_slice:output:01sequential_231/lstm_695/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_231/lstm_695/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_231/lstm_695/zeros_1Fill/sequential_231/lstm_695/zeros_1/packed:output:0.sequential_231/lstm_695/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
{
&sequential_231/lstm_695/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_231/lstm_695/transpose	Transpose'sequential_231/lstm_694/transpose_1:y:0/sequential_231/lstm_695/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2t
sequential_231/lstm_695/Shape_1Shape%sequential_231/lstm_695/transpose:y:0*
T0*
_output_shapes
:w
-sequential_231/lstm_695/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_231/lstm_695/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_231/lstm_695/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_231/lstm_695/strided_slice_1StridedSlice(sequential_231/lstm_695/Shape_1:output:06sequential_231/lstm_695/strided_slice_1/stack:output:08sequential_231/lstm_695/strided_slice_1/stack_1:output:08sequential_231/lstm_695/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_231/lstm_695/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_231/lstm_695/TensorArrayV2TensorListReserve<sequential_231/lstm_695/TensorArrayV2/element_shape:output:00sequential_231/lstm_695/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_231/lstm_695/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
?sequential_231/lstm_695/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_231/lstm_695/transpose:y:0Vsequential_231/lstm_695/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_231/lstm_695/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_231/lstm_695/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_231/lstm_695/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_231/lstm_695/strided_slice_2StridedSlice%sequential_231/lstm_695/transpose:y:06sequential_231/lstm_695/strided_slice_2/stack:output:08sequential_231/lstm_695/strided_slice_2/stack_1:output:08sequential_231/lstm_695/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
;sequential_231/lstm_695/lstm_cell_695/MatMul/ReadVariableOpReadVariableOpDsequential_231_lstm_695_lstm_cell_695_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
,sequential_231/lstm_695/lstm_cell_695/MatMulMatMul0sequential_231/lstm_695/strided_slice_2:output:0Csequential_231/lstm_695/lstm_cell_695/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
=sequential_231/lstm_695/lstm_cell_695/MatMul_1/ReadVariableOpReadVariableOpFsequential_231_lstm_695_lstm_cell_695_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
.sequential_231/lstm_695/lstm_cell_695/MatMul_1MatMul&sequential_231/lstm_695/zeros:output:0Esequential_231/lstm_695/lstm_cell_695/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
)sequential_231/lstm_695/lstm_cell_695/addAddV26sequential_231/lstm_695/lstm_cell_695/MatMul:product:08sequential_231/lstm_695/lstm_cell_695/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
<sequential_231/lstm_695/lstm_cell_695/BiasAdd/ReadVariableOpReadVariableOpEsequential_231_lstm_695_lstm_cell_695_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
-sequential_231/lstm_695/lstm_cell_695/BiasAddBiasAdd-sequential_231/lstm_695/lstm_cell_695/add:z:0Dsequential_231/lstm_695/lstm_cell_695/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(w
5sequential_231/lstm_695/lstm_cell_695/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_231/lstm_695/lstm_cell_695/splitSplit>sequential_231/lstm_695/lstm_cell_695/split/split_dim:output:06sequential_231/lstm_695/lstm_cell_695/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
-sequential_231/lstm_695/lstm_cell_695/SigmoidSigmoid4sequential_231/lstm_695/lstm_cell_695/split:output:0*
T0*'
_output_shapes
:?????????
?
/sequential_231/lstm_695/lstm_cell_695/Sigmoid_1Sigmoid4sequential_231/lstm_695/lstm_cell_695/split:output:1*
T0*'
_output_shapes
:?????????
?
)sequential_231/lstm_695/lstm_cell_695/mulMul3sequential_231/lstm_695/lstm_cell_695/Sigmoid_1:y:0(sequential_231/lstm_695/zeros_1:output:0*
T0*'
_output_shapes
:?????????
?
*sequential_231/lstm_695/lstm_cell_695/ReluRelu4sequential_231/lstm_695/lstm_cell_695/split:output:2*
T0*'
_output_shapes
:?????????
?
+sequential_231/lstm_695/lstm_cell_695/mul_1Mul1sequential_231/lstm_695/lstm_cell_695/Sigmoid:y:08sequential_231/lstm_695/lstm_cell_695/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
+sequential_231/lstm_695/lstm_cell_695/add_1AddV2-sequential_231/lstm_695/lstm_cell_695/mul:z:0/sequential_231/lstm_695/lstm_cell_695/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
/sequential_231/lstm_695/lstm_cell_695/Sigmoid_2Sigmoid4sequential_231/lstm_695/lstm_cell_695/split:output:3*
T0*'
_output_shapes
:?????????
?
,sequential_231/lstm_695/lstm_cell_695/Relu_1Relu/sequential_231/lstm_695/lstm_cell_695/add_1:z:0*
T0*'
_output_shapes
:?????????
?
+sequential_231/lstm_695/lstm_cell_695/mul_2Mul3sequential_231/lstm_695/lstm_cell_695/Sigmoid_2:y:0:sequential_231/lstm_695/lstm_cell_695/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
5sequential_231/lstm_695/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
'sequential_231/lstm_695/TensorArrayV2_1TensorListReserve>sequential_231/lstm_695/TensorArrayV2_1/element_shape:output:00sequential_231/lstm_695/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_231/lstm_695/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_231/lstm_695/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_231/lstm_695/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_231/lstm_695/whileWhile3sequential_231/lstm_695/while/loop_counter:output:09sequential_231/lstm_695/while/maximum_iterations:output:0%sequential_231/lstm_695/time:output:00sequential_231/lstm_695/TensorArrayV2_1:handle:0&sequential_231/lstm_695/zeros:output:0(sequential_231/lstm_695/zeros_1:output:00sequential_231/lstm_695/strided_slice_1:output:0Osequential_231/lstm_695/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_231_lstm_695_lstm_cell_695_matmul_readvariableop_resourceFsequential_231_lstm_695_lstm_cell_695_matmul_1_readvariableop_resourceEsequential_231_lstm_695_lstm_cell_695_biasadd_readvariableop_resource*
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
*sequential_231_lstm_695_while_body_4360497*6
cond.R,
*sequential_231_lstm_695_while_cond_4360496*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
Hsequential_231/lstm_695/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
:sequential_231/lstm_695/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_231/lstm_695/while:output:3Qsequential_231/lstm_695/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0?
-sequential_231/lstm_695/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_231/lstm_695/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_231/lstm_695/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_231/lstm_695/strided_slice_3StridedSliceCsequential_231/lstm_695/TensorArrayV2Stack/TensorListStack:tensor:06sequential_231/lstm_695/strided_slice_3/stack:output:08sequential_231/lstm_695/strided_slice_3/stack_1:output:08sequential_231/lstm_695/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_mask}
(sequential_231/lstm_695/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_231/lstm_695/transpose_1	TransposeCsequential_231/lstm_695/TensorArrayV2Stack/TensorListStack:tensor:01sequential_231/lstm_695/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
s
sequential_231/lstm_695/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
.sequential_231/dense_231/MatMul/ReadVariableOpReadVariableOp7sequential_231_dense_231_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
sequential_231/dense_231/MatMulMatMul0sequential_231/lstm_695/strided_slice_3:output:06sequential_231/dense_231/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
/sequential_231/dense_231/BiasAdd/ReadVariableOpReadVariableOp8sequential_231_dense_231_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
 sequential_231/dense_231/BiasAddBiasAdd)sequential_231/dense_231/MatMul:product:07sequential_231/dense_231/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x
IdentityIdentity)sequential_231/dense_231/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp0^sequential_231/dense_231/BiasAdd/ReadVariableOp/^sequential_231/dense_231/MatMul/ReadVariableOp=^sequential_231/lstm_693/lstm_cell_693/BiasAdd/ReadVariableOp<^sequential_231/lstm_693/lstm_cell_693/MatMul/ReadVariableOp>^sequential_231/lstm_693/lstm_cell_693/MatMul_1/ReadVariableOp^sequential_231/lstm_693/while=^sequential_231/lstm_694/lstm_cell_694/BiasAdd/ReadVariableOp<^sequential_231/lstm_694/lstm_cell_694/MatMul/ReadVariableOp>^sequential_231/lstm_694/lstm_cell_694/MatMul_1/ReadVariableOp^sequential_231/lstm_694/while=^sequential_231/lstm_695/lstm_cell_695/BiasAdd/ReadVariableOp<^sequential_231/lstm_695/lstm_cell_695/MatMul/ReadVariableOp>^sequential_231/lstm_695/lstm_cell_695/MatMul_1/ReadVariableOp^sequential_231/lstm_695/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2b
/sequential_231/dense_231/BiasAdd/ReadVariableOp/sequential_231/dense_231/BiasAdd/ReadVariableOp2`
.sequential_231/dense_231/MatMul/ReadVariableOp.sequential_231/dense_231/MatMul/ReadVariableOp2|
<sequential_231/lstm_693/lstm_cell_693/BiasAdd/ReadVariableOp<sequential_231/lstm_693/lstm_cell_693/BiasAdd/ReadVariableOp2z
;sequential_231/lstm_693/lstm_cell_693/MatMul/ReadVariableOp;sequential_231/lstm_693/lstm_cell_693/MatMul/ReadVariableOp2~
=sequential_231/lstm_693/lstm_cell_693/MatMul_1/ReadVariableOp=sequential_231/lstm_693/lstm_cell_693/MatMul_1/ReadVariableOp2>
sequential_231/lstm_693/whilesequential_231/lstm_693/while2|
<sequential_231/lstm_694/lstm_cell_694/BiasAdd/ReadVariableOp<sequential_231/lstm_694/lstm_cell_694/BiasAdd/ReadVariableOp2z
;sequential_231/lstm_694/lstm_cell_694/MatMul/ReadVariableOp;sequential_231/lstm_694/lstm_cell_694/MatMul/ReadVariableOp2~
=sequential_231/lstm_694/lstm_cell_694/MatMul_1/ReadVariableOp=sequential_231/lstm_694/lstm_cell_694/MatMul_1/ReadVariableOp2>
sequential_231/lstm_694/whilesequential_231/lstm_694/while2|
<sequential_231/lstm_695/lstm_cell_695/BiasAdd/ReadVariableOp<sequential_231/lstm_695/lstm_cell_695/BiasAdd/ReadVariableOp2z
;sequential_231/lstm_695/lstm_cell_695/MatMul/ReadVariableOp;sequential_231/lstm_695/lstm_cell_695/MatMul/ReadVariableOp2~
=sequential_231/lstm_695/lstm_cell_695/MatMul_1/ReadVariableOp=sequential_231/lstm_695/lstm_cell_695/MatMul_1/ReadVariableOp2>
sequential_231/lstm_695/whilesequential_231/lstm_695/while:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_693_input
?J
?
E__inference_lstm_695_layer_call_and_return_conditional_losses_4362302

inputs>
,lstm_cell_695_matmul_readvariableop_resource:2(@
.lstm_cell_695_matmul_1_readvariableop_resource:
(;
-lstm_cell_695_biasadd_readvariableop_resource:(
identity??$lstm_cell_695/BiasAdd/ReadVariableOp?#lstm_cell_695/MatMul/ReadVariableOp?%lstm_cell_695/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_695/MatMul/ReadVariableOpReadVariableOp,lstm_cell_695_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_695/MatMulMatMulstrided_slice_2:output:0+lstm_cell_695/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_695/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_695_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_695/MatMul_1MatMulzeros:output:0-lstm_cell_695/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_695/addAddV2lstm_cell_695/MatMul:product:0 lstm_cell_695/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_695/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_695_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_695/BiasAddBiasAddlstm_cell_695/add:z:0,lstm_cell_695/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_695/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_695/splitSplit&lstm_cell_695/split/split_dim:output:0lstm_cell_695/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_695/SigmoidSigmoidlstm_cell_695/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_695/Sigmoid_1Sigmoidlstm_cell_695/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_695/mulMullstm_cell_695/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_695/ReluRelulstm_cell_695/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_695/mul_1Mullstm_cell_695/Sigmoid:y:0 lstm_cell_695/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_695/add_1AddV2lstm_cell_695/mul:z:0lstm_cell_695/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_695/Sigmoid_2Sigmoidlstm_cell_695/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_695/Relu_1Relulstm_cell_695/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_695/mul_2Mullstm_cell_695/Sigmoid_2:y:0"lstm_cell_695/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_695_matmul_readvariableop_resource.lstm_cell_695_matmul_1_readvariableop_resource-lstm_cell_695_biasadd_readvariableop_resource*
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
while_body_4362218*
condR
while_cond_4362217*K
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
NoOpNoOp%^lstm_cell_695/BiasAdd/ReadVariableOp$^lstm_cell_695/MatMul/ReadVariableOp&^lstm_cell_695/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_695/BiasAdd/ReadVariableOp$lstm_cell_695/BiasAdd/ReadVariableOp2J
#lstm_cell_695/MatMul/ReadVariableOp#lstm_cell_695/MatMul/ReadVariableOp2N
%lstm_cell_695/MatMul_1/ReadVariableOp%lstm_cell_695/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
while_cond_4365089
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4365089___redundant_placeholder05
1while_while_cond_4365089___redundant_placeholder15
1while_while_cond_4365089___redundant_placeholder25
1while_while_cond_4365089___redundant_placeholder3
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
*__inference_lstm_695_layer_call_fn_4365009
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
E__inference_lstm_695_layer_call_and_return_conditional_losses_4361628o
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
lstm_695_while_cond_4363664.
*lstm_695_while_lstm_695_while_loop_counter4
0lstm_695_while_lstm_695_while_maximum_iterations
lstm_695_while_placeholder 
lstm_695_while_placeholder_1 
lstm_695_while_placeholder_2 
lstm_695_while_placeholder_30
,lstm_695_while_less_lstm_695_strided_slice_1G
Clstm_695_while_lstm_695_while_cond_4363664___redundant_placeholder0G
Clstm_695_while_lstm_695_while_cond_4363664___redundant_placeholder1G
Clstm_695_while_lstm_695_while_cond_4363664___redundant_placeholder2G
Clstm_695_while_lstm_695_while_cond_4363664___redundant_placeholder3
lstm_695_while_identity
?
lstm_695/while/LessLesslstm_695_while_placeholder,lstm_695_while_less_lstm_695_strided_slice_1*
T0*
_output_shapes
: ]
lstm_695/while/IdentityIdentitylstm_695/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_695_while_identity lstm_695/while/Identity:output:0*(
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
E__inference_lstm_694_layer_call_and_return_conditional_losses_4364558
inputs_0?
,lstm_cell_694_matmul_readvariableop_resource:	d?A
.lstm_cell_694_matmul_1_readvariableop_resource:	2?<
-lstm_cell_694_biasadd_readvariableop_resource:	?
identity??$lstm_cell_694/BiasAdd/ReadVariableOp?#lstm_cell_694/MatMul/ReadVariableOp?%lstm_cell_694/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_694/MatMul/ReadVariableOpReadVariableOp,lstm_cell_694_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_694/MatMulMatMulstrided_slice_2:output:0+lstm_cell_694/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_694/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_694_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_694/MatMul_1MatMulzeros:output:0-lstm_cell_694/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_694/addAddV2lstm_cell_694/MatMul:product:0 lstm_cell_694/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_694/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_694_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_694/BiasAddBiasAddlstm_cell_694/add:z:0,lstm_cell_694/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_694/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_694/splitSplit&lstm_cell_694/split/split_dim:output:0lstm_cell_694/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_694/SigmoidSigmoidlstm_cell_694/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_694/Sigmoid_1Sigmoidlstm_cell_694/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_694/mulMullstm_cell_694/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_694/ReluRelulstm_cell_694/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_694/mul_1Mullstm_cell_694/Sigmoid:y:0 lstm_cell_694/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_694/add_1AddV2lstm_cell_694/mul:z:0lstm_cell_694/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_694/Sigmoid_2Sigmoidlstm_cell_694/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_694/Relu_1Relulstm_cell_694/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_694/mul_2Mullstm_cell_694/Sigmoid_2:y:0"lstm_cell_694/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_694_matmul_readvariableop_resource.lstm_cell_694_matmul_1_readvariableop_resource-lstm_cell_694_biasadd_readvariableop_resource*
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
while_body_4364474*
condR
while_cond_4364473*K
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
NoOpNoOp%^lstm_cell_694/BiasAdd/ReadVariableOp$^lstm_cell_694/MatMul/ReadVariableOp&^lstm_cell_694/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_694/BiasAdd/ReadVariableOp$lstm_cell_694/BiasAdd/ReadVariableOp2J
#lstm_cell_694/MatMul/ReadVariableOp#lstm_cell_694/MatMul/ReadVariableOp2N
%lstm_cell_694/MatMul_1/ReadVariableOp%lstm_cell_694/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?K
?
E__inference_lstm_695_layer_call_and_return_conditional_losses_4365174
inputs_0>
,lstm_cell_695_matmul_readvariableop_resource:2(@
.lstm_cell_695_matmul_1_readvariableop_resource:
(;
-lstm_cell_695_biasadd_readvariableop_resource:(
identity??$lstm_cell_695/BiasAdd/ReadVariableOp?#lstm_cell_695/MatMul/ReadVariableOp?%lstm_cell_695/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_695/MatMul/ReadVariableOpReadVariableOp,lstm_cell_695_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_695/MatMulMatMulstrided_slice_2:output:0+lstm_cell_695/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_695/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_695_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_695/MatMul_1MatMulzeros:output:0-lstm_cell_695/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_695/addAddV2lstm_cell_695/MatMul:product:0 lstm_cell_695/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_695/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_695_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_695/BiasAddBiasAddlstm_cell_695/add:z:0,lstm_cell_695/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_695/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_695/splitSplit&lstm_cell_695/split/split_dim:output:0lstm_cell_695/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_695/SigmoidSigmoidlstm_cell_695/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_695/Sigmoid_1Sigmoidlstm_cell_695/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_695/mulMullstm_cell_695/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_695/ReluRelulstm_cell_695/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_695/mul_1Mullstm_cell_695/Sigmoid:y:0 lstm_cell_695/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_695/add_1AddV2lstm_cell_695/mul:z:0lstm_cell_695/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_695/Sigmoid_2Sigmoidlstm_cell_695/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_695/Relu_1Relulstm_cell_695/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_695/mul_2Mullstm_cell_695/Sigmoid_2:y:0"lstm_cell_695/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_695_matmul_readvariableop_resource.lstm_cell_695_matmul_1_readvariableop_resource-lstm_cell_695_biasadd_readvariableop_resource*
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
while_body_4365090*
condR
while_cond_4365089*K
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
NoOpNoOp%^lstm_cell_695/BiasAdd/ReadVariableOp$^lstm_cell_695/MatMul/ReadVariableOp&^lstm_cell_695/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_695/BiasAdd/ReadVariableOp$lstm_cell_695/BiasAdd/ReadVariableOp2J
#lstm_cell_695/MatMul/ReadVariableOp#lstm_cell_695/MatMul/ReadVariableOp2N
%lstm_cell_695/MatMul_1/ReadVariableOp%lstm_cell_695/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?
?
/__inference_lstm_cell_694_layer_call_fn_4365737

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
J__inference_lstm_cell_694_layer_call_and_return_conditional_losses_4361004o
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
E__inference_lstm_693_layer_call_and_return_conditional_losses_4364085
inputs_0?
,lstm_cell_693_matmul_readvariableop_resource:	?A
.lstm_cell_693_matmul_1_readvariableop_resource:	d?<
-lstm_cell_693_biasadd_readvariableop_resource:	?
identity??$lstm_cell_693/BiasAdd/ReadVariableOp?#lstm_cell_693/MatMul/ReadVariableOp?%lstm_cell_693/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_693/MatMul/ReadVariableOpReadVariableOp,lstm_cell_693_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_693/MatMulMatMulstrided_slice_2:output:0+lstm_cell_693/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_693/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_693_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_693/MatMul_1MatMulzeros:output:0-lstm_cell_693/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_693/addAddV2lstm_cell_693/MatMul:product:0 lstm_cell_693/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_693/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_693_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_693/BiasAddBiasAddlstm_cell_693/add:z:0,lstm_cell_693/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_693/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_693/splitSplit&lstm_cell_693/split/split_dim:output:0lstm_cell_693/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_693/SigmoidSigmoidlstm_cell_693/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_693/Sigmoid_1Sigmoidlstm_cell_693/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_693/mulMullstm_cell_693/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_693/ReluRelulstm_cell_693/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_693/mul_1Mullstm_cell_693/Sigmoid:y:0 lstm_cell_693/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_693/add_1AddV2lstm_cell_693/mul:z:0lstm_cell_693/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_693/Sigmoid_2Sigmoidlstm_cell_693/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_693/Relu_1Relulstm_cell_693/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_693/mul_2Mullstm_cell_693/Sigmoid_2:y:0"lstm_cell_693/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_693_matmul_readvariableop_resource.lstm_cell_693_matmul_1_readvariableop_resource-lstm_cell_693_biasadd_readvariableop_resource*
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
while_body_4364001*
condR
while_cond_4364000*K
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
NoOpNoOp%^lstm_cell_693/BiasAdd/ReadVariableOp$^lstm_cell_693/MatMul/ReadVariableOp&^lstm_cell_693/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_693/BiasAdd/ReadVariableOp$lstm_cell_693/BiasAdd/ReadVariableOp2J
#lstm_cell_693/MatMul/ReadVariableOp#lstm_cell_693/MatMul/ReadVariableOp2N
%lstm_cell_693/MatMul_1/ReadVariableOp%lstm_cell_693/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
*__inference_lstm_694_layer_call_fn_4364404

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
E__inference_lstm_694_layer_call_and_return_conditional_losses_4361936s
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
lstm_694_while_cond_4363098.
*lstm_694_while_lstm_694_while_loop_counter4
0lstm_694_while_lstm_694_while_maximum_iterations
lstm_694_while_placeholder 
lstm_694_while_placeholder_1 
lstm_694_while_placeholder_2 
lstm_694_while_placeholder_30
,lstm_694_while_less_lstm_694_strided_slice_1G
Clstm_694_while_lstm_694_while_cond_4363098___redundant_placeholder0G
Clstm_694_while_lstm_694_while_cond_4363098___redundant_placeholder1G
Clstm_694_while_lstm_694_while_cond_4363098___redundant_placeholder2G
Clstm_694_while_lstm_694_while_cond_4363098___redundant_placeholder3
lstm_694_while_identity
?
lstm_694/while/LessLesslstm_694_while_placeholder,lstm_694_while_less_lstm_694_strided_slice_1*
T0*
_output_shapes
: ]
lstm_694/while/IdentityIdentitylstm_694/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_694_while_identity lstm_694/while/Identity:output:0*(
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
+__inference_dense_231_layer_call_fn_4365612

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
F__inference_dense_231_layer_call_and_return_conditional_losses_4362104o
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
while_cond_4364616
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4364616___redundant_placeholder05
1while_while_cond_4364616___redundant_placeholder15
1while_while_cond_4364616___redundant_placeholder25
1while_while_cond_4364616___redundant_placeholder3
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
*sequential_231_lstm_693_while_body_4360219L
Hsequential_231_lstm_693_while_sequential_231_lstm_693_while_loop_counterR
Nsequential_231_lstm_693_while_sequential_231_lstm_693_while_maximum_iterations-
)sequential_231_lstm_693_while_placeholder/
+sequential_231_lstm_693_while_placeholder_1/
+sequential_231_lstm_693_while_placeholder_2/
+sequential_231_lstm_693_while_placeholder_3K
Gsequential_231_lstm_693_while_sequential_231_lstm_693_strided_slice_1_0?
?sequential_231_lstm_693_while_tensorarrayv2read_tensorlistgetitem_sequential_231_lstm_693_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_231_lstm_693_while_lstm_cell_693_matmul_readvariableop_resource_0:	?a
Nsequential_231_lstm_693_while_lstm_cell_693_matmul_1_readvariableop_resource_0:	d?\
Msequential_231_lstm_693_while_lstm_cell_693_biasadd_readvariableop_resource_0:	?*
&sequential_231_lstm_693_while_identity,
(sequential_231_lstm_693_while_identity_1,
(sequential_231_lstm_693_while_identity_2,
(sequential_231_lstm_693_while_identity_3,
(sequential_231_lstm_693_while_identity_4,
(sequential_231_lstm_693_while_identity_5I
Esequential_231_lstm_693_while_sequential_231_lstm_693_strided_slice_1?
?sequential_231_lstm_693_while_tensorarrayv2read_tensorlistgetitem_sequential_231_lstm_693_tensorarrayunstack_tensorlistfromtensor]
Jsequential_231_lstm_693_while_lstm_cell_693_matmul_readvariableop_resource:	?_
Lsequential_231_lstm_693_while_lstm_cell_693_matmul_1_readvariableop_resource:	d?Z
Ksequential_231_lstm_693_while_lstm_cell_693_biasadd_readvariableop_resource:	???Bsequential_231/lstm_693/while/lstm_cell_693/BiasAdd/ReadVariableOp?Asequential_231/lstm_693/while/lstm_cell_693/MatMul/ReadVariableOp?Csequential_231/lstm_693/while/lstm_cell_693/MatMul_1/ReadVariableOp?
Osequential_231/lstm_693/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
Asequential_231/lstm_693/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_231_lstm_693_while_tensorarrayv2read_tensorlistgetitem_sequential_231_lstm_693_tensorarrayunstack_tensorlistfromtensor_0)sequential_231_lstm_693_while_placeholderXsequential_231/lstm_693/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
Asequential_231/lstm_693/while/lstm_cell_693/MatMul/ReadVariableOpReadVariableOpLsequential_231_lstm_693_while_lstm_cell_693_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
2sequential_231/lstm_693/while/lstm_cell_693/MatMulMatMulHsequential_231/lstm_693/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_231/lstm_693/while/lstm_cell_693/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_231/lstm_693/while/lstm_cell_693/MatMul_1/ReadVariableOpReadVariableOpNsequential_231_lstm_693_while_lstm_cell_693_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
4sequential_231/lstm_693/while/lstm_cell_693/MatMul_1MatMul+sequential_231_lstm_693_while_placeholder_2Ksequential_231/lstm_693/while/lstm_cell_693/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_231/lstm_693/while/lstm_cell_693/addAddV2<sequential_231/lstm_693/while/lstm_cell_693/MatMul:product:0>sequential_231/lstm_693/while/lstm_cell_693/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_231/lstm_693/while/lstm_cell_693/BiasAdd/ReadVariableOpReadVariableOpMsequential_231_lstm_693_while_lstm_cell_693_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_231/lstm_693/while/lstm_cell_693/BiasAddBiasAdd3sequential_231/lstm_693/while/lstm_cell_693/add:z:0Jsequential_231/lstm_693/while/lstm_cell_693/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_231/lstm_693/while/lstm_cell_693/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_231/lstm_693/while/lstm_cell_693/splitSplitDsequential_231/lstm_693/while/lstm_cell_693/split/split_dim:output:0<sequential_231/lstm_693/while/lstm_cell_693/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
3sequential_231/lstm_693/while/lstm_cell_693/SigmoidSigmoid:sequential_231/lstm_693/while/lstm_cell_693/split:output:0*
T0*'
_output_shapes
:?????????d?
5sequential_231/lstm_693/while/lstm_cell_693/Sigmoid_1Sigmoid:sequential_231/lstm_693/while/lstm_cell_693/split:output:1*
T0*'
_output_shapes
:?????????d?
/sequential_231/lstm_693/while/lstm_cell_693/mulMul9sequential_231/lstm_693/while/lstm_cell_693/Sigmoid_1:y:0+sequential_231_lstm_693_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
0sequential_231/lstm_693/while/lstm_cell_693/ReluRelu:sequential_231/lstm_693/while/lstm_cell_693/split:output:2*
T0*'
_output_shapes
:?????????d?
1sequential_231/lstm_693/while/lstm_cell_693/mul_1Mul7sequential_231/lstm_693/while/lstm_cell_693/Sigmoid:y:0>sequential_231/lstm_693/while/lstm_cell_693/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
1sequential_231/lstm_693/while/lstm_cell_693/add_1AddV23sequential_231/lstm_693/while/lstm_cell_693/mul:z:05sequential_231/lstm_693/while/lstm_cell_693/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
5sequential_231/lstm_693/while/lstm_cell_693/Sigmoid_2Sigmoid:sequential_231/lstm_693/while/lstm_cell_693/split:output:3*
T0*'
_output_shapes
:?????????d?
2sequential_231/lstm_693/while/lstm_cell_693/Relu_1Relu5sequential_231/lstm_693/while/lstm_cell_693/add_1:z:0*
T0*'
_output_shapes
:?????????d?
1sequential_231/lstm_693/while/lstm_cell_693/mul_2Mul9sequential_231/lstm_693/while/lstm_cell_693/Sigmoid_2:y:0@sequential_231/lstm_693/while/lstm_cell_693/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
Bsequential_231/lstm_693/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_231_lstm_693_while_placeholder_1)sequential_231_lstm_693_while_placeholder5sequential_231/lstm_693/while/lstm_cell_693/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_231/lstm_693/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_231/lstm_693/while/addAddV2)sequential_231_lstm_693_while_placeholder,sequential_231/lstm_693/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_231/lstm_693/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_231/lstm_693/while/add_1AddV2Hsequential_231_lstm_693_while_sequential_231_lstm_693_while_loop_counter.sequential_231/lstm_693/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_231/lstm_693/while/IdentityIdentity'sequential_231/lstm_693/while/add_1:z:0#^sequential_231/lstm_693/while/NoOp*
T0*
_output_shapes
: ?
(sequential_231/lstm_693/while/Identity_1IdentityNsequential_231_lstm_693_while_sequential_231_lstm_693_while_maximum_iterations#^sequential_231/lstm_693/while/NoOp*
T0*
_output_shapes
: ?
(sequential_231/lstm_693/while/Identity_2Identity%sequential_231/lstm_693/while/add:z:0#^sequential_231/lstm_693/while/NoOp*
T0*
_output_shapes
: ?
(sequential_231/lstm_693/while/Identity_3IdentityRsequential_231/lstm_693/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_231/lstm_693/while/NoOp*
T0*
_output_shapes
: ?
(sequential_231/lstm_693/while/Identity_4Identity5sequential_231/lstm_693/while/lstm_cell_693/mul_2:z:0#^sequential_231/lstm_693/while/NoOp*
T0*'
_output_shapes
:?????????d?
(sequential_231/lstm_693/while/Identity_5Identity5sequential_231/lstm_693/while/lstm_cell_693/add_1:z:0#^sequential_231/lstm_693/while/NoOp*
T0*'
_output_shapes
:?????????d?
"sequential_231/lstm_693/while/NoOpNoOpC^sequential_231/lstm_693/while/lstm_cell_693/BiasAdd/ReadVariableOpB^sequential_231/lstm_693/while/lstm_cell_693/MatMul/ReadVariableOpD^sequential_231/lstm_693/while/lstm_cell_693/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_231_lstm_693_while_identity/sequential_231/lstm_693/while/Identity:output:0"]
(sequential_231_lstm_693_while_identity_11sequential_231/lstm_693/while/Identity_1:output:0"]
(sequential_231_lstm_693_while_identity_21sequential_231/lstm_693/while/Identity_2:output:0"]
(sequential_231_lstm_693_while_identity_31sequential_231/lstm_693/while/Identity_3:output:0"]
(sequential_231_lstm_693_while_identity_41sequential_231/lstm_693/while/Identity_4:output:0"]
(sequential_231_lstm_693_while_identity_51sequential_231/lstm_693/while/Identity_5:output:0"?
Ksequential_231_lstm_693_while_lstm_cell_693_biasadd_readvariableop_resourceMsequential_231_lstm_693_while_lstm_cell_693_biasadd_readvariableop_resource_0"?
Lsequential_231_lstm_693_while_lstm_cell_693_matmul_1_readvariableop_resourceNsequential_231_lstm_693_while_lstm_cell_693_matmul_1_readvariableop_resource_0"?
Jsequential_231_lstm_693_while_lstm_cell_693_matmul_readvariableop_resourceLsequential_231_lstm_693_while_lstm_cell_693_matmul_readvariableop_resource_0"?
Esequential_231_lstm_693_while_sequential_231_lstm_693_strided_slice_1Gsequential_231_lstm_693_while_sequential_231_lstm_693_strided_slice_1_0"?
?sequential_231_lstm_693_while_tensorarrayv2read_tensorlistgetitem_sequential_231_lstm_693_tensorarrayunstack_tensorlistfromtensor?sequential_231_lstm_693_while_tensorarrayv2read_tensorlistgetitem_sequential_231_lstm_693_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2?
Bsequential_231/lstm_693/while/lstm_cell_693/BiasAdd/ReadVariableOpBsequential_231/lstm_693/while/lstm_cell_693/BiasAdd/ReadVariableOp2?
Asequential_231/lstm_693/while/lstm_cell_693/MatMul/ReadVariableOpAsequential_231/lstm_693/while/lstm_cell_693/MatMul/ReadVariableOp2?
Csequential_231/lstm_693/while/lstm_cell_693/MatMul_1/ReadVariableOpCsequential_231/lstm_693/while/lstm_cell_693/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_693_input;
 serving_default_lstm_693_input:0?????????=
	dense_2310
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
2dense_231/kernel
:2dense_231/bias
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
0:.	?2lstm_693/lstm_cell_693/kernel
::8	d?2'lstm_693/lstm_cell_693/recurrent_kernel
*:(?2lstm_693/lstm_cell_693/bias
0:.	d?2lstm_694/lstm_cell_694/kernel
::8	2?2'lstm_694/lstm_cell_694/recurrent_kernel
*:(?2lstm_694/lstm_cell_694/bias
/:-2(2lstm_695/lstm_cell_695/kernel
9:7
(2'lstm_695/lstm_cell_695/recurrent_kernel
):'(2lstm_695/lstm_cell_695/bias
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
2Adam/dense_231/kernel/m
!:2Adam/dense_231/bias/m
5:3	?2$Adam/lstm_693/lstm_cell_693/kernel/m
?:=	d?2.Adam/lstm_693/lstm_cell_693/recurrent_kernel/m
/:-?2"Adam/lstm_693/lstm_cell_693/bias/m
5:3	d?2$Adam/lstm_694/lstm_cell_694/kernel/m
?:=	2?2.Adam/lstm_694/lstm_cell_694/recurrent_kernel/m
/:-?2"Adam/lstm_694/lstm_cell_694/bias/m
4:22(2$Adam/lstm_695/lstm_cell_695/kernel/m
>:<
(2.Adam/lstm_695/lstm_cell_695/recurrent_kernel/m
.:,(2"Adam/lstm_695/lstm_cell_695/bias/m
':%
2Adam/dense_231/kernel/v
!:2Adam/dense_231/bias/v
5:3	?2$Adam/lstm_693/lstm_cell_693/kernel/v
?:=	d?2.Adam/lstm_693/lstm_cell_693/recurrent_kernel/v
/:-?2"Adam/lstm_693/lstm_cell_693/bias/v
5:3	d?2$Adam/lstm_694/lstm_cell_694/kernel/v
?:=	2?2.Adam/lstm_694/lstm_cell_694/recurrent_kernel/v
/:-?2"Adam/lstm_694/lstm_cell_694/bias/v
4:22(2$Adam/lstm_695/lstm_cell_695/kernel/v
>:<
(2.Adam/lstm_695/lstm_cell_695/recurrent_kernel/v
.:,(2"Adam/lstm_695/lstm_cell_695/bias/v
?2?
0__inference_sequential_231_layer_call_fn_4362136
0__inference_sequential_231_layer_call_fn_4362874
0__inference_sequential_231_layer_call_fn_4362901
0__inference_sequential_231_layer_call_fn_4362752?
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
K__inference_sequential_231_layer_call_and_return_conditional_losses_4363328
K__inference_sequential_231_layer_call_and_return_conditional_losses_4363755
K__inference_sequential_231_layer_call_and_return_conditional_losses_4362782
K__inference_sequential_231_layer_call_and_return_conditional_losses_4362812?
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
"__inference__wrapped_model_4360587lstm_693_input"?
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
*__inference_lstm_693_layer_call_fn_4363766
*__inference_lstm_693_layer_call_fn_4363777
*__inference_lstm_693_layer_call_fn_4363788
*__inference_lstm_693_layer_call_fn_4363799?
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
E__inference_lstm_693_layer_call_and_return_conditional_losses_4363942
E__inference_lstm_693_layer_call_and_return_conditional_losses_4364085
E__inference_lstm_693_layer_call_and_return_conditional_losses_4364228
E__inference_lstm_693_layer_call_and_return_conditional_losses_4364371?
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
*__inference_lstm_694_layer_call_fn_4364382
*__inference_lstm_694_layer_call_fn_4364393
*__inference_lstm_694_layer_call_fn_4364404
*__inference_lstm_694_layer_call_fn_4364415?
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
E__inference_lstm_694_layer_call_and_return_conditional_losses_4364558
E__inference_lstm_694_layer_call_and_return_conditional_losses_4364701
E__inference_lstm_694_layer_call_and_return_conditional_losses_4364844
E__inference_lstm_694_layer_call_and_return_conditional_losses_4364987?
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
*__inference_lstm_695_layer_call_fn_4364998
*__inference_lstm_695_layer_call_fn_4365009
*__inference_lstm_695_layer_call_fn_4365020
*__inference_lstm_695_layer_call_fn_4365031?
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
E__inference_lstm_695_layer_call_and_return_conditional_losses_4365174
E__inference_lstm_695_layer_call_and_return_conditional_losses_4365317
E__inference_lstm_695_layer_call_and_return_conditional_losses_4365460
E__inference_lstm_695_layer_call_and_return_conditional_losses_4365603?
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
+__inference_dense_231_layer_call_fn_4365612?
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
F__inference_dense_231_layer_call_and_return_conditional_losses_4365622?
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
%__inference_signature_wrapper_4362847lstm_693_input"?
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
/__inference_lstm_cell_693_layer_call_fn_4365639
/__inference_lstm_cell_693_layer_call_fn_4365656?
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
J__inference_lstm_cell_693_layer_call_and_return_conditional_losses_4365688
J__inference_lstm_cell_693_layer_call_and_return_conditional_losses_4365720?
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
/__inference_lstm_cell_694_layer_call_fn_4365737
/__inference_lstm_cell_694_layer_call_fn_4365754?
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
J__inference_lstm_cell_694_layer_call_and_return_conditional_losses_4365786
J__inference_lstm_cell_694_layer_call_and_return_conditional_losses_4365818?
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
/__inference_lstm_cell_695_layer_call_fn_4365835
/__inference_lstm_cell_695_layer_call_fn_4365852?
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
J__inference_lstm_cell_695_layer_call_and_return_conditional_losses_4365884
J__inference_lstm_cell_695_layer_call_and_return_conditional_losses_4365916?
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
"__inference__wrapped_model_4360587?()*+,-./0;?8
1?.
,?)
lstm_693_input?????????
? "5?2
0
	dense_231#? 
	dense_231??????????
F__inference_dense_231_layer_call_and_return_conditional_losses_4365622\/?,
%?"
 ?
inputs?????????

? "%?"
?
0?????????
? ~
+__inference_dense_231_layer_call_fn_4365612O/?,
%?"
 ?
inputs?????????

? "???????????
E__inference_lstm_693_layer_call_and_return_conditional_losses_4363942?()*O?L
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
E__inference_lstm_693_layer_call_and_return_conditional_losses_4364085?()*O?L
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
E__inference_lstm_693_layer_call_and_return_conditional_losses_4364228q()*??<
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
E__inference_lstm_693_layer_call_and_return_conditional_losses_4364371q()*??<
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
*__inference_lstm_693_layer_call_fn_4363766}()*O?L
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
*__inference_lstm_693_layer_call_fn_4363777}()*O?L
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
*__inference_lstm_693_layer_call_fn_4363788d()*??<
5?2
$?!
inputs?????????

 
p 

 
? "??????????d?
*__inference_lstm_693_layer_call_fn_4363799d()*??<
5?2
$?!
inputs?????????

 
p

 
? "??????????d?
E__inference_lstm_694_layer_call_and_return_conditional_losses_4364558?+,-O?L
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
E__inference_lstm_694_layer_call_and_return_conditional_losses_4364701?+,-O?L
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
E__inference_lstm_694_layer_call_and_return_conditional_losses_4364844q+,-??<
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
E__inference_lstm_694_layer_call_and_return_conditional_losses_4364987q+,-??<
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
*__inference_lstm_694_layer_call_fn_4364382}+,-O?L
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
*__inference_lstm_694_layer_call_fn_4364393}+,-O?L
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
*__inference_lstm_694_layer_call_fn_4364404d+,-??<
5?2
$?!
inputs?????????d

 
p 

 
? "??????????2?
*__inference_lstm_694_layer_call_fn_4364415d+,-??<
5?2
$?!
inputs?????????d

 
p

 
? "??????????2?
E__inference_lstm_695_layer_call_and_return_conditional_losses_4365174}./0O?L
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
E__inference_lstm_695_layer_call_and_return_conditional_losses_4365317}./0O?L
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
E__inference_lstm_695_layer_call_and_return_conditional_losses_4365460m./0??<
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
E__inference_lstm_695_layer_call_and_return_conditional_losses_4365603m./0??<
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
*__inference_lstm_695_layer_call_fn_4364998p./0O?L
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
*__inference_lstm_695_layer_call_fn_4365009p./0O?L
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
*__inference_lstm_695_layer_call_fn_4365020`./0??<
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
*__inference_lstm_695_layer_call_fn_4365031`./0??<
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
J__inference_lstm_cell_693_layer_call_and_return_conditional_losses_4365688?()*??}
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
J__inference_lstm_cell_693_layer_call_and_return_conditional_losses_4365720?()*??}
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
/__inference_lstm_cell_693_layer_call_fn_4365639?()*??}
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
/__inference_lstm_cell_693_layer_call_fn_4365656?()*??}
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
J__inference_lstm_cell_694_layer_call_and_return_conditional_losses_4365786?+,-??}
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
J__inference_lstm_cell_694_layer_call_and_return_conditional_losses_4365818?+,-??}
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
/__inference_lstm_cell_694_layer_call_fn_4365737?+,-??}
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
/__inference_lstm_cell_694_layer_call_fn_4365754?+,-??}
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
J__inference_lstm_cell_695_layer_call_and_return_conditional_losses_4365884?./0??}
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
J__inference_lstm_cell_695_layer_call_and_return_conditional_losses_4365916?./0??}
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
/__inference_lstm_cell_695_layer_call_fn_4365835?./0??}
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
/__inference_lstm_cell_695_layer_call_fn_4365852?./0??}
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
K__inference_sequential_231_layer_call_and_return_conditional_losses_4362782y()*+,-./0C?@
9?6
,?)
lstm_693_input?????????
p 

 
? "%?"
?
0?????????
? ?
K__inference_sequential_231_layer_call_and_return_conditional_losses_4362812y()*+,-./0C?@
9?6
,?)
lstm_693_input?????????
p

 
? "%?"
?
0?????????
? ?
K__inference_sequential_231_layer_call_and_return_conditional_losses_4363328q()*+,-./0;?8
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
K__inference_sequential_231_layer_call_and_return_conditional_losses_4363755q()*+,-./0;?8
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
0__inference_sequential_231_layer_call_fn_4362136l()*+,-./0C?@
9?6
,?)
lstm_693_input?????????
p 

 
? "???????????
0__inference_sequential_231_layer_call_fn_4362752l()*+,-./0C?@
9?6
,?)
lstm_693_input?????????
p

 
? "???????????
0__inference_sequential_231_layer_call_fn_4362874d()*+,-./0;?8
1?.
$?!
inputs?????????
p 

 
? "???????????
0__inference_sequential_231_layer_call_fn_4362901d()*+,-./0;?8
1?.
$?!
inputs?????????
p

 
? "???????????
%__inference_signature_wrapper_4362847?()*+,-./0M?J
? 
C?@
>
lstm_693_input,?)
lstm_693_input?????????"5?2
0
	dense_231#? 
	dense_231?????????