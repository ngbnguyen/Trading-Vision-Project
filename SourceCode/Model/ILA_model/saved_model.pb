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
dense_235/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*!
shared_namedense_235/kernel
u
$dense_235/kernel/Read/ReadVariableOpReadVariableOpdense_235/kernel*
_output_shapes

:
*
dtype0
t
dense_235/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_235/bias
m
"dense_235/bias/Read/ReadVariableOpReadVariableOpdense_235/bias*
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
lstm_705/lstm_cell_705/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*.
shared_namelstm_705/lstm_cell_705/kernel
?
1lstm_705/lstm_cell_705/kernel/Read/ReadVariableOpReadVariableOplstm_705/lstm_cell_705/kernel*
_output_shapes
:	?*
dtype0
?
'lstm_705/lstm_cell_705/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*8
shared_name)'lstm_705/lstm_cell_705/recurrent_kernel
?
;lstm_705/lstm_cell_705/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_705/lstm_cell_705/recurrent_kernel*
_output_shapes
:	d?*
dtype0
?
lstm_705/lstm_cell_705/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_705/lstm_cell_705/bias
?
/lstm_705/lstm_cell_705/bias/Read/ReadVariableOpReadVariableOplstm_705/lstm_cell_705/bias*
_output_shapes	
:?*
dtype0
?
lstm_706/lstm_cell_706/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*.
shared_namelstm_706/lstm_cell_706/kernel
?
1lstm_706/lstm_cell_706/kernel/Read/ReadVariableOpReadVariableOplstm_706/lstm_cell_706/kernel*
_output_shapes
:	d?*
dtype0
?
'lstm_706/lstm_cell_706/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*8
shared_name)'lstm_706/lstm_cell_706/recurrent_kernel
?
;lstm_706/lstm_cell_706/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_706/lstm_cell_706/recurrent_kernel*
_output_shapes
:	2?*
dtype0
?
lstm_706/lstm_cell_706/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_706/lstm_cell_706/bias
?
/lstm_706/lstm_cell_706/bias/Read/ReadVariableOpReadVariableOplstm_706/lstm_cell_706/bias*
_output_shapes	
:?*
dtype0
?
lstm_707/lstm_cell_707/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*.
shared_namelstm_707/lstm_cell_707/kernel
?
1lstm_707/lstm_cell_707/kernel/Read/ReadVariableOpReadVariableOplstm_707/lstm_cell_707/kernel*
_output_shapes

:2(*
dtype0
?
'lstm_707/lstm_cell_707/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*8
shared_name)'lstm_707/lstm_cell_707/recurrent_kernel
?
;lstm_707/lstm_cell_707/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_707/lstm_cell_707/recurrent_kernel*
_output_shapes

