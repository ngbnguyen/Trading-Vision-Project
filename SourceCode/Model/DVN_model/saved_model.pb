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
dense_225/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*!
shared_namedense_225/kernel
u
$dense_225/kernel/Read/ReadVariableOpReadVariableOpdense_225/kernel*
_output_shapes

:
*
dtype0
t
dense_225/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_225/bias
m
"dense_225/bias/Read/ReadVariableOpReadVariableOpdense_225/bias*
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
lstm_675/lstm_cell_675/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*.
shared_namelstm_675/lstm_cell_675/kernel
?
1lstm_675/lstm_cell_675/kernel/Read/ReadVariableOpReadVariableOplstm_675/lstm_cell_675/kernel*
_output_shapes
:	?*
dtype0
?
'lstm_675/lstm_cell_675/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*8
shared_name)'lstm_675/lstm_cell_675/recurrent_kernel
?
;lstm_675/lstm_cell_675/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_675/lstm_cell_675/recurrent_kernel*
_output_shapes
:	d?*
dtype0
?
lstm_675/lstm_cell_675/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_675/lstm_cell_675/bias
?
/lstm_675/lstm_cell_675/bias/Read/ReadVariableOpReadVariableOplstm_675/lstm_cell_675/bias*
_output_shapes	
:?*
dtype0
?
lstm_676/lstm_cell_676/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*.
shared_namelstm_676/lstm_cell_676/kernel
?
1lstm_676/lstm_cell_676/kernel/Read/ReadVariableOpReadVariableOplstm_676/lstm_cell_676/kernel*
_output_shapes
:	d?*
dtype0
?
'lstm_676/lstm_cell_676/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*8
shared_name)'lstm_676/lstm_cell_676/recurrent_kernel
?
;lstm_676/lstm_cell_676/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_676/lstm_cell_676/recurrent_kernel*
_output_shapes
:	2?*
dtype0
?
lstm_676/lstm_cell_676/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_676/lstm_cell_676/bias
?
/lstm_676/lstm_cell_676/bias/Read/ReadVariableOpReadVariableOplstm_676/lstm_cell_676/bias*
_output_shapes	
:?*
dtype0
?
lstm_677/lstm_cell_677/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*.
shared_namelstm_677/lstm_cell_677/kernel
?
1lstm_677/lstm_cell_677/kernel/Read/ReadVariableOpReadVariableOplstm_677/lstm_cell_677/kernel*
_output_shapes

:2(*
dtype0
?
'lstm_677/lstm_cell_677/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*8
shared_name)'lstm_677/lstm_cell_677/recurrent_kernel
?
;lstm_677/lstm_cell_677/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_677/lstm_cell_677/recurrent_kernel*
_output_shapes

