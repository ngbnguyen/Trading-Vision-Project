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
dense_282/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*!
shared_namedense_282/kernel
u
$dense_282/kernel/Read/ReadVariableOpReadVariableOpdense_282/kernel*
_output_shapes

:
*
dtype0
t
dense_282/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_282/bias
m
"dense_282/bias/Read/ReadVariableOpReadVariableOpdense_282/bias*
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
lstm_846/lstm_cell_846/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*.
shared_namelstm_846/lstm_cell_846/kernel
?
1lstm_846/lstm_cell_846/kernel/Read/ReadVariableOpReadVariableOplstm_846/lstm_cell_846/kernel*
_output_shapes
:	?*
dtype0
?
'lstm_846/lstm_cell_846/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*8
shared_name)'lstm_846/lstm_cell_846/recurrent_kernel
?
;lstm_846/lstm_cell_846/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_846/lstm_cell_846/recurrent_kernel*
_output_shapes
:	d?*
dtype0
?
lstm_846/lstm_cell_846/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_846/lstm_cell_846/bias
?
/lstm_846/lstm_cell_846/bias/Read/ReadVariableOpReadVariableOplstm_846/lstm_cell_846/bias*
_output_shapes	
:?*
dtype0
?
lstm_847/lstm_cell_847/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*.
shared_namelstm_847/lstm_cell_847/kernel
?
1lstm_847/lstm_cell_847/kernel/Read/ReadVariableOpReadVariableOplstm_847/lstm_cell_847/kernel*
_output_shapes
:	d?*
dtype0
?
'lstm_847/lstm_cell_847/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*8
shared_name)'lstm_847/lstm_cell_847/recurrent_kernel
?
;lstm_847/lstm_cell_847/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_847/lstm_cell_847/recurrent_kernel*
_output_shapes
:	2?*
dtype0
?
lstm_847/lstm_cell_847/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_847/lstm_cell_847/bias
?
/lstm_847/lstm_cell_847/bias/Read/ReadVariableOpReadVariableOplstm_847/lstm_cell_847/bias*
_output_shapes	
:?*
dtype0
?
lstm_848/lstm_cell_848/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*.
shared_namelstm_848/lstm_cell_848/kernel
?
1lstm_848/lstm_cell_848/kernel/Read/ReadVariableOpReadVariableOplstm_848/lstm_cell_848/kernel*
_output_shapes

:2(*
dtype0
?
'lstm_848/lstm_cell_848/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*8
shared_name)'lstm_848/lstm_cell_848/recurrent_kernel
?
;lstm_848/lstm_cell_848/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_848/lstm_cell_848/recurrent_kernel*
_output_shapes