:
(*
dtype0
?
lstm_707/lstm_cell_707/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*,
shared_namelstm_707/lstm_cell_707/bias
?
/lstm_707/lstm_cell_707/bias/Read/ReadVariableOpReadVariableOplstm_707/lstm_cell_707/bias*
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
Adam/dense_235/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_235/kernel/m
?
+Adam/dense_235/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_235/kernel/m*
_output_shapes

:
*
dtype0
?
Adam/dense_235/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_235/bias/m
{
)Adam/dense_235/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_235/bias/m*
_output_shapes
:*
dtype0
?
$Adam/lstm_705/lstm_cell_705/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_705/lstm_cell_705/kernel/m
?
8Adam/lstm_705/lstm_cell_705/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_705/lstm_cell_705/kernel/m*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_705/lstm_cell_705/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_705/lstm_cell_705/recurrent_kernel/m
?
BAdam/lstm_705/lstm_cell_705/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_705/lstm_cell_705/recurrent_kernel/m*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_705/lstm_cell_705/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_705/lstm_cell_705/bias/m
?
6Adam/lstm_705/lstm_cell_705/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_705/lstm_cell_705/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_706/lstm_cell_706/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_706/lstm_cell_706/kernel/m
?
8Adam/lstm_706/lstm_cell_706/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_706/lstm_cell_706/kernel/m*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_706/lstm_cell_706/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_706/lstm_cell_706/recurrent_kernel/m
?
BAdam/lstm_706/lstm_cell_706/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_706/lstm_cell_706/recurrent_kernel/m*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_706/lstm_cell_706/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_706/lstm_cell_706/bias/m
?
6Adam/lstm_706/lstm_cell_706/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_706/lstm_cell_706/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_707/lstm_cell_707/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_707/lstm_cell_707/kernel/m
?
8Adam/lstm_707/lstm_cell_707/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_707/lstm_cell_707/kernel/m*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_707/lstm_cell_707/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_707/lstm_cell_707/recurrent_kernel/m
?
BAdam/lstm_707/lstm_cell_707/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_707/lstm_cell_707/recurrent_kernel/m*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_707/lstm_cell_707/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_707/lstm_cell_707/bias/m
?
6Adam/lstm_707/lstm_cell_707/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_707/lstm_cell_707/bias/m*
_output_shapes
:(*
dtype0
?
Adam/dense_235/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_235/kernel/v
?
+Adam/dense_235/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_235/kernel/v*
_output_shapes

:
*
dtype0
?
Adam/dense_235/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_235/bias/v
{
)Adam/dense_235/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_235/bias/v*
_output_shapes
:*
dtype0
?
$Adam/lstm_705/lstm_cell_705/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_705/lstm_cell_705/kernel/v
?
8Adam/lstm_705/lstm_cell_705/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_705/lstm_cell_705/kernel/v*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_705/lstm_cell_705/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_705/lstm_cell_705/recurrent_kernel/v
?
BAdam/lstm_705/lstm_cell_705/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_705/lstm_cell_705/recurrent_kernel/v*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_705/lstm_cell_705/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_705/lstm_cell_705/bias/v
?
6Adam/lstm_705/lstm_cell_705/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_705/lstm_cell_705/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_706/lstm_cell_706/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_706/lstm_cell_706/kernel/v
?
8Adam/lstm_706/lstm_cell_706/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_706/lstm_cell_706/kernel/v*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_706/lstm_cell_706/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_706/lstm_cell_706/recurrent_kernel/v
?
BAdam/lstm_706/lstm_cell_706/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_706/lstm_cell_706/recurrent_kernel/v*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_706/lstm_cell_706/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_706/lstm_cell_706/bias/v
?
6Adam/lstm_706/lstm_cell_706/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_706/lstm_cell_706/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_707/lstm_cell_707/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_707/lstm_cell_707/kernel/v
?
8Adam/lstm_707/lstm_cell_707/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_707/lstm_cell_707/kernel/v*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_707/lstm_cell_707/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_707/lstm_cell_707/recurrent_kernel/v
?
BAdam/lstm_707/lstm_cell_707/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_707/lstm_cell_707/recurrent_kernel/v*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_707/lstm_cell_707/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_707/lstm_cell_707/bias/v
?
6Adam/lstm_707/lstm_cell_707/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_707/lstm_cell_707/bias/v*
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
VARIABLE_VALUEdense_235/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_235/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUElstm_705/lstm_cell_705/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_705/lstm_cell_705/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_705/lstm_cell_705/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_706/lstm_cell_706/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_706/lstm_cell_706/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_706/lstm_cell_706/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_707/lstm_cell_707/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_707/lstm_cell_707/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_707/lstm_cell_707/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEAdam/dense_235/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_235/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_705/lstm_cell_705/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_705/lstm_cell_705/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_705/lstm_cell_705/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_706/lstm_cell_706/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_706/lstm_cell_706/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_706/lstm_cell_706/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_707/lstm_cell_707/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_707/lstm_cell_707/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_707/lstm_cell_707/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_235/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_235/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_705/lstm_cell_705/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_705/lstm_cell_705/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_705/lstm_cell_705/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_706/lstm_cell_706/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_706/lstm_cell_706/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_706/lstm_cell_706/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_707/lstm_cell_707/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_707/lstm_cell_707/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_707/lstm_cell_707/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_lstm_705_inputPlaceholder*+
_output_shapes
:?????????*
dtype0* 
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_705_inputlstm_705/lstm_cell_705/kernel'lstm_705/lstm_cell_705/recurrent_kernellstm_705/lstm_cell_705/biaslstm_706/lstm_cell_706/kernel'lstm_706/lstm_cell_706/recurrent_kernellstm_706/lstm_cell_706/biaslstm_707/lstm_cell_707/kernel'lstm_707/lstm_cell_707/recurrent_kernellstm_707/lstm_cell_707/biasdense_235/kerneldense_235/bias*
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
%__inference_signature_wrapper_4418540
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$dense_235/kernel/Read/ReadVariableOp"dense_235/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_705/lstm_cell_705/kernel/Read/ReadVariableOp;lstm_705/lstm_cell_705/recurrent_kernel/Read/ReadVariableOp/lstm_705/lstm_cell_705/bias/Read/ReadVariableOp1lstm_706/lstm_cell_706/kernel/Read/ReadVariableOp;lstm_706/lstm_cell_706/recurrent_kernel/Read/ReadVariableOp/lstm_706/lstm_cell_706/bias/Read/ReadVariableOp1lstm_707/lstm_cell_707/kernel/Read/ReadVariableOp;lstm_707/lstm_cell_707/recurrent_kernel/Read/ReadVariableOp/lstm_707/lstm_cell_707/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp+Adam/dense_235/kernel/m/Read/ReadVariableOp)Adam/dense_235/bias/m/Read/ReadVariableOp8Adam/lstm_705/lstm_cell_705/kernel/m/Read/ReadVariableOpBAdam/lstm_705/lstm_cell_705/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_705/lstm_cell_705/bias/m/Read/ReadVariableOp8Adam/lstm_706/lstm_cell_706/kernel/m/Read/ReadVariableOpBAdam/lstm_706/lstm_cell_706/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_706/lstm_cell_706/bias/m/Read/ReadVariableOp8Adam/lstm_707/lstm_cell_707/kernel/m/Read/ReadVariableOpBAdam/lstm_707/lstm_cell_707/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_707/lstm_cell_707/bias/m/Read/ReadVariableOp+Adam/dense_235/kernel/v/Read/ReadVariableOp)Adam/dense_235/bias/v/Read/ReadVariableOp8Adam/lstm_705/lstm_cell_705/kernel/v/Read/ReadVariableOpBAdam/lstm_705/lstm_cell_705/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_705/lstm_cell_705/bias/v/Read/ReadVariableOp8Adam/lstm_706/lstm_cell_706/kernel/v/Read/ReadVariableOpBAdam/lstm_706/lstm_cell_706/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_706/lstm_cell_706/bias/v/Read/ReadVariableOp8Adam/lstm_707/lstm_cell_707/kernel/v/Read/ReadVariableOpBAdam/lstm_707/lstm_cell_707/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_707/lstm_cell_707/bias/v/Read/ReadVariableOpConst*5
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
 __inference__traced_save_4421752
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_235/kerneldense_235/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_705/lstm_cell_705/kernel'lstm_705/lstm_cell_705/recurrent_kernellstm_705/lstm_cell_705/biaslstm_706/lstm_cell_706/kernel'lstm_706/lstm_cell_706/recurrent_kernellstm_706/lstm_cell_706/biaslstm_707/lstm_cell_707/kernel'lstm_707/lstm_cell_707/recurrent_kernellstm_707/lstm_cell_707/biastotalcountAdam/dense_235/kernel/mAdam/dense_235/bias/m$Adam/lstm_705/lstm_cell_705/kernel/m.Adam/lstm_705/lstm_cell_705/recurrent_kernel/m"Adam/lstm_705/lstm_cell_705/bias/m$Adam/lstm_706/lstm_cell_706/kernel/m.Adam/lstm_706/lstm_cell_706/recurrent_kernel/m"Adam/lstm_706/lstm_cell_706/bias/m$Adam/lstm_707/lstm_cell_707/kernel/m.Adam/lstm_707/lstm_cell_707/recurrent_kernel/m"Adam/lstm_707/lstm_cell_707/bias/mAdam/dense_235/kernel/vAdam/dense_235/bias/v$Adam/lstm_705/lstm_cell_705/kernel/v.Adam/lstm_705/lstm_cell_705/recurrent_kernel/v"Adam/lstm_705/lstm_cell_705/bias/v$Adam/lstm_706/lstm_cell_706/kernel/v.Adam/lstm_706/lstm_cell_706/recurrent_kernel/v"Adam/lstm_706/lstm_cell_706/bias/v$Adam/lstm_707/lstm_cell_707/kernel/v.Adam/lstm_707/lstm_cell_707/recurrent_kernel/v"Adam/lstm_707/lstm_cell_707/bias/v*4
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
#__inference__traced_restore_4421882??+
?
?
*__inference_lstm_706_layer_call_fn_4420108

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
E__inference_lstm_706_layer_call_and_return_conditional_losses_4418160s
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
E__inference_lstm_706_layer_call_and_return_conditional_losses_4420680

inputs?
,lstm_cell_706_matmul_readvariableop_resource:	d?A
.lstm_cell_706_matmul_1_readvariableop_resource:	2?<
-lstm_cell_706_biasadd_readvariableop_resource:	?
identity??$lstm_cell_706/BiasAdd/ReadVariableOp?#lstm_cell_706/MatMul/ReadVariableOp?%lstm_cell_706/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_706/MatMul/ReadVariableOpReadVariableOp,lstm_cell_706_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_706/MatMulMatMulstrided_slice_2:output:0+lstm_cell_706/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_706/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_706_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_706/MatMul_1MatMulzeros:output:0-lstm_cell_706/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_706/addAddV2lstm_cell_706/MatMul:product:0 lstm_cell_706/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_706/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_706_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_706/BiasAddBiasAddlstm_cell_706/add:z:0,lstm_cell_706/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_706/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_706/splitSplit&lstm_cell_706/split/split_dim:output:0lstm_cell_706/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_706/SigmoidSigmoidlstm_cell_706/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_706/Sigmoid_1Sigmoidlstm_cell_706/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_706/mulMullstm_cell_706/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_706/ReluRelulstm_cell_706/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_706/mul_1Mullstm_cell_706/Sigmoid:y:0 lstm_cell_706/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_706/add_1AddV2lstm_cell_706/mul:z:0lstm_cell_706/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_706/Sigmoid_2Sigmoidlstm_cell_706/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_706/Relu_1Relulstm_cell_706/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_706/mul_2Mullstm_cell_706/Sigmoid_2:y:0"lstm_cell_706/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_706_matmul_readvariableop_resource.lstm_cell_706_matmul_1_readvariableop_resource-lstm_cell_706_biasadd_readvariableop_resource*
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
while_body_4420596*
condR
while_cond_4420595*K
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
NoOpNoOp%^lstm_cell_706/BiasAdd/ReadVariableOp$^lstm_cell_706/MatMul/ReadVariableOp&^lstm_cell_706/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_706/BiasAdd/ReadVariableOp$lstm_cell_706/BiasAdd/ReadVariableOp2J
#lstm_cell_706/MatMul/ReadVariableOp#lstm_cell_706/MatMul/ReadVariableOp2N
%lstm_cell_706/MatMul_1/ReadVariableOp%lstm_cell_706/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
*sequential_235_lstm_706_while_cond_4416050L
Hsequential_235_lstm_706_while_sequential_235_lstm_706_while_loop_counterR
Nsequential_235_lstm_706_while_sequential_235_lstm_706_while_maximum_iterations-
)sequential_235_lstm_706_while_placeholder/
+sequential_235_lstm_706_while_placeholder_1/
+sequential_235_lstm_706_while_placeholder_2/
+sequential_235_lstm_706_while_placeholder_3N
Jsequential_235_lstm_706_while_less_sequential_235_lstm_706_strided_slice_1e
asequential_235_lstm_706_while_sequential_235_lstm_706_while_cond_4416050___redundant_placeholder0e
asequential_235_lstm_706_while_sequential_235_lstm_706_while_cond_4416050___redundant_placeholder1e
asequential_235_lstm_706_while_sequential_235_lstm_706_while_cond_4416050___redundant_placeholder2e
asequential_235_lstm_706_while_sequential_235_lstm_706_while_cond_4416050___redundant_placeholder3*
&sequential_235_lstm_706_while_identity
?
"sequential_235/lstm_706/while/LessLess)sequential_235_lstm_706_while_placeholderJsequential_235_lstm_706_while_less_sequential_235_lstm_706_strided_slice_1*
T0*
_output_shapes
: {
&sequential_235/lstm_706/while/IdentityIdentity&sequential_235/lstm_706/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_235_lstm_706_while_identity/sequential_235/lstm_706/while/Identity:output:0*(
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
while_cond_4416710
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4416710___redundant_placeholder05
1while_while_cond_4416710___redundant_placeholder15
1while_while_cond_4416710___redundant_placeholder25
1while_while_cond_4416710___redundant_placeholder3
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
while_cond_4419550
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4419550___redundant_placeholder05
1while_while_cond_4419550___redundant_placeholder15
1while_while_cond_4419550___redundant_placeholder25
1while_while_cond_4419550___redundant_placeholder3
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
E__inference_lstm_706_layer_call_and_return_conditional_losses_4416780

inputs(
lstm_cell_706_4416698:	d?(
lstm_cell_706_4416700:	2?$
lstm_cell_706_4416702:	?
identity??%lstm_cell_706/StatefulPartitionedCall?while;
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
%lstm_cell_706/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_706_4416698lstm_cell_706_4416700lstm_cell_706_4416702*
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
J__inference_lstm_cell_706_layer_call_and_return_conditional_losses_4416697n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_706_4416698lstm_cell_706_4416700lstm_cell_706_4416702*
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
while_body_4416711*
condR
while_cond_4416710*K
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
NoOpNoOp&^lstm_cell_706/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_706/StatefulPartitionedCall%lstm_cell_706/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?8
?
while_body_4418241
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_705_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_705_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_705_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_705_matmul_readvariableop_resource:	?G
4while_lstm_cell_705_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_705_biasadd_readvariableop_resource:	???*while/lstm_cell_705/BiasAdd/ReadVariableOp?)while/lstm_cell_705/MatMul/ReadVariableOp?+while/lstm_cell_705/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_705/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_705_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_705/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_705/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_705/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_705_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_705/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_705/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_705/addAddV2$while/lstm_cell_705/MatMul:product:0&while/lstm_cell_705/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_705/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_705_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_705/BiasAddBiasAddwhile/lstm_cell_705/add:z:02while/lstm_cell_705/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_705/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_705/splitSplit,while/lstm_cell_705/split/split_dim:output:0$while/lstm_cell_705/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_705/SigmoidSigmoid"while/lstm_cell_705/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_705/Sigmoid_1Sigmoid"while/lstm_cell_705/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_705/mulMul!while/lstm_cell_705/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_705/ReluRelu"while/lstm_cell_705/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_705/mul_1Mulwhile/lstm_cell_705/Sigmoid:y:0&while/lstm_cell_705/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_705/add_1AddV2while/lstm_cell_705/mul:z:0while/lstm_cell_705/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_705/Sigmoid_2Sigmoid"while/lstm_cell_705/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_705/Relu_1Reluwhile/lstm_cell_705/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_705/mul_2Mul!while/lstm_cell_705/Sigmoid_2:y:0(while/lstm_cell_705/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_705/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_705/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_705/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_705/BiasAdd/ReadVariableOp*^while/lstm_cell_705/MatMul/ReadVariableOp,^while/lstm_cell_705/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_705_biasadd_readvariableop_resource5while_lstm_cell_705_biasadd_readvariableop_resource_0"n
4while_lstm_cell_705_matmul_1_readvariableop_resource6while_lstm_cell_705_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_705_matmul_readvariableop_resource4while_lstm_cell_705_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_705/BiasAdd/ReadVariableOp*while/lstm_cell_705/BiasAdd/ReadVariableOp2V
)while/lstm_cell_705/MatMul/ReadVariableOp)while/lstm_cell_705/MatMul/ReadVariableOp2Z
+while/lstm_cell_705/MatMul_1/ReadVariableOp+while/lstm_cell_705/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
?W
?
 __inference__traced_save_4421752
file_prefix/
+savev2_dense_235_kernel_read_readvariableop-
)savev2_dense_235_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_705_lstm_cell_705_kernel_read_readvariableopF
Bsavev2_lstm_705_lstm_cell_705_recurrent_kernel_read_readvariableop:
6savev2_lstm_705_lstm_cell_705_bias_read_readvariableop<
8savev2_lstm_706_lstm_cell_706_kernel_read_readvariableopF
Bsavev2_lstm_706_lstm_cell_706_recurrent_kernel_read_readvariableop:
6savev2_lstm_706_lstm_cell_706_bias_read_readvariableop<
8savev2_lstm_707_lstm_cell_707_kernel_read_readvariableopF
Bsavev2_lstm_707_lstm_cell_707_recurrent_kernel_read_readvariableop:
6savev2_lstm_707_lstm_cell_707_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop6
2savev2_adam_dense_235_kernel_m_read_readvariableop4
0savev2_adam_dense_235_bias_m_read_readvariableopC
?savev2_adam_lstm_705_lstm_cell_705_kernel_m_read_readvariableopM
Isavev2_adam_lstm_705_lstm_cell_705_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_705_lstm_cell_705_bias_m_read_readvariableopC
?savev2_adam_lstm_706_lstm_cell_706_kernel_m_read_readvariableopM
Isavev2_adam_lstm_706_lstm_cell_706_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_706_lstm_cell_706_bias_m_read_readvariableopC
?savev2_adam_lstm_707_lstm_cell_707_kernel_m_read_readvariableopM
Isavev2_adam_lstm_707_lstm_cell_707_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_707_lstm_cell_707_bias_m_read_readvariableop6
2savev2_adam_dense_235_kernel_v_read_readvariableop4
0savev2_adam_dense_235_bias_v_read_readvariableopC
?savev2_adam_lstm_705_lstm_cell_705_kernel_v_read_readvariableopM
Isavev2_adam_lstm_705_lstm_cell_705_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_705_lstm_cell_705_bias_v_read_readvariableopC
?savev2_adam_lstm_706_lstm_cell_706_kernel_v_read_readvariableopM
Isavev2_adam_lstm_706_lstm_cell_706_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_706_lstm_cell_706_bias_v_read_readvariableopC
?savev2_adam_lstm_707_lstm_cell_707_kernel_v_read_readvariableopM
Isavev2_adam_lstm_707_lstm_cell_707_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_707_lstm_cell_707_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_dense_235_kernel_read_readvariableop)savev2_dense_235_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_705_lstm_cell_705_kernel_read_readvariableopBsavev2_lstm_705_lstm_cell_705_recurrent_kernel_read_readvariableop6savev2_lstm_705_lstm_cell_705_bias_read_readvariableop8savev2_lstm_706_lstm_cell_706_kernel_read_readvariableopBsavev2_lstm_706_lstm_cell_706_recurrent_kernel_read_readvariableop6savev2_lstm_706_lstm_cell_706_bias_read_readvariableop8savev2_lstm_707_lstm_cell_707_kernel_read_readvariableopBsavev2_lstm_707_lstm_cell_707_recurrent_kernel_read_readvariableop6savev2_lstm_707_lstm_cell_707_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop2savev2_adam_dense_235_kernel_m_read_readvariableop0savev2_adam_dense_235_bias_m_read_readvariableop?savev2_adam_lstm_705_lstm_cell_705_kernel_m_read_readvariableopIsavev2_adam_lstm_705_lstm_cell_705_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_705_lstm_cell_705_bias_m_read_readvariableop?savev2_adam_lstm_706_lstm_cell_706_kernel_m_read_readvariableopIsavev2_adam_lstm_706_lstm_cell_706_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_706_lstm_cell_706_bias_m_read_readvariableop?savev2_adam_lstm_707_lstm_cell_707_kernel_m_read_readvariableopIsavev2_adam_lstm_707_lstm_cell_707_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_707_lstm_cell_707_bias_m_read_readvariableop2savev2_adam_dense_235_kernel_v_read_readvariableop0savev2_adam_dense_235_bias_v_read_readvariableop?savev2_adam_lstm_705_lstm_cell_705_kernel_v_read_readvariableopIsavev2_adam_lstm_705_lstm_cell_705_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_705_lstm_cell_705_bias_v_read_readvariableop?savev2_adam_lstm_706_lstm_cell_706_kernel_v_read_readvariableopIsavev2_adam_lstm_706_lstm_cell_706_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_706_lstm_cell_706_bias_v_read_readvariableop?savev2_adam_lstm_707_lstm_cell_707_kernel_v_read_readvariableopIsavev2_adam_lstm_707_lstm_cell_707_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_707_lstm_cell_707_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
?
*sequential_235_lstm_707_while_cond_4416189L
Hsequential_235_lstm_707_while_sequential_235_lstm_707_while_loop_counterR
Nsequential_235_lstm_707_while_sequential_235_lstm_707_while_maximum_iterations-
)sequential_235_lstm_707_while_placeholder/
+sequential_235_lstm_707_while_placeholder_1/
+sequential_235_lstm_707_while_placeholder_2/
+sequential_235_lstm_707_while_placeholder_3N
Jsequential_235_lstm_707_while_less_sequential_235_lstm_707_strided_slice_1e
asequential_235_lstm_707_while_sequential_235_lstm_707_while_cond_4416189___redundant_placeholder0e
asequential_235_lstm_707_while_sequential_235_lstm_707_while_cond_4416189___redundant_placeholder1e
asequential_235_lstm_707_while_sequential_235_lstm_707_while_cond_4416189___redundant_placeholder2e
asequential_235_lstm_707_while_sequential_235_lstm_707_while_cond_4416189___redundant_placeholder3*
&sequential_235_lstm_707_while_identity
?
"sequential_235/lstm_707/while/LessLess)sequential_235_lstm_707_while_placeholderJsequential_235_lstm_707_while_less_sequential_235_lstm_707_strided_slice_1*
T0*
_output_shapes
: {
&sequential_235/lstm_707/while/IdentityIdentity&sequential_235/lstm_707/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_235_lstm_707_while_identity/sequential_235/lstm_707/while/Identity:output:0*(
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
lstm_706_while_cond_4419218.
*lstm_706_while_lstm_706_while_loop_counter4
0lstm_706_while_lstm_706_while_maximum_iterations
lstm_706_while_placeholder 
lstm_706_while_placeholder_1 
lstm_706_while_placeholder_2 
lstm_706_while_placeholder_30
,lstm_706_while_less_lstm_706_strided_slice_1G
Clstm_706_while_lstm_706_while_cond_4419218___redundant_placeholder0G
Clstm_706_while_lstm_706_while_cond_4419218___redundant_placeholder1G
Clstm_706_while_lstm_706_while_cond_4419218___redundant_placeholder2G
Clstm_706_while_lstm_706_while_cond_4419218___redundant_placeholder3
lstm_706_while_identity
?
lstm_706/while/LessLesslstm_706_while_placeholder,lstm_706_while_less_lstm_706_strided_slice_1*
T0*
_output_shapes
: ]
lstm_706/while/IdentityIdentitylstm_706/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_706_while_identity lstm_706/while/Identity:output:0*(
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
E__inference_lstm_707_layer_call_and_return_conditional_losses_4417130

inputs'
lstm_cell_707_4417048:2('
lstm_cell_707_4417050:
(#
lstm_cell_707_4417052:(
identity??%lstm_cell_707/StatefulPartitionedCall?while;
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
%lstm_cell_707/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_707_4417048lstm_cell_707_4417050lstm_cell_707_4417052*
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
J__inference_lstm_cell_707_layer_call_and_return_conditional_losses_4417047n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_707_4417048lstm_cell_707_4417050lstm_cell_707_4417052*
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
while_body_4417061*
condR
while_cond_4417060*K
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
NoOpNoOp&^lstm_cell_707/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_707/StatefulPartitionedCall%lstm_cell_707/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?
?
while_cond_4420452
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4420452___redundant_placeholder05
1while_while_cond_4420452___redundant_placeholder15
1while_while_cond_4420452___redundant_placeholder25
1while_while_cond_4420452___redundant_placeholder3
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
??
?
K__inference_sequential_235_layer_call_and_return_conditional_losses_4419448

inputsH
5lstm_705_lstm_cell_705_matmul_readvariableop_resource:	?J
7lstm_705_lstm_cell_705_matmul_1_readvariableop_resource:	d?E
6lstm_705_lstm_cell_705_biasadd_readvariableop_resource:	?H
5lstm_706_lstm_cell_706_matmul_readvariableop_resource:	d?J
7lstm_706_lstm_cell_706_matmul_1_readvariableop_resource:	2?E
6lstm_706_lstm_cell_706_biasadd_readvariableop_resource:	?G
5lstm_707_lstm_cell_707_matmul_readvariableop_resource:2(I
7lstm_707_lstm_cell_707_matmul_1_readvariableop_resource:
(D
6lstm_707_lstm_cell_707_biasadd_readvariableop_resource:(:
(dense_235_matmul_readvariableop_resource:
7
)dense_235_biasadd_readvariableop_resource:
identity?? dense_235/BiasAdd/ReadVariableOp?dense_235/MatMul/ReadVariableOp?-lstm_705/lstm_cell_705/BiasAdd/ReadVariableOp?,lstm_705/lstm_cell_705/MatMul/ReadVariableOp?.lstm_705/lstm_cell_705/MatMul_1/ReadVariableOp?lstm_705/while?-lstm_706/lstm_cell_706/BiasAdd/ReadVariableOp?,lstm_706/lstm_cell_706/MatMul/ReadVariableOp?.lstm_706/lstm_cell_706/MatMul_1/ReadVariableOp?lstm_706/while?-lstm_707/lstm_cell_707/BiasAdd/ReadVariableOp?,lstm_707/lstm_cell_707/MatMul/ReadVariableOp?.lstm_707/lstm_cell_707/MatMul_1/ReadVariableOp?lstm_707/whileD
lstm_705/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_705/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_705/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_705/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_705/strided_sliceStridedSlicelstm_705/Shape:output:0%lstm_705/strided_slice/stack:output:0'lstm_705/strided_slice/stack_1:output:0'lstm_705/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_705/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_705/zeros/packedPacklstm_705/strided_slice:output:0 lstm_705/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_705/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_705/zerosFilllstm_705/zeros/packed:output:0lstm_705/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_705/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_705/zeros_1/packedPacklstm_705/strided_slice:output:0"lstm_705/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_705/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_705/zeros_1Fill lstm_705/zeros_1/packed:output:0lstm_705/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_705/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_705/transpose	Transposeinputs lstm_705/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_705/Shape_1Shapelstm_705/transpose:y:0*
T0*
_output_shapes
:h
lstm_705/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_705/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_705/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_705/strided_slice_1StridedSlicelstm_705/Shape_1:output:0'lstm_705/strided_slice_1/stack:output:0)lstm_705/strided_slice_1/stack_1:output:0)lstm_705/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_705/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_705/TensorArrayV2TensorListReserve-lstm_705/TensorArrayV2/element_shape:output:0!lstm_705/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_705/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_705/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_705/transpose:y:0Glstm_705/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_705/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_705/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_705/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_705/strided_slice_2StridedSlicelstm_705/transpose:y:0'lstm_705/strided_slice_2/stack:output:0)lstm_705/strided_slice_2/stack_1:output:0)lstm_705/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_705/lstm_cell_705/MatMul/ReadVariableOpReadVariableOp5lstm_705_lstm_cell_705_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_705/lstm_cell_705/MatMulMatMul!lstm_705/strided_slice_2:output:04lstm_705/lstm_cell_705/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_705/lstm_cell_705/MatMul_1/ReadVariableOpReadVariableOp7lstm_705_lstm_cell_705_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_705/lstm_cell_705/MatMul_1MatMullstm_705/zeros:output:06lstm_705/lstm_cell_705/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_705/lstm_cell_705/addAddV2'lstm_705/lstm_cell_705/MatMul:product:0)lstm_705/lstm_cell_705/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_705/lstm_cell_705/BiasAdd/ReadVariableOpReadVariableOp6lstm_705_lstm_cell_705_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_705/lstm_cell_705/BiasAddBiasAddlstm_705/lstm_cell_705/add:z:05lstm_705/lstm_cell_705/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_705/lstm_cell_705/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_705/lstm_cell_705/splitSplit/lstm_705/lstm_cell_705/split/split_dim:output:0'lstm_705/lstm_cell_705/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_705/lstm_cell_705/SigmoidSigmoid%lstm_705/lstm_cell_705/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_705/lstm_cell_705/Sigmoid_1Sigmoid%lstm_705/lstm_cell_705/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_705/lstm_cell_705/mulMul$lstm_705/lstm_cell_705/Sigmoid_1:y:0lstm_705/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_705/lstm_cell_705/ReluRelu%lstm_705/lstm_cell_705/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_705/lstm_cell_705/mul_1Mul"lstm_705/lstm_cell_705/Sigmoid:y:0)lstm_705/lstm_cell_705/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_705/lstm_cell_705/add_1AddV2lstm_705/lstm_cell_705/mul:z:0 lstm_705/lstm_cell_705/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_705/lstm_cell_705/Sigmoid_2Sigmoid%lstm_705/lstm_cell_705/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_705/lstm_cell_705/Relu_1Relu lstm_705/lstm_cell_705/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_705/lstm_cell_705/mul_2Mul$lstm_705/lstm_cell_705/Sigmoid_2:y:0+lstm_705/lstm_cell_705/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_705/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_705/TensorArrayV2_1TensorListReserve/lstm_705/TensorArrayV2_1/element_shape:output:0!lstm_705/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_705/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_705/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_705/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_705/whileWhile$lstm_705/while/loop_counter:output:0*lstm_705/while/maximum_iterations:output:0lstm_705/time:output:0!lstm_705/TensorArrayV2_1:handle:0lstm_705/zeros:output:0lstm_705/zeros_1:output:0!lstm_705/strided_slice_1:output:0@lstm_705/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_705_lstm_cell_705_matmul_readvariableop_resource7lstm_705_lstm_cell_705_matmul_1_readvariableop_resource6lstm_705_lstm_cell_705_biasadd_readvariableop_resource*
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
lstm_705_while_body_4419080*'
condR
lstm_705_while_cond_4419079*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_705/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_705/TensorArrayV2Stack/TensorListStackTensorListStacklstm_705/while:output:3Blstm_705/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_705/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_705/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_705/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_705/strided_slice_3StridedSlice4lstm_705/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_705/strided_slice_3/stack:output:0)lstm_705/strided_slice_3/stack_1:output:0)lstm_705/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_705/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_705/transpose_1	Transpose4lstm_705/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_705/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_705/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_706/ShapeShapelstm_705/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_706/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_706/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_706/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_706/strided_sliceStridedSlicelstm_706/Shape:output:0%lstm_706/strided_slice/stack:output:0'lstm_706/strided_slice/stack_1:output:0'lstm_706/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_706/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_706/zeros/packedPacklstm_706/strided_slice:output:0 lstm_706/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_706/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_706/zerosFilllstm_706/zeros/packed:output:0lstm_706/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_706/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_706/zeros_1/packedPacklstm_706/strided_slice:output:0"lstm_706/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_706/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_706/zeros_1Fill lstm_706/zeros_1/packed:output:0lstm_706/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_706/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_706/transpose	Transposelstm_705/transpose_1:y:0 lstm_706/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_706/Shape_1Shapelstm_706/transpose:y:0*
T0*
_output_shapes
:h
lstm_706/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_706/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_706/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_706/strided_slice_1StridedSlicelstm_706/Shape_1:output:0'lstm_706/strided_slice_1/stack:output:0)lstm_706/strided_slice_1/stack_1:output:0)lstm_706/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_706/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_706/TensorArrayV2TensorListReserve-lstm_706/TensorArrayV2/element_shape:output:0!lstm_706/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_706/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_706/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_706/transpose:y:0Glstm_706/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_706/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_706/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_706/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_706/strided_slice_2StridedSlicelstm_706/transpose:y:0'lstm_706/strided_slice_2/stack:output:0)lstm_706/strided_slice_2/stack_1:output:0)lstm_706/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_706/lstm_cell_706/MatMul/ReadVariableOpReadVariableOp5lstm_706_lstm_cell_706_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_706/lstm_cell_706/MatMulMatMul!lstm_706/strided_slice_2:output:04lstm_706/lstm_cell_706/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_706/lstm_cell_706/MatMul_1/ReadVariableOpReadVariableOp7lstm_706_lstm_cell_706_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_706/lstm_cell_706/MatMul_1MatMullstm_706/zeros:output:06lstm_706/lstm_cell_706/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_706/lstm_cell_706/addAddV2'lstm_706/lstm_cell_706/MatMul:product:0)lstm_706/lstm_cell_706/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_706/lstm_cell_706/BiasAdd/ReadVariableOpReadVariableOp6lstm_706_lstm_cell_706_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_706/lstm_cell_706/BiasAddBiasAddlstm_706/lstm_cell_706/add:z:05lstm_706/lstm_cell_706/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_706/lstm_cell_706/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_706/lstm_cell_706/splitSplit/lstm_706/lstm_cell_706/split/split_dim:output:0'lstm_706/lstm_cell_706/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_706/lstm_cell_706/SigmoidSigmoid%lstm_706/lstm_cell_706/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_706/lstm_cell_706/Sigmoid_1Sigmoid%lstm_706/lstm_cell_706/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_706/lstm_cell_706/mulMul$lstm_706/lstm_cell_706/Sigmoid_1:y:0lstm_706/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_706/lstm_cell_706/ReluRelu%lstm_706/lstm_cell_706/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_706/lstm_cell_706/mul_1Mul"lstm_706/lstm_cell_706/Sigmoid:y:0)lstm_706/lstm_cell_706/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_706/lstm_cell_706/add_1AddV2lstm_706/lstm_cell_706/mul:z:0 lstm_706/lstm_cell_706/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_706/lstm_cell_706/Sigmoid_2Sigmoid%lstm_706/lstm_cell_706/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_706/lstm_cell_706/Relu_1Relu lstm_706/lstm_cell_706/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_706/lstm_cell_706/mul_2Mul$lstm_706/lstm_cell_706/Sigmoid_2:y:0+lstm_706/lstm_cell_706/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_706/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_706/TensorArrayV2_1TensorListReserve/lstm_706/TensorArrayV2_1/element_shape:output:0!lstm_706/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_706/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_706/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_706/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_706/whileWhile$lstm_706/while/loop_counter:output:0*lstm_706/while/maximum_iterations:output:0lstm_706/time:output:0!lstm_706/TensorArrayV2_1:handle:0lstm_706/zeros:output:0lstm_706/zeros_1:output:0!lstm_706/strided_slice_1:output:0@lstm_706/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_706_lstm_cell_706_matmul_readvariableop_resource7lstm_706_lstm_cell_706_matmul_1_readvariableop_resource6lstm_706_lstm_cell_706_biasadd_readvariableop_resource*
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
lstm_706_while_body_4419219*'
condR
lstm_706_while_cond_4419218*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_706/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_706/TensorArrayV2Stack/TensorListStackTensorListStacklstm_706/while:output:3Blstm_706/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_706/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_706/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_706/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_706/strided_slice_3StridedSlice4lstm_706/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_706/strided_slice_3/stack:output:0)lstm_706/strided_slice_3/stack_1:output:0)lstm_706/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_706/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_706/transpose_1	Transpose4lstm_706/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_706/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_706/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_707/ShapeShapelstm_706/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_707/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_707/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_707/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_707/strided_sliceStridedSlicelstm_707/Shape:output:0%lstm_707/strided_slice/stack:output:0'lstm_707/strided_slice/stack_1:output:0'lstm_707/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_707/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_707/zeros/packedPacklstm_707/strided_slice:output:0 lstm_707/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_707/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_707/zerosFilllstm_707/zeros/packed:output:0lstm_707/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_707/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_707/zeros_1/packedPacklstm_707/strided_slice:output:0"lstm_707/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_707/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_707/zeros_1Fill lstm_707/zeros_1/packed:output:0lstm_707/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_707/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_707/transpose	Transposelstm_706/transpose_1:y:0 lstm_707/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_707/Shape_1Shapelstm_707/transpose:y:0*
T0*
_output_shapes
:h
lstm_707/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_707/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_707/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_707/strided_slice_1StridedSlicelstm_707/Shape_1:output:0'lstm_707/strided_slice_1/stack:output:0)lstm_707/strided_slice_1/stack_1:output:0)lstm_707/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_707/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_707/TensorArrayV2TensorListReserve-lstm_707/TensorArrayV2/element_shape:output:0!lstm_707/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_707/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_707/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_707/transpose:y:0Glstm_707/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_707/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_707/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_707/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_707/strided_slice_2StridedSlicelstm_707/transpose:y:0'lstm_707/strided_slice_2/stack:output:0)lstm_707/strided_slice_2/stack_1:output:0)lstm_707/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_707/lstm_cell_707/MatMul/ReadVariableOpReadVariableOp5lstm_707_lstm_cell_707_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_707/lstm_cell_707/MatMulMatMul!lstm_707/strided_slice_2:output:04lstm_707/lstm_cell_707/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_707/lstm_cell_707/MatMul_1/ReadVariableOpReadVariableOp7lstm_707_lstm_cell_707_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_707/lstm_cell_707/MatMul_1MatMullstm_707/zeros:output:06lstm_707/lstm_cell_707/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_707/lstm_cell_707/addAddV2'lstm_707/lstm_cell_707/MatMul:product:0)lstm_707/lstm_cell_707/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_707/lstm_cell_707/BiasAdd/ReadVariableOpReadVariableOp6lstm_707_lstm_cell_707_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_707/lstm_cell_707/BiasAddBiasAddlstm_707/lstm_cell_707/add:z:05lstm_707/lstm_cell_707/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_707/lstm_cell_707/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_707/lstm_cell_707/splitSplit/lstm_707/lstm_cell_707/split/split_dim:output:0'lstm_707/lstm_cell_707/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_707/lstm_cell_707/SigmoidSigmoid%lstm_707/lstm_cell_707/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_707/lstm_cell_707/Sigmoid_1Sigmoid%lstm_707/lstm_cell_707/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_707/lstm_cell_707/mulMul$lstm_707/lstm_cell_707/Sigmoid_1:y:0lstm_707/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_707/lstm_cell_707/ReluRelu%lstm_707/lstm_cell_707/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_707/lstm_cell_707/mul_1Mul"lstm_707/lstm_cell_707/Sigmoid:y:0)lstm_707/lstm_cell_707/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_707/lstm_cell_707/add_1AddV2lstm_707/lstm_cell_707/mul:z:0 lstm_707/lstm_cell_707/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_707/lstm_cell_707/Sigmoid_2Sigmoid%lstm_707/lstm_cell_707/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_707/lstm_cell_707/Relu_1Relu lstm_707/lstm_cell_707/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_707/lstm_cell_707/mul_2Mul$lstm_707/lstm_cell_707/Sigmoid_2:y:0+lstm_707/lstm_cell_707/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_707/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_707/TensorArrayV2_1TensorListReserve/lstm_707/TensorArrayV2_1/element_shape:output:0!lstm_707/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_707/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_707/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_707/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_707/whileWhile$lstm_707/while/loop_counter:output:0*lstm_707/while/maximum_iterations:output:0lstm_707/time:output:0!lstm_707/TensorArrayV2_1:handle:0lstm_707/zeros:output:0lstm_707/zeros_1:output:0!lstm_707/strided_slice_1:output:0@lstm_707/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_707_lstm_cell_707_matmul_readvariableop_resource7lstm_707_lstm_cell_707_matmul_1_readvariableop_resource6lstm_707_lstm_cell_707_biasadd_readvariableop_resource*
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
lstm_707_while_body_4419358*'
condR
lstm_707_while_cond_4419357*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_707/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_707/TensorArrayV2Stack/TensorListStackTensorListStacklstm_707/while:output:3Blstm_707/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_707/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_707/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_707/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_707/strided_slice_3StridedSlice4lstm_707/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_707/strided_slice_3/stack:output:0)lstm_707/strided_slice_3/stack_1:output:0)lstm_707/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_707/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_707/transpose_1	Transpose4lstm_707/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_707/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_707/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_235/MatMul/ReadVariableOpReadVariableOp(dense_235_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_235/MatMulMatMul!lstm_707/strided_slice_3:output:0'dense_235/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_235/BiasAdd/ReadVariableOpReadVariableOp)dense_235_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_235/BiasAddBiasAdddense_235/MatMul:product:0(dense_235/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_235/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_235/BiasAdd/ReadVariableOp ^dense_235/MatMul/ReadVariableOp.^lstm_705/lstm_cell_705/BiasAdd/ReadVariableOp-^lstm_705/lstm_cell_705/MatMul/ReadVariableOp/^lstm_705/lstm_cell_705/MatMul_1/ReadVariableOp^lstm_705/while.^lstm_706/lstm_cell_706/BiasAdd/ReadVariableOp-^lstm_706/lstm_cell_706/MatMul/ReadVariableOp/^lstm_706/lstm_cell_706/MatMul_1/ReadVariableOp^lstm_706/while.^lstm_707/lstm_cell_707/BiasAdd/ReadVariableOp-^lstm_707/lstm_cell_707/MatMul/ReadVariableOp/^lstm_707/lstm_cell_707/MatMul_1/ReadVariableOp^lstm_707/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_235/BiasAdd/ReadVariableOp dense_235/BiasAdd/ReadVariableOp2B
dense_235/MatMul/ReadVariableOpdense_235/MatMul/ReadVariableOp2^
-lstm_705/lstm_cell_705/BiasAdd/ReadVariableOp-lstm_705/lstm_cell_705/BiasAdd/ReadVariableOp2\
,lstm_705/lstm_cell_705/MatMul/ReadVariableOp,lstm_705/lstm_cell_705/MatMul/ReadVariableOp2`
.lstm_705/lstm_cell_705/MatMul_1/ReadVariableOp.lstm_705/lstm_cell_705/MatMul_1/ReadVariableOp2 
lstm_705/whilelstm_705/while2^
-lstm_706/lstm_cell_706/BiasAdd/ReadVariableOp-lstm_706/lstm_cell_706/BiasAdd/ReadVariableOp2\
,lstm_706/lstm_cell_706/MatMul/ReadVariableOp,lstm_706/lstm_cell_706/MatMul/ReadVariableOp2`
.lstm_706/lstm_cell_706/MatMul_1/ReadVariableOp.lstm_706/lstm_cell_706/MatMul_1/ReadVariableOp2 
lstm_706/whilelstm_706/while2^
-lstm_707/lstm_cell_707/BiasAdd/ReadVariableOp-lstm_707/lstm_cell_707/BiasAdd/ReadVariableOp2\
,lstm_707/lstm_cell_707/MatMul/ReadVariableOp,lstm_707/lstm_cell_707/MatMul/ReadVariableOp2`
.lstm_707/lstm_cell_707/MatMul_1/ReadVariableOp.lstm_707/lstm_cell_707/MatMul_1/ReadVariableOp2 
lstm_707/whilelstm_707/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_4418075
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4418075___redundant_placeholder05
1while_while_cond_4418075___redundant_placeholder15
1while_while_cond_4418075___redundant_placeholder25
1while_while_cond_4418075___redundant_placeholder3
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
while_body_4419980
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_705_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_705_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_705_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_705_matmul_readvariableop_resource:	?G
4while_lstm_cell_705_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_705_biasadd_readvariableop_resource:	???*while/lstm_cell_705/BiasAdd/ReadVariableOp?)while/lstm_cell_705/MatMul/ReadVariableOp?+while/lstm_cell_705/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_705/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_705_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_705/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_705/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_705/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_705_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_705/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_705/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_705/addAddV2$while/lstm_cell_705/MatMul:product:0&while/lstm_cell_705/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_705/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_705_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_705/BiasAddBiasAddwhile/lstm_cell_705/add:z:02while/lstm_cell_705/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_705/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_705/splitSplit,while/lstm_cell_705/split/split_dim:output:0$while/lstm_cell_705/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_705/SigmoidSigmoid"while/lstm_cell_705/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_705/Sigmoid_1Sigmoid"while/lstm_cell_705/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_705/mulMul!while/lstm_cell_705/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_705/ReluRelu"while/lstm_cell_705/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_705/mul_1Mulwhile/lstm_cell_705/Sigmoid:y:0&while/lstm_cell_705/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_705/add_1AddV2while/lstm_cell_705/mul:z:0while/lstm_cell_705/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_705/Sigmoid_2Sigmoid"while/lstm_cell_705/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_705/Relu_1Reluwhile/lstm_cell_705/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_705/mul_2Mul!while/lstm_cell_705/Sigmoid_2:y:0(while/lstm_cell_705/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_705/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_705/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_705/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_705/BiasAdd/ReadVariableOp*^while/lstm_cell_705/MatMul/ReadVariableOp,^while/lstm_cell_705/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_705_biasadd_readvariableop_resource5while_lstm_cell_705_biasadd_readvariableop_resource_0"n
4while_lstm_cell_705_matmul_1_readvariableop_resource6while_lstm_cell_705_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_705_matmul_readvariableop_resource4while_lstm_cell_705_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_705/BiasAdd/ReadVariableOp*while/lstm_cell_705/BiasAdd/ReadVariableOp2V
)while/lstm_cell_705/MatMul/ReadVariableOp)while/lstm_cell_705/MatMul/ReadVariableOp2Z
+while/lstm_cell_705/MatMul_1/ReadVariableOp+while/lstm_cell_705/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_706_layer_call_fn_4420097

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
E__inference_lstm_706_layer_call_and_return_conditional_losses_4417629s
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
while_cond_4420309
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4420309___redundant_placeholder05
1while_while_cond_4420309___redundant_placeholder15
1while_while_cond_4420309___redundant_placeholder25
1while_while_cond_4420309___redundant_placeholder3
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
E__inference_lstm_706_layer_call_and_return_conditional_losses_4420537

inputs?
,lstm_cell_706_matmul_readvariableop_resource:	d?A
.lstm_cell_706_matmul_1_readvariableop_resource:	2?<
-lstm_cell_706_biasadd_readvariableop_resource:	?
identity??$lstm_cell_706/BiasAdd/ReadVariableOp?#lstm_cell_706/MatMul/ReadVariableOp?%lstm_cell_706/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_706/MatMul/ReadVariableOpReadVariableOp,lstm_cell_706_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_706/MatMulMatMulstrided_slice_2:output:0+lstm_cell_706/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_706/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_706_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_706/MatMul_1MatMulzeros:output:0-lstm_cell_706/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_706/addAddV2lstm_cell_706/MatMul:product:0 lstm_cell_706/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_706/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_706_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_706/BiasAddBiasAddlstm_cell_706/add:z:0,lstm_cell_706/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_706/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_706/splitSplit&lstm_cell_706/split/split_dim:output:0lstm_cell_706/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_706/SigmoidSigmoidlstm_cell_706/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_706/Sigmoid_1Sigmoidlstm_cell_706/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_706/mulMullstm_cell_706/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_706/ReluRelulstm_cell_706/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_706/mul_1Mullstm_cell_706/Sigmoid:y:0 lstm_cell_706/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_706/add_1AddV2lstm_cell_706/mul:z:0lstm_cell_706/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_706/Sigmoid_2Sigmoidlstm_cell_706/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_706/Relu_1Relulstm_cell_706/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_706/mul_2Mullstm_cell_706/Sigmoid_2:y:0"lstm_cell_706/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_706_matmul_readvariableop_resource.lstm_cell_706_matmul_1_readvariableop_resource-lstm_cell_706_biasadd_readvariableop_resource*
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
while_body_4420453*
condR
while_cond_4420452*K
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
NoOpNoOp%^lstm_cell_706/BiasAdd/ReadVariableOp$^lstm_cell_706/MatMul/ReadVariableOp&^lstm_cell_706/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_706/BiasAdd/ReadVariableOp$lstm_cell_706/BiasAdd/ReadVariableOp2J
#lstm_cell_706/MatMul/ReadVariableOp#lstm_cell_706/MatMul/ReadVariableOp2N
%lstm_cell_706/MatMul_1/ReadVariableOp%lstm_cell_706/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?8
?
while_body_4420926
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_707_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_707_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_707_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_707_matmul_readvariableop_resource:2(F
4while_lstm_cell_707_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_707_biasadd_readvariableop_resource:(??*while/lstm_cell_707/BiasAdd/ReadVariableOp?)while/lstm_cell_707/MatMul/ReadVariableOp?+while/lstm_cell_707/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_707/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_707_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_707/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_707/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_707/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_707_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_707/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_707/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_707/addAddV2$while/lstm_cell_707/MatMul:product:0&while/lstm_cell_707/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_707/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_707_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_707/BiasAddBiasAddwhile/lstm_cell_707/add:z:02while/lstm_cell_707/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_707/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_707/splitSplit,while/lstm_cell_707/split/split_dim:output:0$while/lstm_cell_707/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_707/SigmoidSigmoid"while/lstm_cell_707/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_707/Sigmoid_1Sigmoid"while/lstm_cell_707/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_707/mulMul!while/lstm_cell_707/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_707/ReluRelu"while/lstm_cell_707/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_707/mul_1Mulwhile/lstm_cell_707/Sigmoid:y:0&while/lstm_cell_707/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_707/add_1AddV2while/lstm_cell_707/mul:z:0while/lstm_cell_707/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_707/Sigmoid_2Sigmoid"while/lstm_cell_707/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_707/Relu_1Reluwhile/lstm_cell_707/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_707/mul_2Mul!while/lstm_cell_707/Sigmoid_2:y:0(while/lstm_cell_707/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_707/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_707/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_707/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_707/BiasAdd/ReadVariableOp*^while/lstm_cell_707/MatMul/ReadVariableOp,^while/lstm_cell_707/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_707_biasadd_readvariableop_resource5while_lstm_cell_707_biasadd_readvariableop_resource_0"n
4while_lstm_cell_707_matmul_1_readvariableop_resource6while_lstm_cell_707_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_707_matmul_readvariableop_resource4while_lstm_cell_707_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_707/BiasAdd/ReadVariableOp*while/lstm_cell_707/BiasAdd/ReadVariableOp2V
)while/lstm_cell_707/MatMul/ReadVariableOp)while/lstm_cell_707/MatMul/ReadVariableOp2Z
+while/lstm_cell_707/MatMul_1/ReadVariableOp+while/lstm_cell_707/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
0__inference_sequential_235_layer_call_fn_4418594

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
K__inference_sequential_235_layer_call_and_return_conditional_losses_4418393o
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
while_cond_4417251
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4417251___redundant_placeholder05
1while_while_cond_4417251___redundant_placeholder15
1while_while_cond_4417251___redundant_placeholder25
1while_while_cond_4417251___redundant_placeholder3
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
while_cond_4419979
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4419979___redundant_placeholder05
1while_while_cond_4419979___redundant_placeholder15
1while_while_cond_4419979___redundant_placeholder25
1while_while_cond_4419979___redundant_placeholder3
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
?
?
+__inference_dense_235_layer_call_fn_4421305

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
F__inference_dense_235_layer_call_and_return_conditional_losses_4417797o
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
?
while_body_4421212
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_707_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_707_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_707_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_707_matmul_readvariableop_resource:2(F
4while_lstm_cell_707_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_707_biasadd_readvariableop_resource:(??*while/lstm_cell_707/BiasAdd/ReadVariableOp?)while/lstm_cell_707/MatMul/ReadVariableOp?+while/lstm_cell_707/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_707/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_707_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_707/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_707/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_707/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_707_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_707/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_707/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_707/addAddV2$while/lstm_cell_707/MatMul:product:0&while/lstm_cell_707/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_707/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_707_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_707/BiasAddBiasAddwhile/lstm_cell_707/add:z:02while/lstm_cell_707/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_707/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_707/splitSplit,while/lstm_cell_707/split/split_dim:output:0$while/lstm_cell_707/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_707/SigmoidSigmoid"while/lstm_cell_707/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_707/Sigmoid_1Sigmoid"while/lstm_cell_707/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_707/mulMul!while/lstm_cell_707/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_707/ReluRelu"while/lstm_cell_707/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_707/mul_1Mulwhile/lstm_cell_707/Sigmoid:y:0&while/lstm_cell_707/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_707/add_1AddV2while/lstm_cell_707/mul:z:0while/lstm_cell_707/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_707/Sigmoid_2Sigmoid"while/lstm_cell_707/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_707/Relu_1Reluwhile/lstm_cell_707/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_707/mul_2Mul!while/lstm_cell_707/Sigmoid_2:y:0(while/lstm_cell_707/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_707/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_707/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_707/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_707/BiasAdd/ReadVariableOp*^while/lstm_cell_707/MatMul/ReadVariableOp,^while/lstm_cell_707/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_707_biasadd_readvariableop_resource5while_lstm_cell_707_biasadd_readvariableop_resource_0"n
4while_lstm_cell_707_matmul_1_readvariableop_resource6while_lstm_cell_707_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_707_matmul_readvariableop_resource4while_lstm_cell_707_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_707/BiasAdd/ReadVariableOp*while/lstm_cell_707/BiasAdd/ReadVariableOp2V
)while/lstm_cell_707/MatMul/ReadVariableOp)while/lstm_cell_707/MatMul/ReadVariableOp2Z
+while/lstm_cell_707/MatMul_1/ReadVariableOp+while/lstm_cell_707/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_4416360
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4416360___redundant_placeholder05
1while_while_cond_4416360___redundant_placeholder15
1while_while_cond_4416360___redundant_placeholder25
1while_while_cond_4416360___redundant_placeholder3
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
while_body_4420596
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_706_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_706_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_706_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_706_matmul_readvariableop_resource:	d?G
4while_lstm_cell_706_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_706_biasadd_readvariableop_resource:	???*while/lstm_cell_706/BiasAdd/ReadVariableOp?)while/lstm_cell_706/MatMul/ReadVariableOp?+while/lstm_cell_706/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_706/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_706_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_706/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_706/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_706/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_706_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_706/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_706/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_706/addAddV2$while/lstm_cell_706/MatMul:product:0&while/lstm_cell_706/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_706/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_706_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_706/BiasAddBiasAddwhile/lstm_cell_706/add:z:02while/lstm_cell_706/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_706/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_706/splitSplit,while/lstm_cell_706/split/split_dim:output:0$while/lstm_cell_706/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_706/SigmoidSigmoid"while/lstm_cell_706/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_706/Sigmoid_1Sigmoid"while/lstm_cell_706/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_706/mulMul!while/lstm_cell_706/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_706/ReluRelu"while/lstm_cell_706/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_706/mul_1Mulwhile/lstm_cell_706/Sigmoid:y:0&while/lstm_cell_706/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_706/add_1AddV2while/lstm_cell_706/mul:z:0while/lstm_cell_706/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_706/Sigmoid_2Sigmoid"while/lstm_cell_706/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_706/Relu_1Reluwhile/lstm_cell_706/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_706/mul_2Mul!while/lstm_cell_706/Sigmoid_2:y:0(while/lstm_cell_706/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_706/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_706/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_706/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_706/BiasAdd/ReadVariableOp*^while/lstm_cell_706/MatMul/ReadVariableOp,^while/lstm_cell_706/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_706_biasadd_readvariableop_resource5while_lstm_cell_706_biasadd_readvariableop_resource_0"n
4while_lstm_cell_706_matmul_1_readvariableop_resource6while_lstm_cell_706_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_706_matmul_readvariableop_resource4while_lstm_cell_706_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_706/BiasAdd/ReadVariableOp*while/lstm_cell_706/BiasAdd/ReadVariableOp2V
)while/lstm_cell_706/MatMul/ReadVariableOp)while/lstm_cell_706/MatMul/ReadVariableOp2Z
+while/lstm_cell_706/MatMul_1/ReadVariableOp+while/lstm_cell_706/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_4420453
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_706_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_706_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_706_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_706_matmul_readvariableop_resource:	d?G
4while_lstm_cell_706_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_706_biasadd_readvariableop_resource:	???*while/lstm_cell_706/BiasAdd/ReadVariableOp?)while/lstm_cell_706/MatMul/ReadVariableOp?+while/lstm_cell_706/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_706/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_706_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_706/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_706/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_706/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_706_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_706/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_706/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_706/addAddV2$while/lstm_cell_706/MatMul:product:0&while/lstm_cell_706/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_706/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_706_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_706/BiasAddBiasAddwhile/lstm_cell_706/add:z:02while/lstm_cell_706/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_706/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_706/splitSplit,while/lstm_cell_706/split/split_dim:output:0$while/lstm_cell_706/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_706/SigmoidSigmoid"while/lstm_cell_706/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_706/Sigmoid_1Sigmoid"while/lstm_cell_706/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_706/mulMul!while/lstm_cell_706/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_706/ReluRelu"while/lstm_cell_706/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_706/mul_1Mulwhile/lstm_cell_706/Sigmoid:y:0&while/lstm_cell_706/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_706/add_1AddV2while/lstm_cell_706/mul:z:0while/lstm_cell_706/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_706/Sigmoid_2Sigmoid"while/lstm_cell_706/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_706/Relu_1Reluwhile/lstm_cell_706/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_706/mul_2Mul!while/lstm_cell_706/Sigmoid_2:y:0(while/lstm_cell_706/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_706/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_706/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_706/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_706/BiasAdd/ReadVariableOp*^while/lstm_cell_706/MatMul/ReadVariableOp,^while/lstm_cell_706/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_706_biasadd_readvariableop_resource5while_lstm_cell_706_biasadd_readvariableop_resource_0"n
4while_lstm_cell_706_matmul_1_readvariableop_resource6while_lstm_cell_706_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_706_matmul_readvariableop_resource4while_lstm_cell_706_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_706/BiasAdd/ReadVariableOp*while/lstm_cell_706/BiasAdd/ReadVariableOp2V
)while/lstm_cell_706/MatMul/ReadVariableOp)while/lstm_cell_706/MatMul/ReadVariableOp2Z
+while/lstm_cell_706/MatMul_1/ReadVariableOp+while/lstm_cell_706/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_4419551
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_705_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_705_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_705_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_705_matmul_readvariableop_resource:	?G
4while_lstm_cell_705_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_705_biasadd_readvariableop_resource:	???*while/lstm_cell_705/BiasAdd/ReadVariableOp?)while/lstm_cell_705/MatMul/ReadVariableOp?+while/lstm_cell_705/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_705/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_705_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_705/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_705/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_705/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_705_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_705/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_705/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_705/addAddV2$while/lstm_cell_705/MatMul:product:0&while/lstm_cell_705/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_705/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_705_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_705/BiasAddBiasAddwhile/lstm_cell_705/add:z:02while/lstm_cell_705/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_705/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_705/splitSplit,while/lstm_cell_705/split/split_dim:output:0$while/lstm_cell_705/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_705/SigmoidSigmoid"while/lstm_cell_705/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_705/Sigmoid_1Sigmoid"while/lstm_cell_705/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_705/mulMul!while/lstm_cell_705/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_705/ReluRelu"while/lstm_cell_705/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_705/mul_1Mulwhile/lstm_cell_705/Sigmoid:y:0&while/lstm_cell_705/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_705/add_1AddV2while/lstm_cell_705/mul:z:0while/lstm_cell_705/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_705/Sigmoid_2Sigmoid"while/lstm_cell_705/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_705/Relu_1Reluwhile/lstm_cell_705/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_705/mul_2Mul!while/lstm_cell_705/Sigmoid_2:y:0(while/lstm_cell_705/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_705/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_705/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_705/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_705/BiasAdd/ReadVariableOp*^while/lstm_cell_705/MatMul/ReadVariableOp,^while/lstm_cell_705/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_705_biasadd_readvariableop_resource5while_lstm_cell_705_biasadd_readvariableop_resource_0"n
4while_lstm_cell_705_matmul_1_readvariableop_resource6while_lstm_cell_705_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_705_matmul_readvariableop_resource4while_lstm_cell_705_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_705/BiasAdd/ReadVariableOp*while/lstm_cell_705/BiasAdd/ReadVariableOp2V
)while/lstm_cell_705/MatMul/ReadVariableOp)while/lstm_cell_705/MatMul/ReadVariableOp2Z
+while/lstm_cell_705/MatMul_1/ReadVariableOp+while/lstm_cell_705/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_4419693
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4419693___redundant_placeholder05
1while_while_cond_4419693___redundant_placeholder15
1while_while_cond_4419693___redundant_placeholder25
1while_while_cond_4419693___redundant_placeholder3
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
*__inference_lstm_707_layer_call_fn_4420702
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
E__inference_lstm_707_layer_call_and_return_conditional_losses_4417321o
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
?#
?
while_body_4416361
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_705_4416385_0:	?0
while_lstm_cell_705_4416387_0:	d?,
while_lstm_cell_705_4416389_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_705_4416385:	?.
while_lstm_cell_705_4416387:	d?*
while_lstm_cell_705_4416389:	???+while/lstm_cell_705/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_705/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_705_4416385_0while_lstm_cell_705_4416387_0while_lstm_cell_705_4416389_0*
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
J__inference_lstm_cell_705_layer_call_and_return_conditional_losses_4416347?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_705/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_705/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_705/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_705/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_705_4416385while_lstm_cell_705_4416385_0"<
while_lstm_cell_705_4416387while_lstm_cell_705_4416387_0"<
while_lstm_cell_705_4416389while_lstm_cell_705_4416389_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_705/StatefulPartitionedCall+while/lstm_cell_705/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
F__inference_dense_235_layer_call_and_return_conditional_losses_4417797

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
E__inference_lstm_705_layer_call_and_return_conditional_losses_4420064

inputs?
,lstm_cell_705_matmul_readvariableop_resource:	?A
.lstm_cell_705_matmul_1_readvariableop_resource:	d?<
-lstm_cell_705_biasadd_readvariableop_resource:	?
identity??$lstm_cell_705/BiasAdd/ReadVariableOp?#lstm_cell_705/MatMul/ReadVariableOp?%lstm_cell_705/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_705/MatMul/ReadVariableOpReadVariableOp,lstm_cell_705_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_705/MatMulMatMulstrided_slice_2:output:0+lstm_cell_705/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_705/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_705_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_705/MatMul_1MatMulzeros:output:0-lstm_cell_705/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_705/addAddV2lstm_cell_705/MatMul:product:0 lstm_cell_705/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_705/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_705_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_705/BiasAddBiasAddlstm_cell_705/add:z:0,lstm_cell_705/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_705/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_705/splitSplit&lstm_cell_705/split/split_dim:output:0lstm_cell_705/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_705/SigmoidSigmoidlstm_cell_705/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_705/Sigmoid_1Sigmoidlstm_cell_705/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_705/mulMullstm_cell_705/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_705/ReluRelulstm_cell_705/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_705/mul_1Mullstm_cell_705/Sigmoid:y:0 lstm_cell_705/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_705/add_1AddV2lstm_cell_705/mul:z:0lstm_cell_705/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_705/Sigmoid_2Sigmoidlstm_cell_705/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_705/Relu_1Relulstm_cell_705/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_705/mul_2Mullstm_cell_705/Sigmoid_2:y:0"lstm_cell_705/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_705_matmul_readvariableop_resource.lstm_cell_705_matmul_1_readvariableop_resource-lstm_cell_705_biasadd_readvariableop_resource*
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
while_body_4419980*
condR
while_cond_4419979*K
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
NoOpNoOp%^lstm_cell_705/BiasAdd/ReadVariableOp$^lstm_cell_705/MatMul/ReadVariableOp&^lstm_cell_705/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_705/BiasAdd/ReadVariableOp$lstm_cell_705/BiasAdd/ReadVariableOp2J
#lstm_cell_705/MatMul/ReadVariableOp#lstm_cell_705/MatMul/ReadVariableOp2N
%lstm_cell_705/MatMul_1/ReadVariableOp%lstm_cell_705/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_705_layer_call_and_return_conditional_losses_4416493

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
while_cond_4416901
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4416901___redundant_placeholder05
1while_while_cond_4416901___redundant_placeholder15
1while_while_cond_4416901___redundant_placeholder25
1while_while_cond_4416901___redundant_placeholder3
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
E__inference_lstm_705_layer_call_and_return_conditional_losses_4416621

inputs(
lstm_cell_705_4416539:	?(
lstm_cell_705_4416541:	d?$
lstm_cell_705_4416543:	?
identity??%lstm_cell_705/StatefulPartitionedCall?while;
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
%lstm_cell_705/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_705_4416539lstm_cell_705_4416541lstm_cell_705_4416543*
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
J__inference_lstm_cell_705_layer_call_and_return_conditional_losses_4416493n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_705_4416539lstm_cell_705_4416541lstm_cell_705_4416543*
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
while_body_4416552*
condR
while_cond_4416551*K
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
NoOpNoOp&^lstm_cell_705/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_705/StatefulPartitionedCall%lstm_cell_705/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
K__inference_sequential_235_layer_call_and_return_conditional_losses_4418393

inputs#
lstm_705_4418366:	?#
lstm_705_4418368:	d?
lstm_705_4418370:	?#
lstm_706_4418373:	d?#
lstm_706_4418375:	2?
lstm_706_4418377:	?"
lstm_707_4418380:2("
lstm_707_4418382:
(
lstm_707_4418384:(#
dense_235_4418387:

dense_235_4418389:
identity??!dense_235/StatefulPartitionedCall? lstm_705/StatefulPartitionedCall? lstm_706/StatefulPartitionedCall? lstm_707/StatefulPartitionedCall?
 lstm_705/StatefulPartitionedCallStatefulPartitionedCallinputslstm_705_4418366lstm_705_4418368lstm_705_4418370*
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
E__inference_lstm_705_layer_call_and_return_conditional_losses_4418325?
 lstm_706/StatefulPartitionedCallStatefulPartitionedCall)lstm_705/StatefulPartitionedCall:output:0lstm_706_4418373lstm_706_4418375lstm_706_4418377*
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
E__inference_lstm_706_layer_call_and_return_conditional_losses_4418160?
 lstm_707/StatefulPartitionedCallStatefulPartitionedCall)lstm_706/StatefulPartitionedCall:output:0lstm_707_4418380lstm_707_4418382lstm_707_4418384*
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
E__inference_lstm_707_layer_call_and_return_conditional_losses_4417995?
!dense_235/StatefulPartitionedCallStatefulPartitionedCall)lstm_707/StatefulPartitionedCall:output:0dense_235_4418387dense_235_4418389*
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
F__inference_dense_235_layer_call_and_return_conditional_losses_4417797y
IdentityIdentity*dense_235/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_235/StatefulPartitionedCall!^lstm_705/StatefulPartitionedCall!^lstm_706/StatefulPartitionedCall!^lstm_707/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_235/StatefulPartitionedCall!dense_235/StatefulPartitionedCall2D
 lstm_705/StatefulPartitionedCall lstm_705/StatefulPartitionedCall2D
 lstm_706/StatefulPartitionedCall lstm_706/StatefulPartitionedCall2D
 lstm_707/StatefulPartitionedCall lstm_707/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
*__inference_lstm_705_layer_call_fn_4419459
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
E__inference_lstm_705_layer_call_and_return_conditional_losses_4416430|
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
J__inference_lstm_cell_706_layer_call_and_return_conditional_losses_4416697

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
?C
?

lstm_706_while_body_4418792.
*lstm_706_while_lstm_706_while_loop_counter4
0lstm_706_while_lstm_706_while_maximum_iterations
lstm_706_while_placeholder 
lstm_706_while_placeholder_1 
lstm_706_while_placeholder_2 
lstm_706_while_placeholder_3-
)lstm_706_while_lstm_706_strided_slice_1_0i
elstm_706_while_tensorarrayv2read_tensorlistgetitem_lstm_706_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_706_while_lstm_cell_706_matmul_readvariableop_resource_0:	d?R
?lstm_706_while_lstm_cell_706_matmul_1_readvariableop_resource_0:	2?M
>lstm_706_while_lstm_cell_706_biasadd_readvariableop_resource_0:	?
lstm_706_while_identity
lstm_706_while_identity_1
lstm_706_while_identity_2
lstm_706_while_identity_3
lstm_706_while_identity_4
lstm_706_while_identity_5+
'lstm_706_while_lstm_706_strided_slice_1g
clstm_706_while_tensorarrayv2read_tensorlistgetitem_lstm_706_tensorarrayunstack_tensorlistfromtensorN
;lstm_706_while_lstm_cell_706_matmul_readvariableop_resource:	d?P
=lstm_706_while_lstm_cell_706_matmul_1_readvariableop_resource:	2?K
<lstm_706_while_lstm_cell_706_biasadd_readvariableop_resource:	???3lstm_706/while/lstm_cell_706/BiasAdd/ReadVariableOp?2lstm_706/while/lstm_cell_706/MatMul/ReadVariableOp?4lstm_706/while/lstm_cell_706/MatMul_1/ReadVariableOp?
@lstm_706/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_706/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_706_while_tensorarrayv2read_tensorlistgetitem_lstm_706_tensorarrayunstack_tensorlistfromtensor_0lstm_706_while_placeholderIlstm_706/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_706/while/lstm_cell_706/MatMul/ReadVariableOpReadVariableOp=lstm_706_while_lstm_cell_706_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_706/while/lstm_cell_706/MatMulMatMul9lstm_706/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_706/while/lstm_cell_706/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_706/while/lstm_cell_706/MatMul_1/ReadVariableOpReadVariableOp?lstm_706_while_lstm_cell_706_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_706/while/lstm_cell_706/MatMul_1MatMullstm_706_while_placeholder_2<lstm_706/while/lstm_cell_706/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_706/while/lstm_cell_706/addAddV2-lstm_706/while/lstm_cell_706/MatMul:product:0/lstm_706/while/lstm_cell_706/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_706/while/lstm_cell_706/BiasAdd/ReadVariableOpReadVariableOp>lstm_706_while_lstm_cell_706_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_706/while/lstm_cell_706/BiasAddBiasAdd$lstm_706/while/lstm_cell_706/add:z:0;lstm_706/while/lstm_cell_706/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_706/while/lstm_cell_706/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_706/while/lstm_cell_706/splitSplit5lstm_706/while/lstm_cell_706/split/split_dim:output:0-lstm_706/while/lstm_cell_706/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_706/while/lstm_cell_706/SigmoidSigmoid+lstm_706/while/lstm_cell_706/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_706/while/lstm_cell_706/Sigmoid_1Sigmoid+lstm_706/while/lstm_cell_706/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_706/while/lstm_cell_706/mulMul*lstm_706/while/lstm_cell_706/Sigmoid_1:y:0lstm_706_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_706/while/lstm_cell_706/ReluRelu+lstm_706/while/lstm_cell_706/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_706/while/lstm_cell_706/mul_1Mul(lstm_706/while/lstm_cell_706/Sigmoid:y:0/lstm_706/while/lstm_cell_706/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_706/while/lstm_cell_706/add_1AddV2$lstm_706/while/lstm_cell_706/mul:z:0&lstm_706/while/lstm_cell_706/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_706/while/lstm_cell_706/Sigmoid_2Sigmoid+lstm_706/while/lstm_cell_706/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_706/while/lstm_cell_706/Relu_1Relu&lstm_706/while/lstm_cell_706/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_706/while/lstm_cell_706/mul_2Mul*lstm_706/while/lstm_cell_706/Sigmoid_2:y:01lstm_706/while/lstm_cell_706/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_706/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_706_while_placeholder_1lstm_706_while_placeholder&lstm_706/while/lstm_cell_706/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_706/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_706/while/addAddV2lstm_706_while_placeholderlstm_706/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_706/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_706/while/add_1AddV2*lstm_706_while_lstm_706_while_loop_counterlstm_706/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_706/while/IdentityIdentitylstm_706/while/add_1:z:0^lstm_706/while/NoOp*
T0*
_output_shapes
: ?
lstm_706/while/Identity_1Identity0lstm_706_while_lstm_706_while_maximum_iterations^lstm_706/while/NoOp*
T0*
_output_shapes
: t
lstm_706/while/Identity_2Identitylstm_706/while/add:z:0^lstm_706/while/NoOp*
T0*
_output_shapes
: ?
lstm_706/while/Identity_3IdentityClstm_706/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_706/while/NoOp*
T0*
_output_shapes
: ?
lstm_706/while/Identity_4Identity&lstm_706/while/lstm_cell_706/mul_2:z:0^lstm_706/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_706/while/Identity_5Identity&lstm_706/while/lstm_cell_706/add_1:z:0^lstm_706/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_706/while/NoOpNoOp4^lstm_706/while/lstm_cell_706/BiasAdd/ReadVariableOp3^lstm_706/while/lstm_cell_706/MatMul/ReadVariableOp5^lstm_706/while/lstm_cell_706/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_706_while_identity lstm_706/while/Identity:output:0"?
lstm_706_while_identity_1"lstm_706/while/Identity_1:output:0"?
lstm_706_while_identity_2"lstm_706/while/Identity_2:output:0"?
lstm_706_while_identity_3"lstm_706/while/Identity_3:output:0"?
lstm_706_while_identity_4"lstm_706/while/Identity_4:output:0"?
lstm_706_while_identity_5"lstm_706/while/Identity_5:output:0"T
'lstm_706_while_lstm_706_strided_slice_1)lstm_706_while_lstm_706_strided_slice_1_0"~
<lstm_706_while_lstm_cell_706_biasadd_readvariableop_resource>lstm_706_while_lstm_cell_706_biasadd_readvariableop_resource_0"?
=lstm_706_while_lstm_cell_706_matmul_1_readvariableop_resource?lstm_706_while_lstm_cell_706_matmul_1_readvariableop_resource_0"|
;lstm_706_while_lstm_cell_706_matmul_readvariableop_resource=lstm_706_while_lstm_cell_706_matmul_readvariableop_resource_0"?
clstm_706_while_tensorarrayv2read_tensorlistgetitem_lstm_706_tensorarrayunstack_tensorlistfromtensorelstm_706_while_tensorarrayv2read_tensorlistgetitem_lstm_706_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_706/while/lstm_cell_706/BiasAdd/ReadVariableOp3lstm_706/while/lstm_cell_706/BiasAdd/ReadVariableOp2h
2lstm_706/while/lstm_cell_706/MatMul/ReadVariableOp2lstm_706/while/lstm_cell_706/MatMul/ReadVariableOp2l
4lstm_706/while/lstm_cell_706/MatMul_1/ReadVariableOp4lstm_706/while/lstm_cell_706/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_705_layer_call_fn_4419470
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
E__inference_lstm_705_layer_call_and_return_conditional_losses_4416621|
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

?
lstm_705_while_cond_4419079.
*lstm_705_while_lstm_705_while_loop_counter4
0lstm_705_while_lstm_705_while_maximum_iterations
lstm_705_while_placeholder 
lstm_705_while_placeholder_1 
lstm_705_while_placeholder_2 
lstm_705_while_placeholder_30
,lstm_705_while_less_lstm_705_strided_slice_1G
Clstm_705_while_lstm_705_while_cond_4419079___redundant_placeholder0G
Clstm_705_while_lstm_705_while_cond_4419079___redundant_placeholder1G
Clstm_705_while_lstm_705_while_cond_4419079___redundant_placeholder2G
Clstm_705_while_lstm_705_while_cond_4419079___redundant_placeholder3
lstm_705_while_identity
?
lstm_705/while/LessLesslstm_705_while_placeholder,lstm_705_while_less_lstm_705_strided_slice_1*
T0*
_output_shapes
: ]
lstm_705/while/IdentityIdentitylstm_705/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_705_while_identity lstm_705/while/Identity:output:0*(
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
?
?
*__inference_lstm_707_layer_call_fn_4420713

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
E__inference_lstm_707_layer_call_and_return_conditional_losses_4417779o
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
E__inference_lstm_706_layer_call_and_return_conditional_losses_4420394
inputs_0?
,lstm_cell_706_matmul_readvariableop_resource:	d?A
.lstm_cell_706_matmul_1_readvariableop_resource:	2?<
-lstm_cell_706_biasadd_readvariableop_resource:	?
identity??$lstm_cell_706/BiasAdd/ReadVariableOp?#lstm_cell_706/MatMul/ReadVariableOp?%lstm_cell_706/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_706/MatMul/ReadVariableOpReadVariableOp,lstm_cell_706_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_706/MatMulMatMulstrided_slice_2:output:0+lstm_cell_706/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_706/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_706_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_706/MatMul_1MatMulzeros:output:0-lstm_cell_706/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_706/addAddV2lstm_cell_706/MatMul:product:0 lstm_cell_706/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_706/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_706_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_706/BiasAddBiasAddlstm_cell_706/add:z:0,lstm_cell_706/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_706/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_706/splitSplit&lstm_cell_706/split/split_dim:output:0lstm_cell_706/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_706/SigmoidSigmoidlstm_cell_706/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_706/Sigmoid_1Sigmoidlstm_cell_706/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_706/mulMullstm_cell_706/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_706/ReluRelulstm_cell_706/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_706/mul_1Mullstm_cell_706/Sigmoid:y:0 lstm_cell_706/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_706/add_1AddV2lstm_cell_706/mul:z:0lstm_cell_706/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_706/Sigmoid_2Sigmoidlstm_cell_706/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_706/Relu_1Relulstm_cell_706/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_706/mul_2Mullstm_cell_706/Sigmoid_2:y:0"lstm_cell_706/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_706_matmul_readvariableop_resource.lstm_cell_706_matmul_1_readvariableop_resource-lstm_cell_706_biasadd_readvariableop_resource*
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
while_body_4420310*
condR
while_cond_4420309*K
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
NoOpNoOp%^lstm_cell_706/BiasAdd/ReadVariableOp$^lstm_cell_706/MatMul/ReadVariableOp&^lstm_cell_706/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_706/BiasAdd/ReadVariableOp$lstm_cell_706/BiasAdd/ReadVariableOp2J
#lstm_cell_706/MatMul/ReadVariableOp#lstm_cell_706/MatMul/ReadVariableOp2N
%lstm_cell_706/MatMul_1/ReadVariableOp%lstm_cell_706/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?C
?

lstm_705_while_body_4418653.
*lstm_705_while_lstm_705_while_loop_counter4
0lstm_705_while_lstm_705_while_maximum_iterations
lstm_705_while_placeholder 
lstm_705_while_placeholder_1 
lstm_705_while_placeholder_2 
lstm_705_while_placeholder_3-
)lstm_705_while_lstm_705_strided_slice_1_0i
elstm_705_while_tensorarrayv2read_tensorlistgetitem_lstm_705_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_705_while_lstm_cell_705_matmul_readvariableop_resource_0:	?R
?lstm_705_while_lstm_cell_705_matmul_1_readvariableop_resource_0:	d?M
>lstm_705_while_lstm_cell_705_biasadd_readvariableop_resource_0:	?
lstm_705_while_identity
lstm_705_while_identity_1
lstm_705_while_identity_2
lstm_705_while_identity_3
lstm_705_while_identity_4
lstm_705_while_identity_5+
'lstm_705_while_lstm_705_strided_slice_1g
clstm_705_while_tensorarrayv2read_tensorlistgetitem_lstm_705_tensorarrayunstack_tensorlistfromtensorN
;lstm_705_while_lstm_cell_705_matmul_readvariableop_resource:	?P
=lstm_705_while_lstm_cell_705_matmul_1_readvariableop_resource:	d?K
<lstm_705_while_lstm_cell_705_biasadd_readvariableop_resource:	???3lstm_705/while/lstm_cell_705/BiasAdd/ReadVariableOp?2lstm_705/while/lstm_cell_705/MatMul/ReadVariableOp?4lstm_705/while/lstm_cell_705/MatMul_1/ReadVariableOp?
@lstm_705/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_705/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_705_while_tensorarrayv2read_tensorlistgetitem_lstm_705_tensorarrayunstack_tensorlistfromtensor_0lstm_705_while_placeholderIlstm_705/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_705/while/lstm_cell_705/MatMul/ReadVariableOpReadVariableOp=lstm_705_while_lstm_cell_705_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_705/while/lstm_cell_705/MatMulMatMul9lstm_705/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_705/while/lstm_cell_705/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_705/while/lstm_cell_705/MatMul_1/ReadVariableOpReadVariableOp?lstm_705_while_lstm_cell_705_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_705/while/lstm_cell_705/MatMul_1MatMullstm_705_while_placeholder_2<lstm_705/while/lstm_cell_705/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_705/while/lstm_cell_705/addAddV2-lstm_705/while/lstm_cell_705/MatMul:product:0/lstm_705/while/lstm_cell_705/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_705/while/lstm_cell_705/BiasAdd/ReadVariableOpReadVariableOp>lstm_705_while_lstm_cell_705_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_705/while/lstm_cell_705/BiasAddBiasAdd$lstm_705/while/lstm_cell_705/add:z:0;lstm_705/while/lstm_cell_705/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_705/while/lstm_cell_705/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_705/while/lstm_cell_705/splitSplit5lstm_705/while/lstm_cell_705/split/split_dim:output:0-lstm_705/while/lstm_cell_705/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_705/while/lstm_cell_705/SigmoidSigmoid+lstm_705/while/lstm_cell_705/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_705/while/lstm_cell_705/Sigmoid_1Sigmoid+lstm_705/while/lstm_cell_705/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_705/while/lstm_cell_705/mulMul*lstm_705/while/lstm_cell_705/Sigmoid_1:y:0lstm_705_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_705/while/lstm_cell_705/ReluRelu+lstm_705/while/lstm_cell_705/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_705/while/lstm_cell_705/mul_1Mul(lstm_705/while/lstm_cell_705/Sigmoid:y:0/lstm_705/while/lstm_cell_705/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_705/while/lstm_cell_705/add_1AddV2$lstm_705/while/lstm_cell_705/mul:z:0&lstm_705/while/lstm_cell_705/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_705/while/lstm_cell_705/Sigmoid_2Sigmoid+lstm_705/while/lstm_cell_705/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_705/while/lstm_cell_705/Relu_1Relu&lstm_705/while/lstm_cell_705/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_705/while/lstm_cell_705/mul_2Mul*lstm_705/while/lstm_cell_705/Sigmoid_2:y:01lstm_705/while/lstm_cell_705/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_705/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_705_while_placeholder_1lstm_705_while_placeholder&lstm_705/while/lstm_cell_705/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_705/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_705/while/addAddV2lstm_705_while_placeholderlstm_705/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_705/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_705/while/add_1AddV2*lstm_705_while_lstm_705_while_loop_counterlstm_705/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_705/while/IdentityIdentitylstm_705/while/add_1:z:0^lstm_705/while/NoOp*
T0*
_output_shapes
: ?
lstm_705/while/Identity_1Identity0lstm_705_while_lstm_705_while_maximum_iterations^lstm_705/while/NoOp*
T0*
_output_shapes
: t
lstm_705/while/Identity_2Identitylstm_705/while/add:z:0^lstm_705/while/NoOp*
T0*
_output_shapes
: ?
lstm_705/while/Identity_3IdentityClstm_705/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_705/while/NoOp*
T0*
_output_shapes
: ?
lstm_705/while/Identity_4Identity&lstm_705/while/lstm_cell_705/mul_2:z:0^lstm_705/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_705/while/Identity_5Identity&lstm_705/while/lstm_cell_705/add_1:z:0^lstm_705/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_705/while/NoOpNoOp4^lstm_705/while/lstm_cell_705/BiasAdd/ReadVariableOp3^lstm_705/while/lstm_cell_705/MatMul/ReadVariableOp5^lstm_705/while/lstm_cell_705/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_705_while_identity lstm_705/while/Identity:output:0"?
lstm_705_while_identity_1"lstm_705/while/Identity_1:output:0"?
lstm_705_while_identity_2"lstm_705/while/Identity_2:output:0"?
lstm_705_while_identity_3"lstm_705/while/Identity_3:output:0"?
lstm_705_while_identity_4"lstm_705/while/Identity_4:output:0"?
lstm_705_while_identity_5"lstm_705/while/Identity_5:output:0"T
'lstm_705_while_lstm_705_strided_slice_1)lstm_705_while_lstm_705_strided_slice_1_0"~
<lstm_705_while_lstm_cell_705_biasadd_readvariableop_resource>lstm_705_while_lstm_cell_705_biasadd_readvariableop_resource_0"?
=lstm_705_while_lstm_cell_705_matmul_1_readvariableop_resource?lstm_705_while_lstm_cell_705_matmul_1_readvariableop_resource_0"|
;lstm_705_while_lstm_cell_705_matmul_readvariableop_resource=lstm_705_while_lstm_cell_705_matmul_readvariableop_resource_0"?
clstm_705_while_tensorarrayv2read_tensorlistgetitem_lstm_705_tensorarrayunstack_tensorlistfromtensorelstm_705_while_tensorarrayv2read_tensorlistgetitem_lstm_705_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_705/while/lstm_cell_705/BiasAdd/ReadVariableOp3lstm_705/while/lstm_cell_705/BiasAdd/ReadVariableOp2h
2lstm_705/while/lstm_cell_705/MatMul/ReadVariableOp2lstm_705/while/lstm_cell_705/MatMul/ReadVariableOp2l
4lstm_705/while/lstm_cell_705/MatMul_1/ReadVariableOp4lstm_705/while/lstm_cell_705/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_4420166
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4420166___redundant_placeholder05
1while_while_cond_4420166___redundant_placeholder15
1while_while_cond_4420166___redundant_placeholder25
1while_while_cond_4420166___redundant_placeholder3
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
while_cond_4417060
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4417060___redundant_placeholder05
1while_while_cond_4417060___redundant_placeholder15
1while_while_cond_4417060___redundant_placeholder25
1while_while_cond_4417060___redundant_placeholder3
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
E__inference_lstm_705_layer_call_and_return_conditional_losses_4416430

inputs(
lstm_cell_705_4416348:	?(
lstm_cell_705_4416350:	d?$
lstm_cell_705_4416352:	?
identity??%lstm_cell_705/StatefulPartitionedCall?while;
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
%lstm_cell_705/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_705_4416348lstm_cell_705_4416350lstm_cell_705_4416352*
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
J__inference_lstm_cell_705_layer_call_and_return_conditional_losses_4416347n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_705_4416348lstm_cell_705_4416350lstm_cell_705_4416352*
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
while_body_4416361*
condR
while_cond_4416360*K
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
NoOpNoOp&^lstm_cell_705/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_705/StatefulPartitionedCall%lstm_cell_705/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
while_cond_4417394
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4417394___redundant_placeholder05
1while_while_cond_4417394___redundant_placeholder15
1while_while_cond_4417394___redundant_placeholder25
1while_while_cond_4417394___redundant_placeholder3
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
E__inference_lstm_707_layer_call_and_return_conditional_losses_4417995

inputs>
,lstm_cell_707_matmul_readvariableop_resource:2(@
.lstm_cell_707_matmul_1_readvariableop_resource:
(;
-lstm_cell_707_biasadd_readvariableop_resource:(
identity??$lstm_cell_707/BiasAdd/ReadVariableOp?#lstm_cell_707/MatMul/ReadVariableOp?%lstm_cell_707/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_707/MatMul/ReadVariableOpReadVariableOp,lstm_cell_707_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_707/MatMulMatMulstrided_slice_2:output:0+lstm_cell_707/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_707/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_707_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_707/MatMul_1MatMulzeros:output:0-lstm_cell_707/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_707/addAddV2lstm_cell_707/MatMul:product:0 lstm_cell_707/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_707/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_707_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_707/BiasAddBiasAddlstm_cell_707/add:z:0,lstm_cell_707/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_707/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_707/splitSplit&lstm_cell_707/split/split_dim:output:0lstm_cell_707/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_707/SigmoidSigmoidlstm_cell_707/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_707/Sigmoid_1Sigmoidlstm_cell_707/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_707/mulMullstm_cell_707/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_707/ReluRelulstm_cell_707/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_707/mul_1Mullstm_cell_707/Sigmoid:y:0 lstm_cell_707/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_707/add_1AddV2lstm_cell_707/mul:z:0lstm_cell_707/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_707/Sigmoid_2Sigmoidlstm_cell_707/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_707/Relu_1Relulstm_cell_707/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_707/mul_2Mullstm_cell_707/Sigmoid_2:y:0"lstm_cell_707/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_707_matmul_readvariableop_resource.lstm_cell_707_matmul_1_readvariableop_resource-lstm_cell_707_biasadd_readvariableop_resource*
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
while_body_4417911*
condR
while_cond_4417910*K
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
NoOpNoOp%^lstm_cell_707/BiasAdd/ReadVariableOp$^lstm_cell_707/MatMul/ReadVariableOp&^lstm_cell_707/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_707/BiasAdd/ReadVariableOp$lstm_cell_707/BiasAdd/ReadVariableOp2J
#lstm_cell_707/MatMul/ReadVariableOp#lstm_cell_707/MatMul/ReadVariableOp2N
%lstm_cell_707/MatMul_1/ReadVariableOp%lstm_cell_707/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
/__inference_lstm_cell_707_layer_call_fn_4421545

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
J__inference_lstm_cell_707_layer_call_and_return_conditional_losses_4417193o
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
?C
?

lstm_705_while_body_4419080.
*lstm_705_while_lstm_705_while_loop_counter4
0lstm_705_while_lstm_705_while_maximum_iterations
lstm_705_while_placeholder 
lstm_705_while_placeholder_1 
lstm_705_while_placeholder_2 
lstm_705_while_placeholder_3-
)lstm_705_while_lstm_705_strided_slice_1_0i
elstm_705_while_tensorarrayv2read_tensorlistgetitem_lstm_705_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_705_while_lstm_cell_705_matmul_readvariableop_resource_0:	?R
?lstm_705_while_lstm_cell_705_matmul_1_readvariableop_resource_0:	d?M
>lstm_705_while_lstm_cell_705_biasadd_readvariableop_resource_0:	?
lstm_705_while_identity
lstm_705_while_identity_1
lstm_705_while_identity_2
lstm_705_while_identity_3
lstm_705_while_identity_4
lstm_705_while_identity_5+
'lstm_705_while_lstm_705_strided_slice_1g
clstm_705_while_tensorarrayv2read_tensorlistgetitem_lstm_705_tensorarrayunstack_tensorlistfromtensorN
;lstm_705_while_lstm_cell_705_matmul_readvariableop_resource:	?P
=lstm_705_while_lstm_cell_705_matmul_1_readvariableop_resource:	d?K
<lstm_705_while_lstm_cell_705_biasadd_readvariableop_resource:	???3lstm_705/while/lstm_cell_705/BiasAdd/ReadVariableOp?2lstm_705/while/lstm_cell_705/MatMul/ReadVariableOp?4lstm_705/while/lstm_cell_705/MatMul_1/ReadVariableOp?
@lstm_705/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_705/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_705_while_tensorarrayv2read_tensorlistgetitem_lstm_705_tensorarrayunstack_tensorlistfromtensor_0lstm_705_while_placeholderIlstm_705/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_705/while/lstm_cell_705/MatMul/ReadVariableOpReadVariableOp=lstm_705_while_lstm_cell_705_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_705/while/lstm_cell_705/MatMulMatMul9lstm_705/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_705/while/lstm_cell_705/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_705/while/lstm_cell_705/MatMul_1/ReadVariableOpReadVariableOp?lstm_705_while_lstm_cell_705_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_705/while/lstm_cell_705/MatMul_1MatMullstm_705_while_placeholder_2<lstm_705/while/lstm_cell_705/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_705/while/lstm_cell_705/addAddV2-lstm_705/while/lstm_cell_705/MatMul:product:0/lstm_705/while/lstm_cell_705/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_705/while/lstm_cell_705/BiasAdd/ReadVariableOpReadVariableOp>lstm_705_while_lstm_cell_705_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_705/while/lstm_cell_705/BiasAddBiasAdd$lstm_705/while/lstm_cell_705/add:z:0;lstm_705/while/lstm_cell_705/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_705/while/lstm_cell_705/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_705/while/lstm_cell_705/splitSplit5lstm_705/while/lstm_cell_705/split/split_dim:output:0-lstm_705/while/lstm_cell_705/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_705/while/lstm_cell_705/SigmoidSigmoid+lstm_705/while/lstm_cell_705/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_705/while/lstm_cell_705/Sigmoid_1Sigmoid+lstm_705/while/lstm_cell_705/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_705/while/lstm_cell_705/mulMul*lstm_705/while/lstm_cell_705/Sigmoid_1:y:0lstm_705_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_705/while/lstm_cell_705/ReluRelu+lstm_705/while/lstm_cell_705/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_705/while/lstm_cell_705/mul_1Mul(lstm_705/while/lstm_cell_705/Sigmoid:y:0/lstm_705/while/lstm_cell_705/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_705/while/lstm_cell_705/add_1AddV2$lstm_705/while/lstm_cell_705/mul:z:0&lstm_705/while/lstm_cell_705/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_705/while/lstm_cell_705/Sigmoid_2Sigmoid+lstm_705/while/lstm_cell_705/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_705/while/lstm_cell_705/Relu_1Relu&lstm_705/while/lstm_cell_705/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_705/while/lstm_cell_705/mul_2Mul*lstm_705/while/lstm_cell_705/Sigmoid_2:y:01lstm_705/while/lstm_cell_705/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_705/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_705_while_placeholder_1lstm_705_while_placeholder&lstm_705/while/lstm_cell_705/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_705/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_705/while/addAddV2lstm_705_while_placeholderlstm_705/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_705/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_705/while/add_1AddV2*lstm_705_while_lstm_705_while_loop_counterlstm_705/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_705/while/IdentityIdentitylstm_705/while/add_1:z:0^lstm_705/while/NoOp*
T0*
_output_shapes
: ?
lstm_705/while/Identity_1Identity0lstm_705_while_lstm_705_while_maximum_iterations^lstm_705/while/NoOp*
T0*
_output_shapes
: t
lstm_705/while/Identity_2Identitylstm_705/while/add:z:0^lstm_705/while/NoOp*
T0*
_output_shapes
: ?
lstm_705/while/Identity_3IdentityClstm_705/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_705/while/NoOp*
T0*
_output_shapes
: ?
lstm_705/while/Identity_4Identity&lstm_705/while/lstm_cell_705/mul_2:z:0^lstm_705/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_705/while/Identity_5Identity&lstm_705/while/lstm_cell_705/add_1:z:0^lstm_705/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_705/while/NoOpNoOp4^lstm_705/while/lstm_cell_705/BiasAdd/ReadVariableOp3^lstm_705/while/lstm_cell_705/MatMul/ReadVariableOp5^lstm_705/while/lstm_cell_705/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_705_while_identity lstm_705/while/Identity:output:0"?
lstm_705_while_identity_1"lstm_705/while/Identity_1:output:0"?
lstm_705_while_identity_2"lstm_705/while/Identity_2:output:0"?
lstm_705_while_identity_3"lstm_705/while/Identity_3:output:0"?
lstm_705_while_identity_4"lstm_705/while/Identity_4:output:0"?
lstm_705_while_identity_5"lstm_705/while/Identity_5:output:0"T
'lstm_705_while_lstm_705_strided_slice_1)lstm_705_while_lstm_705_strided_slice_1_0"~
<lstm_705_while_lstm_cell_705_biasadd_readvariableop_resource>lstm_705_while_lstm_cell_705_biasadd_readvariableop_resource_0"?
=lstm_705_while_lstm_cell_705_matmul_1_readvariableop_resource?lstm_705_while_lstm_cell_705_matmul_1_readvariableop_resource_0"|
;lstm_705_while_lstm_cell_705_matmul_readvariableop_resource=lstm_705_while_lstm_cell_705_matmul_readvariableop_resource_0"?
clstm_705_while_tensorarrayv2read_tensorlistgetitem_lstm_705_tensorarrayunstack_tensorlistfromtensorelstm_705_while_tensorarrayv2read_tensorlistgetitem_lstm_705_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_705/while/lstm_cell_705/BiasAdd/ReadVariableOp3lstm_705/while/lstm_cell_705/BiasAdd/ReadVariableOp2h
2lstm_705/while/lstm_cell_705/MatMul/ReadVariableOp2lstm_705/while/lstm_cell_705/MatMul/ReadVariableOp2l
4lstm_705/while/lstm_cell_705/MatMul_1/ReadVariableOp4lstm_705/while/lstm_cell_705/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_706_layer_call_fn_4421447

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
J__inference_lstm_cell_706_layer_call_and_return_conditional_losses_4416843o
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
while_body_4417545
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_706_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_706_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_706_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_706_matmul_readvariableop_resource:	d?G
4while_lstm_cell_706_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_706_biasadd_readvariableop_resource:	???*while/lstm_cell_706/BiasAdd/ReadVariableOp?)while/lstm_cell_706/MatMul/ReadVariableOp?+while/lstm_cell_706/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_706/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_706_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_706/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_706/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_706/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_706_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_706/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_706/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_706/addAddV2$while/lstm_cell_706/MatMul:product:0&while/lstm_cell_706/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_706/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_706_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_706/BiasAddBiasAddwhile/lstm_cell_706/add:z:02while/lstm_cell_706/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_706/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_706/splitSplit,while/lstm_cell_706/split/split_dim:output:0$while/lstm_cell_706/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_706/SigmoidSigmoid"while/lstm_cell_706/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_706/Sigmoid_1Sigmoid"while/lstm_cell_706/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_706/mulMul!while/lstm_cell_706/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_706/ReluRelu"while/lstm_cell_706/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_706/mul_1Mulwhile/lstm_cell_706/Sigmoid:y:0&while/lstm_cell_706/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_706/add_1AddV2while/lstm_cell_706/mul:z:0while/lstm_cell_706/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_706/Sigmoid_2Sigmoid"while/lstm_cell_706/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_706/Relu_1Reluwhile/lstm_cell_706/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_706/mul_2Mul!while/lstm_cell_706/Sigmoid_2:y:0(while/lstm_cell_706/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_706/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_706/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_706/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_706/BiasAdd/ReadVariableOp*^while/lstm_cell_706/MatMul/ReadVariableOp,^while/lstm_cell_706/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_706_biasadd_readvariableop_resource5while_lstm_cell_706_biasadd_readvariableop_resource_0"n
4while_lstm_cell_706_matmul_1_readvariableop_resource6while_lstm_cell_706_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_706_matmul_readvariableop_resource4while_lstm_cell_706_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_706/BiasAdd/ReadVariableOp*while/lstm_cell_706/BiasAdd/ReadVariableOp2V
)while/lstm_cell_706/MatMul/ReadVariableOp)while/lstm_cell_706/MatMul/ReadVariableOp2Z
+while/lstm_cell_706/MatMul_1/ReadVariableOp+while/lstm_cell_706/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_4419694
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_705_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_705_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_705_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_705_matmul_readvariableop_resource:	?G
4while_lstm_cell_705_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_705_biasadd_readvariableop_resource:	???*while/lstm_cell_705/BiasAdd/ReadVariableOp?)while/lstm_cell_705/MatMul/ReadVariableOp?+while/lstm_cell_705/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_705/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_705_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_705/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_705/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_705/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_705_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_705/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_705/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_705/addAddV2$while/lstm_cell_705/MatMul:product:0&while/lstm_cell_705/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_705/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_705_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_705/BiasAddBiasAddwhile/lstm_cell_705/add:z:02while/lstm_cell_705/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_705/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_705/splitSplit,while/lstm_cell_705/split/split_dim:output:0$while/lstm_cell_705/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_705/SigmoidSigmoid"while/lstm_cell_705/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_705/Sigmoid_1Sigmoid"while/lstm_cell_705/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_705/mulMul!while/lstm_cell_705/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_705/ReluRelu"while/lstm_cell_705/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_705/mul_1Mulwhile/lstm_cell_705/Sigmoid:y:0&while/lstm_cell_705/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_705/add_1AddV2while/lstm_cell_705/mul:z:0while/lstm_cell_705/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_705/Sigmoid_2Sigmoid"while/lstm_cell_705/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_705/Relu_1Reluwhile/lstm_cell_705/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_705/mul_2Mul!while/lstm_cell_705/Sigmoid_2:y:0(while/lstm_cell_705/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_705/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_705/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_705/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_705/BiasAdd/ReadVariableOp*^while/lstm_cell_705/MatMul/ReadVariableOp,^while/lstm_cell_705/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_705_biasadd_readvariableop_resource5while_lstm_cell_705_biasadd_readvariableop_resource_0"n
4while_lstm_cell_705_matmul_1_readvariableop_resource6while_lstm_cell_705_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_705_matmul_readvariableop_resource4while_lstm_cell_705_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_705/BiasAdd/ReadVariableOp*while/lstm_cell_705/BiasAdd/ReadVariableOp2V
)while/lstm_cell_705/MatMul/ReadVariableOp)while/lstm_cell_705/MatMul/ReadVariableOp2Z
+while/lstm_cell_705/MatMul_1/ReadVariableOp+while/lstm_cell_705/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_4421211
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4421211___redundant_placeholder05
1while_while_cond_4421211___redundant_placeholder15
1while_while_cond_4421211___redundant_placeholder25
1while_while_cond_4421211___redundant_placeholder3
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
E__inference_lstm_706_layer_call_and_return_conditional_losses_4418160

inputs?
,lstm_cell_706_matmul_readvariableop_resource:	d?A
.lstm_cell_706_matmul_1_readvariableop_resource:	2?<
-lstm_cell_706_biasadd_readvariableop_resource:	?
identity??$lstm_cell_706/BiasAdd/ReadVariableOp?#lstm_cell_706/MatMul/ReadVariableOp?%lstm_cell_706/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_706/MatMul/ReadVariableOpReadVariableOp,lstm_cell_706_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_706/MatMulMatMulstrided_slice_2:output:0+lstm_cell_706/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_706/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_706_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_706/MatMul_1MatMulzeros:output:0-lstm_cell_706/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_706/addAddV2lstm_cell_706/MatMul:product:0 lstm_cell_706/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_706/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_706_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_706/BiasAddBiasAddlstm_cell_706/add:z:0,lstm_cell_706/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_706/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_706/splitSplit&lstm_cell_706/split/split_dim:output:0lstm_cell_706/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_706/SigmoidSigmoidlstm_cell_706/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_706/Sigmoid_1Sigmoidlstm_cell_706/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_706/mulMullstm_cell_706/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_706/ReluRelulstm_cell_706/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_706/mul_1Mullstm_cell_706/Sigmoid:y:0 lstm_cell_706/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_706/add_1AddV2lstm_cell_706/mul:z:0lstm_cell_706/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_706/Sigmoid_2Sigmoidlstm_cell_706/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_706/Relu_1Relulstm_cell_706/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_706/mul_2Mullstm_cell_706/Sigmoid_2:y:0"lstm_cell_706/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_706_matmul_readvariableop_resource.lstm_cell_706_matmul_1_readvariableop_resource-lstm_cell_706_biasadd_readvariableop_resource*
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
while_body_4418076*
condR
while_cond_4418075*K
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
NoOpNoOp%^lstm_cell_706/BiasAdd/ReadVariableOp$^lstm_cell_706/MatMul/ReadVariableOp&^lstm_cell_706/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_706/BiasAdd/ReadVariableOp$lstm_cell_706/BiasAdd/ReadVariableOp2J
#lstm_cell_706/MatMul/ReadVariableOp#lstm_cell_706/MatMul/ReadVariableOp2N
%lstm_cell_706/MatMul_1/ReadVariableOp%lstm_cell_706/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
while_cond_4419836
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4419836___redundant_placeholder05
1while_while_cond_4419836___redundant_placeholder15
1while_while_cond_4419836___redundant_placeholder25
1while_while_cond_4419836___redundant_placeholder3
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
while_body_4416902
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_706_4416926_0:	d?0
while_lstm_cell_706_4416928_0:	2?,
while_lstm_cell_706_4416930_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_706_4416926:	d?.
while_lstm_cell_706_4416928:	2?*
while_lstm_cell_706_4416930:	???+while/lstm_cell_706/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_706/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_706_4416926_0while_lstm_cell_706_4416928_0while_lstm_cell_706_4416930_0*
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
J__inference_lstm_cell_706_layer_call_and_return_conditional_losses_4416843?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_706/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_706/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_706/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_706/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_706_4416926while_lstm_cell_706_4416926_0"<
while_lstm_cell_706_4416928while_lstm_cell_706_4416928_0"<
while_lstm_cell_706_4416930while_lstm_cell_706_4416930_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_706/StatefulPartitionedCall+while/lstm_cell_706/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_cond_4418240
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4418240___redundant_placeholder05
1while_while_cond_4418240___redundant_placeholder15
1while_while_cond_4418240___redundant_placeholder25
1while_while_cond_4418240___redundant_placeholder3
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
while_cond_4420925
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4420925___redundant_placeholder05
1while_while_cond_4420925___redundant_placeholder15
1while_while_cond_4420925___redundant_placeholder25
1while_while_cond_4420925___redundant_placeholder3
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
while_body_4416711
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_706_4416735_0:	d?0
while_lstm_cell_706_4416737_0:	2?,
while_lstm_cell_706_4416739_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_706_4416735:	d?.
while_lstm_cell_706_4416737:	2?*
while_lstm_cell_706_4416739:	???+while/lstm_cell_706/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_706/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_706_4416735_0while_lstm_cell_706_4416737_0while_lstm_cell_706_4416739_0*
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
J__inference_lstm_cell_706_layer_call_and_return_conditional_losses_4416697?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_706/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_706/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_706/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_706/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_706_4416735while_lstm_cell_706_4416735_0"<
while_lstm_cell_706_4416737while_lstm_cell_706_4416737_0"<
while_lstm_cell_706_4416739while_lstm_cell_706_4416739_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_706/StatefulPartitionedCall+while/lstm_cell_706/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_cond_4420595
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4420595___redundant_placeholder05
1while_while_cond_4420595___redundant_placeholder15
1while_while_cond_4420595___redundant_placeholder25
1while_while_cond_4420595___redundant_placeholder3
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
while_body_4417061
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_707_4417085_0:2(/
while_lstm_cell_707_4417087_0:
(+
while_lstm_cell_707_4417089_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_707_4417085:2(-
while_lstm_cell_707_4417087:
()
while_lstm_cell_707_4417089:(??+while/lstm_cell_707/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_707/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_707_4417085_0while_lstm_cell_707_4417087_0while_lstm_cell_707_4417089_0*
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
J__inference_lstm_cell_707_layer_call_and_return_conditional_losses_4417047?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_707/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_707/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_707/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_707/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_707_4417085while_lstm_cell_707_4417085_0"<
while_lstm_cell_707_4417087while_lstm_cell_707_4417087_0"<
while_lstm_cell_707_4417089while_lstm_cell_707_4417089_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_707/StatefulPartitionedCall+while/lstm_cell_707/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
lstm_705_while_cond_4418652.
*lstm_705_while_lstm_705_while_loop_counter4
0lstm_705_while_lstm_705_while_maximum_iterations
lstm_705_while_placeholder 
lstm_705_while_placeholder_1 
lstm_705_while_placeholder_2 
lstm_705_while_placeholder_30
,lstm_705_while_less_lstm_705_strided_slice_1G
Clstm_705_while_lstm_705_while_cond_4418652___redundant_placeholder0G
Clstm_705_while_lstm_705_while_cond_4418652___redundant_placeholder1G
Clstm_705_while_lstm_705_while_cond_4418652___redundant_placeholder2G
Clstm_705_while_lstm_705_while_cond_4418652___redundant_placeholder3
lstm_705_while_identity
?
lstm_705/while/LessLesslstm_705_while_placeholder,lstm_705_while_less_lstm_705_strided_slice_1*
T0*
_output_shapes
: ]
lstm_705/while/IdentityIdentitylstm_705/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_705_while_identity lstm_705/while/Identity:output:0*(
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
while_body_4420167
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_706_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_706_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_706_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_706_matmul_readvariableop_resource:	d?G
4while_lstm_cell_706_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_706_biasadd_readvariableop_resource:	???*while/lstm_cell_706/BiasAdd/ReadVariableOp?)while/lstm_cell_706/MatMul/ReadVariableOp?+while/lstm_cell_706/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_706/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_706_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_706/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_706/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_706/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_706_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_706/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_706/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_706/addAddV2$while/lstm_cell_706/MatMul:product:0&while/lstm_cell_706/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_706/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_706_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_706/BiasAddBiasAddwhile/lstm_cell_706/add:z:02while/lstm_cell_706/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_706/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_706/splitSplit,while/lstm_cell_706/split/split_dim:output:0$while/lstm_cell_706/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_706/SigmoidSigmoid"while/lstm_cell_706/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_706/Sigmoid_1Sigmoid"while/lstm_cell_706/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_706/mulMul!while/lstm_cell_706/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_706/ReluRelu"while/lstm_cell_706/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_706/mul_1Mulwhile/lstm_cell_706/Sigmoid:y:0&while/lstm_cell_706/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_706/add_1AddV2while/lstm_cell_706/mul:z:0while/lstm_cell_706/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_706/Sigmoid_2Sigmoid"while/lstm_cell_706/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_706/Relu_1Reluwhile/lstm_cell_706/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_706/mul_2Mul!while/lstm_cell_706/Sigmoid_2:y:0(while/lstm_cell_706/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_706/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_706/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_706/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_706/BiasAdd/ReadVariableOp*^while/lstm_cell_706/MatMul/ReadVariableOp,^while/lstm_cell_706/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_706_biasadd_readvariableop_resource5while_lstm_cell_706_biasadd_readvariableop_resource_0"n
4while_lstm_cell_706_matmul_1_readvariableop_resource6while_lstm_cell_706_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_706_matmul_readvariableop_resource4while_lstm_cell_706_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_706/BiasAdd/ReadVariableOp*while/lstm_cell_706/BiasAdd/ReadVariableOp2V
)while/lstm_cell_706/MatMul/ReadVariableOp)while/lstm_cell_706/MatMul/ReadVariableOp2Z
+while/lstm_cell_706/MatMul_1/ReadVariableOp+while/lstm_cell_706/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_4421069
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_707_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_707_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_707_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_707_matmul_readvariableop_resource:2(F
4while_lstm_cell_707_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_707_biasadd_readvariableop_resource:(??*while/lstm_cell_707/BiasAdd/ReadVariableOp?)while/lstm_cell_707/MatMul/ReadVariableOp?+while/lstm_cell_707/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_707/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_707_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_707/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_707/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_707/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_707_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_707/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_707/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_707/addAddV2$while/lstm_cell_707/MatMul:product:0&while/lstm_cell_707/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_707/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_707_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_707/BiasAddBiasAddwhile/lstm_cell_707/add:z:02while/lstm_cell_707/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_707/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_707/splitSplit,while/lstm_cell_707/split/split_dim:output:0$while/lstm_cell_707/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_707/SigmoidSigmoid"while/lstm_cell_707/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_707/Sigmoid_1Sigmoid"while/lstm_cell_707/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_707/mulMul!while/lstm_cell_707/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_707/ReluRelu"while/lstm_cell_707/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_707/mul_1Mulwhile/lstm_cell_707/Sigmoid:y:0&while/lstm_cell_707/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_707/add_1AddV2while/lstm_cell_707/mul:z:0while/lstm_cell_707/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_707/Sigmoid_2Sigmoid"while/lstm_cell_707/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_707/Relu_1Reluwhile/lstm_cell_707/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_707/mul_2Mul!while/lstm_cell_707/Sigmoid_2:y:0(while/lstm_cell_707/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_707/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_707/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_707/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_707/BiasAdd/ReadVariableOp*^while/lstm_cell_707/MatMul/ReadVariableOp,^while/lstm_cell_707/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_707_biasadd_readvariableop_resource5while_lstm_cell_707_biasadd_readvariableop_resource_0"n
4while_lstm_cell_707_matmul_1_readvariableop_resource6while_lstm_cell_707_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_707_matmul_readvariableop_resource4while_lstm_cell_707_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_707/BiasAdd/ReadVariableOp*while/lstm_cell_707/BiasAdd/ReadVariableOp2V
)while/lstm_cell_707/MatMul/ReadVariableOp)while/lstm_cell_707/MatMul/ReadVariableOp2Z
+while/lstm_cell_707/MatMul_1/ReadVariableOp+while/lstm_cell_707/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*sequential_235_lstm_705_while_cond_4415911L
Hsequential_235_lstm_705_while_sequential_235_lstm_705_while_loop_counterR
Nsequential_235_lstm_705_while_sequential_235_lstm_705_while_maximum_iterations-
)sequential_235_lstm_705_while_placeholder/
+sequential_235_lstm_705_while_placeholder_1/
+sequential_235_lstm_705_while_placeholder_2/
+sequential_235_lstm_705_while_placeholder_3N
Jsequential_235_lstm_705_while_less_sequential_235_lstm_705_strided_slice_1e
asequential_235_lstm_705_while_sequential_235_lstm_705_while_cond_4415911___redundant_placeholder0e
asequential_235_lstm_705_while_sequential_235_lstm_705_while_cond_4415911___redundant_placeholder1e
asequential_235_lstm_705_while_sequential_235_lstm_705_while_cond_4415911___redundant_placeholder2e
asequential_235_lstm_705_while_sequential_235_lstm_705_while_cond_4415911___redundant_placeholder3*
&sequential_235_lstm_705_while_identity
?
"sequential_235/lstm_705/while/LessLess)sequential_235_lstm_705_while_placeholderJsequential_235_lstm_705_while_less_sequential_235_lstm_705_strided_slice_1*
T0*
_output_shapes
: {
&sequential_235/lstm_705/while/IdentityIdentity&sequential_235/lstm_705/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_235_lstm_705_while_identity/sequential_235/lstm_705/while/Identity:output:0*(
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
%__inference_signature_wrapper_4418540
lstm_705_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_705_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
"__inference__wrapped_model_4416280o
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
_user_specified_namelstm_705_input
?T
?
*sequential_235_lstm_705_while_body_4415912L
Hsequential_235_lstm_705_while_sequential_235_lstm_705_while_loop_counterR
Nsequential_235_lstm_705_while_sequential_235_lstm_705_while_maximum_iterations-
)sequential_235_lstm_705_while_placeholder/
+sequential_235_lstm_705_while_placeholder_1/
+sequential_235_lstm_705_while_placeholder_2/
+sequential_235_lstm_705_while_placeholder_3K
Gsequential_235_lstm_705_while_sequential_235_lstm_705_strided_slice_1_0?
?sequential_235_lstm_705_while_tensorarrayv2read_tensorlistgetitem_sequential_235_lstm_705_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_235_lstm_705_while_lstm_cell_705_matmul_readvariableop_resource_0:	?a
Nsequential_235_lstm_705_while_lstm_cell_705_matmul_1_readvariableop_resource_0:	d?\
Msequential_235_lstm_705_while_lstm_cell_705_biasadd_readvariableop_resource_0:	?*
&sequential_235_lstm_705_while_identity,
(sequential_235_lstm_705_while_identity_1,
(sequential_235_lstm_705_while_identity_2,
(sequential_235_lstm_705_while_identity_3,
(sequential_235_lstm_705_while_identity_4,
(sequential_235_lstm_705_while_identity_5I
Esequential_235_lstm_705_while_sequential_235_lstm_705_strided_slice_1?
?sequential_235_lstm_705_while_tensorarrayv2read_tensorlistgetitem_sequential_235_lstm_705_tensorarrayunstack_tensorlistfromtensor]
Jsequential_235_lstm_705_while_lstm_cell_705_matmul_readvariableop_resource:	?_
Lsequential_235_lstm_705_while_lstm_cell_705_matmul_1_readvariableop_resource:	d?Z
Ksequential_235_lstm_705_while_lstm_cell_705_biasadd_readvariableop_resource:	???Bsequential_235/lstm_705/while/lstm_cell_705/BiasAdd/ReadVariableOp?Asequential_235/lstm_705/while/lstm_cell_705/MatMul/ReadVariableOp?Csequential_235/lstm_705/while/lstm_cell_705/MatMul_1/ReadVariableOp?
Osequential_235/lstm_705/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
Asequential_235/lstm_705/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_235_lstm_705_while_tensorarrayv2read_tensorlistgetitem_sequential_235_lstm_705_tensorarrayunstack_tensorlistfromtensor_0)sequential_235_lstm_705_while_placeholderXsequential_235/lstm_705/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
Asequential_235/lstm_705/while/lstm_cell_705/MatMul/ReadVariableOpReadVariableOpLsequential_235_lstm_705_while_lstm_cell_705_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
2sequential_235/lstm_705/while/lstm_cell_705/MatMulMatMulHsequential_235/lstm_705/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_235/lstm_705/while/lstm_cell_705/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_235/lstm_705/while/lstm_cell_705/MatMul_1/ReadVariableOpReadVariableOpNsequential_235_lstm_705_while_lstm_cell_705_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
4sequential_235/lstm_705/while/lstm_cell_705/MatMul_1MatMul+sequential_235_lstm_705_while_placeholder_2Ksequential_235/lstm_705/while/lstm_cell_705/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_235/lstm_705/while/lstm_cell_705/addAddV2<sequential_235/lstm_705/while/lstm_cell_705/MatMul:product:0>sequential_235/lstm_705/while/lstm_cell_705/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_235/lstm_705/while/lstm_cell_705/BiasAdd/ReadVariableOpReadVariableOpMsequential_235_lstm_705_while_lstm_cell_705_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_235/lstm_705/while/lstm_cell_705/BiasAddBiasAdd3sequential_235/lstm_705/while/lstm_cell_705/add:z:0Jsequential_235/lstm_705/while/lstm_cell_705/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_235/lstm_705/while/lstm_cell_705/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_235/lstm_705/while/lstm_cell_705/splitSplitDsequential_235/lstm_705/while/lstm_cell_705/split/split_dim:output:0<sequential_235/lstm_705/while/lstm_cell_705/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
3sequential_235/lstm_705/while/lstm_cell_705/SigmoidSigmoid:sequential_235/lstm_705/while/lstm_cell_705/split:output:0*
T0*'
_output_shapes
:?????????d?
5sequential_235/lstm_705/while/lstm_cell_705/Sigmoid_1Sigmoid:sequential_235/lstm_705/while/lstm_cell_705/split:output:1*
T0*'
_output_shapes
:?????????d?
/sequential_235/lstm_705/while/lstm_cell_705/mulMul9sequential_235/lstm_705/while/lstm_cell_705/Sigmoid_1:y:0+sequential_235_lstm_705_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
0sequential_235/lstm_705/while/lstm_cell_705/ReluRelu:sequential_235/lstm_705/while/lstm_cell_705/split:output:2*
T0*'
_output_shapes
:?????????d?
1sequential_235/lstm_705/while/lstm_cell_705/mul_1Mul7sequential_235/lstm_705/while/lstm_cell_705/Sigmoid:y:0>sequential_235/lstm_705/while/lstm_cell_705/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
1sequential_235/lstm_705/while/lstm_cell_705/add_1AddV23sequential_235/lstm_705/while/lstm_cell_705/mul:z:05sequential_235/lstm_705/while/lstm_cell_705/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
5sequential_235/lstm_705/while/lstm_cell_705/Sigmoid_2Sigmoid:sequential_235/lstm_705/while/lstm_cell_705/split:output:3*
T0*'
_output_shapes
:?????????d?
2sequential_235/lstm_705/while/lstm_cell_705/Relu_1Relu5sequential_235/lstm_705/while/lstm_cell_705/add_1:z:0*
T0*'
_output_shapes
:?????????d?
1sequential_235/lstm_705/while/lstm_cell_705/mul_2Mul9sequential_235/lstm_705/while/lstm_cell_705/Sigmoid_2:y:0@sequential_235/lstm_705/while/lstm_cell_705/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
Bsequential_235/lstm_705/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_235_lstm_705_while_placeholder_1)sequential_235_lstm_705_while_placeholder5sequential_235/lstm_705/while/lstm_cell_705/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_235/lstm_705/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_235/lstm_705/while/addAddV2)sequential_235_lstm_705_while_placeholder,sequential_235/lstm_705/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_235/lstm_705/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_235/lstm_705/while/add_1AddV2Hsequential_235_lstm_705_while_sequential_235_lstm_705_while_loop_counter.sequential_235/lstm_705/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_235/lstm_705/while/IdentityIdentity'sequential_235/lstm_705/while/add_1:z:0#^sequential_235/lstm_705/while/NoOp*
T0*
_output_shapes
: ?
(sequential_235/lstm_705/while/Identity_1IdentityNsequential_235_lstm_705_while_sequential_235_lstm_705_while_maximum_iterations#^sequential_235/lstm_705/while/NoOp*
T0*
_output_shapes
: ?
(sequential_235/lstm_705/while/Identity_2Identity%sequential_235/lstm_705/while/add:z:0#^sequential_235/lstm_705/while/NoOp*
T0*
_output_shapes
: ?
(sequential_235/lstm_705/while/Identity_3IdentityRsequential_235/lstm_705/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_235/lstm_705/while/NoOp*
T0*
_output_shapes
: ?
(sequential_235/lstm_705/while/Identity_4Identity5sequential_235/lstm_705/while/lstm_cell_705/mul_2:z:0#^sequential_235/lstm_705/while/NoOp*
T0*'
_output_shapes
:?????????d?
(sequential_235/lstm_705/while/Identity_5Identity5sequential_235/lstm_705/while/lstm_cell_705/add_1:z:0#^sequential_235/lstm_705/while/NoOp*
T0*'
_output_shapes
:?????????d?
"sequential_235/lstm_705/while/NoOpNoOpC^sequential_235/lstm_705/while/lstm_cell_705/BiasAdd/ReadVariableOpB^sequential_235/lstm_705/while/lstm_cell_705/MatMul/ReadVariableOpD^sequential_235/lstm_705/while/lstm_cell_705/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_235_lstm_705_while_identity/sequential_235/lstm_705/while/Identity:output:0"]
(sequential_235_lstm_705_while_identity_11sequential_235/lstm_705/while/Identity_1:output:0"]
(sequential_235_lstm_705_while_identity_21sequential_235/lstm_705/while/Identity_2:output:0"]
(sequential_235_lstm_705_while_identity_31sequential_235/lstm_705/while/Identity_3:output:0"]
(sequential_235_lstm_705_while_identity_41sequential_235/lstm_705/while/Identity_4:output:0"]
(sequential_235_lstm_705_while_identity_51sequential_235/lstm_705/while/Identity_5:output:0"?
Ksequential_235_lstm_705_while_lstm_cell_705_biasadd_readvariableop_resourceMsequential_235_lstm_705_while_lstm_cell_705_biasadd_readvariableop_resource_0"?
Lsequential_235_lstm_705_while_lstm_cell_705_matmul_1_readvariableop_resourceNsequential_235_lstm_705_while_lstm_cell_705_matmul_1_readvariableop_resource_0"?
Jsequential_235_lstm_705_while_lstm_cell_705_matmul_readvariableop_resourceLsequential_235_lstm_705_while_lstm_cell_705_matmul_readvariableop_resource_0"?
Esequential_235_lstm_705_while_sequential_235_lstm_705_strided_slice_1Gsequential_235_lstm_705_while_sequential_235_lstm_705_strided_slice_1_0"?
?sequential_235_lstm_705_while_tensorarrayv2read_tensorlistgetitem_sequential_235_lstm_705_tensorarrayunstack_tensorlistfromtensor?sequential_235_lstm_705_while_tensorarrayv2read_tensorlistgetitem_sequential_235_lstm_705_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2?
Bsequential_235/lstm_705/while/lstm_cell_705/BiasAdd/ReadVariableOpBsequential_235/lstm_705/while/lstm_cell_705/BiasAdd/ReadVariableOp2?
Asequential_235/lstm_705/while/lstm_cell_705/MatMul/ReadVariableOpAsequential_235/lstm_705/while/lstm_cell_705/MatMul/ReadVariableOp2?
Csequential_235/lstm_705/while/lstm_cell_705/MatMul_1/ReadVariableOpCsequential_235/lstm_705/while/lstm_cell_705/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_705_layer_call_and_return_conditional_losses_4416347

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
?C
?

lstm_706_while_body_4419219.
*lstm_706_while_lstm_706_while_loop_counter4
0lstm_706_while_lstm_706_while_maximum_iterations
lstm_706_while_placeholder 
lstm_706_while_placeholder_1 
lstm_706_while_placeholder_2 
lstm_706_while_placeholder_3-
)lstm_706_while_lstm_706_strided_slice_1_0i
elstm_706_while_tensorarrayv2read_tensorlistgetitem_lstm_706_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_706_while_lstm_cell_706_matmul_readvariableop_resource_0:	d?R
?lstm_706_while_lstm_cell_706_matmul_1_readvariableop_resource_0:	2?M
>lstm_706_while_lstm_cell_706_biasadd_readvariableop_resource_0:	?
lstm_706_while_identity
lstm_706_while_identity_1
lstm_706_while_identity_2
lstm_706_while_identity_3
lstm_706_while_identity_4
lstm_706_while_identity_5+
'lstm_706_while_lstm_706_strided_slice_1g
clstm_706_while_tensorarrayv2read_tensorlistgetitem_lstm_706_tensorarrayunstack_tensorlistfromtensorN
;lstm_706_while_lstm_cell_706_matmul_readvariableop_resource:	d?P
=lstm_706_while_lstm_cell_706_matmul_1_readvariableop_resource:	2?K
<lstm_706_while_lstm_cell_706_biasadd_readvariableop_resource:	???3lstm_706/while/lstm_cell_706/BiasAdd/ReadVariableOp?2lstm_706/while/lstm_cell_706/MatMul/ReadVariableOp?4lstm_706/while/lstm_cell_706/MatMul_1/ReadVariableOp?
@lstm_706/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_706/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_706_while_tensorarrayv2read_tensorlistgetitem_lstm_706_tensorarrayunstack_tensorlistfromtensor_0lstm_706_while_placeholderIlstm_706/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_706/while/lstm_cell_706/MatMul/ReadVariableOpReadVariableOp=lstm_706_while_lstm_cell_706_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_706/while/lstm_cell_706/MatMulMatMul9lstm_706/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_706/while/lstm_cell_706/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_706/while/lstm_cell_706/MatMul_1/ReadVariableOpReadVariableOp?lstm_706_while_lstm_cell_706_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_706/while/lstm_cell_706/MatMul_1MatMullstm_706_while_placeholder_2<lstm_706/while/lstm_cell_706/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_706/while/lstm_cell_706/addAddV2-lstm_706/while/lstm_cell_706/MatMul:product:0/lstm_706/while/lstm_cell_706/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_706/while/lstm_cell_706/BiasAdd/ReadVariableOpReadVariableOp>lstm_706_while_lstm_cell_706_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_706/while/lstm_cell_706/BiasAddBiasAdd$lstm_706/while/lstm_cell_706/add:z:0;lstm_706/while/lstm_cell_706/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_706/while/lstm_cell_706/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_706/while/lstm_cell_706/splitSplit5lstm_706/while/lstm_cell_706/split/split_dim:output:0-lstm_706/while/lstm_cell_706/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_706/while/lstm_cell_706/SigmoidSigmoid+lstm_706/while/lstm_cell_706/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_706/while/lstm_cell_706/Sigmoid_1Sigmoid+lstm_706/while/lstm_cell_706/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_706/while/lstm_cell_706/mulMul*lstm_706/while/lstm_cell_706/Sigmoid_1:y:0lstm_706_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_706/while/lstm_cell_706/ReluRelu+lstm_706/while/lstm_cell_706/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_706/while/lstm_cell_706/mul_1Mul(lstm_706/while/lstm_cell_706/Sigmoid:y:0/lstm_706/while/lstm_cell_706/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_706/while/lstm_cell_706/add_1AddV2$lstm_706/while/lstm_cell_706/mul:z:0&lstm_706/while/lstm_cell_706/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_706/while/lstm_cell_706/Sigmoid_2Sigmoid+lstm_706/while/lstm_cell_706/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_706/while/lstm_cell_706/Relu_1Relu&lstm_706/while/lstm_cell_706/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_706/while/lstm_cell_706/mul_2Mul*lstm_706/while/lstm_cell_706/Sigmoid_2:y:01lstm_706/while/lstm_cell_706/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_706/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_706_while_placeholder_1lstm_706_while_placeholder&lstm_706/while/lstm_cell_706/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_706/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_706/while/addAddV2lstm_706_while_placeholderlstm_706/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_706/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_706/while/add_1AddV2*lstm_706_while_lstm_706_while_loop_counterlstm_706/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_706/while/IdentityIdentitylstm_706/while/add_1:z:0^lstm_706/while/NoOp*
T0*
_output_shapes
: ?
lstm_706/while/Identity_1Identity0lstm_706_while_lstm_706_while_maximum_iterations^lstm_706/while/NoOp*
T0*
_output_shapes
: t
lstm_706/while/Identity_2Identitylstm_706/while/add:z:0^lstm_706/while/NoOp*
T0*
_output_shapes
: ?
lstm_706/while/Identity_3IdentityClstm_706/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_706/while/NoOp*
T0*
_output_shapes
: ?
lstm_706/while/Identity_4Identity&lstm_706/while/lstm_cell_706/mul_2:z:0^lstm_706/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_706/while/Identity_5Identity&lstm_706/while/lstm_cell_706/add_1:z:0^lstm_706/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_706/while/NoOpNoOp4^lstm_706/while/lstm_cell_706/BiasAdd/ReadVariableOp3^lstm_706/while/lstm_cell_706/MatMul/ReadVariableOp5^lstm_706/while/lstm_cell_706/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_706_while_identity lstm_706/while/Identity:output:0"?
lstm_706_while_identity_1"lstm_706/while/Identity_1:output:0"?
lstm_706_while_identity_2"lstm_706/while/Identity_2:output:0"?
lstm_706_while_identity_3"lstm_706/while/Identity_3:output:0"?
lstm_706_while_identity_4"lstm_706/while/Identity_4:output:0"?
lstm_706_while_identity_5"lstm_706/while/Identity_5:output:0"T
'lstm_706_while_lstm_706_strided_slice_1)lstm_706_while_lstm_706_strided_slice_1_0"~
<lstm_706_while_lstm_cell_706_biasadd_readvariableop_resource>lstm_706_while_lstm_cell_706_biasadd_readvariableop_resource_0"?
=lstm_706_while_lstm_cell_706_matmul_1_readvariableop_resource?lstm_706_while_lstm_cell_706_matmul_1_readvariableop_resource_0"|
;lstm_706_while_lstm_cell_706_matmul_readvariableop_resource=lstm_706_while_lstm_cell_706_matmul_readvariableop_resource_0"?
clstm_706_while_tensorarrayv2read_tensorlistgetitem_lstm_706_tensorarrayunstack_tensorlistfromtensorelstm_706_while_tensorarrayv2read_tensorlistgetitem_lstm_706_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_706/while/lstm_cell_706/BiasAdd/ReadVariableOp3lstm_706/while/lstm_cell_706/BiasAdd/ReadVariableOp2h
2lstm_706/while/lstm_cell_706/MatMul/ReadVariableOp2lstm_706/while/lstm_cell_706/MatMul/ReadVariableOp2l
4lstm_706/while/lstm_cell_706/MatMul_1/ReadVariableOp4lstm_706/while/lstm_cell_706/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_4417695
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_707_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_707_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_707_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_707_matmul_readvariableop_resource:2(F
4while_lstm_cell_707_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_707_biasadd_readvariableop_resource:(??*while/lstm_cell_707/BiasAdd/ReadVariableOp?)while/lstm_cell_707/MatMul/ReadVariableOp?+while/lstm_cell_707/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_707/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_707_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_707/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_707/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_707/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_707_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_707/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_707/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_707/addAddV2$while/lstm_cell_707/MatMul:product:0&while/lstm_cell_707/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_707/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_707_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_707/BiasAddBiasAddwhile/lstm_cell_707/add:z:02while/lstm_cell_707/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_707/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_707/splitSplit,while/lstm_cell_707/split/split_dim:output:0$while/lstm_cell_707/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_707/SigmoidSigmoid"while/lstm_cell_707/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_707/Sigmoid_1Sigmoid"while/lstm_cell_707/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_707/mulMul!while/lstm_cell_707/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_707/ReluRelu"while/lstm_cell_707/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_707/mul_1Mulwhile/lstm_cell_707/Sigmoid:y:0&while/lstm_cell_707/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_707/add_1AddV2while/lstm_cell_707/mul:z:0while/lstm_cell_707/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_707/Sigmoid_2Sigmoid"while/lstm_cell_707/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_707/Relu_1Reluwhile/lstm_cell_707/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_707/mul_2Mul!while/lstm_cell_707/Sigmoid_2:y:0(while/lstm_cell_707/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_707/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_707/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_707/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_707/BiasAdd/ReadVariableOp*^while/lstm_cell_707/MatMul/ReadVariableOp,^while/lstm_cell_707/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_707_biasadd_readvariableop_resource5while_lstm_cell_707_biasadd_readvariableop_resource_0"n
4while_lstm_cell_707_matmul_1_readvariableop_resource6while_lstm_cell_707_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_707_matmul_readvariableop_resource4while_lstm_cell_707_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_707/BiasAdd/ReadVariableOp*while/lstm_cell_707/BiasAdd/ReadVariableOp2V
)while/lstm_cell_707/MatMul/ReadVariableOp)while/lstm_cell_707/MatMul/ReadVariableOp2Z
+while/lstm_cell_707/MatMul_1/ReadVariableOp+while/lstm_cell_707/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*sequential_235_lstm_706_while_body_4416051L
Hsequential_235_lstm_706_while_sequential_235_lstm_706_while_loop_counterR
Nsequential_235_lstm_706_while_sequential_235_lstm_706_while_maximum_iterations-
)sequential_235_lstm_706_while_placeholder/
+sequential_235_lstm_706_while_placeholder_1/
+sequential_235_lstm_706_while_placeholder_2/
+sequential_235_lstm_706_while_placeholder_3K
Gsequential_235_lstm_706_while_sequential_235_lstm_706_strided_slice_1_0?
?sequential_235_lstm_706_while_tensorarrayv2read_tensorlistgetitem_sequential_235_lstm_706_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_235_lstm_706_while_lstm_cell_706_matmul_readvariableop_resource_0:	d?a
Nsequential_235_lstm_706_while_lstm_cell_706_matmul_1_readvariableop_resource_0:	2?\
Msequential_235_lstm_706_while_lstm_cell_706_biasadd_readvariableop_resource_0:	?*
&sequential_235_lstm_706_while_identity,
(sequential_235_lstm_706_while_identity_1,
(sequential_235_lstm_706_while_identity_2,
(sequential_235_lstm_706_while_identity_3,
(sequential_235_lstm_706_while_identity_4,
(sequential_235_lstm_706_while_identity_5I
Esequential_235_lstm_706_while_sequential_235_lstm_706_strided_slice_1?
?sequential_235_lstm_706_while_tensorarrayv2read_tensorlistgetitem_sequential_235_lstm_706_tensorarrayunstack_tensorlistfromtensor]
Jsequential_235_lstm_706_while_lstm_cell_706_matmul_readvariableop_resource:	d?_
Lsequential_235_lstm_706_while_lstm_cell_706_matmul_1_readvariableop_resource:	2?Z
Ksequential_235_lstm_706_while_lstm_cell_706_biasadd_readvariableop_resource:	???Bsequential_235/lstm_706/while/lstm_cell_706/BiasAdd/ReadVariableOp?Asequential_235/lstm_706/while/lstm_cell_706/MatMul/ReadVariableOp?Csequential_235/lstm_706/while/lstm_cell_706/MatMul_1/ReadVariableOp?
Osequential_235/lstm_706/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
Asequential_235/lstm_706/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_235_lstm_706_while_tensorarrayv2read_tensorlistgetitem_sequential_235_lstm_706_tensorarrayunstack_tensorlistfromtensor_0)sequential_235_lstm_706_while_placeholderXsequential_235/lstm_706/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
Asequential_235/lstm_706/while/lstm_cell_706/MatMul/ReadVariableOpReadVariableOpLsequential_235_lstm_706_while_lstm_cell_706_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
2sequential_235/lstm_706/while/lstm_cell_706/MatMulMatMulHsequential_235/lstm_706/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_235/lstm_706/while/lstm_cell_706/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_235/lstm_706/while/lstm_cell_706/MatMul_1/ReadVariableOpReadVariableOpNsequential_235_lstm_706_while_lstm_cell_706_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
4sequential_235/lstm_706/while/lstm_cell_706/MatMul_1MatMul+sequential_235_lstm_706_while_placeholder_2Ksequential_235/lstm_706/while/lstm_cell_706/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_235/lstm_706/while/lstm_cell_706/addAddV2<sequential_235/lstm_706/while/lstm_cell_706/MatMul:product:0>sequential_235/lstm_706/while/lstm_cell_706/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_235/lstm_706/while/lstm_cell_706/BiasAdd/ReadVariableOpReadVariableOpMsequential_235_lstm_706_while_lstm_cell_706_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_235/lstm_706/while/lstm_cell_706/BiasAddBiasAdd3sequential_235/lstm_706/while/lstm_cell_706/add:z:0Jsequential_235/lstm_706/while/lstm_cell_706/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_235/lstm_706/while/lstm_cell_706/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_235/lstm_706/while/lstm_cell_706/splitSplitDsequential_235/lstm_706/while/lstm_cell_706/split/split_dim:output:0<sequential_235/lstm_706/while/lstm_cell_706/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
3sequential_235/lstm_706/while/lstm_cell_706/SigmoidSigmoid:sequential_235/lstm_706/while/lstm_cell_706/split:output:0*
T0*'
_output_shapes
:?????????2?
5sequential_235/lstm_706/while/lstm_cell_706/Sigmoid_1Sigmoid:sequential_235/lstm_706/while/lstm_cell_706/split:output:1*
T0*'
_output_shapes
:?????????2?
/sequential_235/lstm_706/while/lstm_cell_706/mulMul9sequential_235/lstm_706/while/lstm_cell_706/Sigmoid_1:y:0+sequential_235_lstm_706_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
0sequential_235/lstm_706/while/lstm_cell_706/ReluRelu:sequential_235/lstm_706/while/lstm_cell_706/split:output:2*
T0*'
_output_shapes
:?????????2?
1sequential_235/lstm_706/while/lstm_cell_706/mul_1Mul7sequential_235/lstm_706/while/lstm_cell_706/Sigmoid:y:0>sequential_235/lstm_706/while/lstm_cell_706/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
1sequential_235/lstm_706/while/lstm_cell_706/add_1AddV23sequential_235/lstm_706/while/lstm_cell_706/mul:z:05sequential_235/lstm_706/while/lstm_cell_706/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
5sequential_235/lstm_706/while/lstm_cell_706/Sigmoid_2Sigmoid:sequential_235/lstm_706/while/lstm_cell_706/split:output:3*
T0*'
_output_shapes
:?????????2?
2sequential_235/lstm_706/while/lstm_cell_706/Relu_1Relu5sequential_235/lstm_706/while/lstm_cell_706/add_1:z:0*
T0*'
_output_shapes
:?????????2?
1sequential_235/lstm_706/while/lstm_cell_706/mul_2Mul9sequential_235/lstm_706/while/lstm_cell_706/Sigmoid_2:y:0@sequential_235/lstm_706/while/lstm_cell_706/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
Bsequential_235/lstm_706/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_235_lstm_706_while_placeholder_1)sequential_235_lstm_706_while_placeholder5sequential_235/lstm_706/while/lstm_cell_706/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_235/lstm_706/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_235/lstm_706/while/addAddV2)sequential_235_lstm_706_while_placeholder,sequential_235/lstm_706/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_235/lstm_706/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_235/lstm_706/while/add_1AddV2Hsequential_235_lstm_706_while_sequential_235_lstm_706_while_loop_counter.sequential_235/lstm_706/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_235/lstm_706/while/IdentityIdentity'sequential_235/lstm_706/while/add_1:z:0#^sequential_235/lstm_706/while/NoOp*
T0*
_output_shapes
: ?
(sequential_235/lstm_706/while/Identity_1IdentityNsequential_235_lstm_706_while_sequential_235_lstm_706_while_maximum_iterations#^sequential_235/lstm_706/while/NoOp*
T0*
_output_shapes
: ?
(sequential_235/lstm_706/while/Identity_2Identity%sequential_235/lstm_706/while/add:z:0#^sequential_235/lstm_706/while/NoOp*
T0*
_output_shapes
: ?
(sequential_235/lstm_706/while/Identity_3IdentityRsequential_235/lstm_706/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_235/lstm_706/while/NoOp*
T0*
_output_shapes
: ?
(sequential_235/lstm_706/while/Identity_4Identity5sequential_235/lstm_706/while/lstm_cell_706/mul_2:z:0#^sequential_235/lstm_706/while/NoOp*
T0*'
_output_shapes
:?????????2?
(sequential_235/lstm_706/while/Identity_5Identity5sequential_235/lstm_706/while/lstm_cell_706/add_1:z:0#^sequential_235/lstm_706/while/NoOp*
T0*'
_output_shapes
:?????????2?
"sequential_235/lstm_706/while/NoOpNoOpC^sequential_235/lstm_706/while/lstm_cell_706/BiasAdd/ReadVariableOpB^sequential_235/lstm_706/while/lstm_cell_706/MatMul/ReadVariableOpD^sequential_235/lstm_706/while/lstm_cell_706/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_235_lstm_706_while_identity/sequential_235/lstm_706/while/Identity:output:0"]
(sequential_235_lstm_706_while_identity_11sequential_235/lstm_706/while/Identity_1:output:0"]
(sequential_235_lstm_706_while_identity_21sequential_235/lstm_706/while/Identity_2:output:0"]
(sequential_235_lstm_706_while_identity_31sequential_235/lstm_706/while/Identity_3:output:0"]
(sequential_235_lstm_706_while_identity_41sequential_235/lstm_706/while/Identity_4:output:0"]
(sequential_235_lstm_706_while_identity_51sequential_235/lstm_706/while/Identity_5:output:0"?
Ksequential_235_lstm_706_while_lstm_cell_706_biasadd_readvariableop_resourceMsequential_235_lstm_706_while_lstm_cell_706_biasadd_readvariableop_resource_0"?
Lsequential_235_lstm_706_while_lstm_cell_706_matmul_1_readvariableop_resourceNsequential_235_lstm_706_while_lstm_cell_706_matmul_1_readvariableop_resource_0"?
Jsequential_235_lstm_706_while_lstm_cell_706_matmul_readvariableop_resourceLsequential_235_lstm_706_while_lstm_cell_706_matmul_readvariableop_resource_0"?
Esequential_235_lstm_706_while_sequential_235_lstm_706_strided_slice_1Gsequential_235_lstm_706_while_sequential_235_lstm_706_strided_slice_1_0"?
?sequential_235_lstm_706_while_tensorarrayv2read_tensorlistgetitem_sequential_235_lstm_706_tensorarrayunstack_tensorlistfromtensor?sequential_235_lstm_706_while_tensorarrayv2read_tensorlistgetitem_sequential_235_lstm_706_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2?
Bsequential_235/lstm_706/while/lstm_cell_706/BiasAdd/ReadVariableOpBsequential_235/lstm_706/while/lstm_cell_706/BiasAdd/ReadVariableOp2?
Asequential_235/lstm_706/while/lstm_cell_706/MatMul/ReadVariableOpAsequential_235/lstm_706/while/lstm_cell_706/MatMul/ReadVariableOp2?
Csequential_235/lstm_706/while/lstm_cell_706/MatMul_1/ReadVariableOpCsequential_235/lstm_706/while/lstm_cell_706/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_4416552
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_705_4416576_0:	?0
while_lstm_cell_705_4416578_0:	d?,
while_lstm_cell_705_4416580_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_705_4416576:	?.
while_lstm_cell_705_4416578:	d?*
while_lstm_cell_705_4416580:	???+while/lstm_cell_705/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_705/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_705_4416576_0while_lstm_cell_705_4416578_0while_lstm_cell_705_4416580_0*
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
J__inference_lstm_cell_705_layer_call_and_return_conditional_losses_4416493?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_705/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_705/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_705/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_705/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_705_4416576while_lstm_cell_705_4416576_0"<
while_lstm_cell_705_4416578while_lstm_cell_705_4416578_0"<
while_lstm_cell_705_4416580while_lstm_cell_705_4416580_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_705/StatefulPartitionedCall+while/lstm_cell_705/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_705_layer_call_fn_4419481

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
E__inference_lstm_705_layer_call_and_return_conditional_losses_4417479s
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
while_cond_4421068
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4421068___redundant_placeholder05
1while_while_cond_4421068___redundant_placeholder15
1while_while_cond_4421068___redundant_placeholder25
1while_while_cond_4421068___redundant_placeholder3
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
J__inference_lstm_cell_705_layer_call_and_return_conditional_losses_4421381

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
while_body_4417395
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_705_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_705_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_705_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_705_matmul_readvariableop_resource:	?G
4while_lstm_cell_705_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_705_biasadd_readvariableop_resource:	???*while/lstm_cell_705/BiasAdd/ReadVariableOp?)while/lstm_cell_705/MatMul/ReadVariableOp?+while/lstm_cell_705/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_705/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_705_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_705/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_705/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_705/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_705_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_705/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_705/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_705/addAddV2$while/lstm_cell_705/MatMul:product:0&while/lstm_cell_705/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_705/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_705_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_705/BiasAddBiasAddwhile/lstm_cell_705/add:z:02while/lstm_cell_705/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_705/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_705/splitSplit,while/lstm_cell_705/split/split_dim:output:0$while/lstm_cell_705/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_705/SigmoidSigmoid"while/lstm_cell_705/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_705/Sigmoid_1Sigmoid"while/lstm_cell_705/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_705/mulMul!while/lstm_cell_705/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_705/ReluRelu"while/lstm_cell_705/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_705/mul_1Mulwhile/lstm_cell_705/Sigmoid:y:0&while/lstm_cell_705/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_705/add_1AddV2while/lstm_cell_705/mul:z:0while/lstm_cell_705/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_705/Sigmoid_2Sigmoid"while/lstm_cell_705/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_705/Relu_1Reluwhile/lstm_cell_705/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_705/mul_2Mul!while/lstm_cell_705/Sigmoid_2:y:0(while/lstm_cell_705/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_705/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_705/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_705/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_705/BiasAdd/ReadVariableOp*^while/lstm_cell_705/MatMul/ReadVariableOp,^while/lstm_cell_705/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_705_biasadd_readvariableop_resource5while_lstm_cell_705_biasadd_readvariableop_resource_0"n
4while_lstm_cell_705_matmul_1_readvariableop_resource6while_lstm_cell_705_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_705_matmul_readvariableop_resource4while_lstm_cell_705_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_705/BiasAdd/ReadVariableOp*while/lstm_cell_705/BiasAdd/ReadVariableOp2V
)while/lstm_cell_705/MatMul/ReadVariableOp)while/lstm_cell_705/MatMul/ReadVariableOp2Z
+while/lstm_cell_705/MatMul_1/ReadVariableOp+while/lstm_cell_705/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_4420782
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4420782___redundant_placeholder05
1while_while_cond_4420782___redundant_placeholder15
1while_while_cond_4420782___redundant_placeholder25
1while_while_cond_4420782___redundant_placeholder3
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
0__inference_sequential_235_layer_call_fn_4417829
lstm_705_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_705_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_235_layer_call_and_return_conditional_losses_4417804o
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
_user_specified_namelstm_705_input
?
?
J__inference_lstm_cell_707_layer_call_and_return_conditional_losses_4421609

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
?
/__inference_lstm_cell_706_layer_call_fn_4421430

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
J__inference_lstm_cell_706_layer_call_and_return_conditional_losses_4416697o
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
F__inference_dense_235_layer_call_and_return_conditional_losses_4421315

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
while_cond_4417694
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4417694___redundant_placeholder05
1while_while_cond_4417694___redundant_placeholder15
1while_while_cond_4417694___redundant_placeholder25
1while_while_cond_4417694___redundant_placeholder3
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
lstm_707_while_cond_4418930.
*lstm_707_while_lstm_707_while_loop_counter4
0lstm_707_while_lstm_707_while_maximum_iterations
lstm_707_while_placeholder 
lstm_707_while_placeholder_1 
lstm_707_while_placeholder_2 
lstm_707_while_placeholder_30
,lstm_707_while_less_lstm_707_strided_slice_1G
Clstm_707_while_lstm_707_while_cond_4418930___redundant_placeholder0G
Clstm_707_while_lstm_707_while_cond_4418930___redundant_placeholder1G
Clstm_707_while_lstm_707_while_cond_4418930___redundant_placeholder2G
Clstm_707_while_lstm_707_while_cond_4418930___redundant_placeholder3
lstm_707_while_identity
?
lstm_707/while/LessLesslstm_707_while_placeholder,lstm_707_while_less_lstm_707_strided_slice_1*
T0*
_output_shapes
: ]
lstm_707/while/IdentityIdentitylstm_707/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_707_while_identity lstm_707/while/Identity:output:0*(
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
E__inference_lstm_706_layer_call_and_return_conditional_losses_4416971

inputs(
lstm_cell_706_4416889:	d?(
lstm_cell_706_4416891:	2?$
lstm_cell_706_4416893:	?
identity??%lstm_cell_706/StatefulPartitionedCall?while;
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
%lstm_cell_706/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_706_4416889lstm_cell_706_4416891lstm_cell_706_4416893*
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
J__inference_lstm_cell_706_layer_call_and_return_conditional_losses_4416843n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_706_4416889lstm_cell_706_4416891lstm_cell_706_4416893*
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
while_body_4416902*
condR
while_cond_4416901*K
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
NoOpNoOp&^lstm_cell_706/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_706/StatefulPartitionedCall%lstm_cell_706/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?
?
while_cond_4417910
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4417910___redundant_placeholder05
1while_while_cond_4417910___redundant_placeholder15
1while_while_cond_4417910___redundant_placeholder25
1while_while_cond_4417910___redundant_placeholder3
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
E__inference_lstm_707_layer_call_and_return_conditional_losses_4420867
inputs_0>
,lstm_cell_707_matmul_readvariableop_resource:2(@
.lstm_cell_707_matmul_1_readvariableop_resource:
(;
-lstm_cell_707_biasadd_readvariableop_resource:(
identity??$lstm_cell_707/BiasAdd/ReadVariableOp?#lstm_cell_707/MatMul/ReadVariableOp?%lstm_cell_707/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_707/MatMul/ReadVariableOpReadVariableOp,lstm_cell_707_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_707/MatMulMatMulstrided_slice_2:output:0+lstm_cell_707/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_707/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_707_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_707/MatMul_1MatMulzeros:output:0-lstm_cell_707/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_707/addAddV2lstm_cell_707/MatMul:product:0 lstm_cell_707/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_707/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_707_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_707/BiasAddBiasAddlstm_cell_707/add:z:0,lstm_cell_707/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_707/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_707/splitSplit&lstm_cell_707/split/split_dim:output:0lstm_cell_707/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_707/SigmoidSigmoidlstm_cell_707/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_707/Sigmoid_1Sigmoidlstm_cell_707/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_707/mulMullstm_cell_707/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_707/ReluRelulstm_cell_707/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_707/mul_1Mullstm_cell_707/Sigmoid:y:0 lstm_cell_707/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_707/add_1AddV2lstm_cell_707/mul:z:0lstm_cell_707/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_707/Sigmoid_2Sigmoidlstm_cell_707/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_707/Relu_1Relulstm_cell_707/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_707/mul_2Mullstm_cell_707/Sigmoid_2:y:0"lstm_cell_707/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_707_matmul_readvariableop_resource.lstm_cell_707_matmul_1_readvariableop_resource-lstm_cell_707_biasadd_readvariableop_resource*
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
while_body_4420783*
condR
while_cond_4420782*K
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
NoOpNoOp%^lstm_cell_707/BiasAdd/ReadVariableOp$^lstm_cell_707/MatMul/ReadVariableOp&^lstm_cell_707/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_707/BiasAdd/ReadVariableOp$lstm_cell_707/BiasAdd/ReadVariableOp2J
#lstm_cell_707/MatMul/ReadVariableOp#lstm_cell_707/MatMul/ReadVariableOp2N
%lstm_cell_707/MatMul_1/ReadVariableOp%lstm_cell_707/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?
?
J__inference_lstm_cell_707_layer_call_and_return_conditional_losses_4417047

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

?
0__inference_sequential_235_layer_call_fn_4418567

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
K__inference_sequential_235_layer_call_and_return_conditional_losses_4417804o
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
E__inference_lstm_706_layer_call_and_return_conditional_losses_4420251
inputs_0?
,lstm_cell_706_matmul_readvariableop_resource:	d?A
.lstm_cell_706_matmul_1_readvariableop_resource:	2?<
-lstm_cell_706_biasadd_readvariableop_resource:	?
identity??$lstm_cell_706/BiasAdd/ReadVariableOp?#lstm_cell_706/MatMul/ReadVariableOp?%lstm_cell_706/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_706/MatMul/ReadVariableOpReadVariableOp,lstm_cell_706_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_706/MatMulMatMulstrided_slice_2:output:0+lstm_cell_706/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_706/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_706_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_706/MatMul_1MatMulzeros:output:0-lstm_cell_706/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_706/addAddV2lstm_cell_706/MatMul:product:0 lstm_cell_706/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_706/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_706_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_706/BiasAddBiasAddlstm_cell_706/add:z:0,lstm_cell_706/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_706/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_706/splitSplit&lstm_cell_706/split/split_dim:output:0lstm_cell_706/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_706/SigmoidSigmoidlstm_cell_706/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_706/Sigmoid_1Sigmoidlstm_cell_706/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_706/mulMullstm_cell_706/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_706/ReluRelulstm_cell_706/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_706/mul_1Mullstm_cell_706/Sigmoid:y:0 lstm_cell_706/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_706/add_1AddV2lstm_cell_706/mul:z:0lstm_cell_706/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_706/Sigmoid_2Sigmoidlstm_cell_706/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_706/Relu_1Relulstm_cell_706/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_706/mul_2Mullstm_cell_706/Sigmoid_2:y:0"lstm_cell_706/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_706_matmul_readvariableop_resource.lstm_cell_706_matmul_1_readvariableop_resource-lstm_cell_706_biasadd_readvariableop_resource*
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
while_body_4420167*
condR
while_cond_4420166*K
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
NoOpNoOp%^lstm_cell_706/BiasAdd/ReadVariableOp$^lstm_cell_706/MatMul/ReadVariableOp&^lstm_cell_706/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_706/BiasAdd/ReadVariableOp$lstm_cell_706/BiasAdd/ReadVariableOp2J
#lstm_cell_706/MatMul/ReadVariableOp#lstm_cell_706/MatMul/ReadVariableOp2N
%lstm_cell_706/MatMul_1/ReadVariableOp%lstm_cell_706/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?J
?
E__inference_lstm_705_layer_call_and_return_conditional_losses_4419921

inputs?
,lstm_cell_705_matmul_readvariableop_resource:	?A
.lstm_cell_705_matmul_1_readvariableop_resource:	d?<
-lstm_cell_705_biasadd_readvariableop_resource:	?
identity??$lstm_cell_705/BiasAdd/ReadVariableOp?#lstm_cell_705/MatMul/ReadVariableOp?%lstm_cell_705/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_705/MatMul/ReadVariableOpReadVariableOp,lstm_cell_705_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_705/MatMulMatMulstrided_slice_2:output:0+lstm_cell_705/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_705/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_705_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_705/MatMul_1MatMulzeros:output:0-lstm_cell_705/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_705/addAddV2lstm_cell_705/MatMul:product:0 lstm_cell_705/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_705/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_705_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_705/BiasAddBiasAddlstm_cell_705/add:z:0,lstm_cell_705/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_705/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_705/splitSplit&lstm_cell_705/split/split_dim:output:0lstm_cell_705/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_705/SigmoidSigmoidlstm_cell_705/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_705/Sigmoid_1Sigmoidlstm_cell_705/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_705/mulMullstm_cell_705/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_705/ReluRelulstm_cell_705/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_705/mul_1Mullstm_cell_705/Sigmoid:y:0 lstm_cell_705/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_705/add_1AddV2lstm_cell_705/mul:z:0lstm_cell_705/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_705/Sigmoid_2Sigmoidlstm_cell_705/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_705/Relu_1Relulstm_cell_705/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_705/mul_2Mullstm_cell_705/Sigmoid_2:y:0"lstm_cell_705/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_705_matmul_readvariableop_resource.lstm_cell_705_matmul_1_readvariableop_resource-lstm_cell_705_biasadd_readvariableop_resource*
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
while_body_4419837*
condR
while_cond_4419836*K
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
NoOpNoOp%^lstm_cell_705/BiasAdd/ReadVariableOp$^lstm_cell_705/MatMul/ReadVariableOp&^lstm_cell_705/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_705/BiasAdd/ReadVariableOp$lstm_cell_705/BiasAdd/ReadVariableOp2J
#lstm_cell_705/MatMul/ReadVariableOp#lstm_cell_705/MatMul/ReadVariableOp2N
%lstm_cell_705/MatMul_1/ReadVariableOp%lstm_cell_705/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?J
?
E__inference_lstm_706_layer_call_and_return_conditional_losses_4417629

inputs?
,lstm_cell_706_matmul_readvariableop_resource:	d?A
.lstm_cell_706_matmul_1_readvariableop_resource:	2?<
-lstm_cell_706_biasadd_readvariableop_resource:	?
identity??$lstm_cell_706/BiasAdd/ReadVariableOp?#lstm_cell_706/MatMul/ReadVariableOp?%lstm_cell_706/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_706/MatMul/ReadVariableOpReadVariableOp,lstm_cell_706_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_706/MatMulMatMulstrided_slice_2:output:0+lstm_cell_706/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_706/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_706_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_706/MatMul_1MatMulzeros:output:0-lstm_cell_706/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_706/addAddV2lstm_cell_706/MatMul:product:0 lstm_cell_706/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_706/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_706_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_706/BiasAddBiasAddlstm_cell_706/add:z:0,lstm_cell_706/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_706/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_706/splitSplit&lstm_cell_706/split/split_dim:output:0lstm_cell_706/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_706/SigmoidSigmoidlstm_cell_706/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_706/Sigmoid_1Sigmoidlstm_cell_706/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_706/mulMullstm_cell_706/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_706/ReluRelulstm_cell_706/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_706/mul_1Mullstm_cell_706/Sigmoid:y:0 lstm_cell_706/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_706/add_1AddV2lstm_cell_706/mul:z:0lstm_cell_706/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_706/Sigmoid_2Sigmoidlstm_cell_706/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_706/Relu_1Relulstm_cell_706/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_706/mul_2Mullstm_cell_706/Sigmoid_2:y:0"lstm_cell_706/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_706_matmul_readvariableop_resource.lstm_cell_706_matmul_1_readvariableop_resource-lstm_cell_706_biasadd_readvariableop_resource*
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
while_body_4417545*
condR
while_cond_4417544*K
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
NoOpNoOp%^lstm_cell_706/BiasAdd/ReadVariableOp$^lstm_cell_706/MatMul/ReadVariableOp&^lstm_cell_706/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_706/BiasAdd/ReadVariableOp$lstm_cell_706/BiasAdd/ReadVariableOp2J
#lstm_cell_706/MatMul/ReadVariableOp#lstm_cell_706/MatMul/ReadVariableOp2N
%lstm_cell_706/MatMul_1/ReadVariableOp%lstm_cell_706/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
/__inference_lstm_cell_705_layer_call_fn_4421349

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
J__inference_lstm_cell_705_layer_call_and_return_conditional_losses_4416493o
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
/__inference_lstm_cell_705_layer_call_fn_4421332

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
J__inference_lstm_cell_705_layer_call_and_return_conditional_losses_4416347o
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
?
?
K__inference_sequential_235_layer_call_and_return_conditional_losses_4418475
lstm_705_input#
lstm_705_4418448:	?#
lstm_705_4418450:	d?
lstm_705_4418452:	?#
lstm_706_4418455:	d?#
lstm_706_4418457:	2?
lstm_706_4418459:	?"
lstm_707_4418462:2("
lstm_707_4418464:
(
lstm_707_4418466:(#
dense_235_4418469:

dense_235_4418471:
identity??!dense_235/StatefulPartitionedCall? lstm_705/StatefulPartitionedCall? lstm_706/StatefulPartitionedCall? lstm_707/StatefulPartitionedCall?
 lstm_705/StatefulPartitionedCallStatefulPartitionedCalllstm_705_inputlstm_705_4418448lstm_705_4418450lstm_705_4418452*
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
E__inference_lstm_705_layer_call_and_return_conditional_losses_4417479?
 lstm_706/StatefulPartitionedCallStatefulPartitionedCall)lstm_705/StatefulPartitionedCall:output:0lstm_706_4418455lstm_706_4418457lstm_706_4418459*
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
E__inference_lstm_706_layer_call_and_return_conditional_losses_4417629?
 lstm_707/StatefulPartitionedCallStatefulPartitionedCall)lstm_706/StatefulPartitionedCall:output:0lstm_707_4418462lstm_707_4418464lstm_707_4418466*
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
E__inference_lstm_707_layer_call_and_return_conditional_losses_4417779?
!dense_235/StatefulPartitionedCallStatefulPartitionedCall)lstm_707/StatefulPartitionedCall:output:0dense_235_4418469dense_235_4418471*
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
F__inference_dense_235_layer_call_and_return_conditional_losses_4417797y
IdentityIdentity*dense_235/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_235/StatefulPartitionedCall!^lstm_705/StatefulPartitionedCall!^lstm_706/StatefulPartitionedCall!^lstm_707/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_235/StatefulPartitionedCall!dense_235/StatefulPartitionedCall2D
 lstm_705/StatefulPartitionedCall lstm_705/StatefulPartitionedCall2D
 lstm_706/StatefulPartitionedCall lstm_706/StatefulPartitionedCall2D
 lstm_707/StatefulPartitionedCall lstm_707/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_705_input
?
?
J__inference_lstm_cell_706_layer_call_and_return_conditional_losses_4421479

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
while_cond_4416551
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4416551___redundant_placeholder05
1while_while_cond_4416551___redundant_placeholder15
1while_while_cond_4416551___redundant_placeholder25
1while_while_cond_4416551___redundant_placeholder3
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

lstm_707_while_body_4419358.
*lstm_707_while_lstm_707_while_loop_counter4
0lstm_707_while_lstm_707_while_maximum_iterations
lstm_707_while_placeholder 
lstm_707_while_placeholder_1 
lstm_707_while_placeholder_2 
lstm_707_while_placeholder_3-
)lstm_707_while_lstm_707_strided_slice_1_0i
elstm_707_while_tensorarrayv2read_tensorlistgetitem_lstm_707_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_707_while_lstm_cell_707_matmul_readvariableop_resource_0:2(Q
?lstm_707_while_lstm_cell_707_matmul_1_readvariableop_resource_0:
(L
>lstm_707_while_lstm_cell_707_biasadd_readvariableop_resource_0:(
lstm_707_while_identity
lstm_707_while_identity_1
lstm_707_while_identity_2
lstm_707_while_identity_3
lstm_707_while_identity_4
lstm_707_while_identity_5+
'lstm_707_while_lstm_707_strided_slice_1g
clstm_707_while_tensorarrayv2read_tensorlistgetitem_lstm_707_tensorarrayunstack_tensorlistfromtensorM
;lstm_707_while_lstm_cell_707_matmul_readvariableop_resource:2(O
=lstm_707_while_lstm_cell_707_matmul_1_readvariableop_resource:
(J
<lstm_707_while_lstm_cell_707_biasadd_readvariableop_resource:(??3lstm_707/while/lstm_cell_707/BiasAdd/ReadVariableOp?2lstm_707/while/lstm_cell_707/MatMul/ReadVariableOp?4lstm_707/while/lstm_cell_707/MatMul_1/ReadVariableOp?
@lstm_707/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_707/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_707_while_tensorarrayv2read_tensorlistgetitem_lstm_707_tensorarrayunstack_tensorlistfromtensor_0lstm_707_while_placeholderIlstm_707/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_707/while/lstm_cell_707/MatMul/ReadVariableOpReadVariableOp=lstm_707_while_lstm_cell_707_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_707/while/lstm_cell_707/MatMulMatMul9lstm_707/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_707/while/lstm_cell_707/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_707/while/lstm_cell_707/MatMul_1/ReadVariableOpReadVariableOp?lstm_707_while_lstm_cell_707_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_707/while/lstm_cell_707/MatMul_1MatMullstm_707_while_placeholder_2<lstm_707/while/lstm_cell_707/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_707/while/lstm_cell_707/addAddV2-lstm_707/while/lstm_cell_707/MatMul:product:0/lstm_707/while/lstm_cell_707/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_707/while/lstm_cell_707/BiasAdd/ReadVariableOpReadVariableOp>lstm_707_while_lstm_cell_707_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_707/while/lstm_cell_707/BiasAddBiasAdd$lstm_707/while/lstm_cell_707/add:z:0;lstm_707/while/lstm_cell_707/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_707/while/lstm_cell_707/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_707/while/lstm_cell_707/splitSplit5lstm_707/while/lstm_cell_707/split/split_dim:output:0-lstm_707/while/lstm_cell_707/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_707/while/lstm_cell_707/SigmoidSigmoid+lstm_707/while/lstm_cell_707/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_707/while/lstm_cell_707/Sigmoid_1Sigmoid+lstm_707/while/lstm_cell_707/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_707/while/lstm_cell_707/mulMul*lstm_707/while/lstm_cell_707/Sigmoid_1:y:0lstm_707_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_707/while/lstm_cell_707/ReluRelu+lstm_707/while/lstm_cell_707/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_707/while/lstm_cell_707/mul_1Mul(lstm_707/while/lstm_cell_707/Sigmoid:y:0/lstm_707/while/lstm_cell_707/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_707/while/lstm_cell_707/add_1AddV2$lstm_707/while/lstm_cell_707/mul:z:0&lstm_707/while/lstm_cell_707/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_707/while/lstm_cell_707/Sigmoid_2Sigmoid+lstm_707/while/lstm_cell_707/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_707/while/lstm_cell_707/Relu_1Relu&lstm_707/while/lstm_cell_707/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_707/while/lstm_cell_707/mul_2Mul*lstm_707/while/lstm_cell_707/Sigmoid_2:y:01lstm_707/while/lstm_cell_707/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_707/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_707_while_placeholder_1lstm_707_while_placeholder&lstm_707/while/lstm_cell_707/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_707/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_707/while/addAddV2lstm_707_while_placeholderlstm_707/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_707/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_707/while/add_1AddV2*lstm_707_while_lstm_707_while_loop_counterlstm_707/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_707/while/IdentityIdentitylstm_707/while/add_1:z:0^lstm_707/while/NoOp*
T0*
_output_shapes
: ?
lstm_707/while/Identity_1Identity0lstm_707_while_lstm_707_while_maximum_iterations^lstm_707/while/NoOp*
T0*
_output_shapes
: t
lstm_707/while/Identity_2Identitylstm_707/while/add:z:0^lstm_707/while/NoOp*
T0*
_output_shapes
: ?
lstm_707/while/Identity_3IdentityClstm_707/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_707/while/NoOp*
T0*
_output_shapes
: ?
lstm_707/while/Identity_4Identity&lstm_707/while/lstm_cell_707/mul_2:z:0^lstm_707/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_707/while/Identity_5Identity&lstm_707/while/lstm_cell_707/add_1:z:0^lstm_707/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_707/while/NoOpNoOp4^lstm_707/while/lstm_cell_707/BiasAdd/ReadVariableOp3^lstm_707/while/lstm_cell_707/MatMul/ReadVariableOp5^lstm_707/while/lstm_cell_707/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_707_while_identity lstm_707/while/Identity:output:0"?
lstm_707_while_identity_1"lstm_707/while/Identity_1:output:0"?
lstm_707_while_identity_2"lstm_707/while/Identity_2:output:0"?
lstm_707_while_identity_3"lstm_707/while/Identity_3:output:0"?
lstm_707_while_identity_4"lstm_707/while/Identity_4:output:0"?
lstm_707_while_identity_5"lstm_707/while/Identity_5:output:0"T
'lstm_707_while_lstm_707_strided_slice_1)lstm_707_while_lstm_707_strided_slice_1_0"~
<lstm_707_while_lstm_cell_707_biasadd_readvariableop_resource>lstm_707_while_lstm_cell_707_biasadd_readvariableop_resource_0"?
=lstm_707_while_lstm_cell_707_matmul_1_readvariableop_resource?lstm_707_while_lstm_cell_707_matmul_1_readvariableop_resource_0"|
;lstm_707_while_lstm_cell_707_matmul_readvariableop_resource=lstm_707_while_lstm_cell_707_matmul_readvariableop_resource_0"?
clstm_707_while_tensorarrayv2read_tensorlistgetitem_lstm_707_tensorarrayunstack_tensorlistfromtensorelstm_707_while_tensorarrayv2read_tensorlistgetitem_lstm_707_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_707/while/lstm_cell_707/BiasAdd/ReadVariableOp3lstm_707/while/lstm_cell_707/BiasAdd/ReadVariableOp2h
2lstm_707/while/lstm_cell_707/MatMul/ReadVariableOp2lstm_707/while/lstm_cell_707/MatMul/ReadVariableOp2l
4lstm_707/while/lstm_cell_707/MatMul_1/ReadVariableOp4lstm_707/while/lstm_cell_707/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*sequential_235_lstm_707_while_body_4416190L
Hsequential_235_lstm_707_while_sequential_235_lstm_707_while_loop_counterR
Nsequential_235_lstm_707_while_sequential_235_lstm_707_while_maximum_iterations-
)sequential_235_lstm_707_while_placeholder/
+sequential_235_lstm_707_while_placeholder_1/
+sequential_235_lstm_707_while_placeholder_2/
+sequential_235_lstm_707_while_placeholder_3K
Gsequential_235_lstm_707_while_sequential_235_lstm_707_strided_slice_1_0?
?sequential_235_lstm_707_while_tensorarrayv2read_tensorlistgetitem_sequential_235_lstm_707_tensorarrayunstack_tensorlistfromtensor_0^
Lsequential_235_lstm_707_while_lstm_cell_707_matmul_readvariableop_resource_0:2(`
Nsequential_235_lstm_707_while_lstm_cell_707_matmul_1_readvariableop_resource_0:
([
Msequential_235_lstm_707_while_lstm_cell_707_biasadd_readvariableop_resource_0:(*
&sequential_235_lstm_707_while_identity,
(sequential_235_lstm_707_while_identity_1,
(sequential_235_lstm_707_while_identity_2,
(sequential_235_lstm_707_while_identity_3,
(sequential_235_lstm_707_while_identity_4,
(sequential_235_lstm_707_while_identity_5I
Esequential_235_lstm_707_while_sequential_235_lstm_707_strided_slice_1?
?sequential_235_lstm_707_while_tensorarrayv2read_tensorlistgetitem_sequential_235_lstm_707_tensorarrayunstack_tensorlistfromtensor\
Jsequential_235_lstm_707_while_lstm_cell_707_matmul_readvariableop_resource:2(^
Lsequential_235_lstm_707_while_lstm_cell_707_matmul_1_readvariableop_resource:
(Y
Ksequential_235_lstm_707_while_lstm_cell_707_biasadd_readvariableop_resource:(??Bsequential_235/lstm_707/while/lstm_cell_707/BiasAdd/ReadVariableOp?Asequential_235/lstm_707/while/lstm_cell_707/MatMul/ReadVariableOp?Csequential_235/lstm_707/while/lstm_cell_707/MatMul_1/ReadVariableOp?
Osequential_235/lstm_707/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
Asequential_235/lstm_707/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_235_lstm_707_while_tensorarrayv2read_tensorlistgetitem_sequential_235_lstm_707_tensorarrayunstack_tensorlistfromtensor_0)sequential_235_lstm_707_while_placeholderXsequential_235/lstm_707/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
Asequential_235/lstm_707/while/lstm_cell_707/MatMul/ReadVariableOpReadVariableOpLsequential_235_lstm_707_while_lstm_cell_707_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
2sequential_235/lstm_707/while/lstm_cell_707/MatMulMatMulHsequential_235/lstm_707/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_235/lstm_707/while/lstm_cell_707/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
Csequential_235/lstm_707/while/lstm_cell_707/MatMul_1/ReadVariableOpReadVariableOpNsequential_235_lstm_707_while_lstm_cell_707_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
4sequential_235/lstm_707/while/lstm_cell_707/MatMul_1MatMul+sequential_235_lstm_707_while_placeholder_2Ksequential_235/lstm_707/while/lstm_cell_707/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
/sequential_235/lstm_707/while/lstm_cell_707/addAddV2<sequential_235/lstm_707/while/lstm_cell_707/MatMul:product:0>sequential_235/lstm_707/while/lstm_cell_707/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
Bsequential_235/lstm_707/while/lstm_cell_707/BiasAdd/ReadVariableOpReadVariableOpMsequential_235_lstm_707_while_lstm_cell_707_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
3sequential_235/lstm_707/while/lstm_cell_707/BiasAddBiasAdd3sequential_235/lstm_707/while/lstm_cell_707/add:z:0Jsequential_235/lstm_707/while/lstm_cell_707/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(}
;sequential_235/lstm_707/while/lstm_cell_707/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_235/lstm_707/while/lstm_cell_707/splitSplitDsequential_235/lstm_707/while/lstm_cell_707/split/split_dim:output:0<sequential_235/lstm_707/while/lstm_cell_707/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
3sequential_235/lstm_707/while/lstm_cell_707/SigmoidSigmoid:sequential_235/lstm_707/while/lstm_cell_707/split:output:0*
T0*'
_output_shapes
:?????????
?
5sequential_235/lstm_707/while/lstm_cell_707/Sigmoid_1Sigmoid:sequential_235/lstm_707/while/lstm_cell_707/split:output:1*
T0*'
_output_shapes
:?????????
?
/sequential_235/lstm_707/while/lstm_cell_707/mulMul9sequential_235/lstm_707/while/lstm_cell_707/Sigmoid_1:y:0+sequential_235_lstm_707_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
0sequential_235/lstm_707/while/lstm_cell_707/ReluRelu:sequential_235/lstm_707/while/lstm_cell_707/split:output:2*
T0*'
_output_shapes
:?????????
?
1sequential_235/lstm_707/while/lstm_cell_707/mul_1Mul7sequential_235/lstm_707/while/lstm_cell_707/Sigmoid:y:0>sequential_235/lstm_707/while/lstm_cell_707/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
1sequential_235/lstm_707/while/lstm_cell_707/add_1AddV23sequential_235/lstm_707/while/lstm_cell_707/mul:z:05sequential_235/lstm_707/while/lstm_cell_707/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
5sequential_235/lstm_707/while/lstm_cell_707/Sigmoid_2Sigmoid:sequential_235/lstm_707/while/lstm_cell_707/split:output:3*
T0*'
_output_shapes
:?????????
?
2sequential_235/lstm_707/while/lstm_cell_707/Relu_1Relu5sequential_235/lstm_707/while/lstm_cell_707/add_1:z:0*
T0*'
_output_shapes
:?????????
?
1sequential_235/lstm_707/while/lstm_cell_707/mul_2Mul9sequential_235/lstm_707/while/lstm_cell_707/Sigmoid_2:y:0@sequential_235/lstm_707/while/lstm_cell_707/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
Bsequential_235/lstm_707/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_235_lstm_707_while_placeholder_1)sequential_235_lstm_707_while_placeholder5sequential_235/lstm_707/while/lstm_cell_707/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_235/lstm_707/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_235/lstm_707/while/addAddV2)sequential_235_lstm_707_while_placeholder,sequential_235/lstm_707/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_235/lstm_707/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_235/lstm_707/while/add_1AddV2Hsequential_235_lstm_707_while_sequential_235_lstm_707_while_loop_counter.sequential_235/lstm_707/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_235/lstm_707/while/IdentityIdentity'sequential_235/lstm_707/while/add_1:z:0#^sequential_235/lstm_707/while/NoOp*
T0*
_output_shapes
: ?
(sequential_235/lstm_707/while/Identity_1IdentityNsequential_235_lstm_707_while_sequential_235_lstm_707_while_maximum_iterations#^sequential_235/lstm_707/while/NoOp*
T0*
_output_shapes
: ?
(sequential_235/lstm_707/while/Identity_2Identity%sequential_235/lstm_707/while/add:z:0#^sequential_235/lstm_707/while/NoOp*
T0*
_output_shapes
: ?
(sequential_235/lstm_707/while/Identity_3IdentityRsequential_235/lstm_707/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_235/lstm_707/while/NoOp*
T0*
_output_shapes
: ?
(sequential_235/lstm_707/while/Identity_4Identity5sequential_235/lstm_707/while/lstm_cell_707/mul_2:z:0#^sequential_235/lstm_707/while/NoOp*
T0*'
_output_shapes
:?????????
?
(sequential_235/lstm_707/while/Identity_5Identity5sequential_235/lstm_707/while/lstm_cell_707/add_1:z:0#^sequential_235/lstm_707/while/NoOp*
T0*'
_output_shapes
:?????????
?
"sequential_235/lstm_707/while/NoOpNoOpC^sequential_235/lstm_707/while/lstm_cell_707/BiasAdd/ReadVariableOpB^sequential_235/lstm_707/while/lstm_cell_707/MatMul/ReadVariableOpD^sequential_235/lstm_707/while/lstm_cell_707/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_235_lstm_707_while_identity/sequential_235/lstm_707/while/Identity:output:0"]
(sequential_235_lstm_707_while_identity_11sequential_235/lstm_707/while/Identity_1:output:0"]
(sequential_235_lstm_707_while_identity_21sequential_235/lstm_707/while/Identity_2:output:0"]
(sequential_235_lstm_707_while_identity_31sequential_235/lstm_707/while/Identity_3:output:0"]
(sequential_235_lstm_707_while_identity_41sequential_235/lstm_707/while/Identity_4:output:0"]
(sequential_235_lstm_707_while_identity_51sequential_235/lstm_707/while/Identity_5:output:0"?
Ksequential_235_lstm_707_while_lstm_cell_707_biasadd_readvariableop_resourceMsequential_235_lstm_707_while_lstm_cell_707_biasadd_readvariableop_resource_0"?
Lsequential_235_lstm_707_while_lstm_cell_707_matmul_1_readvariableop_resourceNsequential_235_lstm_707_while_lstm_cell_707_matmul_1_readvariableop_resource_0"?
Jsequential_235_lstm_707_while_lstm_cell_707_matmul_readvariableop_resourceLsequential_235_lstm_707_while_lstm_cell_707_matmul_readvariableop_resource_0"?
Esequential_235_lstm_707_while_sequential_235_lstm_707_strided_slice_1Gsequential_235_lstm_707_while_sequential_235_lstm_707_strided_slice_1_0"?
?sequential_235_lstm_707_while_tensorarrayv2read_tensorlistgetitem_sequential_235_lstm_707_tensorarrayunstack_tensorlistfromtensor?sequential_235_lstm_707_while_tensorarrayv2read_tensorlistgetitem_sequential_235_lstm_707_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2?
Bsequential_235/lstm_707/while/lstm_cell_707/BiasAdd/ReadVariableOpBsequential_235/lstm_707/while/lstm_cell_707/BiasAdd/ReadVariableOp2?
Asequential_235/lstm_707/while/lstm_cell_707/MatMul/ReadVariableOpAsequential_235/lstm_707/while/lstm_cell_707/MatMul/ReadVariableOp2?
Csequential_235/lstm_707/while/lstm_cell_707/MatMul_1/ReadVariableOpCsequential_235/lstm_707/while/lstm_cell_707/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_706_layer_call_and_return_conditional_losses_4421511

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
E__inference_lstm_707_layer_call_and_return_conditional_losses_4421153

inputs>
,lstm_cell_707_matmul_readvariableop_resource:2(@
.lstm_cell_707_matmul_1_readvariableop_resource:
(;
-lstm_cell_707_biasadd_readvariableop_resource:(
identity??$lstm_cell_707/BiasAdd/ReadVariableOp?#lstm_cell_707/MatMul/ReadVariableOp?%lstm_cell_707/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_707/MatMul/ReadVariableOpReadVariableOp,lstm_cell_707_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_707/MatMulMatMulstrided_slice_2:output:0+lstm_cell_707/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_707/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_707_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_707/MatMul_1MatMulzeros:output:0-lstm_cell_707/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_707/addAddV2lstm_cell_707/MatMul:product:0 lstm_cell_707/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_707/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_707_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_707/BiasAddBiasAddlstm_cell_707/add:z:0,lstm_cell_707/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_707/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_707/splitSplit&lstm_cell_707/split/split_dim:output:0lstm_cell_707/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_707/SigmoidSigmoidlstm_cell_707/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_707/Sigmoid_1Sigmoidlstm_cell_707/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_707/mulMullstm_cell_707/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_707/ReluRelulstm_cell_707/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_707/mul_1Mullstm_cell_707/Sigmoid:y:0 lstm_cell_707/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_707/add_1AddV2lstm_cell_707/mul:z:0lstm_cell_707/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_707/Sigmoid_2Sigmoidlstm_cell_707/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_707/Relu_1Relulstm_cell_707/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_707/mul_2Mullstm_cell_707/Sigmoid_2:y:0"lstm_cell_707/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_707_matmul_readvariableop_resource.lstm_cell_707_matmul_1_readvariableop_resource-lstm_cell_707_biasadd_readvariableop_resource*
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
while_body_4421069*
condR
while_cond_4421068*K
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
NoOpNoOp%^lstm_cell_707/BiasAdd/ReadVariableOp$^lstm_cell_707/MatMul/ReadVariableOp&^lstm_cell_707/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_707/BiasAdd/ReadVariableOp$lstm_cell_707/BiasAdd/ReadVariableOp2J
#lstm_cell_707/MatMul/ReadVariableOp#lstm_cell_707/MatMul/ReadVariableOp2N
%lstm_cell_707/MatMul_1/ReadVariableOp%lstm_cell_707/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?C
?

lstm_707_while_body_4418931.
*lstm_707_while_lstm_707_while_loop_counter4
0lstm_707_while_lstm_707_while_maximum_iterations
lstm_707_while_placeholder 
lstm_707_while_placeholder_1 
lstm_707_while_placeholder_2 
lstm_707_while_placeholder_3-
)lstm_707_while_lstm_707_strided_slice_1_0i
elstm_707_while_tensorarrayv2read_tensorlistgetitem_lstm_707_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_707_while_lstm_cell_707_matmul_readvariableop_resource_0:2(Q
?lstm_707_while_lstm_cell_707_matmul_1_readvariableop_resource_0:
(L
>lstm_707_while_lstm_cell_707_biasadd_readvariableop_resource_0:(
lstm_707_while_identity
lstm_707_while_identity_1
lstm_707_while_identity_2
lstm_707_while_identity_3
lstm_707_while_identity_4
lstm_707_while_identity_5+
'lstm_707_while_lstm_707_strided_slice_1g
clstm_707_while_tensorarrayv2read_tensorlistgetitem_lstm_707_tensorarrayunstack_tensorlistfromtensorM
;lstm_707_while_lstm_cell_707_matmul_readvariableop_resource:2(O
=lstm_707_while_lstm_cell_707_matmul_1_readvariableop_resource:
(J
<lstm_707_while_lstm_cell_707_biasadd_readvariableop_resource:(??3lstm_707/while/lstm_cell_707/BiasAdd/ReadVariableOp?2lstm_707/while/lstm_cell_707/MatMul/ReadVariableOp?4lstm_707/while/lstm_cell_707/MatMul_1/ReadVariableOp?
@lstm_707/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_707/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_707_while_tensorarrayv2read_tensorlistgetitem_lstm_707_tensorarrayunstack_tensorlistfromtensor_0lstm_707_while_placeholderIlstm_707/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_707/while/lstm_cell_707/MatMul/ReadVariableOpReadVariableOp=lstm_707_while_lstm_cell_707_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_707/while/lstm_cell_707/MatMulMatMul9lstm_707/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_707/while/lstm_cell_707/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_707/while/lstm_cell_707/MatMul_1/ReadVariableOpReadVariableOp?lstm_707_while_lstm_cell_707_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_707/while/lstm_cell_707/MatMul_1MatMullstm_707_while_placeholder_2<lstm_707/while/lstm_cell_707/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_707/while/lstm_cell_707/addAddV2-lstm_707/while/lstm_cell_707/MatMul:product:0/lstm_707/while/lstm_cell_707/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_707/while/lstm_cell_707/BiasAdd/ReadVariableOpReadVariableOp>lstm_707_while_lstm_cell_707_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_707/while/lstm_cell_707/BiasAddBiasAdd$lstm_707/while/lstm_cell_707/add:z:0;lstm_707/while/lstm_cell_707/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_707/while/lstm_cell_707/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_707/while/lstm_cell_707/splitSplit5lstm_707/while/lstm_cell_707/split/split_dim:output:0-lstm_707/while/lstm_cell_707/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_707/while/lstm_cell_707/SigmoidSigmoid+lstm_707/while/lstm_cell_707/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_707/while/lstm_cell_707/Sigmoid_1Sigmoid+lstm_707/while/lstm_cell_707/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_707/while/lstm_cell_707/mulMul*lstm_707/while/lstm_cell_707/Sigmoid_1:y:0lstm_707_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_707/while/lstm_cell_707/ReluRelu+lstm_707/while/lstm_cell_707/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_707/while/lstm_cell_707/mul_1Mul(lstm_707/while/lstm_cell_707/Sigmoid:y:0/lstm_707/while/lstm_cell_707/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_707/while/lstm_cell_707/add_1AddV2$lstm_707/while/lstm_cell_707/mul:z:0&lstm_707/while/lstm_cell_707/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_707/while/lstm_cell_707/Sigmoid_2Sigmoid+lstm_707/while/lstm_cell_707/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_707/while/lstm_cell_707/Relu_1Relu&lstm_707/while/lstm_cell_707/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_707/while/lstm_cell_707/mul_2Mul*lstm_707/while/lstm_cell_707/Sigmoid_2:y:01lstm_707/while/lstm_cell_707/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_707/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_707_while_placeholder_1lstm_707_while_placeholder&lstm_707/while/lstm_cell_707/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_707/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_707/while/addAddV2lstm_707_while_placeholderlstm_707/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_707/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_707/while/add_1AddV2*lstm_707_while_lstm_707_while_loop_counterlstm_707/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_707/while/IdentityIdentitylstm_707/while/add_1:z:0^lstm_707/while/NoOp*
T0*
_output_shapes
: ?
lstm_707/while/Identity_1Identity0lstm_707_while_lstm_707_while_maximum_iterations^lstm_707/while/NoOp*
T0*
_output_shapes
: t
lstm_707/while/Identity_2Identitylstm_707/while/add:z:0^lstm_707/while/NoOp*
T0*
_output_shapes
: ?
lstm_707/while/Identity_3IdentityClstm_707/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_707/while/NoOp*
T0*
_output_shapes
: ?
lstm_707/while/Identity_4Identity&lstm_707/while/lstm_cell_707/mul_2:z:0^lstm_707/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_707/while/Identity_5Identity&lstm_707/while/lstm_cell_707/add_1:z:0^lstm_707/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_707/while/NoOpNoOp4^lstm_707/while/lstm_cell_707/BiasAdd/ReadVariableOp3^lstm_707/while/lstm_cell_707/MatMul/ReadVariableOp5^lstm_707/while/lstm_cell_707/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_707_while_identity lstm_707/while/Identity:output:0"?
lstm_707_while_identity_1"lstm_707/while/Identity_1:output:0"?
lstm_707_while_identity_2"lstm_707/while/Identity_2:output:0"?
lstm_707_while_identity_3"lstm_707/while/Identity_3:output:0"?
lstm_707_while_identity_4"lstm_707/while/Identity_4:output:0"?
lstm_707_while_identity_5"lstm_707/while/Identity_5:output:0"T
'lstm_707_while_lstm_707_strided_slice_1)lstm_707_while_lstm_707_strided_slice_1_0"~
<lstm_707_while_lstm_cell_707_biasadd_readvariableop_resource>lstm_707_while_lstm_cell_707_biasadd_readvariableop_resource_0"?
=lstm_707_while_lstm_cell_707_matmul_1_readvariableop_resource?lstm_707_while_lstm_cell_707_matmul_1_readvariableop_resource_0"|
;lstm_707_while_lstm_cell_707_matmul_readvariableop_resource=lstm_707_while_lstm_cell_707_matmul_readvariableop_resource_0"?
clstm_707_while_tensorarrayv2read_tensorlistgetitem_lstm_707_tensorarrayunstack_tensorlistfromtensorelstm_707_while_tensorarrayv2read_tensorlistgetitem_lstm_707_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_707/while/lstm_cell_707/BiasAdd/ReadVariableOp3lstm_707/while/lstm_cell_707/BiasAdd/ReadVariableOp2h
2lstm_707/while/lstm_cell_707/MatMul/ReadVariableOp2lstm_707/while/lstm_cell_707/MatMul/ReadVariableOp2l
4lstm_707/while/lstm_cell_707/MatMul_1/ReadVariableOp4lstm_707/while/lstm_cell_707/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_705_layer_call_and_return_conditional_losses_4419635
inputs_0?
,lstm_cell_705_matmul_readvariableop_resource:	?A
.lstm_cell_705_matmul_1_readvariableop_resource:	d?<
-lstm_cell_705_biasadd_readvariableop_resource:	?
identity??$lstm_cell_705/BiasAdd/ReadVariableOp?#lstm_cell_705/MatMul/ReadVariableOp?%lstm_cell_705/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_705/MatMul/ReadVariableOpReadVariableOp,lstm_cell_705_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_705/MatMulMatMulstrided_slice_2:output:0+lstm_cell_705/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_705/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_705_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_705/MatMul_1MatMulzeros:output:0-lstm_cell_705/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_705/addAddV2lstm_cell_705/MatMul:product:0 lstm_cell_705/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_705/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_705_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_705/BiasAddBiasAddlstm_cell_705/add:z:0,lstm_cell_705/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_705/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_705/splitSplit&lstm_cell_705/split/split_dim:output:0lstm_cell_705/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_705/SigmoidSigmoidlstm_cell_705/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_705/Sigmoid_1Sigmoidlstm_cell_705/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_705/mulMullstm_cell_705/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_705/ReluRelulstm_cell_705/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_705/mul_1Mullstm_cell_705/Sigmoid:y:0 lstm_cell_705/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_705/add_1AddV2lstm_cell_705/mul:z:0lstm_cell_705/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_705/Sigmoid_2Sigmoidlstm_cell_705/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_705/Relu_1Relulstm_cell_705/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_705/mul_2Mullstm_cell_705/Sigmoid_2:y:0"lstm_cell_705/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_705_matmul_readvariableop_resource.lstm_cell_705_matmul_1_readvariableop_resource-lstm_cell_705_biasadd_readvariableop_resource*
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
while_body_4419551*
condR
while_cond_4419550*K
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
NoOpNoOp%^lstm_cell_705/BiasAdd/ReadVariableOp$^lstm_cell_705/MatMul/ReadVariableOp&^lstm_cell_705/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_705/BiasAdd/ReadVariableOp$lstm_cell_705/BiasAdd/ReadVariableOp2J
#lstm_cell_705/MatMul/ReadVariableOp#lstm_cell_705/MatMul/ReadVariableOp2N
%lstm_cell_705/MatMul_1/ReadVariableOp%lstm_cell_705/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
*__inference_lstm_706_layer_call_fn_4420086
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
E__inference_lstm_706_layer_call_and_return_conditional_losses_4416971|
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

?
lstm_706_while_cond_4418791.
*lstm_706_while_lstm_706_while_loop_counter4
0lstm_706_while_lstm_706_while_maximum_iterations
lstm_706_while_placeholder 
lstm_706_while_placeholder_1 
lstm_706_while_placeholder_2 
lstm_706_while_placeholder_30
,lstm_706_while_less_lstm_706_strided_slice_1G
Clstm_706_while_lstm_706_while_cond_4418791___redundant_placeholder0G
Clstm_706_while_lstm_706_while_cond_4418791___redundant_placeholder1G
Clstm_706_while_lstm_706_while_cond_4418791___redundant_placeholder2G
Clstm_706_while_lstm_706_while_cond_4418791___redundant_placeholder3
lstm_706_while_identity
?
lstm_706/while/LessLesslstm_706_while_placeholder,lstm_706_while_less_lstm_706_strided_slice_1*
T0*
_output_shapes
: ]
lstm_706/while/IdentityIdentitylstm_706/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_706_while_identity lstm_706/while/Identity:output:0*(
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
J__inference_lstm_cell_707_layer_call_and_return_conditional_losses_4417193

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
*__inference_lstm_707_layer_call_fn_4420691
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
E__inference_lstm_707_layer_call_and_return_conditional_losses_4417130o
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

?
0__inference_sequential_235_layer_call_fn_4418445
lstm_705_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_705_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_235_layer_call_and_return_conditional_losses_4418393o
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
_user_specified_namelstm_705_input
?
?
/__inference_lstm_cell_707_layer_call_fn_4421528

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
J__inference_lstm_cell_707_layer_call_and_return_conditional_losses_4417047o
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
E__inference_lstm_707_layer_call_and_return_conditional_losses_4417321

inputs'
lstm_cell_707_4417239:2('
lstm_cell_707_4417241:
(#
lstm_cell_707_4417243:(
identity??%lstm_cell_707/StatefulPartitionedCall?while;
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
%lstm_cell_707/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_707_4417239lstm_cell_707_4417241lstm_cell_707_4417243*
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
J__inference_lstm_cell_707_layer_call_and_return_conditional_losses_4417193n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_707_4417239lstm_cell_707_4417241lstm_cell_707_4417243*
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
while_body_4417252*
condR
while_cond_4417251*K
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
NoOpNoOp&^lstm_cell_707/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_707/StatefulPartitionedCall%lstm_cell_707/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
??
?
#__inference__traced_restore_4421882
file_prefix3
!assignvariableop_dense_235_kernel:
/
!assignvariableop_1_dense_235_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: C
0assignvariableop_7_lstm_705_lstm_cell_705_kernel:	?M
:assignvariableop_8_lstm_705_lstm_cell_705_recurrent_kernel:	d?=
.assignvariableop_9_lstm_705_lstm_cell_705_bias:	?D
1assignvariableop_10_lstm_706_lstm_cell_706_kernel:	d?N
;assignvariableop_11_lstm_706_lstm_cell_706_recurrent_kernel:	2?>
/assignvariableop_12_lstm_706_lstm_cell_706_bias:	?C
1assignvariableop_13_lstm_707_lstm_cell_707_kernel:2(M
;assignvariableop_14_lstm_707_lstm_cell_707_recurrent_kernel:
(=
/assignvariableop_15_lstm_707_lstm_cell_707_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: =
+assignvariableop_18_adam_dense_235_kernel_m:
7
)assignvariableop_19_adam_dense_235_bias_m:K
8assignvariableop_20_adam_lstm_705_lstm_cell_705_kernel_m:	?U
Bassignvariableop_21_adam_lstm_705_lstm_cell_705_recurrent_kernel_m:	d?E
6assignvariableop_22_adam_lstm_705_lstm_cell_705_bias_m:	?K
8assignvariableop_23_adam_lstm_706_lstm_cell_706_kernel_m:	d?U
Bassignvariableop_24_adam_lstm_706_lstm_cell_706_recurrent_kernel_m:	2?E
6assignvariableop_25_adam_lstm_706_lstm_cell_706_bias_m:	?J
8assignvariableop_26_adam_lstm_707_lstm_cell_707_kernel_m:2(T
Bassignvariableop_27_adam_lstm_707_lstm_cell_707_recurrent_kernel_m:
(D
6assignvariableop_28_adam_lstm_707_lstm_cell_707_bias_m:(=
+assignvariableop_29_adam_dense_235_kernel_v:
7
)assignvariableop_30_adam_dense_235_bias_v:K
8assignvariableop_31_adam_lstm_705_lstm_cell_705_kernel_v:	?U
Bassignvariableop_32_adam_lstm_705_lstm_cell_705_recurrent_kernel_v:	d?E
6assignvariableop_33_adam_lstm_705_lstm_cell_705_bias_v:	?K
8assignvariableop_34_adam_lstm_706_lstm_cell_706_kernel_v:	d?U
Bassignvariableop_35_adam_lstm_706_lstm_cell_706_recurrent_kernel_v:	2?E
6assignvariableop_36_adam_lstm_706_lstm_cell_706_bias_v:	?J
8assignvariableop_37_adam_lstm_707_lstm_cell_707_kernel_v:2(T
Bassignvariableop_38_adam_lstm_707_lstm_cell_707_recurrent_kernel_v:
(D
6assignvariableop_39_adam_lstm_707_lstm_cell_707_bias_v:(
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
AssignVariableOpAssignVariableOp!assignvariableop_dense_235_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_235_biasIdentity_1:output:0"/device:CPU:0*
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
AssignVariableOp_7AssignVariableOp0assignvariableop_7_lstm_705_lstm_cell_705_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp:assignvariableop_8_lstm_705_lstm_cell_705_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_705_lstm_cell_705_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp1assignvariableop_10_lstm_706_lstm_cell_706_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp;assignvariableop_11_lstm_706_lstm_cell_706_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp/assignvariableop_12_lstm_706_lstm_cell_706_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp1assignvariableop_13_lstm_707_lstm_cell_707_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp;assignvariableop_14_lstm_707_lstm_cell_707_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp/assignvariableop_15_lstm_707_lstm_cell_707_biasIdentity_15:output:0"/device:CPU:0*
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
AssignVariableOp_18AssignVariableOp+assignvariableop_18_adam_dense_235_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp)assignvariableop_19_adam_dense_235_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp8assignvariableop_20_adam_lstm_705_lstm_cell_705_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOpBassignvariableop_21_adam_lstm_705_lstm_cell_705_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp6assignvariableop_22_adam_lstm_705_lstm_cell_705_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp8assignvariableop_23_adam_lstm_706_lstm_cell_706_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOpBassignvariableop_24_adam_lstm_706_lstm_cell_706_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_706_lstm_cell_706_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp8assignvariableop_26_adam_lstm_707_lstm_cell_707_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOpBassignvariableop_27_adam_lstm_707_lstm_cell_707_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_lstm_707_lstm_cell_707_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp+assignvariableop_29_adam_dense_235_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_dense_235_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp8assignvariableop_31_adam_lstm_705_lstm_cell_705_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOpBassignvariableop_32_adam_lstm_705_lstm_cell_705_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOp6assignvariableop_33_adam_lstm_705_lstm_cell_705_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOp8assignvariableop_34_adam_lstm_706_lstm_cell_706_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOpBassignvariableop_35_adam_lstm_706_lstm_cell_706_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adam_lstm_706_lstm_cell_706_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_37AssignVariableOp8assignvariableop_37_adam_lstm_707_lstm_cell_707_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_38AssignVariableOpBassignvariableop_38_adam_lstm_707_lstm_cell_707_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_lstm_707_lstm_cell_707_bias_vIdentity_39:output:0"/device:CPU:0*
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
K__inference_sequential_235_layer_call_and_return_conditional_losses_4418505
lstm_705_input#
lstm_705_4418478:	?#
lstm_705_4418480:	d?
lstm_705_4418482:	?#
lstm_706_4418485:	d?#
lstm_706_4418487:	2?
lstm_706_4418489:	?"
lstm_707_4418492:2("
lstm_707_4418494:
(
lstm_707_4418496:(#
dense_235_4418499:

dense_235_4418501:
identity??!dense_235/StatefulPartitionedCall? lstm_705/StatefulPartitionedCall? lstm_706/StatefulPartitionedCall? lstm_707/StatefulPartitionedCall?
 lstm_705/StatefulPartitionedCallStatefulPartitionedCalllstm_705_inputlstm_705_4418478lstm_705_4418480lstm_705_4418482*
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
E__inference_lstm_705_layer_call_and_return_conditional_losses_4418325?
 lstm_706/StatefulPartitionedCallStatefulPartitionedCall)lstm_705/StatefulPartitionedCall:output:0lstm_706_4418485lstm_706_4418487lstm_706_4418489*
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
E__inference_lstm_706_layer_call_and_return_conditional_losses_4418160?
 lstm_707/StatefulPartitionedCallStatefulPartitionedCall)lstm_706/StatefulPartitionedCall:output:0lstm_707_4418492lstm_707_4418494lstm_707_4418496*
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
E__inference_lstm_707_layer_call_and_return_conditional_losses_4417995?
!dense_235/StatefulPartitionedCallStatefulPartitionedCall)lstm_707/StatefulPartitionedCall:output:0dense_235_4418499dense_235_4418501*
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
F__inference_dense_235_layer_call_and_return_conditional_losses_4417797y
IdentityIdentity*dense_235/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_235/StatefulPartitionedCall!^lstm_705/StatefulPartitionedCall!^lstm_706/StatefulPartitionedCall!^lstm_707/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_235/StatefulPartitionedCall!dense_235/StatefulPartitionedCall2D
 lstm_705/StatefulPartitionedCall lstm_705/StatefulPartitionedCall2D
 lstm_706/StatefulPartitionedCall lstm_706/StatefulPartitionedCall2D
 lstm_707/StatefulPartitionedCall lstm_707/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_705_input
?8
?
while_body_4419837
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_705_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_705_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_705_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_705_matmul_readvariableop_resource:	?G
4while_lstm_cell_705_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_705_biasadd_readvariableop_resource:	???*while/lstm_cell_705/BiasAdd/ReadVariableOp?)while/lstm_cell_705/MatMul/ReadVariableOp?+while/lstm_cell_705/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_705/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_705_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_705/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_705/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_705/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_705_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_705/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_705/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_705/addAddV2$while/lstm_cell_705/MatMul:product:0&while/lstm_cell_705/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_705/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_705_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_705/BiasAddBiasAddwhile/lstm_cell_705/add:z:02while/lstm_cell_705/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_705/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_705/splitSplit,while/lstm_cell_705/split/split_dim:output:0$while/lstm_cell_705/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_705/SigmoidSigmoid"while/lstm_cell_705/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_705/Sigmoid_1Sigmoid"while/lstm_cell_705/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_705/mulMul!while/lstm_cell_705/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_705/ReluRelu"while/lstm_cell_705/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_705/mul_1Mulwhile/lstm_cell_705/Sigmoid:y:0&while/lstm_cell_705/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_705/add_1AddV2while/lstm_cell_705/mul:z:0while/lstm_cell_705/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_705/Sigmoid_2Sigmoid"while/lstm_cell_705/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_705/Relu_1Reluwhile/lstm_cell_705/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_705/mul_2Mul!while/lstm_cell_705/Sigmoid_2:y:0(while/lstm_cell_705/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_705/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_705/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_705/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_705/BiasAdd/ReadVariableOp*^while/lstm_cell_705/MatMul/ReadVariableOp,^while/lstm_cell_705/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_705_biasadd_readvariableop_resource5while_lstm_cell_705_biasadd_readvariableop_resource_0"n
4while_lstm_cell_705_matmul_1_readvariableop_resource6while_lstm_cell_705_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_705_matmul_readvariableop_resource4while_lstm_cell_705_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_705/BiasAdd/ReadVariableOp*while/lstm_cell_705/BiasAdd/ReadVariableOp2V
)while/lstm_cell_705/MatMul/ReadVariableOp)while/lstm_cell_705/MatMul/ReadVariableOp2Z
+while/lstm_cell_705/MatMul_1/ReadVariableOp+while/lstm_cell_705/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_705_layer_call_fn_4419492

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
E__inference_lstm_705_layer_call_and_return_conditional_losses_4418325s
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
while_body_4417911
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_707_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_707_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_707_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_707_matmul_readvariableop_resource:2(F
4while_lstm_cell_707_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_707_biasadd_readvariableop_resource:(??*while/lstm_cell_707/BiasAdd/ReadVariableOp?)while/lstm_cell_707/MatMul/ReadVariableOp?+while/lstm_cell_707/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_707/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_707_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_707/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_707/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_707/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_707_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_707/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_707/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_707/addAddV2$while/lstm_cell_707/MatMul:product:0&while/lstm_cell_707/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_707/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_707_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_707/BiasAddBiasAddwhile/lstm_cell_707/add:z:02while/lstm_cell_707/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_707/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_707/splitSplit,while/lstm_cell_707/split/split_dim:output:0$while/lstm_cell_707/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_707/SigmoidSigmoid"while/lstm_cell_707/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_707/Sigmoid_1Sigmoid"while/lstm_cell_707/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_707/mulMul!while/lstm_cell_707/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_707/ReluRelu"while/lstm_cell_707/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_707/mul_1Mulwhile/lstm_cell_707/Sigmoid:y:0&while/lstm_cell_707/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_707/add_1AddV2while/lstm_cell_707/mul:z:0while/lstm_cell_707/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_707/Sigmoid_2Sigmoid"while/lstm_cell_707/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_707/Relu_1Reluwhile/lstm_cell_707/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_707/mul_2Mul!while/lstm_cell_707/Sigmoid_2:y:0(while/lstm_cell_707/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_707/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_707/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_707/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_707/BiasAdd/ReadVariableOp*^while/lstm_cell_707/MatMul/ReadVariableOp,^while/lstm_cell_707/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_707_biasadd_readvariableop_resource5while_lstm_cell_707_biasadd_readvariableop_resource_0"n
4while_lstm_cell_707_matmul_1_readvariableop_resource6while_lstm_cell_707_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_707_matmul_readvariableop_resource4while_lstm_cell_707_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_707/BiasAdd/ReadVariableOp*while/lstm_cell_707/BiasAdd/ReadVariableOp2V
)while/lstm_cell_707/MatMul/ReadVariableOp)while/lstm_cell_707/MatMul/ReadVariableOp2Z
+while/lstm_cell_707/MatMul_1/ReadVariableOp+while/lstm_cell_707/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
"__inference__wrapped_model_4416280
lstm_705_inputW
Dsequential_235_lstm_705_lstm_cell_705_matmul_readvariableop_resource:	?Y
Fsequential_235_lstm_705_lstm_cell_705_matmul_1_readvariableop_resource:	d?T
Esequential_235_lstm_705_lstm_cell_705_biasadd_readvariableop_resource:	?W
Dsequential_235_lstm_706_lstm_cell_706_matmul_readvariableop_resource:	d?Y
Fsequential_235_lstm_706_lstm_cell_706_matmul_1_readvariableop_resource:	2?T
Esequential_235_lstm_706_lstm_cell_706_biasadd_readvariableop_resource:	?V
Dsequential_235_lstm_707_lstm_cell_707_matmul_readvariableop_resource:2(X
Fsequential_235_lstm_707_lstm_cell_707_matmul_1_readvariableop_resource:
(S
Esequential_235_lstm_707_lstm_cell_707_biasadd_readvariableop_resource:(I
7sequential_235_dense_235_matmul_readvariableop_resource:
F
8sequential_235_dense_235_biasadd_readvariableop_resource:
identity??/sequential_235/dense_235/BiasAdd/ReadVariableOp?.sequential_235/dense_235/MatMul/ReadVariableOp?<sequential_235/lstm_705/lstm_cell_705/BiasAdd/ReadVariableOp?;sequential_235/lstm_705/lstm_cell_705/MatMul/ReadVariableOp?=sequential_235/lstm_705/lstm_cell_705/MatMul_1/ReadVariableOp?sequential_235/lstm_705/while?<sequential_235/lstm_706/lstm_cell_706/BiasAdd/ReadVariableOp?;sequential_235/lstm_706/lstm_cell_706/MatMul/ReadVariableOp?=sequential_235/lstm_706/lstm_cell_706/MatMul_1/ReadVariableOp?sequential_235/lstm_706/while?<sequential_235/lstm_707/lstm_cell_707/BiasAdd/ReadVariableOp?;sequential_235/lstm_707/lstm_cell_707/MatMul/ReadVariableOp?=sequential_235/lstm_707/lstm_cell_707/MatMul_1/ReadVariableOp?sequential_235/lstm_707/while[
sequential_235/lstm_705/ShapeShapelstm_705_input*
T0*
_output_shapes
:u
+sequential_235/lstm_705/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_235/lstm_705/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_235/lstm_705/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_235/lstm_705/strided_sliceStridedSlice&sequential_235/lstm_705/Shape:output:04sequential_235/lstm_705/strided_slice/stack:output:06sequential_235/lstm_705/strided_slice/stack_1:output:06sequential_235/lstm_705/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_235/lstm_705/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
$sequential_235/lstm_705/zeros/packedPack.sequential_235/lstm_705/strided_slice:output:0/sequential_235/lstm_705/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_235/lstm_705/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_235/lstm_705/zerosFill-sequential_235/lstm_705/zeros/packed:output:0,sequential_235/lstm_705/zeros/Const:output:0*
T0*'
_output_shapes
:?????????dj
(sequential_235/lstm_705/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
&sequential_235/lstm_705/zeros_1/packedPack.sequential_235/lstm_705/strided_slice:output:01sequential_235/lstm_705/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_235/lstm_705/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_235/lstm_705/zeros_1Fill/sequential_235/lstm_705/zeros_1/packed:output:0.sequential_235/lstm_705/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????d{
&sequential_235/lstm_705/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_235/lstm_705/transpose	Transposelstm_705_input/sequential_235/lstm_705/transpose/perm:output:0*
T0*+
_output_shapes
:?????????t
sequential_235/lstm_705/Shape_1Shape%sequential_235/lstm_705/transpose:y:0*
T0*
_output_shapes
:w
-sequential_235/lstm_705/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_235/lstm_705/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_235/lstm_705/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_235/lstm_705/strided_slice_1StridedSlice(sequential_235/lstm_705/Shape_1:output:06sequential_235/lstm_705/strided_slice_1/stack:output:08sequential_235/lstm_705/strided_slice_1/stack_1:output:08sequential_235/lstm_705/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_235/lstm_705/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_235/lstm_705/TensorArrayV2TensorListReserve<sequential_235/lstm_705/TensorArrayV2/element_shape:output:00sequential_235/lstm_705/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_235/lstm_705/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
?sequential_235/lstm_705/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_235/lstm_705/transpose:y:0Vsequential_235/lstm_705/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_235/lstm_705/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_235/lstm_705/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_235/lstm_705/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_235/lstm_705/strided_slice_2StridedSlice%sequential_235/lstm_705/transpose:y:06sequential_235/lstm_705/strided_slice_2/stack:output:08sequential_235/lstm_705/strided_slice_2/stack_1:output:08sequential_235/lstm_705/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
;sequential_235/lstm_705/lstm_cell_705/MatMul/ReadVariableOpReadVariableOpDsequential_235_lstm_705_lstm_cell_705_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
,sequential_235/lstm_705/lstm_cell_705/MatMulMatMul0sequential_235/lstm_705/strided_slice_2:output:0Csequential_235/lstm_705/lstm_cell_705/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_235/lstm_705/lstm_cell_705/MatMul_1/ReadVariableOpReadVariableOpFsequential_235_lstm_705_lstm_cell_705_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
.sequential_235/lstm_705/lstm_cell_705/MatMul_1MatMul&sequential_235/lstm_705/zeros:output:0Esequential_235/lstm_705/lstm_cell_705/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_235/lstm_705/lstm_cell_705/addAddV26sequential_235/lstm_705/lstm_cell_705/MatMul:product:08sequential_235/lstm_705/lstm_cell_705/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_235/lstm_705/lstm_cell_705/BiasAdd/ReadVariableOpReadVariableOpEsequential_235_lstm_705_lstm_cell_705_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_235/lstm_705/lstm_cell_705/BiasAddBiasAdd-sequential_235/lstm_705/lstm_cell_705/add:z:0Dsequential_235/lstm_705/lstm_cell_705/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_235/lstm_705/lstm_cell_705/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_235/lstm_705/lstm_cell_705/splitSplit>sequential_235/lstm_705/lstm_cell_705/split/split_dim:output:06sequential_235/lstm_705/lstm_cell_705/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
-sequential_235/lstm_705/lstm_cell_705/SigmoidSigmoid4sequential_235/lstm_705/lstm_cell_705/split:output:0*
T0*'
_output_shapes
:?????????d?
/sequential_235/lstm_705/lstm_cell_705/Sigmoid_1Sigmoid4sequential_235/lstm_705/lstm_cell_705/split:output:1*
T0*'
_output_shapes
:?????????d?
)sequential_235/lstm_705/lstm_cell_705/mulMul3sequential_235/lstm_705/lstm_cell_705/Sigmoid_1:y:0(sequential_235/lstm_705/zeros_1:output:0*
T0*'
_output_shapes
:?????????d?
*sequential_235/lstm_705/lstm_cell_705/ReluRelu4sequential_235/lstm_705/lstm_cell_705/split:output:2*
T0*'
_output_shapes
:?????????d?
+sequential_235/lstm_705/lstm_cell_705/mul_1Mul1sequential_235/lstm_705/lstm_cell_705/Sigmoid:y:08sequential_235/lstm_705/lstm_cell_705/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
+sequential_235/lstm_705/lstm_cell_705/add_1AddV2-sequential_235/lstm_705/lstm_cell_705/mul:z:0/sequential_235/lstm_705/lstm_cell_705/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
/sequential_235/lstm_705/lstm_cell_705/Sigmoid_2Sigmoid4sequential_235/lstm_705/lstm_cell_705/split:output:3*
T0*'
_output_shapes
:?????????d?
,sequential_235/lstm_705/lstm_cell_705/Relu_1Relu/sequential_235/lstm_705/lstm_cell_705/add_1:z:0*
T0*'
_output_shapes
:?????????d?
+sequential_235/lstm_705/lstm_cell_705/mul_2Mul3sequential_235/lstm_705/lstm_cell_705/Sigmoid_2:y:0:sequential_235/lstm_705/lstm_cell_705/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
5sequential_235/lstm_705/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
'sequential_235/lstm_705/TensorArrayV2_1TensorListReserve>sequential_235/lstm_705/TensorArrayV2_1/element_shape:output:00sequential_235/lstm_705/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_235/lstm_705/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_235/lstm_705/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_235/lstm_705/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_235/lstm_705/whileWhile3sequential_235/lstm_705/while/loop_counter:output:09sequential_235/lstm_705/while/maximum_iterations:output:0%sequential_235/lstm_705/time:output:00sequential_235/lstm_705/TensorArrayV2_1:handle:0&sequential_235/lstm_705/zeros:output:0(sequential_235/lstm_705/zeros_1:output:00sequential_235/lstm_705/strided_slice_1:output:0Osequential_235/lstm_705/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_235_lstm_705_lstm_cell_705_matmul_readvariableop_resourceFsequential_235_lstm_705_lstm_cell_705_matmul_1_readvariableop_resourceEsequential_235_lstm_705_lstm_cell_705_biasadd_readvariableop_resource*
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
*sequential_235_lstm_705_while_body_4415912*6
cond.R,
*sequential_235_lstm_705_while_cond_4415911*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
Hsequential_235/lstm_705/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
:sequential_235/lstm_705/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_235/lstm_705/while:output:3Qsequential_235/lstm_705/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0?
-sequential_235/lstm_705/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_235/lstm_705/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_235/lstm_705/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_235/lstm_705/strided_slice_3StridedSliceCsequential_235/lstm_705/TensorArrayV2Stack/TensorListStack:tensor:06sequential_235/lstm_705/strided_slice_3/stack:output:08sequential_235/lstm_705/strided_slice_3/stack_1:output:08sequential_235/lstm_705/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask}
(sequential_235/lstm_705/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_235/lstm_705/transpose_1	TransposeCsequential_235/lstm_705/TensorArrayV2Stack/TensorListStack:tensor:01sequential_235/lstm_705/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????ds
sequential_235/lstm_705/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_235/lstm_706/ShapeShape'sequential_235/lstm_705/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_235/lstm_706/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_235/lstm_706/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_235/lstm_706/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_235/lstm_706/strided_sliceStridedSlice&sequential_235/lstm_706/Shape:output:04sequential_235/lstm_706/strided_slice/stack:output:06sequential_235/lstm_706/strided_slice/stack_1:output:06sequential_235/lstm_706/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_235/lstm_706/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
$sequential_235/lstm_706/zeros/packedPack.sequential_235/lstm_706/strided_slice:output:0/sequential_235/lstm_706/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_235/lstm_706/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_235/lstm_706/zerosFill-sequential_235/lstm_706/zeros/packed:output:0,sequential_235/lstm_706/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2j
(sequential_235/lstm_706/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
&sequential_235/lstm_706/zeros_1/packedPack.sequential_235/lstm_706/strided_slice:output:01sequential_235/lstm_706/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_235/lstm_706/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_235/lstm_706/zeros_1Fill/sequential_235/lstm_706/zeros_1/packed:output:0.sequential_235/lstm_706/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2{
&sequential_235/lstm_706/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_235/lstm_706/transpose	Transpose'sequential_235/lstm_705/transpose_1:y:0/sequential_235/lstm_706/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dt
sequential_235/lstm_706/Shape_1Shape%sequential_235/lstm_706/transpose:y:0*
T0*
_output_shapes
:w
-sequential_235/lstm_706/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_235/lstm_706/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_235/lstm_706/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_235/lstm_706/strided_slice_1StridedSlice(sequential_235/lstm_706/Shape_1:output:06sequential_235/lstm_706/strided_slice_1/stack:output:08sequential_235/lstm_706/strided_slice_1/stack_1:output:08sequential_235/lstm_706/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_235/lstm_706/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_235/lstm_706/TensorArrayV2TensorListReserve<sequential_235/lstm_706/TensorArrayV2/element_shape:output:00sequential_235/lstm_706/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_235/lstm_706/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
?sequential_235/lstm_706/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_235/lstm_706/transpose:y:0Vsequential_235/lstm_706/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_235/lstm_706/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_235/lstm_706/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_235/lstm_706/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_235/lstm_706/strided_slice_2StridedSlice%sequential_235/lstm_706/transpose:y:06sequential_235/lstm_706/strided_slice_2/stack:output:08sequential_235/lstm_706/strided_slice_2/stack_1:output:08sequential_235/lstm_706/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
;sequential_235/lstm_706/lstm_cell_706/MatMul/ReadVariableOpReadVariableOpDsequential_235_lstm_706_lstm_cell_706_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
,sequential_235/lstm_706/lstm_cell_706/MatMulMatMul0sequential_235/lstm_706/strided_slice_2:output:0Csequential_235/lstm_706/lstm_cell_706/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_235/lstm_706/lstm_cell_706/MatMul_1/ReadVariableOpReadVariableOpFsequential_235_lstm_706_lstm_cell_706_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
.sequential_235/lstm_706/lstm_cell_706/MatMul_1MatMul&sequential_235/lstm_706/zeros:output:0Esequential_235/lstm_706/lstm_cell_706/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_235/lstm_706/lstm_cell_706/addAddV26sequential_235/lstm_706/lstm_cell_706/MatMul:product:08sequential_235/lstm_706/lstm_cell_706/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_235/lstm_706/lstm_cell_706/BiasAdd/ReadVariableOpReadVariableOpEsequential_235_lstm_706_lstm_cell_706_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_235/lstm_706/lstm_cell_706/BiasAddBiasAdd-sequential_235/lstm_706/lstm_cell_706/add:z:0Dsequential_235/lstm_706/lstm_cell_706/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_235/lstm_706/lstm_cell_706/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_235/lstm_706/lstm_cell_706/splitSplit>sequential_235/lstm_706/lstm_cell_706/split/split_dim:output:06sequential_235/lstm_706/lstm_cell_706/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
-sequential_235/lstm_706/lstm_cell_706/SigmoidSigmoid4sequential_235/lstm_706/lstm_cell_706/split:output:0*
T0*'
_output_shapes
:?????????2?
/sequential_235/lstm_706/lstm_cell_706/Sigmoid_1Sigmoid4sequential_235/lstm_706/lstm_cell_706/split:output:1*
T0*'
_output_shapes
:?????????2?
)sequential_235/lstm_706/lstm_cell_706/mulMul3sequential_235/lstm_706/lstm_cell_706/Sigmoid_1:y:0(sequential_235/lstm_706/zeros_1:output:0*
T0*'
_output_shapes
:?????????2?
*sequential_235/lstm_706/lstm_cell_706/ReluRelu4sequential_235/lstm_706/lstm_cell_706/split:output:2*
T0*'
_output_shapes
:?????????2?
+sequential_235/lstm_706/lstm_cell_706/mul_1Mul1sequential_235/lstm_706/lstm_cell_706/Sigmoid:y:08sequential_235/lstm_706/lstm_cell_706/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
+sequential_235/lstm_706/lstm_cell_706/add_1AddV2-sequential_235/lstm_706/lstm_cell_706/mul:z:0/sequential_235/lstm_706/lstm_cell_706/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
/sequential_235/lstm_706/lstm_cell_706/Sigmoid_2Sigmoid4sequential_235/lstm_706/lstm_cell_706/split:output:3*
T0*'
_output_shapes
:?????????2?
,sequential_235/lstm_706/lstm_cell_706/Relu_1Relu/sequential_235/lstm_706/lstm_cell_706/add_1:z:0*
T0*'
_output_shapes
:?????????2?
+sequential_235/lstm_706/lstm_cell_706/mul_2Mul3sequential_235/lstm_706/lstm_cell_706/Sigmoid_2:y:0:sequential_235/lstm_706/lstm_cell_706/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
5sequential_235/lstm_706/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
'sequential_235/lstm_706/TensorArrayV2_1TensorListReserve>sequential_235/lstm_706/TensorArrayV2_1/element_shape:output:00sequential_235/lstm_706/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_235/lstm_706/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_235/lstm_706/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_235/lstm_706/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_235/lstm_706/whileWhile3sequential_235/lstm_706/while/loop_counter:output:09sequential_235/lstm_706/while/maximum_iterations:output:0%sequential_235/lstm_706/time:output:00sequential_235/lstm_706/TensorArrayV2_1:handle:0&sequential_235/lstm_706/zeros:output:0(sequential_235/lstm_706/zeros_1:output:00sequential_235/lstm_706/strided_slice_1:output:0Osequential_235/lstm_706/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_235_lstm_706_lstm_cell_706_matmul_readvariableop_resourceFsequential_235_lstm_706_lstm_cell_706_matmul_1_readvariableop_resourceEsequential_235_lstm_706_lstm_cell_706_biasadd_readvariableop_resource*
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
*sequential_235_lstm_706_while_body_4416051*6
cond.R,
*sequential_235_lstm_706_while_cond_4416050*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
Hsequential_235/lstm_706/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
:sequential_235/lstm_706/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_235/lstm_706/while:output:3Qsequential_235/lstm_706/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0?
-sequential_235/lstm_706/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_235/lstm_706/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_235/lstm_706/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_235/lstm_706/strided_slice_3StridedSliceCsequential_235/lstm_706/TensorArrayV2Stack/TensorListStack:tensor:06sequential_235/lstm_706/strided_slice_3/stack:output:08sequential_235/lstm_706/strided_slice_3/stack_1:output:08sequential_235/lstm_706/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask}
(sequential_235/lstm_706/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_235/lstm_706/transpose_1	TransposeCsequential_235/lstm_706/TensorArrayV2Stack/TensorListStack:tensor:01sequential_235/lstm_706/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2s
sequential_235/lstm_706/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_235/lstm_707/ShapeShape'sequential_235/lstm_706/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_235/lstm_707/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_235/lstm_707/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_235/lstm_707/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_235/lstm_707/strided_sliceStridedSlice&sequential_235/lstm_707/Shape:output:04sequential_235/lstm_707/strided_slice/stack:output:06sequential_235/lstm_707/strided_slice/stack_1:output:06sequential_235/lstm_707/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_235/lstm_707/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
$sequential_235/lstm_707/zeros/packedPack.sequential_235/lstm_707/strided_slice:output:0/sequential_235/lstm_707/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_235/lstm_707/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_235/lstm_707/zerosFill-sequential_235/lstm_707/zeros/packed:output:0,sequential_235/lstm_707/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
j
(sequential_235/lstm_707/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
&sequential_235/lstm_707/zeros_1/packedPack.sequential_235/lstm_707/strided_slice:output:01sequential_235/lstm_707/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_235/lstm_707/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_235/lstm_707/zeros_1Fill/sequential_235/lstm_707/zeros_1/packed:output:0.sequential_235/lstm_707/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
{
&sequential_235/lstm_707/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_235/lstm_707/transpose	Transpose'sequential_235/lstm_706/transpose_1:y:0/sequential_235/lstm_707/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2t
sequential_235/lstm_707/Shape_1Shape%sequential_235/lstm_707/transpose:y:0*
T0*
_output_shapes
:w
-sequential_235/lstm_707/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_235/lstm_707/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_235/lstm_707/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_235/lstm_707/strided_slice_1StridedSlice(sequential_235/lstm_707/Shape_1:output:06sequential_235/lstm_707/strided_slice_1/stack:output:08sequential_235/lstm_707/strided_slice_1/stack_1:output:08sequential_235/lstm_707/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_235/lstm_707/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_235/lstm_707/TensorArrayV2TensorListReserve<sequential_235/lstm_707/TensorArrayV2/element_shape:output:00sequential_235/lstm_707/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_235/lstm_707/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
?sequential_235/lstm_707/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_235/lstm_707/transpose:y:0Vsequential_235/lstm_707/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_235/lstm_707/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_235/lstm_707/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_235/lstm_707/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_235/lstm_707/strided_slice_2StridedSlice%sequential_235/lstm_707/transpose:y:06sequential_235/lstm_707/strided_slice_2/stack:output:08sequential_235/lstm_707/strided_slice_2/stack_1:output:08sequential_235/lstm_707/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
;sequential_235/lstm_707/lstm_cell_707/MatMul/ReadVariableOpReadVariableOpDsequential_235_lstm_707_lstm_cell_707_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
,sequential_235/lstm_707/lstm_cell_707/MatMulMatMul0sequential_235/lstm_707/strided_slice_2:output:0Csequential_235/lstm_707/lstm_cell_707/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
=sequential_235/lstm_707/lstm_cell_707/MatMul_1/ReadVariableOpReadVariableOpFsequential_235_lstm_707_lstm_cell_707_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
.sequential_235/lstm_707/lstm_cell_707/MatMul_1MatMul&sequential_235/lstm_707/zeros:output:0Esequential_235/lstm_707/lstm_cell_707/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
)sequential_235/lstm_707/lstm_cell_707/addAddV26sequential_235/lstm_707/lstm_cell_707/MatMul:product:08sequential_235/lstm_707/lstm_cell_707/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
<sequential_235/lstm_707/lstm_cell_707/BiasAdd/ReadVariableOpReadVariableOpEsequential_235_lstm_707_lstm_cell_707_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
-sequential_235/lstm_707/lstm_cell_707/BiasAddBiasAdd-sequential_235/lstm_707/lstm_cell_707/add:z:0Dsequential_235/lstm_707/lstm_cell_707/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(w
5sequential_235/lstm_707/lstm_cell_707/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_235/lstm_707/lstm_cell_707/splitSplit>sequential_235/lstm_707/lstm_cell_707/split/split_dim:output:06sequential_235/lstm_707/lstm_cell_707/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
-sequential_235/lstm_707/lstm_cell_707/SigmoidSigmoid4sequential_235/lstm_707/lstm_cell_707/split:output:0*
T0*'
_output_shapes
:?????????
?
/sequential_235/lstm_707/lstm_cell_707/Sigmoid_1Sigmoid4sequential_235/lstm_707/lstm_cell_707/split:output:1*
T0*'
_output_shapes
:?????????
?
)sequential_235/lstm_707/lstm_cell_707/mulMul3sequential_235/lstm_707/lstm_cell_707/Sigmoid_1:y:0(sequential_235/lstm_707/zeros_1:output:0*
T0*'
_output_shapes
:?????????
?
*sequential_235/lstm_707/lstm_cell_707/ReluRelu4sequential_235/lstm_707/lstm_cell_707/split:output:2*
T0*'
_output_shapes
:?????????
?
+sequential_235/lstm_707/lstm_cell_707/mul_1Mul1sequential_235/lstm_707/lstm_cell_707/Sigmoid:y:08sequential_235/lstm_707/lstm_cell_707/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
+sequential_235/lstm_707/lstm_cell_707/add_1AddV2-sequential_235/lstm_707/lstm_cell_707/mul:z:0/sequential_235/lstm_707/lstm_cell_707/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
/sequential_235/lstm_707/lstm_cell_707/Sigmoid_2Sigmoid4sequential_235/lstm_707/lstm_cell_707/split:output:3*
T0*'
_output_shapes
:?????????
?
,sequential_235/lstm_707/lstm_cell_707/Relu_1Relu/sequential_235/lstm_707/lstm_cell_707/add_1:z:0*
T0*'
_output_shapes
:?????????
?
+sequential_235/lstm_707/lstm_cell_707/mul_2Mul3sequential_235/lstm_707/lstm_cell_707/Sigmoid_2:y:0:sequential_235/lstm_707/lstm_cell_707/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
5sequential_235/lstm_707/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
'sequential_235/lstm_707/TensorArrayV2_1TensorListReserve>sequential_235/lstm_707/TensorArrayV2_1/element_shape:output:00sequential_235/lstm_707/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_235/lstm_707/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_235/lstm_707/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_235/lstm_707/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_235/lstm_707/whileWhile3sequential_235/lstm_707/while/loop_counter:output:09sequential_235/lstm_707/while/maximum_iterations:output:0%sequential_235/lstm_707/time:output:00sequential_235/lstm_707/TensorArrayV2_1:handle:0&sequential_235/lstm_707/zeros:output:0(sequential_235/lstm_707/zeros_1:output:00sequential_235/lstm_707/strided_slice_1:output:0Osequential_235/lstm_707/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_235_lstm_707_lstm_cell_707_matmul_readvariableop_resourceFsequential_235_lstm_707_lstm_cell_707_matmul_1_readvariableop_resourceEsequential_235_lstm_707_lstm_cell_707_biasadd_readvariableop_resource*
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
*sequential_235_lstm_707_while_body_4416190*6
cond.R,
*sequential_235_lstm_707_while_cond_4416189*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
Hsequential_235/lstm_707/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
:sequential_235/lstm_707/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_235/lstm_707/while:output:3Qsequential_235/lstm_707/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0?
-sequential_235/lstm_707/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_235/lstm_707/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_235/lstm_707/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_235/lstm_707/strided_slice_3StridedSliceCsequential_235/lstm_707/TensorArrayV2Stack/TensorListStack:tensor:06sequential_235/lstm_707/strided_slice_3/stack:output:08sequential_235/lstm_707/strided_slice_3/stack_1:output:08sequential_235/lstm_707/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_mask}
(sequential_235/lstm_707/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_235/lstm_707/transpose_1	TransposeCsequential_235/lstm_707/TensorArrayV2Stack/TensorListStack:tensor:01sequential_235/lstm_707/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
s
sequential_235/lstm_707/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
.sequential_235/dense_235/MatMul/ReadVariableOpReadVariableOp7sequential_235_dense_235_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
sequential_235/dense_235/MatMulMatMul0sequential_235/lstm_707/strided_slice_3:output:06sequential_235/dense_235/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
/sequential_235/dense_235/BiasAdd/ReadVariableOpReadVariableOp8sequential_235_dense_235_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
 sequential_235/dense_235/BiasAddBiasAdd)sequential_235/dense_235/MatMul:product:07sequential_235/dense_235/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x
IdentityIdentity)sequential_235/dense_235/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp0^sequential_235/dense_235/BiasAdd/ReadVariableOp/^sequential_235/dense_235/MatMul/ReadVariableOp=^sequential_235/lstm_705/lstm_cell_705/BiasAdd/ReadVariableOp<^sequential_235/lstm_705/lstm_cell_705/MatMul/ReadVariableOp>^sequential_235/lstm_705/lstm_cell_705/MatMul_1/ReadVariableOp^sequential_235/lstm_705/while=^sequential_235/lstm_706/lstm_cell_706/BiasAdd/ReadVariableOp<^sequential_235/lstm_706/lstm_cell_706/MatMul/ReadVariableOp>^sequential_235/lstm_706/lstm_cell_706/MatMul_1/ReadVariableOp^sequential_235/lstm_706/while=^sequential_235/lstm_707/lstm_cell_707/BiasAdd/ReadVariableOp<^sequential_235/lstm_707/lstm_cell_707/MatMul/ReadVariableOp>^sequential_235/lstm_707/lstm_cell_707/MatMul_1/ReadVariableOp^sequential_235/lstm_707/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2b
/sequential_235/dense_235/BiasAdd/ReadVariableOp/sequential_235/dense_235/BiasAdd/ReadVariableOp2`
.sequential_235/dense_235/MatMul/ReadVariableOp.sequential_235/dense_235/MatMul/ReadVariableOp2|
<sequential_235/lstm_705/lstm_cell_705/BiasAdd/ReadVariableOp<sequential_235/lstm_705/lstm_cell_705/BiasAdd/ReadVariableOp2z
;sequential_235/lstm_705/lstm_cell_705/MatMul/ReadVariableOp;sequential_235/lstm_705/lstm_cell_705/MatMul/ReadVariableOp2~
=sequential_235/lstm_705/lstm_cell_705/MatMul_1/ReadVariableOp=sequential_235/lstm_705/lstm_cell_705/MatMul_1/ReadVariableOp2>
sequential_235/lstm_705/whilesequential_235/lstm_705/while2|
<sequential_235/lstm_706/lstm_cell_706/BiasAdd/ReadVariableOp<sequential_235/lstm_706/lstm_cell_706/BiasAdd/ReadVariableOp2z
;sequential_235/lstm_706/lstm_cell_706/MatMul/ReadVariableOp;sequential_235/lstm_706/lstm_cell_706/MatMul/ReadVariableOp2~
=sequential_235/lstm_706/lstm_cell_706/MatMul_1/ReadVariableOp=sequential_235/lstm_706/lstm_cell_706/MatMul_1/ReadVariableOp2>
sequential_235/lstm_706/whilesequential_235/lstm_706/while2|
<sequential_235/lstm_707/lstm_cell_707/BiasAdd/ReadVariableOp<sequential_235/lstm_707/lstm_cell_707/BiasAdd/ReadVariableOp2z
;sequential_235/lstm_707/lstm_cell_707/MatMul/ReadVariableOp;sequential_235/lstm_707/lstm_cell_707/MatMul/ReadVariableOp2~
=sequential_235/lstm_707/lstm_cell_707/MatMul_1/ReadVariableOp=sequential_235/lstm_707/lstm_cell_707/MatMul_1/ReadVariableOp2>
sequential_235/lstm_707/whilesequential_235/lstm_707/while:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_705_input
?
?
K__inference_sequential_235_layer_call_and_return_conditional_losses_4417804

inputs#
lstm_705_4417480:	?#
lstm_705_4417482:	d?
lstm_705_4417484:	?#
lstm_706_4417630:	d?#
lstm_706_4417632:	2?
lstm_706_4417634:	?"
lstm_707_4417780:2("
lstm_707_4417782:
(
lstm_707_4417784:(#
dense_235_4417798:

dense_235_4417800:
identity??!dense_235/StatefulPartitionedCall? lstm_705/StatefulPartitionedCall? lstm_706/StatefulPartitionedCall? lstm_707/StatefulPartitionedCall?
 lstm_705/StatefulPartitionedCallStatefulPartitionedCallinputslstm_705_4417480lstm_705_4417482lstm_705_4417484*
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
E__inference_lstm_705_layer_call_and_return_conditional_losses_4417479?
 lstm_706/StatefulPartitionedCallStatefulPartitionedCall)lstm_705/StatefulPartitionedCall:output:0lstm_706_4417630lstm_706_4417632lstm_706_4417634*
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
E__inference_lstm_706_layer_call_and_return_conditional_losses_4417629?
 lstm_707/StatefulPartitionedCallStatefulPartitionedCall)lstm_706/StatefulPartitionedCall:output:0lstm_707_4417780lstm_707_4417782lstm_707_4417784*
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
E__inference_lstm_707_layer_call_and_return_conditional_losses_4417779?
!dense_235/StatefulPartitionedCallStatefulPartitionedCall)lstm_707/StatefulPartitionedCall:output:0dense_235_4417798dense_235_4417800*
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
F__inference_dense_235_layer_call_and_return_conditional_losses_4417797y
IdentityIdentity*dense_235/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_235/StatefulPartitionedCall!^lstm_705/StatefulPartitionedCall!^lstm_706/StatefulPartitionedCall!^lstm_707/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_235/StatefulPartitionedCall!dense_235/StatefulPartitionedCall2D
 lstm_705/StatefulPartitionedCall lstm_705/StatefulPartitionedCall2D
 lstm_706/StatefulPartitionedCall lstm_706/StatefulPartitionedCall2D
 lstm_707/StatefulPartitionedCall lstm_707/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
while_body_4420310
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_706_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_706_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_706_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_706_matmul_readvariableop_resource:	d?G
4while_lstm_cell_706_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_706_biasadd_readvariableop_resource:	???*while/lstm_cell_706/BiasAdd/ReadVariableOp?)while/lstm_cell_706/MatMul/ReadVariableOp?+while/lstm_cell_706/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_706/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_706_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_706/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_706/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_706/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_706_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_706/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_706/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_706/addAddV2$while/lstm_cell_706/MatMul:product:0&while/lstm_cell_706/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_706/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_706_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_706/BiasAddBiasAddwhile/lstm_cell_706/add:z:02while/lstm_cell_706/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_706/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_706/splitSplit,while/lstm_cell_706/split/split_dim:output:0$while/lstm_cell_706/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_706/SigmoidSigmoid"while/lstm_cell_706/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_706/Sigmoid_1Sigmoid"while/lstm_cell_706/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_706/mulMul!while/lstm_cell_706/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_706/ReluRelu"while/lstm_cell_706/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_706/mul_1Mulwhile/lstm_cell_706/Sigmoid:y:0&while/lstm_cell_706/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_706/add_1AddV2while/lstm_cell_706/mul:z:0while/lstm_cell_706/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_706/Sigmoid_2Sigmoid"while/lstm_cell_706/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_706/Relu_1Reluwhile/lstm_cell_706/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_706/mul_2Mul!while/lstm_cell_706/Sigmoid_2:y:0(while/lstm_cell_706/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_706/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_706/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_706/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_706/BiasAdd/ReadVariableOp*^while/lstm_cell_706/MatMul/ReadVariableOp,^while/lstm_cell_706/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_706_biasadd_readvariableop_resource5while_lstm_cell_706_biasadd_readvariableop_resource_0"n
4while_lstm_cell_706_matmul_1_readvariableop_resource6while_lstm_cell_706_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_706_matmul_readvariableop_resource4while_lstm_cell_706_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_706/BiasAdd/ReadVariableOp*while/lstm_cell_706/BiasAdd/ReadVariableOp2V
)while/lstm_cell_706/MatMul/ReadVariableOp)while/lstm_cell_706/MatMul/ReadVariableOp2Z
+while/lstm_cell_706/MatMul_1/ReadVariableOp+while/lstm_cell_706/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
?
?
*__inference_lstm_707_layer_call_fn_4420724

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
E__inference_lstm_707_layer_call_and_return_conditional_losses_4417995o
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
E__inference_lstm_707_layer_call_and_return_conditional_losses_4421010
inputs_0>
,lstm_cell_707_matmul_readvariableop_resource:2(@
.lstm_cell_707_matmul_1_readvariableop_resource:
(;
-lstm_cell_707_biasadd_readvariableop_resource:(
identity??$lstm_cell_707/BiasAdd/ReadVariableOp?#lstm_cell_707/MatMul/ReadVariableOp?%lstm_cell_707/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_707/MatMul/ReadVariableOpReadVariableOp,lstm_cell_707_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_707/MatMulMatMulstrided_slice_2:output:0+lstm_cell_707/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_707/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_707_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_707/MatMul_1MatMulzeros:output:0-lstm_cell_707/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_707/addAddV2lstm_cell_707/MatMul:product:0 lstm_cell_707/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_707/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_707_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_707/BiasAddBiasAddlstm_cell_707/add:z:0,lstm_cell_707/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_707/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_707/splitSplit&lstm_cell_707/split/split_dim:output:0lstm_cell_707/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_707/SigmoidSigmoidlstm_cell_707/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_707/Sigmoid_1Sigmoidlstm_cell_707/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_707/mulMullstm_cell_707/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_707/ReluRelulstm_cell_707/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_707/mul_1Mullstm_cell_707/Sigmoid:y:0 lstm_cell_707/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_707/add_1AddV2lstm_cell_707/mul:z:0lstm_cell_707/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_707/Sigmoid_2Sigmoidlstm_cell_707/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_707/Relu_1Relulstm_cell_707/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_707/mul_2Mullstm_cell_707/Sigmoid_2:y:0"lstm_cell_707/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_707_matmul_readvariableop_resource.lstm_cell_707_matmul_1_readvariableop_resource-lstm_cell_707_biasadd_readvariableop_resource*
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
while_body_4420926*
condR
while_cond_4420925*K
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
NoOpNoOp%^lstm_cell_707/BiasAdd/ReadVariableOp$^lstm_cell_707/MatMul/ReadVariableOp&^lstm_cell_707/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_707/BiasAdd/ReadVariableOp$lstm_cell_707/BiasAdd/ReadVariableOp2J
#lstm_cell_707/MatMul/ReadVariableOp#lstm_cell_707/MatMul/ReadVariableOp2N
%lstm_cell_707/MatMul_1/ReadVariableOp%lstm_cell_707/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?#
?
while_body_4417252
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_707_4417276_0:2(/
while_lstm_cell_707_4417278_0:
(+
while_lstm_cell_707_4417280_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_707_4417276:2(-
while_lstm_cell_707_4417278:
()
while_lstm_cell_707_4417280:(??+while/lstm_cell_707/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_707/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_707_4417276_0while_lstm_cell_707_4417278_0while_lstm_cell_707_4417280_0*
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
J__inference_lstm_cell_707_layer_call_and_return_conditional_losses_4417193?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_707/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_707/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_707/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_707/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_707_4417276while_lstm_cell_707_4417276_0"<
while_lstm_cell_707_4417278while_lstm_cell_707_4417278_0"<
while_lstm_cell_707_4417280while_lstm_cell_707_4417280_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_707/StatefulPartitionedCall+while/lstm_cell_707/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
K__inference_sequential_235_layer_call_and_return_conditional_losses_4419021

inputsH
5lstm_705_lstm_cell_705_matmul_readvariableop_resource:	?J
7lstm_705_lstm_cell_705_matmul_1_readvariableop_resource:	d?E
6lstm_705_lstm_cell_705_biasadd_readvariableop_resource:	?H
5lstm_706_lstm_cell_706_matmul_readvariableop_resource:	d?J
7lstm_706_lstm_cell_706_matmul_1_readvariableop_resource:	2?E
6lstm_706_lstm_cell_706_biasadd_readvariableop_resource:	?G
5lstm_707_lstm_cell_707_matmul_readvariableop_resource:2(I
7lstm_707_lstm_cell_707_matmul_1_readvariableop_resource:
(D
6lstm_707_lstm_cell_707_biasadd_readvariableop_resource:(:
(dense_235_matmul_readvariableop_resource:
7
)dense_235_biasadd_readvariableop_resource:
identity?? dense_235/BiasAdd/ReadVariableOp?dense_235/MatMul/ReadVariableOp?-lstm_705/lstm_cell_705/BiasAdd/ReadVariableOp?,lstm_705/lstm_cell_705/MatMul/ReadVariableOp?.lstm_705/lstm_cell_705/MatMul_1/ReadVariableOp?lstm_705/while?-lstm_706/lstm_cell_706/BiasAdd/ReadVariableOp?,lstm_706/lstm_cell_706/MatMul/ReadVariableOp?.lstm_706/lstm_cell_706/MatMul_1/ReadVariableOp?lstm_706/while?-lstm_707/lstm_cell_707/BiasAdd/ReadVariableOp?,lstm_707/lstm_cell_707/MatMul/ReadVariableOp?.lstm_707/lstm_cell_707/MatMul_1/ReadVariableOp?lstm_707/whileD
lstm_705/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_705/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_705/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_705/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_705/strided_sliceStridedSlicelstm_705/Shape:output:0%lstm_705/strided_slice/stack:output:0'lstm_705/strided_slice/stack_1:output:0'lstm_705/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_705/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_705/zeros/packedPacklstm_705/strided_slice:output:0 lstm_705/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_705/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_705/zerosFilllstm_705/zeros/packed:output:0lstm_705/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_705/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_705/zeros_1/packedPacklstm_705/strided_slice:output:0"lstm_705/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_705/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_705/zeros_1Fill lstm_705/zeros_1/packed:output:0lstm_705/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_705/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_705/transpose	Transposeinputs lstm_705/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_705/Shape_1Shapelstm_705/transpose:y:0*
T0*
_output_shapes
:h
lstm_705/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_705/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_705/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_705/strided_slice_1StridedSlicelstm_705/Shape_1:output:0'lstm_705/strided_slice_1/stack:output:0)lstm_705/strided_slice_1/stack_1:output:0)lstm_705/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_705/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_705/TensorArrayV2TensorListReserve-lstm_705/TensorArrayV2/element_shape:output:0!lstm_705/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_705/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_705/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_705/transpose:y:0Glstm_705/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_705/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_705/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_705/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_705/strided_slice_2StridedSlicelstm_705/transpose:y:0'lstm_705/strided_slice_2/stack:output:0)lstm_705/strided_slice_2/stack_1:output:0)lstm_705/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_705/lstm_cell_705/MatMul/ReadVariableOpReadVariableOp5lstm_705_lstm_cell_705_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_705/lstm_cell_705/MatMulMatMul!lstm_705/strided_slice_2:output:04lstm_705/lstm_cell_705/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_705/lstm_cell_705/MatMul_1/ReadVariableOpReadVariableOp7lstm_705_lstm_cell_705_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_705/lstm_cell_705/MatMul_1MatMullstm_705/zeros:output:06lstm_705/lstm_cell_705/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_705/lstm_cell_705/addAddV2'lstm_705/lstm_cell_705/MatMul:product:0)lstm_705/lstm_cell_705/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_705/lstm_cell_705/BiasAdd/ReadVariableOpReadVariableOp6lstm_705_lstm_cell_705_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_705/lstm_cell_705/BiasAddBiasAddlstm_705/lstm_cell_705/add:z:05lstm_705/lstm_cell_705/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_705/lstm_cell_705/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_705/lstm_cell_705/splitSplit/lstm_705/lstm_cell_705/split/split_dim:output:0'lstm_705/lstm_cell_705/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_705/lstm_cell_705/SigmoidSigmoid%lstm_705/lstm_cell_705/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_705/lstm_cell_705/Sigmoid_1Sigmoid%lstm_705/lstm_cell_705/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_705/lstm_cell_705/mulMul$lstm_705/lstm_cell_705/Sigmoid_1:y:0lstm_705/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_705/lstm_cell_705/ReluRelu%lstm_705/lstm_cell_705/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_705/lstm_cell_705/mul_1Mul"lstm_705/lstm_cell_705/Sigmoid:y:0)lstm_705/lstm_cell_705/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_705/lstm_cell_705/add_1AddV2lstm_705/lstm_cell_705/mul:z:0 lstm_705/lstm_cell_705/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_705/lstm_cell_705/Sigmoid_2Sigmoid%lstm_705/lstm_cell_705/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_705/lstm_cell_705/Relu_1Relu lstm_705/lstm_cell_705/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_705/lstm_cell_705/mul_2Mul$lstm_705/lstm_cell_705/Sigmoid_2:y:0+lstm_705/lstm_cell_705/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_705/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_705/TensorArrayV2_1TensorListReserve/lstm_705/TensorArrayV2_1/element_shape:output:0!lstm_705/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_705/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_705/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_705/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_705/whileWhile$lstm_705/while/loop_counter:output:0*lstm_705/while/maximum_iterations:output:0lstm_705/time:output:0!lstm_705/TensorArrayV2_1:handle:0lstm_705/zeros:output:0lstm_705/zeros_1:output:0!lstm_705/strided_slice_1:output:0@lstm_705/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_705_lstm_cell_705_matmul_readvariableop_resource7lstm_705_lstm_cell_705_matmul_1_readvariableop_resource6lstm_705_lstm_cell_705_biasadd_readvariableop_resource*
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
lstm_705_while_body_4418653*'
condR
lstm_705_while_cond_4418652*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_705/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_705/TensorArrayV2Stack/TensorListStackTensorListStacklstm_705/while:output:3Blstm_705/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_705/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_705/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_705/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_705/strided_slice_3StridedSlice4lstm_705/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_705/strided_slice_3/stack:output:0)lstm_705/strided_slice_3/stack_1:output:0)lstm_705/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_705/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_705/transpose_1	Transpose4lstm_705/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_705/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_705/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_706/ShapeShapelstm_705/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_706/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_706/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_706/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_706/strided_sliceStridedSlicelstm_706/Shape:output:0%lstm_706/strided_slice/stack:output:0'lstm_706/strided_slice/stack_1:output:0'lstm_706/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_706/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_706/zeros/packedPacklstm_706/strided_slice:output:0 lstm_706/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_706/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_706/zerosFilllstm_706/zeros/packed:output:0lstm_706/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_706/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_706/zeros_1/packedPacklstm_706/strided_slice:output:0"lstm_706/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_706/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_706/zeros_1Fill lstm_706/zeros_1/packed:output:0lstm_706/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_706/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_706/transpose	Transposelstm_705/transpose_1:y:0 lstm_706/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_706/Shape_1Shapelstm_706/transpose:y:0*
T0*
_output_shapes
:h
lstm_706/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_706/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_706/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_706/strided_slice_1StridedSlicelstm_706/Shape_1:output:0'lstm_706/strided_slice_1/stack:output:0)lstm_706/strided_slice_1/stack_1:output:0)lstm_706/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_706/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_706/TensorArrayV2TensorListReserve-lstm_706/TensorArrayV2/element_shape:output:0!lstm_706/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_706/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_706/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_706/transpose:y:0Glstm_706/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_706/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_706/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_706/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_706/strided_slice_2StridedSlicelstm_706/transpose:y:0'lstm_706/strided_slice_2/stack:output:0)lstm_706/strided_slice_2/stack_1:output:0)lstm_706/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_706/lstm_cell_706/MatMul/ReadVariableOpReadVariableOp5lstm_706_lstm_cell_706_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_706/lstm_cell_706/MatMulMatMul!lstm_706/strided_slice_2:output:04lstm_706/lstm_cell_706/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_706/lstm_cell_706/MatMul_1/ReadVariableOpReadVariableOp7lstm_706_lstm_cell_706_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_706/lstm_cell_706/MatMul_1MatMullstm_706/zeros:output:06lstm_706/lstm_cell_706/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_706/lstm_cell_706/addAddV2'lstm_706/lstm_cell_706/MatMul:product:0)lstm_706/lstm_cell_706/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_706/lstm_cell_706/BiasAdd/ReadVariableOpReadVariableOp6lstm_706_lstm_cell_706_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_706/lstm_cell_706/BiasAddBiasAddlstm_706/lstm_cell_706/add:z:05lstm_706/lstm_cell_706/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_706/lstm_cell_706/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_706/lstm_cell_706/splitSplit/lstm_706/lstm_cell_706/split/split_dim:output:0'lstm_706/lstm_cell_706/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_706/lstm_cell_706/SigmoidSigmoid%lstm_706/lstm_cell_706/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_706/lstm_cell_706/Sigmoid_1Sigmoid%lstm_706/lstm_cell_706/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_706/lstm_cell_706/mulMul$lstm_706/lstm_cell_706/Sigmoid_1:y:0lstm_706/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_706/lstm_cell_706/ReluRelu%lstm_706/lstm_cell_706/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_706/lstm_cell_706/mul_1Mul"lstm_706/lstm_cell_706/Sigmoid:y:0)lstm_706/lstm_cell_706/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_706/lstm_cell_706/add_1AddV2lstm_706/lstm_cell_706/mul:z:0 lstm_706/lstm_cell_706/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_706/lstm_cell_706/Sigmoid_2Sigmoid%lstm_706/lstm_cell_706/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_706/lstm_cell_706/Relu_1Relu lstm_706/lstm_cell_706/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_706/lstm_cell_706/mul_2Mul$lstm_706/lstm_cell_706/Sigmoid_2:y:0+lstm_706/lstm_cell_706/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_706/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_706/TensorArrayV2_1TensorListReserve/lstm_706/TensorArrayV2_1/element_shape:output:0!lstm_706/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_706/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_706/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_706/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_706/whileWhile$lstm_706/while/loop_counter:output:0*lstm_706/while/maximum_iterations:output:0lstm_706/time:output:0!lstm_706/TensorArrayV2_1:handle:0lstm_706/zeros:output:0lstm_706/zeros_1:output:0!lstm_706/strided_slice_1:output:0@lstm_706/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_706_lstm_cell_706_matmul_readvariableop_resource7lstm_706_lstm_cell_706_matmul_1_readvariableop_resource6lstm_706_lstm_cell_706_biasadd_readvariableop_resource*
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
lstm_706_while_body_4418792*'
condR
lstm_706_while_cond_4418791*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_706/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_706/TensorArrayV2Stack/TensorListStackTensorListStacklstm_706/while:output:3Blstm_706/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_706/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_706/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_706/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_706/strided_slice_3StridedSlice4lstm_706/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_706/strided_slice_3/stack:output:0)lstm_706/strided_slice_3/stack_1:output:0)lstm_706/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_706/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_706/transpose_1	Transpose4lstm_706/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_706/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_706/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_707/ShapeShapelstm_706/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_707/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_707/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_707/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_707/strided_sliceStridedSlicelstm_707/Shape:output:0%lstm_707/strided_slice/stack:output:0'lstm_707/strided_slice/stack_1:output:0'lstm_707/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_707/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_707/zeros/packedPacklstm_707/strided_slice:output:0 lstm_707/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_707/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_707/zerosFilllstm_707/zeros/packed:output:0lstm_707/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_707/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_707/zeros_1/packedPacklstm_707/strided_slice:output:0"lstm_707/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_707/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_707/zeros_1Fill lstm_707/zeros_1/packed:output:0lstm_707/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_707/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_707/transpose	Transposelstm_706/transpose_1:y:0 lstm_707/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_707/Shape_1Shapelstm_707/transpose:y:0*
T0*
_output_shapes
:h
lstm_707/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_707/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_707/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_707/strided_slice_1StridedSlicelstm_707/Shape_1:output:0'lstm_707/strided_slice_1/stack:output:0)lstm_707/strided_slice_1/stack_1:output:0)lstm_707/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_707/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_707/TensorArrayV2TensorListReserve-lstm_707/TensorArrayV2/element_shape:output:0!lstm_707/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_707/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_707/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_707/transpose:y:0Glstm_707/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_707/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_707/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_707/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_707/strided_slice_2StridedSlicelstm_707/transpose:y:0'lstm_707/strided_slice_2/stack:output:0)lstm_707/strided_slice_2/stack_1:output:0)lstm_707/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_707/lstm_cell_707/MatMul/ReadVariableOpReadVariableOp5lstm_707_lstm_cell_707_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_707/lstm_cell_707/MatMulMatMul!lstm_707/strided_slice_2:output:04lstm_707/lstm_cell_707/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_707/lstm_cell_707/MatMul_1/ReadVariableOpReadVariableOp7lstm_707_lstm_cell_707_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_707/lstm_cell_707/MatMul_1MatMullstm_707/zeros:output:06lstm_707/lstm_cell_707/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_707/lstm_cell_707/addAddV2'lstm_707/lstm_cell_707/MatMul:product:0)lstm_707/lstm_cell_707/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_707/lstm_cell_707/BiasAdd/ReadVariableOpReadVariableOp6lstm_707_lstm_cell_707_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_707/lstm_cell_707/BiasAddBiasAddlstm_707/lstm_cell_707/add:z:05lstm_707/lstm_cell_707/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_707/lstm_cell_707/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_707/lstm_cell_707/splitSplit/lstm_707/lstm_cell_707/split/split_dim:output:0'lstm_707/lstm_cell_707/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_707/lstm_cell_707/SigmoidSigmoid%lstm_707/lstm_cell_707/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_707/lstm_cell_707/Sigmoid_1Sigmoid%lstm_707/lstm_cell_707/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_707/lstm_cell_707/mulMul$lstm_707/lstm_cell_707/Sigmoid_1:y:0lstm_707/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_707/lstm_cell_707/ReluRelu%lstm_707/lstm_cell_707/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_707/lstm_cell_707/mul_1Mul"lstm_707/lstm_cell_707/Sigmoid:y:0)lstm_707/lstm_cell_707/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_707/lstm_cell_707/add_1AddV2lstm_707/lstm_cell_707/mul:z:0 lstm_707/lstm_cell_707/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_707/lstm_cell_707/Sigmoid_2Sigmoid%lstm_707/lstm_cell_707/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_707/lstm_cell_707/Relu_1Relu lstm_707/lstm_cell_707/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_707/lstm_cell_707/mul_2Mul$lstm_707/lstm_cell_707/Sigmoid_2:y:0+lstm_707/lstm_cell_707/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_707/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_707/TensorArrayV2_1TensorListReserve/lstm_707/TensorArrayV2_1/element_shape:output:0!lstm_707/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_707/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_707/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_707/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_707/whileWhile$lstm_707/while/loop_counter:output:0*lstm_707/while/maximum_iterations:output:0lstm_707/time:output:0!lstm_707/TensorArrayV2_1:handle:0lstm_707/zeros:output:0lstm_707/zeros_1:output:0!lstm_707/strided_slice_1:output:0@lstm_707/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_707_lstm_cell_707_matmul_readvariableop_resource7lstm_707_lstm_cell_707_matmul_1_readvariableop_resource6lstm_707_lstm_cell_707_biasadd_readvariableop_resource*
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
lstm_707_while_body_4418931*'
condR
lstm_707_while_cond_4418930*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_707/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_707/TensorArrayV2Stack/TensorListStackTensorListStacklstm_707/while:output:3Blstm_707/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_707/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_707/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_707/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_707/strided_slice_3StridedSlice4lstm_707/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_707/strided_slice_3/stack:output:0)lstm_707/strided_slice_3/stack_1:output:0)lstm_707/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_707/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_707/transpose_1	Transpose4lstm_707/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_707/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_707/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_235/MatMul/ReadVariableOpReadVariableOp(dense_235_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_235/MatMulMatMul!lstm_707/strided_slice_3:output:0'dense_235/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_235/BiasAdd/ReadVariableOpReadVariableOp)dense_235_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_235/BiasAddBiasAdddense_235/MatMul:product:0(dense_235/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_235/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_235/BiasAdd/ReadVariableOp ^dense_235/MatMul/ReadVariableOp.^lstm_705/lstm_cell_705/BiasAdd/ReadVariableOp-^lstm_705/lstm_cell_705/MatMul/ReadVariableOp/^lstm_705/lstm_cell_705/MatMul_1/ReadVariableOp^lstm_705/while.^lstm_706/lstm_cell_706/BiasAdd/ReadVariableOp-^lstm_706/lstm_cell_706/MatMul/ReadVariableOp/^lstm_706/lstm_cell_706/MatMul_1/ReadVariableOp^lstm_706/while.^lstm_707/lstm_cell_707/BiasAdd/ReadVariableOp-^lstm_707/lstm_cell_707/MatMul/ReadVariableOp/^lstm_707/lstm_cell_707/MatMul_1/ReadVariableOp^lstm_707/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_235/BiasAdd/ReadVariableOp dense_235/BiasAdd/ReadVariableOp2B
dense_235/MatMul/ReadVariableOpdense_235/MatMul/ReadVariableOp2^
-lstm_705/lstm_cell_705/BiasAdd/ReadVariableOp-lstm_705/lstm_cell_705/BiasAdd/ReadVariableOp2\
,lstm_705/lstm_cell_705/MatMul/ReadVariableOp,lstm_705/lstm_cell_705/MatMul/ReadVariableOp2`
.lstm_705/lstm_cell_705/MatMul_1/ReadVariableOp.lstm_705/lstm_cell_705/MatMul_1/ReadVariableOp2 
lstm_705/whilelstm_705/while2^
-lstm_706/lstm_cell_706/BiasAdd/ReadVariableOp-lstm_706/lstm_cell_706/BiasAdd/ReadVariableOp2\
,lstm_706/lstm_cell_706/MatMul/ReadVariableOp,lstm_706/lstm_cell_706/MatMul/ReadVariableOp2`
.lstm_706/lstm_cell_706/MatMul_1/ReadVariableOp.lstm_706/lstm_cell_706/MatMul_1/ReadVariableOp2 
lstm_706/whilelstm_706/while2^
-lstm_707/lstm_cell_707/BiasAdd/ReadVariableOp-lstm_707/lstm_cell_707/BiasAdd/ReadVariableOp2\
,lstm_707/lstm_cell_707/MatMul/ReadVariableOp,lstm_707/lstm_cell_707/MatMul/ReadVariableOp2`
.lstm_707/lstm_cell_707/MatMul_1/ReadVariableOp.lstm_707/lstm_cell_707/MatMul_1/ReadVariableOp2 
lstm_707/whilelstm_707/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_706_layer_call_and_return_conditional_losses_4416843

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
while_body_4418076
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_706_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_706_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_706_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_706_matmul_readvariableop_resource:	d?G
4while_lstm_cell_706_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_706_biasadd_readvariableop_resource:	???*while/lstm_cell_706/BiasAdd/ReadVariableOp?)while/lstm_cell_706/MatMul/ReadVariableOp?+while/lstm_cell_706/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_706/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_706_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_706/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_706/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_706/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_706_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_706/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_706/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_706/addAddV2$while/lstm_cell_706/MatMul:product:0&while/lstm_cell_706/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_706/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_706_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_706/BiasAddBiasAddwhile/lstm_cell_706/add:z:02while/lstm_cell_706/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_706/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_706/splitSplit,while/lstm_cell_706/split/split_dim:output:0$while/lstm_cell_706/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_706/SigmoidSigmoid"while/lstm_cell_706/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_706/Sigmoid_1Sigmoid"while/lstm_cell_706/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_706/mulMul!while/lstm_cell_706/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_706/ReluRelu"while/lstm_cell_706/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_706/mul_1Mulwhile/lstm_cell_706/Sigmoid:y:0&while/lstm_cell_706/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_706/add_1AddV2while/lstm_cell_706/mul:z:0while/lstm_cell_706/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_706/Sigmoid_2Sigmoid"while/lstm_cell_706/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_706/Relu_1Reluwhile/lstm_cell_706/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_706/mul_2Mul!while/lstm_cell_706/Sigmoid_2:y:0(while/lstm_cell_706/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_706/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_706/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_706/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_706/BiasAdd/ReadVariableOp*^while/lstm_cell_706/MatMul/ReadVariableOp,^while/lstm_cell_706/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_706_biasadd_readvariableop_resource5while_lstm_cell_706_biasadd_readvariableop_resource_0"n
4while_lstm_cell_706_matmul_1_readvariableop_resource6while_lstm_cell_706_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_706_matmul_readvariableop_resource4while_lstm_cell_706_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_706/BiasAdd/ReadVariableOp*while/lstm_cell_706/BiasAdd/ReadVariableOp2V
)while/lstm_cell_706/MatMul/ReadVariableOp)while/lstm_cell_706/MatMul/ReadVariableOp2Z
+while/lstm_cell_706/MatMul_1/ReadVariableOp+while/lstm_cell_706/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_707_layer_call_and_return_conditional_losses_4421577

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
?
?
J__inference_lstm_cell_705_layer_call_and_return_conditional_losses_4421413

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
E__inference_lstm_705_layer_call_and_return_conditional_losses_4417479

inputs?
,lstm_cell_705_matmul_readvariableop_resource:	?A
.lstm_cell_705_matmul_1_readvariableop_resource:	d?<
-lstm_cell_705_biasadd_readvariableop_resource:	?
identity??$lstm_cell_705/BiasAdd/ReadVariableOp?#lstm_cell_705/MatMul/ReadVariableOp?%lstm_cell_705/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_705/MatMul/ReadVariableOpReadVariableOp,lstm_cell_705_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_705/MatMulMatMulstrided_slice_2:output:0+lstm_cell_705/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_705/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_705_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_705/MatMul_1MatMulzeros:output:0-lstm_cell_705/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_705/addAddV2lstm_cell_705/MatMul:product:0 lstm_cell_705/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_705/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_705_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_705/BiasAddBiasAddlstm_cell_705/add:z:0,lstm_cell_705/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_705/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_705/splitSplit&lstm_cell_705/split/split_dim:output:0lstm_cell_705/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_705/SigmoidSigmoidlstm_cell_705/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_705/Sigmoid_1Sigmoidlstm_cell_705/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_705/mulMullstm_cell_705/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_705/ReluRelulstm_cell_705/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_705/mul_1Mullstm_cell_705/Sigmoid:y:0 lstm_cell_705/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_705/add_1AddV2lstm_cell_705/mul:z:0lstm_cell_705/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_705/Sigmoid_2Sigmoidlstm_cell_705/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_705/Relu_1Relulstm_cell_705/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_705/mul_2Mullstm_cell_705/Sigmoid_2:y:0"lstm_cell_705/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_705_matmul_readvariableop_resource.lstm_cell_705_matmul_1_readvariableop_resource-lstm_cell_705_biasadd_readvariableop_resource*
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
while_body_4417395*
condR
while_cond_4417394*K
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
NoOpNoOp%^lstm_cell_705/BiasAdd/ReadVariableOp$^lstm_cell_705/MatMul/ReadVariableOp&^lstm_cell_705/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_705/BiasAdd/ReadVariableOp$lstm_cell_705/BiasAdd/ReadVariableOp2J
#lstm_cell_705/MatMul/ReadVariableOp#lstm_cell_705/MatMul/ReadVariableOp2N
%lstm_cell_705/MatMul_1/ReadVariableOp%lstm_cell_705/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
while_body_4420783
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_707_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_707_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_707_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_707_matmul_readvariableop_resource:2(F
4while_lstm_cell_707_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_707_biasadd_readvariableop_resource:(??*while/lstm_cell_707/BiasAdd/ReadVariableOp?)while/lstm_cell_707/MatMul/ReadVariableOp?+while/lstm_cell_707/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_707/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_707_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_707/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_707/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_707/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_707_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_707/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_707/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_707/addAddV2$while/lstm_cell_707/MatMul:product:0&while/lstm_cell_707/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_707/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_707_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_707/BiasAddBiasAddwhile/lstm_cell_707/add:z:02while/lstm_cell_707/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_707/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_707/splitSplit,while/lstm_cell_707/split/split_dim:output:0$while/lstm_cell_707/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_707/SigmoidSigmoid"while/lstm_cell_707/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_707/Sigmoid_1Sigmoid"while/lstm_cell_707/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_707/mulMul!while/lstm_cell_707/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_707/ReluRelu"while/lstm_cell_707/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_707/mul_1Mulwhile/lstm_cell_707/Sigmoid:y:0&while/lstm_cell_707/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_707/add_1AddV2while/lstm_cell_707/mul:z:0while/lstm_cell_707/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_707/Sigmoid_2Sigmoid"while/lstm_cell_707/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_707/Relu_1Reluwhile/lstm_cell_707/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_707/mul_2Mul!while/lstm_cell_707/Sigmoid_2:y:0(while/lstm_cell_707/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_707/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_707/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_707/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_707/BiasAdd/ReadVariableOp*^while/lstm_cell_707/MatMul/ReadVariableOp,^while/lstm_cell_707/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_707_biasadd_readvariableop_resource5while_lstm_cell_707_biasadd_readvariableop_resource_0"n
4while_lstm_cell_707_matmul_1_readvariableop_resource6while_lstm_cell_707_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_707_matmul_readvariableop_resource4while_lstm_cell_707_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_707/BiasAdd/ReadVariableOp*while/lstm_cell_707/BiasAdd/ReadVariableOp2V
)while/lstm_cell_707/MatMul/ReadVariableOp)while/lstm_cell_707/MatMul/ReadVariableOp2Z
+while/lstm_cell_707/MatMul_1/ReadVariableOp+while/lstm_cell_707/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_706_layer_call_fn_4420075
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
E__inference_lstm_706_layer_call_and_return_conditional_losses_4416780|
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
?J
?
E__inference_lstm_705_layer_call_and_return_conditional_losses_4418325

inputs?
,lstm_cell_705_matmul_readvariableop_resource:	?A
.lstm_cell_705_matmul_1_readvariableop_resource:	d?<
-lstm_cell_705_biasadd_readvariableop_resource:	?
identity??$lstm_cell_705/BiasAdd/ReadVariableOp?#lstm_cell_705/MatMul/ReadVariableOp?%lstm_cell_705/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_705/MatMul/ReadVariableOpReadVariableOp,lstm_cell_705_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_705/MatMulMatMulstrided_slice_2:output:0+lstm_cell_705/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_705/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_705_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_705/MatMul_1MatMulzeros:output:0-lstm_cell_705/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_705/addAddV2lstm_cell_705/MatMul:product:0 lstm_cell_705/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_705/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_705_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_705/BiasAddBiasAddlstm_cell_705/add:z:0,lstm_cell_705/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_705/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_705/splitSplit&lstm_cell_705/split/split_dim:output:0lstm_cell_705/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_705/SigmoidSigmoidlstm_cell_705/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_705/Sigmoid_1Sigmoidlstm_cell_705/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_705/mulMullstm_cell_705/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_705/ReluRelulstm_cell_705/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_705/mul_1Mullstm_cell_705/Sigmoid:y:0 lstm_cell_705/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_705/add_1AddV2lstm_cell_705/mul:z:0lstm_cell_705/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_705/Sigmoid_2Sigmoidlstm_cell_705/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_705/Relu_1Relulstm_cell_705/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_705/mul_2Mullstm_cell_705/Sigmoid_2:y:0"lstm_cell_705/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_705_matmul_readvariableop_resource.lstm_cell_705_matmul_1_readvariableop_resource-lstm_cell_705_biasadd_readvariableop_resource*
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
while_body_4418241*
condR
while_cond_4418240*K
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
NoOpNoOp%^lstm_cell_705/BiasAdd/ReadVariableOp$^lstm_cell_705/MatMul/ReadVariableOp&^lstm_cell_705/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_705/BiasAdd/ReadVariableOp$lstm_cell_705/BiasAdd/ReadVariableOp2J
#lstm_cell_705/MatMul/ReadVariableOp#lstm_cell_705/MatMul/ReadVariableOp2N
%lstm_cell_705/MatMul_1/ReadVariableOp%lstm_cell_705/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?K
?
E__inference_lstm_705_layer_call_and_return_conditional_losses_4419778
inputs_0?
,lstm_cell_705_matmul_readvariableop_resource:	?A
.lstm_cell_705_matmul_1_readvariableop_resource:	d?<
-lstm_cell_705_biasadd_readvariableop_resource:	?
identity??$lstm_cell_705/BiasAdd/ReadVariableOp?#lstm_cell_705/MatMul/ReadVariableOp?%lstm_cell_705/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_705/MatMul/ReadVariableOpReadVariableOp,lstm_cell_705_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_705/MatMulMatMulstrided_slice_2:output:0+lstm_cell_705/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_705/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_705_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_705/MatMul_1MatMulzeros:output:0-lstm_cell_705/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_705/addAddV2lstm_cell_705/MatMul:product:0 lstm_cell_705/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_705/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_705_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_705/BiasAddBiasAddlstm_cell_705/add:z:0,lstm_cell_705/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_705/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_705/splitSplit&lstm_cell_705/split/split_dim:output:0lstm_cell_705/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_705/SigmoidSigmoidlstm_cell_705/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_705/Sigmoid_1Sigmoidlstm_cell_705/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_705/mulMullstm_cell_705/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_705/ReluRelulstm_cell_705/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_705/mul_1Mullstm_cell_705/Sigmoid:y:0 lstm_cell_705/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_705/add_1AddV2lstm_cell_705/mul:z:0lstm_cell_705/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_705/Sigmoid_2Sigmoidlstm_cell_705/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_705/Relu_1Relulstm_cell_705/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_705/mul_2Mullstm_cell_705/Sigmoid_2:y:0"lstm_cell_705/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_705_matmul_readvariableop_resource.lstm_cell_705_matmul_1_readvariableop_resource-lstm_cell_705_biasadd_readvariableop_resource*
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
while_body_4419694*
condR
while_cond_4419693*K
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
NoOpNoOp%^lstm_cell_705/BiasAdd/ReadVariableOp$^lstm_cell_705/MatMul/ReadVariableOp&^lstm_cell_705/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_705/BiasAdd/ReadVariableOp$lstm_cell_705/BiasAdd/ReadVariableOp2J
#lstm_cell_705/MatMul/ReadVariableOp#lstm_cell_705/MatMul/ReadVariableOp2N
%lstm_cell_705/MatMul_1/ReadVariableOp%lstm_cell_705/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?

?
lstm_707_while_cond_4419357.
*lstm_707_while_lstm_707_while_loop_counter4
0lstm_707_while_lstm_707_while_maximum_iterations
lstm_707_while_placeholder 
lstm_707_while_placeholder_1 
lstm_707_while_placeholder_2 
lstm_707_while_placeholder_30
,lstm_707_while_less_lstm_707_strided_slice_1G
Clstm_707_while_lstm_707_while_cond_4419357___redundant_placeholder0G
Clstm_707_while_lstm_707_while_cond_4419357___redundant_placeholder1G
Clstm_707_while_lstm_707_while_cond_4419357___redundant_placeholder2G
Clstm_707_while_lstm_707_while_cond_4419357___redundant_placeholder3
lstm_707_while_identity
?
lstm_707/while/LessLesslstm_707_while_placeholder,lstm_707_while_less_lstm_707_strided_slice_1*
T0*
_output_shapes
: ]
lstm_707/while/IdentityIdentitylstm_707/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_707_while_identity lstm_707/while/Identity:output:0*(
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
E__inference_lstm_707_layer_call_and_return_conditional_losses_4417779

inputs>
,lstm_cell_707_matmul_readvariableop_resource:2(@
.lstm_cell_707_matmul_1_readvariableop_resource:
(;
-lstm_cell_707_biasadd_readvariableop_resource:(
identity??$lstm_cell_707/BiasAdd/ReadVariableOp?#lstm_cell_707/MatMul/ReadVariableOp?%lstm_cell_707/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_707/MatMul/ReadVariableOpReadVariableOp,lstm_cell_707_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_707/MatMulMatMulstrided_slice_2:output:0+lstm_cell_707/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_707/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_707_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_707/MatMul_1MatMulzeros:output:0-lstm_cell_707/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_707/addAddV2lstm_cell_707/MatMul:product:0 lstm_cell_707/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_707/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_707_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_707/BiasAddBiasAddlstm_cell_707/add:z:0,lstm_cell_707/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_707/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_707/splitSplit&lstm_cell_707/split/split_dim:output:0lstm_cell_707/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_707/SigmoidSigmoidlstm_cell_707/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_707/Sigmoid_1Sigmoidlstm_cell_707/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_707/mulMullstm_cell_707/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_707/ReluRelulstm_cell_707/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_707/mul_1Mullstm_cell_707/Sigmoid:y:0 lstm_cell_707/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_707/add_1AddV2lstm_cell_707/mul:z:0lstm_cell_707/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_707/Sigmoid_2Sigmoidlstm_cell_707/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_707/Relu_1Relulstm_cell_707/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_707/mul_2Mullstm_cell_707/Sigmoid_2:y:0"lstm_cell_707/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_707_matmul_readvariableop_resource.lstm_cell_707_matmul_1_readvariableop_resource-lstm_cell_707_biasadd_readvariableop_resource*
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
while_body_4417695*
condR
while_cond_4417694*K
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
NoOpNoOp%^lstm_cell_707/BiasAdd/ReadVariableOp$^lstm_cell_707/MatMul/ReadVariableOp&^lstm_cell_707/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_707/BiasAdd/ReadVariableOp$lstm_cell_707/BiasAdd/ReadVariableOp2J
#lstm_cell_707/MatMul/ReadVariableOp#lstm_cell_707/MatMul/ReadVariableOp2N
%lstm_cell_707/MatMul_1/ReadVariableOp%lstm_cell_707/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
while_cond_4417544
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4417544___redundant_placeholder05
1while_while_cond_4417544___redundant_placeholder15
1while_while_cond_4417544___redundant_placeholder25
1while_while_cond_4417544___redundant_placeholder3
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
E__inference_lstm_707_layer_call_and_return_conditional_losses_4421296

inputs>
,lstm_cell_707_matmul_readvariableop_resource:2(@
.lstm_cell_707_matmul_1_readvariableop_resource:
(;
-lstm_cell_707_biasadd_readvariableop_resource:(
identity??$lstm_cell_707/BiasAdd/ReadVariableOp?#lstm_cell_707/MatMul/ReadVariableOp?%lstm_cell_707/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_707/MatMul/ReadVariableOpReadVariableOp,lstm_cell_707_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_707/MatMulMatMulstrided_slice_2:output:0+lstm_cell_707/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_707/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_707_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_707/MatMul_1MatMulzeros:output:0-lstm_cell_707/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_707/addAddV2lstm_cell_707/MatMul:product:0 lstm_cell_707/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_707/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_707_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_707/BiasAddBiasAddlstm_cell_707/add:z:0,lstm_cell_707/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_707/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_707/splitSplit&lstm_cell_707/split/split_dim:output:0lstm_cell_707/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_707/SigmoidSigmoidlstm_cell_707/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_707/Sigmoid_1Sigmoidlstm_cell_707/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_707/mulMullstm_cell_707/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_707/ReluRelulstm_cell_707/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_707/mul_1Mullstm_cell_707/Sigmoid:y:0 lstm_cell_707/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_707/add_1AddV2lstm_cell_707/mul:z:0lstm_cell_707/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_707/Sigmoid_2Sigmoidlstm_cell_707/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_707/Relu_1Relulstm_cell_707/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_707/mul_2Mullstm_cell_707/Sigmoid_2:y:0"lstm_cell_707/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_707_matmul_readvariableop_resource.lstm_cell_707_matmul_1_readvariableop_resource-lstm_cell_707_biasadd_readvariableop_resource*
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
while_body_4421212*
condR
while_cond_4421211*K
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
NoOpNoOp%^lstm_cell_707/BiasAdd/ReadVariableOp$^lstm_cell_707/MatMul/ReadVariableOp&^lstm_cell_707/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_707/BiasAdd/ReadVariableOp$lstm_cell_707/BiasAdd/ReadVariableOp2J
#lstm_cell_707/MatMul/ReadVariableOp#lstm_cell_707/MatMul/ReadVariableOp2N
%lstm_cell_707/MatMul_1/ReadVariableOp%lstm_cell_707/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
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
lstm_705_input;
 serving_default_lstm_705_input:0?????????=
	dense_2350
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
2dense_235/kernel
:2dense_235/bias
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
0:.	?2lstm_705/lstm_cell_705/kernel
::8	d?2'lstm_705/lstm_cell_705/recurrent_kernel
*:(?2lstm_705/lstm_cell_705/bias
0:.	d?2lstm_706/lstm_cell_706/kernel
::8	2?2'lstm_706/lstm_cell_706/recurrent_kernel
*:(?2lstm_706/lstm_cell_706/bias
/:-2(2lstm_707/lstm_cell_707/kernel
9:7
(2'lstm_707/lstm_cell_707/recurrent_kernel
):'(2lstm_707/lstm_cell_707/bias
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
2Adam/dense_235/kernel/m
!:2Adam/dense_235/bias/m
5:3	?2$Adam/lstm_705/lstm_cell_705/kernel/m
?:=	d?2.Adam/lstm_705/lstm_cell_705/recurrent_kernel/m
/:-?2"Adam/lstm_705/lstm_cell_705/bias/m
5:3	d?2$Adam/lstm_706/lstm_cell_706/kernel/m
?:=	2?2.Adam/lstm_706/lstm_cell_706/recurrent_kernel/m
/:-?2"Adam/lstm_706/lstm_cell_706/bias/m
4:22(2$Adam/lstm_707/lstm_cell_707/kernel/m
>:<
(2.Adam/lstm_707/lstm_cell_707/recurrent_kernel/m
.:,(2"Adam/lstm_707/lstm_cell_707/bias/m
':%
2Adam/dense_235/kernel/v
!:2Adam/dense_235/bias/v
5:3	?2$Adam/lstm_705/lstm_cell_705/kernel/v
?:=	d?2.Adam/lstm_705/lstm_cell_705/recurrent_kernel/v
/:-?2"Adam/lstm_705/lstm_cell_705/bias/v
5:3	d?2$Adam/lstm_706/lstm_cell_706/kernel/v
?:=	2?2.Adam/lstm_706/lstm_cell_706/recurrent_kernel/v
/:-?2"Adam/lstm_706/lstm_cell_706/bias/v
4:22(2$Adam/lstm_707/lstm_cell_707/kernel/v
>:<
(2.Adam/lstm_707/lstm_cell_707/recurrent_kernel/v
.:,(2"Adam/lstm_707/lstm_cell_707/bias/v
?2?
0__inference_sequential_235_layer_call_fn_4417829
0__inference_sequential_235_layer_call_fn_4418567
0__inference_sequential_235_layer_call_fn_4418594
0__inference_sequential_235_layer_call_fn_4418445?
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
K__inference_sequential_235_layer_call_and_return_conditional_losses_4419021
K__inference_sequential_235_layer_call_and_return_conditional_losses_4419448
K__inference_sequential_235_layer_call_and_return_conditional_losses_4418475
K__inference_sequential_235_layer_call_and_return_conditional_losses_4418505?
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
"__inference__wrapped_model_4416280lstm_705_input"?
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
*__inference_lstm_705_layer_call_fn_4419459
*__inference_lstm_705_layer_call_fn_4419470
*__inference_lstm_705_layer_call_fn_4419481
*__inference_lstm_705_layer_call_fn_4419492?
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
E__inference_lstm_705_layer_call_and_return_conditional_losses_4419635
E__inference_lstm_705_layer_call_and_return_conditional_losses_4419778
E__inference_lstm_705_layer_call_and_return_conditional_losses_4419921
E__inference_lstm_705_layer_call_and_return_conditional_losses_4420064?
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
*__inference_lstm_706_layer_call_fn_4420075
*__inference_lstm_706_layer_call_fn_4420086
*__inference_lstm_706_layer_call_fn_4420097
*__inference_lstm_706_layer_call_fn_4420108?
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
E__inference_lstm_706_layer_call_and_return_conditional_losses_4420251
E__inference_lstm_706_layer_call_and_return_conditional_losses_4420394
E__inference_lstm_706_layer_call_and_return_conditional_losses_4420537
E__inference_lstm_706_layer_call_and_return_conditional_losses_4420680?
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
*__inference_lstm_707_layer_call_fn_4420691
*__inference_lstm_707_layer_call_fn_4420702
*__inference_lstm_707_layer_call_fn_4420713
*__inference_lstm_707_layer_call_fn_4420724?
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
E__inference_lstm_707_layer_call_and_return_conditional_losses_4420867
E__inference_lstm_707_layer_call_and_return_conditional_losses_4421010
E__inference_lstm_707_layer_call_and_return_conditional_losses_4421153
E__inference_lstm_707_layer_call_and_return_conditional_losses_4421296?
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
+__inference_dense_235_layer_call_fn_4421305?
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
F__inference_dense_235_layer_call_and_return_conditional_losses_4421315?
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
%__inference_signature_wrapper_4418540lstm_705_input"?
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
/__inference_lstm_cell_705_layer_call_fn_4421332
/__inference_lstm_cell_705_layer_call_fn_4421349?
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
J__inference_lstm_cell_705_layer_call_and_return_conditional_losses_4421381
J__inference_lstm_cell_705_layer_call_and_return_conditional_losses_4421413?
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
/__inference_lstm_cell_706_layer_call_fn_4421430
/__inference_lstm_cell_706_layer_call_fn_4421447?
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
J__inference_lstm_cell_706_layer_call_and_return_conditional_losses_4421479
J__inference_lstm_cell_706_layer_call_and_return_conditional_losses_4421511?
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
/__inference_lstm_cell_707_layer_call_fn_4421528
/__inference_lstm_cell_707_layer_call_fn_4421545?
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
J__inference_lstm_cell_707_layer_call_and_return_conditional_losses_4421577
J__inference_lstm_cell_707_layer_call_and_return_conditional_losses_4421609?
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
"__inference__wrapped_model_4416280?()*+,-./0;?8
1?.
,?)
lstm_705_input?????????
? "5?2
0
	dense_235#? 
	dense_235??????????
F__inference_dense_235_layer_call_and_return_conditional_losses_4421315\/?,
%?"
 ?
inputs?????????

? "%?"
?
0?????????
? ~
+__inference_dense_235_layer_call_fn_4421305O/?,
%?"
 ?
inputs?????????

? "???????????
E__inference_lstm_705_layer_call_and_return_conditional_losses_4419635?()*O?L
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
E__inference_lstm_705_layer_call_and_return_conditional_losses_4419778?()*O?L
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
E__inference_lstm_705_layer_call_and_return_conditional_losses_4419921q()*??<
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
E__inference_lstm_705_layer_call_and_return_conditional_losses_4420064q()*??<
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
*__inference_lstm_705_layer_call_fn_4419459}()*O?L
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
*__inference_lstm_705_layer_call_fn_4419470}()*O?L
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
*__inference_lstm_705_layer_call_fn_4419481d()*??<
5?2
$?!
inputs?????????

 
p 

 
? "??????????d?
*__inference_lstm_705_layer_call_fn_4419492d()*??<
5?2
$?!
inputs?????????

 
p

 
? "??????????d?
E__inference_lstm_706_layer_call_and_return_conditional_losses_4420251?+,-O?L
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
E__inference_lstm_706_layer_call_and_return_conditional_losses_4420394?+,-O?L
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
E__inference_lstm_706_layer_call_and_return_conditional_losses_4420537q+,-??<
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
E__inference_lstm_706_layer_call_and_return_conditional_losses_4420680q+,-??<
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
*__inference_lstm_706_layer_call_fn_4420075}+,-O?L
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
*__inference_lstm_706_layer_call_fn_4420086}+,-O?L
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
*__inference_lstm_706_layer_call_fn_4420097d+,-??<
5?2
$?!
inputs?????????d

 
p 

 
? "??????????2?
*__inference_lstm_706_layer_call_fn_4420108d+,-??<
5?2
$?!
inputs?????????d

 
p

 
? "??????????2?
E__inference_lstm_707_layer_call_and_return_conditional_losses_4420867}./0O?L
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
E__inference_lstm_707_layer_call_and_return_conditional_losses_4421010}./0O?L
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
E__inference_lstm_707_layer_call_and_return_conditional_losses_4421153m./0??<
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
E__inference_lstm_707_layer_call_and_return_conditional_losses_4421296m./0??<
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
*__inference_lstm_707_layer_call_fn_4420691p./0O?L
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
*__inference_lstm_707_layer_call_fn_4420702p./0O?L
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
*__inference_lstm_707_layer_call_fn_4420713`./0??<
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
*__inference_lstm_707_layer_call_fn_4420724`./0??<
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
J__inference_lstm_cell_705_layer_call_and_return_conditional_losses_4421381?()*??}
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
J__inference_lstm_cell_705_layer_call_and_return_conditional_losses_4421413?()*??}
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
/__inference_lstm_cell_705_layer_call_fn_4421332?()*??}
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
/__inference_lstm_cell_705_layer_call_fn_4421349?()*??}
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
J__inference_lstm_cell_706_layer_call_and_return_conditional_losses_4421479?+,-??}
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
J__inference_lstm_cell_706_layer_call_and_return_conditional_losses_4421511?+,-??}
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
/__inference_lstm_cell_706_layer_call_fn_4421430?+,-??}
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
/__inference_lstm_cell_706_layer_call_fn_4421447?+,-??}
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
J__inference_lstm_cell_707_layer_call_and_return_conditional_losses_4421577?./0??}
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
J__inference_lstm_cell_707_layer_call_and_return_conditional_losses_4421609?./0??}
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
/__inference_lstm_cell_707_layer_call_fn_4421528?./0??}
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
/__inference_lstm_cell_707_layer_call_fn_4421545?./0??}
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
K__inference_sequential_235_layer_call_and_return_conditional_losses_4418475y()*+,-./0C?@
9?6
,?)
lstm_705_input?????????
p 

 
? "%?"
?
0?????????
? ?
K__inference_sequential_235_layer_call_and_return_conditional_losses_4418505y()*+,-./0C?@
9?6
,?)
lstm_705_input?????????
p

 
? "%?"
?
0?????????
? ?
K__inference_sequential_235_layer_call_and_return_conditional_losses_4419021q()*+,-./0;?8
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
K__inference_sequential_235_layer_call_and_return_conditional_losses_4419448q()*+,-./0;?8
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
0__inference_sequential_235_layer_call_fn_4417829l()*+,-./0C?@
9?6
,?)
lstm_705_input?????????
p 

 
? "???????????
0__inference_sequential_235_layer_call_fn_4418445l()*+,-./0C?@
9?6
,?)
lstm_705_input?????????
p

 
? "???????????
0__inference_sequential_235_layer_call_fn_4418567d()*+,-./0;?8
1?.
$?!
inputs?????????
p 

 
? "???????????
0__inference_sequential_235_layer_call_fn_4418594d()*+,-./0;?8
1?.
$?!
inputs?????????
p

 
? "???????????
%__inference_signature_wrapper_4418540?()*+,-./0M?J
? 
C?@
>
lstm_705_input,?)
lstm_705_input?????????"5?2
0
	dense_235#? 
	dense_235?????????