:
(*
dtype0
?
lstm_677/lstm_cell_677/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*,
shared_namelstm_677/lstm_cell_677/bias
?
/lstm_677/lstm_cell_677/bias/Read/ReadVariableOpReadVariableOplstm_677/lstm_cell_677/bias*
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
Adam/dense_225/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_225/kernel/m
?
+Adam/dense_225/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_225/kernel/m*
_output_shapes

:
*
dtype0
?
Adam/dense_225/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_225/bias/m
{
)Adam/dense_225/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_225/bias/m*
_output_shapes
:*
dtype0
?
$Adam/lstm_675/lstm_cell_675/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_675/lstm_cell_675/kernel/m
?
8Adam/lstm_675/lstm_cell_675/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_675/lstm_cell_675/kernel/m*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_675/lstm_cell_675/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_675/lstm_cell_675/recurrent_kernel/m
?
BAdam/lstm_675/lstm_cell_675/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_675/lstm_cell_675/recurrent_kernel/m*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_675/lstm_cell_675/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_675/lstm_cell_675/bias/m
?
6Adam/lstm_675/lstm_cell_675/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_675/lstm_cell_675/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_676/lstm_cell_676/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_676/lstm_cell_676/kernel/m
?
8Adam/lstm_676/lstm_cell_676/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_676/lstm_cell_676/kernel/m*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_676/lstm_cell_676/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_676/lstm_cell_676/recurrent_kernel/m
?
BAdam/lstm_676/lstm_cell_676/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_676/lstm_cell_676/recurrent_kernel/m*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_676/lstm_cell_676/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_676/lstm_cell_676/bias/m
?
6Adam/lstm_676/lstm_cell_676/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_676/lstm_cell_676/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_677/lstm_cell_677/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_677/lstm_cell_677/kernel/m
?
8Adam/lstm_677/lstm_cell_677/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_677/lstm_cell_677/kernel/m*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_677/lstm_cell_677/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_677/lstm_cell_677/recurrent_kernel/m
?
BAdam/lstm_677/lstm_cell_677/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_677/lstm_cell_677/recurrent_kernel/m*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_677/lstm_cell_677/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_677/lstm_cell_677/bias/m
?
6Adam/lstm_677/lstm_cell_677/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_677/lstm_cell_677/bias/m*
_output_shapes
:(*
dtype0
?
Adam/dense_225/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_225/kernel/v
?
+Adam/dense_225/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_225/kernel/v*
_output_shapes

:
*
dtype0
?
Adam/dense_225/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_225/bias/v
{
)Adam/dense_225/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_225/bias/v*
_output_shapes
:*
dtype0
?
$Adam/lstm_675/lstm_cell_675/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_675/lstm_cell_675/kernel/v
?
8Adam/lstm_675/lstm_cell_675/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_675/lstm_cell_675/kernel/v*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_675/lstm_cell_675/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_675/lstm_cell_675/recurrent_kernel/v
?
BAdam/lstm_675/lstm_cell_675/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_675/lstm_cell_675/recurrent_kernel/v*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_675/lstm_cell_675/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_675/lstm_cell_675/bias/v
?
6Adam/lstm_675/lstm_cell_675/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_675/lstm_cell_675/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_676/lstm_cell_676/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_676/lstm_cell_676/kernel/v
?
8Adam/lstm_676/lstm_cell_676/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_676/lstm_cell_676/kernel/v*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_676/lstm_cell_676/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_676/lstm_cell_676/recurrent_kernel/v
?
BAdam/lstm_676/lstm_cell_676/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_676/lstm_cell_676/recurrent_kernel/v*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_676/lstm_cell_676/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_676/lstm_cell_676/bias/v
?
6Adam/lstm_676/lstm_cell_676/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_676/lstm_cell_676/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_677/lstm_cell_677/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_677/lstm_cell_677/kernel/v
?
8Adam/lstm_677/lstm_cell_677/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_677/lstm_cell_677/kernel/v*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_677/lstm_cell_677/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_677/lstm_cell_677/recurrent_kernel/v
?
BAdam/lstm_677/lstm_cell_677/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_677/lstm_cell_677/recurrent_kernel/v*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_677/lstm_cell_677/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_677/lstm_cell_677/bias/v
?
6Adam/lstm_677/lstm_cell_677/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_677/lstm_cell_677/bias/v*
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
VARIABLE_VALUEdense_225/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_225/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUElstm_675/lstm_cell_675/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_675/lstm_cell_675/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_675/lstm_cell_675/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_676/lstm_cell_676/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_676/lstm_cell_676/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_676/lstm_cell_676/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_677/lstm_cell_677/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_677/lstm_cell_677/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_677/lstm_cell_677/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEAdam/dense_225/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_225/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_675/lstm_cell_675/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_675/lstm_cell_675/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_675/lstm_cell_675/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_676/lstm_cell_676/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_676/lstm_cell_676/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_676/lstm_cell_676/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_677/lstm_cell_677/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_677/lstm_cell_677/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_677/lstm_cell_677/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_225/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_225/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_675/lstm_cell_675/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_675/lstm_cell_675/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_675/lstm_cell_675/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_676/lstm_cell_676/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_676/lstm_cell_676/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_676/lstm_cell_676/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_677/lstm_cell_677/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_677/lstm_cell_677/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_677/lstm_cell_677/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_lstm_675_inputPlaceholder*+
_output_shapes
:?????????*
dtype0* 
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_675_inputlstm_675/lstm_cell_675/kernel'lstm_675/lstm_cell_675/recurrent_kernellstm_675/lstm_cell_675/biaslstm_676/lstm_cell_676/kernel'lstm_676/lstm_cell_676/recurrent_kernellstm_676/lstm_cell_676/biaslstm_677/lstm_cell_677/kernel'lstm_677/lstm_cell_677/recurrent_kernellstm_677/lstm_cell_677/biasdense_225/kerneldense_225/bias*
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
%__inference_signature_wrapper_4277695
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$dense_225/kernel/Read/ReadVariableOp"dense_225/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_675/lstm_cell_675/kernel/Read/ReadVariableOp;lstm_675/lstm_cell_675/recurrent_kernel/Read/ReadVariableOp/lstm_675/lstm_cell_675/bias/Read/ReadVariableOp1lstm_676/lstm_cell_676/kernel/Read/ReadVariableOp;lstm_676/lstm_cell_676/recurrent_kernel/Read/ReadVariableOp/lstm_676/lstm_cell_676/bias/Read/ReadVariableOp1lstm_677/lstm_cell_677/kernel/Read/ReadVariableOp;lstm_677/lstm_cell_677/recurrent_kernel/Read/ReadVariableOp/lstm_677/lstm_cell_677/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp+Adam/dense_225/kernel/m/Read/ReadVariableOp)Adam/dense_225/bias/m/Read/ReadVariableOp8Adam/lstm_675/lstm_cell_675/kernel/m/Read/ReadVariableOpBAdam/lstm_675/lstm_cell_675/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_675/lstm_cell_675/bias/m/Read/ReadVariableOp8Adam/lstm_676/lstm_cell_676/kernel/m/Read/ReadVariableOpBAdam/lstm_676/lstm_cell_676/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_676/lstm_cell_676/bias/m/Read/ReadVariableOp8Adam/lstm_677/lstm_cell_677/kernel/m/Read/ReadVariableOpBAdam/lstm_677/lstm_cell_677/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_677/lstm_cell_677/bias/m/Read/ReadVariableOp+Adam/dense_225/kernel/v/Read/ReadVariableOp)Adam/dense_225/bias/v/Read/ReadVariableOp8Adam/lstm_675/lstm_cell_675/kernel/v/Read/ReadVariableOpBAdam/lstm_675/lstm_cell_675/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_675/lstm_cell_675/bias/v/Read/ReadVariableOp8Adam/lstm_676/lstm_cell_676/kernel/v/Read/ReadVariableOpBAdam/lstm_676/lstm_cell_676/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_676/lstm_cell_676/bias/v/Read/ReadVariableOp8Adam/lstm_677/lstm_cell_677/kernel/v/Read/ReadVariableOpBAdam/lstm_677/lstm_cell_677/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_677/lstm_cell_677/bias/v/Read/ReadVariableOpConst*5
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
 __inference__traced_save_4280907
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_225/kerneldense_225/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_675/lstm_cell_675/kernel'lstm_675/lstm_cell_675/recurrent_kernellstm_675/lstm_cell_675/biaslstm_676/lstm_cell_676/kernel'lstm_676/lstm_cell_676/recurrent_kernellstm_676/lstm_cell_676/biaslstm_677/lstm_cell_677/kernel'lstm_677/lstm_cell_677/recurrent_kernellstm_677/lstm_cell_677/biastotalcountAdam/dense_225/kernel/mAdam/dense_225/bias/m$Adam/lstm_675/lstm_cell_675/kernel/m.Adam/lstm_675/lstm_cell_675/recurrent_kernel/m"Adam/lstm_675/lstm_cell_675/bias/m$Adam/lstm_676/lstm_cell_676/kernel/m.Adam/lstm_676/lstm_cell_676/recurrent_kernel/m"Adam/lstm_676/lstm_cell_676/bias/m$Adam/lstm_677/lstm_cell_677/kernel/m.Adam/lstm_677/lstm_cell_677/recurrent_kernel/m"Adam/lstm_677/lstm_cell_677/bias/mAdam/dense_225/kernel/vAdam/dense_225/bias/v$Adam/lstm_675/lstm_cell_675/kernel/v.Adam/lstm_675/lstm_cell_675/recurrent_kernel/v"Adam/lstm_675/lstm_cell_675/bias/v$Adam/lstm_676/lstm_cell_676/kernel/v.Adam/lstm_676/lstm_cell_676/recurrent_kernel/v"Adam/lstm_676/lstm_cell_676/bias/v$Adam/lstm_677/lstm_cell_677/kernel/v.Adam/lstm_677/lstm_cell_677/recurrent_kernel/v"Adam/lstm_677/lstm_cell_677/bias/v*4
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
#__inference__traced_restore_4281037??+
?

?
0__inference_sequential_225_layer_call_fn_4277600
lstm_675_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_675_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_225_layer_call_and_return_conditional_losses_4277548o
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
_user_specified_namelstm_675_input
?
?
while_cond_4278848
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4278848___redundant_placeholder05
1while_while_cond_4278848___redundant_placeholder15
1while_while_cond_4278848___redundant_placeholder25
1while_while_cond_4278848___redundant_placeholder3
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
K__inference_sequential_225_layer_call_and_return_conditional_losses_4277630
lstm_675_input#
lstm_675_4277603:	?#
lstm_675_4277605:	d?
lstm_675_4277607:	?#
lstm_676_4277610:	d?#
lstm_676_4277612:	2?
lstm_676_4277614:	?"
lstm_677_4277617:2("
lstm_677_4277619:
(
lstm_677_4277621:(#
dense_225_4277624:

dense_225_4277626:
identity??!dense_225/StatefulPartitionedCall? lstm_675/StatefulPartitionedCall? lstm_676/StatefulPartitionedCall? lstm_677/StatefulPartitionedCall?
 lstm_675/StatefulPartitionedCallStatefulPartitionedCalllstm_675_inputlstm_675_4277603lstm_675_4277605lstm_675_4277607*
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
E__inference_lstm_675_layer_call_and_return_conditional_losses_4276634?
 lstm_676/StatefulPartitionedCallStatefulPartitionedCall)lstm_675/StatefulPartitionedCall:output:0lstm_676_4277610lstm_676_4277612lstm_676_4277614*
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
E__inference_lstm_676_layer_call_and_return_conditional_losses_4276784?
 lstm_677/StatefulPartitionedCallStatefulPartitionedCall)lstm_676/StatefulPartitionedCall:output:0lstm_677_4277617lstm_677_4277619lstm_677_4277621*
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
E__inference_lstm_677_layer_call_and_return_conditional_losses_4276934?
!dense_225/StatefulPartitionedCallStatefulPartitionedCall)lstm_677/StatefulPartitionedCall:output:0dense_225_4277624dense_225_4277626*
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
F__inference_dense_225_layer_call_and_return_conditional_losses_4276952y
IdentityIdentity*dense_225/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_225/StatefulPartitionedCall!^lstm_675/StatefulPartitionedCall!^lstm_676/StatefulPartitionedCall!^lstm_677/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_225/StatefulPartitionedCall!dense_225/StatefulPartitionedCall2D
 lstm_675/StatefulPartitionedCall lstm_675/StatefulPartitionedCall2D
 lstm_676/StatefulPartitionedCall lstm_676/StatefulPartitionedCall2D
 lstm_677/StatefulPartitionedCall lstm_677/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_675_input
?8
?
while_body_4276850
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_677_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_677_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_677_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_677_matmul_readvariableop_resource:2(F
4while_lstm_cell_677_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_677_biasadd_readvariableop_resource:(??*while/lstm_cell_677/BiasAdd/ReadVariableOp?)while/lstm_cell_677/MatMul/ReadVariableOp?+while/lstm_cell_677/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_677/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_677_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_677/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_677/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_677/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_677_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_677/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_677/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_677/addAddV2$while/lstm_cell_677/MatMul:product:0&while/lstm_cell_677/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_677/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_677_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_677/BiasAddBiasAddwhile/lstm_cell_677/add:z:02while/lstm_cell_677/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_677/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_677/splitSplit,while/lstm_cell_677/split/split_dim:output:0$while/lstm_cell_677/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_677/SigmoidSigmoid"while/lstm_cell_677/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_677/Sigmoid_1Sigmoid"while/lstm_cell_677/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_677/mulMul!while/lstm_cell_677/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_677/ReluRelu"while/lstm_cell_677/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_677/mul_1Mulwhile/lstm_cell_677/Sigmoid:y:0&while/lstm_cell_677/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_677/add_1AddV2while/lstm_cell_677/mul:z:0while/lstm_cell_677/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_677/Sigmoid_2Sigmoid"while/lstm_cell_677/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_677/Relu_1Reluwhile/lstm_cell_677/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_677/mul_2Mul!while/lstm_cell_677/Sigmoid_2:y:0(while/lstm_cell_677/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_677/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_677/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_677/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_677/BiasAdd/ReadVariableOp*^while/lstm_cell_677/MatMul/ReadVariableOp,^while/lstm_cell_677/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_677_biasadd_readvariableop_resource5while_lstm_cell_677_biasadd_readvariableop_resource_0"n
4while_lstm_cell_677_matmul_1_readvariableop_resource6while_lstm_cell_677_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_677_matmul_readvariableop_resource4while_lstm_cell_677_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_677/BiasAdd/ReadVariableOp*while/lstm_cell_677/BiasAdd/ReadVariableOp2V
)while/lstm_cell_677/MatMul/ReadVariableOp)while/lstm_cell_677/MatMul/ReadVariableOp2Z
+while/lstm_cell_677/MatMul_1/ReadVariableOp+while/lstm_cell_677/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
K__inference_sequential_225_layer_call_and_return_conditional_losses_4278176

inputsH
5lstm_675_lstm_cell_675_matmul_readvariableop_resource:	?J
7lstm_675_lstm_cell_675_matmul_1_readvariableop_resource:	d?E
6lstm_675_lstm_cell_675_biasadd_readvariableop_resource:	?H
5lstm_676_lstm_cell_676_matmul_readvariableop_resource:	d?J
7lstm_676_lstm_cell_676_matmul_1_readvariableop_resource:	2?E
6lstm_676_lstm_cell_676_biasadd_readvariableop_resource:	?G
5lstm_677_lstm_cell_677_matmul_readvariableop_resource:2(I
7lstm_677_lstm_cell_677_matmul_1_readvariableop_resource:
(D
6lstm_677_lstm_cell_677_biasadd_readvariableop_resource:(:
(dense_225_matmul_readvariableop_resource:
7
)dense_225_biasadd_readvariableop_resource:
identity?? dense_225/BiasAdd/ReadVariableOp?dense_225/MatMul/ReadVariableOp?-lstm_675/lstm_cell_675/BiasAdd/ReadVariableOp?,lstm_675/lstm_cell_675/MatMul/ReadVariableOp?.lstm_675/lstm_cell_675/MatMul_1/ReadVariableOp?lstm_675/while?-lstm_676/lstm_cell_676/BiasAdd/ReadVariableOp?,lstm_676/lstm_cell_676/MatMul/ReadVariableOp?.lstm_676/lstm_cell_676/MatMul_1/ReadVariableOp?lstm_676/while?-lstm_677/lstm_cell_677/BiasAdd/ReadVariableOp?,lstm_677/lstm_cell_677/MatMul/ReadVariableOp?.lstm_677/lstm_cell_677/MatMul_1/ReadVariableOp?lstm_677/whileD
lstm_675/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_675/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_675/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_675/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_675/strided_sliceStridedSlicelstm_675/Shape:output:0%lstm_675/strided_slice/stack:output:0'lstm_675/strided_slice/stack_1:output:0'lstm_675/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_675/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_675/zeros/packedPacklstm_675/strided_slice:output:0 lstm_675/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_675/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_675/zerosFilllstm_675/zeros/packed:output:0lstm_675/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_675/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_675/zeros_1/packedPacklstm_675/strided_slice:output:0"lstm_675/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_675/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_675/zeros_1Fill lstm_675/zeros_1/packed:output:0lstm_675/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_675/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_675/transpose	Transposeinputs lstm_675/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_675/Shape_1Shapelstm_675/transpose:y:0*
T0*
_output_shapes
:h
lstm_675/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_675/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_675/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_675/strided_slice_1StridedSlicelstm_675/Shape_1:output:0'lstm_675/strided_slice_1/stack:output:0)lstm_675/strided_slice_1/stack_1:output:0)lstm_675/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_675/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_675/TensorArrayV2TensorListReserve-lstm_675/TensorArrayV2/element_shape:output:0!lstm_675/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_675/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_675/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_675/transpose:y:0Glstm_675/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_675/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_675/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_675/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_675/strided_slice_2StridedSlicelstm_675/transpose:y:0'lstm_675/strided_slice_2/stack:output:0)lstm_675/strided_slice_2/stack_1:output:0)lstm_675/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_675/lstm_cell_675/MatMul/ReadVariableOpReadVariableOp5lstm_675_lstm_cell_675_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_675/lstm_cell_675/MatMulMatMul!lstm_675/strided_slice_2:output:04lstm_675/lstm_cell_675/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_675/lstm_cell_675/MatMul_1/ReadVariableOpReadVariableOp7lstm_675_lstm_cell_675_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_675/lstm_cell_675/MatMul_1MatMullstm_675/zeros:output:06lstm_675/lstm_cell_675/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_675/lstm_cell_675/addAddV2'lstm_675/lstm_cell_675/MatMul:product:0)lstm_675/lstm_cell_675/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_675/lstm_cell_675/BiasAdd/ReadVariableOpReadVariableOp6lstm_675_lstm_cell_675_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_675/lstm_cell_675/BiasAddBiasAddlstm_675/lstm_cell_675/add:z:05lstm_675/lstm_cell_675/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_675/lstm_cell_675/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_675/lstm_cell_675/splitSplit/lstm_675/lstm_cell_675/split/split_dim:output:0'lstm_675/lstm_cell_675/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_675/lstm_cell_675/SigmoidSigmoid%lstm_675/lstm_cell_675/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_675/lstm_cell_675/Sigmoid_1Sigmoid%lstm_675/lstm_cell_675/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_675/lstm_cell_675/mulMul$lstm_675/lstm_cell_675/Sigmoid_1:y:0lstm_675/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_675/lstm_cell_675/ReluRelu%lstm_675/lstm_cell_675/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_675/lstm_cell_675/mul_1Mul"lstm_675/lstm_cell_675/Sigmoid:y:0)lstm_675/lstm_cell_675/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_675/lstm_cell_675/add_1AddV2lstm_675/lstm_cell_675/mul:z:0 lstm_675/lstm_cell_675/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_675/lstm_cell_675/Sigmoid_2Sigmoid%lstm_675/lstm_cell_675/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_675/lstm_cell_675/Relu_1Relu lstm_675/lstm_cell_675/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_675/lstm_cell_675/mul_2Mul$lstm_675/lstm_cell_675/Sigmoid_2:y:0+lstm_675/lstm_cell_675/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_675/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_675/TensorArrayV2_1TensorListReserve/lstm_675/TensorArrayV2_1/element_shape:output:0!lstm_675/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_675/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_675/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_675/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_675/whileWhile$lstm_675/while/loop_counter:output:0*lstm_675/while/maximum_iterations:output:0lstm_675/time:output:0!lstm_675/TensorArrayV2_1:handle:0lstm_675/zeros:output:0lstm_675/zeros_1:output:0!lstm_675/strided_slice_1:output:0@lstm_675/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_675_lstm_cell_675_matmul_readvariableop_resource7lstm_675_lstm_cell_675_matmul_1_readvariableop_resource6lstm_675_lstm_cell_675_biasadd_readvariableop_resource*
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
lstm_675_while_body_4277808*'
condR
lstm_675_while_cond_4277807*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_675/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_675/TensorArrayV2Stack/TensorListStackTensorListStacklstm_675/while:output:3Blstm_675/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_675/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_675/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_675/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_675/strided_slice_3StridedSlice4lstm_675/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_675/strided_slice_3/stack:output:0)lstm_675/strided_slice_3/stack_1:output:0)lstm_675/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_675/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_675/transpose_1	Transpose4lstm_675/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_675/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_675/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_676/ShapeShapelstm_675/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_676/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_676/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_676/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_676/strided_sliceStridedSlicelstm_676/Shape:output:0%lstm_676/strided_slice/stack:output:0'lstm_676/strided_slice/stack_1:output:0'lstm_676/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_676/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_676/zeros/packedPacklstm_676/strided_slice:output:0 lstm_676/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_676/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_676/zerosFilllstm_676/zeros/packed:output:0lstm_676/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_676/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_676/zeros_1/packedPacklstm_676/strided_slice:output:0"lstm_676/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_676/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_676/zeros_1Fill lstm_676/zeros_1/packed:output:0lstm_676/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_676/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_676/transpose	Transposelstm_675/transpose_1:y:0 lstm_676/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_676/Shape_1Shapelstm_676/transpose:y:0*
T0*
_output_shapes
:h
lstm_676/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_676/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_676/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_676/strided_slice_1StridedSlicelstm_676/Shape_1:output:0'lstm_676/strided_slice_1/stack:output:0)lstm_676/strided_slice_1/stack_1:output:0)lstm_676/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_676/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_676/TensorArrayV2TensorListReserve-lstm_676/TensorArrayV2/element_shape:output:0!lstm_676/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_676/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_676/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_676/transpose:y:0Glstm_676/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_676/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_676/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_676/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_676/strided_slice_2StridedSlicelstm_676/transpose:y:0'lstm_676/strided_slice_2/stack:output:0)lstm_676/strided_slice_2/stack_1:output:0)lstm_676/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_676/lstm_cell_676/MatMul/ReadVariableOpReadVariableOp5lstm_676_lstm_cell_676_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_676/lstm_cell_676/MatMulMatMul!lstm_676/strided_slice_2:output:04lstm_676/lstm_cell_676/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_676/lstm_cell_676/MatMul_1/ReadVariableOpReadVariableOp7lstm_676_lstm_cell_676_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_676/lstm_cell_676/MatMul_1MatMullstm_676/zeros:output:06lstm_676/lstm_cell_676/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_676/lstm_cell_676/addAddV2'lstm_676/lstm_cell_676/MatMul:product:0)lstm_676/lstm_cell_676/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_676/lstm_cell_676/BiasAdd/ReadVariableOpReadVariableOp6lstm_676_lstm_cell_676_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_676/lstm_cell_676/BiasAddBiasAddlstm_676/lstm_cell_676/add:z:05lstm_676/lstm_cell_676/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_676/lstm_cell_676/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_676/lstm_cell_676/splitSplit/lstm_676/lstm_cell_676/split/split_dim:output:0'lstm_676/lstm_cell_676/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_676/lstm_cell_676/SigmoidSigmoid%lstm_676/lstm_cell_676/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_676/lstm_cell_676/Sigmoid_1Sigmoid%lstm_676/lstm_cell_676/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_676/lstm_cell_676/mulMul$lstm_676/lstm_cell_676/Sigmoid_1:y:0lstm_676/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_676/lstm_cell_676/ReluRelu%lstm_676/lstm_cell_676/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_676/lstm_cell_676/mul_1Mul"lstm_676/lstm_cell_676/Sigmoid:y:0)lstm_676/lstm_cell_676/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_676/lstm_cell_676/add_1AddV2lstm_676/lstm_cell_676/mul:z:0 lstm_676/lstm_cell_676/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_676/lstm_cell_676/Sigmoid_2Sigmoid%lstm_676/lstm_cell_676/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_676/lstm_cell_676/Relu_1Relu lstm_676/lstm_cell_676/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_676/lstm_cell_676/mul_2Mul$lstm_676/lstm_cell_676/Sigmoid_2:y:0+lstm_676/lstm_cell_676/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_676/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_676/TensorArrayV2_1TensorListReserve/lstm_676/TensorArrayV2_1/element_shape:output:0!lstm_676/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_676/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_676/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_676/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_676/whileWhile$lstm_676/while/loop_counter:output:0*lstm_676/while/maximum_iterations:output:0lstm_676/time:output:0!lstm_676/TensorArrayV2_1:handle:0lstm_676/zeros:output:0lstm_676/zeros_1:output:0!lstm_676/strided_slice_1:output:0@lstm_676/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_676_lstm_cell_676_matmul_readvariableop_resource7lstm_676_lstm_cell_676_matmul_1_readvariableop_resource6lstm_676_lstm_cell_676_biasadd_readvariableop_resource*
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
lstm_676_while_body_4277947*'
condR
lstm_676_while_cond_4277946*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_676/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_676/TensorArrayV2Stack/TensorListStackTensorListStacklstm_676/while:output:3Blstm_676/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_676/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_676/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_676/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_676/strided_slice_3StridedSlice4lstm_676/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_676/strided_slice_3/stack:output:0)lstm_676/strided_slice_3/stack_1:output:0)lstm_676/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_676/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_676/transpose_1	Transpose4lstm_676/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_676/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_676/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_677/ShapeShapelstm_676/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_677/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_677/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_677/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_677/strided_sliceStridedSlicelstm_677/Shape:output:0%lstm_677/strided_slice/stack:output:0'lstm_677/strided_slice/stack_1:output:0'lstm_677/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_677/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_677/zeros/packedPacklstm_677/strided_slice:output:0 lstm_677/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_677/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_677/zerosFilllstm_677/zeros/packed:output:0lstm_677/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_677/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_677/zeros_1/packedPacklstm_677/strided_slice:output:0"lstm_677/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_677/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_677/zeros_1Fill lstm_677/zeros_1/packed:output:0lstm_677/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_677/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_677/transpose	Transposelstm_676/transpose_1:y:0 lstm_677/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_677/Shape_1Shapelstm_677/transpose:y:0*
T0*
_output_shapes
:h
lstm_677/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_677/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_677/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_677/strided_slice_1StridedSlicelstm_677/Shape_1:output:0'lstm_677/strided_slice_1/stack:output:0)lstm_677/strided_slice_1/stack_1:output:0)lstm_677/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_677/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_677/TensorArrayV2TensorListReserve-lstm_677/TensorArrayV2/element_shape:output:0!lstm_677/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_677/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_677/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_677/transpose:y:0Glstm_677/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_677/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_677/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_677/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_677/strided_slice_2StridedSlicelstm_677/transpose:y:0'lstm_677/strided_slice_2/stack:output:0)lstm_677/strided_slice_2/stack_1:output:0)lstm_677/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_677/lstm_cell_677/MatMul/ReadVariableOpReadVariableOp5lstm_677_lstm_cell_677_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_677/lstm_cell_677/MatMulMatMul!lstm_677/strided_slice_2:output:04lstm_677/lstm_cell_677/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_677/lstm_cell_677/MatMul_1/ReadVariableOpReadVariableOp7lstm_677_lstm_cell_677_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_677/lstm_cell_677/MatMul_1MatMullstm_677/zeros:output:06lstm_677/lstm_cell_677/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_677/lstm_cell_677/addAddV2'lstm_677/lstm_cell_677/MatMul:product:0)lstm_677/lstm_cell_677/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_677/lstm_cell_677/BiasAdd/ReadVariableOpReadVariableOp6lstm_677_lstm_cell_677_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_677/lstm_cell_677/BiasAddBiasAddlstm_677/lstm_cell_677/add:z:05lstm_677/lstm_cell_677/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_677/lstm_cell_677/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_677/lstm_cell_677/splitSplit/lstm_677/lstm_cell_677/split/split_dim:output:0'lstm_677/lstm_cell_677/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_677/lstm_cell_677/SigmoidSigmoid%lstm_677/lstm_cell_677/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_677/lstm_cell_677/Sigmoid_1Sigmoid%lstm_677/lstm_cell_677/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_677/lstm_cell_677/mulMul$lstm_677/lstm_cell_677/Sigmoid_1:y:0lstm_677/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_677/lstm_cell_677/ReluRelu%lstm_677/lstm_cell_677/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_677/lstm_cell_677/mul_1Mul"lstm_677/lstm_cell_677/Sigmoid:y:0)lstm_677/lstm_cell_677/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_677/lstm_cell_677/add_1AddV2lstm_677/lstm_cell_677/mul:z:0 lstm_677/lstm_cell_677/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_677/lstm_cell_677/Sigmoid_2Sigmoid%lstm_677/lstm_cell_677/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_677/lstm_cell_677/Relu_1Relu lstm_677/lstm_cell_677/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_677/lstm_cell_677/mul_2Mul$lstm_677/lstm_cell_677/Sigmoid_2:y:0+lstm_677/lstm_cell_677/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_677/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_677/TensorArrayV2_1TensorListReserve/lstm_677/TensorArrayV2_1/element_shape:output:0!lstm_677/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_677/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_677/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_677/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_677/whileWhile$lstm_677/while/loop_counter:output:0*lstm_677/while/maximum_iterations:output:0lstm_677/time:output:0!lstm_677/TensorArrayV2_1:handle:0lstm_677/zeros:output:0lstm_677/zeros_1:output:0!lstm_677/strided_slice_1:output:0@lstm_677/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_677_lstm_cell_677_matmul_readvariableop_resource7lstm_677_lstm_cell_677_matmul_1_readvariableop_resource6lstm_677_lstm_cell_677_biasadd_readvariableop_resource*
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
lstm_677_while_body_4278086*'
condR
lstm_677_while_cond_4278085*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_677/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_677/TensorArrayV2Stack/TensorListStackTensorListStacklstm_677/while:output:3Blstm_677/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_677/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_677/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_677/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_677/strided_slice_3StridedSlice4lstm_677/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_677/strided_slice_3/stack:output:0)lstm_677/strided_slice_3/stack_1:output:0)lstm_677/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_677/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_677/transpose_1	Transpose4lstm_677/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_677/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_677/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_225/MatMul/ReadVariableOpReadVariableOp(dense_225_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_225/MatMulMatMul!lstm_677/strided_slice_3:output:0'dense_225/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_225/BiasAdd/ReadVariableOpReadVariableOp)dense_225_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_225/BiasAddBiasAdddense_225/MatMul:product:0(dense_225/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_225/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_225/BiasAdd/ReadVariableOp ^dense_225/MatMul/ReadVariableOp.^lstm_675/lstm_cell_675/BiasAdd/ReadVariableOp-^lstm_675/lstm_cell_675/MatMul/ReadVariableOp/^lstm_675/lstm_cell_675/MatMul_1/ReadVariableOp^lstm_675/while.^lstm_676/lstm_cell_676/BiasAdd/ReadVariableOp-^lstm_676/lstm_cell_676/MatMul/ReadVariableOp/^lstm_676/lstm_cell_676/MatMul_1/ReadVariableOp^lstm_676/while.^lstm_677/lstm_cell_677/BiasAdd/ReadVariableOp-^lstm_677/lstm_cell_677/MatMul/ReadVariableOp/^lstm_677/lstm_cell_677/MatMul_1/ReadVariableOp^lstm_677/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_225/BiasAdd/ReadVariableOp dense_225/BiasAdd/ReadVariableOp2B
dense_225/MatMul/ReadVariableOpdense_225/MatMul/ReadVariableOp2^
-lstm_675/lstm_cell_675/BiasAdd/ReadVariableOp-lstm_675/lstm_cell_675/BiasAdd/ReadVariableOp2\
,lstm_675/lstm_cell_675/MatMul/ReadVariableOp,lstm_675/lstm_cell_675/MatMul/ReadVariableOp2`
.lstm_675/lstm_cell_675/MatMul_1/ReadVariableOp.lstm_675/lstm_cell_675/MatMul_1/ReadVariableOp2 
lstm_675/whilelstm_675/while2^
-lstm_676/lstm_cell_676/BiasAdd/ReadVariableOp-lstm_676/lstm_cell_676/BiasAdd/ReadVariableOp2\
,lstm_676/lstm_cell_676/MatMul/ReadVariableOp,lstm_676/lstm_cell_676/MatMul/ReadVariableOp2`
.lstm_676/lstm_cell_676/MatMul_1/ReadVariableOp.lstm_676/lstm_cell_676/MatMul_1/ReadVariableOp2 
lstm_676/whilelstm_676/while2^
-lstm_677/lstm_cell_677/BiasAdd/ReadVariableOp-lstm_677/lstm_cell_677/BiasAdd/ReadVariableOp2\
,lstm_677/lstm_cell_677/MatMul/ReadVariableOp,lstm_677/lstm_cell_677/MatMul/ReadVariableOp2`
.lstm_677/lstm_cell_677/MatMul_1/ReadVariableOp.lstm_677/lstm_cell_677/MatMul_1/ReadVariableOp2 
lstm_677/whilelstm_677/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?C
?

lstm_677_while_body_4278086.
*lstm_677_while_lstm_677_while_loop_counter4
0lstm_677_while_lstm_677_while_maximum_iterations
lstm_677_while_placeholder 
lstm_677_while_placeholder_1 
lstm_677_while_placeholder_2 
lstm_677_while_placeholder_3-
)lstm_677_while_lstm_677_strided_slice_1_0i
elstm_677_while_tensorarrayv2read_tensorlistgetitem_lstm_677_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_677_while_lstm_cell_677_matmul_readvariableop_resource_0:2(Q
?lstm_677_while_lstm_cell_677_matmul_1_readvariableop_resource_0:
(L
>lstm_677_while_lstm_cell_677_biasadd_readvariableop_resource_0:(
lstm_677_while_identity
lstm_677_while_identity_1
lstm_677_while_identity_2
lstm_677_while_identity_3
lstm_677_while_identity_4
lstm_677_while_identity_5+
'lstm_677_while_lstm_677_strided_slice_1g
clstm_677_while_tensorarrayv2read_tensorlistgetitem_lstm_677_tensorarrayunstack_tensorlistfromtensorM
;lstm_677_while_lstm_cell_677_matmul_readvariableop_resource:2(O
=lstm_677_while_lstm_cell_677_matmul_1_readvariableop_resource:
(J
<lstm_677_while_lstm_cell_677_biasadd_readvariableop_resource:(??3lstm_677/while/lstm_cell_677/BiasAdd/ReadVariableOp?2lstm_677/while/lstm_cell_677/MatMul/ReadVariableOp?4lstm_677/while/lstm_cell_677/MatMul_1/ReadVariableOp?
@lstm_677/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_677/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_677_while_tensorarrayv2read_tensorlistgetitem_lstm_677_tensorarrayunstack_tensorlistfromtensor_0lstm_677_while_placeholderIlstm_677/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_677/while/lstm_cell_677/MatMul/ReadVariableOpReadVariableOp=lstm_677_while_lstm_cell_677_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_677/while/lstm_cell_677/MatMulMatMul9lstm_677/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_677/while/lstm_cell_677/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_677/while/lstm_cell_677/MatMul_1/ReadVariableOpReadVariableOp?lstm_677_while_lstm_cell_677_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_677/while/lstm_cell_677/MatMul_1MatMullstm_677_while_placeholder_2<lstm_677/while/lstm_cell_677/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_677/while/lstm_cell_677/addAddV2-lstm_677/while/lstm_cell_677/MatMul:product:0/lstm_677/while/lstm_cell_677/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_677/while/lstm_cell_677/BiasAdd/ReadVariableOpReadVariableOp>lstm_677_while_lstm_cell_677_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_677/while/lstm_cell_677/BiasAddBiasAdd$lstm_677/while/lstm_cell_677/add:z:0;lstm_677/while/lstm_cell_677/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_677/while/lstm_cell_677/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_677/while/lstm_cell_677/splitSplit5lstm_677/while/lstm_cell_677/split/split_dim:output:0-lstm_677/while/lstm_cell_677/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_677/while/lstm_cell_677/SigmoidSigmoid+lstm_677/while/lstm_cell_677/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_677/while/lstm_cell_677/Sigmoid_1Sigmoid+lstm_677/while/lstm_cell_677/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_677/while/lstm_cell_677/mulMul*lstm_677/while/lstm_cell_677/Sigmoid_1:y:0lstm_677_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_677/while/lstm_cell_677/ReluRelu+lstm_677/while/lstm_cell_677/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_677/while/lstm_cell_677/mul_1Mul(lstm_677/while/lstm_cell_677/Sigmoid:y:0/lstm_677/while/lstm_cell_677/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_677/while/lstm_cell_677/add_1AddV2$lstm_677/while/lstm_cell_677/mul:z:0&lstm_677/while/lstm_cell_677/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_677/while/lstm_cell_677/Sigmoid_2Sigmoid+lstm_677/while/lstm_cell_677/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_677/while/lstm_cell_677/Relu_1Relu&lstm_677/while/lstm_cell_677/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_677/while/lstm_cell_677/mul_2Mul*lstm_677/while/lstm_cell_677/Sigmoid_2:y:01lstm_677/while/lstm_cell_677/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_677/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_677_while_placeholder_1lstm_677_while_placeholder&lstm_677/while/lstm_cell_677/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_677/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_677/while/addAddV2lstm_677_while_placeholderlstm_677/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_677/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_677/while/add_1AddV2*lstm_677_while_lstm_677_while_loop_counterlstm_677/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_677/while/IdentityIdentitylstm_677/while/add_1:z:0^lstm_677/while/NoOp*
T0*
_output_shapes
: ?
lstm_677/while/Identity_1Identity0lstm_677_while_lstm_677_while_maximum_iterations^lstm_677/while/NoOp*
T0*
_output_shapes
: t
lstm_677/while/Identity_2Identitylstm_677/while/add:z:0^lstm_677/while/NoOp*
T0*
_output_shapes
: ?
lstm_677/while/Identity_3IdentityClstm_677/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_677/while/NoOp*
T0*
_output_shapes
: ?
lstm_677/while/Identity_4Identity&lstm_677/while/lstm_cell_677/mul_2:z:0^lstm_677/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_677/while/Identity_5Identity&lstm_677/while/lstm_cell_677/add_1:z:0^lstm_677/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_677/while/NoOpNoOp4^lstm_677/while/lstm_cell_677/BiasAdd/ReadVariableOp3^lstm_677/while/lstm_cell_677/MatMul/ReadVariableOp5^lstm_677/while/lstm_cell_677/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_677_while_identity lstm_677/while/Identity:output:0"?
lstm_677_while_identity_1"lstm_677/while/Identity_1:output:0"?
lstm_677_while_identity_2"lstm_677/while/Identity_2:output:0"?
lstm_677_while_identity_3"lstm_677/while/Identity_3:output:0"?
lstm_677_while_identity_4"lstm_677/while/Identity_4:output:0"?
lstm_677_while_identity_5"lstm_677/while/Identity_5:output:0"T
'lstm_677_while_lstm_677_strided_slice_1)lstm_677_while_lstm_677_strided_slice_1_0"~
<lstm_677_while_lstm_cell_677_biasadd_readvariableop_resource>lstm_677_while_lstm_cell_677_biasadd_readvariableop_resource_0"?
=lstm_677_while_lstm_cell_677_matmul_1_readvariableop_resource?lstm_677_while_lstm_cell_677_matmul_1_readvariableop_resource_0"|
;lstm_677_while_lstm_cell_677_matmul_readvariableop_resource=lstm_677_while_lstm_cell_677_matmul_readvariableop_resource_0"?
clstm_677_while_tensorarrayv2read_tensorlistgetitem_lstm_677_tensorarrayunstack_tensorlistfromtensorelstm_677_while_tensorarrayv2read_tensorlistgetitem_lstm_677_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_677/while/lstm_cell_677/BiasAdd/ReadVariableOp3lstm_677/while/lstm_cell_677/BiasAdd/ReadVariableOp2h
2lstm_677/while/lstm_cell_677/MatMul/ReadVariableOp2lstm_677/while/lstm_cell_677/MatMul/ReadVariableOp2l
4lstm_677/while/lstm_cell_677/MatMul_1/ReadVariableOp4lstm_677/while/lstm_cell_677/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_677_layer_call_fn_4279879

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
E__inference_lstm_677_layer_call_and_return_conditional_losses_4277150o
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

?
lstm_676_while_cond_4278373.
*lstm_676_while_lstm_676_while_loop_counter4
0lstm_676_while_lstm_676_while_maximum_iterations
lstm_676_while_placeholder 
lstm_676_while_placeholder_1 
lstm_676_while_placeholder_2 
lstm_676_while_placeholder_30
,lstm_676_while_less_lstm_676_strided_slice_1G
Clstm_676_while_lstm_676_while_cond_4278373___redundant_placeholder0G
Clstm_676_while_lstm_676_while_cond_4278373___redundant_placeholder1G
Clstm_676_while_lstm_676_while_cond_4278373___redundant_placeholder2G
Clstm_676_while_lstm_676_while_cond_4278373___redundant_placeholder3
lstm_676_while_identity
?
lstm_676/while/LessLesslstm_676_while_placeholder,lstm_676_while_less_lstm_676_strided_slice_1*
T0*
_output_shapes
: ]
lstm_676/while/IdentityIdentitylstm_676/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_676_while_identity lstm_676/while/Identity:output:0*(
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
while_body_4278992
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_675_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_675_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_675_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_675_matmul_readvariableop_resource:	?G
4while_lstm_cell_675_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_675_biasadd_readvariableop_resource:	???*while/lstm_cell_675/BiasAdd/ReadVariableOp?)while/lstm_cell_675/MatMul/ReadVariableOp?+while/lstm_cell_675/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_675/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_675_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_675/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_675/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_675/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_675_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_675/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_675/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_675/addAddV2$while/lstm_cell_675/MatMul:product:0&while/lstm_cell_675/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_675/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_675_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_675/BiasAddBiasAddwhile/lstm_cell_675/add:z:02while/lstm_cell_675/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_675/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_675/splitSplit,while/lstm_cell_675/split/split_dim:output:0$while/lstm_cell_675/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_675/SigmoidSigmoid"while/lstm_cell_675/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_675/Sigmoid_1Sigmoid"while/lstm_cell_675/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_675/mulMul!while/lstm_cell_675/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_675/ReluRelu"while/lstm_cell_675/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_675/mul_1Mulwhile/lstm_cell_675/Sigmoid:y:0&while/lstm_cell_675/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_675/add_1AddV2while/lstm_cell_675/mul:z:0while/lstm_cell_675/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_675/Sigmoid_2Sigmoid"while/lstm_cell_675/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_675/Relu_1Reluwhile/lstm_cell_675/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_675/mul_2Mul!while/lstm_cell_675/Sigmoid_2:y:0(while/lstm_cell_675/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_675/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_675/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_675/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_675/BiasAdd/ReadVariableOp*^while/lstm_cell_675/MatMul/ReadVariableOp,^while/lstm_cell_675/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_675_biasadd_readvariableop_resource5while_lstm_cell_675_biasadd_readvariableop_resource_0"n
4while_lstm_cell_675_matmul_1_readvariableop_resource6while_lstm_cell_675_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_675_matmul_readvariableop_resource4while_lstm_cell_675_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_675/BiasAdd/ReadVariableOp*while/lstm_cell_675/BiasAdd/ReadVariableOp2V
)while/lstm_cell_675/MatMul/ReadVariableOp)while/lstm_cell_675/MatMul/ReadVariableOp2Z
+while/lstm_cell_675/MatMul_1/ReadVariableOp+while/lstm_cell_675/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_4280223
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4280223___redundant_placeholder05
1while_while_cond_4280223___redundant_placeholder15
1while_while_cond_4280223___redundant_placeholder25
1while_while_cond_4280223___redundant_placeholder3
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
while_cond_4275706
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4275706___redundant_placeholder05
1while_while_cond_4275706___redundant_placeholder15
1while_while_cond_4275706___redundant_placeholder25
1while_while_cond_4275706___redundant_placeholder3
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
E__inference_lstm_676_layer_call_and_return_conditional_losses_4279835

inputs?
,lstm_cell_676_matmul_readvariableop_resource:	d?A
.lstm_cell_676_matmul_1_readvariableop_resource:	2?<
-lstm_cell_676_biasadd_readvariableop_resource:	?
identity??$lstm_cell_676/BiasAdd/ReadVariableOp?#lstm_cell_676/MatMul/ReadVariableOp?%lstm_cell_676/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_676/MatMul/ReadVariableOpReadVariableOp,lstm_cell_676_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_676/MatMulMatMulstrided_slice_2:output:0+lstm_cell_676/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_676/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_676_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_676/MatMul_1MatMulzeros:output:0-lstm_cell_676/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_676/addAddV2lstm_cell_676/MatMul:product:0 lstm_cell_676/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_676/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_676_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_676/BiasAddBiasAddlstm_cell_676/add:z:0,lstm_cell_676/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_676/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_676/splitSplit&lstm_cell_676/split/split_dim:output:0lstm_cell_676/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_676/SigmoidSigmoidlstm_cell_676/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_676/Sigmoid_1Sigmoidlstm_cell_676/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_676/mulMullstm_cell_676/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_676/ReluRelulstm_cell_676/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_676/mul_1Mullstm_cell_676/Sigmoid:y:0 lstm_cell_676/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_676/add_1AddV2lstm_cell_676/mul:z:0lstm_cell_676/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_676/Sigmoid_2Sigmoidlstm_cell_676/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_676/Relu_1Relulstm_cell_676/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_676/mul_2Mullstm_cell_676/Sigmoid_2:y:0"lstm_cell_676/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_676_matmul_readvariableop_resource.lstm_cell_676_matmul_1_readvariableop_resource-lstm_cell_676_biasadd_readvariableop_resource*
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
while_body_4279751*
condR
while_cond_4279750*K
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
NoOpNoOp%^lstm_cell_676/BiasAdd/ReadVariableOp$^lstm_cell_676/MatMul/ReadVariableOp&^lstm_cell_676/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_676/BiasAdd/ReadVariableOp$lstm_cell_676/BiasAdd/ReadVariableOp2J
#lstm_cell_676/MatMul/ReadVariableOp#lstm_cell_676/MatMul/ReadVariableOp2N
%lstm_cell_676/MatMul_1/ReadVariableOp%lstm_cell_676/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
while_cond_4276699
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4276699___redundant_placeholder05
1while_while_cond_4276699___redundant_placeholder15
1while_while_cond_4276699___redundant_placeholder25
1while_while_cond_4276699___redundant_placeholder3
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
*sequential_225_lstm_675_while_body_4275067L
Hsequential_225_lstm_675_while_sequential_225_lstm_675_while_loop_counterR
Nsequential_225_lstm_675_while_sequential_225_lstm_675_while_maximum_iterations-
)sequential_225_lstm_675_while_placeholder/
+sequential_225_lstm_675_while_placeholder_1/
+sequential_225_lstm_675_while_placeholder_2/
+sequential_225_lstm_675_while_placeholder_3K
Gsequential_225_lstm_675_while_sequential_225_lstm_675_strided_slice_1_0?
?sequential_225_lstm_675_while_tensorarrayv2read_tensorlistgetitem_sequential_225_lstm_675_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_225_lstm_675_while_lstm_cell_675_matmul_readvariableop_resource_0:	?a
Nsequential_225_lstm_675_while_lstm_cell_675_matmul_1_readvariableop_resource_0:	d?\
Msequential_225_lstm_675_while_lstm_cell_675_biasadd_readvariableop_resource_0:	?*
&sequential_225_lstm_675_while_identity,
(sequential_225_lstm_675_while_identity_1,
(sequential_225_lstm_675_while_identity_2,
(sequential_225_lstm_675_while_identity_3,
(sequential_225_lstm_675_while_identity_4,
(sequential_225_lstm_675_while_identity_5I
Esequential_225_lstm_675_while_sequential_225_lstm_675_strided_slice_1?
?sequential_225_lstm_675_while_tensorarrayv2read_tensorlistgetitem_sequential_225_lstm_675_tensorarrayunstack_tensorlistfromtensor]
Jsequential_225_lstm_675_while_lstm_cell_675_matmul_readvariableop_resource:	?_
Lsequential_225_lstm_675_while_lstm_cell_675_matmul_1_readvariableop_resource:	d?Z
Ksequential_225_lstm_675_while_lstm_cell_675_biasadd_readvariableop_resource:	???Bsequential_225/lstm_675/while/lstm_cell_675/BiasAdd/ReadVariableOp?Asequential_225/lstm_675/while/lstm_cell_675/MatMul/ReadVariableOp?Csequential_225/lstm_675/while/lstm_cell_675/MatMul_1/ReadVariableOp?
Osequential_225/lstm_675/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
Asequential_225/lstm_675/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_225_lstm_675_while_tensorarrayv2read_tensorlistgetitem_sequential_225_lstm_675_tensorarrayunstack_tensorlistfromtensor_0)sequential_225_lstm_675_while_placeholderXsequential_225/lstm_675/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
Asequential_225/lstm_675/while/lstm_cell_675/MatMul/ReadVariableOpReadVariableOpLsequential_225_lstm_675_while_lstm_cell_675_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
2sequential_225/lstm_675/while/lstm_cell_675/MatMulMatMulHsequential_225/lstm_675/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_225/lstm_675/while/lstm_cell_675/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_225/lstm_675/while/lstm_cell_675/MatMul_1/ReadVariableOpReadVariableOpNsequential_225_lstm_675_while_lstm_cell_675_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
4sequential_225/lstm_675/while/lstm_cell_675/MatMul_1MatMul+sequential_225_lstm_675_while_placeholder_2Ksequential_225/lstm_675/while/lstm_cell_675/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_225/lstm_675/while/lstm_cell_675/addAddV2<sequential_225/lstm_675/while/lstm_cell_675/MatMul:product:0>sequential_225/lstm_675/while/lstm_cell_675/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_225/lstm_675/while/lstm_cell_675/BiasAdd/ReadVariableOpReadVariableOpMsequential_225_lstm_675_while_lstm_cell_675_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_225/lstm_675/while/lstm_cell_675/BiasAddBiasAdd3sequential_225/lstm_675/while/lstm_cell_675/add:z:0Jsequential_225/lstm_675/while/lstm_cell_675/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_225/lstm_675/while/lstm_cell_675/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_225/lstm_675/while/lstm_cell_675/splitSplitDsequential_225/lstm_675/while/lstm_cell_675/split/split_dim:output:0<sequential_225/lstm_675/while/lstm_cell_675/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
3sequential_225/lstm_675/while/lstm_cell_675/SigmoidSigmoid:sequential_225/lstm_675/while/lstm_cell_675/split:output:0*
T0*'
_output_shapes
:?????????d?
5sequential_225/lstm_675/while/lstm_cell_675/Sigmoid_1Sigmoid:sequential_225/lstm_675/while/lstm_cell_675/split:output:1*
T0*'
_output_shapes
:?????????d?
/sequential_225/lstm_675/while/lstm_cell_675/mulMul9sequential_225/lstm_675/while/lstm_cell_675/Sigmoid_1:y:0+sequential_225_lstm_675_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
0sequential_225/lstm_675/while/lstm_cell_675/ReluRelu:sequential_225/lstm_675/while/lstm_cell_675/split:output:2*
T0*'
_output_shapes
:?????????d?
1sequential_225/lstm_675/while/lstm_cell_675/mul_1Mul7sequential_225/lstm_675/while/lstm_cell_675/Sigmoid:y:0>sequential_225/lstm_675/while/lstm_cell_675/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
1sequential_225/lstm_675/while/lstm_cell_675/add_1AddV23sequential_225/lstm_675/while/lstm_cell_675/mul:z:05sequential_225/lstm_675/while/lstm_cell_675/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
5sequential_225/lstm_675/while/lstm_cell_675/Sigmoid_2Sigmoid:sequential_225/lstm_675/while/lstm_cell_675/split:output:3*
T0*'
_output_shapes
:?????????d?
2sequential_225/lstm_675/while/lstm_cell_675/Relu_1Relu5sequential_225/lstm_675/while/lstm_cell_675/add_1:z:0*
T0*'
_output_shapes
:?????????d?
1sequential_225/lstm_675/while/lstm_cell_675/mul_2Mul9sequential_225/lstm_675/while/lstm_cell_675/Sigmoid_2:y:0@sequential_225/lstm_675/while/lstm_cell_675/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
Bsequential_225/lstm_675/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_225_lstm_675_while_placeholder_1)sequential_225_lstm_675_while_placeholder5sequential_225/lstm_675/while/lstm_cell_675/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_225/lstm_675/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_225/lstm_675/while/addAddV2)sequential_225_lstm_675_while_placeholder,sequential_225/lstm_675/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_225/lstm_675/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_225/lstm_675/while/add_1AddV2Hsequential_225_lstm_675_while_sequential_225_lstm_675_while_loop_counter.sequential_225/lstm_675/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_225/lstm_675/while/IdentityIdentity'sequential_225/lstm_675/while/add_1:z:0#^sequential_225/lstm_675/while/NoOp*
T0*
_output_shapes
: ?
(sequential_225/lstm_675/while/Identity_1IdentityNsequential_225_lstm_675_while_sequential_225_lstm_675_while_maximum_iterations#^sequential_225/lstm_675/while/NoOp*
T0*
_output_shapes
: ?
(sequential_225/lstm_675/while/Identity_2Identity%sequential_225/lstm_675/while/add:z:0#^sequential_225/lstm_675/while/NoOp*
T0*
_output_shapes
: ?
(sequential_225/lstm_675/while/Identity_3IdentityRsequential_225/lstm_675/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_225/lstm_675/while/NoOp*
T0*
_output_shapes
: ?
(sequential_225/lstm_675/while/Identity_4Identity5sequential_225/lstm_675/while/lstm_cell_675/mul_2:z:0#^sequential_225/lstm_675/while/NoOp*
T0*'
_output_shapes
:?????????d?
(sequential_225/lstm_675/while/Identity_5Identity5sequential_225/lstm_675/while/lstm_cell_675/add_1:z:0#^sequential_225/lstm_675/while/NoOp*
T0*'
_output_shapes
:?????????d?
"sequential_225/lstm_675/while/NoOpNoOpC^sequential_225/lstm_675/while/lstm_cell_675/BiasAdd/ReadVariableOpB^sequential_225/lstm_675/while/lstm_cell_675/MatMul/ReadVariableOpD^sequential_225/lstm_675/while/lstm_cell_675/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_225_lstm_675_while_identity/sequential_225/lstm_675/while/Identity:output:0"]
(sequential_225_lstm_675_while_identity_11sequential_225/lstm_675/while/Identity_1:output:0"]
(sequential_225_lstm_675_while_identity_21sequential_225/lstm_675/while/Identity_2:output:0"]
(sequential_225_lstm_675_while_identity_31sequential_225/lstm_675/while/Identity_3:output:0"]
(sequential_225_lstm_675_while_identity_41sequential_225/lstm_675/while/Identity_4:output:0"]
(sequential_225_lstm_675_while_identity_51sequential_225/lstm_675/while/Identity_5:output:0"?
Ksequential_225_lstm_675_while_lstm_cell_675_biasadd_readvariableop_resourceMsequential_225_lstm_675_while_lstm_cell_675_biasadd_readvariableop_resource_0"?
Lsequential_225_lstm_675_while_lstm_cell_675_matmul_1_readvariableop_resourceNsequential_225_lstm_675_while_lstm_cell_675_matmul_1_readvariableop_resource_0"?
Jsequential_225_lstm_675_while_lstm_cell_675_matmul_readvariableop_resourceLsequential_225_lstm_675_while_lstm_cell_675_matmul_readvariableop_resource_0"?
Esequential_225_lstm_675_while_sequential_225_lstm_675_strided_slice_1Gsequential_225_lstm_675_while_sequential_225_lstm_675_strided_slice_1_0"?
?sequential_225_lstm_675_while_tensorarrayv2read_tensorlistgetitem_sequential_225_lstm_675_tensorarrayunstack_tensorlistfromtensor?sequential_225_lstm_675_while_tensorarrayv2read_tensorlistgetitem_sequential_225_lstm_675_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2?
Bsequential_225/lstm_675/while/lstm_cell_675/BiasAdd/ReadVariableOpBsequential_225/lstm_675/while/lstm_cell_675/BiasAdd/ReadVariableOp2?
Asequential_225/lstm_675/while/lstm_cell_675/MatMul/ReadVariableOpAsequential_225/lstm_675/while/lstm_cell_675/MatMul/ReadVariableOp2?
Csequential_225/lstm_675/while/lstm_cell_675/MatMul_1/ReadVariableOpCsequential_225/lstm_675/while/lstm_cell_675/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_677_layer_call_fn_4279846
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
E__inference_lstm_677_layer_call_and_return_conditional_losses_4276285o
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
E__inference_lstm_677_layer_call_and_return_conditional_losses_4276476

inputs'
lstm_cell_677_4276394:2('
lstm_cell_677_4276396:
(#
lstm_cell_677_4276398:(
identity??%lstm_cell_677/StatefulPartitionedCall?while;
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
%lstm_cell_677/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_677_4276394lstm_cell_677_4276396lstm_cell_677_4276398*
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
J__inference_lstm_cell_677_layer_call_and_return_conditional_losses_4276348n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_677_4276394lstm_cell_677_4276396lstm_cell_677_4276398*
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
while_body_4276407*
condR
while_cond_4276406*K
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
NoOpNoOp&^lstm_cell_677/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_677/StatefulPartitionedCall%lstm_cell_677/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?8
?
while_body_4279938
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_677_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_677_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_677_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_677_matmul_readvariableop_resource:2(F
4while_lstm_cell_677_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_677_biasadd_readvariableop_resource:(??*while/lstm_cell_677/BiasAdd/ReadVariableOp?)while/lstm_cell_677/MatMul/ReadVariableOp?+while/lstm_cell_677/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_677/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_677_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_677/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_677/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_677/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_677_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_677/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_677/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_677/addAddV2$while/lstm_cell_677/MatMul:product:0&while/lstm_cell_677/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_677/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_677_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_677/BiasAddBiasAddwhile/lstm_cell_677/add:z:02while/lstm_cell_677/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_677/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_677/splitSplit,while/lstm_cell_677/split/split_dim:output:0$while/lstm_cell_677/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_677/SigmoidSigmoid"while/lstm_cell_677/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_677/Sigmoid_1Sigmoid"while/lstm_cell_677/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_677/mulMul!while/lstm_cell_677/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_677/ReluRelu"while/lstm_cell_677/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_677/mul_1Mulwhile/lstm_cell_677/Sigmoid:y:0&while/lstm_cell_677/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_677/add_1AddV2while/lstm_cell_677/mul:z:0while/lstm_cell_677/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_677/Sigmoid_2Sigmoid"while/lstm_cell_677/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_677/Relu_1Reluwhile/lstm_cell_677/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_677/mul_2Mul!while/lstm_cell_677/Sigmoid_2:y:0(while/lstm_cell_677/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_677/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_677/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_677/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_677/BiasAdd/ReadVariableOp*^while/lstm_cell_677/MatMul/ReadVariableOp,^while/lstm_cell_677/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_677_biasadd_readvariableop_resource5while_lstm_cell_677_biasadd_readvariableop_resource_0"n
4while_lstm_cell_677_matmul_1_readvariableop_resource6while_lstm_cell_677_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_677_matmul_readvariableop_resource4while_lstm_cell_677_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_677/BiasAdd/ReadVariableOp*while/lstm_cell_677/BiasAdd/ReadVariableOp2V
)while/lstm_cell_677/MatMul/ReadVariableOp)while/lstm_cell_677/MatMul/ReadVariableOp2Z
+while/lstm_cell_677/MatMul_1/ReadVariableOp+while/lstm_cell_677/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_677_layer_call_and_return_conditional_losses_4280308

inputs>
,lstm_cell_677_matmul_readvariableop_resource:2(@
.lstm_cell_677_matmul_1_readvariableop_resource:
(;
-lstm_cell_677_biasadd_readvariableop_resource:(
identity??$lstm_cell_677/BiasAdd/ReadVariableOp?#lstm_cell_677/MatMul/ReadVariableOp?%lstm_cell_677/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_677/MatMul/ReadVariableOpReadVariableOp,lstm_cell_677_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_677/MatMulMatMulstrided_slice_2:output:0+lstm_cell_677/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_677/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_677_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_677/MatMul_1MatMulzeros:output:0-lstm_cell_677/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_677/addAddV2lstm_cell_677/MatMul:product:0 lstm_cell_677/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_677/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_677_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_677/BiasAddBiasAddlstm_cell_677/add:z:0,lstm_cell_677/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_677/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_677/splitSplit&lstm_cell_677/split/split_dim:output:0lstm_cell_677/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_677/SigmoidSigmoidlstm_cell_677/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_677/Sigmoid_1Sigmoidlstm_cell_677/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_677/mulMullstm_cell_677/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_677/ReluRelulstm_cell_677/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_677/mul_1Mullstm_cell_677/Sigmoid:y:0 lstm_cell_677/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_677/add_1AddV2lstm_cell_677/mul:z:0lstm_cell_677/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_677/Sigmoid_2Sigmoidlstm_cell_677/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_677/Relu_1Relulstm_cell_677/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_677/mul_2Mullstm_cell_677/Sigmoid_2:y:0"lstm_cell_677/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_677_matmul_readvariableop_resource.lstm_cell_677_matmul_1_readvariableop_resource-lstm_cell_677_biasadd_readvariableop_resource*
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
while_body_4280224*
condR
while_cond_4280223*K
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
NoOpNoOp%^lstm_cell_677/BiasAdd/ReadVariableOp$^lstm_cell_677/MatMul/ReadVariableOp&^lstm_cell_677/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_677/BiasAdd/ReadVariableOp$lstm_cell_677/BiasAdd/ReadVariableOp2J
#lstm_cell_677/MatMul/ReadVariableOp#lstm_cell_677/MatMul/ReadVariableOp2N
%lstm_cell_677/MatMul_1/ReadVariableOp%lstm_cell_677/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
while_cond_4280080
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4280080___redundant_placeholder05
1while_while_cond_4280080___redundant_placeholder15
1while_while_cond_4280080___redundant_placeholder25
1while_while_cond_4280080___redundant_placeholder3
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
J__inference_lstm_cell_676_layer_call_and_return_conditional_losses_4275852

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
0__inference_sequential_225_layer_call_fn_4277722

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
K__inference_sequential_225_layer_call_and_return_conditional_losses_4276959o
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
E__inference_lstm_675_layer_call_and_return_conditional_losses_4276634

inputs?
,lstm_cell_675_matmul_readvariableop_resource:	?A
.lstm_cell_675_matmul_1_readvariableop_resource:	d?<
-lstm_cell_675_biasadd_readvariableop_resource:	?
identity??$lstm_cell_675/BiasAdd/ReadVariableOp?#lstm_cell_675/MatMul/ReadVariableOp?%lstm_cell_675/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_675/MatMul/ReadVariableOpReadVariableOp,lstm_cell_675_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_675/MatMulMatMulstrided_slice_2:output:0+lstm_cell_675/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_675/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_675_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_675/MatMul_1MatMulzeros:output:0-lstm_cell_675/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_675/addAddV2lstm_cell_675/MatMul:product:0 lstm_cell_675/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_675/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_675_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_675/BiasAddBiasAddlstm_cell_675/add:z:0,lstm_cell_675/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_675/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_675/splitSplit&lstm_cell_675/split/split_dim:output:0lstm_cell_675/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_675/SigmoidSigmoidlstm_cell_675/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_675/Sigmoid_1Sigmoidlstm_cell_675/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_675/mulMullstm_cell_675/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_675/ReluRelulstm_cell_675/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_675/mul_1Mullstm_cell_675/Sigmoid:y:0 lstm_cell_675/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_675/add_1AddV2lstm_cell_675/mul:z:0lstm_cell_675/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_675/Sigmoid_2Sigmoidlstm_cell_675/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_675/Relu_1Relulstm_cell_675/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_675/mul_2Mullstm_cell_675/Sigmoid_2:y:0"lstm_cell_675/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_675_matmul_readvariableop_resource.lstm_cell_675_matmul_1_readvariableop_resource-lstm_cell_675_biasadd_readvariableop_resource*
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
while_body_4276550*
condR
while_cond_4276549*K
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
NoOpNoOp%^lstm_cell_675/BiasAdd/ReadVariableOp$^lstm_cell_675/MatMul/ReadVariableOp&^lstm_cell_675/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_675/BiasAdd/ReadVariableOp$lstm_cell_675/BiasAdd/ReadVariableOp2J
#lstm_cell_675/MatMul/ReadVariableOp#lstm_cell_675/MatMul/ReadVariableOp2N
%lstm_cell_675/MatMul_1/ReadVariableOp%lstm_cell_675/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_4277065
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4277065___redundant_placeholder05
1while_while_cond_4277065___redundant_placeholder15
1while_while_cond_4277065___redundant_placeholder25
1while_while_cond_4277065___redundant_placeholder3
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
J__inference_lstm_cell_677_layer_call_and_return_conditional_losses_4276202

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
while_body_4276550
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_675_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_675_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_675_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_675_matmul_readvariableop_resource:	?G
4while_lstm_cell_675_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_675_biasadd_readvariableop_resource:	???*while/lstm_cell_675/BiasAdd/ReadVariableOp?)while/lstm_cell_675/MatMul/ReadVariableOp?+while/lstm_cell_675/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_675/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_675_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_675/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_675/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_675/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_675_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_675/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_675/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_675/addAddV2$while/lstm_cell_675/MatMul:product:0&while/lstm_cell_675/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_675/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_675_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_675/BiasAddBiasAddwhile/lstm_cell_675/add:z:02while/lstm_cell_675/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_675/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_675/splitSplit,while/lstm_cell_675/split/split_dim:output:0$while/lstm_cell_675/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_675/SigmoidSigmoid"while/lstm_cell_675/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_675/Sigmoid_1Sigmoid"while/lstm_cell_675/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_675/mulMul!while/lstm_cell_675/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_675/ReluRelu"while/lstm_cell_675/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_675/mul_1Mulwhile/lstm_cell_675/Sigmoid:y:0&while/lstm_cell_675/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_675/add_1AddV2while/lstm_cell_675/mul:z:0while/lstm_cell_675/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_675/Sigmoid_2Sigmoid"while/lstm_cell_675/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_675/Relu_1Reluwhile/lstm_cell_675/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_675/mul_2Mul!while/lstm_cell_675/Sigmoid_2:y:0(while/lstm_cell_675/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_675/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_675/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_675/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_675/BiasAdd/ReadVariableOp*^while/lstm_cell_675/MatMul/ReadVariableOp,^while/lstm_cell_675/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_675_biasadd_readvariableop_resource5while_lstm_cell_675_biasadd_readvariableop_resource_0"n
4while_lstm_cell_675_matmul_1_readvariableop_resource6while_lstm_cell_675_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_675_matmul_readvariableop_resource4while_lstm_cell_675_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_675/BiasAdd/ReadVariableOp*while/lstm_cell_675/BiasAdd/ReadVariableOp2V
)while/lstm_cell_675/MatMul/ReadVariableOp)while/lstm_cell_675/MatMul/ReadVariableOp2Z
+while/lstm_cell_675/MatMul_1/ReadVariableOp+while/lstm_cell_675/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_676_layer_call_and_return_conditional_losses_4275935

inputs(
lstm_cell_676_4275853:	d?(
lstm_cell_676_4275855:	2?$
lstm_cell_676_4275857:	?
identity??%lstm_cell_676/StatefulPartitionedCall?while;
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
%lstm_cell_676/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_676_4275853lstm_cell_676_4275855lstm_cell_676_4275857*
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
J__inference_lstm_cell_676_layer_call_and_return_conditional_losses_4275852n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_676_4275853lstm_cell_676_4275855lstm_cell_676_4275857*
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
while_body_4275866*
condR
while_cond_4275865*K
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
NoOpNoOp&^lstm_cell_676/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_676/StatefulPartitionedCall%lstm_cell_676/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?#
?
while_body_4276407
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_677_4276431_0:2(/
while_lstm_cell_677_4276433_0:
(+
while_lstm_cell_677_4276435_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_677_4276431:2(-
while_lstm_cell_677_4276433:
()
while_lstm_cell_677_4276435:(??+while/lstm_cell_677/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_677/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_677_4276431_0while_lstm_cell_677_4276433_0while_lstm_cell_677_4276435_0*
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
J__inference_lstm_cell_677_layer_call_and_return_conditional_losses_4276348?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_677/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_677/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_677/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_677/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_677_4276431while_lstm_cell_677_4276431_0"<
while_lstm_cell_677_4276433while_lstm_cell_677_4276433_0"<
while_lstm_cell_677_4276435while_lstm_cell_677_4276435_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_677/StatefulPartitionedCall+while/lstm_cell_677/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_cond_4279464
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4279464___redundant_placeholder05
1while_while_cond_4279464___redundant_placeholder15
1while_while_cond_4279464___redundant_placeholder25
1while_while_cond_4279464___redundant_placeholder3
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
*__inference_lstm_675_layer_call_fn_4278614
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
E__inference_lstm_675_layer_call_and_return_conditional_losses_4275585|
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
while_cond_4278705
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4278705___redundant_placeholder05
1while_while_cond_4278705___redundant_placeholder15
1while_while_cond_4278705___redundant_placeholder25
1while_while_cond_4278705___redundant_placeholder3
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
E__inference_lstm_675_layer_call_and_return_conditional_losses_4279076

inputs?
,lstm_cell_675_matmul_readvariableop_resource:	?A
.lstm_cell_675_matmul_1_readvariableop_resource:	d?<
-lstm_cell_675_biasadd_readvariableop_resource:	?
identity??$lstm_cell_675/BiasAdd/ReadVariableOp?#lstm_cell_675/MatMul/ReadVariableOp?%lstm_cell_675/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_675/MatMul/ReadVariableOpReadVariableOp,lstm_cell_675_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_675/MatMulMatMulstrided_slice_2:output:0+lstm_cell_675/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_675/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_675_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_675/MatMul_1MatMulzeros:output:0-lstm_cell_675/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_675/addAddV2lstm_cell_675/MatMul:product:0 lstm_cell_675/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_675/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_675_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_675/BiasAddBiasAddlstm_cell_675/add:z:0,lstm_cell_675/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_675/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_675/splitSplit&lstm_cell_675/split/split_dim:output:0lstm_cell_675/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_675/SigmoidSigmoidlstm_cell_675/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_675/Sigmoid_1Sigmoidlstm_cell_675/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_675/mulMullstm_cell_675/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_675/ReluRelulstm_cell_675/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_675/mul_1Mullstm_cell_675/Sigmoid:y:0 lstm_cell_675/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_675/add_1AddV2lstm_cell_675/mul:z:0lstm_cell_675/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_675/Sigmoid_2Sigmoidlstm_cell_675/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_675/Relu_1Relulstm_cell_675/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_675/mul_2Mullstm_cell_675/Sigmoid_2:y:0"lstm_cell_675/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_675_matmul_readvariableop_resource.lstm_cell_675_matmul_1_readvariableop_resource-lstm_cell_675_biasadd_readvariableop_resource*
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
while_body_4278992*
condR
while_cond_4278991*K
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
NoOpNoOp%^lstm_cell_675/BiasAdd/ReadVariableOp$^lstm_cell_675/MatMul/ReadVariableOp&^lstm_cell_675/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_675/BiasAdd/ReadVariableOp$lstm_cell_675/BiasAdd/ReadVariableOp2J
#lstm_cell_675/MatMul/ReadVariableOp#lstm_cell_675/MatMul/ReadVariableOp2N
%lstm_cell_675/MatMul_1/ReadVariableOp%lstm_cell_675/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?J
?
E__inference_lstm_675_layer_call_and_return_conditional_losses_4279219

inputs?
,lstm_cell_675_matmul_readvariableop_resource:	?A
.lstm_cell_675_matmul_1_readvariableop_resource:	d?<
-lstm_cell_675_biasadd_readvariableop_resource:	?
identity??$lstm_cell_675/BiasAdd/ReadVariableOp?#lstm_cell_675/MatMul/ReadVariableOp?%lstm_cell_675/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_675/MatMul/ReadVariableOpReadVariableOp,lstm_cell_675_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_675/MatMulMatMulstrided_slice_2:output:0+lstm_cell_675/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_675/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_675_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_675/MatMul_1MatMulzeros:output:0-lstm_cell_675/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_675/addAddV2lstm_cell_675/MatMul:product:0 lstm_cell_675/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_675/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_675_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_675/BiasAddBiasAddlstm_cell_675/add:z:0,lstm_cell_675/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_675/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_675/splitSplit&lstm_cell_675/split/split_dim:output:0lstm_cell_675/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_675/SigmoidSigmoidlstm_cell_675/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_675/Sigmoid_1Sigmoidlstm_cell_675/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_675/mulMullstm_cell_675/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_675/ReluRelulstm_cell_675/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_675/mul_1Mullstm_cell_675/Sigmoid:y:0 lstm_cell_675/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_675/add_1AddV2lstm_cell_675/mul:z:0lstm_cell_675/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_675/Sigmoid_2Sigmoidlstm_cell_675/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_675/Relu_1Relulstm_cell_675/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_675/mul_2Mullstm_cell_675/Sigmoid_2:y:0"lstm_cell_675/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_675_matmul_readvariableop_resource.lstm_cell_675_matmul_1_readvariableop_resource-lstm_cell_675_biasadd_readvariableop_resource*
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
while_body_4279135*
condR
while_cond_4279134*K
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
NoOpNoOp%^lstm_cell_675/BiasAdd/ReadVariableOp$^lstm_cell_675/MatMul/ReadVariableOp&^lstm_cell_675/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_675/BiasAdd/ReadVariableOp$lstm_cell_675/BiasAdd/ReadVariableOp2J
#lstm_cell_675/MatMul/ReadVariableOp#lstm_cell_675/MatMul/ReadVariableOp2N
%lstm_cell_675/MatMul_1/ReadVariableOp%lstm_cell_675/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?J
?
E__inference_lstm_677_layer_call_and_return_conditional_losses_4277150

inputs>
,lstm_cell_677_matmul_readvariableop_resource:2(@
.lstm_cell_677_matmul_1_readvariableop_resource:
(;
-lstm_cell_677_biasadd_readvariableop_resource:(
identity??$lstm_cell_677/BiasAdd/ReadVariableOp?#lstm_cell_677/MatMul/ReadVariableOp?%lstm_cell_677/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_677/MatMul/ReadVariableOpReadVariableOp,lstm_cell_677_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_677/MatMulMatMulstrided_slice_2:output:0+lstm_cell_677/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_677/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_677_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_677/MatMul_1MatMulzeros:output:0-lstm_cell_677/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_677/addAddV2lstm_cell_677/MatMul:product:0 lstm_cell_677/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_677/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_677_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_677/BiasAddBiasAddlstm_cell_677/add:z:0,lstm_cell_677/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_677/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_677/splitSplit&lstm_cell_677/split/split_dim:output:0lstm_cell_677/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_677/SigmoidSigmoidlstm_cell_677/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_677/Sigmoid_1Sigmoidlstm_cell_677/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_677/mulMullstm_cell_677/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_677/ReluRelulstm_cell_677/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_677/mul_1Mullstm_cell_677/Sigmoid:y:0 lstm_cell_677/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_677/add_1AddV2lstm_cell_677/mul:z:0lstm_cell_677/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_677/Sigmoid_2Sigmoidlstm_cell_677/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_677/Relu_1Relulstm_cell_677/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_677/mul_2Mullstm_cell_677/Sigmoid_2:y:0"lstm_cell_677/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_677_matmul_readvariableop_resource.lstm_cell_677_matmul_1_readvariableop_resource-lstm_cell_677_biasadd_readvariableop_resource*
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
while_body_4277066*
condR
while_cond_4277065*K
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
NoOpNoOp%^lstm_cell_677/BiasAdd/ReadVariableOp$^lstm_cell_677/MatMul/ReadVariableOp&^lstm_cell_677/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_677/BiasAdd/ReadVariableOp$lstm_cell_677/BiasAdd/ReadVariableOp2J
#lstm_cell_677/MatMul/ReadVariableOp#lstm_cell_677/MatMul/ReadVariableOp2N
%lstm_cell_677/MatMul_1/ReadVariableOp%lstm_cell_677/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?

?
%__inference_signature_wrapper_4277695
lstm_675_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_675_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
"__inference__wrapped_model_4275435o
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
_user_specified_namelstm_675_input
?8
?
while_body_4279135
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_675_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_675_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_675_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_675_matmul_readvariableop_resource:	?G
4while_lstm_cell_675_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_675_biasadd_readvariableop_resource:	???*while/lstm_cell_675/BiasAdd/ReadVariableOp?)while/lstm_cell_675/MatMul/ReadVariableOp?+while/lstm_cell_675/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_675/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_675_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_675/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_675/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_675/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_675_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_675/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_675/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_675/addAddV2$while/lstm_cell_675/MatMul:product:0&while/lstm_cell_675/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_675/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_675_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_675/BiasAddBiasAddwhile/lstm_cell_675/add:z:02while/lstm_cell_675/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_675/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_675/splitSplit,while/lstm_cell_675/split/split_dim:output:0$while/lstm_cell_675/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_675/SigmoidSigmoid"while/lstm_cell_675/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_675/Sigmoid_1Sigmoid"while/lstm_cell_675/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_675/mulMul!while/lstm_cell_675/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_675/ReluRelu"while/lstm_cell_675/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_675/mul_1Mulwhile/lstm_cell_675/Sigmoid:y:0&while/lstm_cell_675/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_675/add_1AddV2while/lstm_cell_675/mul:z:0while/lstm_cell_675/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_675/Sigmoid_2Sigmoid"while/lstm_cell_675/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_675/Relu_1Reluwhile/lstm_cell_675/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_675/mul_2Mul!while/lstm_cell_675/Sigmoid_2:y:0(while/lstm_cell_675/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_675/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_675/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_675/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_675/BiasAdd/ReadVariableOp*^while/lstm_cell_675/MatMul/ReadVariableOp,^while/lstm_cell_675/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_675_biasadd_readvariableop_resource5while_lstm_cell_675_biasadd_readvariableop_resource_0"n
4while_lstm_cell_675_matmul_1_readvariableop_resource6while_lstm_cell_675_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_675_matmul_readvariableop_resource4while_lstm_cell_675_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_675/BiasAdd/ReadVariableOp*while/lstm_cell_675/BiasAdd/ReadVariableOp2V
)while/lstm_cell_675/MatMul/ReadVariableOp)while/lstm_cell_675/MatMul/ReadVariableOp2Z
+while/lstm_cell_675/MatMul_1/ReadVariableOp+while/lstm_cell_675/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_4277396
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_675_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_675_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_675_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_675_matmul_readvariableop_resource:	?G
4while_lstm_cell_675_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_675_biasadd_readvariableop_resource:	???*while/lstm_cell_675/BiasAdd/ReadVariableOp?)while/lstm_cell_675/MatMul/ReadVariableOp?+while/lstm_cell_675/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_675/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_675_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_675/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_675/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_675/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_675_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_675/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_675/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_675/addAddV2$while/lstm_cell_675/MatMul:product:0&while/lstm_cell_675/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_675/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_675_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_675/BiasAddBiasAddwhile/lstm_cell_675/add:z:02while/lstm_cell_675/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_675/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_675/splitSplit,while/lstm_cell_675/split/split_dim:output:0$while/lstm_cell_675/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_675/SigmoidSigmoid"while/lstm_cell_675/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_675/Sigmoid_1Sigmoid"while/lstm_cell_675/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_675/mulMul!while/lstm_cell_675/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_675/ReluRelu"while/lstm_cell_675/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_675/mul_1Mulwhile/lstm_cell_675/Sigmoid:y:0&while/lstm_cell_675/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_675/add_1AddV2while/lstm_cell_675/mul:z:0while/lstm_cell_675/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_675/Sigmoid_2Sigmoid"while/lstm_cell_675/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_675/Relu_1Reluwhile/lstm_cell_675/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_675/mul_2Mul!while/lstm_cell_675/Sigmoid_2:y:0(while/lstm_cell_675/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_675/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_675/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_675/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_675/BiasAdd/ReadVariableOp*^while/lstm_cell_675/MatMul/ReadVariableOp,^while/lstm_cell_675/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_675_biasadd_readvariableop_resource5while_lstm_cell_675_biasadd_readvariableop_resource_0"n
4while_lstm_cell_675_matmul_1_readvariableop_resource6while_lstm_cell_675_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_675_matmul_readvariableop_resource4while_lstm_cell_675_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_675/BiasAdd/ReadVariableOp*while/lstm_cell_675/BiasAdd/ReadVariableOp2V
)while/lstm_cell_675/MatMul/ReadVariableOp)while/lstm_cell_675/MatMul/ReadVariableOp2Z
+while/lstm_cell_675/MatMul_1/ReadVariableOp+while/lstm_cell_675/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_676_layer_call_and_return_conditional_losses_4279549
inputs_0?
,lstm_cell_676_matmul_readvariableop_resource:	d?A
.lstm_cell_676_matmul_1_readvariableop_resource:	2?<
-lstm_cell_676_biasadd_readvariableop_resource:	?
identity??$lstm_cell_676/BiasAdd/ReadVariableOp?#lstm_cell_676/MatMul/ReadVariableOp?%lstm_cell_676/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_676/MatMul/ReadVariableOpReadVariableOp,lstm_cell_676_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_676/MatMulMatMulstrided_slice_2:output:0+lstm_cell_676/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_676/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_676_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_676/MatMul_1MatMulzeros:output:0-lstm_cell_676/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_676/addAddV2lstm_cell_676/MatMul:product:0 lstm_cell_676/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_676/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_676_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_676/BiasAddBiasAddlstm_cell_676/add:z:0,lstm_cell_676/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_676/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_676/splitSplit&lstm_cell_676/split/split_dim:output:0lstm_cell_676/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_676/SigmoidSigmoidlstm_cell_676/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_676/Sigmoid_1Sigmoidlstm_cell_676/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_676/mulMullstm_cell_676/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_676/ReluRelulstm_cell_676/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_676/mul_1Mullstm_cell_676/Sigmoid:y:0 lstm_cell_676/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_676/add_1AddV2lstm_cell_676/mul:z:0lstm_cell_676/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_676/Sigmoid_2Sigmoidlstm_cell_676/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_676/Relu_1Relulstm_cell_676/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_676/mul_2Mullstm_cell_676/Sigmoid_2:y:0"lstm_cell_676/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_676_matmul_readvariableop_resource.lstm_cell_676_matmul_1_readvariableop_resource-lstm_cell_676_biasadd_readvariableop_resource*
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
while_body_4279465*
condR
while_cond_4279464*K
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
NoOpNoOp%^lstm_cell_676/BiasAdd/ReadVariableOp$^lstm_cell_676/MatMul/ReadVariableOp&^lstm_cell_676/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_676/BiasAdd/ReadVariableOp$lstm_cell_676/BiasAdd/ReadVariableOp2J
#lstm_cell_676/MatMul/ReadVariableOp#lstm_cell_676/MatMul/ReadVariableOp2N
%lstm_cell_676/MatMul_1/ReadVariableOp%lstm_cell_676/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?
?
K__inference_sequential_225_layer_call_and_return_conditional_losses_4277548

inputs#
lstm_675_4277521:	?#
lstm_675_4277523:	d?
lstm_675_4277525:	?#
lstm_676_4277528:	d?#
lstm_676_4277530:	2?
lstm_676_4277532:	?"
lstm_677_4277535:2("
lstm_677_4277537:
(
lstm_677_4277539:(#
dense_225_4277542:

dense_225_4277544:
identity??!dense_225/StatefulPartitionedCall? lstm_675/StatefulPartitionedCall? lstm_676/StatefulPartitionedCall? lstm_677/StatefulPartitionedCall?
 lstm_675/StatefulPartitionedCallStatefulPartitionedCallinputslstm_675_4277521lstm_675_4277523lstm_675_4277525*
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
E__inference_lstm_675_layer_call_and_return_conditional_losses_4277480?
 lstm_676/StatefulPartitionedCallStatefulPartitionedCall)lstm_675/StatefulPartitionedCall:output:0lstm_676_4277528lstm_676_4277530lstm_676_4277532*
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
E__inference_lstm_676_layer_call_and_return_conditional_losses_4277315?
 lstm_677/StatefulPartitionedCallStatefulPartitionedCall)lstm_676/StatefulPartitionedCall:output:0lstm_677_4277535lstm_677_4277537lstm_677_4277539*
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
E__inference_lstm_677_layer_call_and_return_conditional_losses_4277150?
!dense_225/StatefulPartitionedCallStatefulPartitionedCall)lstm_677/StatefulPartitionedCall:output:0dense_225_4277542dense_225_4277544*
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
F__inference_dense_225_layer_call_and_return_conditional_losses_4276952y
IdentityIdentity*dense_225/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_225/StatefulPartitionedCall!^lstm_675/StatefulPartitionedCall!^lstm_676/StatefulPartitionedCall!^lstm_677/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_225/StatefulPartitionedCall!dense_225/StatefulPartitionedCall2D
 lstm_675/StatefulPartitionedCall lstm_675/StatefulPartitionedCall2D
 lstm_676/StatefulPartitionedCall lstm_676/StatefulPartitionedCall2D
 lstm_677/StatefulPartitionedCall lstm_677/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_676_layer_call_and_return_conditional_losses_4280634

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
J__inference_lstm_cell_676_layer_call_and_return_conditional_losses_4275998

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
while_body_4277231
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_676_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_676_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_676_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_676_matmul_readvariableop_resource:	d?G
4while_lstm_cell_676_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_676_biasadd_readvariableop_resource:	???*while/lstm_cell_676/BiasAdd/ReadVariableOp?)while/lstm_cell_676/MatMul/ReadVariableOp?+while/lstm_cell_676/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_676/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_676_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_676/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_676/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_676/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_676_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_676/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_676/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_676/addAddV2$while/lstm_cell_676/MatMul:product:0&while/lstm_cell_676/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_676/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_676_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_676/BiasAddBiasAddwhile/lstm_cell_676/add:z:02while/lstm_cell_676/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_676/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_676/splitSplit,while/lstm_cell_676/split/split_dim:output:0$while/lstm_cell_676/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_676/SigmoidSigmoid"while/lstm_cell_676/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_676/Sigmoid_1Sigmoid"while/lstm_cell_676/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_676/mulMul!while/lstm_cell_676/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_676/ReluRelu"while/lstm_cell_676/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_676/mul_1Mulwhile/lstm_cell_676/Sigmoid:y:0&while/lstm_cell_676/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_676/add_1AddV2while/lstm_cell_676/mul:z:0while/lstm_cell_676/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_676/Sigmoid_2Sigmoid"while/lstm_cell_676/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_676/Relu_1Reluwhile/lstm_cell_676/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_676/mul_2Mul!while/lstm_cell_676/Sigmoid_2:y:0(while/lstm_cell_676/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_676/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_676/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_676/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_676/BiasAdd/ReadVariableOp*^while/lstm_cell_676/MatMul/ReadVariableOp,^while/lstm_cell_676/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_676_biasadd_readvariableop_resource5while_lstm_cell_676_biasadd_readvariableop_resource_0"n
4while_lstm_cell_676_matmul_1_readvariableop_resource6while_lstm_cell_676_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_676_matmul_readvariableop_resource4while_lstm_cell_676_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_676/BiasAdd/ReadVariableOp*while/lstm_cell_676/BiasAdd/ReadVariableOp2V
)while/lstm_cell_676/MatMul/ReadVariableOp)while/lstm_cell_676/MatMul/ReadVariableOp2Z
+while/lstm_cell_676/MatMul_1/ReadVariableOp+while/lstm_cell_676/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_677_layer_call_and_return_conditional_losses_4280732

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
E__inference_lstm_676_layer_call_and_return_conditional_losses_4279692

inputs?
,lstm_cell_676_matmul_readvariableop_resource:	d?A
.lstm_cell_676_matmul_1_readvariableop_resource:	2?<
-lstm_cell_676_biasadd_readvariableop_resource:	?
identity??$lstm_cell_676/BiasAdd/ReadVariableOp?#lstm_cell_676/MatMul/ReadVariableOp?%lstm_cell_676/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_676/MatMul/ReadVariableOpReadVariableOp,lstm_cell_676_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_676/MatMulMatMulstrided_slice_2:output:0+lstm_cell_676/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_676/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_676_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_676/MatMul_1MatMulzeros:output:0-lstm_cell_676/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_676/addAddV2lstm_cell_676/MatMul:product:0 lstm_cell_676/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_676/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_676_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_676/BiasAddBiasAddlstm_cell_676/add:z:0,lstm_cell_676/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_676/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_676/splitSplit&lstm_cell_676/split/split_dim:output:0lstm_cell_676/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_676/SigmoidSigmoidlstm_cell_676/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_676/Sigmoid_1Sigmoidlstm_cell_676/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_676/mulMullstm_cell_676/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_676/ReluRelulstm_cell_676/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_676/mul_1Mullstm_cell_676/Sigmoid:y:0 lstm_cell_676/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_676/add_1AddV2lstm_cell_676/mul:z:0lstm_cell_676/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_676/Sigmoid_2Sigmoidlstm_cell_676/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_676/Relu_1Relulstm_cell_676/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_676/mul_2Mullstm_cell_676/Sigmoid_2:y:0"lstm_cell_676/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_676_matmul_readvariableop_resource.lstm_cell_676_matmul_1_readvariableop_resource-lstm_cell_676_biasadd_readvariableop_resource*
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
while_body_4279608*
condR
while_cond_4279607*K
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
NoOpNoOp%^lstm_cell_676/BiasAdd/ReadVariableOp$^lstm_cell_676/MatMul/ReadVariableOp&^lstm_cell_676/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_676/BiasAdd/ReadVariableOp$lstm_cell_676/BiasAdd/ReadVariableOp2J
#lstm_cell_676/MatMul/ReadVariableOp#lstm_cell_676/MatMul/ReadVariableOp2N
%lstm_cell_676/MatMul_1/ReadVariableOp%lstm_cell_676/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
/__inference_lstm_cell_675_layer_call_fn_4280504

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
J__inference_lstm_cell_675_layer_call_and_return_conditional_losses_4275648o
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
?C
?

lstm_675_while_body_4278235.
*lstm_675_while_lstm_675_while_loop_counter4
0lstm_675_while_lstm_675_while_maximum_iterations
lstm_675_while_placeholder 
lstm_675_while_placeholder_1 
lstm_675_while_placeholder_2 
lstm_675_while_placeholder_3-
)lstm_675_while_lstm_675_strided_slice_1_0i
elstm_675_while_tensorarrayv2read_tensorlistgetitem_lstm_675_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_675_while_lstm_cell_675_matmul_readvariableop_resource_0:	?R
?lstm_675_while_lstm_cell_675_matmul_1_readvariableop_resource_0:	d?M
>lstm_675_while_lstm_cell_675_biasadd_readvariableop_resource_0:	?
lstm_675_while_identity
lstm_675_while_identity_1
lstm_675_while_identity_2
lstm_675_while_identity_3
lstm_675_while_identity_4
lstm_675_while_identity_5+
'lstm_675_while_lstm_675_strided_slice_1g
clstm_675_while_tensorarrayv2read_tensorlistgetitem_lstm_675_tensorarrayunstack_tensorlistfromtensorN
;lstm_675_while_lstm_cell_675_matmul_readvariableop_resource:	?P
=lstm_675_while_lstm_cell_675_matmul_1_readvariableop_resource:	d?K
<lstm_675_while_lstm_cell_675_biasadd_readvariableop_resource:	???3lstm_675/while/lstm_cell_675/BiasAdd/ReadVariableOp?2lstm_675/while/lstm_cell_675/MatMul/ReadVariableOp?4lstm_675/while/lstm_cell_675/MatMul_1/ReadVariableOp?
@lstm_675/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_675/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_675_while_tensorarrayv2read_tensorlistgetitem_lstm_675_tensorarrayunstack_tensorlistfromtensor_0lstm_675_while_placeholderIlstm_675/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_675/while/lstm_cell_675/MatMul/ReadVariableOpReadVariableOp=lstm_675_while_lstm_cell_675_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_675/while/lstm_cell_675/MatMulMatMul9lstm_675/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_675/while/lstm_cell_675/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_675/while/lstm_cell_675/MatMul_1/ReadVariableOpReadVariableOp?lstm_675_while_lstm_cell_675_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_675/while/lstm_cell_675/MatMul_1MatMullstm_675_while_placeholder_2<lstm_675/while/lstm_cell_675/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_675/while/lstm_cell_675/addAddV2-lstm_675/while/lstm_cell_675/MatMul:product:0/lstm_675/while/lstm_cell_675/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_675/while/lstm_cell_675/BiasAdd/ReadVariableOpReadVariableOp>lstm_675_while_lstm_cell_675_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_675/while/lstm_cell_675/BiasAddBiasAdd$lstm_675/while/lstm_cell_675/add:z:0;lstm_675/while/lstm_cell_675/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_675/while/lstm_cell_675/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_675/while/lstm_cell_675/splitSplit5lstm_675/while/lstm_cell_675/split/split_dim:output:0-lstm_675/while/lstm_cell_675/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_675/while/lstm_cell_675/SigmoidSigmoid+lstm_675/while/lstm_cell_675/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_675/while/lstm_cell_675/Sigmoid_1Sigmoid+lstm_675/while/lstm_cell_675/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_675/while/lstm_cell_675/mulMul*lstm_675/while/lstm_cell_675/Sigmoid_1:y:0lstm_675_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_675/while/lstm_cell_675/ReluRelu+lstm_675/while/lstm_cell_675/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_675/while/lstm_cell_675/mul_1Mul(lstm_675/while/lstm_cell_675/Sigmoid:y:0/lstm_675/while/lstm_cell_675/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_675/while/lstm_cell_675/add_1AddV2$lstm_675/while/lstm_cell_675/mul:z:0&lstm_675/while/lstm_cell_675/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_675/while/lstm_cell_675/Sigmoid_2Sigmoid+lstm_675/while/lstm_cell_675/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_675/while/lstm_cell_675/Relu_1Relu&lstm_675/while/lstm_cell_675/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_675/while/lstm_cell_675/mul_2Mul*lstm_675/while/lstm_cell_675/Sigmoid_2:y:01lstm_675/while/lstm_cell_675/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_675/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_675_while_placeholder_1lstm_675_while_placeholder&lstm_675/while/lstm_cell_675/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_675/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_675/while/addAddV2lstm_675_while_placeholderlstm_675/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_675/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_675/while/add_1AddV2*lstm_675_while_lstm_675_while_loop_counterlstm_675/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_675/while/IdentityIdentitylstm_675/while/add_1:z:0^lstm_675/while/NoOp*
T0*
_output_shapes
: ?
lstm_675/while/Identity_1Identity0lstm_675_while_lstm_675_while_maximum_iterations^lstm_675/while/NoOp*
T0*
_output_shapes
: t
lstm_675/while/Identity_2Identitylstm_675/while/add:z:0^lstm_675/while/NoOp*
T0*
_output_shapes
: ?
lstm_675/while/Identity_3IdentityClstm_675/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_675/while/NoOp*
T0*
_output_shapes
: ?
lstm_675/while/Identity_4Identity&lstm_675/while/lstm_cell_675/mul_2:z:0^lstm_675/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_675/while/Identity_5Identity&lstm_675/while/lstm_cell_675/add_1:z:0^lstm_675/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_675/while/NoOpNoOp4^lstm_675/while/lstm_cell_675/BiasAdd/ReadVariableOp3^lstm_675/while/lstm_cell_675/MatMul/ReadVariableOp5^lstm_675/while/lstm_cell_675/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_675_while_identity lstm_675/while/Identity:output:0"?
lstm_675_while_identity_1"lstm_675/while/Identity_1:output:0"?
lstm_675_while_identity_2"lstm_675/while/Identity_2:output:0"?
lstm_675_while_identity_3"lstm_675/while/Identity_3:output:0"?
lstm_675_while_identity_4"lstm_675/while/Identity_4:output:0"?
lstm_675_while_identity_5"lstm_675/while/Identity_5:output:0"T
'lstm_675_while_lstm_675_strided_slice_1)lstm_675_while_lstm_675_strided_slice_1_0"~
<lstm_675_while_lstm_cell_675_biasadd_readvariableop_resource>lstm_675_while_lstm_cell_675_biasadd_readvariableop_resource_0"?
=lstm_675_while_lstm_cell_675_matmul_1_readvariableop_resource?lstm_675_while_lstm_cell_675_matmul_1_readvariableop_resource_0"|
;lstm_675_while_lstm_cell_675_matmul_readvariableop_resource=lstm_675_while_lstm_cell_675_matmul_readvariableop_resource_0"?
clstm_675_while_tensorarrayv2read_tensorlistgetitem_lstm_675_tensorarrayunstack_tensorlistfromtensorelstm_675_while_tensorarrayv2read_tensorlistgetitem_lstm_675_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_675/while/lstm_cell_675/BiasAdd/ReadVariableOp3lstm_675/while/lstm_cell_675/BiasAdd/ReadVariableOp2h
2lstm_675/while/lstm_cell_675/MatMul/ReadVariableOp2lstm_675/while/lstm_cell_675/MatMul/ReadVariableOp2l
4lstm_675/while/lstm_cell_675/MatMul_1/ReadVariableOp4lstm_675/while/lstm_cell_675/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_676_layer_call_and_return_conditional_losses_4277315

inputs?
,lstm_cell_676_matmul_readvariableop_resource:	d?A
.lstm_cell_676_matmul_1_readvariableop_resource:	2?<
-lstm_cell_676_biasadd_readvariableop_resource:	?
identity??$lstm_cell_676/BiasAdd/ReadVariableOp?#lstm_cell_676/MatMul/ReadVariableOp?%lstm_cell_676/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_676/MatMul/ReadVariableOpReadVariableOp,lstm_cell_676_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_676/MatMulMatMulstrided_slice_2:output:0+lstm_cell_676/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_676/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_676_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_676/MatMul_1MatMulzeros:output:0-lstm_cell_676/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_676/addAddV2lstm_cell_676/MatMul:product:0 lstm_cell_676/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_676/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_676_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_676/BiasAddBiasAddlstm_cell_676/add:z:0,lstm_cell_676/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_676/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_676/splitSplit&lstm_cell_676/split/split_dim:output:0lstm_cell_676/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_676/SigmoidSigmoidlstm_cell_676/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_676/Sigmoid_1Sigmoidlstm_cell_676/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_676/mulMullstm_cell_676/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_676/ReluRelulstm_cell_676/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_676/mul_1Mullstm_cell_676/Sigmoid:y:0 lstm_cell_676/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_676/add_1AddV2lstm_cell_676/mul:z:0lstm_cell_676/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_676/Sigmoid_2Sigmoidlstm_cell_676/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_676/Relu_1Relulstm_cell_676/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_676/mul_2Mullstm_cell_676/Sigmoid_2:y:0"lstm_cell_676/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_676_matmul_readvariableop_resource.lstm_cell_676_matmul_1_readvariableop_resource-lstm_cell_676_biasadd_readvariableop_resource*
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
while_body_4277231*
condR
while_cond_4277230*K
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
NoOpNoOp%^lstm_cell_676/BiasAdd/ReadVariableOp$^lstm_cell_676/MatMul/ReadVariableOp&^lstm_cell_676/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_676/BiasAdd/ReadVariableOp$lstm_cell_676/BiasAdd/ReadVariableOp2J
#lstm_cell_676/MatMul/ReadVariableOp#lstm_cell_676/MatMul/ReadVariableOp2N
%lstm_cell_676/MatMul_1/ReadVariableOp%lstm_cell_676/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?8
?
E__inference_lstm_676_layer_call_and_return_conditional_losses_4276126

inputs(
lstm_cell_676_4276044:	d?(
lstm_cell_676_4276046:	2?$
lstm_cell_676_4276048:	?
identity??%lstm_cell_676/StatefulPartitionedCall?while;
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
%lstm_cell_676/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_676_4276044lstm_cell_676_4276046lstm_cell_676_4276048*
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
J__inference_lstm_cell_676_layer_call_and_return_conditional_losses_4275998n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_676_4276044lstm_cell_676_4276046lstm_cell_676_4276048*
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
while_body_4276057*
condR
while_cond_4276056*K
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
NoOpNoOp&^lstm_cell_676/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_676/StatefulPartitionedCall%lstm_cell_676/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?
?
K__inference_sequential_225_layer_call_and_return_conditional_losses_4277660
lstm_675_input#
lstm_675_4277633:	?#
lstm_675_4277635:	d?
lstm_675_4277637:	?#
lstm_676_4277640:	d?#
lstm_676_4277642:	2?
lstm_676_4277644:	?"
lstm_677_4277647:2("
lstm_677_4277649:
(
lstm_677_4277651:(#
dense_225_4277654:

dense_225_4277656:
identity??!dense_225/StatefulPartitionedCall? lstm_675/StatefulPartitionedCall? lstm_676/StatefulPartitionedCall? lstm_677/StatefulPartitionedCall?
 lstm_675/StatefulPartitionedCallStatefulPartitionedCalllstm_675_inputlstm_675_4277633lstm_675_4277635lstm_675_4277637*
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
E__inference_lstm_675_layer_call_and_return_conditional_losses_4277480?
 lstm_676/StatefulPartitionedCallStatefulPartitionedCall)lstm_675/StatefulPartitionedCall:output:0lstm_676_4277640lstm_676_4277642lstm_676_4277644*
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
E__inference_lstm_676_layer_call_and_return_conditional_losses_4277315?
 lstm_677/StatefulPartitionedCallStatefulPartitionedCall)lstm_676/StatefulPartitionedCall:output:0lstm_677_4277647lstm_677_4277649lstm_677_4277651*
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
E__inference_lstm_677_layer_call_and_return_conditional_losses_4277150?
!dense_225/StatefulPartitionedCallStatefulPartitionedCall)lstm_677/StatefulPartitionedCall:output:0dense_225_4277654dense_225_4277656*
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
F__inference_dense_225_layer_call_and_return_conditional_losses_4276952y
IdentityIdentity*dense_225/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_225/StatefulPartitionedCall!^lstm_675/StatefulPartitionedCall!^lstm_676/StatefulPartitionedCall!^lstm_677/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_225/StatefulPartitionedCall!dense_225/StatefulPartitionedCall2D
 lstm_675/StatefulPartitionedCall lstm_675/StatefulPartitionedCall2D
 lstm_676/StatefulPartitionedCall lstm_676/StatefulPartitionedCall2D
 lstm_677/StatefulPartitionedCall lstm_677/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_675_input
?
?
while_cond_4278991
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4278991___redundant_placeholder05
1while_while_cond_4278991___redundant_placeholder15
1while_while_cond_4278991___redundant_placeholder25
1while_while_cond_4278991___redundant_placeholder3
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
E__inference_lstm_675_layer_call_and_return_conditional_losses_4278933
inputs_0?
,lstm_cell_675_matmul_readvariableop_resource:	?A
.lstm_cell_675_matmul_1_readvariableop_resource:	d?<
-lstm_cell_675_biasadd_readvariableop_resource:	?
identity??$lstm_cell_675/BiasAdd/ReadVariableOp?#lstm_cell_675/MatMul/ReadVariableOp?%lstm_cell_675/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_675/MatMul/ReadVariableOpReadVariableOp,lstm_cell_675_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_675/MatMulMatMulstrided_slice_2:output:0+lstm_cell_675/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_675/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_675_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_675/MatMul_1MatMulzeros:output:0-lstm_cell_675/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_675/addAddV2lstm_cell_675/MatMul:product:0 lstm_cell_675/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_675/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_675_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_675/BiasAddBiasAddlstm_cell_675/add:z:0,lstm_cell_675/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_675/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_675/splitSplit&lstm_cell_675/split/split_dim:output:0lstm_cell_675/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_675/SigmoidSigmoidlstm_cell_675/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_675/Sigmoid_1Sigmoidlstm_cell_675/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_675/mulMullstm_cell_675/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_675/ReluRelulstm_cell_675/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_675/mul_1Mullstm_cell_675/Sigmoid:y:0 lstm_cell_675/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_675/add_1AddV2lstm_cell_675/mul:z:0lstm_cell_675/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_675/Sigmoid_2Sigmoidlstm_cell_675/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_675/Relu_1Relulstm_cell_675/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_675/mul_2Mullstm_cell_675/Sigmoid_2:y:0"lstm_cell_675/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_675_matmul_readvariableop_resource.lstm_cell_675_matmul_1_readvariableop_resource-lstm_cell_675_biasadd_readvariableop_resource*
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
while_body_4278849*
condR
while_cond_4278848*K
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
NoOpNoOp%^lstm_cell_675/BiasAdd/ReadVariableOp$^lstm_cell_675/MatMul/ReadVariableOp&^lstm_cell_675/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_675/BiasAdd/ReadVariableOp$lstm_cell_675/BiasAdd/ReadVariableOp2J
#lstm_cell_675/MatMul/ReadVariableOp#lstm_cell_675/MatMul/ReadVariableOp2N
%lstm_cell_675/MatMul_1/ReadVariableOp%lstm_cell_675/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
/__inference_lstm_cell_677_layer_call_fn_4280683

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
J__inference_lstm_cell_677_layer_call_and_return_conditional_losses_4276202o
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
while_cond_4275515
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4275515___redundant_placeholder05
1while_while_cond_4275515___redundant_placeholder15
1while_while_cond_4275515___redundant_placeholder25
1while_while_cond_4275515___redundant_placeholder3
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
+__inference_dense_225_layer_call_fn_4280460

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
F__inference_dense_225_layer_call_and_return_conditional_losses_4276952o
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
E__inference_lstm_675_layer_call_and_return_conditional_losses_4277480

inputs?
,lstm_cell_675_matmul_readvariableop_resource:	?A
.lstm_cell_675_matmul_1_readvariableop_resource:	d?<
-lstm_cell_675_biasadd_readvariableop_resource:	?
identity??$lstm_cell_675/BiasAdd/ReadVariableOp?#lstm_cell_675/MatMul/ReadVariableOp?%lstm_cell_675/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_675/MatMul/ReadVariableOpReadVariableOp,lstm_cell_675_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_675/MatMulMatMulstrided_slice_2:output:0+lstm_cell_675/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_675/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_675_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_675/MatMul_1MatMulzeros:output:0-lstm_cell_675/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_675/addAddV2lstm_cell_675/MatMul:product:0 lstm_cell_675/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_675/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_675_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_675/BiasAddBiasAddlstm_cell_675/add:z:0,lstm_cell_675/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_675/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_675/splitSplit&lstm_cell_675/split/split_dim:output:0lstm_cell_675/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_675/SigmoidSigmoidlstm_cell_675/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_675/Sigmoid_1Sigmoidlstm_cell_675/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_675/mulMullstm_cell_675/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_675/ReluRelulstm_cell_675/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_675/mul_1Mullstm_cell_675/Sigmoid:y:0 lstm_cell_675/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_675/add_1AddV2lstm_cell_675/mul:z:0lstm_cell_675/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_675/Sigmoid_2Sigmoidlstm_cell_675/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_675/Relu_1Relulstm_cell_675/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_675/mul_2Mullstm_cell_675/Sigmoid_2:y:0"lstm_cell_675/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_675_matmul_readvariableop_resource.lstm_cell_675_matmul_1_readvariableop_resource-lstm_cell_675_biasadd_readvariableop_resource*
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
while_body_4277396*
condR
while_cond_4277395*K
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
NoOpNoOp%^lstm_cell_675/BiasAdd/ReadVariableOp$^lstm_cell_675/MatMul/ReadVariableOp&^lstm_cell_675/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_675/BiasAdd/ReadVariableOp$lstm_cell_675/BiasAdd/ReadVariableOp2J
#lstm_cell_675/MatMul/ReadVariableOp#lstm_cell_675/MatMul/ReadVariableOp2N
%lstm_cell_675/MatMul_1/ReadVariableOp%lstm_cell_675/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_4275865
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4275865___redundant_placeholder05
1while_while_cond_4275865___redundant_placeholder15
1while_while_cond_4275865___redundant_placeholder25
1while_while_cond_4275865___redundant_placeholder3
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
*sequential_225_lstm_675_while_cond_4275066L
Hsequential_225_lstm_675_while_sequential_225_lstm_675_while_loop_counterR
Nsequential_225_lstm_675_while_sequential_225_lstm_675_while_maximum_iterations-
)sequential_225_lstm_675_while_placeholder/
+sequential_225_lstm_675_while_placeholder_1/
+sequential_225_lstm_675_while_placeholder_2/
+sequential_225_lstm_675_while_placeholder_3N
Jsequential_225_lstm_675_while_less_sequential_225_lstm_675_strided_slice_1e
asequential_225_lstm_675_while_sequential_225_lstm_675_while_cond_4275066___redundant_placeholder0e
asequential_225_lstm_675_while_sequential_225_lstm_675_while_cond_4275066___redundant_placeholder1e
asequential_225_lstm_675_while_sequential_225_lstm_675_while_cond_4275066___redundant_placeholder2e
asequential_225_lstm_675_while_sequential_225_lstm_675_while_cond_4275066___redundant_placeholder3*
&sequential_225_lstm_675_while_identity
?
"sequential_225/lstm_675/while/LessLess)sequential_225_lstm_675_while_placeholderJsequential_225_lstm_675_while_less_sequential_225_lstm_675_strided_slice_1*
T0*
_output_shapes
: {
&sequential_225/lstm_675/while/IdentityIdentity&sequential_225/lstm_675/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_225_lstm_675_while_identity/sequential_225/lstm_675/while/Identity:output:0*(
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
while_body_4275516
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_675_4275540_0:	?0
while_lstm_cell_675_4275542_0:	d?,
while_lstm_cell_675_4275544_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_675_4275540:	?.
while_lstm_cell_675_4275542:	d?*
while_lstm_cell_675_4275544:	???+while/lstm_cell_675/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_675/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_675_4275540_0while_lstm_cell_675_4275542_0while_lstm_cell_675_4275544_0*
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
J__inference_lstm_cell_675_layer_call_and_return_conditional_losses_4275502?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_675/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_675/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_675/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_675/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_675_4275540while_lstm_cell_675_4275540_0"<
while_lstm_cell_675_4275542while_lstm_cell_675_4275542_0"<
while_lstm_cell_675_4275544while_lstm_cell_675_4275544_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_675/StatefulPartitionedCall+while/lstm_cell_675/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_cond_4279750
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4279750___redundant_placeholder05
1while_while_cond_4279750___redundant_placeholder15
1while_while_cond_4279750___redundant_placeholder25
1while_while_cond_4279750___redundant_placeholder3
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
E__inference_lstm_675_layer_call_and_return_conditional_losses_4275776

inputs(
lstm_cell_675_4275694:	?(
lstm_cell_675_4275696:	d?$
lstm_cell_675_4275698:	?
identity??%lstm_cell_675/StatefulPartitionedCall?while;
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
%lstm_cell_675/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_675_4275694lstm_cell_675_4275696lstm_cell_675_4275698*
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
J__inference_lstm_cell_675_layer_call_and_return_conditional_losses_4275648n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_675_4275694lstm_cell_675_4275696lstm_cell_675_4275698*
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
while_body_4275707*
condR
while_cond_4275706*K
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
NoOpNoOp&^lstm_cell_675/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_675/StatefulPartitionedCall%lstm_cell_675/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
*__inference_lstm_675_layer_call_fn_4278647

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
E__inference_lstm_675_layer_call_and_return_conditional_losses_4277480s
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
J__inference_lstm_cell_676_layer_call_and_return_conditional_losses_4280666

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
??
?
#__inference__traced_restore_4281037
file_prefix3
!assignvariableop_dense_225_kernel:
/
!assignvariableop_1_dense_225_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: C
0assignvariableop_7_lstm_675_lstm_cell_675_kernel:	?M
:assignvariableop_8_lstm_675_lstm_cell_675_recurrent_kernel:	d?=
.assignvariableop_9_lstm_675_lstm_cell_675_bias:	?D
1assignvariableop_10_lstm_676_lstm_cell_676_kernel:	d?N
;assignvariableop_11_lstm_676_lstm_cell_676_recurrent_kernel:	2?>
/assignvariableop_12_lstm_676_lstm_cell_676_bias:	?C
1assignvariableop_13_lstm_677_lstm_cell_677_kernel:2(M
;assignvariableop_14_lstm_677_lstm_cell_677_recurrent_kernel:
(=
/assignvariableop_15_lstm_677_lstm_cell_677_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: =
+assignvariableop_18_adam_dense_225_kernel_m:
7
)assignvariableop_19_adam_dense_225_bias_m:K
8assignvariableop_20_adam_lstm_675_lstm_cell_675_kernel_m:	?U
Bassignvariableop_21_adam_lstm_675_lstm_cell_675_recurrent_kernel_m:	d?E
6assignvariableop_22_adam_lstm_675_lstm_cell_675_bias_m:	?K
8assignvariableop_23_adam_lstm_676_lstm_cell_676_kernel_m:	d?U
Bassignvariableop_24_adam_lstm_676_lstm_cell_676_recurrent_kernel_m:	2?E
6assignvariableop_25_adam_lstm_676_lstm_cell_676_bias_m:	?J
8assignvariableop_26_adam_lstm_677_lstm_cell_677_kernel_m:2(T
Bassignvariableop_27_adam_lstm_677_lstm_cell_677_recurrent_kernel_m:
(D
6assignvariableop_28_adam_lstm_677_lstm_cell_677_bias_m:(=
+assignvariableop_29_adam_dense_225_kernel_v:
7
)assignvariableop_30_adam_dense_225_bias_v:K
8assignvariableop_31_adam_lstm_675_lstm_cell_675_kernel_v:	?U
Bassignvariableop_32_adam_lstm_675_lstm_cell_675_recurrent_kernel_v:	d?E
6assignvariableop_33_adam_lstm_675_lstm_cell_675_bias_v:	?K
8assignvariableop_34_adam_lstm_676_lstm_cell_676_kernel_v:	d?U
Bassignvariableop_35_adam_lstm_676_lstm_cell_676_recurrent_kernel_v:	2?E
6assignvariableop_36_adam_lstm_676_lstm_cell_676_bias_v:	?J
8assignvariableop_37_adam_lstm_677_lstm_cell_677_kernel_v:2(T
Bassignvariableop_38_adam_lstm_677_lstm_cell_677_recurrent_kernel_v:
(D
6assignvariableop_39_adam_lstm_677_lstm_cell_677_bias_v:(
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
AssignVariableOpAssignVariableOp!assignvariableop_dense_225_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_225_biasIdentity_1:output:0"/device:CPU:0*
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
AssignVariableOp_7AssignVariableOp0assignvariableop_7_lstm_675_lstm_cell_675_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp:assignvariableop_8_lstm_675_lstm_cell_675_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_675_lstm_cell_675_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp1assignvariableop_10_lstm_676_lstm_cell_676_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp;assignvariableop_11_lstm_676_lstm_cell_676_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp/assignvariableop_12_lstm_676_lstm_cell_676_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp1assignvariableop_13_lstm_677_lstm_cell_677_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp;assignvariableop_14_lstm_677_lstm_cell_677_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp/assignvariableop_15_lstm_677_lstm_cell_677_biasIdentity_15:output:0"/device:CPU:0*
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
AssignVariableOp_18AssignVariableOp+assignvariableop_18_adam_dense_225_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp)assignvariableop_19_adam_dense_225_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp8assignvariableop_20_adam_lstm_675_lstm_cell_675_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOpBassignvariableop_21_adam_lstm_675_lstm_cell_675_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp6assignvariableop_22_adam_lstm_675_lstm_cell_675_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp8assignvariableop_23_adam_lstm_676_lstm_cell_676_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOpBassignvariableop_24_adam_lstm_676_lstm_cell_676_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_676_lstm_cell_676_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp8assignvariableop_26_adam_lstm_677_lstm_cell_677_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOpBassignvariableop_27_adam_lstm_677_lstm_cell_677_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_lstm_677_lstm_cell_677_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp+assignvariableop_29_adam_dense_225_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_dense_225_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp8assignvariableop_31_adam_lstm_675_lstm_cell_675_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOpBassignvariableop_32_adam_lstm_675_lstm_cell_675_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOp6assignvariableop_33_adam_lstm_675_lstm_cell_675_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOp8assignvariableop_34_adam_lstm_676_lstm_cell_676_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOpBassignvariableop_35_adam_lstm_676_lstm_cell_676_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adam_lstm_676_lstm_cell_676_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_37AssignVariableOp8assignvariableop_37_adam_lstm_677_lstm_cell_677_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_38AssignVariableOpBassignvariableop_38_adam_lstm_677_lstm_cell_677_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_lstm_677_lstm_cell_677_bias_vIdentity_39:output:0"/device:CPU:0*
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
?T
?
*sequential_225_lstm_676_while_body_4275206L
Hsequential_225_lstm_676_while_sequential_225_lstm_676_while_loop_counterR
Nsequential_225_lstm_676_while_sequential_225_lstm_676_while_maximum_iterations-
)sequential_225_lstm_676_while_placeholder/
+sequential_225_lstm_676_while_placeholder_1/
+sequential_225_lstm_676_while_placeholder_2/
+sequential_225_lstm_676_while_placeholder_3K
Gsequential_225_lstm_676_while_sequential_225_lstm_676_strided_slice_1_0?
?sequential_225_lstm_676_while_tensorarrayv2read_tensorlistgetitem_sequential_225_lstm_676_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_225_lstm_676_while_lstm_cell_676_matmul_readvariableop_resource_0:	d?a
Nsequential_225_lstm_676_while_lstm_cell_676_matmul_1_readvariableop_resource_0:	2?\
Msequential_225_lstm_676_while_lstm_cell_676_biasadd_readvariableop_resource_0:	?*
&sequential_225_lstm_676_while_identity,
(sequential_225_lstm_676_while_identity_1,
(sequential_225_lstm_676_while_identity_2,
(sequential_225_lstm_676_while_identity_3,
(sequential_225_lstm_676_while_identity_4,
(sequential_225_lstm_676_while_identity_5I
Esequential_225_lstm_676_while_sequential_225_lstm_676_strided_slice_1?
?sequential_225_lstm_676_while_tensorarrayv2read_tensorlistgetitem_sequential_225_lstm_676_tensorarrayunstack_tensorlistfromtensor]
Jsequential_225_lstm_676_while_lstm_cell_676_matmul_readvariableop_resource:	d?_
Lsequential_225_lstm_676_while_lstm_cell_676_matmul_1_readvariableop_resource:	2?Z
Ksequential_225_lstm_676_while_lstm_cell_676_biasadd_readvariableop_resource:	???Bsequential_225/lstm_676/while/lstm_cell_676/BiasAdd/ReadVariableOp?Asequential_225/lstm_676/while/lstm_cell_676/MatMul/ReadVariableOp?Csequential_225/lstm_676/while/lstm_cell_676/MatMul_1/ReadVariableOp?
Osequential_225/lstm_676/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
Asequential_225/lstm_676/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_225_lstm_676_while_tensorarrayv2read_tensorlistgetitem_sequential_225_lstm_676_tensorarrayunstack_tensorlistfromtensor_0)sequential_225_lstm_676_while_placeholderXsequential_225/lstm_676/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
Asequential_225/lstm_676/while/lstm_cell_676/MatMul/ReadVariableOpReadVariableOpLsequential_225_lstm_676_while_lstm_cell_676_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
2sequential_225/lstm_676/while/lstm_cell_676/MatMulMatMulHsequential_225/lstm_676/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_225/lstm_676/while/lstm_cell_676/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_225/lstm_676/while/lstm_cell_676/MatMul_1/ReadVariableOpReadVariableOpNsequential_225_lstm_676_while_lstm_cell_676_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
4sequential_225/lstm_676/while/lstm_cell_676/MatMul_1MatMul+sequential_225_lstm_676_while_placeholder_2Ksequential_225/lstm_676/while/lstm_cell_676/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_225/lstm_676/while/lstm_cell_676/addAddV2<sequential_225/lstm_676/while/lstm_cell_676/MatMul:product:0>sequential_225/lstm_676/while/lstm_cell_676/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_225/lstm_676/while/lstm_cell_676/BiasAdd/ReadVariableOpReadVariableOpMsequential_225_lstm_676_while_lstm_cell_676_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_225/lstm_676/while/lstm_cell_676/BiasAddBiasAdd3sequential_225/lstm_676/while/lstm_cell_676/add:z:0Jsequential_225/lstm_676/while/lstm_cell_676/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_225/lstm_676/while/lstm_cell_676/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_225/lstm_676/while/lstm_cell_676/splitSplitDsequential_225/lstm_676/while/lstm_cell_676/split/split_dim:output:0<sequential_225/lstm_676/while/lstm_cell_676/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
3sequential_225/lstm_676/while/lstm_cell_676/SigmoidSigmoid:sequential_225/lstm_676/while/lstm_cell_676/split:output:0*
T0*'
_output_shapes
:?????????2?
5sequential_225/lstm_676/while/lstm_cell_676/Sigmoid_1Sigmoid:sequential_225/lstm_676/while/lstm_cell_676/split:output:1*
T0*'
_output_shapes
:?????????2?
/sequential_225/lstm_676/while/lstm_cell_676/mulMul9sequential_225/lstm_676/while/lstm_cell_676/Sigmoid_1:y:0+sequential_225_lstm_676_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
0sequential_225/lstm_676/while/lstm_cell_676/ReluRelu:sequential_225/lstm_676/while/lstm_cell_676/split:output:2*
T0*'
_output_shapes
:?????????2?
1sequential_225/lstm_676/while/lstm_cell_676/mul_1Mul7sequential_225/lstm_676/while/lstm_cell_676/Sigmoid:y:0>sequential_225/lstm_676/while/lstm_cell_676/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
1sequential_225/lstm_676/while/lstm_cell_676/add_1AddV23sequential_225/lstm_676/while/lstm_cell_676/mul:z:05sequential_225/lstm_676/while/lstm_cell_676/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
5sequential_225/lstm_676/while/lstm_cell_676/Sigmoid_2Sigmoid:sequential_225/lstm_676/while/lstm_cell_676/split:output:3*
T0*'
_output_shapes
:?????????2?
2sequential_225/lstm_676/while/lstm_cell_676/Relu_1Relu5sequential_225/lstm_676/while/lstm_cell_676/add_1:z:0*
T0*'
_output_shapes
:?????????2?
1sequential_225/lstm_676/while/lstm_cell_676/mul_2Mul9sequential_225/lstm_676/while/lstm_cell_676/Sigmoid_2:y:0@sequential_225/lstm_676/while/lstm_cell_676/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
Bsequential_225/lstm_676/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_225_lstm_676_while_placeholder_1)sequential_225_lstm_676_while_placeholder5sequential_225/lstm_676/while/lstm_cell_676/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_225/lstm_676/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_225/lstm_676/while/addAddV2)sequential_225_lstm_676_while_placeholder,sequential_225/lstm_676/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_225/lstm_676/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_225/lstm_676/while/add_1AddV2Hsequential_225_lstm_676_while_sequential_225_lstm_676_while_loop_counter.sequential_225/lstm_676/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_225/lstm_676/while/IdentityIdentity'sequential_225/lstm_676/while/add_1:z:0#^sequential_225/lstm_676/while/NoOp*
T0*
_output_shapes
: ?
(sequential_225/lstm_676/while/Identity_1IdentityNsequential_225_lstm_676_while_sequential_225_lstm_676_while_maximum_iterations#^sequential_225/lstm_676/while/NoOp*
T0*
_output_shapes
: ?
(sequential_225/lstm_676/while/Identity_2Identity%sequential_225/lstm_676/while/add:z:0#^sequential_225/lstm_676/while/NoOp*
T0*
_output_shapes
: ?
(sequential_225/lstm_676/while/Identity_3IdentityRsequential_225/lstm_676/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_225/lstm_676/while/NoOp*
T0*
_output_shapes
: ?
(sequential_225/lstm_676/while/Identity_4Identity5sequential_225/lstm_676/while/lstm_cell_676/mul_2:z:0#^sequential_225/lstm_676/while/NoOp*
T0*'
_output_shapes
:?????????2?
(sequential_225/lstm_676/while/Identity_5Identity5sequential_225/lstm_676/while/lstm_cell_676/add_1:z:0#^sequential_225/lstm_676/while/NoOp*
T0*'
_output_shapes
:?????????2?
"sequential_225/lstm_676/while/NoOpNoOpC^sequential_225/lstm_676/while/lstm_cell_676/BiasAdd/ReadVariableOpB^sequential_225/lstm_676/while/lstm_cell_676/MatMul/ReadVariableOpD^sequential_225/lstm_676/while/lstm_cell_676/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_225_lstm_676_while_identity/sequential_225/lstm_676/while/Identity:output:0"]
(sequential_225_lstm_676_while_identity_11sequential_225/lstm_676/while/Identity_1:output:0"]
(sequential_225_lstm_676_while_identity_21sequential_225/lstm_676/while/Identity_2:output:0"]
(sequential_225_lstm_676_while_identity_31sequential_225/lstm_676/while/Identity_3:output:0"]
(sequential_225_lstm_676_while_identity_41sequential_225/lstm_676/while/Identity_4:output:0"]
(sequential_225_lstm_676_while_identity_51sequential_225/lstm_676/while/Identity_5:output:0"?
Ksequential_225_lstm_676_while_lstm_cell_676_biasadd_readvariableop_resourceMsequential_225_lstm_676_while_lstm_cell_676_biasadd_readvariableop_resource_0"?
Lsequential_225_lstm_676_while_lstm_cell_676_matmul_1_readvariableop_resourceNsequential_225_lstm_676_while_lstm_cell_676_matmul_1_readvariableop_resource_0"?
Jsequential_225_lstm_676_while_lstm_cell_676_matmul_readvariableop_resourceLsequential_225_lstm_676_while_lstm_cell_676_matmul_readvariableop_resource_0"?
Esequential_225_lstm_676_while_sequential_225_lstm_676_strided_slice_1Gsequential_225_lstm_676_while_sequential_225_lstm_676_strided_slice_1_0"?
?sequential_225_lstm_676_while_tensorarrayv2read_tensorlistgetitem_sequential_225_lstm_676_tensorarrayunstack_tensorlistfromtensor?sequential_225_lstm_676_while_tensorarrayv2read_tensorlistgetitem_sequential_225_lstm_676_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2?
Bsequential_225/lstm_676/while/lstm_cell_676/BiasAdd/ReadVariableOpBsequential_225/lstm_676/while/lstm_cell_676/BiasAdd/ReadVariableOp2?
Asequential_225/lstm_676/while/lstm_cell_676/MatMul/ReadVariableOpAsequential_225/lstm_676/while/lstm_cell_676/MatMul/ReadVariableOp2?
Csequential_225/lstm_676/while/lstm_cell_676/MatMul_1/ReadVariableOpCsequential_225/lstm_676/while/lstm_cell_676/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_4277395
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4277395___redundant_placeholder05
1while_while_cond_4277395___redundant_placeholder15
1while_while_cond_4277395___redundant_placeholder25
1while_while_cond_4277395___redundant_placeholder3
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
while_cond_4277230
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4277230___redundant_placeholder05
1while_while_cond_4277230___redundant_placeholder15
1while_while_cond_4277230___redundant_placeholder25
1while_while_cond_4277230___redundant_placeholder3
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
while_body_4279751
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_676_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_676_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_676_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_676_matmul_readvariableop_resource:	d?G
4while_lstm_cell_676_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_676_biasadd_readvariableop_resource:	???*while/lstm_cell_676/BiasAdd/ReadVariableOp?)while/lstm_cell_676/MatMul/ReadVariableOp?+while/lstm_cell_676/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_676/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_676_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_676/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_676/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_676/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_676_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_676/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_676/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_676/addAddV2$while/lstm_cell_676/MatMul:product:0&while/lstm_cell_676/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_676/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_676_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_676/BiasAddBiasAddwhile/lstm_cell_676/add:z:02while/lstm_cell_676/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_676/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_676/splitSplit,while/lstm_cell_676/split/split_dim:output:0$while/lstm_cell_676/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_676/SigmoidSigmoid"while/lstm_cell_676/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_676/Sigmoid_1Sigmoid"while/lstm_cell_676/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_676/mulMul!while/lstm_cell_676/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_676/ReluRelu"while/lstm_cell_676/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_676/mul_1Mulwhile/lstm_cell_676/Sigmoid:y:0&while/lstm_cell_676/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_676/add_1AddV2while/lstm_cell_676/mul:z:0while/lstm_cell_676/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_676/Sigmoid_2Sigmoid"while/lstm_cell_676/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_676/Relu_1Reluwhile/lstm_cell_676/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_676/mul_2Mul!while/lstm_cell_676/Sigmoid_2:y:0(while/lstm_cell_676/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_676/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_676/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_676/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_676/BiasAdd/ReadVariableOp*^while/lstm_cell_676/MatMul/ReadVariableOp,^while/lstm_cell_676/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_676_biasadd_readvariableop_resource5while_lstm_cell_676_biasadd_readvariableop_resource_0"n
4while_lstm_cell_676_matmul_1_readvariableop_resource6while_lstm_cell_676_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_676_matmul_readvariableop_resource4while_lstm_cell_676_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_676/BiasAdd/ReadVariableOp*while/lstm_cell_676/BiasAdd/ReadVariableOp2V
)while/lstm_cell_676/MatMul/ReadVariableOp)while/lstm_cell_676/MatMul/ReadVariableOp2Z
+while/lstm_cell_676/MatMul_1/ReadVariableOp+while/lstm_cell_676/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_4280367
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_677_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_677_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_677_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_677_matmul_readvariableop_resource:2(F
4while_lstm_cell_677_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_677_biasadd_readvariableop_resource:(??*while/lstm_cell_677/BiasAdd/ReadVariableOp?)while/lstm_cell_677/MatMul/ReadVariableOp?+while/lstm_cell_677/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_677/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_677_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_677/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_677/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_677/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_677_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_677/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_677/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_677/addAddV2$while/lstm_cell_677/MatMul:product:0&while/lstm_cell_677/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_677/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_677_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_677/BiasAddBiasAddwhile/lstm_cell_677/add:z:02while/lstm_cell_677/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_677/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_677/splitSplit,while/lstm_cell_677/split/split_dim:output:0$while/lstm_cell_677/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_677/SigmoidSigmoid"while/lstm_cell_677/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_677/Sigmoid_1Sigmoid"while/lstm_cell_677/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_677/mulMul!while/lstm_cell_677/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_677/ReluRelu"while/lstm_cell_677/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_677/mul_1Mulwhile/lstm_cell_677/Sigmoid:y:0&while/lstm_cell_677/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_677/add_1AddV2while/lstm_cell_677/mul:z:0while/lstm_cell_677/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_677/Sigmoid_2Sigmoid"while/lstm_cell_677/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_677/Relu_1Reluwhile/lstm_cell_677/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_677/mul_2Mul!while/lstm_cell_677/Sigmoid_2:y:0(while/lstm_cell_677/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_677/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_677/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_677/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_677/BiasAdd/ReadVariableOp*^while/lstm_cell_677/MatMul/ReadVariableOp,^while/lstm_cell_677/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_677_biasadd_readvariableop_resource5while_lstm_cell_677_biasadd_readvariableop_resource_0"n
4while_lstm_cell_677_matmul_1_readvariableop_resource6while_lstm_cell_677_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_677_matmul_readvariableop_resource4while_lstm_cell_677_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_677/BiasAdd/ReadVariableOp*while/lstm_cell_677/BiasAdd/ReadVariableOp2V
)while/lstm_cell_677/MatMul/ReadVariableOp)while/lstm_cell_677/MatMul/ReadVariableOp2Z
+while/lstm_cell_677/MatMul_1/ReadVariableOp+while/lstm_cell_677/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_675_layer_call_and_return_conditional_losses_4280568

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
?
*__inference_lstm_675_layer_call_fn_4278625
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
E__inference_lstm_675_layer_call_and_return_conditional_losses_4275776|
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
while_cond_4276549
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4276549___redundant_placeholder05
1while_while_cond_4276549___redundant_placeholder15
1while_while_cond_4276549___redundant_placeholder25
1while_while_cond_4276549___redundant_placeholder3
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
lstm_676_while_cond_4277946.
*lstm_676_while_lstm_676_while_loop_counter4
0lstm_676_while_lstm_676_while_maximum_iterations
lstm_676_while_placeholder 
lstm_676_while_placeholder_1 
lstm_676_while_placeholder_2 
lstm_676_while_placeholder_30
,lstm_676_while_less_lstm_676_strided_slice_1G
Clstm_676_while_lstm_676_while_cond_4277946___redundant_placeholder0G
Clstm_676_while_lstm_676_while_cond_4277946___redundant_placeholder1G
Clstm_676_while_lstm_676_while_cond_4277946___redundant_placeholder2G
Clstm_676_while_lstm_676_while_cond_4277946___redundant_placeholder3
lstm_676_while_identity
?
lstm_676/while/LessLesslstm_676_while_placeholder,lstm_676_while_less_lstm_676_strided_slice_1*
T0*
_output_shapes
: ]
lstm_676/while/IdentityIdentitylstm_676/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_676_while_identity lstm_676/while/Identity:output:0*(
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
J__inference_lstm_cell_675_layer_call_and_return_conditional_losses_4275502

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
?
?
J__inference_lstm_cell_677_layer_call_and_return_conditional_losses_4280764

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
while_cond_4276406
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4276406___redundant_placeholder05
1while_while_cond_4276406___redundant_placeholder15
1while_while_cond_4276406___redundant_placeholder25
1while_while_cond_4276406___redundant_placeholder3
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
while_cond_4279937
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4279937___redundant_placeholder05
1while_while_cond_4279937___redundant_placeholder15
1while_while_cond_4279937___redundant_placeholder25
1while_while_cond_4279937___redundant_placeholder3
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
*__inference_lstm_677_layer_call_fn_4279868

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
E__inference_lstm_677_layer_call_and_return_conditional_losses_4276934o
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
while_cond_4279607
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4279607___redundant_placeholder05
1while_while_cond_4279607___redundant_placeholder15
1while_while_cond_4279607___redundant_placeholder25
1while_while_cond_4279607___redundant_placeholder3
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
*sequential_225_lstm_677_while_cond_4275344L
Hsequential_225_lstm_677_while_sequential_225_lstm_677_while_loop_counterR
Nsequential_225_lstm_677_while_sequential_225_lstm_677_while_maximum_iterations-
)sequential_225_lstm_677_while_placeholder/
+sequential_225_lstm_677_while_placeholder_1/
+sequential_225_lstm_677_while_placeholder_2/
+sequential_225_lstm_677_while_placeholder_3N
Jsequential_225_lstm_677_while_less_sequential_225_lstm_677_strided_slice_1e
asequential_225_lstm_677_while_sequential_225_lstm_677_while_cond_4275344___redundant_placeholder0e
asequential_225_lstm_677_while_sequential_225_lstm_677_while_cond_4275344___redundant_placeholder1e
asequential_225_lstm_677_while_sequential_225_lstm_677_while_cond_4275344___redundant_placeholder2e
asequential_225_lstm_677_while_sequential_225_lstm_677_while_cond_4275344___redundant_placeholder3*
&sequential_225_lstm_677_while_identity
?
"sequential_225/lstm_677/while/LessLess)sequential_225_lstm_677_while_placeholderJsequential_225_lstm_677_while_less_sequential_225_lstm_677_strided_slice_1*
T0*
_output_shapes
: {
&sequential_225/lstm_677/while/IdentityIdentity&sequential_225/lstm_677/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_225_lstm_677_while_identity/sequential_225/lstm_677/while/Identity:output:0*(
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
E__inference_lstm_676_layer_call_and_return_conditional_losses_4279406
inputs_0?
,lstm_cell_676_matmul_readvariableop_resource:	d?A
.lstm_cell_676_matmul_1_readvariableop_resource:	2?<
-lstm_cell_676_biasadd_readvariableop_resource:	?
identity??$lstm_cell_676/BiasAdd/ReadVariableOp?#lstm_cell_676/MatMul/ReadVariableOp?%lstm_cell_676/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_676/MatMul/ReadVariableOpReadVariableOp,lstm_cell_676_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_676/MatMulMatMulstrided_slice_2:output:0+lstm_cell_676/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_676/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_676_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_676/MatMul_1MatMulzeros:output:0-lstm_cell_676/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_676/addAddV2lstm_cell_676/MatMul:product:0 lstm_cell_676/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_676/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_676_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_676/BiasAddBiasAddlstm_cell_676/add:z:0,lstm_cell_676/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_676/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_676/splitSplit&lstm_cell_676/split/split_dim:output:0lstm_cell_676/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_676/SigmoidSigmoidlstm_cell_676/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_676/Sigmoid_1Sigmoidlstm_cell_676/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_676/mulMullstm_cell_676/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_676/ReluRelulstm_cell_676/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_676/mul_1Mullstm_cell_676/Sigmoid:y:0 lstm_cell_676/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_676/add_1AddV2lstm_cell_676/mul:z:0lstm_cell_676/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_676/Sigmoid_2Sigmoidlstm_cell_676/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_676/Relu_1Relulstm_cell_676/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_676/mul_2Mullstm_cell_676/Sigmoid_2:y:0"lstm_cell_676/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_676_matmul_readvariableop_resource.lstm_cell_676_matmul_1_readvariableop_resource-lstm_cell_676_biasadd_readvariableop_resource*
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
while_body_4279322*
condR
while_cond_4279321*K
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
NoOpNoOp%^lstm_cell_676/BiasAdd/ReadVariableOp$^lstm_cell_676/MatMul/ReadVariableOp&^lstm_cell_676/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_676/BiasAdd/ReadVariableOp$lstm_cell_676/BiasAdd/ReadVariableOp2J
#lstm_cell_676/MatMul/ReadVariableOp#lstm_cell_676/MatMul/ReadVariableOp2N
%lstm_cell_676/MatMul_1/ReadVariableOp%lstm_cell_676/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?
?
while_cond_4276215
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4276215___redundant_placeholder05
1while_while_cond_4276215___redundant_placeholder15
1while_while_cond_4276215___redundant_placeholder25
1while_while_cond_4276215___redundant_placeholder3
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
*__inference_lstm_676_layer_call_fn_4279241
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
E__inference_lstm_676_layer_call_and_return_conditional_losses_4276126|
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
E__inference_lstm_677_layer_call_and_return_conditional_losses_4276934

inputs>
,lstm_cell_677_matmul_readvariableop_resource:2(@
.lstm_cell_677_matmul_1_readvariableop_resource:
(;
-lstm_cell_677_biasadd_readvariableop_resource:(
identity??$lstm_cell_677/BiasAdd/ReadVariableOp?#lstm_cell_677/MatMul/ReadVariableOp?%lstm_cell_677/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_677/MatMul/ReadVariableOpReadVariableOp,lstm_cell_677_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_677/MatMulMatMulstrided_slice_2:output:0+lstm_cell_677/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_677/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_677_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_677/MatMul_1MatMulzeros:output:0-lstm_cell_677/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_677/addAddV2lstm_cell_677/MatMul:product:0 lstm_cell_677/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_677/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_677_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_677/BiasAddBiasAddlstm_cell_677/add:z:0,lstm_cell_677/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_677/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_677/splitSplit&lstm_cell_677/split/split_dim:output:0lstm_cell_677/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_677/SigmoidSigmoidlstm_cell_677/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_677/Sigmoid_1Sigmoidlstm_cell_677/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_677/mulMullstm_cell_677/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_677/ReluRelulstm_cell_677/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_677/mul_1Mullstm_cell_677/Sigmoid:y:0 lstm_cell_677/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_677/add_1AddV2lstm_cell_677/mul:z:0lstm_cell_677/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_677/Sigmoid_2Sigmoidlstm_cell_677/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_677/Relu_1Relulstm_cell_677/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_677/mul_2Mullstm_cell_677/Sigmoid_2:y:0"lstm_cell_677/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_677_matmul_readvariableop_resource.lstm_cell_677_matmul_1_readvariableop_resource-lstm_cell_677_biasadd_readvariableop_resource*
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
while_body_4276850*
condR
while_cond_4276849*K
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
NoOpNoOp%^lstm_cell_677/BiasAdd/ReadVariableOp$^lstm_cell_677/MatMul/ReadVariableOp&^lstm_cell_677/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_677/BiasAdd/ReadVariableOp$lstm_cell_677/BiasAdd/ReadVariableOp2J
#lstm_cell_677/MatMul/ReadVariableOp#lstm_cell_677/MatMul/ReadVariableOp2N
%lstm_cell_677/MatMul_1/ReadVariableOp%lstm_cell_677/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
while_cond_4279134
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4279134___redundant_placeholder05
1while_while_cond_4279134___redundant_placeholder15
1while_while_cond_4279134___redundant_placeholder25
1while_while_cond_4279134___redundant_placeholder3
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
while_body_4278706
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_675_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_675_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_675_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_675_matmul_readvariableop_resource:	?G
4while_lstm_cell_675_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_675_biasadd_readvariableop_resource:	???*while/lstm_cell_675/BiasAdd/ReadVariableOp?)while/lstm_cell_675/MatMul/ReadVariableOp?+while/lstm_cell_675/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_675/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_675_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_675/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_675/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_675/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_675_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_675/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_675/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_675/addAddV2$while/lstm_cell_675/MatMul:product:0&while/lstm_cell_675/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_675/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_675_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_675/BiasAddBiasAddwhile/lstm_cell_675/add:z:02while/lstm_cell_675/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_675/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_675/splitSplit,while/lstm_cell_675/split/split_dim:output:0$while/lstm_cell_675/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_675/SigmoidSigmoid"while/lstm_cell_675/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_675/Sigmoid_1Sigmoid"while/lstm_cell_675/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_675/mulMul!while/lstm_cell_675/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_675/ReluRelu"while/lstm_cell_675/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_675/mul_1Mulwhile/lstm_cell_675/Sigmoid:y:0&while/lstm_cell_675/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_675/add_1AddV2while/lstm_cell_675/mul:z:0while/lstm_cell_675/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_675/Sigmoid_2Sigmoid"while/lstm_cell_675/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_675/Relu_1Reluwhile/lstm_cell_675/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_675/mul_2Mul!while/lstm_cell_675/Sigmoid_2:y:0(while/lstm_cell_675/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_675/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_675/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_675/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_675/BiasAdd/ReadVariableOp*^while/lstm_cell_675/MatMul/ReadVariableOp,^while/lstm_cell_675/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_675_biasadd_readvariableop_resource5while_lstm_cell_675_biasadd_readvariableop_resource_0"n
4while_lstm_cell_675_matmul_1_readvariableop_resource6while_lstm_cell_675_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_675_matmul_readvariableop_resource4while_lstm_cell_675_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_675/BiasAdd/ReadVariableOp*while/lstm_cell_675/BiasAdd/ReadVariableOp2V
)while/lstm_cell_675/MatMul/ReadVariableOp)while/lstm_cell_675/MatMul/ReadVariableOp2Z
+while/lstm_cell_675/MatMul_1/ReadVariableOp+while/lstm_cell_675/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_677_layer_call_fn_4279857
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
E__inference_lstm_677_layer_call_and_return_conditional_losses_4276476o
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
/__inference_lstm_cell_677_layer_call_fn_4280700

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
J__inference_lstm_cell_677_layer_call_and_return_conditional_losses_4276348o
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
while_body_4280081
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_677_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_677_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_677_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_677_matmul_readvariableop_resource:2(F
4while_lstm_cell_677_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_677_biasadd_readvariableop_resource:(??*while/lstm_cell_677/BiasAdd/ReadVariableOp?)while/lstm_cell_677/MatMul/ReadVariableOp?+while/lstm_cell_677/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_677/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_677_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_677/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_677/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_677/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_677_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_677/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_677/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_677/addAddV2$while/lstm_cell_677/MatMul:product:0&while/lstm_cell_677/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_677/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_677_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_677/BiasAddBiasAddwhile/lstm_cell_677/add:z:02while/lstm_cell_677/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_677/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_677/splitSplit,while/lstm_cell_677/split/split_dim:output:0$while/lstm_cell_677/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_677/SigmoidSigmoid"while/lstm_cell_677/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_677/Sigmoid_1Sigmoid"while/lstm_cell_677/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_677/mulMul!while/lstm_cell_677/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_677/ReluRelu"while/lstm_cell_677/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_677/mul_1Mulwhile/lstm_cell_677/Sigmoid:y:0&while/lstm_cell_677/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_677/add_1AddV2while/lstm_cell_677/mul:z:0while/lstm_cell_677/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_677/Sigmoid_2Sigmoid"while/lstm_cell_677/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_677/Relu_1Reluwhile/lstm_cell_677/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_677/mul_2Mul!while/lstm_cell_677/Sigmoid_2:y:0(while/lstm_cell_677/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_677/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_677/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_677/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_677/BiasAdd/ReadVariableOp*^while/lstm_cell_677/MatMul/ReadVariableOp,^while/lstm_cell_677/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_677_biasadd_readvariableop_resource5while_lstm_cell_677_biasadd_readvariableop_resource_0"n
4while_lstm_cell_677_matmul_1_readvariableop_resource6while_lstm_cell_677_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_677_matmul_readvariableop_resource4while_lstm_cell_677_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_677/BiasAdd/ReadVariableOp*while/lstm_cell_677/BiasAdd/ReadVariableOp2V
)while/lstm_cell_677/MatMul/ReadVariableOp)while/lstm_cell_677/MatMul/ReadVariableOp2Z
+while/lstm_cell_677/MatMul_1/ReadVariableOp+while/lstm_cell_677/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_676_layer_call_fn_4280585

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
J__inference_lstm_cell_676_layer_call_and_return_conditional_losses_4275852o
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
 __inference__traced_save_4280907
file_prefix/
+savev2_dense_225_kernel_read_readvariableop-
)savev2_dense_225_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_675_lstm_cell_675_kernel_read_readvariableopF
Bsavev2_lstm_675_lstm_cell_675_recurrent_kernel_read_readvariableop:
6savev2_lstm_675_lstm_cell_675_bias_read_readvariableop<
8savev2_lstm_676_lstm_cell_676_kernel_read_readvariableopF
Bsavev2_lstm_676_lstm_cell_676_recurrent_kernel_read_readvariableop:
6savev2_lstm_676_lstm_cell_676_bias_read_readvariableop<
8savev2_lstm_677_lstm_cell_677_kernel_read_readvariableopF
Bsavev2_lstm_677_lstm_cell_677_recurrent_kernel_read_readvariableop:
6savev2_lstm_677_lstm_cell_677_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop6
2savev2_adam_dense_225_kernel_m_read_readvariableop4
0savev2_adam_dense_225_bias_m_read_readvariableopC
?savev2_adam_lstm_675_lstm_cell_675_kernel_m_read_readvariableopM
Isavev2_adam_lstm_675_lstm_cell_675_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_675_lstm_cell_675_bias_m_read_readvariableopC
?savev2_adam_lstm_676_lstm_cell_676_kernel_m_read_readvariableopM
Isavev2_adam_lstm_676_lstm_cell_676_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_676_lstm_cell_676_bias_m_read_readvariableopC
?savev2_adam_lstm_677_lstm_cell_677_kernel_m_read_readvariableopM
Isavev2_adam_lstm_677_lstm_cell_677_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_677_lstm_cell_677_bias_m_read_readvariableop6
2savev2_adam_dense_225_kernel_v_read_readvariableop4
0savev2_adam_dense_225_bias_v_read_readvariableopC
?savev2_adam_lstm_675_lstm_cell_675_kernel_v_read_readvariableopM
Isavev2_adam_lstm_675_lstm_cell_675_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_675_lstm_cell_675_bias_v_read_readvariableopC
?savev2_adam_lstm_676_lstm_cell_676_kernel_v_read_readvariableopM
Isavev2_adam_lstm_676_lstm_cell_676_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_676_lstm_cell_676_bias_v_read_readvariableopC
?savev2_adam_lstm_677_lstm_cell_677_kernel_v_read_readvariableopM
Isavev2_adam_lstm_677_lstm_cell_677_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_677_lstm_cell_677_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_dense_225_kernel_read_readvariableop)savev2_dense_225_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_675_lstm_cell_675_kernel_read_readvariableopBsavev2_lstm_675_lstm_cell_675_recurrent_kernel_read_readvariableop6savev2_lstm_675_lstm_cell_675_bias_read_readvariableop8savev2_lstm_676_lstm_cell_676_kernel_read_readvariableopBsavev2_lstm_676_lstm_cell_676_recurrent_kernel_read_readvariableop6savev2_lstm_676_lstm_cell_676_bias_read_readvariableop8savev2_lstm_677_lstm_cell_677_kernel_read_readvariableopBsavev2_lstm_677_lstm_cell_677_recurrent_kernel_read_readvariableop6savev2_lstm_677_lstm_cell_677_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop2savev2_adam_dense_225_kernel_m_read_readvariableop0savev2_adam_dense_225_bias_m_read_readvariableop?savev2_adam_lstm_675_lstm_cell_675_kernel_m_read_readvariableopIsavev2_adam_lstm_675_lstm_cell_675_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_675_lstm_cell_675_bias_m_read_readvariableop?savev2_adam_lstm_676_lstm_cell_676_kernel_m_read_readvariableopIsavev2_adam_lstm_676_lstm_cell_676_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_676_lstm_cell_676_bias_m_read_readvariableop?savev2_adam_lstm_677_lstm_cell_677_kernel_m_read_readvariableopIsavev2_adam_lstm_677_lstm_cell_677_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_677_lstm_cell_677_bias_m_read_readvariableop2savev2_adam_dense_225_kernel_v_read_readvariableop0savev2_adam_dense_225_bias_v_read_readvariableop?savev2_adam_lstm_675_lstm_cell_675_kernel_v_read_readvariableopIsavev2_adam_lstm_675_lstm_cell_675_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_675_lstm_cell_675_bias_v_read_readvariableop?savev2_adam_lstm_676_lstm_cell_676_kernel_v_read_readvariableopIsavev2_adam_lstm_676_lstm_cell_676_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_676_lstm_cell_676_bias_v_read_readvariableop?savev2_adam_lstm_677_lstm_cell_677_kernel_v_read_readvariableopIsavev2_adam_lstm_677_lstm_cell_677_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_677_lstm_cell_677_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
while_body_4279608
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_676_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_676_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_676_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_676_matmul_readvariableop_resource:	d?G
4while_lstm_cell_676_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_676_biasadd_readvariableop_resource:	???*while/lstm_cell_676/BiasAdd/ReadVariableOp?)while/lstm_cell_676/MatMul/ReadVariableOp?+while/lstm_cell_676/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_676/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_676_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_676/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_676/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_676/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_676_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_676/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_676/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_676/addAddV2$while/lstm_cell_676/MatMul:product:0&while/lstm_cell_676/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_676/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_676_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_676/BiasAddBiasAddwhile/lstm_cell_676/add:z:02while/lstm_cell_676/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_676/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_676/splitSplit,while/lstm_cell_676/split/split_dim:output:0$while/lstm_cell_676/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_676/SigmoidSigmoid"while/lstm_cell_676/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_676/Sigmoid_1Sigmoid"while/lstm_cell_676/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_676/mulMul!while/lstm_cell_676/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_676/ReluRelu"while/lstm_cell_676/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_676/mul_1Mulwhile/lstm_cell_676/Sigmoid:y:0&while/lstm_cell_676/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_676/add_1AddV2while/lstm_cell_676/mul:z:0while/lstm_cell_676/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_676/Sigmoid_2Sigmoid"while/lstm_cell_676/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_676/Relu_1Reluwhile/lstm_cell_676/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_676/mul_2Mul!while/lstm_cell_676/Sigmoid_2:y:0(while/lstm_cell_676/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_676/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_676/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_676/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_676/BiasAdd/ReadVariableOp*^while/lstm_cell_676/MatMul/ReadVariableOp,^while/lstm_cell_676/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_676_biasadd_readvariableop_resource5while_lstm_cell_676_biasadd_readvariableop_resource_0"n
4while_lstm_cell_676_matmul_1_readvariableop_resource6while_lstm_cell_676_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_676_matmul_readvariableop_resource4while_lstm_cell_676_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_676/BiasAdd/ReadVariableOp*while/lstm_cell_676/BiasAdd/ReadVariableOp2V
)while/lstm_cell_676/MatMul/ReadVariableOp)while/lstm_cell_676/MatMul/ReadVariableOp2Z
+while/lstm_cell_676/MatMul_1/ReadVariableOp+while/lstm_cell_676/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
F__inference_dense_225_layer_call_and_return_conditional_losses_4280470

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
0__inference_sequential_225_layer_call_fn_4277749

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
K__inference_sequential_225_layer_call_and_return_conditional_losses_4277548o
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
?
/__inference_lstm_cell_676_layer_call_fn_4280602

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
J__inference_lstm_cell_676_layer_call_and_return_conditional_losses_4275998o
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
E__inference_lstm_677_layer_call_and_return_conditional_losses_4280451

inputs>
,lstm_cell_677_matmul_readvariableop_resource:2(@
.lstm_cell_677_matmul_1_readvariableop_resource:
(;
-lstm_cell_677_biasadd_readvariableop_resource:(
identity??$lstm_cell_677/BiasAdd/ReadVariableOp?#lstm_cell_677/MatMul/ReadVariableOp?%lstm_cell_677/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_677/MatMul/ReadVariableOpReadVariableOp,lstm_cell_677_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_677/MatMulMatMulstrided_slice_2:output:0+lstm_cell_677/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_677/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_677_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_677/MatMul_1MatMulzeros:output:0-lstm_cell_677/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_677/addAddV2lstm_cell_677/MatMul:product:0 lstm_cell_677/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_677/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_677_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_677/BiasAddBiasAddlstm_cell_677/add:z:0,lstm_cell_677/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_677/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_677/splitSplit&lstm_cell_677/split/split_dim:output:0lstm_cell_677/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_677/SigmoidSigmoidlstm_cell_677/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_677/Sigmoid_1Sigmoidlstm_cell_677/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_677/mulMullstm_cell_677/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_677/ReluRelulstm_cell_677/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_677/mul_1Mullstm_cell_677/Sigmoid:y:0 lstm_cell_677/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_677/add_1AddV2lstm_cell_677/mul:z:0lstm_cell_677/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_677/Sigmoid_2Sigmoidlstm_cell_677/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_677/Relu_1Relulstm_cell_677/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_677/mul_2Mullstm_cell_677/Sigmoid_2:y:0"lstm_cell_677/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_677_matmul_readvariableop_resource.lstm_cell_677_matmul_1_readvariableop_resource-lstm_cell_677_biasadd_readvariableop_resource*
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
while_body_4280367*
condR
while_cond_4280366*K
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
NoOpNoOp%^lstm_cell_677/BiasAdd/ReadVariableOp$^lstm_cell_677/MatMul/ReadVariableOp&^lstm_cell_677/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_677/BiasAdd/ReadVariableOp$lstm_cell_677/BiasAdd/ReadVariableOp2J
#lstm_cell_677/MatMul/ReadVariableOp#lstm_cell_677/MatMul/ReadVariableOp2N
%lstm_cell_677/MatMul_1/ReadVariableOp%lstm_cell_677/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?

?
lstm_675_while_cond_4278234.
*lstm_675_while_lstm_675_while_loop_counter4
0lstm_675_while_lstm_675_while_maximum_iterations
lstm_675_while_placeholder 
lstm_675_while_placeholder_1 
lstm_675_while_placeholder_2 
lstm_675_while_placeholder_30
,lstm_675_while_less_lstm_675_strided_slice_1G
Clstm_675_while_lstm_675_while_cond_4278234___redundant_placeholder0G
Clstm_675_while_lstm_675_while_cond_4278234___redundant_placeholder1G
Clstm_675_while_lstm_675_while_cond_4278234___redundant_placeholder2G
Clstm_675_while_lstm_675_while_cond_4278234___redundant_placeholder3
lstm_675_while_identity
?
lstm_675/while/LessLesslstm_675_while_placeholder,lstm_675_while_less_lstm_675_strided_slice_1*
T0*
_output_shapes
: ]
lstm_675/while/IdentityIdentitylstm_675/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_675_while_identity lstm_675/while/Identity:output:0*(
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
while_body_4278849
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_675_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_675_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_675_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_675_matmul_readvariableop_resource:	?G
4while_lstm_cell_675_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_675_biasadd_readvariableop_resource:	???*while/lstm_cell_675/BiasAdd/ReadVariableOp?)while/lstm_cell_675/MatMul/ReadVariableOp?+while/lstm_cell_675/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_675/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_675_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_675/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_675/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_675/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_675_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_675/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_675/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_675/addAddV2$while/lstm_cell_675/MatMul:product:0&while/lstm_cell_675/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_675/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_675_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_675/BiasAddBiasAddwhile/lstm_cell_675/add:z:02while/lstm_cell_675/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_675/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_675/splitSplit,while/lstm_cell_675/split/split_dim:output:0$while/lstm_cell_675/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_675/SigmoidSigmoid"while/lstm_cell_675/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_675/Sigmoid_1Sigmoid"while/lstm_cell_675/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_675/mulMul!while/lstm_cell_675/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_675/ReluRelu"while/lstm_cell_675/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_675/mul_1Mulwhile/lstm_cell_675/Sigmoid:y:0&while/lstm_cell_675/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_675/add_1AddV2while/lstm_cell_675/mul:z:0while/lstm_cell_675/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_675/Sigmoid_2Sigmoid"while/lstm_cell_675/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_675/Relu_1Reluwhile/lstm_cell_675/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_675/mul_2Mul!while/lstm_cell_675/Sigmoid_2:y:0(while/lstm_cell_675/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_675/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_675/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_675/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_675/BiasAdd/ReadVariableOp*^while/lstm_cell_675/MatMul/ReadVariableOp,^while/lstm_cell_675/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_675_biasadd_readvariableop_resource5while_lstm_cell_675_biasadd_readvariableop_resource_0"n
4while_lstm_cell_675_matmul_1_readvariableop_resource6while_lstm_cell_675_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_675_matmul_readvariableop_resource4while_lstm_cell_675_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_675/BiasAdd/ReadVariableOp*while/lstm_cell_675/BiasAdd/ReadVariableOp2V
)while/lstm_cell_675/MatMul/ReadVariableOp)while/lstm_cell_675/MatMul/ReadVariableOp2Z
+while/lstm_cell_675/MatMul_1/ReadVariableOp+while/lstm_cell_675/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_4276216
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_677_4276240_0:2(/
while_lstm_cell_677_4276242_0:
(+
while_lstm_cell_677_4276244_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_677_4276240:2(-
while_lstm_cell_677_4276242:
()
while_lstm_cell_677_4276244:(??+while/lstm_cell_677/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_677/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_677_4276240_0while_lstm_cell_677_4276242_0while_lstm_cell_677_4276244_0*
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
J__inference_lstm_cell_677_layer_call_and_return_conditional_losses_4276202?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_677/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_677/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_677/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_677/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_677_4276240while_lstm_cell_677_4276240_0"<
while_lstm_cell_677_4276242while_lstm_cell_677_4276242_0"<
while_lstm_cell_677_4276244while_lstm_cell_677_4276244_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_677/StatefulPartitionedCall+while/lstm_cell_677/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_677_layer_call_and_return_conditional_losses_4280165
inputs_0>
,lstm_cell_677_matmul_readvariableop_resource:2(@
.lstm_cell_677_matmul_1_readvariableop_resource:
(;
-lstm_cell_677_biasadd_readvariableop_resource:(
identity??$lstm_cell_677/BiasAdd/ReadVariableOp?#lstm_cell_677/MatMul/ReadVariableOp?%lstm_cell_677/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_677/MatMul/ReadVariableOpReadVariableOp,lstm_cell_677_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_677/MatMulMatMulstrided_slice_2:output:0+lstm_cell_677/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_677/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_677_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_677/MatMul_1MatMulzeros:output:0-lstm_cell_677/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_677/addAddV2lstm_cell_677/MatMul:product:0 lstm_cell_677/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_677/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_677_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_677/BiasAddBiasAddlstm_cell_677/add:z:0,lstm_cell_677/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_677/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_677/splitSplit&lstm_cell_677/split/split_dim:output:0lstm_cell_677/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_677/SigmoidSigmoidlstm_cell_677/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_677/Sigmoid_1Sigmoidlstm_cell_677/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_677/mulMullstm_cell_677/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_677/ReluRelulstm_cell_677/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_677/mul_1Mullstm_cell_677/Sigmoid:y:0 lstm_cell_677/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_677/add_1AddV2lstm_cell_677/mul:z:0lstm_cell_677/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_677/Sigmoid_2Sigmoidlstm_cell_677/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_677/Relu_1Relulstm_cell_677/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_677/mul_2Mullstm_cell_677/Sigmoid_2:y:0"lstm_cell_677/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_677_matmul_readvariableop_resource.lstm_cell_677_matmul_1_readvariableop_resource-lstm_cell_677_biasadd_readvariableop_resource*
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
while_body_4280081*
condR
while_cond_4280080*K
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
NoOpNoOp%^lstm_cell_677/BiasAdd/ReadVariableOp$^lstm_cell_677/MatMul/ReadVariableOp&^lstm_cell_677/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_677/BiasAdd/ReadVariableOp$lstm_cell_677/BiasAdd/ReadVariableOp2J
#lstm_cell_677/MatMul/ReadVariableOp#lstm_cell_677/MatMul/ReadVariableOp2N
%lstm_cell_677/MatMul_1/ReadVariableOp%lstm_cell_677/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?
?
K__inference_sequential_225_layer_call_and_return_conditional_losses_4276959

inputs#
lstm_675_4276635:	?#
lstm_675_4276637:	d?
lstm_675_4276639:	?#
lstm_676_4276785:	d?#
lstm_676_4276787:	2?
lstm_676_4276789:	?"
lstm_677_4276935:2("
lstm_677_4276937:
(
lstm_677_4276939:(#
dense_225_4276953:

dense_225_4276955:
identity??!dense_225/StatefulPartitionedCall? lstm_675/StatefulPartitionedCall? lstm_676/StatefulPartitionedCall? lstm_677/StatefulPartitionedCall?
 lstm_675/StatefulPartitionedCallStatefulPartitionedCallinputslstm_675_4276635lstm_675_4276637lstm_675_4276639*
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
E__inference_lstm_675_layer_call_and_return_conditional_losses_4276634?
 lstm_676/StatefulPartitionedCallStatefulPartitionedCall)lstm_675/StatefulPartitionedCall:output:0lstm_676_4276785lstm_676_4276787lstm_676_4276789*
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
E__inference_lstm_676_layer_call_and_return_conditional_losses_4276784?
 lstm_677/StatefulPartitionedCallStatefulPartitionedCall)lstm_676/StatefulPartitionedCall:output:0lstm_677_4276935lstm_677_4276937lstm_677_4276939*
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
E__inference_lstm_677_layer_call_and_return_conditional_losses_4276934?
!dense_225/StatefulPartitionedCallStatefulPartitionedCall)lstm_677/StatefulPartitionedCall:output:0dense_225_4276953dense_225_4276955*
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
F__inference_dense_225_layer_call_and_return_conditional_losses_4276952y
IdentityIdentity*dense_225/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_225/StatefulPartitionedCall!^lstm_675/StatefulPartitionedCall!^lstm_676/StatefulPartitionedCall!^lstm_677/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_225/StatefulPartitionedCall!dense_225/StatefulPartitionedCall2D
 lstm_675/StatefulPartitionedCall lstm_675/StatefulPartitionedCall2D
 lstm_676/StatefulPartitionedCall lstm_676/StatefulPartitionedCall2D
 lstm_677/StatefulPartitionedCall lstm_677/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_677_layer_call_and_return_conditional_losses_4276348

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
?C
?

lstm_676_while_body_4277947.
*lstm_676_while_lstm_676_while_loop_counter4
0lstm_676_while_lstm_676_while_maximum_iterations
lstm_676_while_placeholder 
lstm_676_while_placeholder_1 
lstm_676_while_placeholder_2 
lstm_676_while_placeholder_3-
)lstm_676_while_lstm_676_strided_slice_1_0i
elstm_676_while_tensorarrayv2read_tensorlistgetitem_lstm_676_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_676_while_lstm_cell_676_matmul_readvariableop_resource_0:	d?R
?lstm_676_while_lstm_cell_676_matmul_1_readvariableop_resource_0:	2?M
>lstm_676_while_lstm_cell_676_biasadd_readvariableop_resource_0:	?
lstm_676_while_identity
lstm_676_while_identity_1
lstm_676_while_identity_2
lstm_676_while_identity_3
lstm_676_while_identity_4
lstm_676_while_identity_5+
'lstm_676_while_lstm_676_strided_slice_1g
clstm_676_while_tensorarrayv2read_tensorlistgetitem_lstm_676_tensorarrayunstack_tensorlistfromtensorN
;lstm_676_while_lstm_cell_676_matmul_readvariableop_resource:	d?P
=lstm_676_while_lstm_cell_676_matmul_1_readvariableop_resource:	2?K
<lstm_676_while_lstm_cell_676_biasadd_readvariableop_resource:	???3lstm_676/while/lstm_cell_676/BiasAdd/ReadVariableOp?2lstm_676/while/lstm_cell_676/MatMul/ReadVariableOp?4lstm_676/while/lstm_cell_676/MatMul_1/ReadVariableOp?
@lstm_676/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_676/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_676_while_tensorarrayv2read_tensorlistgetitem_lstm_676_tensorarrayunstack_tensorlistfromtensor_0lstm_676_while_placeholderIlstm_676/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_676/while/lstm_cell_676/MatMul/ReadVariableOpReadVariableOp=lstm_676_while_lstm_cell_676_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_676/while/lstm_cell_676/MatMulMatMul9lstm_676/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_676/while/lstm_cell_676/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_676/while/lstm_cell_676/MatMul_1/ReadVariableOpReadVariableOp?lstm_676_while_lstm_cell_676_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_676/while/lstm_cell_676/MatMul_1MatMullstm_676_while_placeholder_2<lstm_676/while/lstm_cell_676/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_676/while/lstm_cell_676/addAddV2-lstm_676/while/lstm_cell_676/MatMul:product:0/lstm_676/while/lstm_cell_676/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_676/while/lstm_cell_676/BiasAdd/ReadVariableOpReadVariableOp>lstm_676_while_lstm_cell_676_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_676/while/lstm_cell_676/BiasAddBiasAdd$lstm_676/while/lstm_cell_676/add:z:0;lstm_676/while/lstm_cell_676/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_676/while/lstm_cell_676/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_676/while/lstm_cell_676/splitSplit5lstm_676/while/lstm_cell_676/split/split_dim:output:0-lstm_676/while/lstm_cell_676/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_676/while/lstm_cell_676/SigmoidSigmoid+lstm_676/while/lstm_cell_676/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_676/while/lstm_cell_676/Sigmoid_1Sigmoid+lstm_676/while/lstm_cell_676/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_676/while/lstm_cell_676/mulMul*lstm_676/while/lstm_cell_676/Sigmoid_1:y:0lstm_676_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_676/while/lstm_cell_676/ReluRelu+lstm_676/while/lstm_cell_676/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_676/while/lstm_cell_676/mul_1Mul(lstm_676/while/lstm_cell_676/Sigmoid:y:0/lstm_676/while/lstm_cell_676/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_676/while/lstm_cell_676/add_1AddV2$lstm_676/while/lstm_cell_676/mul:z:0&lstm_676/while/lstm_cell_676/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_676/while/lstm_cell_676/Sigmoid_2Sigmoid+lstm_676/while/lstm_cell_676/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_676/while/lstm_cell_676/Relu_1Relu&lstm_676/while/lstm_cell_676/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_676/while/lstm_cell_676/mul_2Mul*lstm_676/while/lstm_cell_676/Sigmoid_2:y:01lstm_676/while/lstm_cell_676/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_676/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_676_while_placeholder_1lstm_676_while_placeholder&lstm_676/while/lstm_cell_676/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_676/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_676/while/addAddV2lstm_676_while_placeholderlstm_676/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_676/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_676/while/add_1AddV2*lstm_676_while_lstm_676_while_loop_counterlstm_676/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_676/while/IdentityIdentitylstm_676/while/add_1:z:0^lstm_676/while/NoOp*
T0*
_output_shapes
: ?
lstm_676/while/Identity_1Identity0lstm_676_while_lstm_676_while_maximum_iterations^lstm_676/while/NoOp*
T0*
_output_shapes
: t
lstm_676/while/Identity_2Identitylstm_676/while/add:z:0^lstm_676/while/NoOp*
T0*
_output_shapes
: ?
lstm_676/while/Identity_3IdentityClstm_676/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_676/while/NoOp*
T0*
_output_shapes
: ?
lstm_676/while/Identity_4Identity&lstm_676/while/lstm_cell_676/mul_2:z:0^lstm_676/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_676/while/Identity_5Identity&lstm_676/while/lstm_cell_676/add_1:z:0^lstm_676/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_676/while/NoOpNoOp4^lstm_676/while/lstm_cell_676/BiasAdd/ReadVariableOp3^lstm_676/while/lstm_cell_676/MatMul/ReadVariableOp5^lstm_676/while/lstm_cell_676/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_676_while_identity lstm_676/while/Identity:output:0"?
lstm_676_while_identity_1"lstm_676/while/Identity_1:output:0"?
lstm_676_while_identity_2"lstm_676/while/Identity_2:output:0"?
lstm_676_while_identity_3"lstm_676/while/Identity_3:output:0"?
lstm_676_while_identity_4"lstm_676/while/Identity_4:output:0"?
lstm_676_while_identity_5"lstm_676/while/Identity_5:output:0"T
'lstm_676_while_lstm_676_strided_slice_1)lstm_676_while_lstm_676_strided_slice_1_0"~
<lstm_676_while_lstm_cell_676_biasadd_readvariableop_resource>lstm_676_while_lstm_cell_676_biasadd_readvariableop_resource_0"?
=lstm_676_while_lstm_cell_676_matmul_1_readvariableop_resource?lstm_676_while_lstm_cell_676_matmul_1_readvariableop_resource_0"|
;lstm_676_while_lstm_cell_676_matmul_readvariableop_resource=lstm_676_while_lstm_cell_676_matmul_readvariableop_resource_0"?
clstm_676_while_tensorarrayv2read_tensorlistgetitem_lstm_676_tensorarrayunstack_tensorlistfromtensorelstm_676_while_tensorarrayv2read_tensorlistgetitem_lstm_676_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_676/while/lstm_cell_676/BiasAdd/ReadVariableOp3lstm_676/while/lstm_cell_676/BiasAdd/ReadVariableOp2h
2lstm_676/while/lstm_cell_676/MatMul/ReadVariableOp2lstm_676/while/lstm_cell_676/MatMul/ReadVariableOp2l
4lstm_676/while/lstm_cell_676/MatMul_1/ReadVariableOp4lstm_676/while/lstm_cell_676/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_4276057
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_676_4276081_0:	d?0
while_lstm_cell_676_4276083_0:	2?,
while_lstm_cell_676_4276085_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_676_4276081:	d?.
while_lstm_cell_676_4276083:	2?*
while_lstm_cell_676_4276085:	???+while/lstm_cell_676/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_676/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_676_4276081_0while_lstm_cell_676_4276083_0while_lstm_cell_676_4276085_0*
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
J__inference_lstm_cell_676_layer_call_and_return_conditional_losses_4275998?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_676/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_676/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_676/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_676/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_676_4276081while_lstm_cell_676_4276081_0"<
while_lstm_cell_676_4276083while_lstm_cell_676_4276083_0"<
while_lstm_cell_676_4276085while_lstm_cell_676_4276085_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_676/StatefulPartitionedCall+while/lstm_cell_676/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_cond_4276849
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4276849___redundant_placeholder05
1while_while_cond_4276849___redundant_placeholder15
1while_while_cond_4276849___redundant_placeholder25
1while_while_cond_4276849___redundant_placeholder3
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
/__inference_lstm_cell_675_layer_call_fn_4280487

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
J__inference_lstm_cell_675_layer_call_and_return_conditional_losses_4275502o
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
while_cond_4276056
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4276056___redundant_placeholder05
1while_while_cond_4276056___redundant_placeholder15
1while_while_cond_4276056___redundant_placeholder25
1while_while_cond_4276056___redundant_placeholder3
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
E__inference_lstm_677_layer_call_and_return_conditional_losses_4280022
inputs_0>
,lstm_cell_677_matmul_readvariableop_resource:2(@
.lstm_cell_677_matmul_1_readvariableop_resource:
(;
-lstm_cell_677_biasadd_readvariableop_resource:(
identity??$lstm_cell_677/BiasAdd/ReadVariableOp?#lstm_cell_677/MatMul/ReadVariableOp?%lstm_cell_677/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_677/MatMul/ReadVariableOpReadVariableOp,lstm_cell_677_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_677/MatMulMatMulstrided_slice_2:output:0+lstm_cell_677/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_677/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_677_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_677/MatMul_1MatMulzeros:output:0-lstm_cell_677/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_677/addAddV2lstm_cell_677/MatMul:product:0 lstm_cell_677/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_677/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_677_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_677/BiasAddBiasAddlstm_cell_677/add:z:0,lstm_cell_677/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_677/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_677/splitSplit&lstm_cell_677/split/split_dim:output:0lstm_cell_677/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_677/SigmoidSigmoidlstm_cell_677/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_677/Sigmoid_1Sigmoidlstm_cell_677/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_677/mulMullstm_cell_677/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_677/ReluRelulstm_cell_677/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_677/mul_1Mullstm_cell_677/Sigmoid:y:0 lstm_cell_677/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_677/add_1AddV2lstm_cell_677/mul:z:0lstm_cell_677/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_677/Sigmoid_2Sigmoidlstm_cell_677/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_677/Relu_1Relulstm_cell_677/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_677/mul_2Mullstm_cell_677/Sigmoid_2:y:0"lstm_cell_677/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_677_matmul_readvariableop_resource.lstm_cell_677_matmul_1_readvariableop_resource-lstm_cell_677_biasadd_readvariableop_resource*
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
while_body_4279938*
condR
while_cond_4279937*K
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
NoOpNoOp%^lstm_cell_677/BiasAdd/ReadVariableOp$^lstm_cell_677/MatMul/ReadVariableOp&^lstm_cell_677/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_677/BiasAdd/ReadVariableOp$lstm_cell_677/BiasAdd/ReadVariableOp2J
#lstm_cell_677/MatMul/ReadVariableOp#lstm_cell_677/MatMul/ReadVariableOp2N
%lstm_cell_677/MatMul_1/ReadVariableOp%lstm_cell_677/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?
?
*__inference_lstm_676_layer_call_fn_4279263

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
E__inference_lstm_676_layer_call_and_return_conditional_losses_4277315s
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
?
*__inference_lstm_676_layer_call_fn_4279230
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
E__inference_lstm_676_layer_call_and_return_conditional_losses_4275935|
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
?C
?

lstm_677_while_body_4278513.
*lstm_677_while_lstm_677_while_loop_counter4
0lstm_677_while_lstm_677_while_maximum_iterations
lstm_677_while_placeholder 
lstm_677_while_placeholder_1 
lstm_677_while_placeholder_2 
lstm_677_while_placeholder_3-
)lstm_677_while_lstm_677_strided_slice_1_0i
elstm_677_while_tensorarrayv2read_tensorlistgetitem_lstm_677_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_677_while_lstm_cell_677_matmul_readvariableop_resource_0:2(Q
?lstm_677_while_lstm_cell_677_matmul_1_readvariableop_resource_0:
(L
>lstm_677_while_lstm_cell_677_biasadd_readvariableop_resource_0:(
lstm_677_while_identity
lstm_677_while_identity_1
lstm_677_while_identity_2
lstm_677_while_identity_3
lstm_677_while_identity_4
lstm_677_while_identity_5+
'lstm_677_while_lstm_677_strided_slice_1g
clstm_677_while_tensorarrayv2read_tensorlistgetitem_lstm_677_tensorarrayunstack_tensorlistfromtensorM
;lstm_677_while_lstm_cell_677_matmul_readvariableop_resource:2(O
=lstm_677_while_lstm_cell_677_matmul_1_readvariableop_resource:
(J
<lstm_677_while_lstm_cell_677_biasadd_readvariableop_resource:(??3lstm_677/while/lstm_cell_677/BiasAdd/ReadVariableOp?2lstm_677/while/lstm_cell_677/MatMul/ReadVariableOp?4lstm_677/while/lstm_cell_677/MatMul_1/ReadVariableOp?
@lstm_677/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_677/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_677_while_tensorarrayv2read_tensorlistgetitem_lstm_677_tensorarrayunstack_tensorlistfromtensor_0lstm_677_while_placeholderIlstm_677/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_677/while/lstm_cell_677/MatMul/ReadVariableOpReadVariableOp=lstm_677_while_lstm_cell_677_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_677/while/lstm_cell_677/MatMulMatMul9lstm_677/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_677/while/lstm_cell_677/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_677/while/lstm_cell_677/MatMul_1/ReadVariableOpReadVariableOp?lstm_677_while_lstm_cell_677_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_677/while/lstm_cell_677/MatMul_1MatMullstm_677_while_placeholder_2<lstm_677/while/lstm_cell_677/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_677/while/lstm_cell_677/addAddV2-lstm_677/while/lstm_cell_677/MatMul:product:0/lstm_677/while/lstm_cell_677/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_677/while/lstm_cell_677/BiasAdd/ReadVariableOpReadVariableOp>lstm_677_while_lstm_cell_677_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_677/while/lstm_cell_677/BiasAddBiasAdd$lstm_677/while/lstm_cell_677/add:z:0;lstm_677/while/lstm_cell_677/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_677/while/lstm_cell_677/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_677/while/lstm_cell_677/splitSplit5lstm_677/while/lstm_cell_677/split/split_dim:output:0-lstm_677/while/lstm_cell_677/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_677/while/lstm_cell_677/SigmoidSigmoid+lstm_677/while/lstm_cell_677/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_677/while/lstm_cell_677/Sigmoid_1Sigmoid+lstm_677/while/lstm_cell_677/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_677/while/lstm_cell_677/mulMul*lstm_677/while/lstm_cell_677/Sigmoid_1:y:0lstm_677_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_677/while/lstm_cell_677/ReluRelu+lstm_677/while/lstm_cell_677/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_677/while/lstm_cell_677/mul_1Mul(lstm_677/while/lstm_cell_677/Sigmoid:y:0/lstm_677/while/lstm_cell_677/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_677/while/lstm_cell_677/add_1AddV2$lstm_677/while/lstm_cell_677/mul:z:0&lstm_677/while/lstm_cell_677/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_677/while/lstm_cell_677/Sigmoid_2Sigmoid+lstm_677/while/lstm_cell_677/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_677/while/lstm_cell_677/Relu_1Relu&lstm_677/while/lstm_cell_677/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_677/while/lstm_cell_677/mul_2Mul*lstm_677/while/lstm_cell_677/Sigmoid_2:y:01lstm_677/while/lstm_cell_677/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_677/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_677_while_placeholder_1lstm_677_while_placeholder&lstm_677/while/lstm_cell_677/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_677/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_677/while/addAddV2lstm_677_while_placeholderlstm_677/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_677/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_677/while/add_1AddV2*lstm_677_while_lstm_677_while_loop_counterlstm_677/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_677/while/IdentityIdentitylstm_677/while/add_1:z:0^lstm_677/while/NoOp*
T0*
_output_shapes
: ?
lstm_677/while/Identity_1Identity0lstm_677_while_lstm_677_while_maximum_iterations^lstm_677/while/NoOp*
T0*
_output_shapes
: t
lstm_677/while/Identity_2Identitylstm_677/while/add:z:0^lstm_677/while/NoOp*
T0*
_output_shapes
: ?
lstm_677/while/Identity_3IdentityClstm_677/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_677/while/NoOp*
T0*
_output_shapes
: ?
lstm_677/while/Identity_4Identity&lstm_677/while/lstm_cell_677/mul_2:z:0^lstm_677/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_677/while/Identity_5Identity&lstm_677/while/lstm_cell_677/add_1:z:0^lstm_677/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_677/while/NoOpNoOp4^lstm_677/while/lstm_cell_677/BiasAdd/ReadVariableOp3^lstm_677/while/lstm_cell_677/MatMul/ReadVariableOp5^lstm_677/while/lstm_cell_677/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_677_while_identity lstm_677/while/Identity:output:0"?
lstm_677_while_identity_1"lstm_677/while/Identity_1:output:0"?
lstm_677_while_identity_2"lstm_677/while/Identity_2:output:0"?
lstm_677_while_identity_3"lstm_677/while/Identity_3:output:0"?
lstm_677_while_identity_4"lstm_677/while/Identity_4:output:0"?
lstm_677_while_identity_5"lstm_677/while/Identity_5:output:0"T
'lstm_677_while_lstm_677_strided_slice_1)lstm_677_while_lstm_677_strided_slice_1_0"~
<lstm_677_while_lstm_cell_677_biasadd_readvariableop_resource>lstm_677_while_lstm_cell_677_biasadd_readvariableop_resource_0"?
=lstm_677_while_lstm_cell_677_matmul_1_readvariableop_resource?lstm_677_while_lstm_cell_677_matmul_1_readvariableop_resource_0"|
;lstm_677_while_lstm_cell_677_matmul_readvariableop_resource=lstm_677_while_lstm_cell_677_matmul_readvariableop_resource_0"?
clstm_677_while_tensorarrayv2read_tensorlistgetitem_lstm_677_tensorarrayunstack_tensorlistfromtensorelstm_677_while_tensorarrayv2read_tensorlistgetitem_lstm_677_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_677/while/lstm_cell_677/BiasAdd/ReadVariableOp3lstm_677/while/lstm_cell_677/BiasAdd/ReadVariableOp2h
2lstm_677/while/lstm_cell_677/MatMul/ReadVariableOp2lstm_677/while/lstm_cell_677/MatMul/ReadVariableOp2l
4lstm_677/while/lstm_cell_677/MatMul_1/ReadVariableOp4lstm_677/while/lstm_cell_677/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_676_layer_call_fn_4279252

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
E__inference_lstm_676_layer_call_and_return_conditional_losses_4276784s
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
?T
?
*sequential_225_lstm_677_while_body_4275345L
Hsequential_225_lstm_677_while_sequential_225_lstm_677_while_loop_counterR
Nsequential_225_lstm_677_while_sequential_225_lstm_677_while_maximum_iterations-
)sequential_225_lstm_677_while_placeholder/
+sequential_225_lstm_677_while_placeholder_1/
+sequential_225_lstm_677_while_placeholder_2/
+sequential_225_lstm_677_while_placeholder_3K
Gsequential_225_lstm_677_while_sequential_225_lstm_677_strided_slice_1_0?
?sequential_225_lstm_677_while_tensorarrayv2read_tensorlistgetitem_sequential_225_lstm_677_tensorarrayunstack_tensorlistfromtensor_0^
Lsequential_225_lstm_677_while_lstm_cell_677_matmul_readvariableop_resource_0:2(`
Nsequential_225_lstm_677_while_lstm_cell_677_matmul_1_readvariableop_resource_0:
([
Msequential_225_lstm_677_while_lstm_cell_677_biasadd_readvariableop_resource_0:(*
&sequential_225_lstm_677_while_identity,
(sequential_225_lstm_677_while_identity_1,
(sequential_225_lstm_677_while_identity_2,
(sequential_225_lstm_677_while_identity_3,
(sequential_225_lstm_677_while_identity_4,
(sequential_225_lstm_677_while_identity_5I
Esequential_225_lstm_677_while_sequential_225_lstm_677_strided_slice_1?
?sequential_225_lstm_677_while_tensorarrayv2read_tensorlistgetitem_sequential_225_lstm_677_tensorarrayunstack_tensorlistfromtensor\
Jsequential_225_lstm_677_while_lstm_cell_677_matmul_readvariableop_resource:2(^
Lsequential_225_lstm_677_while_lstm_cell_677_matmul_1_readvariableop_resource:
(Y
Ksequential_225_lstm_677_while_lstm_cell_677_biasadd_readvariableop_resource:(??Bsequential_225/lstm_677/while/lstm_cell_677/BiasAdd/ReadVariableOp?Asequential_225/lstm_677/while/lstm_cell_677/MatMul/ReadVariableOp?Csequential_225/lstm_677/while/lstm_cell_677/MatMul_1/ReadVariableOp?
Osequential_225/lstm_677/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
Asequential_225/lstm_677/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_225_lstm_677_while_tensorarrayv2read_tensorlistgetitem_sequential_225_lstm_677_tensorarrayunstack_tensorlistfromtensor_0)sequential_225_lstm_677_while_placeholderXsequential_225/lstm_677/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
Asequential_225/lstm_677/while/lstm_cell_677/MatMul/ReadVariableOpReadVariableOpLsequential_225_lstm_677_while_lstm_cell_677_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
2sequential_225/lstm_677/while/lstm_cell_677/MatMulMatMulHsequential_225/lstm_677/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_225/lstm_677/while/lstm_cell_677/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
Csequential_225/lstm_677/while/lstm_cell_677/MatMul_1/ReadVariableOpReadVariableOpNsequential_225_lstm_677_while_lstm_cell_677_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
4sequential_225/lstm_677/while/lstm_cell_677/MatMul_1MatMul+sequential_225_lstm_677_while_placeholder_2Ksequential_225/lstm_677/while/lstm_cell_677/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
/sequential_225/lstm_677/while/lstm_cell_677/addAddV2<sequential_225/lstm_677/while/lstm_cell_677/MatMul:product:0>sequential_225/lstm_677/while/lstm_cell_677/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
Bsequential_225/lstm_677/while/lstm_cell_677/BiasAdd/ReadVariableOpReadVariableOpMsequential_225_lstm_677_while_lstm_cell_677_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
3sequential_225/lstm_677/while/lstm_cell_677/BiasAddBiasAdd3sequential_225/lstm_677/while/lstm_cell_677/add:z:0Jsequential_225/lstm_677/while/lstm_cell_677/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(}
;sequential_225/lstm_677/while/lstm_cell_677/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_225/lstm_677/while/lstm_cell_677/splitSplitDsequential_225/lstm_677/while/lstm_cell_677/split/split_dim:output:0<sequential_225/lstm_677/while/lstm_cell_677/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
3sequential_225/lstm_677/while/lstm_cell_677/SigmoidSigmoid:sequential_225/lstm_677/while/lstm_cell_677/split:output:0*
T0*'
_output_shapes
:?????????
?
5sequential_225/lstm_677/while/lstm_cell_677/Sigmoid_1Sigmoid:sequential_225/lstm_677/while/lstm_cell_677/split:output:1*
T0*'
_output_shapes
:?????????
?
/sequential_225/lstm_677/while/lstm_cell_677/mulMul9sequential_225/lstm_677/while/lstm_cell_677/Sigmoid_1:y:0+sequential_225_lstm_677_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
0sequential_225/lstm_677/while/lstm_cell_677/ReluRelu:sequential_225/lstm_677/while/lstm_cell_677/split:output:2*
T0*'
_output_shapes
:?????????
?
1sequential_225/lstm_677/while/lstm_cell_677/mul_1Mul7sequential_225/lstm_677/while/lstm_cell_677/Sigmoid:y:0>sequential_225/lstm_677/while/lstm_cell_677/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
1sequential_225/lstm_677/while/lstm_cell_677/add_1AddV23sequential_225/lstm_677/while/lstm_cell_677/mul:z:05sequential_225/lstm_677/while/lstm_cell_677/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
5sequential_225/lstm_677/while/lstm_cell_677/Sigmoid_2Sigmoid:sequential_225/lstm_677/while/lstm_cell_677/split:output:3*
T0*'
_output_shapes
:?????????
?
2sequential_225/lstm_677/while/lstm_cell_677/Relu_1Relu5sequential_225/lstm_677/while/lstm_cell_677/add_1:z:0*
T0*'
_output_shapes
:?????????
?
1sequential_225/lstm_677/while/lstm_cell_677/mul_2Mul9sequential_225/lstm_677/while/lstm_cell_677/Sigmoid_2:y:0@sequential_225/lstm_677/while/lstm_cell_677/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
Bsequential_225/lstm_677/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_225_lstm_677_while_placeholder_1)sequential_225_lstm_677_while_placeholder5sequential_225/lstm_677/while/lstm_cell_677/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_225/lstm_677/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_225/lstm_677/while/addAddV2)sequential_225_lstm_677_while_placeholder,sequential_225/lstm_677/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_225/lstm_677/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_225/lstm_677/while/add_1AddV2Hsequential_225_lstm_677_while_sequential_225_lstm_677_while_loop_counter.sequential_225/lstm_677/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_225/lstm_677/while/IdentityIdentity'sequential_225/lstm_677/while/add_1:z:0#^sequential_225/lstm_677/while/NoOp*
T0*
_output_shapes
: ?
(sequential_225/lstm_677/while/Identity_1IdentityNsequential_225_lstm_677_while_sequential_225_lstm_677_while_maximum_iterations#^sequential_225/lstm_677/while/NoOp*
T0*
_output_shapes
: ?
(sequential_225/lstm_677/while/Identity_2Identity%sequential_225/lstm_677/while/add:z:0#^sequential_225/lstm_677/while/NoOp*
T0*
_output_shapes
: ?
(sequential_225/lstm_677/while/Identity_3IdentityRsequential_225/lstm_677/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_225/lstm_677/while/NoOp*
T0*
_output_shapes
: ?
(sequential_225/lstm_677/while/Identity_4Identity5sequential_225/lstm_677/while/lstm_cell_677/mul_2:z:0#^sequential_225/lstm_677/while/NoOp*
T0*'
_output_shapes
:?????????
?
(sequential_225/lstm_677/while/Identity_5Identity5sequential_225/lstm_677/while/lstm_cell_677/add_1:z:0#^sequential_225/lstm_677/while/NoOp*
T0*'
_output_shapes
:?????????
?
"sequential_225/lstm_677/while/NoOpNoOpC^sequential_225/lstm_677/while/lstm_cell_677/BiasAdd/ReadVariableOpB^sequential_225/lstm_677/while/lstm_cell_677/MatMul/ReadVariableOpD^sequential_225/lstm_677/while/lstm_cell_677/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_225_lstm_677_while_identity/sequential_225/lstm_677/while/Identity:output:0"]
(sequential_225_lstm_677_while_identity_11sequential_225/lstm_677/while/Identity_1:output:0"]
(sequential_225_lstm_677_while_identity_21sequential_225/lstm_677/while/Identity_2:output:0"]
(sequential_225_lstm_677_while_identity_31sequential_225/lstm_677/while/Identity_3:output:0"]
(sequential_225_lstm_677_while_identity_41sequential_225/lstm_677/while/Identity_4:output:0"]
(sequential_225_lstm_677_while_identity_51sequential_225/lstm_677/while/Identity_5:output:0"?
Ksequential_225_lstm_677_while_lstm_cell_677_biasadd_readvariableop_resourceMsequential_225_lstm_677_while_lstm_cell_677_biasadd_readvariableop_resource_0"?
Lsequential_225_lstm_677_while_lstm_cell_677_matmul_1_readvariableop_resourceNsequential_225_lstm_677_while_lstm_cell_677_matmul_1_readvariableop_resource_0"?
Jsequential_225_lstm_677_while_lstm_cell_677_matmul_readvariableop_resourceLsequential_225_lstm_677_while_lstm_cell_677_matmul_readvariableop_resource_0"?
Esequential_225_lstm_677_while_sequential_225_lstm_677_strided_slice_1Gsequential_225_lstm_677_while_sequential_225_lstm_677_strided_slice_1_0"?
?sequential_225_lstm_677_while_tensorarrayv2read_tensorlistgetitem_sequential_225_lstm_677_tensorarrayunstack_tensorlistfromtensor?sequential_225_lstm_677_while_tensorarrayv2read_tensorlistgetitem_sequential_225_lstm_677_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2?
Bsequential_225/lstm_677/while/lstm_cell_677/BiasAdd/ReadVariableOpBsequential_225/lstm_677/while/lstm_cell_677/BiasAdd/ReadVariableOp2?
Asequential_225/lstm_677/while/lstm_cell_677/MatMul/ReadVariableOpAsequential_225/lstm_677/while/lstm_cell_677/MatMul/ReadVariableOp2?
Csequential_225/lstm_677/while/lstm_cell_677/MatMul_1/ReadVariableOpCsequential_225/lstm_677/while/lstm_cell_677/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_4275707
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_675_4275731_0:	?0
while_lstm_cell_675_4275733_0:	d?,
while_lstm_cell_675_4275735_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_675_4275731:	?.
while_lstm_cell_675_4275733:	d?*
while_lstm_cell_675_4275735:	???+while/lstm_cell_675/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_675/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_675_4275731_0while_lstm_cell_675_4275733_0while_lstm_cell_675_4275735_0*
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
J__inference_lstm_cell_675_layer_call_and_return_conditional_losses_4275648?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_675/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_675/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_675/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_675/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_675_4275731while_lstm_cell_675_4275731_0"<
while_lstm_cell_675_4275733while_lstm_cell_675_4275733_0"<
while_lstm_cell_675_4275735while_lstm_cell_675_4275735_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_675/StatefulPartitionedCall+while/lstm_cell_675/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_675_layer_call_and_return_conditional_losses_4278790
inputs_0?
,lstm_cell_675_matmul_readvariableop_resource:	?A
.lstm_cell_675_matmul_1_readvariableop_resource:	d?<
-lstm_cell_675_biasadd_readvariableop_resource:	?
identity??$lstm_cell_675/BiasAdd/ReadVariableOp?#lstm_cell_675/MatMul/ReadVariableOp?%lstm_cell_675/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_675/MatMul/ReadVariableOpReadVariableOp,lstm_cell_675_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_675/MatMulMatMulstrided_slice_2:output:0+lstm_cell_675/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_675/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_675_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_675/MatMul_1MatMulzeros:output:0-lstm_cell_675/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_675/addAddV2lstm_cell_675/MatMul:product:0 lstm_cell_675/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_675/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_675_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_675/BiasAddBiasAddlstm_cell_675/add:z:0,lstm_cell_675/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_675/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_675/splitSplit&lstm_cell_675/split/split_dim:output:0lstm_cell_675/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_675/SigmoidSigmoidlstm_cell_675/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_675/Sigmoid_1Sigmoidlstm_cell_675/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_675/mulMullstm_cell_675/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_675/ReluRelulstm_cell_675/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_675/mul_1Mullstm_cell_675/Sigmoid:y:0 lstm_cell_675/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_675/add_1AddV2lstm_cell_675/mul:z:0lstm_cell_675/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_675/Sigmoid_2Sigmoidlstm_cell_675/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_675/Relu_1Relulstm_cell_675/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_675/mul_2Mullstm_cell_675/Sigmoid_2:y:0"lstm_cell_675/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_675_matmul_readvariableop_resource.lstm_cell_675_matmul_1_readvariableop_resource-lstm_cell_675_biasadd_readvariableop_resource*
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
while_body_4278706*
condR
while_cond_4278705*K
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
NoOpNoOp%^lstm_cell_675/BiasAdd/ReadVariableOp$^lstm_cell_675/MatMul/ReadVariableOp&^lstm_cell_675/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_675/BiasAdd/ReadVariableOp$lstm_cell_675/BiasAdd/ReadVariableOp2J
#lstm_cell_675/MatMul/ReadVariableOp#lstm_cell_675/MatMul/ReadVariableOp2N
%lstm_cell_675/MatMul_1/ReadVariableOp%lstm_cell_675/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?8
?
while_body_4276700
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_676_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_676_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_676_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_676_matmul_readvariableop_resource:	d?G
4while_lstm_cell_676_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_676_biasadd_readvariableop_resource:	???*while/lstm_cell_676/BiasAdd/ReadVariableOp?)while/lstm_cell_676/MatMul/ReadVariableOp?+while/lstm_cell_676/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_676/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_676_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_676/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_676/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_676/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_676_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_676/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_676/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_676/addAddV2$while/lstm_cell_676/MatMul:product:0&while/lstm_cell_676/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_676/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_676_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_676/BiasAddBiasAddwhile/lstm_cell_676/add:z:02while/lstm_cell_676/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_676/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_676/splitSplit,while/lstm_cell_676/split/split_dim:output:0$while/lstm_cell_676/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_676/SigmoidSigmoid"while/lstm_cell_676/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_676/Sigmoid_1Sigmoid"while/lstm_cell_676/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_676/mulMul!while/lstm_cell_676/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_676/ReluRelu"while/lstm_cell_676/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_676/mul_1Mulwhile/lstm_cell_676/Sigmoid:y:0&while/lstm_cell_676/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_676/add_1AddV2while/lstm_cell_676/mul:z:0while/lstm_cell_676/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_676/Sigmoid_2Sigmoid"while/lstm_cell_676/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_676/Relu_1Reluwhile/lstm_cell_676/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_676/mul_2Mul!while/lstm_cell_676/Sigmoid_2:y:0(while/lstm_cell_676/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_676/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_676/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_676/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_676/BiasAdd/ReadVariableOp*^while/lstm_cell_676/MatMul/ReadVariableOp,^while/lstm_cell_676/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_676_biasadd_readvariableop_resource5while_lstm_cell_676_biasadd_readvariableop_resource_0"n
4while_lstm_cell_676_matmul_1_readvariableop_resource6while_lstm_cell_676_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_676_matmul_readvariableop_resource4while_lstm_cell_676_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_676/BiasAdd/ReadVariableOp*while/lstm_cell_676/BiasAdd/ReadVariableOp2V
)while/lstm_cell_676/MatMul/ReadVariableOp)while/lstm_cell_676/MatMul/ReadVariableOp2Z
+while/lstm_cell_676/MatMul_1/ReadVariableOp+while/lstm_cell_676/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_675_layer_call_and_return_conditional_losses_4275648

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

lstm_676_while_body_4278374.
*lstm_676_while_lstm_676_while_loop_counter4
0lstm_676_while_lstm_676_while_maximum_iterations
lstm_676_while_placeholder 
lstm_676_while_placeholder_1 
lstm_676_while_placeholder_2 
lstm_676_while_placeholder_3-
)lstm_676_while_lstm_676_strided_slice_1_0i
elstm_676_while_tensorarrayv2read_tensorlistgetitem_lstm_676_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_676_while_lstm_cell_676_matmul_readvariableop_resource_0:	d?R
?lstm_676_while_lstm_cell_676_matmul_1_readvariableop_resource_0:	2?M
>lstm_676_while_lstm_cell_676_biasadd_readvariableop_resource_0:	?
lstm_676_while_identity
lstm_676_while_identity_1
lstm_676_while_identity_2
lstm_676_while_identity_3
lstm_676_while_identity_4
lstm_676_while_identity_5+
'lstm_676_while_lstm_676_strided_slice_1g
clstm_676_while_tensorarrayv2read_tensorlistgetitem_lstm_676_tensorarrayunstack_tensorlistfromtensorN
;lstm_676_while_lstm_cell_676_matmul_readvariableop_resource:	d?P
=lstm_676_while_lstm_cell_676_matmul_1_readvariableop_resource:	2?K
<lstm_676_while_lstm_cell_676_biasadd_readvariableop_resource:	???3lstm_676/while/lstm_cell_676/BiasAdd/ReadVariableOp?2lstm_676/while/lstm_cell_676/MatMul/ReadVariableOp?4lstm_676/while/lstm_cell_676/MatMul_1/ReadVariableOp?
@lstm_676/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_676/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_676_while_tensorarrayv2read_tensorlistgetitem_lstm_676_tensorarrayunstack_tensorlistfromtensor_0lstm_676_while_placeholderIlstm_676/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_676/while/lstm_cell_676/MatMul/ReadVariableOpReadVariableOp=lstm_676_while_lstm_cell_676_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_676/while/lstm_cell_676/MatMulMatMul9lstm_676/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_676/while/lstm_cell_676/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_676/while/lstm_cell_676/MatMul_1/ReadVariableOpReadVariableOp?lstm_676_while_lstm_cell_676_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_676/while/lstm_cell_676/MatMul_1MatMullstm_676_while_placeholder_2<lstm_676/while/lstm_cell_676/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_676/while/lstm_cell_676/addAddV2-lstm_676/while/lstm_cell_676/MatMul:product:0/lstm_676/while/lstm_cell_676/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_676/while/lstm_cell_676/BiasAdd/ReadVariableOpReadVariableOp>lstm_676_while_lstm_cell_676_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_676/while/lstm_cell_676/BiasAddBiasAdd$lstm_676/while/lstm_cell_676/add:z:0;lstm_676/while/lstm_cell_676/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_676/while/lstm_cell_676/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_676/while/lstm_cell_676/splitSplit5lstm_676/while/lstm_cell_676/split/split_dim:output:0-lstm_676/while/lstm_cell_676/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_676/while/lstm_cell_676/SigmoidSigmoid+lstm_676/while/lstm_cell_676/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_676/while/lstm_cell_676/Sigmoid_1Sigmoid+lstm_676/while/lstm_cell_676/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_676/while/lstm_cell_676/mulMul*lstm_676/while/lstm_cell_676/Sigmoid_1:y:0lstm_676_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_676/while/lstm_cell_676/ReluRelu+lstm_676/while/lstm_cell_676/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_676/while/lstm_cell_676/mul_1Mul(lstm_676/while/lstm_cell_676/Sigmoid:y:0/lstm_676/while/lstm_cell_676/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_676/while/lstm_cell_676/add_1AddV2$lstm_676/while/lstm_cell_676/mul:z:0&lstm_676/while/lstm_cell_676/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_676/while/lstm_cell_676/Sigmoid_2Sigmoid+lstm_676/while/lstm_cell_676/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_676/while/lstm_cell_676/Relu_1Relu&lstm_676/while/lstm_cell_676/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_676/while/lstm_cell_676/mul_2Mul*lstm_676/while/lstm_cell_676/Sigmoid_2:y:01lstm_676/while/lstm_cell_676/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_676/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_676_while_placeholder_1lstm_676_while_placeholder&lstm_676/while/lstm_cell_676/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_676/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_676/while/addAddV2lstm_676_while_placeholderlstm_676/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_676/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_676/while/add_1AddV2*lstm_676_while_lstm_676_while_loop_counterlstm_676/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_676/while/IdentityIdentitylstm_676/while/add_1:z:0^lstm_676/while/NoOp*
T0*
_output_shapes
: ?
lstm_676/while/Identity_1Identity0lstm_676_while_lstm_676_while_maximum_iterations^lstm_676/while/NoOp*
T0*
_output_shapes
: t
lstm_676/while/Identity_2Identitylstm_676/while/add:z:0^lstm_676/while/NoOp*
T0*
_output_shapes
: ?
lstm_676/while/Identity_3IdentityClstm_676/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_676/while/NoOp*
T0*
_output_shapes
: ?
lstm_676/while/Identity_4Identity&lstm_676/while/lstm_cell_676/mul_2:z:0^lstm_676/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_676/while/Identity_5Identity&lstm_676/while/lstm_cell_676/add_1:z:0^lstm_676/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_676/while/NoOpNoOp4^lstm_676/while/lstm_cell_676/BiasAdd/ReadVariableOp3^lstm_676/while/lstm_cell_676/MatMul/ReadVariableOp5^lstm_676/while/lstm_cell_676/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_676_while_identity lstm_676/while/Identity:output:0"?
lstm_676_while_identity_1"lstm_676/while/Identity_1:output:0"?
lstm_676_while_identity_2"lstm_676/while/Identity_2:output:0"?
lstm_676_while_identity_3"lstm_676/while/Identity_3:output:0"?
lstm_676_while_identity_4"lstm_676/while/Identity_4:output:0"?
lstm_676_while_identity_5"lstm_676/while/Identity_5:output:0"T
'lstm_676_while_lstm_676_strided_slice_1)lstm_676_while_lstm_676_strided_slice_1_0"~
<lstm_676_while_lstm_cell_676_biasadd_readvariableop_resource>lstm_676_while_lstm_cell_676_biasadd_readvariableop_resource_0"?
=lstm_676_while_lstm_cell_676_matmul_1_readvariableop_resource?lstm_676_while_lstm_cell_676_matmul_1_readvariableop_resource_0"|
;lstm_676_while_lstm_cell_676_matmul_readvariableop_resource=lstm_676_while_lstm_cell_676_matmul_readvariableop_resource_0"?
clstm_676_while_tensorarrayv2read_tensorlistgetitem_lstm_676_tensorarrayunstack_tensorlistfromtensorelstm_676_while_tensorarrayv2read_tensorlistgetitem_lstm_676_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_676/while/lstm_cell_676/BiasAdd/ReadVariableOp3lstm_676/while/lstm_cell_676/BiasAdd/ReadVariableOp2h
2lstm_676/while/lstm_cell_676/MatMul/ReadVariableOp2lstm_676/while/lstm_cell_676/MatMul/ReadVariableOp2l
4lstm_676/while/lstm_cell_676/MatMul_1/ReadVariableOp4lstm_676/while/lstm_cell_676/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_677_while_cond_4278085.
*lstm_677_while_lstm_677_while_loop_counter4
0lstm_677_while_lstm_677_while_maximum_iterations
lstm_677_while_placeholder 
lstm_677_while_placeholder_1 
lstm_677_while_placeholder_2 
lstm_677_while_placeholder_30
,lstm_677_while_less_lstm_677_strided_slice_1G
Clstm_677_while_lstm_677_while_cond_4278085___redundant_placeholder0G
Clstm_677_while_lstm_677_while_cond_4278085___redundant_placeholder1G
Clstm_677_while_lstm_677_while_cond_4278085___redundant_placeholder2G
Clstm_677_while_lstm_677_while_cond_4278085___redundant_placeholder3
lstm_677_while_identity
?
lstm_677/while/LessLesslstm_677_while_placeholder,lstm_677_while_less_lstm_677_strided_slice_1*
T0*
_output_shapes
: ]
lstm_677/while/IdentityIdentitylstm_677/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_677_while_identity lstm_677/while/Identity:output:0*(
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

lstm_675_while_body_4277808.
*lstm_675_while_lstm_675_while_loop_counter4
0lstm_675_while_lstm_675_while_maximum_iterations
lstm_675_while_placeholder 
lstm_675_while_placeholder_1 
lstm_675_while_placeholder_2 
lstm_675_while_placeholder_3-
)lstm_675_while_lstm_675_strided_slice_1_0i
elstm_675_while_tensorarrayv2read_tensorlistgetitem_lstm_675_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_675_while_lstm_cell_675_matmul_readvariableop_resource_0:	?R
?lstm_675_while_lstm_cell_675_matmul_1_readvariableop_resource_0:	d?M
>lstm_675_while_lstm_cell_675_biasadd_readvariableop_resource_0:	?
lstm_675_while_identity
lstm_675_while_identity_1
lstm_675_while_identity_2
lstm_675_while_identity_3
lstm_675_while_identity_4
lstm_675_while_identity_5+
'lstm_675_while_lstm_675_strided_slice_1g
clstm_675_while_tensorarrayv2read_tensorlistgetitem_lstm_675_tensorarrayunstack_tensorlistfromtensorN
;lstm_675_while_lstm_cell_675_matmul_readvariableop_resource:	?P
=lstm_675_while_lstm_cell_675_matmul_1_readvariableop_resource:	d?K
<lstm_675_while_lstm_cell_675_biasadd_readvariableop_resource:	???3lstm_675/while/lstm_cell_675/BiasAdd/ReadVariableOp?2lstm_675/while/lstm_cell_675/MatMul/ReadVariableOp?4lstm_675/while/lstm_cell_675/MatMul_1/ReadVariableOp?
@lstm_675/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_675/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_675_while_tensorarrayv2read_tensorlistgetitem_lstm_675_tensorarrayunstack_tensorlistfromtensor_0lstm_675_while_placeholderIlstm_675/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_675/while/lstm_cell_675/MatMul/ReadVariableOpReadVariableOp=lstm_675_while_lstm_cell_675_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_675/while/lstm_cell_675/MatMulMatMul9lstm_675/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_675/while/lstm_cell_675/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_675/while/lstm_cell_675/MatMul_1/ReadVariableOpReadVariableOp?lstm_675_while_lstm_cell_675_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_675/while/lstm_cell_675/MatMul_1MatMullstm_675_while_placeholder_2<lstm_675/while/lstm_cell_675/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_675/while/lstm_cell_675/addAddV2-lstm_675/while/lstm_cell_675/MatMul:product:0/lstm_675/while/lstm_cell_675/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_675/while/lstm_cell_675/BiasAdd/ReadVariableOpReadVariableOp>lstm_675_while_lstm_cell_675_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_675/while/lstm_cell_675/BiasAddBiasAdd$lstm_675/while/lstm_cell_675/add:z:0;lstm_675/while/lstm_cell_675/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_675/while/lstm_cell_675/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_675/while/lstm_cell_675/splitSplit5lstm_675/while/lstm_cell_675/split/split_dim:output:0-lstm_675/while/lstm_cell_675/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_675/while/lstm_cell_675/SigmoidSigmoid+lstm_675/while/lstm_cell_675/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_675/while/lstm_cell_675/Sigmoid_1Sigmoid+lstm_675/while/lstm_cell_675/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_675/while/lstm_cell_675/mulMul*lstm_675/while/lstm_cell_675/Sigmoid_1:y:0lstm_675_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_675/while/lstm_cell_675/ReluRelu+lstm_675/while/lstm_cell_675/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_675/while/lstm_cell_675/mul_1Mul(lstm_675/while/lstm_cell_675/Sigmoid:y:0/lstm_675/while/lstm_cell_675/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_675/while/lstm_cell_675/add_1AddV2$lstm_675/while/lstm_cell_675/mul:z:0&lstm_675/while/lstm_cell_675/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_675/while/lstm_cell_675/Sigmoid_2Sigmoid+lstm_675/while/lstm_cell_675/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_675/while/lstm_cell_675/Relu_1Relu&lstm_675/while/lstm_cell_675/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_675/while/lstm_cell_675/mul_2Mul*lstm_675/while/lstm_cell_675/Sigmoid_2:y:01lstm_675/while/lstm_cell_675/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_675/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_675_while_placeholder_1lstm_675_while_placeholder&lstm_675/while/lstm_cell_675/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_675/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_675/while/addAddV2lstm_675_while_placeholderlstm_675/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_675/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_675/while/add_1AddV2*lstm_675_while_lstm_675_while_loop_counterlstm_675/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_675/while/IdentityIdentitylstm_675/while/add_1:z:0^lstm_675/while/NoOp*
T0*
_output_shapes
: ?
lstm_675/while/Identity_1Identity0lstm_675_while_lstm_675_while_maximum_iterations^lstm_675/while/NoOp*
T0*
_output_shapes
: t
lstm_675/while/Identity_2Identitylstm_675/while/add:z:0^lstm_675/while/NoOp*
T0*
_output_shapes
: ?
lstm_675/while/Identity_3IdentityClstm_675/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_675/while/NoOp*
T0*
_output_shapes
: ?
lstm_675/while/Identity_4Identity&lstm_675/while/lstm_cell_675/mul_2:z:0^lstm_675/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_675/while/Identity_5Identity&lstm_675/while/lstm_cell_675/add_1:z:0^lstm_675/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_675/while/NoOpNoOp4^lstm_675/while/lstm_cell_675/BiasAdd/ReadVariableOp3^lstm_675/while/lstm_cell_675/MatMul/ReadVariableOp5^lstm_675/while/lstm_cell_675/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_675_while_identity lstm_675/while/Identity:output:0"?
lstm_675_while_identity_1"lstm_675/while/Identity_1:output:0"?
lstm_675_while_identity_2"lstm_675/while/Identity_2:output:0"?
lstm_675_while_identity_3"lstm_675/while/Identity_3:output:0"?
lstm_675_while_identity_4"lstm_675/while/Identity_4:output:0"?
lstm_675_while_identity_5"lstm_675/while/Identity_5:output:0"T
'lstm_675_while_lstm_675_strided_slice_1)lstm_675_while_lstm_675_strided_slice_1_0"~
<lstm_675_while_lstm_cell_675_biasadd_readvariableop_resource>lstm_675_while_lstm_cell_675_biasadd_readvariableop_resource_0"?
=lstm_675_while_lstm_cell_675_matmul_1_readvariableop_resource?lstm_675_while_lstm_cell_675_matmul_1_readvariableop_resource_0"|
;lstm_675_while_lstm_cell_675_matmul_readvariableop_resource=lstm_675_while_lstm_cell_675_matmul_readvariableop_resource_0"?
clstm_675_while_tensorarrayv2read_tensorlistgetitem_lstm_675_tensorarrayunstack_tensorlistfromtensorelstm_675_while_tensorarrayv2read_tensorlistgetitem_lstm_675_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_675/while/lstm_cell_675/BiasAdd/ReadVariableOp3lstm_675/while/lstm_cell_675/BiasAdd/ReadVariableOp2h
2lstm_675/while/lstm_cell_675/MatMul/ReadVariableOp2lstm_675/while/lstm_cell_675/MatMul/ReadVariableOp2l
4lstm_675/while/lstm_cell_675/MatMul_1/ReadVariableOp4lstm_675/while/lstm_cell_675/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_677_layer_call_and_return_conditional_losses_4276285

inputs'
lstm_cell_677_4276203:2('
lstm_cell_677_4276205:
(#
lstm_cell_677_4276207:(
identity??%lstm_cell_677/StatefulPartitionedCall?while;
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
%lstm_cell_677/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_677_4276203lstm_cell_677_4276205lstm_cell_677_4276207*
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
J__inference_lstm_cell_677_layer_call_and_return_conditional_losses_4276202n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_677_4276203lstm_cell_677_4276205lstm_cell_677_4276207*
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
while_body_4276216*
condR
while_cond_4276215*K
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
NoOpNoOp&^lstm_cell_677/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_677/StatefulPartitionedCall%lstm_cell_677/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?8
?
E__inference_lstm_675_layer_call_and_return_conditional_losses_4275585

inputs(
lstm_cell_675_4275503:	?(
lstm_cell_675_4275505:	d?$
lstm_cell_675_4275507:	?
identity??%lstm_cell_675/StatefulPartitionedCall?while;
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
%lstm_cell_675/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_675_4275503lstm_cell_675_4275505lstm_cell_675_4275507*
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
J__inference_lstm_cell_675_layer_call_and_return_conditional_losses_4275502n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_675_4275503lstm_cell_675_4275505lstm_cell_675_4275507*
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
while_body_4275516*
condR
while_cond_4275515*K
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
NoOpNoOp&^lstm_cell_675/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_675/StatefulPartitionedCall%lstm_cell_675/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
while_cond_4279321
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4279321___redundant_placeholder05
1while_while_cond_4279321___redundant_placeholder15
1while_while_cond_4279321___redundant_placeholder25
1while_while_cond_4279321___redundant_placeholder3
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
K__inference_sequential_225_layer_call_and_return_conditional_losses_4278603

inputsH
5lstm_675_lstm_cell_675_matmul_readvariableop_resource:	?J
7lstm_675_lstm_cell_675_matmul_1_readvariableop_resource:	d?E
6lstm_675_lstm_cell_675_biasadd_readvariableop_resource:	?H
5lstm_676_lstm_cell_676_matmul_readvariableop_resource:	d?J
7lstm_676_lstm_cell_676_matmul_1_readvariableop_resource:	2?E
6lstm_676_lstm_cell_676_biasadd_readvariableop_resource:	?G
5lstm_677_lstm_cell_677_matmul_readvariableop_resource:2(I
7lstm_677_lstm_cell_677_matmul_1_readvariableop_resource:
(D
6lstm_677_lstm_cell_677_biasadd_readvariableop_resource:(:
(dense_225_matmul_readvariableop_resource:
7
)dense_225_biasadd_readvariableop_resource:
identity?? dense_225/BiasAdd/ReadVariableOp?dense_225/MatMul/ReadVariableOp?-lstm_675/lstm_cell_675/BiasAdd/ReadVariableOp?,lstm_675/lstm_cell_675/MatMul/ReadVariableOp?.lstm_675/lstm_cell_675/MatMul_1/ReadVariableOp?lstm_675/while?-lstm_676/lstm_cell_676/BiasAdd/ReadVariableOp?,lstm_676/lstm_cell_676/MatMul/ReadVariableOp?.lstm_676/lstm_cell_676/MatMul_1/ReadVariableOp?lstm_676/while?-lstm_677/lstm_cell_677/BiasAdd/ReadVariableOp?,lstm_677/lstm_cell_677/MatMul/ReadVariableOp?.lstm_677/lstm_cell_677/MatMul_1/ReadVariableOp?lstm_677/whileD
lstm_675/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_675/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_675/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_675/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_675/strided_sliceStridedSlicelstm_675/Shape:output:0%lstm_675/strided_slice/stack:output:0'lstm_675/strided_slice/stack_1:output:0'lstm_675/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_675/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_675/zeros/packedPacklstm_675/strided_slice:output:0 lstm_675/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_675/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_675/zerosFilllstm_675/zeros/packed:output:0lstm_675/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_675/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_675/zeros_1/packedPacklstm_675/strided_slice:output:0"lstm_675/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_675/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_675/zeros_1Fill lstm_675/zeros_1/packed:output:0lstm_675/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_675/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_675/transpose	Transposeinputs lstm_675/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_675/Shape_1Shapelstm_675/transpose:y:0*
T0*
_output_shapes
:h
lstm_675/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_675/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_675/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_675/strided_slice_1StridedSlicelstm_675/Shape_1:output:0'lstm_675/strided_slice_1/stack:output:0)lstm_675/strided_slice_1/stack_1:output:0)lstm_675/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_675/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_675/TensorArrayV2TensorListReserve-lstm_675/TensorArrayV2/element_shape:output:0!lstm_675/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_675/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_675/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_675/transpose:y:0Glstm_675/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_675/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_675/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_675/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_675/strided_slice_2StridedSlicelstm_675/transpose:y:0'lstm_675/strided_slice_2/stack:output:0)lstm_675/strided_slice_2/stack_1:output:0)lstm_675/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_675/lstm_cell_675/MatMul/ReadVariableOpReadVariableOp5lstm_675_lstm_cell_675_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_675/lstm_cell_675/MatMulMatMul!lstm_675/strided_slice_2:output:04lstm_675/lstm_cell_675/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_675/lstm_cell_675/MatMul_1/ReadVariableOpReadVariableOp7lstm_675_lstm_cell_675_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_675/lstm_cell_675/MatMul_1MatMullstm_675/zeros:output:06lstm_675/lstm_cell_675/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_675/lstm_cell_675/addAddV2'lstm_675/lstm_cell_675/MatMul:product:0)lstm_675/lstm_cell_675/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_675/lstm_cell_675/BiasAdd/ReadVariableOpReadVariableOp6lstm_675_lstm_cell_675_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_675/lstm_cell_675/BiasAddBiasAddlstm_675/lstm_cell_675/add:z:05lstm_675/lstm_cell_675/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_675/lstm_cell_675/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_675/lstm_cell_675/splitSplit/lstm_675/lstm_cell_675/split/split_dim:output:0'lstm_675/lstm_cell_675/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_675/lstm_cell_675/SigmoidSigmoid%lstm_675/lstm_cell_675/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_675/lstm_cell_675/Sigmoid_1Sigmoid%lstm_675/lstm_cell_675/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_675/lstm_cell_675/mulMul$lstm_675/lstm_cell_675/Sigmoid_1:y:0lstm_675/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_675/lstm_cell_675/ReluRelu%lstm_675/lstm_cell_675/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_675/lstm_cell_675/mul_1Mul"lstm_675/lstm_cell_675/Sigmoid:y:0)lstm_675/lstm_cell_675/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_675/lstm_cell_675/add_1AddV2lstm_675/lstm_cell_675/mul:z:0 lstm_675/lstm_cell_675/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_675/lstm_cell_675/Sigmoid_2Sigmoid%lstm_675/lstm_cell_675/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_675/lstm_cell_675/Relu_1Relu lstm_675/lstm_cell_675/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_675/lstm_cell_675/mul_2Mul$lstm_675/lstm_cell_675/Sigmoid_2:y:0+lstm_675/lstm_cell_675/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_675/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_675/TensorArrayV2_1TensorListReserve/lstm_675/TensorArrayV2_1/element_shape:output:0!lstm_675/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_675/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_675/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_675/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_675/whileWhile$lstm_675/while/loop_counter:output:0*lstm_675/while/maximum_iterations:output:0lstm_675/time:output:0!lstm_675/TensorArrayV2_1:handle:0lstm_675/zeros:output:0lstm_675/zeros_1:output:0!lstm_675/strided_slice_1:output:0@lstm_675/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_675_lstm_cell_675_matmul_readvariableop_resource7lstm_675_lstm_cell_675_matmul_1_readvariableop_resource6lstm_675_lstm_cell_675_biasadd_readvariableop_resource*
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
lstm_675_while_body_4278235*'
condR
lstm_675_while_cond_4278234*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_675/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_675/TensorArrayV2Stack/TensorListStackTensorListStacklstm_675/while:output:3Blstm_675/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_675/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_675/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_675/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_675/strided_slice_3StridedSlice4lstm_675/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_675/strided_slice_3/stack:output:0)lstm_675/strided_slice_3/stack_1:output:0)lstm_675/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_675/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_675/transpose_1	Transpose4lstm_675/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_675/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_675/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_676/ShapeShapelstm_675/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_676/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_676/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_676/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_676/strided_sliceStridedSlicelstm_676/Shape:output:0%lstm_676/strided_slice/stack:output:0'lstm_676/strided_slice/stack_1:output:0'lstm_676/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_676/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_676/zeros/packedPacklstm_676/strided_slice:output:0 lstm_676/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_676/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_676/zerosFilllstm_676/zeros/packed:output:0lstm_676/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_676/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_676/zeros_1/packedPacklstm_676/strided_slice:output:0"lstm_676/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_676/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_676/zeros_1Fill lstm_676/zeros_1/packed:output:0lstm_676/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_676/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_676/transpose	Transposelstm_675/transpose_1:y:0 lstm_676/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_676/Shape_1Shapelstm_676/transpose:y:0*
T0*
_output_shapes
:h
lstm_676/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_676/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_676/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_676/strided_slice_1StridedSlicelstm_676/Shape_1:output:0'lstm_676/strided_slice_1/stack:output:0)lstm_676/strided_slice_1/stack_1:output:0)lstm_676/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_676/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_676/TensorArrayV2TensorListReserve-lstm_676/TensorArrayV2/element_shape:output:0!lstm_676/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_676/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_676/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_676/transpose:y:0Glstm_676/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_676/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_676/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_676/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_676/strided_slice_2StridedSlicelstm_676/transpose:y:0'lstm_676/strided_slice_2/stack:output:0)lstm_676/strided_slice_2/stack_1:output:0)lstm_676/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_676/lstm_cell_676/MatMul/ReadVariableOpReadVariableOp5lstm_676_lstm_cell_676_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_676/lstm_cell_676/MatMulMatMul!lstm_676/strided_slice_2:output:04lstm_676/lstm_cell_676/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_676/lstm_cell_676/MatMul_1/ReadVariableOpReadVariableOp7lstm_676_lstm_cell_676_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_676/lstm_cell_676/MatMul_1MatMullstm_676/zeros:output:06lstm_676/lstm_cell_676/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_676/lstm_cell_676/addAddV2'lstm_676/lstm_cell_676/MatMul:product:0)lstm_676/lstm_cell_676/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_676/lstm_cell_676/BiasAdd/ReadVariableOpReadVariableOp6lstm_676_lstm_cell_676_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_676/lstm_cell_676/BiasAddBiasAddlstm_676/lstm_cell_676/add:z:05lstm_676/lstm_cell_676/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_676/lstm_cell_676/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_676/lstm_cell_676/splitSplit/lstm_676/lstm_cell_676/split/split_dim:output:0'lstm_676/lstm_cell_676/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_676/lstm_cell_676/SigmoidSigmoid%lstm_676/lstm_cell_676/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_676/lstm_cell_676/Sigmoid_1Sigmoid%lstm_676/lstm_cell_676/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_676/lstm_cell_676/mulMul$lstm_676/lstm_cell_676/Sigmoid_1:y:0lstm_676/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_676/lstm_cell_676/ReluRelu%lstm_676/lstm_cell_676/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_676/lstm_cell_676/mul_1Mul"lstm_676/lstm_cell_676/Sigmoid:y:0)lstm_676/lstm_cell_676/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_676/lstm_cell_676/add_1AddV2lstm_676/lstm_cell_676/mul:z:0 lstm_676/lstm_cell_676/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_676/lstm_cell_676/Sigmoid_2Sigmoid%lstm_676/lstm_cell_676/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_676/lstm_cell_676/Relu_1Relu lstm_676/lstm_cell_676/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_676/lstm_cell_676/mul_2Mul$lstm_676/lstm_cell_676/Sigmoid_2:y:0+lstm_676/lstm_cell_676/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_676/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_676/TensorArrayV2_1TensorListReserve/lstm_676/TensorArrayV2_1/element_shape:output:0!lstm_676/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_676/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_676/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_676/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_676/whileWhile$lstm_676/while/loop_counter:output:0*lstm_676/while/maximum_iterations:output:0lstm_676/time:output:0!lstm_676/TensorArrayV2_1:handle:0lstm_676/zeros:output:0lstm_676/zeros_1:output:0!lstm_676/strided_slice_1:output:0@lstm_676/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_676_lstm_cell_676_matmul_readvariableop_resource7lstm_676_lstm_cell_676_matmul_1_readvariableop_resource6lstm_676_lstm_cell_676_biasadd_readvariableop_resource*
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
lstm_676_while_body_4278374*'
condR
lstm_676_while_cond_4278373*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_676/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_676/TensorArrayV2Stack/TensorListStackTensorListStacklstm_676/while:output:3Blstm_676/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_676/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_676/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_676/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_676/strided_slice_3StridedSlice4lstm_676/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_676/strided_slice_3/stack:output:0)lstm_676/strided_slice_3/stack_1:output:0)lstm_676/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_676/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_676/transpose_1	Transpose4lstm_676/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_676/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_676/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_677/ShapeShapelstm_676/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_677/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_677/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_677/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_677/strided_sliceStridedSlicelstm_677/Shape:output:0%lstm_677/strided_slice/stack:output:0'lstm_677/strided_slice/stack_1:output:0'lstm_677/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_677/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_677/zeros/packedPacklstm_677/strided_slice:output:0 lstm_677/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_677/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_677/zerosFilllstm_677/zeros/packed:output:0lstm_677/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_677/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_677/zeros_1/packedPacklstm_677/strided_slice:output:0"lstm_677/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_677/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_677/zeros_1Fill lstm_677/zeros_1/packed:output:0lstm_677/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_677/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_677/transpose	Transposelstm_676/transpose_1:y:0 lstm_677/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_677/Shape_1Shapelstm_677/transpose:y:0*
T0*
_output_shapes
:h
lstm_677/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_677/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_677/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_677/strided_slice_1StridedSlicelstm_677/Shape_1:output:0'lstm_677/strided_slice_1/stack:output:0)lstm_677/strided_slice_1/stack_1:output:0)lstm_677/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_677/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_677/TensorArrayV2TensorListReserve-lstm_677/TensorArrayV2/element_shape:output:0!lstm_677/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_677/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_677/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_677/transpose:y:0Glstm_677/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_677/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_677/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_677/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_677/strided_slice_2StridedSlicelstm_677/transpose:y:0'lstm_677/strided_slice_2/stack:output:0)lstm_677/strided_slice_2/stack_1:output:0)lstm_677/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_677/lstm_cell_677/MatMul/ReadVariableOpReadVariableOp5lstm_677_lstm_cell_677_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_677/lstm_cell_677/MatMulMatMul!lstm_677/strided_slice_2:output:04lstm_677/lstm_cell_677/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_677/lstm_cell_677/MatMul_1/ReadVariableOpReadVariableOp7lstm_677_lstm_cell_677_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_677/lstm_cell_677/MatMul_1MatMullstm_677/zeros:output:06lstm_677/lstm_cell_677/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_677/lstm_cell_677/addAddV2'lstm_677/lstm_cell_677/MatMul:product:0)lstm_677/lstm_cell_677/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_677/lstm_cell_677/BiasAdd/ReadVariableOpReadVariableOp6lstm_677_lstm_cell_677_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_677/lstm_cell_677/BiasAddBiasAddlstm_677/lstm_cell_677/add:z:05lstm_677/lstm_cell_677/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_677/lstm_cell_677/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_677/lstm_cell_677/splitSplit/lstm_677/lstm_cell_677/split/split_dim:output:0'lstm_677/lstm_cell_677/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_677/lstm_cell_677/SigmoidSigmoid%lstm_677/lstm_cell_677/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_677/lstm_cell_677/Sigmoid_1Sigmoid%lstm_677/lstm_cell_677/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_677/lstm_cell_677/mulMul$lstm_677/lstm_cell_677/Sigmoid_1:y:0lstm_677/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_677/lstm_cell_677/ReluRelu%lstm_677/lstm_cell_677/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_677/lstm_cell_677/mul_1Mul"lstm_677/lstm_cell_677/Sigmoid:y:0)lstm_677/lstm_cell_677/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_677/lstm_cell_677/add_1AddV2lstm_677/lstm_cell_677/mul:z:0 lstm_677/lstm_cell_677/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_677/lstm_cell_677/Sigmoid_2Sigmoid%lstm_677/lstm_cell_677/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_677/lstm_cell_677/Relu_1Relu lstm_677/lstm_cell_677/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_677/lstm_cell_677/mul_2Mul$lstm_677/lstm_cell_677/Sigmoid_2:y:0+lstm_677/lstm_cell_677/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_677/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_677/TensorArrayV2_1TensorListReserve/lstm_677/TensorArrayV2_1/element_shape:output:0!lstm_677/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_677/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_677/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_677/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_677/whileWhile$lstm_677/while/loop_counter:output:0*lstm_677/while/maximum_iterations:output:0lstm_677/time:output:0!lstm_677/TensorArrayV2_1:handle:0lstm_677/zeros:output:0lstm_677/zeros_1:output:0!lstm_677/strided_slice_1:output:0@lstm_677/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_677_lstm_cell_677_matmul_readvariableop_resource7lstm_677_lstm_cell_677_matmul_1_readvariableop_resource6lstm_677_lstm_cell_677_biasadd_readvariableop_resource*
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
lstm_677_while_body_4278513*'
condR
lstm_677_while_cond_4278512*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_677/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_677/TensorArrayV2Stack/TensorListStackTensorListStacklstm_677/while:output:3Blstm_677/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_677/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_677/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_677/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_677/strided_slice_3StridedSlice4lstm_677/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_677/strided_slice_3/stack:output:0)lstm_677/strided_slice_3/stack_1:output:0)lstm_677/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_677/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_677/transpose_1	Transpose4lstm_677/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_677/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_677/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_225/MatMul/ReadVariableOpReadVariableOp(dense_225_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_225/MatMulMatMul!lstm_677/strided_slice_3:output:0'dense_225/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_225/BiasAdd/ReadVariableOpReadVariableOp)dense_225_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_225/BiasAddBiasAdddense_225/MatMul:product:0(dense_225/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_225/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_225/BiasAdd/ReadVariableOp ^dense_225/MatMul/ReadVariableOp.^lstm_675/lstm_cell_675/BiasAdd/ReadVariableOp-^lstm_675/lstm_cell_675/MatMul/ReadVariableOp/^lstm_675/lstm_cell_675/MatMul_1/ReadVariableOp^lstm_675/while.^lstm_676/lstm_cell_676/BiasAdd/ReadVariableOp-^lstm_676/lstm_cell_676/MatMul/ReadVariableOp/^lstm_676/lstm_cell_676/MatMul_1/ReadVariableOp^lstm_676/while.^lstm_677/lstm_cell_677/BiasAdd/ReadVariableOp-^lstm_677/lstm_cell_677/MatMul/ReadVariableOp/^lstm_677/lstm_cell_677/MatMul_1/ReadVariableOp^lstm_677/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_225/BiasAdd/ReadVariableOp dense_225/BiasAdd/ReadVariableOp2B
dense_225/MatMul/ReadVariableOpdense_225/MatMul/ReadVariableOp2^
-lstm_675/lstm_cell_675/BiasAdd/ReadVariableOp-lstm_675/lstm_cell_675/BiasAdd/ReadVariableOp2\
,lstm_675/lstm_cell_675/MatMul/ReadVariableOp,lstm_675/lstm_cell_675/MatMul/ReadVariableOp2`
.lstm_675/lstm_cell_675/MatMul_1/ReadVariableOp.lstm_675/lstm_cell_675/MatMul_1/ReadVariableOp2 
lstm_675/whilelstm_675/while2^
-lstm_676/lstm_cell_676/BiasAdd/ReadVariableOp-lstm_676/lstm_cell_676/BiasAdd/ReadVariableOp2\
,lstm_676/lstm_cell_676/MatMul/ReadVariableOp,lstm_676/lstm_cell_676/MatMul/ReadVariableOp2`
.lstm_676/lstm_cell_676/MatMul_1/ReadVariableOp.lstm_676/lstm_cell_676/MatMul_1/ReadVariableOp2 
lstm_676/whilelstm_676/while2^
-lstm_677/lstm_cell_677/BiasAdd/ReadVariableOp-lstm_677/lstm_cell_677/BiasAdd/ReadVariableOp2\
,lstm_677/lstm_cell_677/MatMul/ReadVariableOp,lstm_677/lstm_cell_677/MatMul/ReadVariableOp2`
.lstm_677/lstm_cell_677/MatMul_1/ReadVariableOp.lstm_677/lstm_cell_677/MatMul_1/ReadVariableOp2 
lstm_677/whilelstm_677/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
while_body_4279465
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_676_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_676_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_676_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_676_matmul_readvariableop_resource:	d?G
4while_lstm_cell_676_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_676_biasadd_readvariableop_resource:	???*while/lstm_cell_676/BiasAdd/ReadVariableOp?)while/lstm_cell_676/MatMul/ReadVariableOp?+while/lstm_cell_676/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_676/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_676_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_676/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_676/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_676/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_676_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_676/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_676/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_676/addAddV2$while/lstm_cell_676/MatMul:product:0&while/lstm_cell_676/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_676/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_676_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_676/BiasAddBiasAddwhile/lstm_cell_676/add:z:02while/lstm_cell_676/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_676/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_676/splitSplit,while/lstm_cell_676/split/split_dim:output:0$while/lstm_cell_676/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_676/SigmoidSigmoid"while/lstm_cell_676/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_676/Sigmoid_1Sigmoid"while/lstm_cell_676/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_676/mulMul!while/lstm_cell_676/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_676/ReluRelu"while/lstm_cell_676/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_676/mul_1Mulwhile/lstm_cell_676/Sigmoid:y:0&while/lstm_cell_676/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_676/add_1AddV2while/lstm_cell_676/mul:z:0while/lstm_cell_676/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_676/Sigmoid_2Sigmoid"while/lstm_cell_676/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_676/Relu_1Reluwhile/lstm_cell_676/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_676/mul_2Mul!while/lstm_cell_676/Sigmoid_2:y:0(while/lstm_cell_676/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_676/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_676/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_676/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_676/BiasAdd/ReadVariableOp*^while/lstm_cell_676/MatMul/ReadVariableOp,^while/lstm_cell_676/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_676_biasadd_readvariableop_resource5while_lstm_cell_676_biasadd_readvariableop_resource_0"n
4while_lstm_cell_676_matmul_1_readvariableop_resource6while_lstm_cell_676_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_676_matmul_readvariableop_resource4while_lstm_cell_676_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_676/BiasAdd/ReadVariableOp*while/lstm_cell_676/BiasAdd/ReadVariableOp2V
)while/lstm_cell_676/MatMul/ReadVariableOp)while/lstm_cell_676/MatMul/ReadVariableOp2Z
+while/lstm_cell_676/MatMul_1/ReadVariableOp+while/lstm_cell_676/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_4280224
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_677_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_677_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_677_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_677_matmul_readvariableop_resource:2(F
4while_lstm_cell_677_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_677_biasadd_readvariableop_resource:(??*while/lstm_cell_677/BiasAdd/ReadVariableOp?)while/lstm_cell_677/MatMul/ReadVariableOp?+while/lstm_cell_677/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_677/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_677_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_677/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_677/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_677/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_677_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_677/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_677/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_677/addAddV2$while/lstm_cell_677/MatMul:product:0&while/lstm_cell_677/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_677/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_677_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_677/BiasAddBiasAddwhile/lstm_cell_677/add:z:02while/lstm_cell_677/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_677/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_677/splitSplit,while/lstm_cell_677/split/split_dim:output:0$while/lstm_cell_677/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_677/SigmoidSigmoid"while/lstm_cell_677/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_677/Sigmoid_1Sigmoid"while/lstm_cell_677/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_677/mulMul!while/lstm_cell_677/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_677/ReluRelu"while/lstm_cell_677/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_677/mul_1Mulwhile/lstm_cell_677/Sigmoid:y:0&while/lstm_cell_677/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_677/add_1AddV2while/lstm_cell_677/mul:z:0while/lstm_cell_677/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_677/Sigmoid_2Sigmoid"while/lstm_cell_677/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_677/Relu_1Reluwhile/lstm_cell_677/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_677/mul_2Mul!while/lstm_cell_677/Sigmoid_2:y:0(while/lstm_cell_677/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_677/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_677/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_677/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_677/BiasAdd/ReadVariableOp*^while/lstm_cell_677/MatMul/ReadVariableOp,^while/lstm_cell_677/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_677_biasadd_readvariableop_resource5while_lstm_cell_677_biasadd_readvariableop_resource_0"n
4while_lstm_cell_677_matmul_1_readvariableop_resource6while_lstm_cell_677_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_677_matmul_readvariableop_resource4while_lstm_cell_677_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_677/BiasAdd/ReadVariableOp*while/lstm_cell_677/BiasAdd/ReadVariableOp2V
)while/lstm_cell_677/MatMul/ReadVariableOp)while/lstm_cell_677/MatMul/ReadVariableOp2Z
+while/lstm_cell_677/MatMul_1/ReadVariableOp+while/lstm_cell_677/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_4280366
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4280366___redundant_placeholder05
1while_while_cond_4280366___redundant_placeholder15
1while_while_cond_4280366___redundant_placeholder25
1while_while_cond_4280366___redundant_placeholder3
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
while_body_4275866
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_676_4275890_0:	d?0
while_lstm_cell_676_4275892_0:	2?,
while_lstm_cell_676_4275894_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_676_4275890:	d?.
while_lstm_cell_676_4275892:	2?*
while_lstm_cell_676_4275894:	???+while/lstm_cell_676/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_676/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_676_4275890_0while_lstm_cell_676_4275892_0while_lstm_cell_676_4275894_0*
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
J__inference_lstm_cell_676_layer_call_and_return_conditional_losses_4275852?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_676/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_676/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_676/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_676/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_676_4275890while_lstm_cell_676_4275890_0"<
while_lstm_cell_676_4275892while_lstm_cell_676_4275892_0"<
while_lstm_cell_676_4275894while_lstm_cell_676_4275894_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_676/StatefulPartitionedCall+while/lstm_cell_676/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
F__inference_dense_225_layer_call_and_return_conditional_losses_4276952

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
lstm_677_while_cond_4278512.
*lstm_677_while_lstm_677_while_loop_counter4
0lstm_677_while_lstm_677_while_maximum_iterations
lstm_677_while_placeholder 
lstm_677_while_placeholder_1 
lstm_677_while_placeholder_2 
lstm_677_while_placeholder_30
,lstm_677_while_less_lstm_677_strided_slice_1G
Clstm_677_while_lstm_677_while_cond_4278512___redundant_placeholder0G
Clstm_677_while_lstm_677_while_cond_4278512___redundant_placeholder1G
Clstm_677_while_lstm_677_while_cond_4278512___redundant_placeholder2G
Clstm_677_while_lstm_677_while_cond_4278512___redundant_placeholder3
lstm_677_while_identity
?
lstm_677/while/LessLesslstm_677_while_placeholder,lstm_677_while_less_lstm_677_strided_slice_1*
T0*
_output_shapes
: ]
lstm_677/while/IdentityIdentitylstm_677/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_677_while_identity lstm_677/while/Identity:output:0*(
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
"__inference__wrapped_model_4275435
lstm_675_inputW
Dsequential_225_lstm_675_lstm_cell_675_matmul_readvariableop_resource:	?Y
Fsequential_225_lstm_675_lstm_cell_675_matmul_1_readvariableop_resource:	d?T
Esequential_225_lstm_675_lstm_cell_675_biasadd_readvariableop_resource:	?W
Dsequential_225_lstm_676_lstm_cell_676_matmul_readvariableop_resource:	d?Y
Fsequential_225_lstm_676_lstm_cell_676_matmul_1_readvariableop_resource:	2?T
Esequential_225_lstm_676_lstm_cell_676_biasadd_readvariableop_resource:	?V
Dsequential_225_lstm_677_lstm_cell_677_matmul_readvariableop_resource:2(X
Fsequential_225_lstm_677_lstm_cell_677_matmul_1_readvariableop_resource:
(S
Esequential_225_lstm_677_lstm_cell_677_biasadd_readvariableop_resource:(I
7sequential_225_dense_225_matmul_readvariableop_resource:
F
8sequential_225_dense_225_biasadd_readvariableop_resource:
identity??/sequential_225/dense_225/BiasAdd/ReadVariableOp?.sequential_225/dense_225/MatMul/ReadVariableOp?<sequential_225/lstm_675/lstm_cell_675/BiasAdd/ReadVariableOp?;sequential_225/lstm_675/lstm_cell_675/MatMul/ReadVariableOp?=sequential_225/lstm_675/lstm_cell_675/MatMul_1/ReadVariableOp?sequential_225/lstm_675/while?<sequential_225/lstm_676/lstm_cell_676/BiasAdd/ReadVariableOp?;sequential_225/lstm_676/lstm_cell_676/MatMul/ReadVariableOp?=sequential_225/lstm_676/lstm_cell_676/MatMul_1/ReadVariableOp?sequential_225/lstm_676/while?<sequential_225/lstm_677/lstm_cell_677/BiasAdd/ReadVariableOp?;sequential_225/lstm_677/lstm_cell_677/MatMul/ReadVariableOp?=sequential_225/lstm_677/lstm_cell_677/MatMul_1/ReadVariableOp?sequential_225/lstm_677/while[
sequential_225/lstm_675/ShapeShapelstm_675_input*
T0*
_output_shapes
:u
+sequential_225/lstm_675/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_225/lstm_675/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_225/lstm_675/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_225/lstm_675/strided_sliceStridedSlice&sequential_225/lstm_675/Shape:output:04sequential_225/lstm_675/strided_slice/stack:output:06sequential_225/lstm_675/strided_slice/stack_1:output:06sequential_225/lstm_675/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_225/lstm_675/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
$sequential_225/lstm_675/zeros/packedPack.sequential_225/lstm_675/strided_slice:output:0/sequential_225/lstm_675/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_225/lstm_675/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_225/lstm_675/zerosFill-sequential_225/lstm_675/zeros/packed:output:0,sequential_225/lstm_675/zeros/Const:output:0*
T0*'
_output_shapes
:?????????dj
(sequential_225/lstm_675/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
&sequential_225/lstm_675/zeros_1/packedPack.sequential_225/lstm_675/strided_slice:output:01sequential_225/lstm_675/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_225/lstm_675/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_225/lstm_675/zeros_1Fill/sequential_225/lstm_675/zeros_1/packed:output:0.sequential_225/lstm_675/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????d{
&sequential_225/lstm_675/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_225/lstm_675/transpose	Transposelstm_675_input/sequential_225/lstm_675/transpose/perm:output:0*
T0*+
_output_shapes
:?????????t
sequential_225/lstm_675/Shape_1Shape%sequential_225/lstm_675/transpose:y:0*
T0*
_output_shapes
:w
-sequential_225/lstm_675/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_225/lstm_675/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_225/lstm_675/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_225/lstm_675/strided_slice_1StridedSlice(sequential_225/lstm_675/Shape_1:output:06sequential_225/lstm_675/strided_slice_1/stack:output:08sequential_225/lstm_675/strided_slice_1/stack_1:output:08sequential_225/lstm_675/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_225/lstm_675/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_225/lstm_675/TensorArrayV2TensorListReserve<sequential_225/lstm_675/TensorArrayV2/element_shape:output:00sequential_225/lstm_675/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_225/lstm_675/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
?sequential_225/lstm_675/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_225/lstm_675/transpose:y:0Vsequential_225/lstm_675/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_225/lstm_675/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_225/lstm_675/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_225/lstm_675/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_225/lstm_675/strided_slice_2StridedSlice%sequential_225/lstm_675/transpose:y:06sequential_225/lstm_675/strided_slice_2/stack:output:08sequential_225/lstm_675/strided_slice_2/stack_1:output:08sequential_225/lstm_675/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
;sequential_225/lstm_675/lstm_cell_675/MatMul/ReadVariableOpReadVariableOpDsequential_225_lstm_675_lstm_cell_675_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
,sequential_225/lstm_675/lstm_cell_675/MatMulMatMul0sequential_225/lstm_675/strided_slice_2:output:0Csequential_225/lstm_675/lstm_cell_675/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_225/lstm_675/lstm_cell_675/MatMul_1/ReadVariableOpReadVariableOpFsequential_225_lstm_675_lstm_cell_675_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
.sequential_225/lstm_675/lstm_cell_675/MatMul_1MatMul&sequential_225/lstm_675/zeros:output:0Esequential_225/lstm_675/lstm_cell_675/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_225/lstm_675/lstm_cell_675/addAddV26sequential_225/lstm_675/lstm_cell_675/MatMul:product:08sequential_225/lstm_675/lstm_cell_675/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_225/lstm_675/lstm_cell_675/BiasAdd/ReadVariableOpReadVariableOpEsequential_225_lstm_675_lstm_cell_675_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_225/lstm_675/lstm_cell_675/BiasAddBiasAdd-sequential_225/lstm_675/lstm_cell_675/add:z:0Dsequential_225/lstm_675/lstm_cell_675/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_225/lstm_675/lstm_cell_675/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_225/lstm_675/lstm_cell_675/splitSplit>sequential_225/lstm_675/lstm_cell_675/split/split_dim:output:06sequential_225/lstm_675/lstm_cell_675/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
-sequential_225/lstm_675/lstm_cell_675/SigmoidSigmoid4sequential_225/lstm_675/lstm_cell_675/split:output:0*
T0*'
_output_shapes
:?????????d?
/sequential_225/lstm_675/lstm_cell_675/Sigmoid_1Sigmoid4sequential_225/lstm_675/lstm_cell_675/split:output:1*
T0*'
_output_shapes
:?????????d?
)sequential_225/lstm_675/lstm_cell_675/mulMul3sequential_225/lstm_675/lstm_cell_675/Sigmoid_1:y:0(sequential_225/lstm_675/zeros_1:output:0*
T0*'
_output_shapes
:?????????d?
*sequential_225/lstm_675/lstm_cell_675/ReluRelu4sequential_225/lstm_675/lstm_cell_675/split:output:2*
T0*'
_output_shapes
:?????????d?
+sequential_225/lstm_675/lstm_cell_675/mul_1Mul1sequential_225/lstm_675/lstm_cell_675/Sigmoid:y:08sequential_225/lstm_675/lstm_cell_675/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
+sequential_225/lstm_675/lstm_cell_675/add_1AddV2-sequential_225/lstm_675/lstm_cell_675/mul:z:0/sequential_225/lstm_675/lstm_cell_675/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
/sequential_225/lstm_675/lstm_cell_675/Sigmoid_2Sigmoid4sequential_225/lstm_675/lstm_cell_675/split:output:3*
T0*'
_output_shapes
:?????????d?
,sequential_225/lstm_675/lstm_cell_675/Relu_1Relu/sequential_225/lstm_675/lstm_cell_675/add_1:z:0*
T0*'
_output_shapes
:?????????d?
+sequential_225/lstm_675/lstm_cell_675/mul_2Mul3sequential_225/lstm_675/lstm_cell_675/Sigmoid_2:y:0:sequential_225/lstm_675/lstm_cell_675/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
5sequential_225/lstm_675/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
'sequential_225/lstm_675/TensorArrayV2_1TensorListReserve>sequential_225/lstm_675/TensorArrayV2_1/element_shape:output:00sequential_225/lstm_675/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_225/lstm_675/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_225/lstm_675/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_225/lstm_675/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_225/lstm_675/whileWhile3sequential_225/lstm_675/while/loop_counter:output:09sequential_225/lstm_675/while/maximum_iterations:output:0%sequential_225/lstm_675/time:output:00sequential_225/lstm_675/TensorArrayV2_1:handle:0&sequential_225/lstm_675/zeros:output:0(sequential_225/lstm_675/zeros_1:output:00sequential_225/lstm_675/strided_slice_1:output:0Osequential_225/lstm_675/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_225_lstm_675_lstm_cell_675_matmul_readvariableop_resourceFsequential_225_lstm_675_lstm_cell_675_matmul_1_readvariableop_resourceEsequential_225_lstm_675_lstm_cell_675_biasadd_readvariableop_resource*
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
*sequential_225_lstm_675_while_body_4275067*6
cond.R,
*sequential_225_lstm_675_while_cond_4275066*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
Hsequential_225/lstm_675/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
:sequential_225/lstm_675/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_225/lstm_675/while:output:3Qsequential_225/lstm_675/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0?
-sequential_225/lstm_675/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_225/lstm_675/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_225/lstm_675/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_225/lstm_675/strided_slice_3StridedSliceCsequential_225/lstm_675/TensorArrayV2Stack/TensorListStack:tensor:06sequential_225/lstm_675/strided_slice_3/stack:output:08sequential_225/lstm_675/strided_slice_3/stack_1:output:08sequential_225/lstm_675/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask}
(sequential_225/lstm_675/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_225/lstm_675/transpose_1	TransposeCsequential_225/lstm_675/TensorArrayV2Stack/TensorListStack:tensor:01sequential_225/lstm_675/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????ds
sequential_225/lstm_675/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_225/lstm_676/ShapeShape'sequential_225/lstm_675/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_225/lstm_676/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_225/lstm_676/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_225/lstm_676/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_225/lstm_676/strided_sliceStridedSlice&sequential_225/lstm_676/Shape:output:04sequential_225/lstm_676/strided_slice/stack:output:06sequential_225/lstm_676/strided_slice/stack_1:output:06sequential_225/lstm_676/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_225/lstm_676/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
$sequential_225/lstm_676/zeros/packedPack.sequential_225/lstm_676/strided_slice:output:0/sequential_225/lstm_676/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_225/lstm_676/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_225/lstm_676/zerosFill-sequential_225/lstm_676/zeros/packed:output:0,sequential_225/lstm_676/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2j
(sequential_225/lstm_676/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
&sequential_225/lstm_676/zeros_1/packedPack.sequential_225/lstm_676/strided_slice:output:01sequential_225/lstm_676/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_225/lstm_676/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_225/lstm_676/zeros_1Fill/sequential_225/lstm_676/zeros_1/packed:output:0.sequential_225/lstm_676/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2{
&sequential_225/lstm_676/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_225/lstm_676/transpose	Transpose'sequential_225/lstm_675/transpose_1:y:0/sequential_225/lstm_676/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dt
sequential_225/lstm_676/Shape_1Shape%sequential_225/lstm_676/transpose:y:0*
T0*
_output_shapes
:w
-sequential_225/lstm_676/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_225/lstm_676/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_225/lstm_676/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_225/lstm_676/strided_slice_1StridedSlice(sequential_225/lstm_676/Shape_1:output:06sequential_225/lstm_676/strided_slice_1/stack:output:08sequential_225/lstm_676/strided_slice_1/stack_1:output:08sequential_225/lstm_676/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_225/lstm_676/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_225/lstm_676/TensorArrayV2TensorListReserve<sequential_225/lstm_676/TensorArrayV2/element_shape:output:00sequential_225/lstm_676/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_225/lstm_676/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
?sequential_225/lstm_676/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_225/lstm_676/transpose:y:0Vsequential_225/lstm_676/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_225/lstm_676/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_225/lstm_676/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_225/lstm_676/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_225/lstm_676/strided_slice_2StridedSlice%sequential_225/lstm_676/transpose:y:06sequential_225/lstm_676/strided_slice_2/stack:output:08sequential_225/lstm_676/strided_slice_2/stack_1:output:08sequential_225/lstm_676/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
;sequential_225/lstm_676/lstm_cell_676/MatMul/ReadVariableOpReadVariableOpDsequential_225_lstm_676_lstm_cell_676_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
,sequential_225/lstm_676/lstm_cell_676/MatMulMatMul0sequential_225/lstm_676/strided_slice_2:output:0Csequential_225/lstm_676/lstm_cell_676/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_225/lstm_676/lstm_cell_676/MatMul_1/ReadVariableOpReadVariableOpFsequential_225_lstm_676_lstm_cell_676_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
.sequential_225/lstm_676/lstm_cell_676/MatMul_1MatMul&sequential_225/lstm_676/zeros:output:0Esequential_225/lstm_676/lstm_cell_676/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_225/lstm_676/lstm_cell_676/addAddV26sequential_225/lstm_676/lstm_cell_676/MatMul:product:08sequential_225/lstm_676/lstm_cell_676/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_225/lstm_676/lstm_cell_676/BiasAdd/ReadVariableOpReadVariableOpEsequential_225_lstm_676_lstm_cell_676_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_225/lstm_676/lstm_cell_676/BiasAddBiasAdd-sequential_225/lstm_676/lstm_cell_676/add:z:0Dsequential_225/lstm_676/lstm_cell_676/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_225/lstm_676/lstm_cell_676/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_225/lstm_676/lstm_cell_676/splitSplit>sequential_225/lstm_676/lstm_cell_676/split/split_dim:output:06sequential_225/lstm_676/lstm_cell_676/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
-sequential_225/lstm_676/lstm_cell_676/SigmoidSigmoid4sequential_225/lstm_676/lstm_cell_676/split:output:0*
T0*'
_output_shapes
:?????????2?
/sequential_225/lstm_676/lstm_cell_676/Sigmoid_1Sigmoid4sequential_225/lstm_676/lstm_cell_676/split:output:1*
T0*'
_output_shapes
:?????????2?
)sequential_225/lstm_676/lstm_cell_676/mulMul3sequential_225/lstm_676/lstm_cell_676/Sigmoid_1:y:0(sequential_225/lstm_676/zeros_1:output:0*
T0*'
_output_shapes
:?????????2?
*sequential_225/lstm_676/lstm_cell_676/ReluRelu4sequential_225/lstm_676/lstm_cell_676/split:output:2*
T0*'
_output_shapes
:?????????2?
+sequential_225/lstm_676/lstm_cell_676/mul_1Mul1sequential_225/lstm_676/lstm_cell_676/Sigmoid:y:08sequential_225/lstm_676/lstm_cell_676/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
+sequential_225/lstm_676/lstm_cell_676/add_1AddV2-sequential_225/lstm_676/lstm_cell_676/mul:z:0/sequential_225/lstm_676/lstm_cell_676/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
/sequential_225/lstm_676/lstm_cell_676/Sigmoid_2Sigmoid4sequential_225/lstm_676/lstm_cell_676/split:output:3*
T0*'
_output_shapes
:?????????2?
,sequential_225/lstm_676/lstm_cell_676/Relu_1Relu/sequential_225/lstm_676/lstm_cell_676/add_1:z:0*
T0*'
_output_shapes
:?????????2?
+sequential_225/lstm_676/lstm_cell_676/mul_2Mul3sequential_225/lstm_676/lstm_cell_676/Sigmoid_2:y:0:sequential_225/lstm_676/lstm_cell_676/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
5sequential_225/lstm_676/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
'sequential_225/lstm_676/TensorArrayV2_1TensorListReserve>sequential_225/lstm_676/TensorArrayV2_1/element_shape:output:00sequential_225/lstm_676/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_225/lstm_676/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_225/lstm_676/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_225/lstm_676/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_225/lstm_676/whileWhile3sequential_225/lstm_676/while/loop_counter:output:09sequential_225/lstm_676/while/maximum_iterations:output:0%sequential_225/lstm_676/time:output:00sequential_225/lstm_676/TensorArrayV2_1:handle:0&sequential_225/lstm_676/zeros:output:0(sequential_225/lstm_676/zeros_1:output:00sequential_225/lstm_676/strided_slice_1:output:0Osequential_225/lstm_676/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_225_lstm_676_lstm_cell_676_matmul_readvariableop_resourceFsequential_225_lstm_676_lstm_cell_676_matmul_1_readvariableop_resourceEsequential_225_lstm_676_lstm_cell_676_biasadd_readvariableop_resource*
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
*sequential_225_lstm_676_while_body_4275206*6
cond.R,
*sequential_225_lstm_676_while_cond_4275205*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
Hsequential_225/lstm_676/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
:sequential_225/lstm_676/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_225/lstm_676/while:output:3Qsequential_225/lstm_676/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0?
-sequential_225/lstm_676/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_225/lstm_676/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_225/lstm_676/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_225/lstm_676/strided_slice_3StridedSliceCsequential_225/lstm_676/TensorArrayV2Stack/TensorListStack:tensor:06sequential_225/lstm_676/strided_slice_3/stack:output:08sequential_225/lstm_676/strided_slice_3/stack_1:output:08sequential_225/lstm_676/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask}
(sequential_225/lstm_676/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_225/lstm_676/transpose_1	TransposeCsequential_225/lstm_676/TensorArrayV2Stack/TensorListStack:tensor:01sequential_225/lstm_676/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2s
sequential_225/lstm_676/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_225/lstm_677/ShapeShape'sequential_225/lstm_676/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_225/lstm_677/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_225/lstm_677/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_225/lstm_677/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_225/lstm_677/strided_sliceStridedSlice&sequential_225/lstm_677/Shape:output:04sequential_225/lstm_677/strided_slice/stack:output:06sequential_225/lstm_677/strided_slice/stack_1:output:06sequential_225/lstm_677/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_225/lstm_677/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
$sequential_225/lstm_677/zeros/packedPack.sequential_225/lstm_677/strided_slice:output:0/sequential_225/lstm_677/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_225/lstm_677/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_225/lstm_677/zerosFill-sequential_225/lstm_677/zeros/packed:output:0,sequential_225/lstm_677/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
j
(sequential_225/lstm_677/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
&sequential_225/lstm_677/zeros_1/packedPack.sequential_225/lstm_677/strided_slice:output:01sequential_225/lstm_677/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_225/lstm_677/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_225/lstm_677/zeros_1Fill/sequential_225/lstm_677/zeros_1/packed:output:0.sequential_225/lstm_677/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
{
&sequential_225/lstm_677/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_225/lstm_677/transpose	Transpose'sequential_225/lstm_676/transpose_1:y:0/sequential_225/lstm_677/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2t
sequential_225/lstm_677/Shape_1Shape%sequential_225/lstm_677/transpose:y:0*
T0*
_output_shapes
:w
-sequential_225/lstm_677/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_225/lstm_677/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_225/lstm_677/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_225/lstm_677/strided_slice_1StridedSlice(sequential_225/lstm_677/Shape_1:output:06sequential_225/lstm_677/strided_slice_1/stack:output:08sequential_225/lstm_677/strided_slice_1/stack_1:output:08sequential_225/lstm_677/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_225/lstm_677/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_225/lstm_677/TensorArrayV2TensorListReserve<sequential_225/lstm_677/TensorArrayV2/element_shape:output:00sequential_225/lstm_677/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_225/lstm_677/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
?sequential_225/lstm_677/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_225/lstm_677/transpose:y:0Vsequential_225/lstm_677/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_225/lstm_677/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_225/lstm_677/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_225/lstm_677/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_225/lstm_677/strided_slice_2StridedSlice%sequential_225/lstm_677/transpose:y:06sequential_225/lstm_677/strided_slice_2/stack:output:08sequential_225/lstm_677/strided_slice_2/stack_1:output:08sequential_225/lstm_677/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
;sequential_225/lstm_677/lstm_cell_677/MatMul/ReadVariableOpReadVariableOpDsequential_225_lstm_677_lstm_cell_677_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
,sequential_225/lstm_677/lstm_cell_677/MatMulMatMul0sequential_225/lstm_677/strided_slice_2:output:0Csequential_225/lstm_677/lstm_cell_677/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
=sequential_225/lstm_677/lstm_cell_677/MatMul_1/ReadVariableOpReadVariableOpFsequential_225_lstm_677_lstm_cell_677_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
.sequential_225/lstm_677/lstm_cell_677/MatMul_1MatMul&sequential_225/lstm_677/zeros:output:0Esequential_225/lstm_677/lstm_cell_677/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
)sequential_225/lstm_677/lstm_cell_677/addAddV26sequential_225/lstm_677/lstm_cell_677/MatMul:product:08sequential_225/lstm_677/lstm_cell_677/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
<sequential_225/lstm_677/lstm_cell_677/BiasAdd/ReadVariableOpReadVariableOpEsequential_225_lstm_677_lstm_cell_677_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
-sequential_225/lstm_677/lstm_cell_677/BiasAddBiasAdd-sequential_225/lstm_677/lstm_cell_677/add:z:0Dsequential_225/lstm_677/lstm_cell_677/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(w
5sequential_225/lstm_677/lstm_cell_677/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_225/lstm_677/lstm_cell_677/splitSplit>sequential_225/lstm_677/lstm_cell_677/split/split_dim:output:06sequential_225/lstm_677/lstm_cell_677/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
-sequential_225/lstm_677/lstm_cell_677/SigmoidSigmoid4sequential_225/lstm_677/lstm_cell_677/split:output:0*
T0*'
_output_shapes
:?????????
?
/sequential_225/lstm_677/lstm_cell_677/Sigmoid_1Sigmoid4sequential_225/lstm_677/lstm_cell_677/split:output:1*
T0*'
_output_shapes
:?????????
?
)sequential_225/lstm_677/lstm_cell_677/mulMul3sequential_225/lstm_677/lstm_cell_677/Sigmoid_1:y:0(sequential_225/lstm_677/zeros_1:output:0*
T0*'
_output_shapes
:?????????
?
*sequential_225/lstm_677/lstm_cell_677/ReluRelu4sequential_225/lstm_677/lstm_cell_677/split:output:2*
T0*'
_output_shapes
:?????????
?
+sequential_225/lstm_677/lstm_cell_677/mul_1Mul1sequential_225/lstm_677/lstm_cell_677/Sigmoid:y:08sequential_225/lstm_677/lstm_cell_677/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
+sequential_225/lstm_677/lstm_cell_677/add_1AddV2-sequential_225/lstm_677/lstm_cell_677/mul:z:0/sequential_225/lstm_677/lstm_cell_677/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
/sequential_225/lstm_677/lstm_cell_677/Sigmoid_2Sigmoid4sequential_225/lstm_677/lstm_cell_677/split:output:3*
T0*'
_output_shapes
:?????????
?
,sequential_225/lstm_677/lstm_cell_677/Relu_1Relu/sequential_225/lstm_677/lstm_cell_677/add_1:z:0*
T0*'
_output_shapes
:?????????
?
+sequential_225/lstm_677/lstm_cell_677/mul_2Mul3sequential_225/lstm_677/lstm_cell_677/Sigmoid_2:y:0:sequential_225/lstm_677/lstm_cell_677/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
5sequential_225/lstm_677/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
'sequential_225/lstm_677/TensorArrayV2_1TensorListReserve>sequential_225/lstm_677/TensorArrayV2_1/element_shape:output:00sequential_225/lstm_677/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_225/lstm_677/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_225/lstm_677/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_225/lstm_677/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_225/lstm_677/whileWhile3sequential_225/lstm_677/while/loop_counter:output:09sequential_225/lstm_677/while/maximum_iterations:output:0%sequential_225/lstm_677/time:output:00sequential_225/lstm_677/TensorArrayV2_1:handle:0&sequential_225/lstm_677/zeros:output:0(sequential_225/lstm_677/zeros_1:output:00sequential_225/lstm_677/strided_slice_1:output:0Osequential_225/lstm_677/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_225_lstm_677_lstm_cell_677_matmul_readvariableop_resourceFsequential_225_lstm_677_lstm_cell_677_matmul_1_readvariableop_resourceEsequential_225_lstm_677_lstm_cell_677_biasadd_readvariableop_resource*
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
*sequential_225_lstm_677_while_body_4275345*6
cond.R,
*sequential_225_lstm_677_while_cond_4275344*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
Hsequential_225/lstm_677/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
:sequential_225/lstm_677/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_225/lstm_677/while:output:3Qsequential_225/lstm_677/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0?
-sequential_225/lstm_677/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_225/lstm_677/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_225/lstm_677/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_225/lstm_677/strided_slice_3StridedSliceCsequential_225/lstm_677/TensorArrayV2Stack/TensorListStack:tensor:06sequential_225/lstm_677/strided_slice_3/stack:output:08sequential_225/lstm_677/strided_slice_3/stack_1:output:08sequential_225/lstm_677/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_mask}
(sequential_225/lstm_677/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_225/lstm_677/transpose_1	TransposeCsequential_225/lstm_677/TensorArrayV2Stack/TensorListStack:tensor:01sequential_225/lstm_677/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
s
sequential_225/lstm_677/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
.sequential_225/dense_225/MatMul/ReadVariableOpReadVariableOp7sequential_225_dense_225_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
sequential_225/dense_225/MatMulMatMul0sequential_225/lstm_677/strided_slice_3:output:06sequential_225/dense_225/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
/sequential_225/dense_225/BiasAdd/ReadVariableOpReadVariableOp8sequential_225_dense_225_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
 sequential_225/dense_225/BiasAddBiasAdd)sequential_225/dense_225/MatMul:product:07sequential_225/dense_225/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x
IdentityIdentity)sequential_225/dense_225/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp0^sequential_225/dense_225/BiasAdd/ReadVariableOp/^sequential_225/dense_225/MatMul/ReadVariableOp=^sequential_225/lstm_675/lstm_cell_675/BiasAdd/ReadVariableOp<^sequential_225/lstm_675/lstm_cell_675/MatMul/ReadVariableOp>^sequential_225/lstm_675/lstm_cell_675/MatMul_1/ReadVariableOp^sequential_225/lstm_675/while=^sequential_225/lstm_676/lstm_cell_676/BiasAdd/ReadVariableOp<^sequential_225/lstm_676/lstm_cell_676/MatMul/ReadVariableOp>^sequential_225/lstm_676/lstm_cell_676/MatMul_1/ReadVariableOp^sequential_225/lstm_676/while=^sequential_225/lstm_677/lstm_cell_677/BiasAdd/ReadVariableOp<^sequential_225/lstm_677/lstm_cell_677/MatMul/ReadVariableOp>^sequential_225/lstm_677/lstm_cell_677/MatMul_1/ReadVariableOp^sequential_225/lstm_677/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2b
/sequential_225/dense_225/BiasAdd/ReadVariableOp/sequential_225/dense_225/BiasAdd/ReadVariableOp2`
.sequential_225/dense_225/MatMul/ReadVariableOp.sequential_225/dense_225/MatMul/ReadVariableOp2|
<sequential_225/lstm_675/lstm_cell_675/BiasAdd/ReadVariableOp<sequential_225/lstm_675/lstm_cell_675/BiasAdd/ReadVariableOp2z
;sequential_225/lstm_675/lstm_cell_675/MatMul/ReadVariableOp;sequential_225/lstm_675/lstm_cell_675/MatMul/ReadVariableOp2~
=sequential_225/lstm_675/lstm_cell_675/MatMul_1/ReadVariableOp=sequential_225/lstm_675/lstm_cell_675/MatMul_1/ReadVariableOp2>
sequential_225/lstm_675/whilesequential_225/lstm_675/while2|
<sequential_225/lstm_676/lstm_cell_676/BiasAdd/ReadVariableOp<sequential_225/lstm_676/lstm_cell_676/BiasAdd/ReadVariableOp2z
;sequential_225/lstm_676/lstm_cell_676/MatMul/ReadVariableOp;sequential_225/lstm_676/lstm_cell_676/MatMul/ReadVariableOp2~
=sequential_225/lstm_676/lstm_cell_676/MatMul_1/ReadVariableOp=sequential_225/lstm_676/lstm_cell_676/MatMul_1/ReadVariableOp2>
sequential_225/lstm_676/whilesequential_225/lstm_676/while2|
<sequential_225/lstm_677/lstm_cell_677/BiasAdd/ReadVariableOp<sequential_225/lstm_677/lstm_cell_677/BiasAdd/ReadVariableOp2z
;sequential_225/lstm_677/lstm_cell_677/MatMul/ReadVariableOp;sequential_225/lstm_677/lstm_cell_677/MatMul/ReadVariableOp2~
=sequential_225/lstm_677/lstm_cell_677/MatMul_1/ReadVariableOp=sequential_225/lstm_677/lstm_cell_677/MatMul_1/ReadVariableOp2>
sequential_225/lstm_677/whilesequential_225/lstm_677/while:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_675_input
?

?
0__inference_sequential_225_layer_call_fn_4276984
lstm_675_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_675_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_225_layer_call_and_return_conditional_losses_4276959o
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
_user_specified_namelstm_675_input
?8
?
while_body_4279322
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_676_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_676_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_676_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_676_matmul_readvariableop_resource:	d?G
4while_lstm_cell_676_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_676_biasadd_readvariableop_resource:	???*while/lstm_cell_676/BiasAdd/ReadVariableOp?)while/lstm_cell_676/MatMul/ReadVariableOp?+while/lstm_cell_676/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_676/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_676_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_676/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_676/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_676/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_676_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_676/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_676/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_676/addAddV2$while/lstm_cell_676/MatMul:product:0&while/lstm_cell_676/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_676/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_676_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_676/BiasAddBiasAddwhile/lstm_cell_676/add:z:02while/lstm_cell_676/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_676/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_676/splitSplit,while/lstm_cell_676/split/split_dim:output:0$while/lstm_cell_676/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_676/SigmoidSigmoid"while/lstm_cell_676/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_676/Sigmoid_1Sigmoid"while/lstm_cell_676/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_676/mulMul!while/lstm_cell_676/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_676/ReluRelu"while/lstm_cell_676/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_676/mul_1Mulwhile/lstm_cell_676/Sigmoid:y:0&while/lstm_cell_676/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_676/add_1AddV2while/lstm_cell_676/mul:z:0while/lstm_cell_676/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_676/Sigmoid_2Sigmoid"while/lstm_cell_676/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_676/Relu_1Reluwhile/lstm_cell_676/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_676/mul_2Mul!while/lstm_cell_676/Sigmoid_2:y:0(while/lstm_cell_676/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_676/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_676/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_676/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_676/BiasAdd/ReadVariableOp*^while/lstm_cell_676/MatMul/ReadVariableOp,^while/lstm_cell_676/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_676_biasadd_readvariableop_resource5while_lstm_cell_676_biasadd_readvariableop_resource_0"n
4while_lstm_cell_676_matmul_1_readvariableop_resource6while_lstm_cell_676_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_676_matmul_readvariableop_resource4while_lstm_cell_676_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_676/BiasAdd/ReadVariableOp*while/lstm_cell_676/BiasAdd/ReadVariableOp2V
)while/lstm_cell_676/MatMul/ReadVariableOp)while/lstm_cell_676/MatMul/ReadVariableOp2Z
+while/lstm_cell_676/MatMul_1/ReadVariableOp+while/lstm_cell_676/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_675_layer_call_fn_4278636

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
E__inference_lstm_675_layer_call_and_return_conditional_losses_4276634s
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
E__inference_lstm_676_layer_call_and_return_conditional_losses_4276784

inputs?
,lstm_cell_676_matmul_readvariableop_resource:	d?A
.lstm_cell_676_matmul_1_readvariableop_resource:	2?<
-lstm_cell_676_biasadd_readvariableop_resource:	?
identity??$lstm_cell_676/BiasAdd/ReadVariableOp?#lstm_cell_676/MatMul/ReadVariableOp?%lstm_cell_676/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_676/MatMul/ReadVariableOpReadVariableOp,lstm_cell_676_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_676/MatMulMatMulstrided_slice_2:output:0+lstm_cell_676/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_676/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_676_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_676/MatMul_1MatMulzeros:output:0-lstm_cell_676/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_676/addAddV2lstm_cell_676/MatMul:product:0 lstm_cell_676/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_676/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_676_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_676/BiasAddBiasAddlstm_cell_676/add:z:0,lstm_cell_676/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_676/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_676/splitSplit&lstm_cell_676/split/split_dim:output:0lstm_cell_676/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_676/SigmoidSigmoidlstm_cell_676/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_676/Sigmoid_1Sigmoidlstm_cell_676/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_676/mulMullstm_cell_676/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_676/ReluRelulstm_cell_676/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_676/mul_1Mullstm_cell_676/Sigmoid:y:0 lstm_cell_676/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_676/add_1AddV2lstm_cell_676/mul:z:0lstm_cell_676/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_676/Sigmoid_2Sigmoidlstm_cell_676/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_676/Relu_1Relulstm_cell_676/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_676/mul_2Mullstm_cell_676/Sigmoid_2:y:0"lstm_cell_676/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_676_matmul_readvariableop_resource.lstm_cell_676_matmul_1_readvariableop_resource-lstm_cell_676_biasadd_readvariableop_resource*
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
while_body_4276700*
condR
while_cond_4276699*K
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
NoOpNoOp%^lstm_cell_676/BiasAdd/ReadVariableOp$^lstm_cell_676/MatMul/ReadVariableOp&^lstm_cell_676/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_676/BiasAdd/ReadVariableOp$lstm_cell_676/BiasAdd/ReadVariableOp2J
#lstm_cell_676/MatMul/ReadVariableOp#lstm_cell_676/MatMul/ReadVariableOp2N
%lstm_cell_676/MatMul_1/ReadVariableOp%lstm_cell_676/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_675_layer_call_and_return_conditional_losses_4280536

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
while_body_4277066
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_677_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_677_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_677_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_677_matmul_readvariableop_resource:2(F
4while_lstm_cell_677_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_677_biasadd_readvariableop_resource:(??*while/lstm_cell_677/BiasAdd/ReadVariableOp?)while/lstm_cell_677/MatMul/ReadVariableOp?+while/lstm_cell_677/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_677/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_677_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_677/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_677/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_677/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_677_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_677/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_677/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_677/addAddV2$while/lstm_cell_677/MatMul:product:0&while/lstm_cell_677/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_677/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_677_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_677/BiasAddBiasAddwhile/lstm_cell_677/add:z:02while/lstm_cell_677/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_677/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_677/splitSplit,while/lstm_cell_677/split/split_dim:output:0$while/lstm_cell_677/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_677/SigmoidSigmoid"while/lstm_cell_677/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_677/Sigmoid_1Sigmoid"while/lstm_cell_677/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_677/mulMul!while/lstm_cell_677/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_677/ReluRelu"while/lstm_cell_677/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_677/mul_1Mulwhile/lstm_cell_677/Sigmoid:y:0&while/lstm_cell_677/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_677/add_1AddV2while/lstm_cell_677/mul:z:0while/lstm_cell_677/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_677/Sigmoid_2Sigmoid"while/lstm_cell_677/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_677/Relu_1Reluwhile/lstm_cell_677/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_677/mul_2Mul!while/lstm_cell_677/Sigmoid_2:y:0(while/lstm_cell_677/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_677/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_677/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_677/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_677/BiasAdd/ReadVariableOp*^while/lstm_cell_677/MatMul/ReadVariableOp,^while/lstm_cell_677/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_677_biasadd_readvariableop_resource5while_lstm_cell_677_biasadd_readvariableop_resource_0"n
4while_lstm_cell_677_matmul_1_readvariableop_resource6while_lstm_cell_677_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_677_matmul_readvariableop_resource4while_lstm_cell_677_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_677/BiasAdd/ReadVariableOp*while/lstm_cell_677/BiasAdd/ReadVariableOp2V
)while/lstm_cell_677/MatMul/ReadVariableOp)while/lstm_cell_677/MatMul/ReadVariableOp2Z
+while/lstm_cell_677/MatMul_1/ReadVariableOp+while/lstm_cell_677/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*sequential_225_lstm_676_while_cond_4275205L
Hsequential_225_lstm_676_while_sequential_225_lstm_676_while_loop_counterR
Nsequential_225_lstm_676_while_sequential_225_lstm_676_while_maximum_iterations-
)sequential_225_lstm_676_while_placeholder/
+sequential_225_lstm_676_while_placeholder_1/
+sequential_225_lstm_676_while_placeholder_2/
+sequential_225_lstm_676_while_placeholder_3N
Jsequential_225_lstm_676_while_less_sequential_225_lstm_676_strided_slice_1e
asequential_225_lstm_676_while_sequential_225_lstm_676_while_cond_4275205___redundant_placeholder0e
asequential_225_lstm_676_while_sequential_225_lstm_676_while_cond_4275205___redundant_placeholder1e
asequential_225_lstm_676_while_sequential_225_lstm_676_while_cond_4275205___redundant_placeholder2e
asequential_225_lstm_676_while_sequential_225_lstm_676_while_cond_4275205___redundant_placeholder3*
&sequential_225_lstm_676_while_identity
?
"sequential_225/lstm_676/while/LessLess)sequential_225_lstm_676_while_placeholderJsequential_225_lstm_676_while_less_sequential_225_lstm_676_strided_slice_1*
T0*
_output_shapes
: {
&sequential_225/lstm_676/while/IdentityIdentity&sequential_225/lstm_676/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_225_lstm_676_while_identity/sequential_225/lstm_676/while/Identity:output:0*(
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
lstm_675_while_cond_4277807.
*lstm_675_while_lstm_675_while_loop_counter4
0lstm_675_while_lstm_675_while_maximum_iterations
lstm_675_while_placeholder 
lstm_675_while_placeholder_1 
lstm_675_while_placeholder_2 
lstm_675_while_placeholder_30
,lstm_675_while_less_lstm_675_strided_slice_1G
Clstm_675_while_lstm_675_while_cond_4277807___redundant_placeholder0G
Clstm_675_while_lstm_675_while_cond_4277807___redundant_placeholder1G
Clstm_675_while_lstm_675_while_cond_4277807___redundant_placeholder2G
Clstm_675_while_lstm_675_while_cond_4277807___redundant_placeholder3
lstm_675_while_identity
?
lstm_675/while/LessLesslstm_675_while_placeholder,lstm_675_while_less_lstm_675_strided_slice_1*
T0*
_output_shapes
: ]
lstm_675/while/IdentityIdentitylstm_675/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_675_while_identity lstm_675/while/Identity:output:0*(
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
lstm_675_input;
 serving_default_lstm_675_input:0?????????=
	dense_2250
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
2dense_225/kernel
:2dense_225/bias
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
0:.	?2lstm_675/lstm_cell_675/kernel
::8	d?2'lstm_675/lstm_cell_675/recurrent_kernel
*:(?2lstm_675/lstm_cell_675/bias
0:.	d?2lstm_676/lstm_cell_676/kernel
::8	2?2'lstm_676/lstm_cell_676/recurrent_kernel
*:(?2lstm_676/lstm_cell_676/bias
/:-2(2lstm_677/lstm_cell_677/kernel
9:7
(2'lstm_677/lstm_cell_677/recurrent_kernel
):'(2lstm_677/lstm_cell_677/bias
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
2Adam/dense_225/kernel/m
!:2Adam/dense_225/bias/m
5:3	?2$Adam/lstm_675/lstm_cell_675/kernel/m
?:=	d?2.Adam/lstm_675/lstm_cell_675/recurrent_kernel/m
/:-?2"Adam/lstm_675/lstm_cell_675/bias/m
5:3	d?2$Adam/lstm_676/lstm_cell_676/kernel/m
?:=	2?2.Adam/lstm_676/lstm_cell_676/recurrent_kernel/m
/:-?2"Adam/lstm_676/lstm_cell_676/bias/m
4:22(2$Adam/lstm_677/lstm_cell_677/kernel/m
>:<
(2.Adam/lstm_677/lstm_cell_677/recurrent_kernel/m
.:,(2"Adam/lstm_677/lstm_cell_677/bias/m
':%
2Adam/dense_225/kernel/v
!:2Adam/dense_225/bias/v
5:3	?2$Adam/lstm_675/lstm_cell_675/kernel/v
?:=	d?2.Adam/lstm_675/lstm_cell_675/recurrent_kernel/v
/:-?2"Adam/lstm_675/lstm_cell_675/bias/v
5:3	d?2$Adam/lstm_676/lstm_cell_676/kernel/v
?:=	2?2.Adam/lstm_676/lstm_cell_676/recurrent_kernel/v
/:-?2"Adam/lstm_676/lstm_cell_676/bias/v
4:22(2$Adam/lstm_677/lstm_cell_677/kernel/v
>:<
(2.Adam/lstm_677/lstm_cell_677/recurrent_kernel/v
.:,(2"Adam/lstm_677/lstm_cell_677/bias/v
?2?
0__inference_sequential_225_layer_call_fn_4276984
0__inference_sequential_225_layer_call_fn_4277722
0__inference_sequential_225_layer_call_fn_4277749
0__inference_sequential_225_layer_call_fn_4277600?
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
K__inference_sequential_225_layer_call_and_return_conditional_losses_4278176
K__inference_sequential_225_layer_call_and_return_conditional_losses_4278603
K__inference_sequential_225_layer_call_and_return_conditional_losses_4277630
K__inference_sequential_225_layer_call_and_return_conditional_losses_4277660?
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
"__inference__wrapped_model_4275435lstm_675_input"?
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
*__inference_lstm_675_layer_call_fn_4278614
*__inference_lstm_675_layer_call_fn_4278625
*__inference_lstm_675_layer_call_fn_4278636
*__inference_lstm_675_layer_call_fn_4278647?
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
E__inference_lstm_675_layer_call_and_return_conditional_losses_4278790
E__inference_lstm_675_layer_call_and_return_conditional_losses_4278933
E__inference_lstm_675_layer_call_and_return_conditional_losses_4279076
E__inference_lstm_675_layer_call_and_return_conditional_losses_4279219?
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
*__inference_lstm_676_layer_call_fn_4279230
*__inference_lstm_676_layer_call_fn_4279241
*__inference_lstm_676_layer_call_fn_4279252
*__inference_lstm_676_layer_call_fn_4279263?
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
E__inference_lstm_676_layer_call_and_return_conditional_losses_4279406
E__inference_lstm_676_layer_call_and_return_conditional_losses_4279549
E__inference_lstm_676_layer_call_and_return_conditional_losses_4279692
E__inference_lstm_676_layer_call_and_return_conditional_losses_4279835?
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
*__inference_lstm_677_layer_call_fn_4279846
*__inference_lstm_677_layer_call_fn_4279857
*__inference_lstm_677_layer_call_fn_4279868
*__inference_lstm_677_layer_call_fn_4279879?
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
E__inference_lstm_677_layer_call_and_return_conditional_losses_4280022
E__inference_lstm_677_layer_call_and_return_conditional_losses_4280165
E__inference_lstm_677_layer_call_and_return_conditional_losses_4280308
E__inference_lstm_677_layer_call_and_return_conditional_losses_4280451?
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
+__inference_dense_225_layer_call_fn_4280460?
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
F__inference_dense_225_layer_call_and_return_conditional_losses_4280470?
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
%__inference_signature_wrapper_4277695lstm_675_input"?
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
/__inference_lstm_cell_675_layer_call_fn_4280487
/__inference_lstm_cell_675_layer_call_fn_4280504?
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
J__inference_lstm_cell_675_layer_call_and_return_conditional_losses_4280536
J__inference_lstm_cell_675_layer_call_and_return_conditional_losses_4280568?
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
/__inference_lstm_cell_676_layer_call_fn_4280585
/__inference_lstm_cell_676_layer_call_fn_4280602?
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
J__inference_lstm_cell_676_layer_call_and_return_conditional_losses_4280634
J__inference_lstm_cell_676_layer_call_and_return_conditional_losses_4280666?
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
/__inference_lstm_cell_677_layer_call_fn_4280683
/__inference_lstm_cell_677_layer_call_fn_4280700?
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
J__inference_lstm_cell_677_layer_call_and_return_conditional_losses_4280732
J__inference_lstm_cell_677_layer_call_and_return_conditional_losses_4280764?
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
"__inference__wrapped_model_4275435?()*+,-./0;?8
1?.
,?)
lstm_675_input?????????
? "5?2
0
	dense_225#? 
	dense_225??????????
F__inference_dense_225_layer_call_and_return_conditional_losses_4280470\/?,
%?"
 ?
inputs?????????

? "%?"
?
0?????????
? ~
+__inference_dense_225_layer_call_fn_4280460O/?,
%?"
 ?
inputs?????????

? "???????????
E__inference_lstm_675_layer_call_and_return_conditional_losses_4278790?()*O?L
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
E__inference_lstm_675_layer_call_and_return_conditional_losses_4278933?()*O?L
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
E__inference_lstm_675_layer_call_and_return_conditional_losses_4279076q()*??<
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
E__inference_lstm_675_layer_call_and_return_conditional_losses_4279219q()*??<
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
*__inference_lstm_675_layer_call_fn_4278614}()*O?L
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
*__inference_lstm_675_layer_call_fn_4278625}()*O?L
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
*__inference_lstm_675_layer_call_fn_4278636d()*??<
5?2
$?!
inputs?????????

 
p 

 
? "??????????d?
*__inference_lstm_675_layer_call_fn_4278647d()*??<
5?2
$?!
inputs?????????

 
p

 
? "??????????d?
E__inference_lstm_676_layer_call_and_return_conditional_losses_4279406?+,-O?L
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
E__inference_lstm_676_layer_call_and_return_conditional_losses_4279549?+,-O?L
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
E__inference_lstm_676_layer_call_and_return_conditional_losses_4279692q+,-??<
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
E__inference_lstm_676_layer_call_and_return_conditional_losses_4279835q+,-??<
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
*__inference_lstm_676_layer_call_fn_4279230}+,-O?L
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
*__inference_lstm_676_layer_call_fn_4279241}+,-O?L
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
*__inference_lstm_676_layer_call_fn_4279252d+,-??<
5?2
$?!
inputs?????????d

 
p 

 
? "??????????2?
*__inference_lstm_676_layer_call_fn_4279263d+,-??<
5?2
$?!
inputs?????????d

 
p

 
? "??????????2?
E__inference_lstm_677_layer_call_and_return_conditional_losses_4280022}./0O?L
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
E__inference_lstm_677_layer_call_and_return_conditional_losses_4280165}./0O?L
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
E__inference_lstm_677_layer_call_and_return_conditional_losses_4280308m./0??<
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
E__inference_lstm_677_layer_call_and_return_conditional_losses_4280451m./0??<
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
*__inference_lstm_677_layer_call_fn_4279846p./0O?L
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
*__inference_lstm_677_layer_call_fn_4279857p./0O?L
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
*__inference_lstm_677_layer_call_fn_4279868`./0??<
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
*__inference_lstm_677_layer_call_fn_4279879`./0??<
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
J__inference_lstm_cell_675_layer_call_and_return_conditional_losses_4280536?()*??}
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
J__inference_lstm_cell_675_layer_call_and_return_conditional_losses_4280568?()*??}
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
/__inference_lstm_cell_675_layer_call_fn_4280487?()*??}
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
/__inference_lstm_cell_675_layer_call_fn_4280504?()*??}
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
J__inference_lstm_cell_676_layer_call_and_return_conditional_losses_4280634?+,-??}
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
J__inference_lstm_cell_676_layer_call_and_return_conditional_losses_4280666?+,-??}
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
/__inference_lstm_cell_676_layer_call_fn_4280585?+,-??}
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
/__inference_lstm_cell_676_layer_call_fn_4280602?+,-??}
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
J__inference_lstm_cell_677_layer_call_and_return_conditional_losses_4280732?./0??}
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
J__inference_lstm_cell_677_layer_call_and_return_conditional_losses_4280764?./0??}
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
/__inference_lstm_cell_677_layer_call_fn_4280683?./0??}
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
/__inference_lstm_cell_677_layer_call_fn_4280700?./0??}
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
K__inference_sequential_225_layer_call_and_return_conditional_losses_4277630y()*+,-./0C?@
9?6
,?)
lstm_675_input?????????
p 

 
? "%?"
?
0?????????
? ?
K__inference_sequential_225_layer_call_and_return_conditional_losses_4277660y()*+,-./0C?@
9?6
,?)
lstm_675_input?????????
p

 
? "%?"
?
0?????????
? ?
K__inference_sequential_225_layer_call_and_return_conditional_losses_4278176q()*+,-./0;?8
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
K__inference_sequential_225_layer_call_and_return_conditional_losses_4278603q()*+,-./0;?8
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
0__inference_sequential_225_layer_call_fn_4276984l()*+,-./0C?@
9?6
,?)
lstm_675_input?????????
p 

 
? "???????????
0__inference_sequential_225_layer_call_fn_4277600l()*+,-./0C?@
9?6
,?)
lstm_675_input?????????
p

 
? "???????????
0__inference_sequential_225_layer_call_fn_4277722d()*+,-./0;?8
1?.
$?!
inputs?????????
p 

 
? "???????????
0__inference_sequential_225_layer_call_fn_4277749d()*+,-./0;?8
1?.
$?!
inputs?????????
p

 
? "???????????
%__inference_signature_wrapper_4277695?()*+,-./0M?J
? 
C?@
>
lstm_675_input,?)
lstm_675_input?????????"5?2
0
	dense_225#? 
	dense_225?????????