:
(*
dtype0
?
lstm_848/lstm_cell_848/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*,
shared_namelstm_848/lstm_cell_848/bias
?
/lstm_848/lstm_cell_848/bias/Read/ReadVariableOpReadVariableOplstm_848/lstm_cell_848/bias*
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
Adam/dense_282/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_282/kernel/m
?
+Adam/dense_282/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_282/kernel/m*
_output_shapes

:
*
dtype0
?
Adam/dense_282/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_282/bias/m
{
)Adam/dense_282/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_282/bias/m*
_output_shapes
:*
dtype0
?
$Adam/lstm_846/lstm_cell_846/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_846/lstm_cell_846/kernel/m
?
8Adam/lstm_846/lstm_cell_846/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_846/lstm_cell_846/kernel/m*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_846/lstm_cell_846/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_846/lstm_cell_846/recurrent_kernel/m
?
BAdam/lstm_846/lstm_cell_846/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_846/lstm_cell_846/recurrent_kernel/m*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_846/lstm_cell_846/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_846/lstm_cell_846/bias/m
?
6Adam/lstm_846/lstm_cell_846/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_846/lstm_cell_846/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_847/lstm_cell_847/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_847/lstm_cell_847/kernel/m
?
8Adam/lstm_847/lstm_cell_847/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_847/lstm_cell_847/kernel/m*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_847/lstm_cell_847/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_847/lstm_cell_847/recurrent_kernel/m
?
BAdam/lstm_847/lstm_cell_847/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_847/lstm_cell_847/recurrent_kernel/m*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_847/lstm_cell_847/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_847/lstm_cell_847/bias/m
?
6Adam/lstm_847/lstm_cell_847/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_847/lstm_cell_847/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_848/lstm_cell_848/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_848/lstm_cell_848/kernel/m
?
8Adam/lstm_848/lstm_cell_848/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_848/lstm_cell_848/kernel/m*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_848/lstm_cell_848/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_848/lstm_cell_848/recurrent_kernel/m
?
BAdam/lstm_848/lstm_cell_848/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_848/lstm_cell_848/recurrent_kernel/m*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_848/lstm_cell_848/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_848/lstm_cell_848/bias/m
?
6Adam/lstm_848/lstm_cell_848/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_848/lstm_cell_848/bias/m*
_output_shapes
:(*
dtype0
?
Adam/dense_282/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_282/kernel/v
?
+Adam/dense_282/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_282/kernel/v*
_output_shapes

:
*
dtype0
?
Adam/dense_282/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_282/bias/v
{
)Adam/dense_282/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_282/bias/v*
_output_shapes
:*
dtype0
?
$Adam/lstm_846/lstm_cell_846/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_846/lstm_cell_846/kernel/v
?
8Adam/lstm_846/lstm_cell_846/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_846/lstm_cell_846/kernel/v*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_846/lstm_cell_846/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_846/lstm_cell_846/recurrent_kernel/v
?
BAdam/lstm_846/lstm_cell_846/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_846/lstm_cell_846/recurrent_kernel/v*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_846/lstm_cell_846/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_846/lstm_cell_846/bias/v
?
6Adam/lstm_846/lstm_cell_846/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_846/lstm_cell_846/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_847/lstm_cell_847/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_847/lstm_cell_847/kernel/v
?
8Adam/lstm_847/lstm_cell_847/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_847/lstm_cell_847/kernel/v*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_847/lstm_cell_847/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_847/lstm_cell_847/recurrent_kernel/v
?
BAdam/lstm_847/lstm_cell_847/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_847/lstm_cell_847/recurrent_kernel/v*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_847/lstm_cell_847/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_847/lstm_cell_847/bias/v
?
6Adam/lstm_847/lstm_cell_847/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_847/lstm_cell_847/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_848/lstm_cell_848/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_848/lstm_cell_848/kernel/v
?
8Adam/lstm_848/lstm_cell_848/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_848/lstm_cell_848/kernel/v*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_848/lstm_cell_848/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_848/lstm_cell_848/recurrent_kernel/v
?
BAdam/lstm_848/lstm_cell_848/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_848/lstm_cell_848/recurrent_kernel/v*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_848/lstm_cell_848/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_848/lstm_cell_848/bias/v
?
6Adam/lstm_848/lstm_cell_848/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_848/lstm_cell_848/bias/v*
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
VARIABLE_VALUEdense_282/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_282/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUElstm_846/lstm_cell_846/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_846/lstm_cell_846/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_846/lstm_cell_846/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_847/lstm_cell_847/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_847/lstm_cell_847/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_847/lstm_cell_847/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_848/lstm_cell_848/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_848/lstm_cell_848/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_848/lstm_cell_848/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEAdam/dense_282/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_282/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_846/lstm_cell_846/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_846/lstm_cell_846/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_846/lstm_cell_846/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_847/lstm_cell_847/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_847/lstm_cell_847/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_847/lstm_cell_847/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_848/lstm_cell_848/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_848/lstm_cell_848/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_848/lstm_cell_848/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_282/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_282/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_846/lstm_cell_846/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_846/lstm_cell_846/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_846/lstm_cell_846/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_847/lstm_cell_847/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_847/lstm_cell_847/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_847/lstm_cell_847/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_848/lstm_cell_848/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_848/lstm_cell_848/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_848/lstm_cell_848/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_lstm_846_inputPlaceholder*+
_output_shapes
:?????????*
dtype0* 
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_846_inputlstm_846/lstm_cell_846/kernel'lstm_846/lstm_cell_846/recurrent_kernellstm_846/lstm_cell_846/biaslstm_847/lstm_cell_847/kernel'lstm_847/lstm_cell_847/recurrent_kernellstm_847/lstm_cell_847/biaslstm_848/lstm_cell_848/kernel'lstm_848/lstm_cell_848/recurrent_kernellstm_848/lstm_cell_848/biasdense_282/kerneldense_282/bias*
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
%__inference_signature_wrapper_5095414
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$dense_282/kernel/Read/ReadVariableOp"dense_282/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_846/lstm_cell_846/kernel/Read/ReadVariableOp;lstm_846/lstm_cell_846/recurrent_kernel/Read/ReadVariableOp/lstm_846/lstm_cell_846/bias/Read/ReadVariableOp1lstm_847/lstm_cell_847/kernel/Read/ReadVariableOp;lstm_847/lstm_cell_847/recurrent_kernel/Read/ReadVariableOp/lstm_847/lstm_cell_847/bias/Read/ReadVariableOp1lstm_848/lstm_cell_848/kernel/Read/ReadVariableOp;lstm_848/lstm_cell_848/recurrent_kernel/Read/ReadVariableOp/lstm_848/lstm_cell_848/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp+Adam/dense_282/kernel/m/Read/ReadVariableOp)Adam/dense_282/bias/m/Read/ReadVariableOp8Adam/lstm_846/lstm_cell_846/kernel/m/Read/ReadVariableOpBAdam/lstm_846/lstm_cell_846/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_846/lstm_cell_846/bias/m/Read/ReadVariableOp8Adam/lstm_847/lstm_cell_847/kernel/m/Read/ReadVariableOpBAdam/lstm_847/lstm_cell_847/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_847/lstm_cell_847/bias/m/Read/ReadVariableOp8Adam/lstm_848/lstm_cell_848/kernel/m/Read/ReadVariableOpBAdam/lstm_848/lstm_cell_848/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_848/lstm_cell_848/bias/m/Read/ReadVariableOp+Adam/dense_282/kernel/v/Read/ReadVariableOp)Adam/dense_282/bias/v/Read/ReadVariableOp8Adam/lstm_846/lstm_cell_846/kernel/v/Read/ReadVariableOpBAdam/lstm_846/lstm_cell_846/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_846/lstm_cell_846/bias/v/Read/ReadVariableOp8Adam/lstm_847/lstm_cell_847/kernel/v/Read/ReadVariableOpBAdam/lstm_847/lstm_cell_847/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_847/lstm_cell_847/bias/v/Read/ReadVariableOp8Adam/lstm_848/lstm_cell_848/kernel/v/Read/ReadVariableOpBAdam/lstm_848/lstm_cell_848/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_848/lstm_cell_848/bias/v/Read/ReadVariableOpConst*5
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
 __inference__traced_save_5098626
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_282/kerneldense_282/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_846/lstm_cell_846/kernel'lstm_846/lstm_cell_846/recurrent_kernellstm_846/lstm_cell_846/biaslstm_847/lstm_cell_847/kernel'lstm_847/lstm_cell_847/recurrent_kernellstm_847/lstm_cell_847/biaslstm_848/lstm_cell_848/kernel'lstm_848/lstm_cell_848/recurrent_kernellstm_848/lstm_cell_848/biastotalcountAdam/dense_282/kernel/mAdam/dense_282/bias/m$Adam/lstm_846/lstm_cell_846/kernel/m.Adam/lstm_846/lstm_cell_846/recurrent_kernel/m"Adam/lstm_846/lstm_cell_846/bias/m$Adam/lstm_847/lstm_cell_847/kernel/m.Adam/lstm_847/lstm_cell_847/recurrent_kernel/m"Adam/lstm_847/lstm_cell_847/bias/m$Adam/lstm_848/lstm_cell_848/kernel/m.Adam/lstm_848/lstm_cell_848/recurrent_kernel/m"Adam/lstm_848/lstm_cell_848/bias/mAdam/dense_282/kernel/vAdam/dense_282/bias/v$Adam/lstm_846/lstm_cell_846/kernel/v.Adam/lstm_846/lstm_cell_846/recurrent_kernel/v"Adam/lstm_846/lstm_cell_846/bias/v$Adam/lstm_847/lstm_cell_847/kernel/v.Adam/lstm_847/lstm_cell_847/recurrent_kernel/v"Adam/lstm_847/lstm_cell_847/bias/v$Adam/lstm_848/lstm_cell_848/kernel/v.Adam/lstm_848/lstm_cell_848/recurrent_kernel/v"Adam/lstm_848/lstm_cell_848/bias/v*4
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
#__inference__traced_restore_5098756??+
?
?
*sequential_282_lstm_847_while_cond_5092924L
Hsequential_282_lstm_847_while_sequential_282_lstm_847_while_loop_counterR
Nsequential_282_lstm_847_while_sequential_282_lstm_847_while_maximum_iterations-
)sequential_282_lstm_847_while_placeholder/
+sequential_282_lstm_847_while_placeholder_1/
+sequential_282_lstm_847_while_placeholder_2/
+sequential_282_lstm_847_while_placeholder_3N
Jsequential_282_lstm_847_while_less_sequential_282_lstm_847_strided_slice_1e
asequential_282_lstm_847_while_sequential_282_lstm_847_while_cond_5092924___redundant_placeholder0e
asequential_282_lstm_847_while_sequential_282_lstm_847_while_cond_5092924___redundant_placeholder1e
asequential_282_lstm_847_while_sequential_282_lstm_847_while_cond_5092924___redundant_placeholder2e
asequential_282_lstm_847_while_sequential_282_lstm_847_while_cond_5092924___redundant_placeholder3*
&sequential_282_lstm_847_while_identity
?
"sequential_282/lstm_847/while/LessLess)sequential_282_lstm_847_while_placeholderJsequential_282_lstm_847_while_less_sequential_282_lstm_847_strided_slice_1*
T0*
_output_shapes
: {
&sequential_282/lstm_847/while/IdentityIdentity&sequential_282/lstm_847/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_282_lstm_847_while_identity/sequential_282/lstm_847/while/Identity:output:0*(
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
E__inference_lstm_847_layer_call_and_return_conditional_losses_5097411

inputs?
,lstm_cell_847_matmul_readvariableop_resource:	d?A
.lstm_cell_847_matmul_1_readvariableop_resource:	2?<
-lstm_cell_847_biasadd_readvariableop_resource:	?
identity??$lstm_cell_847/BiasAdd/ReadVariableOp?#lstm_cell_847/MatMul/ReadVariableOp?%lstm_cell_847/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_847/MatMul/ReadVariableOpReadVariableOp,lstm_cell_847_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_847/MatMulMatMulstrided_slice_2:output:0+lstm_cell_847/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_847/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_847_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_847/MatMul_1MatMulzeros:output:0-lstm_cell_847/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_847/addAddV2lstm_cell_847/MatMul:product:0 lstm_cell_847/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_847/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_847_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_847/BiasAddBiasAddlstm_cell_847/add:z:0,lstm_cell_847/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_847/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_847/splitSplit&lstm_cell_847/split/split_dim:output:0lstm_cell_847/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_847/SigmoidSigmoidlstm_cell_847/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_847/Sigmoid_1Sigmoidlstm_cell_847/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_847/mulMullstm_cell_847/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_847/ReluRelulstm_cell_847/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_847/mul_1Mullstm_cell_847/Sigmoid:y:0 lstm_cell_847/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_847/add_1AddV2lstm_cell_847/mul:z:0lstm_cell_847/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_847/Sigmoid_2Sigmoidlstm_cell_847/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_847/Relu_1Relulstm_cell_847/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_847/mul_2Mullstm_cell_847/Sigmoid_2:y:0"lstm_cell_847/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_847_matmul_readvariableop_resource.lstm_cell_847_matmul_1_readvariableop_resource-lstm_cell_847_biasadd_readvariableop_resource*
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
while_body_5097327*
condR
while_cond_5097326*K
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
NoOpNoOp%^lstm_cell_847/BiasAdd/ReadVariableOp$^lstm_cell_847/MatMul/ReadVariableOp&^lstm_cell_847/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_847/BiasAdd/ReadVariableOp$lstm_cell_847/BiasAdd/ReadVariableOp2J
#lstm_cell_847/MatMul/ReadVariableOp#lstm_cell_847/MatMul/ReadVariableOp2N
%lstm_cell_847/MatMul_1/ReadVariableOp%lstm_cell_847/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
/__inference_lstm_cell_847_layer_call_fn_5098321

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
J__inference_lstm_cell_847_layer_call_and_return_conditional_losses_5093717o
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

?
lstm_847_while_cond_5095665.
*lstm_847_while_lstm_847_while_loop_counter4
0lstm_847_while_lstm_847_while_maximum_iterations
lstm_847_while_placeholder 
lstm_847_while_placeholder_1 
lstm_847_while_placeholder_2 
lstm_847_while_placeholder_30
,lstm_847_while_less_lstm_847_strided_slice_1G
Clstm_847_while_lstm_847_while_cond_5095665___redundant_placeholder0G
Clstm_847_while_lstm_847_while_cond_5095665___redundant_placeholder1G
Clstm_847_while_lstm_847_while_cond_5095665___redundant_placeholder2G
Clstm_847_while_lstm_847_while_cond_5095665___redundant_placeholder3
lstm_847_while_identity
?
lstm_847/while/LessLesslstm_847_while_placeholder,lstm_847_while_less_lstm_847_strided_slice_1*
T0*
_output_shapes
: ]
lstm_847/while/IdentityIdentitylstm_847/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_847_while_identity lstm_847/while/Identity:output:0*(
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
K__inference_sequential_282_layer_call_and_return_conditional_losses_5095379
lstm_846_input#
lstm_846_5095352:	?#
lstm_846_5095354:	d?
lstm_846_5095356:	?#
lstm_847_5095359:	d?#
lstm_847_5095361:	2?
lstm_847_5095363:	?"
lstm_848_5095366:2("
lstm_848_5095368:
(
lstm_848_5095370:(#
dense_282_5095373:

dense_282_5095375:
identity??!dense_282/StatefulPartitionedCall? lstm_846/StatefulPartitionedCall? lstm_847/StatefulPartitionedCall? lstm_848/StatefulPartitionedCall?
 lstm_846/StatefulPartitionedCallStatefulPartitionedCalllstm_846_inputlstm_846_5095352lstm_846_5095354lstm_846_5095356*
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
E__inference_lstm_846_layer_call_and_return_conditional_losses_5095199?
 lstm_847/StatefulPartitionedCallStatefulPartitionedCall)lstm_846/StatefulPartitionedCall:output:0lstm_847_5095359lstm_847_5095361lstm_847_5095363*
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
E__inference_lstm_847_layer_call_and_return_conditional_losses_5095034?
 lstm_848/StatefulPartitionedCallStatefulPartitionedCall)lstm_847/StatefulPartitionedCall:output:0lstm_848_5095366lstm_848_5095368lstm_848_5095370*
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
E__inference_lstm_848_layer_call_and_return_conditional_losses_5094869?
!dense_282/StatefulPartitionedCallStatefulPartitionedCall)lstm_848/StatefulPartitionedCall:output:0dense_282_5095373dense_282_5095375*
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
F__inference_dense_282_layer_call_and_return_conditional_losses_5094671y
IdentityIdentity*dense_282/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_282/StatefulPartitionedCall!^lstm_846/StatefulPartitionedCall!^lstm_847/StatefulPartitionedCall!^lstm_848/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_282/StatefulPartitionedCall!dense_282/StatefulPartitionedCall2D
 lstm_846/StatefulPartitionedCall lstm_846/StatefulPartitionedCall2D
 lstm_847/StatefulPartitionedCall lstm_847/StatefulPartitionedCall2D
 lstm_848/StatefulPartitionedCall lstm_848/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_846_input
?

?
lstm_848_while_cond_5096231.
*lstm_848_while_lstm_848_while_loop_counter4
0lstm_848_while_lstm_848_while_maximum_iterations
lstm_848_while_placeholder 
lstm_848_while_placeholder_1 
lstm_848_while_placeholder_2 
lstm_848_while_placeholder_30
,lstm_848_while_less_lstm_848_strided_slice_1G
Clstm_848_while_lstm_848_while_cond_5096231___redundant_placeholder0G
Clstm_848_while_lstm_848_while_cond_5096231___redundant_placeholder1G
Clstm_848_while_lstm_848_while_cond_5096231___redundant_placeholder2G
Clstm_848_while_lstm_848_while_cond_5096231___redundant_placeholder3
lstm_848_while_identity
?
lstm_848/while/LessLesslstm_848_while_placeholder,lstm_848_while_less_lstm_848_strided_slice_1*
T0*
_output_shapes
: ]
lstm_848/while/IdentityIdentitylstm_848/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_848_while_identity lstm_848/while/Identity:output:0*(
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
/__inference_lstm_cell_848_layer_call_fn_5098402

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
J__inference_lstm_cell_848_layer_call_and_return_conditional_losses_5093921o
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
J__inference_lstm_cell_847_layer_call_and_return_conditional_losses_5093571

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

lstm_848_while_body_5096232.
*lstm_848_while_lstm_848_while_loop_counter4
0lstm_848_while_lstm_848_while_maximum_iterations
lstm_848_while_placeholder 
lstm_848_while_placeholder_1 
lstm_848_while_placeholder_2 
lstm_848_while_placeholder_3-
)lstm_848_while_lstm_848_strided_slice_1_0i
elstm_848_while_tensorarrayv2read_tensorlistgetitem_lstm_848_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_848_while_lstm_cell_848_matmul_readvariableop_resource_0:2(Q
?lstm_848_while_lstm_cell_848_matmul_1_readvariableop_resource_0:
(L
>lstm_848_while_lstm_cell_848_biasadd_readvariableop_resource_0:(
lstm_848_while_identity
lstm_848_while_identity_1
lstm_848_while_identity_2
lstm_848_while_identity_3
lstm_848_while_identity_4
lstm_848_while_identity_5+
'lstm_848_while_lstm_848_strided_slice_1g
clstm_848_while_tensorarrayv2read_tensorlistgetitem_lstm_848_tensorarrayunstack_tensorlistfromtensorM
;lstm_848_while_lstm_cell_848_matmul_readvariableop_resource:2(O
=lstm_848_while_lstm_cell_848_matmul_1_readvariableop_resource:
(J
<lstm_848_while_lstm_cell_848_biasadd_readvariableop_resource:(??3lstm_848/while/lstm_cell_848/BiasAdd/ReadVariableOp?2lstm_848/while/lstm_cell_848/MatMul/ReadVariableOp?4lstm_848/while/lstm_cell_848/MatMul_1/ReadVariableOp?
@lstm_848/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_848/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_848_while_tensorarrayv2read_tensorlistgetitem_lstm_848_tensorarrayunstack_tensorlistfromtensor_0lstm_848_while_placeholderIlstm_848/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_848/while/lstm_cell_848/MatMul/ReadVariableOpReadVariableOp=lstm_848_while_lstm_cell_848_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_848/while/lstm_cell_848/MatMulMatMul9lstm_848/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_848/while/lstm_cell_848/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_848/while/lstm_cell_848/MatMul_1/ReadVariableOpReadVariableOp?lstm_848_while_lstm_cell_848_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_848/while/lstm_cell_848/MatMul_1MatMullstm_848_while_placeholder_2<lstm_848/while/lstm_cell_848/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_848/while/lstm_cell_848/addAddV2-lstm_848/while/lstm_cell_848/MatMul:product:0/lstm_848/while/lstm_cell_848/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_848/while/lstm_cell_848/BiasAdd/ReadVariableOpReadVariableOp>lstm_848_while_lstm_cell_848_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_848/while/lstm_cell_848/BiasAddBiasAdd$lstm_848/while/lstm_cell_848/add:z:0;lstm_848/while/lstm_cell_848/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_848/while/lstm_cell_848/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_848/while/lstm_cell_848/splitSplit5lstm_848/while/lstm_cell_848/split/split_dim:output:0-lstm_848/while/lstm_cell_848/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_848/while/lstm_cell_848/SigmoidSigmoid+lstm_848/while/lstm_cell_848/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_848/while/lstm_cell_848/Sigmoid_1Sigmoid+lstm_848/while/lstm_cell_848/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_848/while/lstm_cell_848/mulMul*lstm_848/while/lstm_cell_848/Sigmoid_1:y:0lstm_848_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_848/while/lstm_cell_848/ReluRelu+lstm_848/while/lstm_cell_848/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_848/while/lstm_cell_848/mul_1Mul(lstm_848/while/lstm_cell_848/Sigmoid:y:0/lstm_848/while/lstm_cell_848/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_848/while/lstm_cell_848/add_1AddV2$lstm_848/while/lstm_cell_848/mul:z:0&lstm_848/while/lstm_cell_848/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_848/while/lstm_cell_848/Sigmoid_2Sigmoid+lstm_848/while/lstm_cell_848/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_848/while/lstm_cell_848/Relu_1Relu&lstm_848/while/lstm_cell_848/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_848/while/lstm_cell_848/mul_2Mul*lstm_848/while/lstm_cell_848/Sigmoid_2:y:01lstm_848/while/lstm_cell_848/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_848/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_848_while_placeholder_1lstm_848_while_placeholder&lstm_848/while/lstm_cell_848/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_848/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_848/while/addAddV2lstm_848_while_placeholderlstm_848/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_848/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_848/while/add_1AddV2*lstm_848_while_lstm_848_while_loop_counterlstm_848/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_848/while/IdentityIdentitylstm_848/while/add_1:z:0^lstm_848/while/NoOp*
T0*
_output_shapes
: ?
lstm_848/while/Identity_1Identity0lstm_848_while_lstm_848_while_maximum_iterations^lstm_848/while/NoOp*
T0*
_output_shapes
: t
lstm_848/while/Identity_2Identitylstm_848/while/add:z:0^lstm_848/while/NoOp*
T0*
_output_shapes
: ?
lstm_848/while/Identity_3IdentityClstm_848/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_848/while/NoOp*
T0*
_output_shapes
: ?
lstm_848/while/Identity_4Identity&lstm_848/while/lstm_cell_848/mul_2:z:0^lstm_848/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_848/while/Identity_5Identity&lstm_848/while/lstm_cell_848/add_1:z:0^lstm_848/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_848/while/NoOpNoOp4^lstm_848/while/lstm_cell_848/BiasAdd/ReadVariableOp3^lstm_848/while/lstm_cell_848/MatMul/ReadVariableOp5^lstm_848/while/lstm_cell_848/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_848_while_identity lstm_848/while/Identity:output:0"?
lstm_848_while_identity_1"lstm_848/while/Identity_1:output:0"?
lstm_848_while_identity_2"lstm_848/while/Identity_2:output:0"?
lstm_848_while_identity_3"lstm_848/while/Identity_3:output:0"?
lstm_848_while_identity_4"lstm_848/while/Identity_4:output:0"?
lstm_848_while_identity_5"lstm_848/while/Identity_5:output:0"T
'lstm_848_while_lstm_848_strided_slice_1)lstm_848_while_lstm_848_strided_slice_1_0"~
<lstm_848_while_lstm_cell_848_biasadd_readvariableop_resource>lstm_848_while_lstm_cell_848_biasadd_readvariableop_resource_0"?
=lstm_848_while_lstm_cell_848_matmul_1_readvariableop_resource?lstm_848_while_lstm_cell_848_matmul_1_readvariableop_resource_0"|
;lstm_848_while_lstm_cell_848_matmul_readvariableop_resource=lstm_848_while_lstm_cell_848_matmul_readvariableop_resource_0"?
clstm_848_while_tensorarrayv2read_tensorlistgetitem_lstm_848_tensorarrayunstack_tensorlistfromtensorelstm_848_while_tensorarrayv2read_tensorlistgetitem_lstm_848_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_848/while/lstm_cell_848/BiasAdd/ReadVariableOp3lstm_848/while/lstm_cell_848/BiasAdd/ReadVariableOp2h
2lstm_848/while/lstm_cell_848/MatMul/ReadVariableOp2lstm_848/while/lstm_cell_848/MatMul/ReadVariableOp2l
4lstm_848/while/lstm_cell_848/MatMul_1/ReadVariableOp4lstm_848/while/lstm_cell_848/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_5094126
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_848_5094150_0:2(/
while_lstm_cell_848_5094152_0:
(+
while_lstm_cell_848_5094154_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_848_5094150:2(-
while_lstm_cell_848_5094152:
()
while_lstm_cell_848_5094154:(??+while/lstm_cell_848/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_848/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_848_5094150_0while_lstm_cell_848_5094152_0while_lstm_cell_848_5094154_0*
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
J__inference_lstm_cell_848_layer_call_and_return_conditional_losses_5094067?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_848/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_848/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_848/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_848/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_848_5094150while_lstm_cell_848_5094150_0"<
while_lstm_cell_848_5094152while_lstm_cell_848_5094152_0"<
while_lstm_cell_848_5094154while_lstm_cell_848_5094154_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_848/StatefulPartitionedCall+while/lstm_cell_848/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_cond_5097799
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5097799___redundant_placeholder05
1while_while_cond_5097799___redundant_placeholder15
1while_while_cond_5097799___redundant_placeholder25
1while_while_cond_5097799___redundant_placeholder3
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
while_body_5096854
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_846_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_846_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_846_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_846_matmul_readvariableop_resource:	?G
4while_lstm_cell_846_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_846_biasadd_readvariableop_resource:	???*while/lstm_cell_846/BiasAdd/ReadVariableOp?)while/lstm_cell_846/MatMul/ReadVariableOp?+while/lstm_cell_846/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_846/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_846_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_846/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_846/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_846/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_846_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_846/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_846/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_846/addAddV2$while/lstm_cell_846/MatMul:product:0&while/lstm_cell_846/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_846/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_846_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_846/BiasAddBiasAddwhile/lstm_cell_846/add:z:02while/lstm_cell_846/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_846/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_846/splitSplit,while/lstm_cell_846/split/split_dim:output:0$while/lstm_cell_846/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_846/SigmoidSigmoid"while/lstm_cell_846/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_846/Sigmoid_1Sigmoid"while/lstm_cell_846/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_846/mulMul!while/lstm_cell_846/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_846/ReluRelu"while/lstm_cell_846/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_846/mul_1Mulwhile/lstm_cell_846/Sigmoid:y:0&while/lstm_cell_846/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_846/add_1AddV2while/lstm_cell_846/mul:z:0while/lstm_cell_846/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_846/Sigmoid_2Sigmoid"while/lstm_cell_846/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_846/Relu_1Reluwhile/lstm_cell_846/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_846/mul_2Mul!while/lstm_cell_846/Sigmoid_2:y:0(while/lstm_cell_846/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_846/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_846/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_846/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_846/BiasAdd/ReadVariableOp*^while/lstm_cell_846/MatMul/ReadVariableOp,^while/lstm_cell_846/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_846_biasadd_readvariableop_resource5while_lstm_cell_846_biasadd_readvariableop_resource_0"n
4while_lstm_cell_846_matmul_1_readvariableop_resource6while_lstm_cell_846_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_846_matmul_readvariableop_resource4while_lstm_cell_846_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_846/BiasAdd/ReadVariableOp*while/lstm_cell_846/BiasAdd/ReadVariableOp2V
)while/lstm_cell_846/MatMul/ReadVariableOp)while/lstm_cell_846/MatMul/ReadVariableOp2Z
+while/lstm_cell_846/MatMul_1/ReadVariableOp+while/lstm_cell_846/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_848_layer_call_fn_5097587

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
E__inference_lstm_848_layer_call_and_return_conditional_losses_5094653o
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
while_body_5097657
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_848_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_848_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_848_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_848_matmul_readvariableop_resource:2(F
4while_lstm_cell_848_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_848_biasadd_readvariableop_resource:(??*while/lstm_cell_848/BiasAdd/ReadVariableOp?)while/lstm_cell_848/MatMul/ReadVariableOp?+while/lstm_cell_848/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_848/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_848_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_848/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_848/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_848/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_848_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_848/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_848/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_848/addAddV2$while/lstm_cell_848/MatMul:product:0&while/lstm_cell_848/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_848/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_848_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_848/BiasAddBiasAddwhile/lstm_cell_848/add:z:02while/lstm_cell_848/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_848/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_848/splitSplit,while/lstm_cell_848/split/split_dim:output:0$while/lstm_cell_848/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_848/SigmoidSigmoid"while/lstm_cell_848/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_848/Sigmoid_1Sigmoid"while/lstm_cell_848/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_848/mulMul!while/lstm_cell_848/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_848/ReluRelu"while/lstm_cell_848/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_848/mul_1Mulwhile/lstm_cell_848/Sigmoid:y:0&while/lstm_cell_848/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_848/add_1AddV2while/lstm_cell_848/mul:z:0while/lstm_cell_848/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_848/Sigmoid_2Sigmoid"while/lstm_cell_848/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_848/Relu_1Reluwhile/lstm_cell_848/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_848/mul_2Mul!while/lstm_cell_848/Sigmoid_2:y:0(while/lstm_cell_848/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_848/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_848/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_848/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_848/BiasAdd/ReadVariableOp*^while/lstm_cell_848/MatMul/ReadVariableOp,^while/lstm_cell_848/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_848_biasadd_readvariableop_resource5while_lstm_cell_848_biasadd_readvariableop_resource_0"n
4while_lstm_cell_848_matmul_1_readvariableop_resource6while_lstm_cell_848_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_848_matmul_readvariableop_resource4while_lstm_cell_848_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_848/BiasAdd/ReadVariableOp*while/lstm_cell_848/BiasAdd/ReadVariableOp2V
)while/lstm_cell_848/MatMul/ReadVariableOp)while/lstm_cell_848/MatMul/ReadVariableOp2Z
+while/lstm_cell_848/MatMul_1/ReadVariableOp+while/lstm_cell_848/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_5096711
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_846_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_846_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_846_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_846_matmul_readvariableop_resource:	?G
4while_lstm_cell_846_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_846_biasadd_readvariableop_resource:	???*while/lstm_cell_846/BiasAdd/ReadVariableOp?)while/lstm_cell_846/MatMul/ReadVariableOp?+while/lstm_cell_846/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_846/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_846_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_846/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_846/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_846/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_846_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_846/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_846/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_846/addAddV2$while/lstm_cell_846/MatMul:product:0&while/lstm_cell_846/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_846/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_846_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_846/BiasAddBiasAddwhile/lstm_cell_846/add:z:02while/lstm_cell_846/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_846/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_846/splitSplit,while/lstm_cell_846/split/split_dim:output:0$while/lstm_cell_846/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_846/SigmoidSigmoid"while/lstm_cell_846/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_846/Sigmoid_1Sigmoid"while/lstm_cell_846/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_846/mulMul!while/lstm_cell_846/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_846/ReluRelu"while/lstm_cell_846/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_846/mul_1Mulwhile/lstm_cell_846/Sigmoid:y:0&while/lstm_cell_846/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_846/add_1AddV2while/lstm_cell_846/mul:z:0while/lstm_cell_846/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_846/Sigmoid_2Sigmoid"while/lstm_cell_846/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_846/Relu_1Reluwhile/lstm_cell_846/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_846/mul_2Mul!while/lstm_cell_846/Sigmoid_2:y:0(while/lstm_cell_846/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_846/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_846/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_846/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_846/BiasAdd/ReadVariableOp*^while/lstm_cell_846/MatMul/ReadVariableOp,^while/lstm_cell_846/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_846_biasadd_readvariableop_resource5while_lstm_cell_846_biasadd_readvariableop_resource_0"n
4while_lstm_cell_846_matmul_1_readvariableop_resource6while_lstm_cell_846_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_846_matmul_readvariableop_resource4while_lstm_cell_846_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_846/BiasAdd/ReadVariableOp*while/lstm_cell_846/BiasAdd/ReadVariableOp2V
)while/lstm_cell_846/MatMul/ReadVariableOp)while/lstm_cell_846/MatMul/ReadVariableOp2Z
+while/lstm_cell_846/MatMul_1/ReadVariableOp+while/lstm_cell_846/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_847_layer_call_and_return_conditional_losses_5094503

inputs?
,lstm_cell_847_matmul_readvariableop_resource:	d?A
.lstm_cell_847_matmul_1_readvariableop_resource:	2?<
-lstm_cell_847_biasadd_readvariableop_resource:	?
identity??$lstm_cell_847/BiasAdd/ReadVariableOp?#lstm_cell_847/MatMul/ReadVariableOp?%lstm_cell_847/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_847/MatMul/ReadVariableOpReadVariableOp,lstm_cell_847_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_847/MatMulMatMulstrided_slice_2:output:0+lstm_cell_847/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_847/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_847_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_847/MatMul_1MatMulzeros:output:0-lstm_cell_847/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_847/addAddV2lstm_cell_847/MatMul:product:0 lstm_cell_847/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_847/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_847_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_847/BiasAddBiasAddlstm_cell_847/add:z:0,lstm_cell_847/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_847/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_847/splitSplit&lstm_cell_847/split/split_dim:output:0lstm_cell_847/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_847/SigmoidSigmoidlstm_cell_847/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_847/Sigmoid_1Sigmoidlstm_cell_847/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_847/mulMullstm_cell_847/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_847/ReluRelulstm_cell_847/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_847/mul_1Mullstm_cell_847/Sigmoid:y:0 lstm_cell_847/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_847/add_1AddV2lstm_cell_847/mul:z:0lstm_cell_847/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_847/Sigmoid_2Sigmoidlstm_cell_847/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_847/Relu_1Relulstm_cell_847/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_847/mul_2Mullstm_cell_847/Sigmoid_2:y:0"lstm_cell_847/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_847_matmul_readvariableop_resource.lstm_cell_847_matmul_1_readvariableop_resource-lstm_cell_847_biasadd_readvariableop_resource*
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
while_body_5094419*
condR
while_cond_5094418*K
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
NoOpNoOp%^lstm_cell_847/BiasAdd/ReadVariableOp$^lstm_cell_847/MatMul/ReadVariableOp&^lstm_cell_847/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_847/BiasAdd/ReadVariableOp$lstm_cell_847/BiasAdd/ReadVariableOp2J
#lstm_cell_847/MatMul/ReadVariableOp#lstm_cell_847/MatMul/ReadVariableOp2N
%lstm_cell_847/MatMul_1/ReadVariableOp%lstm_cell_847/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
*__inference_lstm_848_layer_call_fn_5097565
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
E__inference_lstm_848_layer_call_and_return_conditional_losses_5094004o
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
?K
?
E__inference_lstm_847_layer_call_and_return_conditional_losses_5097268
inputs_0?
,lstm_cell_847_matmul_readvariableop_resource:	d?A
.lstm_cell_847_matmul_1_readvariableop_resource:	2?<
-lstm_cell_847_biasadd_readvariableop_resource:	?
identity??$lstm_cell_847/BiasAdd/ReadVariableOp?#lstm_cell_847/MatMul/ReadVariableOp?%lstm_cell_847/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_847/MatMul/ReadVariableOpReadVariableOp,lstm_cell_847_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_847/MatMulMatMulstrided_slice_2:output:0+lstm_cell_847/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_847/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_847_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_847/MatMul_1MatMulzeros:output:0-lstm_cell_847/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_847/addAddV2lstm_cell_847/MatMul:product:0 lstm_cell_847/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_847/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_847_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_847/BiasAddBiasAddlstm_cell_847/add:z:0,lstm_cell_847/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_847/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_847/splitSplit&lstm_cell_847/split/split_dim:output:0lstm_cell_847/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_847/SigmoidSigmoidlstm_cell_847/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_847/Sigmoid_1Sigmoidlstm_cell_847/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_847/mulMullstm_cell_847/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_847/ReluRelulstm_cell_847/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_847/mul_1Mullstm_cell_847/Sigmoid:y:0 lstm_cell_847/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_847/add_1AddV2lstm_cell_847/mul:z:0lstm_cell_847/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_847/Sigmoid_2Sigmoidlstm_cell_847/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_847/Relu_1Relulstm_cell_847/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_847/mul_2Mullstm_cell_847/Sigmoid_2:y:0"lstm_cell_847/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_847_matmul_readvariableop_resource.lstm_cell_847_matmul_1_readvariableop_resource-lstm_cell_847_biasadd_readvariableop_resource*
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
while_body_5097184*
condR
while_cond_5097183*K
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
NoOpNoOp%^lstm_cell_847/BiasAdd/ReadVariableOp$^lstm_cell_847/MatMul/ReadVariableOp&^lstm_cell_847/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_847/BiasAdd/ReadVariableOp$lstm_cell_847/BiasAdd/ReadVariableOp2J
#lstm_cell_847/MatMul/ReadVariableOp#lstm_cell_847/MatMul/ReadVariableOp2N
%lstm_cell_847/MatMul_1/ReadVariableOp%lstm_cell_847/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?
?
J__inference_lstm_cell_846_layer_call_and_return_conditional_losses_5098287

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
?
?
J__inference_lstm_cell_848_layer_call_and_return_conditional_losses_5093921

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
while_cond_5094418
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5094418___redundant_placeholder05
1while_while_cond_5094418___redundant_placeholder15
1while_while_cond_5094418___redundant_placeholder25
1while_while_cond_5094418___redundant_placeholder3
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
*sequential_282_lstm_848_while_body_5093064L
Hsequential_282_lstm_848_while_sequential_282_lstm_848_while_loop_counterR
Nsequential_282_lstm_848_while_sequential_282_lstm_848_while_maximum_iterations-
)sequential_282_lstm_848_while_placeholder/
+sequential_282_lstm_848_while_placeholder_1/
+sequential_282_lstm_848_while_placeholder_2/
+sequential_282_lstm_848_while_placeholder_3K
Gsequential_282_lstm_848_while_sequential_282_lstm_848_strided_slice_1_0?
?sequential_282_lstm_848_while_tensorarrayv2read_tensorlistgetitem_sequential_282_lstm_848_tensorarrayunstack_tensorlistfromtensor_0^
Lsequential_282_lstm_848_while_lstm_cell_848_matmul_readvariableop_resource_0:2(`
Nsequential_282_lstm_848_while_lstm_cell_848_matmul_1_readvariableop_resource_0:
([
Msequential_282_lstm_848_while_lstm_cell_848_biasadd_readvariableop_resource_0:(*
&sequential_282_lstm_848_while_identity,
(sequential_282_lstm_848_while_identity_1,
(sequential_282_lstm_848_while_identity_2,
(sequential_282_lstm_848_while_identity_3,
(sequential_282_lstm_848_while_identity_4,
(sequential_282_lstm_848_while_identity_5I
Esequential_282_lstm_848_while_sequential_282_lstm_848_strided_slice_1?
?sequential_282_lstm_848_while_tensorarrayv2read_tensorlistgetitem_sequential_282_lstm_848_tensorarrayunstack_tensorlistfromtensor\
Jsequential_282_lstm_848_while_lstm_cell_848_matmul_readvariableop_resource:2(^
Lsequential_282_lstm_848_while_lstm_cell_848_matmul_1_readvariableop_resource:
(Y
Ksequential_282_lstm_848_while_lstm_cell_848_biasadd_readvariableop_resource:(??Bsequential_282/lstm_848/while/lstm_cell_848/BiasAdd/ReadVariableOp?Asequential_282/lstm_848/while/lstm_cell_848/MatMul/ReadVariableOp?Csequential_282/lstm_848/while/lstm_cell_848/MatMul_1/ReadVariableOp?
Osequential_282/lstm_848/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
Asequential_282/lstm_848/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_282_lstm_848_while_tensorarrayv2read_tensorlistgetitem_sequential_282_lstm_848_tensorarrayunstack_tensorlistfromtensor_0)sequential_282_lstm_848_while_placeholderXsequential_282/lstm_848/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
Asequential_282/lstm_848/while/lstm_cell_848/MatMul/ReadVariableOpReadVariableOpLsequential_282_lstm_848_while_lstm_cell_848_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
2sequential_282/lstm_848/while/lstm_cell_848/MatMulMatMulHsequential_282/lstm_848/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_282/lstm_848/while/lstm_cell_848/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
Csequential_282/lstm_848/while/lstm_cell_848/MatMul_1/ReadVariableOpReadVariableOpNsequential_282_lstm_848_while_lstm_cell_848_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
4sequential_282/lstm_848/while/lstm_cell_848/MatMul_1MatMul+sequential_282_lstm_848_while_placeholder_2Ksequential_282/lstm_848/while/lstm_cell_848/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
/sequential_282/lstm_848/while/lstm_cell_848/addAddV2<sequential_282/lstm_848/while/lstm_cell_848/MatMul:product:0>sequential_282/lstm_848/while/lstm_cell_848/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
Bsequential_282/lstm_848/while/lstm_cell_848/BiasAdd/ReadVariableOpReadVariableOpMsequential_282_lstm_848_while_lstm_cell_848_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
3sequential_282/lstm_848/while/lstm_cell_848/BiasAddBiasAdd3sequential_282/lstm_848/while/lstm_cell_848/add:z:0Jsequential_282/lstm_848/while/lstm_cell_848/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(}
;sequential_282/lstm_848/while/lstm_cell_848/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_282/lstm_848/while/lstm_cell_848/splitSplitDsequential_282/lstm_848/while/lstm_cell_848/split/split_dim:output:0<sequential_282/lstm_848/while/lstm_cell_848/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
3sequential_282/lstm_848/while/lstm_cell_848/SigmoidSigmoid:sequential_282/lstm_848/while/lstm_cell_848/split:output:0*
T0*'
_output_shapes
:?????????
?
5sequential_282/lstm_848/while/lstm_cell_848/Sigmoid_1Sigmoid:sequential_282/lstm_848/while/lstm_cell_848/split:output:1*
T0*'
_output_shapes
:?????????
?
/sequential_282/lstm_848/while/lstm_cell_848/mulMul9sequential_282/lstm_848/while/lstm_cell_848/Sigmoid_1:y:0+sequential_282_lstm_848_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
0sequential_282/lstm_848/while/lstm_cell_848/ReluRelu:sequential_282/lstm_848/while/lstm_cell_848/split:output:2*
T0*'
_output_shapes
:?????????
?
1sequential_282/lstm_848/while/lstm_cell_848/mul_1Mul7sequential_282/lstm_848/while/lstm_cell_848/Sigmoid:y:0>sequential_282/lstm_848/while/lstm_cell_848/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
1sequential_282/lstm_848/while/lstm_cell_848/add_1AddV23sequential_282/lstm_848/while/lstm_cell_848/mul:z:05sequential_282/lstm_848/while/lstm_cell_848/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
5sequential_282/lstm_848/while/lstm_cell_848/Sigmoid_2Sigmoid:sequential_282/lstm_848/while/lstm_cell_848/split:output:3*
T0*'
_output_shapes
:?????????
?
2sequential_282/lstm_848/while/lstm_cell_848/Relu_1Relu5sequential_282/lstm_848/while/lstm_cell_848/add_1:z:0*
T0*'
_output_shapes
:?????????
?
1sequential_282/lstm_848/while/lstm_cell_848/mul_2Mul9sequential_282/lstm_848/while/lstm_cell_848/Sigmoid_2:y:0@sequential_282/lstm_848/while/lstm_cell_848/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
Bsequential_282/lstm_848/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_282_lstm_848_while_placeholder_1)sequential_282_lstm_848_while_placeholder5sequential_282/lstm_848/while/lstm_cell_848/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_282/lstm_848/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_282/lstm_848/while/addAddV2)sequential_282_lstm_848_while_placeholder,sequential_282/lstm_848/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_282/lstm_848/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_282/lstm_848/while/add_1AddV2Hsequential_282_lstm_848_while_sequential_282_lstm_848_while_loop_counter.sequential_282/lstm_848/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_282/lstm_848/while/IdentityIdentity'sequential_282/lstm_848/while/add_1:z:0#^sequential_282/lstm_848/while/NoOp*
T0*
_output_shapes
: ?
(sequential_282/lstm_848/while/Identity_1IdentityNsequential_282_lstm_848_while_sequential_282_lstm_848_while_maximum_iterations#^sequential_282/lstm_848/while/NoOp*
T0*
_output_shapes
: ?
(sequential_282/lstm_848/while/Identity_2Identity%sequential_282/lstm_848/while/add:z:0#^sequential_282/lstm_848/while/NoOp*
T0*
_output_shapes
: ?
(sequential_282/lstm_848/while/Identity_3IdentityRsequential_282/lstm_848/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_282/lstm_848/while/NoOp*
T0*
_output_shapes
: ?
(sequential_282/lstm_848/while/Identity_4Identity5sequential_282/lstm_848/while/lstm_cell_848/mul_2:z:0#^sequential_282/lstm_848/while/NoOp*
T0*'
_output_shapes
:?????????
?
(sequential_282/lstm_848/while/Identity_5Identity5sequential_282/lstm_848/while/lstm_cell_848/add_1:z:0#^sequential_282/lstm_848/while/NoOp*
T0*'
_output_shapes
:?????????
?
"sequential_282/lstm_848/while/NoOpNoOpC^sequential_282/lstm_848/while/lstm_cell_848/BiasAdd/ReadVariableOpB^sequential_282/lstm_848/while/lstm_cell_848/MatMul/ReadVariableOpD^sequential_282/lstm_848/while/lstm_cell_848/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_282_lstm_848_while_identity/sequential_282/lstm_848/while/Identity:output:0"]
(sequential_282_lstm_848_while_identity_11sequential_282/lstm_848/while/Identity_1:output:0"]
(sequential_282_lstm_848_while_identity_21sequential_282/lstm_848/while/Identity_2:output:0"]
(sequential_282_lstm_848_while_identity_31sequential_282/lstm_848/while/Identity_3:output:0"]
(sequential_282_lstm_848_while_identity_41sequential_282/lstm_848/while/Identity_4:output:0"]
(sequential_282_lstm_848_while_identity_51sequential_282/lstm_848/while/Identity_5:output:0"?
Ksequential_282_lstm_848_while_lstm_cell_848_biasadd_readvariableop_resourceMsequential_282_lstm_848_while_lstm_cell_848_biasadd_readvariableop_resource_0"?
Lsequential_282_lstm_848_while_lstm_cell_848_matmul_1_readvariableop_resourceNsequential_282_lstm_848_while_lstm_cell_848_matmul_1_readvariableop_resource_0"?
Jsequential_282_lstm_848_while_lstm_cell_848_matmul_readvariableop_resourceLsequential_282_lstm_848_while_lstm_cell_848_matmul_readvariableop_resource_0"?
Esequential_282_lstm_848_while_sequential_282_lstm_848_strided_slice_1Gsequential_282_lstm_848_while_sequential_282_lstm_848_strided_slice_1_0"?
?sequential_282_lstm_848_while_tensorarrayv2read_tensorlistgetitem_sequential_282_lstm_848_tensorarrayunstack_tensorlistfromtensor?sequential_282_lstm_848_while_tensorarrayv2read_tensorlistgetitem_sequential_282_lstm_848_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2?
Bsequential_282/lstm_848/while/lstm_cell_848/BiasAdd/ReadVariableOpBsequential_282/lstm_848/while/lstm_cell_848/BiasAdd/ReadVariableOp2?
Asequential_282/lstm_848/while/lstm_cell_848/MatMul/ReadVariableOpAsequential_282/lstm_848/while/lstm_cell_848/MatMul/ReadVariableOp2?
Csequential_282/lstm_848/while/lstm_cell_848/MatMul_1/ReadVariableOpCsequential_282/lstm_848/while/lstm_cell_848/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_846_while_cond_5095526.
*lstm_846_while_lstm_846_while_loop_counter4
0lstm_846_while_lstm_846_while_maximum_iterations
lstm_846_while_placeholder 
lstm_846_while_placeholder_1 
lstm_846_while_placeholder_2 
lstm_846_while_placeholder_30
,lstm_846_while_less_lstm_846_strided_slice_1G
Clstm_846_while_lstm_846_while_cond_5095526___redundant_placeholder0G
Clstm_846_while_lstm_846_while_cond_5095526___redundant_placeholder1G
Clstm_846_while_lstm_846_while_cond_5095526___redundant_placeholder2G
Clstm_846_while_lstm_846_while_cond_5095526___redundant_placeholder3
lstm_846_while_identity
?
lstm_846/while/LessLesslstm_846_while_placeholder,lstm_846_while_less_lstm_846_strided_slice_1*
T0*
_output_shapes
: ]
lstm_846/while/IdentityIdentitylstm_846/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_846_while_identity lstm_846/while/Identity:output:0*(
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
while_body_5093585
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_847_5093609_0:	d?0
while_lstm_cell_847_5093611_0:	2?,
while_lstm_cell_847_5093613_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_847_5093609:	d?.
while_lstm_cell_847_5093611:	2?*
while_lstm_cell_847_5093613:	???+while/lstm_cell_847/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_847/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_847_5093609_0while_lstm_cell_847_5093611_0while_lstm_cell_847_5093613_0*
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
J__inference_lstm_cell_847_layer_call_and_return_conditional_losses_5093571?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_847/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_847/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_847/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_847/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_847_5093609while_lstm_cell_847_5093609_0"<
while_lstm_cell_847_5093611while_lstm_cell_847_5093611_0"<
while_lstm_cell_847_5093613while_lstm_cell_847_5093613_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_847/StatefulPartitionedCall+while/lstm_cell_847/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
F__inference_dense_282_layer_call_and_return_conditional_losses_5098189

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
??
?
K__inference_sequential_282_layer_call_and_return_conditional_losses_5096322

inputsH
5lstm_846_lstm_cell_846_matmul_readvariableop_resource:	?J
7lstm_846_lstm_cell_846_matmul_1_readvariableop_resource:	d?E
6lstm_846_lstm_cell_846_biasadd_readvariableop_resource:	?H
5lstm_847_lstm_cell_847_matmul_readvariableop_resource:	d?J
7lstm_847_lstm_cell_847_matmul_1_readvariableop_resource:	2?E
6lstm_847_lstm_cell_847_biasadd_readvariableop_resource:	?G
5lstm_848_lstm_cell_848_matmul_readvariableop_resource:2(I
7lstm_848_lstm_cell_848_matmul_1_readvariableop_resource:
(D
6lstm_848_lstm_cell_848_biasadd_readvariableop_resource:(:
(dense_282_matmul_readvariableop_resource:
7
)dense_282_biasadd_readvariableop_resource:
identity?? dense_282/BiasAdd/ReadVariableOp?dense_282/MatMul/ReadVariableOp?-lstm_846/lstm_cell_846/BiasAdd/ReadVariableOp?,lstm_846/lstm_cell_846/MatMul/ReadVariableOp?.lstm_846/lstm_cell_846/MatMul_1/ReadVariableOp?lstm_846/while?-lstm_847/lstm_cell_847/BiasAdd/ReadVariableOp?,lstm_847/lstm_cell_847/MatMul/ReadVariableOp?.lstm_847/lstm_cell_847/MatMul_1/ReadVariableOp?lstm_847/while?-lstm_848/lstm_cell_848/BiasAdd/ReadVariableOp?,lstm_848/lstm_cell_848/MatMul/ReadVariableOp?.lstm_848/lstm_cell_848/MatMul_1/ReadVariableOp?lstm_848/whileD
lstm_846/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_846/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_846/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_846/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_846/strided_sliceStridedSlicelstm_846/Shape:output:0%lstm_846/strided_slice/stack:output:0'lstm_846/strided_slice/stack_1:output:0'lstm_846/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_846/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_846/zeros/packedPacklstm_846/strided_slice:output:0 lstm_846/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_846/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_846/zerosFilllstm_846/zeros/packed:output:0lstm_846/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_846/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_846/zeros_1/packedPacklstm_846/strided_slice:output:0"lstm_846/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_846/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_846/zeros_1Fill lstm_846/zeros_1/packed:output:0lstm_846/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_846/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_846/transpose	Transposeinputs lstm_846/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_846/Shape_1Shapelstm_846/transpose:y:0*
T0*
_output_shapes
:h
lstm_846/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_846/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_846/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_846/strided_slice_1StridedSlicelstm_846/Shape_1:output:0'lstm_846/strided_slice_1/stack:output:0)lstm_846/strided_slice_1/stack_1:output:0)lstm_846/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_846/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_846/TensorArrayV2TensorListReserve-lstm_846/TensorArrayV2/element_shape:output:0!lstm_846/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_846/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_846/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_846/transpose:y:0Glstm_846/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_846/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_846/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_846/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_846/strided_slice_2StridedSlicelstm_846/transpose:y:0'lstm_846/strided_slice_2/stack:output:0)lstm_846/strided_slice_2/stack_1:output:0)lstm_846/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_846/lstm_cell_846/MatMul/ReadVariableOpReadVariableOp5lstm_846_lstm_cell_846_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_846/lstm_cell_846/MatMulMatMul!lstm_846/strided_slice_2:output:04lstm_846/lstm_cell_846/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_846/lstm_cell_846/MatMul_1/ReadVariableOpReadVariableOp7lstm_846_lstm_cell_846_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_846/lstm_cell_846/MatMul_1MatMullstm_846/zeros:output:06lstm_846/lstm_cell_846/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_846/lstm_cell_846/addAddV2'lstm_846/lstm_cell_846/MatMul:product:0)lstm_846/lstm_cell_846/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_846/lstm_cell_846/BiasAdd/ReadVariableOpReadVariableOp6lstm_846_lstm_cell_846_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_846/lstm_cell_846/BiasAddBiasAddlstm_846/lstm_cell_846/add:z:05lstm_846/lstm_cell_846/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_846/lstm_cell_846/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_846/lstm_cell_846/splitSplit/lstm_846/lstm_cell_846/split/split_dim:output:0'lstm_846/lstm_cell_846/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_846/lstm_cell_846/SigmoidSigmoid%lstm_846/lstm_cell_846/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_846/lstm_cell_846/Sigmoid_1Sigmoid%lstm_846/lstm_cell_846/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_846/lstm_cell_846/mulMul$lstm_846/lstm_cell_846/Sigmoid_1:y:0lstm_846/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_846/lstm_cell_846/ReluRelu%lstm_846/lstm_cell_846/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_846/lstm_cell_846/mul_1Mul"lstm_846/lstm_cell_846/Sigmoid:y:0)lstm_846/lstm_cell_846/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_846/lstm_cell_846/add_1AddV2lstm_846/lstm_cell_846/mul:z:0 lstm_846/lstm_cell_846/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_846/lstm_cell_846/Sigmoid_2Sigmoid%lstm_846/lstm_cell_846/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_846/lstm_cell_846/Relu_1Relu lstm_846/lstm_cell_846/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_846/lstm_cell_846/mul_2Mul$lstm_846/lstm_cell_846/Sigmoid_2:y:0+lstm_846/lstm_cell_846/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_846/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_846/TensorArrayV2_1TensorListReserve/lstm_846/TensorArrayV2_1/element_shape:output:0!lstm_846/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_846/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_846/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_846/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_846/whileWhile$lstm_846/while/loop_counter:output:0*lstm_846/while/maximum_iterations:output:0lstm_846/time:output:0!lstm_846/TensorArrayV2_1:handle:0lstm_846/zeros:output:0lstm_846/zeros_1:output:0!lstm_846/strided_slice_1:output:0@lstm_846/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_846_lstm_cell_846_matmul_readvariableop_resource7lstm_846_lstm_cell_846_matmul_1_readvariableop_resource6lstm_846_lstm_cell_846_biasadd_readvariableop_resource*
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
lstm_846_while_body_5095954*'
condR
lstm_846_while_cond_5095953*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_846/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_846/TensorArrayV2Stack/TensorListStackTensorListStacklstm_846/while:output:3Blstm_846/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_846/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_846/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_846/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_846/strided_slice_3StridedSlice4lstm_846/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_846/strided_slice_3/stack:output:0)lstm_846/strided_slice_3/stack_1:output:0)lstm_846/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_846/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_846/transpose_1	Transpose4lstm_846/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_846/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_846/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_847/ShapeShapelstm_846/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_847/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_847/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_847/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_847/strided_sliceStridedSlicelstm_847/Shape:output:0%lstm_847/strided_slice/stack:output:0'lstm_847/strided_slice/stack_1:output:0'lstm_847/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_847/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_847/zeros/packedPacklstm_847/strided_slice:output:0 lstm_847/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_847/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_847/zerosFilllstm_847/zeros/packed:output:0lstm_847/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_847/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_847/zeros_1/packedPacklstm_847/strided_slice:output:0"lstm_847/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_847/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_847/zeros_1Fill lstm_847/zeros_1/packed:output:0lstm_847/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_847/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_847/transpose	Transposelstm_846/transpose_1:y:0 lstm_847/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_847/Shape_1Shapelstm_847/transpose:y:0*
T0*
_output_shapes
:h
lstm_847/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_847/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_847/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_847/strided_slice_1StridedSlicelstm_847/Shape_1:output:0'lstm_847/strided_slice_1/stack:output:0)lstm_847/strided_slice_1/stack_1:output:0)lstm_847/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_847/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_847/TensorArrayV2TensorListReserve-lstm_847/TensorArrayV2/element_shape:output:0!lstm_847/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_847/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_847/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_847/transpose:y:0Glstm_847/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_847/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_847/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_847/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_847/strided_slice_2StridedSlicelstm_847/transpose:y:0'lstm_847/strided_slice_2/stack:output:0)lstm_847/strided_slice_2/stack_1:output:0)lstm_847/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_847/lstm_cell_847/MatMul/ReadVariableOpReadVariableOp5lstm_847_lstm_cell_847_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_847/lstm_cell_847/MatMulMatMul!lstm_847/strided_slice_2:output:04lstm_847/lstm_cell_847/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_847/lstm_cell_847/MatMul_1/ReadVariableOpReadVariableOp7lstm_847_lstm_cell_847_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_847/lstm_cell_847/MatMul_1MatMullstm_847/zeros:output:06lstm_847/lstm_cell_847/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_847/lstm_cell_847/addAddV2'lstm_847/lstm_cell_847/MatMul:product:0)lstm_847/lstm_cell_847/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_847/lstm_cell_847/BiasAdd/ReadVariableOpReadVariableOp6lstm_847_lstm_cell_847_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_847/lstm_cell_847/BiasAddBiasAddlstm_847/lstm_cell_847/add:z:05lstm_847/lstm_cell_847/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_847/lstm_cell_847/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_847/lstm_cell_847/splitSplit/lstm_847/lstm_cell_847/split/split_dim:output:0'lstm_847/lstm_cell_847/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_847/lstm_cell_847/SigmoidSigmoid%lstm_847/lstm_cell_847/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_847/lstm_cell_847/Sigmoid_1Sigmoid%lstm_847/lstm_cell_847/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_847/lstm_cell_847/mulMul$lstm_847/lstm_cell_847/Sigmoid_1:y:0lstm_847/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_847/lstm_cell_847/ReluRelu%lstm_847/lstm_cell_847/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_847/lstm_cell_847/mul_1Mul"lstm_847/lstm_cell_847/Sigmoid:y:0)lstm_847/lstm_cell_847/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_847/lstm_cell_847/add_1AddV2lstm_847/lstm_cell_847/mul:z:0 lstm_847/lstm_cell_847/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_847/lstm_cell_847/Sigmoid_2Sigmoid%lstm_847/lstm_cell_847/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_847/lstm_cell_847/Relu_1Relu lstm_847/lstm_cell_847/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_847/lstm_cell_847/mul_2Mul$lstm_847/lstm_cell_847/Sigmoid_2:y:0+lstm_847/lstm_cell_847/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_847/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_847/TensorArrayV2_1TensorListReserve/lstm_847/TensorArrayV2_1/element_shape:output:0!lstm_847/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_847/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_847/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_847/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_847/whileWhile$lstm_847/while/loop_counter:output:0*lstm_847/while/maximum_iterations:output:0lstm_847/time:output:0!lstm_847/TensorArrayV2_1:handle:0lstm_847/zeros:output:0lstm_847/zeros_1:output:0!lstm_847/strided_slice_1:output:0@lstm_847/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_847_lstm_cell_847_matmul_readvariableop_resource7lstm_847_lstm_cell_847_matmul_1_readvariableop_resource6lstm_847_lstm_cell_847_biasadd_readvariableop_resource*
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
lstm_847_while_body_5096093*'
condR
lstm_847_while_cond_5096092*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_847/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_847/TensorArrayV2Stack/TensorListStackTensorListStacklstm_847/while:output:3Blstm_847/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_847/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_847/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_847/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_847/strided_slice_3StridedSlice4lstm_847/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_847/strided_slice_3/stack:output:0)lstm_847/strided_slice_3/stack_1:output:0)lstm_847/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_847/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_847/transpose_1	Transpose4lstm_847/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_847/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_847/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_848/ShapeShapelstm_847/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_848/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_848/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_848/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_848/strided_sliceStridedSlicelstm_848/Shape:output:0%lstm_848/strided_slice/stack:output:0'lstm_848/strided_slice/stack_1:output:0'lstm_848/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_848/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_848/zeros/packedPacklstm_848/strided_slice:output:0 lstm_848/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_848/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_848/zerosFilllstm_848/zeros/packed:output:0lstm_848/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_848/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_848/zeros_1/packedPacklstm_848/strided_slice:output:0"lstm_848/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_848/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_848/zeros_1Fill lstm_848/zeros_1/packed:output:0lstm_848/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_848/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_848/transpose	Transposelstm_847/transpose_1:y:0 lstm_848/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_848/Shape_1Shapelstm_848/transpose:y:0*
T0*
_output_shapes
:h
lstm_848/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_848/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_848/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_848/strided_slice_1StridedSlicelstm_848/Shape_1:output:0'lstm_848/strided_slice_1/stack:output:0)lstm_848/strided_slice_1/stack_1:output:0)lstm_848/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_848/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_848/TensorArrayV2TensorListReserve-lstm_848/TensorArrayV2/element_shape:output:0!lstm_848/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_848/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_848/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_848/transpose:y:0Glstm_848/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_848/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_848/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_848/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_848/strided_slice_2StridedSlicelstm_848/transpose:y:0'lstm_848/strided_slice_2/stack:output:0)lstm_848/strided_slice_2/stack_1:output:0)lstm_848/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_848/lstm_cell_848/MatMul/ReadVariableOpReadVariableOp5lstm_848_lstm_cell_848_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_848/lstm_cell_848/MatMulMatMul!lstm_848/strided_slice_2:output:04lstm_848/lstm_cell_848/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_848/lstm_cell_848/MatMul_1/ReadVariableOpReadVariableOp7lstm_848_lstm_cell_848_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_848/lstm_cell_848/MatMul_1MatMullstm_848/zeros:output:06lstm_848/lstm_cell_848/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_848/lstm_cell_848/addAddV2'lstm_848/lstm_cell_848/MatMul:product:0)lstm_848/lstm_cell_848/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_848/lstm_cell_848/BiasAdd/ReadVariableOpReadVariableOp6lstm_848_lstm_cell_848_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_848/lstm_cell_848/BiasAddBiasAddlstm_848/lstm_cell_848/add:z:05lstm_848/lstm_cell_848/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_848/lstm_cell_848/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_848/lstm_cell_848/splitSplit/lstm_848/lstm_cell_848/split/split_dim:output:0'lstm_848/lstm_cell_848/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_848/lstm_cell_848/SigmoidSigmoid%lstm_848/lstm_cell_848/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_848/lstm_cell_848/Sigmoid_1Sigmoid%lstm_848/lstm_cell_848/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_848/lstm_cell_848/mulMul$lstm_848/lstm_cell_848/Sigmoid_1:y:0lstm_848/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_848/lstm_cell_848/ReluRelu%lstm_848/lstm_cell_848/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_848/lstm_cell_848/mul_1Mul"lstm_848/lstm_cell_848/Sigmoid:y:0)lstm_848/lstm_cell_848/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_848/lstm_cell_848/add_1AddV2lstm_848/lstm_cell_848/mul:z:0 lstm_848/lstm_cell_848/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_848/lstm_cell_848/Sigmoid_2Sigmoid%lstm_848/lstm_cell_848/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_848/lstm_cell_848/Relu_1Relu lstm_848/lstm_cell_848/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_848/lstm_cell_848/mul_2Mul$lstm_848/lstm_cell_848/Sigmoid_2:y:0+lstm_848/lstm_cell_848/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_848/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_848/TensorArrayV2_1TensorListReserve/lstm_848/TensorArrayV2_1/element_shape:output:0!lstm_848/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_848/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_848/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_848/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_848/whileWhile$lstm_848/while/loop_counter:output:0*lstm_848/while/maximum_iterations:output:0lstm_848/time:output:0!lstm_848/TensorArrayV2_1:handle:0lstm_848/zeros:output:0lstm_848/zeros_1:output:0!lstm_848/strided_slice_1:output:0@lstm_848/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_848_lstm_cell_848_matmul_readvariableop_resource7lstm_848_lstm_cell_848_matmul_1_readvariableop_resource6lstm_848_lstm_cell_848_biasadd_readvariableop_resource*
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
lstm_848_while_body_5096232*'
condR
lstm_848_while_cond_5096231*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_848/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_848/TensorArrayV2Stack/TensorListStackTensorListStacklstm_848/while:output:3Blstm_848/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_848/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_848/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_848/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_848/strided_slice_3StridedSlice4lstm_848/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_848/strided_slice_3/stack:output:0)lstm_848/strided_slice_3/stack_1:output:0)lstm_848/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_848/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_848/transpose_1	Transpose4lstm_848/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_848/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_848/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_282/MatMul/ReadVariableOpReadVariableOp(dense_282_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_282/MatMulMatMul!lstm_848/strided_slice_3:output:0'dense_282/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_282/BiasAdd/ReadVariableOpReadVariableOp)dense_282_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_282/BiasAddBiasAdddense_282/MatMul:product:0(dense_282/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_282/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_282/BiasAdd/ReadVariableOp ^dense_282/MatMul/ReadVariableOp.^lstm_846/lstm_cell_846/BiasAdd/ReadVariableOp-^lstm_846/lstm_cell_846/MatMul/ReadVariableOp/^lstm_846/lstm_cell_846/MatMul_1/ReadVariableOp^lstm_846/while.^lstm_847/lstm_cell_847/BiasAdd/ReadVariableOp-^lstm_847/lstm_cell_847/MatMul/ReadVariableOp/^lstm_847/lstm_cell_847/MatMul_1/ReadVariableOp^lstm_847/while.^lstm_848/lstm_cell_848/BiasAdd/ReadVariableOp-^lstm_848/lstm_cell_848/MatMul/ReadVariableOp/^lstm_848/lstm_cell_848/MatMul_1/ReadVariableOp^lstm_848/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_282/BiasAdd/ReadVariableOp dense_282/BiasAdd/ReadVariableOp2B
dense_282/MatMul/ReadVariableOpdense_282/MatMul/ReadVariableOp2^
-lstm_846/lstm_cell_846/BiasAdd/ReadVariableOp-lstm_846/lstm_cell_846/BiasAdd/ReadVariableOp2\
,lstm_846/lstm_cell_846/MatMul/ReadVariableOp,lstm_846/lstm_cell_846/MatMul/ReadVariableOp2`
.lstm_846/lstm_cell_846/MatMul_1/ReadVariableOp.lstm_846/lstm_cell_846/MatMul_1/ReadVariableOp2 
lstm_846/whilelstm_846/while2^
-lstm_847/lstm_cell_847/BiasAdd/ReadVariableOp-lstm_847/lstm_cell_847/BiasAdd/ReadVariableOp2\
,lstm_847/lstm_cell_847/MatMul/ReadVariableOp,lstm_847/lstm_cell_847/MatMul/ReadVariableOp2`
.lstm_847/lstm_cell_847/MatMul_1/ReadVariableOp.lstm_847/lstm_cell_847/MatMul_1/ReadVariableOp2 
lstm_847/whilelstm_847/while2^
-lstm_848/lstm_cell_848/BiasAdd/ReadVariableOp-lstm_848/lstm_cell_848/BiasAdd/ReadVariableOp2\
,lstm_848/lstm_cell_848/MatMul/ReadVariableOp,lstm_848/lstm_cell_848/MatMul/ReadVariableOp2`
.lstm_848/lstm_cell_848/MatMul_1/ReadVariableOp.lstm_848/lstm_cell_848/MatMul_1/ReadVariableOp2 
lstm_848/whilelstm_848/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
%__inference_signature_wrapper_5095414
lstm_846_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_846_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
"__inference__wrapped_model_5093154o
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
_user_specified_namelstm_846_input
?
?
J__inference_lstm_cell_846_layer_call_and_return_conditional_losses_5098255

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
?C
?

lstm_848_while_body_5095805.
*lstm_848_while_lstm_848_while_loop_counter4
0lstm_848_while_lstm_848_while_maximum_iterations
lstm_848_while_placeholder 
lstm_848_while_placeholder_1 
lstm_848_while_placeholder_2 
lstm_848_while_placeholder_3-
)lstm_848_while_lstm_848_strided_slice_1_0i
elstm_848_while_tensorarrayv2read_tensorlistgetitem_lstm_848_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_848_while_lstm_cell_848_matmul_readvariableop_resource_0:2(Q
?lstm_848_while_lstm_cell_848_matmul_1_readvariableop_resource_0:
(L
>lstm_848_while_lstm_cell_848_biasadd_readvariableop_resource_0:(
lstm_848_while_identity
lstm_848_while_identity_1
lstm_848_while_identity_2
lstm_848_while_identity_3
lstm_848_while_identity_4
lstm_848_while_identity_5+
'lstm_848_while_lstm_848_strided_slice_1g
clstm_848_while_tensorarrayv2read_tensorlistgetitem_lstm_848_tensorarrayunstack_tensorlistfromtensorM
;lstm_848_while_lstm_cell_848_matmul_readvariableop_resource:2(O
=lstm_848_while_lstm_cell_848_matmul_1_readvariableop_resource:
(J
<lstm_848_while_lstm_cell_848_biasadd_readvariableop_resource:(??3lstm_848/while/lstm_cell_848/BiasAdd/ReadVariableOp?2lstm_848/while/lstm_cell_848/MatMul/ReadVariableOp?4lstm_848/while/lstm_cell_848/MatMul_1/ReadVariableOp?
@lstm_848/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_848/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_848_while_tensorarrayv2read_tensorlistgetitem_lstm_848_tensorarrayunstack_tensorlistfromtensor_0lstm_848_while_placeholderIlstm_848/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_848/while/lstm_cell_848/MatMul/ReadVariableOpReadVariableOp=lstm_848_while_lstm_cell_848_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_848/while/lstm_cell_848/MatMulMatMul9lstm_848/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_848/while/lstm_cell_848/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_848/while/lstm_cell_848/MatMul_1/ReadVariableOpReadVariableOp?lstm_848_while_lstm_cell_848_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_848/while/lstm_cell_848/MatMul_1MatMullstm_848_while_placeholder_2<lstm_848/while/lstm_cell_848/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_848/while/lstm_cell_848/addAddV2-lstm_848/while/lstm_cell_848/MatMul:product:0/lstm_848/while/lstm_cell_848/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_848/while/lstm_cell_848/BiasAdd/ReadVariableOpReadVariableOp>lstm_848_while_lstm_cell_848_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_848/while/lstm_cell_848/BiasAddBiasAdd$lstm_848/while/lstm_cell_848/add:z:0;lstm_848/while/lstm_cell_848/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_848/while/lstm_cell_848/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_848/while/lstm_cell_848/splitSplit5lstm_848/while/lstm_cell_848/split/split_dim:output:0-lstm_848/while/lstm_cell_848/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_848/while/lstm_cell_848/SigmoidSigmoid+lstm_848/while/lstm_cell_848/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_848/while/lstm_cell_848/Sigmoid_1Sigmoid+lstm_848/while/lstm_cell_848/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_848/while/lstm_cell_848/mulMul*lstm_848/while/lstm_cell_848/Sigmoid_1:y:0lstm_848_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_848/while/lstm_cell_848/ReluRelu+lstm_848/while/lstm_cell_848/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_848/while/lstm_cell_848/mul_1Mul(lstm_848/while/lstm_cell_848/Sigmoid:y:0/lstm_848/while/lstm_cell_848/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_848/while/lstm_cell_848/add_1AddV2$lstm_848/while/lstm_cell_848/mul:z:0&lstm_848/while/lstm_cell_848/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_848/while/lstm_cell_848/Sigmoid_2Sigmoid+lstm_848/while/lstm_cell_848/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_848/while/lstm_cell_848/Relu_1Relu&lstm_848/while/lstm_cell_848/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_848/while/lstm_cell_848/mul_2Mul*lstm_848/while/lstm_cell_848/Sigmoid_2:y:01lstm_848/while/lstm_cell_848/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_848/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_848_while_placeholder_1lstm_848_while_placeholder&lstm_848/while/lstm_cell_848/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_848/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_848/while/addAddV2lstm_848_while_placeholderlstm_848/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_848/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_848/while/add_1AddV2*lstm_848_while_lstm_848_while_loop_counterlstm_848/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_848/while/IdentityIdentitylstm_848/while/add_1:z:0^lstm_848/while/NoOp*
T0*
_output_shapes
: ?
lstm_848/while/Identity_1Identity0lstm_848_while_lstm_848_while_maximum_iterations^lstm_848/while/NoOp*
T0*
_output_shapes
: t
lstm_848/while/Identity_2Identitylstm_848/while/add:z:0^lstm_848/while/NoOp*
T0*
_output_shapes
: ?
lstm_848/while/Identity_3IdentityClstm_848/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_848/while/NoOp*
T0*
_output_shapes
: ?
lstm_848/while/Identity_4Identity&lstm_848/while/lstm_cell_848/mul_2:z:0^lstm_848/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_848/while/Identity_5Identity&lstm_848/while/lstm_cell_848/add_1:z:0^lstm_848/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_848/while/NoOpNoOp4^lstm_848/while/lstm_cell_848/BiasAdd/ReadVariableOp3^lstm_848/while/lstm_cell_848/MatMul/ReadVariableOp5^lstm_848/while/lstm_cell_848/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_848_while_identity lstm_848/while/Identity:output:0"?
lstm_848_while_identity_1"lstm_848/while/Identity_1:output:0"?
lstm_848_while_identity_2"lstm_848/while/Identity_2:output:0"?
lstm_848_while_identity_3"lstm_848/while/Identity_3:output:0"?
lstm_848_while_identity_4"lstm_848/while/Identity_4:output:0"?
lstm_848_while_identity_5"lstm_848/while/Identity_5:output:0"T
'lstm_848_while_lstm_848_strided_slice_1)lstm_848_while_lstm_848_strided_slice_1_0"~
<lstm_848_while_lstm_cell_848_biasadd_readvariableop_resource>lstm_848_while_lstm_cell_848_biasadd_readvariableop_resource_0"?
=lstm_848_while_lstm_cell_848_matmul_1_readvariableop_resource?lstm_848_while_lstm_cell_848_matmul_1_readvariableop_resource_0"|
;lstm_848_while_lstm_cell_848_matmul_readvariableop_resource=lstm_848_while_lstm_cell_848_matmul_readvariableop_resource_0"?
clstm_848_while_tensorarrayv2read_tensorlistgetitem_lstm_848_tensorarrayunstack_tensorlistfromtensorelstm_848_while_tensorarrayv2read_tensorlistgetitem_lstm_848_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_848/while/lstm_cell_848/BiasAdd/ReadVariableOp3lstm_848/while/lstm_cell_848/BiasAdd/ReadVariableOp2h
2lstm_848/while/lstm_cell_848/MatMul/ReadVariableOp2lstm_848/while/lstm_cell_848/MatMul/ReadVariableOp2l
4lstm_848/while/lstm_cell_848/MatMul_1/ReadVariableOp4lstm_848/while/lstm_cell_848/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
K__inference_sequential_282_layer_call_and_return_conditional_losses_5094678

inputs#
lstm_846_5094354:	?#
lstm_846_5094356:	d?
lstm_846_5094358:	?#
lstm_847_5094504:	d?#
lstm_847_5094506:	2?
lstm_847_5094508:	?"
lstm_848_5094654:2("
lstm_848_5094656:
(
lstm_848_5094658:(#
dense_282_5094672:

dense_282_5094674:
identity??!dense_282/StatefulPartitionedCall? lstm_846/StatefulPartitionedCall? lstm_847/StatefulPartitionedCall? lstm_848/StatefulPartitionedCall?
 lstm_846/StatefulPartitionedCallStatefulPartitionedCallinputslstm_846_5094354lstm_846_5094356lstm_846_5094358*
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
E__inference_lstm_846_layer_call_and_return_conditional_losses_5094353?
 lstm_847/StatefulPartitionedCallStatefulPartitionedCall)lstm_846/StatefulPartitionedCall:output:0lstm_847_5094504lstm_847_5094506lstm_847_5094508*
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
E__inference_lstm_847_layer_call_and_return_conditional_losses_5094503?
 lstm_848/StatefulPartitionedCallStatefulPartitionedCall)lstm_847/StatefulPartitionedCall:output:0lstm_848_5094654lstm_848_5094656lstm_848_5094658*
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
E__inference_lstm_848_layer_call_and_return_conditional_losses_5094653?
!dense_282/StatefulPartitionedCallStatefulPartitionedCall)lstm_848/StatefulPartitionedCall:output:0dense_282_5094672dense_282_5094674*
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
F__inference_dense_282_layer_call_and_return_conditional_losses_5094671y
IdentityIdentity*dense_282/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_282/StatefulPartitionedCall!^lstm_846/StatefulPartitionedCall!^lstm_847/StatefulPartitionedCall!^lstm_848/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_282/StatefulPartitionedCall!dense_282/StatefulPartitionedCall2D
 lstm_846/StatefulPartitionedCall lstm_846/StatefulPartitionedCall2D
 lstm_847/StatefulPartitionedCall lstm_847/StatefulPartitionedCall2D
 lstm_848/StatefulPartitionedCall lstm_848/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
while_body_5097327
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_847_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_847_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_847_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_847_matmul_readvariableop_resource:	d?G
4while_lstm_cell_847_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_847_biasadd_readvariableop_resource:	???*while/lstm_cell_847/BiasAdd/ReadVariableOp?)while/lstm_cell_847/MatMul/ReadVariableOp?+while/lstm_cell_847/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_847/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_847_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_847/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_847/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_847/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_847_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_847/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_847/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_847/addAddV2$while/lstm_cell_847/MatMul:product:0&while/lstm_cell_847/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_847/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_847_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_847/BiasAddBiasAddwhile/lstm_cell_847/add:z:02while/lstm_cell_847/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_847/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_847/splitSplit,while/lstm_cell_847/split/split_dim:output:0$while/lstm_cell_847/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_847/SigmoidSigmoid"while/lstm_cell_847/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_847/Sigmoid_1Sigmoid"while/lstm_cell_847/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_847/mulMul!while/lstm_cell_847/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_847/ReluRelu"while/lstm_cell_847/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_847/mul_1Mulwhile/lstm_cell_847/Sigmoid:y:0&while/lstm_cell_847/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_847/add_1AddV2while/lstm_cell_847/mul:z:0while/lstm_cell_847/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_847/Sigmoid_2Sigmoid"while/lstm_cell_847/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_847/Relu_1Reluwhile/lstm_cell_847/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_847/mul_2Mul!while/lstm_cell_847/Sigmoid_2:y:0(while/lstm_cell_847/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_847/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_847/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_847/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_847/BiasAdd/ReadVariableOp*^while/lstm_cell_847/MatMul/ReadVariableOp,^while/lstm_cell_847/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_847_biasadd_readvariableop_resource5while_lstm_cell_847_biasadd_readvariableop_resource_0"n
4while_lstm_cell_847_matmul_1_readvariableop_resource6while_lstm_cell_847_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_847_matmul_readvariableop_resource4while_lstm_cell_847_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_847/BiasAdd/ReadVariableOp*while/lstm_cell_847/BiasAdd/ReadVariableOp2V
)while/lstm_cell_847/MatMul/ReadVariableOp)while/lstm_cell_847/MatMul/ReadVariableOp2Z
+while/lstm_cell_847/MatMul_1/ReadVariableOp+while/lstm_cell_847/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_5097656
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5097656___redundant_placeholder05
1while_while_cond_5097656___redundant_placeholder15
1while_while_cond_5097656___redundant_placeholder25
1while_while_cond_5097656___redundant_placeholder3
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
/__inference_lstm_cell_846_layer_call_fn_5098223

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
J__inference_lstm_cell_846_layer_call_and_return_conditional_losses_5093367o
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
E__inference_lstm_846_layer_call_and_return_conditional_losses_5096938

inputs?
,lstm_cell_846_matmul_readvariableop_resource:	?A
.lstm_cell_846_matmul_1_readvariableop_resource:	d?<
-lstm_cell_846_biasadd_readvariableop_resource:	?
identity??$lstm_cell_846/BiasAdd/ReadVariableOp?#lstm_cell_846/MatMul/ReadVariableOp?%lstm_cell_846/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_846/MatMul/ReadVariableOpReadVariableOp,lstm_cell_846_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_846/MatMulMatMulstrided_slice_2:output:0+lstm_cell_846/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_846/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_846_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_846/MatMul_1MatMulzeros:output:0-lstm_cell_846/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_846/addAddV2lstm_cell_846/MatMul:product:0 lstm_cell_846/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_846/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_846_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_846/BiasAddBiasAddlstm_cell_846/add:z:0,lstm_cell_846/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_846/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_846/splitSplit&lstm_cell_846/split/split_dim:output:0lstm_cell_846/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_846/SigmoidSigmoidlstm_cell_846/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_846/Sigmoid_1Sigmoidlstm_cell_846/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_846/mulMullstm_cell_846/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_846/ReluRelulstm_cell_846/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_846/mul_1Mullstm_cell_846/Sigmoid:y:0 lstm_cell_846/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_846/add_1AddV2lstm_cell_846/mul:z:0lstm_cell_846/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_846/Sigmoid_2Sigmoidlstm_cell_846/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_846/Relu_1Relulstm_cell_846/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_846/mul_2Mullstm_cell_846/Sigmoid_2:y:0"lstm_cell_846/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_846_matmul_readvariableop_resource.lstm_cell_846_matmul_1_readvariableop_resource-lstm_cell_846_biasadd_readvariableop_resource*
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
while_body_5096854*
condR
while_cond_5096853*K
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
NoOpNoOp%^lstm_cell_846/BiasAdd/ReadVariableOp$^lstm_cell_846/MatMul/ReadVariableOp&^lstm_cell_846/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_846/BiasAdd/ReadVariableOp$lstm_cell_846/BiasAdd/ReadVariableOp2J
#lstm_cell_846/MatMul/ReadVariableOp#lstm_cell_846/MatMul/ReadVariableOp2N
%lstm_cell_846/MatMul_1/ReadVariableOp%lstm_cell_846/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?C
?

lstm_847_while_body_5095666.
*lstm_847_while_lstm_847_while_loop_counter4
0lstm_847_while_lstm_847_while_maximum_iterations
lstm_847_while_placeholder 
lstm_847_while_placeholder_1 
lstm_847_while_placeholder_2 
lstm_847_while_placeholder_3-
)lstm_847_while_lstm_847_strided_slice_1_0i
elstm_847_while_tensorarrayv2read_tensorlistgetitem_lstm_847_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_847_while_lstm_cell_847_matmul_readvariableop_resource_0:	d?R
?lstm_847_while_lstm_cell_847_matmul_1_readvariableop_resource_0:	2?M
>lstm_847_while_lstm_cell_847_biasadd_readvariableop_resource_0:	?
lstm_847_while_identity
lstm_847_while_identity_1
lstm_847_while_identity_2
lstm_847_while_identity_3
lstm_847_while_identity_4
lstm_847_while_identity_5+
'lstm_847_while_lstm_847_strided_slice_1g
clstm_847_while_tensorarrayv2read_tensorlistgetitem_lstm_847_tensorarrayunstack_tensorlistfromtensorN
;lstm_847_while_lstm_cell_847_matmul_readvariableop_resource:	d?P
=lstm_847_while_lstm_cell_847_matmul_1_readvariableop_resource:	2?K
<lstm_847_while_lstm_cell_847_biasadd_readvariableop_resource:	???3lstm_847/while/lstm_cell_847/BiasAdd/ReadVariableOp?2lstm_847/while/lstm_cell_847/MatMul/ReadVariableOp?4lstm_847/while/lstm_cell_847/MatMul_1/ReadVariableOp?
@lstm_847/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_847/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_847_while_tensorarrayv2read_tensorlistgetitem_lstm_847_tensorarrayunstack_tensorlistfromtensor_0lstm_847_while_placeholderIlstm_847/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_847/while/lstm_cell_847/MatMul/ReadVariableOpReadVariableOp=lstm_847_while_lstm_cell_847_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_847/while/lstm_cell_847/MatMulMatMul9lstm_847/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_847/while/lstm_cell_847/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_847/while/lstm_cell_847/MatMul_1/ReadVariableOpReadVariableOp?lstm_847_while_lstm_cell_847_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_847/while/lstm_cell_847/MatMul_1MatMullstm_847_while_placeholder_2<lstm_847/while/lstm_cell_847/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_847/while/lstm_cell_847/addAddV2-lstm_847/while/lstm_cell_847/MatMul:product:0/lstm_847/while/lstm_cell_847/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_847/while/lstm_cell_847/BiasAdd/ReadVariableOpReadVariableOp>lstm_847_while_lstm_cell_847_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_847/while/lstm_cell_847/BiasAddBiasAdd$lstm_847/while/lstm_cell_847/add:z:0;lstm_847/while/lstm_cell_847/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_847/while/lstm_cell_847/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_847/while/lstm_cell_847/splitSplit5lstm_847/while/lstm_cell_847/split/split_dim:output:0-lstm_847/while/lstm_cell_847/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_847/while/lstm_cell_847/SigmoidSigmoid+lstm_847/while/lstm_cell_847/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_847/while/lstm_cell_847/Sigmoid_1Sigmoid+lstm_847/while/lstm_cell_847/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_847/while/lstm_cell_847/mulMul*lstm_847/while/lstm_cell_847/Sigmoid_1:y:0lstm_847_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_847/while/lstm_cell_847/ReluRelu+lstm_847/while/lstm_cell_847/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_847/while/lstm_cell_847/mul_1Mul(lstm_847/while/lstm_cell_847/Sigmoid:y:0/lstm_847/while/lstm_cell_847/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_847/while/lstm_cell_847/add_1AddV2$lstm_847/while/lstm_cell_847/mul:z:0&lstm_847/while/lstm_cell_847/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_847/while/lstm_cell_847/Sigmoid_2Sigmoid+lstm_847/while/lstm_cell_847/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_847/while/lstm_cell_847/Relu_1Relu&lstm_847/while/lstm_cell_847/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_847/while/lstm_cell_847/mul_2Mul*lstm_847/while/lstm_cell_847/Sigmoid_2:y:01lstm_847/while/lstm_cell_847/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_847/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_847_while_placeholder_1lstm_847_while_placeholder&lstm_847/while/lstm_cell_847/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_847/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_847/while/addAddV2lstm_847_while_placeholderlstm_847/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_847/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_847/while/add_1AddV2*lstm_847_while_lstm_847_while_loop_counterlstm_847/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_847/while/IdentityIdentitylstm_847/while/add_1:z:0^lstm_847/while/NoOp*
T0*
_output_shapes
: ?
lstm_847/while/Identity_1Identity0lstm_847_while_lstm_847_while_maximum_iterations^lstm_847/while/NoOp*
T0*
_output_shapes
: t
lstm_847/while/Identity_2Identitylstm_847/while/add:z:0^lstm_847/while/NoOp*
T0*
_output_shapes
: ?
lstm_847/while/Identity_3IdentityClstm_847/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_847/while/NoOp*
T0*
_output_shapes
: ?
lstm_847/while/Identity_4Identity&lstm_847/while/lstm_cell_847/mul_2:z:0^lstm_847/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_847/while/Identity_5Identity&lstm_847/while/lstm_cell_847/add_1:z:0^lstm_847/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_847/while/NoOpNoOp4^lstm_847/while/lstm_cell_847/BiasAdd/ReadVariableOp3^lstm_847/while/lstm_cell_847/MatMul/ReadVariableOp5^lstm_847/while/lstm_cell_847/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_847_while_identity lstm_847/while/Identity:output:0"?
lstm_847_while_identity_1"lstm_847/while/Identity_1:output:0"?
lstm_847_while_identity_2"lstm_847/while/Identity_2:output:0"?
lstm_847_while_identity_3"lstm_847/while/Identity_3:output:0"?
lstm_847_while_identity_4"lstm_847/while/Identity_4:output:0"?
lstm_847_while_identity_5"lstm_847/while/Identity_5:output:0"T
'lstm_847_while_lstm_847_strided_slice_1)lstm_847_while_lstm_847_strided_slice_1_0"~
<lstm_847_while_lstm_cell_847_biasadd_readvariableop_resource>lstm_847_while_lstm_cell_847_biasadd_readvariableop_resource_0"?
=lstm_847_while_lstm_cell_847_matmul_1_readvariableop_resource?lstm_847_while_lstm_cell_847_matmul_1_readvariableop_resource_0"|
;lstm_847_while_lstm_cell_847_matmul_readvariableop_resource=lstm_847_while_lstm_cell_847_matmul_readvariableop_resource_0"?
clstm_847_while_tensorarrayv2read_tensorlistgetitem_lstm_847_tensorarrayunstack_tensorlistfromtensorelstm_847_while_tensorarrayv2read_tensorlistgetitem_lstm_847_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_847/while/lstm_cell_847/BiasAdd/ReadVariableOp3lstm_847/while/lstm_cell_847/BiasAdd/ReadVariableOp2h
2lstm_847/while/lstm_cell_847/MatMul/ReadVariableOp2lstm_847/while/lstm_cell_847/MatMul/ReadVariableOp2l
4lstm_847/while/lstm_cell_847/MatMul_1/ReadVariableOp4lstm_847/while/lstm_cell_847/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_5096425
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_846_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_846_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_846_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_846_matmul_readvariableop_resource:	?G
4while_lstm_cell_846_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_846_biasadd_readvariableop_resource:	???*while/lstm_cell_846/BiasAdd/ReadVariableOp?)while/lstm_cell_846/MatMul/ReadVariableOp?+while/lstm_cell_846/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_846/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_846_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_846/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_846/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_846/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_846_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_846/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_846/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_846/addAddV2$while/lstm_cell_846/MatMul:product:0&while/lstm_cell_846/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_846/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_846_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_846/BiasAddBiasAddwhile/lstm_cell_846/add:z:02while/lstm_cell_846/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_846/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_846/splitSplit,while/lstm_cell_846/split/split_dim:output:0$while/lstm_cell_846/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_846/SigmoidSigmoid"while/lstm_cell_846/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_846/Sigmoid_1Sigmoid"while/lstm_cell_846/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_846/mulMul!while/lstm_cell_846/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_846/ReluRelu"while/lstm_cell_846/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_846/mul_1Mulwhile/lstm_cell_846/Sigmoid:y:0&while/lstm_cell_846/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_846/add_1AddV2while/lstm_cell_846/mul:z:0while/lstm_cell_846/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_846/Sigmoid_2Sigmoid"while/lstm_cell_846/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_846/Relu_1Reluwhile/lstm_cell_846/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_846/mul_2Mul!while/lstm_cell_846/Sigmoid_2:y:0(while/lstm_cell_846/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_846/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_846/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_846/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_846/BiasAdd/ReadVariableOp*^while/lstm_cell_846/MatMul/ReadVariableOp,^while/lstm_cell_846/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_846_biasadd_readvariableop_resource5while_lstm_cell_846_biasadd_readvariableop_resource_0"n
4while_lstm_cell_846_matmul_1_readvariableop_resource6while_lstm_cell_846_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_846_matmul_readvariableop_resource4while_lstm_cell_846_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_846/BiasAdd/ReadVariableOp*while/lstm_cell_846/BiasAdd/ReadVariableOp2V
)while/lstm_cell_846/MatMul/ReadVariableOp)while/lstm_cell_846/MatMul/ReadVariableOp2Z
+while/lstm_cell_846/MatMul_1/ReadVariableOp+while/lstm_cell_846/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_847_layer_call_fn_5096960
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
E__inference_lstm_847_layer_call_and_return_conditional_losses_5093845|
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
*__inference_lstm_847_layer_call_fn_5096982

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
E__inference_lstm_847_layer_call_and_return_conditional_losses_5095034s
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
while_cond_5098085
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5098085___redundant_placeholder05
1while_while_cond_5098085___redundant_placeholder15
1while_while_cond_5098085___redundant_placeholder25
1while_while_cond_5098085___redundant_placeholder3
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
while_body_5097184
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_847_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_847_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_847_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_847_matmul_readvariableop_resource:	d?G
4while_lstm_cell_847_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_847_biasadd_readvariableop_resource:	???*while/lstm_cell_847/BiasAdd/ReadVariableOp?)while/lstm_cell_847/MatMul/ReadVariableOp?+while/lstm_cell_847/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_847/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_847_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_847/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_847/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_847/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_847_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_847/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_847/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_847/addAddV2$while/lstm_cell_847/MatMul:product:0&while/lstm_cell_847/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_847/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_847_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_847/BiasAddBiasAddwhile/lstm_cell_847/add:z:02while/lstm_cell_847/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_847/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_847/splitSplit,while/lstm_cell_847/split/split_dim:output:0$while/lstm_cell_847/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_847/SigmoidSigmoid"while/lstm_cell_847/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_847/Sigmoid_1Sigmoid"while/lstm_cell_847/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_847/mulMul!while/lstm_cell_847/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_847/ReluRelu"while/lstm_cell_847/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_847/mul_1Mulwhile/lstm_cell_847/Sigmoid:y:0&while/lstm_cell_847/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_847/add_1AddV2while/lstm_cell_847/mul:z:0while/lstm_cell_847/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_847/Sigmoid_2Sigmoid"while/lstm_cell_847/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_847/Relu_1Reluwhile/lstm_cell_847/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_847/mul_2Mul!while/lstm_cell_847/Sigmoid_2:y:0(while/lstm_cell_847/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_847/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_847/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_847/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_847/BiasAdd/ReadVariableOp*^while/lstm_cell_847/MatMul/ReadVariableOp,^while/lstm_cell_847/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_847_biasadd_readvariableop_resource5while_lstm_cell_847_biasadd_readvariableop_resource_0"n
4while_lstm_cell_847_matmul_1_readvariableop_resource6while_lstm_cell_847_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_847_matmul_readvariableop_resource4while_lstm_cell_847_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_847/BiasAdd/ReadVariableOp*while/lstm_cell_847/BiasAdd/ReadVariableOp2V
)while/lstm_cell_847/MatMul/ReadVariableOp)while/lstm_cell_847/MatMul/ReadVariableOp2Z
+while/lstm_cell_847/MatMul_1/ReadVariableOp+while/lstm_cell_847/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_5093935
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_848_5093959_0:2(/
while_lstm_cell_848_5093961_0:
(+
while_lstm_cell_848_5093963_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_848_5093959:2(-
while_lstm_cell_848_5093961:
()
while_lstm_cell_848_5093963:(??+while/lstm_cell_848/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_848/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_848_5093959_0while_lstm_cell_848_5093961_0while_lstm_cell_848_5093963_0*
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
J__inference_lstm_cell_848_layer_call_and_return_conditional_losses_5093921?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_848/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_848/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_848/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_848/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_848_5093959while_lstm_cell_848_5093959_0"<
while_lstm_cell_848_5093961while_lstm_cell_848_5093961_0"<
while_lstm_cell_848_5093963while_lstm_cell_848_5093963_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_848/StatefulPartitionedCall+while/lstm_cell_848/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_847_layer_call_and_return_conditional_losses_5098385

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
J__inference_lstm_cell_848_layer_call_and_return_conditional_losses_5098483

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
?T
?
*sequential_282_lstm_847_while_body_5092925L
Hsequential_282_lstm_847_while_sequential_282_lstm_847_while_loop_counterR
Nsequential_282_lstm_847_while_sequential_282_lstm_847_while_maximum_iterations-
)sequential_282_lstm_847_while_placeholder/
+sequential_282_lstm_847_while_placeholder_1/
+sequential_282_lstm_847_while_placeholder_2/
+sequential_282_lstm_847_while_placeholder_3K
Gsequential_282_lstm_847_while_sequential_282_lstm_847_strided_slice_1_0?
?sequential_282_lstm_847_while_tensorarrayv2read_tensorlistgetitem_sequential_282_lstm_847_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_282_lstm_847_while_lstm_cell_847_matmul_readvariableop_resource_0:	d?a
Nsequential_282_lstm_847_while_lstm_cell_847_matmul_1_readvariableop_resource_0:	2?\
Msequential_282_lstm_847_while_lstm_cell_847_biasadd_readvariableop_resource_0:	?*
&sequential_282_lstm_847_while_identity,
(sequential_282_lstm_847_while_identity_1,
(sequential_282_lstm_847_while_identity_2,
(sequential_282_lstm_847_while_identity_3,
(sequential_282_lstm_847_while_identity_4,
(sequential_282_lstm_847_while_identity_5I
Esequential_282_lstm_847_while_sequential_282_lstm_847_strided_slice_1?
?sequential_282_lstm_847_while_tensorarrayv2read_tensorlistgetitem_sequential_282_lstm_847_tensorarrayunstack_tensorlistfromtensor]
Jsequential_282_lstm_847_while_lstm_cell_847_matmul_readvariableop_resource:	d?_
Lsequential_282_lstm_847_while_lstm_cell_847_matmul_1_readvariableop_resource:	2?Z
Ksequential_282_lstm_847_while_lstm_cell_847_biasadd_readvariableop_resource:	???Bsequential_282/lstm_847/while/lstm_cell_847/BiasAdd/ReadVariableOp?Asequential_282/lstm_847/while/lstm_cell_847/MatMul/ReadVariableOp?Csequential_282/lstm_847/while/lstm_cell_847/MatMul_1/ReadVariableOp?
Osequential_282/lstm_847/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
Asequential_282/lstm_847/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_282_lstm_847_while_tensorarrayv2read_tensorlistgetitem_sequential_282_lstm_847_tensorarrayunstack_tensorlistfromtensor_0)sequential_282_lstm_847_while_placeholderXsequential_282/lstm_847/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
Asequential_282/lstm_847/while/lstm_cell_847/MatMul/ReadVariableOpReadVariableOpLsequential_282_lstm_847_while_lstm_cell_847_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
2sequential_282/lstm_847/while/lstm_cell_847/MatMulMatMulHsequential_282/lstm_847/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_282/lstm_847/while/lstm_cell_847/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_282/lstm_847/while/lstm_cell_847/MatMul_1/ReadVariableOpReadVariableOpNsequential_282_lstm_847_while_lstm_cell_847_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
4sequential_282/lstm_847/while/lstm_cell_847/MatMul_1MatMul+sequential_282_lstm_847_while_placeholder_2Ksequential_282/lstm_847/while/lstm_cell_847/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_282/lstm_847/while/lstm_cell_847/addAddV2<sequential_282/lstm_847/while/lstm_cell_847/MatMul:product:0>sequential_282/lstm_847/while/lstm_cell_847/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_282/lstm_847/while/lstm_cell_847/BiasAdd/ReadVariableOpReadVariableOpMsequential_282_lstm_847_while_lstm_cell_847_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_282/lstm_847/while/lstm_cell_847/BiasAddBiasAdd3sequential_282/lstm_847/while/lstm_cell_847/add:z:0Jsequential_282/lstm_847/while/lstm_cell_847/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_282/lstm_847/while/lstm_cell_847/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_282/lstm_847/while/lstm_cell_847/splitSplitDsequential_282/lstm_847/while/lstm_cell_847/split/split_dim:output:0<sequential_282/lstm_847/while/lstm_cell_847/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
3sequential_282/lstm_847/while/lstm_cell_847/SigmoidSigmoid:sequential_282/lstm_847/while/lstm_cell_847/split:output:0*
T0*'
_output_shapes
:?????????2?
5sequential_282/lstm_847/while/lstm_cell_847/Sigmoid_1Sigmoid:sequential_282/lstm_847/while/lstm_cell_847/split:output:1*
T0*'
_output_shapes
:?????????2?
/sequential_282/lstm_847/while/lstm_cell_847/mulMul9sequential_282/lstm_847/while/lstm_cell_847/Sigmoid_1:y:0+sequential_282_lstm_847_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
0sequential_282/lstm_847/while/lstm_cell_847/ReluRelu:sequential_282/lstm_847/while/lstm_cell_847/split:output:2*
T0*'
_output_shapes
:?????????2?
1sequential_282/lstm_847/while/lstm_cell_847/mul_1Mul7sequential_282/lstm_847/while/lstm_cell_847/Sigmoid:y:0>sequential_282/lstm_847/while/lstm_cell_847/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
1sequential_282/lstm_847/while/lstm_cell_847/add_1AddV23sequential_282/lstm_847/while/lstm_cell_847/mul:z:05sequential_282/lstm_847/while/lstm_cell_847/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
5sequential_282/lstm_847/while/lstm_cell_847/Sigmoid_2Sigmoid:sequential_282/lstm_847/while/lstm_cell_847/split:output:3*
T0*'
_output_shapes
:?????????2?
2sequential_282/lstm_847/while/lstm_cell_847/Relu_1Relu5sequential_282/lstm_847/while/lstm_cell_847/add_1:z:0*
T0*'
_output_shapes
:?????????2?
1sequential_282/lstm_847/while/lstm_cell_847/mul_2Mul9sequential_282/lstm_847/while/lstm_cell_847/Sigmoid_2:y:0@sequential_282/lstm_847/while/lstm_cell_847/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
Bsequential_282/lstm_847/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_282_lstm_847_while_placeholder_1)sequential_282_lstm_847_while_placeholder5sequential_282/lstm_847/while/lstm_cell_847/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_282/lstm_847/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_282/lstm_847/while/addAddV2)sequential_282_lstm_847_while_placeholder,sequential_282/lstm_847/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_282/lstm_847/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_282/lstm_847/while/add_1AddV2Hsequential_282_lstm_847_while_sequential_282_lstm_847_while_loop_counter.sequential_282/lstm_847/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_282/lstm_847/while/IdentityIdentity'sequential_282/lstm_847/while/add_1:z:0#^sequential_282/lstm_847/while/NoOp*
T0*
_output_shapes
: ?
(sequential_282/lstm_847/while/Identity_1IdentityNsequential_282_lstm_847_while_sequential_282_lstm_847_while_maximum_iterations#^sequential_282/lstm_847/while/NoOp*
T0*
_output_shapes
: ?
(sequential_282/lstm_847/while/Identity_2Identity%sequential_282/lstm_847/while/add:z:0#^sequential_282/lstm_847/while/NoOp*
T0*
_output_shapes
: ?
(sequential_282/lstm_847/while/Identity_3IdentityRsequential_282/lstm_847/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_282/lstm_847/while/NoOp*
T0*
_output_shapes
: ?
(sequential_282/lstm_847/while/Identity_4Identity5sequential_282/lstm_847/while/lstm_cell_847/mul_2:z:0#^sequential_282/lstm_847/while/NoOp*
T0*'
_output_shapes
:?????????2?
(sequential_282/lstm_847/while/Identity_5Identity5sequential_282/lstm_847/while/lstm_cell_847/add_1:z:0#^sequential_282/lstm_847/while/NoOp*
T0*'
_output_shapes
:?????????2?
"sequential_282/lstm_847/while/NoOpNoOpC^sequential_282/lstm_847/while/lstm_cell_847/BiasAdd/ReadVariableOpB^sequential_282/lstm_847/while/lstm_cell_847/MatMul/ReadVariableOpD^sequential_282/lstm_847/while/lstm_cell_847/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_282_lstm_847_while_identity/sequential_282/lstm_847/while/Identity:output:0"]
(sequential_282_lstm_847_while_identity_11sequential_282/lstm_847/while/Identity_1:output:0"]
(sequential_282_lstm_847_while_identity_21sequential_282/lstm_847/while/Identity_2:output:0"]
(sequential_282_lstm_847_while_identity_31sequential_282/lstm_847/while/Identity_3:output:0"]
(sequential_282_lstm_847_while_identity_41sequential_282/lstm_847/while/Identity_4:output:0"]
(sequential_282_lstm_847_while_identity_51sequential_282/lstm_847/while/Identity_5:output:0"?
Ksequential_282_lstm_847_while_lstm_cell_847_biasadd_readvariableop_resourceMsequential_282_lstm_847_while_lstm_cell_847_biasadd_readvariableop_resource_0"?
Lsequential_282_lstm_847_while_lstm_cell_847_matmul_1_readvariableop_resourceNsequential_282_lstm_847_while_lstm_cell_847_matmul_1_readvariableop_resource_0"?
Jsequential_282_lstm_847_while_lstm_cell_847_matmul_readvariableop_resourceLsequential_282_lstm_847_while_lstm_cell_847_matmul_readvariableop_resource_0"?
Esequential_282_lstm_847_while_sequential_282_lstm_847_strided_slice_1Gsequential_282_lstm_847_while_sequential_282_lstm_847_strided_slice_1_0"?
?sequential_282_lstm_847_while_tensorarrayv2read_tensorlistgetitem_sequential_282_lstm_847_tensorarrayunstack_tensorlistfromtensor?sequential_282_lstm_847_while_tensorarrayv2read_tensorlistgetitem_sequential_282_lstm_847_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2?
Bsequential_282/lstm_847/while/lstm_cell_847/BiasAdd/ReadVariableOpBsequential_282/lstm_847/while/lstm_cell_847/BiasAdd/ReadVariableOp2?
Asequential_282/lstm_847/while/lstm_cell_847/MatMul/ReadVariableOpAsequential_282/lstm_847/while/lstm_cell_847/MatMul/ReadVariableOp2?
Csequential_282/lstm_847/while/lstm_cell_847/MatMul_1/ReadVariableOpCsequential_282/lstm_847/while/lstm_cell_847/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_846_layer_call_and_return_conditional_losses_5093221

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
while_body_5096568
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_846_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_846_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_846_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_846_matmul_readvariableop_resource:	?G
4while_lstm_cell_846_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_846_biasadd_readvariableop_resource:	???*while/lstm_cell_846/BiasAdd/ReadVariableOp?)while/lstm_cell_846/MatMul/ReadVariableOp?+while/lstm_cell_846/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_846/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_846_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_846/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_846/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_846/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_846_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_846/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_846/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_846/addAddV2$while/lstm_cell_846/MatMul:product:0&while/lstm_cell_846/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_846/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_846_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_846/BiasAddBiasAddwhile/lstm_cell_846/add:z:02while/lstm_cell_846/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_846/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_846/splitSplit,while/lstm_cell_846/split/split_dim:output:0$while/lstm_cell_846/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_846/SigmoidSigmoid"while/lstm_cell_846/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_846/Sigmoid_1Sigmoid"while/lstm_cell_846/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_846/mulMul!while/lstm_cell_846/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_846/ReluRelu"while/lstm_cell_846/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_846/mul_1Mulwhile/lstm_cell_846/Sigmoid:y:0&while/lstm_cell_846/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_846/add_1AddV2while/lstm_cell_846/mul:z:0while/lstm_cell_846/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_846/Sigmoid_2Sigmoid"while/lstm_cell_846/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_846/Relu_1Reluwhile/lstm_cell_846/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_846/mul_2Mul!while/lstm_cell_846/Sigmoid_2:y:0(while/lstm_cell_846/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_846/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_846/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_846/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_846/BiasAdd/ReadVariableOp*^while/lstm_cell_846/MatMul/ReadVariableOp,^while/lstm_cell_846/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_846_biasadd_readvariableop_resource5while_lstm_cell_846_biasadd_readvariableop_resource_0"n
4while_lstm_cell_846_matmul_1_readvariableop_resource6while_lstm_cell_846_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_846_matmul_readvariableop_resource4while_lstm_cell_846_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_846/BiasAdd/ReadVariableOp*while/lstm_cell_846/BiasAdd/ReadVariableOp2V
)while/lstm_cell_846/MatMul/ReadVariableOp)while/lstm_cell_846/MatMul/ReadVariableOp2Z
+while/lstm_cell_846/MatMul_1/ReadVariableOp+while/lstm_cell_846/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_847_layer_call_and_return_conditional_losses_5097554

inputs?
,lstm_cell_847_matmul_readvariableop_resource:	d?A
.lstm_cell_847_matmul_1_readvariableop_resource:	2?<
-lstm_cell_847_biasadd_readvariableop_resource:	?
identity??$lstm_cell_847/BiasAdd/ReadVariableOp?#lstm_cell_847/MatMul/ReadVariableOp?%lstm_cell_847/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_847/MatMul/ReadVariableOpReadVariableOp,lstm_cell_847_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_847/MatMulMatMulstrided_slice_2:output:0+lstm_cell_847/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_847/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_847_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_847/MatMul_1MatMulzeros:output:0-lstm_cell_847/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_847/addAddV2lstm_cell_847/MatMul:product:0 lstm_cell_847/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_847/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_847_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_847/BiasAddBiasAddlstm_cell_847/add:z:0,lstm_cell_847/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_847/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_847/splitSplit&lstm_cell_847/split/split_dim:output:0lstm_cell_847/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_847/SigmoidSigmoidlstm_cell_847/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_847/Sigmoid_1Sigmoidlstm_cell_847/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_847/mulMullstm_cell_847/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_847/ReluRelulstm_cell_847/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_847/mul_1Mullstm_cell_847/Sigmoid:y:0 lstm_cell_847/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_847/add_1AddV2lstm_cell_847/mul:z:0lstm_cell_847/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_847/Sigmoid_2Sigmoidlstm_cell_847/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_847/Relu_1Relulstm_cell_847/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_847/mul_2Mullstm_cell_847/Sigmoid_2:y:0"lstm_cell_847/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_847_matmul_readvariableop_resource.lstm_cell_847_matmul_1_readvariableop_resource-lstm_cell_847_biasadd_readvariableop_resource*
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
while_body_5097470*
condR
while_cond_5097469*K
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
NoOpNoOp%^lstm_cell_847/BiasAdd/ReadVariableOp$^lstm_cell_847/MatMul/ReadVariableOp&^lstm_cell_847/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_847/BiasAdd/ReadVariableOp$lstm_cell_847/BiasAdd/ReadVariableOp2J
#lstm_cell_847/MatMul/ReadVariableOp#lstm_cell_847/MatMul/ReadVariableOp2N
%lstm_cell_847/MatMul_1/ReadVariableOp%lstm_cell_847/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
while_cond_5097942
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5097942___redundant_placeholder05
1while_while_cond_5097942___redundant_placeholder15
1while_while_cond_5097942___redundant_placeholder25
1while_while_cond_5097942___redundant_placeholder3
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
E__inference_lstm_847_layer_call_and_return_conditional_losses_5097125
inputs_0?
,lstm_cell_847_matmul_readvariableop_resource:	d?A
.lstm_cell_847_matmul_1_readvariableop_resource:	2?<
-lstm_cell_847_biasadd_readvariableop_resource:	?
identity??$lstm_cell_847/BiasAdd/ReadVariableOp?#lstm_cell_847/MatMul/ReadVariableOp?%lstm_cell_847/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_847/MatMul/ReadVariableOpReadVariableOp,lstm_cell_847_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_847/MatMulMatMulstrided_slice_2:output:0+lstm_cell_847/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_847/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_847_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_847/MatMul_1MatMulzeros:output:0-lstm_cell_847/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_847/addAddV2lstm_cell_847/MatMul:product:0 lstm_cell_847/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_847/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_847_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_847/BiasAddBiasAddlstm_cell_847/add:z:0,lstm_cell_847/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_847/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_847/splitSplit&lstm_cell_847/split/split_dim:output:0lstm_cell_847/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_847/SigmoidSigmoidlstm_cell_847/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_847/Sigmoid_1Sigmoidlstm_cell_847/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_847/mulMullstm_cell_847/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_847/ReluRelulstm_cell_847/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_847/mul_1Mullstm_cell_847/Sigmoid:y:0 lstm_cell_847/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_847/add_1AddV2lstm_cell_847/mul:z:0lstm_cell_847/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_847/Sigmoid_2Sigmoidlstm_cell_847/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_847/Relu_1Relulstm_cell_847/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_847/mul_2Mullstm_cell_847/Sigmoid_2:y:0"lstm_cell_847/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_847_matmul_readvariableop_resource.lstm_cell_847_matmul_1_readvariableop_resource-lstm_cell_847_biasadd_readvariableop_resource*
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
while_body_5097041*
condR
while_cond_5097040*K
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
NoOpNoOp%^lstm_cell_847/BiasAdd/ReadVariableOp$^lstm_cell_847/MatMul/ReadVariableOp&^lstm_cell_847/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_847/BiasAdd/ReadVariableOp$lstm_cell_847/BiasAdd/ReadVariableOp2J
#lstm_cell_847/MatMul/ReadVariableOp#lstm_cell_847/MatMul/ReadVariableOp2N
%lstm_cell_847/MatMul_1/ReadVariableOp%lstm_cell_847/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?
?
while_cond_5097183
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5097183___redundant_placeholder05
1while_while_cond_5097183___redundant_placeholder15
1while_while_cond_5097183___redundant_placeholder25
1while_while_cond_5097183___redundant_placeholder3
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
*__inference_lstm_846_layer_call_fn_5096333
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
E__inference_lstm_846_layer_call_and_return_conditional_losses_5093304|
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
*sequential_282_lstm_848_while_cond_5093063L
Hsequential_282_lstm_848_while_sequential_282_lstm_848_while_loop_counterR
Nsequential_282_lstm_848_while_sequential_282_lstm_848_while_maximum_iterations-
)sequential_282_lstm_848_while_placeholder/
+sequential_282_lstm_848_while_placeholder_1/
+sequential_282_lstm_848_while_placeholder_2/
+sequential_282_lstm_848_while_placeholder_3N
Jsequential_282_lstm_848_while_less_sequential_282_lstm_848_strided_slice_1e
asequential_282_lstm_848_while_sequential_282_lstm_848_while_cond_5093063___redundant_placeholder0e
asequential_282_lstm_848_while_sequential_282_lstm_848_while_cond_5093063___redundant_placeholder1e
asequential_282_lstm_848_while_sequential_282_lstm_848_while_cond_5093063___redundant_placeholder2e
asequential_282_lstm_848_while_sequential_282_lstm_848_while_cond_5093063___redundant_placeholder3*
&sequential_282_lstm_848_while_identity
?
"sequential_282/lstm_848/while/LessLess)sequential_282_lstm_848_while_placeholderJsequential_282_lstm_848_while_less_sequential_282_lstm_848_strided_slice_1*
T0*
_output_shapes
: {
&sequential_282/lstm_848/while/IdentityIdentity&sequential_282/lstm_848/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_282_lstm_848_while_identity/sequential_282/lstm_848/while/Identity:output:0*(
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

lstm_846_while_body_5095527.
*lstm_846_while_lstm_846_while_loop_counter4
0lstm_846_while_lstm_846_while_maximum_iterations
lstm_846_while_placeholder 
lstm_846_while_placeholder_1 
lstm_846_while_placeholder_2 
lstm_846_while_placeholder_3-
)lstm_846_while_lstm_846_strided_slice_1_0i
elstm_846_while_tensorarrayv2read_tensorlistgetitem_lstm_846_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_846_while_lstm_cell_846_matmul_readvariableop_resource_0:	?R
?lstm_846_while_lstm_cell_846_matmul_1_readvariableop_resource_0:	d?M
>lstm_846_while_lstm_cell_846_biasadd_readvariableop_resource_0:	?
lstm_846_while_identity
lstm_846_while_identity_1
lstm_846_while_identity_2
lstm_846_while_identity_3
lstm_846_while_identity_4
lstm_846_while_identity_5+
'lstm_846_while_lstm_846_strided_slice_1g
clstm_846_while_tensorarrayv2read_tensorlistgetitem_lstm_846_tensorarrayunstack_tensorlistfromtensorN
;lstm_846_while_lstm_cell_846_matmul_readvariableop_resource:	?P
=lstm_846_while_lstm_cell_846_matmul_1_readvariableop_resource:	d?K
<lstm_846_while_lstm_cell_846_biasadd_readvariableop_resource:	???3lstm_846/while/lstm_cell_846/BiasAdd/ReadVariableOp?2lstm_846/while/lstm_cell_846/MatMul/ReadVariableOp?4lstm_846/while/lstm_cell_846/MatMul_1/ReadVariableOp?
@lstm_846/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_846/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_846_while_tensorarrayv2read_tensorlistgetitem_lstm_846_tensorarrayunstack_tensorlistfromtensor_0lstm_846_while_placeholderIlstm_846/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_846/while/lstm_cell_846/MatMul/ReadVariableOpReadVariableOp=lstm_846_while_lstm_cell_846_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_846/while/lstm_cell_846/MatMulMatMul9lstm_846/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_846/while/lstm_cell_846/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_846/while/lstm_cell_846/MatMul_1/ReadVariableOpReadVariableOp?lstm_846_while_lstm_cell_846_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_846/while/lstm_cell_846/MatMul_1MatMullstm_846_while_placeholder_2<lstm_846/while/lstm_cell_846/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_846/while/lstm_cell_846/addAddV2-lstm_846/while/lstm_cell_846/MatMul:product:0/lstm_846/while/lstm_cell_846/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_846/while/lstm_cell_846/BiasAdd/ReadVariableOpReadVariableOp>lstm_846_while_lstm_cell_846_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_846/while/lstm_cell_846/BiasAddBiasAdd$lstm_846/while/lstm_cell_846/add:z:0;lstm_846/while/lstm_cell_846/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_846/while/lstm_cell_846/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_846/while/lstm_cell_846/splitSplit5lstm_846/while/lstm_cell_846/split/split_dim:output:0-lstm_846/while/lstm_cell_846/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_846/while/lstm_cell_846/SigmoidSigmoid+lstm_846/while/lstm_cell_846/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_846/while/lstm_cell_846/Sigmoid_1Sigmoid+lstm_846/while/lstm_cell_846/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_846/while/lstm_cell_846/mulMul*lstm_846/while/lstm_cell_846/Sigmoid_1:y:0lstm_846_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_846/while/lstm_cell_846/ReluRelu+lstm_846/while/lstm_cell_846/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_846/while/lstm_cell_846/mul_1Mul(lstm_846/while/lstm_cell_846/Sigmoid:y:0/lstm_846/while/lstm_cell_846/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_846/while/lstm_cell_846/add_1AddV2$lstm_846/while/lstm_cell_846/mul:z:0&lstm_846/while/lstm_cell_846/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_846/while/lstm_cell_846/Sigmoid_2Sigmoid+lstm_846/while/lstm_cell_846/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_846/while/lstm_cell_846/Relu_1Relu&lstm_846/while/lstm_cell_846/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_846/while/lstm_cell_846/mul_2Mul*lstm_846/while/lstm_cell_846/Sigmoid_2:y:01lstm_846/while/lstm_cell_846/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_846/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_846_while_placeholder_1lstm_846_while_placeholder&lstm_846/while/lstm_cell_846/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_846/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_846/while/addAddV2lstm_846_while_placeholderlstm_846/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_846/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_846/while/add_1AddV2*lstm_846_while_lstm_846_while_loop_counterlstm_846/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_846/while/IdentityIdentitylstm_846/while/add_1:z:0^lstm_846/while/NoOp*
T0*
_output_shapes
: ?
lstm_846/while/Identity_1Identity0lstm_846_while_lstm_846_while_maximum_iterations^lstm_846/while/NoOp*
T0*
_output_shapes
: t
lstm_846/while/Identity_2Identitylstm_846/while/add:z:0^lstm_846/while/NoOp*
T0*
_output_shapes
: ?
lstm_846/while/Identity_3IdentityClstm_846/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_846/while/NoOp*
T0*
_output_shapes
: ?
lstm_846/while/Identity_4Identity&lstm_846/while/lstm_cell_846/mul_2:z:0^lstm_846/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_846/while/Identity_5Identity&lstm_846/while/lstm_cell_846/add_1:z:0^lstm_846/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_846/while/NoOpNoOp4^lstm_846/while/lstm_cell_846/BiasAdd/ReadVariableOp3^lstm_846/while/lstm_cell_846/MatMul/ReadVariableOp5^lstm_846/while/lstm_cell_846/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_846_while_identity lstm_846/while/Identity:output:0"?
lstm_846_while_identity_1"lstm_846/while/Identity_1:output:0"?
lstm_846_while_identity_2"lstm_846/while/Identity_2:output:0"?
lstm_846_while_identity_3"lstm_846/while/Identity_3:output:0"?
lstm_846_while_identity_4"lstm_846/while/Identity_4:output:0"?
lstm_846_while_identity_5"lstm_846/while/Identity_5:output:0"T
'lstm_846_while_lstm_846_strided_slice_1)lstm_846_while_lstm_846_strided_slice_1_0"~
<lstm_846_while_lstm_cell_846_biasadd_readvariableop_resource>lstm_846_while_lstm_cell_846_biasadd_readvariableop_resource_0"?
=lstm_846_while_lstm_cell_846_matmul_1_readvariableop_resource?lstm_846_while_lstm_cell_846_matmul_1_readvariableop_resource_0"|
;lstm_846_while_lstm_cell_846_matmul_readvariableop_resource=lstm_846_while_lstm_cell_846_matmul_readvariableop_resource_0"?
clstm_846_while_tensorarrayv2read_tensorlistgetitem_lstm_846_tensorarrayunstack_tensorlistfromtensorelstm_846_while_tensorarrayv2read_tensorlistgetitem_lstm_846_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_846/while/lstm_cell_846/BiasAdd/ReadVariableOp3lstm_846/while/lstm_cell_846/BiasAdd/ReadVariableOp2h
2lstm_846/while/lstm_cell_846/MatMul/ReadVariableOp2lstm_846/while/lstm_cell_846/MatMul/ReadVariableOp2l
4lstm_846/while/lstm_cell_846/MatMul_1/ReadVariableOp4lstm_846/while/lstm_cell_846/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
0__inference_sequential_282_layer_call_fn_5094703
lstm_846_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_846_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_282_layer_call_and_return_conditional_losses_5094678o
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
_user_specified_namelstm_846_input
?J
?
E__inference_lstm_848_layer_call_and_return_conditional_losses_5094653

inputs>
,lstm_cell_848_matmul_readvariableop_resource:2(@
.lstm_cell_848_matmul_1_readvariableop_resource:
(;
-lstm_cell_848_biasadd_readvariableop_resource:(
identity??$lstm_cell_848/BiasAdd/ReadVariableOp?#lstm_cell_848/MatMul/ReadVariableOp?%lstm_cell_848/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_848/MatMul/ReadVariableOpReadVariableOp,lstm_cell_848_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_848/MatMulMatMulstrided_slice_2:output:0+lstm_cell_848/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_848/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_848_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_848/MatMul_1MatMulzeros:output:0-lstm_cell_848/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_848/addAddV2lstm_cell_848/MatMul:product:0 lstm_cell_848/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_848/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_848_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_848/BiasAddBiasAddlstm_cell_848/add:z:0,lstm_cell_848/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_848/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_848/splitSplit&lstm_cell_848/split/split_dim:output:0lstm_cell_848/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_848/SigmoidSigmoidlstm_cell_848/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_848/Sigmoid_1Sigmoidlstm_cell_848/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_848/mulMullstm_cell_848/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_848/ReluRelulstm_cell_848/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_848/mul_1Mullstm_cell_848/Sigmoid:y:0 lstm_cell_848/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_848/add_1AddV2lstm_cell_848/mul:z:0lstm_cell_848/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_848/Sigmoid_2Sigmoidlstm_cell_848/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_848/Relu_1Relulstm_cell_848/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_848/mul_2Mullstm_cell_848/Sigmoid_2:y:0"lstm_cell_848/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_848_matmul_readvariableop_resource.lstm_cell_848_matmul_1_readvariableop_resource-lstm_cell_848_biasadd_readvariableop_resource*
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
while_body_5094569*
condR
while_cond_5094568*K
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
NoOpNoOp%^lstm_cell_848/BiasAdd/ReadVariableOp$^lstm_cell_848/MatMul/ReadVariableOp&^lstm_cell_848/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_848/BiasAdd/ReadVariableOp$lstm_cell_848/BiasAdd/ReadVariableOp2J
#lstm_cell_848/MatMul/ReadVariableOp#lstm_cell_848/MatMul/ReadVariableOp2N
%lstm_cell_848/MatMul_1/ReadVariableOp%lstm_cell_848/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
while_cond_5094949
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5094949___redundant_placeholder05
1while_while_cond_5094949___redundant_placeholder15
1while_while_cond_5094949___redundant_placeholder25
1while_while_cond_5094949___redundant_placeholder3
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
0__inference_sequential_282_layer_call_fn_5095319
lstm_846_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_846_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_282_layer_call_and_return_conditional_losses_5095267o
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
_user_specified_namelstm_846_input
??
?
#__inference__traced_restore_5098756
file_prefix3
!assignvariableop_dense_282_kernel:
/
!assignvariableop_1_dense_282_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: C
0assignvariableop_7_lstm_846_lstm_cell_846_kernel:	?M
:assignvariableop_8_lstm_846_lstm_cell_846_recurrent_kernel:	d?=
.assignvariableop_9_lstm_846_lstm_cell_846_bias:	?D
1assignvariableop_10_lstm_847_lstm_cell_847_kernel:	d?N
;assignvariableop_11_lstm_847_lstm_cell_847_recurrent_kernel:	2?>
/assignvariableop_12_lstm_847_lstm_cell_847_bias:	?C
1assignvariableop_13_lstm_848_lstm_cell_848_kernel:2(M
;assignvariableop_14_lstm_848_lstm_cell_848_recurrent_kernel:
(=
/assignvariableop_15_lstm_848_lstm_cell_848_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: =
+assignvariableop_18_adam_dense_282_kernel_m:
7
)assignvariableop_19_adam_dense_282_bias_m:K
8assignvariableop_20_adam_lstm_846_lstm_cell_846_kernel_m:	?U
Bassignvariableop_21_adam_lstm_846_lstm_cell_846_recurrent_kernel_m:	d?E
6assignvariableop_22_adam_lstm_846_lstm_cell_846_bias_m:	?K
8assignvariableop_23_adam_lstm_847_lstm_cell_847_kernel_m:	d?U
Bassignvariableop_24_adam_lstm_847_lstm_cell_847_recurrent_kernel_m:	2?E
6assignvariableop_25_adam_lstm_847_lstm_cell_847_bias_m:	?J
8assignvariableop_26_adam_lstm_848_lstm_cell_848_kernel_m:2(T
Bassignvariableop_27_adam_lstm_848_lstm_cell_848_recurrent_kernel_m:
(D
6assignvariableop_28_adam_lstm_848_lstm_cell_848_bias_m:(=
+assignvariableop_29_adam_dense_282_kernel_v:
7
)assignvariableop_30_adam_dense_282_bias_v:K
8assignvariableop_31_adam_lstm_846_lstm_cell_846_kernel_v:	?U
Bassignvariableop_32_adam_lstm_846_lstm_cell_846_recurrent_kernel_v:	d?E
6assignvariableop_33_adam_lstm_846_lstm_cell_846_bias_v:	?K
8assignvariableop_34_adam_lstm_847_lstm_cell_847_kernel_v:	d?U
Bassignvariableop_35_adam_lstm_847_lstm_cell_847_recurrent_kernel_v:	2?E
6assignvariableop_36_adam_lstm_847_lstm_cell_847_bias_v:	?J
8assignvariableop_37_adam_lstm_848_lstm_cell_848_kernel_v:2(T
Bassignvariableop_38_adam_lstm_848_lstm_cell_848_recurrent_kernel_v:
(D
6assignvariableop_39_adam_lstm_848_lstm_cell_848_bias_v:(
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
AssignVariableOpAssignVariableOp!assignvariableop_dense_282_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_282_biasIdentity_1:output:0"/device:CPU:0*
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
AssignVariableOp_7AssignVariableOp0assignvariableop_7_lstm_846_lstm_cell_846_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp:assignvariableop_8_lstm_846_lstm_cell_846_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_846_lstm_cell_846_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp1assignvariableop_10_lstm_847_lstm_cell_847_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp;assignvariableop_11_lstm_847_lstm_cell_847_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp/assignvariableop_12_lstm_847_lstm_cell_847_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp1assignvariableop_13_lstm_848_lstm_cell_848_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp;assignvariableop_14_lstm_848_lstm_cell_848_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp/assignvariableop_15_lstm_848_lstm_cell_848_biasIdentity_15:output:0"/device:CPU:0*
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
AssignVariableOp_18AssignVariableOp+assignvariableop_18_adam_dense_282_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp)assignvariableop_19_adam_dense_282_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp8assignvariableop_20_adam_lstm_846_lstm_cell_846_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOpBassignvariableop_21_adam_lstm_846_lstm_cell_846_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp6assignvariableop_22_adam_lstm_846_lstm_cell_846_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp8assignvariableop_23_adam_lstm_847_lstm_cell_847_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOpBassignvariableop_24_adam_lstm_847_lstm_cell_847_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_847_lstm_cell_847_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp8assignvariableop_26_adam_lstm_848_lstm_cell_848_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOpBassignvariableop_27_adam_lstm_848_lstm_cell_848_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_lstm_848_lstm_cell_848_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp+assignvariableop_29_adam_dense_282_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_dense_282_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp8assignvariableop_31_adam_lstm_846_lstm_cell_846_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOpBassignvariableop_32_adam_lstm_846_lstm_cell_846_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOp6assignvariableop_33_adam_lstm_846_lstm_cell_846_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOp8assignvariableop_34_adam_lstm_847_lstm_cell_847_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOpBassignvariableop_35_adam_lstm_847_lstm_cell_847_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adam_lstm_847_lstm_cell_847_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_37AssignVariableOp8assignvariableop_37_adam_lstm_848_lstm_cell_848_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_38AssignVariableOpBassignvariableop_38_adam_lstm_848_lstm_cell_848_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_lstm_848_lstm_cell_848_bias_vIdentity_39:output:0"/device:CPU:0*
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
?8
?
while_body_5097800
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_848_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_848_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_848_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_848_matmul_readvariableop_resource:2(F
4while_lstm_cell_848_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_848_biasadd_readvariableop_resource:(??*while/lstm_cell_848/BiasAdd/ReadVariableOp?)while/lstm_cell_848/MatMul/ReadVariableOp?+while/lstm_cell_848/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_848/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_848_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_848/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_848/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_848/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_848_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_848/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_848/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_848/addAddV2$while/lstm_cell_848/MatMul:product:0&while/lstm_cell_848/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_848/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_848_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_848/BiasAddBiasAddwhile/lstm_cell_848/add:z:02while/lstm_cell_848/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_848/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_848/splitSplit,while/lstm_cell_848/split/split_dim:output:0$while/lstm_cell_848/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_848/SigmoidSigmoid"while/lstm_cell_848/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_848/Sigmoid_1Sigmoid"while/lstm_cell_848/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_848/mulMul!while/lstm_cell_848/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_848/ReluRelu"while/lstm_cell_848/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_848/mul_1Mulwhile/lstm_cell_848/Sigmoid:y:0&while/lstm_cell_848/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_848/add_1AddV2while/lstm_cell_848/mul:z:0while/lstm_cell_848/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_848/Sigmoid_2Sigmoid"while/lstm_cell_848/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_848/Relu_1Reluwhile/lstm_cell_848/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_848/mul_2Mul!while/lstm_cell_848/Sigmoid_2:y:0(while/lstm_cell_848/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_848/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_848/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_848/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_848/BiasAdd/ReadVariableOp*^while/lstm_cell_848/MatMul/ReadVariableOp,^while/lstm_cell_848/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_848_biasadd_readvariableop_resource5while_lstm_cell_848_biasadd_readvariableop_resource_0"n
4while_lstm_cell_848_matmul_1_readvariableop_resource6while_lstm_cell_848_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_848_matmul_readvariableop_resource4while_lstm_cell_848_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_848/BiasAdd/ReadVariableOp*while/lstm_cell_848/BiasAdd/ReadVariableOp2V
)while/lstm_cell_848/MatMul/ReadVariableOp)while/lstm_cell_848/MatMul/ReadVariableOp2Z
+while/lstm_cell_848/MatMul_1/ReadVariableOp+while/lstm_cell_848/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_5093776
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_847_5093800_0:	d?0
while_lstm_cell_847_5093802_0:	2?,
while_lstm_cell_847_5093804_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_847_5093800:	d?.
while_lstm_cell_847_5093802:	2?*
while_lstm_cell_847_5093804:	???+while/lstm_cell_847/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_847/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_847_5093800_0while_lstm_cell_847_5093802_0while_lstm_cell_847_5093804_0*
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
J__inference_lstm_cell_847_layer_call_and_return_conditional_losses_5093717?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_847/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_847/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_847/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_847/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_847_5093800while_lstm_cell_847_5093800_0"<
while_lstm_cell_847_5093802while_lstm_cell_847_5093802_0"<
while_lstm_cell_847_5093804while_lstm_cell_847_5093804_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_847/StatefulPartitionedCall+while/lstm_cell_847/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
lstm_847_while_cond_5096092.
*lstm_847_while_lstm_847_while_loop_counter4
0lstm_847_while_lstm_847_while_maximum_iterations
lstm_847_while_placeholder 
lstm_847_while_placeholder_1 
lstm_847_while_placeholder_2 
lstm_847_while_placeholder_30
,lstm_847_while_less_lstm_847_strided_slice_1G
Clstm_847_while_lstm_847_while_cond_5096092___redundant_placeholder0G
Clstm_847_while_lstm_847_while_cond_5096092___redundant_placeholder1G
Clstm_847_while_lstm_847_while_cond_5096092___redundant_placeholder2G
Clstm_847_while_lstm_847_while_cond_5096092___redundant_placeholder3
lstm_847_while_identity
?
lstm_847/while/LessLesslstm_847_while_placeholder,lstm_847_while_less_lstm_847_strided_slice_1*
T0*
_output_shapes
: ]
lstm_847/while/IdentityIdentitylstm_847/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_847_while_identity lstm_847/while/Identity:output:0*(
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
F__inference_dense_282_layer_call_and_return_conditional_losses_5094671

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
while_cond_5096424
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5096424___redundant_placeholder05
1while_while_cond_5096424___redundant_placeholder15
1while_while_cond_5096424___redundant_placeholder25
1while_while_cond_5096424___redundant_placeholder3
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
J__inference_lstm_cell_847_layer_call_and_return_conditional_losses_5098353

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
J__inference_lstm_cell_847_layer_call_and_return_conditional_losses_5093717

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
E__inference_lstm_848_layer_call_and_return_conditional_losses_5098027

inputs>
,lstm_cell_848_matmul_readvariableop_resource:2(@
.lstm_cell_848_matmul_1_readvariableop_resource:
(;
-lstm_cell_848_biasadd_readvariableop_resource:(
identity??$lstm_cell_848/BiasAdd/ReadVariableOp?#lstm_cell_848/MatMul/ReadVariableOp?%lstm_cell_848/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_848/MatMul/ReadVariableOpReadVariableOp,lstm_cell_848_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_848/MatMulMatMulstrided_slice_2:output:0+lstm_cell_848/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_848/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_848_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_848/MatMul_1MatMulzeros:output:0-lstm_cell_848/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_848/addAddV2lstm_cell_848/MatMul:product:0 lstm_cell_848/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_848/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_848_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_848/BiasAddBiasAddlstm_cell_848/add:z:0,lstm_cell_848/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_848/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_848/splitSplit&lstm_cell_848/split/split_dim:output:0lstm_cell_848/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_848/SigmoidSigmoidlstm_cell_848/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_848/Sigmoid_1Sigmoidlstm_cell_848/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_848/mulMullstm_cell_848/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_848/ReluRelulstm_cell_848/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_848/mul_1Mullstm_cell_848/Sigmoid:y:0 lstm_cell_848/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_848/add_1AddV2lstm_cell_848/mul:z:0lstm_cell_848/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_848/Sigmoid_2Sigmoidlstm_cell_848/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_848/Relu_1Relulstm_cell_848/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_848/mul_2Mullstm_cell_848/Sigmoid_2:y:0"lstm_cell_848/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_848_matmul_readvariableop_resource.lstm_cell_848_matmul_1_readvariableop_resource-lstm_cell_848_biasadd_readvariableop_resource*
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
while_body_5097943*
condR
while_cond_5097942*K
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
NoOpNoOp%^lstm_cell_848/BiasAdd/ReadVariableOp$^lstm_cell_848/MatMul/ReadVariableOp&^lstm_cell_848/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_848/BiasAdd/ReadVariableOp$lstm_cell_848/BiasAdd/ReadVariableOp2J
#lstm_cell_848/MatMul/ReadVariableOp#lstm_cell_848/MatMul/ReadVariableOp2N
%lstm_cell_848/MatMul_1/ReadVariableOp%lstm_cell_848/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?W
?
 __inference__traced_save_5098626
file_prefix/
+savev2_dense_282_kernel_read_readvariableop-
)savev2_dense_282_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_846_lstm_cell_846_kernel_read_readvariableopF
Bsavev2_lstm_846_lstm_cell_846_recurrent_kernel_read_readvariableop:
6savev2_lstm_846_lstm_cell_846_bias_read_readvariableop<
8savev2_lstm_847_lstm_cell_847_kernel_read_readvariableopF
Bsavev2_lstm_847_lstm_cell_847_recurrent_kernel_read_readvariableop:
6savev2_lstm_847_lstm_cell_847_bias_read_readvariableop<
8savev2_lstm_848_lstm_cell_848_kernel_read_readvariableopF
Bsavev2_lstm_848_lstm_cell_848_recurrent_kernel_read_readvariableop:
6savev2_lstm_848_lstm_cell_848_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop6
2savev2_adam_dense_282_kernel_m_read_readvariableop4
0savev2_adam_dense_282_bias_m_read_readvariableopC
?savev2_adam_lstm_846_lstm_cell_846_kernel_m_read_readvariableopM
Isavev2_adam_lstm_846_lstm_cell_846_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_846_lstm_cell_846_bias_m_read_readvariableopC
?savev2_adam_lstm_847_lstm_cell_847_kernel_m_read_readvariableopM
Isavev2_adam_lstm_847_lstm_cell_847_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_847_lstm_cell_847_bias_m_read_readvariableopC
?savev2_adam_lstm_848_lstm_cell_848_kernel_m_read_readvariableopM
Isavev2_adam_lstm_848_lstm_cell_848_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_848_lstm_cell_848_bias_m_read_readvariableop6
2savev2_adam_dense_282_kernel_v_read_readvariableop4
0savev2_adam_dense_282_bias_v_read_readvariableopC
?savev2_adam_lstm_846_lstm_cell_846_kernel_v_read_readvariableopM
Isavev2_adam_lstm_846_lstm_cell_846_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_846_lstm_cell_846_bias_v_read_readvariableopC
?savev2_adam_lstm_847_lstm_cell_847_kernel_v_read_readvariableopM
Isavev2_adam_lstm_847_lstm_cell_847_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_847_lstm_cell_847_bias_v_read_readvariableopC
?savev2_adam_lstm_848_lstm_cell_848_kernel_v_read_readvariableopM
Isavev2_adam_lstm_848_lstm_cell_848_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_848_lstm_cell_848_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_dense_282_kernel_read_readvariableop)savev2_dense_282_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_846_lstm_cell_846_kernel_read_readvariableopBsavev2_lstm_846_lstm_cell_846_recurrent_kernel_read_readvariableop6savev2_lstm_846_lstm_cell_846_bias_read_readvariableop8savev2_lstm_847_lstm_cell_847_kernel_read_readvariableopBsavev2_lstm_847_lstm_cell_847_recurrent_kernel_read_readvariableop6savev2_lstm_847_lstm_cell_847_bias_read_readvariableop8savev2_lstm_848_lstm_cell_848_kernel_read_readvariableopBsavev2_lstm_848_lstm_cell_848_recurrent_kernel_read_readvariableop6savev2_lstm_848_lstm_cell_848_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop2savev2_adam_dense_282_kernel_m_read_readvariableop0savev2_adam_dense_282_bias_m_read_readvariableop?savev2_adam_lstm_846_lstm_cell_846_kernel_m_read_readvariableopIsavev2_adam_lstm_846_lstm_cell_846_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_846_lstm_cell_846_bias_m_read_readvariableop?savev2_adam_lstm_847_lstm_cell_847_kernel_m_read_readvariableopIsavev2_adam_lstm_847_lstm_cell_847_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_847_lstm_cell_847_bias_m_read_readvariableop?savev2_adam_lstm_848_lstm_cell_848_kernel_m_read_readvariableopIsavev2_adam_lstm_848_lstm_cell_848_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_848_lstm_cell_848_bias_m_read_readvariableop2savev2_adam_dense_282_kernel_v_read_readvariableop0savev2_adam_dense_282_bias_v_read_readvariableop?savev2_adam_lstm_846_lstm_cell_846_kernel_v_read_readvariableopIsavev2_adam_lstm_846_lstm_cell_846_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_846_lstm_cell_846_bias_v_read_readvariableop?savev2_adam_lstm_847_lstm_cell_847_kernel_v_read_readvariableopIsavev2_adam_lstm_847_lstm_cell_847_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_847_lstm_cell_847_bias_v_read_readvariableop?savev2_adam_lstm_848_lstm_cell_848_kernel_v_read_readvariableopIsavev2_adam_lstm_848_lstm_cell_848_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_848_lstm_cell_848_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
while_body_5094269
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_846_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_846_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_846_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_846_matmul_readvariableop_resource:	?G
4while_lstm_cell_846_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_846_biasadd_readvariableop_resource:	???*while/lstm_cell_846/BiasAdd/ReadVariableOp?)while/lstm_cell_846/MatMul/ReadVariableOp?+while/lstm_cell_846/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_846/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_846_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_846/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_846/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_846/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_846_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_846/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_846/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_846/addAddV2$while/lstm_cell_846/MatMul:product:0&while/lstm_cell_846/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_846/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_846_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_846/BiasAddBiasAddwhile/lstm_cell_846/add:z:02while/lstm_cell_846/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_846/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_846/splitSplit,while/lstm_cell_846/split/split_dim:output:0$while/lstm_cell_846/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_846/SigmoidSigmoid"while/lstm_cell_846/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_846/Sigmoid_1Sigmoid"while/lstm_cell_846/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_846/mulMul!while/lstm_cell_846/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_846/ReluRelu"while/lstm_cell_846/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_846/mul_1Mulwhile/lstm_cell_846/Sigmoid:y:0&while/lstm_cell_846/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_846/add_1AddV2while/lstm_cell_846/mul:z:0while/lstm_cell_846/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_846/Sigmoid_2Sigmoid"while/lstm_cell_846/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_846/Relu_1Reluwhile/lstm_cell_846/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_846/mul_2Mul!while/lstm_cell_846/Sigmoid_2:y:0(while/lstm_cell_846/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_846/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_846/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_846/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_846/BiasAdd/ReadVariableOp*^while/lstm_cell_846/MatMul/ReadVariableOp,^while/lstm_cell_846/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_846_biasadd_readvariableop_resource5while_lstm_cell_846_biasadd_readvariableop_resource_0"n
4while_lstm_cell_846_matmul_1_readvariableop_resource6while_lstm_cell_846_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_846_matmul_readvariableop_resource4while_lstm_cell_846_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_846/BiasAdd/ReadVariableOp*while/lstm_cell_846/BiasAdd/ReadVariableOp2V
)while/lstm_cell_846/MatMul/ReadVariableOp)while/lstm_cell_846/MatMul/ReadVariableOp2Z
+while/lstm_cell_846/MatMul_1/ReadVariableOp+while/lstm_cell_846/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_846_layer_call_fn_5096344
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
E__inference_lstm_846_layer_call_and_return_conditional_losses_5093495|
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
E__inference_lstm_848_layer_call_and_return_conditional_losses_5097741
inputs_0>
,lstm_cell_848_matmul_readvariableop_resource:2(@
.lstm_cell_848_matmul_1_readvariableop_resource:
(;
-lstm_cell_848_biasadd_readvariableop_resource:(
identity??$lstm_cell_848/BiasAdd/ReadVariableOp?#lstm_cell_848/MatMul/ReadVariableOp?%lstm_cell_848/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_848/MatMul/ReadVariableOpReadVariableOp,lstm_cell_848_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_848/MatMulMatMulstrided_slice_2:output:0+lstm_cell_848/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_848/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_848_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_848/MatMul_1MatMulzeros:output:0-lstm_cell_848/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_848/addAddV2lstm_cell_848/MatMul:product:0 lstm_cell_848/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_848/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_848_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_848/BiasAddBiasAddlstm_cell_848/add:z:0,lstm_cell_848/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_848/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_848/splitSplit&lstm_cell_848/split/split_dim:output:0lstm_cell_848/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_848/SigmoidSigmoidlstm_cell_848/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_848/Sigmoid_1Sigmoidlstm_cell_848/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_848/mulMullstm_cell_848/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_848/ReluRelulstm_cell_848/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_848/mul_1Mullstm_cell_848/Sigmoid:y:0 lstm_cell_848/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_848/add_1AddV2lstm_cell_848/mul:z:0lstm_cell_848/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_848/Sigmoid_2Sigmoidlstm_cell_848/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_848/Relu_1Relulstm_cell_848/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_848/mul_2Mullstm_cell_848/Sigmoid_2:y:0"lstm_cell_848/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_848_matmul_readvariableop_resource.lstm_cell_848_matmul_1_readvariableop_resource-lstm_cell_848_biasadd_readvariableop_resource*
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
while_body_5097657*
condR
while_cond_5097656*K
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
NoOpNoOp%^lstm_cell_848/BiasAdd/ReadVariableOp$^lstm_cell_848/MatMul/ReadVariableOp&^lstm_cell_848/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_848/BiasAdd/ReadVariableOp$lstm_cell_848/BiasAdd/ReadVariableOp2J
#lstm_cell_848/MatMul/ReadVariableOp#lstm_cell_848/MatMul/ReadVariableOp2N
%lstm_cell_848/MatMul_1/ReadVariableOp%lstm_cell_848/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?
?
while_cond_5094568
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5094568___redundant_placeholder05
1while_while_cond_5094568___redundant_placeholder15
1while_while_cond_5094568___redundant_placeholder25
1while_while_cond_5094568___redundant_placeholder3
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
while_body_5095115
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_846_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_846_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_846_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_846_matmul_readvariableop_resource:	?G
4while_lstm_cell_846_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_846_biasadd_readvariableop_resource:	???*while/lstm_cell_846/BiasAdd/ReadVariableOp?)while/lstm_cell_846/MatMul/ReadVariableOp?+while/lstm_cell_846/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_846/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_846_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_846/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_846/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_846/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_846_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_846/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_846/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_846/addAddV2$while/lstm_cell_846/MatMul:product:0&while/lstm_cell_846/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_846/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_846_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_846/BiasAddBiasAddwhile/lstm_cell_846/add:z:02while/lstm_cell_846/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_846/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_846/splitSplit,while/lstm_cell_846/split/split_dim:output:0$while/lstm_cell_846/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_846/SigmoidSigmoid"while/lstm_cell_846/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_846/Sigmoid_1Sigmoid"while/lstm_cell_846/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_846/mulMul!while/lstm_cell_846/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_846/ReluRelu"while/lstm_cell_846/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_846/mul_1Mulwhile/lstm_cell_846/Sigmoid:y:0&while/lstm_cell_846/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_846/add_1AddV2while/lstm_cell_846/mul:z:0while/lstm_cell_846/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_846/Sigmoid_2Sigmoid"while/lstm_cell_846/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_846/Relu_1Reluwhile/lstm_cell_846/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_846/mul_2Mul!while/lstm_cell_846/Sigmoid_2:y:0(while/lstm_cell_846/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_846/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_846/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_846/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_846/BiasAdd/ReadVariableOp*^while/lstm_cell_846/MatMul/ReadVariableOp,^while/lstm_cell_846/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_846_biasadd_readvariableop_resource5while_lstm_cell_846_biasadd_readvariableop_resource_0"n
4while_lstm_cell_846_matmul_1_readvariableop_resource6while_lstm_cell_846_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_846_matmul_readvariableop_resource4while_lstm_cell_846_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_846/BiasAdd/ReadVariableOp*while/lstm_cell_846/BiasAdd/ReadVariableOp2V
)while/lstm_cell_846/MatMul/ReadVariableOp)while/lstm_cell_846/MatMul/ReadVariableOp2Z
+while/lstm_cell_846/MatMul_1/ReadVariableOp+while/lstm_cell_846/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_846_layer_call_and_return_conditional_losses_5093367

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
E__inference_lstm_848_layer_call_and_return_conditional_losses_5098170

inputs>
,lstm_cell_848_matmul_readvariableop_resource:2(@
.lstm_cell_848_matmul_1_readvariableop_resource:
(;
-lstm_cell_848_biasadd_readvariableop_resource:(
identity??$lstm_cell_848/BiasAdd/ReadVariableOp?#lstm_cell_848/MatMul/ReadVariableOp?%lstm_cell_848/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_848/MatMul/ReadVariableOpReadVariableOp,lstm_cell_848_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_848/MatMulMatMulstrided_slice_2:output:0+lstm_cell_848/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_848/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_848_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_848/MatMul_1MatMulzeros:output:0-lstm_cell_848/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_848/addAddV2lstm_cell_848/MatMul:product:0 lstm_cell_848/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_848/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_848_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_848/BiasAddBiasAddlstm_cell_848/add:z:0,lstm_cell_848/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_848/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_848/splitSplit&lstm_cell_848/split/split_dim:output:0lstm_cell_848/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_848/SigmoidSigmoidlstm_cell_848/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_848/Sigmoid_1Sigmoidlstm_cell_848/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_848/mulMullstm_cell_848/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_848/ReluRelulstm_cell_848/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_848/mul_1Mullstm_cell_848/Sigmoid:y:0 lstm_cell_848/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_848/add_1AddV2lstm_cell_848/mul:z:0lstm_cell_848/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_848/Sigmoid_2Sigmoidlstm_cell_848/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_848/Relu_1Relulstm_cell_848/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_848/mul_2Mullstm_cell_848/Sigmoid_2:y:0"lstm_cell_848/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_848_matmul_readvariableop_resource.lstm_cell_848_matmul_1_readvariableop_resource-lstm_cell_848_biasadd_readvariableop_resource*
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
while_body_5098086*
condR
while_cond_5098085*K
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
NoOpNoOp%^lstm_cell_848/BiasAdd/ReadVariableOp$^lstm_cell_848/MatMul/ReadVariableOp&^lstm_cell_848/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_848/BiasAdd/ReadVariableOp$lstm_cell_848/BiasAdd/ReadVariableOp2J
#lstm_cell_848/MatMul/ReadVariableOp#lstm_cell_848/MatMul/ReadVariableOp2N
%lstm_cell_848/MatMul_1/ReadVariableOp%lstm_cell_848/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?J
?
E__inference_lstm_847_layer_call_and_return_conditional_losses_5095034

inputs?
,lstm_cell_847_matmul_readvariableop_resource:	d?A
.lstm_cell_847_matmul_1_readvariableop_resource:	2?<
-lstm_cell_847_biasadd_readvariableop_resource:	?
identity??$lstm_cell_847/BiasAdd/ReadVariableOp?#lstm_cell_847/MatMul/ReadVariableOp?%lstm_cell_847/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_847/MatMul/ReadVariableOpReadVariableOp,lstm_cell_847_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_847/MatMulMatMulstrided_slice_2:output:0+lstm_cell_847/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_847/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_847_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_847/MatMul_1MatMulzeros:output:0-lstm_cell_847/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_847/addAddV2lstm_cell_847/MatMul:product:0 lstm_cell_847/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_847/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_847_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_847/BiasAddBiasAddlstm_cell_847/add:z:0,lstm_cell_847/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_847/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_847/splitSplit&lstm_cell_847/split/split_dim:output:0lstm_cell_847/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_847/SigmoidSigmoidlstm_cell_847/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_847/Sigmoid_1Sigmoidlstm_cell_847/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_847/mulMullstm_cell_847/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_847/ReluRelulstm_cell_847/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_847/mul_1Mullstm_cell_847/Sigmoid:y:0 lstm_cell_847/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_847/add_1AddV2lstm_cell_847/mul:z:0lstm_cell_847/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_847/Sigmoid_2Sigmoidlstm_cell_847/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_847/Relu_1Relulstm_cell_847/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_847/mul_2Mullstm_cell_847/Sigmoid_2:y:0"lstm_cell_847/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_847_matmul_readvariableop_resource.lstm_cell_847_matmul_1_readvariableop_resource-lstm_cell_847_biasadd_readvariableop_resource*
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
while_body_5094950*
condR
while_cond_5094949*K
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
NoOpNoOp%^lstm_cell_847/BiasAdd/ReadVariableOp$^lstm_cell_847/MatMul/ReadVariableOp&^lstm_cell_847/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_847/BiasAdd/ReadVariableOp$lstm_cell_847/BiasAdd/ReadVariableOp2J
#lstm_cell_847/MatMul/ReadVariableOp#lstm_cell_847/MatMul/ReadVariableOp2N
%lstm_cell_847/MatMul_1/ReadVariableOp%lstm_cell_847/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?8
?
while_body_5094950
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_847_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_847_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_847_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_847_matmul_readvariableop_resource:	d?G
4while_lstm_cell_847_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_847_biasadd_readvariableop_resource:	???*while/lstm_cell_847/BiasAdd/ReadVariableOp?)while/lstm_cell_847/MatMul/ReadVariableOp?+while/lstm_cell_847/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_847/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_847_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_847/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_847/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_847/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_847_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_847/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_847/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_847/addAddV2$while/lstm_cell_847/MatMul:product:0&while/lstm_cell_847/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_847/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_847_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_847/BiasAddBiasAddwhile/lstm_cell_847/add:z:02while/lstm_cell_847/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_847/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_847/splitSplit,while/lstm_cell_847/split/split_dim:output:0$while/lstm_cell_847/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_847/SigmoidSigmoid"while/lstm_cell_847/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_847/Sigmoid_1Sigmoid"while/lstm_cell_847/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_847/mulMul!while/lstm_cell_847/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_847/ReluRelu"while/lstm_cell_847/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_847/mul_1Mulwhile/lstm_cell_847/Sigmoid:y:0&while/lstm_cell_847/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_847/add_1AddV2while/lstm_cell_847/mul:z:0while/lstm_cell_847/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_847/Sigmoid_2Sigmoid"while/lstm_cell_847/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_847/Relu_1Reluwhile/lstm_cell_847/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_847/mul_2Mul!while/lstm_cell_847/Sigmoid_2:y:0(while/lstm_cell_847/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_847/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_847/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_847/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_847/BiasAdd/ReadVariableOp*^while/lstm_cell_847/MatMul/ReadVariableOp,^while/lstm_cell_847/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_847_biasadd_readvariableop_resource5while_lstm_cell_847_biasadd_readvariableop_resource_0"n
4while_lstm_cell_847_matmul_1_readvariableop_resource6while_lstm_cell_847_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_847_matmul_readvariableop_resource4while_lstm_cell_847_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_847/BiasAdd/ReadVariableOp*while/lstm_cell_847/BiasAdd/ReadVariableOp2V
)while/lstm_cell_847/MatMul/ReadVariableOp)while/lstm_cell_847/MatMul/ReadVariableOp2Z
+while/lstm_cell_847/MatMul_1/ReadVariableOp+while/lstm_cell_847/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_5097943
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_848_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_848_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_848_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_848_matmul_readvariableop_resource:2(F
4while_lstm_cell_848_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_848_biasadd_readvariableop_resource:(??*while/lstm_cell_848/BiasAdd/ReadVariableOp?)while/lstm_cell_848/MatMul/ReadVariableOp?+while/lstm_cell_848/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_848/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_848_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_848/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_848/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_848/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_848_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_848/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_848/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_848/addAddV2$while/lstm_cell_848/MatMul:product:0&while/lstm_cell_848/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_848/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_848_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_848/BiasAddBiasAddwhile/lstm_cell_848/add:z:02while/lstm_cell_848/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_848/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_848/splitSplit,while/lstm_cell_848/split/split_dim:output:0$while/lstm_cell_848/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_848/SigmoidSigmoid"while/lstm_cell_848/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_848/Sigmoid_1Sigmoid"while/lstm_cell_848/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_848/mulMul!while/lstm_cell_848/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_848/ReluRelu"while/lstm_cell_848/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_848/mul_1Mulwhile/lstm_cell_848/Sigmoid:y:0&while/lstm_cell_848/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_848/add_1AddV2while/lstm_cell_848/mul:z:0while/lstm_cell_848/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_848/Sigmoid_2Sigmoid"while/lstm_cell_848/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_848/Relu_1Reluwhile/lstm_cell_848/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_848/mul_2Mul!while/lstm_cell_848/Sigmoid_2:y:0(while/lstm_cell_848/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_848/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_848/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_848/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_848/BiasAdd/ReadVariableOp*^while/lstm_cell_848/MatMul/ReadVariableOp,^while/lstm_cell_848/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_848_biasadd_readvariableop_resource5while_lstm_cell_848_biasadd_readvariableop_resource_0"n
4while_lstm_cell_848_matmul_1_readvariableop_resource6while_lstm_cell_848_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_848_matmul_readvariableop_resource4while_lstm_cell_848_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_848/BiasAdd/ReadVariableOp*while/lstm_cell_848/BiasAdd/ReadVariableOp2V
)while/lstm_cell_848/MatMul/ReadVariableOp)while/lstm_cell_848/MatMul/ReadVariableOp2Z
+while/lstm_cell_848/MatMul_1/ReadVariableOp+while/lstm_cell_848/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_846_layer_call_and_return_conditional_losses_5096509
inputs_0?
,lstm_cell_846_matmul_readvariableop_resource:	?A
.lstm_cell_846_matmul_1_readvariableop_resource:	d?<
-lstm_cell_846_biasadd_readvariableop_resource:	?
identity??$lstm_cell_846/BiasAdd/ReadVariableOp?#lstm_cell_846/MatMul/ReadVariableOp?%lstm_cell_846/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_846/MatMul/ReadVariableOpReadVariableOp,lstm_cell_846_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_846/MatMulMatMulstrided_slice_2:output:0+lstm_cell_846/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_846/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_846_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_846/MatMul_1MatMulzeros:output:0-lstm_cell_846/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_846/addAddV2lstm_cell_846/MatMul:product:0 lstm_cell_846/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_846/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_846_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_846/BiasAddBiasAddlstm_cell_846/add:z:0,lstm_cell_846/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_846/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_846/splitSplit&lstm_cell_846/split/split_dim:output:0lstm_cell_846/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_846/SigmoidSigmoidlstm_cell_846/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_846/Sigmoid_1Sigmoidlstm_cell_846/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_846/mulMullstm_cell_846/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_846/ReluRelulstm_cell_846/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_846/mul_1Mullstm_cell_846/Sigmoid:y:0 lstm_cell_846/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_846/add_1AddV2lstm_cell_846/mul:z:0lstm_cell_846/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_846/Sigmoid_2Sigmoidlstm_cell_846/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_846/Relu_1Relulstm_cell_846/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_846/mul_2Mullstm_cell_846/Sigmoid_2:y:0"lstm_cell_846/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_846_matmul_readvariableop_resource.lstm_cell_846_matmul_1_readvariableop_resource-lstm_cell_846_biasadd_readvariableop_resource*
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
while_body_5096425*
condR
while_cond_5096424*K
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
NoOpNoOp%^lstm_cell_846/BiasAdd/ReadVariableOp$^lstm_cell_846/MatMul/ReadVariableOp&^lstm_cell_846/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_846/BiasAdd/ReadVariableOp$lstm_cell_846/BiasAdd/ReadVariableOp2J
#lstm_cell_846/MatMul/ReadVariableOp#lstm_cell_846/MatMul/ReadVariableOp2N
%lstm_cell_846/MatMul_1/ReadVariableOp%lstm_cell_846/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
/__inference_lstm_cell_846_layer_call_fn_5098206

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
J__inference_lstm_cell_846_layer_call_and_return_conditional_losses_5093221o
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
E__inference_lstm_846_layer_call_and_return_conditional_losses_5096795

inputs?
,lstm_cell_846_matmul_readvariableop_resource:	?A
.lstm_cell_846_matmul_1_readvariableop_resource:	d?<
-lstm_cell_846_biasadd_readvariableop_resource:	?
identity??$lstm_cell_846/BiasAdd/ReadVariableOp?#lstm_cell_846/MatMul/ReadVariableOp?%lstm_cell_846/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_846/MatMul/ReadVariableOpReadVariableOp,lstm_cell_846_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_846/MatMulMatMulstrided_slice_2:output:0+lstm_cell_846/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_846/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_846_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_846/MatMul_1MatMulzeros:output:0-lstm_cell_846/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_846/addAddV2lstm_cell_846/MatMul:product:0 lstm_cell_846/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_846/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_846_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_846/BiasAddBiasAddlstm_cell_846/add:z:0,lstm_cell_846/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_846/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_846/splitSplit&lstm_cell_846/split/split_dim:output:0lstm_cell_846/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_846/SigmoidSigmoidlstm_cell_846/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_846/Sigmoid_1Sigmoidlstm_cell_846/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_846/mulMullstm_cell_846/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_846/ReluRelulstm_cell_846/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_846/mul_1Mullstm_cell_846/Sigmoid:y:0 lstm_cell_846/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_846/add_1AddV2lstm_cell_846/mul:z:0lstm_cell_846/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_846/Sigmoid_2Sigmoidlstm_cell_846/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_846/Relu_1Relulstm_cell_846/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_846/mul_2Mullstm_cell_846/Sigmoid_2:y:0"lstm_cell_846/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_846_matmul_readvariableop_resource.lstm_cell_846_matmul_1_readvariableop_resource-lstm_cell_846_biasadd_readvariableop_resource*
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
while_body_5096711*
condR
while_cond_5096710*K
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
NoOpNoOp%^lstm_cell_846/BiasAdd/ReadVariableOp$^lstm_cell_846/MatMul/ReadVariableOp&^lstm_cell_846/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_846/BiasAdd/ReadVariableOp$lstm_cell_846/BiasAdd/ReadVariableOp2J
#lstm_cell_846/MatMul/ReadVariableOp#lstm_cell_846/MatMul/ReadVariableOp2N
%lstm_cell_846/MatMul_1/ReadVariableOp%lstm_cell_846/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
??
?
"__inference__wrapped_model_5093154
lstm_846_inputW
Dsequential_282_lstm_846_lstm_cell_846_matmul_readvariableop_resource:	?Y
Fsequential_282_lstm_846_lstm_cell_846_matmul_1_readvariableop_resource:	d?T
Esequential_282_lstm_846_lstm_cell_846_biasadd_readvariableop_resource:	?W
Dsequential_282_lstm_847_lstm_cell_847_matmul_readvariableop_resource:	d?Y
Fsequential_282_lstm_847_lstm_cell_847_matmul_1_readvariableop_resource:	2?T
Esequential_282_lstm_847_lstm_cell_847_biasadd_readvariableop_resource:	?V
Dsequential_282_lstm_848_lstm_cell_848_matmul_readvariableop_resource:2(X
Fsequential_282_lstm_848_lstm_cell_848_matmul_1_readvariableop_resource:
(S
Esequential_282_lstm_848_lstm_cell_848_biasadd_readvariableop_resource:(I
7sequential_282_dense_282_matmul_readvariableop_resource:
F
8sequential_282_dense_282_biasadd_readvariableop_resource:
identity??/sequential_282/dense_282/BiasAdd/ReadVariableOp?.sequential_282/dense_282/MatMul/ReadVariableOp?<sequential_282/lstm_846/lstm_cell_846/BiasAdd/ReadVariableOp?;sequential_282/lstm_846/lstm_cell_846/MatMul/ReadVariableOp?=sequential_282/lstm_846/lstm_cell_846/MatMul_1/ReadVariableOp?sequential_282/lstm_846/while?<sequential_282/lstm_847/lstm_cell_847/BiasAdd/ReadVariableOp?;sequential_282/lstm_847/lstm_cell_847/MatMul/ReadVariableOp?=sequential_282/lstm_847/lstm_cell_847/MatMul_1/ReadVariableOp?sequential_282/lstm_847/while?<sequential_282/lstm_848/lstm_cell_848/BiasAdd/ReadVariableOp?;sequential_282/lstm_848/lstm_cell_848/MatMul/ReadVariableOp?=sequential_282/lstm_848/lstm_cell_848/MatMul_1/ReadVariableOp?sequential_282/lstm_848/while[
sequential_282/lstm_846/ShapeShapelstm_846_input*
T0*
_output_shapes
:u
+sequential_282/lstm_846/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_282/lstm_846/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_282/lstm_846/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_282/lstm_846/strided_sliceStridedSlice&sequential_282/lstm_846/Shape:output:04sequential_282/lstm_846/strided_slice/stack:output:06sequential_282/lstm_846/strided_slice/stack_1:output:06sequential_282/lstm_846/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_282/lstm_846/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
$sequential_282/lstm_846/zeros/packedPack.sequential_282/lstm_846/strided_slice:output:0/sequential_282/lstm_846/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_282/lstm_846/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_282/lstm_846/zerosFill-sequential_282/lstm_846/zeros/packed:output:0,sequential_282/lstm_846/zeros/Const:output:0*
T0*'
_output_shapes
:?????????dj
(sequential_282/lstm_846/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
&sequential_282/lstm_846/zeros_1/packedPack.sequential_282/lstm_846/strided_slice:output:01sequential_282/lstm_846/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_282/lstm_846/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_282/lstm_846/zeros_1Fill/sequential_282/lstm_846/zeros_1/packed:output:0.sequential_282/lstm_846/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????d{
&sequential_282/lstm_846/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_282/lstm_846/transpose	Transposelstm_846_input/sequential_282/lstm_846/transpose/perm:output:0*
T0*+
_output_shapes
:?????????t
sequential_282/lstm_846/Shape_1Shape%sequential_282/lstm_846/transpose:y:0*
T0*
_output_shapes
:w
-sequential_282/lstm_846/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_282/lstm_846/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_282/lstm_846/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_282/lstm_846/strided_slice_1StridedSlice(sequential_282/lstm_846/Shape_1:output:06sequential_282/lstm_846/strided_slice_1/stack:output:08sequential_282/lstm_846/strided_slice_1/stack_1:output:08sequential_282/lstm_846/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_282/lstm_846/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_282/lstm_846/TensorArrayV2TensorListReserve<sequential_282/lstm_846/TensorArrayV2/element_shape:output:00sequential_282/lstm_846/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_282/lstm_846/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
?sequential_282/lstm_846/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_282/lstm_846/transpose:y:0Vsequential_282/lstm_846/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_282/lstm_846/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_282/lstm_846/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_282/lstm_846/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_282/lstm_846/strided_slice_2StridedSlice%sequential_282/lstm_846/transpose:y:06sequential_282/lstm_846/strided_slice_2/stack:output:08sequential_282/lstm_846/strided_slice_2/stack_1:output:08sequential_282/lstm_846/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
;sequential_282/lstm_846/lstm_cell_846/MatMul/ReadVariableOpReadVariableOpDsequential_282_lstm_846_lstm_cell_846_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
,sequential_282/lstm_846/lstm_cell_846/MatMulMatMul0sequential_282/lstm_846/strided_slice_2:output:0Csequential_282/lstm_846/lstm_cell_846/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_282/lstm_846/lstm_cell_846/MatMul_1/ReadVariableOpReadVariableOpFsequential_282_lstm_846_lstm_cell_846_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
.sequential_282/lstm_846/lstm_cell_846/MatMul_1MatMul&sequential_282/lstm_846/zeros:output:0Esequential_282/lstm_846/lstm_cell_846/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_282/lstm_846/lstm_cell_846/addAddV26sequential_282/lstm_846/lstm_cell_846/MatMul:product:08sequential_282/lstm_846/lstm_cell_846/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_282/lstm_846/lstm_cell_846/BiasAdd/ReadVariableOpReadVariableOpEsequential_282_lstm_846_lstm_cell_846_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_282/lstm_846/lstm_cell_846/BiasAddBiasAdd-sequential_282/lstm_846/lstm_cell_846/add:z:0Dsequential_282/lstm_846/lstm_cell_846/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_282/lstm_846/lstm_cell_846/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_282/lstm_846/lstm_cell_846/splitSplit>sequential_282/lstm_846/lstm_cell_846/split/split_dim:output:06sequential_282/lstm_846/lstm_cell_846/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
-sequential_282/lstm_846/lstm_cell_846/SigmoidSigmoid4sequential_282/lstm_846/lstm_cell_846/split:output:0*
T0*'
_output_shapes
:?????????d?
/sequential_282/lstm_846/lstm_cell_846/Sigmoid_1Sigmoid4sequential_282/lstm_846/lstm_cell_846/split:output:1*
T0*'
_output_shapes
:?????????d?
)sequential_282/lstm_846/lstm_cell_846/mulMul3sequential_282/lstm_846/lstm_cell_846/Sigmoid_1:y:0(sequential_282/lstm_846/zeros_1:output:0*
T0*'
_output_shapes
:?????????d?
*sequential_282/lstm_846/lstm_cell_846/ReluRelu4sequential_282/lstm_846/lstm_cell_846/split:output:2*
T0*'
_output_shapes
:?????????d?
+sequential_282/lstm_846/lstm_cell_846/mul_1Mul1sequential_282/lstm_846/lstm_cell_846/Sigmoid:y:08sequential_282/lstm_846/lstm_cell_846/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
+sequential_282/lstm_846/lstm_cell_846/add_1AddV2-sequential_282/lstm_846/lstm_cell_846/mul:z:0/sequential_282/lstm_846/lstm_cell_846/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
/sequential_282/lstm_846/lstm_cell_846/Sigmoid_2Sigmoid4sequential_282/lstm_846/lstm_cell_846/split:output:3*
T0*'
_output_shapes
:?????????d?
,sequential_282/lstm_846/lstm_cell_846/Relu_1Relu/sequential_282/lstm_846/lstm_cell_846/add_1:z:0*
T0*'
_output_shapes
:?????????d?
+sequential_282/lstm_846/lstm_cell_846/mul_2Mul3sequential_282/lstm_846/lstm_cell_846/Sigmoid_2:y:0:sequential_282/lstm_846/lstm_cell_846/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
5sequential_282/lstm_846/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
'sequential_282/lstm_846/TensorArrayV2_1TensorListReserve>sequential_282/lstm_846/TensorArrayV2_1/element_shape:output:00sequential_282/lstm_846/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_282/lstm_846/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_282/lstm_846/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_282/lstm_846/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_282/lstm_846/whileWhile3sequential_282/lstm_846/while/loop_counter:output:09sequential_282/lstm_846/while/maximum_iterations:output:0%sequential_282/lstm_846/time:output:00sequential_282/lstm_846/TensorArrayV2_1:handle:0&sequential_282/lstm_846/zeros:output:0(sequential_282/lstm_846/zeros_1:output:00sequential_282/lstm_846/strided_slice_1:output:0Osequential_282/lstm_846/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_282_lstm_846_lstm_cell_846_matmul_readvariableop_resourceFsequential_282_lstm_846_lstm_cell_846_matmul_1_readvariableop_resourceEsequential_282_lstm_846_lstm_cell_846_biasadd_readvariableop_resource*
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
*sequential_282_lstm_846_while_body_5092786*6
cond.R,
*sequential_282_lstm_846_while_cond_5092785*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
Hsequential_282/lstm_846/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
:sequential_282/lstm_846/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_282/lstm_846/while:output:3Qsequential_282/lstm_846/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0?
-sequential_282/lstm_846/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_282/lstm_846/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_282/lstm_846/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_282/lstm_846/strided_slice_3StridedSliceCsequential_282/lstm_846/TensorArrayV2Stack/TensorListStack:tensor:06sequential_282/lstm_846/strided_slice_3/stack:output:08sequential_282/lstm_846/strided_slice_3/stack_1:output:08sequential_282/lstm_846/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask}
(sequential_282/lstm_846/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_282/lstm_846/transpose_1	TransposeCsequential_282/lstm_846/TensorArrayV2Stack/TensorListStack:tensor:01sequential_282/lstm_846/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????ds
sequential_282/lstm_846/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_282/lstm_847/ShapeShape'sequential_282/lstm_846/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_282/lstm_847/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_282/lstm_847/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_282/lstm_847/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_282/lstm_847/strided_sliceStridedSlice&sequential_282/lstm_847/Shape:output:04sequential_282/lstm_847/strided_slice/stack:output:06sequential_282/lstm_847/strided_slice/stack_1:output:06sequential_282/lstm_847/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_282/lstm_847/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
$sequential_282/lstm_847/zeros/packedPack.sequential_282/lstm_847/strided_slice:output:0/sequential_282/lstm_847/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_282/lstm_847/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_282/lstm_847/zerosFill-sequential_282/lstm_847/zeros/packed:output:0,sequential_282/lstm_847/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2j
(sequential_282/lstm_847/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
&sequential_282/lstm_847/zeros_1/packedPack.sequential_282/lstm_847/strided_slice:output:01sequential_282/lstm_847/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_282/lstm_847/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_282/lstm_847/zeros_1Fill/sequential_282/lstm_847/zeros_1/packed:output:0.sequential_282/lstm_847/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2{
&sequential_282/lstm_847/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_282/lstm_847/transpose	Transpose'sequential_282/lstm_846/transpose_1:y:0/sequential_282/lstm_847/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dt
sequential_282/lstm_847/Shape_1Shape%sequential_282/lstm_847/transpose:y:0*
T0*
_output_shapes
:w
-sequential_282/lstm_847/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_282/lstm_847/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_282/lstm_847/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_282/lstm_847/strided_slice_1StridedSlice(sequential_282/lstm_847/Shape_1:output:06sequential_282/lstm_847/strided_slice_1/stack:output:08sequential_282/lstm_847/strided_slice_1/stack_1:output:08sequential_282/lstm_847/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_282/lstm_847/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_282/lstm_847/TensorArrayV2TensorListReserve<sequential_282/lstm_847/TensorArrayV2/element_shape:output:00sequential_282/lstm_847/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_282/lstm_847/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
?sequential_282/lstm_847/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_282/lstm_847/transpose:y:0Vsequential_282/lstm_847/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_282/lstm_847/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_282/lstm_847/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_282/lstm_847/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_282/lstm_847/strided_slice_2StridedSlice%sequential_282/lstm_847/transpose:y:06sequential_282/lstm_847/strided_slice_2/stack:output:08sequential_282/lstm_847/strided_slice_2/stack_1:output:08sequential_282/lstm_847/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
;sequential_282/lstm_847/lstm_cell_847/MatMul/ReadVariableOpReadVariableOpDsequential_282_lstm_847_lstm_cell_847_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
,sequential_282/lstm_847/lstm_cell_847/MatMulMatMul0sequential_282/lstm_847/strided_slice_2:output:0Csequential_282/lstm_847/lstm_cell_847/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_282/lstm_847/lstm_cell_847/MatMul_1/ReadVariableOpReadVariableOpFsequential_282_lstm_847_lstm_cell_847_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
.sequential_282/lstm_847/lstm_cell_847/MatMul_1MatMul&sequential_282/lstm_847/zeros:output:0Esequential_282/lstm_847/lstm_cell_847/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_282/lstm_847/lstm_cell_847/addAddV26sequential_282/lstm_847/lstm_cell_847/MatMul:product:08sequential_282/lstm_847/lstm_cell_847/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_282/lstm_847/lstm_cell_847/BiasAdd/ReadVariableOpReadVariableOpEsequential_282_lstm_847_lstm_cell_847_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_282/lstm_847/lstm_cell_847/BiasAddBiasAdd-sequential_282/lstm_847/lstm_cell_847/add:z:0Dsequential_282/lstm_847/lstm_cell_847/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_282/lstm_847/lstm_cell_847/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_282/lstm_847/lstm_cell_847/splitSplit>sequential_282/lstm_847/lstm_cell_847/split/split_dim:output:06sequential_282/lstm_847/lstm_cell_847/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
-sequential_282/lstm_847/lstm_cell_847/SigmoidSigmoid4sequential_282/lstm_847/lstm_cell_847/split:output:0*
T0*'
_output_shapes
:?????????2?
/sequential_282/lstm_847/lstm_cell_847/Sigmoid_1Sigmoid4sequential_282/lstm_847/lstm_cell_847/split:output:1*
T0*'
_output_shapes
:?????????2?
)sequential_282/lstm_847/lstm_cell_847/mulMul3sequential_282/lstm_847/lstm_cell_847/Sigmoid_1:y:0(sequential_282/lstm_847/zeros_1:output:0*
T0*'
_output_shapes
:?????????2?
*sequential_282/lstm_847/lstm_cell_847/ReluRelu4sequential_282/lstm_847/lstm_cell_847/split:output:2*
T0*'
_output_shapes
:?????????2?
+sequential_282/lstm_847/lstm_cell_847/mul_1Mul1sequential_282/lstm_847/lstm_cell_847/Sigmoid:y:08sequential_282/lstm_847/lstm_cell_847/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
+sequential_282/lstm_847/lstm_cell_847/add_1AddV2-sequential_282/lstm_847/lstm_cell_847/mul:z:0/sequential_282/lstm_847/lstm_cell_847/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
/sequential_282/lstm_847/lstm_cell_847/Sigmoid_2Sigmoid4sequential_282/lstm_847/lstm_cell_847/split:output:3*
T0*'
_output_shapes
:?????????2?
,sequential_282/lstm_847/lstm_cell_847/Relu_1Relu/sequential_282/lstm_847/lstm_cell_847/add_1:z:0*
T0*'
_output_shapes
:?????????2?
+sequential_282/lstm_847/lstm_cell_847/mul_2Mul3sequential_282/lstm_847/lstm_cell_847/Sigmoid_2:y:0:sequential_282/lstm_847/lstm_cell_847/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
5sequential_282/lstm_847/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
'sequential_282/lstm_847/TensorArrayV2_1TensorListReserve>sequential_282/lstm_847/TensorArrayV2_1/element_shape:output:00sequential_282/lstm_847/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_282/lstm_847/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_282/lstm_847/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_282/lstm_847/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_282/lstm_847/whileWhile3sequential_282/lstm_847/while/loop_counter:output:09sequential_282/lstm_847/while/maximum_iterations:output:0%sequential_282/lstm_847/time:output:00sequential_282/lstm_847/TensorArrayV2_1:handle:0&sequential_282/lstm_847/zeros:output:0(sequential_282/lstm_847/zeros_1:output:00sequential_282/lstm_847/strided_slice_1:output:0Osequential_282/lstm_847/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_282_lstm_847_lstm_cell_847_matmul_readvariableop_resourceFsequential_282_lstm_847_lstm_cell_847_matmul_1_readvariableop_resourceEsequential_282_lstm_847_lstm_cell_847_biasadd_readvariableop_resource*
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
*sequential_282_lstm_847_while_body_5092925*6
cond.R,
*sequential_282_lstm_847_while_cond_5092924*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
Hsequential_282/lstm_847/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
:sequential_282/lstm_847/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_282/lstm_847/while:output:3Qsequential_282/lstm_847/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0?
-sequential_282/lstm_847/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_282/lstm_847/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_282/lstm_847/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_282/lstm_847/strided_slice_3StridedSliceCsequential_282/lstm_847/TensorArrayV2Stack/TensorListStack:tensor:06sequential_282/lstm_847/strided_slice_3/stack:output:08sequential_282/lstm_847/strided_slice_3/stack_1:output:08sequential_282/lstm_847/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask}
(sequential_282/lstm_847/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_282/lstm_847/transpose_1	TransposeCsequential_282/lstm_847/TensorArrayV2Stack/TensorListStack:tensor:01sequential_282/lstm_847/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2s
sequential_282/lstm_847/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_282/lstm_848/ShapeShape'sequential_282/lstm_847/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_282/lstm_848/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_282/lstm_848/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_282/lstm_848/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_282/lstm_848/strided_sliceStridedSlice&sequential_282/lstm_848/Shape:output:04sequential_282/lstm_848/strided_slice/stack:output:06sequential_282/lstm_848/strided_slice/stack_1:output:06sequential_282/lstm_848/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_282/lstm_848/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
$sequential_282/lstm_848/zeros/packedPack.sequential_282/lstm_848/strided_slice:output:0/sequential_282/lstm_848/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_282/lstm_848/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_282/lstm_848/zerosFill-sequential_282/lstm_848/zeros/packed:output:0,sequential_282/lstm_848/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
j
(sequential_282/lstm_848/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
&sequential_282/lstm_848/zeros_1/packedPack.sequential_282/lstm_848/strided_slice:output:01sequential_282/lstm_848/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_282/lstm_848/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_282/lstm_848/zeros_1Fill/sequential_282/lstm_848/zeros_1/packed:output:0.sequential_282/lstm_848/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
{
&sequential_282/lstm_848/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_282/lstm_848/transpose	Transpose'sequential_282/lstm_847/transpose_1:y:0/sequential_282/lstm_848/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2t
sequential_282/lstm_848/Shape_1Shape%sequential_282/lstm_848/transpose:y:0*
T0*
_output_shapes
:w
-sequential_282/lstm_848/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_282/lstm_848/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_282/lstm_848/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_282/lstm_848/strided_slice_1StridedSlice(sequential_282/lstm_848/Shape_1:output:06sequential_282/lstm_848/strided_slice_1/stack:output:08sequential_282/lstm_848/strided_slice_1/stack_1:output:08sequential_282/lstm_848/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_282/lstm_848/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_282/lstm_848/TensorArrayV2TensorListReserve<sequential_282/lstm_848/TensorArrayV2/element_shape:output:00sequential_282/lstm_848/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_282/lstm_848/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
?sequential_282/lstm_848/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_282/lstm_848/transpose:y:0Vsequential_282/lstm_848/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_282/lstm_848/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_282/lstm_848/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_282/lstm_848/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_282/lstm_848/strided_slice_2StridedSlice%sequential_282/lstm_848/transpose:y:06sequential_282/lstm_848/strided_slice_2/stack:output:08sequential_282/lstm_848/strided_slice_2/stack_1:output:08sequential_282/lstm_848/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
;sequential_282/lstm_848/lstm_cell_848/MatMul/ReadVariableOpReadVariableOpDsequential_282_lstm_848_lstm_cell_848_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
,sequential_282/lstm_848/lstm_cell_848/MatMulMatMul0sequential_282/lstm_848/strided_slice_2:output:0Csequential_282/lstm_848/lstm_cell_848/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
=sequential_282/lstm_848/lstm_cell_848/MatMul_1/ReadVariableOpReadVariableOpFsequential_282_lstm_848_lstm_cell_848_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
.sequential_282/lstm_848/lstm_cell_848/MatMul_1MatMul&sequential_282/lstm_848/zeros:output:0Esequential_282/lstm_848/lstm_cell_848/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
)sequential_282/lstm_848/lstm_cell_848/addAddV26sequential_282/lstm_848/lstm_cell_848/MatMul:product:08sequential_282/lstm_848/lstm_cell_848/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
<sequential_282/lstm_848/lstm_cell_848/BiasAdd/ReadVariableOpReadVariableOpEsequential_282_lstm_848_lstm_cell_848_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
-sequential_282/lstm_848/lstm_cell_848/BiasAddBiasAdd-sequential_282/lstm_848/lstm_cell_848/add:z:0Dsequential_282/lstm_848/lstm_cell_848/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(w
5sequential_282/lstm_848/lstm_cell_848/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_282/lstm_848/lstm_cell_848/splitSplit>sequential_282/lstm_848/lstm_cell_848/split/split_dim:output:06sequential_282/lstm_848/lstm_cell_848/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
-sequential_282/lstm_848/lstm_cell_848/SigmoidSigmoid4sequential_282/lstm_848/lstm_cell_848/split:output:0*
T0*'
_output_shapes
:?????????
?
/sequential_282/lstm_848/lstm_cell_848/Sigmoid_1Sigmoid4sequential_282/lstm_848/lstm_cell_848/split:output:1*
T0*'
_output_shapes
:?????????
?
)sequential_282/lstm_848/lstm_cell_848/mulMul3sequential_282/lstm_848/lstm_cell_848/Sigmoid_1:y:0(sequential_282/lstm_848/zeros_1:output:0*
T0*'
_output_shapes
:?????????
?
*sequential_282/lstm_848/lstm_cell_848/ReluRelu4sequential_282/lstm_848/lstm_cell_848/split:output:2*
T0*'
_output_shapes
:?????????
?
+sequential_282/lstm_848/lstm_cell_848/mul_1Mul1sequential_282/lstm_848/lstm_cell_848/Sigmoid:y:08sequential_282/lstm_848/lstm_cell_848/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
+sequential_282/lstm_848/lstm_cell_848/add_1AddV2-sequential_282/lstm_848/lstm_cell_848/mul:z:0/sequential_282/lstm_848/lstm_cell_848/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
/sequential_282/lstm_848/lstm_cell_848/Sigmoid_2Sigmoid4sequential_282/lstm_848/lstm_cell_848/split:output:3*
T0*'
_output_shapes
:?????????
?
,sequential_282/lstm_848/lstm_cell_848/Relu_1Relu/sequential_282/lstm_848/lstm_cell_848/add_1:z:0*
T0*'
_output_shapes
:?????????
?
+sequential_282/lstm_848/lstm_cell_848/mul_2Mul3sequential_282/lstm_848/lstm_cell_848/Sigmoid_2:y:0:sequential_282/lstm_848/lstm_cell_848/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
5sequential_282/lstm_848/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
'sequential_282/lstm_848/TensorArrayV2_1TensorListReserve>sequential_282/lstm_848/TensorArrayV2_1/element_shape:output:00sequential_282/lstm_848/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_282/lstm_848/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_282/lstm_848/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_282/lstm_848/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_282/lstm_848/whileWhile3sequential_282/lstm_848/while/loop_counter:output:09sequential_282/lstm_848/while/maximum_iterations:output:0%sequential_282/lstm_848/time:output:00sequential_282/lstm_848/TensorArrayV2_1:handle:0&sequential_282/lstm_848/zeros:output:0(sequential_282/lstm_848/zeros_1:output:00sequential_282/lstm_848/strided_slice_1:output:0Osequential_282/lstm_848/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_282_lstm_848_lstm_cell_848_matmul_readvariableop_resourceFsequential_282_lstm_848_lstm_cell_848_matmul_1_readvariableop_resourceEsequential_282_lstm_848_lstm_cell_848_biasadd_readvariableop_resource*
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
*sequential_282_lstm_848_while_body_5093064*6
cond.R,
*sequential_282_lstm_848_while_cond_5093063*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
Hsequential_282/lstm_848/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
:sequential_282/lstm_848/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_282/lstm_848/while:output:3Qsequential_282/lstm_848/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0?
-sequential_282/lstm_848/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_282/lstm_848/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_282/lstm_848/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_282/lstm_848/strided_slice_3StridedSliceCsequential_282/lstm_848/TensorArrayV2Stack/TensorListStack:tensor:06sequential_282/lstm_848/strided_slice_3/stack:output:08sequential_282/lstm_848/strided_slice_3/stack_1:output:08sequential_282/lstm_848/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_mask}
(sequential_282/lstm_848/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_282/lstm_848/transpose_1	TransposeCsequential_282/lstm_848/TensorArrayV2Stack/TensorListStack:tensor:01sequential_282/lstm_848/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
s
sequential_282/lstm_848/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
.sequential_282/dense_282/MatMul/ReadVariableOpReadVariableOp7sequential_282_dense_282_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
sequential_282/dense_282/MatMulMatMul0sequential_282/lstm_848/strided_slice_3:output:06sequential_282/dense_282/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
/sequential_282/dense_282/BiasAdd/ReadVariableOpReadVariableOp8sequential_282_dense_282_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
 sequential_282/dense_282/BiasAddBiasAdd)sequential_282/dense_282/MatMul:product:07sequential_282/dense_282/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x
IdentityIdentity)sequential_282/dense_282/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp0^sequential_282/dense_282/BiasAdd/ReadVariableOp/^sequential_282/dense_282/MatMul/ReadVariableOp=^sequential_282/lstm_846/lstm_cell_846/BiasAdd/ReadVariableOp<^sequential_282/lstm_846/lstm_cell_846/MatMul/ReadVariableOp>^sequential_282/lstm_846/lstm_cell_846/MatMul_1/ReadVariableOp^sequential_282/lstm_846/while=^sequential_282/lstm_847/lstm_cell_847/BiasAdd/ReadVariableOp<^sequential_282/lstm_847/lstm_cell_847/MatMul/ReadVariableOp>^sequential_282/lstm_847/lstm_cell_847/MatMul_1/ReadVariableOp^sequential_282/lstm_847/while=^sequential_282/lstm_848/lstm_cell_848/BiasAdd/ReadVariableOp<^sequential_282/lstm_848/lstm_cell_848/MatMul/ReadVariableOp>^sequential_282/lstm_848/lstm_cell_848/MatMul_1/ReadVariableOp^sequential_282/lstm_848/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2b
/sequential_282/dense_282/BiasAdd/ReadVariableOp/sequential_282/dense_282/BiasAdd/ReadVariableOp2`
.sequential_282/dense_282/MatMul/ReadVariableOp.sequential_282/dense_282/MatMul/ReadVariableOp2|
<sequential_282/lstm_846/lstm_cell_846/BiasAdd/ReadVariableOp<sequential_282/lstm_846/lstm_cell_846/BiasAdd/ReadVariableOp2z
;sequential_282/lstm_846/lstm_cell_846/MatMul/ReadVariableOp;sequential_282/lstm_846/lstm_cell_846/MatMul/ReadVariableOp2~
=sequential_282/lstm_846/lstm_cell_846/MatMul_1/ReadVariableOp=sequential_282/lstm_846/lstm_cell_846/MatMul_1/ReadVariableOp2>
sequential_282/lstm_846/whilesequential_282/lstm_846/while2|
<sequential_282/lstm_847/lstm_cell_847/BiasAdd/ReadVariableOp<sequential_282/lstm_847/lstm_cell_847/BiasAdd/ReadVariableOp2z
;sequential_282/lstm_847/lstm_cell_847/MatMul/ReadVariableOp;sequential_282/lstm_847/lstm_cell_847/MatMul/ReadVariableOp2~
=sequential_282/lstm_847/lstm_cell_847/MatMul_1/ReadVariableOp=sequential_282/lstm_847/lstm_cell_847/MatMul_1/ReadVariableOp2>
sequential_282/lstm_847/whilesequential_282/lstm_847/while2|
<sequential_282/lstm_848/lstm_cell_848/BiasAdd/ReadVariableOp<sequential_282/lstm_848/lstm_cell_848/BiasAdd/ReadVariableOp2z
;sequential_282/lstm_848/lstm_cell_848/MatMul/ReadVariableOp;sequential_282/lstm_848/lstm_cell_848/MatMul/ReadVariableOp2~
=sequential_282/lstm_848/lstm_cell_848/MatMul_1/ReadVariableOp=sequential_282/lstm_848/lstm_cell_848/MatMul_1/ReadVariableOp2>
sequential_282/lstm_848/whilesequential_282/lstm_848/while:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_846_input
?

?
0__inference_sequential_282_layer_call_fn_5095441

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
K__inference_sequential_282_layer_call_and_return_conditional_losses_5094678o
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
?
K__inference_sequential_282_layer_call_and_return_conditional_losses_5095267

inputs#
lstm_846_5095240:	?#
lstm_846_5095242:	d?
lstm_846_5095244:	?#
lstm_847_5095247:	d?#
lstm_847_5095249:	2?
lstm_847_5095251:	?"
lstm_848_5095254:2("
lstm_848_5095256:
(
lstm_848_5095258:(#
dense_282_5095261:

dense_282_5095263:
identity??!dense_282/StatefulPartitionedCall? lstm_846/StatefulPartitionedCall? lstm_847/StatefulPartitionedCall? lstm_848/StatefulPartitionedCall?
 lstm_846/StatefulPartitionedCallStatefulPartitionedCallinputslstm_846_5095240lstm_846_5095242lstm_846_5095244*
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
E__inference_lstm_846_layer_call_and_return_conditional_losses_5095199?
 lstm_847/StatefulPartitionedCallStatefulPartitionedCall)lstm_846/StatefulPartitionedCall:output:0lstm_847_5095247lstm_847_5095249lstm_847_5095251*
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
E__inference_lstm_847_layer_call_and_return_conditional_losses_5095034?
 lstm_848/StatefulPartitionedCallStatefulPartitionedCall)lstm_847/StatefulPartitionedCall:output:0lstm_848_5095254lstm_848_5095256lstm_848_5095258*
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
E__inference_lstm_848_layer_call_and_return_conditional_losses_5094869?
!dense_282/StatefulPartitionedCallStatefulPartitionedCall)lstm_848/StatefulPartitionedCall:output:0dense_282_5095261dense_282_5095263*
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
F__inference_dense_282_layer_call_and_return_conditional_losses_5094671y
IdentityIdentity*dense_282/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_282/StatefulPartitionedCall!^lstm_846/StatefulPartitionedCall!^lstm_847/StatefulPartitionedCall!^lstm_848/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_282/StatefulPartitionedCall!dense_282/StatefulPartitionedCall2D
 lstm_846/StatefulPartitionedCall lstm_846/StatefulPartitionedCall2D
 lstm_847/StatefulPartitionedCall lstm_847/StatefulPartitionedCall2D
 lstm_848/StatefulPartitionedCall lstm_848/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?J
?
E__inference_lstm_846_layer_call_and_return_conditional_losses_5094353

inputs?
,lstm_cell_846_matmul_readvariableop_resource:	?A
.lstm_cell_846_matmul_1_readvariableop_resource:	d?<
-lstm_cell_846_biasadd_readvariableop_resource:	?
identity??$lstm_cell_846/BiasAdd/ReadVariableOp?#lstm_cell_846/MatMul/ReadVariableOp?%lstm_cell_846/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_846/MatMul/ReadVariableOpReadVariableOp,lstm_cell_846_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_846/MatMulMatMulstrided_slice_2:output:0+lstm_cell_846/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_846/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_846_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_846/MatMul_1MatMulzeros:output:0-lstm_cell_846/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_846/addAddV2lstm_cell_846/MatMul:product:0 lstm_cell_846/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_846/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_846_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_846/BiasAddBiasAddlstm_cell_846/add:z:0,lstm_cell_846/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_846/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_846/splitSplit&lstm_cell_846/split/split_dim:output:0lstm_cell_846/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_846/SigmoidSigmoidlstm_cell_846/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_846/Sigmoid_1Sigmoidlstm_cell_846/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_846/mulMullstm_cell_846/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_846/ReluRelulstm_cell_846/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_846/mul_1Mullstm_cell_846/Sigmoid:y:0 lstm_cell_846/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_846/add_1AddV2lstm_cell_846/mul:z:0lstm_cell_846/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_846/Sigmoid_2Sigmoidlstm_cell_846/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_846/Relu_1Relulstm_cell_846/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_846/mul_2Mullstm_cell_846/Sigmoid_2:y:0"lstm_cell_846/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_846_matmul_readvariableop_resource.lstm_cell_846_matmul_1_readvariableop_resource-lstm_cell_846_biasadd_readvariableop_resource*
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
while_body_5094269*
condR
while_cond_5094268*K
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
NoOpNoOp%^lstm_cell_846/BiasAdd/ReadVariableOp$^lstm_cell_846/MatMul/ReadVariableOp&^lstm_cell_846/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_846/BiasAdd/ReadVariableOp$lstm_cell_846/BiasAdd/ReadVariableOp2J
#lstm_cell_846/MatMul/ReadVariableOp#lstm_cell_846/MatMul/ReadVariableOp2N
%lstm_cell_846/MatMul_1/ReadVariableOp%lstm_cell_846/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
/__inference_lstm_cell_847_layer_call_fn_5098304

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
J__inference_lstm_cell_847_layer_call_and_return_conditional_losses_5093571o
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
J__inference_lstm_cell_848_layer_call_and_return_conditional_losses_5098451

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
E__inference_lstm_848_layer_call_and_return_conditional_losses_5094869

inputs>
,lstm_cell_848_matmul_readvariableop_resource:2(@
.lstm_cell_848_matmul_1_readvariableop_resource:
(;
-lstm_cell_848_biasadd_readvariableop_resource:(
identity??$lstm_cell_848/BiasAdd/ReadVariableOp?#lstm_cell_848/MatMul/ReadVariableOp?%lstm_cell_848/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_848/MatMul/ReadVariableOpReadVariableOp,lstm_cell_848_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_848/MatMulMatMulstrided_slice_2:output:0+lstm_cell_848/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_848/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_848_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_848/MatMul_1MatMulzeros:output:0-lstm_cell_848/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_848/addAddV2lstm_cell_848/MatMul:product:0 lstm_cell_848/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_848/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_848_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_848/BiasAddBiasAddlstm_cell_848/add:z:0,lstm_cell_848/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_848/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_848/splitSplit&lstm_cell_848/split/split_dim:output:0lstm_cell_848/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_848/SigmoidSigmoidlstm_cell_848/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_848/Sigmoid_1Sigmoidlstm_cell_848/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_848/mulMullstm_cell_848/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_848/ReluRelulstm_cell_848/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_848/mul_1Mullstm_cell_848/Sigmoid:y:0 lstm_cell_848/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_848/add_1AddV2lstm_cell_848/mul:z:0lstm_cell_848/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_848/Sigmoid_2Sigmoidlstm_cell_848/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_848/Relu_1Relulstm_cell_848/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_848/mul_2Mullstm_cell_848/Sigmoid_2:y:0"lstm_cell_848/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_848_matmul_readvariableop_resource.lstm_cell_848_matmul_1_readvariableop_resource-lstm_cell_848_biasadd_readvariableop_resource*
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
while_body_5094785*
condR
while_cond_5094784*K
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
NoOpNoOp%^lstm_cell_848/BiasAdd/ReadVariableOp$^lstm_cell_848/MatMul/ReadVariableOp&^lstm_cell_848/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_848/BiasAdd/ReadVariableOp$lstm_cell_848/BiasAdd/ReadVariableOp2J
#lstm_cell_848/MatMul/ReadVariableOp#lstm_cell_848/MatMul/ReadVariableOp2N
%lstm_cell_848/MatMul_1/ReadVariableOp%lstm_cell_848/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
??
?
K__inference_sequential_282_layer_call_and_return_conditional_losses_5095895

inputsH
5lstm_846_lstm_cell_846_matmul_readvariableop_resource:	?J
7lstm_846_lstm_cell_846_matmul_1_readvariableop_resource:	d?E
6lstm_846_lstm_cell_846_biasadd_readvariableop_resource:	?H
5lstm_847_lstm_cell_847_matmul_readvariableop_resource:	d?J
7lstm_847_lstm_cell_847_matmul_1_readvariableop_resource:	2?E
6lstm_847_lstm_cell_847_biasadd_readvariableop_resource:	?G
5lstm_848_lstm_cell_848_matmul_readvariableop_resource:2(I
7lstm_848_lstm_cell_848_matmul_1_readvariableop_resource:
(D
6lstm_848_lstm_cell_848_biasadd_readvariableop_resource:(:
(dense_282_matmul_readvariableop_resource:
7
)dense_282_biasadd_readvariableop_resource:
identity?? dense_282/BiasAdd/ReadVariableOp?dense_282/MatMul/ReadVariableOp?-lstm_846/lstm_cell_846/BiasAdd/ReadVariableOp?,lstm_846/lstm_cell_846/MatMul/ReadVariableOp?.lstm_846/lstm_cell_846/MatMul_1/ReadVariableOp?lstm_846/while?-lstm_847/lstm_cell_847/BiasAdd/ReadVariableOp?,lstm_847/lstm_cell_847/MatMul/ReadVariableOp?.lstm_847/lstm_cell_847/MatMul_1/ReadVariableOp?lstm_847/while?-lstm_848/lstm_cell_848/BiasAdd/ReadVariableOp?,lstm_848/lstm_cell_848/MatMul/ReadVariableOp?.lstm_848/lstm_cell_848/MatMul_1/ReadVariableOp?lstm_848/whileD
lstm_846/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_846/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_846/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_846/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_846/strided_sliceStridedSlicelstm_846/Shape:output:0%lstm_846/strided_slice/stack:output:0'lstm_846/strided_slice/stack_1:output:0'lstm_846/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_846/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_846/zeros/packedPacklstm_846/strided_slice:output:0 lstm_846/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_846/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_846/zerosFilllstm_846/zeros/packed:output:0lstm_846/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_846/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_846/zeros_1/packedPacklstm_846/strided_slice:output:0"lstm_846/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_846/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_846/zeros_1Fill lstm_846/zeros_1/packed:output:0lstm_846/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_846/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_846/transpose	Transposeinputs lstm_846/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_846/Shape_1Shapelstm_846/transpose:y:0*
T0*
_output_shapes
:h
lstm_846/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_846/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_846/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_846/strided_slice_1StridedSlicelstm_846/Shape_1:output:0'lstm_846/strided_slice_1/stack:output:0)lstm_846/strided_slice_1/stack_1:output:0)lstm_846/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_846/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_846/TensorArrayV2TensorListReserve-lstm_846/TensorArrayV2/element_shape:output:0!lstm_846/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_846/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_846/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_846/transpose:y:0Glstm_846/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_846/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_846/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_846/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_846/strided_slice_2StridedSlicelstm_846/transpose:y:0'lstm_846/strided_slice_2/stack:output:0)lstm_846/strided_slice_2/stack_1:output:0)lstm_846/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_846/lstm_cell_846/MatMul/ReadVariableOpReadVariableOp5lstm_846_lstm_cell_846_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_846/lstm_cell_846/MatMulMatMul!lstm_846/strided_slice_2:output:04lstm_846/lstm_cell_846/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_846/lstm_cell_846/MatMul_1/ReadVariableOpReadVariableOp7lstm_846_lstm_cell_846_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_846/lstm_cell_846/MatMul_1MatMullstm_846/zeros:output:06lstm_846/lstm_cell_846/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_846/lstm_cell_846/addAddV2'lstm_846/lstm_cell_846/MatMul:product:0)lstm_846/lstm_cell_846/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_846/lstm_cell_846/BiasAdd/ReadVariableOpReadVariableOp6lstm_846_lstm_cell_846_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_846/lstm_cell_846/BiasAddBiasAddlstm_846/lstm_cell_846/add:z:05lstm_846/lstm_cell_846/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_846/lstm_cell_846/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_846/lstm_cell_846/splitSplit/lstm_846/lstm_cell_846/split/split_dim:output:0'lstm_846/lstm_cell_846/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_846/lstm_cell_846/SigmoidSigmoid%lstm_846/lstm_cell_846/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_846/lstm_cell_846/Sigmoid_1Sigmoid%lstm_846/lstm_cell_846/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_846/lstm_cell_846/mulMul$lstm_846/lstm_cell_846/Sigmoid_1:y:0lstm_846/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_846/lstm_cell_846/ReluRelu%lstm_846/lstm_cell_846/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_846/lstm_cell_846/mul_1Mul"lstm_846/lstm_cell_846/Sigmoid:y:0)lstm_846/lstm_cell_846/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_846/lstm_cell_846/add_1AddV2lstm_846/lstm_cell_846/mul:z:0 lstm_846/lstm_cell_846/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_846/lstm_cell_846/Sigmoid_2Sigmoid%lstm_846/lstm_cell_846/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_846/lstm_cell_846/Relu_1Relu lstm_846/lstm_cell_846/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_846/lstm_cell_846/mul_2Mul$lstm_846/lstm_cell_846/Sigmoid_2:y:0+lstm_846/lstm_cell_846/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_846/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_846/TensorArrayV2_1TensorListReserve/lstm_846/TensorArrayV2_1/element_shape:output:0!lstm_846/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_846/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_846/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_846/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_846/whileWhile$lstm_846/while/loop_counter:output:0*lstm_846/while/maximum_iterations:output:0lstm_846/time:output:0!lstm_846/TensorArrayV2_1:handle:0lstm_846/zeros:output:0lstm_846/zeros_1:output:0!lstm_846/strided_slice_1:output:0@lstm_846/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_846_lstm_cell_846_matmul_readvariableop_resource7lstm_846_lstm_cell_846_matmul_1_readvariableop_resource6lstm_846_lstm_cell_846_biasadd_readvariableop_resource*
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
lstm_846_while_body_5095527*'
condR
lstm_846_while_cond_5095526*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_846/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_846/TensorArrayV2Stack/TensorListStackTensorListStacklstm_846/while:output:3Blstm_846/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_846/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_846/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_846/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_846/strided_slice_3StridedSlice4lstm_846/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_846/strided_slice_3/stack:output:0)lstm_846/strided_slice_3/stack_1:output:0)lstm_846/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_846/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_846/transpose_1	Transpose4lstm_846/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_846/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_846/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_847/ShapeShapelstm_846/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_847/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_847/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_847/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_847/strided_sliceStridedSlicelstm_847/Shape:output:0%lstm_847/strided_slice/stack:output:0'lstm_847/strided_slice/stack_1:output:0'lstm_847/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_847/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_847/zeros/packedPacklstm_847/strided_slice:output:0 lstm_847/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_847/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_847/zerosFilllstm_847/zeros/packed:output:0lstm_847/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_847/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_847/zeros_1/packedPacklstm_847/strided_slice:output:0"lstm_847/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_847/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_847/zeros_1Fill lstm_847/zeros_1/packed:output:0lstm_847/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_847/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_847/transpose	Transposelstm_846/transpose_1:y:0 lstm_847/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_847/Shape_1Shapelstm_847/transpose:y:0*
T0*
_output_shapes
:h
lstm_847/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_847/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_847/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_847/strided_slice_1StridedSlicelstm_847/Shape_1:output:0'lstm_847/strided_slice_1/stack:output:0)lstm_847/strided_slice_1/stack_1:output:0)lstm_847/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_847/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_847/TensorArrayV2TensorListReserve-lstm_847/TensorArrayV2/element_shape:output:0!lstm_847/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_847/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_847/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_847/transpose:y:0Glstm_847/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_847/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_847/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_847/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_847/strided_slice_2StridedSlicelstm_847/transpose:y:0'lstm_847/strided_slice_2/stack:output:0)lstm_847/strided_slice_2/stack_1:output:0)lstm_847/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_847/lstm_cell_847/MatMul/ReadVariableOpReadVariableOp5lstm_847_lstm_cell_847_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_847/lstm_cell_847/MatMulMatMul!lstm_847/strided_slice_2:output:04lstm_847/lstm_cell_847/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_847/lstm_cell_847/MatMul_1/ReadVariableOpReadVariableOp7lstm_847_lstm_cell_847_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_847/lstm_cell_847/MatMul_1MatMullstm_847/zeros:output:06lstm_847/lstm_cell_847/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_847/lstm_cell_847/addAddV2'lstm_847/lstm_cell_847/MatMul:product:0)lstm_847/lstm_cell_847/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_847/lstm_cell_847/BiasAdd/ReadVariableOpReadVariableOp6lstm_847_lstm_cell_847_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_847/lstm_cell_847/BiasAddBiasAddlstm_847/lstm_cell_847/add:z:05lstm_847/lstm_cell_847/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_847/lstm_cell_847/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_847/lstm_cell_847/splitSplit/lstm_847/lstm_cell_847/split/split_dim:output:0'lstm_847/lstm_cell_847/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_847/lstm_cell_847/SigmoidSigmoid%lstm_847/lstm_cell_847/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_847/lstm_cell_847/Sigmoid_1Sigmoid%lstm_847/lstm_cell_847/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_847/lstm_cell_847/mulMul$lstm_847/lstm_cell_847/Sigmoid_1:y:0lstm_847/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_847/lstm_cell_847/ReluRelu%lstm_847/lstm_cell_847/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_847/lstm_cell_847/mul_1Mul"lstm_847/lstm_cell_847/Sigmoid:y:0)lstm_847/lstm_cell_847/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_847/lstm_cell_847/add_1AddV2lstm_847/lstm_cell_847/mul:z:0 lstm_847/lstm_cell_847/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_847/lstm_cell_847/Sigmoid_2Sigmoid%lstm_847/lstm_cell_847/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_847/lstm_cell_847/Relu_1Relu lstm_847/lstm_cell_847/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_847/lstm_cell_847/mul_2Mul$lstm_847/lstm_cell_847/Sigmoid_2:y:0+lstm_847/lstm_cell_847/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_847/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_847/TensorArrayV2_1TensorListReserve/lstm_847/TensorArrayV2_1/element_shape:output:0!lstm_847/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_847/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_847/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_847/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_847/whileWhile$lstm_847/while/loop_counter:output:0*lstm_847/while/maximum_iterations:output:0lstm_847/time:output:0!lstm_847/TensorArrayV2_1:handle:0lstm_847/zeros:output:0lstm_847/zeros_1:output:0!lstm_847/strided_slice_1:output:0@lstm_847/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_847_lstm_cell_847_matmul_readvariableop_resource7lstm_847_lstm_cell_847_matmul_1_readvariableop_resource6lstm_847_lstm_cell_847_biasadd_readvariableop_resource*
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
lstm_847_while_body_5095666*'
condR
lstm_847_while_cond_5095665*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_847/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_847/TensorArrayV2Stack/TensorListStackTensorListStacklstm_847/while:output:3Blstm_847/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_847/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_847/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_847/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_847/strided_slice_3StridedSlice4lstm_847/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_847/strided_slice_3/stack:output:0)lstm_847/strided_slice_3/stack_1:output:0)lstm_847/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_847/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_847/transpose_1	Transpose4lstm_847/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_847/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_847/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_848/ShapeShapelstm_847/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_848/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_848/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_848/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_848/strided_sliceStridedSlicelstm_848/Shape:output:0%lstm_848/strided_slice/stack:output:0'lstm_848/strided_slice/stack_1:output:0'lstm_848/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_848/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_848/zeros/packedPacklstm_848/strided_slice:output:0 lstm_848/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_848/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_848/zerosFilllstm_848/zeros/packed:output:0lstm_848/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_848/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_848/zeros_1/packedPacklstm_848/strided_slice:output:0"lstm_848/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_848/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_848/zeros_1Fill lstm_848/zeros_1/packed:output:0lstm_848/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_848/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_848/transpose	Transposelstm_847/transpose_1:y:0 lstm_848/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_848/Shape_1Shapelstm_848/transpose:y:0*
T0*
_output_shapes
:h
lstm_848/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_848/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_848/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_848/strided_slice_1StridedSlicelstm_848/Shape_1:output:0'lstm_848/strided_slice_1/stack:output:0)lstm_848/strided_slice_1/stack_1:output:0)lstm_848/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_848/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_848/TensorArrayV2TensorListReserve-lstm_848/TensorArrayV2/element_shape:output:0!lstm_848/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_848/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_848/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_848/transpose:y:0Glstm_848/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_848/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_848/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_848/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_848/strided_slice_2StridedSlicelstm_848/transpose:y:0'lstm_848/strided_slice_2/stack:output:0)lstm_848/strided_slice_2/stack_1:output:0)lstm_848/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_848/lstm_cell_848/MatMul/ReadVariableOpReadVariableOp5lstm_848_lstm_cell_848_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_848/lstm_cell_848/MatMulMatMul!lstm_848/strided_slice_2:output:04lstm_848/lstm_cell_848/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_848/lstm_cell_848/MatMul_1/ReadVariableOpReadVariableOp7lstm_848_lstm_cell_848_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_848/lstm_cell_848/MatMul_1MatMullstm_848/zeros:output:06lstm_848/lstm_cell_848/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_848/lstm_cell_848/addAddV2'lstm_848/lstm_cell_848/MatMul:product:0)lstm_848/lstm_cell_848/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_848/lstm_cell_848/BiasAdd/ReadVariableOpReadVariableOp6lstm_848_lstm_cell_848_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_848/lstm_cell_848/BiasAddBiasAddlstm_848/lstm_cell_848/add:z:05lstm_848/lstm_cell_848/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_848/lstm_cell_848/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_848/lstm_cell_848/splitSplit/lstm_848/lstm_cell_848/split/split_dim:output:0'lstm_848/lstm_cell_848/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_848/lstm_cell_848/SigmoidSigmoid%lstm_848/lstm_cell_848/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_848/lstm_cell_848/Sigmoid_1Sigmoid%lstm_848/lstm_cell_848/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_848/lstm_cell_848/mulMul$lstm_848/lstm_cell_848/Sigmoid_1:y:0lstm_848/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_848/lstm_cell_848/ReluRelu%lstm_848/lstm_cell_848/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_848/lstm_cell_848/mul_1Mul"lstm_848/lstm_cell_848/Sigmoid:y:0)lstm_848/lstm_cell_848/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_848/lstm_cell_848/add_1AddV2lstm_848/lstm_cell_848/mul:z:0 lstm_848/lstm_cell_848/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_848/lstm_cell_848/Sigmoid_2Sigmoid%lstm_848/lstm_cell_848/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_848/lstm_cell_848/Relu_1Relu lstm_848/lstm_cell_848/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_848/lstm_cell_848/mul_2Mul$lstm_848/lstm_cell_848/Sigmoid_2:y:0+lstm_848/lstm_cell_848/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_848/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_848/TensorArrayV2_1TensorListReserve/lstm_848/TensorArrayV2_1/element_shape:output:0!lstm_848/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_848/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_848/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_848/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_848/whileWhile$lstm_848/while/loop_counter:output:0*lstm_848/while/maximum_iterations:output:0lstm_848/time:output:0!lstm_848/TensorArrayV2_1:handle:0lstm_848/zeros:output:0lstm_848/zeros_1:output:0!lstm_848/strided_slice_1:output:0@lstm_848/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_848_lstm_cell_848_matmul_readvariableop_resource7lstm_848_lstm_cell_848_matmul_1_readvariableop_resource6lstm_848_lstm_cell_848_biasadd_readvariableop_resource*
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
lstm_848_while_body_5095805*'
condR
lstm_848_while_cond_5095804*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_848/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_848/TensorArrayV2Stack/TensorListStackTensorListStacklstm_848/while:output:3Blstm_848/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_848/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_848/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_848/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_848/strided_slice_3StridedSlice4lstm_848/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_848/strided_slice_3/stack:output:0)lstm_848/strided_slice_3/stack_1:output:0)lstm_848/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_848/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_848/transpose_1	Transpose4lstm_848/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_848/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_848/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_282/MatMul/ReadVariableOpReadVariableOp(dense_282_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_282/MatMulMatMul!lstm_848/strided_slice_3:output:0'dense_282/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_282/BiasAdd/ReadVariableOpReadVariableOp)dense_282_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_282/BiasAddBiasAdddense_282/MatMul:product:0(dense_282/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_282/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_282/BiasAdd/ReadVariableOp ^dense_282/MatMul/ReadVariableOp.^lstm_846/lstm_cell_846/BiasAdd/ReadVariableOp-^lstm_846/lstm_cell_846/MatMul/ReadVariableOp/^lstm_846/lstm_cell_846/MatMul_1/ReadVariableOp^lstm_846/while.^lstm_847/lstm_cell_847/BiasAdd/ReadVariableOp-^lstm_847/lstm_cell_847/MatMul/ReadVariableOp/^lstm_847/lstm_cell_847/MatMul_1/ReadVariableOp^lstm_847/while.^lstm_848/lstm_cell_848/BiasAdd/ReadVariableOp-^lstm_848/lstm_cell_848/MatMul/ReadVariableOp/^lstm_848/lstm_cell_848/MatMul_1/ReadVariableOp^lstm_848/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_282/BiasAdd/ReadVariableOp dense_282/BiasAdd/ReadVariableOp2B
dense_282/MatMul/ReadVariableOpdense_282/MatMul/ReadVariableOp2^
-lstm_846/lstm_cell_846/BiasAdd/ReadVariableOp-lstm_846/lstm_cell_846/BiasAdd/ReadVariableOp2\
,lstm_846/lstm_cell_846/MatMul/ReadVariableOp,lstm_846/lstm_cell_846/MatMul/ReadVariableOp2`
.lstm_846/lstm_cell_846/MatMul_1/ReadVariableOp.lstm_846/lstm_cell_846/MatMul_1/ReadVariableOp2 
lstm_846/whilelstm_846/while2^
-lstm_847/lstm_cell_847/BiasAdd/ReadVariableOp-lstm_847/lstm_cell_847/BiasAdd/ReadVariableOp2\
,lstm_847/lstm_cell_847/MatMul/ReadVariableOp,lstm_847/lstm_cell_847/MatMul/ReadVariableOp2`
.lstm_847/lstm_cell_847/MatMul_1/ReadVariableOp.lstm_847/lstm_cell_847/MatMul_1/ReadVariableOp2 
lstm_847/whilelstm_847/while2^
-lstm_848/lstm_cell_848/BiasAdd/ReadVariableOp-lstm_848/lstm_cell_848/BiasAdd/ReadVariableOp2\
,lstm_848/lstm_cell_848/MatMul/ReadVariableOp,lstm_848/lstm_cell_848/MatMul/ReadVariableOp2`
.lstm_848/lstm_cell_848/MatMul_1/ReadVariableOp.lstm_848/lstm_cell_848/MatMul_1/ReadVariableOp2 
lstm_848/whilelstm_848/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
E__inference_lstm_847_layer_call_and_return_conditional_losses_5093845

inputs(
lstm_cell_847_5093763:	d?(
lstm_cell_847_5093765:	2?$
lstm_cell_847_5093767:	?
identity??%lstm_cell_847/StatefulPartitionedCall?while;
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
%lstm_cell_847/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_847_5093763lstm_cell_847_5093765lstm_cell_847_5093767*
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
J__inference_lstm_cell_847_layer_call_and_return_conditional_losses_5093717n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_847_5093763lstm_cell_847_5093765lstm_cell_847_5093767*
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
while_body_5093776*
condR
while_cond_5093775*K
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
NoOpNoOp&^lstm_cell_847/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_847/StatefulPartitionedCall%lstm_cell_847/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?J
?
E__inference_lstm_846_layer_call_and_return_conditional_losses_5095199

inputs?
,lstm_cell_846_matmul_readvariableop_resource:	?A
.lstm_cell_846_matmul_1_readvariableop_resource:	d?<
-lstm_cell_846_biasadd_readvariableop_resource:	?
identity??$lstm_cell_846/BiasAdd/ReadVariableOp?#lstm_cell_846/MatMul/ReadVariableOp?%lstm_cell_846/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_846/MatMul/ReadVariableOpReadVariableOp,lstm_cell_846_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_846/MatMulMatMulstrided_slice_2:output:0+lstm_cell_846/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_846/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_846_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_846/MatMul_1MatMulzeros:output:0-lstm_cell_846/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_846/addAddV2lstm_cell_846/MatMul:product:0 lstm_cell_846/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_846/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_846_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_846/BiasAddBiasAddlstm_cell_846/add:z:0,lstm_cell_846/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_846/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_846/splitSplit&lstm_cell_846/split/split_dim:output:0lstm_cell_846/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_846/SigmoidSigmoidlstm_cell_846/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_846/Sigmoid_1Sigmoidlstm_cell_846/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_846/mulMullstm_cell_846/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_846/ReluRelulstm_cell_846/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_846/mul_1Mullstm_cell_846/Sigmoid:y:0 lstm_cell_846/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_846/add_1AddV2lstm_cell_846/mul:z:0lstm_cell_846/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_846/Sigmoid_2Sigmoidlstm_cell_846/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_846/Relu_1Relulstm_cell_846/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_846/mul_2Mullstm_cell_846/Sigmoid_2:y:0"lstm_cell_846/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_846_matmul_readvariableop_resource.lstm_cell_846_matmul_1_readvariableop_resource-lstm_cell_846_biasadd_readvariableop_resource*
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
while_body_5095115*
condR
while_cond_5095114*K
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
NoOpNoOp%^lstm_cell_846/BiasAdd/ReadVariableOp$^lstm_cell_846/MatMul/ReadVariableOp&^lstm_cell_846/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_846/BiasAdd/ReadVariableOp$lstm_cell_846/BiasAdd/ReadVariableOp2J
#lstm_cell_846/MatMul/ReadVariableOp#lstm_cell_846/MatMul/ReadVariableOp2N
%lstm_cell_846/MatMul_1/ReadVariableOp%lstm_cell_846/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
while_body_5097041
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_847_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_847_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_847_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_847_matmul_readvariableop_resource:	d?G
4while_lstm_cell_847_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_847_biasadd_readvariableop_resource:	???*while/lstm_cell_847/BiasAdd/ReadVariableOp?)while/lstm_cell_847/MatMul/ReadVariableOp?+while/lstm_cell_847/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_847/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_847_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_847/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_847/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_847/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_847_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_847/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_847/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_847/addAddV2$while/lstm_cell_847/MatMul:product:0&while/lstm_cell_847/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_847/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_847_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_847/BiasAddBiasAddwhile/lstm_cell_847/add:z:02while/lstm_cell_847/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_847/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_847/splitSplit,while/lstm_cell_847/split/split_dim:output:0$while/lstm_cell_847/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_847/SigmoidSigmoid"while/lstm_cell_847/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_847/Sigmoid_1Sigmoid"while/lstm_cell_847/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_847/mulMul!while/lstm_cell_847/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_847/ReluRelu"while/lstm_cell_847/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_847/mul_1Mulwhile/lstm_cell_847/Sigmoid:y:0&while/lstm_cell_847/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_847/add_1AddV2while/lstm_cell_847/mul:z:0while/lstm_cell_847/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_847/Sigmoid_2Sigmoid"while/lstm_cell_847/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_847/Relu_1Reluwhile/lstm_cell_847/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_847/mul_2Mul!while/lstm_cell_847/Sigmoid_2:y:0(while/lstm_cell_847/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_847/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_847/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_847/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_847/BiasAdd/ReadVariableOp*^while/lstm_cell_847/MatMul/ReadVariableOp,^while/lstm_cell_847/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_847_biasadd_readvariableop_resource5while_lstm_cell_847_biasadd_readvariableop_resource_0"n
4while_lstm_cell_847_matmul_1_readvariableop_resource6while_lstm_cell_847_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_847_matmul_readvariableop_resource4while_lstm_cell_847_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_847/BiasAdd/ReadVariableOp*while/lstm_cell_847/BiasAdd/ReadVariableOp2V
)while/lstm_cell_847/MatMul/ReadVariableOp)while/lstm_cell_847/MatMul/ReadVariableOp2Z
+while/lstm_cell_847/MatMul_1/ReadVariableOp+while/lstm_cell_847/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_5097326
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5097326___redundant_placeholder05
1while_while_cond_5097326___redundant_placeholder15
1while_while_cond_5097326___redundant_placeholder25
1while_while_cond_5097326___redundant_placeholder3
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
0__inference_sequential_282_layer_call_fn_5095468

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
K__inference_sequential_282_layer_call_and_return_conditional_losses_5095267o
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
while_cond_5094125
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5094125___redundant_placeholder05
1while_while_cond_5094125___redundant_placeholder15
1while_while_cond_5094125___redundant_placeholder25
1while_while_cond_5094125___redundant_placeholder3
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
while_cond_5093234
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5093234___redundant_placeholder05
1while_while_cond_5093234___redundant_placeholder15
1while_while_cond_5093234___redundant_placeholder25
1while_while_cond_5093234___redundant_placeholder3
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
?
K__inference_sequential_282_layer_call_and_return_conditional_losses_5095349
lstm_846_input#
lstm_846_5095322:	?#
lstm_846_5095324:	d?
lstm_846_5095326:	?#
lstm_847_5095329:	d?#
lstm_847_5095331:	2?
lstm_847_5095333:	?"
lstm_848_5095336:2("
lstm_848_5095338:
(
lstm_848_5095340:(#
dense_282_5095343:

dense_282_5095345:
identity??!dense_282/StatefulPartitionedCall? lstm_846/StatefulPartitionedCall? lstm_847/StatefulPartitionedCall? lstm_848/StatefulPartitionedCall?
 lstm_846/StatefulPartitionedCallStatefulPartitionedCalllstm_846_inputlstm_846_5095322lstm_846_5095324lstm_846_5095326*
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
E__inference_lstm_846_layer_call_and_return_conditional_losses_5094353?
 lstm_847/StatefulPartitionedCallStatefulPartitionedCall)lstm_846/StatefulPartitionedCall:output:0lstm_847_5095329lstm_847_5095331lstm_847_5095333*
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
E__inference_lstm_847_layer_call_and_return_conditional_losses_5094503?
 lstm_848/StatefulPartitionedCallStatefulPartitionedCall)lstm_847/StatefulPartitionedCall:output:0lstm_848_5095336lstm_848_5095338lstm_848_5095340*
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
E__inference_lstm_848_layer_call_and_return_conditional_losses_5094653?
!dense_282/StatefulPartitionedCallStatefulPartitionedCall)lstm_848/StatefulPartitionedCall:output:0dense_282_5095343dense_282_5095345*
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
F__inference_dense_282_layer_call_and_return_conditional_losses_5094671y
IdentityIdentity*dense_282/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_282/StatefulPartitionedCall!^lstm_846/StatefulPartitionedCall!^lstm_847/StatefulPartitionedCall!^lstm_848/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_282/StatefulPartitionedCall!dense_282/StatefulPartitionedCall2D
 lstm_846/StatefulPartitionedCall lstm_846/StatefulPartitionedCall2D
 lstm_847/StatefulPartitionedCall lstm_847/StatefulPartitionedCall2D
 lstm_848/StatefulPartitionedCall lstm_848/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_846_input
?8
?
while_body_5097470
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_847_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_847_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_847_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_847_matmul_readvariableop_resource:	d?G
4while_lstm_cell_847_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_847_biasadd_readvariableop_resource:	???*while/lstm_cell_847/BiasAdd/ReadVariableOp?)while/lstm_cell_847/MatMul/ReadVariableOp?+while/lstm_cell_847/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_847/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_847_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_847/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_847/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_847/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_847_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_847/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_847/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_847/addAddV2$while/lstm_cell_847/MatMul:product:0&while/lstm_cell_847/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_847/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_847_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_847/BiasAddBiasAddwhile/lstm_cell_847/add:z:02while/lstm_cell_847/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_847/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_847/splitSplit,while/lstm_cell_847/split/split_dim:output:0$while/lstm_cell_847/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_847/SigmoidSigmoid"while/lstm_cell_847/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_847/Sigmoid_1Sigmoid"while/lstm_cell_847/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_847/mulMul!while/lstm_cell_847/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_847/ReluRelu"while/lstm_cell_847/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_847/mul_1Mulwhile/lstm_cell_847/Sigmoid:y:0&while/lstm_cell_847/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_847/add_1AddV2while/lstm_cell_847/mul:z:0while/lstm_cell_847/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_847/Sigmoid_2Sigmoid"while/lstm_cell_847/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_847/Relu_1Reluwhile/lstm_cell_847/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_847/mul_2Mul!while/lstm_cell_847/Sigmoid_2:y:0(while/lstm_cell_847/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_847/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_847/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_847/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_847/BiasAdd/ReadVariableOp*^while/lstm_cell_847/MatMul/ReadVariableOp,^while/lstm_cell_847/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_847_biasadd_readvariableop_resource5while_lstm_cell_847_biasadd_readvariableop_resource_0"n
4while_lstm_cell_847_matmul_1_readvariableop_resource6while_lstm_cell_847_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_847_matmul_readvariableop_resource4while_lstm_cell_847_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_847/BiasAdd/ReadVariableOp*while/lstm_cell_847/BiasAdd/ReadVariableOp2V
)while/lstm_cell_847/MatMul/ReadVariableOp)while/lstm_cell_847/MatMul/ReadVariableOp2Z
+while/lstm_cell_847/MatMul_1/ReadVariableOp+while/lstm_cell_847/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

lstm_846_while_body_5095954.
*lstm_846_while_lstm_846_while_loop_counter4
0lstm_846_while_lstm_846_while_maximum_iterations
lstm_846_while_placeholder 
lstm_846_while_placeholder_1 
lstm_846_while_placeholder_2 
lstm_846_while_placeholder_3-
)lstm_846_while_lstm_846_strided_slice_1_0i
elstm_846_while_tensorarrayv2read_tensorlistgetitem_lstm_846_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_846_while_lstm_cell_846_matmul_readvariableop_resource_0:	?R
?lstm_846_while_lstm_cell_846_matmul_1_readvariableop_resource_0:	d?M
>lstm_846_while_lstm_cell_846_biasadd_readvariableop_resource_0:	?
lstm_846_while_identity
lstm_846_while_identity_1
lstm_846_while_identity_2
lstm_846_while_identity_3
lstm_846_while_identity_4
lstm_846_while_identity_5+
'lstm_846_while_lstm_846_strided_slice_1g
clstm_846_while_tensorarrayv2read_tensorlistgetitem_lstm_846_tensorarrayunstack_tensorlistfromtensorN
;lstm_846_while_lstm_cell_846_matmul_readvariableop_resource:	?P
=lstm_846_while_lstm_cell_846_matmul_1_readvariableop_resource:	d?K
<lstm_846_while_lstm_cell_846_biasadd_readvariableop_resource:	???3lstm_846/while/lstm_cell_846/BiasAdd/ReadVariableOp?2lstm_846/while/lstm_cell_846/MatMul/ReadVariableOp?4lstm_846/while/lstm_cell_846/MatMul_1/ReadVariableOp?
@lstm_846/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_846/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_846_while_tensorarrayv2read_tensorlistgetitem_lstm_846_tensorarrayunstack_tensorlistfromtensor_0lstm_846_while_placeholderIlstm_846/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_846/while/lstm_cell_846/MatMul/ReadVariableOpReadVariableOp=lstm_846_while_lstm_cell_846_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_846/while/lstm_cell_846/MatMulMatMul9lstm_846/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_846/while/lstm_cell_846/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_846/while/lstm_cell_846/MatMul_1/ReadVariableOpReadVariableOp?lstm_846_while_lstm_cell_846_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_846/while/lstm_cell_846/MatMul_1MatMullstm_846_while_placeholder_2<lstm_846/while/lstm_cell_846/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_846/while/lstm_cell_846/addAddV2-lstm_846/while/lstm_cell_846/MatMul:product:0/lstm_846/while/lstm_cell_846/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_846/while/lstm_cell_846/BiasAdd/ReadVariableOpReadVariableOp>lstm_846_while_lstm_cell_846_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_846/while/lstm_cell_846/BiasAddBiasAdd$lstm_846/while/lstm_cell_846/add:z:0;lstm_846/while/lstm_cell_846/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_846/while/lstm_cell_846/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_846/while/lstm_cell_846/splitSplit5lstm_846/while/lstm_cell_846/split/split_dim:output:0-lstm_846/while/lstm_cell_846/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_846/while/lstm_cell_846/SigmoidSigmoid+lstm_846/while/lstm_cell_846/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_846/while/lstm_cell_846/Sigmoid_1Sigmoid+lstm_846/while/lstm_cell_846/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_846/while/lstm_cell_846/mulMul*lstm_846/while/lstm_cell_846/Sigmoid_1:y:0lstm_846_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_846/while/lstm_cell_846/ReluRelu+lstm_846/while/lstm_cell_846/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_846/while/lstm_cell_846/mul_1Mul(lstm_846/while/lstm_cell_846/Sigmoid:y:0/lstm_846/while/lstm_cell_846/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_846/while/lstm_cell_846/add_1AddV2$lstm_846/while/lstm_cell_846/mul:z:0&lstm_846/while/lstm_cell_846/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_846/while/lstm_cell_846/Sigmoid_2Sigmoid+lstm_846/while/lstm_cell_846/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_846/while/lstm_cell_846/Relu_1Relu&lstm_846/while/lstm_cell_846/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_846/while/lstm_cell_846/mul_2Mul*lstm_846/while/lstm_cell_846/Sigmoid_2:y:01lstm_846/while/lstm_cell_846/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_846/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_846_while_placeholder_1lstm_846_while_placeholder&lstm_846/while/lstm_cell_846/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_846/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_846/while/addAddV2lstm_846_while_placeholderlstm_846/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_846/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_846/while/add_1AddV2*lstm_846_while_lstm_846_while_loop_counterlstm_846/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_846/while/IdentityIdentitylstm_846/while/add_1:z:0^lstm_846/while/NoOp*
T0*
_output_shapes
: ?
lstm_846/while/Identity_1Identity0lstm_846_while_lstm_846_while_maximum_iterations^lstm_846/while/NoOp*
T0*
_output_shapes
: t
lstm_846/while/Identity_2Identitylstm_846/while/add:z:0^lstm_846/while/NoOp*
T0*
_output_shapes
: ?
lstm_846/while/Identity_3IdentityClstm_846/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_846/while/NoOp*
T0*
_output_shapes
: ?
lstm_846/while/Identity_4Identity&lstm_846/while/lstm_cell_846/mul_2:z:0^lstm_846/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_846/while/Identity_5Identity&lstm_846/while/lstm_cell_846/add_1:z:0^lstm_846/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_846/while/NoOpNoOp4^lstm_846/while/lstm_cell_846/BiasAdd/ReadVariableOp3^lstm_846/while/lstm_cell_846/MatMul/ReadVariableOp5^lstm_846/while/lstm_cell_846/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_846_while_identity lstm_846/while/Identity:output:0"?
lstm_846_while_identity_1"lstm_846/while/Identity_1:output:0"?
lstm_846_while_identity_2"lstm_846/while/Identity_2:output:0"?
lstm_846_while_identity_3"lstm_846/while/Identity_3:output:0"?
lstm_846_while_identity_4"lstm_846/while/Identity_4:output:0"?
lstm_846_while_identity_5"lstm_846/while/Identity_5:output:0"T
'lstm_846_while_lstm_846_strided_slice_1)lstm_846_while_lstm_846_strided_slice_1_0"~
<lstm_846_while_lstm_cell_846_biasadd_readvariableop_resource>lstm_846_while_lstm_cell_846_biasadd_readvariableop_resource_0"?
=lstm_846_while_lstm_cell_846_matmul_1_readvariableop_resource?lstm_846_while_lstm_cell_846_matmul_1_readvariableop_resource_0"|
;lstm_846_while_lstm_cell_846_matmul_readvariableop_resource=lstm_846_while_lstm_cell_846_matmul_readvariableop_resource_0"?
clstm_846_while_tensorarrayv2read_tensorlistgetitem_lstm_846_tensorarrayunstack_tensorlistfromtensorelstm_846_while_tensorarrayv2read_tensorlistgetitem_lstm_846_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_846/while/lstm_cell_846/BiasAdd/ReadVariableOp3lstm_846/while/lstm_cell_846/BiasAdd/ReadVariableOp2h
2lstm_846/while/lstm_cell_846/MatMul/ReadVariableOp2lstm_846/while/lstm_cell_846/MatMul/ReadVariableOp2l
4lstm_846/while/lstm_cell_846/MatMul_1/ReadVariableOp4lstm_846/while/lstm_cell_846/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_5094419
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_847_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_847_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_847_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_847_matmul_readvariableop_resource:	d?G
4while_lstm_cell_847_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_847_biasadd_readvariableop_resource:	???*while/lstm_cell_847/BiasAdd/ReadVariableOp?)while/lstm_cell_847/MatMul/ReadVariableOp?+while/lstm_cell_847/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_847/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_847_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_847/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_847/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_847/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_847_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_847/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_847/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_847/addAddV2$while/lstm_cell_847/MatMul:product:0&while/lstm_cell_847/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_847/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_847_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_847/BiasAddBiasAddwhile/lstm_cell_847/add:z:02while/lstm_cell_847/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_847/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_847/splitSplit,while/lstm_cell_847/split/split_dim:output:0$while/lstm_cell_847/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_847/SigmoidSigmoid"while/lstm_cell_847/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_847/Sigmoid_1Sigmoid"while/lstm_cell_847/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_847/mulMul!while/lstm_cell_847/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_847/ReluRelu"while/lstm_cell_847/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_847/mul_1Mulwhile/lstm_cell_847/Sigmoid:y:0&while/lstm_cell_847/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_847/add_1AddV2while/lstm_cell_847/mul:z:0while/lstm_cell_847/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_847/Sigmoid_2Sigmoid"while/lstm_cell_847/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_847/Relu_1Reluwhile/lstm_cell_847/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_847/mul_2Mul!while/lstm_cell_847/Sigmoid_2:y:0(while/lstm_cell_847/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_847/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_847/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_847/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_847/BiasAdd/ReadVariableOp*^while/lstm_cell_847/MatMul/ReadVariableOp,^while/lstm_cell_847/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_847_biasadd_readvariableop_resource5while_lstm_cell_847_biasadd_readvariableop_resource_0"n
4while_lstm_cell_847_matmul_1_readvariableop_resource6while_lstm_cell_847_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_847_matmul_readvariableop_resource4while_lstm_cell_847_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_847/BiasAdd/ReadVariableOp*while/lstm_cell_847/BiasAdd/ReadVariableOp2V
)while/lstm_cell_847/MatMul/ReadVariableOp)while/lstm_cell_847/MatMul/ReadVariableOp2Z
+while/lstm_cell_847/MatMul_1/ReadVariableOp+while/lstm_cell_847/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_848_layer_call_fn_5097598

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
E__inference_lstm_848_layer_call_and_return_conditional_losses_5094869o
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
while_cond_5095114
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5095114___redundant_placeholder05
1while_while_cond_5095114___redundant_placeholder15
1while_while_cond_5095114___redundant_placeholder25
1while_while_cond_5095114___redundant_placeholder3
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
E__inference_lstm_846_layer_call_and_return_conditional_losses_5093304

inputs(
lstm_cell_846_5093222:	?(
lstm_cell_846_5093224:	d?$
lstm_cell_846_5093226:	?
identity??%lstm_cell_846/StatefulPartitionedCall?while;
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
%lstm_cell_846/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_846_5093222lstm_cell_846_5093224lstm_cell_846_5093226*
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
J__inference_lstm_cell_846_layer_call_and_return_conditional_losses_5093221n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_846_5093222lstm_cell_846_5093224lstm_cell_846_5093226*
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
while_body_5093235*
condR
while_cond_5093234*K
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
NoOpNoOp&^lstm_cell_846/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_846/StatefulPartitionedCall%lstm_cell_846/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
while_cond_5094784
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5094784___redundant_placeholder05
1while_while_cond_5094784___redundant_placeholder15
1while_while_cond_5094784___redundant_placeholder25
1while_while_cond_5094784___redundant_placeholder3
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
E__inference_lstm_846_layer_call_and_return_conditional_losses_5093495

inputs(
lstm_cell_846_5093413:	?(
lstm_cell_846_5093415:	d?$
lstm_cell_846_5093417:	?
identity??%lstm_cell_846/StatefulPartitionedCall?while;
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
%lstm_cell_846/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_846_5093413lstm_cell_846_5093415lstm_cell_846_5093417*
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
J__inference_lstm_cell_846_layer_call_and_return_conditional_losses_5093367n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_846_5093413lstm_cell_846_5093415lstm_cell_846_5093417*
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
while_body_5093426*
condR
while_cond_5093425*K
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
NoOpNoOp&^lstm_cell_846/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_846/StatefulPartitionedCall%lstm_cell_846/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?T
?
*sequential_282_lstm_846_while_body_5092786L
Hsequential_282_lstm_846_while_sequential_282_lstm_846_while_loop_counterR
Nsequential_282_lstm_846_while_sequential_282_lstm_846_while_maximum_iterations-
)sequential_282_lstm_846_while_placeholder/
+sequential_282_lstm_846_while_placeholder_1/
+sequential_282_lstm_846_while_placeholder_2/
+sequential_282_lstm_846_while_placeholder_3K
Gsequential_282_lstm_846_while_sequential_282_lstm_846_strided_slice_1_0?
?sequential_282_lstm_846_while_tensorarrayv2read_tensorlistgetitem_sequential_282_lstm_846_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_282_lstm_846_while_lstm_cell_846_matmul_readvariableop_resource_0:	?a
Nsequential_282_lstm_846_while_lstm_cell_846_matmul_1_readvariableop_resource_0:	d?\
Msequential_282_lstm_846_while_lstm_cell_846_biasadd_readvariableop_resource_0:	?*
&sequential_282_lstm_846_while_identity,
(sequential_282_lstm_846_while_identity_1,
(sequential_282_lstm_846_while_identity_2,
(sequential_282_lstm_846_while_identity_3,
(sequential_282_lstm_846_while_identity_4,
(sequential_282_lstm_846_while_identity_5I
Esequential_282_lstm_846_while_sequential_282_lstm_846_strided_slice_1?
?sequential_282_lstm_846_while_tensorarrayv2read_tensorlistgetitem_sequential_282_lstm_846_tensorarrayunstack_tensorlistfromtensor]
Jsequential_282_lstm_846_while_lstm_cell_846_matmul_readvariableop_resource:	?_
Lsequential_282_lstm_846_while_lstm_cell_846_matmul_1_readvariableop_resource:	d?Z
Ksequential_282_lstm_846_while_lstm_cell_846_biasadd_readvariableop_resource:	???Bsequential_282/lstm_846/while/lstm_cell_846/BiasAdd/ReadVariableOp?Asequential_282/lstm_846/while/lstm_cell_846/MatMul/ReadVariableOp?Csequential_282/lstm_846/while/lstm_cell_846/MatMul_1/ReadVariableOp?
Osequential_282/lstm_846/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
Asequential_282/lstm_846/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_282_lstm_846_while_tensorarrayv2read_tensorlistgetitem_sequential_282_lstm_846_tensorarrayunstack_tensorlistfromtensor_0)sequential_282_lstm_846_while_placeholderXsequential_282/lstm_846/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
Asequential_282/lstm_846/while/lstm_cell_846/MatMul/ReadVariableOpReadVariableOpLsequential_282_lstm_846_while_lstm_cell_846_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
2sequential_282/lstm_846/while/lstm_cell_846/MatMulMatMulHsequential_282/lstm_846/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_282/lstm_846/while/lstm_cell_846/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_282/lstm_846/while/lstm_cell_846/MatMul_1/ReadVariableOpReadVariableOpNsequential_282_lstm_846_while_lstm_cell_846_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
4sequential_282/lstm_846/while/lstm_cell_846/MatMul_1MatMul+sequential_282_lstm_846_while_placeholder_2Ksequential_282/lstm_846/while/lstm_cell_846/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_282/lstm_846/while/lstm_cell_846/addAddV2<sequential_282/lstm_846/while/lstm_cell_846/MatMul:product:0>sequential_282/lstm_846/while/lstm_cell_846/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_282/lstm_846/while/lstm_cell_846/BiasAdd/ReadVariableOpReadVariableOpMsequential_282_lstm_846_while_lstm_cell_846_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_282/lstm_846/while/lstm_cell_846/BiasAddBiasAdd3sequential_282/lstm_846/while/lstm_cell_846/add:z:0Jsequential_282/lstm_846/while/lstm_cell_846/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_282/lstm_846/while/lstm_cell_846/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_282/lstm_846/while/lstm_cell_846/splitSplitDsequential_282/lstm_846/while/lstm_cell_846/split/split_dim:output:0<sequential_282/lstm_846/while/lstm_cell_846/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
3sequential_282/lstm_846/while/lstm_cell_846/SigmoidSigmoid:sequential_282/lstm_846/while/lstm_cell_846/split:output:0*
T0*'
_output_shapes
:?????????d?
5sequential_282/lstm_846/while/lstm_cell_846/Sigmoid_1Sigmoid:sequential_282/lstm_846/while/lstm_cell_846/split:output:1*
T0*'
_output_shapes
:?????????d?
/sequential_282/lstm_846/while/lstm_cell_846/mulMul9sequential_282/lstm_846/while/lstm_cell_846/Sigmoid_1:y:0+sequential_282_lstm_846_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
0sequential_282/lstm_846/while/lstm_cell_846/ReluRelu:sequential_282/lstm_846/while/lstm_cell_846/split:output:2*
T0*'
_output_shapes
:?????????d?
1sequential_282/lstm_846/while/lstm_cell_846/mul_1Mul7sequential_282/lstm_846/while/lstm_cell_846/Sigmoid:y:0>sequential_282/lstm_846/while/lstm_cell_846/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
1sequential_282/lstm_846/while/lstm_cell_846/add_1AddV23sequential_282/lstm_846/while/lstm_cell_846/mul:z:05sequential_282/lstm_846/while/lstm_cell_846/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
5sequential_282/lstm_846/while/lstm_cell_846/Sigmoid_2Sigmoid:sequential_282/lstm_846/while/lstm_cell_846/split:output:3*
T0*'
_output_shapes
:?????????d?
2sequential_282/lstm_846/while/lstm_cell_846/Relu_1Relu5sequential_282/lstm_846/while/lstm_cell_846/add_1:z:0*
T0*'
_output_shapes
:?????????d?
1sequential_282/lstm_846/while/lstm_cell_846/mul_2Mul9sequential_282/lstm_846/while/lstm_cell_846/Sigmoid_2:y:0@sequential_282/lstm_846/while/lstm_cell_846/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
Bsequential_282/lstm_846/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_282_lstm_846_while_placeholder_1)sequential_282_lstm_846_while_placeholder5sequential_282/lstm_846/while/lstm_cell_846/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_282/lstm_846/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_282/lstm_846/while/addAddV2)sequential_282_lstm_846_while_placeholder,sequential_282/lstm_846/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_282/lstm_846/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_282/lstm_846/while/add_1AddV2Hsequential_282_lstm_846_while_sequential_282_lstm_846_while_loop_counter.sequential_282/lstm_846/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_282/lstm_846/while/IdentityIdentity'sequential_282/lstm_846/while/add_1:z:0#^sequential_282/lstm_846/while/NoOp*
T0*
_output_shapes
: ?
(sequential_282/lstm_846/while/Identity_1IdentityNsequential_282_lstm_846_while_sequential_282_lstm_846_while_maximum_iterations#^sequential_282/lstm_846/while/NoOp*
T0*
_output_shapes
: ?
(sequential_282/lstm_846/while/Identity_2Identity%sequential_282/lstm_846/while/add:z:0#^sequential_282/lstm_846/while/NoOp*
T0*
_output_shapes
: ?
(sequential_282/lstm_846/while/Identity_3IdentityRsequential_282/lstm_846/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_282/lstm_846/while/NoOp*
T0*
_output_shapes
: ?
(sequential_282/lstm_846/while/Identity_4Identity5sequential_282/lstm_846/while/lstm_cell_846/mul_2:z:0#^sequential_282/lstm_846/while/NoOp*
T0*'
_output_shapes
:?????????d?
(sequential_282/lstm_846/while/Identity_5Identity5sequential_282/lstm_846/while/lstm_cell_846/add_1:z:0#^sequential_282/lstm_846/while/NoOp*
T0*'
_output_shapes
:?????????d?
"sequential_282/lstm_846/while/NoOpNoOpC^sequential_282/lstm_846/while/lstm_cell_846/BiasAdd/ReadVariableOpB^sequential_282/lstm_846/while/lstm_cell_846/MatMul/ReadVariableOpD^sequential_282/lstm_846/while/lstm_cell_846/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_282_lstm_846_while_identity/sequential_282/lstm_846/while/Identity:output:0"]
(sequential_282_lstm_846_while_identity_11sequential_282/lstm_846/while/Identity_1:output:0"]
(sequential_282_lstm_846_while_identity_21sequential_282/lstm_846/while/Identity_2:output:0"]
(sequential_282_lstm_846_while_identity_31sequential_282/lstm_846/while/Identity_3:output:0"]
(sequential_282_lstm_846_while_identity_41sequential_282/lstm_846/while/Identity_4:output:0"]
(sequential_282_lstm_846_while_identity_51sequential_282/lstm_846/while/Identity_5:output:0"?
Ksequential_282_lstm_846_while_lstm_cell_846_biasadd_readvariableop_resourceMsequential_282_lstm_846_while_lstm_cell_846_biasadd_readvariableop_resource_0"?
Lsequential_282_lstm_846_while_lstm_cell_846_matmul_1_readvariableop_resourceNsequential_282_lstm_846_while_lstm_cell_846_matmul_1_readvariableop_resource_0"?
Jsequential_282_lstm_846_while_lstm_cell_846_matmul_readvariableop_resourceLsequential_282_lstm_846_while_lstm_cell_846_matmul_readvariableop_resource_0"?
Esequential_282_lstm_846_while_sequential_282_lstm_846_strided_slice_1Gsequential_282_lstm_846_while_sequential_282_lstm_846_strided_slice_1_0"?
?sequential_282_lstm_846_while_tensorarrayv2read_tensorlistgetitem_sequential_282_lstm_846_tensorarrayunstack_tensorlistfromtensor?sequential_282_lstm_846_while_tensorarrayv2read_tensorlistgetitem_sequential_282_lstm_846_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2?
Bsequential_282/lstm_846/while/lstm_cell_846/BiasAdd/ReadVariableOpBsequential_282/lstm_846/while/lstm_cell_846/BiasAdd/ReadVariableOp2?
Asequential_282/lstm_846/while/lstm_cell_846/MatMul/ReadVariableOpAsequential_282/lstm_846/while/lstm_cell_846/MatMul/ReadVariableOp2?
Csequential_282/lstm_846/while/lstm_cell_846/MatMul_1/ReadVariableOpCsequential_282/lstm_846/while/lstm_cell_846/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_848_layer_call_and_return_conditional_losses_5094195

inputs'
lstm_cell_848_5094113:2('
lstm_cell_848_5094115:
(#
lstm_cell_848_5094117:(
identity??%lstm_cell_848/StatefulPartitionedCall?while;
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
%lstm_cell_848/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_848_5094113lstm_cell_848_5094115lstm_cell_848_5094117*
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
J__inference_lstm_cell_848_layer_call_and_return_conditional_losses_5094067n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_848_5094113lstm_cell_848_5094115lstm_cell_848_5094117*
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
while_body_5094126*
condR
while_cond_5094125*K
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
NoOpNoOp&^lstm_cell_848/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_848/StatefulPartitionedCall%lstm_cell_848/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?
?
while_cond_5093425
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5093425___redundant_placeholder05
1while_while_cond_5093425___redundant_placeholder15
1while_while_cond_5093425___redundant_placeholder25
1while_while_cond_5093425___redundant_placeholder3
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
/__inference_lstm_cell_848_layer_call_fn_5098419

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
J__inference_lstm_cell_848_layer_call_and_return_conditional_losses_5094067o
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
while_cond_5093584
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5093584___redundant_placeholder05
1while_while_cond_5093584___redundant_placeholder15
1while_while_cond_5093584___redundant_placeholder25
1while_while_cond_5093584___redundant_placeholder3
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
while_cond_5094268
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5094268___redundant_placeholder05
1while_while_cond_5094268___redundant_placeholder15
1while_while_cond_5094268___redundant_placeholder25
1while_while_cond_5094268___redundant_placeholder3
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
?K
?
E__inference_lstm_848_layer_call_and_return_conditional_losses_5097884
inputs_0>
,lstm_cell_848_matmul_readvariableop_resource:2(@
.lstm_cell_848_matmul_1_readvariableop_resource:
(;
-lstm_cell_848_biasadd_readvariableop_resource:(
identity??$lstm_cell_848/BiasAdd/ReadVariableOp?#lstm_cell_848/MatMul/ReadVariableOp?%lstm_cell_848/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_848/MatMul/ReadVariableOpReadVariableOp,lstm_cell_848_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_848/MatMulMatMulstrided_slice_2:output:0+lstm_cell_848/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_848/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_848_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_848/MatMul_1MatMulzeros:output:0-lstm_cell_848/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_848/addAddV2lstm_cell_848/MatMul:product:0 lstm_cell_848/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_848/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_848_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_848/BiasAddBiasAddlstm_cell_848/add:z:0,lstm_cell_848/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_848/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_848/splitSplit&lstm_cell_848/split/split_dim:output:0lstm_cell_848/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_848/SigmoidSigmoidlstm_cell_848/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_848/Sigmoid_1Sigmoidlstm_cell_848/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_848/mulMullstm_cell_848/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_848/ReluRelulstm_cell_848/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_848/mul_1Mullstm_cell_848/Sigmoid:y:0 lstm_cell_848/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_848/add_1AddV2lstm_cell_848/mul:z:0lstm_cell_848/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_848/Sigmoid_2Sigmoidlstm_cell_848/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_848/Relu_1Relulstm_cell_848/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_848/mul_2Mullstm_cell_848/Sigmoid_2:y:0"lstm_cell_848/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_848_matmul_readvariableop_resource.lstm_cell_848_matmul_1_readvariableop_resource-lstm_cell_848_biasadd_readvariableop_resource*
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
while_body_5097800*
condR
while_cond_5097799*K
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
NoOpNoOp%^lstm_cell_848/BiasAdd/ReadVariableOp$^lstm_cell_848/MatMul/ReadVariableOp&^lstm_cell_848/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_848/BiasAdd/ReadVariableOp$lstm_cell_848/BiasAdd/ReadVariableOp2J
#lstm_cell_848/MatMul/ReadVariableOp#lstm_cell_848/MatMul/ReadVariableOp2N
%lstm_cell_848/MatMul_1/ReadVariableOp%lstm_cell_848/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?
?
*sequential_282_lstm_846_while_cond_5092785L
Hsequential_282_lstm_846_while_sequential_282_lstm_846_while_loop_counterR
Nsequential_282_lstm_846_while_sequential_282_lstm_846_while_maximum_iterations-
)sequential_282_lstm_846_while_placeholder/
+sequential_282_lstm_846_while_placeholder_1/
+sequential_282_lstm_846_while_placeholder_2/
+sequential_282_lstm_846_while_placeholder_3N
Jsequential_282_lstm_846_while_less_sequential_282_lstm_846_strided_slice_1e
asequential_282_lstm_846_while_sequential_282_lstm_846_while_cond_5092785___redundant_placeholder0e
asequential_282_lstm_846_while_sequential_282_lstm_846_while_cond_5092785___redundant_placeholder1e
asequential_282_lstm_846_while_sequential_282_lstm_846_while_cond_5092785___redundant_placeholder2e
asequential_282_lstm_846_while_sequential_282_lstm_846_while_cond_5092785___redundant_placeholder3*
&sequential_282_lstm_846_while_identity
?
"sequential_282/lstm_846/while/LessLess)sequential_282_lstm_846_while_placeholderJsequential_282_lstm_846_while_less_sequential_282_lstm_846_strided_slice_1*
T0*
_output_shapes
: {
&sequential_282/lstm_846/while/IdentityIdentity&sequential_282/lstm_846/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_282_lstm_846_while_identity/sequential_282/lstm_846/while/Identity:output:0*(
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

lstm_847_while_body_5096093.
*lstm_847_while_lstm_847_while_loop_counter4
0lstm_847_while_lstm_847_while_maximum_iterations
lstm_847_while_placeholder 
lstm_847_while_placeholder_1 
lstm_847_while_placeholder_2 
lstm_847_while_placeholder_3-
)lstm_847_while_lstm_847_strided_slice_1_0i
elstm_847_while_tensorarrayv2read_tensorlistgetitem_lstm_847_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_847_while_lstm_cell_847_matmul_readvariableop_resource_0:	d?R
?lstm_847_while_lstm_cell_847_matmul_1_readvariableop_resource_0:	2?M
>lstm_847_while_lstm_cell_847_biasadd_readvariableop_resource_0:	?
lstm_847_while_identity
lstm_847_while_identity_1
lstm_847_while_identity_2
lstm_847_while_identity_3
lstm_847_while_identity_4
lstm_847_while_identity_5+
'lstm_847_while_lstm_847_strided_slice_1g
clstm_847_while_tensorarrayv2read_tensorlistgetitem_lstm_847_tensorarrayunstack_tensorlistfromtensorN
;lstm_847_while_lstm_cell_847_matmul_readvariableop_resource:	d?P
=lstm_847_while_lstm_cell_847_matmul_1_readvariableop_resource:	2?K
<lstm_847_while_lstm_cell_847_biasadd_readvariableop_resource:	???3lstm_847/while/lstm_cell_847/BiasAdd/ReadVariableOp?2lstm_847/while/lstm_cell_847/MatMul/ReadVariableOp?4lstm_847/while/lstm_cell_847/MatMul_1/ReadVariableOp?
@lstm_847/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_847/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_847_while_tensorarrayv2read_tensorlistgetitem_lstm_847_tensorarrayunstack_tensorlistfromtensor_0lstm_847_while_placeholderIlstm_847/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_847/while/lstm_cell_847/MatMul/ReadVariableOpReadVariableOp=lstm_847_while_lstm_cell_847_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_847/while/lstm_cell_847/MatMulMatMul9lstm_847/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_847/while/lstm_cell_847/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_847/while/lstm_cell_847/MatMul_1/ReadVariableOpReadVariableOp?lstm_847_while_lstm_cell_847_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_847/while/lstm_cell_847/MatMul_1MatMullstm_847_while_placeholder_2<lstm_847/while/lstm_cell_847/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_847/while/lstm_cell_847/addAddV2-lstm_847/while/lstm_cell_847/MatMul:product:0/lstm_847/while/lstm_cell_847/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_847/while/lstm_cell_847/BiasAdd/ReadVariableOpReadVariableOp>lstm_847_while_lstm_cell_847_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_847/while/lstm_cell_847/BiasAddBiasAdd$lstm_847/while/lstm_cell_847/add:z:0;lstm_847/while/lstm_cell_847/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_847/while/lstm_cell_847/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_847/while/lstm_cell_847/splitSplit5lstm_847/while/lstm_cell_847/split/split_dim:output:0-lstm_847/while/lstm_cell_847/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_847/while/lstm_cell_847/SigmoidSigmoid+lstm_847/while/lstm_cell_847/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_847/while/lstm_cell_847/Sigmoid_1Sigmoid+lstm_847/while/lstm_cell_847/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_847/while/lstm_cell_847/mulMul*lstm_847/while/lstm_cell_847/Sigmoid_1:y:0lstm_847_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_847/while/lstm_cell_847/ReluRelu+lstm_847/while/lstm_cell_847/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_847/while/lstm_cell_847/mul_1Mul(lstm_847/while/lstm_cell_847/Sigmoid:y:0/lstm_847/while/lstm_cell_847/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_847/while/lstm_cell_847/add_1AddV2$lstm_847/while/lstm_cell_847/mul:z:0&lstm_847/while/lstm_cell_847/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_847/while/lstm_cell_847/Sigmoid_2Sigmoid+lstm_847/while/lstm_cell_847/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_847/while/lstm_cell_847/Relu_1Relu&lstm_847/while/lstm_cell_847/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_847/while/lstm_cell_847/mul_2Mul*lstm_847/while/lstm_cell_847/Sigmoid_2:y:01lstm_847/while/lstm_cell_847/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_847/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_847_while_placeholder_1lstm_847_while_placeholder&lstm_847/while/lstm_cell_847/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_847/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_847/while/addAddV2lstm_847_while_placeholderlstm_847/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_847/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_847/while/add_1AddV2*lstm_847_while_lstm_847_while_loop_counterlstm_847/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_847/while/IdentityIdentitylstm_847/while/add_1:z:0^lstm_847/while/NoOp*
T0*
_output_shapes
: ?
lstm_847/while/Identity_1Identity0lstm_847_while_lstm_847_while_maximum_iterations^lstm_847/while/NoOp*
T0*
_output_shapes
: t
lstm_847/while/Identity_2Identitylstm_847/while/add:z:0^lstm_847/while/NoOp*
T0*
_output_shapes
: ?
lstm_847/while/Identity_3IdentityClstm_847/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_847/while/NoOp*
T0*
_output_shapes
: ?
lstm_847/while/Identity_4Identity&lstm_847/while/lstm_cell_847/mul_2:z:0^lstm_847/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_847/while/Identity_5Identity&lstm_847/while/lstm_cell_847/add_1:z:0^lstm_847/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_847/while/NoOpNoOp4^lstm_847/while/lstm_cell_847/BiasAdd/ReadVariableOp3^lstm_847/while/lstm_cell_847/MatMul/ReadVariableOp5^lstm_847/while/lstm_cell_847/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_847_while_identity lstm_847/while/Identity:output:0"?
lstm_847_while_identity_1"lstm_847/while/Identity_1:output:0"?
lstm_847_while_identity_2"lstm_847/while/Identity_2:output:0"?
lstm_847_while_identity_3"lstm_847/while/Identity_3:output:0"?
lstm_847_while_identity_4"lstm_847/while/Identity_4:output:0"?
lstm_847_while_identity_5"lstm_847/while/Identity_5:output:0"T
'lstm_847_while_lstm_847_strided_slice_1)lstm_847_while_lstm_847_strided_slice_1_0"~
<lstm_847_while_lstm_cell_847_biasadd_readvariableop_resource>lstm_847_while_lstm_cell_847_biasadd_readvariableop_resource_0"?
=lstm_847_while_lstm_cell_847_matmul_1_readvariableop_resource?lstm_847_while_lstm_cell_847_matmul_1_readvariableop_resource_0"|
;lstm_847_while_lstm_cell_847_matmul_readvariableop_resource=lstm_847_while_lstm_cell_847_matmul_readvariableop_resource_0"?
clstm_847_while_tensorarrayv2read_tensorlistgetitem_lstm_847_tensorarrayunstack_tensorlistfromtensorelstm_847_while_tensorarrayv2read_tensorlistgetitem_lstm_847_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_847/while/lstm_cell_847/BiasAdd/ReadVariableOp3lstm_847/while/lstm_cell_847/BiasAdd/ReadVariableOp2h
2lstm_847/while/lstm_cell_847/MatMul/ReadVariableOp2lstm_847/while/lstm_cell_847/MatMul/ReadVariableOp2l
4lstm_847/while/lstm_cell_847/MatMul_1/ReadVariableOp4lstm_847/while/lstm_cell_847/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_5098086
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_848_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_848_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_848_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_848_matmul_readvariableop_resource:2(F
4while_lstm_cell_848_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_848_biasadd_readvariableop_resource:(??*while/lstm_cell_848/BiasAdd/ReadVariableOp?)while/lstm_cell_848/MatMul/ReadVariableOp?+while/lstm_cell_848/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_848/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_848_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_848/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_848/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_848/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_848_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_848/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_848/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_848/addAddV2$while/lstm_cell_848/MatMul:product:0&while/lstm_cell_848/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_848/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_848_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_848/BiasAddBiasAddwhile/lstm_cell_848/add:z:02while/lstm_cell_848/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_848/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_848/splitSplit,while/lstm_cell_848/split/split_dim:output:0$while/lstm_cell_848/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_848/SigmoidSigmoid"while/lstm_cell_848/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_848/Sigmoid_1Sigmoid"while/lstm_cell_848/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_848/mulMul!while/lstm_cell_848/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_848/ReluRelu"while/lstm_cell_848/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_848/mul_1Mulwhile/lstm_cell_848/Sigmoid:y:0&while/lstm_cell_848/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_848/add_1AddV2while/lstm_cell_848/mul:z:0while/lstm_cell_848/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_848/Sigmoid_2Sigmoid"while/lstm_cell_848/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_848/Relu_1Reluwhile/lstm_cell_848/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_848/mul_2Mul!while/lstm_cell_848/Sigmoid_2:y:0(while/lstm_cell_848/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_848/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_848/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_848/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_848/BiasAdd/ReadVariableOp*^while/lstm_cell_848/MatMul/ReadVariableOp,^while/lstm_cell_848/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_848_biasadd_readvariableop_resource5while_lstm_cell_848_biasadd_readvariableop_resource_0"n
4while_lstm_cell_848_matmul_1_readvariableop_resource6while_lstm_cell_848_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_848_matmul_readvariableop_resource4while_lstm_cell_848_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_848/BiasAdd/ReadVariableOp*while/lstm_cell_848/BiasAdd/ReadVariableOp2V
)while/lstm_cell_848/MatMul/ReadVariableOp)while/lstm_cell_848/MatMul/ReadVariableOp2Z
+while/lstm_cell_848/MatMul_1/ReadVariableOp+while/lstm_cell_848/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
+__inference_dense_282_layer_call_fn_5098179

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
F__inference_dense_282_layer_call_and_return_conditional_losses_5094671o
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
while_cond_5096567
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5096567___redundant_placeholder05
1while_while_cond_5096567___redundant_placeholder15
1while_while_cond_5096567___redundant_placeholder25
1while_while_cond_5096567___redundant_placeholder3
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
*__inference_lstm_847_layer_call_fn_5096971

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
E__inference_lstm_847_layer_call_and_return_conditional_losses_5094503s
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
while_body_5094569
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_848_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_848_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_848_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_848_matmul_readvariableop_resource:2(F
4while_lstm_cell_848_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_848_biasadd_readvariableop_resource:(??*while/lstm_cell_848/BiasAdd/ReadVariableOp?)while/lstm_cell_848/MatMul/ReadVariableOp?+while/lstm_cell_848/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_848/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_848_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_848/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_848/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_848/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_848_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_848/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_848/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_848/addAddV2$while/lstm_cell_848/MatMul:product:0&while/lstm_cell_848/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_848/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_848_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_848/BiasAddBiasAddwhile/lstm_cell_848/add:z:02while/lstm_cell_848/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_848/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_848/splitSplit,while/lstm_cell_848/split/split_dim:output:0$while/lstm_cell_848/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_848/SigmoidSigmoid"while/lstm_cell_848/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_848/Sigmoid_1Sigmoid"while/lstm_cell_848/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_848/mulMul!while/lstm_cell_848/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_848/ReluRelu"while/lstm_cell_848/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_848/mul_1Mulwhile/lstm_cell_848/Sigmoid:y:0&while/lstm_cell_848/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_848/add_1AddV2while/lstm_cell_848/mul:z:0while/lstm_cell_848/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_848/Sigmoid_2Sigmoid"while/lstm_cell_848/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_848/Relu_1Reluwhile/lstm_cell_848/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_848/mul_2Mul!while/lstm_cell_848/Sigmoid_2:y:0(while/lstm_cell_848/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_848/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_848/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_848/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_848/BiasAdd/ReadVariableOp*^while/lstm_cell_848/MatMul/ReadVariableOp,^while/lstm_cell_848/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_848_biasadd_readvariableop_resource5while_lstm_cell_848_biasadd_readvariableop_resource_0"n
4while_lstm_cell_848_matmul_1_readvariableop_resource6while_lstm_cell_848_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_848_matmul_readvariableop_resource4while_lstm_cell_848_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_848/BiasAdd/ReadVariableOp*while/lstm_cell_848/BiasAdd/ReadVariableOp2V
)while/lstm_cell_848/MatMul/ReadVariableOp)while/lstm_cell_848/MatMul/ReadVariableOp2Z
+while/lstm_cell_848/MatMul_1/ReadVariableOp+while/lstm_cell_848/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_5093426
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_846_5093450_0:	?0
while_lstm_cell_846_5093452_0:	d?,
while_lstm_cell_846_5093454_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_846_5093450:	?.
while_lstm_cell_846_5093452:	d?*
while_lstm_cell_846_5093454:	???+while/lstm_cell_846/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_846/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_846_5093450_0while_lstm_cell_846_5093452_0while_lstm_cell_846_5093454_0*
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
J__inference_lstm_cell_846_layer_call_and_return_conditional_losses_5093367?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_846/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_846/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_846/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_846/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_846_5093450while_lstm_cell_846_5093450_0"<
while_lstm_cell_846_5093452while_lstm_cell_846_5093452_0"<
while_lstm_cell_846_5093454while_lstm_cell_846_5093454_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_846/StatefulPartitionedCall+while/lstm_cell_846/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_848_layer_call_fn_5097576
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
E__inference_lstm_848_layer_call_and_return_conditional_losses_5094195o
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
E__inference_lstm_847_layer_call_and_return_conditional_losses_5093654

inputs(
lstm_cell_847_5093572:	d?(
lstm_cell_847_5093574:	2?$
lstm_cell_847_5093576:	?
identity??%lstm_cell_847/StatefulPartitionedCall?while;
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
%lstm_cell_847/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_847_5093572lstm_cell_847_5093574lstm_cell_847_5093576*
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
J__inference_lstm_cell_847_layer_call_and_return_conditional_losses_5093571n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_847_5093572lstm_cell_847_5093574lstm_cell_847_5093576*
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
while_body_5093585*
condR
while_cond_5093584*K
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
NoOpNoOp&^lstm_cell_847/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_847/StatefulPartitionedCall%lstm_cell_847/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?
?
while_cond_5096853
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5096853___redundant_placeholder05
1while_while_cond_5096853___redundant_placeholder15
1while_while_cond_5096853___redundant_placeholder25
1while_while_cond_5096853___redundant_placeholder3
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
while_cond_5097469
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5097469___redundant_placeholder05
1while_while_cond_5097469___redundant_placeholder15
1while_while_cond_5097469___redundant_placeholder25
1while_while_cond_5097469___redundant_placeholder3
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
while_body_5093235
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_846_5093259_0:	?0
while_lstm_cell_846_5093261_0:	d?,
while_lstm_cell_846_5093263_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_846_5093259:	?.
while_lstm_cell_846_5093261:	d?*
while_lstm_cell_846_5093263:	???+while/lstm_cell_846/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_846/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_846_5093259_0while_lstm_cell_846_5093261_0while_lstm_cell_846_5093263_0*
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
J__inference_lstm_cell_846_layer_call_and_return_conditional_losses_5093221?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_846/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_846/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_846/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_846/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_846_5093259while_lstm_cell_846_5093259_0"<
while_lstm_cell_846_5093261while_lstm_cell_846_5093261_0"<
while_lstm_cell_846_5093263while_lstm_cell_846_5093263_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_846/StatefulPartitionedCall+while/lstm_cell_846/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_cond_5093934
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5093934___redundant_placeholder05
1while_while_cond_5093934___redundant_placeholder15
1while_while_cond_5093934___redundant_placeholder25
1while_while_cond_5093934___redundant_placeholder3
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
*__inference_lstm_846_layer_call_fn_5096366

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
E__inference_lstm_846_layer_call_and_return_conditional_losses_5095199s
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
E__inference_lstm_848_layer_call_and_return_conditional_losses_5094004

inputs'
lstm_cell_848_5093922:2('
lstm_cell_848_5093924:
(#
lstm_cell_848_5093926:(
identity??%lstm_cell_848/StatefulPartitionedCall?while;
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
%lstm_cell_848/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_848_5093922lstm_cell_848_5093924lstm_cell_848_5093926*
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
J__inference_lstm_cell_848_layer_call_and_return_conditional_losses_5093921n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_848_5093922lstm_cell_848_5093924lstm_cell_848_5093926*
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
while_body_5093935*
condR
while_cond_5093934*K
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
NoOpNoOp&^lstm_cell_848/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_848/StatefulPartitionedCall%lstm_cell_848/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?
?
while_cond_5097040
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5097040___redundant_placeholder05
1while_while_cond_5097040___redundant_placeholder15
1while_while_cond_5097040___redundant_placeholder25
1while_while_cond_5097040___redundant_placeholder3
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
*__inference_lstm_846_layer_call_fn_5096355

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
E__inference_lstm_846_layer_call_and_return_conditional_losses_5094353s
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
while_cond_5093775
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5093775___redundant_placeholder05
1while_while_cond_5093775___redundant_placeholder15
1while_while_cond_5093775___redundant_placeholder25
1while_while_cond_5093775___redundant_placeholder3
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
lstm_846_while_cond_5095953.
*lstm_846_while_lstm_846_while_loop_counter4
0lstm_846_while_lstm_846_while_maximum_iterations
lstm_846_while_placeholder 
lstm_846_while_placeholder_1 
lstm_846_while_placeholder_2 
lstm_846_while_placeholder_30
,lstm_846_while_less_lstm_846_strided_slice_1G
Clstm_846_while_lstm_846_while_cond_5095953___redundant_placeholder0G
Clstm_846_while_lstm_846_while_cond_5095953___redundant_placeholder1G
Clstm_846_while_lstm_846_while_cond_5095953___redundant_placeholder2G
Clstm_846_while_lstm_846_while_cond_5095953___redundant_placeholder3
lstm_846_while_identity
?
lstm_846/while/LessLesslstm_846_while_placeholder,lstm_846_while_less_lstm_846_strided_slice_1*
T0*
_output_shapes
: ]
lstm_846/while/IdentityIdentitylstm_846/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_846_while_identity lstm_846/while/Identity:output:0*(
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
lstm_848_while_cond_5095804.
*lstm_848_while_lstm_848_while_loop_counter4
0lstm_848_while_lstm_848_while_maximum_iterations
lstm_848_while_placeholder 
lstm_848_while_placeholder_1 
lstm_848_while_placeholder_2 
lstm_848_while_placeholder_30
,lstm_848_while_less_lstm_848_strided_slice_1G
Clstm_848_while_lstm_848_while_cond_5095804___redundant_placeholder0G
Clstm_848_while_lstm_848_while_cond_5095804___redundant_placeholder1G
Clstm_848_while_lstm_848_while_cond_5095804___redundant_placeholder2G
Clstm_848_while_lstm_848_while_cond_5095804___redundant_placeholder3
lstm_848_while_identity
?
lstm_848/while/LessLesslstm_848_while_placeholder,lstm_848_while_less_lstm_848_strided_slice_1*
T0*
_output_shapes
: ]
lstm_848/while/IdentityIdentitylstm_848/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_848_while_identity lstm_848/while/Identity:output:0*(
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
E__inference_lstm_846_layer_call_and_return_conditional_losses_5096652
inputs_0?
,lstm_cell_846_matmul_readvariableop_resource:	?A
.lstm_cell_846_matmul_1_readvariableop_resource:	d?<
-lstm_cell_846_biasadd_readvariableop_resource:	?
identity??$lstm_cell_846/BiasAdd/ReadVariableOp?#lstm_cell_846/MatMul/ReadVariableOp?%lstm_cell_846/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_846/MatMul/ReadVariableOpReadVariableOp,lstm_cell_846_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_846/MatMulMatMulstrided_slice_2:output:0+lstm_cell_846/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_846/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_846_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_846/MatMul_1MatMulzeros:output:0-lstm_cell_846/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_846/addAddV2lstm_cell_846/MatMul:product:0 lstm_cell_846/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_846/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_846_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_846/BiasAddBiasAddlstm_cell_846/add:z:0,lstm_cell_846/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_846/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_846/splitSplit&lstm_cell_846/split/split_dim:output:0lstm_cell_846/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_846/SigmoidSigmoidlstm_cell_846/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_846/Sigmoid_1Sigmoidlstm_cell_846/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_846/mulMullstm_cell_846/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_846/ReluRelulstm_cell_846/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_846/mul_1Mullstm_cell_846/Sigmoid:y:0 lstm_cell_846/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_846/add_1AddV2lstm_cell_846/mul:z:0lstm_cell_846/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_846/Sigmoid_2Sigmoidlstm_cell_846/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_846/Relu_1Relulstm_cell_846/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_846/mul_2Mullstm_cell_846/Sigmoid_2:y:0"lstm_cell_846/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_846_matmul_readvariableop_resource.lstm_cell_846_matmul_1_readvariableop_resource-lstm_cell_846_biasadd_readvariableop_resource*
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
while_body_5096568*
condR
while_cond_5096567*K
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
NoOpNoOp%^lstm_cell_846/BiasAdd/ReadVariableOp$^lstm_cell_846/MatMul/ReadVariableOp&^lstm_cell_846/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_846/BiasAdd/ReadVariableOp$lstm_cell_846/BiasAdd/ReadVariableOp2J
#lstm_cell_846/MatMul/ReadVariableOp#lstm_cell_846/MatMul/ReadVariableOp2N
%lstm_cell_846/MatMul_1/ReadVariableOp%lstm_cell_846/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?8
?
while_body_5094785
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_848_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_848_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_848_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_848_matmul_readvariableop_resource:2(F
4while_lstm_cell_848_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_848_biasadd_readvariableop_resource:(??*while/lstm_cell_848/BiasAdd/ReadVariableOp?)while/lstm_cell_848/MatMul/ReadVariableOp?+while/lstm_cell_848/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_848/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_848_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_848/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_848/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_848/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_848_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_848/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_848/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_848/addAddV2$while/lstm_cell_848/MatMul:product:0&while/lstm_cell_848/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_848/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_848_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_848/BiasAddBiasAddwhile/lstm_cell_848/add:z:02while/lstm_cell_848/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_848/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_848/splitSplit,while/lstm_cell_848/split/split_dim:output:0$while/lstm_cell_848/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_848/SigmoidSigmoid"while/lstm_cell_848/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_848/Sigmoid_1Sigmoid"while/lstm_cell_848/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_848/mulMul!while/lstm_cell_848/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_848/ReluRelu"while/lstm_cell_848/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_848/mul_1Mulwhile/lstm_cell_848/Sigmoid:y:0&while/lstm_cell_848/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_848/add_1AddV2while/lstm_cell_848/mul:z:0while/lstm_cell_848/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_848/Sigmoid_2Sigmoid"while/lstm_cell_848/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_848/Relu_1Reluwhile/lstm_cell_848/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_848/mul_2Mul!while/lstm_cell_848/Sigmoid_2:y:0(while/lstm_cell_848/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_848/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_848/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_848/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_848/BiasAdd/ReadVariableOp*^while/lstm_cell_848/MatMul/ReadVariableOp,^while/lstm_cell_848/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_848_biasadd_readvariableop_resource5while_lstm_cell_848_biasadd_readvariableop_resource_0"n
4while_lstm_cell_848_matmul_1_readvariableop_resource6while_lstm_cell_848_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_848_matmul_readvariableop_resource4while_lstm_cell_848_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_848/BiasAdd/ReadVariableOp*while/lstm_cell_848/BiasAdd/ReadVariableOp2V
)while/lstm_cell_848/MatMul/ReadVariableOp)while/lstm_cell_848/MatMul/ReadVariableOp2Z
+while/lstm_cell_848/MatMul_1/ReadVariableOp+while/lstm_cell_848/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_847_layer_call_fn_5096949
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
E__inference_lstm_847_layer_call_and_return_conditional_losses_5093654|
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
while_cond_5096710
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5096710___redundant_placeholder05
1while_while_cond_5096710___redundant_placeholder15
1while_while_cond_5096710___redundant_placeholder25
1while_while_cond_5096710___redundant_placeholder3
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
J__inference_lstm_cell_848_layer_call_and_return_conditional_losses_5094067

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

 
_user_specified_namestates"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
M
lstm_846_input;
 serving_default_lstm_846_input:0?????????=
	dense_2820
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
2dense_282/kernel
:2dense_282/bias
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
0:.	?2lstm_846/lstm_cell_846/kernel
::8	d?2'lstm_846/lstm_cell_846/recurrent_kernel
*:(?2lstm_846/lstm_cell_846/bias
0:.	d?2lstm_847/lstm_cell_847/kernel
::8	2?2'lstm_847/lstm_cell_847/recurrent_kernel
*:(?2lstm_847/lstm_cell_847/bias
/:-2(2lstm_848/lstm_cell_848/kernel
9:7
(2'lstm_848/lstm_cell_848/recurrent_kernel
):'(2lstm_848/lstm_cell_848/bias
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
2Adam/dense_282/kernel/m
!:2Adam/dense_282/bias/m
5:3	?2$Adam/lstm_846/lstm_cell_846/kernel/m
?:=	d?2.Adam/lstm_846/lstm_cell_846/recurrent_kernel/m
/:-?2"Adam/lstm_846/lstm_cell_846/bias/m
5:3	d?2$Adam/lstm_847/lstm_cell_847/kernel/m
?:=	2?2.Adam/lstm_847/lstm_cell_847/recurrent_kernel/m
/:-?2"Adam/lstm_847/lstm_cell_847/bias/m
4:22(2$Adam/lstm_848/lstm_cell_848/kernel/m
>:<
(2.Adam/lstm_848/lstm_cell_848/recurrent_kernel/m
.:,(2"Adam/lstm_848/lstm_cell_848/bias/m
':%
2Adam/dense_282/kernel/v
!:2Adam/dense_282/bias/v
5:3	?2$Adam/lstm_846/lstm_cell_846/kernel/v
?:=	d?2.Adam/lstm_846/lstm_cell_846/recurrent_kernel/v
/:-?2"Adam/lstm_846/lstm_cell_846/bias/v
5:3	d?2$Adam/lstm_847/lstm_cell_847/kernel/v
?:=	2?2.Adam/lstm_847/lstm_cell_847/recurrent_kernel/v
/:-?2"Adam/lstm_847/lstm_cell_847/bias/v
4:22(2$Adam/lstm_848/lstm_cell_848/kernel/v
>:<
(2.Adam/lstm_848/lstm_cell_848/recurrent_kernel/v
.:,(2"Adam/lstm_848/lstm_cell_848/bias/v
?2?
0__inference_sequential_282_layer_call_fn_5094703
0__inference_sequential_282_layer_call_fn_5095441
0__inference_sequential_282_layer_call_fn_5095468
0__inference_sequential_282_layer_call_fn_5095319?
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
K__inference_sequential_282_layer_call_and_return_conditional_losses_5095895
K__inference_sequential_282_layer_call_and_return_conditional_losses_5096322
K__inference_sequential_282_layer_call_and_return_conditional_losses_5095349
K__inference_sequential_282_layer_call_and_return_conditional_losses_5095379?
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
"__inference__wrapped_model_5093154lstm_846_input"?
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
*__inference_lstm_846_layer_call_fn_5096333
*__inference_lstm_846_layer_call_fn_5096344
*__inference_lstm_846_layer_call_fn_5096355
*__inference_lstm_846_layer_call_fn_5096366?
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
E__inference_lstm_846_layer_call_and_return_conditional_losses_5096509
E__inference_lstm_846_layer_call_and_return_conditional_losses_5096652
E__inference_lstm_846_layer_call_and_return_conditional_losses_5096795
E__inference_lstm_846_layer_call_and_return_conditional_losses_5096938?
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
*__inference_lstm_847_layer_call_fn_5096949
*__inference_lstm_847_layer_call_fn_5096960
*__inference_lstm_847_layer_call_fn_5096971
*__inference_lstm_847_layer_call_fn_5096982?
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
E__inference_lstm_847_layer_call_and_return_conditional_losses_5097125
E__inference_lstm_847_layer_call_and_return_conditional_losses_5097268
E__inference_lstm_847_layer_call_and_return_conditional_losses_5097411
E__inference_lstm_847_layer_call_and_return_conditional_losses_5097554?
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
*__inference_lstm_848_layer_call_fn_5097565
*__inference_lstm_848_layer_call_fn_5097576
*__inference_lstm_848_layer_call_fn_5097587
*__inference_lstm_848_layer_call_fn_5097598?
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
E__inference_lstm_848_layer_call_and_return_conditional_losses_5097741
E__inference_lstm_848_layer_call_and_return_conditional_losses_5097884
E__inference_lstm_848_layer_call_and_return_conditional_losses_5098027
E__inference_lstm_848_layer_call_and_return_conditional_losses_5098170?
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
+__inference_dense_282_layer_call_fn_5098179?
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
F__inference_dense_282_layer_call_and_return_conditional_losses_5098189?
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
%__inference_signature_wrapper_5095414lstm_846_input"?
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
/__inference_lstm_cell_846_layer_call_fn_5098206
/__inference_lstm_cell_846_layer_call_fn_5098223?
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
J__inference_lstm_cell_846_layer_call_and_return_conditional_losses_5098255
J__inference_lstm_cell_846_layer_call_and_return_conditional_losses_5098287?
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
/__inference_lstm_cell_847_layer_call_fn_5098304
/__inference_lstm_cell_847_layer_call_fn_5098321?
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
J__inference_lstm_cell_847_layer_call_and_return_conditional_losses_5098353
J__inference_lstm_cell_847_layer_call_and_return_conditional_losses_5098385?
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
/__inference_lstm_cell_848_layer_call_fn_5098402
/__inference_lstm_cell_848_layer_call_fn_5098419?
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
J__inference_lstm_cell_848_layer_call_and_return_conditional_losses_5098451
J__inference_lstm_cell_848_layer_call_and_return_conditional_losses_5098483?
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
"__inference__wrapped_model_5093154?()*+,-./0;?8
1?.
,?)
lstm_846_input?????????
? "5?2
0
	dense_282#? 
	dense_282??????????
F__inference_dense_282_layer_call_and_return_conditional_losses_5098189\/?,
%?"
 ?
inputs?????????

? "%?"
?
0?????????
? ~
+__inference_dense_282_layer_call_fn_5098179O/?,
%?"
 ?
inputs?????????

? "???????????
E__inference_lstm_846_layer_call_and_return_conditional_losses_5096509?()*O?L
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
E__inference_lstm_846_layer_call_and_return_conditional_losses_5096652?()*O?L
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
E__inference_lstm_846_layer_call_and_return_conditional_losses_5096795q()*??<
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
E__inference_lstm_846_layer_call_and_return_conditional_losses_5096938q()*??<
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
*__inference_lstm_846_layer_call_fn_5096333}()*O?L
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
*__inference_lstm_846_layer_call_fn_5096344}()*O?L
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
*__inference_lstm_846_layer_call_fn_5096355d()*??<
5?2
$?!
inputs?????????

 
p 

 
? "??????????d?
*__inference_lstm_846_layer_call_fn_5096366d()*??<
5?2
$?!
inputs?????????

 
p

 
? "??????????d?
E__inference_lstm_847_layer_call_and_return_conditional_losses_5097125?+,-O?L
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
E__inference_lstm_847_layer_call_and_return_conditional_losses_5097268?+,-O?L
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
E__inference_lstm_847_layer_call_and_return_conditional_losses_5097411q+,-??<
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
E__inference_lstm_847_layer_call_and_return_conditional_losses_5097554q+,-??<
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
*__inference_lstm_847_layer_call_fn_5096949}+,-O?L
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
*__inference_lstm_847_layer_call_fn_5096960}+,-O?L
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
*__inference_lstm_847_layer_call_fn_5096971d+,-??<
5?2
$?!
inputs?????????d

 
p 

 
? "??????????2?
*__inference_lstm_847_layer_call_fn_5096982d+,-??<
5?2
$?!
inputs?????????d

 
p

 
? "??????????2?
E__inference_lstm_848_layer_call_and_return_conditional_losses_5097741}./0O?L
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
E__inference_lstm_848_layer_call_and_return_conditional_losses_5097884}./0O?L
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
E__inference_lstm_848_layer_call_and_return_conditional_losses_5098027m./0??<
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
E__inference_lstm_848_layer_call_and_return_conditional_losses_5098170m./0??<
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
*__inference_lstm_848_layer_call_fn_5097565p./0O?L
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
*__inference_lstm_848_layer_call_fn_5097576p./0O?L
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
*__inference_lstm_848_layer_call_fn_5097587`./0??<
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
*__inference_lstm_848_layer_call_fn_5097598`./0??<
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
J__inference_lstm_cell_846_layer_call_and_return_conditional_losses_5098255?()*??}
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
J__inference_lstm_cell_846_layer_call_and_return_conditional_losses_5098287?()*??}
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
/__inference_lstm_cell_846_layer_call_fn_5098206?()*??}
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
/__inference_lstm_cell_846_layer_call_fn_5098223?()*??}
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
J__inference_lstm_cell_847_layer_call_and_return_conditional_losses_5098353?+,-??}
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
J__inference_lstm_cell_847_layer_call_and_return_conditional_losses_5098385?+,-??}
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
/__inference_lstm_cell_847_layer_call_fn_5098304?+,-??}
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
/__inference_lstm_cell_847_layer_call_fn_5098321?+,-??}
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
J__inference_lstm_cell_848_layer_call_and_return_conditional_losses_5098451?./0??}
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
J__inference_lstm_cell_848_layer_call_and_return_conditional_losses_5098483?./0??}
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
/__inference_lstm_cell_848_layer_call_fn_5098402?./0??}
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
/__inference_lstm_cell_848_layer_call_fn_5098419?./0??}
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
K__inference_sequential_282_layer_call_and_return_conditional_losses_5095349y()*+,-./0C?@
9?6
,?)
lstm_846_input?????????
p 

 
? "%?"
?
0?????????
? ?
K__inference_sequential_282_layer_call_and_return_conditional_losses_5095379y()*+,-./0C?@
9?6
,?)
lstm_846_input?????????
p

 
? "%?"
?
0?????????
? ?
K__inference_sequential_282_layer_call_and_return_conditional_losses_5095895q()*+,-./0;?8
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
K__inference_sequential_282_layer_call_and_return_conditional_losses_5096322q()*+,-./0;?8
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
0__inference_sequential_282_layer_call_fn_5094703l()*+,-./0C?@
9?6
,?)
lstm_846_input?????????
p 

 
? "???????????
0__inference_sequential_282_layer_call_fn_5095319l()*+,-./0C?@
9?6
,?)
lstm_846_input?????????
p

 
? "???????????
0__inference_sequential_282_layer_call_fn_5095441d()*+,-./0;?8
1?.
$?!
inputs?????????
p 

 
? "???????????
0__inference_sequential_282_layer_call_fn_5095468d()*+,-./0;?8
1?.
$?!
inputs?????????
p

 
? "???????????
%__inference_signature_wrapper_5095414?()*+,-./0M?J
? 
C?@
>
lstm_846_input,?)
lstm_846_input?????????"5?2
0
	dense_282#? 
	dense_282?????????